* Inverter circuit simulation *
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
Vin IN 0 pulse (0 0.8 0n 0p 0p 40p 100p)

.SUBCKT Inverter GND VDD IN ZN
** N=12 EP=4 IP=0 FDC=2
M0 ZN IN GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=632 $Y=406 $D=0
M1 ZN IN VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=632 $Y=854 $D=1
.ENDS

X1 GND VDD IN ZN Inverter



.tran 0.001p 100p

.END


