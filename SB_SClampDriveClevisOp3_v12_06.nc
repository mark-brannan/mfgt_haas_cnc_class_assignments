%
O14217 (Solace SClampDriveClevisOp3 v12_06)
(Solace Brannan #42 - MFGT 106 Fall 2025)
("Scissors Clamp Drive Clevis - Op.3")
(mill one flat side, to .695 thickness, overall - Z zero from bottom of parallels)
(drill 0.3230 hole and then tap ".375-16 UNC 2b THRU")

G17 G20 G40 G80 G90 G94 (Safe line)
G54 (fixture offset)

(=========== Thicknessing one flat side ==========)
T1 M06 (Change to face mill, 4", < 1.625 offset from center hold to edge of material)
G43 H1 (tool length offset, measured from top of parallels, bottom of part)

S600 (600 RPM for facing brass with carbide)
F40.0 (600 RPM x 9 teeth x 0.008 inches/tooth = 43.2 IPM)

G00 X1.5 Y2.1 Z7.0 (rapid to right rear of part with safe Z distance)
G00 Z.75
M08 (coolant on)
M03 (spindle on clockwise rotation)

G00 Z.700 (.735 nominal diameter of part, leave .005 for finish)
G01 Y-2.1 (climb mill through top face of part moving cutter front to back)
G00 Y2.1 Z.750

G00 Z.695
G01 Y-2.1
G00 Y2.1 Z.750
G00 Z1.5 M05 (back off and stop)
M09
G00 X0 Y0 Z7.0 (center and raise higher for clearance)
G53 G00 Y0 (bring vise forward to absolute Y zero)
M01 (Optional stop, measure thickness)

(=========== Drill Holes ==========)
S800 (800 is good for .3230 and brass)
T02 M06 (Change to spot drill)
G43 H2
G00 X0 Y0 Z7.0 (rapid to center/top of part with safe Z distance)
G00 Z1.5
M08 (coolant on)
M03 (spindle on clockwise rotation)
G00 Z.710
 (spot hole plus extra for sharp chamfer, 40 deg, to help tap)
G01 Z.495 F4.0 (use the full full depth of spot drill tip .200: .695 - .200 = .495)
G00 Z1.5 M05 (back off and stop)
M09
G00 Z7.0 (raise higher for clearance)
G53 G00 Y0 (bring vise forward to absolute Y zero)
M01 (Optional stop, check center)

T03 M06 (Change to .3230 Drill)
G43 H3
G00 X0 Y0 Z7.0 (rapid to center/top of part with safe Z distance)
G00 Z1.0
M08 (coolant on)
M03 (spindle on clockwise rotation)
G00 Z.710 (close height)
G01 Z-0.200 F4.0
G00 Z1.5 M05 (back off and stop)
M09

G00 Z7.0 (raise higher for clearance)
G53 G00 Y0 (bring vise forward to absolute Y zero)
M01 (Optional stop, check hole goes through cleanly)

(=========== Tap threads ==========)
T05 M06 (3/8 .375 tap)
G43 H5
G00 X0 Y0 Z7.0 (rapid to center/top of part with safe Z distance)
G00 Z.750 (close height)
G01 Z.700 F8. (feed closer in prep for canned cycle)
G04 P1.0 (dwell briefly to visually check if tap holder is will make contact/compress)
(brass tapping: 60-100 SFM, 600-100 RPM for .375 tapped hole: 3.8 * 60 / .375 = 608)
(alt suggested for steel to ensure a slow target feed: 16 TPI -> 10 ipm * 16 = 160 RPM)
(For G84 canned cycle @600 RPM: F = RPM/TPI = 600/16 = 37.5)
(but going slower with a target of 15ipm: 15 * 16 = 240 RPM)
M08 (coolant on; but probably not needed)
G84 Z-.425 R0.2 F15.0 S240 (canned cycle to tap thru hole)
G80
M09
G00 Z7.0 (raise higher for clearance)
G53 G00 Y0 (bring vise forward to absolute Y zero)

M02 (Program end)
%