%
O14211 (Solace SClampDriveClevisOp1 v11_09)
(Solace Brannan #42 - MFGT 106 Fall 2025)
("Scissors Clamp - Drive Clevis Op.1")
(material is .75 diameter brass stock)
("120329-4 Op1 installs .735 and .309 diameters, then part off 0.93 long")
G50 S2000 (Spindle cap speed)
G20
G54

G00 X5.0 Z5.0 (safe for tool change)
T0100 (Roughing tool)
T0101
G00 X1.500 Z.750 (Rapid to safe start position)
G00 X0.777 Z0.100 (Rapid close to stock surface)
F0.006 (feed rate for roughing)
M08
G97 S400 M03 (constant spindle speed for rough facing along Z)
G01 Z0.010 (Move Z to 0.010 in front of part for rough face)
G01 X-0.100 (Move X to -0.1 to face part @Z=0.010)
G00 Z0.050 (Rapid Z to .05 in front of part)
G96 S250 M03 (variable spindle speed for axial roughing along Z)
(no roughing pass for large diameter since it is already within .020 of the stock diameter)
(take multiple .075 passes off to approach small diameter)
(On each pass move Z the length of the small diameter .120 - .005 for finish facing)
G00 X0.675
G01 Z-0.115
G00 X0.695 Z0.050
G01 X0.600
G01 Z-0.115
G00 X0.620 Z0.050
G01 X0.525
G01 Z-0.115
G00 X0.545 Z0.050
G01 X0.450
G01 Z-0.115
G00 X0.470 Z0.050
G01 X0.329
G01 Z-0.115
G00 X0.777 Z0.050
M05
M09
G00 X5.0 Z5.0
M01 (Optional stop)
G96 S225 M03

T0200 (Finish tool)
T0202
G00 X.750 Z.750 (Rapid to safe start position)
G00 X0.777 Z0.100 (Rapid close to stock surface)
G96 S225 M03
F0.001 (feed rate for finishing)
M08
G01 Z0 (Move Z to 0)
G01 X-0.100 (Move X to -0.1 to face finish the part @Z=0)
G00 X0.309 (Rapid X to the small diameter on print .309)
G01 Z-0.120 (Move Z the length of the small diameter .120)
G01 X.735 (Move X out slowly to large diameter, cleaning the face)
G00 Z-1.075 (Rapid Z to .930 + .125 + .020)
G01 X0.777 (back off X)
M05
M09
G00 X5.0 Z5.0
M01 (Optional stop)

T0300 (Part off tool)
T0303
G00 X.750 Z.750 (Rapid to safe start position)
G00 X0.777 Z0.100 (Rapid close to stock surface)
G97 S250 M03 (constant spindle rpm to compensate poor quality part off tool)
F0.001 (Feed rate for part off)
M08
G00 Z-1.075 (Rapid Z to .930 + .125 + .020)
G00 X0.755 (Rapid X to 0.02 bigger than the large diameter)
G01 X0.700 (shallow cut)
G00 X0.755 (back out)
G01 X0.600
G00 X0.755
G01 X0.400
G00 X0.450
G01 X0.250
G00 X0.300
G01 X0 (part off, don't go past center)
G01 X0.777 (back off X)
M05
M09
G00 X5.0 Z5.0

M02 (Program End)
%
