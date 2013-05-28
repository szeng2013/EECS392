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
.SUBCKT M1_POLY_1
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT dcont_6
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pmos_vtg_1 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=3e-07 AD=3.15e-14 AS=3.15e-14 PD=8.1e-07 PS=8.1e-07 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT nmos_vtg_0 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 NMOS_VTG L=5e-08 W=2.8e-07 AD=2.94e-14 AS=2.94e-14 PD=7.7e-07 PS=7.7e-07 $X=0 $Y=0 $D=5
.ENDS
***************************************
.SUBCKT HALF_ADDER B S A gnd! vdd! Cout
** N=9 EP=6 IP=48 FDC=12
M0 9 A gnd! gnd! NMOS_VTG L=5e-08 W=1.63e-06 AD=2.282e-13 AS=1.77425e-13 PD=3.54e-06 PS=3.485e-06 $X=335 $Y=-3500 $D=5
M1 5 B 9 gnd! NMOS_VTG L=5e-08 W=1.63e-06 AD=1.834e-13 AS=2.282e-13 PD=3.49e-06 PS=3.54e-06 $X=715 $Y=-3500 $D=5
M2 Cout 5 gnd! gnd! NMOS_VTG L=5e-08 W=1.44e-06 AD=1.161e-13 AS=1.0845e-13 PD=3.36e-06 PS=3.19e-06 $X=1795 $Y=-4045 $D=5
M3 5 A vdd! vdd! PMOS_VTG L=5e-08 W=1.44e-06 AD=2.016e-13 AS=1.58175e-13 PD=3.16e-06 PS=3.105e-06 $X=335 $Y=150 $D=4
M4 vdd! B 5 vdd! PMOS_VTG L=5e-08 W=1.44e-06 AD=1.512e-13 AS=2.016e-13 PD=3.11e-06 PS=3.16e-06 $X=715 $Y=150 $D=4
M5 Cout 5 vdd! vdd! PMOS_VTG L=5e-08 W=1.96e-06 AD=1.6015e-13 AS=1.57e-13 PD=4.57e-06 PS=4.5e-06 $X=1790 $Y=-815 $D=4
X30 vdd! 2 A vdd! pmos_vtg_1 $T=-2040 205 0 0 $X=-2360 $Y=95
X31 A S B vdd! pmos_vtg_1 $T=-1300 205 0 0 $X=-1620 $Y=95
X32 S B A vdd! pmos_vtg_1 $T=-560 205 0 0 $X=-880 $Y=95
X33 gnd! 2 A gnd! nmos_vtg_0 $T=-2040 -785 0 0 $X=-2360 $Y=-895
X34 2 S B gnd! nmos_vtg_0 $T=-1300 -785 0 0 $X=-1620 $Y=-895
X35 S B 2 gnd! nmos_vtg_0 $T=-560 -785 0 0 $X=-880 $Y=-895
.ENDS
***************************************
