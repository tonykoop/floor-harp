// Floor harp — parametric master (22-string first-pass, C3-C6 diatonic).
//
// Authority: pending_measurement. NOT fabrication authority until the frame is
// analyzed and proof-loaded (design.md Tension Safety Notes; validation.csv).
// See visual-output-register.csv CAD-001.
//
// Dimension sources (do not edit values without updating the source record):
//   - string count 22 + per-string SPEAKING LENGTHS (C3=42.00 in .. C6=13.00 in):
//     string-schedule.csv (speaking_length_in). AUTHORITATIVE first-pass fan.
//     design.md Baseline Assumptions confirms 22 strings, 42->13 in.
//   - bridge/tuning pin spacing ~0.44 in center-to-center: floor-harp-design-
//     table.xlsx BUILD METHOD step 3. (prototype_assumption for this 22-string
//     variant; the 0.44 figure is quoted for the 34-string Full Floor.)
//   - soundbox taper 3.0 in (bass) -> 1.5 in (treble) deep, width ~6 in: design
//     table cross-section note (step 2) / HARP SIZE VARIANTS. Assumption for the
//     22-string variant (design table tabulates 32/34-string boxes).
//   - column (pillar) ~2.0 in dia: design table HARP SIZE VARIANTS (Small Floor
//     lathe-turned 2 in). Assumption for the 22-string variant.
//   - string materials, gauges, tensions, total frame load: TBD / supplier
//     calculation required (string-schedule.csv, design.md Known Gaps).
//
// Geometry model: the harmonic (neck) curve is DERIVED, not drawn — each string
// rises vertically from its bridge pin on the soundboard by its speaking length,
// so the tuning-pin locus is the neck curve. This keeps the frame driven by the
// real string schedule.
//
// Units: inches. Datum: soundboard baseline along +y (bass end at y=0); string
// vibrating direction is +z; frame lies in the x=0 plane.

/* [String schedule — AUTHORITATIVE from string-schedule.csv] */
// Speaking lengths, bass (string 1 = C3) to treble (string 22 = C6).
speaking_lengths_in = [
  42.00, 40.39, 38.78, 37.97, 36.36, 34.75, 33.14, 32.33, 30.72, 29.11,
  28.31, 26.69, 25.08, 23.47, 22.67, 21.06, 19.44, 18.64, 17.03, 15.42,
  13.81, 13.00
];
string_count = len(speaking_lengths_in);      // 22
pin_spacing_in = 0.44;                         // design table step 3 (assumption)

/* [Soundbox — design-table cross-section (assumption for 22-string)] */
soundbox_depth_bass_in   = 3.0;   // deep end under bass strings
soundbox_depth_treble_in = 1.5;   // shallow end under treble strings
soundbox_width_in        = 6.0;   // design table variant note (assumption)
soundboard_thick_in      = 0.3125; // 5/16 in (small-floor row) assumption
soundbox_wall_in         = 0.5;    // 3/4 in birch pocketed to ~1/2 in wall (step 5)

/* [Column / pillar + neck (assumptions, design-table variant table)] */
column_dia_in  = 2.0;   // Small Floor lathe-turned 2 in dia (assumption)
neck_thick_in  = 2.0;   // laminated hardwood neck depth (BOM row 6 is 34-str)
neck_width_in  = 2.0;

// ---------------------------------------------------------------------------
// Derived frame geometry (formulas, not baked placement)
// ---------------------------------------------------------------------------

function pin_y(i) = i * pin_spacing_in;                 // along the soundboard
function box_depth_at(i) =                              // linear taper bass->treble
  soundbox_depth_bass_in +
  (soundbox_depth_treble_in - soundbox_depth_bass_in) * (i / (string_count - 1));
function tuning_pin_z(i) = speaking_lengths_in[i];      // neck curve locus

soundboard_len_in = pin_y(string_count - 1) + 2 * pin_spacing_in; // + end margin
bass_pin_z   = tuning_pin_z(0);
treble_pin_z = tuning_pin_z(string_count - 1);

module soundboard() {
  // Thin soundboard face along the y axis at z=0.
  translate([-soundbox_width_in / 2, -pin_spacing_in, -soundboard_thick_in])
    cube([soundbox_width_in, soundboard_len_in, soundboard_thick_in]);
}

module soundbox_body() {
  // Tapered box below the soundboard (deep at bass, shallow at treble).
  hull() {
    translate([-soundbox_width_in / 2, 0, -soundboard_thick_in - box_depth_at(0)])
      cube([soundbox_width_in, 0.01, box_depth_at(0)]);
    translate([-soundbox_width_in / 2, pin_y(string_count - 1),
               -soundboard_thick_in - box_depth_at(string_count - 1)])
      cube([soundbox_width_in, 0.01, box_depth_at(string_count - 1)]);
  }
}

module strings() {
  for (i = [0 : string_count - 1])
    translate([0, pin_y(i), 0])
      cylinder(h = tuning_pin_z(i), d = 0.05, $fn = 8);
}

module neck_curve() {
  // Neck follows the tuning-pin locus: a swept beam through (pin_y, tuning_z).
  for (i = [0 : string_count - 2])
    hull() {
      translate([0, pin_y(i), tuning_pin_z(i)])
        rotate([0, 90, 0]) cylinder(h = neck_width_in, d = neck_thick_in,
                                    center = true, $fn = 24);
      translate([0, pin_y(i + 1), tuning_pin_z(i + 1)])
        rotate([0, 90, 0]) cylinder(h = neck_width_in, d = neck_thick_in,
                                    center = true, $fn = 24);
    }
}

module pillar() {
  // Column closes the triangle: from neck top (treble end) down to the bass
  // end of the soundbox, bearing the string load in compression.
  hull() {
    translate([0, pin_y(string_count - 1), treble_pin_z])
      sphere(d = column_dia_in, $fn = 24);
    translate([0, -pin_spacing_in, -soundboard_thick_in - box_depth_at(0)])
      sphere(d = column_dia_in, $fn = 24);
  }
}

module floor_harp() {
  soundboard();
  soundbox_body();
  neck_curve();
  pillar();
  strings();  // reference geometry for load review / drawing callouts
}

floor_harp();

// Echo derived frame extents so `openscad` doubles as a layout check.
echo(str("string_count=", string_count));
echo(str("bass_speaking_len_in=", bass_pin_z, " treble=", treble_pin_z));
echo(str("soundboard_len_in=", soundboard_len_in));
echo(str("pin_span_in=", pin_y(string_count - 1)));
