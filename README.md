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

- Corrected the late Nael tankbuster return trigger and kept transition-to-A guidance from interrupting unfinished dragon baits or the remaining quote mechanics. (14-10-2026)

- Thunderstruck now gives the affected player a Spread voice/text call and a small following countdown, preserving the later Thermionic stack guidance. (14-10-2026)

- P1 double-Hatch arrows refresh unresolved assignments once per second, respect a marked player already inside a link, and retain the original expiry and hit cleanup. (14-10-2026)

- P1 Liquid Hell warnings now check who is furthest from Twintania. Added late Fleeting light Thermionic Beam timing and a stack call that waits for the player's dragon bait to lock. Tenstrike middle regroup yields when Earthshaker markers appear. (14-10-2026)

- L4 now receives early Liquid Hell bait-edge voice alerts before the volley. Tenstrike Hatch assignments sample positions later and prioritize the closest remaining player/link pairs, preserving first-soak and backup pairing. (14-10-2026)

- Added L4 Liquid Hell volley alerts, delayed personal P1 Fireball regroup guidance that waits for Hatch/baiting, player-attached Thermionic Beam countdowns and green stack circles that clear on damage, P2 opening Meteor Stream timers, and Quickmarch middle regroup before Twisting Dive. (14-10-2026)

- Fellruin regroup guidance uses the Neurolink under Nael; both spreads use personal red/green proximity circles with countdowns instead of assigned spread arrows. Personal Nael spread countdown follows your character. Strengthened transition-to-A capture and delayed P1 double-Hatch position assignment by 0.3 seconds. (14-10-2026)

- Added a small personal Raven's Dive countdown near timeline 294, clarified Blackfire Wait outside/Soak tower guidance, and kept Fellruin IN destinations outside Neurolinks until link soaking is required. (14-10-2026)

- Heavensfall Fireball regroup now follows Bahamut's rear when he reappears, with a Stack behind Bahamut callout. (14-10-2026)

- Heavensfall counts the first tower clockwise from Nael as R1, including a tower directly under her, and adds pre-knockback alignment before the tower correction arrow. Blackfire stack guidance moves opposite Nael and retreats straight toward the wall for targeted Hypernova. Added Fellruin Spread/Under Nael and assigned Neurolink callouts. (14-10-2026)

### FRU: LPDU

- Imported DRK Akh Morn cooldowns now run only when OT is selected as the solo tank for that set; party and MT-solo choices do not trigger the DRK solo bundle. (18-10-2026)

- Added separate P4 Akh Morn 1/2 grouping choices: 4–4, MT solo with seven on OT, or OT solo with seven on MT. Personal stack circles, arrows and calls follow the selected grouping for all roles. Defaults follow the supplied sheet: first 4–4, second MT solo. (18-10-2026)

- Added DRK FRU OT with DRK/assigned-OT gates, source rotation optimizations and an explicit mitigation timing selector. Spreadsheet remains the default; imported DRK mitigation timings run only when selected. Shared buster choices replace the source globals, and Apocalypse sink/invuln choices are exclusive. (18-10-2026)

- Shared off-tank utility: stance on at 16.4, stance off during the 200.8–203.8 window, stance on during 702.9–712.9, and Gaia Provokes during 733.2–738.2 and 767.5–773.5. Uses assigned OT for every tank job; stance guards prevent accidental toggles. (18-10-2026)

- FRU mitigation split: Moved103 mitigation reactions (145 skill actions) and the AnyoneCore automatic-mitigation disable into lpdu mits; removed their originals and 26 empty mitigation folders from lpdu strats. Tank-LB reminder remains in lpdu strats. (18-10-2026)

- Middle AoE timers now follow B's actual waymark position for their 2-yalm offset. (11-10-2026)

- Moved the middle AoE countdown labels 2 yalms toward B for improved readability. (11-10-2026)

- Switched assigned tower timers to continuous world-text countdowns and added separate countdowns for middle Burnt Strike and its follow-up AoE. (11-10-2026)

- Added a small green circle at your assigned Fall of Faith conga position alongside the existing arrow. (11-10-2026)

- Added world-text countdown above your assigned P1 tower, showing seconds remaining until its cast resolves. (11-10-2026)

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
