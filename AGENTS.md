# Repository guidance for coding agents

- Keep this README user-facing. When a change alters behavior users can see, add a concise entry to its `Changelog` under the relevant fight/profile. Append the date as trailing metadata in `(YYYY-MM-DD)` format; keep the description wording separate and unchanged just to add its date.
- When pruning, delete only Changelog entries dated more than one calendar month before the current date; never prune descriptive README copy or other sections. Remove empty fight/profile headings left behind by pruning.
- For a verified reaction update, commit the reaction file and matching README changelog entry together. Push the commit to the configured `origin` branch and verify the push succeeded.
- Keep implementation notes, workflow steps, and agent-only instructions in this file rather than in the README.
