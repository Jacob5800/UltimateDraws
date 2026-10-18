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

- Tenstrike calls now explicitly progress from Spread - wait for Hatch markers to Hatch on you - into your link or No Hatch - stay spread, then Your turn - soak your link for backups. Removed the redundant backup-wait call; middle remains the regroup instruction. (19-10-2026)

- Tenstrike initial spread arrows now stop one second before the DPS or tank/healer spread window. Once all three Hatch targets are confirmed, only non-Hatch players receive a single Spread—keep clear of the Hatch players call. (19-10-2026)

- Tenstrike spread guidance now starts at 735.5, uses the same 12y Quickmarch spread radius, and remains until your Hatch assignment takes over or your own Meteor Stream hits. This removes the premature cutoff before the spread. (19-10-2026)

- Nael lightning now shows a following 5y personal spread circle directly while Thunderstruck is present, with one Lightning on you—spread call per application. Other-player circles and the existing countdown remain; the previous duplicate call is removed. (19-10-2026)

- Nael transition stack guidance defaults to A and follows a clear five-player majority gathered within 6y of B or C for 0.5 seconds. It retains the selection through brief movement gaps. (19-10-2026)

- Tenstrike now distinguishes first Hatch, backup waiting, first-soak exit and second-soak entry. Earthshaker calls identify marked spread versus waiting at 4; Middle—stack and a short center arrow begin only after both waves resolve. (19-10-2026)

- Tenstrike players without the current Earthshaker now receive a green arrow to the actual EU waymark 4. It stops when the wave changes or ends; the waiting call names marker 4 without assuming it is north. (18-10-2026)

- Blackfire Trio’s Stack middle call around 570 now also uses TTS; its timing and visual alert remain unchanged. (18-10-2026)

- Fellruin now distinguishes Spread for dive, Under Nael, Stay in your link, and Out of link—spread on the actual Aetheric Profusion hit. Link guidance hands off to final spread circles without competing instructions; tank link assignments are retained. (18-10-2026)

- Latest UCOB cues: your Heavensfall tower stays green while the small staging circle clears on knockback; the moving Twister countdown is 1.8x size; Cleanse doom appears only on your turn; only the first clockwise Doom call speaks. (18-10-2026)

### FRU: LPDU

- WAR/GNB now reserve Nascent Flash/Heart of Corundum during Somber whenever the first Akh uses 7–1, including when supporting the other solo tank. First 4–4 and PLD/DRK support remain unchanged. Expanded cooldown checks pass all 864 grouping, role, job and partner inputs after GUI normalization; replay survival checks remain pending. (18-10-2026)

- MT Darklit Reprisal now uses 731.2–732.2 and CT Reprisal 792.9–793.9, preserving recovery for second Akh Morn. Removed WAR’s unavailable second-Morn Shake request while retaining its late first-Morn shield; second-Morn coverage uses the agreed party plan. (18-10-2026)

- The seven imported DRK potion and potion-hold reactions now support either assigned tank role. Their DRK job requirement, potion and optimization conditions, actions and timings are retained. (18-10-2026)

- RDM Jump In now disables and re-enables in the shared jump-control windows, including the P2 entry release. SMN is skipped; Viper, Reaper and Samurai have no equivalent persistent movement toggle in their current ACR catalogs. (18-10-2026)

- Added the requested synchronized jump-disable/re-enable windows to lpdu mits for PLD, MNK and DRG, the non-WAR live ACR catalogs exposing a Jumps toggle. Restores jumps at P2 entry 203.8 without resetting unrelated rotation holds. WAR keeps its existing job-profile controls. (18-10-2026)

- Removed WAR Nascent Flash and GNB Heart of Corundum requests from OT Quadruple Slap support, where the fast P1-to-P2 transition leaves them unavailable. MT invuln and PLD/DRK support remain unchanged; no healer automation was added. (18-10-2026)

- PLD keeps Veil for first Morn Afah and Passage for second; removed the unavailable second Veil request. DRK and other-job assignments remain unchanged. This is a normal-stack plan; no intentional-death behavior was added. (18-10-2026)

