set moduleName send_data_burst_Pipeline_VITIS_LOOP_85_1
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
set C_modelName {send_data_burst_Pipeline_VITIS_LOOP_85_1}
set C_modelType { void 0 }
set C_modelArgList {
	{ data int 64 regular {axi_master 1}  }
	{ sext_ln85 int 61 regular  }
	{ reg_file_0_0 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_0_1 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_1_0 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_1_1 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_2_0 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_2_1 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_3_0 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_3_1 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_4_0 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_4_1 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_5_0 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_5_1 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_6_0 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_6_1 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_7_0 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_7_1 int 16 regular {array 2048 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data", "interface" : "axi_master", "bitwidth" : 64, "direction" : "WRITEONLY", "bitSlice":[ {"cElement": [{"cName": "data_in","offset": { "type": "dynamic","port_name": "data_in","bundle": "control"},"direction": "READONLY"},{"cName": "data_out","offset": { "type": "dynamic","port_name": "data_out","bundle": "control"},"direction": "WRITEONLY"}]}]} , 
 	{ "Name" : "sext_ln85", "interface" : "wire", "bitwidth" : 61, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_0_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_0_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_1_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_1_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_2_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_2_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_3_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_3_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_4_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_4_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_5_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_5_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_6_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_6_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_7_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_7_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 149
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ m_axi_data_AWVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_data_AWREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_data_AWADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_data_AWID sc_out sc_lv 1 signal 0 } 
	{ m_axi_data_AWLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_data_AWSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_data_AWBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_data_AWLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_data_AWCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_data_AWPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_data_AWQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_data_AWREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_data_AWUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_data_WVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_data_WREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_data_WDATA sc_out sc_lv 64 signal 0 } 
	{ m_axi_data_WSTRB sc_out sc_lv 8 signal 0 } 
	{ m_axi_data_WLAST sc_out sc_logic 1 signal 0 } 
	{ m_axi_data_WID sc_out sc_lv 1 signal 0 } 
	{ m_axi_data_WUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_data_ARVALID sc_out sc_logic 1 signal 0 } 
	{ m_axi_data_ARREADY sc_in sc_logic 1 signal 0 } 
	{ m_axi_data_ARADDR sc_out sc_lv 64 signal 0 } 
	{ m_axi_data_ARID sc_out sc_lv 1 signal 0 } 
	{ m_axi_data_ARLEN sc_out sc_lv 32 signal 0 } 
	{ m_axi_data_ARSIZE sc_out sc_lv 3 signal 0 } 
	{ m_axi_data_ARBURST sc_out sc_lv 2 signal 0 } 
	{ m_axi_data_ARLOCK sc_out sc_lv 2 signal 0 } 
	{ m_axi_data_ARCACHE sc_out sc_lv 4 signal 0 } 
	{ m_axi_data_ARPROT sc_out sc_lv 3 signal 0 } 
	{ m_axi_data_ARQOS sc_out sc_lv 4 signal 0 } 
	{ m_axi_data_ARREGION sc_out sc_lv 4 signal 0 } 
	{ m_axi_data_ARUSER sc_out sc_lv 1 signal 0 } 
	{ m_axi_data_RVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_data_RREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_data_RDATA sc_in sc_lv 64 signal 0 } 
	{ m_axi_data_RLAST sc_in sc_logic 1 signal 0 } 
	{ m_axi_data_RID sc_in sc_lv 1 signal 0 } 
	{ m_axi_data_RFIFONUM sc_in sc_lv 9 signal 0 } 
	{ m_axi_data_RUSER sc_in sc_lv 1 signal 0 } 
	{ m_axi_data_RRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_data_BVALID sc_in sc_logic 1 signal 0 } 
	{ m_axi_data_BREADY sc_out sc_logic 1 signal 0 } 
	{ m_axi_data_BRESP sc_in sc_lv 2 signal 0 } 
	{ m_axi_data_BID sc_in sc_lv 1 signal 0 } 
	{ m_axi_data_BUSER sc_in sc_lv 1 signal 0 } 
	{ sext_ln85 sc_in sc_lv 61 signal 1 } 
	{ reg_file_0_0_address0 sc_out sc_lv 11 signal 2 } 
	{ reg_file_0_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ reg_file_0_0_q0 sc_in sc_lv 16 signal 2 } 
	{ reg_file_0_0_address1 sc_out sc_lv 11 signal 2 } 
	{ reg_file_0_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ reg_file_0_0_q1 sc_in sc_lv 16 signal 2 } 
	{ reg_file_0_1_address0 sc_out sc_lv 11 signal 3 } 
	{ reg_file_0_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ reg_file_0_1_q0 sc_in sc_lv 16 signal 3 } 
	{ reg_file_0_1_address1 sc_out sc_lv 11 signal 3 } 
	{ reg_file_0_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ reg_file_0_1_q1 sc_in sc_lv 16 signal 3 } 
	{ reg_file_1_0_address0 sc_out sc_lv 11 signal 4 } 
	{ reg_file_1_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ reg_file_1_0_q0 sc_in sc_lv 16 signal 4 } 
	{ reg_file_1_0_address1 sc_out sc_lv 11 signal 4 } 
	{ reg_file_1_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ reg_file_1_0_q1 sc_in sc_lv 16 signal 4 } 
	{ reg_file_1_1_address0 sc_out sc_lv 11 signal 5 } 
	{ reg_file_1_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ reg_file_1_1_q0 sc_in sc_lv 16 signal 5 } 
	{ reg_file_1_1_address1 sc_out sc_lv 11 signal 5 } 
	{ reg_file_1_1_ce1 sc_out sc_logic 1 signal 5 } 
	{ reg_file_1_1_q1 sc_in sc_lv 16 signal 5 } 
	{ reg_file_2_0_address0 sc_out sc_lv 11 signal 6 } 
	{ reg_file_2_0_ce0 sc_out sc_logic 1 signal 6 } 
	{ reg_file_2_0_q0 sc_in sc_lv 16 signal 6 } 
	{ reg_file_2_0_address1 sc_out sc_lv 11 signal 6 } 
	{ reg_file_2_0_ce1 sc_out sc_logic 1 signal 6 } 
	{ reg_file_2_0_q1 sc_in sc_lv 16 signal 6 } 
	{ reg_file_2_1_address0 sc_out sc_lv 11 signal 7 } 
	{ reg_file_2_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ reg_file_2_1_q0 sc_in sc_lv 16 signal 7 } 
	{ reg_file_2_1_address1 sc_out sc_lv 11 signal 7 } 
	{ reg_file_2_1_ce1 sc_out sc_logic 1 signal 7 } 
	{ reg_file_2_1_q1 sc_in sc_lv 16 signal 7 } 
	{ reg_file_3_0_address0 sc_out sc_lv 11 signal 8 } 
	{ reg_file_3_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ reg_file_3_0_q0 sc_in sc_lv 16 signal 8 } 
	{ reg_file_3_0_address1 sc_out sc_lv 11 signal 8 } 
	{ reg_file_3_0_ce1 sc_out sc_logic 1 signal 8 } 
	{ reg_file_3_0_q1 sc_in sc_lv 16 signal 8 } 
	{ reg_file_3_1_address0 sc_out sc_lv 11 signal 9 } 
	{ reg_file_3_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ reg_file_3_1_q0 sc_in sc_lv 16 signal 9 } 
	{ reg_file_3_1_address1 sc_out sc_lv 11 signal 9 } 
	{ reg_file_3_1_ce1 sc_out sc_logic 1 signal 9 } 
	{ reg_file_3_1_q1 sc_in sc_lv 16 signal 9 } 
	{ reg_file_4_0_address0 sc_out sc_lv 11 signal 10 } 
	{ reg_file_4_0_ce0 sc_out sc_logic 1 signal 10 } 
	{ reg_file_4_0_q0 sc_in sc_lv 16 signal 10 } 
	{ reg_file_4_0_address1 sc_out sc_lv 11 signal 10 } 
	{ reg_file_4_0_ce1 sc_out sc_logic 1 signal 10 } 
	{ reg_file_4_0_q1 sc_in sc_lv 16 signal 10 } 
	{ reg_file_4_1_address0 sc_out sc_lv 11 signal 11 } 
	{ reg_file_4_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ reg_file_4_1_q0 sc_in sc_lv 16 signal 11 } 
	{ reg_file_4_1_address1 sc_out sc_lv 11 signal 11 } 
	{ reg_file_4_1_ce1 sc_out sc_logic 1 signal 11 } 
	{ reg_file_4_1_q1 sc_in sc_lv 16 signal 11 } 
	{ reg_file_5_0_address0 sc_out sc_lv 11 signal 12 } 
	{ reg_file_5_0_ce0 sc_out sc_logic 1 signal 12 } 
	{ reg_file_5_0_q0 sc_in sc_lv 16 signal 12 } 
	{ reg_file_5_0_address1 sc_out sc_lv 11 signal 12 } 
	{ reg_file_5_0_ce1 sc_out sc_logic 1 signal 12 } 
	{ reg_file_5_0_q1 sc_in sc_lv 16 signal 12 } 
	{ reg_file_5_1_address0 sc_out sc_lv 11 signal 13 } 
	{ reg_file_5_1_ce0 sc_out sc_logic 1 signal 13 } 
	{ reg_file_5_1_q0 sc_in sc_lv 16 signal 13 } 
	{ reg_file_5_1_address1 sc_out sc_lv 11 signal 13 } 
	{ reg_file_5_1_ce1 sc_out sc_logic 1 signal 13 } 
	{ reg_file_5_1_q1 sc_in sc_lv 16 signal 13 } 
	{ reg_file_6_0_address0 sc_out sc_lv 11 signal 14 } 
	{ reg_file_6_0_ce0 sc_out sc_logic 1 signal 14 } 
	{ reg_file_6_0_q0 sc_in sc_lv 16 signal 14 } 
	{ reg_file_6_0_address1 sc_out sc_lv 11 signal 14 } 
	{ reg_file_6_0_ce1 sc_out sc_logic 1 signal 14 } 
	{ reg_file_6_0_q1 sc_in sc_lv 16 signal 14 } 
	{ reg_file_6_1_address0 sc_out sc_lv 11 signal 15 } 
	{ reg_file_6_1_ce0 sc_out sc_logic 1 signal 15 } 
	{ reg_file_6_1_q0 sc_in sc_lv 16 signal 15 } 
	{ reg_file_6_1_address1 sc_out sc_lv 11 signal 15 } 
	{ reg_file_6_1_ce1 sc_out sc_logic 1 signal 15 } 
	{ reg_file_6_1_q1 sc_in sc_lv 16 signal 15 } 
	{ reg_file_7_0_address0 sc_out sc_lv 11 signal 16 } 
	{ reg_file_7_0_ce0 sc_out sc_logic 1 signal 16 } 
	{ reg_file_7_0_q0 sc_in sc_lv 16 signal 16 } 
	{ reg_file_7_0_address1 sc_out sc_lv 11 signal 16 } 
	{ reg_file_7_0_ce1 sc_out sc_logic 1 signal 16 } 
	{ reg_file_7_0_q1 sc_in sc_lv 16 signal 16 } 
	{ reg_file_7_1_address0 sc_out sc_lv 11 signal 17 } 
	{ reg_file_7_1_ce0 sc_out sc_logic 1 signal 17 } 
	{ reg_file_7_1_q0 sc_in sc_lv 16 signal 17 } 
	{ reg_file_7_1_address1 sc_out sc_lv 11 signal 17 } 
	{ reg_file_7_1_ce1 sc_out sc_logic 1 signal 17 } 
	{ reg_file_7_1_q1 sc_in sc_lv 16 signal 17 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "m_axi_data_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "AWVALID" }} , 
 	{ "name": "m_axi_data_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "AWREADY" }} , 
 	{ "name": "m_axi_data_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data", "role": "AWADDR" }} , 
 	{ "name": "m_axi_data_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "AWID" }} , 
 	{ "name": "m_axi_data_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data", "role": "AWLEN" }} , 
 	{ "name": "m_axi_data_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_data_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data", "role": "AWBURST" }} , 
 	{ "name": "m_axi_data_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_data_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_data_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data", "role": "AWPROT" }} , 
 	{ "name": "m_axi_data_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data", "role": "AWQOS" }} , 
 	{ "name": "m_axi_data_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data", "role": "AWREGION" }} , 
 	{ "name": "m_axi_data_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "AWUSER" }} , 
 	{ "name": "m_axi_data_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "WVALID" }} , 
 	{ "name": "m_axi_data_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "WREADY" }} , 
 	{ "name": "m_axi_data_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data", "role": "WDATA" }} , 
 	{ "name": "m_axi_data_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "data", "role": "WSTRB" }} , 
 	{ "name": "m_axi_data_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "WLAST" }} , 
 	{ "name": "m_axi_data_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "WID" }} , 
 	{ "name": "m_axi_data_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "WUSER" }} , 
 	{ "name": "m_axi_data_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ARVALID" }} , 
 	{ "name": "m_axi_data_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ARREADY" }} , 
 	{ "name": "m_axi_data_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data", "role": "ARADDR" }} , 
 	{ "name": "m_axi_data_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ARID" }} , 
 	{ "name": "m_axi_data_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "data", "role": "ARLEN" }} , 
 	{ "name": "m_axi_data_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_data_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data", "role": "ARBURST" }} , 
 	{ "name": "m_axi_data_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_data_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_data_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "data", "role": "ARPROT" }} , 
 	{ "name": "m_axi_data_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data", "role": "ARQOS" }} , 
 	{ "name": "m_axi_data_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "data", "role": "ARREGION" }} , 
 	{ "name": "m_axi_data_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "ARUSER" }} , 
 	{ "name": "m_axi_data_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "RVALID" }} , 
 	{ "name": "m_axi_data_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "RREADY" }} , 
 	{ "name": "m_axi_data_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data", "role": "RDATA" }} , 
 	{ "name": "m_axi_data_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "RLAST" }} , 
 	{ "name": "m_axi_data_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "RID" }} , 
 	{ "name": "m_axi_data_RFIFONUM", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "data", "role": "RFIFONUM" }} , 
 	{ "name": "m_axi_data_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "RUSER" }} , 
 	{ "name": "m_axi_data_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data", "role": "RRESP" }} , 
 	{ "name": "m_axi_data_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "BVALID" }} , 
 	{ "name": "m_axi_data_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "BREADY" }} , 
 	{ "name": "m_axi_data_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "data", "role": "BRESP" }} , 
 	{ "name": "m_axi_data_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "BID" }} , 
 	{ "name": "m_axi_data_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "data", "role": "BUSER" }} , 
 	{ "name": "sext_ln85", "direction": "in", "datatype": "sc_lv", "bitwidth":61, "type": "signal", "bundle":{"name": "sext_ln85", "role": "default" }} , 
 	{ "name": "reg_file_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_0_0", "role": "address0" }} , 
 	{ "name": "reg_file_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_0_0", "role": "ce0" }} , 
 	{ "name": "reg_file_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_0_0", "role": "q0" }} , 
 	{ "name": "reg_file_0_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_0_0", "role": "address1" }} , 
 	{ "name": "reg_file_0_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_0_0", "role": "ce1" }} , 
 	{ "name": "reg_file_0_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_0_0", "role": "q1" }} , 
 	{ "name": "reg_file_0_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_0_1", "role": "address0" }} , 
 	{ "name": "reg_file_0_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_0_1", "role": "ce0" }} , 
 	{ "name": "reg_file_0_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_0_1", "role": "q0" }} , 
 	{ "name": "reg_file_0_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_0_1", "role": "address1" }} , 
 	{ "name": "reg_file_0_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_0_1", "role": "ce1" }} , 
 	{ "name": "reg_file_0_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_0_1", "role": "q1" }} , 
 	{ "name": "reg_file_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_1_0", "role": "address0" }} , 
 	{ "name": "reg_file_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_1_0", "role": "ce0" }} , 
 	{ "name": "reg_file_1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_1_0", "role": "q0" }} , 
 	{ "name": "reg_file_1_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_1_0", "role": "address1" }} , 
 	{ "name": "reg_file_1_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_1_0", "role": "ce1" }} , 
 	{ "name": "reg_file_1_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_1_0", "role": "q1" }} , 
 	{ "name": "reg_file_1_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_1_1", "role": "address0" }} , 
 	{ "name": "reg_file_1_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_1_1", "role": "ce0" }} , 
 	{ "name": "reg_file_1_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_1_1", "role": "q0" }} , 
 	{ "name": "reg_file_1_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_1_1", "role": "address1" }} , 
 	{ "name": "reg_file_1_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_1_1", "role": "ce1" }} , 
 	{ "name": "reg_file_1_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_1_1", "role": "q1" }} , 
 	{ "name": "reg_file_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_2_0", "role": "address0" }} , 
 	{ "name": "reg_file_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_2_0", "role": "ce0" }} , 
 	{ "name": "reg_file_2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_2_0", "role": "q0" }} , 
 	{ "name": "reg_file_2_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_2_0", "role": "address1" }} , 
 	{ "name": "reg_file_2_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_2_0", "role": "ce1" }} , 
 	{ "name": "reg_file_2_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_2_0", "role": "q1" }} , 
 	{ "name": "reg_file_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_2_1", "role": "address0" }} , 
 	{ "name": "reg_file_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_2_1", "role": "ce0" }} , 
 	{ "name": "reg_file_2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_2_1", "role": "q0" }} , 
 	{ "name": "reg_file_2_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_2_1", "role": "address1" }} , 
 	{ "name": "reg_file_2_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_2_1", "role": "ce1" }} , 
 	{ "name": "reg_file_2_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_2_1", "role": "q1" }} , 
 	{ "name": "reg_file_3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "address0" }} , 
 	{ "name": "reg_file_3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "ce0" }} , 
 	{ "name": "reg_file_3_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "q0" }} , 
 	{ "name": "reg_file_3_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "address1" }} , 
 	{ "name": "reg_file_3_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "ce1" }} , 
 	{ "name": "reg_file_3_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "q1" }} , 
 	{ "name": "reg_file_3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "address0" }} , 
 	{ "name": "reg_file_3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "ce0" }} , 
 	{ "name": "reg_file_3_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "q0" }} , 
 	{ "name": "reg_file_3_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "address1" }} , 
 	{ "name": "reg_file_3_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "ce1" }} , 
 	{ "name": "reg_file_3_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "q1" }} , 
 	{ "name": "reg_file_4_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "address0" }} , 
 	{ "name": "reg_file_4_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "ce0" }} , 
 	{ "name": "reg_file_4_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "q0" }} , 
 	{ "name": "reg_file_4_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "address1" }} , 
 	{ "name": "reg_file_4_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "ce1" }} , 
 	{ "name": "reg_file_4_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "q1" }} , 
 	{ "name": "reg_file_4_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "address0" }} , 
 	{ "name": "reg_file_4_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "ce0" }} , 
 	{ "name": "reg_file_4_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "q0" }} , 
 	{ "name": "reg_file_4_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "address1" }} , 
 	{ "name": "reg_file_4_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "ce1" }} , 
 	{ "name": "reg_file_4_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "q1" }} , 
 	{ "name": "reg_file_5_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "address0" }} , 
 	{ "name": "reg_file_5_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "ce0" }} , 
 	{ "name": "reg_file_5_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "q0" }} , 
 	{ "name": "reg_file_5_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "address1" }} , 
 	{ "name": "reg_file_5_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "ce1" }} , 
 	{ "name": "reg_file_5_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "q1" }} , 
 	{ "name": "reg_file_5_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "address0" }} , 
 	{ "name": "reg_file_5_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "ce0" }} , 
 	{ "name": "reg_file_5_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "q0" }} , 
 	{ "name": "reg_file_5_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "address1" }} , 
 	{ "name": "reg_file_5_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "ce1" }} , 
 	{ "name": "reg_file_5_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "q1" }} , 
 	{ "name": "reg_file_6_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_6_0", "role": "address0" }} , 
 	{ "name": "reg_file_6_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_6_0", "role": "ce0" }} , 
 	{ "name": "reg_file_6_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_6_0", "role": "q0" }} , 
 	{ "name": "reg_file_6_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_6_0", "role": "address1" }} , 
 	{ "name": "reg_file_6_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_6_0", "role": "ce1" }} , 
 	{ "name": "reg_file_6_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_6_0", "role": "q1" }} , 
 	{ "name": "reg_file_6_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_6_1", "role": "address0" }} , 
 	{ "name": "reg_file_6_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_6_1", "role": "ce0" }} , 
 	{ "name": "reg_file_6_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_6_1", "role": "q0" }} , 
 	{ "name": "reg_file_6_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_6_1", "role": "address1" }} , 
 	{ "name": "reg_file_6_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_6_1", "role": "ce1" }} , 
 	{ "name": "reg_file_6_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_6_1", "role": "q1" }} , 
 	{ "name": "reg_file_7_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_7_0", "role": "address0" }} , 
 	{ "name": "reg_file_7_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_7_0", "role": "ce0" }} , 
 	{ "name": "reg_file_7_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_7_0", "role": "q0" }} , 
 	{ "name": "reg_file_7_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_7_0", "role": "address1" }} , 
 	{ "name": "reg_file_7_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_7_0", "role": "ce1" }} , 
 	{ "name": "reg_file_7_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_7_0", "role": "q1" }} , 
 	{ "name": "reg_file_7_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_7_1", "role": "address0" }} , 
 	{ "name": "reg_file_7_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_7_1", "role": "ce0" }} , 
 	{ "name": "reg_file_7_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_7_1", "role": "q0" }} , 
 	{ "name": "reg_file_7_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_7_1", "role": "address1" }} , 
 	{ "name": "reg_file_7_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_7_1", "role": "ce1" }} , 
 	{ "name": "reg_file_7_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_7_1", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
		"CDFG" : "send_data_burst_Pipeline_VITIS_LOOP_85_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8196", "EstimateLatencyMax" : "8196",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data", "Type" : "MAXI", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "data_blk_n_W", "Type" : "RtlSignal"}]},
			{"Name" : "sext_ln85", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_0_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_1_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_4_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_4_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_6_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_6_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_7_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_7_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_85_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U59", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U60", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U61", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U62", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U63", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U64", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U65", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U66", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_16_1_1_U67", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U68", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U69", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U70", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U71", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U72", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U73", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U74", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U75", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_16_1_1_U76", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U77", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U78", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U79", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U80", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U81", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U82", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U83", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U84", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_16_1_1_U85", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U86", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U87", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U88", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U89", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U90", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U91", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U92", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U93", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_16_1_1_U94", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	send_data_burst_Pipeline_VITIS_LOOP_85_1 {
		data {Type O LastRead -1 FirstWrite 4}
		sext_ln85 {Type I LastRead 0 FirstWrite -1}
		reg_file_0_0 {Type I LastRead 3 FirstWrite -1}
		reg_file_0_1 {Type I LastRead 3 FirstWrite -1}
		reg_file_1_0 {Type I LastRead 3 FirstWrite -1}
		reg_file_1_1 {Type I LastRead 3 FirstWrite -1}
		reg_file_2_0 {Type I LastRead 3 FirstWrite -1}
		reg_file_2_1 {Type I LastRead 3 FirstWrite -1}
		reg_file_3_0 {Type I LastRead 3 FirstWrite -1}
		reg_file_3_1 {Type I LastRead 3 FirstWrite -1}
		reg_file_4_0 {Type I LastRead 3 FirstWrite -1}
		reg_file_4_1 {Type I LastRead 3 FirstWrite -1}
		reg_file_5_0 {Type I LastRead 3 FirstWrite -1}
		reg_file_5_1 {Type I LastRead 3 FirstWrite -1}
		reg_file_6_0 {Type I LastRead 3 FirstWrite -1}
		reg_file_6_1 {Type I LastRead 3 FirstWrite -1}
		reg_file_7_0 {Type I LastRead 3 FirstWrite -1}
		reg_file_7_1 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8196", "Max" : "8196"}
	, {"Name" : "Interval", "Min" : "8196", "Max" : "8196"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	 { m_axi {  { m_axi_data_AWVALID VALID 1 1 }  { m_axi_data_AWREADY READY 0 1 }  { m_axi_data_AWADDR ADDR 1 64 }  { m_axi_data_AWID ID 1 1 }  { m_axi_data_AWLEN SIZE 1 32 }  { m_axi_data_AWSIZE BURST 1 3 }  { m_axi_data_AWBURST LOCK 1 2 }  { m_axi_data_AWLOCK CACHE 1 2 }  { m_axi_data_AWCACHE PROT 1 4 }  { m_axi_data_AWPROT QOS 1 3 }  { m_axi_data_AWQOS REGION 1 4 }  { m_axi_data_AWREGION USER 1 4 }  { m_axi_data_AWUSER DATA 1 1 }  { m_axi_data_WVALID VALID 1 1 }  { m_axi_data_WREADY READY 0 1 }  { m_axi_data_WDATA FIFONUM 1 64 }  { m_axi_data_WSTRB STRB 1 8 }  { m_axi_data_WLAST LAST 1 1 }  { m_axi_data_WID ID 1 1 }  { m_axi_data_WUSER DATA 1 1 }  { m_axi_data_ARVALID VALID 1 1 }  { m_axi_data_ARREADY READY 0 1 }  { m_axi_data_ARADDR ADDR 1 64 }  { m_axi_data_ARID ID 1 1 }  { m_axi_data_ARLEN SIZE 1 32 }  { m_axi_data_ARSIZE BURST 1 3 }  { m_axi_data_ARBURST LOCK 1 2 }  { m_axi_data_ARLOCK CACHE 1 2 }  { m_axi_data_ARCACHE PROT 1 4 }  { m_axi_data_ARPROT QOS 1 3 }  { m_axi_data_ARQOS REGION 1 4 }  { m_axi_data_ARREGION USER 1 4 }  { m_axi_data_ARUSER DATA 1 1 }  { m_axi_data_RVALID VALID 0 1 }  { m_axi_data_RREADY READY 1 1 }  { m_axi_data_RDATA FIFONUM 0 64 }  { m_axi_data_RLAST LAST 0 1 }  { m_axi_data_RID ID 0 1 }  { m_axi_data_RFIFONUM LEN 0 9 }  { m_axi_data_RUSER DATA 0 1 }  { m_axi_data_RRESP RESP 0 2 }  { m_axi_data_BVALID VALID 0 1 }  { m_axi_data_BREADY READY 1 1 }  { m_axi_data_BRESP RESP 0 2 }  { m_axi_data_BID ID 0 1 }  { m_axi_data_BUSER DATA 0 1 } } }
	sext_ln85 { ap_none {  { sext_ln85 in_data 0 61 } } }
	reg_file_0_0 { ap_memory {  { reg_file_0_0_address0 mem_address 1 11 }  { reg_file_0_0_ce0 mem_ce 1 1 }  { reg_file_0_0_q0 in_data 0 16 }  { reg_file_0_0_address1 MemPortADDR2 1 11 }  { reg_file_0_0_ce1 MemPortCE2 1 1 }  { reg_file_0_0_q1 in_data 0 16 } } }
	reg_file_0_1 { ap_memory {  { reg_file_0_1_address0 mem_address 1 11 }  { reg_file_0_1_ce0 mem_ce 1 1 }  { reg_file_0_1_q0 in_data 0 16 }  { reg_file_0_1_address1 MemPortADDR2 1 11 }  { reg_file_0_1_ce1 MemPortCE2 1 1 }  { reg_file_0_1_q1 in_data 0 16 } } }
	reg_file_1_0 { ap_memory {  { reg_file_1_0_address0 mem_address 1 11 }  { reg_file_1_0_ce0 mem_ce 1 1 }  { reg_file_1_0_q0 in_data 0 16 }  { reg_file_1_0_address1 MemPortADDR2 1 11 }  { reg_file_1_0_ce1 MemPortCE2 1 1 }  { reg_file_1_0_q1 in_data 0 16 } } }
	reg_file_1_1 { ap_memory {  { reg_file_1_1_address0 mem_address 1 11 }  { reg_file_1_1_ce0 mem_ce 1 1 }  { reg_file_1_1_q0 in_data 0 16 }  { reg_file_1_1_address1 MemPortADDR2 1 11 }  { reg_file_1_1_ce1 MemPortCE2 1 1 }  { reg_file_1_1_q1 in_data 0 16 } } }
	reg_file_2_0 { ap_memory {  { reg_file_2_0_address0 mem_address 1 11 }  { reg_file_2_0_ce0 mem_ce 1 1 }  { reg_file_2_0_q0 in_data 0 16 }  { reg_file_2_0_address1 MemPortADDR2 1 11 }  { reg_file_2_0_ce1 MemPortCE2 1 1 }  { reg_file_2_0_q1 in_data 0 16 } } }
	reg_file_2_1 { ap_memory {  { reg_file_2_1_address0 mem_address 1 11 }  { reg_file_2_1_ce0 mem_ce 1 1 }  { reg_file_2_1_q0 in_data 0 16 }  { reg_file_2_1_address1 MemPortADDR2 1 11 }  { reg_file_2_1_ce1 MemPortCE2 1 1 }  { reg_file_2_1_q1 in_data 0 16 } } }
	reg_file_3_0 { ap_memory {  { reg_file_3_0_address0 mem_address 1 11 }  { reg_file_3_0_ce0 mem_ce 1 1 }  { reg_file_3_0_q0 in_data 0 16 }  { reg_file_3_0_address1 MemPortADDR2 1 11 }  { reg_file_3_0_ce1 MemPortCE2 1 1 }  { reg_file_3_0_q1 in_data 0 16 } } }
	reg_file_3_1 { ap_memory {  { reg_file_3_1_address0 mem_address 1 11 }  { reg_file_3_1_ce0 mem_ce 1 1 }  { reg_file_3_1_q0 in_data 0 16 }  { reg_file_3_1_address1 MemPortADDR2 1 11 }  { reg_file_3_1_ce1 MemPortCE2 1 1 }  { reg_file_3_1_q1 in_data 0 16 } } }
	reg_file_4_0 { ap_memory {  { reg_file_4_0_address0 mem_address 1 11 }  { reg_file_4_0_ce0 mem_ce 1 1 }  { reg_file_4_0_q0 in_data 0 16 }  { reg_file_4_0_address1 MemPortADDR2 1 11 }  { reg_file_4_0_ce1 MemPortCE2 1 1 }  { reg_file_4_0_q1 in_data 0 16 } } }
	reg_file_4_1 { ap_memory {  { reg_file_4_1_address0 mem_address 1 11 }  { reg_file_4_1_ce0 mem_ce 1 1 }  { reg_file_4_1_q0 in_data 0 16 }  { reg_file_4_1_address1 MemPortADDR2 1 11 }  { reg_file_4_1_ce1 MemPortCE2 1 1 }  { reg_file_4_1_q1 in_data 0 16 } } }
	reg_file_5_0 { ap_memory {  { reg_file_5_0_address0 mem_address 1 11 }  { reg_file_5_0_ce0 mem_ce 1 1 }  { reg_file_5_0_q0 in_data 0 16 }  { reg_file_5_0_address1 MemPortADDR2 1 11 }  { reg_file_5_0_ce1 MemPortCE2 1 1 }  { reg_file_5_0_q1 in_data 0 16 } } }
	reg_file_5_1 { ap_memory {  { reg_file_5_1_address0 mem_address 1 11 }  { reg_file_5_1_ce0 mem_ce 1 1 }  { reg_file_5_1_q0 in_data 0 16 }  { reg_file_5_1_address1 MemPortADDR2 1 11 }  { reg_file_5_1_ce1 MemPortCE2 1 1 }  { reg_file_5_1_q1 in_data 0 16 } } }
	reg_file_6_0 { ap_memory {  { reg_file_6_0_address0 mem_address 1 11 }  { reg_file_6_0_ce0 mem_ce 1 1 }  { reg_file_6_0_q0 in_data 0 16 }  { reg_file_6_0_address1 MemPortADDR2 1 11 }  { reg_file_6_0_ce1 MemPortCE2 1 1 }  { reg_file_6_0_q1 in_data 0 16 } } }
	reg_file_6_1 { ap_memory {  { reg_file_6_1_address0 mem_address 1 11 }  { reg_file_6_1_ce0 mem_ce 1 1 }  { reg_file_6_1_q0 in_data 0 16 }  { reg_file_6_1_address1 MemPortADDR2 1 11 }  { reg_file_6_1_ce1 MemPortCE2 1 1 }  { reg_file_6_1_q1 in_data 0 16 } } }
	reg_file_7_0 { ap_memory {  { reg_file_7_0_address0 mem_address 1 11 }  { reg_file_7_0_ce0 mem_ce 1 1 }  { reg_file_7_0_q0 in_data 0 16 }  { reg_file_7_0_address1 MemPortADDR2 1 11 }  { reg_file_7_0_ce1 MemPortCE2 1 1 }  { reg_file_7_0_q1 in_data 0 16 } } }
	reg_file_7_1 { ap_memory {  { reg_file_7_1_address0 mem_address 1 11 }  { reg_file_7_1_ce0 mem_ce 1 1 }  { reg_file_7_1_q0 in_data 0 16 }  { reg_file_7_1_address1 MemPortADDR2 1 11 }  { reg_file_7_1_ce1 MemPortCE2 1 1 }  { reg_file_7_1_q1 in_data 0 16 } } }
}
