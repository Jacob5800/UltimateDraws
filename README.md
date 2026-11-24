Hi please add https://github.com/Jacob5800/UltimateDraws this to your AnyoneCore third party sources.

The draws in here are mostly centered around LPDU strats in the Europe region but may work for other regions, feel free to make your own edits.

Currently supported:

UWU: LPDU  

UCOB: LPDU 

FRU: LPDU

TOP: LPDU 

TEA: [AA AutoSim](TimelineReactions/TEA/%5BAA%5D%20Autosim%20-%20TEA.lua) 

## Changelog

### UWU

- Black Mage's Manaward after the first nail explosion now also casts directly if the ACR is slow to use it, so it lands right after the explosion instead of several seconds late. (21-11-2026)

- Vulcan Burst Surecast fallback now starts about 2 seconds earlier, so it can slot into a weave gap instead of landing just before the knockback. (21-11-2026)

- Fixed the Ifrit eruption-bait movement windows in the AutoSim forecast: the first was planned about 7 seconds too early and the second opened too late. Both now open about 2 seconds before the eruptions start, so you can reach your bait position, and cover the whole set. (21-11-2026)

- New General option 'Log forecast timing (diagnostics)', off by default. When enabled it writes the planned eruption-bait movement windows to the fight log; it does not change behaviour. (21-11-2026)

- Black Mage now requests Manaward when the first Infernal Nail explodes (Infernal Surge), whenever that happens, under the existing Automatic Manaward option. (21-11-2026)

- Casters and healers now cast Surecast directly shortly before Vulcan Burst if the ACR hasn't used it yet, so the knockback immunity no longer depends on the ACR finding a gap. (21-11-2026)

- Garuda opening: once your tethered Satin Plume dies, AutoSim moves to the nearest other Satin Plume above 30% HP, then the next, instead of leaving the target empty. (21-11-2026)

- Added a P1 setting, on by default: in the Garuda opening, AutoSim switches to a Satin Plume tethered to you, even mid-cast. The stack-ready Spiny Plume targeting and its settings were removed. (21-11-2026)

- Spiny Plume targeting switches immediately, even mid-cast, and stays quiet when turned off. (21-11-2026)

- Late Garuda Satin Plume targeting (around 110) now finds the plumes and switches to them immediately, even mid-cast. (21-11-2026)

### UCOB

- Fixed the Golden Exaflare draw: it was one blast late, so the blast about to land was left uncovered. Both draw modes now cover the next blast plus the two after it in every lane, and the Subtractive mode no longer hides itself when a lane update arrives late. (23-11-2026)

- Fixed the AutoSim forecast's boss lookup so it can track boss presence and targetability. (22-11-2026)

- Fixed the personal Earthshaker cone during Quickmarch and Tenstrike, which could not find its source. (22-11-2026)

- Quickmarch and both Tenstrike Earthshaker waves show every cone. Your cone is green when clear or red when it clips a teammate. (19-11-2026)

- The first Adds quote shows player-attached In and Out countdowns in sequence. (19-11-2026)

- Grand Octet now previews your Twister bait near the towers and marks actual Twister spawns. (19-11-2026)

- Tenstrike shows all three neurolinks during Hatch assignment, bases the move-out arrow on the link actually soaked, and shortens the spread callout to Spread away from 4. (19-11-2026)

- Nael shows player-attached Out and In countdowns for the quotes around 266 and 298 once the preceding step resolves. (19-11-2026)

- The opening Twister previews your current bait position, then marks the actual spawned Twisters. (19-11-2026)

- Adds Hatch shows a staging arrow for the south neurolink before Twister. Both Adds spread countdowns can recover from a missed quote using the observed cast sequence. (19-11-2026)

### TEA

- Limit Cut now shows your full route from the first Hawk Blaster: a small green circle on your spot for each wave plus a dimmer one for the next, inner circle for active numbers and outer circle for inactive numbers (1256 start West/Northeast, 3478 start East/Southwest). It stops once your own bait has hit. It replaces the yellow stop preview and can be toggled in LPDU Settings. (23-11-2026)

