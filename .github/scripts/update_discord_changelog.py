"""Post the repository README changelog to Discord when it changes."""

from __future__ import annotations

import json
import os
import sys
import urllib.error
import urllib.parse
import urllib.request
from pathlib import Path


README_PATH = Path(__file__).resolve().parents[2] / "README.md"
CHANGELOG_HEADING = "## Changelog"
DISCORD_DESCRIPTION_LIMIT = 4096


def changelog_text(readme: str) -> str:
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

    text = "\n".join(body).strip()
    if not text:
        raise ValueError("The README changelog section is empty")

    if len(text) <= DISCORD_DESCRIPTION_LIMIT:
        return text

    # Keep complete leading lines (the README lists the newest entries first).
    shortened = []
    for line in text.splitlines():
        candidate = "\n".join([*shortened, line, "", "[Full changelog](https://github.com/Jacob5800/UltimateDraws#changelog)"])
        if len(candidate) > DISCORD_DESCRIPTION_LIMIT:
            break
        shortened.append(line)
    return "\n".join(shortened).rstrip() + "\n\n[Full changelog](https://github.com/Jacob5800/UltimateDraws#changelog)"


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
    webhook_url = os.environ.get("DISCORD_WEBHOOK_URL", "").strip()
    if not webhook_url:
        print("Missing repository Actions secret DISCORD_WEBHOOK_URL", file=sys.stderr)
        return 1

    try:
        description = changelog_text(README_PATH.read_text(encoding="utf-8"))
        endpoint = webhook_endpoint(webhook_url)
    except (OSError, ValueError) as exc:
        print(str(exc), file=sys.stderr)
        return 1

    payload = {
        "content": "",
        "embeds": [
            {
                "title": "UltimateDraws Changelog",
                "url": "https://github.com/Jacob5800/UltimateDraws#changelog",
                "description": description,
                "color": 5793266,
            }
        ],
        "allowed_mentions": {"parse": []},
    }
    request = urllib.request.Request(
        endpoint,
        data=json.dumps(payload, ensure_ascii=False).encode("utf-8"),
        headers={"Content-Type": "application/json", "User-Agent": "UltimateDrawsChangelog/1.0"},
        method="POST",
    )
    try:
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

    print("Posted the Discord changelog update.")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
