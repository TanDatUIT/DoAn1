set moduleName D_CNN_Pipeline_loop_for_3_channel_pad_2_loop_for_channel_pad_2_loop_for_weight_p
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
set C_modelName {D_CNN_Pipeline_loop_for_3_channel_pad_2_loop_for_channel_pad_2_loop_for_weight_p}
set C_modelType { void 0 }
set C_modelArgList {
	{ OutPadConv2_V int 16 regular {array 7200 { 0 3 } 0 1 }  }
	{ upsample_V int 16 regular {array 6272 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "OutPadConv2_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "upsample_V", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ OutPadConv2_V_address0 sc_out sc_lv 13 signal 0 } 
	{ OutPadConv2_V_ce0 sc_out sc_logic 1 signal 0 } 
	{ OutPadConv2_V_we0 sc_out sc_logic 1 signal 0 } 
	{ OutPadConv2_V_d0 sc_out sc_lv 16 signal 0 } 
	{ upsample_V_address0 sc_out sc_lv 13 signal 1 } 
	{ upsample_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ upsample_V_q0 sc_in sc_lv 16 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "OutPadConv2_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "OutPadConv2_V", "role": "address0" }} , 
 	{ "name": "OutPadConv2_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPadConv2_V", "role": "ce0" }} , 
 	{ "name": "OutPadConv2_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "OutPadConv2_V", "role": "we0" }} , 
 	{ "name": "OutPadConv2_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "OutPadConv2_V", "role": "d0" }} , 
 	{ "name": "upsample_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":13, "type": "signal", "bundle":{"name": "upsample_V", "role": "address0" }} , 
 	{ "name": "upsample_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "upsample_V", "role": "ce0" }} , 
 	{ "name": "upsample_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "upsample_V", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "D_CNN_Pipeline_loop_for_3_channel_pad_2_loop_for_channel_pad_2_loop_for_weight_p",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "7204", "EstimateLatencyMax" : "7204",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "OutPadConv2_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "upsample_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "loop_for_3_channel_pad_2_loop_for_channel_pad_2_loop_for_weight_pad_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_4ns_11ns_13_1_1_U79", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_4ns_11ns_13_1_1_U80", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_4ns_10ns_5ns_13_4_1_U81", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	D_CNN_Pipeline_loop_for_3_channel_pad_2_loop_for_channel_pad_2_loop_for_weight_p {
		OutPadConv2_V {Type O LastRead -1 FirstWrite 3}
		upsample_V {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "7204", "Max" : "7204"}
	, {"Name" : "Interval", "Min" : "7204", "Max" : "7204"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	OutPadConv2_V { ap_memory {  { OutPadConv2_V_address0 mem_address 1 13 }  { OutPadConv2_V_ce0 mem_ce 1 1 }  { OutPadConv2_V_we0 mem_we 1 1 }  { OutPadConv2_V_d0 mem_din 1 16 } } }
	upsample_V { ap_memory {  { upsample_V_address0 mem_address 1 13 }  { upsample_V_ce0 mem_ce 1 1 }  { upsample_V_q0 in_data 0 16 } } }
}
