%
O14205 (Solace SClampSJawsOp1 v10_19)
(Solace Brannan #42 - MFGT 106 Fall 2025)
("Scissors Clamp Small Jaws Facing and holes")

G17 G20 G40 G80 G90 G94 (Safe line)
G54 (fixture offset)

(=========== Thicknessing Small Jaw ==========)
T1 M06 (Change to face mill, 4", < 1.625 offset from center hold to edge of material)
G43 H1 (tool length offset, measured from top of parallels, bottom of part)

S600 (600 RPM for facing brass with carbide)
F40.0 (600 RPM x 9 teeth x 0.008 inches/tooth = 43.2 IPM)

G00 X1.5 Y2.1 Z7.0 (rapid to right rear of part with safe Z distance)
G00 Z.75
G00 Z0
M03 (spindle on clockwise rotation)
M08 (cooleant on)

G00 Z.490 (start thicknessing, most stock was already squared to less than .500)
G01 Y-2.1 (climb mill through top face of part moving cutter front to back)
G00 Y2.1 Z.5

G00 Z.390
G01 Y-2.1
G00 Y2.1 Z.400

(finishing pass, half the feed rate)
F26.1 (600 RPM x 9 teeth x 0.004 inches/tooth = 26.1 IPM)
(.370 + .015 = .385 MMC thickness for small jaw)
G00 Z.385
G01 Y-2.1
G00 Z1.5 M05 (back off and stop)
M09
G00 X0 Y0 Z7.0 (center and raise higher for clearance)
G53 G00 Y0 (bring vise forward to absolute Y zero)
M01 (Optional stop, measure thickness of small jaw)

(=========== Drill Holes in Small Jaw ==========)
S800 (800 is good for 5/16 and brass)
T02 M06 (Change to spot drill)
G43 H2
G00 X0 Y0 Z7.0 (rapid to center/top of part with safe Z distance)
G00 Z1.5
M03 (spindle on clockwise rotation)
M08 (cooleant on)
G00 Z.400
G01 Z.285 F4.0 (spot hole plus extra for small chamfer .385 - .100)
G00 Z1.5 M05 (back off and stop)
M09

G00 Z7.0 (safe height)
T03 M06 (Change to 5/16 Drill)
G43 H3
G00 X0 Y0 Z7.0 (rapid to center/top of part with safe Z distance)
G00 Z1.0
M03 (spindle on clockwise rotation)
M08 (cooleant on)
G00 Z.400 (close height)
G01 Z-0.100 F4.0
G00 Z1.5 M05 (back off and stop)
M09

G00 Z7.0 (raise higher for clearance)
G53 G00 Y0 (bring vise forward to absolute Y zero)
M01 (Optional stop, flip part to chamfer reverse side)

(=== Chamfer reverse side of small jaw ===)
T02 M06 (Change to spot drill)
G43 H2
G00 X0 Y0 Z7.0 (rapid to center/top of part with safe Z distance)
G00 Z1.0
M03 (spindle on clockwise rotation)
M08 (cooleant on)
G00 Z.400 (close height)
G01 Z.285 F4.0 (spot hole plus extra for small chamfer .385 - .100)
G00 Z1.5 M05 (back off and stop)
M09

G00 Z7.0 (raise higher for clearance)
G53 G00 Y0 (bring vise forward to absolute Y zero)
M02 (Program end)
%