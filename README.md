Hi please add https://github.com/Jacob5800/UltimateDraws this to your AnyoneCore third party sources.

The draws in here are mostly centered around LPDU strats in the Europe region but may work for other regions, feel free to make your own edits.

Currently supported:

UWU: LPDU (Beta) — supports ranged, melee, and tanks.

UCOB: LPDU (Beta) Supports ranged/melee

FRU: LPDU

TOP: LPDU 

TEA: Coming soon by Ton.

## Changelog

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

- P2 stack adjustments now name and highlight the player to swap with using the existing LPDU rule. P2 and Sigma keep a personal matching-symbol partner label and subtle connecting line through their mechanic. (18-10-2026)

- P6 puddles keep all danger circles but show only the personal countdown. Spread beams now follow targets from a single attached draw, and Wild Charge no longer refreshes unchanged geometry. Hello World uptime hover text keeps its wording across two lines. (18-10-2026)

- P3 hand circles and continuous countdowns now appear only for the final 10 seconds before each set hits, preserving the predicted impact deadlines. (18-10-2026)

- P3 Hello World settings now offer Caster/healer uptime, disabled by default. On a shared tower approach, tanks/melee adjust for healers/casters; other pairs retain the front-player rule. Hover text explains party consistency and next-set application. (18-10-2026)

- P3 hand-phase pair-stack guidance now lasts 11 seconds instead of 10; spread guidance retains its existing duration. (18-10-2026)

- Program Loop no longer repeats a completed tether as a new step: retained number eligibility, handoff-step tracking and deadline cleanup suppress lingering ownership. (18-10-2026)

- P3 hand casts reuse the early preview without duplicate countdowns, retaining the normal cast-only fallback when arrival was missed. Omega World holders briefly see their personal SET 1/2 NEAR/FAR WORLD label. (18-10-2026)

- Both P3 hand slam sets now show 11y AoE previews and continuous countdowns from their visible arrival animation, well before the cast bar. First and second sets use distinct colours. (18-10-2026)

- Program Loop snapshots all eight number assignments before buffs expire, preserving later tether pickup guidance. Pantokrator countdowns now sit inside each current cone instead of on the boss. (18-10-2026)

- P1 tether guidance now uses recorded handoffs, works when only your own tether is available, and ignores stale number assignments after confirmed ownership. (18-10-2026)

- Program Loop now records actual tether gain/removal events for reliable ownership tracking. (18-10-2026)

- P3 movement calls distinguish rot outer-lane travel, tether inside waiting, safe staging release, assigned rot pickup, confirmed transfer/spread, and vulnerability-gated tether breaks. The handoff arrow clears when rot is received. (18-10-2026)
- Program Loop confirmed tether holders retain outward guidance without needing their partner's original number record. Pantokrator's opening arrow now waits for observed rotation and selects the matching edge. (18-10-2026)

- Pantokrator direction now follows observed cone rotation (clockwise or counterclockwise). Program Loop clear-out guidance uses an arrow without a destination circle. (18-10-2026)
- Hello World now follows the positional tower split: when both eligible rot holders approach the same tower, the front player continues to the other tower and the trailing player stays. The split is fixed per wave and reused for rot handoffs. (18-10-2026)
- Omega near bounce receivers keep a stable paired destination with jump spacing and first/second distance ordering; already valid bait positions are preserved. Increased personal World-circle fill to 25%. (18-10-2026)

- Hello World stack-tower soakers now see their assigned 6y tower boundary only during that tower step, with a stable green outline and subtle fill. (18-10-2026)

- Stabilized exasquare/Blaster draw lifetimes and raised flat shapes slightly above the floor; Wave Cannon stack refreshes continuously. Meteor spread arrows now keep the assigned clock destination instead of changing detours. (18-10-2026)
- Sigma's outside/middle-AoE waiting step starts around the first rear laser. Omega bounce receivers briefly see one relevant World spacing circle; other roles do not. (18-10-2026)

