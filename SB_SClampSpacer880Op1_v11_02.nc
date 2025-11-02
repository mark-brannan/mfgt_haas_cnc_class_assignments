%
O14212 (Solace SClampSpacer880Op1 v11_02)
(Solace Brannan #42 - MFGT 106 Fall 2025)
("Scissors Clamp - Spacer-.880 Op.1")
(material is .375 SS round stock)
(lengths: total=.880, large=.380, middle=.250, small=0.040 TYP)
(diameters: large=.310, middle=.192, small=.180)
G50 S4000 (Spindle cap speed)
G20

T0100 (Roughing tool)
T0101
G00 X.750 Z.750 (Rapid to safe start position)
G00 X0.385 Z0.100 (Rapid close to stock surface)
G96 S225 M03
F0.006 (feed rate for roughing)
M08
G01 Z0.010 (Move Z to 0.010 in front of part for rough face)
G01 X-0.100 (Move X to -0.1 to face part @Z=0.010)
G00 Z0.050 (Rapid Z to .05 in front of part)
G00 X0.330 (Rapid X to large from print + 0.02 for finish facing pass) 
G01 Z-1.150 (Move Z the length of your part .880 + the part off tool .25 + 0.02)
G01 X0.385 (Move X to .01 bigger than the stock)
G00 Z0.050 (Rapid Z to 0.050 in front of part)
G00 X0.212 (Rapid X to the middle diam on print .192 + 0.02)
G01 Z-0.230 (Move Z the length of the small/mid diam shoulder .250 - .02 for filet)
G01 X0.385 (back off X)
M09
G00 X7.0 Z7.0
M01 (Optional stop)

T0200 (Finish tool)
T0202
G00 X.750 Z.750 (Rapid to safe start position)
G00 X0.385 Z0.100 (Rapid close to stock surface)
G96 S225 M03
F0.004 (feed rate for finishing)
M08
G01 Z0 (Move Z to 0)
G01 X-0.100 (Move X to -0.1 to face part @Z=0)
G01 X0.120 (Move X to small diam .180 - 0.060 for the 0.015 R TYP filet)
G03 X0.180 Z-0.030 R0.030 (Move X to small diam, Move Z to -0.030 for the radius of 0.030)
G01 Z-0.040 (Move Z to length of small .040 TYP)
G01 X0.192 (Move X to middle .192)
G01 Z-0.250 (Move Z the length of middle, .015 TYP filet naturally created by tool nose radius)
G01 X.250 (Move X to large .310 – 0.060 in prep for 0.015 R TYP filet from middle to large)
G03 X.310 Z-0.280 R0.030 (swing around radius of 0.030 for the 0.015 TYP filet from middle to large)
G01 Z-1.150 (Move Z the length of the part .880 + the part off tool width .25 + 0.02 for finish facing pass)
G01 X0.385 (back off X)
M09
G00 X7.0 Z7.0
M01 (Optional stop)

T0300 (Part off tool)
T0303
G00 X.750 Z.750 (Rapid to safe start position)
G00 X0.385 Z0.100 (Rapid close to stock surface)
G96 S150 M03
F0.002 (Feed rate for part off)
M08
G00 Z-1.150 (Rapid Z the length of your part .880 + the part off tool width .25 + 0.02 for finish facing pass)
G00 X0.330 (Rapid X to 0.02 bigger than the large diameter)
G01 X-0.100 (part off)
G01 X0.385 (back off X)
M09
G00 X7.0 Z7.0

M05 (Spindle Stop)
M02 (Program End)
%