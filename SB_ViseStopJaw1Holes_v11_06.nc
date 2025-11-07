%
O14208 (Solace ViseStopJaw1Holes v11_06)
(Solace Brannan #42 - MFGT 105 Summer/Fall 2025)
("Vise stop jaws - remaking my 105 project")
(material mild steel = major dimensions are 1.25 x .55 x .70)

G17 G20 G40 G80 G90 G94 (Safe line)
G54 (fixture offset)

(Y centerline to edge is 0.3575, + .1075 -> 0.465, /2 -> 0.2325, - .3575 -> .125 hole center from edge)
T1 (spot drill)
G43 H1
S850
F2.55 
M03 (spindle on clockwise rotation)
M08 (cooleant on)

G00 X0 Y0 Z7.0
G00 Y0.125 Z0.25

G01 Z-0.100
G00 Z0.25

G00 X-0.400
G01 Z-0.100
G00 Z0.25

G00 X0.400
G01 Z-0.100
G00 Z0.25

M05 (spindle stop)
M09 (coolant off)
G00 Z7.0 (raise for clearance)
G53 G00 Y0 Z0 (bring vise forward to absolute Y zero, spindle to absolute Z zero)
M01 (Optional stop)

T2 (0.33 drill +/-0.15 -> 21/64, Q or R)
G43 H2
S850
F5.1
M03 (spindle on clockwise rotation)
M08 (cooleant on)

G00 X0 Y.125 Z7.0
G00 Z0.25
G01 Z-0.550
G00 Z0.25

T3 (1/4 drill)
G43 H3
S1400
F3.1
M03 (spindle on clockwise rotation)
M08 (cooleant on)

G00 X0 Y.125 Z7.0
G00 X-0.400 Z0.25
G01 Z-0.550
G00 Z0.25

G00 X0.400
G01 Z-0.550
G00 Z0.25

M05 (spindle stop)
M09 (coolant off)
G00 X0 Z7.0 (raise for clearance)
G53 G00 Y0 Z0 (bring vise forward to absolute Y zero, spindle to absolute Z zero)

M05 (Spindle Stop)
M02 (Program End)
%