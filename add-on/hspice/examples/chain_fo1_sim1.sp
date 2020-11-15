* Ring Oscillator circuit simulation *
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
Vin IN1 0 pulse (0 0.8 0n 0p 0p 40p 100p)

M_1_0 ZN1 IN1 GND GND nfet W=0.288000U L=0.020000U nfin=2
M_1_1 ZN1 IN1 VDD VDD pfet W=0.288000U L=0.020000U nfin=2
M_2_0 ZN2 ZN1 GND GND nfet W=0.288000U L=0.020000U nfin=2
M_2_1 ZN2 ZN1 VDD VDD pfet W=0.288000U L=0.020000U nfin=2
M_3_0 ZN3 ZN2 GND GND nfet W=0.288000U L=0.020000U nfin=2
M_3_1 ZN3 ZN2 VDD VDD pfet W=0.288000U L=0.020000U nfin=2
M_4_0 ZN4 ZN3 GND GND nfet W=0.288000U L=0.020000U nfin=2
M_4_1 ZN4 ZN3 VDD VDD pfet W=0.288000U L=0.020000U nfin=2
M_5_0 ZN5 ZN4 GND GND nfet W=0.288000U L=0.020000U nfin=2
M_5_1 ZN5 ZN4 VDD VDD pfet W=0.288000U L=0.020000U nfin=2
M_6_0 ZN6 ZN5 GND GND nfet W=0.288000U L=0.020000U nfin=2
M_6_1 ZN6 ZN5 VDD VDD pfet W=0.288000U L=0.020000U nfin=2
M_7_0 ZN7 ZN6 GND GND nfet W=0.288000U L=0.020000U nfin=2
M_7_1 ZN7 ZN6 VDD VDD pfet W=0.288000U L=0.020000U nfin=2
M_8_0 ZN8 ZN7 GND GND nfet W=0.288000U L=0.020000U nfin=2
M_8_1 ZN8 ZN7 VDD VDD pfet W=0.288000U L=0.020000U nfin=2
M_9_0 ZN9 ZN8 GND GND nfet W=0.288000U L=0.020000U nfin=2
M_9_1 ZN9 ZN8 VDD VDD pfet W=0.288000U L=0.020000U nfin=2
.tran 0.001p 100p

.END