- WAR/GNB reserve their P1 OT short for the first explosion instead of spending it on Powder support; MT avoids an unavailable repeated short and uses Rampart plus explosion extras. WAR/GNB also reserve their short when solo first Akh instead of giving Somber support. Removed redundant Dark Mind from the DRK second-Akh extras while retaining Oblation. (18-10-2026)

- Moved the P2 120s personal window to 314.1-318.1 after accounting for the P1 sync. Split first P4 Akh Morn party mitigation: DRK/GNB stay early, PLD/WAR shields wait until 778.5-783.0 for Morn Afah; preceding Memory shields now use 658.1-661.1 to preserve cooldown margin. Wings reserves OT Rampart when either Akh set selects OT solo. Somber invuln automatically excludes PLD and updates linked P4/P5 ownership; two PLDs use Tank swap. (18-10-2026)

- Added WAR FRU with selected WarNeverChange rotation controls, assigned MT/OT gates and inherited LPDU spreadsheet mitigation. Shared tanks receive four Sprint windows and three Shirk reactions triggered by the assigned OT Provoke. Added jump-hold releases for skipped P1 windows and after Apocalypse; source alternative WAR mitigations remain excluded. (18-10-2026)

### UWU: LPDU

- Attack 1–3 markers now queue for cleanup on wipe and clear once the player is alive at the next pull, with a fight-start fallback. Other target markers are preserved. (17-10-2026)

- Moved orb assignments to fight start (timeline 0–15). Added a DPS nail kill-order switch when either relative NW/NE nail falls below 40% while both southern nails remain alive, Mesohigh circles that follow tether transfers, and a small melee-only blue OT marker until Mistral Song resolves. (12-10-2026)

- 2026-10-11: Annihilation orb role cues now fire as each Aetheroplasm orb appears, rather than at fixed timeline times. A wipe resets the orb count; the three previous timed cues are disabled. Live replay confirmation remains pending.

- 2026-10-11: Added an Annihilation 3-3-1-1 assignment window for melee and tanks, with role-specific cues for each of the four orbs. Added MT-left guidance after Predation, corrected the MT Homing calls there, and added OT Homing invulnerability and MT cleave reminders after Annihilation. Orb locations and new call timing await live replay confirmation.

- 2026-10-11: Titan Granite Gaol blast-range circles for unmarked players now appear only during timeline 639–700. The event-driven draw remains uncapped, preserving all gaols that spawn in that window. Replay confirmation remains pending.

- 2026-10-11: Ifrit dash routing now reads the actual Crimson Cyclone channel order instead of assuming nail death events arrive in charge order. The first three charge origins are known before the first hit; the fourth uses the remaining nail position. This covers older pulls where death-event order differed from dash order. Replay confirmation remains pending.

- 2026-10-11: Ifrit dash guidance now checks the later Crimson Cyclone lanes and Afterburn before choosing each move. It can wait through a dash when the next counterclockwise spot would be hit, shows a small green circle at the final stopping point, and clears cues if a cast contradicts the planned order. The route is saved in Draws LPDU; live replay confirmation remains pending.

- 2026-10-11: Ifrit dash guidance now shows the starting spot near the fourth nail around timeline 409 (opposite for Searing Wind), then one counterclockwise move at a time. The first move appears after dash one; two-step patterns replace it with the next move after dash two from the player's current position. Replay confirmation remains pending.

- 2026-10-11: Ifrit dash arrows now follow the recorded four-nail kill order. The Woken clone selects a one-step or two-step counterclockwise dodge from the fourth nail, mirrored for the Searing Wind healer; guidance begins after the first dash hit. Live checks across all Woken positions remain pending.

- 2026-10-10: R1 now hears and sees Go to C and take tether when Garuda Mesohigh appears during Annihilation. Replaced the narrow fixed-time window with the actual tether event, retained the personal C arrow and acquisition cleanup, and suppressed repeat prompts or prompts when R1 already holds the tether. Replay confirmation remains pending.
