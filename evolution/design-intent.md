# Design Intent — floor-harp rev A

- Master CAD: `cad/floor-harp.scad` (sha256: 333fe79e0373f78f2475e7c835e57ef511af26d4659f19e439fcadf52ac18ee9), driven by `floor-harp-design-table.xlsx` (sha256: ba7ea057137af752734724599f35ba732ef77f79d067e83ce3bd201bf418d675) and `string-schedule.csv` (sha256: dc26b83b944535ca9d95865f8dc4f97ef2a94702916fa56ad3c782eb1eb061ad)
- Function: Small floor-standing lever harp, 22 strings C3-C6 diatonic. Each nylon/fluorocarbon (wound-bass-as-needed) string carries static tension from a bridge pin on the spruce/ply soundboard up to a tuning pin on the harmonic-curve neck; cumulative string tension is reacted by the triangular frame (neck + pillar + soundbox). Graduated speaking lengths (42 in bass to 13 in treble) set the neck curve.
- Environment: indoor instrument; cumulative string tension dominates neck, pillar, soundboard, and base joints. Soundboard creep re-levels tuning over months (design table §4). Humidity shifts nylon length.
- Target qty: 1 (prototype). Deadline: TBD. Budget/unit ceiling: TBD.

## Critical dimensions (carry tolerances)

| Feature | Nominal | Tolerance | Why critical | Source |
| --- | --- | --- | --- | --- |
| String count | 22 (C3-C6) | fixed for this variant | scale/range | string-schedule.csv / design.md |
| Speaking lengths | 42.00 in (C3) .. 13.00 in (C6) | graduated after gauge selection | pitch per string | string-schedule.csv (speaking_length_in) |
| Pin spacing | ~0.44 in c-c | uniform/graduated, mark on template | string plane / neck curve | design table BUILD METHOD step 3 (assumption) |
| Soundbox depth taper | 3.0 in (bass) -> 1.5 in (treble) | box mode / structure | tone + stiffness | design table step 2 (assumption) |
| Soundboard thickness | ~5/16 in | deflection under string pull | tone vs structure | design table variant table (assumption); rib pattern TBD |
| Column dia | ~2.0 in | compression under total load | frame safety | design table Small Floor variant (assumption) |
| Total string tension | 300-600 lbf first-pass | must be refined before build | frame safety factor 2 | design.md / design table Structural Analysis |
| String gauges / tensions | TBD | supplier calculation | pitch + frame load | string-schedule.csv (requires supplier calculation) |

## Incidental (free for DFM)

- Decorative pillar turning rings, rosette/sound-hole styling, feet/base styling, non-mating surface finish. Neck lever brand choice (Loveland/Robinson) is a fit decision, not a scale change.

## Must-nots (DFM may never violate)

- Do not bring a prototype to full pitch until neck, pillar, and base joints have passed dry-load review; string low-to-high in staged passes (design.md Tension Safety Notes).
- Do not exceed the frame capacity — total string load must clear a safety factor of 2 over frame yield (design table Structural Analysis).
- Do not thin the soundboard below validated deflection values or change the rib pattern without re-approval (soundboard is a load path; rib pattern TBD).
- Do not publish string gauge/tension from unverified assumptions — supplier calculation and %breaking checks required (string-schedule.csv).
- Do not treat the derived neck curve as fabrication authority before the frame is analyzed/proof-loaded (visual-output-register.csv CAD-001).

## Material intent

- Preferred: hard maple / walnut / laminated hardwood neck + pillar + base; spruce/cedar/birch-ply soundboard; nylon/fluorocarbon treble + wound bass strings; zither tuning pins; Loveland/Robinson levers (per bom.csv).
- Acceptable subs: per sourcing.csv (spec-first; prices unverified).
- Forbidden: none recorded.

## Stage status

Stage 0 intake complete 2026-07-01. Gate A (Alpha shop compile) NOT yet run — no concessions logged, nothing presented as shippable.
