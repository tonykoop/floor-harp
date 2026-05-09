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
