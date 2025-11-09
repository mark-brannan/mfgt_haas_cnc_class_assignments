%
O14208 (Solace ViseStopRails v11_06)
(Solace Brannan #42 - MFGT 105 Summer/Fall 2025)
("Vise stop rails - remaking my 105 project")
(material is .375 or .25 SS round stock)
G50 S2000 (Spindle cap speed)
G20
G54

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
G00 X0.270 (Rapid X to large diameter on print 0.25 + 0.02 for finish facing pass <- noop?>) 
G01 Z-1.570 (Move Z the length of your part 1.30 + the part off tool .25 + 0.02)
G01 X0.385 (Move X to .01 bigger than the stock)
G00 Z0.050 (Rapid Z to 0.050 in front of part)
G00 X0.243 (Rapid X to the middle diam on print .238 + 0.005)
G01 Z-0.300 (Move Z the length of the small/mid diam section)
G00 X0.243 (Rapid X to the small diam on print .236 and .237 + 0.005)
G01 Z-0.100 (Move Z the length of the small/mid diam section)
G01 X0.385 (Move X to .01 bigger than the stock)
G00 Z0.050 (Rapid Z to 0.050 in front of part)
G01 X0.385 (back off X)
M09
G00 X5.0 Z7.0
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
G01 X0.2369 (Move X to small diam limits .236 and .237 -> .2369 )
G01 Z-0.10 (Move Z the length of the small slip fit section)
G01 X0.240 (Move X to middle diameter .238 + 0.002 for press fit within tolerance)
G01 Z-1.160 (Move Z the length of the part .890 + the part off tool width .25 + 0.02 for finish facing pass)
G01 X0.385 (back off X)
M09
G00 X5.0 Z7.0
M01 (Optional stop)

T0300 (Part off tool)
T0303
G00 X.750 Z.750 (Rapid to safe start position)
G00 X0.385 Z0.100 (Rapid close to stock surface)
G96 S150 M03
F0.002 (Feed rate for part off)
M08
G00 Z-1.160 (Rapid Z the length of your part .890 + the part off tool width .25 + 0.02 for finish facing pass)
G00 X0.330 (Rapid X to 0.02 bigger than the large diameter)
G01 X-0.100 (part off)
G01 X0.385 (back off X)
M09
G00 X5.0 Z7.0

M05 (Spindle Stop)
M02 (Program End)
%
