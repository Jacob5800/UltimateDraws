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

### UCOB: Shared AutoSim

- Added [AA] Autosim - UCOB with shared phase/targetability tracking, caster movement and melee range forecasts, BRD-specific burst controls and personal melee LB lock tracking. Optional slower-group adjustments are captured on pull, with a first-Plummet fallback. LB is forecast and observed, not automatically cast. Cross-job replay checks remain pending. (01-11-2026)

### UWU: Shared AutoSim

- Added optional slower-group timing adjustments for Garuda, Ifrit, Titan and the final kill estimate. Extra seconds are captured at pull setup; mid-fight edits apply next pull, while observed phase transitions still correct forecasts. (01-11-2026)

- Added [AA] Autosim - UWU with shared encounter tracking and role-specific plans, buff-owned caster/melee Limit Breaks, role-appropriate Vulcan knockback protection and nail-targeting diagnostics. Personal gaols remain conditional on being selected/trapped. Original job profiles remain available separately; cross-job replay checks are pending. (31-10-2026)

### DSR: LPDU (Beta)

- Added Lpdu draws(beta), with personal mechanic guidance, tower countdowns, phase settings and optional gaze/knockback assistance. Includes the latest P2 positioning, P3 draw cleanup and optional P4 south regroup (off by default). Replay checks remain ongoing. (27-10-2026)

### TOP: AutoSim

- Added [AA] Autosim - TOP (5). P6 add blacklisting handles both Cosmo Meteors and Comets, once per content ID per pull. This profile forecasts LB downtime but does not automatically use LB. (31-10-2026)

### TOP: LPDU

- Delta preserves valid initial tether staging until fists establish assignments. Sigma avoids unnecessary safe-position sidesteps, and Omega stops personal guidance after the player's World hit. Non-tanks see Cosmo Dive tank circles only in the final four seconds; other players' meteor flares are dimmer. Replay confirmation remains pending. (31-10-2026)

- Moved R2's P3 monitor conga spot 0.5 yalms farther south and 0.5 yalms inward. (31-10-2026)

- Simplified the P3 rot-expiry callout to 'Spread' so it does not imply extra movement when already positioned. (31-10-2026)

- P2 weapon dodges preserve an already-safe position instead of forcing a group-side crossing. Unsafe positions use the nearest sampled safe destination with a route check; later BPOG spread assignments remain separate. (31-10-2026)

- P1 post-missile returns now follow a nearby agreeing cluster from the assigned group, using its live radius rather than a stale arrow heading. Final rear line positions move 0.5 yalms outward while keeping tanks farther out. Replay checks remain pending. (31-10-2026)

- P1 missile spread timers now follow the player using AnyoneCore's native entity countdown. Disabled the unused custom countdown overlay. (31-10-2026)

- TOP now stores its own settings in TOP-LPDU.settings.tsv, shared across characters. Existing Minion choices migrate when available; GUI and guidance no longer require Minion's settings table. Optifine replay confirmation remains pending. (31-10-2026)

- Fixed settings-table lookup errors affecting the settings window, personal guidance, monitor facing and optional automarkers. Replay confirmation on affected clients remains pending. (31-10-2026)

- P1 Pantokrator now preserves an already-safe starting position, checks the opening route against live cones, and avoids forced outward or clockwise fallback arrows. Program Loop waiting retains the tether-path callout without a movement draw. (30-10-2026)

- P1 Pantokrator now shows short sidestep arrows after flamethrowers resolve, checking current puddles and cones while preserving personal missile spreads and return routes. (29-10-2026)

- Added optional debug labels identifying TOP-owned draws throughout the fight (off by default). P1 missile footprints are red with a small green personal marker; final beam markers preserve your assigned destination and call to hold your line spot. (29-10-2026)

- P1 Program Loop holds an already-safe waiting position. Pantokrator now guides you back to your live group after your missile, and missile circles/callouts work even when the countdown helper is unavailable. (29-10-2026)

- P5 Omega near-bounce guidance now accepts correctly spaced live pair positions even after caching an earlier destination, avoiding unnecessary repositioning. (27-10-2026)

- Removed technical predicted-versus-assigned world-path callouts in P5 Delta, Sigma and Omega; personal instructions and draws remain. (27-10-2026)

