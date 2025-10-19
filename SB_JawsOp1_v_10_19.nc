%
O14205 (Solace SClampJawsOp1 v10_19)
(Solace Brannan #42 - MFGT 106 Fall 2025)
("Scissors Clamp Jaws Facing and holes")

G17 G20 G40 G80 G90 G94 (Safe line)
G54 (fixture offset)

(=========== Thicknessing Small Jaw ==========)
T1 M06 (Change to face mill, 4", < 1.625 offset from center hold to edge of material)
G43 H1 (tool length offset, measured from top of parallels, bottom of part)

S600 (600 RPM for facing brass with carbide)
F40.0 (600 RPM x 9 teeth x 0.008 inches/tooth = 43.2 IPM)

G00 X2.5 Y-1.5 Z5.0 (rapid to near part with safe distance)
G00 Z1.75
M03 (spindle on clockwise rotation)
M08 (cooleant on)

G00 Z.490 (start thicknessing, most stock was already squared to less than .500)
G01 X-1.75 (climb mill through top face of part moving left to right)
G00 Z.5 (safe height)
G00 X2.25

G00 Z.390
G01 X-1.75
G00 Z.400 (safe height)
G00 X2.25

(.370 + .015 = .385 MMC thickness for small jaw)
G00 Z.385
G01 X-1.75
G00 Z.400 (safe height)
M05
M09
G00 X0 Y0 Z4.0 (center and raise higher for clearance)
G53 G00 Y0 (bring vise forward to absolute Y zero)
M01 (Optional stop, measure thickness of small jaw)

(=========== Drill Holes in Small Jaw ==========)
S800 (800 is good for 5/16 and brass)
T02 M06 (Change to spot drill)
G43 H2
G00 X0 Y0 Z5.0 (rapid to center/top of part with safe Z distance)
G00 Z1.0
M03 (spindle on clockwise rotation)
M08 (cooleant on)
G00 Z.400 (safe height)
G01 Z.299 F4.0 (spot hole plus extra for small chamfer .385 - .086)
G00 Z3.0 M05 (back off and stop)
M09

(---)

T03 M06 (Change to 5/16 Drill)
G43 H3
G00 X0 Y0 Z5.0 (rapid to center/top of part with safe Z distance)
G00 Z1.0
M03 (spindle on clockwise rotation)
M08 (cooleant on)
G00 Z.400 (safe height)
G01 Z-0.100 F4.0
G00 Z3.0 M05 (back off and stop)
M09

(---)

G00 Z5.0 (raise higher for clearance)
G53 G00 Y0 (bring vise forward to absolute Y zero)
M01 (Optional stop, flip part to chamfer reverse side)

(=== Chamfer reverse side of small jaw ===)
T02 M06 (Change to spot drill)
G43 H2
G00 X0 Y0 Z5.0 (rapid to center/top of part with safe Z distance)
G00 Z1.0
M03 (spindle on clockwise rotation)
M08 (cooleant on)
G00 Z.400 (safe height)
G01 Z.299 F4.0 (spot hole plus extra for small chamfer .385 - .086)
G00 Z1.0 M05 (back off and stop)
M09

G00 Z5.0 (raise higher for clearance)
G53 G00 Y0 (bring vise forward to absolute Y zero)
M01 (Optional stop, change parts)

(=========== Thicknessing Large Jaw ==========)
T1 M06 (Change to face mill, 4", < 1.625 offset from center hold to edge of material)
G43 H1 (tool length offset, measured from top of parallels, bottom of part)

S600 (600 RPM for facing brass with carbide)
F40.0 (600 RPM x 9 teeth x 0.008 inches/tooth = 43.2 IPM)

G00 X2.5 Y-1.5 Z5.0 (rapid to near part with safe distance)
G00 Z1.75
M03 (spindle on clockwise rotation)
M08 (cooleant on)

G00 Z.725 (start thicknessing, most stock was already squared to less than ~.750)
G01 X-1.75 (climb mill through top face of part moving left to right)
G00 Z.750 (safe height)
G00 X2.25

G00 Z.650
G01 X-1.75
G00 Z.700 (safe height)
G00 X2.25

(.630 + .015 = .645 MMC thickness for large jaw)
G00 Z.645
G01 X-1.75
G00 Z.700 (safe height)
M05
M09
G00 X0 Y0 Z4.0 (center and raise higher for clearance)
G53 G00 Y0 (bring vise forward to absolute Y zero)
M01 (Optional stop, measure thickness of small jaw)

(=========== Drill Holes in Large Jaw ==========)
S800 (800 is good for 5/16 and brass)
T02 M06 (Change to spot drill)
G43 H2
G00 X0 Y0 Z5.0 (rapid to center/top of part with safe Z distance)
G00 Z1.0
M03 (spindle on clockwise rotation)
M08 (cooleant on)
G00 Z.700 (safe height)
G01 Z.559 F4.0 (spot hole plus extra for small chamfer .645 - .086)
G00 Z1.0 M05 (back off and stop)
M09

(---)

T03 M06 (Change to 5/16 Drill)
G43 H3
G00 X0 Y0 Z5.0 (rapid to center/top of part with safe Z distance)
G00 Z1.0
M03 (spindle on clockwise rotation)
M08 (cooleant on)
G00 Z.700 (safe height)
G01 Z-0.100 F4.0
G00 Z1.0 M05 (back off and stop)
M09

(---)

G00 Z5.0 (raise higher for clearance)
G53 G00 Y0 (bring vise forward to absolute Y zero)
M01 (Optional stop, flip part to chamfer reverse side)

(=== Chamfer reverse side of small jaw ===)
T02 M06 (Change to spot drill)
G43 H2
G00 X0 Y0 Z5.0 (rapid to center/top of part with safe Z distance)
G00 Z1.0
M03 (spindle on clockwise rotation)
M08 (cooleant on)
G00 Z.400
G01 Z.299 F4.0 (spot hole plus extra for small chamfer .385 - .086)
G00 Z1.0 M05 (back off and stop)
M09

G00 Z5.0 (raise higher for clearance)
G53 G00 Y0 (bring vise forward to absolute Y zero)
M02 (Program end)
%