"""Post new README changelog entries to Discord when they change."""

from __future__ import annotations

import json
import os
import re
import sys
import subprocess
from datetime import date, datetime
import urllib.error
import urllib.parse
import urllib.request
from pathlib import Path


README_PATH = Path(__file__).resolve().parents[2] / "README.md"
CHANGELOG_HEADING = "## Changelog"
DISCORD_DESCRIPTION_LIMIT = 4096
DISCORD_MESSAGE_EMBED_LIMIT = 6000
ENTRIES_PER_SECTION = 10
CHANGELOG_URL = "https://github.com/Jacob5800/UltimateDraws#changelog"


def changelog_sections(readme: str, *, limit: int | None = ENTRIES_PER_SECTION) -> list[tuple[str, list[str]]]:
    lines = readme.splitlines()
    try:
        start = next(i for i, line in enumerate(lines) if line.strip() == CHANGELOG_HEADING)
    except StopIteration as exc:
        raise ValueError("README.md does not contain a '## Changelog' section") from exc

    body = []
    for line in lines[start + 1 :]:
        if line.startswith("## "):
            break
        body.append(line)

    if not "\n".join(body).strip():
        raise ValueError("The README changelog section is empty")
    sections: list[tuple[str, list[str]]] = []
    heading = "Updates"
    entries: list[str] = []
    for line in body:
        if line.startswith("### "):
            if entries:
                sections.append((heading, entries))
            heading, entries = line[4:].strip(), []
        elif re.match(r"^[-*] ", line):
            entries.append(line.strip())
        elif line.strip() and entries:
            entries[-1] += "\n" + line.rstrip()
    if entries:
        sections.append((heading, entries))
    if not sections:
        raise ValueError("The README changelog contains no entries")
    # Stable sorting preserves newest-first authoring order for same-day entries.
    return [(title, sorted(items, key=entry_date, reverse=True)[:limit])
            for title, items in sections]


def new_changelog_sections(readme: str, previous_readme: str) -> list[tuple[str, list[str]]]:
    """Compare whole entries per section, ignoring formatting-only whitespace."""
    previous = (dict(changelog_sections(previous_readme, limit=None))
                if CHANGELOG_HEADING in previous_readme else {})
    result = []
    for title, entries in changelog_sections(readme):
        known = {" ".join(entry.split()) for entry in previous.get(title, [])}
        added = [entry for entry in entries if " ".join(entry.split()) not in known]
        if added:
            result.append((title, added))
    return result


def previous_readme() -> str:
    """Use the whole push's before revision; manual updates use the last commit."""
    revision = os.environ.get("CHANGELOG_BEFORE_SHA", "").strip()
    if revision and set(revision) == {"0"}:
        return ""
    if revision and not re.fullmatch(r"[0-9a-fA-F]{40,64}", revision):
        raise ValueError("Invalid changelog baseline revision")
    revision = revision or "HEAD^"
    result = subprocess.run(["git", "show", f"{revision}:README.md"],
                            cwd=README_PATH.parent, capture_output=True, text=True,
                            encoding="utf-8")
    if result.returncode:
        raise ValueError("Cannot read the previous README; refusing to repost full history")
    return result.stdout


def entry_date(entry: str) -> date:
    trailing = re.search(r"\((\d{2}-\d{2}-\d{4})\)\s*$", entry)
    leading = re.match(r"^[-*]\s+(\d{4}-\d{2}-\d{2}):", entry)
    try:
        if trailing:
            return datetime.strptime(trailing[1], "%d-%m-%Y").date()
        if leading:
            return date.fromisoformat(leading[1])
    except ValueError:
        pass
    return date.min


