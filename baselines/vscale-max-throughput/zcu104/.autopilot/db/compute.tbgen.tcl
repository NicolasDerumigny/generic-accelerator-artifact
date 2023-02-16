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
	{ reg_file_2_0 int 16 regular {array 2048 { 1 3 } 1 1 }  }
	{ reg_file_2_1 int 16 regular {array 2048 { 1 3 } 1 1 }  }
	{ reg_file_3_0 int 16 regular {array 2048 { 1 3 } 1 1 }  }
	{ reg_file_3_1 int 16 regular {array 2048 { 1 3 } 1 1 }  }
	{ reg_file_4_0 int 16 regular {array 2048 { 1 3 } 1 1 }  }
	{ reg_file_4_1 int 16 regular {array 2048 { 1 3 } 1 1 }  }
	{ reg_file_5_0 int 16 regular {array 2048 { 0 2 } 1 1 }  }
	{ reg_file_5_1 int 16 regular {array 2048 { 0 2 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "reg_file_2_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_2_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_3_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_3_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_4_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_4_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_5_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "reg_file_5_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 42
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ reg_file_2_0_address0 sc_out sc_lv 11 signal 0 } 
	{ reg_file_2_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ reg_file_2_0_q0 sc_in sc_lv 16 signal 0 } 
	{ reg_file_2_1_address0 sc_out sc_lv 11 signal 1 } 
	{ reg_file_2_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ reg_file_2_1_q0 sc_in sc_lv 16 signal 1 } 
	{ reg_file_3_0_address0 sc_out sc_lv 11 signal 2 } 
	{ reg_file_3_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ reg_file_3_0_q0 sc_in sc_lv 16 signal 2 } 
	{ reg_file_3_1_address0 sc_out sc_lv 11 signal 3 } 
	{ reg_file_3_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ reg_file_3_1_q0 sc_in sc_lv 16 signal 3 } 
	{ reg_file_4_0_address0 sc_out sc_lv 11 signal 4 } 
	{ reg_file_4_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ reg_file_4_0_q0 sc_in sc_lv 16 signal 4 } 
	{ reg_file_4_1_address0 sc_out sc_lv 11 signal 5 } 
	{ reg_file_4_1_ce0 sc_out sc_logic 1 signal 5 } 
	{ reg_file_4_1_q0 sc_in sc_lv 16 signal 5 } 
	{ reg_file_5_0_address0 sc_out sc_lv 11 signal 6 } 
	{ reg_file_5_0_ce0 sc_out sc_logic 1 signal 6 } 
	{ reg_file_5_0_we0 sc_out sc_logic 1 signal 6 } 
	{ reg_file_5_0_d0 sc_out sc_lv 16 signal 6 } 
	{ reg_file_5_0_address1 sc_out sc_lv 11 signal 6 } 
	{ reg_file_5_0_ce1 sc_out sc_logic 1 signal 6 } 
	{ reg_file_5_0_we1 sc_out sc_logic 1 signal 6 } 
	{ reg_file_5_0_d1 sc_out sc_lv 16 signal 6 } 
	{ reg_file_5_0_q1 sc_in sc_lv 16 signal 6 } 
	{ reg_file_5_1_address0 sc_out sc_lv 11 signal 7 } 
	{ reg_file_5_1_ce0 sc_out sc_logic 1 signal 7 } 
	{ reg_file_5_1_we0 sc_out sc_logic 1 signal 7 } 
	{ reg_file_5_1_d0 sc_out sc_lv 16 signal 7 } 
	{ reg_file_5_1_address1 sc_out sc_lv 11 signal 7 } 
	{ reg_file_5_1_ce1 sc_out sc_logic 1 signal 7 } 
	{ reg_file_5_1_we1 sc_out sc_logic 1 signal 7 } 
	{ reg_file_5_1_d1 sc_out sc_lv 16 signal 7 } 
	{ reg_file_5_1_q1 sc_in sc_lv 16 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "reg_file_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_2_0", "role": "address0" }} , 
 	{ "name": "reg_file_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_2_0", "role": "ce0" }} , 
 	{ "name": "reg_file_2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_2_0", "role": "q0" }} , 
 	{ "name": "reg_file_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_2_1", "role": "address0" }} , 
 	{ "name": "reg_file_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_2_1", "role": "ce0" }} , 
 	{ "name": "reg_file_2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_2_1", "role": "q0" }} , 
 	{ "name": "reg_file_3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "address0" }} , 
 	{ "name": "reg_file_3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "ce0" }} , 
 	{ "name": "reg_file_3_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "q0" }} , 
 	{ "name": "reg_file_3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "address0" }} , 
 	{ "name": "reg_file_3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "ce0" }} , 
 	{ "name": "reg_file_3_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "q0" }} , 
 	{ "name": "reg_file_4_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "address0" }} , 
 	{ "name": "reg_file_4_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "ce0" }} , 
 	{ "name": "reg_file_4_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "q0" }} , 
 	{ "name": "reg_file_4_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "address0" }} , 
 	{ "name": "reg_file_4_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "ce0" }} , 
 	{ "name": "reg_file_4_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "q0" }} , 
 	{ "name": "reg_file_5_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "address0" }} , 
 	{ "name": "reg_file_5_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "ce0" }} , 
 	{ "name": "reg_file_5_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "we0" }} , 
 	{ "name": "reg_file_5_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "d0" }} , 
 	{ "name": "reg_file_5_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "address1" }} , 
 	{ "name": "reg_file_5_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "ce1" }} , 
 	{ "name": "reg_file_5_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "we1" }} , 
 	{ "name": "reg_file_5_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "d1" }} , 
 	{ "name": "reg_file_5_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_5_0", "role": "q1" }} , 
 	{ "name": "reg_file_5_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "address0" }} , 
 	{ "name": "reg_file_5_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "ce0" }} , 
 	{ "name": "reg_file_5_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "we0" }} , 
 	{ "name": "reg_file_5_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "d0" }} , 
 	{ "name": "reg_file_5_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "address1" }} , 
 	{ "name": "reg_file_5_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "ce1" }} , 
 	{ "name": "reg_file_5_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "we1" }} , 
 	{ "name": "reg_file_5_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "d1" }} , 
 	{ "name": "reg_file_5_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_5_1", "role": "q1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "3"],
		"CDFG" : "compute",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3084", "EstimateLatencyMax" : "3084",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "reg_file_2_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_141_3_VITIS_LOOP_142_4_fu_36", "Port" : "reg_file_2_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_141_3_VITIS_LOOP_142_4_fu_36", "Port" : "reg_file_2_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "reg_file_3_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_141_3_VITIS_LOOP_142_4_fu_36", "Port" : "reg_file_3_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "reg_file_3_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_141_3_VITIS_LOOP_142_4_fu_36", "Port" : "reg_file_3_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "reg_file_4_0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_141_3_VITIS_LOOP_142_4_fu_36", "Port" : "reg_file_4_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "reg_file_4_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "3", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_141_3_VITIS_LOOP_142_4_fu_36", "Port" : "reg_file_4_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_28", "Port" : "reg_file_5_0", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_141_3_VITIS_LOOP_142_4_fu_36", "Port" : "reg_file_5_0", "Inst_start_state" : "3", "Inst_end_state" : "4"}]},
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_28", "Port" : "reg_file_5_1", "Inst_start_state" : "1", "Inst_end_state" : "2"},
					{"ID" : "3", "SubInstance" : "grp_compute_Pipeline_VITIS_LOOP_141_3_VITIS_LOOP_142_4_fu_36", "Port" : "reg_file_5_1", "Inst_start_state" : "3", "Inst_end_state" : "4"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_28", "Parent" : "0", "Child" : ["2"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2",
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
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_133_1_VITIS_LOOP_134_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2_fu_28.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_141_3_VITIS_LOOP_142_4_fu_36", "Parent" : "0", "Child" : ["4", "5", "6", "7", "8", "9", "10"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_141_3_VITIS_LOOP_142_4",
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
		"Port" : [
			{"Name" : "reg_file_5_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_5_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_4_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_4_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_2_0", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_141_3_VITIS_LOOP_142_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter6", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter6", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_141_3_VITIS_LOOP_142_4_fu_36.hadd_16ns_16ns_16_2_full_dsp_1_U39", "Parent" : "3"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_141_3_VITIS_LOOP_142_4_fu_36.hadd_16ns_16ns_16_2_full_dsp_1_U40", "Parent" : "3"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_141_3_VITIS_LOOP_142_4_fu_36.hadd_16ns_16ns_16_2_full_dsp_1_U41", "Parent" : "3"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_141_3_VITIS_LOOP_142_4_fu_36.hadd_16ns_16ns_16_2_full_dsp_1_U42", "Parent" : "3"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_141_3_VITIS_LOOP_142_4_fu_36.hmul_16ns_16ns_16_2_max_dsp_1_U43", "Parent" : "3"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_141_3_VITIS_LOOP_142_4_fu_36.hmul_16ns_16ns_16_2_max_dsp_1_U44", "Parent" : "3"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_compute_Pipeline_VITIS_LOOP_141_3_VITIS_LOOP_142_4_fu_36.flow_control_loop_pipe_sequential_init_U", "Parent" : "3"}]}


set ArgLastReadFirstWriteLatency {
	compute {
		reg_file_2_0 {Type I LastRead 0 FirstWrite -1}
		reg_file_2_1 {Type I LastRead 0 FirstWrite -1}
		reg_file_3_0 {Type I LastRead 2 FirstWrite -1}
		reg_file_3_1 {Type I LastRead 2 FirstWrite -1}
		reg_file_4_0 {Type I LastRead 0 FirstWrite -1}
		reg_file_4_1 {Type I LastRead 0 FirstWrite -1}
		reg_file_5_0 {Type IO LastRead 4 FirstWrite 0}
		reg_file_5_1 {Type IO LastRead 4 FirstWrite 0}}
	compute_Pipeline_VITIS_LOOP_133_1_VITIS_LOOP_134_2 {
		reg_file_5_1 {Type O LastRead -1 FirstWrite 0}
		reg_file_5_0 {Type O LastRead -1 FirstWrite 0}}
	compute_Pipeline_VITIS_LOOP_141_3_VITIS_LOOP_142_4 {
		reg_file_5_1 {Type IO LastRead 4 FirstWrite 6}
		reg_file_5_0 {Type IO LastRead 4 FirstWrite 6}
		reg_file_4_1 {Type I LastRead 0 FirstWrite -1}
		reg_file_4_0 {Type I LastRead 0 FirstWrite -1}
		reg_file_3_1 {Type I LastRead 2 FirstWrite -1}
		reg_file_3_0 {Type I LastRead 2 FirstWrite -1}
		reg_file_2_1 {Type I LastRead 0 FirstWrite -1}
		reg_file_2_0 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3084", "Max" : "3084"}
	, {"Name" : "Interval", "Min" : "3084", "Max" : "3084"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	reg_file_2_0 { ap_memory {  { reg_file_2_0_address0 mem_address 1 11 }  { reg_file_2_0_ce0 mem_ce 1 1 }  { reg_file_2_0_q0 mem_dout 0 16 } } }
	reg_file_2_1 { ap_memory {  { reg_file_2_1_address0 mem_address 1 11 }  { reg_file_2_1_ce0 mem_ce 1 1 }  { reg_file_2_1_q0 mem_dout 0 16 } } }
	reg_file_3_0 { ap_memory {  { reg_file_3_0_address0 mem_address 1 11 }  { reg_file_3_0_ce0 mem_ce 1 1 }  { reg_file_3_0_q0 mem_dout 0 16 } } }
	reg_file_3_1 { ap_memory {  { reg_file_3_1_address0 mem_address 1 11 }  { reg_file_3_1_ce0 mem_ce 1 1 }  { reg_file_3_1_q0 mem_dout 0 16 } } }
	reg_file_4_0 { ap_memory {  { reg_file_4_0_address0 mem_address 1 11 }  { reg_file_4_0_ce0 mem_ce 1 1 }  { reg_file_4_0_q0 mem_dout 0 16 } } }
	reg_file_4_1 { ap_memory {  { reg_file_4_1_address0 mem_address 1 11 }  { reg_file_4_1_ce0 mem_ce 1 1 }  { reg_file_4_1_q0 mem_dout 0 16 } } }
	reg_file_5_0 { ap_memory {  { reg_file_5_0_address0 mem_address 1 11 }  { reg_file_5_0_ce0 mem_ce 1 1 }  { reg_file_5_0_we0 mem_we 1 1 }  { reg_file_5_0_d0 mem_din 1 16 }  { reg_file_5_0_address1 MemPortADDR2 1 11 }  { reg_file_5_0_ce1 MemPortCE2 1 1 }  { reg_file_5_0_we1 MemPortWE2 1 1 }  { reg_file_5_0_d1 MemPortDIN2 1 16 }  { reg_file_5_0_q1 MemPortDOUT2 0 16 } } }
	reg_file_5_1 { ap_memory {  { reg_file_5_1_address0 mem_address 1 11 }  { reg_file_5_1_ce0 mem_ce 1 1 }  { reg_file_5_1_we0 mem_we 1 1 }  { reg_file_5_1_d0 mem_din 1 16 }  { reg_file_5_1_address1 MemPortADDR2 1 11 }  { reg_file_5_1_ce1 MemPortCE2 1 1 }  { reg_file_5_1_we1 MemPortWE2 1 1 }  { reg_file_5_1_d1 MemPortDIN2 1 16 }  { reg_file_5_1_q1 MemPortDOUT2 0 16 } } }
}
