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
	{ reg_file_3_0 int 16 regular {array 2048 { 0 2 } 1 1 }  }
	{ reg_file_3_1 int 16 regular {array 2048 { 0 2 } 1 1 }  }
	{ reg_file_4_0 int 16 regular {array 2048 { 2 2 } 1 1 }  }
	{ reg_file_4_1 int 16 regular {array 2048 { 2 2 } 1 1 }  }
	{ reg_file_5_0 int 16 regular {array 2048 { 2 1 } 1 1 }  }
	{ reg_file_5_1 int 16 regular {array 2048 { 2 1 } 1 1 }  }
	{ reg_file_6_0 int 16 regular {array 2048 { 2 0 } 1 1 }  }
	{ reg_file_6_1 int 16 regular {array 2048 { 2 0 } 1 1 }  }
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
set portNum 100
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
	{ reg_file_3_0_we1 sc_out sc_logic 1 signal 4 } 
	{ reg_file_3_0_d1 sc_out sc_lv 16 signal 4 } 
	{ reg_file_3_0_q1 sc_in sc_lv 16 signal 4 } 
	{ reg_file_3_1_address0 sc_out sc_lv 11 signal 5 } 
	{ reg_file_3_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ reg_file_3_1_we0 sc_out sc_logic 1 signal 5 } 
	{ reg_file_3_1_d0 sc_out sc_lv 16 signal 5 } 
	{ reg_file_3_1_address1 sc_out sc_lv 11 signal 5 } 
	{ reg_file_3_1_ce1 sc_out sc_logic 1 signal 5 } 
	{ reg_file_3_1_we1 sc_out sc_logic 1 signal 5 } 
	{ reg_file_3_1_d1 sc_out sc_lv 16 signal 5 } 
	{ reg_file_3_1_q1 sc_in sc_lv 16 signal 5 } 
	{ reg_file_4_0_address0 sc_out sc_lv 11 signal 6 } 
	{ reg_file_4_0_ce0 sc_out sc_logic 1 signal 6 } 
	{ reg_file_4_0_we0 sc_out sc_logic 1 signal 6 } 
	{ reg_file_4_0_d0 sc_out sc_lv 16 signal 6 } 
	{ reg_file_4_0_q0 sc_in sc_lv 16 signal 6 } 
	{ reg_file_4_0_address1 sc_out sc_lv 11 signal 6 } 
	{ reg_file_4_0_ce1 sc_out sc_logic 1 signal 6 } 
	{ reg_file_4_0_we1 sc_out sc_logic 1 signal 6 } 
	{ reg_file_4_0_d1 sc_out sc_lv 16 signal 6 } 
	{ reg_file_4_0_q1 sc_in sc_lv 16 signal 6 } 
	{ reg_file_4_1_address0 sc_out sc_lv 11 signal 7 } 
	{ reg_file_4_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ reg_file_4_1_we0 sc_out sc_logic 1 signal 7 } 
	{ reg_file_4_1_d0 sc_out sc_lv 16 signal 7 } 
	{ reg_file_4_1_q0 sc_in sc_lv 16 signal 7 } 
	{ reg_file_4_1_address1 sc_out sc_lv 11 signal 7 } 
	{ reg_file_4_1_ce1 sc_out sc_logic 1 signal 7 } 
	{ reg_file_4_1_we1 sc_out sc_logic 1 signal 7 } 
	{ reg_file_4_1_d1 sc_out sc_lv 16 signal 7 } 
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
	{ reg_file_6_0_address1 sc_out sc_lv 11 signal 10 } 
	{ reg_file_6_0_ce1 sc_out sc_logic 1 signal 10 } 
	{ reg_file_6_0_we1 sc_out sc_logic 1 signal 10 } 
	{ reg_file_6_0_d1 sc_out sc_lv 16 signal 10 } 
	{ reg_file_6_1_address0 sc_out sc_lv 11 signal 11 } 
	{ reg_file_6_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ reg_file_6_1_we0 sc_out sc_logic 1 signal 11 } 
	{ reg_file_6_1_d0 sc_out sc_lv 16 signal 11 } 
	{ reg_file_6_1_q0 sc_in sc_lv 16 signal 11 } 
	{ reg_file_6_1_address1 sc_out sc_lv 11 signal 11 } 
	{ reg_file_6_1_ce1 sc_out sc_logic 1 signal 11 } 
	{ reg_file_6_1_we1 sc_out sc_logic 1 signal 11 } 
	{ reg_file_6_1_d1 sc_out sc_lv 16 signal 11 } 
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
 	{ "name": "reg_file_3_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "we1" }} , 
 	{ "name": "reg_file_3_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "d1" }} , 
 	{ "name": "reg_file_3_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "q1" }} , 
 	{ "name": "reg_file_3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "address0" }} , 
 	{ "name": "reg_file_3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "ce0" }} , 
 	{ "name": "reg_file_3_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "we0" }} , 
 	{ "name": "reg_file_3_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "d0" }} , 
 	{ "name": "reg_file_3_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "address1" }} , 
 	{ "name": "reg_file_3_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "ce1" }} , 
 	{ "name": "reg_file_3_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "we1" }} , 
 	{ "name": "reg_file_3_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "d1" }} , 
 	{ "name": "reg_file_3_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "q1" }} , 
 	{ "name": "reg_file_4_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "address0" }} , 
 	{ "name": "reg_file_4_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "ce0" }} , 
 	{ "name": "reg_file_4_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "we0" }} , 
 	{ "name": "reg_file_4_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "d0" }} , 
 	{ "name": "reg_file_4_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "q0" }} , 
 	{ "name": "reg_file_4_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "address1" }} , 
 	{ "name": "reg_file_4_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "ce1" }} , 
 	{ "name": "reg_file_4_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "we1" }} , 
 	{ "name": "reg_file_4_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "d1" }} , 
 	{ "name": "reg_file_4_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "q1" }} , 
 	{ "name": "reg_file_4_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "address0" }} , 
 	{ "name": "reg_file_4_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "ce0" }} , 
 	{ "name": "reg_file_4_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "we0" }} , 
 	{ "name": "reg_file_4_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "d0" }} , 
 	{ "name": "reg_file_4_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "q0" }} , 
 	{ "name": "reg_file_4_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "address1" }} , 
 	{ "name": "reg_file_4_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "ce1" }} , 
 	{ "name": "reg_file_4_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "we1" }} , 
 	{ "name": "reg_file_4_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "d1" }} , 
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
 	{ "name": "reg_file_6_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_6_0", "role": "address1" }} , 
 	{ "name": "reg_file_6_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_6_0", "role": "ce1" }} , 
 	{ "name": "reg_file_6_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_6_0", "role": "we1" }} , 
 	{ "name": "reg_file_6_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_6_0", "role": "d1" }} , 
 	{ "name": "reg_file_6_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_6_1", "role": "address0" }} , 
 	{ "name": "reg_file_6_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_6_1", "role": "ce0" }} , 
 	{ "name": "reg_file_6_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_6_1", "role": "we0" }} , 
 	{ "name": "reg_file_6_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_6_1", "role": "d0" }} , 
 	{ "name": "reg_file_6_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_6_1", "role": "q0" }} , 
 	{ "name": "reg_file_6_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_6_1", "role": "address1" }} , 
 	{ "name": "reg_file_6_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_6_1", "role": "ce1" }} , 
 	{ "name": "reg_file_6_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_6_1", "role": "we1" }} , 
 	{ "name": "reg_file_6_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_6_1", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "7", "9", "11", "13", "17", "19", "21", "25", "31", "35", "37", "41", "45", "47", "48", "49", "50", "51", "52"],
		"CDFG" : "compute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "144614", "EstimateLatencyMax" : "144614",
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
					{"ID" : "7", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_140_2_VITIS_LOOP_141_3_fu_118", "Port" : "reg_file_2_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "13", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_172_8_VITIS_LOOP_173_9_fu_152", "Port" : "reg_file_2_0", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "11", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_162_6_VITIS_LOOP_163_7_fu_140", "Port" : "reg_file_2_0", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "35", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_222_16_VITIS_LOOP_223_17_fu_215", "Port" : "reg_file_2_0", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "37", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_240_20_VITIS_LOOP_241_21_fu_227", "Port" : "reg_file_2_0", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "41", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_247_22_VITIS_LOOP_248_23_VITIS_LOOP_249_24_fu_239", "Port" : "reg_file_2_0", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_140_2_VITIS_LOOP_141_3_fu_118", "Port" : "reg_file_2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "13", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_172_8_VITIS_LOOP_173_9_fu_152", "Port" : "reg_file_2_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "11", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_162_6_VITIS_LOOP_163_7_fu_140", "Port" : "reg_file_2_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "35", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_222_16_VITIS_LOOP_223_17_fu_215", "Port" : "reg_file_2_1", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "37", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_240_20_VITIS_LOOP_241_21_fu_227", "Port" : "reg_file_2_1", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "41", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_247_22_VITIS_LOOP_248_23_VITIS_LOOP_249_24_fu_239", "Port" : "reg_file_2_1", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "reg_file_3_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_232_18_VITIS_LOOP_233_19_fu_110", "Port" : "reg_file_3_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "41", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_247_22_VITIS_LOOP_248_23_VITIS_LOOP_249_24_fu_239", "Port" : "reg_file_3_0", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "45", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_263_25_fu_255", "Port" : "reg_file_3_0", "Inst_start_state" : "27", "Inst_end_state" : "28"}]},
			{"Name" : "reg_file_3_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_232_18_VITIS_LOOP_233_19_fu_110", "Port" : "reg_file_3_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "41", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_247_22_VITIS_LOOP_248_23_VITIS_LOOP_249_24_fu_239", "Port" : "reg_file_3_1", "Inst_start_state" : "25", "Inst_end_state" : "26"},
					{"ID" : "45", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_263_25_fu_255", "Port" : "reg_file_3_1", "Inst_start_state" : "27", "Inst_end_state" : "28"}]},
			{"Name" : "reg_file_4_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_140_2_VITIS_LOOP_141_3_fu_118", "Port" : "reg_file_4_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "1", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_134_1_fu_94", "Port" : "reg_file_4_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "11", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_162_6_VITIS_LOOP_163_7_fu_140", "Port" : "reg_file_4_0", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "9", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_150_4_fu_130", "Port" : "reg_file_4_0", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "reg_file_4_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "7", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_140_2_VITIS_LOOP_141_3_fu_118", "Port" : "reg_file_4_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "1", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_134_1_fu_94", "Port" : "reg_file_4_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "11", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_162_6_VITIS_LOOP_163_7_fu_140", "Port" : "reg_file_4_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "9", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_150_4_fu_130", "Port" : "reg_file_4_1", "Inst_start_state" : "5", "Inst_end_state" : "6"}]},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_181_10_VITIS_LOOP_182_11_fu_164", "Port" : "reg_file_5_0", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "3", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_156_5_fu_102", "Port" : "reg_file_5_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "19", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_190_12_fu_176", "Port" : "reg_file_5_0", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "21", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_199_13_fu_185", "Port" : "reg_file_5_0", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "25", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_210_14_fu_193", "Port" : "reg_file_5_0", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "31", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_216_15_fu_201", "Port" : "reg_file_5_0", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "17", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_181_10_VITIS_LOOP_182_11_fu_164", "Port" : "reg_file_5_1", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "3", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_156_5_fu_102", "Port" : "reg_file_5_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "19", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_190_12_fu_176", "Port" : "reg_file_5_1", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "21", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_199_13_fu_185", "Port" : "reg_file_5_1", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "25", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_210_14_fu_193", "Port" : "reg_file_5_1", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "31", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_216_15_fu_201", "Port" : "reg_file_5_1", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "reg_file_6_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_172_8_VITIS_LOOP_173_9_fu_152", "Port" : "reg_file_6_0", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "17", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_181_10_VITIS_LOOP_182_11_fu_164", "Port" : "reg_file_6_0", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "31", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_216_15_fu_201", "Port" : "reg_file_6_0", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "35", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_222_16_VITIS_LOOP_223_17_fu_215", "Port" : "reg_file_6_0", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "37", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_240_20_VITIS_LOOP_241_21_fu_227", "Port" : "reg_file_6_0", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "41", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_247_22_VITIS_LOOP_248_23_VITIS_LOOP_249_24_fu_239", "Port" : "reg_file_6_0", "Inst_start_state" : "25", "Inst_end_state" : "26"}]},
			{"Name" : "reg_file_6_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_172_8_VITIS_LOOP_173_9_fu_152", "Port" : "reg_file_6_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "17", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_181_10_VITIS_LOOP_182_11_fu_164", "Port" : "reg_file_6_1", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "31", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_216_15_fu_201", "Port" : "reg_file_6_1", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "35", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_222_16_VITIS_LOOP_223_17_fu_215", "Port" : "reg_file_6_1", "Inst_start_state" : "21", "Inst_end_state" : "22"},
					{"ID" : "37", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_240_20_VITIS_LOOP_241_21_fu_227", "Port" : "reg_file_6_1", "Inst_start_state" : "23", "Inst_end_state" : "24"},
					{"ID" : "41", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_247_22_VITIS_LOOP_248_23_VITIS_LOOP_249_24_fu_239", "Port" : "reg_file_6_1", "Inst_start_state" : "25", "Inst_end_state" : "26"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_134_1_fu_94", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_134_1",
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
		"DependenceCheck" : [],
		"Port" : [
			{"Name" : "reg_file_4_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reg_file_4_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_134_1", "PipelineType" : "NotSupport"}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_134_1_fu_94.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_156_5_fu_102", "Parent" : "0", "Child" : ["4"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_156_5",
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
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_156_5", "PipelineType" : "NotSupport"}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_156_5_fu_102.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_232_18_VITIS_LOOP_233_19_fu_110", "Parent" : "0", "Child" : ["6"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_232_18_VITIS_LOOP_233_19",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1010", "EstimateLatencyMax" : "1010",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_28", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_28", "FromFinalSV" : "0", "FromAddress" : "reg_file_3_0_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_43", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_43", "ToFinalSV" : "1", "ToAddress" : "reg_file_3_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:234:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_30", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_30", "FromFinalSV" : "0", "FromAddress" : "reg_file_3_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_45", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_45", "ToFinalSV" : "1", "ToAddress" : "reg_file_3_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:234:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_43", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_43", "FromFinalSV" : "1", "FromAddress" : "reg_file_3_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_28", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_28", "ToFinalSV" : "0", "ToAddress" : "reg_file_3_0_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:234:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_45", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_45", "FromFinalSV" : "1", "FromAddress" : "reg_file_3_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_30", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_30", "ToFinalSV" : "0", "ToAddress" : "reg_file_3_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:234:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_3_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reg_file_3_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_232_18_VITIS_LOOP_233_19", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_232_18_VITIS_LOOP_233_19_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_140_2_VITIS_LOOP_141_3_fu_118", "Parent" : "0", "Child" : ["8"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_140_2_VITIS_LOOP_141_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2051", "EstimateLatencyMax" : "2051",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_30", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_44", "FromFinalSV" : "1", "FromAddress" : "reg_file_4_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_55", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "2", "ToAddress" : "reg_file_4_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:142:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_37", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_47", "FromFinalSV" : "1", "FromAddress" : "reg_file_4_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_57", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "2", "ToAddress" : "reg_file_4_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:142:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_55", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "2", "FromAddress" : "reg_file_4_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_30", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_44", "ToFinalSV" : "1", "ToAddress" : "reg_file_4_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:142:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "2", "FromAddress" : "reg_file_4_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_37", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_47", "ToFinalSV" : "1", "ToAddress" : "reg_file_4_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:142:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_4_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_4_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_2_0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_140_2_VITIS_LOOP_141_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_140_2_VITIS_LOOP_141_3_fu_118.flow_control_loop_pipe_sequential_init_U", "Parent" : "7"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_150_4_fu_130", "Parent" : "0", "Child" : ["10"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_150_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "38", "EstimateLatencyMax" : "38",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reg_file_4_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_4_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "val2_4", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_150_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_150_4_fu_130.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_162_6_VITIS_LOOP_163_7_fu_140", "Parent" : "0", "Child" : ["12"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_162_6_VITIS_LOOP_163_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2052", "EstimateLatencyMax" : "2052",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_41", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_47", "FromFinalSV" : "2", "FromAddress" : "reg_file_2_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_62", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_62", "ToFinalSV" : "3", "ToAddress" : "reg_file_2_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:164:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_44", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_52", "FromFinalSV" : "2", "FromAddress" : "reg_file_2_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_64", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_64", "ToFinalSV" : "3", "ToAddress" : "reg_file_2_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:164:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_62", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_62", "FromFinalSV" : "3", "FromAddress" : "reg_file_2_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_41", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_47", "ToFinalSV" : "2", "ToAddress" : "reg_file_2_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:164:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_64", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_64", "FromFinalSV" : "3", "FromAddress" : "reg_file_2_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter2", "ToInitialOperation" : "ap_enable_operation_44", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_52", "ToFinalSV" : "2", "ToAddress" : "reg_file_2_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:164:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_4_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_4_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_2_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_162_6_VITIS_LOOP_163_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_162_6_VITIS_LOOP_163_7_fu_140.flow_control_loop_pipe_sequential_init_U", "Parent" : "11"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_172_8_VITIS_LOOP_173_9_fu_152", "Parent" : "0", "Child" : ["14", "15", "16"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_172_8_VITIS_LOOP_173_9",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2052", "EstimateLatencyMax" : "2052",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_69", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_69", "FromFinalSV" : "2", "FromAddress" : "reg_file_6_0_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_78", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_78", "ToFinalSV" : "3", "ToAddress" : "reg_file_6_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:174:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_71", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_71", "FromFinalSV" : "2", "FromAddress" : "reg_file_6_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_80", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_80", "ToFinalSV" : "3", "ToAddress" : "reg_file_6_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:174:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_78", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_78", "FromFinalSV" : "3", "FromAddress" : "reg_file_6_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_69", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_69", "ToFinalSV" : "2", "ToAddress" : "reg_file_6_0_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:174:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_80", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_80", "FromFinalSV" : "3", "FromAddress" : "reg_file_6_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_71", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_71", "ToFinalSV" : "2", "ToAddress" : "reg_file_6_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:174:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_6_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reg_file_6_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_2_0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_172_8_VITIS_LOOP_173_9", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_172_8_VITIS_LOOP_173_9_fu_152.mux_21_16_1_1_U57", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_172_8_VITIS_LOOP_173_9_fu_152.mux_21_16_1_1_U58", "Parent" : "13"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_172_8_VITIS_LOOP_173_9_fu_152.flow_control_loop_pipe_sequential_init_U", "Parent" : "13"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_181_10_VITIS_LOOP_182_11_fu_164", "Parent" : "0", "Child" : ["18"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_181_10_VITIS_LOOP_182_11",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2051", "EstimateLatencyMax" : "2051",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_35", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_45", "FromFinalSV" : "1", "FromAddress" : "reg_file_5_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_55", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "2", "ToAddress" : "reg_file_5_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:183:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_39", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_48", "FromFinalSV" : "1", "FromAddress" : "reg_file_5_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_57", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "2", "ToAddress" : "reg_file_5_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:183:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_55", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "2", "FromAddress" : "reg_file_5_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_35", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_45", "ToFinalSV" : "1", "ToAddress" : "reg_file_5_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:183:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_57", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "2", "FromAddress" : "reg_file_5_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_39", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_48", "ToFinalSV" : "1", "ToAddress" : "reg_file_5_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:183:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_6_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_6_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_181_10_VITIS_LOOP_182_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_181_10_VITIS_LOOP_182_11_fu_164.flow_control_loop_pipe_sequential_init_U", "Parent" : "17"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_190_12_fu_176", "Parent" : "0", "Child" : ["20"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_190_12",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "38", "EstimateLatencyMax" : "38",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "val2_4", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_190_12", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_190_12_fu_176.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_199_13_fu_185", "Parent" : "0", "Child" : ["22", "23", "24"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_199_13",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "39", "EstimateLatencyMax" : "39",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_199_13", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_199_13_fu_185.hsqrt_16ns_16_4_no_dsp_1_U75", "Parent" : "21"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_199_13_fu_185.hsqrt_16ns_16_4_no_dsp_1_U76", "Parent" : "21"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_199_13_fu_185.flow_control_loop_pipe_sequential_init_U", "Parent" : "21"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_210_14_fu_193", "Parent" : "0", "Child" : ["26", "27", "28", "29", "30"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_210_14",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "37", "EstimateLatencyMax" : "37",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_210_14", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_210_14_fu_193.fcmp_32ns_32ns_1_2_no_dsp_1_U80", "Parent" : "25"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_210_14_fu_193.fcmp_32ns_32ns_1_2_no_dsp_1_U81", "Parent" : "25"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_210_14_fu_193.hptosp_16ns_32_1_no_dsp_1_U82", "Parent" : "25"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_210_14_fu_193.hptosp_16ns_32_1_no_dsp_1_U83", "Parent" : "25"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_210_14_fu_193.flow_control_loop_pipe_sequential_init_U", "Parent" : "25"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_216_15_fu_201", "Parent" : "0", "Child" : ["32", "33", "34"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_216_15",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19", "EstimateLatencyMax" : "19",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_44", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_44", "FromFinalSV" : "2", "FromAddress" : "reg_file_6_0_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_50", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_50", "ToFinalSV" : "2", "ToAddress" : "reg_file_6_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:217:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_47", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_47", "FromFinalSV" : "2", "FromAddress" : "reg_file_6_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_53", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_53", "ToFinalSV" : "2", "ToAddress" : "reg_file_6_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:217:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_50", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_50", "FromFinalSV" : "2", "FromAddress" : "reg_file_6_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_44", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_44", "ToFinalSV" : "2", "ToAddress" : "reg_file_6_0_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:217:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_53", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_53", "FromFinalSV" : "2", "FromAddress" : "reg_file_6_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_47", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_47", "ToFinalSV" : "2", "ToAddress" : "reg_file_6_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:217:9)", "Type" : "WAW"}],
		"Port" : [
			{"Name" : "reg_file_6_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reg_file_6_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_1_0_load", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_216_15", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_216_15_fu_201.hmul_16ns_16ns_16_2_max_dsp_1_U90", "Parent" : "31"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_216_15_fu_201.hmul_16ns_16ns_16_2_max_dsp_1_U91", "Parent" : "31"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_216_15_fu_201.flow_control_loop_pipe_sequential_init_U", "Parent" : "31"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_222_16_VITIS_LOOP_223_17_fu_215", "Parent" : "0", "Child" : ["36"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_222_16_VITIS_LOOP_223_17",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2054", "EstimateLatencyMax" : "2054",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_36", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_47", "FromFinalSV" : "1", "FromAddress" : "reg_file_2_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_64", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_64", "ToFinalSV" : "5", "ToAddress" : "reg_file_2_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:224:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_40", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_50", "FromFinalSV" : "1", "FromAddress" : "reg_file_2_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_66", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_66", "ToFinalSV" : "5", "ToAddress" : "reg_file_2_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:224:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_64", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_64", "FromFinalSV" : "5", "FromAddress" : "reg_file_2_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_36", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_47", "ToFinalSV" : "1", "ToAddress" : "reg_file_2_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:224:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state6_pp0_iter5_stage0"]},
			{"FromInitialState" : "ap_enable_state6_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_66", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_66", "FromFinalSV" : "5", "FromAddress" : "reg_file_2_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_40", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_50", "ToFinalSV" : "1", "ToAddress" : "reg_file_2_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:224:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state6_pp0_iter5_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_6_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_6_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_2_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_222_16_VITIS_LOOP_223_17", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_222_16_VITIS_LOOP_223_17_fu_215.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_240_20_VITIS_LOOP_241_21_fu_227", "Parent" : "0", "Child" : ["38", "39", "40"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_240_20_VITIS_LOOP_241_21",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2050", "EstimateLatencyMax" : "2050",
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
			{"Name" : "VITIS_LOOP_240_20_VITIS_LOOP_241_21", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_240_20_VITIS_LOOP_241_21_fu_227.mux_21_16_1_1_U105", "Parent" : "37"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_240_20_VITIS_LOOP_241_21_fu_227.mux_21_16_1_1_U106", "Parent" : "37"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_240_20_VITIS_LOOP_241_21_fu_227.flow_control_loop_pipe_sequential_init_U", "Parent" : "37"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_247_22_VITIS_LOOP_248_23_VITIS_LOOP_249_24_fu_239", "Parent" : "0", "Child" : ["42", "43", "44"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_247_22_VITIS_LOOP_248_23_VITIS_LOOP_249_24",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "131078", "EstimateLatencyMax" : "131078",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_105", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state5_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_112", "FromFinalSV" : "4", "FromAddress" : "reg_file_3_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state7_pp0_iter6_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter6", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_126", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state7_pp0_iter6_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter6", "ToFinalOperation" : "ap_enable_operation_126", "ToFinalSV" : "6", "ToAddress" : "reg_file_3_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:250:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_109", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state5_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_115", "FromFinalSV" : "4", "FromAddress" : "reg_file_3_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state7_pp0_iter6_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter6", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_128", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state7_pp0_iter6_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter6", "ToFinalOperation" : "ap_enable_operation_128", "ToFinalSV" : "6", "ToAddress" : "reg_file_3_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:250:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state7_pp0_iter6_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter6", "FromInitialOperation" : "ap_enable_operation_126", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state7_pp0_iter6_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter6", "FromFinalOperation" : "ap_enable_operation_126", "FromFinalSV" : "6", "FromAddress" : "reg_file_3_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_105", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state5_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_112", "ToFinalSV" : "4", "ToAddress" : "reg_file_3_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:250:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state4_pp0_iter3_stage0", "ap_enable_state5_pp0_iter4_stage0", "ap_enable_state7_pp0_iter6_stage0"]},
			{"FromInitialState" : "ap_enable_state7_pp0_iter6_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter6", "FromInitialOperation" : "ap_enable_operation_128", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state7_pp0_iter6_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter6", "FromFinalOperation" : "ap_enable_operation_128", "FromFinalSV" : "6", "FromAddress" : "reg_file_3_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter4", "ToInitialOperation" : "ap_enable_operation_109", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state5_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_115", "ToFinalSV" : "4", "ToAddress" : "reg_file_3_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:250:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state4_pp0_iter3_stage0", "ap_enable_state5_pp0_iter4_stage0", "ap_enable_state7_pp0_iter6_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_6_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_6_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_3_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_3_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_2_0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_247_22_VITIS_LOOP_248_23_VITIS_LOOP_249_24", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_247_22_VITIS_LOOP_248_23_VITIS_LOOP_249_24_fu_239.mux_21_16_1_1_U115", "Parent" : "41"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_247_22_VITIS_LOOP_248_23_VITIS_LOOP_249_24_fu_239.mux_21_16_1_1_U116", "Parent" : "41"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_247_22_VITIS_LOOP_248_23_VITIS_LOOP_249_24_fu_239.flow_control_loop_pipe_sequential_init_U", "Parent" : "41"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_263_25_fu_255", "Parent" : "0", "Child" : ["46"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_263_25",
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
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_16", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_16", "FromFinalSV" : "0", "FromAddress" : "reg_file_3_0_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_33", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_33", "ToFinalSV" : "1", "ToAddress" : "reg_file_3_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:264:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_20", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state1_pp0_iter0_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter0", "FromFinalOperation" : "ap_enable_operation_20", "FromFinalSV" : "0", "FromAddress" : "reg_file_3_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state2_pp0_iter1_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter1", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_38", "ToInitialSV" : "1", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_38", "ToFinalSV" : "1", "ToAddress" : "reg_file_3_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:264:9)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_33", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_33", "FromFinalSV" : "1", "FromAddress" : "reg_file_3_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_16", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_16", "ToFinalSV" : "0", "ToAddress" : "reg_file_3_0_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:264:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]},
			{"FromInitialState" : "ap_enable_state2_pp0_iter1_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter1", "FromInitialOperation" : "ap_enable_operation_38", "FromInitialSV" : "1", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_38", "FromFinalSV" : "1", "FromAddress" : "reg_file_3_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_20", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state1_pp0_iter0_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter0", "ToFinalOperation" : "ap_enable_operation_20", "ToFinalSV" : "0", "ToAddress" : "reg_file_3_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(correlation-max-throughput/src/correlation.cpp:264:9)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_3_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reg_file_3_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_263_25", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter1", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_263_25_fu_255.flow_control_loop_pipe_sequential_init_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hadd_16ns_16ns_16_2_full_dsp_1_U125", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hadd_16ns_16ns_16_2_full_dsp_1_U126", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hdiv_16ns_16ns_16_5_no_dsp_1_U127", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hdiv_16ns_16ns_16_5_no_dsp_1_U128", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hmul_16ns_16ns_16_2_max_dsp_1_U129", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hmul_16ns_16ns_16_2_max_dsp_1_U130", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute {
		reg_file_0_0 {Type I LastRead 3 FirstWrite -1}
		reg_file_1_0 {Type I LastRead 17 FirstWrite -1}
		reg_file_2_0 {Type IO LastRead 2 FirstWrite -1}
		reg_file_2_1 {Type IO LastRead 2 FirstWrite -1}
		reg_file_3_0 {Type IO LastRead 3 FirstWrite 0}
		reg_file_3_1 {Type IO LastRead 3 FirstWrite 0}
		reg_file_4_0 {Type IO LastRead 0 FirstWrite -1}
		reg_file_4_1 {Type IO LastRead 0 FirstWrite -1}
		reg_file_5_0 {Type IO LastRead 1 FirstWrite -1}
		reg_file_5_1 {Type IO LastRead 1 FirstWrite -1}
		reg_file_6_0 {Type IO LastRead 3 FirstWrite -1}
		reg_file_6_1 {Type IO LastRead 3 FirstWrite -1}}
	compute_Pipeline_VITIS_LOOP_134_1 {
		reg_file_4_1 {Type O LastRead -1 FirstWrite 0}
		reg_file_4_0 {Type O LastRead -1 FirstWrite 0}}
	compute_Pipeline_VITIS_LOOP_156_5 {
		reg_file_5_1 {Type O LastRead -1 FirstWrite 0}
		reg_file_5_0 {Type O LastRead -1 FirstWrite 0}}
	compute_Pipeline_VITIS_LOOP_232_18_VITIS_LOOP_233_19 {
		reg_file_3_1 {Type O LastRead -1 FirstWrite 0}
		reg_file_3_0 {Type O LastRead -1 FirstWrite 0}}
	compute_Pipeline_VITIS_LOOP_140_2_VITIS_LOOP_141_3 {
		reg_file_4_1 {Type IO LastRead 0 FirstWrite 2}
		reg_file_4_0 {Type IO LastRead 0 FirstWrite 2}
		reg_file_2_1 {Type I LastRead 0 FirstWrite -1}
		reg_file_2_0 {Type I LastRead 0 FirstWrite -1}}
	compute_Pipeline_VITIS_LOOP_150_4 {
		reg_file_4_1 {Type IO LastRead 0 FirstWrite 5}
		reg_file_4_0 {Type IO LastRead 0 FirstWrite 5}
		val2_4 {Type I LastRead 0 FirstWrite -1}}
	compute_Pipeline_VITIS_LOOP_162_6_VITIS_LOOP_163_7 {
		reg_file_4_1 {Type I LastRead 0 FirstWrite -1}
		reg_file_4_0 {Type I LastRead 0 FirstWrite -1}
		reg_file_2_1 {Type IO LastRead 1 FirstWrite 3}
		reg_file_2_0 {Type IO LastRead 1 FirstWrite 3}}
	compute_Pipeline_VITIS_LOOP_172_8_VITIS_LOOP_173_9 {
		reg_file_6_1 {Type O LastRead -1 FirstWrite 2}
		reg_file_6_0 {Type O LastRead -1 FirstWrite 2}
		reg_file_2_1 {Type I LastRead 1 FirstWrite -1}
		reg_file_2_0 {Type I LastRead 1 FirstWrite -1}}
	compute_Pipeline_VITIS_LOOP_181_10_VITIS_LOOP_182_11 {
		reg_file_6_1 {Type I LastRead 0 FirstWrite -1}
		reg_file_6_0 {Type I LastRead 0 FirstWrite -1}
		reg_file_5_1 {Type IO LastRead 0 FirstWrite 2}
		reg_file_5_0 {Type IO LastRead 0 FirstWrite 2}}
	compute_Pipeline_VITIS_LOOP_190_12 {
		reg_file_5_1 {Type IO LastRead 0 FirstWrite 5}
		reg_file_5_0 {Type IO LastRead 0 FirstWrite 5}
		val2_4 {Type I LastRead 0 FirstWrite -1}}
	compute_Pipeline_VITIS_LOOP_199_13 {
		reg_file_5_1 {Type IO LastRead 0 FirstWrite 6}
		reg_file_5_0 {Type IO LastRead 0 FirstWrite 6}}
	compute_Pipeline_VITIS_LOOP_210_14 {
		reg_file_5_1 {Type IO LastRead 0 FirstWrite 4}
		reg_file_5_0 {Type IO LastRead 0 FirstWrite 4}}
	compute_Pipeline_VITIS_LOOP_216_15 {
		reg_file_6_1 {Type O LastRead -1 FirstWrite 2}
		reg_file_6_0 {Type O LastRead -1 FirstWrite 2}
		reg_file_5_1 {Type I LastRead 1 FirstWrite -1}
		reg_file_5_0 {Type I LastRead 1 FirstWrite -1}
		reg_file_1_0_load {Type I LastRead 0 FirstWrite -1}}
	compute_Pipeline_VITIS_LOOP_222_16_VITIS_LOOP_223_17 {
		reg_file_6_1 {Type I LastRead 0 FirstWrite -1}
		reg_file_6_0 {Type I LastRead 0 FirstWrite -1}
		reg_file_2_1 {Type IO LastRead 0 FirstWrite 5}
		reg_file_2_0 {Type IO LastRead 0 FirstWrite 5}}
	compute_Pipeline_VITIS_LOOP_240_20_VITIS_LOOP_241_21 {
		reg_file_6_1 {Type O LastRead -1 FirstWrite 1}
		reg_file_6_0 {Type O LastRead -1 FirstWrite 1}
		reg_file_2_1 {Type I LastRead 1 FirstWrite -1}
		reg_file_2_0 {Type I LastRead 1 FirstWrite -1}}
	compute_Pipeline_VITIS_LOOP_247_22_VITIS_LOOP_248_23_VITIS_LOOP_249_24 {
		reg_file_6_0 {Type I LastRead 3 FirstWrite -1}
		reg_file_6_1 {Type I LastRead 3 FirstWrite -1}
		reg_file_3_1 {Type IO LastRead 3 FirstWrite 6}
		reg_file_3_0 {Type IO LastRead 3 FirstWrite 6}
		reg_file_2_1 {Type I LastRead 2 FirstWrite -1}
		reg_file_2_0 {Type I LastRead 2 FirstWrite -1}}
	compute_Pipeline_VITIS_LOOP_263_25 {
		reg_file_3_1 {Type O LastRead -1 FirstWrite 0}
		reg_file_3_0 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "144614", "Max" : "144614"}
	, {"Name" : "Interval", "Min" : "144614", "Max" : "144614"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	reg_file_0_0 { ap_memory {  { reg_file_0_0_address0 mem_address 1 11 }  { reg_file_0_0_ce0 mem_ce 1 1 }  { reg_file_0_0_q0 mem_dout 0 16 } } }
	reg_file_1_0 { ap_memory {  { reg_file_1_0_address0 mem_address 1 11 }  { reg_file_1_0_ce0 mem_ce 1 1 }  { reg_file_1_0_q0 mem_dout 0 16 } } }
	reg_file_2_0 { ap_memory {  { reg_file_2_0_address0 mem_address 1 11 }  { reg_file_2_0_ce0 mem_ce 1 1 }  { reg_file_2_0_we0 mem_we 1 1 }  { reg_file_2_0_d0 mem_din 1 16 }  { reg_file_2_0_q0 mem_dout 0 16 }  { reg_file_2_0_address1 MemPortADDR2 1 11 }  { reg_file_2_0_ce1 MemPortCE2 1 1 }  { reg_file_2_0_q1 MemPortDOUT2 0 16 } } }
	reg_file_2_1 { ap_memory {  { reg_file_2_1_address0 mem_address 1 11 }  { reg_file_2_1_ce0 mem_ce 1 1 }  { reg_file_2_1_we0 mem_we 1 1 }  { reg_file_2_1_d0 mem_din 1 16 }  { reg_file_2_1_q0 mem_dout 0 16 }  { reg_file_2_1_address1 MemPortADDR2 1 11 }  { reg_file_2_1_ce1 MemPortCE2 1 1 }  { reg_file_2_1_q1 MemPortDOUT2 0 16 } } }
	reg_file_3_0 { ap_memory {  { reg_file_3_0_address0 mem_address 1 11 }  { reg_file_3_0_ce0 mem_ce 1 1 }  { reg_file_3_0_we0 mem_we 1 1 }  { reg_file_3_0_d0 mem_din 1 16 }  { reg_file_3_0_address1 MemPortADDR2 1 11 }  { reg_file_3_0_ce1 MemPortCE2 1 1 }  { reg_file_3_0_we1 MemPortWE2 1 1 }  { reg_file_3_0_d1 MemPortDIN2 1 16 }  { reg_file_3_0_q1 MemPortDOUT2 0 16 } } }
	reg_file_3_1 { ap_memory {  { reg_file_3_1_address0 mem_address 1 11 }  { reg_file_3_1_ce0 mem_ce 1 1 }  { reg_file_3_1_we0 mem_we 1 1 }  { reg_file_3_1_d0 mem_din 1 16 }  { reg_file_3_1_address1 MemPortADDR2 1 11 }  { reg_file_3_1_ce1 MemPortCE2 1 1 }  { reg_file_3_1_we1 MemPortWE2 1 1 }  { reg_file_3_1_d1 MemPortDIN2 1 16 }  { reg_file_3_1_q1 MemPortDOUT2 0 16 } } }
	reg_file_4_0 { ap_memory {  { reg_file_4_0_address0 mem_address 1 11 }  { reg_file_4_0_ce0 mem_ce 1 1 }  { reg_file_4_0_we0 mem_we 1 1 }  { reg_file_4_0_d0 mem_din 1 16 }  { reg_file_4_0_q0 mem_dout 0 16 }  { reg_file_4_0_address1 MemPortADDR2 1 11 }  { reg_file_4_0_ce1 MemPortCE2 1 1 }  { reg_file_4_0_we1 MemPortWE2 1 1 }  { reg_file_4_0_d1 MemPortDIN2 1 16 }  { reg_file_4_0_q1 MemPortDOUT2 0 16 } } }
	reg_file_4_1 { ap_memory {  { reg_file_4_1_address0 mem_address 1 11 }  { reg_file_4_1_ce0 mem_ce 1 1 }  { reg_file_4_1_we0 mem_we 1 1 }  { reg_file_4_1_d0 mem_din 1 16 }  { reg_file_4_1_q0 mem_dout 0 16 }  { reg_file_4_1_address1 MemPortADDR2 1 11 }  { reg_file_4_1_ce1 MemPortCE2 1 1 }  { reg_file_4_1_we1 MemPortWE2 1 1 }  { reg_file_4_1_d1 MemPortDIN2 1 16 }  { reg_file_4_1_q1 MemPortDOUT2 0 16 } } }
	reg_file_5_0 { ap_memory {  { reg_file_5_0_address0 mem_address 1 11 }  { reg_file_5_0_ce0 mem_ce 1 1 }  { reg_file_5_0_we0 mem_we 1 1 }  { reg_file_5_0_d0 mem_din 1 16 }  { reg_file_5_0_q0 mem_dout 0 16 }  { reg_file_5_0_address1 MemPortADDR2 1 11 }  { reg_file_5_0_ce1 MemPortCE2 1 1 }  { reg_file_5_0_q1 MemPortDOUT2 0 16 } } }
	reg_file_5_1 { ap_memory {  { reg_file_5_1_address0 mem_address 1 11 }  { reg_file_5_1_ce0 mem_ce 1 1 }  { reg_file_5_1_we0 mem_we 1 1 }  { reg_file_5_1_d0 mem_din 1 16 }  { reg_file_5_1_q0 mem_dout 0 16 }  { reg_file_5_1_address1 MemPortADDR2 1 11 }  { reg_file_5_1_ce1 MemPortCE2 1 1 }  { reg_file_5_1_q1 MemPortDOUT2 0 16 } } }
	reg_file_6_0 { ap_memory {  { reg_file_6_0_address0 mem_address 1 11 }  { reg_file_6_0_ce0 mem_ce 1 1 }  { reg_file_6_0_we0 mem_we 1 1 }  { reg_file_6_0_d0 mem_din 1 16 }  { reg_file_6_0_q0 mem_dout 0 16 }  { reg_file_6_0_address1 MemPortADDR2 1 11 }  { reg_file_6_0_ce1 MemPortCE2 1 1 }  { reg_file_6_0_we1 MemPortWE2 1 1 }  { reg_file_6_0_d1 MemPortDIN2 1 16 } } }
	reg_file_6_1 { ap_memory {  { reg_file_6_1_address0 mem_address 1 11 }  { reg_file_6_1_ce0 mem_ce 1 1 }  { reg_file_6_1_we0 mem_we 1 1 }  { reg_file_6_1_d0 mem_din 1 16 }  { reg_file_6_1_q0 mem_dout 0 16 }  { reg_file_6_1_address1 MemPortADDR2 1 11 }  { reg_file_6_1_ce1 MemPortCE2 1 1 }  { reg_file_6_1_we1 MemPortWE2 1 1 }  { reg_file_6_1_d1 MemPortDIN2 1 16 } } }
}