- Fate Calibration β now shows the J Jump target circles 5 seconds before the jumps land, instead of 3. (23-11-2026)

- Perfect Alexander now draws the Ordained Capital Punishment shared tankbuster circle and the Ordained Punishment spread circle. (23-11-2026)

- Plasma Shield in the Brute Justice and Cruise Chaser phase shows its open front side and calls to hit it from the front (not shown to tanks). (23-11-2026)

- Limit Cut settings add a player-following bait countdown. (22-11-2026)

- First and second Protean bait markers open earlier. Non-tanks get a tornado-relative north Drainage marker and a dodge callout. (22-11-2026)

- AutoSim prioritizes Living Liquid for all roles when both P1 bosses reach 10% HP or lower. (22-11-2026)

- First Cascade and Protean 2 Feint follow the M1 assignment. Duplicate unrestricted Feint reactions are disabled. (22-11-2026)

- Limit Cut numbers 5 through 8 now hear “Start outside” with their assignment. (22-11-2026)

- Reaper ACR3 checks for your tethered doll below 40% HP directly in the Disable Soul Gauge reaction and restores the toggle when the doll resolves. (19-11-2026)

- TEA ACR3 Opti enables the AoE quick toggle once all four Jagd Dolls resolve. (19-11-2026)

- TEA ACR3 Opti uses LPDU doll quadrants, prioritizes confirmed personal tethers, and returns to Living Liquid when doll targeting is unsafe. (19-11-2026)

- Reaper, Viper, and Samurai AutoSim give the assigned Jagd Doll a 0.80 planning multiplier while targeting it. (19-11-2026)

- TEA AutoSim turns off the ACR AoE quick toggle at pull start and turns it back on after all four Jagd Dolls resolve. (19-11-2026)

### Sil'dihn

- Fixed the Gladiator and Zeless Gah add lookups, made three Silkie and AutoSim checks return a strict true/false, removed leftover settings-path code, and stopped the Silkie guide from scanning entities outside Sil'dihn. (22-11-2026)

- Added saved Matthew/PF Fresh Puff 2 choices in the existing Silkie settings, preserving Matthew destinations by default. (14-11-2026)

- Increased Gladiator’s initial Ring of Might circle opacity by 20 percentage points and added continuous countdowns to both waves of Monument towers. (14-11-2026)

- Added Blessed Beacon beam-target countdowns, SW/NE wire staging, and assigned safe-tile guidance for second mirrors with saved quadrant controls in the existing settings. (14-11-2026)

- Expanded the Moogle blacklist for Rush of Might, Ring of Might, Show of Strength and Cast Shadow. (14-11-2026)

- Automatically applies Silkie and Gladiator waymarks on approach in Criterion normal and Savage, relocating existing markers after confirming removal and waiting 1.5 seconds. Completed placement survives wipes. (13-11-2026)

- Silkie automatically jumps for blue-tail movement checks, shows five-yalm Forked Lightning spread circles, and adds a personal Puff 4 bait-lock countdown. (13-11-2026)

- Updated the saved criterion profile with recent mitigation assignments, configurable Gladiator tether roles, and caster movement forecasts. (13-11-2026)

### Dungeons

- In dungeon lol, shared cooldown pooling and targeting only run in supported dungeons, so the action no longer runs in cities. (24-11-2026)

- In levelling dungeons, Ihuykatumu skips the gather hold on the opening bird pack. (24-11-2026)

- In dungeon lol, Alexandria skips the gather hold on the opening single pack and resumes normal gathering after the first portal. (24-11-2026)

- Added Surecast for Maulskull, Deceiver and Ambrose, plus a disabled counterpart for Paglth’an’s Ground-to-ground Ballistic. (23-11-2026)

- Added The Antitower boss draws and callouts to highleveldungeons. (23-11-2026)

