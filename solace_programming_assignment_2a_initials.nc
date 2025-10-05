%
O14200 (Solace Initials_2a)
(Solace Brannan #42 - MFGT 106 Fall 2025)

(You will edit your program of your initials to now include curves.)
(Use the first letter of you first, middle and last name.)
(You will use what you learn from the pages above to write your program.)
(The letters should be about 2.5" high.)
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

(using online graph paper, I made letters 8 segments tall, 4 wide, with 2 units for spacing)
(Given target height of 2.5", each segment is 2.5 / 8 = 0.3125")
(width then is 1.25", and spacing is .625 or 5/8ths")

(========== "MAB" ==========)
("M")
G01 Z0 (Pen down)
G01 X0    Y2.50
G02 X.625 Y1.25 R2.0
G02 X1.25 Y2.50 R2.0
G03 X1.25 Y0 R4.0

G01 Z0.1
G01 X1.875 Y0 (Space)

("A")
G01 Z0 (Pen down)
G01 X2.5   Y2.5
G01 X3.125 Y0

(Cross bar is 3/4 of a grid offset from the bottom of the A: 3/4 * .3125 =  0.234375)
G01 Z0.1 (Pen up)
G01 X2.1875 Y1.25 (Move to left side of A crossbar)
G01 Z0 (Pen down)
G02 X2.875  Y1.0 R1.0 (Curve down and to the right for A crossbar)
G01 Z0.1 (Pen up)

G01 X3.75 Y0 (Space)

("B")
G01 Z0 (Pen down)
G01 X3.75   Y2.5
G01 X4.375  Y2.5
G02 X4.375  Y1.25 R.625
G01 X3.75 Y1.25 (crossbar, don't botther with 'pen up' here)
G01 X4.375  Y1.25
G02 X4.375  Y0 R.625
G01 X3.75   Y0

G01 Z0.1
G00 Z7.0 (Rapid to Z home)
M02 (Program end)
%
