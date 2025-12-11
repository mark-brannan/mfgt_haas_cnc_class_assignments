%
O14204 (Solace cutter_comp_quiz)
(Solace Brannan #42 - MFGT 106 Fall 2025)

G17 G20 G40 G80 G90 G94 (Safe line)
G54 (fixture offset)

T5 M06 (Change to imaginary end mill)
G43 H5 (tool length offset)
S800 M03 (Spindle on clockwise rotation)
F6.4 (Set feed rate for all milling moves)

G00 X-1.5 Y0 (Rapid to 1" below front/bottom left edge of the part)
G00 Z1.0 M08 (Move near part surface and turn on coolant)
G00 Z-0.150 (Rapid to below edge of part)

G01 G41 D05 X0 Y0 (cutter comp tool 5, climb mill, left to right on left side)
G01 Y2.34
G01 X2.12 (2.32 - R.20)
G02 X2.32 Y2.14 R.20 (CW arc; Y2.34 - R.20 = 2.14)
G01 Y1.63 (move from Y2.34 to Y1.33 plus R.30 for next arc = Y1.63)
G03 X2.62 Y1.33 R.30 (CCW arc; X2.32 + R.30 = X2.62)
G01 X3.34 (X3.54 - R.20 = X3.34)
G02 X3.54 Y1.13 R.20 (CW arc; Y1.33 - R.20 = 1.13)
G01 Y0
G01 X0
G40 (disable cutter comp)

M09
G00 Z7.0 M05 (back off && stop spindle)
G53 G00 Y0 (bring vise forward to absolute Y zero)
M02
%