- Added Paglth'an: boss and trash telegraphs, Kan Rhai crosses, Amhuluk Levin and Lightning Rod circles, the Magitek Core launchpad, an optional Arm's Length request for Ground-to-ground Ballistic (off by default), and AutoSim forecasts for Amhuluk, Magitek Core (both add waves) and Lunar Bahamut. (22-11-2026)

- Added Paglth'an boss telegraphs, Levin and Lightning Rod hazard circles, Magitek Core launchpad guidance, and AutoSim forecasts that include both Core add waves. (22-11-2026)

- Improved Origenics final-pack detection, marked safe Laser Lash lanes, and added Ambrose knockback guidance, Arm's Length, and a Superfluity DoT blacklist. (20-11-2026)

- Added Deceiver Android and turret lane guidance, Surge Arm's Length, and a DoT blacklist for the short-lived boss sentries. (20-11-2026)

- Added early Writhing Riot cone previews and poison AoE draws for Herpekaris in Origenics. (20-11-2026)

### DSR

- Fixed a missing render flag on the optional P4 blue-orb outline label. (22-11-2026)

- P1 Holiest Hallowing interrupt cues follow MT, R1, then OT. An optional P2 setting hides Dimensional Collapse cast circles for blue-marked Strength players. The P2 ice-pair partner marker is always enabled. Removed the Wrath of the Heavens opening Middle draw and callout. Added an optional personal P4 Mirage Dive countdown. Pure of Heart keeps the Skyblind drop marker at the assigned spot. Wrath calls out a clearly confirmed Liquid Heaven bait on the first drop. Removed the Check your spread position callout. Removed the overlapping Dodge north callout during P3 Geirskogul. The P4 Go west callout now says Go middle. The personal Mirage Dive countdown follows the observed dive cadence and clears after the fourth wave. Wrath of the Heavens calls Lightning spread for players with Chain Lightning. Faith Unmoving displays the assigned landing independently of the movement arrow and can recover circle partners from recorded Doom positions. Added optional P2 meteor spacing circles showing the 5.5-yalm clearance around landed comets. (21-11-2026)

- Moved P1 Hyperdimensional Slash beam markers from 8.5 to 9.5 yalms and limited the Adelphel knockback preparation callout to once per sequence. P1 requests knockback immunity one second earlier. Physical ranged get a callout on the second Holiest Hallowing. Removed the P1 finish-both-bosses callout and enrage countdowns. The second meteor tower callout plays once per sequence. P3 Dive from Grace tower preposition draws are silent and the soak cue still plays. Added a text-only IN alert for the late Out-to-In transition. P4 detects untargetable Eyes orbs for the soak cue. Blue and gold soak markers are centered on the assigned orbs. The gold soak cue follows orb readiness. Blue orb staging now sits beside each Eye. P4 settings include an optional estimated 4-yalm blue orb trigger outline. Removed the Pure of Heart puddles-and-cones wait callout. P5 Wrath and Death show safe assigned destinations when the direct route crosses an AoE. Wrath previews Twisters and then shows their confirmed positions. Removed the P5 meteor countdowns. P2 Strength shows safe role destinations for both sides during Lightning Storm. P2 meteor knockback positions preview about two seconds earlier. P3 calls Geirskogul bait once at tower resolution and keeps the late tower preposition draw silent until the assigned tower cue. Gnash and Lash have text-only In/Out cues. Geirskogul dodge arrows are limited to players who need to dodge or reach a tower or jump spot. P3 Hard Lock Face can only stop actions in DSR. Your assigned Dive from Grace tower shows a single green tower ring. Soul Tether shows the buster splash and suppresses movement arrows through active Geirskogul lines. The optional P3 assignment queue lists your next four drops, tower soaks, line baits and group stacks. The queue sits higher, uses larger text, and can be dragged by its title bar. P3 settings can hide other players' predicted jump landings. Dimensional Collapse and Heavens' Stake keep their danger draws with no countdowns. Pure of Heart calls the puddle drop once per assigned wave. A short Move cue follows when your puddle is placed. Wrath calls out confirmed puddle baits. Death of the Heavens Doom spread markers sit one yalm farther out and Faith Unmoving marks your assigned landing alongside the setup arrow, with an optional blue in-bounds landing prediction when the assignment is unavailable. Wrath tether arrows use the corrected side, Twister calls once, and Empty Dimension calls In for players outside. Liquid Heaven rings clear with Wrath. Death of the Heavens earthquake guidance adjusts around active dive lanes. The P5 north meteor LB cue is caster-only. Faith Unmoving prepositions follow the LPDU symbol diagram. Late P2 Broad Swing tracks Thordan before the cast resolves and realigns the remaining cones on the first hit. (20-11-2026)

