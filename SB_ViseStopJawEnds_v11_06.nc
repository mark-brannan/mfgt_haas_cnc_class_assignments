%
O14208 (Solace ViseStopJawEnds v11_06)
(Solace Brannan #42 - MFGT 105 Summer/Fall 2025)
("Vise stop jaws - remaking my 105 project")
(material mild steel = major dimensions are 1.25 x .55 x .70 +/- .015)
(This operation is just rough dimensioning of the ends with one side clean finish)
(MMC for X distance will be 0.6325 from centerline, for Y 0.3575)

G17 G20 G40 G80 G90 G94 (Safe line)
G54 (fixture offset)

T1 (switch to end mill)
G43 H1
S2700 (350 x 3.82 / .5 = 2674)
F42.0 (0.004 FPT x 2700 x 4 = 43.2 IPM)

G00 X0 Y0 Z7.0
M03 (spindle on clockwise rotation)
M08 (cooleant on)
G00 X1.25 Y0.75 Z0.25
(G00 Y0.6075)

(fast feed rate with higher axial depth of cut, .185, and moderate radial depth of cut, .115)
G01 X1.135 Y-0.75 Z-0.185
G00 X1.140 Y0.75
G01 X1.135 Y-0.75 Z-0.365
G00 X1.140 Y0.75
G01 X1.135 Y-0.75 Z-0.565
G00 X1.140 Y0.75 Z0

G01 X1.020 Y-0.75 Z-0.185
G00 X1.025 Y0.75
G01 X1.020 Y-0.75 Z-0.365
G00 X1.025 Y0.75
G01 X1.020 Y-0.75 Z-0.575
G00 X1.025 Y0.75 Z0

G01 X0.905 Y-0.75 Z-0.185
G00 X0.910 Y0.75
G01 X0.905 Y-0.75 Z-0.365
G00 X0.910 Y0.75
G01 X0.905 Y-0.75 Z-0.575
G00 X0.910 Y0.75 Z0

S3600
F5.0
G01 X0.900 Z-0560 
G01 Y-0.75

M05 (spindle stop)
M09 (coolant off)
G00 X0 Z7.0 (raise for clearance)
G53 G00 Y0 Z0 (bring vise forward to absolute Y zero, spindle to absolute Z zero)
M02 (Program End)
(flip part and repeat with a .005 shift in X for a finish pass other end)
%