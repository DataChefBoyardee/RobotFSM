
T
Command: %s
53*	vivadotcl2#
phys_opt_design2default:defaultZ4-113h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px? 
?
^PhysOpt_Tcl_Interface Runtime Before Starting Physical Synthesis Task | CPU: %ss |  WALL: %ss
566*	vivadotcl2
1.002default:default2
0.762default:defaultZ4-1435h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
2205.1452default:default2
0.0002default:defaultZ17-268h px? 
a

Starting %s Task
103*constraints2&
Physical Synthesis2default:defaultZ18-103h px? 
?

Phase %s%s
101*constraints2
1 2default:default25
!Physical Synthesis Initialization2default:defaultZ18-101h px? 
?
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
22default:defaultZ32-721h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.7042default:default2
-117.6912default:defaultZ32-619h px? 
U
@Phase 1 Physical Synthesis Initialization | Checksum: 171416d72
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.424 . Memory (MB): peak = 2205.145 ; gain = 0.0002default:defaulth px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.7042default:default2
-117.6912default:defaultZ32-619h px? 
z

Phase %s%s
101*constraints2
2 2default:default2-
DSP Register Optimization2default:defaultZ18-101h px? 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px? 
?
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22default:default2
02default:default2
net or cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:default2
02default:default2
cell2default:defaultZ32-775h px? 
M
8Phase 2 DSP Register Optimization | Checksum: 171416d72
*commonh px? 
?

