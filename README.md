Hi please add https://github.com/Jacob5800/UltimateDraws this to your AnyoneCore third party sources.

The draws in here are mostly centered around LPDU strats in the Europe region but may work for other regions, feel free to make your own edits.

Currently supported:

UWU: LPDU  

UCOB: LPDU 

FRU: LPDU

TOP: LPDU 

TEA: [AA AutoSim](TimelineReactions/TEA/%5BAA%5D%20Autosim%20-%20TEA.lua) 

## Changelog

### UWU: AutoSim

- Added an optional P4 cast-interrupt checkbox for the Ultima Suppression gaol and automatic targeting for late Garuda Satin Plumes, prioritizing the one tethered to R2. (19-11-2026)

- Titan healer gaol targeting has a saved Interrupt cast for Titan healer gaol checkbox under P3 in the same AutoSim settings panel used by BlackmageUWU. (19-11-2026)

- Ifrit nails now check awakening on the next nail in formation-relative SE > SW > NE > NW order, without lifetime-based target switching. Melee cleave stops when either close nail reaches 40%, each role finishes its own assigned nail, and ordered kills stay single-target. Nail checks now use a 50 ms interval; the forced 40% cast stop is preserved. (16-11-2026)

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

- Added a one-time “Nisi passed” confirmation for the Photon partner stack and the Verdict Nisi handoff when the assigned pair shares the expected debuff. (16-11-2026)

- After the third Flarethrower hit, True Heart gets a world label and a call to group up, build gauge or heal, then leave for the personal split. (16-11-2026)

- Both Irresistible Grace stacks during Almighty Judgment now show a green circle on the stack target. (16-11-2026)

- First tornado baiters hear “Move” once their cone locks. Doll previews and arrows use the LPDU quadrants, and the ranged arrow waits for the lock. (16-11-2026)

- Added live previews for the second tornado cones during Jagd Dolls. (16-11-2026)

- Fixed automatic Bard Paean for Throttle by selecting a party member with the active debuff. (16-11-2026)

- Fixed both Final Word Motion/Stillness checks and the shared second Fate Alpha reveal. Motion jumps each frame; Stillness stops movement and casting, then resumes after its check. (13-11-2026)

- Added Water vulnerability warnings, five-yalm mine danger circles hidden for OT, and faint previews of other players’ Wormhole slash cones and charge lanes. LPDU assignments and destinations are preserved. (13-11-2026)

- Second Water points to B. Role guidance uses the configured Party Roster, and doll target return triggers at 24.9% HP. (08-11-2026)

- Opening Optical Sight shows clear green circles and countdowns on both stack targets. The callout names the west/east split and the countdowns show each side once the targets separate. (08-11-2026)


### TEA: LPDU mits

- Added a separate mitigation profile for TEA with Party Roster assignments for both tanks and all four DPS slots, including job-specific defensive and support actions. (08-11-2026)

### TEA: ACR3 Opti

- Reaper ACR3 checks for your tethered doll below 40% HP directly in the Disable Soul Gauge reaction and restores the toggle when the doll resolves. (19-11-2026)

- TEA ACR3 Opti enables the AoE quick toggle once all four Jagd Dolls resolve. (19-11-2026)

- TEA ACR3 Opti uses LPDU doll quadrants, prioritizes confirmed personal tethers, and returns to Living Liquid when doll targeting is unsafe. (19-11-2026)

- Added LPDU Jagd Doll targeting for ACR3 users without AA AutoSim. It follows Party Roster assignments and personal tethers, then returns to Living Liquid at 24.9% HP or when the doll window ends. (11-11-2026)

- Published [ACR3 Opti](TimelineReactions/TEA/ACR3%20Opti.lua) containing 15 Reaper/Pictomancer optimization reactions, separate from LPDU Draws with no inheritance. Uses the saved ACR3 controls. (07-11-2026)

### TEA: AutoSim

- Reaper, Viper, and Samurai AutoSim give the assigned Jagd Doll a 0.80 planning multiplier while targeting it. (19-11-2026)

