Hi please add https://github.com/Jacob5800/UltimateDraws this to your AnyoneCore third party sources.

The draws in here are mostly centered around LPDU strats in the Europe region but may work for other regions, feel free to make your own edits.

Currently supported:

UWU: LPDU (Beta) — supports ranged, melee, and tanks.

UCOB: LPDU (Beta) Supports ranged/melee

FRU: LPDU (Alpha, through P3)

TEA: Coming soon by Ton.

## Changelog

### UCOB: LPDU

- Improved Nael In/Out/Stack/Spread text and TTS, with one callout per quote step; duplicate suppression confirmed in replay. (10-10-2026)
- Corrected P1 double-Hatch Neurolink assignments and alerts, and made the transition arrow follow A. (10-10-2026)
- Added the Quickmarch Twister move reminder and brought Earthshaker destinations closer to melee. Bahamut cones now select the real boss and follow his facing. (10-10-2026)
- Corrected Blackfire center stacks, Fellruin center spreads and earlier Neurolink guidance, and Grand Octet starting-arrow updates. P2 cone arrows now use short perimeter steps and active-cone checks. Visual replay confirmation remains pending. (10-10-2026)

### FRU: LPDU

- Added personal middle-tower guidance after the second Light Rampant orb burst for two-stack players, LPDU intermission knockback staging from 380, and larger Ultimate Relativity Look away text with TTS. Replay confirmation pending. (10-10-2026)

- Added a one-shot Look away text/TTS reminder two seconds before the Diamond Dust gaze around 263.7. (10-10-2026)

- Apocalypse OT jump-bait guidance no longer requires the full party roster to be ready or the OT to appear in Water hit targets; it triggers once after second Water. Replay confirmation pending. (10-10-2026)

- Diamond Dust slide guidance now starts after the first cleave hit and ends before the second; disabled the earlier camera-facing arrow. Light Rampant tower players keep their occupied side for stack regrouping. Replay confirmation pending. (10-10-2026)

- Fixed the Darklit tank selector so all three options, including Tank swap, can be selected and saved. (10-10-2026)

- Added tank-only Darklit choices for MT invulns, OT invulns, or OT-first/MT-second swap; personal close-bait arrows follow the boss landing and clear after the second hit.

- Disabled the old generic CT corner arrow and curved lines now replaced by personal LPDU rewind placement.

- CT rewind placement now detects the exaline-origin corner and guides G1/G2 into the LPDU tank-led formation; blue players cleanse first and placement arrows end when Return records their position.

- CT: added the second rewind knockback reminder with a three-second expiry; tank-front and party-behind reminders now cover both hits.

- CT: short-Ice regroup now waits until both the head interception and Ice hit have resolved, regardless of event order.

- Apocalypse: added pattern-derived personal spreads, second Water regroup, OT farthest-bait guidance after Water, knockback sides and final Water regroup with hit cleanup. All rotations and swaps await replay confirmation.

- Paradise Regained: replaced legacy per-frame draws and kept each DPS tower arrow active until its assigned tower resolves.

- Paradise Regained: added first-tower-relative tank and healer guidance, OT provoke reminder, post-tether DPS tower assignments, and cleave/tower cleanup. Both sequences and all rotations await replay confirmation.

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

