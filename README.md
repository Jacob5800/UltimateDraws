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

### Shinryu Unreal: AutoSim

- Shared Shinryu Unreal AutoSim now disables AnyoneCore’s Prepull Helper during its precombat setup. The setting stays off until manually re-enabled. (01-11-2026)

- Added [AA] Autosim - Shinryu Unreal, inheriting Shinryumain, with shared phase forecasts and live transition corrections. Optional Ginryu/Tail DoT blacklists preserve existing entries; hearts and wings remain eligible for DoTs. The final wing segment keeps AoE/Smart AoE off until wipe/zone cleanup and uses an adjustable short kill forecast for each selected wing. Caster-movement and optional kill/buff settings are saved. Replay checks remain pending. (01-11-2026)

### FRU: AutoSim

- Shared FRU AutoSim now disables AnyoneCore’s Prepull Helper during its precombat setup. The setting remains off until manually re-enabled. (01-11-2026)

### Q40: AutoSim

- Added shared AutoSim support to q40, with countdown/early-pull setup, boss-cast timing corrections, conservative caster movement forecasts and saved settings. Automatic kill estimation stays enabled by default; optional kill-time and party-buff forecasts are configurable. Existing targeting and cooldown usage remain unchanged. Replay checks are pending. (01-11-2026)

### Dungeons: AutoSim

- dungeon lol now supports all AutoSim jobs across its nine dungeon plans. Boss timing, targetability, optional kill estimates and raid-buff forecasts are shared; caster movement applies to casting jobs, while Ley Lines returns and Ley Lines/Manafont pooling remain BLM-only. Cross-job replay checks remain pending. (01-11-2026)

### Prepull Helper

- Alliance raid, dungeon lol, and the shared UCOB/UWU AutoSim profiles now disable AnyoneCore’s Prepull Helper on zone entry/countdown for general profiles and during the short precombat setup window for AutoSim. The setting remains off until manually re-enabled. (01-11-2026)

### Alliance Raid: AutoSim

- Generalized Alliance Raid AutoSim support: caster cleave corrections cover casting roles, Ark Angels preserves the active ACR's AoE options, Fafnir add retargeting is job-neutral, and knockback assistance chooses Surecast or Arm's Length by role. Shared kill/downtime/stun estimates remain unchanged. (01-11-2026)

### UCOB: LPDU mitigation

- Added Bard Nature’s Minne before Golden Morn Afah #2 to support recovery healing. Replay confirmation remains pending. (01-11-2026)

- Added Bard Troubadour for Gigaflares #1/#3 and Golden Morn Afah #1/#4, plus Nature’s Minne healing support for Gigaflares #2/#4. Requests are Bard-only and timed around observed hits; replay confirmation remains pending. (01-11-2026)

### UCOB: Shared AutoSim

- Restored caster mechanic-event corrections for Twisters, Exaflares, Nael quotes, personal assignments and nearby puddles, plus BRD Grand Octet reservation. Added later P1 Twister forecasts and customizable pull-time Twintania/Nael estimates, defaulting to 132s/129s. Replay confirmation remains pending. (01-11-2026)

- Added [AA] Autosim - UCOB with shared phase/targetability tracking, caster movement and melee range forecasts, BRD-specific burst controls and personal melee LB lock tracking. Optional slower-group adjustments are captured on pull, with a first-Plummet fallback. LB is forecast and observed, not automatically cast. Cross-job replay checks remain pending. (01-11-2026)

### UWU: Shared AutoSim

- Added optional slower-group timing adjustments for Garuda, Ifrit, Titan and the final kill estimate. Extra seconds are captured at pull setup; mid-fight edits apply next pull, while observed phase transitions still correct forecasts. (01-11-2026)

- Added [AA] Autosim - UWU with shared encounter tracking and role-specific plans, buff-owned caster/melee Limit Breaks, role-appropriate Vulcan knockback protection and nail-targeting diagnostics. Personal gaols remain conditional on being selected/trapped. Original job profiles remain available separately; cross-job replay checks are pending. (31-10-2026)

### DSR: LPDU (Beta)

- Added Lpdu draws(beta), with personal mechanic guidance, tower countdowns, phase settings and optional gaze/knockback assistance. Includes the latest P2 positioning, P3 draw cleanup and optional P4 south regroup (off by default). Replay checks remain ongoing. (27-10-2026)

### TOP: AutoSim

- Shared TOP AutoSim now disables AnyoneCore’s Prepull Helper during its precombat setup. The setting remains off until manually re-enabled. (01-11-2026)

- Added [AA] Autosim - TOP (5). P6 add blacklisting handles both Cosmo Meteors and Comets, once per content ID per pull. This profile forecasts LB downtime but does not automatically use LB. (31-10-2026)

### TOP: LPDU

- Blind Faith south-position guidance starts one second earlier, while retaining its coverage through the knockback. (02-11-2026)

- All Pantokrator calls use normal visible AnyoneCore text and TTS again. The south-of-male bait marker holds until the actual bait cast or replacement guidance; Sagittarius countdowns sit at the beam midpoint inside the arena. Broken green tethers say only Take bounce; Sigma hand baits wait for laser completion, and Delta previews show three lines. Replay checks remain pending. (02-11-2026)

