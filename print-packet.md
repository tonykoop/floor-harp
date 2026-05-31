# Floor Harp Build Packet Print Packet

Generated: 2026-05-09
Packet folder: `/tmp/floor-harp-codex-gina-r2-build-packet`

## File Map

| File | Purpose |
| --- | --- |
| `design.md` | Project intent, catalog metadata, assumptions, and validation plan. |
| `bom.csv` | Starter bill of materials with part categories, quantities, drawing refs, and notes. |
| `sourcing.csv` | Supplier/search tracker with specs, price/date fields, lead time, substitutes, and risks. |
| `cut-list.csv` | Rough/final stock sizes, material, grain/orientation, operations, yield, and offcuts. |
| `drawing-brief.md` | Manufacturing drawing and technical product sketch brief. |
| `assembly-manual.md` | Shop-facing sequence, tools, fixtures, safety, tuning, finishing, and maintenance notes. |
| `validation.csv` | Target/measured values, tolerance, environment, result, and tuning/build action log. |
| `supplier-rfq.md` | Supplier email/request-for-quote starter. |
| `visual-bom-brief.md` | Art direction for an image-forward visual BOM. |
| `floor-harp-starter.wl` | Wolfram starter for physics, optimization, visualization, and validation. |
| `README.md` | Project artifact. |
| `photo-shotlist.md` | Project artifact. |
| `risks.md` | Project artifact. |

<div class="page-break"></div>

## design.md

Project intent, catalog metadata, assumptions, and validation plan.

# Floor Harp Design

## Intent

Create a practical L2 packet for a small floor-standing harp that is large
enough to test graduated string lengths, frame stiffness, and ergonomic reach
without claiming concert-harp maturity.

## Readiness

L2 scaffold. This packet can support CAD layout and sourcing review, but the
frame must be analyzed and proofed before a full string load is applied.

## Governing Model

Strings use Mersenne-Taylor:

```text
f = (1 / (2 L)) * sqrt(T / mu)
```

The harp also needs a structural load model because cumulative string tension
dominates the neck, pillar, soundboard, and base joints.

## Baseline Assumptions

| Parameter | Baseline | Notes |
| --- | ---: | --- |
| String count | 22 | C3 through C6 diatonic first pass |
| Scale lengths | 42 in bass to 13 in treble | Graduated after gauge selection |
| String materials | Nylon/fluorocarbon treble, wound bass as needed | Supplier tension data required |
| Frame | Hardwood neck, pillar, base | Lamination or reinforced joinery likely |
| Soundboard | Spruce/ply soundboard with ribs | Thickness and rib pattern TBD |
| Target total tension | 300-600 lbf first-pass range | Must be refined before build |

## Tension Safety Notes

- Do not bring a prototype to full pitch until neck, pillar, and base joints
  have passed dry-load review.
- String from low to high in stages while checking frame movement.
- Keep the body out of the string plane during initial pitch-up.
- Add a proof-load hold point before final tuning.

## Known Gaps

- No final string chart or lever/sharping plan.
- No frame FEA or physical proof-load result.
- No soundboard deflection data.
- No sourceability/pricing check.
- No prototype tuning record.

<div class="page-break"></div>

## bom.csv

Starter bill of materials with part categories, quantities, drawing refs, and notes.

| item | qty | unit | material_or_spec | estimated_cost_usd | notes |
| --- | --- | --- | --- | --- | --- |
| Neck blank or lamination set | 1 | set | hard maple, walnut, or laminated hardwood | 120 | Primary loaded member |
| Pillar blank or lamination set | 1 | set | hardwood, straight grain or laminated | 80 | Avoid short grain at joints |
| Base block/feet | 1 | set | hardwood or plywood core with hardwood caps | 55 | Must resist tipping and string load |
| Soundboard panel | 1 | ea | spruce, cedar, or birch ply, thickness TBD | 70 | Ribbing pattern TBD |
| Back/shell stock | 1 | set | plywood or hardwood strips | 60 | Prototype shell can be simple |
| Harp strings | 1 | set | 22-string nylon/fluorocarbon/wound schedule TBD | 160 | Must include tension data |
| Tuning pins | 22 | ea | harp or zither pins sized for frame | 45 | Pilot holes must be tested |
| Bridge pins/eyelets | 22 | ea | harp bridge pins or suitable string guides | 35 | Spacing and angle TBD |
| Adhesive/finish | 1 | lot | structural wood glue and clear finish | 35 | Use fresh adhesive |

