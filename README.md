Hi please add https://github.com/Jacob5800/UltimateDraws this to your AnyoneCore third party sources.

The draws in here are mostly centered around LPDU strats in the Europe region but may work for other regions, feel free to make your own edits.

Currently supported:

UWU: LPDU (Beta) — supports ranged, melee, and tanks.

UCOB: LPDU — supports ranged/melee

FRU: LPDU

DSR: [Lpdu draws(beta)](TimelineReactions/DSR/Lpdu%20draws%28beta%29.lua) — LPDU guidance with saved phase settings. Replay checks are ongoing.

TOP: LPDU 

TEA: Coming soon by Ton.

## Changelog

### DSR: LPDU (Beta)

- Added Lpdu draws(beta), with personal mechanic guidance, tower countdowns, phase settings and optional gaze/knockback assistance. Includes the latest P2 positioning, P3 draw cleanup and optional P4 south regroup (off by default). Replay checks remain ongoing. (27-10-2026)

### TOP: LPDU

- P1 Program Loop holds an already-safe waiting position. Pantokrator now guides you back to your live group after your missile, and missile circles/callouts work even when the countdown helper is unavailable. (29-10-2026)

- P5 Omega near-bounce guidance now accepts correctly spaced live pair positions even after caching an earlier destination, avoiding unnecessary repositioning. (27-10-2026)

- Removed technical predicted-versus-assigned world-path callouts in P5 Delta, Sigma and Omega; personal instructions and draws remain. (27-10-2026)

- P3 Hello World RG tether sides now follow the players’ separate defamation-tower approaches and lock once both sides are clear, retaining that split through the rot transfer. (27-10-2026)

- P3 second hand AoEs and their countdowns stay hidden until the first hand set has 0.5 seconds remaining. (27-10-2026)

- P1 Program Loop now preserves the announced numbered tether direction after pickup, keeping the follow-up call and arrow consistent. (27-10-2026)

### UCOB: LPDU

- BRD AutoSim now optionally reserves Battle Voice, Raging Strikes, Barrage and Wanderer’s Minuet from Grand Octet until adds appear (enabled by default). Added optional party-burst alignment with a maximum early-hold slider and phase-based or custom pull-time windows, so ready-at-4:00 burst can wait for4:30 and follow6:30. This controls timing; incoming buff strength remains a separate forecast. Other actions remain automatic. BLM/RPR are unchanged; replay checks remain pending. (29-10-2026)

- UCOB AutoSim now plans through the adds deaths, then rebuilds for Golden after the scripted Phoenix transition. Golden uptime and fight length anchor to Bahamut becoming targetable; resurrection-to-targetability remains downtime. This lets AutoSim spend gauge before the forced loss without a separate forced Burn timer. Ordinary deaths cannot trigger the split; actual cooldown/potion timers carry over. Applied to BLM, BRD and RPR; replay checks remain pending. (29-10-2026)

- All three UCOB AutoSim profiles now use neutral 1x Phoenix planning weight by default. The new Phoenix planning priority: 2x GUI option restores extra relative priority for surviving Phoenix-buffed Golden damage; losing the buff removes that preference. Actual in-game buff handling remains with the ACR. (29-10-2026)

- BLM AutoSim now forecasts Nael quote transitions from recognized English quotes and corrects remaining steps on actual casts. Same-zone steps are skipped; the first In/Out step checks current distance. Travel time is adjustable. Corroborated with three native caster pulls and BossMod sequencing; no forced movement or new polling loop. Replay checks remain pending. (29-10-2026)

- Added Autosim BLM - UCOB with built-in targeting, Thunder forecasts, phase resyncs, Phoenix tracking and adjustable Twister/Exaflare and personal-assignment movement estimates. Teleports and Ley Lines returns remain manual. LPDU targeting yields to BLM AutoSim; legacy inherited holds are disabled in the BLM profile. All three AutoSim profiles now extend an expired Golden kill estimate while the boss remains alive. Reviewed five EU BLM clears; replay checks and movement tuning remain pending. (29-10-2026)

- Added Autosim BRD - UCOB with built-in boss/add targeting, balanced adds HP, two-target DoT windows, phase resyncs and Phoenix priority. BRD keeps attacking while moving; no melee LB forecast. Its LPDU inheritance retains draws, mitigations and potions while legacy holds are disabled. Shared targeting yields to either AutoSim profile. Published both AutoSim profiles and renamed the published draws file to LPDU Draws.lua. Replay checks remain pending. (29-10-2026)

- Added an Automatic targeting toggle to LPDU assignment settings. Shared targeting automatically yields to Autosim RPR - UCOB while draws, assignments, potions and mitigations remain active. Renamed the standalone Reaper AutoSim profile to Autosim RPR - UCOB. (29-10-2026)

