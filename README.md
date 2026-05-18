# Floor Harp

Engineering documentation and parametric design table for a floor-standing concert-style harp.

Part of the [tonykoop/instrument-maker](https://github.com/tonykoop/instrument-maker) catalogue.

## Readiness

L2 scaffold. This repo now contains root-mode build packet documentation for a
small floor-harp prototype. It is not L3 because string schedule validation,
frame-load analysis, CAD renders, sourceability checks, and measured prototype
data are still open.

## Packet Contents

- `explorer.html` - studio-facing overview of packet evidence, readiness gates,
  and linked design artifacts.
- `design.md` - design basis, string schedule assumptions, and structural gaps.
- `bom.csv`, `sourcing.csv`, `cut-list.csv`, `validation.csv` - packet tables.
- `assembly-manual.md`, `risks.md`, `photo-shotlist.md` - build and review aids.
- `drawing-brief.md`, `drawings/README.md`, `cad/README.md`,
  `wolfram-starter.wl`, `wolfram/README.md` - starter technical artifacts.

## String-Scale Assumptions

Baseline: 22 strings from C3 to C6 diatonic, graduated speaking lengths from
about 42 in bass to 13 in treble, nylon/fluorocarbon/wound bass strings as
needed, and a frame designed conservatively before any full-tension string-up.

## Build Review Checklist

Before this packet moves beyond L2, the frame load path needs a dedicated
review. The neck, pillar, base, and soundboard are not just decorative parts;
they carry a large sustained load. Review the string chart, total estimated
tension, pin spacing, neck section, pillar angle, base footprint, and
soundboard bridge path as one system.

CAD should begin with a side elevation that shows every string path from tuning
pin to soundboard. Use that drawing to size the neck and pillar before adding
visual shaping. If the design uses laminated members, document the lamination
stack and glue surfaces in the drawing set.

## Validation Boundary

This packet supports design review and prototype planning only. The following
evidence is still required before calling it L3:

- Final 22-string note/gauge/tension schedule from supplier data.
- Total string load estimate and structural review of neck, pillar, and base.
- Tuning pin scrap test for pilot size, torque, and holding power.
- Staged pitch-up log with frame movement measurements.
- Tip-stability and playing-position photos.
- Sourceability check for harp strings, pins, and long clear hardwood.

## Shop Notes

Treat first string-up as a proof test. Tune in stages, measure the frame after
each stage, and keep people out of the string plane. If the neck, pillar, or
base joint shows permanent movement, detune and revise the structure before
continuing.

## License

[CC BY 4.0](LICENSE) - see LICENSE for details.
