%
O14204 (Solace SClampLongArmOp2 v10_05)
(Solace Brannan #42 - MFGT 106 Fall 2025)
("Scissors Clamp Outer Frame Op2 Periphery")

G17 G20 G40 G80 G90 G94 (Safe line)
G54 (fixture offset)

T5 M06 (Change to end mill)
G43 H1 (tool length offset)
S800 M03 (Spindle on clockwise rotation)

G00 X0 Y1.5 (Rapid to 1" above the top of the part)
G00 Z1.0 M08 (Move near part surface and turn on coolant)
G00 Z-0.150 (Rapid to below edge of part)

F6.4 (Set feed rate for all milling moves)

G01 G42 D05 X0 Y0.375 (Activate cutter comp for T5 D05. Move at a right angle to point 1)

G01 X1.7802 Y0.375
G02 X1.8453 Y0.3693 R0.375
G01 X3.7055 Y0.0413
G02 X3.9651 Y-0.1405 R0.375
G01 X4.4603 Y-0.9981
G02 X4.5048 Y-1.2508 R0.375
G01 X4.2852 Y-2.4964 
G02 X3.7892 Y-2.4617 R0.25
G01 X3.7506 Y-1.3566
G03 X3.7005 Y-1.1822 R0.375
G01 X3.4905 Y-0.8184
G03 X3.2308 Y-0.6366 R0.375
G01 X1.7797 Y-0.3807
G03 X1.7146 Y-0.3750 R0.375
G01 X0.000 Y-0.375
G02 X0.000 Y0.375 (Return to point 1 in a half circle)

G01 G40 X0 Y-1.5 (Cancel cutter comp. Move at a right angle off the part.)

M09 (Turn off coolant)
G00 Z7.0 M05 (Sends tool to Z home && turn off spindle)
M02 (Program end)
%