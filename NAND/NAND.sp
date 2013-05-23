* SPICE NETLIST
***************************************

.SUBCKT M1_POLY_2
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