- Added debug log details for Dive from Grace facing and action stops. (20-11-2026)

- Removed raidwide mitigation callouts, including Ultimate End, and raidwide countdowns. Removed the Nidhogg enrage callout and countdown. Removed the Heal Haurchefant – Damage Spear callout and Pierce countdown. Removed lingering Liquid Heaven puddle timers after Wrath of the Heavens. Blue jump guidance shows the nearest available spot earlier and redirects when another player claims it. Removed knockback immunity announcements. Removed the Eyes bleed heal callout and consolidated overlapping blue-orb and Mirage Dive instructions. Simplified the Mirage Dive chain-swap callouts. Added explicit P4 gold and blue orb soak callouts with higher draw priority. Moved P1 beam spread guides one yalm farther out. Corrected the second Dive from Grace drop positions and cleared conga guidance when Doom begins. Added an optional personal Brightwing countdown. Physical ranged get one Head Graze attempt on the second Holiest Hallowing while Adelphel is still casting. Meteor route arrows stay silent so spacing warnings are clear. Added Dive from Grace facing and landing previews with optional facing lock and automatic action stop and resume. Post-Strength cleave draws follow Thordan as he turns. Strength of the Ward calls “Your tower” once, one second before it resolves. (19-11-2026)

- Strength tower reassignment no longer repeats the initial preposition call after a personal tower was established. (17-11-2026)

- “Behind boss - tank cleaves” now calls once per cleave sequence. (17-11-2026)

- Added an explicit blue-orb reminder after Eyes chain swaps. Removed the finish-eyes, lower-Charibert and finish-spear callouts. (17-11-2026)

- Made middle-left-right the default first meteor tower preference, clarified the blue-orb step after Eyes chain swaps, and limited the tank LB3 alert to tanks. (17-11-2026)

- Added a saved P2 first meteor tower preference for middle-right-left or middle-left-right, applied after meteor separation. (17-11-2026)

### TOP

- P5 Delta now calls "Wait: don't go far" (blue tether) or "Wait: don't break" (green tether) while anyone still has a Ruin or vulnerability debuff, so you hold the tether until it's safe. The inner blue tether also waits until the monitors appear. (23-11-2026)

- Hello World now calls "Wait for the vuln" for the blue tether holder at the last tower set, with a green circle and label on their spot, before the tether break. (23-11-2026)

- Added a "Masado(LPDU) P5" option in TOP LPDU Settings (on by default). It swaps our P5 draws for Masado1170's Delta, Sigma and Omega guidance, world bounces, monitor facing and boss AoE draws (LPDU preset, used with his permission). Our spoken and text callouts stay on. Switch it off to keep our own P5 draws. (23-11-2026)

- Added a "Masado(LPDU)" option in TOP LPDU Settings (P3 Intermission, on by default). When on, it swaps our Intermission spread/pair and hand slam guidance for Masado1170's: the conga line, named wall spots, an arrow to your spot and the hand dodge. Used with his permission. (23-11-2026)

- Moved the non-tank end-of-P1 bait circles closer to Omega while keeping the spots separated. (19-11-2026)

- Reduced P1 reaction activity by limiting number capture to assignment windows and handling each Ballistic Impact in one reaction. (19-11-2026)

- Pantokrator locks the opening cone arrow to the gap occupied by your nearby party before choosing a cone edge. The second Testing puddle favors the outer edge farthest from the party within the same cone gap. (19-11-2026)

