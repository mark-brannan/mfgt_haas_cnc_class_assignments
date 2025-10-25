%
O14200 (Solace ShapeDrawing_3 )
(Solace Brannan #42 - MFGT 106 Fall 2025)

(For this assignment you will be using your program from Programming Assignment 2 Part B)
(First think about these questions and refer to the picture below.)
(What would the overall length of the part be if we used a 1/2” end mill?)
(What would be the overall height of the part be?)
(What would the size of the corner radii be?)
(What would the size of the .25 fillet be?)

(========== Setup ==========)
G17 G20 G40 G80 G90 G94 (Safe line)
G54 (fixture offset)

T1 M06 (Change to 1/2" end mill)
G43 H5 (tool length offset)

(Rapid to lower left of part, offset for moving at right angle to point 1)
G00 X-1.0 Y.25
G00 Z1.0

S800 M03 (Spindle on clockwise rotation)
F5.0 (Feed rate)
M08 (Coolant on)
G01 Z0.0 (slow drop to at or below the imaginary cutting plane)

G01 G41 D01 X0 (Activate cutter comp for T1 . Move at a right angle to point 1)

G01 X0    Y2.25
G02 X.25  Y2.5  R.25
G01 X1.75 Y2.5
G02 X2.0  Y2.25 R.25
G01 X2.0  Y1.75
G03 X2.25 Y1.5  R.25
G01 X3.25 Y1.5
G02 X3.5  Y1.25 R.25
G01 X3.5  Y.25
G02 X3.25 Y0    R.25
G01 X.25  Y0
G02 X0    Y.25  R.25
G40 (Deactivate cutter comp)
G01 Z1.0 (lift up slow)

M09 (Coolant off)

G00 Z7.0 (Rapid to Z home)
G53 G00 Y0 (bring vise forward to absolute Y zero)
M02 (Program end)
%