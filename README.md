Hi please add https://github.com/Jacob5800/UltimateDraws this to your AnyoneCore third party sources.

The draws in here are mostly centered around LPDU strats in the Europe region but may work for other regions, feel free to make your own edits.

Currently supported:

UWU: LPDU (Beta) — supports ranged, melee, and tanks.

UCOB: LPDU — supports ranged/melee

FRU: LPDU

DSR: [Lpdu draws(beta)](TimelineReactions/DSR/Lpdu%20draws%28beta%29.lua) — LPDU guidance with saved phase settings. Replay checks are ongoing.

TOP: LPDU 

TEA: [AA AutoSim](TimelineReactions/TEA/%5BAA%5D%20Autosim%20-%20TEA.lua) — LPDU doll targeting; replay checks are ongoing.

## Changelog

### UCOB: Published profile

- Consolidated the latest LPDU draws into `LPDU Draws.lua` and removed the duplicate beta download. (05-11-2026)


### UWU: LPDU settings

- Both General sections now have independent, left-aligned controls clickable across the full row, with saved expansion choices. (06-11-2026)

- Ifrit starting-position callouts now show only the player's Party Roster instruction: R1 sees “Ranged starts SW”; R2 sees “Caster start SE”. (06-11-2026)

- New or unset Annihilation melee assignments default to M1; saved M1/M2 choices remain customizable. The GUI explains the existing 3-3-1-1 soak pattern. AutoSim and LPDU section headings toggle with a single click on the text or arrow and retain saved expansion choices. (06-11-2026)

- Refined the UWU settings layout with General and phase sections, phase-specific controls, readable slider labels and independent persistent preferences. (06-11-2026)

- LPDU settings now save through FileLoad/FileSave in an independent settings file, without relying on Minion core Settings. Active choices are preserved. (05-11-2026)

- Organized settings into Automatic targeting and Ultima → Annihilation orb assignments. Sections start expanded for new users and remember later expansion choices, targeting preference and orb selections across Lua restarts. Removed the duplicate orb panel and shortened labels/help. (05-11-2026)


### TEA: LPDU Draws

- Second Water points to B. Role guidance uses the configured Party Roster, and doll target return triggers at 24.9% HP. (08-11-2026)

- Opening Optical Sight shows clear green circles and countdowns on both stack targets. The callout names the west/east split and the countdowns show each side once the targets separate. (08-11-2026)

- Almighty Judgment Exaflares show the next hit in bright red, the following hit in orange, and later hits in yellow. Colors advance on impact. The Almighty Judgment countdown reads "First hit", followed by "Move together" as the first wave resolves. (08-11-2026)

- P2 Compressed Lightning shows a yellow circle on its holder during the final five seconds. (08-11-2026)

- Added Throttle countdowns for healers and Bard, moving Embolus markers, and personal inside/outside swap cues for 1256 Limit Cut. Bard can opt into automatic Warden's Paean for Throttle in LPDU Settings. Limit Cut now calls "Move to middle" after the final center blast and charge. (08-11-2026)

- Added personal Lightning handoff arrows, Earth Missile bait spots for OT and R1, live Hidden Mine markers, and a support lineup reminder for third Nisi. (08-11-2026)

- R1 gets an early east-side bait call and green marker for P2 Super Jump. (08-11-2026)

- Third Nisi pass guides DPS to the live Verdict match and clears the arrow after the transfer. (08-11-2026)

- LPDU Settings lets you choose progressive exaflare circles or subtractive safe zones for both Almighty Judgment sets. Exaflares preview up to three circles per lane and brighten the next wave as impacts resolve. (08-11-2026)

- Fate Alpha countdown labels are optional in LPDU Settings and off by default. (07-11-2026)

### TEA: LPDU mits

- Added a separate mitigation profile for TEA with Party Roster assignments for both tanks and all four DPS slots, including job-specific defensive and support actions. (08-11-2026)

### TEA: ACR3 Opti

- Published [ACR3 Opti](TimelineReactions/TEA/ACR3%20Opti.lua) containing 15 Reaper/Pictomancer optimization reactions, separate from LPDU Draws with no inheritance. Uses the saved ACR3 controls. (07-11-2026)

### TEA: AutoSim

- Removed the older Tramadol profile download; use `[AA] Autosim - TEA.lua`. (05-11-2026)

