* Inverter circuit simulation *
* Simulation 1 - Basic Circuit *

*.option  nomod ingold=2
*+        newtol numdgt=7 relmos=1e-4 absmos=1e-8 relv=1e-4 relvdc=1e-4 gmindc=1e-14 gmin=1e-14

.opt reltol=1u
.opt abstol=1n
.opt vntol=1f
.opt numdgt=10
.opt nomod
.opt gmin=1e-19
.opt pivtol=0.5e-20
.opt post=2
.option MODSRH=0
*----------------------------------------------------------
.temp 25.000
.option brief=1
* Please add the tfet.lib to the hspice folder
.lib '$PDK_DIR/spectre/models/tfet.lib' inas_tfet
.option brief=0
.option scale=0.9 
.option POST

Vsupply VDD 0 0.6
Vground GND 0 0
Vin IN 0 pulse (0 0.6 0n 10p 10p 40p 100p)

M0 ZN IN GND GND ntfet w=200n
M1 ZN IN VDD VDD ptfet w=200n

.tran 0.001p 100p

.END


