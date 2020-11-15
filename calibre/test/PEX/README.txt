LVS/PEX Testcases
By Chinmay Tembe 6/19/2015


Chain_FO1 and Chain_FO4 are the inverter chains with respective
fanouts of 1 and 4.

Coupled_Lines, Fringe, MG2_MG1, MG1_MSMG5, MSMG5_MSMG4, MSMG4_MSMG3,
MSMG3_MSMG2, MSMG2_MSMG1, MSMG1_MINT5, MINT5_MINT4, MINT4_MINT3,
MINT3_MINT2, MINT2_MINT1, MINT1_M1, NAND2 all use the same NAND2
source netlist.  NAND2 is the basic 2-input NAND gate layout,
Coupled_Lines is to calculate coupling capacitance (the layout can be
modified for different metal layers), Fringe is to calculate fringing
capacitance (the layout can be modified for different metal layers),
and all others are for calculating parallel-plate capacitance, one for
each metal layer pair.

Fin_adjustment is the modification of a simple NFinFET according to
the actual multi-fin structure. It uses the same netlist as
the NFinFET testcase.

Inverter is a layout of a simple inverter.

Metal_Stitch is a example layout for metal stitching.

NFinFET is a layout of a simple two-fin NFinFET.

PFinFET is a layout of a simple two-fin NFinFET.

Res is the modification for validating Parasitic Resistance. Various
layers can be added or subtracted while the lengths of these metal
shapes can be increased or decreased and the pex.netlist.pex would
reflect the change. It uses the same netlist as the NFinFET testcase.

TestGATEC is a layout created using inverters to check the
verification of rules for the GATEC layer adding the GATEC layer in
between two inverter circuits severs connectivity between the upper
and lower inverter circuits leading to a succesful LVS. Absence of
GATEC in between two inverter circuits generates LVS errors.

Well_Check is a layout created to test Well rules. Creation of a
separate shape enclosed by NWELL layer is necessary to define a
separate WELL contact. Absence of such a shape generates LVS
errors.

