* SPICE NETLIST
***************************************

.SUBCKT dcont_8
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT nmos_vtg_0 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 NMOS_VTG L=5e-08 W=2.8e-07 AD=2.94e-14 AS=2.94e-14 PD=7.7e-07 PS=7.7e-07 $X=0 $Y=0 $D=5
.ENDS
***************************************
.SUBCKT pmos_vtg_1 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=3e-07 AD=3.15e-14 AS=3.15e-14 PD=8.1e-07 PS=8.1e-07 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT M1_POLY_1
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT XOR B Output A 4 5
** N=6 EP=5 IP=28 FDC=6
X0 4 6 A 4 nmos_vtg_0 $T=2400 2225 0 0 $X=2080 $Y=2115
X1 6 Output B 4 nmos_vtg_0 $T=3140 2225 0 0 $X=2820 $Y=2115
X2 Output B 6 4 nmos_vtg_0 $T=3880 2225 0 0 $X=3560 $Y=2115
X3 5 6 A 5 pmos_vtg_1 $T=2400 3215 0 0 $X=2080 $Y=3105
X4 A Output B 5 pmos_vtg_1 $T=3140 3215 0 0 $X=2820 $Y=3105
X5 Output B A 5 pmos_vtg_1 $T=3880 3215 0 0 $X=3560 $Y=3105
.ENDS
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
.SUBCKT Inverter gnd! vdd! Out In
** N=4 EP=4 IP=16 FDC=2
M0 Out In gnd! gnd! NMOS_VTG L=5e-08 W=1.44e-06 AD=1.161e-13 AS=1.0845e-13 PD=3.36e-06 PS=3.19e-06 $X=2045 $Y=110 $D=5
M1 Out In vdd! vdd! PMOS_VTG L=5e-08 W=1.96e-06 AD=1.6015e-13 AS=1.57e-13 PD=4.57e-06 PS=4.5e-06 $X=2040 $Y=3340 $D=4
.ENDS
***************************************
.SUBCKT AND gnd! vdd! B A Output
** N=7 EP=5 IP=6 FDC=6
M0 7 B gnd! gnd! NMOS_VTG L=5e-08 W=1.63e-06 AD=2.282e-13 AS=1.77425e-13 PD=3.54e-06 PS=3.485e-06 $X=-1025 $Y=-3500 $D=5
M1 2 A 7 gnd! NMOS_VTG L=5e-08 W=1.63e-06 AD=1.834e-13 AS=2.282e-13 PD=3.49e-06 PS=3.54e-06 $X=-645 $Y=-3500 $D=5
M2 2 B vdd! vdd! PMOS_VTG L=5e-08 W=1.44e-06 AD=2.016e-13 AS=1.58175e-13 PD=3.16e-06 PS=3.105e-06 $X=-1025 $Y=150 $D=4
M3 vdd! A 2 vdd! PMOS_VTG L=5e-08 W=1.44e-06 AD=1.512e-13 AS=2.016e-13 PD=3.11e-06 PS=3.16e-06 $X=-645 $Y=150 $D=4
X6 gnd! vdd! Output 2 Inverter $T=-1610 -4155 0 0 $X=0 $Y=-4155
.ENDS
***************************************
.SUBCKT FULL_ADDER gnd! A Cin B vdd! S Cout
** N=12 EP=7 IP=28 FDC=30
M0 gnd! 5 9 gnd! NMOS_VTG L=5e-08 W=7.2e-07 AD=1.008e-13 AS=5.85e-14 PD=1.72e-06 PS=1.76e-06 $X=9275 $Y=2550 $D=5
M1 9 7 gnd! gnd! NMOS_VTG L=5e-08 W=7.2e-07 AD=5.31e-14 AS=1.008e-13 PD=1.64e-06 PS=1.72e-06 $X=9655 $Y=2550 $D=5
M2 12 5 vdd! vdd! PMOS_VTG L=5e-08 W=1.56e-06 AD=2.184e-13 AS=1.515e-13 PD=3.4e-06 PS=3.32e-06 $X=9275 $Y=4350 $D=4
M3 9 7 12 vdd! PMOS_VTG L=5e-08 W=1.56e-06 AD=1.4625e-13 AS=2.184e-13 PD=3.32e-06 PS=3.4e-06 $X=9655 $Y=4350 $D=4
X6 Cin S 2 gnd! vdd! XOR $T=145 1355 0 0 $X=2225 $Y=3250
X7 B 2 A gnd! vdd! XOR $T=145 3975 0 0 $X=2225 $Y=5870
X10 gnd! vdd! Cout 9 Inverter $T=8615 1000 0 0 $X=10225 $Y=1000
X11 gnd! vdd! 2 Cin 5 AND $T=5805 5155 0 0 $X=4445 $Y=1000
X12 gnd! vdd! A B 7 AND $T=8035 5155 0 0 $X=6675 $Y=1000
.ENDS
***************************************
.SUBCKT RIPPLE B<0> vdd! gnd! A<0> S<0> S<1> S<2> S<3> S<4> S<5> S<6> S<7> Cout B<1> A<1> B<2> A<2> B<3> A<3> B<4>
+ A<4> B<5> A<5> B<6> A<6> B<7> A<7>
** N=34 EP=27 IP=59 FDC=222
X0 B<0> S<0> A<0> gnd! vdd! XOR $T=-6670 -3010 0 0 $X=-4590 $Y=-1115
X1 gnd! vdd! A<0> B<0> 2 AND $T=-870 0 0 0 $X=-2230 $Y=-4155
X2 gnd! A<1> 2 B<1> vdd! S<1> 3 FULL_ADDER $T=-1825 -5155 0 0 $X=0 $Y=-4155
X3 gnd! A<2> 3 B<2> vdd! S<2> 4 FULL_ADDER $T=7445 -5155 0 0 $X=9270 $Y=-4155
X4 gnd! A<3> 4 B<3> vdd! S<3> 5 FULL_ADDER $T=16715 -5155 0 0 $X=18540 $Y=-4155
X5 gnd! A<4> 5 B<4> vdd! S<4> 6 FULL_ADDER $T=25985 -5155 0 0 $X=27810 $Y=-4155
X6 gnd! A<5> 6 B<5> vdd! S<5> 7 FULL_ADDER $T=35255 -5155 0 0 $X=37080 $Y=-4155
X7 gnd! A<6> 7 B<6> vdd! S<6> 8 FULL_ADDER $T=44525 -5155 0 0 $X=46350 $Y=-4155
X8 gnd! A<7> 8 B<7> vdd! S<7> Cout FULL_ADDER $T=53795 -5155 0 0 $X=55620 $Y=-4155
.ENDS
***************************************
