%
O14203 (Solace SClampShortArmOp2 v10_05)
(Solace Brannan #42 - MFGT 106 Fall 2025)
("Scissors Clamp Inner Frame Op2 Periphery")

G17 G20 G40 G80 G90 G94 (Safe line)
G54 (fixture offset)

T5 M06 (Change to end mill)
G43 H5 (tool length offset)
S800 M03 (Spindle on clockwise rotation)

G00 X0 Y-1.5 (Rapid to X0 Y-1.5, the bottom of the part)
M08 (Turn on coolant)
G00 Z-0.150 (Rapid to below edge of part)

F6.4 (Set feed rate for all milling moves)

G01 G41 D05 X0 Y-0.375 (Activate cutter comp for T5 D05. Move at a right angle to point 1)

G01 X-1.8071 Y-.375 (Move to Point 2)
G02 X-2.0944 Y-.241 R0.375 (Move to Point 3)
G01 X-2.7821 Y.5785 (Move to Point 4)
G02 X-2.8698 Y.8201 R0.375 (Move to Point 5)
G01 X-2.868 Y2.0294 (Move to Point 6)
G02 X-2.3735 Y2.081 R0.25 (Move to Point 7)
G01 X-2.1587 Y1.0707 (Move to Point 8)
G03 X-2.0792 Y.9076 R0.375 (Move to Point 9)
G01 X-1.7447 Y.509 (Move to Point 10)
G03 X-1.4574 Y.375 R0.375 (Move to Point 11)
G01 X0 Y.375 (Move to Point 12)
G02 X0 Y-.375 R0.375 (Point 13, same as point 1)

G01 G40 X0 Y-1.5 (Cancel cutter comp. Move at a right angle off the part.)

M09 (Turn off coolant)
G00 Z7.0 M05 (Sends tool to Z home && turn off spindle)
M02 (Program end)
%
