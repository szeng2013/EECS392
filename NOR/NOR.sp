* SPICE NETLIST
***************************************

.SUBCKT M1_POLY_2
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT M1_N_0
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT NOR gnd! Output vdd! A B
** N=6 EP=5 IP=4 FDC=4
M0 gnd! A Output gnd! NMOS_VTG L=5e-08 W=7.2e-07 AD=1.008e-13 AS=5.85e-14 PD=1.72e-06 PS=1.76e-06 $X=3705 $Y=545 $D=5
M1 Output B gnd! gnd! NMOS_VTG L=5e-08 W=7.2e-07 AD=5.31e-14 AS=1.008e-13 PD=1.64e-06 PS=1.72e-06 $X=4085 $Y=545 $D=5
M2 6 A vdd! vdd! PMOS_VTG L=5e-08 W=1.56e-06 AD=2.184e-13 AS=1.515e-13 PD=3.4e-06 PS=3.32e-06 $X=3705 $Y=2345 $D=4
M3 Output B 6 vdd! PMOS_VTG L=5e-08 W=1.56e-06 AD=1.4625e-13 AS=2.184e-13 PD=3.32e-06 PS=3.4e-06 $X=4085 $Y=2345 $D=4
.ENDS
***************************************
