
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/utils_1/imports/synth_1/test_env.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2a
_C:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/utils_1/imports/synth_1/test_env.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
g
Command: %s
53*	vivadotcl26
4synth_design -top MipsTopLevel -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
28940Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 1319.777 ; gain = 440.320
h px� 
�
synthesizing module '%s'638*oasys2
MipsTopLevel2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
428@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
we_mpg2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
2528@Z8-614h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
MPG2T
RC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sim_1/new/debouncer.vhd2
282
MPG_WE2
MPG2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3228@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
MPG2V
RC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sim_1/new/debouncer.vhd2
358@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
MPG2
02
12V
RC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sim_1/new/debouncer.vhd2
358@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
MPG2T
RC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sim_1/new/debouncer.vhd2
282	
MPG_RST2
MPG2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3238@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Instruction_Fetch2\
ZC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sim_1/new/Instruction_Fetch.vhd2
72
INSTR_FETCH2
Instruction_Fetch2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3298@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Instruction_Fetch2^
ZC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sim_1/new/Instruction_Fetch.vhd2
218@Z8-638h px� 
�
default block is never used226*oasys2^
ZC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sim_1/new/Instruction_Fetch.vhd2
1058@Z8-226h px� 
�
default block is never used226*oasys2^
ZC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sim_1/new/Instruction_Fetch.vhd2
1158@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Instruction_Fetch2
02
12^
ZC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sim_1/new/Instruction_Fetch.vhd2
218@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
MainControl2V
TC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sim_1/new/MainControl.vhd2
52
MAIN_CONTROL2
MainControl2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3318@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
MainControl2X
TC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sim_1/new/MainControl.vhd2
208@Z8-638h px� 
�
default block is never used226*oasys2X
TC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sim_1/new/MainControl.vhd2
388@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
MainControl2
02
12X
TC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sim_1/new/MainControl.vhd2
208@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2	
instDec2V
TC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/instDec.vhd2
62
INSTR_DECODE2	
instDec2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3338@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2	
instDec2X
TC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/instDec.vhd2
238@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

reg_file2S
QC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sim_1/new/reg_file.vhd2
62
reg2

reg_file2X
TC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/instDec.vhd2
498@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

reg_file2U
QC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sim_1/new/reg_file.vhd2
188@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

reg_file2
02
12U
QC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sim_1/new/reg_file.vhd2
188@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2	
instDec2
02
12X
TC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/instDec.vhd2
238@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
ExecutionUnit2\
ZC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/ExecutionUnit.vhd2
62
EXECUTION_UNIT2
ExecutionUnit2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3378@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
ExecutionUnit2^
ZC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/ExecutionUnit.vhd2
208@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
ALUOut2^
ZC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/ExecutionUnit.vhd2
618@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ExecutionUnit2
02
12^
ZC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/ExecutionUnit.vhd2
208@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

DataMemory2Y
WC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/DataMemory.vhd2
62
DATA_MEMORY2

DataMemory2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3388@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

DataMemory2[
WC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/DataMemory.vhd2
148@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

DataMemory2
02
12[
WC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/DataMemory.vhd2
148@Z8-256h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
jump_signal2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3408@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
branch_signal2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3408@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
ExtOp_signal2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3408@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
ALUSrc_signal2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3408@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
MemWrite_signal2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3408@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
MemToReg_signal2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3408@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
RegWrite_signal2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3408@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
instruction2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3408@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
pc_out2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3408@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
read_data_1_out2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3408@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
read_data_2_out2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3408@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
ext_imm_out2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3408@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2	
alu_out2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3408@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
data_mem_out2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3408@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
mem_wb_mux_address2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3408@Z8-614h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	seven_seg2T
RC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sim_1/new/seven_seg.vhd2
362
ssd2
	seven_seg2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
3608@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	seven_seg2V
RC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sim_1/new/seven_seg.vhd2
438@Z8-638h px� 
�
default block is never used226*oasys2V
RC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sim_1/new/seven_seg.vhd2
588@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	seven_seg2
02
12V
RC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sim_1/new/seven_seg.vhd2
438@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
MipsTopLevel2
02
12]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
428@Z8-256h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
ex_mem_instruction_reg2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
2598@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
mem_wb_instruction_reg2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
2608@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
if_id_pc_out_reg2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
2648@Z8-6014h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2
id_ex_shift_reg2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
2918@Z8-6014h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2

jump_add2
MipsTopLevel2]
YC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.srcs/sources_1/new/MipsTopLevel.vhd2
1438@Z8-3848h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
Address[15]2

DataMemoryZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
Address[14]2

DataMemoryZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
Address[13]2

DataMemoryZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
Address[12]2

DataMemoryZ8-7129h px� 
x
9Port %s in module %s is either unconnected or has no load4866*oasys2
Address[11]2

DataMemoryZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2

inst[15]2	
instDecZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2

inst[14]2	
instDecZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2

inst[13]2	
instDecZ8-7129h px� 
p
9Port %s in module %s is either unconnected or has no load4866*oasys2
RegDst2	
instDecZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
ExtOp2	
instDecZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
jump_address[15]2
Instruction_FetchZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
jump_address[14]2
Instruction_FetchZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
jump_address[13]2
Instruction_FetchZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
jump_address[12]2
Instruction_FetchZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
jump_address[11]2
Instruction_FetchZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
jump_address[10]2
Instruction_FetchZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
jump_address[9]2
Instruction_FetchZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
jump_address[8]2
Instruction_FetchZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
jump_address[7]2
Instruction_FetchZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
jump_address[6]2
Instruction_FetchZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
jump_address[5]2
Instruction_FetchZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
jump_address[4]2
Instruction_FetchZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
jump_address[3]2
Instruction_FetchZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
jump_address[2]2
Instruction_FetchZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
jump_address[1]2
Instruction_FetchZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
jump_address[0]2
Instruction_FetchZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1430.527 ; gain = 551.070
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1430.527 ; gain = 551.070
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:05 ; elapsed = 00:00:05 . Memory (MB): peak = 1430.527 ; gain = 551.070
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0052

1430.5272
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2E
AC:/Users/Julie/OneDrive/Desktop/CA/Constraints/Basys-3-Master.xdc8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2E
AC:/Users/Julie/OneDrive/Desktop/CA/Constraints/Basys-3-Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2C
AC:/Users/Julie/OneDrive/Desktop/CA/Constraints/Basys-3-Master.xdc2 
.Xil/MipsTopLevel_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1513.8202
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0022