- TEA AutoSim turns off the ACR AoE quick toggle at pull start and turns it back on after all four Jagd Dolls resolve. (19-11-2026)

- Ranged players target Liquid Hand when available and return there after dolls, with HP balancing and boss cast protection. Doll cutoff still cancels active doll casts. (17-11-2026)

- Expanded Jagd Doll targeting diagnostics with assignment source, tether conflicts, range and cast blocks, and separate target request and confirmation records. (16-11-2026)

- Fixed initial Jagd Doll targeting to use LPDU quadrants relative to the open tornado side. Actual personal tethers still take priority. (16-11-2026)

- Applied the doll AoE blacklist before spawn and held Bard’s Pitch Perfect and Shadowbite during acquisition to prevent splash from claiming another doll. (16-11-2026)

- Added P2 boss and Plasma Shield targeting diagnostics with observed target confirmation. Missing Cruise Chaser lookup now retries for up to five seconds while preserving active shield targeting. (15-11-2026)

- Doll targeting now prioritizes the player's actual tether before cardinal assignment and the 24.9% HP cutoff, allowing tethered dolls to be selected when geometry assignment is unavailable. (15-11-2026)

- Removed the older Tramadol profile download; use `[AA] Autosim - TEA.lua`. (05-11-2026)

- Added AA AutoSim with LPDU DPS doll assignments, strict DoT/AoE and burst safeguards, and a latched 24.9% cutoff that stops doll casts and returns to Living Liquid. Includes opener targeting, helper setup and targeting diagnostics. Movement/feeding remain manual; in-flight damage cannot be recalled. (05-11-2026)
- Countdown targeting selects Living Liquid with FFXIVMinion Start Combat kept off. Cancelling or finishing the countdown stops pending selection. (05-11-2026)


### Sil'dihn: General profile / AutoSim

- Added saved Matthew/PF Fresh Puff 2 choices in the existing Silkie settings, preserving Matthew destinations by default. (14-11-2026)

- Increased Gladiator’s initial Ring of Might circle opacity by 20 percentage points and added continuous countdowns to both waves of Monument towers. (14-11-2026)

- Added Blessed Beacon beam-target countdowns, SW/NE wire staging, and assigned safe-tile guidance for second mirrors with saved quadrant controls in the existing settings. (14-11-2026)

- Expanded the Moogle blacklist for Rush of Might, Ring of Might, Show of Strength and Cast Shadow. (14-11-2026)

- Automatically applies Silkie and Gladiator waymarks on approach in Criterion normal and Savage, relocating existing markers after confirming removal and waiting 1.5 seconds. Completed placement survives wipes. (13-11-2026)

- Silkie automatically jumps for blue-tail movement checks, shows five-yalm Forked Lightning spread circles, and adds a personal Puff 4 bait-lock countdown. (13-11-2026)

- Updated the saved criterion profile with recent mitigation assignments, configurable Gladiator tether roles, and caster movement forecasts. (13-11-2026)

- Bard saves Apex Arrow for the next boss when only one or two enemies remain in the final trash pack and each is at 8% HP or lower. (11-11-2026)

- Made Sil'dihn eligible for Optifine users by replacing direct file I/O with independent FileLoad/FileSave preferences. Existing targeting and mechanic logic are preserved. (05-11-2026)

- Before Gladiator, offensive cooldowns are allowed on the first two trash enemies, then reserved across the last two Armor/Dullahan enemies. Defensive mitigation is unaffected. (05-11-2026)


### Dungeons: Shared AutoSim

- Improved Origenics final-pack detection, marked safe Laser Lash lanes, and added Ambrose knockback guidance, Arm's Length, and a Superfluity DoT blacklist. (20-11-2026)

- Added Deceiver Android and turret lane guidance, Surge Arm's Length, and a DoT blacklist for the short-lived boss sentries. (20-11-2026)

- Added early Writhing Riot cone previews and poison AoE draws for Herpekaris in Origenics. (20-11-2026)

