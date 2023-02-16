set moduleName send_data_burst
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
set C_modelName {send_data_burst}
set C_modelType { void 0 }
set C_modelArgList {
	{ data_out int 64 regular {array 16384 { 0 3 } 0 1 }  }
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
	{ reg_file_8_0 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_8_1 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_9_0 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_9_1 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_10_0 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_10_1 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_11_0 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_11_1 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_12_0 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_12_1 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_13_0 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_13_1 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_14_0 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_14_1 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_15_0 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_15_1 int 16 regular {array 2048 { 1 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "data_out", "interface" : "memory", "bitwidth" : 64, "direction" : "WRITEONLY"} , 
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
 	{ "Name" : "reg_file_7_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_8_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_8_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_9_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_9_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_10_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_10_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_11_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_11_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_12_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_12_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_13_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_13_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_14_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_14_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_15_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_15_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 202
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ data_out_address0 sc_out sc_lv 14 signal 0 } 
	{ data_out_ce0 sc_out sc_logic 1 signal 0 } 
	{ data_out_we0 sc_out sc_logic 1 signal 0 } 
	{ data_out_d0 sc_out sc_lv 64 signal 0 } 
	{ reg_file_0_0_address0 sc_out sc_lv 11 signal 1 } 
	{ reg_file_0_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ reg_file_0_0_q0 sc_in sc_lv 16 signal 1 } 
	{ reg_file_0_0_address1 sc_out sc_lv 11 signal 1 } 
	{ reg_file_0_0_ce1 sc_out sc_logic 1 signal 1 } 
	{ reg_file_0_0_q1 sc_in sc_lv 16 signal 1 } 
	{ reg_file_0_1_address0 sc_out sc_lv 11 signal 2 } 
	{ reg_file_0_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ reg_file_0_1_q0 sc_in sc_lv 16 signal 2 } 
	{ reg_file_0_1_address1 sc_out sc_lv 11 signal 2 } 
	{ reg_file_0_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ reg_file_0_1_q1 sc_in sc_lv 16 signal 2 } 
	{ reg_file_1_0_address0 sc_out sc_lv 11 signal 3 } 
	{ reg_file_1_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ reg_file_1_0_q0 sc_in sc_lv 16 signal 3 } 
	{ reg_file_1_0_address1 sc_out sc_lv 11 signal 3 } 
	{ reg_file_1_0_ce1 sc_out sc_logic 1 signal 3 } 
	{ reg_file_1_0_q1 sc_in sc_lv 16 signal 3 } 
	{ reg_file_1_1_address0 sc_out sc_lv 11 signal 4 } 
	{ reg_file_1_1_ce0 sc_out sc_logic 1 signal 4 } 
	{ reg_file_1_1_q0 sc_in sc_lv 16 signal 4 } 
	{ reg_file_1_1_address1 sc_out sc_lv 11 signal 4 } 
	{ reg_file_1_1_ce1 sc_out sc_logic 1 signal 4 } 
	{ reg_file_1_1_q1 sc_in sc_lv 16 signal 4 } 
	{ reg_file_2_0_address0 sc_out sc_lv 11 signal 5 } 
	{ reg_file_2_0_ce0 sc_out sc_logic 1 signal 5 } 
	{ reg_file_2_0_q0 sc_in sc_lv 16 signal 5 } 
	{ reg_file_2_0_address1 sc_out sc_lv 11 signal 5 } 
	{ reg_file_2_0_ce1 sc_out sc_logic 1 signal 5 } 
	{ reg_file_2_0_q1 sc_in sc_lv 16 signal 5 } 
	{ reg_file_2_1_address0 sc_out sc_lv 11 signal 6 } 
	{ reg_file_2_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ reg_file_2_1_q0 sc_in sc_lv 16 signal 6 } 
	{ reg_file_2_1_address1 sc_out sc_lv 11 signal 6 } 
	{ reg_file_2_1_ce1 sc_out sc_logic 1 signal 6 } 
	{ reg_file_2_1_q1 sc_in sc_lv 16 signal 6 } 
	{ reg_file_3_0_address0 sc_out sc_lv 11 signal 7 } 
	{ reg_file_3_0_ce0 sc_out sc_logic 1 signal 7 } 
	{ reg_file_3_0_q0 sc_in sc_lv 16 signal 7 } 
	{ reg_file_3_0_address1 sc_out sc_lv 11 signal 7 } 
	{ reg_file_3_0_ce1 sc_out sc_logic 1 signal 7 } 
	{ reg_file_3_0_q1 sc_in sc_lv 16 signal 7 } 
	{ reg_file_3_1_address0 sc_out sc_lv 11 signal 8 } 
	{ reg_file_3_1_ce0 sc_out sc_logic 1 signal 8 } 
	{ reg_file_3_1_q0 sc_in sc_lv 16 signal 8 } 
	{ reg_file_3_1_address1 sc_out sc_lv 11 signal 8 } 
	{ reg_file_3_1_ce1 sc_out sc_logic 1 signal 8 } 
	{ reg_file_3_1_q1 sc_in sc_lv 16 signal 8 } 
	{ reg_file_4_0_address0 sc_out sc_lv 11 signal 9 } 
	{ reg_file_4_0_ce0 sc_out sc_logic 1 signal 9 } 
	{ reg_file_4_0_q0 sc_in sc_lv 16 signal 9 } 
	{ reg_file_4_0_address1 sc_out sc_lv 11 signal 9 } 
	{ reg_file_4_0_ce1 sc_out sc_logic 1 signal 9 } 
	{ reg_file_4_0_q1 sc_in sc_lv 16 signal 9 } 
	{ reg_file_4_1_address0 sc_out sc_lv 11 signal 10 } 
	{ reg_file_4_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ reg_file_4_1_q0 sc_in sc_lv 16 signal 10 } 
	{ reg_file_4_1_address1 sc_out sc_lv 11 signal 10 } 
	{ reg_file_4_1_ce1 sc_out sc_logic 1 signal 10 } 
	{ reg_file_4_1_q1 sc_in sc_lv 16 signal 10 } 
	{ reg_file_5_0_address0 sc_out sc_lv 11 signal 11 } 
	{ reg_file_5_0_ce0 sc_out sc_logic 1 signal 11 } 
	{ reg_file_5_0_q0 sc_in sc_lv 16 signal 11 } 
	{ reg_file_5_0_address1 sc_out sc_lv 11 signal 11 } 
	{ reg_file_5_0_ce1 sc_out sc_logic 1 signal 11 } 
	{ reg_file_5_0_q1 sc_in sc_lv 16 signal 11 } 
	{ reg_file_5_1_address0 sc_out sc_lv 11 signal 12 } 
	{ reg_file_5_1_ce0 sc_out sc_logic 1 signal 12 } 
	{ reg_file_5_1_q0 sc_in sc_lv 16 signal 12 } 
	{ reg_file_5_1_address1 sc_out sc_lv 11 signal 12 } 
	{ reg_file_5_1_ce1 sc_out sc_logic 1 signal 12 } 
	{ reg_file_5_1_q1 sc_in sc_lv 16 signal 12 } 
	{ reg_file_6_0_address0 sc_out sc_lv 11 signal 13 } 
	{ reg_file_6_0_ce0 sc_out sc_logic 1 signal 13 } 
	{ reg_file_6_0_q0 sc_in sc_lv 16 signal 13 } 
	{ reg_file_6_0_address1 sc_out sc_lv 11 signal 13 } 
	{ reg_file_6_0_ce1 sc_out sc_logic 1 signal 13 } 
	{ reg_file_6_0_q1 sc_in sc_lv 16 signal 13 } 
	{ reg_file_6_1_address0 sc_out sc_lv 11 signal 14 } 
	{ reg_file_6_1_ce0 sc_out sc_logic 1 signal 14 } 
	{ reg_file_6_1_q0 sc_in sc_lv 16 signal 14 } 
	{ reg_file_6_1_address1 sc_out sc_lv 11 signal 14 } 
	{ reg_file_6_1_ce1 sc_out sc_logic 1 signal 14 } 
	{ reg_file_6_1_q1 sc_in sc_lv 16 signal 14 } 
	{ reg_file_7_0_address0 sc_out sc_lv 11 signal 15 } 
	{ reg_file_7_0_ce0 sc_out sc_logic 1 signal 15 } 
	{ reg_file_7_0_q0 sc_in sc_lv 16 signal 15 } 
	{ reg_file_7_0_address1 sc_out sc_lv 11 signal 15 } 
	{ reg_file_7_0_ce1 sc_out sc_logic 1 signal 15 } 
	{ reg_file_7_0_q1 sc_in sc_lv 16 signal 15 } 
	{ reg_file_7_1_address0 sc_out sc_lv 11 signal 16 } 
	{ reg_file_7_1_ce0 sc_out sc_logic 1 signal 16 } 
	{ reg_file_7_1_q0 sc_in sc_lv 16 signal 16 } 
	{ reg_file_7_1_address1 sc_out sc_lv 11 signal 16 } 
	{ reg_file_7_1_ce1 sc_out sc_logic 1 signal 16 } 
	{ reg_file_7_1_q1 sc_in sc_lv 16 signal 16 } 
	{ reg_file_8_0_address0 sc_out sc_lv 11 signal 17 } 
	{ reg_file_8_0_ce0 sc_out sc_logic 1 signal 17 } 
	{ reg_file_8_0_q0 sc_in sc_lv 16 signal 17 } 
	{ reg_file_8_0_address1 sc_out sc_lv 11 signal 17 } 
	{ reg_file_8_0_ce1 sc_out sc_logic 1 signal 17 } 
	{ reg_file_8_0_q1 sc_in sc_lv 16 signal 17 } 
	{ reg_file_8_1_address0 sc_out sc_lv 11 signal 18 } 
	{ reg_file_8_1_ce0 sc_out sc_logic 1 signal 18 } 
	{ reg_file_8_1_q0 sc_in sc_lv 16 signal 18 } 
	{ reg_file_8_1_address1 sc_out sc_lv 11 signal 18 } 
	{ reg_file_8_1_ce1 sc_out sc_logic 1 signal 18 } 
	{ reg_file_8_1_q1 sc_in sc_lv 16 signal 18 } 
	{ reg_file_9_0_address0 sc_out sc_lv 11 signal 19 } 
	{ reg_file_9_0_ce0 sc_out sc_logic 1 signal 19 } 
	{ reg_file_9_0_q0 sc_in sc_lv 16 signal 19 } 
	{ reg_file_9_0_address1 sc_out sc_lv 11 signal 19 } 
	{ reg_file_9_0_ce1 sc_out sc_logic 1 signal 19 } 
	{ reg_file_9_0_q1 sc_in sc_lv 16 signal 19 } 
	{ reg_file_9_1_address0 sc_out sc_lv 11 signal 20 } 
	{ reg_file_9_1_ce0 sc_out sc_logic 1 signal 20 } 
	{ reg_file_9_1_q0 sc_in sc_lv 16 signal 20 } 
	{ reg_file_9_1_address1 sc_out sc_lv 11 signal 20 } 
	{ reg_file_9_1_ce1 sc_out sc_logic 1 signal 20 } 
	{ reg_file_9_1_q1 sc_in sc_lv 16 signal 20 } 
	{ reg_file_10_0_address0 sc_out sc_lv 11 signal 21 } 
	{ reg_file_10_0_ce0 sc_out sc_logic 1 signal 21 } 
	{ reg_file_10_0_q0 sc_in sc_lv 16 signal 21 } 
	{ reg_file_10_0_address1 sc_out sc_lv 11 signal 21 } 
	{ reg_file_10_0_ce1 sc_out sc_logic 1 signal 21 } 
	{ reg_file_10_0_q1 sc_in sc_lv 16 signal 21 } 
	{ reg_file_10_1_address0 sc_out sc_lv 11 signal 22 } 
	{ reg_file_10_1_ce0 sc_out sc_logic 1 signal 22 } 
	{ reg_file_10_1_q0 sc_in sc_lv 16 signal 22 } 
	{ reg_file_10_1_address1 sc_out sc_lv 11 signal 22 } 
	{ reg_file_10_1_ce1 sc_out sc_logic 1 signal 22 } 
	{ reg_file_10_1_q1 sc_in sc_lv 16 signal 22 } 
	{ reg_file_11_0_address0 sc_out sc_lv 11 signal 23 } 
	{ reg_file_11_0_ce0 sc_out sc_logic 1 signal 23 } 
	{ reg_file_11_0_q0 sc_in sc_lv 16 signal 23 } 
	{ reg_file_11_0_address1 sc_out sc_lv 11 signal 23 } 
	{ reg_file_11_0_ce1 sc_out sc_logic 1 signal 23 } 
	{ reg_file_11_0_q1 sc_in sc_lv 16 signal 23 } 
	{ reg_file_11_1_address0 sc_out sc_lv 11 signal 24 } 
	{ reg_file_11_1_ce0 sc_out sc_logic 1 signal 24 } 
	{ reg_file_11_1_q0 sc_in sc_lv 16 signal 24 } 
	{ reg_file_11_1_address1 sc_out sc_lv 11 signal 24 } 
	{ reg_file_11_1_ce1 sc_out sc_logic 1 signal 24 } 
	{ reg_file_11_1_q1 sc_in sc_lv 16 signal 24 } 
	{ reg_file_12_0_address0 sc_out sc_lv 11 signal 25 } 
	{ reg_file_12_0_ce0 sc_out sc_logic 1 signal 25 } 
	{ reg_file_12_0_q0 sc_in sc_lv 16 signal 25 } 
	{ reg_file_12_0_address1 sc_out sc_lv 11 signal 25 } 
	{ reg_file_12_0_ce1 sc_out sc_logic 1 signal 25 } 
	{ reg_file_12_0_q1 sc_in sc_lv 16 signal 25 } 
	{ reg_file_12_1_address0 sc_out sc_lv 11 signal 26 } 
	{ reg_file_12_1_ce0 sc_out sc_logic 1 signal 26 } 
	{ reg_file_12_1_q0 sc_in sc_lv 16 signal 26 } 
	{ reg_file_12_1_address1 sc_out sc_lv 11 signal 26 } 
	{ reg_file_12_1_ce1 sc_out sc_logic 1 signal 26 } 
	{ reg_file_12_1_q1 sc_in sc_lv 16 signal 26 } 
	{ reg_file_13_0_address0 sc_out sc_lv 11 signal 27 } 
	{ reg_file_13_0_ce0 sc_out sc_logic 1 signal 27 } 
	{ reg_file_13_0_q0 sc_in sc_lv 16 signal 27 } 
	{ reg_file_13_0_address1 sc_out sc_lv 11 signal 27 } 
	{ reg_file_13_0_ce1 sc_out sc_logic 1 signal 27 } 
	{ reg_file_13_0_q1 sc_in sc_lv 16 signal 27 } 
	{ reg_file_13_1_address0 sc_out sc_lv 11 signal 28 } 
	{ reg_file_13_1_ce0 sc_out sc_logic 1 signal 28 } 
	{ reg_file_13_1_q0 sc_in sc_lv 16 signal 28 } 
	{ reg_file_13_1_address1 sc_out sc_lv 11 signal 28 } 
	{ reg_file_13_1_ce1 sc_out sc_logic 1 signal 28 } 
	{ reg_file_13_1_q1 sc_in sc_lv 16 signal 28 } 
	{ reg_file_14_0_address0 sc_out sc_lv 11 signal 29 } 
	{ reg_file_14_0_ce0 sc_out sc_logic 1 signal 29 } 
	{ reg_file_14_0_q0 sc_in sc_lv 16 signal 29 } 
	{ reg_file_14_0_address1 sc_out sc_lv 11 signal 29 } 
	{ reg_file_14_0_ce1 sc_out sc_logic 1 signal 29 } 
	{ reg_file_14_0_q1 sc_in sc_lv 16 signal 29 } 
	{ reg_file_14_1_address0 sc_out sc_lv 11 signal 30 } 
	{ reg_file_14_1_ce0 sc_out sc_logic 1 signal 30 } 
	{ reg_file_14_1_q0 sc_in sc_lv 16 signal 30 } 
	{ reg_file_14_1_address1 sc_out sc_lv 11 signal 30 } 
	{ reg_file_14_1_ce1 sc_out sc_logic 1 signal 30 } 
	{ reg_file_14_1_q1 sc_in sc_lv 16 signal 30 } 
	{ reg_file_15_0_address0 sc_out sc_lv 11 signal 31 } 
	{ reg_file_15_0_ce0 sc_out sc_logic 1 signal 31 } 
	{ reg_file_15_0_q0 sc_in sc_lv 16 signal 31 } 
	{ reg_file_15_0_address1 sc_out sc_lv 11 signal 31 } 
	{ reg_file_15_0_ce1 sc_out sc_logic 1 signal 31 } 
	{ reg_file_15_0_q1 sc_in sc_lv 16 signal 31 } 
	{ reg_file_15_1_address0 sc_out sc_lv 11 signal 32 } 
	{ reg_file_15_1_ce0 sc_out sc_logic 1 signal 32 } 
	{ reg_file_15_1_q0 sc_in sc_lv 16 signal 32 } 
	{ reg_file_15_1_address1 sc_out sc_lv 11 signal 32 } 
	{ reg_file_15_1_ce1 sc_out sc_logic 1 signal 32 } 
	{ reg_file_15_1_q1 sc_in sc_lv 16 signal 32 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "data_out_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "data_out", "role": "address0" }} , 
 	{ "name": "data_out_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out", "role": "ce0" }} , 
 	{ "name": "data_out_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "data_out", "role": "we0" }} , 
 	{ "name": "data_out_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":64, "type": "signal", "bundle":{"name": "data_out", "role": "d0" }} , 
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
 	{ "name": "reg_file_7_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_7_1", "role": "q1" }} , 
 	{ "name": "reg_file_8_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_8_0", "role": "address0" }} , 
 	{ "name": "reg_file_8_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_8_0", "role": "ce0" }} , 
 	{ "name": "reg_file_8_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_8_0", "role": "q0" }} , 
 	{ "name": "reg_file_8_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_8_0", "role": "address1" }} , 
 	{ "name": "reg_file_8_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_8_0", "role": "ce1" }} , 
 	{ "name": "reg_file_8_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_8_0", "role": "q1" }} , 
 	{ "name": "reg_file_8_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_8_1", "role": "address0" }} , 
 	{ "name": "reg_file_8_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_8_1", "role": "ce0" }} , 
 	{ "name": "reg_file_8_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_8_1", "role": "q0" }} , 
 	{ "name": "reg_file_8_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_8_1", "role": "address1" }} , 
 	{ "name": "reg_file_8_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_8_1", "role": "ce1" }} , 
 	{ "name": "reg_file_8_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_8_1", "role": "q1" }} , 
 	{ "name": "reg_file_9_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_9_0", "role": "address0" }} , 
 	{ "name": "reg_file_9_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_9_0", "role": "ce0" }} , 
 	{ "name": "reg_file_9_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_9_0", "role": "q0" }} , 
 	{ "name": "reg_file_9_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_9_0", "role": "address1" }} , 
 	{ "name": "reg_file_9_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_9_0", "role": "ce1" }} , 
 	{ "name": "reg_file_9_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_9_0", "role": "q1" }} , 
 	{ "name": "reg_file_9_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_9_1", "role": "address0" }} , 
 	{ "name": "reg_file_9_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_9_1", "role": "ce0" }} , 
 	{ "name": "reg_file_9_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_9_1", "role": "q0" }} , 
 	{ "name": "reg_file_9_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_9_1", "role": "address1" }} , 
 	{ "name": "reg_file_9_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_9_1", "role": "ce1" }} , 
 	{ "name": "reg_file_9_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_9_1", "role": "q1" }} , 
 	{ "name": "reg_file_10_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_10_0", "role": "address0" }} , 
 	{ "name": "reg_file_10_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_10_0", "role": "ce0" }} , 
 	{ "name": "reg_file_10_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_10_0", "role": "q0" }} , 
 	{ "name": "reg_file_10_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_10_0", "role": "address1" }} , 
 	{ "name": "reg_file_10_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_10_0", "role": "ce1" }} , 
 	{ "name": "reg_file_10_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_10_0", "role": "q1" }} , 
 	{ "name": "reg_file_10_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_10_1", "role": "address0" }} , 
 	{ "name": "reg_file_10_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_10_1", "role": "ce0" }} , 
 	{ "name": "reg_file_10_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_10_1", "role": "q0" }} , 
 	{ "name": "reg_file_10_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_10_1", "role": "address1" }} , 
 	{ "name": "reg_file_10_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_10_1", "role": "ce1" }} , 
 	{ "name": "reg_file_10_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_10_1", "role": "q1" }} , 
 	{ "name": "reg_file_11_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_11_0", "role": "address0" }} , 
 	{ "name": "reg_file_11_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_11_0", "role": "ce0" }} , 
 	{ "name": "reg_file_11_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_11_0", "role": "q0" }} , 
 	{ "name": "reg_file_11_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_11_0", "role": "address1" }} , 
 	{ "name": "reg_file_11_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_11_0", "role": "ce1" }} , 
 	{ "name": "reg_file_11_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_11_0", "role": "q1" }} , 
 	{ "name": "reg_file_11_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_11_1", "role": "address0" }} , 
 	{ "name": "reg_file_11_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_11_1", "role": "ce0" }} , 
 	{ "name": "reg_file_11_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_11_1", "role": "q0" }} , 
 	{ "name": "reg_file_11_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_11_1", "role": "address1" }} , 
 	{ "name": "reg_file_11_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_11_1", "role": "ce1" }} , 
 	{ "name": "reg_file_11_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_11_1", "role": "q1" }} , 
 	{ "name": "reg_file_12_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_12_0", "role": "address0" }} , 
 	{ "name": "reg_file_12_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_12_0", "role": "ce0" }} , 
 	{ "name": "reg_file_12_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_12_0", "role": "q0" }} , 
 	{ "name": "reg_file_12_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_12_0", "role": "address1" }} , 
 	{ "name": "reg_file_12_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_12_0", "role": "ce1" }} , 
 	{ "name": "reg_file_12_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_12_0", "role": "q1" }} , 
 	{ "name": "reg_file_12_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_12_1", "role": "address0" }} , 
 	{ "name": "reg_file_12_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_12_1", "role": "ce0" }} , 
 	{ "name": "reg_file_12_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_12_1", "role": "q0" }} , 
 	{ "name": "reg_file_12_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_12_1", "role": "address1" }} , 
 	{ "name": "reg_file_12_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_12_1", "role": "ce1" }} , 
 	{ "name": "reg_file_12_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_12_1", "role": "q1" }} , 
 	{ "name": "reg_file_13_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_13_0", "role": "address0" }} , 
 	{ "name": "reg_file_13_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_13_0", "role": "ce0" }} , 
 	{ "name": "reg_file_13_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_13_0", "role": "q0" }} , 
 	{ "name": "reg_file_13_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_13_0", "role": "address1" }} , 
 	{ "name": "reg_file_13_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_13_0", "role": "ce1" }} , 
 	{ "name": "reg_file_13_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_13_0", "role": "q1" }} , 
 	{ "name": "reg_file_13_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_13_1", "role": "address0" }} , 
 	{ "name": "reg_file_13_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_13_1", "role": "ce0" }} , 
 	{ "name": "reg_file_13_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_13_1", "role": "q0" }} , 
 	{ "name": "reg_file_13_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_13_1", "role": "address1" }} , 
 	{ "name": "reg_file_13_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_13_1", "role": "ce1" }} , 
 	{ "name": "reg_file_13_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_13_1", "role": "q1" }} , 
 	{ "name": "reg_file_14_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_14_0", "role": "address0" }} , 
 	{ "name": "reg_file_14_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_14_0", "role": "ce0" }} , 
 	{ "name": "reg_file_14_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_14_0", "role": "q0" }} , 
 	{ "name": "reg_file_14_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_14_0", "role": "address1" }} , 
 	{ "name": "reg_file_14_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_14_0", "role": "ce1" }} , 
 	{ "name": "reg_file_14_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_14_0", "role": "q1" }} , 
 	{ "name": "reg_file_14_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_14_1", "role": "address0" }} , 
 	{ "name": "reg_file_14_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_14_1", "role": "ce0" }} , 
 	{ "name": "reg_file_14_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_14_1", "role": "q0" }} , 
 	{ "name": "reg_file_14_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_14_1", "role": "address1" }} , 
 	{ "name": "reg_file_14_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_14_1", "role": "ce1" }} , 
 	{ "name": "reg_file_14_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_14_1", "role": "q1" }} , 
 	{ "name": "reg_file_15_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_15_0", "role": "address0" }} , 
 	{ "name": "reg_file_15_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_15_0", "role": "ce0" }} , 
 	{ "name": "reg_file_15_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_15_0", "role": "q0" }} , 
 	{ "name": "reg_file_15_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_15_0", "role": "address1" }} , 
 	{ "name": "reg_file_15_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_15_0", "role": "ce1" }} , 
 	{ "name": "reg_file_15_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_15_0", "role": "q1" }} , 
 	{ "name": "reg_file_15_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_15_1", "role": "address0" }} , 
 	{ "name": "reg_file_15_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_15_1", "role": "ce0" }} , 
 	{ "name": "reg_file_15_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_15_1", "role": "q0" }} , 
 	{ "name": "reg_file_15_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_15_1", "role": "address1" }} , 
 	{ "name": "reg_file_15_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_15_1", "role": "ce1" }} , 
 	{ "name": "reg_file_15_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_15_1", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69"],
		"CDFG" : "send_data_burst",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16387", "EstimateLatencyMax" : "16387",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "data_out", "Type" : "Memory", "Direction" : "O"},
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
			{"Name" : "reg_file_7_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_8_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_8_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_9_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_9_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_10_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_10_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_11_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_11_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_12_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_12_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_13_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_13_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_14_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_14_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_15_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_15_1", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_83_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter3", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter3", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U64", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U65", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U66", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U67", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U68", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U69", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U70", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U71", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U72", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U73", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U74", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U75", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U76", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U77", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U78", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U79", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_16_1_1_U80", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U81", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U82", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U83", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U84", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U85", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U86", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U87", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U88", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U89", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U90", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U91", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U92", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U93", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U94", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U95", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U96", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_16_1_1_U97", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U98", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U99", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U100", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U101", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U102", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U103", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U104", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U105", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U106", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U107", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U108", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U109", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U110", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U111", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U112", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U113", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_16_1_1_U114", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U115", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U116", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U117", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U118", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U119", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U120", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U121", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U122", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U123", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U124", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U125", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U126", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U127", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U128", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U129", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U130", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_16_1_1_U131", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	send_data_burst {
		data_out {Type O LastRead -1 FirstWrite 3}
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
		reg_file_7_1 {Type I LastRead 3 FirstWrite -1}
		reg_file_8_0 {Type I LastRead 3 FirstWrite -1}
		reg_file_8_1 {Type I LastRead 3 FirstWrite -1}
		reg_file_9_0 {Type I LastRead 3 FirstWrite -1}
		reg_file_9_1 {Type I LastRead 3 FirstWrite -1}
		reg_file_10_0 {Type I LastRead 3 FirstWrite -1}
		reg_file_10_1 {Type I LastRead 3 FirstWrite -1}
		reg_file_11_0 {Type I LastRead 3 FirstWrite -1}
		reg_file_11_1 {Type I LastRead 3 FirstWrite -1}
		reg_file_12_0 {Type I LastRead 3 FirstWrite -1}
		reg_file_12_1 {Type I LastRead 3 FirstWrite -1}
		reg_file_13_0 {Type I LastRead 3 FirstWrite -1}
		reg_file_13_1 {Type I LastRead 3 FirstWrite -1}
		reg_file_14_0 {Type I LastRead 3 FirstWrite -1}
		reg_file_14_1 {Type I LastRead 3 FirstWrite -1}
		reg_file_15_0 {Type I LastRead 3 FirstWrite -1}
		reg_file_15_1 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16387", "Max" : "16387"}
	, {"Name" : "Interval", "Min" : "16387", "Max" : "16387"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	data_out { ap_memory {  { data_out_address0 mem_address 1 14 }  { data_out_ce0 mem_ce 1 1 }  { data_out_we0 mem_we 1 1 }  { data_out_d0 mem_din 1 64 } } }
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
	reg_file_8_0 { ap_memory {  { reg_file_8_0_address0 mem_address 1 11 }  { reg_file_8_0_ce0 mem_ce 1 1 }  { reg_file_8_0_q0 in_data 0 16 }  { reg_file_8_0_address1 MemPortADDR2 1 11 }  { reg_file_8_0_ce1 MemPortCE2 1 1 }  { reg_file_8_0_q1 in_data 0 16 } } }
	reg_file_8_1 { ap_memory {  { reg_file_8_1_address0 mem_address 1 11 }  { reg_file_8_1_ce0 mem_ce 1 1 }  { reg_file_8_1_q0 in_data 0 16 }  { reg_file_8_1_address1 MemPortADDR2 1 11 }  { reg_file_8_1_ce1 MemPortCE2 1 1 }  { reg_file_8_1_q1 in_data 0 16 } } }
	reg_file_9_0 { ap_memory {  { reg_file_9_0_address0 mem_address 1 11 }  { reg_file_9_0_ce0 mem_ce 1 1 }  { reg_file_9_0_q0 in_data 0 16 }  { reg_file_9_0_address1 MemPortADDR2 1 11 }  { reg_file_9_0_ce1 MemPortCE2 1 1 }  { reg_file_9_0_q1 in_data 0 16 } } }
	reg_file_9_1 { ap_memory {  { reg_file_9_1_address0 mem_address 1 11 }  { reg_file_9_1_ce0 mem_ce 1 1 }  { reg_file_9_1_q0 in_data 0 16 }  { reg_file_9_1_address1 MemPortADDR2 1 11 }  { reg_file_9_1_ce1 MemPortCE2 1 1 }  { reg_file_9_1_q1 in_data 0 16 } } }
	reg_file_10_0 { ap_memory {  { reg_file_10_0_address0 mem_address 1 11 }  { reg_file_10_0_ce0 mem_ce 1 1 }  { reg_file_10_0_q0 in_data 0 16 }  { reg_file_10_0_address1 MemPortADDR2 1 11 }  { reg_file_10_0_ce1 MemPortCE2 1 1 }  { reg_file_10_0_q1 in_data 0 16 } } }
	reg_file_10_1 { ap_memory {  { reg_file_10_1_address0 mem_address 1 11 }  { reg_file_10_1_ce0 mem_ce 1 1 }  { reg_file_10_1_q0 in_data 0 16 }  { reg_file_10_1_address1 MemPortADDR2 1 11 }  { reg_file_10_1_ce1 MemPortCE2 1 1 }  { reg_file_10_1_q1 in_data 0 16 } } }
	reg_file_11_0 { ap_memory {  { reg_file_11_0_address0 mem_address 1 11 }  { reg_file_11_0_ce0 mem_ce 1 1 }  { reg_file_11_0_q0 in_data 0 16 }  { reg_file_11_0_address1 MemPortADDR2 1 11 }  { reg_file_11_0_ce1 MemPortCE2 1 1 }  { reg_file_11_0_q1 in_data 0 16 } } }
	reg_file_11_1 { ap_memory {  { reg_file_11_1_address0 mem_address 1 11 }  { reg_file_11_1_ce0 mem_ce 1 1 }  { reg_file_11_1_q0 in_data 0 16 }  { reg_file_11_1_address1 MemPortADDR2 1 11 }  { reg_file_11_1_ce1 MemPortCE2 1 1 }  { reg_file_11_1_q1 in_data 0 16 } } }
	reg_file_12_0 { ap_memory {  { reg_file_12_0_address0 mem_address 1 11 }  { reg_file_12_0_ce0 mem_ce 1 1 }  { reg_file_12_0_q0 in_data 0 16 }  { reg_file_12_0_address1 MemPortADDR2 1 11 }  { reg_file_12_0_ce1 MemPortCE2 1 1 }  { reg_file_12_0_q1 in_data 0 16 } } }
	reg_file_12_1 { ap_memory {  { reg_file_12_1_address0 mem_address 1 11 }  { reg_file_12_1_ce0 mem_ce 1 1 }  { reg_file_12_1_q0 in_data 0 16 }  { reg_file_12_1_address1 MemPortADDR2 1 11 }  { reg_file_12_1_ce1 MemPortCE2 1 1 }  { reg_file_12_1_q1 in_data 0 16 } } }
	reg_file_13_0 { ap_memory {  { reg_file_13_0_address0 mem_address 1 11 }  { reg_file_13_0_ce0 mem_ce 1 1 }  { reg_file_13_0_q0 in_data 0 16 }  { reg_file_13_0_address1 MemPortADDR2 1 11 }  { reg_file_13_0_ce1 MemPortCE2 1 1 }  { reg_file_13_0_q1 in_data 0 16 } } }
	reg_file_13_1 { ap_memory {  { reg_file_13_1_address0 mem_address 1 11 }  { reg_file_13_1_ce0 mem_ce 1 1 }  { reg_file_13_1_q0 in_data 0 16 }  { reg_file_13_1_address1 MemPortADDR2 1 11 }  { reg_file_13_1_ce1 MemPortCE2 1 1 }  { reg_file_13_1_q1 in_data 0 16 } } }
	reg_file_14_0 { ap_memory {  { reg_file_14_0_address0 mem_address 1 11 }  { reg_file_14_0_ce0 mem_ce 1 1 }  { reg_file_14_0_q0 in_data 0 16 }  { reg_file_14_0_address1 MemPortADDR2 1 11 }  { reg_file_14_0_ce1 MemPortCE2 1 1 }  { reg_file_14_0_q1 in_data 0 16 } } }
	reg_file_14_1 { ap_memory {  { reg_file_14_1_address0 mem_address 1 11 }  { reg_file_14_1_ce0 mem_ce 1 1 }  { reg_file_14_1_q0 in_data 0 16 }  { reg_file_14_1_address1 MemPortADDR2 1 11 }  { reg_file_14_1_ce1 MemPortCE2 1 1 }  { reg_file_14_1_q1 in_data 0 16 } } }
	reg_file_15_0 { ap_memory {  { reg_file_15_0_address0 mem_address 1 11 }  { reg_file_15_0_ce0 mem_ce 1 1 }  { reg_file_15_0_q0 in_data 0 16 }  { reg_file_15_0_address1 MemPortADDR2 1 11 }  { reg_file_15_0_ce1 MemPortCE2 1 1 }  { reg_file_15_0_q1 in_data 0 16 } } }
	reg_file_15_1 { ap_memory {  { reg_file_15_1_address0 mem_address 1 11 }  { reg_file_15_1_ce0 mem_ce 1 1 }  { reg_file_15_1_q0 in_data 0 16 }  { reg_file_15_1_address1 MemPortADDR2 1 11 }  { reg_file_15_1_ce1 MemPortCE2 1 1 }  { reg_file_15_1_q1 in_data 0 16 } } }
}
