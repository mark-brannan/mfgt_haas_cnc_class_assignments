%
O14208 (Solace ViseStopJawSlot v11_06)
(Solace Brannan #42 - MFGT 105 Summer/Fall 2025)
("Vise stop jaws - remaking my 105 project")
(material mild steel = major dimensions are 1.25 x .55 x .70)

G17 G20 G40 G80 G90 G94 (Safe line)
G54 (fixture offset)

T1 (switch to end mill)
G43 H1

G00 X0 Y0 Z7.0

(MMC for X distance will be 0.6325 from centerline, for Y 0.3575)
(shelf feature is .10 off from Y centerline: .70 / 2 - .45, or .1075 MMC)
(Y distance from center with .5 cutter is .1075 + .25 = .3575 )
G00 X-1.5 Y0.750
M03 (spindle on clockwise rotation)
M08 (cooleant on)
G00 Z0.25

S2700
F42.0
G01 Z0 Y0.488
G01 Z-0.095
G01 X-0.895
G01 X0.895
G00 Y0.500 X-0.895
G01 Y0.488 Z-0.190
G01 X0.895
G00 Y0.500 X-0.895
G01 Y0.488 Z-0.280
G01 X0.895

G01 Z0 Y0.388
G01 Z-0.095
G01 X-0.895
G01 X0.895
G00 Y0.400 X-0.895
G01 Y0.388 Z-0.190
G01 X0.895
G00 Y0.400 X-0.895
G01 Y0.388 Z-0.280
G01 X0.895

S3600
F5.0
G01 Y0.3575 Z-0.300
G01 X0.895

M05 (spindle stop)
M09 (coolant off)
G00 X0 Z7.0 (raise for clearance)
G53 G00 Y0 Z0 (bring vise forward to absolute Y zero, spindle to absolute Z zero)
M02 (Program End)
%