- Added AA AutoSim with LPDU DPS doll assignments, strict DoT/AoE and burst safeguards, and a latched 24.9% cutoff that stops doll casts and returns to Living Liquid. Includes opener targeting, helper setup and targeting diagnostics. Movement/feeding remain manual; in-flight damage cannot be recalled. (05-11-2026)
- Countdown targeting selects Living Liquid with FFXIVMinion Start Combat kept off. Cancelling or finishing the countdown stops pending selection. (05-11-2026)

### Sil'dihn: General profile / AutoSim

- Made Sil'dihn eligible for Optifine users by replacing direct file I/O with independent FileLoad/FileSave preferences. Existing targeting and mechanic logic are preserved. (05-11-2026)

- Before Gladiator, offensive cooldowns are allowed on the first two trash enemies, then reserved across the last two Armor/Dullahan enemies. Defensive mitigation is unaffected. (05-11-2026)

- Added Savage support for Silkie/Gladiator forecasts, a configurable 288s Savage Silkie estimate from two local clears, and observed caster movement windows. Gladiator's 285s estimate remains provisional. (05-11-2026)

- Optional final-trash reserves hold new Ley Lines uses or other jobs' offensive cooldowns through walking gaps, then restore for the boss. Boss countdown targeting keeps Start Combat off; settings and diagnostics are included. (05-11-2026)

- Corrected Silkie mitigation to physical ranged on the opener and second Total Wash, with caster Addle on the first and third. Addle now uses a Hotbar request, including earlier requests for unavoidable Belladonna/Dullahan trash damage. (05-11-2026)

### Dungeons: Shared AutoSim

- Made dungeon lol eligible for Optifine users by replacing direct file I/O with independent FileLoad/FileSave preferences. Existing targeting and mechanic logic are preserved. (05-11-2026)

- All nine dungeons in `dungeon lol` now hold new offensive cooldowns on the final trash pack and at 8% actual-boss HP, with a shared adjustable threshold. Includes Radiant Finale; ordinary damage and songs continue. Previous temporary settings restore after combat/wipe. (04-11-2026)

- Meso Terminal isolates the selected headsman, blocks BRD/BLM DoTs on Hellmakers, and optionally targets the unique Hellmaker in your current cell before returning to your headsman. Covers all four cells and logs targeting decisions. Updated encounter estimate defaults to 140/140/226s. (04-11-2026)

### Shinryu Unreal: Draws

- Checked Shinryumain: no owned core Settings or direct file-I/O dependency was found, and no separate settings file is required. Anyone-owned inherited reactions are outside this check. (05-11-2026)

- Added a Surecast Hotbar request in the final five seconds of Tidal Wave, independent of AutoSim. (05-11-2026)

### Shinryu Unreal: Shared AutoSim

- Made [AA] Autosim - Shinryu Unreal eligible for Optifine users with independent FileLoad/FileSave preferences. Targeting diagnostics remain in the native debug log without direct log-file I/O. (05-11-2026)

- Automatic potions are now blocked during the final 30 seconds of the P1 estimate and the button-mash transition, then allowed again when adds become targetable. Includes a saved enable toggle and adjustable buffer; your previous Potion toggle is restored. (05-11-2026)

- Countdown targeting selects Shinryu with FFXIVMinion Start Combat kept off. Added diagnostics across countdown, boss, adds and wing targeting, including skipped targets, melee range, cast/LB protection and disabled settings. (05-11-2026)

- Added optional automatic targeting for Tail/Heart/Shinryu, highest-HP large dragons before small adds, and the first-casting final wing before the other wing and boss. Includes cast/lifetime checks, melee-range checks, diagnostics, and an optional caster-only two-wing LB with targeting protection, off by default. Settings hide after 15 seconds of combat. (05-11-2026)

- Calibrated untouched P1/adds defaults to 276s/64s against a death-free clear, preserving custom timings and live phase corrections. Updated conservative movement forecasts for adds and late body repositioning. (05-11-2026)

- Updated the P1 transition estimate to 280s and adds estimate to 65s for a slightly faster average pace. Previous default values migrate once; custom timings are preserved. Actual transitions still correct forecasts. (04-11-2026)

- Added a Dark Matter button-mash Stun forecast so AutoSim accounts for being unable to use actions during the transition. Actual Dark Matter casts correct its timing; existing target downtime remains separate. (04-11-2026)

### UCOB: LPDU mitigation

