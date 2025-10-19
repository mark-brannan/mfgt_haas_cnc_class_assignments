%
O14205 (Solace SClampJawsOp1 v10_18)
(Solace Brannan #42 - MFGT 106 Fall 2025)
("Scissors Clamp Jaws Facing pass")

G17 G20 G40 G80 G90 G94 (Safe line)
G54 (fixture offset)

T4 M06 (Change to face mill, 2", 1.375 offset from center hold to edge of material)
G43 H4 (tool length offset, measured from top of parallels, bottom of part)

G00 X1.5 Y-1.375 Z1.75
S800 M03 M08 (Spindle on clockwise rotation with coolant)

(=========== Thicknessing Small Jaw ==========)
F25. (800 RPM x 4 teeth x 0.008 inches/tooth = 25.6 IPM)
G00 Z.490 (start thicknessing, most stock was already squared to less than .500)
G01 X-1.5 (climb mill through top face of part moving left to right)
G00 Z.5 (safe height)
G00 X1.5

G00 Z.390
G01 X-1.5
G00 Z.400 (safe height)
G00 X1.5

(.370 + .015 = .385 MMC thickness for small jaw)
G00 Z.385
G01 X-1.5
G00 Z.400 (safe height)

G00 X4.0 Y-4.0 Z4.0 M05 M09 (operator friendly position and stop spindle/coolant)
M01 (Optional stop, measure thickness of small jaw)

(=========== Drill Holes in Small Jaw ==========)
T01 M06 (Change to spot drill)
G43 H1
G00 X0 Y0 Z1.0
S800 M03 M08 (Spindle on clockwise rotation with coolant)
G00 Z.400 (safe height)
G01 Z.299 F2.55 (spot hole plus extra for small chamfer .385 - .086)
G00 Z1.0 M05 M09 (back off and stop spindle/coolant)

(---)

T03 M06 (Change to 5/16 Drill)
G43 H1
G00 X0 Y0 Z1.0
S800 M03 M08 (Spindle on clockwise rotation with coolant)
G00 Z.400 (safe height)
G01 Z-0.100 F2.55
G00 Z1.0 M05 M09 (back off and stop spindle/coolant)

(---)

G00 X4.0 Y-4.0 Z4.0 M05 M09 (operator friendly position and stop spindle/coolant)
M01 (Optional stop, flip part to chamfer reverse side)

(=== Chamfer reverse side of small jaw ===)
T01 M06 (Change to spot drill)
G43 H1
G00 X0 Y0 Z1.0
S800 M03 M08 (Spindle on clockwise rotation with coolant)
G00 Z.400 (safe height)
G01 Z.299 F2.55 (spot hole plus extra for small chamfer .385 - .086)
G00 Z1.0 M05 M09 (back off and stop spindle/coolant)

G00 X4.0 Y-4.0 Z4.0 M05 M09 (operator friendly position and stop spindle/coolant)
M01 (Optional stop, change parts)

(=========== Thicknessing Large Jaw ==========)
F25. (800 RPM x 4 teeth x 0.008 inches/tooth = 25.6 IPM)
G00 X1.5 Y-1.375 Z1.75
S800 M03 M08 (Spindle on clockwise rotation with coolant)

G00 Z.725 (start thicknessing, most stock was already squared to less than ~.750)
G01 X-1.8 (climb mill through top face of part moving left to right)
G00 Z.750 (safe height)
G00 X1.25

G00 Z.650
G01 X-1.8
G00 Z.700 (safe height)
G00 X1.25

(.630 + .015 = .645 MMC thickness for large jaw)
G00 Z.645
G01 X-1.8
G00 Z.700 (safe height)

G00 X4.0 Y-4.0 Z4.0 M05 M09 (operator friendly position and stop spindle/coolant)
M01 (Optional stop, measure thickness of small jaw)

(=========== Drill Holes in Large Jaw ==========)
T01 M06 (Change to spot drill)
G43 H1
G00 X0 Y0 Z1.0
S800 M03 M08 (Spindle on clockwise rotation with coolant)
G00 Z.700 (safe height)
G01 Z.559 F2.55 (spot hole plus extra for small chamfer .645 - .086)
G00 Z1.0 M05 M09 (back off and stop spindle/coolant)

(---)

T03 M06 (Change to 5/16 Drill)
G43 H1
G00 X0 Y0 Z1.0
S800 M03 M08 (Spindle on clockwise rotation with coolant)
G00 Z.700 (safe height)
G01 Z-0.100 F2.55
G00 Z1.0 M05 M09 (back off and stop spindle/coolant)

(---)

G00 X4.0 Y-4.0 Z4.0 M05 M09 (operator friendly position and stop spindle/coolant)
M01 (Optional stop, flip part to chamfer reverse side)

(=== Chamfer reverse side of small jaw ===)
T01 M06 (Change to spot drill)
G43 H1
G00 X0 Y0 Z1.0
S800 M03 M08 (Spindle on clockwise rotation with coolant)
G00 Z.400
G01 Z.299 F2.55 (spot hole plus extra for small chamfer .385 - .086)
G00 Z1.0 M05 M09 (back off and stop spindle/coolant)

G00 X4.0 Y-4.0 Z4.0 M05 M09 (operator friendly position and stop spindle/coolant)
M02 (Program end)
%