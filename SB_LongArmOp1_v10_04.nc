%
O14202 (Solace SClampLongArmOp1 v10_04)
(Solace Brannan #42 - MFGT 106 Fall 2025)
("Scissors Clamp - Outer Frame Op.1 (Long Arm) - Holes Program")

(========== Notes ==========)
(Per setup sheet:)
(T1 Spot drill ~ 0.25 diameter)
(T2 #10 drill = 0.1935 (for the .194 hole))
(T3 5/16 drill = 0.3125 diameter)
(T4 3/16 drill = 0.1875 diameter)

(Depth: Per assignment page "All holes drilled to depth of Z-0.350")
(From blueprint, material thickness spec is .125 +/- .005)
(However, this is because the overall project uses a surface grinder in some semesters)


(Speeds:)
(Drilling Carbon Steel with HSS = 70 FPM)
(calculated as 3.8 * FPM / diam -> 266 / diameter)
(T1 -> 266 / 0.25 = 1064, but lowering to S850 per recommendation)
(T2 -> 266 / 0.1935 = 1374.68 -> S1375)
(T3 -> 266 / 0.3125 = 851.2 -> S850)
(T4 -> 266 / 0.1875 = 1,418.67 -> S1400)

(Feeds:)
(calculated as RPM x IPR using table and "normal" IPR:)
(for 1/8 to 1/4 drills: .002 to .004 -> .003)
(for 1/4 to 1/2 drills: .004 to .008 -> .06)

(T1 - Recommended Spot drill IPR .003 -> FR = 2.55 -> F2.55)
(T2 - 1375 x .003 -> FR = 4.125 -> F4.125)
(T3 -  850 x .002 -> FR = 5.1 -> F5.1)
(T4 - 1400 x .003 -> FR = 4.2 -> F4.2)

(========== Setup ==========)
G17 G20 G40 G80 G90 G94 (Safe line)
G54 (fixture offset)


(========== Spot Drilling ==========)
T1 M06 (Change to Spot Drill)
G43 H1 (tool length offset)
S850 M03 (Spindle on clockwise rotation)

(depth formula during spot drilling:)
((radius + chamfer width - web radius) / tan(included angle / 2))
(Using chamfer width = 0.01, web diameter = 0.050 -> .01 - .025 = -0.015)
(tan(120 / 2) = tan(60) = 1.732)
(depth forumla reduces to: (radius - .015) / 1.732)
(hole 1 LMC: (5/16) 0.3125 diameter -> r=0.15625 -> (0.14125 / 1.73) = 0.082)
(hole 2-5 LMC: (3/16) 0.1875 diameter -> r=0.09375 -> (0.07875 / 1.73) = 0.046)

G00 X0 Y0 (location of hole 1)
M08 (Turn on coolant)

G00 Z0.1
G01 Z-0.082 F2.55
G01 Z0.1

G00 X0.913 Y0.15 (hole 2 location)
G01 Z-0.046 F2.55
G01 Z0.1

G00 X1.813 Y0 (hole 3 location)
G01 Z-0.046 F2.55
G01 Z0.1

G00 X4.063 Y-1.06 (hole 4 location)
G01 Z-0.046 F2.55
G01 Z0.1

G00 X4.039 Y-2.453 (hole 5 location)
G01 Z-0.046 F2.55
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
G01 Z-0.325 F5.1
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
G01 Z-0.325 F4.2
G01 Z0.1

G00 X1.813 Y0 (hole 3 location)
G01 Z-0.325 F4.2
G01 Z0.1

G00 X4.063 Y-1.06 (hole 4 location)
G01 Z-0.325 F4.2
G01 Z0.1

G00 X4.039 Y-2.453 (hole 5 location)
G01 Z-0.325 F4.2
G01 Z0.1

M09 (Turn off coolant)
G00 Z7.0 M05 (Sends tool to Z home && turn off spindle)

(========== End ==========)
M02 (Program end)
%