- Checked Ucobreactions/lpdu tank mits for Optifine users: no owned core Settings, direct file I/O or separate saved preference panel was found. Editor choices remain in the reaction profile file. (05-11-2026)

- Added Bard Nature’s Minne before Golden Morn Afah #2 to support recovery healing. Replay confirmation remains pending. (01-11-2026)

- Added Bard Troubadour for Gigaflares #1/#3 and Golden Morn Afah #1/#4, plus Nature’s Minne healing support for Gigaflares #2/#4. Requests are Bard-only and timed around observed hits; replay confirmation remains pending. (01-11-2026)

### UCOB: Shared AutoSim

- Made [AA] Autosim - UCOB eligible for Optifine users with independent FileLoad/FileSave preferences for role options and slower-group timing. Choices load before pull setup. (05-11-2026)

- Countdown targeting selects Twintania with FFXIVMinion Start Combat kept off. Cancelling or finishing the countdown stops pending selection. (05-11-2026)

- Restored caster mechanic-event corrections for Twisters, Exaflares, Nael quotes, personal assignments and nearby puddles, plus BRD Grand Octet reservation. Added later P1 Twister forecasts and customizable pull-time Twintania/Nael estimates, defaulting to 132s/129s. (01-11-2026)

- Added [AA] Autosim - UCOB with shared phase/targetability tracking, caster movement and melee range forecasts, BRD-specific burst controls and personal melee LB lock tracking. Optional slower-group adjustments are captured on pull, with a first-Plummet fallback. LB is forecast and observed, not automatically cast. (01-11-2026)

### UWU: Shared AutoSim

- The UWU AutoSim settings panel opens 20 seconds before pull and hides 30 seconds into the fight. (07-11-2026)

- Spiny Plume now uses a live target-lifetime estimate, refreshed while targeted. Existing stack gates and DoT exclusions remain; Infernal Nail forecasts are unchanged. (05-11-2026)
- Corrected entity lookups for Spiny/nail targeting and the Ifrit Triplecast hold. Ready Spiny now counts as attackable during Garuda’s first jump without bypassing its stack gate. Nail diagnostics distinguish capture, target requests and confirmed targets; physical nail cleanup restores saved AoE choices. (05-11-2026)
- Caster LB stun forecasts now require Beyond Limits ownership instead of assuming R2. Countdown cancellation also clears the caster/healer encounter state. Actual LB cast protection remains in place. (05-11-2026)
- Extended Ultima Feather Rain bait forecasts to the observed final primal roulette, respecting its movement toggle. Caster/healer encounter caches now clear on wipe and map departure. (05-11-2026)
- Added caster/healer movement forecasts through both awakened Landslide waves on Titan. Ultima’s two pre-Annihilation Feather Rain baits and final Annihilation bait now use short departure-animation forecasts to cover the missing steps. (05-11-2026)
- All Titan Weight of the Land waves now check actual puddle overlap for casters and healers, requesting movement only while threatened and releasing it once clear. Includes nearby players’ puddles and transition diagnostics. Existing fixed movement windows remain unchanged. (05-11-2026)
- Updated default phase estimates to Garuda 130s, Ifrit 100s and Titan 125s; Ultima’s late kill forecast now uses 137.5s after the Suppression gaol anchor to match the reviewed clear. Manual estimates, slower-group extras and live resyncs remain available. (05-11-2026)
- BRD/ranged-support DoT forecasts now exclude Ultima disappearance windows in both countdown and early-pull setup, while keeping the boss lifetime continuous. Existing caster forecasts and movement remain unchanged. (05-11-2026)
- Added a caster/physical-ranged Fake melee option that removes planned eruption-bait movement for Ifrit and Ultima while preserving other mechanics. Optional phase-time controls stay hidden until enabled and initially show the shared 135/101/130s defaults; settings apply next pull. (05-11-2026)
- Unified Titan's estimate to 130s from becoming targetable for all role plans, including countdown and fallback setup. Live phase resyncs and slower-group adjustments remain active. (05-11-2026)

### DSR: LPDU (Beta)

- Made dsrreactions/lpdu strats eligible for Optifine users by replacing core Settings access with independent FileLoad/FileSave preferences. Draw and mitigation toggles use the same saved choices. (05-11-2026)

