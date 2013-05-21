* SPICE NETLIST
***************************************

.SUBCKT M1_N_2
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_P_1
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT ICV_1
** N=1 EP=0 IP=2 FDC=0
.ENDS
***************************************
.SUBCKT M1_POLY_0
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT INVERTER 1 2 3 4
** N=4 EP=4 IP=16 FDC=2
M0 3 4 1 1 NMOS_VTG L=5e-08 W=1.44e-06 AD=1.161e-13 AS=1.0845e-13 PD=3.36e-06 PS=3.19e-06 $X=2045 $Y=110 $D=5
M1 3 4 2 2 PMOS_VTG L=5e-08 W=1.96e-06 AD=1.6015e-13 AS=1.57e-13 PD=4.57e-06 PS=4.5e-06 $X=2040 $Y=3340 $D=4
.ENDS
***************************************
.SUBCKT NAND 1 2 3 4 5
** N=6 EP=5 IP=2 FDC=4
M0 6 4 1 2 NMOS_VTG L=5e-08 W=1.63e-06 AD=2.282e-13 AS=1.834e-13 PD=3.54e-06 PS=3.49e-06 $X=945 $Y=4395 $D=5
M1 2 5 6 2 NMOS_VTG L=5e-08 W=1.63e-06 AD=1.77425e-13 AS=2.282e-13 PD=3.485e-06 PS=3.54e-06 $X=1325 $Y=4395 $D=5
M2 1 4 3 3 PMOS_VTG L=5e-08 W=1.44e-06 AD=2.016e-13 AS=1.512e-13 PD=3.16e-06 PS=3.11e-06 $X=945 $Y=8045 $D=4
M3 3 5 1 3 PMOS_VTG L=5e-08 W=1.44e-06 AD=1.58175e-13 AS=2.016e-13 PD=3.105e-06 PS=3.16e-06 $X=1325 $Y=8045 $D=4
.ENDS
***************************************
.SUBCKT XOR B gnd! A vdd! Output
** N=9 EP=5 IP=23 FDC=16
X0 gnd! vdd! 1 B INVERTER $T=2780 740 1 180 $X=295 $Y=740
X1 gnd! vdd! 6 A INVERTER $T=3335 740 0 0 $X=4945 $Y=740
X2 4 gnd! vdd! A 1 NAND $T=755 -3545 0 0 $X=1300 $Y=740
X3 Output gnd! vdd! 4 9 NAND $T=1970 -3545 0 0 $X=2515 $Y=740
X4 9 gnd! vdd! B 6 NAND $T=3185 -3545 0 0 $X=3730 $Y=740
.ENDS
***************************************
