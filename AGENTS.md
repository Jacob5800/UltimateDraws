# Repository guidance for coding agents

- Keep this README user-facing. When a change alters behavior users can see, add a concise entry to its `Changelog` under the relevant fight/profile. Append the date as trailing metadata in `(DD-MM-YYYY)` format; keep the description wording separate and unchanged just to add its date.
- When pruning, delete only Changelog entries whose `(DD-MM-YYYY)` date is more than 10 days before the current date; never prune descriptive README copy or other sections. Remove empty fight/profile headings left behind by pruning.
- Per user request, also cap each Changelog section at its 10 most recent entries, even within that 10-day window. Sort dated entries newest first, preserve existing order for ties, and keep undated entries after dated entries. This entry cap applies independently to every fight/profile section and the Discord preview.
- For a verified reaction update, commit the reaction file and matching README changelog entry together. Push the commit to the configured `origin` branch and verify the push succeeded.
- Keep implementation notes, workflow steps, and agent-only instructions in this file rather than in the README.

## UCOB profile publishing

- Author UCOB changes through TensorCore in `Ucobreactions\LPDU Draws` on timeline `ucob`, version `1.0.3`.
- After every successful profile update, copy (never move) `C:\Users\matth\Documents\Bots\FFXIVMinion64\LuaMods\TensorReactions\TimelineReactions\Ucobreactions\LPDU Draws.lua` to this checkout's `TimelineReactions\UCOB\LPDU Draws(beta).lua`, overwriting the existing destination. Verify matching hashes. Update the UCOB README changelog, commit the profile and README together, and push to the configured origin branch. Confirm branch/origin, ensure this is the only outgoing commit, and verify push success. Report unavailable paths instead of creating another checkout.

## TOP profile publishing

- Author TOP changes through TensorCore in the live `TOPReactions\lpdudraws` profile on timeline `top`, version `1.0.3`. Confirm the editable profile before mutations.
- Authoritative source: `C:\Users\matth\Documents\Bots\FFXIVMinion64\LuaMods\TensorReactions\TimelineReactions\TOPReactions\lpdudraws.lua`. Keep this original file in place; do not resolve it beneath the sibling Agent workspace.
- After every successful TOP profile update, copy (never move or cut) the authoritative source to `C:\Users\matth\OneDrive\Documenten\GitHub\UltimateDraws\TimelineReactions\TOP\lpdudraws.lua`, overwriting the destination copy. Verify matching source/destination hashes, then update the relevant user-facing TOP README changelog entry. Commit the reaction file and README together and push to the configured origin branch. Before pushing, confirm the current branch and origin URL, ensure the intended commit is the only local outgoing commit, and verify the push succeeded. If the source or checkout is unavailable, report that instead of creating another folder or checkout.
- For mitigation work requested in `TOPReactions\lpdu mits`, author in that live profile on the same `top` timeline/version. Apply the same copy/hash/changelog/commit/push workflow using authoritative source `C:\Users\matth\Documents\Bots\FFXIVMinion64\LuaMods\TensorReactions\TimelineReactions\TOPReactions\lpdu mits.lua` and destination `C:\Users\matth\OneDrive\Documenten\GitHub\UltimateDraws\TimelineReactions\TOP\lpdu mits.lua`. Track implementation and replay observations in `TOP-LPDU-MITS-TODO.md`.
- Verify saved reactions through TensorCore and update `TOP-LPDU-DRAWS-TODO.md` after each change, separating completed implementation from pending replay observations. Use trailing `(DD-MM-YYYY)` changelog dates and the repository's 10-day retention rule.

## Discord changelog updater

- `.github/workflows/discord-changelog.yml` posts only new/updated README changelog entries on pushes to `main`, compared with the push's before revision. Formatting-only whitespace and removals do not post. Keep checkout history available for that baseline; fail rather than silently reposting history if it cannot be read.
- Configure the repository Actions secret `DISCORD_WEBHOOK_URL` with the webhook URL.
- Discord output must retain every fight/profile section with new entries, capped at 10 entries each. Paginate descriptions and messages within Discord limits; never truncate after the first section. Manual dispatch may explicitly request a full snapshot; otherwise it compares against HEAD^.
