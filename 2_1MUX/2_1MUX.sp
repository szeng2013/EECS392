* SPICE NETLIST
***************************************

.SUBCKT M1_POLY_1
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT dcont_4
** N=1 EP=0 IP=0 FDC=0
.ENDS
***************************************
.SUBCKT pmos_vtg_3 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 PMOS_VTG L=5e-08 W=3e-07 AD=3.15e-14 AS=3.15e-14 PD=8.1e-07 PS=8.1e-07 $X=0 $Y=0 $D=4
.ENDS
***************************************
.SUBCKT nmos_vtg_2 1 2 3 4
** N=4 EP=4 IP=2 FDC=1
M0 2 3 1 4 NMOS_VTG L=5e-08 W=2.8e-07 AD=2.94e-14 AS=2.94e-14 PD=7.7e-07 PS=7.7e-07 $X=0 $Y=0 $D=5
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
.SUBCKT 2_1MUX IN1 IN0 S gnd! vdd! Output
** N=7 EP=6 IP=36 FDC=6
M0 7 S gnd! gnd! NMOS_VTG L=5e-08 W=1.44e-06 AD=1.161e-13 AS=1.0845e-13 PD=3.36e-06 PS=3.19e-06 $X=-435 $Y=110 $D=5
M1 7 S vdd! vdd! PMOS_VTG L=5e-08 W=1.96e-06 AD=1.6015e-13 AS=1.57e-13 PD=4.57e-06 PS=4.5e-06 $X=-440 $Y=3340 $D=4
X7 IN0 Output S vdd! pmos_vtg_3 $T=335 3340 0 0 $X=15 $Y=3230
X8 Output IN1 7 vdd! pmos_vtg_3 $T=1075 3340 0 0 $X=755 $Y=3230
X9 IN0 Output 7 gnd! nmos_vtg_2 $T=335 2410 0 0 $X=15 $Y=2300
X10 Output IN1 S gnd! nmos_vtg_2 $T=1075 2410 0 0 $X=755 $Y=2300
.ENDS
***************************************
