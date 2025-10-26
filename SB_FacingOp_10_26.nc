%
O14220 (Solace basic facing operation v10_26)
(This program assumes you have both work offset and tool offsets set correctly)
(The work offset should zero X Y at aprox center and Z at rough work surface)
(The tool offset should be for a facing mill, or here the 4 inch shell mill)
G17 G20 G40 G80 G90 G94 (Safe line)
G54 (fixture offset)
T1 M06 
G43 H1 
S600 (600 RPM for facing brass with carbide)
F40.0 (600 RPM x 9 teeth x 0.008 inches/tooth = 43.2 IPM)
G00 X1.5 Y2.1 Z7.0 (rapid to right rear of part with safe Z distance)
G00 Z.75
G00 Z0
M01 (Optional stop, visually check the distance to the work surface)
M03 (spindle on clockwise rotation)
M08 (cooleant on)
G01 Z-0.100 (first pass 100 thou)
G01 Y-2.1 (climb mill through top face of part moving cutter front to back)
G00 Y2.1 Z.200 (back off and rapid return Y to start position)
(finishing pass, half the feed rate)
F26.1 (600 RPM x 9 teeth x 0.004 inches/tooth = 26.1 IPM)
G01 Z-0.102 (finishing pass 2 thou more)
G01 Y-2.1
G00 Z.75 M05 (back off and stop)
M09
G00 X0 Y0 Z7.0 (center and raise higher for clearance)
G53 G00 Y0 (bring vise forward to absolute Y zero)
G53 G00 Z0 (bring spindle up to absolute Z zero)
M02
%