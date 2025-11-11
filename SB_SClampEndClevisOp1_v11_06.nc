%
O14215 (Solace SClampEndClevisOp1 v11_06)
(Solace Brannan #42 - MFGT 106 Fall 2025)
("Scissors Clamp - End Clevis Op.1")
(material is .75 diameter brass stock)
("120329-8 Op1 installs .735 and .309 diameters then part off 0.67 long")
G50 S2000 (Spindle cap speed)
G20
G54

T0100 (Roughing tool)
T0101
G00 X1.500 Z.750 (Rapid to safe start position)
G00 X0.777 Z0.100 (Rapid close to stock surface)
M08
G96 S225 M03
F0.006 (feed rate for roughing)

G01 Z0.010 (Move Z to 0.010 in front of part for rough face)
G01 X-0.100 (Move X to -0.1 to face part @Z=0.010)
G00 Z0.050 (Rapid Z to .05 in front of part)
(no roughing pass for large diameter since it is already within .020 of the stock diameter)
(take multiple .075 passes off to approach small diameter)
(On each pass move Z the length of the small diameter .125 TYP - .005 for finish facing)
G01 X0.675
G01 Z-0.120
G00 X0.695 Z0.050
G01 X0.600
G01 Z-0.120
G00 X0.620 Z0.050
G01 X0.525
G01 Z-0.120
G00 X0.545 Z0.050
G01 X0.450
G01 Z-0.120
G00 X0.470 Z0.050
G01 X0.329
G01 Z-0.120
G00 X0.777 Z0.050
M05
M09
G00 X5.0 Z5.0
M01 (Optional stop)

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
G01 Z-0.125 (Move Z the length of the small diameter .125 TYP)
G01 X.735 (Move X to large diameter)
G01 Z-0.920 (Move Z to .670 + the width of part off tool .25)
G01 X0.777 (back off X)
M05
M09
G00 X5.0 Z5.0
M01 (Optional stop)

T0300 (Part off tool)
T0303
G00 X.750 Z.750 (Rapid to safe start position)
G00 X0.777 Z0.100 (Rapid close to stock surface)
G96 S150 M03
F0.002 (Feed rate for part off)
M08
G01 Z-0.920 (Move Z to .670 + the width of part off tool .25)
G00 X0.755 (Rapid X to 0.02 bigger than the large diameter)
G01 X-0.100 (part off)
G01 X0.777 (back off X)
M05
M09
G00 X5.0 Z5.0

M02 (Program End)
%
