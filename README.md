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

- P3 Hello World RG tether sides now follow the players’ separate defamation-tower approaches and lock once both sides are clear, retaining that split through the rot transfer. (27-10-2026)

- P3 second hand AoEs and their countdowns stay hidden until the first hand set has 0.5 seconds remaining. (27-10-2026)


- P1 Program Loop now preserves the announced numbered tether direction after pickup, keeping the follow-up call and arrow consistent. (27-10-2026)



- P5 Omega double-out guidance now prefers a shared far Omega-M-side destination, checked against the current weapon and diffuse-cone geometry. Other patterns retain their current routing; blocked paths keep the existing safe-position fallback. (18-10-2026)




- All four P1 personal green spread countdowns now follow the player and their attached green circle continuously, retaining the 4.3-second lifetime. (18-10-2026)




- Added a reusable entity-following countdown helper using documented world-to-screen and GUI drawing APIs. Shared timer state and a frame guard prevent duplicate drawing when another profile includes the helper. (18-10-2026)




- Delta now shares the live Near/Far World path preview, hit-radius display and stable predicted-versus-assigned recipient warning used in Sigma/Omega. (18-10-2026)




- Delta now publishes its existing LPDU final-position assignments as an expected Near/Far World chain order, without changing the movement assignments. (18-10-2026)




- Fixed the cleanup-only eligibility condition that prevented Sigma/Omega world previews from starting. Sigma movement guidance now hands off 2 seconds earlier. Both P6 Wave Cannon spread occurrences now use persistent target-following beams. (18-10-2026)




- Second P3 hands turn red when the first hand set actually hits, approximately 2.6–2.7 seconds before the second set, completing the white/yellow/red sequence. (18-10-2026)




### UCOB: LPDU

- Fixed pre-pull assignment-window visibility at timeline zero. Enabled spoken alerts for Step into Neurolink and Cleanse doom. (20-10-2026)

- Assignment settings remain visible through 15 seconds into the pull; potion controls are grouped under a collapsible Potions section. (20-10-2026)

- Potion schedule hover text now lists the enabled opener, selected second window, adds opener and late Golden timings, with synced-timeline and skipped-window explanations. (20-10-2026)

- Fixed missing Settings errors in the assignment menu, potion toggles and healer/tower assignment options. Settings reads now use the live global settings table when needed and wait safely if settings are unavailable. (20-10-2026)

- Added optional all-job potion automation to LPDU Draws: opener, selectable second window, adds opener and late Golden. The assignment menu now includes an overall potion toggle, opener toggle, and second-window choices: Late Nael, Delayed Nael, Bahamut opener, After Blackfire, or Disabled/manual. Requests respect weave rules and expire after three seconds; replaced inherited MCH potion duplicates. (20-10-2026)

- Published [GNB - UCOB 1.5](TimelineReactions/UCOB/GNB%20-%20UCOB%201.5.lua), the original GNB profile used as the reference for the shared tank mitigation draft. Its existing mitigation schedule is included; avoid combining it with the shared tank profile without disabling duplicate requests. (20-10-2026)

- Added a shared UCOB tank mitigation draft derived from GNB 1.5, with Party Roster assignments and catalog-confirmed requests for all four tanks. Passage of Arms is an advance manual alert; Holmgang remains manual for safe self-targeting. See [tank mitigation notes](TimelineReactions/UCOB/TANK-MITS-NOTES.md) for excluded cooldown conflicts and pending replay checks. (20-10-2026)

- Grand Octet towers now show continuous cast countdowns. Both adds quote sets show a personal spread countdown from the preceding hit; IN-first stacks read actual marker 4 and other stacks marker 1. (19-10-2026)

- Fixed spacing in the personal lightning alert: Lightning on you, spread! (19-10-2026)

- P1 Fireball regroup and late Hatch arrows now yield while the Twintania-to-Nael transition regroup is active, preventing competing destinations after Twintania disappears. (19-10-2026)

### FRU: LPDU

- Reduced both green mirror destination circles by another 15%. (22-10-2026)

- Reduced the P2 intermission knockback destination circle by 10%. (22-10-2026)

- Reduced both mirror destination circles by another 10% for a smaller marker. (22-10-2026)

- Added AnyoneCore countdowns to your nearest first-wave Light Rampant orb circle and to the middle tower when you are assigned to soak it. Second-wave orb circles have no added timer. (22-10-2026)

- Reduced mirror destination circles by a further 10%, keeping their positions, arrows and timing unchanged. (22-10-2026)

- Restricted Swap DPS spreads to the specific P1 safe-side spread after the clones. Clock spots and other Protean guidance now keep their original orientation. (22-10-2026)

- Made the puddle countdown 50% larger and fixed per-drop rearming, including recovery when the first setup is missed. Only the assigned lane updates the single timer. (22-10-2026)

- Renamed the P1 option to Swap DPS spreads; its default and behavior are unchanged. (22-10-2026)

- Added a single player-following countdown for your Diamond Dust Holy lane, plus optional P1 Swap ranged spreads (off by default). Fixed yellow puddle guidance so either party reverses when Shiva is one marker clockwise from its landing side. (22-10-2026)

- Reduced blue and red mirror destination circles by 5%, with positions and arrows unchanged. (22-10-2026)

### UWU: LPDU

- Updated dependencies to AnyoneCore’s separate UWU draws and core modules in place of the combined main profile. (24-10-2026)

- Enabled TTS for the 1048s ranged eruption-bait positioning call and 697s Landslide warning. (21-10-2026)

- Enabled TTS for Ultima’s “Bait eruptions then move” call. (21-10-2026)

- Searing Wind cleanup now skips the Titan phase, retaining cleanup in the Ifrit and Ultima Searing Wind windows. (21-10-2026)

- Fixed Mistral OT-marker cleanup repeatedly executing through Ifrit. Cleanup now filters Mistral damage IDs, requires an active marker, and runs only in Garuda/Ultima Mistral windows. (21-10-2026)

- Ifrit’s opening Incinerate cone now stays visible through the back-to-back hits until timeline 330, following his current target. Later Incinerates retain their short warning windows. (21-10-2026)

- Added “Kill nail order” when the fourth paired ranged Eruption drop starts during nails: the seventh bait-cast start triggers it once, before the explosions resolve. (21-10-2026)

- Fixed the first Titan arrival warning missing after Ifrit: the Geocrush cast can start before the Titan timeline jump. The danger circle and green safe edge now accept that exact cast before the jump. (21-10-2026)

- Cleave warnings now appear only during the three seconds before each scheduled attack and clear at resolution. Slipstream stays fixed to its cast-start direction; Titan Rock Buster and Mountain Buster use separate warning windows. (21-10-2026)

- Added target-facing Garuda, Ifrit and opening Titan cleave warnings, fixed-direction Slipstream, and Titan arrival danger/safe-edge markers. Added the 402s stack call excluding Searing Wind, repaired nail kill-order text, and halved the editable Upheaval position marker. Replay checks remain pending. (21-10-2026)

