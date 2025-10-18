%
O14204 (Solace SClampJawsFacing v10_18)
(Solace Brannan #42 - MFGT 106 Fall 2025)
("Scissors Clamp Jaws Facing pass")

G17 G20 G40 G80 G90 G94 (Safe line)
G54 (fixture offset)

T5 M06 (Change to end mill, 2")
G43 H5 (tool length offset, measured from top of parallels, bottom of part)
S800 M03 (Spindle on clockwise rotation)

G00 X4.0 Y-2.3 (Rapid to right side of part and vise edge, mill center forward of part)
G00 Z2.0 (Rapid to just over top part)

(800 RPM x 4 teeth x 0.008 inches/tooth = 25.6 IPM)
F25 (Set feed rate for all milling moves)


G00 Z.450 (start thicknessing from .450 since most stock was already squared to less than .500)
G01 X-2.0 (climb mill through top face of part moving left to right)
G00 Z.5 (safe height)
G00 X2.0

G00 Z.390
G01 X-2.0
G00 Z.400 (safe height)
G00 X2.0

(.370 + .015 = .385 MMC thickness for small jaw)
G00 Z.385
G01 X-2.0
G00 Z.400 (safe height)

(Move spindle away and pause to swich parts)
G00 Z7.0
G00 X7.0

M01 (Optional stop, switch parts)

G00 X4.0 Y-2.3 (Rapid back to starting x,y position)
G00 Z2.0

G00 Z.700 (start thicknessing from .700 since most stock was already squared to less than ~.750)
G01 X-2.0 (climb mill through top face of part moving left to right)
G00 Z.750 (safe height)
G00 X2.0

G00 Z.650
G01 X-2.0
G00 Z.700 (safe height)
G00 X2.0

(.630 + .015 = .645 MMC thickness for small jaw)
G00 Z.645
G01 X-2.0
G00 Z.700 (safe height)

G00 X4.0 Y-2.3 (Rapid back to starting x,y position)

G00 Z7.0 M05 (Sends tool to Z home && turn off spindle)
M02 (Program end)
%