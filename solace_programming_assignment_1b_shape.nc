%
O14200 (Solace ShapeDrawing_1b v09_29)
(Solace Brannan #42 - MFGT 106 Fall 2025)

(This time you will write a program to draw a shape using the information from the drawing below.)
(Use what you learn from the pages above to write your program.)
(You can use graph paper to help you plot out where your points should go.)

(========== Setup ==========)
G17 G20 G40 G80 G90 G94 (Safe line)
G54 (fixture offset)

M05 (Spindle stop, just in case)
M09 (Coolant off, just in case)

(Rapid travel to origin and then "pen" to .1 above the drawing plane)
G00 X0 Y0 
G00 Z0.1

(========== Notes ==========)

(I'm using a feed rate of F900 (IPM) based loosely on the rate of ~40 cm/s)
(40 cm/s was discovered by a quick search for common pen plotting rates)
F900 (however, based on what I know so far about Haas machines and our lab, I imagine it would reject this)

(========== Drawing ==========)
G01 Z0 (Pen down)
G01 X0    Y2.5
G01 X2.0  Y2.5
G01 X2.0  Y1.5
G01 X3.5  Y1.5
G01 X3.5  Y0
G01 X0    Y0
G01 Z0.1 (Pen up)

G00 Z7.0 (Rapid to Z home)
M02 (Program end)
%