- Pantokrator clears only its completed instruction on the finishing hit or early boss departure. Removed the text-routing time cutoff; subsequent AnyoneCore text and TTS remain enabled. (02-11-2026)

- Settings remember the main window and expanded sections across reloads. Fixed later callouts playing audio without green text when Pantokrator display state remained active. (02-11-2026)

- P4 previews the next personal stack in pale green, strengthens imminent proteans, and clears resolved bait guidance. P5 shows both Solar Ray target predictions, an early middle-laser preview/countdown, and only personal future arm baits. Sigma hand destinations match the recorded marked sides; Blind Faith guides everyone south of the boss from 996s. Replay confirmation is pending. (02-11-2026)

- Cosmo Dive hides the non-tank movement arrow inside the safe stack area while retaining its circle and countdown; resolved Cosmo Arrow lanes clear on their matching hit. (02-11-2026)
- Pantokrator keeps safe spread destinations stable, shows one current instruction, dims unrelated puddles and calls the missile-to-puddle return; non-tanks preposition south of the male for Limitless Arrow, and rot pickup follows the assigned donor until transfer. (02-11-2026)

- Pantokrator missile guidance now follows the tight pair in the original party when one member is spreading, including melee-range stacks. Personal missile plans remain active through the expected hit, and generic rotation arrows cannot override them. Replay confirmation is pending. (02-11-2026)

- P1 now shows a personal green beam while holding the assigned Blaster tether. Pantokrator gives “Preposition parties” and provisional north/south arrows at 62s, then corrects by numbered assignment. Opening movement and missile setup retry missing assignments; cone/puddle route checks remain. Replay checks are pending. (02-11-2026)

- Pantokrator missile guidance moves ahead of the original assigned stack, waits for the next personal puddle after the missile, then returns to that same party. Live cone/puddle route checks withhold ambiguous or opposite-side arrows. Replay confirmation remains pending. (01-11-2026)



### UCOB: LPDU

- Disabled inherited Draw Flare Breath reactions that could fail on missing tanks/entities. Our actual-aggro Flare Breath cones and hit cleanup remain enabled. (01-11-2026)

- BLM, RPR and BRD AutoSim now give the P4 adds-opening burst a 1.4 planning weight. Existing timing and separate cleave forecasts are preserved. (30-10-2026)

- BLM/RPR AutoSim burst-strength defaults are now 1.17 across their existing burst windows, including Golden. Existing forecast on/off choices and phase/target-priority weights are preserved. (29-10-2026)

- BRD AutoSim now optionally reserves Battle Voice, Raging Strikes, Barrage and Wanderer’s Minuet from Grand Octet until adds appear (enabled by default). Added optional party-burst alignment with a maximum early-hold slider and phase-based or custom pull-time windows, so ready-at-4:00 burst can wait for4:30 and follow6:30. This controls timing; incoming buff strength remains a separate forecast. Other actions remain automatic. BLM/RPR are unchanged; replay checks remain pending. (29-10-2026)

- UCOB AutoSim now plans through the adds deaths, then rebuilds for Golden after the scripted Phoenix transition. Golden uptime and fight length anchor to Bahamut becoming targetable; resurrection-to-targetability remains downtime. This lets AutoSim spend gauge before the forced loss without a separate forced Burn timer. Ordinary deaths cannot trigger the split; actual cooldown/potion timers carry over. Applied to BLM, BRD and RPR; replay checks remain pending. (29-10-2026)

- All three UCOB AutoSim profiles now use neutral 1x Phoenix planning weight by default. The new Phoenix planning priority: 2x GUI option restores extra relative priority for surviving Phoenix-buffed Golden damage; losing the buff removes that preference. Actual in-game buff handling remains with the ACR. (29-10-2026)

- BLM AutoSim now forecasts Nael quote transitions from recognized English quotes and corrects remaining steps on actual casts. Same-zone steps are skipped; the first In/Out step checks current distance. Travel time is adjustable. Corroborated with three native caster pulls and BossMod sequencing; no forced movement or new polling loop. Replay checks remain pending. (29-10-2026)

- Added Autosim BLM - UCOB with built-in targeting, Thunder forecasts, phase resyncs, Phoenix tracking and adjustable Twister/Exaflare and personal-assignment movement estimates. Teleports and Ley Lines returns remain manual. LPDU targeting yields to BLM AutoSim; legacy inherited holds are disabled in the BLM profile. All three AutoSim profiles now extend an expired Golden kill estimate while the boss remains alive. Reviewed five EU BLM clears; replay checks and movement tuning remain pending. (29-10-2026)

- Added Autosim BRD - UCOB with built-in boss/add targeting, balanced adds HP, two-target DoT windows, phase resyncs and Phoenix priority. BRD keeps attacking while moving; no melee LB forecast. Its LPDU inheritance retains draws, mitigations and potions while legacy holds are disabled. Shared targeting yields to either AutoSim profile. Published both AutoSim profiles and renamed the published draws file to LPDU Draws.lua. Replay checks remain pending. (29-10-2026)

- Added an Automatic targeting toggle to LPDU assignment settings. Shared targeting automatically yields to Autosim RPR - UCOB while draws, assignments, potions and mitigations remain active. Renamed the standalone Reaper AutoSim profile to Autosim RPR - UCOB. (29-10-2026)


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

