.include 
"/vol/eecs391/FreePDK45/ncsu_basekit/models/hspice/hspice_nom.include"

* other lines from email
.include "~/models_nom/NMOS_VTG.inc"
.include "~/models_nom/PMOS_VTG.inc"

*device definition
.include "CALC.pex.netlist"

.global

*instance of device
*be careful, as this shit will fuck with you
x1 VDD! GND! I0 I1 I2 I3 B00 B10 B20 B30 S00 S10 O0 O1 O2 O3 S2 CLK CALC

.TEMP 25
.TRAN 100e-12 1000e-12 START =0.0

.op
.option post

*stimuli
.include "/home/gms130/simulation/CALC/hspiceD/schematic/netlist/_graphical_stimuli.scs"
.END
