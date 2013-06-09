* SPICE NETLIST
***************************************

.SUBCKT PTAP_0
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT NTAP_1
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_POLY_2
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_N_5
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_P_4
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_1
** N=1 EP=0 IP=2 FDC=0
.ENDS
***************************************
.SUBCKT Inverter gnd! vdd! Out In
** N=4 EP=4 IP=18 FDC=2
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
.SUBCKT ICV_2 1 2 3 4 5 6 7 8
** N=8 EP=8 IP=10 FDC=12
X0 4 3 1 2 5 AND $T=0 0 0 0 $X=-1360 $Y=-4155
X1 4 3 6 7 8 AND $T=2230 0 0 0 $X=870 $Y=-4155
.ENDS
***************************************
.SUBCKT dcont_6
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
.SUBCKT ICV_3 1 2 3 4 5 6 7
** N=7 EP=7 IP=10 FDC=12
X0 6 3 4 1 2 XOR $T=0 0 0 0 $X=2080 $Y=1895
X1 7 5 6 1 2 XOR $T=2220 0 0 0 $X=4300 $Y=1895
.ENDS
***************************************
.SUBCKT ICV_4 1 2 3 4 5 6
** N=6 EP=6 IP=8 FDC=4
X0 2 1 4 3 Inverter $T=0 0 0 0 $X=1610 $Y=0
X1 2 1 6 5 Inverter $T=1005 0 0 0 $X=2615 $Y=0
.ENDS
***************************************
.SUBCKT Booth_Encoder In<6> In<5> In<4> gnd! In<3> In<7> In<2> In<1> In<0> vdd! OutputB<7> OutputB<6> OutputB<5> OutputB<4> OutputB<3> OutputB<2> OutputB<1> OutputB<0> OutputA<7> OutputA<6>
+ OutputA<5> OutputA<4> OutputA<3> OutputA<2> OutputA<1> OutputA<0>
** N=33 EP=26 IP=84 FDC=110
X2 gnd! vdd! 16 In<0> Inverter $T=6365 -3875 0 0 $X=7975 $Y=-3875
X3 In<7> 2 vdd! gnd! OutputB<7> In<6> 4 OutputB<6> ICV_2 $T=10205 280 0 0 $X=8845 $Y=-3875
X4 In<5> 6 vdd! gnd! OutputB<5> In<4> 9 OutputB<4> ICV_2 $T=14665 280 0 0 $X=13305 $Y=-3875
X5 In<3> 12 vdd! gnd! OutputB<3> In<2> 14 OutputB<2> ICV_2 $T=19125 280 0 0 $X=17765 $Y=-3875
X6 In<1> 16 vdd! gnd! OutputB<1> In<0> vdd! OutputB<0> ICV_2 $T=23585 280 0 0 $X=22225 $Y=-3875
X7 gnd! vdd! OutputA<7> In<7> OutputA<6> In<6> In<5> ICV_3 $T=3025 1830 0 0 $X=5105 $Y=3725
X8 gnd! vdd! OutputA<5> In<5> OutputA<4> In<4> In<3> ICV_3 $T=7465 1830 0 0 $X=9545 $Y=3725
X9 gnd! vdd! OutputA<3> In<3> OutputA<2> In<2> In<1> ICV_3 $T=11905 1830 0 0 $X=13985 $Y=3725
X10 gnd! vdd! OutputA<1> In<1> OutputA<0> In<0> gnd! ICV_3 $T=16345 1830 0 0 $X=18425 $Y=3725
X11 vdd! gnd! In<6> 2 In<5> 4 ICV_4 $T=335 -3875 0 0 $X=1945 $Y=-3875
X12 vdd! gnd! In<4> 6 In<3> 9 ICV_4 $T=2345 -3875 0 0 $X=3955 $Y=-3875
X13 vdd! gnd! In<2> 12 In<1> 14 ICV_4 $T=4355 -3875 0 0 $X=5965 $Y=-3875
.ENDS
***************************************