- Cosmo Dive now uses 55% fill: your own tank bait blue, the other tank red; non-tanks see both tank baits red, party stack stays green. Added brief beams to the first Wave Cannon set. (18-10-2026)
- Pantokrator uses one short opening direction cue instead of repeated movement arrows. Removed red puddle countdown clutter and added a countdown only for your green missile spread. Moved the transition lineup 4y farther south. (18-10-2026)
- P6 routing considers known exaflare lanes earlier and briefly waits for meteor puddle captures before showing the spread arrow/call. Program Loop waiting candidates extend farther out when inner candidates are blocked. Replay checks remain pending. (18-10-2026)

- Sigma: highlight your assigned tower as soon as its assignment is known, retaining the existing arrow handoff. Removed the early conga positioning arrow and callout; later bounce guidance remains. (18-10-2026)

- Corrected Sagittarius Arrow to the recorded AoE heading. Delta arm previews follow their bait before locking into the rotating sequence. (18-10-2026)
- Added one small centre countdown per Pantokrator cone pair; expanding-ring timers now sit within each successive ring. Program Loop waiting guidance avoids tether pickup paths and prefers south when clear. (18-10-2026)
- Cosmo Dive circles use 45% fill, with the non-tank stack green. Dive, puddle and exaflare draws render on the ground to keep characters visible. Added brief spread-beam previews and personal meteor flare destinations, accounting for the ranged LB. (18-10-2026)

- Added south transition lineup guidance between waymarks 3 and 2 after both P2 bosses are defeated, in R1–M1–MT–H1–H2–OT–M2–R2 order. Existing spread assignments take over afterward. (18-10-2026)

- Reduced repeated setup and completed-position work, with mechanic-state gates that preserve active draw cleanup. Fixed early Sigma staging being blocked by a later AoE, added nearby Omega dodge candidates and cleared personal bounce arrows after the hit. (18-10-2026)
- Added Program Loop guidance to clear outer positions after assignments, progressive Pantokrator cone fills, stronger tank danger circles during both Cosmo Dives, and removed the repeated knockback call while retaining its draw. (18-10-2026)

- Brought the first P4 protean positioning arrow forward to timeline 610, retaining the assigned positions and keeping guidance until the existing mechanic handoff. (18-10-2026)

- Moved the Hello World opening clock spread one yalm farther from centre, from 8 to 9 yalms. (18-10-2026)

- Improved early Sigma lineup guidance to stage on the assigned side behind the initial laser before the middle clears; final bounce positions remain restored. Reduced the green-square dodge call to once per sequence and added the assigned waymark to the meteor middle call. (18-10-2026)
- Added 5-yalm circles on players with unresolved tether explosions during the final Hello World spread/finish-tethers stage. Circles clear as each debuff resolves. (18-10-2026)

- Removed the first P4 ring-in instruction during the stack sequence, keeping later ring dodges. Restored the original Sigma bounce positions after the near-bounce adjustment affected other assignments. (18-10-2026)

- Duty Helper now disables once at encounter start, during the opening five seconds, without repeatedly running throughout the fight. (17-10-2026)

- Added the LPDU mitigation profile with assigned DPS Feint, Addle, ranged party mitigation, Dismantle and Magick Barrier timings, plus Rampart and tank short cooldowns with assigned support targets. Uses AnyoneCore Party Roster roles. (17-10-2026)
- Added job-appropriate potions for the P1 opener, P3 reopener, post-Delta reopener and P6 reopener. Mitigation and potion cast timing still needs replay confirmation. (17-10-2026)

- Added independent, default-off automarker switches and P5 marker assignments with a grace period before LPDU static fallback. Consolidated P5 settings and placed TOP automarkers below P6. (17-10-2026)
- P5 Solar Ray defaults now use kitchen sink/tank swap for Rays 1 and 4, OT invulnerability for Ray 2 and MT invulnerability for Ray 3. P6 settings retain mechanics and LB choices while hiding individual auto-attack options. (17-10-2026)
- Improved P1 tether-circle stability and clockwise guidance, removed P5 bounce-circle clutter, and made Omega dodge guidance select the nearest reachable safe destination. Both Cosmo Dive circle fills now use 60% opacity. Further replay checks remain pending. (17-10-2026)

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