- Pantokrator Testing spread guides you inward toward the opposite cone, back away from the group, then back to your group. (19-11-2026)

- Program Loop tower countdowns track tower hits and refine upcoming timings after each wave. (19-11-2026)

- Pantokrator guides each group to the leading cone edge, then shows the sweep direction. Program Loop shows up to two personal assignment countdowns, with the later one dimmed. (19-11-2026)

- Fixed the repeated “Preposition parties” callout before Pantokrator. (19-11-2026)

- The countdown reaction shows an explicit Set target to Omega action after switching Start Combat off. (18-11-2026)

- Added an optional Testing spread for Pantokrator. Place the first puddle on the boss side of your group's gap, move outward for the second, then rejoin your group. LPDU remains the default. (18-11-2026)

- Program Loop now shows the outside wait spot during the tether-path callout. The optional next-assignment countdown follows your character using the TEA Motion/Stillness style. Pantokrator preposition guidance starts at 61 seconds. (18-11-2026)

### FRU

- Added an optional "Exaflare draw" setting in the P5 section of the FRU settings (Standard or Subtractive). Subtractive shows only the safe area, with the incoming exaflare lines cut out of the green arena, and hides the green triangles. Standard stays the default. (23-11-2026)

- P5 Polarizing Strikes: the bait rounds are now counted more reliably, so the stack-behind-bait, dodge-line and final move-out calls follow the real round. The next-bait call is also shorter so it no longer overlaps the dodge call. (23-11-2026)

- P5 Paradise Regained: DPS no longer get a "Wait south" circle on the healers' first tower. DPS tower guidance is unchanged: group 1 relative left, group 2 relative right. (23-11-2026)

- Fixed the P5 Exasquares green safe-area triangles sometimes showing two at once. Each triangle now appears once, in order. (23-11-2026)

- In P4 Darklit Dragonsong, the player baiting the protean now gets the cone pre-drawn from the boss toward their bait spot until it resolves. (23-11-2026)

- The end-of-P3 puddle staging marker now follows where the next boss spawns: it guides you to the number marker matching the lettered waymark nearest the spawn (A to 1, B to 2, C to 3, D to 4) instead of always marker 1. (23-11-2026)

- Fixed the first P5 Exasquares set drawing its green safe-area shapes on the wrong side when the real side was left. The left/right callout now comes after all eight Pandora clones are known. (23-11-2026)

- AutoSim intermission targeting now starts on your own assigned Light crystal, found from your party slot and waymark. Ranged DPS then move on to the other Light crystals and finally the middle Ice Veil by themselves, while melee keep following their own target. Bard, Black Mage, Samurai and Reaper temporarily blacklist DoTs on the small crystals; the middle one stays allowed. The optional ACR3 crystal auto-target and side crystal AoE control now find the crystals correctly. (23-11-2026)

- Removed three empty folders from LPDU Mits. The profile also includes Sprint for Diamond Dust outward cone baiters and moves Bard's Nature's Minne to the Hallowed Wings rewind. (23-11-2026)

- Fall of Faith Conga appears at 82. Utopian Sky has an optional Raised Sword callout for your clockspot. Non-tanks get a Go inside cue when the first cleave clears in the P1 tower knockback pattern. Added separate Party Roster clockspot previews with short green arrows and direction callouts at pull start and P2 start. The P1 preview is near max melee. The P2 preview starts at 204, uses 40% opacity, and points 11.5 yalms from center. Light Rampant opens with the curved LPDU double conga. The optional Testing puddle guide marks each next bait and guides you clear of the final drop before regrouping. Its first movement cue says Keep baiting clockwise. Diamond Dust Out Swap cues react to the personal cone and blocking icicles. One Diamond Dust setting controls the personal Frigid Stone and outward House of Light bait countdowns. The final Diamond Dust slide recalculates from your current position and checks the puddles before marking the landing. Diamond Dust lane drops and Banish III spread use the standard player-attached countdown layout. (20-11-2026)

