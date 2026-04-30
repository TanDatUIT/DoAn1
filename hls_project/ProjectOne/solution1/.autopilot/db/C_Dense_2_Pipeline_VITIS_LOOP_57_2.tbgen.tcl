set moduleName C_Dense_2_Pipeline_VITIS_LOOP_57_2
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {C_Dense_2_Pipeline_VITIS_LOOP_57_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ out_Dense_V int 16 regular {array 10 { 0 1 } 1 1 }  }
	{ sext_ln813_3 int 16 regular  }
	{ p_cast int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "out_Dense_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "sext_ln813_3", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "p_cast", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ out_Dense_V_address0 sc_out sc_lv 4 signal 0 } 
	{ out_Dense_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ out_Dense_V_we0 sc_out sc_logic 1 signal 0 } 
	{ out_Dense_V_d0 sc_out sc_lv 16 signal 0 } 
	{ out_Dense_V_address1 sc_out sc_lv 4 signal 0 } 
	{ out_Dense_V_ce1 sc_out sc_logic 1 signal 0 } 
	{ out_Dense_V_q1 sc_in sc_lv 16 signal 0 } 
	{ sext_ln813_3 sc_in sc_lv 16 signal 1 } 
	{ p_cast sc_in sc_lv 16 signal 2 } 
	{ grp_exp_17_9_s_fu_568_p_din1 sc_out sc_lv 17 signal -1 } 
	{ grp_exp_17_9_s_fu_568_p_dout0 sc_in sc_lv 17 signal -1 } 
	{ grp_exp_17_9_s_fu_568_p_start sc_out sc_logic 1 signal -1 } 
	{ grp_exp_17_9_s_fu_568_p_ready sc_in sc_logic 1 signal -1 } 
	{ grp_exp_17_9_s_fu_568_p_done sc_in sc_logic 1 signal -1 } 
	{ grp_exp_17_9_s_fu_568_p_idle sc_in sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "out_Dense_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_Dense_V", "role": "address0" }} , 
 	{ "name": "out_Dense_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_Dense_V", "role": "ce0" }} , 
 	{ "name": "out_Dense_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_Dense_V", "role": "we0" }} , 
 	{ "name": "out_Dense_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_Dense_V", "role": "d0" }} , 
 	{ "name": "out_Dense_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_Dense_V", "role": "address1" }} , 
 	{ "name": "out_Dense_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_Dense_V", "role": "ce1" }} , 
 	{ "name": "out_Dense_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_Dense_V", "role": "q1" }} , 
 	{ "name": "sext_ln813_3", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "sext_ln813_3", "role": "default" }} , 
 	{ "name": "p_cast", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_cast", "role": "default" }} , 
 	{ "name": "grp_exp_17_9_s_fu_568_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "grp_exp_17_9_s_fu_568_p_din1", "role": "default" }} , 
 	{ "name": "grp_exp_17_9_s_fu_568_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":17, "type": "signal", "bundle":{"name": "grp_exp_17_9_s_fu_568_p_dout0", "role": "default" }} , 
 	{ "name": "grp_exp_17_9_s_fu_568_p_start", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_exp_17_9_s_fu_568_p_start", "role": "default" }} , 
 	{ "name": "grp_exp_17_9_s_fu_568_p_ready", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_exp_17_9_s_fu_568_p_ready", "role": "default" }} , 
 	{ "name": "grp_exp_17_9_s_fu_568_p_done", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_exp_17_9_s_fu_568_p_done", "role": "default" }} , 
 	{ "name": "grp_exp_17_9_s_fu_568_p_idle", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_exp_17_9_s_fu_568_p_idle", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "C_Dense_2_Pipeline_VITIS_LOOP_57_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46", "EstimateLatencyMax" : "46",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_Dense_V", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "sext_ln813_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_cast", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_2_m_1_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_57_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter35", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter35", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.sdiv_25ns_16s_16_29_1_U339", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	C_Dense_2_Pipeline_VITIS_LOOP_57_2 {
		out_Dense_V {Type IO LastRead 0 FirstWrite 35}
		sext_ln813_3 {Type I LastRead 0 FirstWrite -1}
		p_cast {Type I LastRead 0 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_2_m_1_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46", "Max" : "46"}
	, {"Name" : "Interval", "Min" : "46", "Max" : "46"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	out_Dense_V { ap_memory {  { out_Dense_V_address0 mem_address 1 4 }  { out_Dense_V_ce0 mem_ce 1 1 }  { out_Dense_V_we0 mem_we 1 1 }  { out_Dense_V_d0 mem_din 1 16 }  { out_Dense_V_address1 MemPortADDR2 1 4 }  { out_Dense_V_ce1 MemPortCE2 1 1 }  { out_Dense_V_q1 in_data 0 16 } } }
	sext_ln813_3 { ap_none {  { sext_ln813_3 in_data 0 16 } } }
	p_cast { ap_none {  { p_cast in_data 0 16 } } }
}