- Corrected Heavensfall tower labels and personal arrows to use Nael's actual recorded perimeter position, avoiding stale entity positions during replays. (14-10-2026)

- Added a Move for Twister text/TTS reminder at timeline 679.4 during Heavensfall Trio, two seconds before Twisting Dive resolves. (14-10-2026)

- P1 transition regroup arrow now follows the actual C marker instead of a fixed south-of-center point. (14-10-2026)

- Added frontal-cone warnings for every later P1 Plummet, following Twintania's actual target, and continuous countdowns on the first Blackfire towers. (14-10-2026)

- Heavensfall towers now show R1–R4/L1–L4 labels and continuous expiry countdowns, with assigned arrows ordered clockwise from the tower under Nael. (14-10-2026)

- Improved Nael In/Out/Stack/Spread text and TTS, with one callout per quote step; duplicate suppression confirmed in replay. (10-10-2026)
- Corrected P1 double-Hatch Neurolink assignments and alerts, and made the transition arrow follow A. (10-10-2026)
- Added the Quickmarch Twister move reminder and brought Earthshaker destinations closer to melee. Bahamut cones now select the real boss and follow his facing. (10-10-2026)
- Corrected Blackfire center stacks, Fellruin center spreads and earlier Neurolink guidance, and Grand Octet starting-arrow updates. P2 cone arrows now use short perimeter steps and active-cone checks. Visual replay confirmation remains pending. (10-10-2026)

### FRU: LPDU

- FRU mitigation split: 105 mitigation-related reactions copied into LPDU mits with original timing, conditions and targets; removal from lpdu strats follows after destination verification. (18-10-2026)


- Middle AoE timers now follow B's actual waymark position for their 2-yalm offset. (11-10-2026)

- Moved the middle AoE countdown labels 2 yalms toward B for improved readability. (11-10-2026)

- Switched assigned tower timers to continuous world-text countdowns and added separate countdowns for middle Burnt Strike and its follow-up AoE. (11-10-2026)

- Added a small green circle at your assigned Fall of Faith conga position alongside the existing arrow. (11-10-2026)

- Added world-text countdown above your assigned P1 tower, showing seconds remaining until its cast resolves. (11-10-2026)

- Added cast-based danger circles for both Halo of Flame and Halo of Levin: 5y small Brightfire and 10y large Brightfire, lasting until cast completion. (11-10-2026)

- Fixed the DPS-only mitigation opener when FRU settings are missing, skipped redundant disable writes, and added job-appropriate automatic opener potion use. (11-10-2026)


- Added a one-time Proteans text/TTS reminder at timeline 364 for House of Light; removed the P2 intermission potion reminder at 363.5. (10-10-2026)

- Removed the yellow Diamond Dust knockback standing and landing circles; retained the short assigned-side arrow. (10-10-2026)

- Light Rampant tower regroup also checks local occupancy of the resolving four-yalm tower, so the movement arrow can trigger when the hit-target check misses the player. (10-10-2026)

- Added a one-shot Go to conga line text/TTS reminder at timeline 89 (moved one second earlier). (10-10-2026)

- Light Rampant puddle direction arrows now follow the player and turn with observed clockwise movement between baits, replacing stationary per-puddle arrows. Fifth bait still switches immediately to finishing-side regroup. (10-10-2026)

- Added OT tankbuster reminder at 35 and a one-second, same-side inward arrow after Burnt Strike resolves near 70.6. Added a zero-offset potion reminder at the 418.8 targetable entry, retaining the original reminder. (10-10-2026)

