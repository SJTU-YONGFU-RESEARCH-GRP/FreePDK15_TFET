* Inverter circuit simulation *
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
Vin IN 0 pulse (0 0.8 0n 10p 10p 40p 100p)

M0 ZN IN GND GND nfet L=2e-08 nfin=2
M1 ZN IN VDD VDD pfet L=2e-08 nfin=2

.tran 0.001p 100p

.END