- Fixed cooldown pooling on the earlier Eyeclopes in Origenics. (20-11-2026)

- Added boss draws, AutoSim forecasts, outward LockFace for Neuro Squama, and short-lived add DoT blacklists for The Lost City of Amdapor (Hard). (20-11-2026)

- Corrected final-pack cooldown pooling after Mistwake boss two and made the hold status show the active reason. (19-11-2026)

- Updated Maulskull's AutoSim kill estimate to 173 seconds. (19-11-2026)

- Added Arm's Length requests and temporary KB Cancel fallback for Maulskull's knockbacks in The Skydeep Cenote. (19-11-2026)

- Added a sampled 132.2-second kill estimate and a Bubble Bomb dodge window for Feather Ray. (19-11-2026)

- Added automatic party-safe facing for Feather Ray Nuisance and green safe spots for Bubble Bomb Burst in The Skydeep Cenote. (19-11-2026)

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

- The Nael low-HP guard now holds Ley Lines and Triplecast through dives until Bahamut becomes targetable. (18-11-2026)

- Added Nael guard debug logs for the HP lock, Bard hold requests, and Potion toggle changes. (18-11-2026)

- Nael’s low-HP guard now catches the 1 HP floor and holds Bard burst cooldowns and enabled potions through dives until Bahamut becomes targetable. (18-11-2026)

- AutoSim gives damage zero planning value once Nael reaches her HP floor in P2, so it can save burst for the next phase. (11-11-2026)

### UWU: Shared AutoSim

- Turning off automatic nail targeting also disables automatic Ifrit selection in P2. Both nail controllers now start targeting as soon as a nail awakens, then switch only to other awakened nails, even if the full nail layout is missing. (19-11-2026)

- Bard turns off CD, Songs and Potion at timeline 110 and turns them back on when Ifrit becomes targetable. (18-11-2026)

- Black Mage can reserve Ley Lines for Ifrit from timeline 110 with a setting under Garuda. Turning it off uses the existing 5% HP trigger. (18-11-2026)

- Black Mage skips new DoTs below 10% HP on Garuda, Ifrit, and Titan. Temporary blacklist entries clear at the next boss, on wipe, or at the next countdown. (18-11-2026)

### DSR: LPDU (Beta)

- Moved P1 Hyperdimensional Slash beam markers from 8.5 to 9.5 yalms and limited the Adelphel knockback preparation callout to once per sequence. P1 requests knockback immunity one second earlier. Physical ranged get a callout on the second Holiest Hallowing. Removed the P1 finish-both-bosses callout and enrage countdowns. The second meteor tower callout plays once per sequence. P3 Dive from Grace tower preposition draws are silent and the soak cue still plays. Added a text-only IN alert for the late Out-to-In transition. P4 detects untargetable Eyes orbs for the soak cue. Removed the Pure of Heart puddles-and-cones wait callout. P5 Wrath and Death show safe assigned destinations when the direct route crosses an AoE. Wrath previews Twisters and then shows their confirmed positions. Removed the P5 meteor countdowns. P2 Strength shows safe role destinations for both sides during Lightning Storm. (20-11-2026)

- Added debug log details for Dive from Grace facing and action stops. (20-11-2026)

- Removed raidwide mitigation callouts, including Ultimate End, and raidwide countdowns. Removed the Nidhogg enrage callout and countdown. Removed the Heal Haurchefant – Damage Spear callout and Pierce countdown. Removed lingering Liquid Heaven puddle timers after Wrath of the Heavens. Blue jump guidance shows the nearest available spot earlier and redirects when another player claims it. Removed knockback immunity announcements. Removed the Eyes bleed heal callout and consolidated overlapping blue-orb and Mirage Dive instructions. Simplified the Mirage Dive chain-swap callouts. Added explicit P4 gold and blue orb soak callouts with higher draw priority. Moved P1 beam spread guides one yalm farther out. Corrected the second Dive from Grace drop positions and cleared conga guidance when Doom begins. Added an optional personal Brightwing countdown. Physical ranged get one Head Graze attempt on the second Holiest Hallowing while Adelphel is still casting. Meteor route arrows stay silent so spacing warnings are clear. Added Dive from Grace facing and landing previews with optional facing lock and automatic action stop and resume. Post-Strength cleave draws follow Thordan as he turns. Strength of the Ward calls “Your tower” once, one second before it resolves. (19-11-2026)

