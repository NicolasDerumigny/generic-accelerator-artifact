set moduleName compute_Pipeline_VITIS_LOOP_135_2
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
set C_modelName {compute_Pipeline_VITIS_LOOP_135_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ zext_ln131 int 6 regular  }
	{ reg_file_7_1 int 16 regular {array 2048 { 0 1 } 1 1 }  }
	{ reg_file_7_0 int 16 regular {array 2048 { 0 1 } 1 1 }  }
	{ reg_file_2_1 int 16 regular {array 2048 { 1 3 } 1 1 }  }
	{ reg_file_2_0 int 16 regular {array 2048 { 1 3 } 1 1 }  }
	{ lshr_ln int 5 regular  }
	{ trunc_ln int 1 regular  }
	{ tmp int 16 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "zext_ln131", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_7_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "reg_file_7_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "reg_file_2_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_2_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "lshr_ln", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "trunc_ln", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "tmp", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 30
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ zext_ln131 sc_in sc_lv 6 signal 0 } 
	{ reg_file_7_1_address0 sc_out sc_lv 11 signal 1 } 
	{ reg_file_7_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ reg_file_7_1_we0 sc_out sc_logic 1 signal 1 } 
	{ reg_file_7_1_d0 sc_out sc_lv 16 signal 1 } 
	{ reg_file_7_1_address1 sc_out sc_lv 11 signal 1 } 
	{ reg_file_7_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ reg_file_7_1_q1 sc_in sc_lv 16 signal 1 } 
	{ reg_file_7_0_address0 sc_out sc_lv 11 signal 2 } 
	{ reg_file_7_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ reg_file_7_0_we0 sc_out sc_logic 1 signal 2 } 
	{ reg_file_7_0_d0 sc_out sc_lv 16 signal 2 } 
	{ reg_file_7_0_address1 sc_out sc_lv 11 signal 2 } 
	{ reg_file_7_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ reg_file_7_0_q1 sc_in sc_lv 16 signal 2 } 
	{ reg_file_2_1_address0 sc_out sc_lv 11 signal 3 } 
	{ reg_file_2_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ reg_file_2_1_q0 sc_in sc_lv 16 signal 3 } 
	{ reg_file_2_0_address0 sc_out sc_lv 11 signal 4 } 
	{ reg_file_2_0_ce0 sc_out sc_logic 1 signal 4 } 
	{ reg_file_2_0_q0 sc_in sc_lv 16 signal 4 } 
	{ lshr_ln sc_in sc_lv 5 signal 5 } 
	{ trunc_ln sc_in sc_lv 1 signal 6 } 
	{ tmp sc_in sc_lv 16 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "zext_ln131", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "zext_ln131", "role": "default" }} , 
 	{ "name": "reg_file_7_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_7_1", "role": "address0" }} , 
 	{ "name": "reg_file_7_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_7_1", "role": "ce0" }} , 
 	{ "name": "reg_file_7_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_7_1", "role": "we0" }} , 
 	{ "name": "reg_file_7_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_7_1", "role": "d0" }} , 
 	{ "name": "reg_file_7_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_7_1", "role": "address1" }} , 
 	{ "name": "reg_file_7_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_7_1", "role": "ce1" }} , 
 	{ "name": "reg_file_7_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_7_1", "role": "q1" }} , 
 	{ "name": "reg_file_7_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_7_0", "role": "address0" }} , 
 	{ "name": "reg_file_7_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_7_0", "role": "ce0" }} , 
 	{ "name": "reg_file_7_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_7_0", "role": "we0" }} , 
 	{ "name": "reg_file_7_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_7_0", "role": "d0" }} , 
 	{ "name": "reg_file_7_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_7_0", "role": "address1" }} , 
 	{ "name": "reg_file_7_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_7_0", "role": "ce1" }} , 
 	{ "name": "reg_file_7_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_7_0", "role": "q1" }} , 
 	{ "name": "reg_file_2_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_2_1", "role": "address0" }} , 
 	{ "name": "reg_file_2_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_2_1", "role": "ce0" }} , 
 	{ "name": "reg_file_2_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_2_1", "role": "q0" }} , 
 	{ "name": "reg_file_2_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_2_0", "role": "address0" }} , 
 	{ "name": "reg_file_2_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_2_0", "role": "ce0" }} , 
 	{ "name": "reg_file_2_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_2_0", "role": "q0" }} , 
 	{ "name": "lshr_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "lshr_ln", "role": "default" }} , 
 	{ "name": "trunc_ln", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "trunc_ln", "role": "default" }} , 
 	{ "name": "tmp", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tmp", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_135_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "6", "EstimateLatencyMax" : "69",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_51", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_54", "FromFinalSV" : "3", "FromAddress" : "reg_file_7_0_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_60", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_60", "ToFinalSV" : "5", "ToAddress" : "reg_file_7_0_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(trmv-max-sharing/src/correlation.cpp:138:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state3_pp0_iter2_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter2", "FromInitialOperation" : "ap_enable_operation_52", "FromInitialSV" : "2", "FromFinalState" : "ap_enable_state4_pp0_iter3_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter3", "FromFinalOperation" : "ap_enable_operation_55", "FromFinalSV" : "3", "FromAddress" : "reg_file_7_1_address1", "FromType" : "R", "ToInitialState" : "ap_enable_state6_pp0_iter5_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter5", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_62", "ToInitialSV" : "5", "ToFinalState" : "ap_enable_state6_pp0_iter5_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter5", "ToFinalOperation" : "ap_enable_operation_62", "ToFinalSV" : "5", "ToAddress" : "reg_file_7_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(trmv-max-sharing/src/correlation.cpp:138:9)", "Type" : "WAR"},
			{"FromInitialState" : "ap_enable_state6_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_60", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_60", "FromFinalSV" : "5", "FromAddress" : "reg_file_7_0_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_51", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_54", "ToFinalSV" : "3", "ToAddress" : "reg_file_7_0_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(trmv-max-sharing/src/correlation.cpp:138:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0", "ap_enable_state6_pp0_iter5_stage0"]},
			{"FromInitialState" : "ap_enable_state6_pp0_iter5_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter5", "FromInitialOperation" : "ap_enable_operation_62", "FromInitialSV" : "5", "FromFinalState" : "ap_enable_state6_pp0_iter5_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter5", "FromFinalOperation" : "ap_enable_operation_62", "FromFinalSV" : "5", "FromAddress" : "reg_file_7_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state3_pp0_iter2_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter2", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter3", "ToInitialOperation" : "ap_enable_operation_52", "ToInitialSV" : "2", "ToFinalState" : "ap_enable_state4_pp0_iter3_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter3", "ToFinalOperation" : "ap_enable_operation_55", "ToFinalSV" : "3", "ToAddress" : "reg_file_7_1_address1", "ToType" : "R", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "11", "II" : "1", "Pragma" : "(trmv-max-sharing/src/correlation.cpp:138:9)", "Type" : "RAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state3_pp0_iter2_stage0", "ap_enable_state4_pp0_iter3_stage0", "ap_enable_state6_pp0_iter5_stage0"]}],
		"Port" : [
			{"Name" : "zext_ln131", "Type" : "None", "Direction" : "I"},
			{"Name" : "reg_file_7_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_7_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_2_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_2_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "lshr_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "trunc_ln", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_135_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter5", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter5", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hadd_16ns_16ns_16_2_full_dsp_1_U37", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hmul_16ns_16ns_16_2_max_dsp_1_U38", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U39", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U40", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_Pipeline_VITIS_LOOP_135_2 {
		zext_ln131 {Type I LastRead 0 FirstWrite -1}
		reg_file_7_1 {Type IO LastRead 2 FirstWrite 5}
		reg_file_7_0 {Type IO LastRead 2 FirstWrite 5}
		reg_file_2_1 {Type I LastRead 1 FirstWrite -1}
		reg_file_2_0 {Type I LastRead 1 FirstWrite -1}
		lshr_ln {Type I LastRead 0 FirstWrite -1}
		trunc_ln {Type I LastRead 0 FirstWrite -1}
		tmp {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "6", "Max" : "69"}
	, {"Name" : "Interval", "Min" : "6", "Max" : "69"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	zext_ln131 { ap_none {  { zext_ln131 in_data 0 6 } } }
	reg_file_7_1 { ap_memory {  { reg_file_7_1_address0 mem_address 1 11 }  { reg_file_7_1_ce0 mem_ce 1 1 }  { reg_file_7_1_we0 mem_we 1 1 }  { reg_file_7_1_d0 mem_din 1 16 }  { reg_file_7_1_address1 MemPortADDR2 1 11 }  { reg_file_7_1_ce1 MemPortCE2 1 1 }  { reg_file_7_1_q1 in_data 0 16 } } }
	reg_file_7_0 { ap_memory {  { reg_file_7_0_address0 mem_address 1 11 }  { reg_file_7_0_ce0 mem_ce 1 1 }  { reg_file_7_0_we0 mem_we 1 1 }  { reg_file_7_0_d0 mem_din 1 16 }  { reg_file_7_0_address1 MemPortADDR2 1 11 }  { reg_file_7_0_ce1 MemPortCE2 1 1 }  { reg_file_7_0_q1 in_data 0 16 } } }
	reg_file_2_1 { ap_memory {  { reg_file_2_1_address0 mem_address 1 11 }  { reg_file_2_1_ce0 mem_ce 1 1 }  { reg_file_2_1_q0 in_data 0 16 } } }
	reg_file_2_0 { ap_memory {  { reg_file_2_0_address0 mem_address 1 11 }  { reg_file_2_0_ce0 mem_ce 1 1 }  { reg_file_2_0_q0 in_data 0 16 } } }
	lshr_ln { ap_none {  { lshr_ln in_data 0 5 } } }
	trunc_ln { ap_none {  { trunc_ln in_data 0 1 } } }
	tmp { ap_none {  { tmp in_data 0 16 } } }
}
