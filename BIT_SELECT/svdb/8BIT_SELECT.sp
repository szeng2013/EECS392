* SPICE NETLIST
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
.SUBCKT 2_1MUX IN1 IN0 S Output gnd! vdd!
** N=7 EP=6 IP=24 FDC=6
X4 gnd! vdd! 4 S Inverter $T=-2480 0 0 0 $X=-870 $Y=0
X5 IN0 Output 4 gnd! nmos_vtg_0 $T=335 2410 0 0 $X=15 $Y=2300
X6 Output IN1 S gnd! nmos_vtg_0 $T=1075 2410 0 0 $X=755 $Y=2300
X7 IN0 Output S vdd! pmos_vtg_1 $T=335 3340 0 0 $X=15 $Y=3230
X8 Output IN1 4 vdd! pmos_vtg_1 $T=1075 3340 0 0 $X=755 $Y=3230
.ENDS
***************************************
.SUBCKT XOR B Output A 4 5
** N=6 EP=5 IP=28 FDC=6
X4 4 6 A 4 nmos_vtg_0 $T=2400 2225 0 0 $X=2080 $Y=2115
X5 6 Output B 4 nmos_vtg_0 $T=3140 2225 0 0 $X=2820 $Y=2115
X6 Output B 6 4 nmos_vtg_0 $T=3880 2225 0 0 $X=3560 $Y=2115
X7 5 6 A 5 pmos_vtg_1 $T=2400 3215 0 0 $X=2080 $Y=3105
X8 A Output B 5 pmos_vtg_1 $T=3140 3215 0 0 $X=2820 $Y=3105
X9 Output B A 5 pmos_vtg_1 $T=3880 3215 0 0 $X=3560 $Y=3105
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
.SUBCKT FULL_ADDER gnd! A Cin B vdd! Cout S
** N=12 EP=7 IP=28 FDC=30
M0 gnd! 5 9 gnd! NMOS_VTG L=5e-08 W=7.2e-07 AD=1.008e-13 AS=5.85e-14 PD=1.72e-06 PS=1.76e-06 $X=9275 $Y=2550 $D=5
M1 9 7 gnd! gnd! NMOS_VTG L=5e-08 W=7.2e-07 AD=5.31e-14 AS=1.008e-13 PD=1.64e-06 PS=1.72e-06 $X=9655 $Y=2550 $D=5
M2 12 5 vdd! vdd! PMOS_VTG L=5e-08 W=1.56e-06 AD=2.184e-13 AS=1.515e-13 PD=3.4e-06 PS=3.32e-06 $X=9275 $Y=4350 $D=4
M3 9 7 12 vdd! PMOS_VTG L=5e-08 W=1.56e-06 AD=1.4625e-13 AS=2.184e-13 PD=3.32e-06 PS=3.4e-06 $X=9655 $Y=4350 $D=4
X8 gnd! vdd! Cout 9 Inverter $T=8615 1000 0 0 $X=10225 $Y=1000
X9 Cin S 2 gnd! vdd! XOR $T=145 1355 0 0 $X=2225 $Y=3250
X10 B 2 A gnd! vdd! XOR $T=145 3975 0 0 $X=2225 $Y=5870
X11 gnd! vdd! 2 Cin 5 AND $T=5805 5155 0 0 $X=4445 $Y=1000
X12 gnd! vdd! A B 7 AND $T=8035 5155 0 0 $X=6675 $Y=1000
.ENDS
***************************************
.SUBCKT ICV_2 1 2 3 4 5 6 7 8 9 10 11
** N=11 EP=11 IP=14 FDC=60
X0 2 9 7 8 1 4 3 FULL_ADDER $T=0 0 0 0 $X=1825 $Y=1000
X1 2 11 4 10 1 6 5 FULL_ADDER $T=9270 0 0 0 $X=11095 $Y=1000
.ENDS
***************************************
.SUBCKT 8BIT_SELECT B<0> vdd! gnd! A<0> S<4> S<5> S<6> S<7> Cout S<0> S<3> S<1> S<2> B<4> A<4> B<5> A<5> B<6> A<6> B<7>
+ A<7> B<3> A<3> B<1> A<1> B<2> A<2>
** N=47 EP=27 IP=102 FDC=372
X0 8 9 6 S<4> gnd! vdd! 2_1MUX $T=9230 4145 0 90 $X=1860 $Y=3275
X1 12 13 6 S<5> gnd! vdd! 2_1MUX $T=18500 4145 0 90 $X=11130 $Y=3275
X2 16 17 6 S<6> gnd! vdd! 2_1MUX $T=27775 4145 0 90 $X=20405 $Y=3275
X3 20 21 6 S<7> gnd! vdd! 2_1MUX $T=37040 4145 0 90 $X=29670 $Y=3275
X4 22 23 6 Cout gnd! vdd! 2_1MUX $T=38045 1595 0 0 $X=37175 $Y=1595
X5 B<0> S<0> A<0> gnd! vdd! XOR $T=-34655 1145 0 0 $X=-32575 $Y=3040
X6 gnd! vdd! A<0> B<0> 2 AND $T=-28855 4155 0 0 $X=-30215 $Y=0
X7 gnd! A<3> 4 B<3> vdd! 6 S<3> FULL_ADDER $T=-11270 -1000 0 0 $X=-9445 $Y=0
X8 vdd! gnd! S<1> 3 S<2> 4 2 B<1> A<1> B<2> A<2> ICV_2 $T=-29810 -1000 0 0 $X=-27985 $Y=0
X9 vdd! gnd! 8 10 12 14 vdd! B<4> A<4> B<5> A<5> ICV_2 $T=-1865 -5545 0 0 $X=-40 $Y=-4545
X10 vdd! gnd! 9 11 13 15 gnd! B<4> A<4> B<5> A<5> ICV_2 $T=-1865 14460 1 0 $X=-40 $Y=5830
X11 vdd! gnd! 16 18 20 22 14 B<6> A<6> B<7> A<7> ICV_2 $T=16675 -5545 0 0 $X=18500 $Y=-4545
X12 vdd! gnd! 17 19 21 23 15 B<6> A<6> B<7> A<7> ICV_2 $T=16675 14460 1 0 $X=18500 $Y=5830
.ENDS
***************************************
