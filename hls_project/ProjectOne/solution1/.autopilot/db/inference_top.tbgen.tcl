set moduleName inference_top
set isTopModule 1
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
set C_modelName {inference_top}
set C_modelType { void 0 }
set C_modelArgList {
	{ gmem0 int 16 regular {axi_master 0}  }
	{ gmem1 int 16 regular {axi_master 0}  }
	{ input_r int 64 regular {axi_slave 0}  }
	{ digit int 32 regular {axi_slave 1}  }
	{ denoiser_w int 64 regular {axi_slave 0}  }
	{ classifier_w int 64 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "gmem0", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "input_r","offset": { "type": "dynamic","port_name": "input_r","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "denoiser_w","offset": { "type": "dynamic","port_name": "denoiser_w","bundle": "control_r"},"direction": "READONLY"},{"cName": "classifier_w","offset": { "type": "dynamic","port_name": "classifier_w","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "input_r", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":27}} , 
 	{ "Name" : "digit", "interface" : "axi_slave", "bundle":"control","type":"ap_vld","bitwidth" : 32, "direction" : "WRITEONLY", "offset" : {"out":16}, "offset_end" : {"out":23}} , 
 	{ "Name" : "denoiser_w", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":28}, "offset_end" : {"in":39}} , 
 	{ "Name" : "classifier_w", "interface" : "axi_slave", "bundle":"control_r","type":"ap_none","bitwidth" : 64, "direction" : "READONLY", "offset" : {"in":40}, "offset_end" : {"in":51}} ]}
# RTL Port declarations: 
set portNum 127
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ m_axi_gmem0_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_AWLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WDATA sc_out sc_lv 32 signal 0 } 
	{ m_axi_gmem0_WSTRB sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_gmem0_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_ARLEN sc_out sc_lv 8 signal 0 } 
	{ m_axi_gmem0_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_gmem0_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_gmem0_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_gmem0_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RDATA sc_in sc_lv 32 signal 0 } 
	{ m_axi_gmem0_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_gmem0_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_gmem0_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem0_BUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_gmem1_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_AWADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_AWLEN sc_out sc_lv 8 signal 1 } 
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
	{ m_axi_gmem1_WDATA sc_out sc_lv 32 signal 1 } 
	{ m_axi_gmem1_WSTRB sc_out sc_lv 4 signal 1 } 
	{ m_axi_gmem1_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_ARADDR sc_out sc_lv 64 signal 1 } 
	{ m_axi_gmem1_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_gmem1_ARLEN sc_out sc_lv 8 signal 1 } 
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
	{ m_axi_gmem1_RDATA sc_in sc_lv 32 signal 1 } 
	{ m_axi_gmem1_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_gmem1_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_gmem1_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_gmem1_BUSER sc_in sc_lv 1 signal 1 } 
	{ s_axi_control_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_control_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_AWADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_r_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_control_r_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_control_r_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_ARADDR sc_in sc_lv 6 signal -1 } 
	{ s_axi_control_r_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_control_r_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_control_r_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_control_r_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_control_r_BRESP sc_out sc_lv 2 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_control_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "AWADDR" },"address":[{"name":"inference_top","role":"start","value":"0","valid_bit":"0"},{"name":"inference_top","role":"continue","value":"0","valid_bit":"4"},{"name":"inference_top","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_control_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWVALID" } },
	{ "name": "s_axi_control_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "AWREADY" } },
	{ "name": "s_axi_control_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WVALID" } },
	{ "name": "s_axi_control_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "WREADY" } },
	{ "name": "s_axi_control_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "WDATA" } },
	{ "name": "s_axi_control_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control", "role": "WSTRB" } },
	{ "name": "s_axi_control_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "control", "role": "ARADDR" },"address":[{"name":"inference_top","role":"start","value":"0","valid_bit":"0"},{"name":"inference_top","role":"done","value":"0","valid_bit":"1"},{"name":"inference_top","role":"idle","value":"0","valid_bit":"2"},{"name":"inference_top","role":"ready","value":"0","valid_bit":"3"},{"name":"inference_top","role":"auto_start","value":"0","valid_bit":"7"},{"name":"digit","role":"data","value":"16"}, {"name":"digit","role":"valid","value":"20","valid_bit":"0"}] },
	{ "name": "s_axi_control_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARVALID" } },
	{ "name": "s_axi_control_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "ARREADY" } },
	{ "name": "s_axi_control_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RVALID" } },
	{ "name": "s_axi_control_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "RREADY" } },
	{ "name": "s_axi_control_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control", "role": "RDATA" } },
	{ "name": "s_axi_control_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "RRESP" } },
	{ "name": "s_axi_control_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BVALID" } },
	{ "name": "s_axi_control_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "BREADY" } },
	{ "name": "s_axi_control_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control", "role": "interrupt" } },
	{ "name": "s_axi_control_r_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control_r", "role": "AWADDR" },"address":[{"name":"input_r","role":"data","value":"16"},{"name":"denoiser_w","role":"data","value":"28"},{"name":"classifier_w","role":"data","value":"40"}] },
	{ "name": "s_axi_control_r_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "AWVALID" } },
	{ "name": "s_axi_control_r_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "AWREADY" } },
	{ "name": "s_axi_control_r_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "WVALID" } },
	{ "name": "s_axi_control_r_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "WREADY" } },
	{ "name": "s_axi_control_r_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control_r", "role": "WDATA" } },
	{ "name": "s_axi_control_r_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "control_r", "role": "WSTRB" } },
	{ "name": "s_axi_control_r_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "control_r", "role": "ARADDR" },"address":[] },
	{ "name": "s_axi_control_r_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "ARVALID" } },
	{ "name": "s_axi_control_r_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "ARREADY" } },
	{ "name": "s_axi_control_r_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "RVALID" } },
	{ "name": "s_axi_control_r_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "RREADY" } },
	{ "name": "s_axi_control_r_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "control_r", "role": "RDATA" } },
	{ "name": "s_axi_control_r_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control_r", "role": "RRESP" } },
	{ "name": "s_axi_control_r_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "BVALID" } },
	{ "name": "s_axi_control_r_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "control_r", "role": "BREADY" } },
	{ "name": "s_axi_control_r_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "control_r", "role": "BRESP" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "m_axi_gmem0_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem0_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem0_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem0_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem0_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLEN" }} , 
 	{ "name": "m_axi_gmem0_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_gmem0_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWBURST" }} , 
 	{ "name": "m_axi_gmem0_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_gmem0_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_gmem0_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "AWPROT" }} , 
 	{ "name": "m_axi_gmem0_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWQOS" }} , 
 	{ "name": "m_axi_gmem0_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "AWREGION" }} , 
 	{ "name": "m_axi_gmem0_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "AWUSER" }} , 
 	{ "name": "m_axi_gmem0_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WVALID" }} , 
 	{ "name": "m_axi_gmem0_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WREADY" }} , 
 	{ "name": "m_axi_gmem0_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem0_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem0_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem0_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WID" }} , 
 	{ "name": "m_axi_gmem0_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem0_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem0_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem0_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem0", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem0_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem0_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLEN" }} , 
 	{ "name": "m_axi_gmem0_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_gmem0_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARBURST" }} , 
 	{ "name": "m_axi_gmem0_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_gmem0_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_gmem0_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "gmem0", "role": "ARPROT" }} , 
 	{ "name": "m_axi_gmem0_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARQOS" }} , 
 	{ "name": "m_axi_gmem0_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem0", "role": "ARREGION" }} , 
 	{ "name": "m_axi_gmem0_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "ARUSER" }} , 
 	{ "name": "m_axi_gmem0_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RVALID" }} , 
 	{ "name": "m_axi_gmem0_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RREADY" }} , 
 	{ "name": "m_axi_gmem0_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem0", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem0_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem0_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RID" }} , 
 	{ "name": "m_axi_gmem0_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem0_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem0_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem0_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem0_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem0", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem0_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BID" }} , 
 	{ "name": "m_axi_gmem0_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem0", "role": "BUSER" }} , 
 	{ "name": "m_axi_gmem1_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWVALID" }} , 
 	{ "name": "m_axi_gmem1_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWREADY" }} , 
 	{ "name": "m_axi_gmem1_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "AWADDR" }} , 
 	{ "name": "m_axi_gmem1_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "AWID" }} , 
 	{ "name": "m_axi_gmem1_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "AWLEN" }} , 
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
 	{ "name": "m_axi_gmem1_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "WDATA" }} , 
 	{ "name": "m_axi_gmem1_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "gmem1", "role": "WSTRB" }} , 
 	{ "name": "m_axi_gmem1_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WLAST" }} , 
 	{ "name": "m_axi_gmem1_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WID" }} , 
 	{ "name": "m_axi_gmem1_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "WUSER" }} , 
 	{ "name": "m_axi_gmem1_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARVALID" }} , 
 	{ "name": "m_axi_gmem1_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARREADY" }} , 
 	{ "name": "m_axi_gmem1_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "gmem1", "role": "ARADDR" }} , 
 	{ "name": "m_axi_gmem1_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "ARID" }} , 
 	{ "name": "m_axi_gmem1_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "gmem1", "role": "ARLEN" }} , 
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
 	{ "name": "m_axi_gmem1_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "gmem1", "role": "RDATA" }} , 
 	{ "name": "m_axi_gmem1_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RLAST" }} , 
 	{ "name": "m_axi_gmem1_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RID" }} , 
 	{ "name": "m_axi_gmem1_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "RUSER" }} , 
 	{ "name": "m_axi_gmem1_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "RRESP" }} , 
 	{ "name": "m_axi_gmem1_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BVALID" }} , 
 	{ "name": "m_axi_gmem1_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BREADY" }} , 
 	{ "name": "m_axi_gmem1_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "gmem1", "role": "BRESP" }} , 
 	{ "name": "m_axi_gmem1_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BID" }} , 
 	{ "name": "m_axi_gmem1_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "gmem1", "role": "BUSER" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "135", "259", "260", "261", "262"],
		"CDFG" : "inference_top",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "646329", "EstimateLatencyMax" : "675513",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_D_CNN_fu_109", "Port" : "gmem0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_C_CNN_fu_123", "Port" : "gmem1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "2", "SubInstance" : "grp_D_CNN_fu_109", "Port" : "gmem1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "input_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "digit", "Type" : "Vld", "Direction" : "O"},
			{"Name" : "denoiser_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "classifier_w", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_C_CNN_fu_123", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "exp_x_msb_2_m_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_C_CNN_fu_123", "Port" : "exp_x_msb_2_m_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "135", "SubInstance" : "grp_C_CNN_fu_123", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.denoised_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109", "Parent" : "0", "Child" : ["3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "15", "27", "31", "35", "74", "78", "83", "88", "92", "132", "134"],
		"CDFG" : "D_CNN",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "486335", "EstimateLatencyMax" : "511423",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_D_CNN_Pipeline_loop_for_channel_pad_0_fu_260", "Port" : "gmem0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "InModel", "Type" : "None", "Direction" : "I"},
			{"Name" : "OutModel0", "Type" : "Memory", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "132", "SubInstance" : "grp_D_CNN_Pipeline_VITIS_LOOP_26_1_fu_341", "Port" : "OutModel0", "Inst_start_state" : "39", "Inst_end_state" : "40"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "88", "SubInstance" : "grp_D_CNN_Pipeline_loop_for_fc_2_loop_for_fb_2_loop_for_fa_2_fu_319", "Port" : "gmem1", "Inst_start_state" : "24", "Inst_end_state" : "25"},
					{"ID" : "92", "SubInstance" : "grp_D_Conv2D_3_fu_331", "Port" : "gmem1", "Inst_start_state" : "37", "Inst_end_state" : "38"},
					{"ID" : "15", "SubInstance" : "grp_D_CNN_Pipeline_VITIS_LOOP_19_1_loop_for_bp2D_0_loop_for_ap2D_0_fu_270", "Port" : "gmem1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "35", "SubInstance" : "grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292", "Port" : "gmem1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "Weights", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_93_1_loop_for_bp2D_2_loop_for_ap2D_2", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "40", "FirstState" : "ap_ST_fsm_state15", "LastState" : ["ap_ST_fsm_state35"], "QuitState" : ["ap_ST_fsm_state15"], "PreState" : ["ap_ST_fsm_state14"], "PostState" : ["ap_ST_fsm_state36"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.OutPadConv0_V_U", "Parent" : "2"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.conv1_V_U", "Parent" : "2"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.pool_V_U", "Parent" : "2"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.OutPadConv1_V_U", "Parent" : "2"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.conv2_V_U", "Parent" : "2"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.upsample_V_U", "Parent" : "2"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.OutPadConv2_V_U", "Parent" : "2"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.conv3_V_U", "Parent" : "2"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.OutPadConv3_V_U", "Parent" : "2"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.conv4_U", "Parent" : "2"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_loop_for_channel_pad_0_fu_260", "Parent" : "2", "Child" : ["14"],
		"CDFG" : "D_CNN_Pipeline_loop_for_channel_pad_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "850", "EstimateLatencyMax" : "850",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "OutPadConv0_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "InModel", "Type" : "None", "Direction" : "I"},
			{"Name" : "gmem0", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem0_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem0_blk_n_R", "Type" : "RtlSignal"}]}],
		"Loop" : [
			{"Name" : "loop_for_channel_pad_0", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "28", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage8", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage8_subdone", "QuitState" : "ap_ST_fsm_pp0_stage8", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage8_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_loop_for_channel_pad_0_fu_260.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_19_1_loop_for_bp2D_0_loop_for_ap2D_0_fu_270", "Parent" : "2", "Child" : ["16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26"],
		"CDFG" : "D_CNN_Pipeline_VITIS_LOOP_19_1_loop_for_bp2D_0_loop_for_ap2D_0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69002", "EstimateLatencyMax" : "69002",
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
			{"Name" : "OutPadConv0_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv1_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_19_1_loop_for_bp2D_0_loop_for_ap2D_0", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "22", "FirstState" : "ap_ST_fsm_pp0_stage1", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage1_subdone", "LastState" : "ap_ST_fsm_pp0_stage9", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage9_subdone", "QuitState" : "ap_ST_fsm_pp0_stage9", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage9_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_19_1_loop_for_bp2D_0_loop_for_ap2D_0_fu_270.mac_muladd_3ns_10ns_5ns_12_4_1_U4", "Parent" : "15"},
	{"ID" : "17", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_19_1_loop_for_bp2D_0_loop_for_ap2D_0_fu_270.mul_mul_16s_16s_24_4_1_U5", "Parent" : "15"},
	{"ID" : "18", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_19_1_loop_for_bp2D_0_loop_for_ap2D_0_fu_270.mac_muladd_16s_16s_24ns_24_4_1_U6", "Parent" : "15"},
	{"ID" : "19", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_19_1_loop_for_bp2D_0_loop_for_ap2D_0_fu_270.mac_muladd_16s_16s_24ns_24_4_1_U7", "Parent" : "15"},
	{"ID" : "20", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_19_1_loop_for_bp2D_0_loop_for_ap2D_0_fu_270.mac_muladd_16s_16s_24ns_24_4_1_U8", "Parent" : "15"},
	{"ID" : "21", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_19_1_loop_for_bp2D_0_loop_for_ap2D_0_fu_270.mac_muladd_16s_16s_24ns_24_4_1_U9", "Parent" : "15"},
	{"ID" : "22", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_19_1_loop_for_bp2D_0_loop_for_ap2D_0_fu_270.mac_muladd_16s_16s_24ns_24_4_1_U10", "Parent" : "15"},
	{"ID" : "23", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_19_1_loop_for_bp2D_0_loop_for_ap2D_0_fu_270.mac_muladd_16s_16s_24ns_24_4_1_U11", "Parent" : "15"},
	{"ID" : "24", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_19_1_loop_for_bp2D_0_loop_for_ap2D_0_fu_270.mac_muladd_16s_16s_24ns_24_4_1_U12", "Parent" : "15"},
	{"ID" : "25", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_19_1_loop_for_bp2D_0_loop_for_ap2D_0_fu_270.mac_muladd_16s_16s_24ns_24_4_1_U13", "Parent" : "15"},
	{"ID" : "26", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_19_1_loop_for_bp2D_0_loop_for_ap2D_0_fu_270.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_8_2_VITIS_LOOP_9_3_fu_280", "Parent" : "2", "Child" : ["28", "29", "30"],
		"CDFG" : "D_CNN_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_8_2_VITIS_LOOP_9_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "790", "EstimateLatencyMax" : "790",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pool_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_6_1_VITIS_LOOP_8_2_VITIS_LOOP_9_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "28", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_8_2_VITIS_LOOP_9_3_fu_280.mac_muladd_3ns_10ns_5ns_12_4_1_U21", "Parent" : "27"},
	{"ID" : "29", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_8_2_VITIS_LOOP_9_3_fu_280.mac_muladd_3ns_8ns_8ns_10_4_1_U22", "Parent" : "27"},
	{"ID" : "30", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_8_2_VITIS_LOOP_9_3_fu_280.flow_control_loop_pipe_sequential_init_U", "Parent" : "27"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_loop_for_3_channel_pad_1_loop_for_channel_pad_1_loop_for_weight_p_fu_286", "Parent" : "2", "Child" : ["32", "33", "34"],
		"CDFG" : "D_CNN_Pipeline_loop_for_3_channel_pad_1_loop_for_channel_pad_1_loop_for_weight_p",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1026", "EstimateLatencyMax" : "1026",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "OutPadConv1_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "pool_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "loop_for_3_channel_pad_1_loop_for_channel_pad_1_loop_for_weight_pad_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_loop_for_3_channel_pad_1_loop_for_channel_pad_1_loop_for_weight_p_fu_286.mul_3ns_9ns_10_1_1_U26", "Parent" : "31"},
	{"ID" : "33", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_loop_for_3_channel_pad_1_loop_for_channel_pad_1_loop_for_weight_p_fu_286.mul_3ns_9ns_10_1_1_U27", "Parent" : "31"},
	{"ID" : "34", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_loop_for_3_channel_pad_1_loop_for_channel_pad_1_loop_for_weight_p_fu_286.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292", "Parent" : "2", "Child" : ["36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73"],
		"CDFG" : "D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "76842", "EstimateLatencyMax" : "76842",
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
			{"Name" : "OutPadConv1_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "conv2_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "49", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage8", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage8_subdone", "QuitState" : "ap_ST_fsm_pp0_stage8", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage8_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_4ns_8ns_4ns_11_4_1_U31", "Parent" : "35"},
	{"ID" : "37", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mul_mul_16s_16s_24_4_1_U32", "Parent" : "35"},
	{"ID" : "38", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U33", "Parent" : "35"},
	{"ID" : "39", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U34", "Parent" : "35"},
	{"ID" : "40", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U35", "Parent" : "35"},
	{"ID" : "41", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U36", "Parent" : "35"},
	{"ID" : "42", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U37", "Parent" : "35"},
	{"ID" : "43", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U38", "Parent" : "35"},
	{"ID" : "44", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U39", "Parent" : "35"},
	{"ID" : "45", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U40", "Parent" : "35"},
	{"ID" : "46", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U41", "Parent" : "35"},
	{"ID" : "47", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U42", "Parent" : "35"},
	{"ID" : "48", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U43", "Parent" : "35"},
	{"ID" : "49", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U44", "Parent" : "35"},
	{"ID" : "50", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U45", "Parent" : "35"},
	{"ID" : "51", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U46", "Parent" : "35"},
	{"ID" : "52", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U47", "Parent" : "35"},
	{"ID" : "53", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U48", "Parent" : "35"},
	{"ID" : "54", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U49", "Parent" : "35"},
	{"ID" : "55", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U50", "Parent" : "35"},
	{"ID" : "56", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U51", "Parent" : "35"},
	{"ID" : "57", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U52", "Parent" : "35"},
	{"ID" : "58", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U53", "Parent" : "35"},
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U54", "Parent" : "35"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U55", "Parent" : "35"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U56", "Parent" : "35"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U57", "Parent" : "35"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U58", "Parent" : "35"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U59", "Parent" : "35"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U60", "Parent" : "35"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U61", "Parent" : "35"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U62", "Parent" : "35"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U63", "Parent" : "35"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U64", "Parent" : "35"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U65", "Parent" : "35"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U66", "Parent" : "35"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.mac_muladd_16s_16s_24ns_24_4_1_U67", "Parent" : "35"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1_fu_292.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2_VITIS_LOOP_28_3_fu_301", "Parent" : "2", "Child" : ["75", "76", "77"],
		"CDFG" : "D_CNN_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2_VITIS_LOOP_28_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6277", "EstimateLatencyMax" : "6277",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "upsample_V", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_26_1_VITIS_LOOP_27_2_VITIS_LOOP_28_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2_VITIS_LOOP_28_3_fu_301.mac_muladd_4ns_10ns_5ns_13_4_1_U73", "Parent" : "74"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2_VITIS_LOOP_28_3_fu_301.mac_muladd_3ns_8ns_4ns_11_4_1_U74", "Parent" : "74"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2_VITIS_LOOP_28_3_fu_301.flow_control_loop_pipe_sequential_init_U", "Parent" : "74"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_loop_for_3_channel_pad_2_loop_for_channel_pad_2_loop_for_weight_p_fu_307", "Parent" : "2", "Child" : ["79", "80", "81", "82"],
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
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_loop_for_3_channel_pad_2_loop_for_channel_pad_2_loop_for_weight_p_fu_307.mul_4ns_11ns_13_1_1_U79", "Parent" : "78"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_loop_for_3_channel_pad_2_loop_for_channel_pad_2_loop_for_weight_p_fu_307.mul_4ns_11ns_13_1_1_U80", "Parent" : "78"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_loop_for_3_channel_pad_2_loop_for_channel_pad_2_loop_for_weight_p_fu_307.mac_muladd_4ns_10ns_5ns_13_4_1_U81", "Parent" : "78"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_loop_for_3_channel_pad_2_loop_for_channel_pad_2_loop_for_weight_p_fu_307.flow_control_loop_pipe_sequential_init_U", "Parent" : "78"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_loop_for_3_channel_pad_3_loop_for_channel_pad_3_loop_for_weight_p_fu_313", "Parent" : "2", "Child" : ["84", "85", "86", "87"],
		"CDFG" : "D_CNN_Pipeline_loop_for_3_channel_pad_3_loop_for_channel_pad_3_loop_for_weight_p",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3604", "EstimateLatencyMax" : "3604",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "OutPadConv3_V", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "conv3_V", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "loop_for_3_channel_pad_3_loop_for_channel_pad_3_loop_for_weight_pad_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_loop_for_3_channel_pad_3_loop_for_channel_pad_3_loop_for_weight_p_fu_313.mul_3ns_11ns_12_1_1_U94", "Parent" : "83"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_loop_for_3_channel_pad_3_loop_for_channel_pad_3_loop_for_weight_p_fu_313.mul_3ns_11ns_12_1_1_U95", "Parent" : "83"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_loop_for_3_channel_pad_3_loop_for_channel_pad_3_loop_for_weight_p_fu_313.mac_muladd_3ns_10ns_5ns_12_4_1_U96", "Parent" : "83"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_loop_for_3_channel_pad_3_loop_for_channel_pad_3_loop_for_weight_p_fu_313.flow_control_loop_pipe_sequential_init_U", "Parent" : "83"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_loop_for_fc_2_loop_for_fb_2_loop_for_fa_2_fu_319", "Parent" : "2", "Child" : ["89", "90", "91"],
		"CDFG" : "D_CNN_Pipeline_loop_for_fc_2_loop_for_fb_2_loop_for_fa_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "80", "EstimateLatencyMax" : "80",
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
			{"Name" : "sext_ln100_mid2", "Type" : "None", "Direction" : "I"},
			{"Name" : "select_ln95_2", "Type" : "None", "Direction" : "I"},
			{"Name" : "zext_ln97", "Type" : "None", "Direction" : "I"},
			{"Name" : "p_mid1483", "Type" : "None", "Direction" : "I"},
			{"Name" : "OutPadConv2_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "s_V_2_out", "Type" : "Vld", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "loop_for_fc_2_loop_for_fb_2_loop_for_fa_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_loop_for_fc_2_loop_for_fb_2_loop_for_fa_2_fu_319.mac_muladd_4ns_10ns_5ns_13_4_1_U85", "Parent" : "88"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_loop_for_fc_2_loop_for_fb_2_loop_for_fa_2_fu_319.mac_muladd_16s_16s_24ns_24_4_1_U86", "Parent" : "88"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_loop_for_fc_2_loop_for_fb_2_loop_for_fa_2_fu_319.flow_control_loop_pipe_sequential_init_U", "Parent" : "88"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331", "Parent" : "2", "Child" : ["93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131"],
		"CDFG" : "D_Conv2D_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "28287", "EstimateLatencyMax" : "28287",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "Input_Conv", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "Output_Conv", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "kernel", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "loop_for_bp2D_3_loop_for_ap2D_3", "PipelineType" : "pipeline",
				"LoopDec" : {"FSMBitwidth" : "45", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage18", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage18_subdone", "PreState" : ["ap_ST_fsm_state8"], "QuitState" : "ap_ST_fsm_pp0_stage18", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage18_subdone", "PostState" : ["ap_ST_fsm_state100"]}}]},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.dadd_64ns_64ns_64_5_full_dsp_1_U100", "Parent" : "92"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.ddiv_64ns_64ns_64_22_no_dsp_1_U101", "Parent" : "92"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.dexp_64ns_64ns_64_13_full_dsp_1_U102", "Parent" : "92"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mul_mul_16s_16s_24_4_1_U103", "Parent" : "92"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U104", "Parent" : "92"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U105", "Parent" : "92"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U106", "Parent" : "92"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U107", "Parent" : "92"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U108", "Parent" : "92"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U109", "Parent" : "92"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U110", "Parent" : "92"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U111", "Parent" : "92"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U112", "Parent" : "92"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U113", "Parent" : "92"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U114", "Parent" : "92"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U115", "Parent" : "92"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U116", "Parent" : "92"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U117", "Parent" : "92"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U118", "Parent" : "92"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U119", "Parent" : "92"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U120", "Parent" : "92"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U121", "Parent" : "92"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U122", "Parent" : "92"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U123", "Parent" : "92"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U124", "Parent" : "92"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U125", "Parent" : "92"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U126", "Parent" : "92"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U127", "Parent" : "92"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U128", "Parent" : "92"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U129", "Parent" : "92"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U130", "Parent" : "92"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U131", "Parent" : "92"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U132", "Parent" : "92"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U133", "Parent" : "92"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U134", "Parent" : "92"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U135", "Parent" : "92"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U136", "Parent" : "92"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U137", "Parent" : "92"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_Conv2D_3_fu_331.mac_muladd_16s_16s_24ns_24_4_1_U138", "Parent" : "92"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_26_1_fu_341", "Parent" : "2", "Child" : ["133"],
		"CDFG" : "D_CNN_Pipeline_VITIS_LOOP_26_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "786", "EstimateLatencyMax" : "786",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "conv4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "OutModel0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_26_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.grp_D_CNN_Pipeline_VITIS_LOOP_26_1_fu_341.flow_control_loop_pipe_sequential_init_U", "Parent" : "132"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_D_CNN_fu_109.mac_muladd_3ns_10ns_5ns_12_4_1_U149", "Parent" : "2"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123", "Parent" : "0", "Child" : ["136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "173", "175", "177", "180", "182", "185", "187", "221", "223", "258"],
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
					{"ID" : "145", "SubInstance" : "grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571", "Port" : "InModel", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "gmem1", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "gmem1_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "gmem1_blk_n_R", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "145", "SubInstance" : "grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571", "Port" : "gmem1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "187", "SubInstance" : "grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629", "Port" : "gmem1", "Inst_start_state" : "52", "Inst_end_state" : "53"},
					{"ID" : "182", "SubInstance" : "grp_C_CNN_Pipeline_loop_for_a_Dense_0_loop_for_b_Dense_0_fu_613", "Port" : "gmem1", "Inst_start_state" : "32", "Inst_end_state" : "33"},
					{"ID" : "223", "SubInstance" : "grp_C_Dense_2_fu_678", "Port" : "gmem1", "Inst_start_state" : "56", "Inst_end_state" : "57"},
					{"ID" : "177", "SubInstance" : "grp_C_CNN_Pipeline_loop_for_fc_1_loop_for_fb_1_loop_for_fa_1_fu_595", "Port" : "gmem1", "Inst_start_state" : "16", "Inst_end_state" : "17"}]},
			{"Name" : "Weights", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "grp_C_Dense_2_fu_678", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "56", "Inst_end_state" : "57"}]},
			{"Name" : "exp_x_msb_2_m_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "grp_C_Dense_2_fu_678", "Port" : "exp_x_msb_2_m_1_table_V", "Inst_start_state" : "56", "Inst_end_state" : "57"}]},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "223", "SubInstance" : "grp_C_Dense_2_fu_678", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "56", "Inst_end_state" : "57"}]}],
		"Loop" : [
			{"Name" : "loop_for_channel2D_1_loop_for_bp2D_1_loop_for_ap2D_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "57", "FirstState" : "ap_ST_fsm_state5", "LastState" : ["ap_ST_fsm_state28"], "QuitState" : ["ap_ST_fsm_state5"], "PreState" : ["ap_ST_fsm_state4"], "PostState" : ["ap_ST_fsm_state29"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.out_Dense_V_U", "Parent" : "135"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.out_Dense_V_1_U", "Parent" : "135"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.Conv1_C1_V_U", "Parent" : "135"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.MaxPool_S2_V_U", "Parent" : "135"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.Conv2_C3_V_U", "Parent" : "135"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.MaxPool_S4_V_U", "Parent" : "135"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.Flatten_V_U", "Parent" : "135"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.Dense_C5_V_U", "Parent" : "135"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.Dense_F6_V_U", "Parent" : "135"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571", "Parent" : "135", "Child" : ["146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172"],
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
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mul_3ns_7ns_9_1_1_U164", "Parent" : "145"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mul_mul_16s_16s_24_4_1_U165", "Parent" : "145"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U166", "Parent" : "145"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U167", "Parent" : "145"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U168", "Parent" : "145"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U169", "Parent" : "145"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U170", "Parent" : "145"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U171", "Parent" : "145"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U172", "Parent" : "145"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U173", "Parent" : "145"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U174", "Parent" : "145"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U175", "Parent" : "145"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U176", "Parent" : "145"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U177", "Parent" : "145"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U178", "Parent" : "145"},
	{"ID" : "161", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U179", "Parent" : "145"},
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U180", "Parent" : "145"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U181", "Parent" : "145"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U182", "Parent" : "145"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U183", "Parent" : "145"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U184", "Parent" : "145"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U185", "Parent" : "145"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U186", "Parent" : "145"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U187", "Parent" : "145"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U188", "Parent" : "145"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.mac_muladd_16s_16s_24ns_24_4_1_U189", "Parent" : "145"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0_fu_571.flow_control_loop_pipe_sequential_init_U", "Parent" : "145"},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_8_2_VITIS_LOOP_9_3_fu_583", "Parent" : "135", "Child" : ["174"],
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
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_8_2_VITIS_LOOP_9_3_fu_583.flow_control_loop_pipe_sequential_init_U", "Parent" : "173"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_589", "Parent" : "135", "Child" : ["176"],
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
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3_fu_589.flow_control_loop_pipe_sequential_init_U", "Parent" : "175"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_fc_1_loop_for_fb_1_loop_for_fa_1_fu_595", "Parent" : "135", "Child" : ["178", "179"],
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
	{"ID" : "178", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_fc_1_loop_for_fb_1_loop_for_fa_1_fu_595.mac_muladd_16s_16s_24ns_24_4_1_U197", "Parent" : "177"},
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_fc_1_loop_for_fb_1_loop_for_fa_1_fu_595.flow_control_loop_pipe_sequential_init_U", "Parent" : "177"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_VITIS_LOOP_50_1_VITIS_LOOP_51_2_VITIS_LOOP_52_3_fu_607", "Parent" : "135", "Child" : ["181"],
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
	{"ID" : "181", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_VITIS_LOOP_50_1_VITIS_LOOP_51_2_VITIS_LOOP_52_3_fu_607.flow_control_loop_pipe_sequential_init_U", "Parent" : "180"},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_0_loop_for_b_Dense_0_fu_613", "Parent" : "135", "Child" : ["183", "184"],
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
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_0_loop_for_b_Dense_0_fu_613.mac_muladd_16s_16s_24ns_24_4_1_U209", "Parent" : "182"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_0_loop_for_b_Dense_0_fu_613.flow_control_loop_pipe_sequential_init_U", "Parent" : "182"},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_VITIS_LOOP_13_1_fu_623", "Parent" : "135", "Child" : ["186"],
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
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_VITIS_LOOP_13_1_fu_623.flow_control_loop_pipe_sequential_init_U", "Parent" : "185"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629", "Parent" : "135", "Child" : ["188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220"],
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
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mul_mul_16s_15ns_24_4_1_U217", "Parent" : "187"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U218", "Parent" : "187"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U219", "Parent" : "187"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U220", "Parent" : "187"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U221", "Parent" : "187"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U222", "Parent" : "187"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U223", "Parent" : "187"},
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U224", "Parent" : "187"},
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U225", "Parent" : "187"},
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U226", "Parent" : "187"},
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U227", "Parent" : "187"},
	{"ID" : "199", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U228", "Parent" : "187"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U229", "Parent" : "187"},
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U230", "Parent" : "187"},
	{"ID" : "202", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U231", "Parent" : "187"},
	{"ID" : "203", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U232", "Parent" : "187"},
	{"ID" : "204", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U233", "Parent" : "187"},
	{"ID" : "205", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U234", "Parent" : "187"},
	{"ID" : "206", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U235", "Parent" : "187"},
	{"ID" : "207", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U236", "Parent" : "187"},
	{"ID" : "208", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U237", "Parent" : "187"},
	{"ID" : "209", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U238", "Parent" : "187"},
	{"ID" : "210", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U239", "Parent" : "187"},
	{"ID" : "211", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U240", "Parent" : "187"},
	{"ID" : "212", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U241", "Parent" : "187"},
	{"ID" : "213", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U242", "Parent" : "187"},
	{"ID" : "214", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U243", "Parent" : "187"},
	{"ID" : "215", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U244", "Parent" : "187"},
	{"ID" : "216", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U245", "Parent" : "187"},
	{"ID" : "217", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U246", "Parent" : "187"},
	{"ID" : "218", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U247", "Parent" : "187"},
	{"ID" : "219", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.mac_muladd_16s_15ns_24ns_24_4_1_U248", "Parent" : "187"},
	{"ID" : "220", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_loop_for_a_Dense_1_fu_629.flow_control_loop_pipe_sequential_init_U", "Parent" : "187"},
	{"ID" : "221", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_VITIS_LOOP_28_1_fu_672", "Parent" : "135", "Child" : ["222"],
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
	{"ID" : "222", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_CNN_Pipeline_VITIS_LOOP_28_1_fu_672.flow_control_loop_pipe_sequential_init_U", "Parent" : "221"},
	{"ID" : "223", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678", "Parent" : "135", "Child" : ["224", "225", "243", "245", "247", "250", "252"],
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
					{"ID" : "225", "SubInstance" : "grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275", "Port" : "gmem1", "Inst_start_state" : "9", "Inst_end_state" : "10"}]},
			{"Name" : "bias", "Type" : "None", "Direction" : "I"},
			{"Name" : "weight", "Type" : "None", "Direction" : "I"},
			{"Name" : "f_x_lsb_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "grp_C_Dense_2_Pipeline_VITIS_LOOP_57_2_fu_324", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "245", "SubInstance" : "grp_C_Dense_2_Pipeline_VITIS_LOOP_53_1_fu_311", "Port" : "f_x_lsb_table_V", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "exp_x_msb_2_m_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "grp_C_Dense_2_Pipeline_VITIS_LOOP_57_2_fu_324", "Port" : "exp_x_msb_2_m_1_table_V", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "245", "SubInstance" : "grp_C_Dense_2_Pipeline_VITIS_LOOP_53_1_fu_311", "Port" : "exp_x_msb_2_m_1_table_V", "Inst_start_state" : "17", "Inst_end_state" : "18"}]},
			{"Name" : "exp_x_msb_1_table_V", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "247", "SubInstance" : "grp_C_Dense_2_Pipeline_VITIS_LOOP_57_2_fu_324", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "245", "SubInstance" : "grp_C_Dense_2_Pipeline_VITIS_LOOP_53_1_fu_311", "Port" : "exp_x_msb_1_table_V", "Inst_start_state" : "17", "Inst_end_state" : "18"}]}]},
	{"ID" : "224", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.out_Dense_V_U", "Parent" : "223"},
	{"ID" : "225", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275", "Parent" : "223", "Child" : ["226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242"],
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
	{"ID" : "226", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mul_mul_16s_15ns_24_4_1_U289", "Parent" : "225"},
	{"ID" : "227", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U290", "Parent" : "225"},
	{"ID" : "228", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U291", "Parent" : "225"},
	{"ID" : "229", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U292", "Parent" : "225"},
	{"ID" : "230", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U293", "Parent" : "225"},
	{"ID" : "231", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U294", "Parent" : "225"},
	{"ID" : "232", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U295", "Parent" : "225"},
	{"ID" : "233", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U296", "Parent" : "225"},
	{"ID" : "234", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U297", "Parent" : "225"},
	{"ID" : "235", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U298", "Parent" : "225"},
	{"ID" : "236", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U299", "Parent" : "225"},
	{"ID" : "237", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U300", "Parent" : "225"},
	{"ID" : "238", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U301", "Parent" : "225"},
	{"ID" : "239", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U302", "Parent" : "225"},
	{"ID" : "240", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U303", "Parent" : "225"},
	{"ID" : "241", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.mac_muladd_16s_15ns_24ns_24_4_1_U304", "Parent" : "225"},
	{"ID" : "242", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_for_a_Dense_2_fu_275.flow_control_loop_pipe_sequential_init_U", "Parent" : "225"},
	{"ID" : "243", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_detect_fu_304", "Parent" : "223", "Child" : ["244"],
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
	{"ID" : "244", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_loop_detect_fu_304.flow_control_loop_pipe_sequential_init_U", "Parent" : "243"},
	{"ID" : "245", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_VITIS_LOOP_53_1_fu_311", "Parent" : "223", "Child" : ["246"],
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
	{"ID" : "246", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_VITIS_LOOP_53_1_fu_311.flow_control_loop_pipe_sequential_init_U", "Parent" : "245"},
	{"ID" : "247", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_VITIS_LOOP_57_2_fu_324", "Parent" : "223", "Child" : ["248", "249"],
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
	{"ID" : "248", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_VITIS_LOOP_57_2_fu_324.sdiv_25ns_16s_16_29_1_U339", "Parent" : "247"},
	{"ID" : "249", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_VITIS_LOOP_57_2_fu_324.flow_control_loop_pipe_sequential_init_U", "Parent" : "247"},
	{"ID" : "250", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_VITIS_LOOP_62_3_fu_337", "Parent" : "223", "Child" : ["251"],
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
	{"ID" : "251", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_C_Dense_2_Pipeline_VITIS_LOOP_62_3_fu_337.flow_control_loop_pipe_sequential_init_U", "Parent" : "250"},
	{"ID" : "252", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_exp_17_9_s_fu_568", "Parent" : "223", "Child" : ["253", "254", "255", "256", "257"],
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
	{"ID" : "253", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_exp_17_9_s_fu_568.f_x_lsb_table_V_U", "Parent" : "252"},
	{"ID" : "254", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_exp_17_9_s_fu_568.exp_x_msb_2_m_1_table_V_U", "Parent" : "252"},
	{"ID" : "255", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_exp_17_9_s_fu_568.exp_x_msb_1_table_V_U", "Parent" : "252"},
	{"ID" : "256", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_exp_17_9_s_fu_568.mul_25ns_25ns_50_1_1_U328", "Parent" : "252"},
	{"ID" : "257", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.grp_C_Dense_2_fu_678.grp_exp_17_9_s_fu_568.mul_mul_25ns_18ns_43_4_1_U329", "Parent" : "252"},
	{"ID" : "258", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_C_CNN_fu_123.mac_muladd_4ns_8ns_8ns_11_4_1_U352", "Parent" : "135"},
	{"ID" : "259", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_s_axi_U", "Parent" : "0"},
	{"ID" : "260", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.control_r_s_axi_U", "Parent" : "0"},
	{"ID" : "261", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem0_m_axi_U", "Parent" : "0"},
	{"ID" : "262", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.gmem1_m_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	inference_top {
		gmem0 {Type I LastRead 35 FirstWrite -1}
		gmem1 {Type I LastRead 56 FirstWrite -1}
		input_r {Type I LastRead 0 FirstWrite -1}
		digit {Type O LastRead -1 FirstWrite 3}
		denoiser_w {Type I LastRead 0 FirstWrite -1}
		classifier_w {Type I LastRead 0 FirstWrite -1}
		f_x_lsb_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_2_m_1_table_V {Type I LastRead -1 FirstWrite -1}
		exp_x_msb_1_table_V {Type I LastRead -1 FirstWrite -1}}
	D_CNN {
		gmem0 {Type I LastRead 35 FirstWrite -1}
		InModel {Type I LastRead 0 FirstWrite -1}
		OutModel0 {Type O LastRead -1 FirstWrite 1}
		gmem1 {Type I LastRead 56 FirstWrite -1}
		Weights {Type I LastRead 2 FirstWrite -1}}
	D_CNN_Pipeline_loop_for_channel_pad_0 {
		OutPadConv0_V {Type O LastRead -1 FirstWrite 0}
		InModel {Type I LastRead 0 FirstWrite -1}
		gmem0 {Type I LastRead 35 FirstWrite -1}}
	D_CNN_Pipeline_VITIS_LOOP_19_1_loop_for_bp2D_0_loop_for_ap2D_0 {
		Weights {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 30 FirstWrite -1}
		OutPadConv0_V {Type I LastRead 6 FirstWrite -1}
		conv1_V {Type O LastRead -1 FirstWrite 31}}
	D_CNN_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_8_2_VITIS_LOOP_9_3 {
		conv1_V {Type I LastRead 4 FirstWrite -1}
		pool_V {Type O LastRead -1 FirstWrite 5}}
	D_CNN_Pipeline_loop_for_3_channel_pad_1_loop_for_channel_pad_1_loop_for_weight_p {
		OutPadConv1_V {Type O LastRead -1 FirstWrite 2}
		pool_V {Type I LastRead 1 FirstWrite -1}}
	D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1 {
		Weights {Type I LastRead 0 FirstWrite -1}
		gmem1 {Type I LastRead 56 FirstWrite -1}
		OutPadConv1_V {Type I LastRead 18 FirstWrite -1}
		conv2_V {Type O LastRead -1 FirstWrite 57}}
	D_CNN_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2_VITIS_LOOP_28_3 {
		conv2_V {Type I LastRead 3 FirstWrite -1}
		upsample_V {Type O LastRead -1 FirstWrite 4}}
	D_CNN_Pipeline_loop_for_3_channel_pad_2_loop_for_channel_pad_2_loop_for_weight_p {
		OutPadConv2_V {Type O LastRead -1 FirstWrite 3}
		upsample_V {Type I LastRead 2 FirstWrite -1}}
	D_CNN_Pipeline_loop_for_3_channel_pad_3_loop_for_channel_pad_3_loop_for_weight_p {
		OutPadConv3_V {Type O LastRead -1 FirstWrite 3}
		conv3_V {Type I LastRead 2 FirstWrite -1}}
	D_CNN_Pipeline_loop_for_fc_2_loop_for_fb_2_loop_for_fa_2 {
		gmem1 {Type I LastRead 3 FirstWrite -1}
		sext_ln100_mid2 {Type I LastRead 0 FirstWrite -1}
		select_ln95_2 {Type I LastRead 0 FirstWrite -1}
		zext_ln97 {Type I LastRead 0 FirstWrite -1}
		p_mid1483 {Type I LastRead 0 FirstWrite -1}
		OutPadConv2_V {Type I LastRead 3 FirstWrite -1}
		s_V_2_out {Type O LastRead -1 FirstWrite 6}}
	D_Conv2D_3 {
		Input_Conv {Type I LastRead 26 FirstWrite -1}
		Output_Conv {Type O LastRead -1 FirstWrite 98}
		gmem1 {Type I LastRead 51 FirstWrite -1}
		bias {Type I LastRead 0 FirstWrite -1}
		kernel {Type I LastRead 7 FirstWrite -1}}
	D_CNN_Pipeline_VITIS_LOOP_26_1 {
		conv4 {Type I LastRead 0 FirstWrite -1}
		OutModel0 {Type O LastRead -1 FirstWrite 1}}
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
	{"Name" : "Latency", "Min" : "646329", "Max" : "675513"}
	, {"Name" : "Interval", "Min" : "646330", "Max" : "675514"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	gmem0 { m_axi {  { m_axi_gmem0_AWVALID VALID 1 1 }  { m_axi_gmem0_AWREADY READY 0 1 }  { m_axi_gmem0_AWADDR ADDR 1 64 }  { m_axi_gmem0_AWID ID 1 1 }  { m_axi_gmem0_AWLEN SIZE 1 8 }  { m_axi_gmem0_AWSIZE BURST 1 3 }  { m_axi_gmem0_AWBURST LOCK 1 2 }  { m_axi_gmem0_AWLOCK CACHE 1 2 }  { m_axi_gmem0_AWCACHE PROT 1 4 }  { m_axi_gmem0_AWPROT QOS 1 3 }  { m_axi_gmem0_AWQOS REGION 1 4 }  { m_axi_gmem0_AWREGION USER 1 4 }  { m_axi_gmem0_AWUSER DATA 1 1 }  { m_axi_gmem0_WVALID VALID 1 1 }  { m_axi_gmem0_WREADY READY 0 1 }  { m_axi_gmem0_WDATA FIFONUM 1 32 }  { m_axi_gmem0_WSTRB STRB 1 4 }  { m_axi_gmem0_WLAST LAST 1 1 }  { m_axi_gmem0_WID ID 1 1 }  { m_axi_gmem0_WUSER DATA 1 1 }  { m_axi_gmem0_ARVALID VALID 1 1 }  { m_axi_gmem0_ARREADY READY 0 1 }  { m_axi_gmem0_ARADDR ADDR 1 64 }  { m_axi_gmem0_ARID ID 1 1 }  { m_axi_gmem0_ARLEN SIZE 1 8 }  { m_axi_gmem0_ARSIZE BURST 1 3 }  { m_axi_gmem0_ARBURST LOCK 1 2 }  { m_axi_gmem0_ARLOCK CACHE 1 2 }  { m_axi_gmem0_ARCACHE PROT 1 4 }  { m_axi_gmem0_ARPROT QOS 1 3 }  { m_axi_gmem0_ARQOS REGION 1 4 }  { m_axi_gmem0_ARREGION USER 1 4 }  { m_axi_gmem0_ARUSER DATA 1 1 }  { m_axi_gmem0_RVALID VALID 0 1 }  { m_axi_gmem0_RREADY READY 1 1 }  { m_axi_gmem0_RDATA FIFONUM 0 32 }  { m_axi_gmem0_RLAST LAST 0 1 }  { m_axi_gmem0_RID ID 0 1 }  { m_axi_gmem0_RUSER DATA 0 1 }  { m_axi_gmem0_RRESP RESP 0 2 }  { m_axi_gmem0_BVALID VALID 0 1 }  { m_axi_gmem0_BREADY READY 1 1 }  { m_axi_gmem0_BRESP RESP 0 2 }  { m_axi_gmem0_BID ID 0 1 }  { m_axi_gmem0_BUSER DATA 0 1 } } }
	gmem1 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 8 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 32 }  { m_axi_gmem1_WSTRB STRB 1 4 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 8 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 32 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
}

set maxi_interface_dict [dict create]
dict set maxi_interface_dict gmem0 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}
dict set maxi_interface_dict gmem1 {NUM_READ_OUTSTANDING 16 NUM_WRITE_OUTSTANDING 16 MAX_READ_BURST_LENGTH 16 MAX_WRITE_BURST_LENGTH 16 READ_WRITE_MODE READ_ONLY}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
	{ gmem0 1 }
	{ gmem1 1 }
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
	{ gmem0 1 }
	{ gmem1 1 }
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