- Added a short yellow Diamond Dust knockback-side arrow, corrected safe-cone masking, and replaced the close-to-boss slide point with full-distance slide destinations and setup adjustment. Slide replay checks remain pending. (10-10-2026)

- Added clockwise Light Rampant puddle arrows through the fifth bait, regrouped baiters on their finishing side, and gated tower regrouping on the player's own tower hit. Added Mirror Mirror protean text/TTS during Scythe Kick. Replay checks remain pending. (10-10-2026)

- Delayed both Moogle Burnt Strike AoEs by another half second (3.7 seconds total), including fresh render overrides. (10-10-2026)

- Tank settings GUI now closes 15 seconds into the fight, retaining selected assignments. (10-10-2026)

- Expanded the tank GUI with Halo, Apocalypse bait, P4 far bait and tank plan, and P5 invuln order. Guidance, cones and provoke reminders follow the selections; P4 bait and first P5 invuln use different tanks. Renamed five CT reactions at 802 to [LPDU]. (10-10-2026)

- Delayed P5 healer stack circles until 60% of the cast, kept P4 tanks out of healer-stack guidance, and moved the CT tank-front arrow to the rewind return. (10-10-2026)

- Added MT guidance to A at P2 start and a personal Diamond Dust floor rotation path, including the LPDU Group 2 counterclockwise exception. Shortened P3-to-P4 marker 1 guidance by another half second. (10-10-2026)

- Added an owned [LPDU] Get Safe Side reaction at 62.2, copying the fire/thunder detector with its original -5/+5 timing offsets. (10-10-2026)

- The AnyoneCore mitigation disable at fight start now runs only for DPS, skipping tanks and healers. (10-10-2026)

- Shortened the P5 Polarizing Strikes callout to Dodge line. (10-10-2026)

- Added a final tank-only CT formation arrow during the first Hallowed Wings cast near 835, pointing to the assigned LPDU tank-front position and expiring with the cast. (10-10-2026)

- Removed the long white Ultimate Relativity direction arrow and shortened P3-to-P4 marker 1 guidance by another three seconds. (10-10-2026)

- Moved the P2 intermission potion reminder from timeline entry 335 to 363, retaining its existing delay. (10-10-2026)

- Replay feedback confirms P1–P3, P5 Akh Morn, Pandora's Box LB reminder and Exasquares. Paradise Regained confirmed on OT; other roles and Polarizing Strikes remain under review. (10-10-2026)

- Corrected Apocalypse knockback guidance after the far tank bait: clear the bait arrow on the hit, then guide inside the boss hitbox from her actual landing position. (10-10-2026)

- Added missing Light Rampant orb-dodge and middle regroup arrows, Ultimate Relativity return-to-middle arrows, and clearer Diamond Dust first-side/after-hit slide guidance. (10-10-2026)
- Added Apocalypse starting positions at 605 and corrected its pattern trigger for move-in and OT bait arrows; added Darklit tank-plan far-bait guidance and personal P4 Akh Morn regrouping (P4 replay checks remain open). Shortened marker 1 transition staging by eight seconds. (10-10-2026)
- P5 healer stack circles now show only your own light party and render behind players. Extended Polarizing Strikes guidance through the final line at 1177; Polarizing replay checks remain open. (10-10-2026)

- Added personal middle-tower guidance after the second Light Rampant orb burst for two-stack players, LPDU intermission knockback staging from 380, and larger Ultimate Relativity Look away text with TTS. (10-10-2026)

- Added a one-shot Look away text/TTS reminder two seconds before the Diamond Dust gaze around 263.7. (10-10-2026)

- Apocalypse OT jump-bait guidance no longer requires the full party roster to be ready or the OT to appear in Water hit targets; it triggers once after second Water. (10-10-2026)

- Diamond Dust slide guidance now starts after the first cleave hit and ends before the second; disabled the earlier camera-facing arrow. Light Rampant tower players keep their occupied side for stack regrouping. (10-10-2026)

