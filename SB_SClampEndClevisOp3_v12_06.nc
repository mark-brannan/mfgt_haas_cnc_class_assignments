%
O14218 (Solace SClampEndClevisOp3 v12_06)
(Solace Brannan #42 - MFGT 106 Fall 2025)
("Scissors Clamp End Clevis - Op.3")
("mill two flat sides, to .695 thickness, overall - Z zero from bottom of parallels")
("drill .250 diameter hole +.003 / -.000 -> .253 MMC")

G17 G20 G40 G80 G90 G94 (Safe line)
G54 (fixture offset)

(=========== Thicknessing first side ==========)
T1 M06 (Change to face mill, 4", < 1.625 offset from center hold to edge of material)
G43 H1 (tool length offset, measured from top of parallels, bottom of part)

S600 (600 RPM for facing brass with carbide)
F40.0 (600 RPM x 9 teeth x 0.008 inches/tooth = 43.2 IPM)

G00 X1.5 Y2.1 Z7.0 (rapid to right rear of part with safe Z distance)
G00 Z.75
M03 (spindle on clockwise rotation)
M08 (cooleant on)

 (.735 nominal diameter of part - .695 final thickness = .040 to remove total)
 (remove .020 from first side with .005 finish pass, and remainder after drilling holes)
G00 Z.715 (.735 - 0.020 + .005 = .710)
G01 Y-2.1 (climb mill through top face of part moving cutter front to back)
G00 Y2.1 Z.750

G00 Z.710
G01 Y-2.1
G00 Y2.1 Z.750
G00 Z1.5 M05 (back off and stop)
M09
G00 X0 Y0 Z7.0 (center and raise higher for clearance)
G53 G00 Y0 (bring vise forward to absolute Y zero)
M01 (Optional stop, measure thickness)

(=========== Drill Holes ==========)
S800 (800 is good for 5/16 and brass)
T02 M06 (Change to spot drill)
G43 H2
G00 X0 Y0 Z7.0 (rapid to center/top of part with safe Z distance)
G00 Z1.5
M08 (cooleant on)
M03 (spindle on clockwise rotation)
G00 Z.700
G01 Z.595 F4.0 (spot hole plus extra for small chamfer .695 - .100)
G00 Z1.5 M05 (back off and stop)
M09
M01 (Optional stop, check center)
G00 Z7.0 (raise higher for clearance)
G53 G00 Y0 (bring vise forward to absolute Y zero)

T03 M06 (Change to .250 Drill)
G43 H4
G00 X0 Y0 Z7.0 (rapid to center/top of part with safe Z distance)
G00 Z1.0
M08 (cooleant on)
M03 (spindle on clockwise rotation)
G00 Z.700 (close height)
G01 Z-0.100 F4.0
G00 Z1.5 M05 (back off and stop)
M09

G00 Z7.0 (raise higher for clearance)
G53 G00 Y0 (bring vise forward to absolute Y zero)
M01 (Optional stop, flip part, small loss of X Y zero is ok)

(=========== Finish thicknessing oposite side ==========)
T1 M06 (Change to face mill, 4", < 1.625 offset from center hold to edge of material)
G43 H1 (tool length offset, measured from top of parallels, bottom of part)

S600 (600 RPM for facing brass with carbide)
F40.0 (600 RPM x 9 teeth x 0.008 inches/tooth = 43.2 IPM)

G00 X1.5 Y2.1 Z7.0 (rapid to right rear of part with safe Z distance)
G00 Z.75
M08 (cooleant on)
M03 (spindle on clockwise rotation)

G00 Z.700 (leave .005 for finish)
G01 Y-2.1 (climb mill through top face of part moving cutter front to back)
G00 Y2.1 Z.750

G00 Z.695 (finish pass)
G01 Y-2.1
G00 Y2.1 Z.750
G00 Z1.5 M05 (back off and stop)
M09
G00 X0 Y0 Z7.0 (center and raise higher for clearance)
G53 G00 Y0 (bring vise forward to absolute Y zero)
M01 (Optional stop, measure thickness)

M02 (Program end)
%