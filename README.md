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

- Grand Octet towers now show continuous cast countdowns. Both adds quote sets show a personal spread countdown from the preceding hit; IN-first stacks read actual marker 4 and other stacks marker 1. (19-10-2026)

- Fixed spacing in the personal lightning alert: Lightning on you, spread! (19-10-2026)

- P1 Fireball regroup and late Hatch arrows now yield while the Twintania-to-Nael transition regroup is active, preventing competing destinations after Twintania disappears. (19-10-2026)

- Tenstrike highlights only your assigned Neurolink: amber while waiting as backup, green when it is your turn, clearing after completion. Personal Hatch phase calls now check immediately alongside guidance rather than waiting in the update queue. (19-10-2026)

- Tenstrike calls now explicitly progress from Spread - wait for Hatch markers to Hatch on you - into your link or No Hatch - stay spread, then Your turn - soak your link for backups. Removed the redundant backup-wait call; middle remains the regroup instruction. (19-10-2026)

- Tenstrike initial spread arrows now stop one second before the DPS or tank/healer spread window. Once all three Hatch targets are confirmed, only non-Hatch players receive a single Spread—keep clear of the Hatch players call. (19-10-2026)

- Tenstrike spread guidance now starts at 735.5, uses the same 12y Quickmarch spread radius, and remains until your Hatch assignment takes over or your own Meteor Stream hits. This removes the premature cutoff before the spread. (19-10-2026)

- Nael lightning now shows a following 5y personal spread circle directly while Thunderstruck is present, with one Lightning on you—spread call per application. Other-player circles and the existing countdown remain; the previous duplicate call is removed. (19-10-2026)

- Nael transition stack guidance defaults to A and follows a clear five-player majority gathered within 6y of B or C for 0.5 seconds. It retains the selection through brief movement gaps. (19-10-2026)

- Tenstrike now distinguishes first Hatch, backup waiting, first-soak exit and second-soak entry. Earthshaker calls identify marked spread versus waiting at 4; Middle—stack and a short center arrow begin only after both waves resolve. (19-10-2026)

### FRU: LPDU

- **P4 Darklit potion:** The 738.2 reaction now uses the appropriate stat potion for all 21 supported combat jobs, alongside its existing reminder. (19-10-2026)

- **Tank settings sharing / UR rewind:** Replaced the replay preset button with Save/Restore and clipboard Import/Export with preview. Added a quiet personal countdown for the final five seconds of UR Return, without TTS or central callouts. (19-10-2026)

- **Tank settings wording:** Renamed “Sheet defaults” to “LPDU Mitsheet default”. (19-10-2026)

- **P2 adds potion:** The 418.8 reaction now uses the appropriate stat potion for all 21 supported combat jobs, alongside its existing reminder. (19-10-2026)

- **First mirror alert:** Added a one-time spoken/on-screen “First mirror - move to the arrow” cue when the initial mirror direction arrow appears. (19-10-2026)

- **DRK/PLD defaults:** New unset tank settings use PLD solo for first P4 Akh, DRK solo for second, PLD Halo/P5 first and DRK Apoc/Somber. Existing choices remain editable; a Load DRK/PLD replay defaults button applies the full preset. (19-10-2026)

- **P5 restriction notice:** PLD explanations now appear only when a Paladin is present in the tank roster; the two-PLD note appears only for two Paladins. Updated the blocked-choice popup opening behavior. (19-10-2026)

- **P5 invuln selection popup:** Choosing an incompatible order now opens an explanation with an OK button, showing the required order and the P4 Tank swap alternative. (19-10-2026)

- **Tank settings clarity:** Explains when the PLD cooldown restriction requires a P5 invuln order, why the choice reverts, and how P4 Tank swap allows changing it. The displayed P5 order now reflects the enforced selection immediately. (19-10-2026)

- **Crystallize Time exalines:** Added a continuous countdown on each active Tidal Light strip, refreshed for each successive hit from its own cast duration. (19-10-2026)

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
