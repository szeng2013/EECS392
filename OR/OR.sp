* SPICE NETLIST
***************************************

.SUBCKT M1_N_0
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
.SUBCKT OR gnd! vdd! Output A B
** N=7 EP=5 IP=20 FDC=6
M0 gnd! A 2 gnd! NMOS_VTG L=5e-08 W=7.2e-07 AD=1.008e-13 AS=5.85e-14 PD=1.72e-06 PS=1.76e-06 $X=-815 $Y=-1620 $D=5
M1 2 B gnd! gnd! NMOS_VTG L=5e-08 W=7.2e-07 AD=5.31e-14 AS=1.008e-13 PD=1.64e-06 PS=1.72e-06 $X=-435 $Y=-1620 $D=5
M2 Output 2 gnd! gnd! NMOS_VTG L=5e-08 W=1.44e-06 AD=1.161e-13 AS=1.0845e-13 PD=3.36e-06 PS=3.19e-06 $X=570 $Y=-3060 $D=5
M3 7 A vdd! vdd! PMOS_VTG L=5e-08 W=1.56e-06 AD=2.184e-13 AS=1.515e-13 PD=3.4e-06 PS=3.32e-06 $X=-815 $Y=180 $D=4
M4 2 B 7 vdd! PMOS_VTG L=5e-08 W=1.56e-06 AD=1.4625e-13 AS=2.184e-13 PD=3.32e-06 PS=3.4e-06 $X=-435 $Y=180 $D=4
M5 Output 2 vdd! vdd! PMOS_VTG L=5e-08 W=1.96e-06 AD=1.6015e-13 AS=1.57e-13 PD=4.57e-06 PS=4.5e-06 $X=565 $Y=170 $D=4
.ENDS
***************************************