- Added Lpdu draws(beta), with personal mechanic guidance, tower countdowns, phase settings and optional gaze/knockback assistance. Includes the latest P2 positioning, P3 draw cleanup and optional P4 south regroup (off by default). (27-10-2026)

### TOP: AutoSim

- Checked [AA] Autosim - TOP (5): already eligible for Optifine users without an owned core Settings or file-I/O dependency. It exposes no separate saved preference panel; reaction-editor choices remain in the profile file. (05-11-2026)

- Shared TOP AutoSim now disables AnyoneCore’s Prepull Helper during its precombat setup. The setting remains off until manually re-enabled. (01-11-2026)

- Added [AA] Autosim - TOP (5). P6 add blacklisting handles both Cosmo Meteors and Comets, once per content ID per pull. This profile forecasts LB downtime but does not automatically use LB. (31-10-2026)

### TOP: LPDU

- TOP roster-dependent draws wait for a ready Party Roster without logging repeated condition errors. (08-11-2026)

- Made TOPReactions/lpdudraws eligible for Optifine users with FileLoad/FileSave preferences. Removed its optional Minion core Settings migration dependency; existing session-only debug-label defaults remain unchanged. (05-11-2026)

- Puddle escape guidance retains one safe waypoint through arrival and hazard updates, replacing it only when invalid; later explosions influence the next choice. Second-hand guidance may start about two seconds earlier when the route is clear, retaining its resolution deadline. Meteor spread guidance starts on puddle placement. R2 receives a role-based limit-break alert at the logged Meteor cast window. (04-11-2026)

- Sigma uses rotation, hand-bait and hold instructions, retaining the hand destination circle on arrival. Omega labels each set and personal assignment, switches between move/hold guidance, and calls the return after bounces. Optional Far World adjustment keeps a valid side and previews alternatives only when live receiver spacing allows. Hello World outlines both eligible towers in normal and caster-uptime modes; only the assigned tower gets an arrow. (03-11-2026)

- Future P4 protean beams use faint outlines without fills, restoring strong red during their final 1.2 seconds. Geometry and hit cleanup are unchanged. Debug draw labels start off each client session and remain manually available. (03-11-2026)

- Sigma confirms your own Hyper Pulse hand hit with Hand bait done, hold for bounces, clearing the completed bait arrow while retaining final-bounce return timing. (03-11-2026)

- P6 keeps safe exaflare escape waypoints stable and releases the middle bait when puddles appear, without adding movement delays. Beam spreads preview faintly before lanes clear, then give movement/hold guidance; Wild Charge gets an explicit stack call, Cosmo dodge markers are blue, and selected tanks receive LB3 voice guidance. P1 returns to the assigned group and previews final positions earlier; final Hello World rots gain expiry outlines, Sigma staging calls are restored, and Omega bounce lines show only local links. (02-11-2026)

- Blind Faith south-position guidance starts one second earlier, while retaining its coverage through the knockback. (02-11-2026)

- All Pantokrator calls use normal visible AnyoneCore text and TTS again. The south-of-male bait marker holds until the actual bait cast or replacement guidance; Sagittarius countdowns sit at the beam midpoint inside the arena. Broken green tethers say only Take bounce; Sigma hand baits wait for laser completion, and Delta previews show three lines. (02-11-2026)

- Pantokrator clears only its completed instruction on the finishing hit or early boss departure. Removed the text-routing time cutoff; subsequent AnyoneCore text and TTS remain enabled. (02-11-2026)


### UCOB: LPDU

- Made Ucobreactions/LPDU Draws eligible for Optifine users by saving assignments, targeting and potion preferences with FileLoad/FileSave. No Minion core Settings dependency remains. (05-11-2026)

- Disabled inherited Draw Flare Breath reactions that could fail on missing tanks/entities. Our actual-aggro Flare Breath cones and hit cleanup remain enabled. (01-11-2026)

- BLM, RPR and BRD AutoSim now give the P4 adds-opening burst a 1.4 planning weight. Existing timing and separate cleave forecasts are preserved. (30-10-2026)

- BLM/RPR AutoSim burst-strength defaults are now 1.17 across their existing burst windows, including Golden. Existing forecast on/off choices and phase/target-priority weights are preserved. (29-10-2026)

