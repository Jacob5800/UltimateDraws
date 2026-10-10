# Repository guidance for coding agents

- Keep this README user-facing. When a change alters behavior users can see, add a concise entry to its `Changelog` under the relevant fight/profile. Append the date as trailing metadata in `(DD-MM-YYYY)` format; keep the description wording separate and unchanged just to add its date.
- When pruning, delete only Changelog entries whose `(DD-MM-YYYY)` date is more than 10 days before the current date; never prune descriptive README copy or other sections. Remove empty fight/profile headings left behind by pruning.
- For a verified reaction update, commit the reaction file and matching README changelog entry together. Push the commit to the configured `origin` branch and verify the push succeeded.
- Keep implementation notes, workflow steps, and agent-only instructions in this file rather than in the README.

## UCOB profile publishing

- Author UCOB changes through TensorCore in `Ucobreactions\LPDU Draws` on timeline `ucob`, version `1.0.3`.
- After every successful profile update, copy (never move) `C:\Users\matth\Documents\Bots\FFXIVMinion64\LuaMods\TensorReactions\TimelineReactions\Ucobreactions\LPDU Draws.lua` to this checkout's `TimelineReactions\UCOB\LPDU Draws(beta).lua`, overwriting the existing destination. Verify matching hashes. Update the UCOB README changelog, commit the profile and README together, and push to the configured origin branch. Confirm branch/origin, ensure this is the only outgoing commit, and verify push success. Report unavailable paths instead of creating another checkout.

## Discord changelog updater

- `.github/workflows/discord-changelog.yml` posts the README `Changelog` section as a new Discord webhook message whenever `README.md` changes on `main`.
- Configure the repository Actions secret `DISCORD_WEBHOOK_URL` with the webhook URL.