- P3 Hello World RG tether sides now follow the players’ separate defamation-tower approaches and lock once both sides are clear, retaining that split through the rot transfer. (27-10-2026)

- P3 second hand AoEs and their countdowns stay hidden until the first hand set has 0.5 seconds remaining. (27-10-2026)

- P1 Program Loop now preserves the announced numbered tether direction after pickup, keeping the follow-up call and arrow consistent. (27-10-2026)

### UCOB: LPDU

- BLM, RPR and BRD AutoSim now give the P4 adds-opening burst a 1.4 planning weight. Existing timing and separate cleave forecasts are preserved. (30-10-2026)

- BLM/RPR AutoSim burst-strength defaults are now 1.17 across their existing burst windows, including Golden. Existing forecast on/off choices and phase/target-priority weights are preserved. (29-10-2026)

- BRD AutoSim now optionally reserves Battle Voice, Raging Strikes, Barrage and Wanderer’s Minuet from Grand Octet until adds appear (enabled by default). Added optional party-burst alignment with a maximum early-hold slider and phase-based or custom pull-time windows, so ready-at-4:00 burst can wait for4:30 and follow6:30. This controls timing; incoming buff strength remains a separate forecast. Other actions remain automatic. BLM/RPR are unchanged; replay checks remain pending. (29-10-2026)

- UCOB AutoSim now plans through the adds deaths, then rebuilds for Golden after the scripted Phoenix transition. Golden uptime and fight length anchor to Bahamut becoming targetable; resurrection-to-targetability remains downtime. This lets AutoSim spend gauge before the forced loss without a separate forced Burn timer. Ordinary deaths cannot trigger the split; actual cooldown/potion timers carry over. Applied to BLM, BRD and RPR; replay checks remain pending. (29-10-2026)

- All three UCOB AutoSim profiles now use neutral 1x Phoenix planning weight by default. The new Phoenix planning priority: 2x GUI option restores extra relative priority for surviving Phoenix-buffed Golden damage; losing the buff removes that preference. Actual in-game buff handling remains with the ACR. (29-10-2026)

- BLM AutoSim now forecasts Nael quote transitions from recognized English quotes and corrects remaining steps on actual casts. Same-zone steps are skipped; the first In/Out step checks current distance. Travel time is adjustable. Corroborated with three native caster pulls and BossMod sequencing; no forced movement or new polling loop. Replay checks remain pending. (29-10-2026)

- Added Autosim BLM - UCOB with built-in targeting, Thunder forecasts, phase resyncs, Phoenix tracking and adjustable Twister/Exaflare and personal-assignment movement estimates. Teleports and Ley Lines returns remain manual. LPDU targeting yields to BLM AutoSim; legacy inherited holds are disabled in the BLM profile. All three AutoSim profiles now extend an expired Golden kill estimate while the boss remains alive. Reviewed five EU BLM clears; replay checks and movement tuning remain pending. (29-10-2026)

- Added Autosim BRD - UCOB with built-in boss/add targeting, balanced adds HP, two-target DoT windows, phase resyncs and Phoenix priority. BRD keeps attacking while moving; no melee LB forecast. Its LPDU inheritance retains draws, mitigations and potions while legacy holds are disabled. Shared targeting yields to either AutoSim profile. Published both AutoSim profiles and renamed the published draws file to LPDU Draws.lua. Replay checks remain pending. (29-10-2026)

- Added an Automatic targeting toggle to LPDU assignment settings. Shared targeting automatically yields to Autosim RPR - UCOB while draws, assignments, potions and mitigations remain active. Renamed the standalone Reaper AutoSim profile to Autosim RPR - UCOB. (29-10-2026)

- Added standalone Autosim RPR - UCOB for level-70 Reaper: native phase/targetability resyncs, boss and balanced higher-HP adds targeting, two-boss mark tracking, current melee separation and personal stun forecasts. Golden LB assignment/timing and fight-length estimates are adjustable. Phoenix-buffed Golden damage receives twice the relative planning priority, with personal buff-loss correction; no forced dashes or LB casts. Calibrated with native logs and 49 EU FFLogs clears; replay checks remain pending. (29-10-2026)


### FRU: LPDU

- Light Rampant middle-tower players now finish their tower before receiving the Banish spread callout, spread circles and personal spread arrow. Other players receive spread guidance immediately. (31-10-2026)

