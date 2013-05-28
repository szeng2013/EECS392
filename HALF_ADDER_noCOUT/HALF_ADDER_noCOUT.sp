* SPICE NETLIST
***************************************

.SUBCKT dcont_2
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
.SUBCKT M1_POLY_0
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT HALF_ADDER_noCOUT B S A
** N=8 EP=3 IP=28 FDC=6
X0 5 2 A 7 nmos_vtg_0 $T=2400 2225 0 0 $X=2080 $Y=2115
X1 2 S B 7 nmos_vtg_0 $T=3140 2225 0 0 $X=2820 $Y=2115
X2 S B 2 7 nmos_vtg_0 $T=3880 2225 0 0 $X=3560 $Y=2115
X3 6 2 A 8 pmos_vtg_1 $T=2400 3215 0 0 $X=2080 $Y=3105
X4 A S B 8 pmos_vtg_1 $T=3140 3215 0 0 $X=2820 $Y=3105
X5 S B A 8 pmos_vtg_1 $T=3880 3215 0 0 $X=3560 $Y=3105
.ENDS
***************************************