- Fixed the Darklit tank selector so all three options, including Tank swap, can be selected and saved. (10-10-2026)

- Added tank-only Darklit choices for MT invulns, OT invulns, or OT-first/MT-second swap; personal close-bait arrows follow the boss landing and clear after the second hit.

- Disabled the old generic CT corner arrow and curved lines now replaced by personal LPDU rewind placement.

- CT rewind placement now detects the exaline-origin corner and guides G1/G2 into the LPDU tank-led formation; blue players cleanse first and placement arrows end when Return records their position.

- CT: added the second rewind knockback reminder with a three-second expiry; tank-front and party-behind reminders now cover both hits.

- CT: short-Ice regroup now waits until both the head interception and Ice hit have resolved, regardless of event order.

- Apocalypse: added pattern-derived personal spreads, second Water regroup, OT farthest-bait guidance after Water, knockback sides and final Water regroup with hit cleanup.

- Paradise Regained: replaced legacy per-frame draws and kept each DPS tower arrow active until its assigned tower resolves.

- Paradise Regained: added first-tower-relative tank and healer guidance, OT provoke reminder, post-tether DPS tower assignments, and cleave/tower cleanup. OT guidance confirmed in replay; MT, healer and DPS checks remain open.

- CT: disabled the old dual red-debuff arrows and marker-based per-frame cleanse arrows so they do not conflict with personal FAST Dragon guidance.

- CT FAST Dragon: added personal red-debuff assignments, hourglass/head and regroup guidance, assigned cleanse circles with cleanup, and cleanse/rewind reminders. Replay checks and safe cleanse routes remain pending.

- Polarizing Strikes: personal boss-relative bait order, line dodges, side swaps and final move-out.

- Mami Darklit: personal tower/protean assignments, Water flex, spread and safe-half stack guidance, and tank bait reminders.

- Pandora's Box: tank-only LB reminder six seconds before the raidwide hit.

- P5 Akh Morn: green healer stack circles appear during the cast and clear on damage.

- Added the green Diamond Dust ice-slide destination for Twin Silence/Stillness, shown from the cast until its first hit.

- Added a Look away alert before Ultimate Relativity Shadoweye resolves.

- Disabled the constantly aiming Diamond Dust puddle direction arrow around 254.

- Correct Apocalypse Water-timer swaps and expire staging arrows before spreads; bring House of Light clockspots just outside melee reach.

- Add personal Light Rampant tower/bait assignments from both overheads, using LPDU conga priority and north tower swaps.

- Replace fixed Light Rampant role-side arrows with the LPDU pre-cast double conga and assignment-driven stack transition.

- Add personal LPDU clockspot guidance during P2 House of Light, expiring through the protean hit.

- Extend the personal partner marker around 58 by one second; show yellow Diamond Dust knockback guidance from 248.0.

* Banish III partners near 322 mark your partner: MT/M1 red, OT/M2 yellow, H1/R1 purple, H2/R2 blue. Spread shows no partner marker. (09-10-2026)

* The green red-mirror spread spot near 313 also renders behind players using FLAG_RENDER_UI. (09-10-2026)

* Fall of Faith bait circles expire by timeline 118; the green blue-mirror spread spot near 305 now renders behind characters using FLAG_RENDER_UI. (09-10-2026)

* Around 57 seconds, partners receive a small personal partner marker: MT/R1 red, H1/M1 purple, OT/R2 yellow, H2/M2 blue. Spread shows no partner marker. (09-10-2026)

* Ultimate Relativity now uses LPDU role priorities and one assigned-side arrow; Apocalypse uses roster-based water-stack flexes and role-side guidance. (04-10-2026)
* Paradise Regained adds role tower spots and roster-based tank identities; the copied FRU draws are synced, with three AnyoneCore alternatives enabled for replay comparison. (04-10-2026)

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

