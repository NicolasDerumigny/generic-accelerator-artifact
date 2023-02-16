set moduleName compute_Pipeline_VITIS_LOOP_142_4
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
set C_modelName {compute_Pipeline_VITIS_LOOP_142_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ reg_file_4_1 int 16 regular {array 2048 { 0 1 } 1 1 }  }
	{ reg_file_4_0 int 16 regular {array 2048 { 0 1 } 1 1 }  }
	{ reg_file_3_1 int 16 regular {array 2048 { 1 3 } 1 1 }  }
	{ reg_file_3_0 int 16 regular {array 2048 { 1 3 } 1 1 }  }
	{ k int 6 regular  }
	{ tmp_1 int 16 regular  }
	{ tmp_36 int 6 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "reg_file_4_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "reg_file_4_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "reg_file_3_1", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "reg_file_3_0", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "k", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_1", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "tmp_36", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 33
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ reg_file_4_1_address0 sc_out sc_lv 11 signal 0 } 
	{ reg_file_4_1_ce0 sc_out sc_logic 1 signal 0 } 
	{ reg_file_4_1_we0 sc_out sc_logic 1 signal 0 } 
	{ reg_file_4_1_d0 sc_out sc_lv 16 signal 0 } 
	{ reg_file_4_1_address1 sc_out sc_lv 11 signal 0 } 
	{ reg_file_4_1_ce1 sc_out sc_logic 1 signal 0 } 
	{ reg_file_4_1_q1 sc_in sc_lv 16 signal 0 } 
	{ reg_file_4_0_address0 sc_out sc_lv 11 signal 1 } 
	{ reg_file_4_0_ce0 sc_out sc_logic 1 signal 1 } 
	{ reg_file_4_0_we0 sc_out sc_logic 1 signal 1 } 
	{ reg_file_4_0_d0 sc_out sc_lv 16 signal 1 } 
	{ reg_file_4_0_address1 sc_out sc_lv 11 signal 1 } 
	{ reg_file_4_0_ce1 sc_out sc_logic 1 signal 1 } 
	{ reg_file_4_0_q1 sc_in sc_lv 16 signal 1 } 
	{ reg_file_3_1_address0 sc_out sc_lv 11 signal 2 } 
	{ reg_file_3_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ reg_file_3_1_q0 sc_in sc_lv 16 signal 2 } 
	{ reg_file_3_0_address0 sc_out sc_lv 11 signal 3 } 
	{ reg_file_3_0_ce0 sc_out sc_logic 1 signal 3 } 
	{ reg_file_3_0_q0 sc_in sc_lv 16 signal 3 } 
	{ k sc_in sc_lv 6 signal 4 } 
	{ tmp_1 sc_in sc_lv 16 signal 5 } 
	{ tmp_36 sc_in sc_lv 6 signal 6 } 
	{ grp_fu_127_p_din0 sc_out sc_lv 16 signal -1 } 
	{ grp_fu_127_p_din1 sc_out sc_lv 16 signal -1 } 
	{ grp_fu_127_p_dout0 sc_in sc_lv 16 signal -1 } 
	{ grp_fu_127_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "reg_file_4_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "address0" }} , 
 	{ "name": "reg_file_4_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "ce0" }} , 
 	{ "name": "reg_file_4_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "we0" }} , 
 	{ "name": "reg_file_4_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "d0" }} , 
 	{ "name": "reg_file_4_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "address1" }} , 
 	{ "name": "reg_file_4_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "ce1" }} , 
 	{ "name": "reg_file_4_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_1", "role": "q1" }} , 
 	{ "name": "reg_file_4_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "address0" }} , 
 	{ "name": "reg_file_4_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "ce0" }} , 
 	{ "name": "reg_file_4_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "we0" }} , 
 	{ "name": "reg_file_4_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "d0" }} , 
 	{ "name": "reg_file_4_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "address1" }} , 
 	{ "name": "reg_file_4_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "ce1" }} , 
 	{ "name": "reg_file_4_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_4_0", "role": "q1" }} , 
 	{ "name": "reg_file_3_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "address0" }} , 
 	{ "name": "reg_file_3_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "ce0" }} , 
 	{ "name": "reg_file_3_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_3_1", "role": "q0" }} , 
 	{ "name": "reg_file_3_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "address0" }} , 
 	{ "name": "reg_file_3_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "ce0" }} , 
 	{ "name": "reg_file_3_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "reg_file_3_0", "role": "q0" }} , 
 	{ "name": "k", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "k", "role": "default" }} , 
 	{ "name": "tmp_1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "tmp_1", "role": "default" }} , 
 	{ "name": "tmp_36", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "tmp_36", "role": "default" }} , 
 	{ "name": "grp_fu_127_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grp_fu_127_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_127_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grp_fu_127_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_127_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "grp_fu_127_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_127_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_127_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "compute_Pipeline_VITIS_LOOP_142_4",
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
		"Port" : [
			{"Name" : "reg_file_4_1", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_4_0", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "reg_file_3_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "reg_file_3_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "k", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_1", "Type" : "None", "Direction" : "I"},
			{"Name" : "tmp_36", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_142_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter4", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter4", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.hadd_16ns_16ns_16_2_full_dsp_1_U40", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U42", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_16_1_1_U43", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	compute_Pipeline_VITIS_LOOP_142_4 {
		reg_file_4_1 {Type IO LastRead 1 FirstWrite 4}
		reg_file_4_0 {Type IO LastRead 1 FirstWrite 4}
		reg_file_3_1 {Type I LastRead 0 FirstWrite -1}
		reg_file_3_0 {Type I LastRead 0 FirstWrite -1}
		k {Type I LastRead 0 FirstWrite -1}
		tmp_1 {Type I LastRead 0 FirstWrite -1}
		tmp_36 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "69", "Max" : "69"}
	, {"Name" : "Interval", "Min" : "69", "Max" : "69"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	reg_file_4_1 { ap_memory {  { reg_file_4_1_address0 mem_address 1 11 }  { reg_file_4_1_ce0 mem_ce 1 1 }  { reg_file_4_1_we0 mem_we 1 1 }  { reg_file_4_1_d0 mem_din 1 16 }  { reg_file_4_1_address1 MemPortADDR2 1 11 }  { reg_file_4_1_ce1 MemPortCE2 1 1 }  { reg_file_4_1_q1 in_data 0 16 } } }
	reg_file_4_0 { ap_memory {  { reg_file_4_0_address0 mem_address 1 11 }  { reg_file_4_0_ce0 mem_ce 1 1 }  { reg_file_4_0_we0 mem_we 1 1 }  { reg_file_4_0_d0 mem_din 1 16 }  { reg_file_4_0_address1 MemPortADDR2 1 11 }  { reg_file_4_0_ce1 MemPortCE2 1 1 }  { reg_file_4_0_q1 in_data 0 16 } } }
	reg_file_3_1 { ap_memory {  { reg_file_3_1_address0 mem_address 1 11 }  { reg_file_3_1_ce0 mem_ce 1 1 }  { reg_file_3_1_q0 in_data 0 16 } } }
	reg_file_3_0 { ap_memory {  { reg_file_3_0_address0 mem_address 1 11 }  { reg_file_3_0_ce0 mem_ce 1 1 }  { reg_file_3_0_q0 in_data 0 16 } } }
	k { ap_none {  { k in_data 0 6 } } }
	tmp_1 { ap_none {  { tmp_1 in_data 0 16 } } }
	tmp_36 { ap_none {  { tmp_36 in_data 0 6 } } }
}
