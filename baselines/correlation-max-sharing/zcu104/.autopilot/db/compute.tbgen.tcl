set moduleName compute
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
set C_modelName {compute}
set C_modelType { void 0 }
set C_modelArgList {
	{ reg_file_0_0 int 16 regular {array 2048 { 1 3 } 1 1 }  }
	{ reg_file_1_0 int 16 regular {array 2048 { 1 3 } 1 1 }  }
	{ reg_file_2_0 int 16 regular {array 2048 { 2 1 } 1 1 }  }
	{ reg_file_2_1 int 16 regular {array 2048 { 2 1 } 1 1 }  }
	{ reg_file_3_0 int 16 regular {array 2048 { 0 1 } 1 1 }  }
	{ reg_file_3_1 int 16 regular {array 2048 { 0 1 } 1 1 }  }
	{ reg_file_4_0 int 16 regular {array 2048 { 2 1 } 1 1 }  }
	{ reg_file_4_1 int 16 regular {array 2048 { 2 1 } 1 1 }  }
	{ reg_file_5_0 int 16 regular {array 2048 { 2 1 } 1 1 }  }
	{ reg_file_5_1 int 16 regular {array 2048 { 2 1 } 1 1 }  }
	{ reg_file_6_0 int 16 regular {array 2048 { 2 3 } 1 1 }  }
	{ reg_file_6_1 int 16 regular {array 2048 { 2 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "reg_file_0_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_1_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_2_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "reg_file_2_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "reg_file_3_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "reg_file_3_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "reg_file_4_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "reg_file_4_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "reg_file_5_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "reg_file_5_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "reg_file_6_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "reg_file_6_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 84
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ reg_file_0_0_address0 sc_out sc_lv 11 signal 0 } 
	{ reg_file_0_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ reg_file_0_0_q0 sc_in sc_lv 16 signal 0 } 
	{ reg_file_1_0_address0 sc_out sc_lv 11 signal 1 } 
	{ reg_file_1_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ reg_file_1_0_q0 sc_in sc_lv 16 signal 1 } 
	{ reg_file_2_0_address0 sc_out sc_lv 11 signal 2 } 
	{ reg_file_2_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ reg_file_2_0_we0 sc_out sc_logic 1 signal 2 } 
	{ reg_file_2_0_d0 sc_out sc_lv 16 signal 2 } 
	{ reg_file_2_0_q0 sc_in sc_lv 16 signal 2 } 
	{ reg_file_2_0_address1 sc_out sc_lv 11 signal 2 } 
	{ reg_file_2_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ reg_file_2_0_q1 sc_in sc_lv 16 signal 2 } 
	{ reg_file_2_1_address0 sc_out sc_lv 11 signal 3 } 
	{ reg_file_2_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ reg_file_2_1_we0 sc_out sc_logic 1 signal 3 } 
	{ reg_file_2_1_d0 sc_out sc_lv 16 signal 3 } 
	{ reg_file_2_1_q0 sc_in sc_lv 16 signal 3 } 
	{ reg_file_2_1_address1 sc_out sc_lv 11 signal 3 } 
	{ reg_file_2_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ reg_file_2_1_q1 sc_in sc_lv 16 signal 3 } 
	{ reg_file_3_0_address0 sc_out sc_lv 11 signal 4 } 
	{ reg_file_3_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ reg_file_3_0_we0 sc_out sc_logic 1 signal 4 } 
	{ reg_file_3_0_d0 sc_out sc_lv 16 signal 4 } 
	{ reg_file_3_0_address1 sc_out sc_lv 11 signal 4 } 
	{ reg_file_3_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ reg_file_3_0_q1 sc_in sc_lv 16 signal 4 } 
	{ reg_file_3_1_address0 sc_out sc_lv 11 signal 5 } 
	{ reg_file_3_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ reg_file_3_1_we0 sc_out sc_logic 1 signal 5 } 
	{ reg_file_3_1_d0 sc_out sc_lv 16 signal 5 } 
	{ reg_file_3_1_address1 sc_out sc_lv 11 signal 5 } 
	{ reg_file_3_1_ce1 sc_out sc_logic 1 signal 5 } 
	{ reg_file_3_1_q1 sc_in sc_lv 16 signal 5 } 
	{ reg_file_4_0_address0 sc_out sc_lv 11 signal 6 } 
	{ reg_file_4_0_ce0 sc_out sc_logic 1 signal 6 } 
	{ reg_file_4_0_we0 sc_out sc_logic 1 signal 6 } 
	{ reg_file_4_0_d0 sc_out sc_lv 16 signal 6 } 
	{ reg_file_4_0_q0 sc_in sc_lv 16 signal 6 } 
	{ reg_file_4_0_address1 sc_out sc_lv 11 signal 6 } 
	{ reg_file_4_0_ce1 sc_out sc_logic 1 signal 6 } 
	{ reg_file_4_0_q1 sc_in sc_lv 16 signal 6 } 
	{ reg_file_4_1_address0 sc_out sc_lv 11 signal 7 } 
	{ reg_file_4_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ reg_file_4_1_we0 sc_out sc_logic 1 signal 7 } 
	{ reg_file_4_1_d0 sc_out sc_lv 16 signal 7 } 
	{ reg_file_4_1_q0 sc_in sc_lv 16 signal 7 } 
	{ reg_file_4_1_address1 sc_out sc_lv 11 signal 7 } 
	{ reg_file_4_1_ce1 sc_out sc_logic 1 signal 7 } 
	{ reg_file_4_1_q1 sc_in sc_lv 16 signal 7 } 
	{ reg_file_5_0_address0 sc_out sc_lv 11 signal 8 } 
	{ reg_file_5_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ reg_file_5_0_we0 sc_out sc_logic 1 signal 8 } 
	{ reg_file_5_0_d0 sc_out sc_lv 16 signal 8 } 
	{ reg_file_5_0_q0 sc_in sc_lv 16 signal 8 } 
	{ reg_file_5_0_address1 sc_out sc_lv 11 signal 8 } 
	{ reg_file_5_0_ce1 sc_out sc_logic 1 signal 8 } 
	{ reg_file_5_0_q1 sc_in sc_lv 16 signal 8 } 
	{ reg_file_5_1_address0 sc_out sc_lv 11 signal 9 } 
	{ reg_file_5_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ reg_file_5_1_we0 sc_out sc_logic 1 signal 9 } 
	{ reg_file_5_1_d0 sc_out sc_lv 16 signal 9 } 
	{ reg_file_5_1_q0 sc_in sc_lv 16 signal 9 } 
	{ reg_file_5_1_address1 sc_out sc_lv 11 signal 9 } 
	{ reg_file_5_1_ce1 sc_out sc_logic 1 signal 9 } 
	{ reg_file_5_1_q1 sc_in sc_lv 16 signal 9 } 
	{ reg_file_6_0_address0 sc_out sc_lv 11 signal 10 } 
	{ reg_file_6_0_ce0 sc_out sc_logic 1 signal 10 } 
	{ reg_file_6_0_we0 sc_out sc_logic 1 signal 10 } 
	{ reg_file_6_0_d0 sc_out sc_lv 16 signal 10 } 
	{ reg_file_6_0_q0 sc_in sc_lv 16 signal 10 } 
	{ reg_file_6_1_address0 sc_out sc_lv 11 signal 11 } 
	{ reg_file_6_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ reg_file_6_1_we0 sc_out sc_logic 1 signal 11 } 
	{ reg_file_6_1_d0 sc_out sc_lv 16 signal 11 } 
	{ reg_file_6_1_q0 sc_in sc_lv 16 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "reg_file_0_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_0_0", "role": "address0" }} , 
 	{ "name": "reg_file_0_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_0_0", "role": "ce0" }} , 
 	{ "name": "reg_file_0_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_0_0", "role": "q0" }} , 
 	{ "name": "reg_file_1_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_1_0", "role": "address0" }} , 
 	{ "name": "reg_file_1_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_1_0", "role": "ce0" }} , 
 	{ "name": "reg_file_1_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_1_0", "role": "q0" }} , 
 	{ "name": "reg_file_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_2_0", "role": "address0" }} , 
 	{ "name": "reg_file_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_2_0", "role": "ce0" }} , 
 	{ "name": "reg_file_2_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_2_0", "role": "we0" }} , 
 	{ "name": "reg_file_2_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_2_0", "role": "d0" }} , 
 	{ "name": "reg_file_2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_2_0", "role": "q0" }} , 
 	{ "name": "reg_file_2_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_2_0", "role": "address1" }} , 
 	{ "name": "reg_file_2_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_2_0", "role": "ce1" }} , 
 	{ "name": "reg_file_2_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_2_0", "role": "q1" }} , 
 	{ "name": "reg_file_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_2_1", "role": "address0" }} , 
 	{ "name": "reg_file_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_2_1", "role": "ce0" }} , 
 	{ "name": "reg_file_2_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_2_1", "role": "we0" }} , 
 	{ "name": "reg_file_2_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_2_1", "role": "d0" }} , 
 	{ "name": "reg_file_2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_2_1", "role": "q0" }} , 
 	{ "name": "reg_file_2_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_2_1", "role": "address1" }} , 
 	{ "name": "reg_file_2_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_2_1", "role": "ce1" }} , 
 	{ "name": "reg_file_2_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_2_1", "role": "q1" }} , 
 	{ "name": "reg_file_3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "address0" }} , 
 	{ "name": "reg_file_3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "ce0" }} , 
 	{ "name": "reg_file_3_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "we0" }} , 
 	{ "name": "reg_file_3_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "d0" }} , 
 	{ "name": "reg_file_3_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "address1" }} , 
 	{ "name": "reg_file_3_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "ce1" }} , 
 	{ "name": "reg_file_3_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "q1" }} , 
 	{ "name": "reg_file_3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "address0" }} , 
 	{ "name": "reg_file_3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "ce0" }} , 
 	{ "name": "reg_file_3_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "we0" }} , 
 	{ "name": "reg_file_3_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "d0" }} , 
 	{ "name": "reg_file_3_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "address1" }} , 
 	{ "name": "reg_file_3_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "ce1" }} , 
 	{ "name": "reg_file_3_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "q1" }} , 
 	{ "name": "reg_file_4_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "address0" }} , 
 	{ "name": "reg_file_4_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "ce0" }} , 
 	{ "name": "reg_file_4_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "we0" }} , 
 	{ "name": "reg_file_4_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "d0" }} , 
 	{ "name": "reg_file_4_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "q0" }} , 
 	{ "name": "reg_file_4_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "address1" }} , 
 	{ "name": "reg_file_4_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "ce1" }} , 
 	{ "name": "reg_file_4_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "q1" }} , 
 	{ "name": "reg_file_4_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "address0" }} , 
 	{ "name": "reg_file_4_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "ce0" }} , 
 	{ "name": "reg_file_4_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "we0" }} , 
 	{ "name": "reg_file_4_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "d0" }} , 
 	{ "name": "reg_file_4_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "q0" }} , 
 	{ "name": "reg_file_4_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "address1" }} , 
 	{ "name": "reg_file_4_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "ce1" }} , 
 	{ "name": "reg_file_4_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "q1" }} , 
 	{ "name": "reg_file_5_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "address0" }} , 
 	{ "name": "reg_file_5_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "ce0" }} , 
 	{ "name": "reg_file_5_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "we0" }} , 
 	{ "name": "reg_file_5_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "d0" }} , 
 	{ "name": "reg_file_5_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "q0" }} , 
 	{ "name": "reg_file_5_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "address1" }} , 
 	{ "name": "reg_file_5_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "ce1" }} , 
 	{ "name": "reg_file_5_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "q1" }} , 
 	{ "name": "reg_file_5_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "address0" }} , 
 	{ "name": "reg_file_5_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "ce0" }} , 
 	{ "name": "reg_file_5_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "we0" }} , 
 	{ "name": "reg_file_5_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "d0" }} , 
 	{ "name": "reg_file_5_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "q0" }} , 
 	{ "name": "reg_file_5_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "address1" }} , 
 	{ "name": "reg_file_5_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "ce1" }} , 
 	{ "name": "reg_file_5_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "q1" }} , 
 	{ "name": "reg_file_6_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_6_0", "role": "address0" }} , 
 	{ "name": "reg_file_6_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_6_0", "role": "ce0" }} , 
 	{ "name": "reg_file_6_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_6_0", "role": "we0" }} , 
 	{ "name": "reg_file_6_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_6_0", "role": "d0" }} , 
 	{ "name": "reg_file_6_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_6_0", "role": "q0" }} , 
 	{ "name": "reg_file_6_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_6_1", "role": "address0" }} , 
 	{ "name": "reg_file_6_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_6_1", "role": "ce0" }} , 
 	{ "name": "reg_file_6_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_6_1", "role": "we0" }} , 
 	{ "name": "reg_file_6_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_6_1", "role": "d0" }} , 
 	{ "name": "reg_file_6_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_6_1", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "7", "11", "14", "18", "21", "25", "28", "32", "37", "40", "44", "47", "52", "54", "55", "56"],
		"CDFG" : "compute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "291221", "EstimateLatencyMax" : "291221",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reg_file_0_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_1_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_2_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_142_2_VITIS_LOOP_143_3_fu_118", "Port" : "reg_file_2_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "14", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_170_6_VITIS_LOOP_171_7_fu_140", "Port" : "reg_file_2_0", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "18", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_182_8_VITIS_LOOP_183_9_fu_152", "Port" : "reg_file_2_0", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "40", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_243_16_VITIS_LOOP_244_17_fu_215", "Port" : "reg_file_2_0", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "44", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_265_20_VITIS_LOOP_266_21_fu_227", "Port" : "reg_file_2_0", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "47", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_274_22_VITIS_LOOP_275_23_VITIS_LOOP_276_24_fu_239", "Port" : "reg_file_2_0", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_142_2_VITIS_LOOP_143_3_fu_118", "Port" : "reg_file_2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "14", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_170_6_VITIS_LOOP_171_7_fu_140", "Port" : "reg_file_2_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "18", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_182_8_VITIS_LOOP_183_9_fu_152", "Port" : "reg_file_2_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "40", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_243_16_VITIS_LOOP_244_17_fu_215", "Port" : "reg_file_2_1", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "44", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_265_20_VITIS_LOOP_266_21_fu_227", "Port" : "reg_file_2_1", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "47", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_274_22_VITIS_LOOP_275_23_VITIS_LOOP_276_24_fu_239", "Port" : "reg_file_2_1", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "reg_file_3_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_255_18_VITIS_LOOP_256_19_fu_110", "Port" : "reg_file_3_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "47", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_274_22_VITIS_LOOP_275_23_VITIS_LOOP_276_24_fu_239", "Port" : "reg_file_3_0", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "52", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_292_25_fu_255", "Port" : "reg_file_3_0", "Inst_start_state" : "27", "Inst_end_state" : "28"}]},
			{"Name" : "reg_file_3_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_255_18_VITIS_LOOP_256_19_fu_110", "Port" : "reg_file_3_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "47", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_274_22_VITIS_LOOP_275_23_VITIS_LOOP_276_24_fu_239", "Port" : "reg_file_3_1", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "52", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_292_25_fu_255", "Port" : "reg_file_3_1", "Inst_start_state" : "27", "Inst_end_state" : "28"}]},
			{"Name" : "reg_file_4_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_142_2_VITIS_LOOP_143_3_fu_118", "Port" : "reg_file_4_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "14", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_170_6_VITIS_LOOP_171_7_fu_140", "Port" : "reg_file_4_0", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "11", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_154_4_fu_130", "Port" : "reg_file_4_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "1", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_134_1_fu_94", "Port" : "reg_file_4_0", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "reg_file_4_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_142_2_VITIS_LOOP_143_3_fu_118", "Port" : "reg_file_4_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "14", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_170_6_VITIS_LOOP_171_7_fu_140", "Port" : "reg_file_4_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "11", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_154_4_fu_130", "Port" : "reg_file_4_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "1", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_134_1_fu_94", "Port" : "reg_file_4_1", "Inst_start_state" : "1", "Inst_end_state" : "2"}]},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_162_5_fu_102", "Port" : "reg_file_5_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "25", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_204_12_fu_176", "Port" : "reg_file_5_0", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "28", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_215_13_fu_185", "Port" : "reg_file_5_0", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "32", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_227_14_fu_193", "Port" : "reg_file_5_0", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "37", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_235_15_fu_201", "Port" : "reg_file_5_0", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "21", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_193_10_VITIS_LOOP_194_11_fu_164", "Port" : "reg_file_5_0", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_162_5_fu_102", "Port" : "reg_file_5_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "25", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_204_12_fu_176", "Port" : "reg_file_5_1", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "28", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_215_13_fu_185", "Port" : "reg_file_5_1", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "32", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_227_14_fu_193", "Port" : "reg_file_5_1", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "37", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_235_15_fu_201", "Port" : "reg_file_5_1", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "21", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_193_10_VITIS_LOOP_194_11_fu_164", "Port" : "reg_file_5_1", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "reg_file_6_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_182_8_VITIS_LOOP_183_9_fu_152", "Port" : "reg_file_6_0", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "40", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_243_16_VITIS_LOOP_244_17_fu_215", "Port" : "reg_file_6_0", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "44", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_265_20_VITIS_LOOP_266_21_fu_227", "Port" : "reg_file_6_0", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "47", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_274_22_VITIS_LOOP_275_23_VITIS_LOOP_276_24_fu_239", "Port" : "reg_file_6_0", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "37", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_235_15_fu_201", "Port" : "reg_file_6_0", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "21", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_193_10_VITIS_LOOP_194_11_fu_164", "Port" : "reg_file_6_0", "Inst_start_state" : "11", "Inst_end_state" : "12"}]},
			{"Name" : "reg_file_6_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "18", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_182_8_VITIS_LOOP_183_9_fu_152", "Port" : "reg_file_6_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "40", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_243_16_VITIS_LOOP_244_17_fu_215", "Port" : "reg_file_6_1", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "44", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_265_20_VITIS_LOOP_266_21_fu_227", "Port" : "reg_file_6_1", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "47", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_274_22_VITIS_LOOP_275_23_VITIS_LOOP_276_24_fu_239", "Port" : "reg_file_6_1", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "37", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_235_15_fu_201", "Port" : "reg_file_6_1", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "21", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_193_10_VITIS_LOOP_194_11_fu_164", "Port" : "reg_file_6_1", "Inst_start_state" : "11", "Inst_end_state" : "12"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_134_1_fu_94", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_134_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reg_file_4_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reg_file_4_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_134_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_134_1_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_162_5_fu_102", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_162_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "66", "EstimateLatencyMax" : "66",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_162_5", "PipelineType" : "NotSupport"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_162_5_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_255_18_VITIS_LOOP_256_19_fu_110", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_255_18_VITIS_LOOP_256_19",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4034", "EstimateLatencyMax" : "4034",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reg_file_3_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reg_file_3_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_255_18_VITIS_LOOP_256_19", "PipelineType" : "NotSupport"}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_255_18_VITIS_LOOP_256_19_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_142_2_VITIS_LOOP_143_3_fu_118", "Parent" : "0", "Child" : ["8", "9", "10"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_142_2_VITIS_LOOP_143_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4100", "EstimateLatencyMax" : "4100",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_36", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "1", "FromAddress" : "reg_file_4_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_69", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_69", "ToFinalSV" : "3", "ToAddress" : "reg_file_4_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:144:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_37", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_58", "FromFinalSV" : "1", "FromAddress" : "reg_file_4_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_71", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_71", "ToFinalSV" : "3", "ToAddress" : "reg_file_4_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:144:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_69", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_69", "FromFinalSV" : "3", "FromAddress" : "reg_file_4_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_36", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "1", "ToAddress" : "reg_file_4_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:144:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_71", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_71", "FromFinalSV" : "3", "FromAddress" : "reg_file_4_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_37", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_58", "ToFinalSV" : "1", "ToAddress" : "reg_file_4_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:144:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state4_pp0_iter3_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_4_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_4_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_2_0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_142_2_VITIS_LOOP_143_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_142_2_VITIS_LOOP_143_3_fu_118.mux_21_16_1_1_U37", "Parent" : "7"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_142_2_VITIS_LOOP_143_3_fu_118.mux_21_16_1_1_U38", "Parent" : "7"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_142_2_VITIS_LOOP_143_3_fu_118.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_154_4_fu_130", "Parent" : "0", "Child" : ["12", "13"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_154_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70", "EstimateLatencyMax" : "70",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_28", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_39", "FromFinalSV" : "1", "FromAddress" : "reg_file_4_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_49", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_49", "ToFinalSV" : "5", "ToAddress" : "reg_file_4_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:155:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_29", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_40", "FromFinalSV" : "1", "FromAddress" : "reg_file_4_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_51", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_51", "ToFinalSV" : "5", "ToAddress" : "reg_file_4_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:155:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_49", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_49", "FromFinalSV" : "5", "FromAddress" : "reg_file_4_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_28", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_39", "ToFinalSV" : "1", "ToAddress" : "reg_file_4_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:155:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state6_pp0_iter5_stage0"]},
			{"FromInitialState" : "ap_enable_state6_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_51", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_51", "FromFinalSV" : "5", "FromAddress" : "reg_file_4_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_29", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_40", "ToFinalSV" : "1", "ToAddress" : "reg_file_4_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:155:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state6_pp0_iter5_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_4_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_4_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "val2_2", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_154_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_154_4_fu_130.mux_21_16_1_1_U45", "Parent" : "11"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_154_4_fu_130.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_170_6_VITIS_LOOP_171_7_fu_140", "Parent" : "0", "Child" : ["15", "16", "17"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_170_6_VITIS_LOOP_171_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4100", "EstimateLatencyMax" : "4100",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_39", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "1", "FromAddress" : "reg_file_2_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_72", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_72", "ToFinalSV" : "3", "ToAddress" : "reg_file_2_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:172:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_40", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_58", "FromFinalSV" : "1", "FromAddress" : "reg_file_2_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_74", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_74", "ToFinalSV" : "3", "ToAddress" : "reg_file_2_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:172:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_72", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_72", "FromFinalSV" : "3", "FromAddress" : "reg_file_2_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_39", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "1", "ToAddress" : "reg_file_2_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:172:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_74", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_74", "FromFinalSV" : "3", "FromAddress" : "reg_file_2_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_40", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_58", "ToFinalSV" : "1", "ToAddress" : "reg_file_2_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:172:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state4_pp0_iter3_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_4_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_4_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_2_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_170_6_VITIS_LOOP_171_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_170_6_VITIS_LOOP_171_7_fu_140.mux_21_16_1_1_U52", "Parent" : "14"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_170_6_VITIS_LOOP_171_7_fu_140.mux_21_16_1_1_U53", "Parent" : "14"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_170_6_VITIS_LOOP_171_7_fu_140.flow_control_loop_pipe_sequential_init_U", "Parent" : "14"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_182_8_VITIS_LOOP_183_9_fu_152", "Parent" : "0", "Child" : ["19", "20"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_182_8_VITIS_LOOP_183_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4099", "EstimateLatencyMax" : "4099",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reg_file_6_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reg_file_6_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_2_0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_182_8_VITIS_LOOP_183_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_182_8_VITIS_LOOP_183_9_fu_152.mux_21_16_1_1_U59", "Parent" : "18"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_182_8_VITIS_LOOP_183_9_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "18"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_193_10_VITIS_LOOP_194_11_fu_164", "Parent" : "0", "Child" : ["22", "23", "24"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_193_10_VITIS_LOOP_194_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4100", "EstimateLatencyMax" : "4100",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_43", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_60", "FromFinalSV" : "1", "FromAddress" : "reg_file_5_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_69", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_69", "ToFinalSV" : "3", "ToAddress" : "reg_file_5_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_44", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_61", "FromFinalSV" : "1", "FromAddress" : "reg_file_5_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_71", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_71", "ToFinalSV" : "3", "ToAddress" : "reg_file_5_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_69", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_69", "FromFinalSV" : "3", "FromAddress" : "reg_file_5_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_43", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_60", "ToFinalSV" : "1", "ToAddress" : "reg_file_5_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:195:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_71", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_71", "FromFinalSV" : "3", "FromAddress" : "reg_file_5_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_44", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_61", "ToFinalSV" : "1", "ToAddress" : "reg_file_5_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:195:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state4_pp0_iter3_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_6_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_6_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_193_10_VITIS_LOOP_194_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_193_10_VITIS_LOOP_194_11_fu_164.mux_21_16_1_1_U65", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_193_10_VITIS_LOOP_194_11_fu_164.mux_21_16_1_1_U66", "Parent" : "21"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_193_10_VITIS_LOOP_194_11_fu_164.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_204_12_fu_176", "Parent" : "0", "Child" : ["26", "27"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_204_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "70", "EstimateLatencyMax" : "70",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_28", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_39", "FromFinalSV" : "1", "FromAddress" : "reg_file_5_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_49", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_49", "ToFinalSV" : "5", "ToAddress" : "reg_file_5_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:205:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_29", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_40", "FromFinalSV" : "1", "FromAddress" : "reg_file_5_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_51", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_51", "ToFinalSV" : "5", "ToAddress" : "reg_file_5_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:205:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_49", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_49", "FromFinalSV" : "5", "FromAddress" : "reg_file_5_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_28", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_39", "ToFinalSV" : "1", "ToAddress" : "reg_file_5_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:205:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state6_pp0_iter5_stage0"]},
			{"FromInitialState" : "ap_enable_state6_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_51", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_51", "FromFinalSV" : "5", "FromAddress" : "reg_file_5_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_29", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_40", "ToFinalSV" : "1", "ToAddress" : "reg_file_5_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:205:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state6_pp0_iter5_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "val2_2", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_204_12", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_204_12_fu_176.mux_21_16_1_1_U72", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_204_12_fu_176.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_215_13_fu_185", "Parent" : "0", "Child" : ["29", "30", "31"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_215_13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "71", "EstimateLatencyMax" : "71",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_28", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_39", "FromFinalSV" : "1", "FromAddress" : "reg_file_5_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state7_pp0_iter6_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter6", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_48", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state7_pp0_iter6_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter6", "ToFinalOperation" : "ap_enable_operation_48", "ToFinalSV" : "6", "ToAddress" : "reg_file_5_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:216:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_29", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_40", "FromFinalSV" : "1", "FromAddress" : "reg_file_5_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state7_pp0_iter6_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter6", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_50", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state7_pp0_iter6_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter6", "ToFinalOperation" : "ap_enable_operation_50", "ToFinalSV" : "6", "ToAddress" : "reg_file_5_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:216:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state7_pp0_iter6_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter6", "FromInitialOperation" : "ap_enable_operation_48", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state7_pp0_iter6_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter6", "FromFinalOperation" : "ap_enable_operation_48", "FromFinalSV" : "6", "FromAddress" : "reg_file_5_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_28", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_39", "ToFinalSV" : "1", "ToAddress" : "reg_file_5_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:216:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state7_pp0_iter6_stage0"]},
			{"FromInitialState" : "ap_enable_state7_pp0_iter6_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter6", "FromInitialOperation" : "ap_enable_operation_50", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state7_pp0_iter6_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter6", "FromFinalOperation" : "ap_enable_operation_50", "FromFinalSV" : "6", "FromAddress" : "reg_file_5_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_29", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_40", "ToFinalSV" : "1", "ToAddress" : "reg_file_5_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:216:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state7_pp0_iter6_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_215_13", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_215_13_fu_185.hsqrt_16ns_16_4_no_dsp_1_U76", "Parent" : "28"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_215_13_fu_185.mux_21_16_1_1_U77", "Parent" : "28"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_215_13_fu_185.flow_control_loop_pipe_sequential_init_U", "Parent" : "28"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_227_14_fu_193", "Parent" : "0", "Child" : ["33", "34", "35", "36"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_227_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "69", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_26", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_37", "FromFinalSV" : "1", "FromAddress" : "reg_file_5_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state5_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_53", "ToInitialSV" : "4", "ToFinalState" : "ap_enable_state5_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_53", "ToFinalSV" : "4", "ToAddress" : "reg_file_5_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:228:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_27", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_38", "FromFinalSV" : "1", "FromAddress" : "reg_file_5_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state5_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_55", "ToInitialSV" : "4", "ToFinalState" : "ap_enable_state5_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "4", "ToAddress" : "reg_file_5_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:228:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state5_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_53", "FromInitialSV" : "4", "FromFinalState" : "ap_enable_state5_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_53", "FromFinalSV" : "4", "FromAddress" : "reg_file_5_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_26", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_37", "ToFinalSV" : "1", "ToAddress" : "reg_file_5_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:228:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state5_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state5_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_55", "FromInitialSV" : "4", "FromFinalState" : "ap_enable_state5_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "4", "FromAddress" : "reg_file_5_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_27", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_38", "ToFinalSV" : "1", "ToAddress" : "reg_file_5_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:228:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state5_pp0_iter4_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_227_14", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_227_14_fu_193.fcmp_32ns_32ns_1_2_no_dsp_1_U81", "Parent" : "32"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_227_14_fu_193.hptosp_16ns_32_1_no_dsp_1_U82", "Parent" : "32"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_227_14_fu_193.mux_21_16_1_1_U83", "Parent" : "32"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_227_14_fu_193.flow_control_loop_pipe_sequential_init_U", "Parent" : "32"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_235_15_fu_201", "Parent" : "0", "Child" : ["38", "39"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_235_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "67", "EstimateLatencyMax" : "67",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reg_file_6_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reg_file_6_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_1_0_load", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_235_15", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_235_15_fu_201.mux_21_16_1_1_U89", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_235_15_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_243_16_VITIS_LOOP_244_17_fu_215", "Parent" : "0", "Child" : ["41", "42", "43"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_243_16_VITIS_LOOP_244_17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4102", "EstimateLatencyMax" : "4102",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_41", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_59", "FromFinalSV" : "1", "FromAddress" : "reg_file_2_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_74", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_74", "ToFinalSV" : "5", "ToAddress" : "reg_file_2_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:245:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_42", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_60", "FromFinalSV" : "1", "FromAddress" : "reg_file_2_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_76", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_76", "ToFinalSV" : "5", "ToAddress" : "reg_file_2_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:245:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_74", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_74", "FromFinalSV" : "5", "FromAddress" : "reg_file_2_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_41", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_59", "ToFinalSV" : "1", "ToAddress" : "reg_file_2_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:245:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state6_pp0_iter5_stage0"]},
			{"FromInitialState" : "ap_enable_state6_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_76", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_76", "FromFinalSV" : "5", "FromAddress" : "reg_file_2_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_42", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_60", "ToFinalSV" : "1", "ToAddress" : "reg_file_2_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:245:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state6_pp0_iter5_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_6_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_6_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_2_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_243_16_VITIS_LOOP_244_17", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_243_16_VITIS_LOOP_244_17_fu_215.mux_21_16_1_1_U96", "Parent" : "40"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_243_16_VITIS_LOOP_244_17_fu_215.mux_21_16_1_1_U97", "Parent" : "40"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_243_16_VITIS_LOOP_244_17_fu_215.flow_control_loop_pipe_sequential_init_U", "Parent" : "40"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_265_20_VITIS_LOOP_266_21_fu_227", "Parent" : "0", "Child" : ["45", "46"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_265_20_VITIS_LOOP_266_21",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reg_file_6_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reg_file_6_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_2_0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_265_20_VITIS_LOOP_266_21", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_265_20_VITIS_LOOP_266_21_fu_227.mux_21_16_1_1_U104", "Parent" : "44"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_265_20_VITIS_LOOP_266_21_fu_227.flow_control_loop_pipe_sequential_init_U", "Parent" : "44"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_274_22_VITIS_LOOP_275_23_VITIS_LOOP_276_24_fu_239", "Parent" : "0", "Child" : ["48", "49", "50", "51"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_274_22_VITIS_LOOP_275_23_VITIS_LOOP_276_24",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "262149", "EstimateLatencyMax" : "262149",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_104", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_113", "FromFinalSV" : "3", "FromAddress" : "reg_file_3_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_125", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_125", "ToFinalSV" : "5", "ToAddress" : "reg_file_3_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:277:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_105", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_114", "FromFinalSV" : "3", "FromAddress" : "reg_file_3_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_127", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_127", "ToFinalSV" : "5", "ToAddress" : "reg_file_3_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:277:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_125", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_125", "FromFinalSV" : "5", "FromAddress" : "reg_file_3_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_104", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_113", "ToFinalSV" : "3", "ToAddress" : "reg_file_3_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:277:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0", "ap_enable_state6_pp0_iter5_stage0"]},
			{"FromInitialState" : "ap_enable_state6_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_127", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_127", "FromFinalSV" : "5", "FromAddress" : "reg_file_3_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_105", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_114", "ToFinalSV" : "3", "ToAddress" : "reg_file_3_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-sharing/src/correlation.cpp:277:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0", "ap_enable_state6_pp0_iter5_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_6_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_6_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_3_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_3_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_2_0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_274_22_VITIS_LOOP_275_23_VITIS_LOOP_276_24", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_274_22_VITIS_LOOP_275_23_VITIS_LOOP_276_24_fu_239.mux_21_16_1_1_U111", "Parent" : "47"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_274_22_VITIS_LOOP_275_23_VITIS_LOOP_276_24_fu_239.mux_21_16_1_1_U112", "Parent" : "47"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_274_22_VITIS_LOOP_275_23_VITIS_LOOP_276_24_fu_239.mux_21_16_1_1_U113", "Parent" : "47"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_274_22_VITIS_LOOP_275_23_VITIS_LOOP_276_24_fu_239.flow_control_loop_pipe_sequential_init_U", "Parent" : "47"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_292_25_fu_255", "Parent" : "0", "Child" : ["53"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_292_25",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65", "EstimateLatencyMax" : "65",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reg_file_3_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reg_file_3_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_292_25", "PipelineType" : "NotSupport"}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_292_25_fu_255.flow_control_loop_pipe_sequential_init_U", "Parent" : "52"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hadd_16ns_16ns_16_2_full_dsp_1_U122", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hdiv_16ns_16ns_16_5_no_dsp_1_U123", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hmul_16ns_16ns_16_2_max_dsp_1_U124", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute {
		reg_file_0_0 {Type I LastRead 3 FirstWrite -1}
		reg_file_1_0 {Type I LastRead 17 FirstWrite -1}
		reg_file_2_0 {Type IO LastRead 1 FirstWrite -1}
		reg_file_2_1 {Type IO LastRead 1 FirstWrite -1}
		reg_file_3_0 {Type IO LastRead 2 FirstWrite 0}
		reg_file_3_1 {Type IO LastRead 2 FirstWrite 0}
		reg_file_4_0 {Type IO LastRead 0 FirstWrite -1}
		reg_file_4_1 {Type IO LastRead 0 FirstWrite -1}
		reg_file_5_0 {Type IO LastRead 0 FirstWrite -1}
		reg_file_5_1 {Type IO LastRead 0 FirstWrite -1}
		reg_file_6_0 {Type IO LastRead 1 FirstWrite -1}
		reg_file_6_1 {Type IO LastRead 1 FirstWrite -1}}
	compute_Pipeline_VITIS_LOOP_134_1 {
		reg_file_4_1 {Type O LastRead -1 FirstWrite 0}
		reg_file_4_0 {Type O LastRead -1 FirstWrite 0}}
	compute_Pipeline_VITIS_LOOP_162_5 {
		reg_file_5_1 {Type O LastRead -1 FirstWrite 0}
		reg_file_5_0 {Type O LastRead -1 FirstWrite 0}}
	compute_Pipeline_VITIS_LOOP_255_18_VITIS_LOOP_256_19 {
		reg_file_3_1 {Type O LastRead -1 FirstWrite 0}
		reg_file_3_0 {Type O LastRead -1 FirstWrite 0}}
	compute_Pipeline_VITIS_LOOP_142_2_VITIS_LOOP_143_3 {
		reg_file_4_1 {Type IO LastRead 0 FirstWrite 3}
		reg_file_4_0 {Type IO LastRead 0 FirstWrite 3}
		reg_file_2_1 {Type I LastRead 0 FirstWrite -1}
		reg_file_2_0 {Type I LastRead 0 FirstWrite -1}}
	compute_Pipeline_VITIS_LOOP_154_4 {
		reg_file_4_1 {Type IO LastRead 0 FirstWrite 5}
		reg_file_4_0 {Type IO LastRead 0 FirstWrite 5}
		val2_2 {Type I LastRead 0 FirstWrite -1}}
	compute_Pipeline_VITIS_LOOP_170_6_VITIS_LOOP_171_7 {
		reg_file_4_1 {Type I LastRead 0 FirstWrite -1}
		reg_file_4_0 {Type I LastRead 0 FirstWrite -1}
		reg_file_2_1 {Type IO LastRead 0 FirstWrite 3}
		reg_file_2_0 {Type IO LastRead 0 FirstWrite 3}}
	compute_Pipeline_VITIS_LOOP_182_8_VITIS_LOOP_183_9 {
		reg_file_6_1 {Type O LastRead -1 FirstWrite 2}
		reg_file_6_0 {Type O LastRead -1 FirstWrite 2}
		reg_file_2_1 {Type I LastRead 0 FirstWrite -1}
		reg_file_2_0 {Type I LastRead 0 FirstWrite -1}}
	compute_Pipeline_VITIS_LOOP_193_10_VITIS_LOOP_194_11 {
		reg_file_6_1 {Type I LastRead 0 FirstWrite -1}
		reg_file_6_0 {Type I LastRead 0 FirstWrite -1}
		reg_file_5_1 {Type IO LastRead 0 FirstWrite 3}
		reg_file_5_0 {Type IO LastRead 0 FirstWrite 3}}
	compute_Pipeline_VITIS_LOOP_204_12 {
		reg_file_5_1 {Type IO LastRead 0 FirstWrite 5}
		reg_file_5_0 {Type IO LastRead 0 FirstWrite 5}
		val2_2 {Type I LastRead 0 FirstWrite -1}}
	compute_Pipeline_VITIS_LOOP_215_13 {
		reg_file_5_1 {Type IO LastRead 0 FirstWrite 6}
		reg_file_5_0 {Type IO LastRead 0 FirstWrite 6}}
	compute_Pipeline_VITIS_LOOP_227_14 {
		reg_file_5_1 {Type IO LastRead 0 FirstWrite 4}
		reg_file_5_0 {Type IO LastRead 0 FirstWrite 4}}
	compute_Pipeline_VITIS_LOOP_235_15 {
		reg_file_6_1 {Type O LastRead -1 FirstWrite 2}
		reg_file_6_0 {Type O LastRead -1 FirstWrite 2}
		reg_file_5_1 {Type I LastRead 0 FirstWrite -1}
		reg_file_5_0 {Type I LastRead 0 FirstWrite -1}
		reg_file_1_0_load {Type I LastRead 0 FirstWrite -1}}
	compute_Pipeline_VITIS_LOOP_243_16_VITIS_LOOP_244_17 {
		reg_file_6_1 {Type I LastRead 0 FirstWrite -1}
		reg_file_6_0 {Type I LastRead 0 FirstWrite -1}
		reg_file_2_1 {Type IO LastRead 0 FirstWrite 5}
		reg_file_2_0 {Type IO LastRead 0 FirstWrite 5}}
	compute_Pipeline_VITIS_LOOP_265_20_VITIS_LOOP_266_21 {
		reg_file_6_1 {Type O LastRead -1 FirstWrite 1}
		reg_file_6_0 {Type O LastRead -1 FirstWrite 1}
		reg_file_2_1 {Type I LastRead 0 FirstWrite -1}
		reg_file_2_0 {Type I LastRead 0 FirstWrite -1}}
	compute_Pipeline_VITIS_LOOP_274_22_VITIS_LOOP_275_23_VITIS_LOOP_276_24 {
		reg_file_6_0 {Type I LastRead 1 FirstWrite -1}
		reg_file_6_1 {Type I LastRead 1 FirstWrite -1}
		reg_file_3_1 {Type IO LastRead 2 FirstWrite 5}
		reg_file_3_0 {Type IO LastRead 2 FirstWrite 5}
		reg_file_2_1 {Type I LastRead 1 FirstWrite -1}
		reg_file_2_0 {Type I LastRead 1 FirstWrite -1}}
	compute_Pipeline_VITIS_LOOP_292_25 {
		reg_file_3_1 {Type O LastRead -1 FirstWrite 0}
		reg_file_3_0 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "291221", "Max" : "291221"}
	, {"Name" : "Interval", "Min" : "291221", "Max" : "291221"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	reg_file_0_0 { ap_memory {  { reg_file_0_0_address0 mem_address 1 11 }  { reg_file_0_0_ce0 mem_ce 1 1 }  { reg_file_0_0_q0 mem_dout 0 16 } } }
	reg_file_1_0 { ap_memory {  { reg_file_1_0_address0 mem_address 1 11 }  { reg_file_1_0_ce0 mem_ce 1 1 }  { reg_file_1_0_q0 mem_dout 0 16 } } }
	reg_file_2_0 { ap_memory {  { reg_file_2_0_address0 mem_address 1 11 }  { reg_file_2_0_ce0 mem_ce 1 1 }  { reg_file_2_0_we0 mem_we 1 1 }  { reg_file_2_0_d0 mem_din 1 16 }  { reg_file_2_0_q0 mem_dout 0 16 }  { reg_file_2_0_address1 MemPortADDR2 1 11 }  { reg_file_2_0_ce1 MemPortCE2 1 1 }  { reg_file_2_0_q1 MemPortDOUT2 0 16 } } }
	reg_file_2_1 { ap_memory {  { reg_file_2_1_address0 mem_address 1 11 }  { reg_file_2_1_ce0 mem_ce 1 1 }  { reg_file_2_1_we0 mem_we 1 1 }  { reg_file_2_1_d0 mem_din 1 16 }  { reg_file_2_1_q0 mem_dout 0 16 }  { reg_file_2_1_address1 MemPortADDR2 1 11 }  { reg_file_2_1_ce1 MemPortCE2 1 1 }  { reg_file_2_1_q1 MemPortDOUT2 0 16 } } }
	reg_file_3_0 { ap_memory {  { reg_file_3_0_address0 mem_address 1 11 }  { reg_file_3_0_ce0 mem_ce 1 1 }  { reg_file_3_0_we0 mem_we 1 1 }  { reg_file_3_0_d0 mem_din 1 16 }  { reg_file_3_0_address1 MemPortADDR2 1 11 }  { reg_file_3_0_ce1 MemPortCE2 1 1 }  { reg_file_3_0_q1 MemPortDOUT2 0 16 } } }
	reg_file_3_1 { ap_memory {  { reg_file_3_1_address0 mem_address 1 11 }  { reg_file_3_1_ce0 mem_ce 1 1 }  { reg_file_3_1_we0 mem_we 1 1 }  { reg_file_3_1_d0 mem_din 1 16 }  { reg_file_3_1_address1 MemPortADDR2 1 11 }  { reg_file_3_1_ce1 MemPortCE2 1 1 }  { reg_file_3_1_q1 MemPortDOUT2 0 16 } } }
	reg_file_4_0 { ap_memory {  { reg_file_4_0_address0 mem_address 1 11 }  { reg_file_4_0_ce0 mem_ce 1 1 }  { reg_file_4_0_we0 mem_we 1 1 }  { reg_file_4_0_d0 mem_din 1 16 }  { reg_file_4_0_q0 mem_dout 0 16 }  { reg_file_4_0_address1 MemPortADDR2 1 11 }  { reg_file_4_0_ce1 MemPortCE2 1 1 }  { reg_file_4_0_q1 MemPortDOUT2 0 16 } } }
	reg_file_4_1 { ap_memory {  { reg_file_4_1_address0 mem_address 1 11 }  { reg_file_4_1_ce0 mem_ce 1 1 }  { reg_file_4_1_we0 mem_we 1 1 }  { reg_file_4_1_d0 mem_din 1 16 }  { reg_file_4_1_q0 mem_dout 0 16 }  { reg_file_4_1_address1 MemPortADDR2 1 11 }  { reg_file_4_1_ce1 MemPortCE2 1 1 }  { reg_file_4_1_q1 MemPortDOUT2 0 16 } } }
	reg_file_5_0 { ap_memory {  { reg_file_5_0_address0 mem_address 1 11 }  { reg_file_5_0_ce0 mem_ce 1 1 }  { reg_file_5_0_we0 mem_we 1 1 }  { reg_file_5_0_d0 mem_din 1 16 }  { reg_file_5_0_q0 mem_dout 0 16 }  { reg_file_5_0_address1 MemPortADDR2 1 11 }  { reg_file_5_0_ce1 MemPortCE2 1 1 }  { reg_file_5_0_q1 MemPortDOUT2 0 16 } } }
	reg_file_5_1 { ap_memory {  { reg_file_5_1_address0 mem_address 1 11 }  { reg_file_5_1_ce0 mem_ce 1 1 }  { reg_file_5_1_we0 mem_we 1 1 }  { reg_file_5_1_d0 mem_din 1 16 }  { reg_file_5_1_q0 mem_dout 0 16 }  { reg_file_5_1_address1 MemPortADDR2 1 11 }  { reg_file_5_1_ce1 MemPortCE2 1 1 }  { reg_file_5_1_q1 MemPortDOUT2 0 16 } } }
	reg_file_6_0 { ap_memory {  { reg_file_6_0_address0 mem_address 1 11 }  { reg_file_6_0_ce0 mem_ce 1 1 }  { reg_file_6_0_we0 mem_we 1 1 }  { reg_file_6_0_d0 mem_din 1 16 }  { reg_file_6_0_q0 mem_dout 0 16 } } }
	reg_file_6_1 { ap_memory {  { reg_file_6_1_address0 mem_address 1 11 }  { reg_file_6_1_ce0 mem_ce 1 1 }  { reg_file_6_1_we0 mem_we 1 1 }  { reg_file_6_1_d0 mem_din 1 16 }  { reg_file_6_1_q0 mem_dout 0 16 } } }
}
