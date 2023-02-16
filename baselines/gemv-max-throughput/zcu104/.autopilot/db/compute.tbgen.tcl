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
	{ reg_file_2_0 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_2_1 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_6_0 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_6_1 int 16 regular {array 2048 { 1 1 } 1 1 }  }
	{ reg_file_7_0 int 16 regular {array 2048 { 0 1 } 1 1 }  }
	{ reg_file_7_1 int 16 regular {array 2048 { 0 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "reg_file_0_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_1_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_2_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_2_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_6_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_6_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_7_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "reg_file_7_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 50
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
	{ reg_file_2_0_q0 sc_in sc_lv 16 signal 2 } 
	{ reg_file_2_0_address1 sc_out sc_lv 11 signal 2 } 
	{ reg_file_2_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ reg_file_2_0_q1 sc_in sc_lv 16 signal 2 } 
	{ reg_file_2_1_address0 sc_out sc_lv 11 signal 3 } 
	{ reg_file_2_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ reg_file_2_1_q0 sc_in sc_lv 16 signal 3 } 
	{ reg_file_2_1_address1 sc_out sc_lv 11 signal 3 } 
	{ reg_file_2_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ reg_file_2_1_q1 sc_in sc_lv 16 signal 3 } 
	{ reg_file_6_0_address0 sc_out sc_lv 11 signal 4 } 
	{ reg_file_6_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ reg_file_6_0_q0 sc_in sc_lv 16 signal 4 } 
	{ reg_file_6_0_address1 sc_out sc_lv 11 signal 4 } 
	{ reg_file_6_0_ce1 sc_out sc_logic 1 signal 4 } 
	{ reg_file_6_0_q1 sc_in sc_lv 16 signal 4 } 
	{ reg_file_6_1_address0 sc_out sc_lv 11 signal 5 } 
	{ reg_file_6_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ reg_file_6_1_q0 sc_in sc_lv 16 signal 5 } 
	{ reg_file_6_1_address1 sc_out sc_lv 11 signal 5 } 
	{ reg_file_6_1_ce1 sc_out sc_logic 1 signal 5 } 
	{ reg_file_6_1_q1 sc_in sc_lv 16 signal 5 } 
	{ reg_file_7_0_address0 sc_out sc_lv 11 signal 6 } 
	{ reg_file_7_0_ce0 sc_out sc_logic 1 signal 6 } 
	{ reg_file_7_0_we0 sc_out sc_logic 1 signal 6 } 
	{ reg_file_7_0_d0 sc_out sc_lv 16 signal 6 } 
	{ reg_file_7_0_address1 sc_out sc_lv 11 signal 6 } 
	{ reg_file_7_0_ce1 sc_out sc_logic 1 signal 6 } 
	{ reg_file_7_0_q1 sc_in sc_lv 16 signal 6 } 
	{ reg_file_7_1_address0 sc_out sc_lv 11 signal 7 } 
	{ reg_file_7_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ reg_file_7_1_we0 sc_out sc_logic 1 signal 7 } 
	{ reg_file_7_1_d0 sc_out sc_lv 16 signal 7 } 
	{ reg_file_7_1_address1 sc_out sc_lv 11 signal 7 } 
	{ reg_file_7_1_ce1 sc_out sc_logic 1 signal 7 } 
	{ reg_file_7_1_q1 sc_in sc_lv 16 signal 7 } 
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
 	{ "name": "reg_file_7_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_7_0", "role": "we0" }} , 
 	{ "name": "reg_file_7_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_7_0", "role": "d0" }} , 
 	{ "name": "reg_file_7_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_7_0", "role": "address1" }} , 
 	{ "name": "reg_file_7_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_7_0", "role": "ce1" }} , 
 	{ "name": "reg_file_7_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_7_0", "role": "q1" }} , 
 	{ "name": "reg_file_7_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_7_1", "role": "address0" }} , 
 	{ "name": "reg_file_7_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_7_1", "role": "ce0" }} , 
 	{ "name": "reg_file_7_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_7_1", "role": "we0" }} , 
 	{ "name": "reg_file_7_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_7_1", "role": "d0" }} , 
 	{ "name": "reg_file_7_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_7_1", "role": "address1" }} , 
 	{ "name": "reg_file_7_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_7_1", "role": "ce1" }} , 
 	{ "name": "reg_file_7_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_7_1", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "4", "14"],
		"CDFG" : "compute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2126", "EstimateLatencyMax" : "2126",
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
			{"Name" : "reg_file_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_136_2_VITIS_LOOP_138_3_fu_68", "Port" : "reg_file_2_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_136_2_VITIS_LOOP_138_3_fu_68", "Port" : "reg_file_2_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "reg_file_6_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_136_2_VITIS_LOOP_138_3_fu_68", "Port" : "reg_file_6_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "reg_file_6_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "4", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_136_2_VITIS_LOOP_138_3_fu_68", "Port" : "reg_file_6_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "reg_file_7_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_132_1_fu_58", "Port" : "reg_file_7_0", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "4", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_136_2_VITIS_LOOP_138_3_fu_68", "Port" : "reg_file_7_0", "Inst_start_state" : "4", "Inst_end_state" : "5"}]},
			{"Name" : "reg_file_7_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_132_1_fu_58", "Port" : "reg_file_7_1", "Inst_start_state" : "2", "Inst_end_state" : "3"},
					{"ID" : "4", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_136_2_VITIS_LOOP_138_3_fu_68", "Port" : "reg_file_7_1", "Inst_start_state" : "4", "Inst_end_state" : "5"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_132_1_fu_58", "Parent" : "0", "Child" : ["2", "3"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_132_1",
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
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_23", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_28", "FromFinalSV" : "1", "FromAddress" : "reg_file_7_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_34", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_34", "ToFinalSV" : "2", "ToAddress" : "reg_file_7_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(gemv-max-throughput/src/correlation.cpp:133:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state1_pp0_iter0_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter0", "FromInitialOperation" : "ap_enable_operation_24", "FromInitialSV" : "0", "FromFinalState" : "ap_enable_state2_pp0_iter1_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter1", "FromFinalOperation" : "ap_enable_operation_29", "FromFinalSV" : "1", "FromAddress" : "reg_file_7_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_36", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state3_pp0_iter2_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter2", "ToFinalOperation" : "ap_enable_operation_36", "ToFinalSV" : "2", "ToAddress" : "reg_file_7_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(gemv-max-throughput/src/correlation.cpp:133:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_34", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_34", "FromFinalSV" : "2", "FromAddress" : "reg_file_7_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_23", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_28", "ToFinalSV" : "1", "ToAddress" : "reg_file_7_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(gemv-max-throughput/src/correlation.cpp:133:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_36", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state3_pp0_iter2_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter2", "FromFinalOperation" : "ap_enable_operation_36", "FromFinalSV" : "2", "FromAddress" : "reg_file_7_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state1_pp0_iter0_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter0", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter1", "ToInitialOperation" : "ap_enable_operation_24", "ToInitialSV" : "0", "ToFinalState" : "ap_enable_state2_pp0_iter1_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter1", "ToFinalOperation" : "ap_enable_operation_29", "ToFinalSV" : "1", "ToAddress" : "reg_file_7_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(gemv-max-throughput/src/correlation.cpp:133:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state1_pp0_iter0_stage0", "ap_enable_state2_pp0_iter1_stage0", "ap_enable_state3_pp0_iter2_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_7_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_7_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_1_0_load", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_132_1", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter2", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter2", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_132_1_fu_58.mux_21_16_1_1_U38", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_132_1_fu_58.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_136_2_VITIS_LOOP_138_3_fu_68", "Parent" : "0", "Child" : ["5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_136_2_VITIS_LOOP_138_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2055", "EstimateLatencyMax" : "2055",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state5_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_88", "FromInitialSV" : "4", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_92", "FromFinalSV" : "5", "FromAddress" : "reg_file_7_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state7_pp0_iter6_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter6", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_101", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state7_pp0_iter6_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter6", "ToFinalOperation" : "ap_enable_operation_101", "ToFinalSV" : "6", "ToAddress" : "reg_file_7_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(gemv-max-throughput/src/correlation.cpp:141:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state5_pp0_iter4_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter4", "FromInitialOperation" : "ap_enable_operation_91", "FromInitialSV" : "4", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_94", "FromFinalSV" : "5", "FromAddress" : "reg_file_7_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state7_pp0_iter6_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter6", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_103", "ToInitialSV" : "6", "ToFinalState" : "ap_enable_state7_pp0_iter6_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter6", "ToFinalOperation" : "ap_enable_operation_103", "ToFinalSV" : "6", "ToAddress" : "reg_file_7_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(gemv-max-throughput/src/correlation.cpp:141:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state7_pp0_iter6_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter6", "FromInitialOperation" : "ap_enable_operation_101", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state7_pp0_iter6_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter6", "FromFinalOperation" : "ap_enable_operation_101", "FromFinalSV" : "6", "FromAddress" : "reg_file_7_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state5_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_88", "ToInitialSV" : "4", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_92", "ToFinalSV" : "5", "ToAddress" : "reg_file_7_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(gemv-max-throughput/src/correlation.cpp:141:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state5_pp0_iter4_stage0", "ap_enable_state6_pp0_iter5_stage0", "ap_enable_state7_pp0_iter6_stage0"]},
			{"FromInitialState" : "ap_enable_state7_pp0_iter6_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter6", "FromInitialOperation" : "ap_enable_operation_103", "FromInitialSV" : "6", "FromFinalState" : "ap_enable_state7_pp0_iter6_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter6", "FromFinalOperation" : "ap_enable_operation_103", "FromFinalSV" : "6", "FromAddress" : "reg_file_7_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state5_pp0_iter4_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter4", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter5", "ToInitialOperation" : "ap_enable_operation_91", "ToInitialSV" : "4", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_94", "ToFinalSV" : "5", "ToAddress" : "reg_file_7_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(gemv-max-throughput/src/correlation.cpp:141:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state5_pp0_iter4_stage0", "ap_enable_state6_pp0_iter5_stage0", "ap_enable_state7_pp0_iter6_stage0"]}],
		"Port" : [
			{"Name" : "reg_file_6_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_6_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_0_0_load", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_7_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_7_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_2_0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_136_2_VITIS_LOOP_138_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_136_2_VITIS_LOOP_138_3_fu_68.hadd_16ns_16ns_16_2_full_dsp_1_U43", "Parent" : "4"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_136_2_VITIS_LOOP_138_3_fu_68.hadd_16ns_16ns_16_2_full_dsp_1_U44", "Parent" : "4"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_136_2_VITIS_LOOP_138_3_fu_68.hmul_16ns_16ns_16_2_max_dsp_1_U46", "Parent" : "4"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_136_2_VITIS_LOOP_138_3_fu_68.hmul_16ns_16ns_16_2_max_dsp_1_U47", "Parent" : "4"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_136_2_VITIS_LOOP_138_3_fu_68.mux_21_16_1_1_U48", "Parent" : "4"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_136_2_VITIS_LOOP_138_3_fu_68.mux_21_16_1_1_U49", "Parent" : "4"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_136_2_VITIS_LOOP_138_3_fu_68.mux_21_16_1_1_U50", "Parent" : "4"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_136_2_VITIS_LOOP_138_3_fu_68.mux_21_16_1_1_U51", "Parent" : "4"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_136_2_VITIS_LOOP_138_3_fu_68.flow_control_loop_pipe_sequential_init_U", "Parent" : "4"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hmul_16ns_16ns_16_2_max_dsp_1_U60", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute {
		reg_file_0_0 {Type I LastRead 2 FirstWrite -1}
		reg_file_1_0 {Type I LastRead 0 FirstWrite -1}
		reg_file_2_0 {Type I LastRead 3 FirstWrite -1}
		reg_file_2_1 {Type I LastRead 3 FirstWrite -1}
		reg_file_6_0 {Type I LastRead 1 FirstWrite -1}
		reg_file_6_1 {Type I LastRead 1 FirstWrite -1}
		reg_file_7_0 {Type IO LastRead 4 FirstWrite 2}
		reg_file_7_1 {Type IO LastRead 4 FirstWrite 2}}
	compute_Pipeline_VITIS_LOOP_132_1 {
		reg_file_7_1 {Type IO LastRead 0 FirstWrite 2}
		reg_file_7_0 {Type IO LastRead 0 FirstWrite 2}
		reg_file_1_0_load {Type I LastRead 0 FirstWrite -1}}
	compute_Pipeline_VITIS_LOOP_136_2_VITIS_LOOP_138_3 {
		reg_file_6_0 {Type I LastRead 1 FirstWrite -1}
		reg_file_6_1 {Type I LastRead 1 FirstWrite -1}
		reg_file_0_0_load {Type I LastRead 0 FirstWrite -1}
		reg_file_7_1 {Type IO LastRead 4 FirstWrite 6}
		reg_file_7_0 {Type IO LastRead 4 FirstWrite 6}
		reg_file_2_1 {Type I LastRead 3 FirstWrite -1}
		reg_file_2_0 {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2126", "Max" : "2126"}
	, {"Name" : "Interval", "Min" : "2126", "Max" : "2126"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	reg_file_0_0 { ap_memory {  { reg_file_0_0_address0 mem_address 1 11 }  { reg_file_0_0_ce0 mem_ce 1 1 }  { reg_file_0_0_q0 mem_dout 0 16 } } }
	reg_file_1_0 { ap_memory {  { reg_file_1_0_address0 mem_address 1 11 }  { reg_file_1_0_ce0 mem_ce 1 1 }  { reg_file_1_0_q0 mem_dout 0 16 } } }
	reg_file_2_0 { ap_memory {  { reg_file_2_0_address0 mem_address 1 11 }  { reg_file_2_0_ce0 mem_ce 1 1 }  { reg_file_2_0_q0 mem_dout 0 16 }  { reg_file_2_0_address1 MemPortADDR2 1 11 }  { reg_file_2_0_ce1 MemPortCE2 1 1 }  { reg_file_2_0_q1 MemPortDOUT2 0 16 } } }
	reg_file_2_1 { ap_memory {  { reg_file_2_1_address0 mem_address 1 11 }  { reg_file_2_1_ce0 mem_ce 1 1 }  { reg_file_2_1_q0 mem_dout 0 16 }  { reg_file_2_1_address1 MemPortADDR2 1 11 }  { reg_file_2_1_ce1 MemPortCE2 1 1 }  { reg_file_2_1_q1 MemPortDOUT2 0 16 } } }
	reg_file_6_0 { ap_memory {  { reg_file_6_0_address0 mem_address 1 11 }  { reg_file_6_0_ce0 mem_ce 1 1 }  { reg_file_6_0_q0 mem_dout 0 16 }  { reg_file_6_0_address1 MemPortADDR2 1 11 }  { reg_file_6_0_ce1 MemPortCE2 1 1 }  { reg_file_6_0_q1 MemPortDOUT2 0 16 } } }
	reg_file_6_1 { ap_memory {  { reg_file_6_1_address0 mem_address 1 11 }  { reg_file_6_1_ce0 mem_ce 1 1 }  { reg_file_6_1_q0 mem_dout 0 16 }  { reg_file_6_1_address1 MemPortADDR2 1 11 }  { reg_file_6_1_ce1 MemPortCE2 1 1 }  { reg_file_6_1_q1 MemPortDOUT2 0 16 } } }
	reg_file_7_0 { ap_memory {  { reg_file_7_0_address0 mem_address 1 11 }  { reg_file_7_0_ce0 mem_ce 1 1 }  { reg_file_7_0_we0 mem_we 1 1 }  { reg_file_7_0_d0 mem_din 1 16 }  { reg_file_7_0_address1 MemPortADDR2 1 11 }  { reg_file_7_0_ce1 MemPortCE2 1 1 }  { reg_file_7_0_q1 MemPortDOUT2 0 16 } } }
	reg_file_7_1 { ap_memory {  { reg_file_7_1_address0 mem_address 1 11 }  { reg_file_7_1_ce0 mem_ce 1 1 }  { reg_file_7_1_we0 mem_we 1 1 }  { reg_file_7_1_d0 mem_din 1 16 }  { reg_file_7_1_address1 MemPortADDR2 1 11 }  { reg_file_7_1_ce1 MemPortCE2 1 1 }  { reg_file_7_1_q1 MemPortDOUT2 0 16 } } }
}
