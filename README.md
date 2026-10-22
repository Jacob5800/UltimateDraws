Hi please add https://github.com/Jacob5800/UltimateDraws this to your AnyoneCore third party sources.

The draws in here are mostly centered around LPDU strats in the Europe region but may work for other regions, feel free to make your own edits.

Currently supported:

UWU: LPDU (Beta) — supports ranged, melee, and tanks.

UCOB: LPDU (Beta) Supports ranged/melee

FRU: LPDU

TOP: LPDU 

TEA: Coming soon by Ton.

## Changelog

### Repository

- Discord now posts only new changelog entries, grouped by fight, including UCOB. Unchanged history and pruning are not reposted; the full changelog remains here. (18-10-2026)

- Changelog sections now keep their 10 newest entries each. Discord shows every fight in separate sections and splits long updates across messages instead of cutting off later fights. (18-10-2026)

### TOP: LPDU

- P5 Omega double-out guidance now prefers a shared far Omega-M-side destination, checked against the current weapon and diffuse-cone geometry. Other patterns retain their current routing; blocked paths keep the existing safe-position fallback. (18-10-2026)

- All four P1 personal green spread countdowns now follow the player and their attached green circle continuously, retaining the 4.3-second lifetime. (18-10-2026)

- Added a reusable entity-following countdown helper using documented world-to-screen and GUI drawing APIs. Shared timer state and a frame guard prevent duplicate drawing when another profile includes the helper. (18-10-2026)

- Delta now shares the live Near/Far World path preview, hit-radius display and stable predicted-versus-assigned recipient warning used in Sigma/Omega. (18-10-2026)

- Delta now publishes its existing LPDU final-position assignments as an expected Near/Far World chain order, without changing the movement assignments. (18-10-2026)

- Fixed the cleanup-only eligibility condition that prevented Sigma/Omega world previews from starting. Sigma movement guidance now hands off 2 seconds earlier. Both P6 Wave Cannon spread occurrences now use persistent target-following beams. (18-10-2026)

- Second P3 hands turn red when the first hand set actually hits, approximately 2.6–2.7 seconds before the second set, completing the white/yellow/red sequence. (18-10-2026)

- Second P3 hands now appear white at 8 seconds and turn yellow at 4 seconds. Personal partner labels and P2 swap callouts display tank roles as MT/OT. (18-10-2026)

- P5 Sigma and both Omega sets now preview current Near/Far World bounce paths and radii, warning when predicted recipients differ from assigned order. P1 rotation label lasts 2 seconds longer; P3 pair-stack arrow lasts 13 seconds and hand previews/countdowns begin 8 seconds before impact. (18-10-2026)

- P3 hand previews now use 40% fill. The second set stays amber until its last 3 seconds, then changes to red using a scheduled draw. Removed the separate ring countdown while preserving its circle. (18-10-2026)

### UCOB: LPDU

- Fixed pre-pull assignment-window visibility at timeline zero. Enabled spoken alerts for Step into Neurolink and Cleanse doom. (20-10-2026)

- Assignment settings remain visible through 15 seconds into the pull; potion controls are grouped under a collapsible Potions section. (20-10-2026)

- Potion schedule hover text now lists the enabled opener, selected second window, adds opener and late Golden timings, with synced-timeline and skipped-window explanations. (20-10-2026)

- Fixed missing Settings errors in the assignment menu, potion toggles and healer/tower assignment options. Settings reads now use the live global settings table when needed and wait safely if settings are unavailable. (20-10-2026)

- Added optional all-job potion automation to LPDU Draws: opener, selectable second window, adds opener and late Golden. The assignment menu now includes an overall potion toggle, opener toggle, and second-window choices: Late Nael, Delayed Nael, Bahamut opener, After Blackfire, or Disabled/manual. Requests respect weave rules and expire after three seconds; replaced inherited MCH potion duplicates. (20-10-2026)

- Published [GNB - UCOB 1.5](TimelineReactions/UCOB/GNB%20-%20UCOB%201.5.lua), the original GNB profile used as the reference for the shared tank mitigation draft. Its existing mitigation schedule is included; avoid combining it with the shared tank profile without disabling duplicate requests. (20-10-2026)

- Added a shared UCOB tank mitigation draft derived from GNB 1.5, with Party Roster assignments and catalog-confirmed requests for all four tanks. Passage of Arms is an advance manual alert; Holmgang remains manual for safe self-targeting. See [tank mitigation notes](TimelineReactions/UCOB/TANK-MITS-NOTES.md) for excluded cooldown conflicts and pending replay checks. (20-10-2026)

- Grand Octet towers now show continuous cast countdowns. Both adds quote sets show a personal spread countdown from the preceding hit; IN-first stacks read actual marker 4 and other stacks marker 1. (19-10-2026)

