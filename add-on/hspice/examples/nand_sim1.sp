* NAND circuit simulation *
* Simulation 1 - Basic Circuit *

.option  nomod ingold=2
+        newtol numdgt=7 relmos=1e-4 absmos=1e-8 relv=1e-4 relvdc=1e-4 gmindc=1e-14 gmin=1e-14
.option MODSRH=0
*----------------------------------------------------------
.temp 25.000
.option brief=1
.lib '$PDK_DIR/hspice/models/fet.inc' CMG
.option brief=0
.option scale=0.9 
.option POST

Vsupply VDD 0 0.8
Vground GND 0 0
VA A 0 0.8
VB B 0 pulse (0 0.8 0n 0p 0p 40p 100p)

M0 6 A GND GND nfet L=2e-08 nfin=6
M1 Y B 6 GND nfet L=2e-08 nfin=6
M2 Y A VDD VDD pfet L=2e-08 nfin=6
M3 VDD B Y VDD pfet L=2e-08 nfin=6

.tran 0.001p 100p

.END


