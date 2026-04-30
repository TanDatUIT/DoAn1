set moduleName C_CNN_Pipeline_loop_for_a_Dense_1
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
set C_modelName {C_CNN_Pipeline_loop_for_a_Dense_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ add_ln1273_74 int 64 regular  }
	{ gmem1 int 16 regular {axi_master 0}  }
	{ zext_ln818 int 15 regular  }
	{ zext_ln1347 int 15 regular  }
	{ zext_ln1347_15 int 15 regular  }
	{ zext_ln1347_16 int 15 regular  }
	{ zext_ln1347_17 int 15 regular  }
	{ zext_ln1347_18 int 15 regular  }
	{ zext_ln1347_19 int 15 regular  }
	{ zext_ln1347_20 int 15 regular  }
	{ zext_ln1347_21 int 15 regular  }
	{ zext_ln1347_22 int 15 regular  }
	{ zext_ln1347_23 int 15 regular  }
	{ zext_ln1347_24 int 15 regular  }
	{ zext_ln1347_25 int 15 regular  }
	{ zext_ln1347_26 int 15 regular  }
	{ zext_ln1347_27 int 15 regular  }
	{ zext_ln1347_28 int 15 regular  }
	{ zext_ln1347_29 int 15 regular  }
	{ zext_ln1347_30 int 15 regular  }
	{ zext_ln1347_31 int 15 regular  }
	{ zext_ln1347_32 int 15 regular  }
	{ zext_ln1347_33 int 15 regular  }
	{ zext_ln1347_34 int 15 regular  }
	{ zext_ln1347_35 int 15 regular  }
	{ zext_ln1347_36 int 15 regular  }
	{ zext_ln1347_37 int 15 regular  }
	{ zext_ln1347_38 int 15 regular  }
	{ zext_ln1347_39 int 15 regular  }
	{ zext_ln1347_40 int 15 regular  }
	{ zext_ln1347_41 int 15 regular  }
	{ zext_ln1347_42 int 15 regular  }
	{ zext_ln1347_43 int 15 regular  }
	{ zext_ln1347_44 int 15 regular  }
	{ sext_ln20 int 63 regular  }
	{ out_Dense_V int 16 regular {array 16 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "add_ln1273_74", "interface" : "wire", "bitwidth" : 64, "direction" : "READONLY"} , 
 	{ "Name" : "gmem1", "interface" : "axi_master", "bitwidth" : 16, "direction" : "READONLY", "bitSlice":[ {"cElement": [{"cName": "denoiser_w","offset": { "type": "dynamic","port_name": "denoiser_w","bundle": "control_r"},"direction": "READONLY"},{"cName": "classifier_w","offset": { "type": "dynamic","port_name": "classifier_w","bundle": "control_r"},"direction": "READONLY"}]}]} , 
 	{ "Name" : "zext_ln818", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_15", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_16", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_17", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_18", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_19", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_20", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_21", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_22", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_23", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_24", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_25", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_26", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_27", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_28", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_29", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_30", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_31", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_32", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_33", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_34", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_35", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_36", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_37", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_38", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_39", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_40", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_41", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_42", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_43", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "zext_ln1347_44", "interface" : "wire", "bitwidth" : 15, "direction" : "READONLY"} , 
 	{ "Name" : "sext_ln20", "interface" : "wire", "bitwidth" : 63, "direction" : "READONLY"} , 
 	{ "Name" : "out_Dense_V", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 90
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
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
	{ add_ln1273_74 sc_in sc_lv 64 signal 0 } 
	{ zext_ln818 sc_in sc_lv 15 signal 2 } 
	{ zext_ln1347 sc_in sc_lv 15 signal 3 } 
	{ zext_ln1347_15 sc_in sc_lv 15 signal 4 } 
	{ zext_ln1347_16 sc_in sc_lv 15 signal 5 } 
	{ zext_ln1347_17 sc_in sc_lv 15 signal 6 } 
	{ zext_ln1347_18 sc_in sc_lv 15 signal 7 } 
	{ zext_ln1347_19 sc_in sc_lv 15 signal 8 } 
	{ zext_ln1347_20 sc_in sc_lv 15 signal 9 } 
	{ zext_ln1347_21 sc_in sc_lv 15 signal 10 } 
	{ zext_ln1347_22 sc_in sc_lv 15 signal 11 } 
	{ zext_ln1347_23 sc_in sc_lv 15 signal 12 } 
	{ zext_ln1347_24 sc_in sc_lv 15 signal 13 } 
	{ zext_ln1347_25 sc_in sc_lv 15 signal 14 } 
	{ zext_ln1347_26 sc_in sc_lv 15 signal 15 } 
	{ zext_ln1347_27 sc_in sc_lv 15 signal 16 } 
	{ zext_ln1347_28 sc_in sc_lv 15 signal 17 } 
	{ zext_ln1347_29 sc_in sc_lv 15 signal 18 } 
	{ zext_ln1347_30 sc_in sc_lv 15 signal 19 } 
	{ zext_ln1347_31 sc_in sc_lv 15 signal 20 } 
	{ zext_ln1347_32 sc_in sc_lv 15 signal 21 } 
	{ zext_ln1347_33 sc_in sc_lv 15 signal 22 } 
	{ zext_ln1347_34 sc_in sc_lv 15 signal 23 } 
	{ zext_ln1347_35 sc_in sc_lv 15 signal 24 } 
	{ zext_ln1347_36 sc_in sc_lv 15 signal 25 } 
	{ zext_ln1347_37 sc_in sc_lv 15 signal 26 } 
	{ zext_ln1347_38 sc_in sc_lv 15 signal 27 } 
	{ zext_ln1347_39 sc_in sc_lv 15 signal 28 } 
	{ zext_ln1347_40 sc_in sc_lv 15 signal 29 } 
	{ zext_ln1347_41 sc_in sc_lv 15 signal 30 } 
	{ zext_ln1347_42 sc_in sc_lv 15 signal 31 } 
	{ zext_ln1347_43 sc_in sc_lv 15 signal 32 } 
	{ zext_ln1347_44 sc_in sc_lv 15 signal 33 } 
	{ sext_ln20 sc_in sc_lv 63 signal 34 } 
	{ out_Dense_V_address0 sc_out sc_lv 4 signal 35 } 
	{ out_Dense_V_ce0 sc_out sc_logic 1 signal 35 } 
	{ out_Dense_V_we0 sc_out sc_logic 1 signal 35 } 
	{ out_Dense_V_d0 sc_out sc_lv 16 signal 35 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
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
 	{ "name": "add_ln1273_74", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "add_ln1273_74", "role": "default" }} , 
 	{ "name": "zext_ln818", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln818", "role": "default" }} , 
 	{ "name": "zext_ln1347", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347", "role": "default" }} , 
 	{ "name": "zext_ln1347_15", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_15", "role": "default" }} , 
 	{ "name": "zext_ln1347_16", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_16", "role": "default" }} , 
 	{ "name": "zext_ln1347_17", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_17", "role": "default" }} , 
 	{ "name": "zext_ln1347_18", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_18", "role": "default" }} , 
 	{ "name": "zext_ln1347_19", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_19", "role": "default" }} , 
 	{ "name": "zext_ln1347_20", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_20", "role": "default" }} , 
 	{ "name": "zext_ln1347_21", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_21", "role": "default" }} , 
 	{ "name": "zext_ln1347_22", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_22", "role": "default" }} , 
 	{ "name": "zext_ln1347_23", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_23", "role": "default" }} , 
 	{ "name": "zext_ln1347_24", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_24", "role": "default" }} , 
 	{ "name": "zext_ln1347_25", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_25", "role": "default" }} , 
 	{ "name": "zext_ln1347_26", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_26", "role": "default" }} , 
 	{ "name": "zext_ln1347_27", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_27", "role": "default" }} , 
 	{ "name": "zext_ln1347_28", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_28", "role": "default" }} , 
 	{ "name": "zext_ln1347_29", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_29", "role": "default" }} , 
 	{ "name": "zext_ln1347_30", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_30", "role": "default" }} , 
 	{ "name": "zext_ln1347_31", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_31", "role": "default" }} , 
 	{ "name": "zext_ln1347_32", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_32", "role": "default" }} , 
 	{ "name": "zext_ln1347_33", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_33", "role": "default" }} , 
 	{ "name": "zext_ln1347_34", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_34", "role": "default" }} , 
 	{ "name": "zext_ln1347_35", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_35", "role": "default" }} , 
 	{ "name": "zext_ln1347_36", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_36", "role": "default" }} , 
 	{ "name": "zext_ln1347_37", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_37", "role": "default" }} , 
 	{ "name": "zext_ln1347_38", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_38", "role": "default" }} , 
 	{ "name": "zext_ln1347_39", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_39", "role": "default" }} , 
 	{ "name": "zext_ln1347_40", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_40", "role": "default" }} , 
 	{ "name": "zext_ln1347_41", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_41", "role": "default" }} , 
 	{ "name": "zext_ln1347_42", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_42", "role": "default" }} , 
 	{ "name": "zext_ln1347_43", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_43", "role": "default" }} , 
 	{ "name": "zext_ln1347_44", "direction": "in", "datatype": "sc_lv", "bitwidth":15, "type": "signal", "bundle":{"name": "zext_ln1347_44", "role": "default" }} , 
 	{ "name": "sext_ln20", "direction": "in", "datatype": "sc_lv", "bitwidth":63, "type": "signal", "bundle":{"name": "sext_ln20", "role": "default" }} , 
 	{ "name": "out_Dense_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_Dense_V", "role": "address0" }} , 
 	{ "name": "out_Dense_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_Dense_V", "role": "ce0" }} , 
 	{ "name": "out_Dense_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_Dense_V", "role": "we0" }} , 
 	{ "name": "out_Dense_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "out_Dense_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_16s_15ns_24_4_1_U217", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U218", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U219", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U220", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U221", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U222", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U223", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U224", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U225", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U226", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U227", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U228", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U229", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U230", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U231", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U232", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U233", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U234", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U235", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U236", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U237", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U238", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U239", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U240", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U241", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U242", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U243", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U244", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U245", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U246", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U247", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_16s_15ns_24ns_24_4_1_U248", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
		out_Dense_V {Type O LastRead -1 FirstWrite 44}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "541", "Max" : "541"}
	, {"Name" : "Interval", "Min" : "541", "Max" : "541"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	add_ln1273_74 { ap_none {  { add_ln1273_74 in_data 0 64 } } }
	 { m_axi {  { m_axi_gmem1_AWVALID VALID 1 1 }  { m_axi_gmem1_AWREADY READY 0 1 }  { m_axi_gmem1_AWADDR ADDR 1 64 }  { m_axi_gmem1_AWID ID 1 1 }  { m_axi_gmem1_AWLEN SIZE 1 32 }  { m_axi_gmem1_AWSIZE BURST 1 3 }  { m_axi_gmem1_AWBURST LOCK 1 2 }  { m_axi_gmem1_AWLOCK CACHE 1 2 }  { m_axi_gmem1_AWCACHE PROT 1 4 }  { m_axi_gmem1_AWPROT QOS 1 3 }  { m_axi_gmem1_AWQOS REGION 1 4 }  { m_axi_gmem1_AWREGION USER 1 4 }  { m_axi_gmem1_AWUSER DATA 1 1 }  { m_axi_gmem1_WVALID VALID 1 1 }  { m_axi_gmem1_WREADY READY 0 1 }  { m_axi_gmem1_WDATA FIFONUM 1 16 }  { m_axi_gmem1_WSTRB STRB 1 2 }  { m_axi_gmem1_WLAST LAST 1 1 }  { m_axi_gmem1_WID ID 1 1 }  { m_axi_gmem1_WUSER DATA 1 1 }  { m_axi_gmem1_ARVALID VALID 1 1 }  { m_axi_gmem1_ARREADY READY 0 1 }  { m_axi_gmem1_ARADDR ADDR 1 64 }  { m_axi_gmem1_ARID ID 1 1 }  { m_axi_gmem1_ARLEN SIZE 1 32 }  { m_axi_gmem1_ARSIZE BURST 1 3 }  { m_axi_gmem1_ARBURST LOCK 1 2 }  { m_axi_gmem1_ARLOCK CACHE 1 2 }  { m_axi_gmem1_ARCACHE PROT 1 4 }  { m_axi_gmem1_ARPROT QOS 1 3 }  { m_axi_gmem1_ARQOS REGION 1 4 }  { m_axi_gmem1_ARREGION USER 1 4 }  { m_axi_gmem1_ARUSER DATA 1 1 }  { m_axi_gmem1_RVALID VALID 0 1 }  { m_axi_gmem1_RREADY READY 1 1 }  { m_axi_gmem1_RDATA FIFONUM 0 16 }  { m_axi_gmem1_RLAST LAST 0 1 }  { m_axi_gmem1_RID ID 0 1 }  { m_axi_gmem1_RFIFONUM LEN 0 10 }  { m_axi_gmem1_RUSER DATA 0 1 }  { m_axi_gmem1_RRESP RESP 0 2 }  { m_axi_gmem1_BVALID VALID 0 1 }  { m_axi_gmem1_BREADY READY 1 1 }  { m_axi_gmem1_BRESP RESP 0 2 }  { m_axi_gmem1_BID ID 0 1 }  { m_axi_gmem1_BUSER DATA 0 1 } } }
	zext_ln818 { ap_none {  { zext_ln818 in_data 0 15 } } }
	zext_ln1347 { ap_none {  { zext_ln1347 in_data 0 15 } } }
	zext_ln1347_15 { ap_none {  { zext_ln1347_15 in_data 0 15 } } }
	zext_ln1347_16 { ap_none {  { zext_ln1347_16 in_data 0 15 } } }
	zext_ln1347_17 { ap_none {  { zext_ln1347_17 in_data 0 15 } } }
	zext_ln1347_18 { ap_none {  { zext_ln1347_18 in_data 0 15 } } }
	zext_ln1347_19 { ap_none {  { zext_ln1347_19 in_data 0 15 } } }
	zext_ln1347_20 { ap_none {  { zext_ln1347_20 in_data 0 15 } } }
	zext_ln1347_21 { ap_none {  { zext_ln1347_21 in_data 0 15 } } }
	zext_ln1347_22 { ap_none {  { zext_ln1347_22 in_data 0 15 } } }
	zext_ln1347_23 { ap_none {  { zext_ln1347_23 in_data 0 15 } } }
	zext_ln1347_24 { ap_none {  { zext_ln1347_24 in_data 0 15 } } }
	zext_ln1347_25 { ap_none {  { zext_ln1347_25 in_data 0 15 } } }
	zext_ln1347_26 { ap_none {  { zext_ln1347_26 in_data 0 15 } } }
	zext_ln1347_27 { ap_none {  { zext_ln1347_27 in_data 0 15 } } }
	zext_ln1347_28 { ap_none {  { zext_ln1347_28 in_data 0 15 } } }
	zext_ln1347_29 { ap_none {  { zext_ln1347_29 in_data 0 15 } } }
	zext_ln1347_30 { ap_none {  { zext_ln1347_30 in_data 0 15 } } }
	zext_ln1347_31 { ap_none {  { zext_ln1347_31 in_data 0 15 } } }
	zext_ln1347_32 { ap_none {  { zext_ln1347_32 in_data 0 15 } } }
	zext_ln1347_33 { ap_none {  { zext_ln1347_33 in_data 0 15 } } }
	zext_ln1347_34 { ap_none {  { zext_ln1347_34 in_data 0 15 } } }
	zext_ln1347_35 { ap_none {  { zext_ln1347_35 in_data 0 15 } } }
	zext_ln1347_36 { ap_none {  { zext_ln1347_36 in_data 0 15 } } }
	zext_ln1347_37 { ap_none {  { zext_ln1347_37 in_data 0 15 } } }
	zext_ln1347_38 { ap_none {  { zext_ln1347_38 in_data 0 15 } } }
	zext_ln1347_39 { ap_none {  { zext_ln1347_39 in_data 0 15 } } }
	zext_ln1347_40 { ap_none {  { zext_ln1347_40 in_data 0 15 } } }
	zext_ln1347_41 { ap_none {  { zext_ln1347_41 in_data 0 15 } } }
	zext_ln1347_42 { ap_none {  { zext_ln1347_42 in_data 0 15 } } }
	zext_ln1347_43 { ap_none {  { zext_ln1347_43 in_data 0 15 } } }
	zext_ln1347_44 { ap_none {  { zext_ln1347_44 in_data 0 15 } } }
	sext_ln20 { ap_none {  { sext_ln20 in_data 0 63 } } }
	out_Dense_V { ap_memory {  { out_Dense_V_address0 mem_address 1 4 }  { out_Dense_V_ce0 mem_ce 1 1 }  { out_Dense_V_we0 mem_we 1 1 }  { out_Dense_V_d0 mem_din 1 16 } } }
}