- Fixed spacing in the personal lightning alert: Lightning on you, spread! (19-10-2026)

- P1 Fireball regroup and late Hatch arrows now yield while the Twintania-to-Nael transition regroup is active, preventing competing destinations after Twintania disappears. (19-10-2026)

- Tenstrike highlights only your assigned Neurolink: amber while waiting as backup, green when it is your turn, clearing after completion. Personal Hatch phase calls now check immediately alongside guidance rather than waiting in the update queue. (19-10-2026)

- Tenstrike calls now explicitly progress from Spread - wait for Hatch markers to Hatch on you - into your link or No Hatch - stay spread, then Your turn - soak your link for backups. Removed the redundant backup-wait call; middle remains the regroup instruction. (19-10-2026)

- Tenstrike initial spread arrows now stop one second before the DPS or tank/healer spread window. Once all three Hatch targets are confirmed, only non-Hatch players receive a single Spread—keep clear of the Hatch players call. (19-10-2026)

- Tenstrike spread guidance now starts at 735.5, uses the same 12y Quickmarch spread radius, and remains until your Hatch assignment takes over or your own Meteor Stream hits. This removes the premature cutoff before the spread. (19-10-2026)


### FRU: LPDU

- Fixed repeated P1 Fall of Faith fire/lightning helper calls when the opposite side resolves; calls now track your own tether sequence and formation. (22-10-2026)

- Personal Fall of Faith helper calls now repeat at each relevant bait stage, even when the assigned position stays the same. (21-10-2026)

- Save/load and import/export now include crystal damage mode and TDDT/DTTD mirror order alongside tank settings, and are available to every job. Older tank-only imports/saves remain compatible. (21-10-2026)

- Fall of Faith helper stack calls now say Next: stack behind tether to distinguish the upcoming position from an immediate movement instruction. (21-10-2026)

- P1 clock-position arrows now clear as the post-buster spread/stack guidance appears. Extended the later move-in arrow to 1.6 seconds. (21-10-2026)

- Added personal Fall of Faith helper steps anchored to the active tether player: red fire-stack markers or blue lightning left/middle/right markers, with movement arrows and personal calls as the bait changes. (21-10-2026)

- Extended the P1 Burnt Strike move-in arrow by 0.3 seconds for clearer follow-through. (21-10-2026)

- Scythe Diamond Dust calls now distinguish marked players (In, then spread / Spread) from unmarked players (In, then stay in / Stay in), with the duplicate inherited opening call suppressed for this pattern. (21-10-2026)

- Added a personal spoken Go out call alongside each Ultimate Relativity out-arrow step, including delayed steps. (21-10-2026)

- Red-mirror tank/melee positions now flip with the ranged mirror's side, keeping the TDDT MT solo spot toward ranged and OT/M2 away from them. (21-10-2026)

- Fixed Fall of Faith lightning-tether handoffs that clear with a changed tether ID, restoring the third/fourth player's personal blue circle and swap guidance. (21-10-2026)


### UWU: LPDU

- Enabled TTS for the 1048s ranged eruption-bait positioning call and 697s Landslide warning. (21-10-2026)

- Enabled TTS for Ultima’s “Bait eruptions then move” call. (21-10-2026)

- Searing Wind cleanup now skips the Titan phase, retaining cleanup in the Ifrit and Ultima Searing Wind windows. (21-10-2026)

- Fixed Mistral OT-marker cleanup repeatedly executing through Ifrit. Cleanup now filters Mistral damage IDs, requires an active marker, and runs only in Garuda/Ultima Mistral windows. (21-10-2026)

- Ifrit’s opening Incinerate cone now stays visible through the back-to-back hits until timeline 330, following his current target. Later Incinerates retain their short warning windows. (21-10-2026)

- Added “Kill nail order” when the fourth paired ranged Eruption drop starts during nails: the seventh bait-cast start triggers it once, before the explosions resolve. (21-10-2026)

- Fixed the first Titan arrival warning missing after Ifrit: the Geocrush cast can start before the Titan timeline jump. The danger circle and green safe edge now accept that exact cast before the jump. (21-10-2026)

- Cleave warnings now appear only during the three seconds before each scheduled attack and clear at resolution. Slipstream stays fixed to its cast-start direction; Titan Rock Buster and Mountain Buster use separate warning windows. (21-10-2026)

- Added target-facing Garuda, Ifrit and opening Titan cleave warnings, fixed-direction Slipstream, and Titan arrival danger/safe-edge markers. Added the 402s stack call excluding Searing Wind, repaired nail kill-order text, and halved the editable Upheaval position marker. Replay checks remain pending. (21-10-2026)

- Attack 1–3 markers now queue for cleanup on wipe and clear once the player is alive at the next pull, with a fight-start fallback. Other target markers are preserved. (17-10-2026)
