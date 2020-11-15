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

.SUBCKT Chain_FO4 VDD GND IN1 ZN9
** N=114 EP=4 IP=0 FDC=72
M0 4 IN1 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1408 $Y=3602 $D=0
M1 5 IN1 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1408 $Y=4298 $D=0
M2 6 IN1 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1408 $Y=4994 $D=0
M3 7 IN1 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1408 $Y=5690 $D=0
M4 8 7 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1763 $Y=3602 $D=0
M5 9 7 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1763 $Y=4298 $D=0
M6 10 7 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1763 $Y=4994 $D=0
M7 11 7 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1763 $Y=5690 $D=0
M8 12 11 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2117 $Y=3602 $D=0
M9 13 11 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2117 $Y=4298 $D=0
M10 14 11 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2117 $Y=4994 $D=0
M11 15 11 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2117 $Y=5690 $D=0
M12 16 15 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2471 $Y=3602 $D=0
M13 17 15 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2471 $Y=4298 $D=0
M14 18 15 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2471 $Y=4994 $D=0
M15 19 15 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2471 $Y=5690 $D=0
M16 20 19 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2825 $Y=3602 $D=0
M17 21 19 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2825 $Y=4298 $D=0
M18 22 19 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2825 $Y=4994 $D=0
M19 23 19 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2825 $Y=5690 $D=0
M20 24 23 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3179 $Y=3602 $D=0
M21 25 23 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3179 $Y=4298 $D=0
M22 26 23 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3179 $Y=4994 $D=0
M23 27 23 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3179 $Y=5690 $D=0
M24 28 27 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3533 $Y=3602 $D=0
M25 29 27 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3533 $Y=4298 $D=0
M26 30 27 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3533 $Y=4994 $D=0
M27 31 27 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3533 $Y=5690 $D=0
M28 32 31 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3887 $Y=3602 $D=0
M29 33 31 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3887 $Y=4298 $D=0
M30 34 31 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3887 $Y=4994 $D=0
M31 35 31 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3887 $Y=5690 $D=0
M32 36 35 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=4241 $Y=3602 $D=0
M33 37 35 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=4241 $Y=4298 $D=0
M34 38 35 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=4241 $Y=4994 $D=0
M35 ZN9 35 GND GND nfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=4241 $Y=5690 $D=0
M36 4 IN1 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1408 $Y=4050 $D=1
M37 5 IN1 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1408 $Y=4746 $D=1
M38 6 IN1 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1408 $Y=5442 $D=1
M39 7 IN1 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1408 $Y=6138 $D=1
M40 8 7 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1763 $Y=4050 $D=1
M41 9 7 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1763 $Y=4746 $D=1
M42 10 7 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1763 $Y=5442 $D=1
M43 11 7 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=1763 $Y=6138 $D=1
M44 12 11 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2117 $Y=4050 $D=1
M45 13 11 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2117 $Y=4746 $D=1
M46 14 11 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2117 $Y=5442 $D=1
M47 15 11 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2117 $Y=6138 $D=1
M48 16 15 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2471 $Y=4050 $D=1
M49 17 15 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2471 $Y=4746 $D=1
M50 18 15 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2471 $Y=5442 $D=1
M51 19 15 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2471 $Y=6138 $D=1
M52 20 19 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2825 $Y=4050 $D=1
M53 21 19 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2825 $Y=4746 $D=1
M54 22 19 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2825 $Y=5442 $D=1
M55 23 19 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=2825 $Y=6138 $D=1
M56 24 23 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3179 $Y=4050 $D=1
M57 25 23 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3179 $Y=4746 $D=1
M58 26 23 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3179 $Y=5442 $D=1
M59 27 23 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3179 $Y=6138 $D=1
M60 28 27 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3533 $Y=4050 $D=1
M61 29 27 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3533 $Y=4746 $D=1
M62 30 27 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3533 $Y=5442 $D=1
M63 31 27 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3533 $Y=6138 $D=1
M64 32 31 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3887 $Y=4050 $D=1
M65 33 31 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3887 $Y=4746 $D=1
M66 34 31 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3887 $Y=5442 $D=1
M67 35 31 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=3887 $Y=6138 $D=1
M68 36 35 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=4241 $Y=4050 $D=1
M69 37 35 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=4241 $Y=4746 $D=1
M70 38 35 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=4241 $Y=5442 $D=1
M71 ZN9 35 VDD VDD pfet L=2e-08 W=4.8e-08 nfin=2 adej=6.08e-16 asej=6.08e-16 pdej=1.68e-07 psej=1.68e-07 $X=4241 $Y=6138 $D=1
.ENDS

X1 VDD GND IN1 ZN9 Chain_FO4



.tran 0.001p 100p

.END


