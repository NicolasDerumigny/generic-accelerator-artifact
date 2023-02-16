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
 	{ "Name" : "reg_file_4_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "reg_file_4_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "reg_file_5_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "reg_file_5_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "reg_file_6_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "reg_file_6_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 70
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
	{ reg_file_4_0_address0 sc_out sc_lv 11 signal 4 } 
	{ reg_file_4_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ reg_file_4_0_we0 sc_out sc_logic 1 signal 4 } 
	{ reg_file_4_0_d0 sc_out sc_lv 16 signal 4 } 
	{ reg_file_4_0_q0 sc_in sc_lv 16 signal 4 } 
	{ reg_file_4_0_address1 sc_out sc_lv 11 signal 4 } 
	{ reg_file_4_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ reg_file_4_0_q1 sc_in sc_lv 16 signal 4 } 
	{ reg_file_4_1_address0 sc_out sc_lv 11 signal 5 } 
	{ reg_file_4_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ reg_file_4_1_we0 sc_out sc_logic 1 signal 5 } 
	{ reg_file_4_1_d0 sc_out sc_lv 16 signal 5 } 
	{ reg_file_4_1_q0 sc_in sc_lv 16 signal 5 } 
	{ reg_file_4_1_address1 sc_out sc_lv 11 signal 5 } 
	{ reg_file_4_1_ce1 sc_out sc_logic 1 signal 5 } 
	{ reg_file_4_1_q1 sc_in sc_lv 16 signal 5 } 
	{ reg_file_5_0_address0 sc_out sc_lv 11 signal 6 } 
	{ reg_file_5_0_ce0 sc_out sc_logic 1 signal 6 } 
	{ reg_file_5_0_we0 sc_out sc_logic 1 signal 6 } 
	{ reg_file_5_0_d0 sc_out sc_lv 16 signal 6 } 
	{ reg_file_5_0_q0 sc_in sc_lv 16 signal 6 } 
	{ reg_file_5_0_address1 sc_out sc_lv 11 signal 6 } 
	{ reg_file_5_0_ce1 sc_out sc_logic 1 signal 6 } 
	{ reg_file_5_0_q1 sc_in sc_lv 16 signal 6 } 
	{ reg_file_5_1_address0 sc_out sc_lv 11 signal 7 } 
	{ reg_file_5_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ reg_file_5_1_we0 sc_out sc_logic 1 signal 7 } 
	{ reg_file_5_1_d0 sc_out sc_lv 16 signal 7 } 
	{ reg_file_5_1_q0 sc_in sc_lv 16 signal 7 } 
	{ reg_file_5_1_address1 sc_out sc_lv 11 signal 7 } 
	{ reg_file_5_1_ce1 sc_out sc_logic 1 signal 7 } 
	{ reg_file_5_1_q1 sc_in sc_lv 16 signal 7 } 
	{ reg_file_6_0_address0 sc_out sc_lv 11 signal 8 } 
	{ reg_file_6_0_ce0 sc_out sc_logic 1 signal 8 } 
	{ reg_file_6_0_we0 sc_out sc_logic 1 signal 8 } 
	{ reg_file_6_0_d0 sc_out sc_lv 16 signal 8 } 
	{ reg_file_6_0_q0 sc_in sc_lv 16 signal 8 } 
	{ reg_file_6_1_address0 sc_out sc_lv 11 signal 9 } 
	{ reg_file_6_1_ce0 sc_out sc_logic 1 signal 9 } 
	{ reg_file_6_1_we0 sc_out sc_logic 1 signal 9 } 
	{ reg_file_6_1_d0 sc_out sc_lv 16 signal 9 } 
	{ reg_file_6_1_q0 sc_in sc_lv 16 signal 9 } 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3", "5", "9", "12", "16", "19", "23", "26", "30", "35", "38", "42", "43", "44"],
		"CDFG" : "compute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "20935", "EstimateLatencyMax" : "20935",
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
					{"ID" : "16", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_182_8_VITIS_LOOP_183_9_fu_132", "Port" : "reg_file_2_0", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "12", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_170_6_VITIS_LOOP_171_7_fu_120", "Port" : "reg_file_2_0", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_142_2_VITIS_LOOP_143_3_fu_98", "Port" : "reg_file_2_0", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "38", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_243_16_VITIS_LOOP_244_17_fu_195", "Port" : "reg_file_2_0", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_182_8_VITIS_LOOP_183_9_fu_132", "Port" : "reg_file_2_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "12", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_170_6_VITIS_LOOP_171_7_fu_120", "Port" : "reg_file_2_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_142_2_VITIS_LOOP_143_3_fu_98", "Port" : "reg_file_2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"},
					{"ID" : "38", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_243_16_VITIS_LOOP_244_17_fu_195", "Port" : "reg_file_2_1", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "reg_file_4_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_154_4_fu_110", "Port" : "reg_file_4_0", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "1", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_134_1_fu_82", "Port" : "reg_file_4_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "12", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_170_6_VITIS_LOOP_171_7_fu_120", "Port" : "reg_file_4_0", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_142_2_VITIS_LOOP_143_3_fu_98", "Port" : "reg_file_4_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "reg_file_4_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_154_4_fu_110", "Port" : "reg_file_4_1", "Inst_start_state" : "5", "Inst_end_state" : "6"},
					{"ID" : "1", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_134_1_fu_82", "Port" : "reg_file_4_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "12", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_170_6_VITIS_LOOP_171_7_fu_120", "Port" : "reg_file_4_1", "Inst_start_state" : "7", "Inst_end_state" : "8"},
					{"ID" : "5", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_142_2_VITIS_LOOP_143_3_fu_98", "Port" : "reg_file_4_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_193_10_VITIS_LOOP_194_11_fu_144", "Port" : "reg_file_5_0", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "23", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_204_12_fu_156", "Port" : "reg_file_5_0", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "3", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_162_5_fu_90", "Port" : "reg_file_5_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "26", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_215_13_fu_165", "Port" : "reg_file_5_0", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "30", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_227_14_fu_173", "Port" : "reg_file_5_0", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "35", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_235_15_fu_181", "Port" : "reg_file_5_0", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "19", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_193_10_VITIS_LOOP_194_11_fu_144", "Port" : "reg_file_5_1", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "23", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_204_12_fu_156", "Port" : "reg_file_5_1", "Inst_start_state" : "13", "Inst_end_state" : "14"},
					{"ID" : "3", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_162_5_fu_90", "Port" : "reg_file_5_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "26", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_215_13_fu_165", "Port" : "reg_file_5_1", "Inst_start_state" : "15", "Inst_end_state" : "16"},
					{"ID" : "30", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_227_14_fu_173", "Port" : "reg_file_5_1", "Inst_start_state" : "17", "Inst_end_state" : "18"},
					{"ID" : "35", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_235_15_fu_181", "Port" : "reg_file_5_1", "Inst_start_state" : "19", "Inst_end_state" : "20"}]},
			{"Name" : "reg_file_6_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_182_8_VITIS_LOOP_183_9_fu_132", "Port" : "reg_file_6_0", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "19", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_193_10_VITIS_LOOP_194_11_fu_144", "Port" : "reg_file_6_0", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "35", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_235_15_fu_181", "Port" : "reg_file_6_0", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "38", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_243_16_VITIS_LOOP_244_17_fu_195", "Port" : "reg_file_6_0", "Inst_start_state" : "21", "Inst_end_state" : "22"}]},
			{"Name" : "reg_file_6_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_182_8_VITIS_LOOP_183_9_fu_132", "Port" : "reg_file_6_1", "Inst_start_state" : "9", "Inst_end_state" : "10"},
					{"ID" : "19", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_193_10_VITIS_LOOP_194_11_fu_144", "Port" : "reg_file_6_1", "Inst_start_state" : "11", "Inst_end_state" : "12"},
					{"ID" : "35", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_235_15_fu_181", "Port" : "reg_file_6_1", "Inst_start_state" : "19", "Inst_end_state" : "20"},
					{"ID" : "38", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_243_16_VITIS_LOOP_244_17_fu_195", "Port" : "reg_file_6_1", "Inst_start_state" : "21", "Inst_end_state" : "22"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_134_1_fu_82", "Parent" : "0", "Child" : ["2"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_134_1_fu_82.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_162_5_fu_90", "Parent" : "0", "Child" : ["4"],
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
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_162_5_fu_90.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_142_2_VITIS_LOOP_143_3_fu_98", "Parent" : "0", "Child" : ["6", "7", "8"],
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
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_36", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "1", "FromAddress" : "reg_file_4_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_69", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_69", "ToFinalSV" : "3", "ToAddress" : "reg_file_4_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:144:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_37", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_58", "FromFinalSV" : "1", "FromAddress" : "reg_file_4_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_71", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_71", "ToFinalSV" : "3", "ToAddress" : "reg_file_4_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:144:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_69", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_69", "FromFinalSV" : "3", "FromAddress" : "reg_file_4_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_36", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "1", "ToAddress" : "reg_file_4_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:144:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_71", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_71", "FromFinalSV" : "3", "FromAddress" : "reg_file_4_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_37", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_58", "ToFinalSV" : "1", "ToAddress" : "reg_file_4_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:144:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state4_pp0_iter3_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_4_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_4_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_2_0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_142_2_VITIS_LOOP_143_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_142_2_VITIS_LOOP_143_3_fu_98.mux_21_16_1_1_U37", "Parent" : "5"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_142_2_VITIS_LOOP_143_3_fu_98.mux_21_16_1_1_U38", "Parent" : "5"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_142_2_VITIS_LOOP_143_3_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "5"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_154_4_fu_110", "Parent" : "0", "Child" : ["10", "11"],
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
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_28", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_39", "FromFinalSV" : "1", "FromAddress" : "reg_file_4_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_49", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_49", "ToFinalSV" : "5", "ToAddress" : "reg_file_4_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:155:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_29", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_40", "FromFinalSV" : "1", "FromAddress" : "reg_file_4_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_51", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_51", "ToFinalSV" : "5", "ToAddress" : "reg_file_4_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:155:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_49", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_49", "FromFinalSV" : "5", "FromAddress" : "reg_file_4_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_28", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_39", "ToFinalSV" : "1", "ToAddress" : "reg_file_4_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:155:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state6_pp0_iter5_stage0"]},
			{"FromInitialState" : "ap_enable_state6_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_51", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_51", "FromFinalSV" : "5", "FromAddress" : "reg_file_4_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_29", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_40", "ToFinalSV" : "1", "ToAddress" : "reg_file_4_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:155:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state6_pp0_iter5_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_4_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_4_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "val2_2", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_154_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_154_4_fu_110.mux_21_16_1_1_U45", "Parent" : "9"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_154_4_fu_110.flow_control_loop_pipe_sequential_init_U", "Parent" : "9"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_170_6_VITIS_LOOP_171_7_fu_120", "Parent" : "0", "Child" : ["13", "14", "15"],
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
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_39", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_57", "FromFinalSV" : "1", "FromAddress" : "reg_file_2_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_72", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_72", "ToFinalSV" : "3", "ToAddress" : "reg_file_2_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:172:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_40", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_58", "FromFinalSV" : "1", "FromAddress" : "reg_file_2_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_74", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_74", "ToFinalSV" : "3", "ToAddress" : "reg_file_2_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:172:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_72", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_72", "FromFinalSV" : "3", "FromAddress" : "reg_file_2_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_39", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_57", "ToFinalSV" : "1", "ToAddress" : "reg_file_2_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:172:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_74", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_74", "FromFinalSV" : "3", "FromAddress" : "reg_file_2_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_40", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_58", "ToFinalSV" : "1", "ToAddress" : "reg_file_2_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:172:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state4_pp0_iter3_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_4_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_4_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_2_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_170_6_VITIS_LOOP_171_7", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_170_6_VITIS_LOOP_171_7_fu_120.mux_21_16_1_1_U52", "Parent" : "12"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_170_6_VITIS_LOOP_171_7_fu_120.mux_21_16_1_1_U53", "Parent" : "12"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_170_6_VITIS_LOOP_171_7_fu_120.flow_control_loop_pipe_sequential_init_U", "Parent" : "12"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_182_8_VITIS_LOOP_183_9_fu_132", "Parent" : "0", "Child" : ["17", "18"],
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
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_182_8_VITIS_LOOP_183_9_fu_132.mux_21_16_1_1_U59", "Parent" : "16"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_182_8_VITIS_LOOP_183_9_fu_132.flow_control_loop_pipe_sequential_init_U", "Parent" : "16"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_193_10_VITIS_LOOP_194_11_fu_144", "Parent" : "0", "Child" : ["20", "21", "22"],
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
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_43", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_60", "FromFinalSV" : "1", "FromAddress" : "reg_file_5_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_69", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_69", "ToFinalSV" : "3", "ToAddress" : "reg_file_5_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_44", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_61", "FromFinalSV" : "1", "FromAddress" : "reg_file_5_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state4_pp0_iter3_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter3", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_71", "ToInitialSV" : "3", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_71", "ToFinalSV" : "3", "ToAddress" : "reg_file_5_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:195:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_69", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_69", "FromFinalSV" : "3", "FromAddress" : "reg_file_5_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_43", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_60", "ToFinalSV" : "1", "ToAddress" : "reg_file_5_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:195:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state4_pp0_iter3_stage0"]},
			{"FromInitialState" : "ap_enable_state4_pp0_iter3_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter3", "FromInitialOperation" : "ap_enable_operation_71", "FromInitialSV" : "3", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_71", "FromFinalSV" : "3", "FromAddress" : "reg_file_5_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_44", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_61", "ToFinalSV" : "1", "ToAddress" : "reg_file_5_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:195:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state4_pp0_iter3_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_6_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_6_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_193_10_VITIS_LOOP_194_11", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_193_10_VITIS_LOOP_194_11_fu_144.mux_21_16_1_1_U65", "Parent" : "19"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_193_10_VITIS_LOOP_194_11_fu_144.mux_21_16_1_1_U66", "Parent" : "19"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_193_10_VITIS_LOOP_194_11_fu_144.flow_control_loop_pipe_sequential_init_U", "Parent" : "19"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_204_12_fu_156", "Parent" : "0", "Child" : ["24", "25"],
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
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_28", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_39", "FromFinalSV" : "1", "FromAddress" : "reg_file_5_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_49", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_49", "ToFinalSV" : "5", "ToAddress" : "reg_file_5_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:205:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_29", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_40", "FromFinalSV" : "1", "FromAddress" : "reg_file_5_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_51", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_51", "ToFinalSV" : "5", "ToAddress" : "reg_file_5_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:205:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_49", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_49", "FromFinalSV" : "5", "FromAddress" : "reg_file_5_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_28", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_39", "ToFinalSV" : "1", "ToAddress" : "reg_file_5_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:205:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state6_pp0_iter5_stage0"]},
			{"FromInitialState" : "ap_enable_state6_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_51", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_51", "FromFinalSV" : "5", "FromAddress" : "reg_file_5_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_29", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_40", "ToFinalSV" : "1", "ToAddress" : "reg_file_5_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:205:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state6_pp0_iter5_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "val2_2", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_204_12", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_204_12_fu_156.mux_21_16_1_1_U72", "Parent" : "23"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_204_12_fu_156.flow_control_loop_pipe_sequential_init_U", "Parent" : "23"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_215_13_fu_165", "Parent" : "0", "Child" : ["27", "28", "29"],
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
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_28", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_39", "FromFinalSV" : "1", "FromAddress" : "reg_file_5_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state7_pp0_iter6_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter6", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_48", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state7_pp0_iter6_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter6", "ToFinalOperation" : "ap_enable_operation_48", "ToFinalSV" : "6", "ToAddress" : "reg_file_5_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:216:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_29", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_40", "FromFinalSV" : "1", "FromAddress" : "reg_file_5_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state7_pp0_iter6_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter6", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_50", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state7_pp0_iter6_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter6", "ToFinalOperation" : "ap_enable_operation_50", "ToFinalSV" : "6", "ToAddress" : "reg_file_5_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:216:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state7_pp0_iter6_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter6", "FromInitialOperation" : "ap_enable_operation_48", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state7_pp0_iter6_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter6", "FromFinalOperation" : "ap_enable_operation_48", "FromFinalSV" : "6", "FromAddress" : "reg_file_5_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_28", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_39", "ToFinalSV" : "1", "ToAddress" : "reg_file_5_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:216:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state7_pp0_iter6_stage0"]},
			{"FromInitialState" : "ap_enable_state7_pp0_iter6_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter6", "FromInitialOperation" : "ap_enable_operation_50", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state7_pp0_iter6_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter6", "FromFinalOperation" : "ap_enable_operation_50", "FromFinalSV" : "6", "FromAddress" : "reg_file_5_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_29", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_40", "ToFinalSV" : "1", "ToAddress" : "reg_file_5_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:216:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state7_pp0_iter6_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_215_13", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_215_13_fu_165.hsqrt_16ns_16_4_no_dsp_1_U76", "Parent" : "26"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_215_13_fu_165.mux_21_16_1_1_U77", "Parent" : "26"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_215_13_fu_165.flow_control_loop_pipe_sequential_init_U", "Parent" : "26"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_227_14_fu_173", "Parent" : "0", "Child" : ["31", "32", "33", "34"],
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
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_26", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_37", "FromFinalSV" : "1", "FromAddress" : "reg_file_5_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state5_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_53", "ToInitialSV" : "4", "ToFinalState" : "ap_enable_state5_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_53", "ToFinalSV" : "4", "ToAddress" : "reg_file_5_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:228:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_27", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_38", "FromFinalSV" : "1", "FromAddress" : "reg_file_5_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state5_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_55", "ToInitialSV" : "4", "ToFinalState" : "ap_enable_state5_pp0_iter4_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter4", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "4", "ToAddress" : "reg_file_5_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:228:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state5_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_53", "FromInitialSV" : "4", "FromFinalState" : "ap_enable_state5_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_53", "FromFinalSV" : "4", "FromAddress" : "reg_file_5_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_26", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_37", "ToFinalSV" : "1", "ToAddress" : "reg_file_5_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:228:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state5_pp0_iter4_stage0"]},
			{"FromInitialState" : "ap_enable_state5_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_55", "FromInitialSV" : "4", "FromFinalState" : "ap_enable_state5_pp0_iter4_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter4", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "4", "FromAddress" : "reg_file_5_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_27", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_38", "ToFinalSV" : "1", "ToAddress" : "reg_file_5_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:228:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state5_pp0_iter4_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_227_14", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_227_14_fu_173.fcmp_32ns_32ns_1_2_no_dsp_1_U81", "Parent" : "30"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_227_14_fu_173.hptosp_16ns_32_1_no_dsp_1_U82", "Parent" : "30"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_227_14_fu_173.mux_21_16_1_1_U83", "Parent" : "30"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_227_14_fu_173.flow_control_loop_pipe_sequential_init_U", "Parent" : "30"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_235_15_fu_181", "Parent" : "0", "Child" : ["36", "37"],
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
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_235_15_fu_181.mux_21_16_1_1_U89", "Parent" : "35"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_235_15_fu_181.flow_control_loop_pipe_sequential_init_U", "Parent" : "35"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_243_16_VITIS_LOOP_244_17_fu_195", "Parent" : "0", "Child" : ["39", "40", "41"],
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
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_41", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_59", "FromFinalSV" : "1", "FromAddress" : "reg_file_2_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_74", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_74", "ToFinalSV" : "5", "ToAddress" : "reg_file_2_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:245:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_42", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_60", "FromFinalSV" : "1", "FromAddress" : "reg_file_2_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_76", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_76", "ToFinalSV" : "5", "ToAddress" : "reg_file_2_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:245:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_74", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_74", "FromFinalSV" : "5", "FromAddress" : "reg_file_2_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_41", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_59", "ToFinalSV" : "1", "ToAddress" : "reg_file_2_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:245:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state6_pp0_iter5_stage0"]},
			{"FromInitialState" : "ap_enable_state6_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_76", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_76", "FromFinalSV" : "5", "FromAddress" : "reg_file_2_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_42", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_60", "ToFinalSV" : "1", "ToAddress" : "reg_file_2_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(center-reduced-max-sharing/src/correlation.cpp:245:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state6_pp0_iter5_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_6_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_6_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_2_0", "Type" : "Memory", "Direction" : "IO"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_243_16_VITIS_LOOP_244_17", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_243_16_VITIS_LOOP_244_17_fu_195.mux_21_16_1_1_U96", "Parent" : "38"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_243_16_VITIS_LOOP_244_17_fu_195.mux_21_16_1_1_U97", "Parent" : "38"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_243_16_VITIS_LOOP_244_17_fu_195.flow_control_loop_pipe_sequential_init_U", "Parent" : "38"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hadd_16ns_16ns_16_2_full_dsp_1_U102", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hdiv_16ns_16ns_16_5_no_dsp_1_U103", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hmul_16ns_16ns_16_2_max_dsp_1_U104", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute {
		reg_file_0_0 {Type I LastRead 3 FirstWrite -1}
		reg_file_1_0 {Type I LastRead 17 FirstWrite -1}
		reg_file_2_0 {Type IO LastRead 0 FirstWrite -1}
		reg_file_2_1 {Type IO LastRead 0 FirstWrite -1}
		reg_file_4_0 {Type IO LastRead 0 FirstWrite -1}
		reg_file_4_1 {Type IO LastRead 0 FirstWrite -1}
		reg_file_5_0 {Type IO LastRead 0 FirstWrite -1}
		reg_file_5_1 {Type IO LastRead 0 FirstWrite -1}
		reg_file_6_0 {Type IO LastRead 0 FirstWrite -1}
		reg_file_6_1 {Type IO LastRead 0 FirstWrite -1}}
	compute_Pipeline_VITIS_LOOP_134_1 {
		reg_file_4_1 {Type O LastRead -1 FirstWrite 0}
		reg_file_4_0 {Type O LastRead -1 FirstWrite 0}}
	compute_Pipeline_VITIS_LOOP_162_5 {
		reg_file_5_1 {Type O LastRead -1 FirstWrite 0}
		reg_file_5_0 {Type O LastRead -1 FirstWrite 0}}
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
		reg_file_2_0 {Type IO LastRead 0 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "20935", "Max" : "20935"}
	, {"Name" : "Interval", "Min" : "20935", "Max" : "20935"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	reg_file_0_0 { ap_memory {  { reg_file_0_0_address0 mem_address 1 11 }  { reg_file_0_0_ce0 mem_ce 1 1 }  { reg_file_0_0_q0 mem_dout 0 16 } } }
	reg_file_1_0 { ap_memory {  { reg_file_1_0_address0 mem_address 1 11 }  { reg_file_1_0_ce0 mem_ce 1 1 }  { reg_file_1_0_q0 mem_dout 0 16 } } }
	reg_file_2_0 { ap_memory {  { reg_file_2_0_address0 mem_address 1 11 }  { reg_file_2_0_ce0 mem_ce 1 1 }  { reg_file_2_0_we0 mem_we 1 1 }  { reg_file_2_0_d0 mem_din 1 16 }  { reg_file_2_0_q0 mem_dout 0 16 }  { reg_file_2_0_address1 MemPortADDR2 1 11 }  { reg_file_2_0_ce1 MemPortCE2 1 1 }  { reg_file_2_0_q1 MemPortDOUT2 0 16 } } }
	reg_file_2_1 { ap_memory {  { reg_file_2_1_address0 mem_address 1 11 }  { reg_file_2_1_ce0 mem_ce 1 1 }  { reg_file_2_1_we0 mem_we 1 1 }  { reg_file_2_1_d0 mem_din 1 16 }  { reg_file_2_1_q0 mem_dout 0 16 }  { reg_file_2_1_address1 MemPortADDR2 1 11 }  { reg_file_2_1_ce1 MemPortCE2 1 1 }  { reg_file_2_1_q1 MemPortDOUT2 0 16 } } }
	reg_file_4_0 { ap_memory {  { reg_file_4_0_address0 mem_address 1 11 }  { reg_file_4_0_ce0 mem_ce 1 1 }  { reg_file_4_0_we0 mem_we 1 1 }  { reg_file_4_0_d0 mem_din 1 16 }  { reg_file_4_0_q0 mem_dout 0 16 }  { reg_file_4_0_address1 MemPortADDR2 1 11 }  { reg_file_4_0_ce1 MemPortCE2 1 1 }  { reg_file_4_0_q1 MemPortDOUT2 0 16 } } }
	reg_file_4_1 { ap_memory {  { reg_file_4_1_address0 mem_address 1 11 }  { reg_file_4_1_ce0 mem_ce 1 1 }  { reg_file_4_1_we0 mem_we 1 1 }  { reg_file_4_1_d0 mem_din 1 16 }  { reg_file_4_1_q0 mem_dout 0 16 }  { reg_file_4_1_address1 MemPortADDR2 1 11 }  { reg_file_4_1_ce1 MemPortCE2 1 1 }  { reg_file_4_1_q1 MemPortDOUT2 0 16 } } }
	reg_file_5_0 { ap_memory {  { reg_file_5_0_address0 mem_address 1 11 }  { reg_file_5_0_ce0 mem_ce 1 1 }  { reg_file_5_0_we0 mem_we 1 1 }  { reg_file_5_0_d0 mem_din 1 16 }  { reg_file_5_0_q0 mem_dout 0 16 }  { reg_file_5_0_address1 MemPortADDR2 1 11 }  { reg_file_5_0_ce1 MemPortCE2 1 1 }  { reg_file_5_0_q1 MemPortDOUT2 0 16 } } }
	reg_file_5_1 { ap_memory {  { reg_file_5_1_address0 mem_address 1 11 }  { reg_file_5_1_ce0 mem_ce 1 1 }  { reg_file_5_1_we0 mem_we 1 1 }  { reg_file_5_1_d0 mem_din 1 16 }  { reg_file_5_1_q0 mem_dout 0 16 }  { reg_file_5_1_address1 MemPortADDR2 1 11 }  { reg_file_5_1_ce1 MemPortCE2 1 1 }  { reg_file_5_1_q1 MemPortDOUT2 0 16 } } }
	reg_file_6_0 { ap_memory {  { reg_file_6_0_address0 mem_address 1 11 }  { reg_file_6_0_ce0 mem_ce 1 1 }  { reg_file_6_0_we0 mem_we 1 1 }  { reg_file_6_0_d0 mem_din 1 16 }  { reg_file_6_0_q0 mem_dout 0 16 } } }
	reg_file_6_1 { ap_memory {  { reg_file_6_1_address0 mem_address 1 11 }  { reg_file_6_1_ce0 mem_ce 1 1 }  { reg_file_6_1_we0 mem_we 1 1 }  { reg_file_6_1_d0 mem_din 1 16 }  { reg_file_6_1_q0 mem_dout 0 16 } } }
}
