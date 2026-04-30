set moduleName C_CNN
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {C_CNN}
set C_modelType { int 16 }
set C_modelArgList {
	{ InModel int 16 regular {array 784 { 1 1 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 } 1 1 }  }
	{ gmem1 int 16 regular {axi_master 0}  }
	{ Weights int 64 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "InModel", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "denoiser_w","offset": { "type": "dynamic","port_name": "denoiser_w","bundle": "control_r"},"direction": "READONLY"},{"cName": "classifier_w","offset": { "type": "dynamic","port_name": "classifier_w","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "Weights", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 16} ]}
# RTL Port declarations: 
set portNum 60
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ InModel_address0 sc_out sc_lv 10 signal 0 } 
	{ InModel_ce0 sc_out sc_logic 1 signal 0 } 
	{ InModel_q0 sc_in sc_lv 16 signal 0 } 
	{ InModel_address1 sc_out sc_lv 10 signal 0 } 
	{ InModel_ce1 sc_out sc_logic 1 signal 0 } 
	{ InModel_q1 sc_in sc_lv 16 signal 0 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem1_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WDATA sc_out sc_lv 16 signal 1 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem1_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_gmem1_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_gmem1_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RDATA sc_in sc_lv 16 signal 1 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RFIFONUM sc_in sc_lv 10 signal 1 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 1 } 
	{ Weights sc_in sc_lv 64 signal 2 } 
	{ ap_return sc_out sc_lv 16 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "InModel_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "InModel", "role": "address0" }} , 
 	{ "name": "InModel_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "InModel", "role": "ce0" }} , 
 	{ "name": "InModel_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "InModel", "role": "q0" }} , 
 	{ "name": "InModel_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "InModel", "role": "address1" }} , 
 	{ "name": "InModel_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "InModel", "role": "ce1" }} , 
 	{ "name": "InModel_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "InModel", "role": "q1" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem1_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem1_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem1_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem1_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem1_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem1_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem1_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem1_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem1_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem1_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem1_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem1_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem1_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem1_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem1_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem1", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem1_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem1_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem1_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem1_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem1_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "gmem1", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }} , 
 	{ "name": "Weights", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "Weights", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "38", "40", "42", "45", "47", "50", "52", "86", "88", "123"],
		"CDFG" : "C_CNN",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "159991", "EstimateLatencyMax" : "164087",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "InModel", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571", "Port" : "InModel", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571", "Port" : "gmem1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "52", "SubInstance" : "grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629", "Port" : "gmem1", "Inst_start_state" : "52", "Inst_end_state" : "53"},
					{"ID" : "47", "SubInstance" : "grp_C_CNN_Pipeline_loop_for_a_Dense_0_loop_for_b_Dense_0_fu_613", "Port" : "gmem1", "Inst_start_state" : "32", "Inst_end_state" : "33"},
					{"ID" : "88", "SubInstance" : "grp_C_Dense_2_fu_678", "Port" : "gmem1", "Inst_start_state" : "56", "Inst_end_state" : "57"},
					{"ID" : "42", "SubInstance" : "grp_C_CNN_Pipeline_loop_for_fc_1_loop_for_fb_1_loop_for_fa_1_fu_595", "Port" : "gmem1", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "Weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "grp_C_Dense_2_fu_678", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "56", "Inst_end_state" : "57"}]},
			{"Name" : "exp_x_msb_2_m_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "grp_C_Dense_2_fu_678", "Port" : "exp_x_msb_2_m_1_table_V", "Inst_start_state" : "56", "Inst_end_state" : "57"}]},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "grp_C_Dense_2_fu_678", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "56", "Inst_end_state" : "57"}]}],
		"Loop" : [
			{"Name" : "loop_for_channel2D_1_loop_for_bp2D_1_loop_for_ap2D_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "57", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state28"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state29"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_Dense_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.out_Dense_V_1_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Conv1_C1_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MaxPool_S2_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Conv2_C3_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.MaxPool_S4_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Flatten_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Dense_C5_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.Dense_F6_V_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571", "Parent" : "0", "Child" : ["11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
		"CDFG" : "C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "87562", "EstimateLatencyMax" : "87562",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "InModel", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Conv1_C1_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "38", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mul_3ns_7ns_9_1_1_U164", "Parent" : "10"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mul_mul_16s_16s_24_4_1_U165", "Parent" : "10"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U166", "Parent" : "10"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U167", "Parent" : "10"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U168", "Parent" : "10"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U169", "Parent" : "10"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U170", "Parent" : "10"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U171", "Parent" : "10"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U172", "Parent" : "10"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U173", "Parent" : "10"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U174", "Parent" : "10"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U175", "Parent" : "10"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U176", "Parent" : "10"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U177", "Parent" : "10"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U178", "Parent" : "10"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U179", "Parent" : "10"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U180", "Parent" : "10"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U181", "Parent" : "10"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U182", "Parent" : "10"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U183", "Parent" : "10"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U184", "Parent" : "10"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U185", "Parent" : "10"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U186", "Parent" : "10"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U187", "Parent" : "10"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U188", "Parent" : "10"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U189", "Parent" : "10"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.flow_control_loop_pipe_sequential_init_U", "Parent" : "10"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_8_2_VITIS_LOOP_9_3_fu_583", "Parent" : "0", "Child" : ["39"],
		"CDFG" : "C_CNN_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_8_2_VITIS_LOOP_9_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "579", "EstimateLatencyMax" : "579",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Conv1_C1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "MaxPool_S2_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_6_1_VITIS_LOOP_8_2_VITIS_LOOP_9_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_8_2_VITIS_LOOP_9_3_fu_583.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_589", "Parent" : "0", "Child" : ["41"],
		"CDFG" : "C_CNN_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "131", "EstimateLatencyMax" : "131",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Conv2_C3_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "MaxPool_S4_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_29_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_589.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_fc_1_loop_for_fb_1_loop_for_fa_1_fu_595", "Parent" : "0", "Child" : ["43", "44"],
		"CDFG" : "C_CNN_Pipeline_loop_for_fc_1_loop_for_fb_1_loop_for_fa_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "106", "EstimateLatencyMax" : "106",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln35_mid2", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln30_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_mid1239", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln32_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "MaxPool_S2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s_V_6_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_for_fc_1_loop_for_fb_1_loop_for_fa_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_fc_1_loop_for_fb_1_loop_for_fa_1_fu_595.mac_muladd_16s_16s_24ns_24_4_1_U197", "Parent" : "42"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_fc_1_loop_for_fb_1_loop_for_fa_1_fu_595.flow_control_loop_pipe_sequential_init_U", "Parent" : "42"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_VITIS_LOOP_50_1_VITIS_LOOP_51_2_VITIS_LOOP_52_3_fu_607", "Parent" : "0", "Child" : ["46"],
		"CDFG" : "C_CNN_Pipeline_VITIS_LOOP_50_1_VITIS_LOOP_51_2_VITIS_LOOP_52_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "130", "EstimateLatencyMax" : "130",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "MaxPool_S4_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Flatten_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_50_1_VITIS_LOOP_51_2_VITIS_LOOP_52_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_VITIS_LOOP_50_1_VITIS_LOOP_51_2_VITIS_LOOP_52_3_fu_607.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_0_loop_for_b_Dense_0_fu_613", "Parent" : "0", "Child" : ["48", "49"],
		"CDFG" : "C_CNN_Pipeline_loop_for_a_Dense_0_loop_for_b_Dense_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8204", "EstimateLatencyMax" : "8204",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Flatten_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln5", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_Dense_V_1", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_for_a_Dense_0_loop_for_b_Dense_0", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "2", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_0_loop_for_b_Dense_0_fu_613.mac_muladd_16s_16s_24ns_24_4_1_U209", "Parent" : "47"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_0_loop_for_b_Dense_0_fu_613.flow_control_loop_pipe_sequential_init_U", "Parent" : "47"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_VITIS_LOOP_13_1_fu_623", "Parent" : "0", "Child" : ["51"],
		"CDFG" : "C_CNN_Pipeline_VITIS_LOOP_13_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "34", "EstimateLatencyMax" : "34",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_Dense_V_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Dense_C5_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_13_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_VITIS_LOOP_13_1_fu_623.flow_control_loop_pipe_sequential_init_U", "Parent" : "50"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629", "Parent" : "0", "Child" : ["53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85"],
		"CDFG" : "C_CNN_Pipeline_loop_for_a_Dense_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "541", "EstimateLatencyMax" : "541",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "add_ln1273_74", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln818", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_15", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_16", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_17", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_18", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_19", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_20", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_21", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_22", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_23", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_24", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_25", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_26", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_27", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_28", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_29", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_30", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_31", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_32", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_33", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_34", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_35", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_36", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_37", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_38", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_39", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_40", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_41", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_42", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_43", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_44", "Type" : "None", "Direction" : "I"},
			{"Name" : "sext_ln20", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_Dense_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_for_a_Dense_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "33", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage11", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage11_subdone", "QuitState" : "ap_ST_fsm_pp0_stage11", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage11_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mul_mul_16s_15ns_24_4_1_U217", "Parent" : "52"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U218", "Parent" : "52"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U219", "Parent" : "52"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U220", "Parent" : "52"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U221", "Parent" : "52"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U222", "Parent" : "52"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U223", "Parent" : "52"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U224", "Parent" : "52"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U225", "Parent" : "52"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U226", "Parent" : "52"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U227", "Parent" : "52"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U228", "Parent" : "52"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U229", "Parent" : "52"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U230", "Parent" : "52"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U231", "Parent" : "52"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U232", "Parent" : "52"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U233", "Parent" : "52"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U234", "Parent" : "52"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U235", "Parent" : "52"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U236", "Parent" : "52"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U237", "Parent" : "52"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U238", "Parent" : "52"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U239", "Parent" : "52"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U240", "Parent" : "52"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U241", "Parent" : "52"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U242", "Parent" : "52"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U243", "Parent" : "52"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U244", "Parent" : "52"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U245", "Parent" : "52"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U246", "Parent" : "52"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U247", "Parent" : "52"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U248", "Parent" : "52"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_VITIS_LOOP_28_1_fu_672", "Parent" : "0", "Child" : ["87"],
		"CDFG" : "C_CNN_Pipeline_VITIS_LOOP_28_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "18", "EstimateLatencyMax" : "18",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_Dense_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Dense_F6_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_28_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_Pipeline_VITIS_LOOP_28_1_fu_672.flow_control_loop_pipe_sequential_init_U", "Parent" : "86"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678", "Parent" : "0", "Child" : ["89", "90", "108", "110", "112", "115", "117"],
		"CDFG" : "C_Dense_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "295", "EstimateLatencyMax" : "295",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "input_Dense", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "90", "SubInstance" : "grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275", "Port" : "gmem1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_C_Dense_2_Pipeline_VITIS_LOOP_57_2_fu_324", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "110", "SubInstance" : "grp_C_Dense_2_Pipeline_VITIS_LOOP_53_1_fu_311", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "exp_x_msb_2_m_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_C_Dense_2_Pipeline_VITIS_LOOP_57_2_fu_324", "Port" : "exp_x_msb_2_m_1_table_V", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "110", "SubInstance" : "grp_C_Dense_2_Pipeline_VITIS_LOOP_53_1_fu_311", "Port" : "exp_x_msb_2_m_1_table_V", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "112", "SubInstance" : "grp_C_Dense_2_Pipeline_VITIS_LOOP_57_2_fu_324", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "110", "SubInstance" : "grp_C_Dense_2_Pipeline_VITIS_LOOP_53_1_fu_311", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "17", "Inst_end_state" : "18"}]}]},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.out_Dense_V_U", "Parent" : "88"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275", "Parent" : "88", "Child" : ["91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107"],
		"CDFG" : "C_Dense_2_Pipeline_loop_for_a_Dense_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "183", "EstimateLatencyMax" : "183",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "weight", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "zext_ln818", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_4", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_5", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_6", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_7", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_8", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_9", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_10", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_11", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_12", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_13", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln1347_14", "Type" : "None", "Direction" : "I"},
			{"Name" : "bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_Dense_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_for_a_Dense_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "17", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage11", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage11_subdone", "QuitState" : "ap_ST_fsm_pp0_stage11", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage11_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mul_mul_16s_15ns_24_4_1_U289", "Parent" : "90"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U290", "Parent" : "90"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U291", "Parent" : "90"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U292", "Parent" : "90"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U293", "Parent" : "90"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U294", "Parent" : "90"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U295", "Parent" : "90"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U296", "Parent" : "90"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U297", "Parent" : "90"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U298", "Parent" : "90"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U299", "Parent" : "90"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U300", "Parent" : "90"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U301", "Parent" : "90"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U302", "Parent" : "90"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U303", "Parent" : "90"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U304", "Parent" : "90"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.flow_control_loop_pipe_sequential_init_U", "Parent" : "90"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_detect_fu_304", "Parent" : "88", "Child" : ["109"],
		"CDFG" : "C_Dense_2_Pipeline_loop_detect",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "13", "EstimateLatencyMax" : "13",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_Dense_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "maxindex_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_detect", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_detect_fu_304.flow_control_loop_pipe_sequential_init_U", "Parent" : "108"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_VITIS_LOOP_53_1_fu_311", "Parent" : "88", "Child" : ["111"],
		"CDFG" : "C_Dense_2_Pipeline_VITIS_LOOP_53_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17", "EstimateLatencyMax" : "17",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "out_Dense_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sext_ln813_3", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_out", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_2_m_1_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_53_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_VITIS_LOOP_53_1_fu_311.flow_control_loop_pipe_sequential_init_U", "Parent" : "110"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_VITIS_LOOP_57_2_fu_324", "Parent" : "88", "Child" : ["113", "114"],
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
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_VITIS_LOOP_57_2_fu_324.sdiv_25ns_16s_16_29_1_U339", "Parent" : "112"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_VITIS_LOOP_57_2_fu_324.flow_control_loop_pipe_sequential_init_U", "Parent" : "112"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_VITIS_LOOP_62_3_fu_337", "Parent" : "88", "Child" : ["116"],
		"CDFG" : "C_Dense_2_Pipeline_VITIS_LOOP_62_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "12", "EstimateLatencyMax" : "12",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "max_2_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_Dense_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "maxindex_2_V_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_62_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_VITIS_LOOP_62_3_fu_337.flow_control_loop_pipe_sequential_init_U", "Parent" : "115"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_exp_17_9_s_fu_568", "Parent" : "88", "Child" : ["118", "119", "120", "121", "122"],
		"CDFG" : "exp_17_9_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "5", "EstimateLatencyMin" : "5", "EstimateLatencyMax" : "5",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "x", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_2_m_1_table_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_exp_17_9_s_fu_568.f_x_lsb_table_V_U", "Parent" : "117"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_exp_17_9_s_fu_568.exp_x_msb_2_m_1_table_V_U", "Parent" : "117"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_exp_17_9_s_fu_568.exp_x_msb_1_table_V_U", "Parent" : "117"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_exp_17_9_s_fu_568.mul_25ns_25ns_50_1_1_U328", "Parent" : "117"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_Dense_2_fu_678.grp_exp_17_9_s_fu_568.mul_mul_25ns_18ns_43_4_1_U329", "Parent" : "117"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_4ns_8ns_8ns_11_4_1_U352", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	C_CNN {
		InModel {Type I LastRead 14 FirstWrite -1}
		gmem1 {Type I LastRead 46 FirstWrite -1}
		Weights {Type I LastRead 0 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_2_m_1_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0 {
		Weights {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 46 FirstWrite -1}
		InModel {Type I LastRead 14 FirstWrite -1}
		Conv1_C1_V {Type O LastRead -1 FirstWrite 47}}
	C_CNN_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_8_2_VITIS_LOOP_9_3 {
		Conv1_C1_V {Type I LastRead 1 FirstWrite -1}
		MaxPool_S2_V {Type O LastRead -1 FirstWrite 2}}
	C_CNN_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3 {
		Conv2_C3_V {Type I LastRead 1 FirstWrite -1}
		MaxPool_S4_V {Type O LastRead -1 FirstWrite 2}}
	C_CNN_Pipeline_loop_for_fc_1_loop_for_fb_1_loop_for_fa_1 {
		gmem1 {Type I LastRead 1 FirstWrite -1}
		sext_ln35_mid2 {Type I LastRead 0 FirstWrite -1}
		select_ln30_2 {Type I LastRead 0 FirstWrite -1}
		p_mid1239 {Type I LastRead 0 FirstWrite -1}
		zext_ln32_1 {Type I LastRead 0 FirstWrite -1}
		MaxPool_S2_V {Type I LastRead 1 FirstWrite -1}
		s_V_6_out {Type O LastRead -1 FirstWrite 4}}
	C_CNN_Pipeline_VITIS_LOOP_50_1_VITIS_LOOP_51_2_VITIS_LOOP_52_3 {
		MaxPool_S4_V {Type I LastRead 0 FirstWrite -1}
		Flatten_V {Type O LastRead -1 FirstWrite 1}}
	C_CNN_Pipeline_loop_for_a_Dense_0_loop_for_b_Dense_0 {
		Flatten_V {Type I LastRead 0 FirstWrite -1}
		Weights {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 9 FirstWrite -1}
		sext_ln5 {Type I LastRead 0 FirstWrite -1}
		out_Dense_V_1 {Type O LastRead -1 FirstWrite 12}}
	C_CNN_Pipeline_VITIS_LOOP_13_1 {
		out_Dense_V_1 {Type I LastRead 0 FirstWrite -1}
		Dense_C5_V {Type O LastRead -1 FirstWrite 1}}
	C_CNN_Pipeline_loop_for_a_Dense_1 {
		add_ln1273_74 {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 40 FirstWrite -1}
		zext_ln818 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_15 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_16 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_17 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_18 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_19 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_20 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_21 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_22 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_23 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_24 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_25 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_26 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_27 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_28 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_29 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_30 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_31 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_32 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_33 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_34 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_35 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_36 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_37 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_38 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_39 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_40 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_41 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_42 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_43 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_44 {Type I LastRead 0 FirstWrite -1}
		sext_ln20 {Type I LastRead 0 FirstWrite -1}
		out_Dense_V {Type O LastRead -1 FirstWrite 44}}
	C_CNN_Pipeline_VITIS_LOOP_28_1 {
		out_Dense_V {Type I LastRead 0 FirstWrite -1}
		Dense_F6_V {Type O LastRead -1 FirstWrite 1}}
	C_Dense_2 {
		input_Dense {Type I LastRead 8 FirstWrite -1}
		gmem1 {Type I LastRead 24 FirstWrite -1}
		bias {Type I LastRead 8 FirstWrite -1}
		weight {Type I LastRead 8 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_2_m_1_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	C_Dense_2_Pipeline_loop_for_a_Dense_2 {
		weight {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 24 FirstWrite -1}
		zext_ln818 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_1 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_3 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_4 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_5 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_6 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_7 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_8 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_9 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_10 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_11 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_12 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_13 {Type I LastRead 0 FirstWrite -1}
		zext_ln1347_14 {Type I LastRead 0 FirstWrite -1}
		bias {Type I LastRead 0 FirstWrite -1}
		out_Dense_V {Type O LastRead -1 FirstWrite 28}}
	C_Dense_2_Pipeline_loop_detect {
		max_V {Type I LastRead 0 FirstWrite -1}
		out_Dense_V {Type I LastRead 0 FirstWrite -1}
		maxindex_out {Type O LastRead -1 FirstWrite 1}}
	C_Dense_2_Pipeline_VITIS_LOOP_53_1 {
		out_Dense_V {Type I LastRead 0 FirstWrite -1}
		sext_ln813_3 {Type I LastRead 0 FirstWrite -1}
		p_out {Type O LastRead -1 FirstWrite 5}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_2_m_1_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	C_Dense_2_Pipeline_VITIS_LOOP_57_2 {
		out_Dense_V {Type IO LastRead 0 FirstWrite 35}
		sext_ln813_3 {Type I LastRead 0 FirstWrite -1}
		p_cast {Type I LastRead 0 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_2_m_1_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	C_Dense_2_Pipeline_VITIS_LOOP_62_3 {
		max_2_V {Type I LastRead 0 FirstWrite -1}
		out_Dense_V {Type I LastRead 0 FirstWrite -1}
		maxindex_2_V_out {Type O LastRead -1 FirstWrite 0}}
	exp_17_9_s {
		x {Type I LastRead 0 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_2_m_1_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "159991", "Max" : "164087"}
	, {"Name" : "Interval", "Min" : "159991", "Max" : "164087"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	InModel { ap_memory {  { InModel_address0 mem_address 1 10 }  { InModel_ce0 mem_ce 1 1 }  { InModel_q0 mem_dout 0 16 }  { InModel_address1 MemPortADDR2 1 10 }  { InModel_ce1 MemPortCE2 1 1 }  { InModel_q1 MemPortDOUT2 0 16 } } }
	 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 32 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 16 }  { m_axi_gmem1_WSTRB STRB 1 2 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 32 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 16 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RFIFONUM LEN 0 10 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	Weights { ap_none {  { Weights in_data 0 64 } } }
}