- Strength tower reassignment no longer repeats the initial preposition call after a personal tower was established. (17-11-2026)

- “Behind boss - tank cleaves” now calls once per cleave sequence. (17-11-2026)

- Added an explicit blue-orb reminder after Eyes chain swaps. Removed the finish-eyes, lower-Charibert and finish-spear callouts. (17-11-2026)

- Made middle-left-right the default first meteor tower preference, clarified the blue-orb step after Eyes chain swaps, and limited the tank LB3 alert to tanks. (17-11-2026)

- Added a saved P2 first meteor tower preference for middle-right-left or middle-left-right, applied after meteor separation. (17-11-2026)

- P5 clears stale twister guidance and restores confirmed cross knockback positioning. P6 keeps clear breath destinations visible and previews the Wroth Akh Morn corner earlier. (16-11-2026)
- P5 conga circles hide when occupied. An optional drag-to-swap lineup gives each player a preposition arrow and starts with M1, MT, H1, OT, M2, R2, H2, R1. (16-11-2026)

### TOP: AutoSim

- The countdown reaction shows an explicit Set target to Omega action after switching Start Combat off. (18-11-2026)

- Checked [AA] Autosim - TOP (5): already eligible for Optifine users without an owned core Settings or file-I/O dependency. It exposes no separate saved preference panel; reaction-editor choices remain in the profile file. (05-11-2026)

- Shared TOP AutoSim now disables AnyoneCore’s Prepull Helper during its precombat setup. The setting remains off until manually re-enabled. (01-11-2026)

- Added [AA] Autosim - TOP (5). P6 add blacklisting handles both Cosmo Meteors and Comets, once per content ID per pull. This profile forecasts LB downtime but does not automatically use LB. (31-10-2026)

### TOP: LPDU

- Moved the non-tank end-of-P1 bait circles closer to Omega while keeping the spots separated. (19-11-2026)

- Reduced P1 reaction activity by limiting number capture to assignment windows and handling each Ballistic Impact in one reaction. (19-11-2026)

- Pantokrator locks the opening cone arrow to the gap occupied by your nearby party before choosing a cone edge. The second Testing puddle favors the outer edge farthest from the party within the same cone gap. (19-11-2026)

- Pantokrator Testing spread guides you inward toward the opposite cone, back away from the group, then back to your group. (19-11-2026)

- Program Loop tower countdowns track tower hits and refine upcoming timings after each wave. (19-11-2026)

- Pantokrator guides each group to the leading cone edge, then shows the sweep direction. Program Loop shows up to two personal assignment countdowns, with the later one dimmed. (19-11-2026)

- Fixed the repeated “Preposition parties” callout before Pantokrator. (19-11-2026)

- Added an optional Testing spread for Pantokrator. Place the first puddle on the boss side of your group's gap, move outward for the second, then rejoin your group. LPDU remains the default. (18-11-2026)

- Program Loop now shows the outside wait spot during the tether-path callout. The optional next-assignment countdown follows your character using the TEA Motion/Stillness style. Pantokrator preposition guidance starts at 61 seconds. (18-11-2026)

- Added an optional outside wait spot for players without a first-wave Program Loop assignment, enabled by default. Enable the separate next-assignment label under P1 to see when your next tower or tether starts. (18-11-2026)

- Added a P1 Pantokrator cone preview toggle. Turn it off to show only the current red cone pair. (18-11-2026)

- TOP roster-dependent draws wait for a ready Party Roster without logging repeated condition errors. (08-11-2026)

### UCOB: LPDU

- Quickmarch and both Tenstrike Earthshaker waves show every cone. Your cone is green when clear or red when it clips a teammate. (19-11-2026)

