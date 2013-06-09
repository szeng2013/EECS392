.include
"/vol/eecs391/FreePDK45/ncsu_basekit/models/hspice/hspice_nom.include"
.include "~/models_nom/NMOS_VTG.inc"
.include "~/models_nom/PMOS_VTG.inc"

*device definition
.include "BIT_SELECT.pex.netlist"

.global

* instance of device
x1   B<0> VDD! INIT GND! A<0> S<4> S<5> S<6> S<7> COUT S<0> S<3> S<1> S<2> B<4> A<4> B<5> A<5> B<6> A<6> B<7> A<7> B<3> A<3> B<1> A<1> B<2> A<2> BIT_SELECT

.IC V(INIT) = 0.9
.TEMP 25
.TRAN 1e-9 100e-9 START=0.0

.op
.option post

*stimui
.include "/home/sjz474/simulation/BIT_SELECT/hspiceD/schematic/netlist/_graphical_stimuli.scs"
.END
