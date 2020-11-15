* NAND circuit simulation *
* Simulation 2 - Circuit with Drain and Source Areas and Perimeters *

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

.SUBCKT NAND2 GND VDD A Y B
** N=6 EP=5 IP=0 FDC=4
M0 6 A GND GND nfet L=2e-08 W=2.08e-07 nfin=6 adej=2.4e-15 asej=2.4e-15 pdej=6e-07 psej=6.48e-07 $X=551 $Y=288 $D=0
M1 Y B 6 GND nfet L=2e-08 W=2.08e-07 nfin=6 adej=2.4e-15 asej=2.4e-15 pdej=6.48e-07 psej=6e-07 $X=671 $Y=288 $D=0
M2 Y A VDD VDD pfet L=2e-08 W=2.08e-07 nfin=6 adej=2.4e-15 asej=2.4e-15 pdej=6e-07 psej=6.48e-07 $X=551 $Y=596 $D=1
M3 VDD B Y VDD pfet L=2e-08 W=2.08e-07 nfin=6 adej=2.4e-15 asej=2.4e-15 pdej=6.48e-07 psej=6e-07 $X=671 $Y=596 $D=1
.ENDS

X1 GND VDD A Y B NAND2



.tran 0.001p 100p

.END


