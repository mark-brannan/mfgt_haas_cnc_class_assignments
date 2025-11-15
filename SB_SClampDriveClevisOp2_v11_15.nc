%
O14214 (Solace SClampDriveClevisOp2 v11_15)
(Solace Brannan #42 - MFGT 106 Fall 2025)
("Scissors Clamp - Drive Clevis Op.2")
(material is .75 diameter brass stock)
("120329-4 Op2 shortens to final length and installs .309 diameter end of part")
G50 S2000 (Spindle cap speed)
G20
G54

G00 X4.0 Z4.0 (safe for tool change)
T0100 (Roughing tool)
T0101
G00 X1.500 Z.750 (Rapid to safe start position)
G00 X0.777 Z0.300 (Rapid close-ish to stock surface, for shortening passes)
M08
F0.006 (feed rate for roughing)
G97 S400 M03 (constant spindle speed for rough facing along Z)
(Move Z to 0.200 in front of part for rough face removal)
G01 Z0.200
G01 X-0.010
G00 X0.777 Z0.250
G01 Z0.100
G01 X-0.010
G00 X0.777 Z0.150

G01 Z0.010 (Move Z to 0.010 in front of part for rough face)
G01 X-0.100 (Move X to -0.1 to face part @Z=0.010)
G00 Z0.050 (Rapid Z to .05 in front of part)
G96 S250 M03 (variable spindle speed for axial roughing along Z)
(no roughing pass for large diam since already in .020 of stock diam)
(take multiple .075 passes off to approach small diameter)
(multiple Z passes along small diameter .120 - .020 for finish facing)
G00 X0.675
G01 Z-0.100
G00 X0.695 Z0.020
G00 X0.600
G01 Z-0.100
G00 X0.620 Z0.020
G00 X0.525
G01 Z-0.100
G00 X0.545 Z0.020
G00 X0.450
G01 Z-0.100
G00 X0.470 Z0.020
G00 X0.329
G01 Z-0.100
G00 X0.777 Z.020
G00 Z-0.115 (move Z .015 further down to do inner rough facing)
F0.001 (nicer roughing feed rate)
G01 X0.329 (rough facing pass on inner diameter to help avoid tool marks)
G01 X0.777 (back off X only, slowly)
M05
M09
G00 X4.0 Z4.0
M01 (Optional stop)

T0200 (Finish tool)
T0202
G00 X.750 Z.750 (Rapid to safe start position)
G00 X0.777 Z0.100 (Rapid close to stock surface)
M08
G96 S225 M03
F0.001 (feed rate for finishing)
G01 Z0 (Move Z to 0)
G01 X-0.100 (Move X to -0.1 to face finish the part @Z=0)
G00 X0.309 (Rapid X to the small diameter on print .309)
G01 Z-0.120 (Move Z the length of the small diameter .120)
G01 X0.329 Z-0.115 (back off slightly to have clearance)
G00 X.777
G00 Z-0.120 (prepare to do cleanup finishing pass on inner face)
G01 X0.309
G01 X.735 (Move X to large diameter)
G01 X.7351 Z-0.1201 (slight lift to blend the large diameters)
G01 X0.777 (back off X only, slowly)
M05
M09
G00 X4.0 Z4.0

M02 (Program End)
%