- The first Adds quote shows player-attached In and Out countdowns in sequence. (19-11-2026)

- Grand Octet now previews your Twister bait near the towers and marks actual Twister spawns. (19-11-2026)

- Tenstrike shows all three neurolinks during Hatch assignment, bases the move-out arrow on the link actually soaked, and shortens the spread callout to Spread away from 4. (19-11-2026)

- Nael shows player-attached Out and In countdowns for the quotes around 266 and 298 once the preceding step resolves. (19-11-2026)

- The opening Twister previews your current bait position, then marks the actual spawned Twisters. (19-11-2026)

- Adds Hatch shows a staging arrow for the south neurolink before Twister. Both Adds spread countdowns can recover from a missed quote using the observed cast sequence. (19-11-2026)

- Heavensfall calls the observed cone rotation and shows a brighter preview of the first cone pair beyond the live telegraphs. (19-11-2026)

- Golden Bahamut settings now offer Exaflares or Subtractive draws. Subtractive shades the arena green and cuts out only the current blast in each active lane. (19-11-2026)

- Morn Afah calls “Stack” at cast start and shows a countdown over the stack target. (19-11-2026)

### UCOB: ACR3 Optimization

- Added the seven LPDU potion timings using the shared ACR Potion Hotbar request. (08-11-2026)

### FRU: LPDU

- Added a player-attached rewind countdown near the end of Crystallize Time, using the remaining Return debuff duration. (15-11-2026)

- Replaced Paradise Regained tank guidance in both sets with Megaminx live cones, first-tower marking and tank arrows, aligned to the first tower. (15-11-2026)

- Disable Start Combat when the pull countdown starts. (15-11-2026)

- Moved potion reactions and P2 crystal targeting and AoE controls to FRU ACR3 Opti. Renamed owned draw labels to LPDU. (08-11-2026)

- Fixed Ultimate Relativity guidance for the ice DPS to stay middle for the final stack. Diagonal assignments now name their Y-relative directions. (08-11-2026)

- Intermission knockback positioning now includes a countdown attached to your player, ending at Swelling Frost after Absolute Zero. (07-11-2026)

- Apoc safe-sector guidance appears after Spirit Taker lands and stays visible through Dark Eruption without a cast-time redraw. Countdown, spread calls and later movement steps retain their mechanic triggers, with fallback guidance if the early preview was missed. (07-11-2026)

- Made Frureactions/lpdu strats eligible for Optifine users by replacing direct file I/O with FileLoad/FileSave for preferences and presets. No Minion core Settings dependency remains. (05-11-2026)

### FRU: ACR3 Opti

- Added shared Potion Hotbar requests, the second Fulgent reminder, and P2 crystal targeting and AoE controls with toggle restoration on wipe or map change. (08-11-2026)

### UWU: LPDU

- Garuda healers and Titan melee now get arrows to the actual Light Puddle. The Titan Mountain Buster cone previews from 713 and clears on the hit. The Garuda Move to 3 (SE) callout starts one second earlier. (19-11-2026)

- Added a spoken Dodge twice cue at 744s before the last two Weight of the Land hits. (19-11-2026)

- Ifrit post-nail Eruption arrows route toward relative east away from Searing Wind. R2 gets a pickup arrow to the actual Light Puddle. (19-11-2026)

- Garuda Mesohigh marks the live assigned tether and shows R2 and OT where to intercept it. (19-11-2026)

- Annihilation orb circles and assigned-soaker arrows now follow live orb state and clear individually on each explosion. Suppression’s move-to-edge arrow also calls out. (17-11-2026)

- “Move south for eruption baits” now uses Party Roster to notify R1 and R2 only. (17-11-2026)

- Added a green center circle and personal arrow during the four intermission meteor previews. (17-11-2026)

- R1’s first Annihilation Mesohigh now shows a live arrow to the tether pickup segment with a green destination circle. (17-11-2026)

- R1 receives a loud “Take Mesohigh tether” cue and raid warning when the first Annihilation tether appears. (17-11-2026)

