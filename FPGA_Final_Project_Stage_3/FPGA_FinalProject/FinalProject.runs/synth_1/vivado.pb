
?
Command: %s
1870*	planAhead2?
?read_checkpoint -auto_incremental -incremental C:/Xilinx/Vivado/Projects/FinalProject/FinalProject.srcs/utils_1/imports/synth_1/ZZ_Top.dcp2default:defaultZ12-2866h px? 
?
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2o
[C:/Xilinx/Vivado/Projects/FinalProject/FinalProject.srcs/utils_1/imports/synth_1/ZZ_Top.dcp2default:defaultZ12-5825h px? 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px? 
s
Command: %s
53*	vivadotcl2B
.synth_design -top ZZ_Top -part xc7z020clg484-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7z020clg484-12default:defaultZ21-403h px? 
?
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
?
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px? 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px? 
`
#Helper process launched with PID %s4824*oasys2
236402default:defaultZ8-7075h px? 
?
%s*synth2?
wStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1564.875 ; gain = 0.000
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
ZZ_Top2default:default2N
8C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/ZZ_Top.vhd2default:default2
802default:default8@Z8-638h px? 
?
synthesizing module '%s'638*oasys2
	debouncer2default:default2Q
;C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/debouncer.vhd2default:default2
132default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	debouncer2default:default2
12default:default2
12default:default2Q
;C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/debouncer.vhd2default:default2
132default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2!
edge_detector2default:default2U
?C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/edge_detector.vhd2default:default2
422default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2!
edge_detector2default:default2
22default:default2
12default:default2U
?C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/edge_detector.vhd2default:default2
422default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
	oled_ctrl2default:default2Q
;C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/oled_ctrl.vhd2default:default2
342default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	oled_init2default:default2O
;C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/oled_init.vhd2default:default2
132default:default2

Initialize2default:default2
	oled_init2default:default2Q
;C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/oled_ctrl.vhd2default:default2
712default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
	oled_init2default:default2Q
;C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/oled_init.vhd2default:default2
262default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
spi_ctrl2default:default2N
:C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/spi_ctrl.vhd2default:default2
142default:default2
spi_comp2default:default2
spi_ctrl2default:default2Q
;C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/oled_init.vhd2default:default2
932default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
spi_ctrl2default:default2P
:C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/spi_ctrl.vhd2default:default2
242default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
spi_ctrl2default:default2
32default:default2
12default:default2P
:C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/spi_ctrl.vhd2default:default2
242default:default8@Z8-256h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
delay2default:default2K
7C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/delay.vhd2default:default2
132default:default2

delay_comp2default:default2
delay2default:default2Q
;C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/oled_init.vhd2default:default2
1012default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
delay2default:default2M
7C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/delay.vhd2default:default2
212default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
delay2default:default2
42default:default2
12default:default2M
7C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/delay.vhd2default:default2
212default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	oled_init2default:default2
52default:default2
12default:default2Q
;C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/oled_init.vhd2default:default2
262default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
oled_ex2default:default2O
9C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/oled_ex.vhd2default:default2
302default:default8@Z8-638h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
spi_ctrl2default:default2N
:C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/spi_ctrl.vhd2default:default2
142default:default2
spi_comp2default:default2
spi_ctrl2default:default2O
9C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/oled_ex.vhd2default:default2
1682default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
delay2default:default2K
7C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/delay.vhd2default:default2
132default:default2

delay_comp2default:default2
delay2default:default2O
9C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/oled_ex.vhd2default:default2
1772default:default8@Z8-3491h px? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	ascii_rom2default:default2O
;C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/ascii_rom.vhd2default:default2
122default:default2!
char_lib_comp2default:default2
	ascii_rom2default:default2O
9C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/oled_ex.vhd2default:default2
1842default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
	ascii_rom2default:default2Q
;C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/ascii_rom.vhd2default:default2
182default:default8@Z8-638h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	ascii_rom2default:default2
62default:default2
12default:default2Q
;C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/ascii_rom.vhd2default:default2
182default:default8@Z8-256h px? 
?
default block is never used226*oasys2O
9C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/oled_ex.vhd2default:default2
2002default:default8@Z8-226h px? 
?
n3D RAM %s  for this pattern/configuration is not supported. This will most likely be implemented in registers
4275*oasys2#
data_screen_reg2default:defaultZ8-5856h px? 
?
n3D RAM %s  for this pattern/configuration is not supported. This will most likely be implemented in registers
4275*oasys2&
current_screen_reg2default:defaultZ8-5856h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
oled_ex2default:default2
72default:default2
12default:default2O
9C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/oled_ex.vhd2default:default2
302default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	oled_ctrl2default:default2
82default:default2
12default:default2Q
;C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/oled_ctrl.vhd2default:default2
342default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
memory2default:default2e
OC:/Users/J/Desktop/FPGA FinalProject/FinalProject.srcs/sources_1/new/memory.vhd2default:default2
492default:default8@Z8-638h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
start2default:default2e
OC:/Users/J/Desktop/FPGA FinalProject/FinalProject.srcs/sources_1/new/memory.vhd2default:default2
542default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
goal_x2default:default2e
OC:/Users/J/Desktop/FPGA FinalProject/FinalProject.srcs/sources_1/new/memory.vhd2default:default2
542default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
goal_y2default:default2e
OC:/Users/J/Desktop/FPGA FinalProject/FinalProject.srcs/sources_1/new/memory.vhd2default:default2
542default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
memory2default:default2
92default:default2
12default:default2e
OC:/Users/J/Desktop/FPGA FinalProject/FinalProject.srcs/sources_1/new/memory.vhd2default:default2
492default:default8@Z8-256h px? 
?
synthesizing module '%s'638*oasys2
robotFSM2default:default2g
QC:/Users/J/Desktop/FPGA FinalProject/FinalProject.srcs/sources_1/new/robotFSM.vhd2default:default2
522default:default8@Z8-638h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2

prev_y_reg2default:default2g
QC:/Users/J/Desktop/FPGA FinalProject/FinalProject.srcs/sources_1/new/robotFSM.vhd2default:default2
792default:default8@Z8-6014h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
robotFSM2default:default2
102default:default2
12default:default2g
QC:/Users/J/Desktop/FPGA FinalProject/FinalProject.srcs/sources_1/new/robotFSM.vhd2default:default2
522default:default8@Z8-256h px? 
?
n3D RAM %s  for this pattern/configuration is not supported. This will most likely be implemented in registers
4275*oasys2#
oled_screen_reg2default:defaultZ8-5856h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2$
input_change_reg2default:default2N
8C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/ZZ_Top.vhd2default:default2
2832default:default8@Z8-6014h px? 
?
+Unused sequential element %s was removed. 
4326*oasys2
	count_reg2default:default2N
8C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/ZZ_Top.vhd2default:default2
5632default:default8@Z8-6014h px? 
?
0Net %s in module/entity %s does not have driver.3422*oasys2
goal_x2default:default2
ZZ_Top2default:default2N
8C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/ZZ_Top.vhd2default:default2
1142default:default8@Z8-3848h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
ZZ_Top2default:default2
112default:default2
12default:default2N
8C:/Users/J/Desktop/FPGA FinalProject/src-vhdl/ZZ_Top.vhd2default:default2
802default:default8@Z8-256h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[31]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[30]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[29]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[28]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[27]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[26]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[25]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[24]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[23]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[22]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[21]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[20]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[19]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[18]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[17]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[16]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[15]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[14]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[13]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[12]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[11]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_x[10]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2

start_x[9]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2

start_x[8]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2

start_x[7]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2

start_x[6]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2

start_x[5]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[31]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[30]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[29]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[28]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[27]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[26]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[25]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[24]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[23]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[22]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[21]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[20]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[19]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[18]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[17]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[16]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[15]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[14]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[13]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[12]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[11]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
start_y[10]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2

start_y[9]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2

start_y[8]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2

start_y[7]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2

start_y[6]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2

start_y[5]2default:default2
robotFSM2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
reset2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2
done2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[31]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[30]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[29]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[28]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[27]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[26]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[25]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[24]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[23]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[22]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[21]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[20]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[19]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[18]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[17]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[16]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[15]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[14]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[13]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[12]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[11]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
dout_path[10]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dout_path[9]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dout_path[8]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dout_path[7]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dout_path[6]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dout_path[5]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dout_path[4]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dout_path[3]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dout_path[2]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dout_path[1]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2 
dout_path[0]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
moves_mem[31]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
moves_mem[30]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
moves_mem[29]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
moves_mem[28]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
moves_mem[27]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
moves_mem[26]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
moves_mem[25]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
moves_mem[24]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
moves_mem[23]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
moves_mem[22]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
moves_mem[21]2default:default2
memory2default:defaultZ8-7129h px? 
?
9Port %s in module %s is either unconnected or has no load4866*oasys2!
moves_mem[20]2default:default2
memory2default:defaultZ8-7129h px? 
?
?Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-71292default:default2
1002default:defaultZ17-14h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1598.543 ; gain = 33.668
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 1620.422 ; gain = 55.547
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:08 ; elapsed = 00:00:08 . Memory (MB): peak = 1620.422 ; gain = 55.547
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0672default:default2
1620.4222default:default2
0.0002default:defaultZ17-268h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2N
8C:/Users/J/Desktop/FPGA FinalProject/Zedboard-Master.xdc2default:default8Z20-179h px? 
?
No ports matched '%s'.
584*	planAhead2<
([get_ports -of_objects [get_iobanks 33]]2default:default2N
8C:/Users/J/Desktop/FPGA FinalProject/Zedboard-Master.xdc2default:default2
3662default:default8@Z12-584h px? 
?
No ports matched '%s'.
584*	planAhead2<
([get_ports -of_objects [get_iobanks 34]]2default:default2N
8C:/Users/J/Desktop/FPGA FinalProject/Zedboard-Master.xdc2default:default2
3692default:default8@Z12-584h px? 
?
No ports matched '%s'.
584*	planAhead2<
([get_ports -of_objects [get_iobanks 34]]2default:default2N
8C:/Users/J/Desktop/FPGA FinalProject/Zedboard-Master.xdc2default:default2
3712default:default8@Z12-584h px? 
?
No ports matched '%s'.
584*	planAhead2<
([get_ports -of_objects [get_iobanks 35]]2default:default2N
8C:/Users/J/Desktop/FPGA FinalProject/Zedboard-Master.xdc2default:default2
3762default:default8@Z12-584h px? 
?
No ports matched '%s'.
584*	planAhead2<
([get_ports -of_objects [get_iobanks 13]]2default:default2N
8C:/Users/J/Desktop/FPGA FinalProject/Zedboard-Master.xdc2default:default2
3792default:default8@Z12-584h px? 
?
Finished Parsing XDC File [%s]
178*designutils2N
8C:/Users/J/Desktop/FPGA FinalProject/Zedboard-Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2L
8C:/Users/J/Desktop/FPGA FinalProject/Zedboard-Master.xdc2default:default2,
.Xil/ZZ_Top_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1686.0622default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0182default:default2
1686.0622default:default2
0.0002default:defaultZ17-268h px? 
?
[Reference run did not run incremental synthesis because %s; reverting to default synthesis
2138*designutils2+
the design is too small2default:defaultZ20-4072h px? 
?
?Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 1686.062 ; gain = 121.188
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7z020clg484-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 1686.062 ; gain = 121.188
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:15 ; elapsed = 00:00:15 . Memory (MB): peak = 1686.062 ; gain = 121.188
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2!
state_reg_reg2default:default2
	debouncer2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2%
current_state_reg2default:default2
spi_ctrl2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2%
current_state_reg2default:default2
delay2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2%
current_state_reg2default:default2
	oled_ctrl2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
robotFSM2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    zero |                         00000001 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_                 wait1_1 |                         00000010 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 wait1_2 |                         00000100 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                 wait1_3 |                         00001000 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_                     one |                         00010000 |                              100
2default:defaulth p
x
? 
?
%s
*synth2s
_                 wait0_1 |                         00100000 |                              101
2default:defaulth p
x
? 
?
%s
*synth2s
_                 wait0_2 |                         01000000 |                              110
2default:defaulth p
x
? 
?
%s
*synth2s
_                 wait0_3 |                         10000000 |                              111
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2!
state_reg_reg2default:default2
one-hot2default:default2
	debouncer2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    idle |                             0001 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                    send |                             0010 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                    done |                             0100 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                             1000 |                               11
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2%
current_state_reg2default:default2
one-hot2default:default2
spi_ctrl2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    idle |                             0001 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                    hold |                             0010 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                    done |                             0100 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                             1000 |                               11
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2%
current_state_reg2default:default2
one-hot2default:default2
delay2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                    idle |                             0001 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_          oledinitialize |                             0010 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_             oledexample |                             0100 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_                  iSTATE |                             1000 |                              111
2default:defaulth p
x
? 
.
%s
*synth2
*
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2%
current_state_reg2default:default2
one-hot2default:default2
	oled_ctrl2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2w
c                    init | 000000000000000000000000000000000001 |                           000000
2default:defaulth p
x
? 
?
%s
*synth2w
c                 check_n | 000000000000000000000000000000000010 |                           000001
2default:defaulth p
x
? 
?
%s
*synth2w
c          update_check_e | 000000000000000000000000000000000100 |                           000110
2default:defaulth p
x
? 
?
%s
*synth2w
c             set_check_e | 000000000000000000000000000000001000 |                           000111
2default:defaulth p
x
? 
?
%s
*synth2w
c                 check_e | 000000000000000000000000000000010000 |                           000101
2default:defaulth p
x
? 
?
%s
*synth2w
c          update_check_s | 000000000000000000000000000000100000 |                           001001
2default:defaulth p
x
? 
?
%s
*synth2w
c             set_check_s | 000000000000000000000000000001000000 |                           001010
2default:defaulth p
x
? 
?
%s
*synth2w
c                 check_s | 000000000000000000000000000010000000 |                           001000
2default:defaulth p
x
? 
?
%s
*synth2w
c          update_check_w | 000000000000000000000000000100000000 |                           001100
2default:defaulth p
x
? 
?
%s
*synth2w
c             set_check_w | 000000000000000000000000001000000000 |                           001101
2default:defaulth p
x
? 
?
%s
*synth2w
c                 check_w | 000000000000000000000000010000000000 |                           001011
2default:defaulth p
x
? 
?
%s
*synth2w
c              update_pos | 000000000000000000000000100000000000 |                           001110
2default:defaulth p
x
? 
?
%s
*synth2w
c              update_mem | 000000000000000000000001000000000000 |                           001111
2default:defaulth p
x
? 
?
%s
*synth2w
c                 set_mem | 000000000000000000000010000000000000 |                           010000
2default:defaulth p
x
? 
?
%s
*synth2w
c                read_mem | 000000000000000000000100000000000000 |                           010001
2default:defaulth p
x
? 
?
%s
*synth2w
c         update_check_wb | 000000000000000000001000000000000000 |                           010010
2default:defaulth p
x
? 
?
%s
*synth2w
c            set_check_wb | 000000000000000000010000000000000000 |                           010011
2default:defaulth p
x
? 
?
%s
*synth2w
c                check_wb | 000000000000000000100000000000000000 |                           010100
2default:defaulth p
x
? 
?
%s
*synth2w
c         update_check_sb | 000000000000000001000000000000000000 |                           010101
2default:defaulth p
x
? 
?
%s
*synth2w
c            set_check_sb | 000000000000000010000000000000000000 |                           010110
2default:defaulth p
x
? 
?
%s
*synth2w
c                check_sb | 000000000000000100000000000000000000 |                           010111
2default:defaulth p
x
? 
?
%s
*synth2w
c         update_check_eb | 000000000000001000000000000000000000 |                           011000
2default:defaulth p
x
? 
?
%s
*synth2w
c            set_check_eb | 000000000000010000000000000000000000 |                           011001
2default:defaulth p
x
? 
?
%s
*synth2w
c                check_eb | 000000000000100000000000000000000000 |                           011010
2default:defaulth p
x
? 
?
%s
*synth2w
c         update_check_nb | 000000000001000000000000000000000000 |                           011011
2default:defaulth p
x
? 
?
%s
*synth2w
c            set_check_nb | 000000000010000000000000000000000000 |                           011100
2default:defaulth p
x
? 
?
%s
*synth2w
c                check_nb | 000000000100000000000000000000000000 |                           011101
2default:defaulth p
x
? 
?
%s
*synth2w
c          update_check_n | 000000001000000000000000000000000000 |                           000010
2default:defaulth p
x
? 
?
%s
*synth2w
c            read_check_n | 000000010000000000000000000000000000 |                           000011
2default:defaulth p
x
? 
?
%s
*synth2w
c             set_check_n | 000000100000000000000000000000000000 |                           000100
2default:defaulth p
x
? 
?
%s
*synth2w
c            update_pos_b | 000001000000000000000000000000000000 |                           011110
2default:defaulth p
x
? 
?
%s
*synth2w
c            update_mem_b | 000010000000000000000000000000000000 |                           011111
2default:defaulth p
x
? 
?
%s
*synth2w
c               set_mem_b | 000100000000000000000000000000000000 |                           100000
2default:defaulth p
x
? 
?
%s
*synth2w
c              read_mem_b | 001000000000000000000000000000000000 |                           100001
2default:defaulth p
x
? 
?
%s
*synth2w
c             unreachable | 010000000000000000000000000000000000 |                           100011
2default:defaulth p
x
? 
?
%s
*synth2w
c              done_state | 100000000000000000000000000000000000 |                           100010
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2
robotFSM2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:18 ; elapsed = 00:00:18 . Memory (MB): peak = 1686.062 ; gain = 121.188
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit       Adders := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   31 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit       Adders := 7     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit       Adders := 5     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 3     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               12 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 222   
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                5 Bit    Registers := 17    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 30    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 31    
2default:defaulth p
x
? 
8
%s
*synth2 
+---RAMs : 
2default:defaulth p
x
? 
i
%s
*synth2Q
=	              512 Bit	(256 X 2 bit)          RAMs := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---ROMs : 
2default:defaulth p
x
? 
P
%s
*synth28
$	                    ROMs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
X
%s
*synth2@
,	  36 Input   36 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   36 Bit        Muxes := 24    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  36 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   32 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input   31 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  32 Input   12 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  32 Input   11 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    8 Bit        Muxes := 12    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 136   
2default:defaulth p
x
? 
X
%s
*synth2@
,	  32 Input    8 Bit        Muxes := 65    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 33    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  24 Input    8 Bit        Muxes := 10    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 18    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  10 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  28 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  32 Input    5 Bit        Muxes := 3     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 12    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  36 Input    5 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   6 Input    5 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    4 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 16    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  32 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 59    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  24 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  32 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 2     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	  24 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 245   
2default:defaulth p
x
? 
X
%s
*synth2@
,	   8 Input    1 Bit        Muxes := 24    
2default:defaulth p
x
? 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 6     
2default:defaulth p
x
? 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 19    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  28 Input    1 Bit        Muxes := 10    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  32 Input    1 Bit        Muxes := 76    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  36 Input    1 Bit        Muxes := 10    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  24 Input    1 Bit        Muxes := 17    
2default:defaulth p
x
? 
X
%s
*synth2@
,	  11 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px? 
?
iRegister %s driving address of a ROM cannot be packed in BRAM/URAM because of presence of initial value.
4359*oasys2!
temp_addr_reg2default:defaultZ8-6040h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2G
3Initialize/spi_comp/FSM_onehot_current_state_reg[3]2default:default2
	oled_ctrl2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2I
5Initialize/delay_comp/FSM_onehot_current_state_reg[3]2default:default2
	oled_ctrl2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2D
0Example/spi_comp/FSM_onehot_current_state_reg[3]2default:default2
	oled_ctrl2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2F
2Example/delay_comp/FSM_onehot_current_state_reg[3]2default:default2
	oled_ctrl2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys23
FSM_onehot_current_state_reg[3]2default:default2
	oled_ctrl2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:31 ; elapsed = 00:00:32 . Memory (MB): peak = 1686.062 ; gain = 121.188
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
M
%s*synth25
!
ROM: Preliminary Mapping Report
2default:defaulth px? 
u
%s*synth2]
I+------------+------------------------+---------------+----------------+
2default:defaulth px? 
v
%s*synth2^
J|Module Name | RTL Object             | Depth x Width | Implemented As | 
2default:defaulth px? 
u
%s*synth2]
I+------------+------------------------+---------------+----------------+
2default:defaulth px? 
v
%s*synth2^
J|oled_init   | after_state            | 32x1          | LUT            | 
2default:defaulth px? 
v
%s*synth2^
J|oled_init   | after_state            | 32x5          | LUT            | 
2default:defaulth px? 
v
%s*synth2^
J|oled_init   | temp_sdata             | 32x1          | LUT            | 
2default:defaulth px? 
v
%s*synth2^
J|oled_init   | temp_sdata             | 32x8          | LUT            | 
2default:defaulth px? 
v
%s*synth2^
J|oled_ex     | after_state            | 32x1          | LUT            | 
2default:defaulth px? 
v
%s*synth2^
J|oled_ex     | temp_addr              | 32x1          | LUT            | 
2default:defaulth px? 
v
%s*synth2^
J|oled_ex     | char_lib_comp/dout_reg | 1024x8        | Block RAM      | 
2default:defaulth px? 
v
%s*synth2^
J|oled_ex     | after_state            | 32x1          | LUT            | 
2default:defaulth px? 
v
%s*synth2^
J|oled_ex     | temp_addr              | 32x1          | LUT            | 
2default:defaulth px? 
v
%s*synth2^
J|oled_ctrl   | Initialize/after_state | 32x5          | LUT            | 
2default:defaulth px? 
v
%s*synth2^
J|oled_ctrl   | Initialize/temp_sdata  | 32x8          | LUT            | 
2default:defaulth px? 
v
%s*synth2^
J|oled_ctrl   | Initialize/after_state | 32x1          | LUT            | 
2default:defaulth px? 
v
%s*synth2^
J|oled_ctrl   | Initialize/temp_sdata  | 32x1          | LUT            | 
2default:defaulth px? 
v
%s*synth2^
J+------------+------------------------+---------------+----------------+

2default:defaulth px? 
j
%s*synth2R
>
Distributed RAM: Preliminary Mapping Report (see note below)
2default:defaulth px? 
|
%s*synth2d
P+------------+------------+-----------+----------------------+----------------+
2default:defaulth px? 
}
%s*synth2e
Q|Module Name | RTL Object | Inference | Size (Depth x Width) | Primitives     | 
2default:defaulth px? 
|
%s*synth2d
P+------------+------------+-----------+----------------------+----------------+
2default:defaulth px? 
}
%s*synth2e
Q|ZZ_Top      | path_reg   | Implied   | 256 x 2              | RAM128X1D x 4  | 
2default:defaulth px? 
}
%s*synth2e
Q+------------+------------+-----------+----------------------+----------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:36 ; elapsed = 00:00:37 . Memory (MB): peak = 1686.062 ; gain = 121.188
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:00:46 ; elapsed = 00:00:48 . Memory (MB): peak = 1731.793 ; gain = 166.918
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
S
%s
*synth2;
'
Distributed RAM: Final Mapping Report
2default:defaulth p
x
? 
|
%s
*synth2d
P+------------+------------+-----------+----------------------+----------------+
2default:defaulth p
x
? 
}
%s
*synth2e
Q|Module Name | RTL Object | Inference | Size (Depth x Width) | Primitives     | 
2default:defaulth p
x
? 
|
%s
*synth2d
P+------------+------------+-----------+----------------------+----------------+
2default:defaulth p
x
? 
}
%s
*synth2e
Q|ZZ_Top      | path_reg   | Implied   | 256 x 2              | RAM128X1D x 4  | 
2default:defaulth p
x
? 
}
%s
*synth2e
Q+------------+------------+-----------+----------------------+----------------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
?The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys27
#oled/Example/char_lib_comp/dout_reg2default:default2
Block2default:defaultZ8-7052h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:00:48 ; elapsed = 00:00:49 . Memory (MB): peak = 1741.852 ; gain = 176.977
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:00:51 ; elapsed = 00:00:53 . Memory (MB): peak = 1741.852 ; gain = 176.977
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:00:51 ; elapsed = 00:00:53 . Memory (MB): peak = 1741.852 ; gain = 176.977
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:52 ; elapsed = 00:00:53 . Memory (MB): peak = 1741.852 ; gain = 176.977
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:00:52 ; elapsed = 00:00:53 . Memory (MB): peak = 1741.852 ; gain = 176.977
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:52 ; elapsed = 00:00:53 . Memory (MB): peak = 1741.852 ; gain = 176.977
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:00:52 ; elapsed = 00:00:53 . Memory (MB): peak = 1741.852 ; gain = 176.977
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
G
%s*synth2/
+------+----------+------+
2default:defaulth px? 
G
%s*synth2/
|      |Cell      |Count |
2default:defaulth px? 
G
%s*synth2/
+------+----------+------+
2default:defaulth px? 
G
%s*synth2/
|1     |BUFG      |     1|
2default:defaulth px? 
G
%s*synth2/
|2     |CARRY4    |   246|
2default:defaulth px? 
G
%s*synth2/
|3     |LUT1      |    62|
2default:defaulth px? 
G
%s*synth2/
|4     |LUT2      |   144|
2default:defaulth px? 
G
%s*synth2/
|5     |LUT3      |   720|
2default:defaulth px? 
G
%s*synth2/
|6     |LUT4      |   244|
2default:defaulth px? 
G
%s*synth2/
|7     |LUT5      |   332|
2default:defaulth px? 
G
%s*synth2/
|8     |LUT6      |   983|
2default:defaulth px? 
G
%s*synth2/
|9     |MUXF7     |    63|
2default:defaulth px? 
G
%s*synth2/
|10    |MUXF8     |    29|
2default:defaulth px? 
G
%s*synth2/
|11    |RAM128X1D |     4|
2default:defaulth px? 
G
%s*synth2/
|12    |RAMB18E1  |     1|
2default:defaulth px? 
G
%s*synth2/
|13    |FDCE      |    84|
2default:defaulth px? 
G
%s*synth2/
|14    |FDPE      |    12|
2default:defaulth px? 
G
%s*synth2/
|15    |FDRE      |  1715|
2default:defaulth px? 
G
%s*synth2/
|16    |FDSE      |   308|
2default:defaulth px? 
G
%s*synth2/
|17    |IBUF      |    14|
2default:defaulth px? 
G
%s*synth2/
|18    |OBUF      |    14|
2default:defaulth px? 
G
%s*synth2/
+------+----------+------+
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:00:52 ; elapsed = 00:00:53 . Memory (MB): peak = 1741.852 ; gain = 176.977
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
t
%s
*synth2\
HSynthesis finished with 0 errors, 0 critical warnings and 127 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:42 ; elapsed = 00:00:51 . Memory (MB): peak = 1741.852 ; gain = 111.336
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:00:52 ; elapsed = 00:00:53 . Memory (MB): peak = 1741.852 ; gain = 176.977
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0422default:default2
1744.6212default:default2
0.0002default:defaultZ17-268h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
3432default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1748.2772default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2~
j  A total of 4 instances were transformed.
  RAM128X1D => RAM128X1D (MUXF7(x2), RAMD64E(x4)): 4 instances
2default:defaultZ1-111h px? 
g
$Synth Design complete, checksum: %s
562*	vivadotcl2
f37914632default:defaultZ4-1430h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
602default:default2
1242default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:00:572default:default2
00:00:582default:default2
1748.2772default:default2
183.4022default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2]
IC:/Users/J/Desktop/FPGA FinalProject/FinalProject.runs/synth_1/ZZ_Top.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2v
bExecuting : report_utilization -file ZZ_Top_utilization_synth.rpt -pb ZZ_Top_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Mon May  2 19:18:19 20222default:defaultZ17-206h px? 


End Record