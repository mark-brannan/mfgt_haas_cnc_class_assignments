%
O14201 (Solace SClampShortArmOp1 v09_28)
(Solace Brannan #42 - MFGT 106 Fall 2025)

G17 G20 G40 G80 G90 G94 (Safe line)
G54 (fixture offset)

T1 M06 (Change to Spot Drill)
G43 H1 (tool length offset)
S850 M03 (Spindle on clockwise rotation)

G00 X0 Y0 (Rapid to Absolute X0 Y0 position, the location of hole 1)
M08 (Turn on coolant)
G00 Z0.1 (Rapid to Z0.1 above the part)
G01 Z-0.052 F2.55 (spot hole 1)
G01 Z0.1 (Move back to Z.1 above the part)

G00 X-1.813 Y0 (Move to hole 2 location)
G01 Z-0.082 F2.55 (spot hole 2)
G01 Z0.1 (Move back to Z.1 above the part)

G00 X-2.380 Y0.66 (Move to hole 3 location)
G01 Z-0.046 F2.55 (spot hole 3)
G01 Z0.1 (Move back to Z.1 above the part)

G00 X-2.618 Y2.03 (Move to hole 4 location)
G01 Z-0.046 F2.55 (spot hole 4: same as hole 3)
G01 Z0.1 (Move back to Z.1 above the part)

M09 (Turn off coolant)
G00 Z7.0 M05 (Sends tool to Z home && turn off spindle)

M01 (Optional stop, inspect all spot positions)


T2 M06 (Change to #10 Drill)
G43 H2 (tool length offset)
S1375 M03 (Spindle on clockwise rotation)

G00 X0 Y0 (Rapid to Absolute X0 Y0 position, the location of hole 1)
M08 (Turn on coolant)
G00 Z0.1 (Rapid to Z0.1 above the part)
G01 Z-0.325 F4.125 (Move to Z depth for #10 Drill at the feed rate of #)
G01 Z0.1 (Move back to Z.1 above the part)

M09 (Turn off coolant)
G00 Z7.0 M05 (Sends tool to Z home && turn off spindle)

M01 (Optional stop)

T3 M06 (Change to 5/16 Drill)
G43 H3 (tool length offset)
S850 M03 (Spindle on clockwise rotation)

G00 X-1.813 Y0 (Move to hole 2 location)
M08 (Turn on coolant)
G00 Z0.1 (Rapid to Z0.1 above the part)
G01 Z-0.325 F5.1 (Move to Z depth for 5/16 Drill at the feed rate of #)
G01 Z0.1 (Move back to Z.1 above the part)

M09 (Turn off coolant)
G00 Z7.0 M05 (Sends tool to Z home && turn off spindle)

M01 (Optional stop)

T4 M06 (Change to 3/16 Drill)
G43 H4 (tool length offset)
S1400 M03 (Spindle on clockwise rotation)

G00 X-2.380 Y0.66 (Move to hole 3 location)
M08 (Turn on coolant)
G00 Z0.1 (Rapid to Z0.1 above the part)
G01 Z-0.325 F4.2 (Move to Z depth for 3/16 Drill at the feed rate of #)
G01 Z0.1 (Move back to Z.1 above the part)

(No tool change as holes 3 and 4 are same)

G00 X-2.618 Y2.03 (Move to hole 4 location)
G01 Z-0.325 F4.2 (Move to Z depth for 3/16 Drill at the feed rate of #)
G01 Z0.1 (Move back to Z.1 above the part)

M09 (Turn off coolant)
G00 Z7.0 M05 (Sends tool to Z home && turn off spindle)

M02 (Program end)
%