- Added “Bait Eruption” TTS for R1 and R2 at 339 and 376. (17-11-2026)

- UWU LPDU Settings appears from 20 seconds before pull and hides 30 seconds into the fight. (07-11-2026)

- Stack countdowns follow their marked player in Annihilation and Suppression. Orb highlights use one small attached cyan circle instead of oversized stationary yellow circles. (07-11-2026)

- Added BossMod-style intermission meteor previews: four surrounding proximity circles leave the centre clear and disappear as each meteor lands. (07-11-2026)

- Raised the NE/NW/SE/SW nail labels slightly further above the nail nameplates, keeping numbered labels in place. (07-11-2026)


### Q40: Shared AutoSim

- Made q40 eligible for Optifine users by replacing direct file I/O with independent FileLoad/FileSave preferences. Existing targeting and mechanic logic are preserved. (05-11-2026)

### Mount Rokkon: General draws

- Added Moko tether-facing and clone guidance, near/far bait previews, corrected Upwell lanes and a safe handoff to Triple Kasumi-giri. The existing final-clone strategy setting now controls guidance, with Moogle fallback draws off by default. (15-11-2026)

- Added Gorai's second tower sequence, personal limit-cut steps and staged exaflare guidance. (15-11-2026)

- Corrected Shishio cloud previews, Wail safe-square assignments and ghost-to-tower timing; added moving personal countdowns, clearer Noble Pursuit guidance and separate defamation destinations. (15-11-2026)

- Made Mountrokkon eligible for Optifine users by replacing direct file I/O with independent FileLoad/FileSave preferences. Existing targeting and mechanic logic are preserved. (05-11-2026)

### Alliance raids: General profile

- Added Syrcus Tower boss forecasts and an Amon Curtain Call countdown, organized by duty and boss. Xande forecasts retain uptime on meteor targets. (09-11-2026)

- Checked Alliance raid for Optifine users: no Minion core Settings or direct file-I/O dependencies were found in its own reactions. It has no saved preference panel, so no settings file was added. Inherited dependencies require their own runtime checks. (05-11-2026)

### R9S: R2 / R1 / M1

- Made R2 eligible for Optifine users with FileLoad/FileSave for its kill-time range and EU guidance toggles. R1 and M1 were checked and have no owned core Settings or direct file-I/O dependency. (05-11-2026)

### FRU: Shared AutoSim

- Disable AnyoneCore Prepull Helper when the pull countdown starts. (15-11-2026)

- Checked [AA] Autosim - FRU: already eligible for Optifine users without an owned core Settings or file-I/O dependency. It exposes no separate saved preference panel; reaction-editor choices remain in the profile file. (05-11-2026)

### DSR: Shared AutoSim

- Checked [AA] Autosim - DSW: already uses independent FileLoad/FileSave preferences for its caster-LB forecast option. No owned core Settings or direct file-I/O dependency was found. (05-11-2026)

### Enuo EX: JacobMain

- Checked JacobMain for Optifine users: no owned core Settings or direct file-I/O dependency was found. It has no separate saved preference panel; Anyone-owned inherited reactions are outside this check. (05-11-2026)

### FRU: LPDU mitigations

- Aligned M1/M2 Feint, R1 physical-ranged mitigation, and R2 Addle with the FRU mitigation sheet. Added party-range and boss-target checks and tightened cooldown windows. (19-11-2026)

### TOP: LPDU mitigations

- TOP potion timings now use the shared ACR Potion Hotbar request. (08-11-2026)

- Made TOPReactions/lpdu mits eligible for Optifine users by removing core Settings access from Solar Ray tank-plan conditions. They now share independent TOP-LPDU.lua preferences with the draw GUI; existing plan defaults, timings and ACR requests are unchanged. (05-11-2026)

### UWU: LPDU mitigations

- Checked OwOReactions/LPDU mits for Optifine users: no owned core Settings, direct file I/O or separate saved preference panel was found. Editor choices remain in the reaction profile file. (05-11-2026)