<div class="page-break"></div>

## sourcing.csv

Supplier/search tracker with specs, price/date fields, lead time, substitutes, and risks.

| item | required_spec | search_terms | supplier_candidates | date_checked | unit_price_usd | lead_time | substitution_risk | notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Harp strings | 22-string set or individual gauges with tension data | lever harp strings nylon wound bass tension chart | harp string suppliers | TBD | TBD | TBD | High | Gauge and tension data are mandatory |
| Tuning pins | 22 pins suitable for harp load and selected wood | harp tuning pins zither pins | harp hardware suppliers; luthier suppliers | TBD | TBD | TBD | Medium | Holding torque depends on pilot hole |
| Bridge pins | 22 string guide pins or eyelets | harp bridge pins eyelets | harp hardware suppliers | TBD | TBD | TBD | Medium | Must avoid string wear |
| Hardwood laminations | clear hardwood for neck/pillar | hard maple harp neck blank laminated hardwood | hardwood dealer; luthier supplier | TBD | TBD | TBD | Medium | Long clear stock may be limited |
| Soundboard stock | stable panel for harp soundboard | harp soundboard spruce birch plywood | luthier suppliers; specialty plywood suppliers | TBD | TBD | TBD | Medium | Deflection properties matter |

<div class="page-break"></div>

## cut-list.csv

Rough/final stock sizes, material, grain/orientation, operations, yield, and offcuts.

| part | qty | rough_dimensions_in | final_dimensions_in | material | grain_or_orientation | operation | notes |  |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| Neck | 1 | 2.0 x 5.0 x 42.0 | profile TBD | hardwood/lamination | continuous along string load | template, bandsaw/CNC, drill pins | Do not final drill before string layout |  |
| Pillar | 1 | 2.0 x 3.0 x 48.0 | profile TBD | hardwood/lamination | continuous lengthwise | shape and fit joints | Joint geometry is critical |  |
| Base | 1 | 2.0 x 8.0 x 20.0 | profile TBD | hardwood/ply core | grain lengthwise | shape, join, add feet | Check tip stability |  |
| Soundboard | 1 | 0.160 x 14.0 x 36.0 | taper/profile TBD | spruce/cedar/ply | long grain vertical | cut, brace, drill string holes | Deflection target TBD |  |
| Back/shell | 1 | set | TBD | TBD | ply/hardwood | stable | cut and assemble | Can be simplified for prototype |
| Bridge strip | 1 | 0.5 x 1.0 x 34.0 | profile TBD | hardwood | long grain | shape and drill | Pin angle TBD |  |

<div class="page-break"></div>

## drawing-brief.md

Manufacturing drawing and technical product sketch brief.

# Floor Harp Drawing Brief

Required first drawings:

- Full-size side elevation with neck, pillar, base, soundboard, and string fan.
- String chart with note, frequency, scale length, gauge, and target tension.
- Neck drilling layout with pin spacing and edge distances.
- Pillar/base joint detail.
- Soundboard section with bridge strip, string angle, and rib layout.

<div class="page-break"></div>

## assembly-manual.md

Shop-facing sequence, tools, fixtures, safety, tuning, finishing, and maintenance notes.

# Floor Harp Assembly Manual

1. Lock the string chart and full-size side elevation before cutting.
2. Build neck and pillar from clear stock or laminations with conservative
   glue area.
3. Dry-fit neck, pillar, and base, then mark string paths and pin locations.
4. Build the soundbox/soundboard assembly and verify flatness.
5. Fit bridge strip, guide pins, and string holes without sharp edges.
6. Test tuning pin pilot holes in offcuts before drilling the neck.
7. Assemble frame and soundbox, then finish before final hardware if practical.
8. String gradually in stages, recording frame movement after each stage.

Safety: treat the first full string-up as a proof test. Wear eye protection and
stand out of the string plane.

<div class="page-break"></div>

## validation.csv

Target/measured values, tolerance, environment, result, and tuning/build action log.