- BRD AutoSim now optionally reserves Battle Voice, Raging Strikes, Barrage and Wanderer’s Minuet from Grand Octet until adds appear (enabled by default). Added optional party-burst alignment with a maximum early-hold slider and phase-based or custom pull-time windows, so ready-at-4:00 burst can wait for4:30 and follow6:30. This controls timing; incoming buff strength remains a separate forecast. Other actions remain automatic. BLM/RPR are unchanged. (29-10-2026)

- UCOB AutoSim now plans through the adds deaths, then rebuilds for Golden after the scripted Phoenix transition. Golden uptime and fight length anchor to Bahamut becoming targetable; resurrection-to-targetability remains downtime. This lets AutoSim spend gauge before the forced loss without a separate forced Burn timer. Ordinary deaths cannot trigger the split; actual cooldown/potion timers carry over. Applied to BLM, BRD and RPR. (29-10-2026)

- All three UCOB AutoSim profiles now use neutral 1x Phoenix planning weight by default. The new Phoenix planning priority: 2x GUI option restores extra relative priority for surviving Phoenix-buffed Golden damage; losing the buff removes that preference. Actual in-game buff handling remains with the ACR. (29-10-2026)

- BLM AutoSim now forecasts Nael quote transitions from recognized English quotes and corrects remaining steps on actual casts. Same-zone steps are skipped; the first In/Out step checks current distance. Travel time is adjustable. Corroborated with three native caster pulls and BossMod sequencing; no forced movement or new polling loop. (29-10-2026)

- Added Autosim BLM - UCOB with built-in targeting, Thunder forecasts, phase resyncs, Phoenix tracking and adjustable Twister/Exaflare and personal-assignment movement estimates. Teleports and Ley Lines returns remain manual. LPDU targeting yields to BLM AutoSim; legacy inherited holds are disabled in the BLM profile. All three AutoSim profiles now extend an expired Golden kill estimate while the boss remains alive. Reviewed five EU BLM clears. (29-10-2026)

- Added Autosim BRD - UCOB with built-in boss/add targeting, balanced adds HP, two-target DoT windows, phase resyncs and Phoenix priority. BRD keeps attacking while moving; no melee LB forecast. Its LPDU inheritance retains draws, mitigations and potions while legacy holds are disabled. Shared targeting yields to either AutoSim profile. Published both AutoSim profiles and renamed the published draws file to LPDU Draws.lua. (29-10-2026)

### FRU: LPDU

- Fixed Ultimate Relativity guidance for the ice DPS to stay middle for the final stack. Diagonal assignments now name their Y-relative directions. (08-11-2026)

- Intermission knockback positioning now includes a countdown attached to your player, ending at Swelling Frost after Absolute Zero. (07-11-2026)

- Apoc safe-sector guidance appears after Spirit Taker lands and stays visible through Dark Eruption without a cast-time redraw. Countdown, spread calls and later movement steps retain their mechanic triggers, with fallback guidance if the early preview was missed. (07-11-2026)

- Made Frureactions/lpdu strats eligible for Optifine users by replacing direct file I/O with FileLoad/FileSave for preferences and presets. No Minion core Settings dependency remains. (05-11-2026)

- Light Rampant middle-tower players now finish their tower before receiving the Banish spread callout, spread circles and personal spread arrow. Other players receive spread guidance immediately. (31-10-2026)

- Light Rampant now shows countdowns on all three first-set large orb circles instead of only your nearest one. The second set remains untimed. (31-10-2026)

- Added countdowns to the four-circle Icicle Impact wave on Diamond Dust's In pattern, excluding the earlier and later pairs. Added a Don't move - wait for debuff voice/text alert after the second ice cleave, before the existing ice-clear call. (31-10-2026)

- Added a continuous personal countdown on your own Banish III spread circle for both P2 casts. It follows you and clears when Banish resolves; stack versions are unchanged. (31-10-2026)

- Added fire-only P1 tower knockback guidance: after the initial cleave, a personal launch circle and arrows align the knockback with your assigned tower, with a continuous knockback countdown. Lightning towers are unchanged. (31-10-2026)

- Added an Ice gone - move normally text and voice callout after P2 Twin Silence/Stillness, triggered by the frozen floor clearing rather than a fixed timer. (31-10-2026)


### UWU: LPDU

- UWU LPDU Settings appears from 20 seconds before pull and hides 30 seconds into the fight. (07-11-2026)

- Stack countdowns follow their marked player in Annihilation and Suppression. Orb highlights use one small attached cyan circle instead of oversized stationary yellow circles. (07-11-2026)

