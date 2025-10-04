%
O14202 (Solace SClampLongArmOp1 v10_04)
(Solace Brannan #42 - MFGT 106 Fall 2025)
("Scissors Clamp - Outer Frame Op.1 (Long Arm) - Holes Program")

G17 G20 G40 G80 G90 G94 (Safe line)
G54 (fixture offset)

(========== Spot Drilling ==========)
T1 M06 (Change to Spot Drill)
G43 H1 (tool length offset)
S850 M03 (Spindle on clockwise rotation)

G00 X0 Y0 (location of hole 1)
M08 (Turn on coolant)

G00 Z0.1
G01 Z-0.087 F2.55
G01 Z0.1

G00 X0.913 Y0.15 (hole 2 location)
G01 Z-0.050 F2.55
G01 Z0.1

G00 X1.813 Y0 (hole 3 location)
G01 Z-0.050 F2.55
G01 Z0.1

G00 X4.063 Y-1.06 (hole 4 location)
G01 Z-0.050 F2.55
G01 Z0.1

G00 X4.039 Y-2.453 (hole 5 location)
G01 Z-0.050 F2.55
G01 Z0.1

M09 (Turn off coolant)
G00 Z7.0 M05 (Sends tool to Z home && turn off spindle)

M01 (Optional stop; inspect all spot positions)


(========== 5/16 Drill for hole 1 ==========)
T3 M06 (Change to 5/16 Drill)
G43 H3 (tool length offset)
S M03 (Spindle on clockwise rotation)

G00 X0 Y0 (location of hole 1)
M08 (Turn on coolant)

G00 Z0.1
G01 Z-0.300 F5.1
G01 Z0.1

M09 (Turn off coolant)
G00 Z7.0 M05 (Sends tool to Z home && turn off spindle)

M01 (Optional stop)


(========== 3/16 Drill for hole 2,3, 4, and 5 ==========)
T4 M06 (Change to 3/16 Drill)
G43 H4 (tool length offset)
S1400 M03 (Spindle on clockwise rotation)

G00 X0.913 Y0.15 (hole 2 location)

M08 (Turn on coolant)

G00 Z0.1
G01 Z-0.300 F4.2
G01 Z0.1

G00 X1.813 Y0 (hole 3 location)
G01 Z-0.300 F4.2
G01 Z0.1

G00 X4.063 Y-1.06 (hole 4 location)
G01 Z-0.300 F4.2
G01 Z0.1

G00 X4.039 Y-2.453 (hole 5 location)
G01 Z-0.300 F4.2
G01 Z0.1

M09 (Turn off coolant)
G00 Z7.0 M05 (Sends tool to Z home && turn off spindle)

(========== End ==========)
M02 (Program end)
%