- Aligned M1/M2 Feint, R1 physical-ranged mitigation, and R2 Addle with the FRU mitigation sheet. Added party-range and boss-target checks and tightened cooldown windows. (19-11-2026)

- Added a player-attached rewind countdown near the end of Crystallize Time, using the remaining Return debuff duration. (15-11-2026)

- Replaced Paradise Regained tank guidance in both sets with Megaminx live cones, first-tower marking and tank arrows, aligned to the first tower. (15-11-2026)

- Disable Start Combat when the pull countdown starts. (15-11-2026)

- Disable AnyoneCore Prepull Helper when the pull countdown starts. (15-11-2026)

### M4S

- Sabertail exaflares: only the next two upcoming explosion circles per lane are shown, and each circle disappears as soon as its explosion goes off. (24-11-2026)

- Electrope Edge 2: the partners (Four Star) arrow now sends each role slot (T1/T2, H1/H2, M1/M2, R1/R2) to its own spot for 2 or 3 hits instead of one spot per role group. (24-11-2026)

- Electrope Edge 2: the Witchgleam clock-spot arrow now appears 5 seconds earlier (from 145 seconds). (24-11-2026)

- Added the M4S Draws profile for Wicked Thunder: side cannons, Witch Hunt baits, Spark rectangles, Witchgleam lines, Electrope Edge positions, Electron Stream and Ion Cluster, intermission cones and Sabertail lanes. (24-11-2026)

- Electrope Edge 2: the spread/partners arrow now shows and follows the boss's Four Star or Eight Star variant. Short/Long hit counts appear above each player during the Witchgleam lines, and the Lightning Cage arrow sends you to your count cell on your wave (shorts first, longs second). (24-11-2026)

- Ion Cluster: the blue tank markers only show while an Electron Stream is being cast and hide during the debuff phase. (24-11-2026)

### Q40

- Cleaned up leftover settings-path code in the Q40 settings and setup reactions and made the Assist Enabled check return a strict true/false. (22-11-2026)

### Mount Rokkon

- Shishio now highlights gaps between Cloud to Cloud beams with a green floor overlay in place of its red beam overlays. (22-11-2026)

- Added trash draws: Fuko Twister stack ring, Penghou Tornado circle, Kotengu Blade of the Tengu cones and the Raiko Barreling Smash charge line. (22-11-2026)

- Added Gorai draws for the Humble Hammer orb blasts and Flintlock line, the Torching Torment circle, and the Impure and Pointed Purgation bait cones. (22-11-2026)

- Added Moko tether-facing and clone guidance, near/far bait previews, corrected Upwell lanes and a safe handoff to Triple Kasumi-giri. The existing final-clone strategy setting now controls guidance, with Moogle fallback draws off by default. (15-11-2026)

- Added Gorai's second tower sequence, personal limit-cut steps and staged exaflare guidance. (15-11-2026)

- Corrected Shishio cloud previews, Wail safe-square assignments and ghost-to-tower timing; added moving personal countdowns, clearer Noble Pursuit guidance and separate defamation destinations. (15-11-2026)

### Alliance raids

- Added Red Girl helpers in The Tower at Paradigm's Breach: red Point lance lanes with green safe areas that account for the barrier colours, green safe areas for the White/Black Wipe meteors (including two at once), a blue spot and arrow to the nearest opposite-colour wall for your Shock marker, red Diffuse Energy cones for the next hit, Wave colour callouts with repeat reminders in the hacking minigame, and blue standing spots with a green landing marker for Child's Play when the chain is on you. (24-11-2026)

- Added Knave of Hearts Lunge guidance in The Tower at Paradigm's Breach: green squares in front of the cubes that will catch your knockback, and yellow squares for the second Lunge that turn green once the first one resolves. Squares that overlap Colossal Impact are hidden. (24-11-2026)

- Improved The Tower at Paradigm's Breach spread circles (Magic Artillery) so they follow the player they are on until they resolve, and drew Light Leap's danger circles in red. (24-11-2026)

