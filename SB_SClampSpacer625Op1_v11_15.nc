%
O14209 (Solace SClampSpacer625Op1 v11_15)
(Solace Brannan #42 - MFGT 106 Fall 2025)
("Scissors Clamp - Spacer-.625 Op.1")
(material is .375 SS round stock)
(lengths: total=.625, large=.380, middle=.120, small=0.040 TYP)
(diameters: large=.310, middle=.192, small=.180)
G50 S2000 (Spindle cap speed)
G20
G54

G00 X3.0 Z3.0 (safe for tool change)
T0100 (Roughing tool)
T0101
G00 X.750 Z.750 (Rapid to safe start position)
G00 X0.385 Z0.100 (Rapid close to stock surface)
M08
F0.006 (feed rate for roughing)
G97 S400 M03 (constant spindle speed for rough facing along Z)
G01 Z0.010 (Move Z to 0.010 in front of part for rough face)
G01 X-0.050 (Move X just past zero to face part @Z=0.010)
G00 X0.330 (Rapid X to large from print + 0.02 for finish facing pass)
G96 S250 M03 (variable spindle speed for axial roughing along Z)
G01 Z-0.770 (slow .625 + .125 + 0.02 finish + .100 fudge)
G00 X0.385
G00 Z0.050
G00 X0.212 (Rapid X to the middle diam on print .192 + 0.02)
G01 Z-0.100 (Move Z the length of the small/mid diam shoulder .120 - .02 for filet)
G01 X0.385 (back off X)
M05
M09
G00 X3.0 Z3.0
M01 (Optional stop)

T0200 (Finish tool)
T0202
G00 X.750 Z.750 (Rapid to safe start position)
G00 X0.385 Z0.100 (Rapid close to stock surface)
M08
G96 S225 M03
F0.001 (feed rate for finishing)
G01 Z0 (Move Z to 0)
G01 X-0.050 (Move X just past zero to face part @Z=0)
G01 X0.120 (Move X to small diam .180 - 0.060 for the 0.015 R TYP filet)
G03 X0.180 Z-0.030 R0.030 (swing X to small diam, Z to -0.030 for 0.030 radius)
G01 Z-0.040 (Move Z to length of small .040 TYP)
G01 X0.192 (Move X to middle .192)
(Move Z length of middle, .015 TYP filet caused by tool nose radius)
G01 Z-0.120
(Move X to large .310 - 0.060 in prep for 0.015 R TYP filet)
G01 X.250
(swing around 0.030 radius for 0.015 TYP filet from mid to large)
G03 X.310 Z-0.150 R0.030
G01 Z-0.770 (slow .625 + .125 + 0.02 finish + .100 fudge)
G01 X0.385 (back off X)
M05
M09
G00 X3.0 Z3.0
M01 (Optional stop)

T0300 (Part off tool)
T0303
G00 X.750 Z.750 (Rapid to safe start position)
G00 X0.385 Z0.100 (Rapid close to stock surface)
M08
G97 S250 M03 (constant spindle rpm to compensate poor quality part off tool)
G00 Z-0.770 (Rapid Z .625 + .125 + 0.02 finish + .100 fudge)
F0.010 (fast feed through space to near large diameter)
G01 X0.330 (feed to X to 0.02 bigger than the large diameter)
F0.003 (Feed rate for part off)
G01 X0.275 (shallow cut)
G00 X0.330 (back out)
G01 X0.175
G00 X0.275 (back out)
G01 X0 (part off, don't go past center)
G00 X0.385 (back off X)
M05
M09
G00 X3.0 Z3.0

M02 (Program End)
%