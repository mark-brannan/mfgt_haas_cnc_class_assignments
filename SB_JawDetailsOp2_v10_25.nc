%
O14207 (Solace SClampChamferJawsOp2 v10_25)
(Solace Brannan #42 - MFGT 106 Fall 2025)
("Scissors Clamp Jaws Op.2 - Chamfers and details")
G17 G20 G40 G80 G90 G94 (Safe line)
G54 (fixture offset)
T1 M06
G43 H1 
S1000
F4.0
(zero from the center and surface of part - deviating from planning sheet!)
(Orient large or small jaw with the long .75 inch edge parallel to X axis)
(Use the probe to do center of rectangle and top of part for Z0)
(============== Chamfer jaw face with the center groove ==============)
G00 X0 Y0 Z7.0 (rapid to center/top of part with safe Z distance)
G00 X-0.375 Y-0.375 Z.75
M03 
M08 (coolant on)
G01 Z-0.06 (nominal chamfer depth for edges is .060)
G01 Y.375 (cut across left side, front to back)
G00 Z.100
G00 X.375 Y.375
G01 Z-0.06
G01 Y-.375 (cut across right side, back to front)
G00 Z.1
G00 X.390 Y0 (rapid to right side of part and on Y center line)
G01 Z-0.10 (nominal chamfer depth for center groove is .10)
G01 X-.390 (cut across center from right to left)
G00 Z.1
M05 (spindle stop)
M09 (coolant off)
G00 X0 Z7.0 (center and raise for clearance)
G53 G00 Y0 (bring vise forward to absolute Y zero)

M01 (Optional stop, flip part to chamfer reverse side)

(============== Chamfer jaw face without center groove ==============)
G00 X0 Y0 Z7.0 (rapid to center/top of part with safe Z distance)
G00 X-0.375 Y-0.375 Z.75
M03 
M08 (coolant on)
G01 Z-0.06 (nominal chamfer depth for edges is .060)
G01 X-0.375 Y.375 (cut across left side, front to back)
G00 Z.100
G00 X.375 Y.375
G01 Z-0.06
G01 Y-.375 (cut across right side, back to front)
G00 Z.100 
M05 (spindle stop)
M09 (coolant off)
G00 X0 Z7.0 (center and raise for clearance)
G53 G00 Y0 (bring vise forward to absolute Y zero)

M30 
%