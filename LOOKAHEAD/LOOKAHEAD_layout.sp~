.include
"/vol/eecs391/FreePDK45/ncsu_basekit/models/hspice/hspice_nom.include"
.include "~/models_nom/NMOS_VTG.inc"
.include "~/models_nom/PMOS_VTG.inc"

*device definition
.include "CMOS.pex.netlist"

.global

* instance of device
x1 IN VDD! GND! OUT CMOS

.TEMP 25
.TRAN 1e-9 100e-9 START=0.0

.op
.option post

*stimui
.include "/home/sjz474/simulation/CMOS/hspiceD/schematic/netlist/_graphical_stimuli.scs"
.END
