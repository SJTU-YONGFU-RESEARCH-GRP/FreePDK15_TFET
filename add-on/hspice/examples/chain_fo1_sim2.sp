* Ring Oscillator circuit simulation *
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
Vin IN1 0 pulse (0 0.8 0n 0p 0p 40p 100p)

.SUBCKT Chain_FO1 GND VDD IN1 ZN9
** N=84 EP=4 IP=0 FDC=18
M0 4 IN1 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=836 $Y=392 $D=0
M1 5 4 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1191 $Y=392 $D=0
M2 6 5 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1545 $Y=392 $D=0
M3 7 6 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1899 $Y=392 $D=0
M4 8 7 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2253 $Y=392 $D=0
M5 9 8 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2607 $Y=392 $D=0
M6 10 9 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2961 $Y=392 $D=0
M7 11 10 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3315 $Y=392 $D=0
M8 ZN9 11 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3669 $Y=392 $D=0
M9 4 IN1 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=836 $Y=840 $D=1
M10 5 4 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1191 $Y=840 $D=1
M11 6 5 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1545 $Y=840 $D=1
M12 7 6 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1899 $Y=840 $D=1
M13 8 7 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2253 $Y=840 $D=1
M14 9 8 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2607 $Y=840 $D=1
M15 10 9 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2961 $Y=840 $D=1
M16 11 10 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3315 $Y=840 $D=1
M17 ZN9 11 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3669 $Y=840 $D=1
.ENDS

X1 GND VDD IN1 ZN9 Chain_FO1



.tran 0.001p 100p

.END


