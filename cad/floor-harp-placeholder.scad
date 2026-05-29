// Floor harp parametric placeholder geometry.
// NOT fabrication authority. Scaffold for future CAD authoring.
// Dimensions from floor-harp-design-table.xlsx and string-schedule.csv.
// Authority: pending_measurement — do not use for fabrication without
// review against a measured template.

column_height_in     = 60.0;  // approximate concert pedal harp column
soundbox_length_in   = 36.0;
soundbox_width_in    = 10.0;
soundbox_depth_in    = 8.0;
neck_height_in       = 30.0;
string_count         = 36;    // small floor harp; concert = 47
longest_string_in    = 42.0;
shortest_string_in   = 4.5;
bridge_pin_spacing_in = 0.5;

module soundbox() {
  cube([soundbox_width_in, soundbox_depth_in, soundbox_length_in]);
}

module column() {
  translate([soundbox_width_in / 2, soundbox_depth_in / 2, soundbox_length_in])
    cylinder(h=column_height_in, d=3.5, $fn=32);
}

module neck_curve() {
  translate([soundbox_width_in / 2, soundbox_depth_in / 2, soundbox_length_in + column_height_in])
    rotate([0, -30, 0])
      cylinder(h=neck_height_in, d=2.0, $fn=32);
}

soundbox();
column();
neck_curve();