%s
*constraints2s
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.434 . Memory (MB): peak = 2205.145 ; gain = 0.0002default:defaulth px? 
{

Phase %s%s
101*constraints2
3 2default:default2.
Critical Path Optimization2default:defaultZ18-101h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.7042default:default2
-117.6912default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2<
digit1_reg_n_0_[0]digit1_reg_n_0_[0]2default:default22
digit1_reg[0]	digit1_reg[0]2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2<
digit1_reg_n_0_[0]digit1_reg_n_0_[0]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.7042default:default2
-118.1882default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit1_reg_n_0_[1]digit1_reg_n_0_[1]2default:default8Z32-702h px? 
?
'Processed net %s. Replicated %s times.
81*physynth20
moves_mem[0]moves_mem[0]2default:default2
12default:default8Z32-81h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth20
moves_mem[0]moves_mem[0]2default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.6912default:default2
-117.9802default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth20
moves_mem[0]moves_mem[0]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2:
digit1[3]_i_6_n_0digit1[3]_i_6_n_02default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2:
digit1[3]_i_6_n_0digit1[3]_i_6_n_02default:default2<
digit1[3]_i_6_comp	digit1[3]_i_6_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2<
digit1[3]_i_24_n_0digit1[3]_i_24_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.5622default:default2
-117.4642default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2:
digit1[3]_i_8_n_0digit1[3]_i_8_n_02default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2:
digit1[3]_i_8_n_0digit1[3]_i_8_n_02default:default2<
digit1[3]_i_8_comp	digit1[3]_i_8_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2<
digit1[3]_i_33_n_0digit1[3]_i_33_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.5112default:default2
-117.2602default:defaultZ32-619h px? 
?
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12default:default2
net2default:default2
182default:default2
pins2default:defaultZ32-608h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2:
digit1[3]_i_3_n_0digit1[3]_i_3_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.5002default:default2
-117.2162default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit1[3]_i_56_n_0digit1[3]_i_56_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[3]_i_47_n_6digit1_reg[3]_i_47_n_62default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[3]_i_40_n_0digit1_reg[3]_i_40_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit1[3]_i_89_n_0digit1[3]_i_89_n_02default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2<
digit1[3]_i_89_n_0digit1[3]_i_89_n_02default:default2>
digit1[3]_i_89_comp	digit1[3]_i_89_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2<
digit1[3]_i_27_n_0digit1[3]_i_27_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.4122default:default2
-116.5122default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit1[3]_i_93_n_0digit1[3]_i_93_n_02default:default8Z32-702h px? 
?
5Processed net %s. Rewiring did not optimize the net.
134*physynth2<
digit1[3]_i_27_n_0digit1[3]_i_27_n_02default:default8Z32-134h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit1[3]_i_27_n_0digit1[3]_i_27_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[3]_i_62_n_3digit1_reg[3]_i_62_n_32default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_144_n_0digit1_reg[3]_i_144_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
digit1[3]_i_224_n_0digit1[3]_i_224_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_235_n_4digit1_reg[3]_i_235_n_42default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_401_n_0digit1_reg[3]_i_401_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_453_n_0digit1_reg[3]_i_453_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
digit1[3]_i_497_n_0digit1[3]_i_497_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[3]_i_52_n_7digit1_reg[3]_i_52_n_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[3]_i_44_n_0digit1_reg[3]_i_44_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
digit1[3]_i_112_n_0digit1[3]_i_112_n_02default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2>
digit1[3]_i_112_n_0digit1[3]_i_112_n_02default:default2@
digit1[3]_i_112_comp	digit1[3]_i_112_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2>
digit1[3]_i_108_n_0digit1[3]_i_108_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.3842default:default2
-116.2882default:defaultZ32-619h px? 
?
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12default:default2
net2default:default2
252default:default2
pins2default:defaultZ32-608h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2>
digit1[3]_i_111_n_0digit1[3]_i_111_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.3552default:default2
-116.0562default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2L
digit1[3]_i_108_n_0_repN_1digit1[3]_i_108_n_0_repN_12default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_184_n_5digit1_reg[3]_i_184_n_52default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_180_n_0digit1_reg[3]_i_180_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_170_n_0digit1_reg[3]_i_170_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
digit1[3]_i_290_n_0digit1[3]_i_290_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_428_n_4digit1_reg[3]_i_428_n_42default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[0]_i_40_n_0digit1_reg[0]_i_40_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[0]_i_89_n_0digit1_reg[0]_i_89_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[0]_i_127_n_0digit1_reg[0]_i_127_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit1[0]_i_64_n_0digit1[0]_i_64_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
digit1[3]_i_419_n_0digit1[3]_i_419_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2,

p_1_in[13]
p_1_in[13]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_417_n_0digit1_reg[3]_i_417_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_418_n_0digit1_reg[3]_i_418_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit2_reg[3]_i_14_n_0digit2_reg[3]_i_14_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit2[3]_i_17_n_0digit2[3]_i_17_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2$
digit1digit12default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2(
clk_IBUFclk_IBUF2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clkclk2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit1_reg_n_0_[1]digit1_reg_n_0_[1]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth20
moves_mem[0]moves_mem[0]2default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2:
digit1[3]_i_6_n_0digit1[3]_i_6_n_02default:default2<
digit1[3]_i_6_comp	digit1[3]_i_6_comp2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2:
digit1[3]_i_6_n_0digit1[3]_i_6_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.3302default:default2
-115.9562default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2:
digit1[3]_i_8_n_0digit1[3]_i_8_n_02default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2<
digit1[3]_i_33_n_0digit1[3]_i_33_n_02default:default2>
digit1[3]_i_33_comp	digit1[3]_i_33_comp2default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2<
digit1[3]_i_33_n_0digit1[3]_i_33_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.3082default:default2
-115.8682default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit1[3]_i_33_n_0digit1[3]_i_33_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[3]_i_39_n_5digit1_reg[3]_i_39_n_52default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit1[3]_i_93_n_0digit1[3]_i_93_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit1[3]_i_27_n_0digit1[3]_i_27_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[3]_i_62_n_3digit1_reg[3]_i_62_n_32default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
digit1[3]_i_224_n_0digit1[3]_i_224_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_235_n_4digit1_reg[3]_i_235_n_42default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
digit1[3]_i_497_n_0digit1[3]_i_497_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[3]_i_52_n_7digit1_reg[3]_i_52_n_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
digit1[3]_i_112_n_0digit1[3]_i_112_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2L
digit1[3]_i_108_n_0_repN_1digit1[3]_i_108_n_0_repN_12default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_184_n_5digit1_reg[3]_i_184_n_52default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
digit1[3]_i_290_n_0digit1[3]_i_290_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_428_n_4digit1_reg[3]_i_428_n_42default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit1[0]_i_64_n_0digit1[0]_i_64_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
digit1[3]_i_419_n_0digit1[3]_i_419_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2,

p_1_in[13]
p_1_in[13]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit2[3]_i_17_n_0digit2[3]_i_17_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2$
digit1digit12default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2(
clk_IBUFclk_IBUF2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clkclk2default:default8Z32-702h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.3082default:default2
-115.8682default:defaultZ32-619h px? 
N
9Phase 3 Critical Path Optimization | Checksum: 171416d72
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:06 ; elapsed = 00:00:03 . Memory (MB): peak = 2205.145 ; gain = 0.0002default:defaulth px? 
{

Phase %s%s
101*constraints2
4 2default:default2.
Critical Path Optimization2default:defaultZ18-101h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.3082default:default2
-115.8682default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit1_reg_n_0_[1]digit1_reg_n_0_[1]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth20
moves_mem[0]moves_mem[0]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2:
digit1[3]_i_8_n_0digit1[3]_i_8_n_02default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2:
digit1[3]_i_8_n_0digit1[3]_i_8_n_02default:default2@
digit1[3]_i_8_comp_1	digit1[3]_i_8_comp_12default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2<
digit1[3]_i_33_n_0digit1[3]_i_33_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.2742default:default2
-115.7322default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2:
digit1[3]_i_3_n_0digit1[3]_i_3_n_02default:default8Z32-702h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2:
digit1[3]_i_3_n_0digit1[3]_i_3_n_02default:default2<
digit1[3]_i_3_comp	digit1[3]_i_3_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2<
digit1[3]_i_12_n_0digit1[3]_i_12_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.2642default:default2
-115.7122default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2:
digit1[3]_i_4_n_0digit1[3]_i_4_n_02default:default8Z32-702h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2<
digit1[3]_i_18_n_0digit1[3]_i_18_n_02default:default24
digit1[3]_i_18	digit1[3]_i_182default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2<
digit1[3]_i_18_n_0digit1[3]_i_18_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.2602default:default2
-115.6962default:defaultZ32-619h px? 
?
[Processed net %s. Critical path length was reduced through logic transformation on cell %s.374*physynth2:
digit1[3]_i_4_n_0digit1[3]_i_4_n_02default:default2<
digit1[3]_i_4_comp	digit1[3]_i_4_comp2default:default8Z32-710h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2<
digit1[3]_i_18_n_0digit1[3]_i_18_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.2442default:default2
-115.6322default:defaultZ32-619h px? 
?
(Processed net %s.  Re-placed instance %s337*physynth2:
digit1[3]_i_5_n_0digit1[3]_i_5_n_02default:default22
digit1[3]_i_5	digit1[3]_i_52default:default8Z32-663h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2:
digit1[3]_i_5_n_0digit1[3]_i_5_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.2152default:default2
-115.5162default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[3]_i_39_n_6digit1_reg[3]_i_39_n_62default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[3]_i_38_n_0digit1_reg[3]_i_38_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[3]_i_53_n_0digit1_reg[3]_i_53_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[3]_i_16_n_0digit1_reg[3]_i_16_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[3]_i_47_n_0digit1_reg[3]_i_47_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[3]_i_40_n_0digit1_reg[3]_i_40_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit1[3]_i_93_n_0digit1[3]_i_93_n_02default:default8Z32-702h px? 
?
5Processed net %s. Rewiring did not optimize the net.
134*physynth2<
digit1[3]_i_27_n_0digit1[3]_i_27_n_02default:default8Z32-134h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit1[3]_i_27_n_0digit1[3]_i_27_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[3]_i_62_n_3digit1_reg[3]_i_62_n_32default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_144_n_0digit1_reg[3]_i_144_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
digit1[3]_i_224_n_0digit1[3]_i_224_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_235_n_4digit1_reg[3]_i_235_n_42default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_401_n_0digit1_reg[3]_i_401_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_453_n_0digit1_reg[3]_i_453_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
digit1[3]_i_497_n_0digit1[3]_i_497_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[3]_i_52_n_7digit1_reg[3]_i_52_n_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[3]_i_44_n_0digit1_reg[3]_i_44_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
digit1[3]_i_112_n_0digit1[3]_i_112_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2L
digit1[3]_i_108_n_0_repN_1digit1[3]_i_108_n_0_repN_12default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_184_n_5digit1_reg[3]_i_184_n_52default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_180_n_0digit1_reg[3]_i_180_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_170_n_0digit1_reg[3]_i_170_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
digit1[3]_i_290_n_0digit1[3]_i_290_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_428_n_4digit1_reg[3]_i_428_n_42default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[0]_i_40_n_0digit1_reg[0]_i_40_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[0]_i_89_n_0digit1_reg[0]_i_89_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[0]_i_127_n_0digit1_reg[0]_i_127_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit1[0]_i_64_n_0digit1[0]_i_64_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
digit1[3]_i_419_n_0digit1[3]_i_419_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2,

p_1_in[13]
p_1_in[13]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_417_n_0digit1_reg[3]_i_417_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_418_n_0digit1_reg[3]_i_418_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit2_reg[3]_i_14_n_0digit2_reg[3]_i_14_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit2[3]_i_17_n_0digit2[3]_i_17_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2$
digit1digit12default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2(
clk_IBUFclk_IBUF2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clkclk2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit1_reg_n_0_[1]digit1_reg_n_0_[1]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth20
moves_mem[0]moves_mem[0]2default:default8Z32-702h px? 
?
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12default:default2
net2default:default2
82default:default2
pins2default:defaultZ32-608h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2:
digit1[3]_i_8_n_0digit1[3]_i_8_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.1782default:default2
-115.3682default:defaultZ32-619h px? 
?
!Optimized %s %s.  Swapped %s %s.
322*physynth2
12default:default2
net2default:default2
72default:default2
pins2default:defaultZ32-608h px? 
?
;Processed net %s. Optimization improves timing on the net.
394*physynth2:
digit1[3]_i_5_n_0digit1[3]_i_5_n_02default:default8Z32-735h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.1482default:default2
-115.2482default:defaultZ32-619h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2:
digit1[3]_i_8_n_0digit1[3]_i_8_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[3]_i_39_n_4digit1_reg[3]_i_39_n_42default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit1[3]_i_93_n_0digit1[3]_i_93_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit1[3]_i_27_n_0digit1[3]_i_27_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[3]_i_62_n_3digit1_reg[3]_i_62_n_32default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
digit1[3]_i_224_n_0digit1[3]_i_224_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_235_n_4digit1_reg[3]_i_235_n_42default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
digit1[3]_i_497_n_0digit1[3]_i_497_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2D
digit1_reg[3]_i_52_n_7digit1_reg[3]_i_52_n_72default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
digit1[3]_i_112_n_0digit1[3]_i_112_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2L
digit1[3]_i_108_n_0_repN_1digit1[3]_i_108_n_0_repN_12default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_184_n_5digit1_reg[3]_i_184_n_52default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
digit1[3]_i_290_n_0digit1[3]_i_290_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2F
digit1_reg[3]_i_428_n_4digit1_reg[3]_i_428_n_42default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit1[0]_i_64_n_0digit1[0]_i_64_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2>
digit1[3]_i_419_n_0digit1[3]_i_419_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2,

p_1_in[13]
p_1_in[13]2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2<
digit2[3]_i_17_n_0digit2[3]_i_17_n_02default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2$
digit1digit12default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2(
clk_IBUFclk_IBUF2default:default8Z32-702h px? 
?
BPorcessed net %s. Optimizations did not improve timing on the net.366*physynth2
clkclk2default:default8Z32-702h px? 
?
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2default:default2
 2default:default2
-10.1482default:default2
-115.2482default:defaultZ32-619h px? 
N
9Phase 4 Critical Path Optimization | Checksum: 171416d72
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:10 ; elapsed = 00:00:06 . Memory (MB): peak = 2205.145 ; gain = 0.0002default:defaulth px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0162default:default2
2205.1452default:default2
0.0002default:defaultZ17-268h px? 
?
>Post Physical Optimization Timing Summary | WNS=%s | TNS=%s |
318*physynth2
-10.1482default:default2
-115.2482default:defaultZ32-603h px? 
B
-
Summary of Physical Synthesis Optimizations
*commonh px? 
B
-============================================
*commonh px? 


*commonh px? 


*commonh px? 
?
?-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  Optimization   |  WNS Gain (ns)  |  TNS Gain (ns)  |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 
?
?|  DSP Register   |          0.000  |          0.000  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Critical Path  |          0.556  |          2.443  |            1  |              0  |                    17  |           0  |           2  |  00:00:05  |
|  Total          |          0.556  |          2.443  |            1  |              0  |                    17  |           0  |           3  |  00:00:05  |
-------------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px? 


*commonh px? 


*commonh px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
2205.1452default:default2
0.0002default:defaultZ17-268h px? 
J
5Ending Physical Synthesis Task | Checksum: 1cdf9764e
*commonh px? 
?

%s
*constraints2o
[Time (s): cpu = 00:00:10 ; elapsed = 00:00:06 . Memory (MB): peak = 2205.145 ; gain = 0.0002default:defaulth px? 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2712default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px? 
a
%s completed successfully
29*	vivadotcl2#
phys_opt_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2%
phys_opt_design: 2default:default2
00:00:112default:default2
00:00:072default:default2
2205.1452default:default2
0.0002default:defaultZ17-268h px? 
H
&Writing timing data to binary archive.266*timingZ38-480h px? 
D
Writing placer database...
1603*designutilsZ20-1893h px? 
=
Writing XDEF routing.
211*designutilsZ20-211h px? 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px? 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:012default:default2 
00:00:00.3392default:default2
2205.1452default:default2
0.0002default:defaultZ17-268h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2d
PC:/Users/J/Desktop/FPGA FinalProject/FinalProject.runs/impl_1/ZZ_Top_physopt.dcp2default:defaultZ17-1381h px? 


End Record