- Light Rampant now shows countdowns on all three first-set large orb circles instead of only your nearest one. The second set remains untimed. (31-10-2026)

- Added countdowns to the four-circle Icicle Impact wave on Diamond Dust's In pattern, excluding the earlier and later pairs. Added a Don't move - wait for debuff voice/text alert after the second ice cleave, before the existing ice-clear call. (31-10-2026)

- Added a continuous personal countdown on your own Banish III spread circle for both P2 casts. It follows you and clears when Banish resolves; stack versions are unchanged. (31-10-2026)

- Added fire-only P1 tower knockback guidance: after the initial cleave, a personal launch circle and arrows align the knockback with your assigned tower, with a continuous knockback countdown. Lightning towers are unchanged. (31-10-2026)

- Added an Ice gone - move normally text and voice callout after P2 Twin Silence/Stillness, triggered by the frozen floor clearing rather than a fixed timer. (31-10-2026)

- Potion reactions and the Viper Reawaken cooldown-control reaction are now disabled by default in lpdu strats. Enable the desired reactions manually to opt in; mechanic draws and assignments remain enabled. (31-10-2026)

- Corrected P1 Burnt Blast towers to LPDU/Tessan plant-and-adjust: H1 north, R2 middle and H2 south stay fixed. M1/R1/M2 stay in their home towers unless theirs needs one player, then join the three- or four-player tower. Personal arrows and countdowns use the same assignment. (31-10-2026)

- AA AutoSim now uses BLM-specific burst-priority weights: 1.17 through P4, including intermission, and 1.19 for all three P5 bursts. Other jobs retain their existing weights. (29-10-2026)

- AA AutoSim uses a 1.3 burst-priority weight instead of 1.4 for non-Viper jobs, reducing the incentive to hold for those windows. Viper and the special P4 window retain their existing weights. (29-10-2026)

### UWU: LPDU

- BLM, BRD and RPR nail targeting now log diagnostic state changes: roster/assignment, collected nails, HP bands, awakening stacks, locked kill order, desired versus actual target and active casts. BLM also reports missing capture state. Targeting rules are unchanged. (31-10-2026)

- RPR AutoSim keeps the same boss’s DoT availability continuous across FullDowntime, removing redundant schedule-split warnings while preserving boss lifetimes and downtime. (31-10-2026)

- BLM AutoSim no longer applies the fixed post-gaol recovery movement to everyone. Recovery movement now comes from the personal gaol handlers; earlier Landslide movement remains unchanged. (31-10-2026)

- Shared draws now call “Melee: take the light orb” when Titan’s Beyond Limits orb appears, only for melee still missing the buff. (31-10-2026)

- Added buff-owned caster LB3 at arena centre and melee LB3 on Lahabrea to BLM/RPR AutoSim. Caster gets advance green centre guidance; full-gauge checks keep waiting for delayed refills. Existing personal LB animation-lock forecasts remain active. Replay confirmation is pending. (31-10-2026)

- Disabled the remaining 105-second CD/Flourish-off reaction in Draws LPDU so it cannot interfere with AutoSim. (31-10-2026)

- Combined UWU AutoSim, targeting and relevant orb-assignment panels into one UWU LPDU Settings window. BLM now has adjustable Garuda end, Ifrit end-after-disappearance and Triplecast hold lead times, with explanations and next-pull application. Settings remain session-only. (31-10-2026)

- BLM AutoSim now forecasts phase-specific Thunder lifetimes and availability for single-target and AoE Thunder, with native disappear/return corrections and extension when bosses outlive estimates. Updated Garuda/Ifrit end estimates from recent logs and stopped treating Ifrit’s confirmed final departure as a dash into Titan. (31-10-2026)

- BLM/BRD/RPR AutoSim now disable AoE and Smart AoE for Titan’s healer gaol and Ultima’s Suppression gaol, restoring prior settings after the final gaol or on cleanup. Auto-targeting is retained; Suppression selects the exact newly targetable gaol. The earlier Titan triple-gaol sequence is unchanged. (31-10-2026)

- Removed shared CD hold/resume controllers and MNK/NIN transition holds so they no longer override AutoSim. CD is explicitly enabled on wipe. Potion is disabled before/at pull and enabled when Ifrit becomes targetable; no forced potion-use actions are added. LPDU Mits had no matching controls. (31-10-2026)

