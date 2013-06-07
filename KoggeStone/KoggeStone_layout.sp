
.include "/vol/eecs391/FreePDK45/ncsu_basekit/models/hspice/hspice_nom.include"

*device definition
.include "KoggeStone.pex.netlist"

.global

* instance of device
x1 GND! VDD! CIN S7 S3 S6 S2 S5 S1 S4 S0 B7 A7 B6 A6 B5 A5 B4
+ A4 B3 A3 B2 A2 B1 A1 B0 A0 COUT KoggeStone

.TEMP 25
.TRAN 1e-9 100e-9 START=0.0

.op
.option post

*stimuli
.include "/home/jwe920/simulation/KoggeStone/hspiceD/schematic/netlist/_graphical_stimuli.scs"
.END
