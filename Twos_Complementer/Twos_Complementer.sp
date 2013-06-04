* SPICE NETLIST
***************************************

.SUBCKT M1_N_3
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_P_2
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_1
** N=1 EP=0 IP=2 FDC=0
.ENDS
***************************************
.SUBCKT M1_POLY_1
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT Inverter gnd! vdd! Out In
** N=4 EP=4 IP=16 FDC=2
M0 Out In gnd! gnd! NMOS_VTG L=5e-08 W=1.44e-06 AD=1.161e-13 AS=1.0845e-13 PD=3.36e-06 PS=3.19e-06 $X=2045 $Y=110 $D=5
M1 Out In vdd! vdd! PMOS_VTG L=5e-08 W=1.96e-06 AD=1.6015e-13 AS=1.57e-13 PD=4.57e-06 PS=4.5e-06 $X=2040 $Y=3340 $D=4
.ENDS
***************************************
.SUBCKT dcont_8
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT nmos_vtg_2 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 NMOS_VTG L=5e-08 W=2.8e-07 AD=2.94e-14 AS=2.94e-14 PD=7.7e-07 PS=7.7e-07 $X=0 $Y=0 $D=5
.ENDS
***************************************
.SUBCKT pmos_vtg_3 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=3e-07 AD=3.15e-14 AS=3.15e-14 PD=8.1e-07 PS=8.1e-07 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT XOR B Output A 4 5
** N=6 EP=5 IP=28 FDC=6
X4 4 6 A 4 nmos_vtg_2 $T=2400 2225 0 0 $X=2080 $Y=2115
X5 6 Output B 4 nmos_vtg_2 $T=3140 2225 0 0 $X=2820 $Y=2115
X6 Output B 6 4 nmos_vtg_2 $T=3880 2225 0 0 $X=3560 $Y=2115
X7 5 6 A 5 pmos_vtg_3 $T=2400 3215 0 0 $X=2080 $Y=3105
X8 A Output B 5 pmos_vtg_3 $T=3140 3215 0 0 $X=2820 $Y=3105
X9 Output B A 5 pmos_vtg_3 $T=3880 3215 0 0 $X=3560 $Y=3105
.ENDS
***************************************
.SUBCKT AND gnd! vdd! A B Output
** N=7 EP=5 IP=6 FDC=6
M0 7 A gnd! gnd! NMOS_VTG L=5e-08 W=1.63e-06 AD=2.282e-13 AS=1.77425e-13 PD=3.54e-06 PS=3.485e-06 $X=-1025 $Y=-3500 $D=5
M1 2 B 7 gnd! NMOS_VTG L=5e-08 W=1.63e-06 AD=1.834e-13 AS=2.282e-13 PD=3.49e-06 PS=3.54e-06 $X=-645 $Y=-3500 $D=5
M2 2 A vdd! vdd! PMOS_VTG L=5e-08 W=1.44e-06 AD=2.016e-13 AS=1.58175e-13 PD=3.16e-06 PS=3.105e-06 $X=-1025 $Y=150 $D=4
M3 vdd! B 2 vdd! PMOS_VTG L=5e-08 W=1.44e-06 AD=1.512e-13 AS=2.016e-13 PD=3.11e-06 PS=3.16e-06 $X=-645 $Y=150 $D=4
X6 gnd! vdd! Output 2 Inverter $T=-1610 -4155 0 0 $X=0 $Y=-4155
.ENDS
***************************************
.SUBCKT FULL_ADDER gnd! A Cin B vdd! Cout S
** N=12 EP=7 IP=28 FDC=30
M0 gnd! 9 11 gnd! NMOS_VTG L=5e-08 W=7.2e-07 AD=1.008e-13 AS=5.85e-14 PD=1.72e-06 PS=1.76e-06 $X=9275 $Y=2550 $D=5
M1 11 10 gnd! gnd! NMOS_VTG L=5e-08 W=7.2e-07 AD=5.31e-14 AS=1.008e-13 PD=1.64e-06 PS=1.72e-06 $X=9655 $Y=2550 $D=5
M2 12 9 vdd! vdd! PMOS_VTG L=5e-08 W=1.56e-06 AD=2.184e-13 AS=1.515e-13 PD=3.4e-06 PS=3.32e-06 $X=9275 $Y=4350 $D=4
M3 11 10 12 vdd! PMOS_VTG L=5e-08 W=1.56e-06 AD=1.4625e-13 AS=2.184e-13 PD=3.32e-06 PS=3.4e-06 $X=9655 $Y=4350 $D=4
X8 gnd! vdd! Cout 11 Inverter $T=8615 1000 0 0 $X=10225 $Y=1000
X9 Cin S 8 gnd! vdd! XOR $T=145 1355 0 0 $X=2225 $Y=3250
X10 B 8 A gnd! vdd! XOR $T=145 3975 0 0 $X=2225 $Y=5870
X11 gnd! vdd! 8 Cin 9 AND $T=5805 5155 0 0 $X=4445 $Y=1000
X12 gnd! vdd! A B 10 AND $T=8035 5155 0 0 $X=6675 $Y=1000
.ENDS
***************************************
.SUBCKT ICV_2 1 2 3 4 5 6 7 8 9
** N=9 EP=9 IP=14 FDC=60
X0 2 2 7 8 1 4 3 FULL_ADDER $T=0 0 0 0 $X=1825 $Y=1000
X1 2 2 4 9 1 6 5 FULL_ADDER $T=9270 0 0 0 $X=11095 $Y=1000
.ENDS
***************************************
.SUBCKT Twos_Complementer gnd! vdd! IN<0> IN<1> IN<2> IN<3> IN<4> IN<5> IN<6> IN<7> OUT<0> OUT<1> OUT<2> OUT<3> OUT<4> OUT<5> OUT<6> OUT<7>
** N=33 EP=18 IP=68 FDC=256
X0 gnd! vdd! 3 IN<0> Inverter $T=-8865 6090 0 270 $X=-8865 $Y=3605
X1 gnd! vdd! 5 IN<1> Inverter $T=405 6090 0 270 $X=405 $Y=3605
X2 gnd! vdd! 7 IN<2> Inverter $T=9675 6090 0 270 $X=9675 $Y=3605
X3 gnd! vdd! 9 IN<3> Inverter $T=18945 6090 0 270 $X=18945 $Y=3605
X4 gnd! vdd! 11 IN<4> Inverter $T=28215 6090 0 270 $X=28215 $Y=3605
X5 gnd! vdd! 13 IN<5> Inverter $T=37485 6090 0 270 $X=37485 $Y=3605
X6 gnd! vdd! 15 IN<6> Inverter $T=46755 6090 0 270 $X=46755 $Y=3605
X7 gnd! vdd! 17 IN<7> Inverter $T=56025 6090 0 270 $X=56025 $Y=3605
X8 vdd! gnd! OUT<0> 4 OUT<1> 6 vdd! 3 5 ICV_2 $T=-11095 -5155 0 0 $X=-9270 $Y=-4155
X9 vdd! gnd! OUT<2> 8 OUT<3> 10 6 7 9 ICV_2 $T=7445 -5155 0 0 $X=9270 $Y=-4155
X10 vdd! gnd! OUT<4> 12 OUT<5> 14 10 11 13 ICV_2 $T=25985 -5155 0 0 $X=27810 $Y=-4155
X11 vdd! gnd! OUT<6> 16 OUT<7> gnd! 14 15 17 ICV_2 $T=44525 -5155 0 0 $X=46350 $Y=-4155
.ENDS
***************************************