- 2026-10-10: Suppression Feather Rain calls now fire once per volley, with overlapping 1215/1216 reactions merged. The stack call after the second Landslide fires once and excludes MT, the LPDU tether tank. Aetheric Boom readiness now checks only your soak group: both tanks, or the six healers/DPS, alive and at least 80% HP. Replay confirmation remains pending.

- 2026-10-10: Predation now guides to an LPDU safe cardinal away from Garuda and outside Titan cardinal, then updates to the rune away from Ultima after the first Landslide hit. Replaced the conflicting Ifrit-only arrow, retained overlay rendering, and added short destination markers with expiry before Feather Rain. Replay confirmation across rotated patterns remains pending.

- Added role-specific Titan positioning TTS near 715, a post-Plume out/Landslide TTS near 1070, and R1 Mesohigh guidance to C that clears upon tether acquisition.

- Fixed R1/R2 eruption sides in Ifrit and Ultima, extended player-gaol blast ranges to later waves, and placed the Predation safe-rune circle above the floor with overlay rendering.

* Fixed the first-Nails Eruption arrow to use the ready AnyoneCore roster slot, so only assigned R1/R2 see it; melee slots no longer pass the role check. (06-10-2026)
* R2 now gets an arrow to the west tether add near Mesohigh at timeline 124. (06-10-2026)
* R2 gets a Light Puddle alert at timeline 600; the ground-effect position captured at 435 drives the later arrow and circle. (06-10-2026)
* Both R1 and R2 use the same post-Nails Eruption bait route. (06-10-2026)
* Upheaval shows a small green circle on the logged safe starting spot from timeline 634 until the hit at 637. (06-10-2026)
* After the rock explosions, non-MT players get a five-second arrow toward the observed group spot near marker 3. (06-10-2026)

* UWU fight start now enables the active ACR's CD Quick Toggle and clears TensorDrift's slidecast hold. (06-10-2026)
* Duty Helper is automatically disabled at the start of the fight. (03-10-2026)
* RikuDNC3's CD and Flourish Quick Toggles are set False at timeline entry 105 and True at timeline entry 300. (04-10-2026)
* Arm's Length is used about 2 seconds before Ifrit's Vulcan Burst to prevent knockback. (03-10-2026)
* M1 and M2 barrier-cleansing arrows at Garuda Friction 2 now appear only to their assigned roster slots. (04-10-2026)
* M2 barrier-cleansing arrow waits for the Friction AOE and appears once all party members reach at least 60% HP, during timeline 57–65. (04-10-2026)
* M2 barrier arrow party HP threshold lowered from 60% to 57%; it still waits for Friction and checks through timeline 65. (04-10-2026)
* At Hellfire timeline 308, T1/MT gets a four-second arrow to waymark C; everyone except T1/T2 gets a four-second arrow to waymark A. (04-10-2026)
* At Ultima timeline 1000, MT and OT receive opposite melee-range guidance; the rest of the party is guided to waymark 4. (04-10-2026)
* Ifrit's Crimson Cyclone safe-spot arrow at 1038 now points toward the observed northeast safe lane. (04-10-2026)
* At timeline 1130, everyone except the Searing Wind target is guided to the south stack; the affected healer sees “South, away from party.” (04-10-2026)
* “GO NEAR ORB” now appears as world text over the assigned orb instead of as an alert. (04-10-2026)
* Added a waymark A arrow for non-tanks at timeline 302, a Feather Rain wait alert at 100, and a reaction at 602 that disables the active ACR CD Quick Toggle. (04-10-2026)
* Updated OwOReactions Draws LPDU: MNK Thunderclap now follows the second Mistral Song damage hit at 100 (the safespot dash remains); MNK Thunderclap and VPR Slither target Titan after its landing near 602; non-tanks see a red aggro-target circle during 609–618; the non-tanks-to-A arrow is magenta. (05-10-2026)
* At Titan's first Rock Throw (timeline entry 639), players without an overhead number see the 6-yalm Granite Gaol blast range when each Gaol appears. (09-10-2026)

