# Repository guidance for coding agents

- Keep this README user-facing. When a change alters behavior users can see, add a concise entry to its `Changelog` under the relevant fight/profile. Append the date as trailing metadata in `(DD-MM-YYYY)` format; keep the description wording separate and unchanged just to add its date.
- When pruning, delete only Changelog entries whose `(DD-MM-YYYY)` date is more than 10 days before the current date; never prune descriptive README copy or other sections. Remove empty fight/profile headings left behind by pruning.
- Per user request, also cap each Changelog section at its 10 most recent entries, even within that 10-day window. Sort dated entries newest first, preserve existing order for ties, and keep undated entries after dated entries. This entry cap applies independently to every fight/profile section and the Discord preview.
- Keep implementation notes, workflow steps, and agent-only instructions in this file rather than in the README.

## Shared reaction authoring and publishing

This procedure applies to every mapped profile below. Keep one procedure here; profile rows supply only their identities, paths and implementation notes. The Agent workspace's AGENTS.md retains mechanic-specific rules.

- If a fight/profile has no established GitHub destination file, ask the user whether to create and publish one before creating the destination or adding a mapping. Suggest a concrete filename in the existing checkout. The user may decline; in that case, keep the authorized changes local and do not publish that profile. Record the choice in its TODO notes, and do not ask again unless the user changes that choice or the publishing scope materially changes. A mapped destination that is unexpectedly missing is not automatic authorization to recreate it; follow step 6.

1. Author through TensorCore in the mapped live profile. Confirm the selected editable profile and timeline/version before mutations; do not save overrides in a job profile unless explicitly requested. Use the listed timeline versions where specified; confirm FRU's live timeline/version rather than guessing.
2. After a successful update, verify the saved reactions through TensorCore and update the mapped TODO file. Separate completed implementation from pending replay observations; syntax/read-back checks do not establish runtime success.
3. Copy the authoritative source to the mapped destination, replacing that published copy. Never move/cut the original. Verify matching source/destination SHA256 hashes. The Agent workspace is a sibling of TimelineReactions, not its parent.
4. Update the relevant user-facing README changelog entry, following the date, retention and entry-cap rules above. Keep replay-check and pending-validation status in TODO notes rather than changelog entries.
5. Commit the intended reaction file(s), matching README entry and applicable instruction changes together. Before pushing, confirm the current branch and origin URL and ensure the intended commit is the only local outgoing commit. Leave unrelated working changes alone; if unrelated outgoing commits exist, report them rather than pushing or rewriting them automatically.
6. Push to the configured origin branch and verify the remote branch matches the intended commit. If the authoritative source or existing checkout is unavailable, report it and obtain the current path; do not create a replacement checkout or folder.

### Canonical profile mapping

- Authoritative-source root: `C:\Users\matth\Documents\Bots\FFXIVMinion64\LuaMods\TensorReactions\TimelineReactions\`.
- Published-destination root: `C:\Users\matth\OneDrive\Documenten\GitHub\UltimateDraws\TimelineReactions\`.
- TODO root: `C:\Users\matth\Documents\Bots\FFXIVMinion64\LuaMods\TensorReactions\Agent\`.
- Source and destination columns below are relative to their respective roots. The live profile name is the source path without `.lua`.

| Fight/profile | Timeline / version | Authoritative source | Published destination | TODO file |
|---|---|---|---|---|
| FRU LPDU | Confirm live | `Frureactions\lpdu strats.lua` | `FRU\lpdu strats.lua` | `FRU-REACTIONS-TODO.md` |
| FRU ACR3 Opti | `fru` / `1.0.5` | `Frureactions\\ACR3 opti FRU.lua` | `FRU\\ACR3 opti FRU.lua` | `FRU-REACTIONS-TODO.md` |
| UWU LPDU | `uwu` / `1.0.2` | `OwOReactions\Draws LPDU.lua` | `UWU\Draws LPDU.lua` | `UWU-REACTIONS-TODO.md` |
| UCOB LPDU | `ucob` / `1.0.3` | `Ucobreactions\LPDU Draws.lua` | `UCOB\LPDU Draws.lua` | `UCOB-DRAWS-TODO.md` |
| UCOB ACR3 Optimization | `ucob` / `1.0.3` | `Ucobreactions\\ACR3 optimization UCOB.lua` | `UCOB\\ACR3 optimization UCOB.lua` | `UCOB-DRAWS-TODO.md` |
| TOP LPDU draws | `top` / `1.0.3` | `TOPReactions\lpdudraws.lua` | `TOP\lpdudraws.lua` | `TOP-LPDU-DRAWS-TODO.md` |
| TOP LPDU mitigations | `top` / `1.0.3` | `TOPReactions\lpdu mits.lua` | `TOP\lpdu mits.lua` | `TOP-LPDU-MITS-TODO.md` |
| DSR LPDU | `dsw` / `1.0.5` | `dsrreactions\lpdu strats.lua` | `DSR\Lpdu draws(beta).lua` | `DSR-LPDU-DRAWS-TODO.md` |
| TEA LPDU draws | `tea` / `1.0.2` | `Teareactions\LPDU Draws.lua` | `TEA\LPDU Draws.lua` | `TEA-PROFILE-SPLIT-TODO.md` |
| TEA LPDU mitigations | `tea` / `1.0.2` | `Teareactions\LPDU mits.lua` | `TEA\LPDU mits.lua` | `TEA-PROFILE-SPLIT-TODO.md` |
| TEA ACR3 optimizations | `tea` / `1.0.2` | `Teareactions\ACR3 Opti.lua` | `TEA\ACR3 Opti.lua` | `TEA-PROFILE-SPLIT-TODO.md` |
| TEA AA AutoSim | `tea` / `1.0.2` | `Teareactions\[AA] Autosim - TEA (1) (1).lua` | `TEA\[AA] Autosim - TEA.lua` | `TEA-AUTOSIM-DOLLS-TODO.md` |

UCOB has one canonical published draws file, `LPDU Draws.lua`; do not recreate its removed beta duplicate. Preserve DSR's distinct beta filename. TEA's removed `autosim TEA Tramadol.lua` download is not a substitute for AA AutoSim. TEA `LPDU Draws` and `ACR3 Opti` are separate profiles with no inheritance between them. `ACR3 Opti` contains the moved Reaper/Pictomancer optimizations; `LPDU Draws` contains the copied remaining reactions, including `[RPR] Second Wind`. Do not publish the original `rpr tea` as either profile.

## Discord changelog updater

- `.github/workflows/discord-changelog.yml` posts only new/updated README changelog entries on pushes to `main`, compared with the push's before revision. Formatting-only whitespace and removals do not post. Keep checkout history available for that baseline; fail rather than silently reposting history if it cannot be read.
- Configure the repository Actions secret `DISCORD_WEBHOOK_URL` with the webhook URL.
- Discord output must retain every fight/profile section with new entries, capped at 10 entries each. Paginate descriptions and messages within Discord limits; never truncate after the first section. Manual dispatch may explicitly request a full snapshot; otherwise it compares against HEAD^.