- Improved The Tower at Paradigm's Breach timing: Colossal Impact's side lines now appear once the central line has resolved, and the second Magic Barrage set shows green until the first set resolves, then turns red. (24-11-2026)

- Improved Hansel and Gretel in The Tower at Paradigm's Breach: the Upgraded Shield sides now appear as soon as the cast starts and stay up, and the Magic Bullet explosion bands are drawn as soon as the bullets appear. Orb rings now disappear when the orb hits someone, and the helper setup no longer causes Lua errors. (24-11-2026)

- The Tower at Paradigm's Breach now draws rings around the dodgeable orbs (Knave of Hearts, Xun-Zi and Meng-Zi, Hansel and Gretel, Her Inflorescence) and the Knave's Spheroid Magic Barrage line. (23-11-2026)

- Added The Tower at Paradigm's Breach: hazard draws for every boss, Hansel and Gretel Upgraded Shield sides (red) with the open front (green), AutoSim forecasts that treat the Red Girl hacking minigame as downtime and stun, and a DoT blacklist for the minigame targets. (23-11-2026)

- Added optional Arm's Length and Surecast requests for the Knave Lunge and Pillar Impact knockbacks in The Tower at Paradigm's Breach. Both are off by default in a new Settings window. (23-11-2026)

- Added Surecast for Compound 2P’s Three Parts Disdain. (23-11-2026)

- Improved The World of Darkness AutoSim: Cloud of Darkness now handles both of its disappearances and the short melee gap after it returns, and kill-time estimates were updated for all four bosses. (22-11-2026)

### Trials

- Added The Striking Tree (Hard) with Thunderstorm, Thunderspark and Thunderbolt hazard draws, boss targeting and an AutoSim kill-time estimate. (25-11-2026)

- Added Surecast for Light of Ascalon and Suiton: San. (23-11-2026)

- Added The Bowl of Embers AutoSim, Eruption draws, and Infernal Nail and Hellfire callouts. (23-11-2026)

- Added The Seat of Sacrifice draws, AutoSim cutscene downtime, Suiton Arm's Length, and Fire/Blizzard stop and move cues. Also draws the Twincast towers, Sword of Light cones, Radiant Braver and Desperado bait lines, Flare Breath tether cone and Brimstone Earth growth. (22-11-2026)

- Added the Trials general profile with draws, AutoSim and boss-targeting reactions for Chimera, Hydra, Zurvan, Susano, Byakko, Endsinger, Zodiark, Valigarmanda, Queen Eternal, Zoraal Ja, Zelenia, Necron, Doomtrain, Enuo, Sophia, Shinryu, Innocence, King Thordan and Cinder Drift. (22-11-2026)

- Fixed the boss lookup used by encounter-start boss targeting, which could not find the boss before. (22-11-2026)

- Hydra: a Black Mage's Ley Lines and Triplecast toggles are now restored even if Lua is reloaded during the fight. (22-11-2026)

### Normal raids

- Added Arm’s Length for Lindwurm’s Shockwave and Surecast for Furor’s Downburst. (23-11-2026)

- Added Eden’s Promise: Umbra AutoSim, hazard draws, callouts, and Arm’s Length or Surecast for Waste Away. (23-11-2026)

- Added Eden's Verse: Furor draws, AutoSim, and Downburst Arm's Length. Conflag Strike's cone appears in the final five seconds. Also draws Irresistible Pull, predicted Tumultuous Nexus explosions, Hot Foot orb circles and Touchdown. (22-11-2026)

- Published the Normal raids general profile (Alexander, Deltascape, Sigmascape, Alphascape, Eden's Gate and Verse, Abyssos and AAC raid draws, AutoSim and boss-targeting reactions). (22-11-2026)

- Fixed the boss lookup used by encounter-start boss targeting and pre-pull setup, which could not find the boss before. (22-11-2026)

- Eden's Gate Resurrection: AutoSim no longer errors when Stasis or Eternal Breath arrives earlier than forecast. (22-11-2026)