1513.8202
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 1513.820 ; gain = 634.363
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 1513.820 ; gain = 634.363
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 1513.820 ; gain = 634.363
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 1513.820 ; gain = 634.363
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit       Adders := 3     
h p
x
� 
F
%s
*synth2.
,	   3 Input   16 Bit       Adders := 1     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input     16 Bit         XORs := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 12    
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 19    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	 257 Input   16 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 9     
h p
x
� 
F
%s
*synth2.
,	   8 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   8 Input    1 Bit        Muxes := 7     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:13 ; elapsed = 00:00:14 . Memory (MB): peak = 1513.820 ; gain = 634.363
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
R
%s*synth2:
8
Block RAM: Preliminary Mapping Report (see note below)
h px� 
�
%s*synth2�
�+-------------+---------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h px� 
�
%s*synth2�
�|Module Name  | RTL Object          | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
h px� 
�
%s*synth2�
�+-------------+---------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h px� 
�
%s*synth2�
�|MipsTopLevel | DATA_MEMORY/mem_reg | 1 K x 16(READ_FIRST)   | W | R |                        |   |   | Port A           | 0      | 1      | 
h px� 
�
%s*synth2�
�+-------------+---------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Block RAMs at the current stage of the synthesis flow. Some Block RAMs may be reimplemented as non Block RAM primitives later in the synthesis flow. Multiple instantiated Block RAMs are reported only once. 
h px� 
X
%s*synth2@
>
Distributed RAM: Preliminary Mapping Report (see note below)
h px� 
{
%s*synth2c
a+-------------+-------------------------------+-----------+----------------------+-------------+
h px� 
|
%s*synth2d
b|Module Name  | RTL Object                    | Inference | Size (Depth x Width) | Primitives  | 
h px� 
{
%s*synth2c
a+-------------+-------------------------------+-----------+----------------------+-------------+
h px� 
|
%s*synth2d
b|MipsTopLevel | INSTR_DECODE/reg/reg_file_reg | Implied   | 8 x 16               | RAM32M x 6  | 
h px� 
|
%s*synth2d
b+-------------+-------------------------------+-----------+----------------------+-------------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:17 ; elapsed = 00:00:18 . Memory (MB): peak = 1513.820 ; gain = 634.363
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1513.820 ; gain = 634.363
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!
Block RAM: Final Mapping Report
h p
x
� 
�
%s
*synth2�
�+-------------+---------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h p
x
� 
�
%s
*synth2�
�|Module Name  | RTL Object          | PORT A (Depth x Width) | W | R | PORT B (Depth x Width) | W | R | Ports driving FF | RAMB18 | RAMB36 | 
h p
x
� 
�
%s
*synth2�
�+-------------+---------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+
h p
x
� 
�
%s
*synth2�
�|MipsTopLevel | DATA_MEMORY/mem_reg | 1 K x 16(READ_FIRST)   | W | R |                        |   |   | Port A           | 0      | 1      | 
h p
x
� 
�
%s
*synth2�
�+-------------+---------------------+------------------------+---+---+------------------------+---+---+------------------+--------+--------+

h p
x
� 
A
%s
*synth2)
'
Distributed RAM: Final Mapping Report
h p
x
� 
{
%s
*synth2c
a+-------------+-------------------------------+-----------+----------------------+-------------+
h p
x
� 
|
%s
*synth2d
b|Module Name  | RTL Object                    | Inference | Size (Depth x Width) | Primitives  | 
h p
x
� 
{
%s
*synth2c
a+-------------+-------------------------------+-----------+----------------------+-------------+
h p
x
� 
|
%s
*synth2d
b|MipsTopLevel | INSTR_DECODE/reg/reg_file_reg | Implied   | 8 x 16               | RAM32M x 6  | 
h p
x
� 
|
%s
*synth2d
b+-------------+-------------------------------+-----------+----------------------+-------------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
�The timing for the instance %s (implemented as a %s RAM) might be sub-optimal as no optional output register could be merged into the ram block. Providing additional output register may help in improving timing.
4799*oasys2
DATA_MEMORY/mem_reg2
BlockZ8-7052h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:18 ; elapsed = 00:00:19 . Memory (MB): peak = 1513.820 ; gain = 634.363
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1513.820 ; gain = 634.363
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1513.820 ; gain = 634.363
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1513.820 ; gain = 634.363
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1513.820 ; gain = 634.363
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1513.820 ; gain = 634.363
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1513.820 ; gain = 634.363
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!

Static Shift Register Report:
h p
x
� 
�
%s
*synth2�
�+-------------+---------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|Module Name  | RTL Name            | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
h p
x
� 
�
%s
*synth2�
�+-------------+---------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
h p
x
� 
�
%s
*synth2�
�|MipsTopLevel | mem_wb_MemToReg_reg | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�|MipsTopLevel | mem_wb_RegWrite_reg | 3      | 1     | NO           | NO                 | YES               | 1      | 0       | 
h p
x
� 
�
%s
*synth2�
�+-------------+---------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|      |Cell     |Count |
h px� 
4
%s*synth2
+------+---------+------+
h px� 
4
%s*synth2
|1     |BUFG     |     2|
h px� 
4
%s*synth2
|2     |CARRY4   |    20|
h px� 
4
%s*synth2
|3     |LUT1     |     2|
h px� 
4
%s*synth2
|4     |LUT2     |    38|
h px� 
4
%s*synth2
|5     |LUT3     |    36|
h px� 
4
%s*synth2
|6     |LUT4     |    58|
h px� 
4
%s*synth2
|7     |LUT5     |    33|
h px� 
4
%s*synth2
|8     |LUT6     |    93|
h px� 
4
%s*synth2
|9     |RAM32M   |     6|
h px� 
4
%s*synth2
|10    |RAMB36E1 |     1|
h px� 
4
%s*synth2
|11    |SRL16E   |     2|
h px� 
4
%s*synth2
|12    |FDCE     |    16|
h px� 
4
%s*synth2
|13    |FDRE     |   169|
h px� 
4
%s*synth2
|14    |FDSE     |     4|
h px� 
4
%s*synth2
|15    |IBUF     |     7|
h px� 
4
%s*synth2
|16    |OBUF     |    27|
h px� 
4
%s*synth2
+------+---------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1513.820 ; gain = 634.363
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:15 ; elapsed = 00:00:21 . Memory (MB): peak = 1513.820 ; gain = 551.070
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:21 ; elapsed = 00:00:22 . Memory (MB): peak = 1513.820 ; gain = 634.363
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0072

1513.8202
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
27Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1513.8202
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2f
d  A total of 6 instances were transformed.
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 6 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

2ace23c7Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
532
492
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:242

00:00:262

1513.8202

1026.578Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0022

1513.8202
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2U
SC:/Users/Julie/OneDrive/Desktop/CA/MIPS_Pipeline/MIPS.runs/synth_1/MipsTopLevel.dcpZ17-1381h px� 
�
%s4*runtcl2p
nExecuting : report_utilization -file MipsTopLevel_utilization_synth.rpt -pb MipsTopLevel_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue May 28 13:26:14 2024Z17-206h px� 


End Record