| check_id | area | target | method | tolerance | measured | result | action |
| --- | --- | --- | --- | --- | --- | --- | --- |
| VAL-001 | String schedule | C3-C6 diatonic target frequencies | calculate and tuner check | +/- 10 cents after settle | TBD | TBD | Adjust gauge or scale |
| VAL-002 | String safety | all strings within supplier tension range | supplier data and calculation | within published range | TBD | TBD | Change string set |
| VAL-003 | Frame load | no permanent frame movement at staged tension | measure neck/pillar before and after pitch-up | <=0.060 in first pass | TBD | TBD | Increase section or reinforce joints |
| VAL-004 | Tuning pin hold | pins hold pitch over 24 hours | mark pin angle and log tuning drift | <=8 cents drift | TBD | TBD | Revise pilot holes/hardware |
| VAL-005 | Tip stability | instrument stable in playing position | push/lean test with conservative force | no tip tendency | TBD | TBD | Revise base/feet |
| VAL-006 | Ergonomics | player can reach full string range | mockup photos and reach notes | comfortable reach | TBD | TBD | Revise height/string fan |

<div class="page-break"></div>

## supplier-rfq.md

Supplier email/request-for-quote starter.

# Supplier RFQ Draft

Hello,

Please quote hardware and strings for a 22-string small floor-harp prototype
covering approximately C3 through C6. I need individual string gauges with
tension data, compatible tuning pins, and bridge pins or eyelets.

Please include material specifications, rated tension or breaking strength,
unit price, minimum order quantity, lead time, and shipping options.

<div class="page-break"></div>

## visual-bom-brief.md

Art direction for an image-forward visual BOM.

# Visual BOM Brief

Show the full harp silhouette with callouts for neck, pillar, base, soundboard,
back/shell, bridge strip, tuning pins, guide pins, string set, adhesive, and
finish. Include a detail inset for the string path through pin, guide, bridge,
and soundboard.

<div class="page-break"></div>

## floor-harp-starter.wl

Wolfram starter for physics, optimization, visualization, and validation.

```wolfram
(* Floor harp string schedule starter. Values are first-pass assumptions. *)
ClearAll["Global`*"];
a4 = 440;
freqFromMidi[m_] := a4*2^((m - 69)/12);
notes = Range[48, 84]; (* C3 through C6 chromatic range; select diatonic rows later *)
scaleLengthIn[m_] := 13 + (42 - 13)*(84 - m)/(84 - 48);

Dataset[
  Table[
    <|"midi" -> m, "frequencyHz" -> N[freqFromMidi[m]],
      "firstPassScaleLengthIn" -> N[scaleLengthIn[m]]|>,
    {m, notes}
  ]
]
```

<div class="page-break"></div>

## README.md

Project artifact.

# Floor Harp

Engineering documentation and parametric design table for a floor-standing concert-style harp.

Part of the [tonykoop/instrument-maker](https://github.com/tonykoop/instrument-maker) catalogue.

## Readiness

L2 scaffold. This repo now contains root-mode build packet documentation for a
small floor-harp prototype. It is not L3 because string schedule validation,
frame-load analysis, CAD renders, sourceability checks, and measured prototype
data are still open.

## Packet Contents

- `design.md` - design basis, string schedule assumptions, and structural gaps.
- `bom.csv`, `sourcing.csv`, `cut-list.csv`, `validation.csv` - packet tables.
- `assembly-manual.md`, `risks.md`, `photo-shotlist.md` - build and review aids.
- `drawing-brief.md`, `drawings/README.md`, `cad/README.md`,
  `floor-harp-starter.wl`, `wolfram/README.md` - starter technical artifacts.

## String-Scale Assumptions

Baseline: 22 strings from C3 to C6 diatonic, graduated speaking lengths from
about 42 in bass to 13 in treble, nylon/fluorocarbon/wound bass strings as
needed, and a frame designed conservatively before any full-tension string-up.

## License

[CC BY 4.0](LICENSE) - see LICENSE for details.

<div class="page-break"></div>

## photo-shotlist.md

Project artifact.

# Photo Shotlist

- Full-size side elevation with string fan and frame members.
- Neck and pillar grain or lamination layout before cutting.
- Dry-fit frame joints before glue.
- Tuning pin scrap test with bit sizes labeled.
- Soundboard bridge/string-hole detail before stringing.
- Staged string-up with frame movement measurements.

<div class="page-break"></div>

## risks.md

Project artifact.

# Floor Harp Risks

- Cumulative string tension can damage the frame or injure the builder if the
  neck, pillar, or base joint fails.
- Tuning pin torque and holding power are unknown until scrap tests are done.
- Soundboard deflection is not validated.
- Long clear hardwood and harp strings may have cost/lead-time surprises.
- Remain at L2 until structural review, sourceability, and prototype tuning
  evidence are available.
