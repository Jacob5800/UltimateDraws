# UCOB LPDU tank mitigation draft

Derived from the scheduled actions in `Ucobreactions\GNB - UCOB 1.5 (1)`, not the copy/paste templates on the final timeline row. Updated 20 October 2026.

## Usage

Inherit `UCOB\lpdu tank mits` in a job profile. Assign MT=T1 and OT=T2 in AnyoneCore Party Roster. This profile does not include draws. Do not run the original GNB mitigation schedule alongside this schedule: that can duplicate requests.

548 reactions: 74 shared, 133 GNB, 124 PLD, 109 WAR, 108 DRK. Of these, 537 are catalog-confirmed ACR Hotbar/Tankbar requests and 11 are manual alerts. Each request has a bounded three-second opportunity window. Identity and co-tank selection use Party Roster, not the ACR Tank Stance option. Reprisal needs a living enemy within its native 5y range. Single-action reactions leave End Reaction if Used disabled. No Action CD checks are added.

## Job mappings and manual actions

- Shared: Rampart, Reprisal, Sprint, Arm's Length, Provoke and roster-targeted Shirk.
- Each job has explicit stance enable/release controls. Major personals use the corresponding catalog control; GNB Camouflage slots map to PLD Bulwark, WAR Thrill of Battle and DRK Dark Mind. These abilities have different effects and are not equal mitigation packages.
- GNB Heart of Stone slots map to PLD Sheltron/Intervention and DRK TBN; WAR receives self Raw Intuition slots only. Nascent Flash is unavailable at level 70, so WAR has no copied ally-shield slots.
- GNB Heart of Light slots map to PLD Divine Veil and WAR Shake It Off. DRK Dark Missionary is unavailable at level 70 and is not requested.
- Aurora self slots map to WAR Equilibrium; no automatic PLD Clemency or invented DRK healing equivalent. Ally Aurora remains GNB-only.
- Seven PLD Passage of Arms alerts occur two seconds before use, with positioning text and TTS; Passage is never requested automatically. Alerts are spaced for its 120s cooldown and are not delayed by the party's current distance.
- Four WAR Holmgang alerts occur two seconds before use and explicitly say IN 2s and use self target. The exposed Holmgang catalog control does not establish reliable self-targeting, so it is not substituted for a self-target action.
- GNB Superbolide, PLD Hallowed Ground and DRK Living Dead retain the source's invulnerability slots. Confirm these in a replay before relying on them.
- The optional WAR-partner shield at 512s and normal co-tank shield at 519s are mutually exclusive, selected from the roster co-tank's job.
- Job-specific Trajectory, rotation target switches and the source's GNB LB3 action are not imported. An automatic shared LB3 request needs a verified level-3-only request/guard first.

## Source requests excluded by the planned cooldown spacing

Later conflicting uses are excluded rather than held until an unrelated later mechanic. These are mitigation gaps needing an alternate/manual plan; this is not a complete survival guarantee. No source reactions were changed. Timeline syncs and phase pushes can alter real elapsed recovery and require replay review.

| Requested timeline time (s) | Excluded source request | Previous retained use by role (s) |
| --- | --- | --- |
| 51.6 | OT Rampart | OT: 9.3 |
| 119.6 | MT Nebula | MT: 14.5 |
| 132.6 | MT Shirk | MT: 23.5 |
| 271.7 | OT Nebula | OT: 240.3 |
| 546.4 | HoL | MT: 538.0, OT: 538.0 |
| 597.0 | OT Aurora Self | OT: 548.9 |
| 600.0 | OT Reprisal | OT: 592.0 |
| 641.9 | HoL | MT: 636.9, OT: 636.9 |
| 707.5 | OT Nebula | OT: 595.0 |
| 730.5 | OT Shirk | OT: 619.0 |
| 757.9 | HoL | MT: 745.4, OT: 745.4 |
| 906.6 | OT Reprisal | OT: 847.9 |

The source's final-row templates are excluded entirely. Mapped jobs also omit abilities without a safe level-70 equivalent; Passage alerts follow their own 120s schedule.

## Verification and pending observations

Completed: live TensorCore validation before each mutation and full persisted readback of all 548 reactions, mechanic attachments, action categories, roster gates, links and bounded windows. Published source and destination hashes match.

Pending: real MT/OT replay observations for every job and partner combination, sync-70 downgrade behavior of upgrade-named ACR controls, ACR weaving and expiry, roster co-tank targeting, Shirk swaps, Reprisal hitbox range, PLD Oath availability, DRK MP availability, manual alert timing and invulnerability duration. Cooldown spacing is a timeline-plan review, not measured live cooldown evidence. Review the gaps above before using this as your full tank plan.
