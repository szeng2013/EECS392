* SPICE NETLIST
***************************************

.SUBCKT M3_M2_via
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_N_4
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_P_3
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_1
** N=1 EP=0 IP=2 FDC=0
.ENDS
***************************************
.SUBCKT M1_POLY_2
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT Inverter gnd! vdd! Out In
** N=4 EP=4 IP=16 FDC=2
M0 Out In gnd! gnd! NMOS_VTG L=5e-08 W=1.44e-06 AD=1.161e-13 AS=1.0845e-13 PD=3.36e-06 PS=3.19e-06 $X=2045 $Y=110 $D=5
M1 Out In vdd! vdd! PMOS_VTG L=5e-08 W=1.96e-06 AD=1.6015e-13 AS=1.57e-13 PD=4.57e-06 PS=4.5e-06 $X=2040 $Y=3340 $D=4
.ENDS
***************************************
.SUBCKT dcont_6
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT nmos_vtg_4 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 NMOS_VTG L=5e-08 W=2.8e-07 AD=2.94e-14 AS=2.94e-14 PD=7.7e-07 PS=7.7e-07 $X=0 $Y=0 $D=5
.ENDS
***************************************
.SUBCKT pmos_vtg_5 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=3e-07 AD=3.15e-14 AS=3.15e-14 PD=8.1e-07 PS=8.1e-07 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT 2_1MUX IN1 IN0 S Output gnd! vdd!
** N=7 EP=6 IP=24 FDC=6
X4 gnd! vdd! 4 S Inverter $T=-2480 0 0 0 $X=-870 $Y=0
X5 IN0 Output 4 gnd! nmos_vtg_4 $T=335 2410 0 0 $X=15 $Y=2300
X6 Output IN1 S gnd! nmos_vtg_4 $T=1075 2410 0 0 $X=755 $Y=2300
X7 IN0 Output S vdd! pmos_vtg_5 $T=335 3340 0 0 $X=15 $Y=3230
X8 Output IN1 4 vdd! pmos_vtg_5 $T=1075 3340 0 0 $X=755 $Y=3230
.ENDS
***************************************
.SUBCKT M2_M1_via
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT NAND Output gnd! vdd! A B
** N=6 EP=5 IP=2 FDC=4
M0 6 A Output gnd! NMOS_VTG L=5e-08 W=1.63e-06 AD=2.282e-13 AS=1.834e-13 PD=3.54e-06 PS=3.49e-06 $X=945 $Y=4395 $D=5
M1 gnd! B 6 gnd! NMOS_VTG L=5e-08 W=1.63e-06 AD=1.77425e-13 AS=2.282e-13 PD=3.485e-06 PS=3.54e-06 $X=1325 $Y=4395 $D=5
M2 Output A vdd! vdd! PMOS_VTG L=5e-08 W=1.44e-06 AD=2.016e-13 AS=1.512e-13 PD=3.16e-06 PS=3.11e-06 $X=945 $Y=8045 $D=4
M3 vdd! B Output vdd! PMOS_VTG L=5e-08 W=1.44e-06 AD=1.58175e-13 AS=2.016e-13 PD=3.105e-06 PS=3.16e-06 $X=1325 $Y=8045 $D=4
.ENDS
***************************************
.SUBCKT ICV_2
** N=1 EP=0 IP=2 FDC=0
.ENDS
***************************************
.SUBCKT AND vdd! gnd! Output A B
** N=6 EP=5 IP=9 FDC=6
X0 gnd! vdd! Output 3 Inverter $T=-1610 -4155 0 0 $X=0 $Y=-4155
X1 3 gnd! vdd! A B NAND $T=400 -7895 1 180 $X=-1360 $Y=-3610
.ENDS
***************************************
.SUBCKT Booth_Decoder vdd! init gnd! invMD<2> BD<2> invMD<0> BD<0> invMD<3> BD<3> invMD<1> BD<1> invMD<7> BD<7> invMD<5> BD<5> invMD<6> BD<6> invMD<4> BD<4> OutA
+ OutB MD<7> MD<6> MD<5> MD<4> MD<3> MD<2> MD<1> MD<0>
** N=37 EP=29 IP=135 FDC=100
X33 6 invMD<2> init BD<2> gnd! vdd! 2_1MUX $T=-1655 -7995 0 0 $X=-2525 $Y=-7995
X34 8 invMD<0> init BD<0> gnd! vdd! 2_1MUX $T=-1655 -455 0 0 $X=-2525 $Y=-455
X35 1 invMD<3> init BD<3> gnd! vdd! 2_1MUX $T=-25 -11240 1 180 $X=-1520 $Y=-11240
X36 7 invMD<1> init BD<1> gnd! vdd! 2_1MUX $T=-25 -3700 1 180 $X=-1520 $Y=-3700
X37 2 invMD<7> init BD<7> gnd! vdd! 2_1MUX $T=1855 -11240 0 0 $X=985 $Y=-11240
X38 4 invMD<5> init BD<5> gnd! vdd! 2_1MUX $T=1855 -3700 0 0 $X=985 $Y=-3700
X39 3 invMD<6> init BD<6> gnd! vdd! 2_1MUX $T=3485 -7995 1 180 $X=1990 $Y=-7995
X40 5 invMD<4> init BD<4> gnd! vdd! 2_1MUX $T=3485 -455 1 180 $X=1990 $Y=-455
X42 init gnd! vdd! OutA OutB NAND $T=-6755 8675 0 270 $X=-2470 $Y=6915
X51 vdd! gnd! 2 OutA MD<7> AND $T=-5870 -10020 0 270 $X=-10025 $Y=-10895
X52 vdd! gnd! 3 OutA MD<6> AND $T=-5870 -7790 0 270 $X=-10025 $Y=-8665
X53 vdd! gnd! 4 OutA MD<5> AND $T=-5870 -5560 0 270 $X=-10025 $Y=-6435
X54 vdd! gnd! 5 OutA MD<4> AND $T=-5870 -3330 0 270 $X=-10025 $Y=-4205
X55 vdd! gnd! 1 OutA MD<3> AND $T=-5870 -1100 0 270 $X=-10025 $Y=-1975
X56 vdd! gnd! 6 OutA MD<2> AND $T=-5870 1130 0 270 $X=-10025 $Y=255
X57 vdd! gnd! 7 OutA MD<1> AND $T=-5870 3360 0 270 $X=-10025 $Y=2485
X58 vdd! gnd! 8 OutA MD<0> AND $T=-5870 5590 0 270 $X=-10025 $Y=4715
.ENDS
***************************************
