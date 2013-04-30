* SPICE NETLIST
***************************************

.SUBCKT dcont_3
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT dcont_2
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT CMOS In gnd! vdd! Out
** N=4 EP=4 IP=4 FDC=2
M0 Out In gnd! gnd! NMOS_VTG L=5e-08 W=1.5e-07 AD=1.575e-14 AS=1.575e-14 PD=5.1e-07 PS=5.1e-07 $X=-5120 $Y=4840 $D=5
M1 Out In vdd! vdd! PMOS_VTG L=5e-08 W=6e-07 AD=6.3e-14 AS=6.3e-14 PD=1.41e-06 PS=1.41e-06 $X=-4380 $Y=3940 $D=4
.ENDS
***************************************
