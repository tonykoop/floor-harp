# MCP / External-Tool Session Log

V5 provenance record for artifacts generated or modified by external tools.

| session_id | tool | input_authority | outputs | role | authority_result | review_status | notes |
|---|---|---|---|---|---|---|---|
| cindy-r1-2026-05-29 | claude-code | floor-harp-design-table.xlsx, string-schedule.csv | cad/floor-harp-placeholder.scad | cad_authoring | pending_measurement | self_checked | Soundbox, column, neck scaffold. Retired 2026-07-01, superseded by cad/floor-harp.scad. |
| fable-v5-refresh-2026-07-01 | claude-code (Fable 5) + OpenSCAD CLI | floor-harp-design-table.xlsx, string-schedule.csv | cad/floor-harp.scad | cad_authoring | pending_measurement | self_checked | Parametric master: neck/harmonic curve DERIVED from the 22 string-schedule speaking lengths (C3 42.00 in .. C6 13.00 in); pin spacing 0.44 in and soundbox/pillar cross-sections are design-table-referenced assumptions. OpenSCAD render check: pass (openscad -o STL, exit 0). Not fabrication authority until frame analyzed/proof-loaded. |
| fable-v5-refresh-2026-07-01 | claude-code (Fable 5) | floor-harp-design-table.xlsx | bom.csv, sourcing.csv, cut-list.csv, validation.csv | packet_refresh | fabrication | self_checked | V5 refresh pass: tabular packet data reviewed against design-table baseline; no dimension changes made. Provenance rows added to satisfy V5 fabrication-artifact logging. |