- Added standalone Autosim RPR - UCOB for level-70 Reaper: native phase/targetability resyncs, boss and balanced higher-HP adds targeting, two-boss mark tracking, current melee separation and personal stun forecasts. Golden LB assignment/timing and fight-length estimates are adjustable. Phoenix-buffed Golden damage receives twice the relative planning priority, with personal buff-loss correction; no forced dashes or LB casts. Calibrated with native logs and 49 EU FFLogs clears; replay checks remain pending. (29-10-2026)

- Fixed pre-pull assignment-window visibility at timeline zero. Enabled spoken alerts for Step into Neurolink and Cleanse doom. (20-10-2026)

- Assignment settings remain visible through 15 seconds into the pull; potion controls are grouped under a collapsible Potions section. (20-10-2026)

### FRU: LPDU

- Fixed P1 tower spare-player priority to M1, M2, then R1. In a north-to-south 3-2-1 pattern, M2 now receives the north tower instead of middle. (28-10-2026)

- AA AutoSim now tracks all four light-crystal deaths before the Ice Veil damage window, resyncs on crystal targetability changes, and values the protected Ice Veil at zero damage before its 0.5 damage window. (28-10-2026)

- Fixed crystal targeting to select the actual crystal nearest your assigned colour marker and hold it until it dies, then skip dead or untargetable crystals. Focus mode also disables Smart AOE target switching, including ACR3. Focus mode targets your light crystal, then other light crystals, then the big crystal, keeping AoE off through the whole intermission and enabling it when P3 begins. (27-10-2026)

- Reduced both green mirror destination circles by another 15%. (22-10-2026)

- Reduced the P2 intermission knockback destination circle by 10%. (22-10-2026)

- Reduced both mirror destination circles by another 10% for a smaller marker. (22-10-2026)

- Added AnyoneCore countdowns to your nearest first-wave Light Rampant orb circle and to the middle tower when you are assigned to soak it. Second-wave orb circles have no added timer. (22-10-2026)

- Reduced mirror destination circles by a further 10%, keeping their positions, arrows and timing unchanged. (22-10-2026)

- Restricted Swap DPS spreads to the specific P1 safe-side spread after the clones. Clock spots and other Protean guidance now keep their original orientation. (22-10-2026)

- Made the puddle countdown 50% larger and fixed per-drop rearming, including recovery when the first setup is missed. Only the assigned lane updates the single timer. (22-10-2026)

### UWU: LPDU

- BRD, BLM and Reaper AutoSim now use Monk-log boss-event timings for Garuda’s second disappearance and Titan’s first jump return, reducing incorrect forecast availability. Personal movement forecasts remain job-specific. (29-10-2026)

- Added standalone Autosim RPR - UWU with built-in targeting, melee nail softening, phase/mark forecasts, gaol blacklists and personal stun tracking. Lahabrea has a Me / Other melee LB forecast with event corrections and cancellation cleanup. No forced Ingress/Egress; level-70 skill restrictions respected. Shared targeting yields to the RPR profile. Replay checks remain pending. (28-10-2026)

- Updated standalone BRD/BLM AutoSim profiles with built-in targeting, DoT blacklists and BRD primal DoT forecasts. BLM R2 Meteor forecasts include cast/animation lock and cancellation cleanup. Runtime replay checks remain pending. (28-10-2026)

- Shared automatic targeting now yields to the standalone uwubrd/blmuwu AutoSim profiles, letting a parent profile combine LPDU Draws, LPDU Mits and one AutoSim profile without competing target controllers. (28-10-2026)

- Added shared role-based nail targeting for non-AutoSim profiles (the BLM AutoSim controller stays independent): R2 starts SE, R1 SW, and melee soften the close pair to 40%, wait on Ifrit for awakening, then follow SE > SW > NE > NW. Uses the existing auto-target toggle. Ranged stay single-target until the final close pair; melee can cleave while softening, then follow single-target kill order. AoE is enabled after all nails die. (28-10-2026)

- Added optional boss, gaol and Magitek Bit targeting with a shared auto-target toggle, plus source-aligned cooldown holds, Sprint requests and shield-checked Surecast/Arm's Length attempts. Nails are DoT-blacklisted for supported ACRs, including non-AutoSim users. (28-10-2026)

- Updated dependencies to AnyoneCore’s separate UWU draws and core modules in place of the combined main profile. (24-10-2026)

- Enabled TTS for the 1048s ranged eruption-bait positioning call and 697s Landslide warning. (21-10-2026)

- Enabled TTS for Ultima’s “Bait eruptions then move” call. (21-10-2026)

- Searing Wind cleanup now skips the Titan phase, retaining cleanup in the Ifrit and Ultima Searing Wind windows. (21-10-2026)
