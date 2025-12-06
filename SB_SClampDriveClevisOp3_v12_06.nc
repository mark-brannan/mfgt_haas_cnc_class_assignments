%
O14217 (Solace SClampDriveClevisOp3 v12_06)
(Solace Brannan #42 - MFGT 106 Fall 2025)
("Scissors Clamp Drive Clevis - Op.3")
(mill one flat side, to .695 thickness, overall - Z zero from bottom of parallels)
(drill 0.3125 5/16 hole and then tap ".375-16 UNC 2b THRU")

G17 G20 G40 G80 G90 G94 (Safe line)
G54 (fixture offset)

(=========== Thicknessing one flat side ==========)
T1 M06 (Change to face mill, 4", < 1.625 offset from center hold to edge of material)
G43 H1 (tool length offset, measured from top of parallels, bottom of part)

S600 (600 RPM for facing brass with carbide)
F40.0 (600 RPM x 9 teeth x 0.008 inches/tooth = 43.2 IPM)

G00 X1.5 Y2.1 Z7.0 (rapid to right rear of part with safe Z distance)
G00 Z.75
M08 (cooleant on)
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
S800 (800 is good for 5/16 and brass)
T02 M06 (Change to spot drill)
G43 H2
G00 X0 Y0 Z7.0 (rapid to center/top of part with safe Z distance)
G00 Z1.5
M08 (cooleant on)
M03 (spindle on clockwise rotation)
G00 Z.700
G01 Z.695 F4.0 (spot hole plus extra for small chamfer .695 - .100)
G00 Z1.5 M05 (back off and stop)
M09
G00 Z7.0 (raise higher for clearance)
G53 G00 Y0 (bring vise forward to absolute Y zero)
M01 (Optional stop, check center)

T03 M06 (Change to 5/16 Drill)
G43 H3
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
M01 (Optional stop, check hole goes through cleanly)

(=========== Tap threads ==========)
T05 M06
G43 H3
G00 X0 Y0 Z7.0 (rapid to center/top of part with safe Z distance)
G00 Z1.0
(brass tapping: 60-100 SFM, 600-100 RPM for .375 tapped hole)
S600
M08 (cooleant on)
M03 (spindle on clockwise rotation)
G00 Z.700 (close height)
(F = RPM/TPI = 600/16 =  37.5)
G84 Z-.100 R0.1 F37.5 (canned cycle to tap hole )
G80
G00 Z1.5 M05 (back off and stop)
M09

(=========== Tap threads ==========)
M01 (Optional stop, check threads...)

G84
M02 (Program end)
%