def changelog_payloads(readme: str, previous_readme: str | None = None) -> list[dict]:
    """Keep every section; paginate rather than truncate later fights."""
    embeds = []
    footer = f"\n\n[Full changelog]({CHANGELOG_URL})"
    sections = (changelog_sections(readme) if previous_readme is None
                else new_changelog_sections(readme, previous_readme))
    for section, entries in sections:
        title = f"UltimateDraws Changelog — {section}"[:256]
        pages, current = [], ""
        budget = DISCORD_DESCRIPTION_LIMIT - len(footer)
        for entry in entries:
            # A single unusually long entry can span descriptions too.
            while entry:
                separator = "\n\n" if current else ""
                room = budget - len(current) - len(separator)
                if len(entry) <= room:
                    current += separator + entry
                    break
                if current:
                    pages.append(current)
                    current = ""
                else:
                    split = entry.rfind(" ", 0, budget + 1)
                    split = split if split > 0 else budget
                    pages.append(entry[:split])
                    entry = entry[split:].lstrip()
        if current:
            pages.append(current)
        for i, description in enumerate(pages, 1):
            page_title = title if len(pages) == 1 else f"{title[:240]} ({i}/{len(pages)})"
            embeds.append({"title": page_title, "url": CHANGELOG_URL,
                           "description": description + footer, "color": 5793266})
    payloads, batch, size = [], [], 0
    for embed in embeds:
        count = len(embed["title"]) + len(embed["description"])
        if batch and (size + count > DISCORD_MESSAGE_EMBED_LIMIT or len(batch) == 10):
            payloads.append({"content": "", "embeds": batch, "allowed_mentions": {"parse": []}})
            batch, size = [], 0
        batch.append(embed)
        size += count
    if batch:
        payloads.append({"content": "", "embeds": batch, "allowed_mentions": {"parse": []}})
    return payloads


def webhook_endpoint(webhook_url: str) -> str:
    parsed = urllib.parse.urlparse(webhook_url)
    parts = parsed.path.strip("/").split("/")
    if parsed.scheme != "https" or parsed.hostname not in {"discord.com", "discordapp.com"}:
        raise ValueError("DISCORD_WEBHOOK_URL must be a Discord HTTPS webhook URL")
    try:
        webhook_index = parts.index("webhooks")
        webhook_id, token = parts[webhook_index + 1 : webhook_index + 3]
    except (ValueError, IndexError) as exc:
        raise ValueError("DISCORD_WEBHOOK_URL is not a valid Discord webhook URL") from exc
    if not webhook_id.isdigit() or not token:
        raise ValueError("DISCORD_WEBHOOK_URL is not a valid Discord webhook URL")
    query = urllib.parse.parse_qs(parsed.query)
    query["wait"] = ["true"]
    return (
        f"https://discord.com/api/v10/webhooks/{webhook_id}/{token}"
        f"?{urllib.parse.urlencode(query, doseq=True)}"
    )


def main() -> int:
    try:
        readme = README_PATH.read_text(encoding="utf-8")
        baseline = None if os.environ.get("CHANGELOG_FULL_SNAPSHOT") == "true" else previous_readme()
        payloads = changelog_payloads(readme, baseline)
    except (OSError, ValueError) as exc:
        print(str(exc), file=sys.stderr)
        return 1
    if not payloads:
        print("No new changelog entries; nothing to post.")
        return 0

    webhook_url = os.environ.get("DISCORD_WEBHOOK_URL", "").strip()
    if not webhook_url:
        print("Missing repository Actions secret DISCORD_WEBHOOK_URL", file=sys.stderr)
        return 1

    try:
        endpoint = webhook_endpoint(webhook_url)
    except (OSError, ValueError) as exc:
        print(str(exc), file=sys.stderr)
        return 1

    try:
        for payload in payloads:
            request = urllib.request.Request(
                endpoint,
                data=json.dumps(payload, ensure_ascii=False).encode("utf-8"),
                headers={"Content-Type": "application/json", "User-Agent": "UltimateDrawsChangelog/1.0"},
                method="POST",
            )
            with urllib.request.urlopen(request, timeout=20) as response:
                if response.status not in (200, 204):
                    print(f"Discord returned unexpected HTTP status {response.status}", file=sys.stderr)
                    return 1
    except urllib.error.HTTPError as exc:
        print(
            f"Discord rejected the changelog post (HTTP {exc.code}); verify the webhook URL "
            "and that the webhook still has access to its channel.",
            file=sys.stderr,
        )
        return 1
    except (urllib.error.URLError, TimeoutError) as exc:
        print(
            "Could not reach Discord to post the changelog: "
            f"{exc.reason if isinstance(exc, urllib.error.URLError) else 'request timed out'}",
            file=sys.stderr,
        )
        return 1

    print(f"Posted the Discord changelog update in {len(payloads)} message(s).")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