- Added BossMod-style intermission meteor previews: four surrounding proximity circles leave the centre clear and disappear as each meteor lands. (07-11-2026)

- Raised the NE/NW/SE/SW nail labels slightly further above the nail nameplates, keeping numbered labels in place. (07-11-2026)

- Upheaval guidance now collects bomb spawns directly for its starting and rear landing circles. Added early previews for the late Titan rock set and Ultima’s middle impacts, BossMod-style Predation safe-edge arrows, a first-stack countdown and clearer world-position Annihilation orb highlights. (06-11-2026)

- Added a non-tank “Move to A” call at 300 seconds and raised directional nail labels. Disabled the Titan CD-off reaction at 602 seconds. Upheaval now marks the rear knockback landing separately from its starting point near Titan. (06-11-2026)

- P1 Feather Rain move calls now follow the jump cue. Added early Titan Geocrush previews, green safe-edge guidance and bomb-pattern-aware Upheaval positioning. Titan light-orb calls use Party Roster M1/M2. All players see Annihilation orb highlights; assigned soakers also get arrows to their orb. (06-11-2026)

- Assigned Mesohigh takers now see their own tether and its source highlighted in green using Party Roster: P1 west R2/east OT, Annihilation R1 then Searing Wind healer, and Suppression MT. Added advance healer/MT tether calls and corrected tank roster checks in tether, Friction and Titan callouts. (06-11-2026)

- BLM, BRD and RPR nail targeting now log diagnostic state changes: roster/assignment, collected nails, HP bands, awakening stacks, locked kill order, desired versus actual target and active casts. BLM also reports missing capture state. Targeting rules are unchanged. (31-10-2026)

- RPR AutoSim keeps the same boss’s DoT availability continuous across FullDowntime, removing redundant schedule-split warnings while preserving boss lifetimes and downtime. (31-10-2026)

### Q40: Shared AutoSim

- Made q40 eligible for Optifine users by replacing direct file I/O with independent FileLoad/FileSave preferences. Existing targeting and mechanic logic are preserved. (05-11-2026)

### Mount Rokkon: General draws

- Made Mountrokkon eligible for Optifine users by replacing direct file I/O with independent FileLoad/FileSave preferences. Existing targeting and mechanic logic are preserved. (05-11-2026)

### Alliance raids: General profile

- Checked Alliance raid for Optifine users: no Minion core Settings or direct file-I/O dependencies were found in its own reactions. It has no saved preference panel, so no settings file was added. Inherited dependencies require their own runtime checks. (05-11-2026)

### R9S: R2 / R1 / M1

- Made R2 eligible for Optifine users with FileLoad/FileSave for its kill-time range and EU guidance toggles. R1 and M1 were checked and have no owned core Settings or direct file-I/O dependency. (05-11-2026)

### FRU: Shared AutoSim

- Checked [AA] Autosim - FRU: already eligible for Optifine users without an owned core Settings or file-I/O dependency. It exposes no separate saved preference panel; reaction-editor choices remain in the profile file. (05-11-2026)

### DSR: Shared AutoSim

- Checked [AA] Autosim - DSW: already uses independent FileLoad/FileSave preferences for its caster-LB forecast option. No owned core Settings or direct file-I/O dependency was found. (05-11-2026)

### Enuo EX: JacobMain

- Checked JacobMain for Optifine users: no owned core Settings or direct file-I/O dependency was found. It has no separate saved preference panel; Anyone-owned inherited reactions are outside this check. (05-11-2026)

### FRU: LPDU mitigations

- Made Frureactions/lpdu mits eligible for Optifine users by removing core Settings access. Tank-plan conditions and cooldown restrictions now share the independent FRU-LPDU.lua preferences with the draw GUI, including saving restored compatible plans. Mitigation timings and ACR requests are unchanged. (05-11-2026)

### TOP: LPDU mitigations

- Made TOPReactions/lpdu mits eligible for Optifine users by removing core Settings access from Solar Ray tank-plan conditions. They now share independent TOP-LPDU.lua preferences with the draw GUI; existing plan defaults, timings and ACR requests are unchanged. (05-11-2026)

### UWU: LPDU mitigations

- Checked OwOReactions/LPDU mits for Optifine users: no owned core Settings, direct file I/O or separate saved preference panel was found. Editor choices remain in the reaction profile file. (05-11-2026)
