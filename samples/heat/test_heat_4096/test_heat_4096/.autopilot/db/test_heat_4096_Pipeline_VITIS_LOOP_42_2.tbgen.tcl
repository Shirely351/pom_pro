set moduleName test_heat_4096_Pipeline_VITIS_LOOP_42_2
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
set C_modelName {test_heat_4096_Pipeline_VITIS_LOOP_42_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ v2_1 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v2_0 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v3_1 int 32 regular {bram 1024 { 1 1 } 1 1 }  }
	{ v3_3 int 32 regular {bram 1024 { 1 1 } 1 1 }  }
	{ v1 float 32 regular  }
	{ v3_0 int 32 regular {bram 1024 { 1 1 } 1 1 }  }
	{ v3_2 int 32 regular {bram 1024 { 1 1 } 1 1 }  }
	{ v0 float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v2_1", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v2_0", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v3_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_3", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 58
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ v2_1_Addr_A sc_out sc_lv 32 signal 0 } 
	{ v2_1_EN_A sc_out sc_logic 1 signal 0 } 
	{ v2_1_WEN_A sc_out sc_lv 4 signal 0 } 
	{ v2_1_Din_A sc_out sc_lv 32 signal 0 } 
	{ v2_1_Dout_A sc_in sc_lv 32 signal 0 } 
	{ v2_0_Addr_A sc_out sc_lv 32 signal 1 } 
	{ v2_0_EN_A sc_out sc_logic 1 signal 1 } 
	{ v2_0_WEN_A sc_out sc_lv 4 signal 1 } 
	{ v2_0_Din_A sc_out sc_lv 32 signal 1 } 
	{ v2_0_Dout_A sc_in sc_lv 32 signal 1 } 
	{ v3_1_Addr_A sc_out sc_lv 32 signal 2 } 
	{ v3_1_EN_A sc_out sc_logic 1 signal 2 } 
	{ v3_1_WEN_A sc_out sc_lv 4 signal 2 } 
	{ v3_1_Din_A sc_out sc_lv 32 signal 2 } 
	{ v3_1_Dout_A sc_in sc_lv 32 signal 2 } 
	{ v3_1_Addr_B sc_out sc_lv 32 signal 2 } 
	{ v3_1_EN_B sc_out sc_logic 1 signal 2 } 
	{ v3_1_WEN_B sc_out sc_lv 4 signal 2 } 
	{ v3_1_Din_B sc_out sc_lv 32 signal 2 } 
	{ v3_1_Dout_B sc_in sc_lv 32 signal 2 } 
	{ v3_3_Addr_A sc_out sc_lv 32 signal 3 } 
	{ v3_3_EN_A sc_out sc_logic 1 signal 3 } 
	{ v3_3_WEN_A sc_out sc_lv 4 signal 3 } 
	{ v3_3_Din_A sc_out sc_lv 32 signal 3 } 
	{ v3_3_Dout_A sc_in sc_lv 32 signal 3 } 
	{ v3_3_Addr_B sc_out sc_lv 32 signal 3 } 
	{ v3_3_EN_B sc_out sc_logic 1 signal 3 } 
	{ v3_3_WEN_B sc_out sc_lv 4 signal 3 } 
	{ v3_3_Din_B sc_out sc_lv 32 signal 3 } 
	{ v3_3_Dout_B sc_in sc_lv 32 signal 3 } 
	{ v1 sc_in sc_lv 32 signal 4 } 
	{ v3_0_Addr_A sc_out sc_lv 32 signal 5 } 
	{ v3_0_EN_A sc_out sc_logic 1 signal 5 } 
	{ v3_0_WEN_A sc_out sc_lv 4 signal 5 } 
	{ v3_0_Din_A sc_out sc_lv 32 signal 5 } 
	{ v3_0_Dout_A sc_in sc_lv 32 signal 5 } 
	{ v3_0_Addr_B sc_out sc_lv 32 signal 5 } 
	{ v3_0_EN_B sc_out sc_logic 1 signal 5 } 
	{ v3_0_WEN_B sc_out sc_lv 4 signal 5 } 
	{ v3_0_Din_B sc_out sc_lv 32 signal 5 } 
	{ v3_0_Dout_B sc_in sc_lv 32 signal 5 } 
	{ v3_2_Addr_A sc_out sc_lv 32 signal 6 } 
	{ v3_2_EN_A sc_out sc_logic 1 signal 6 } 
	{ v3_2_WEN_A sc_out sc_lv 4 signal 6 } 
	{ v3_2_Din_A sc_out sc_lv 32 signal 6 } 
	{ v3_2_Dout_A sc_in sc_lv 32 signal 6 } 
	{ v3_2_Addr_B sc_out sc_lv 32 signal 6 } 
	{ v3_2_EN_B sc_out sc_logic 1 signal 6 } 
	{ v3_2_WEN_B sc_out sc_lv 4 signal 6 } 
	{ v3_2_Din_B sc_out sc_lv 32 signal 6 } 
	{ v3_2_Dout_B sc_in sc_lv 32 signal 6 } 
	{ v0 sc_in sc_lv 32 signal 7 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "v2_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_1", "role": "Addr_A" }} , 
 	{ "name": "v2_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_1", "role": "EN_A" }} , 
 	{ "name": "v2_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2_1", "role": "WEN_A" }} , 
 	{ "name": "v2_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_1", "role": "Din_A" }} , 
 	{ "name": "v2_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_1", "role": "Dout_A" }} , 
 	{ "name": "v2_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_0", "role": "Addr_A" }} , 
 	{ "name": "v2_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_0", "role": "EN_A" }} , 
 	{ "name": "v2_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2_0", "role": "WEN_A" }} , 
 	{ "name": "v2_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_0", "role": "Din_A" }} , 
 	{ "name": "v2_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_0", "role": "Dout_A" }} , 
 	{ "name": "v3_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1", "role": "Addr_A" }} , 
 	{ "name": "v3_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_1", "role": "EN_A" }} , 
 	{ "name": "v3_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_1", "role": "WEN_A" }} , 
 	{ "name": "v3_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1", "role": "Din_A" }} , 
 	{ "name": "v3_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1", "role": "Dout_A" }} , 
 	{ "name": "v3_1_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1", "role": "Addr_B" }} , 
 	{ "name": "v3_1_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_1", "role": "EN_B" }} , 
 	{ "name": "v3_1_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_1", "role": "WEN_B" }} , 
 	{ "name": "v3_1_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1", "role": "Din_B" }} , 
 	{ "name": "v3_1_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1", "role": "Dout_B" }} , 
 	{ "name": "v3_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_3", "role": "Addr_A" }} , 
 	{ "name": "v3_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_3", "role": "EN_A" }} , 
 	{ "name": "v3_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_3", "role": "WEN_A" }} , 
 	{ "name": "v3_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_3", "role": "Din_A" }} , 
 	{ "name": "v3_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_3", "role": "Dout_A" }} , 
 	{ "name": "v3_3_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_3", "role": "Addr_B" }} , 
 	{ "name": "v3_3_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_3", "role": "EN_B" }} , 
 	{ "name": "v3_3_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_3", "role": "WEN_B" }} , 
 	{ "name": "v3_3_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_3", "role": "Din_B" }} , 
 	{ "name": "v3_3_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_3", "role": "Dout_B" }} , 
 	{ "name": "v1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1", "role": "default" }} , 
 	{ "name": "v3_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0", "role": "Addr_A" }} , 
 	{ "name": "v3_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_0", "role": "EN_A" }} , 
 	{ "name": "v3_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_0", "role": "WEN_A" }} , 
 	{ "name": "v3_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0", "role": "Din_A" }} , 
 	{ "name": "v3_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0", "role": "Dout_A" }} , 
 	{ "name": "v3_0_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0", "role": "Addr_B" }} , 
 	{ "name": "v3_0_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_0", "role": "EN_B" }} , 
 	{ "name": "v3_0_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_0", "role": "WEN_B" }} , 
 	{ "name": "v3_0_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0", "role": "Din_B" }} , 
 	{ "name": "v3_0_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0", "role": "Dout_B" }} , 
 	{ "name": "v3_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2", "role": "Addr_A" }} , 
 	{ "name": "v3_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_2", "role": "EN_A" }} , 
 	{ "name": "v3_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_2", "role": "WEN_A" }} , 
 	{ "name": "v3_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2", "role": "Din_A" }} , 
 	{ "name": "v3_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2", "role": "Dout_A" }} , 
 	{ "name": "v3_2_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2", "role": "Addr_B" }} , 
 	{ "name": "v3_2_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_2", "role": "EN_B" }} , 
 	{ "name": "v3_2_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_2", "role": "WEN_B" }} , 
 	{ "name": "v3_2_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2", "role": "Din_B" }} , 
 	{ "name": "v3_2_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2", "role": "Dout_B" }} , 
 	{ "name": "v0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v0", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"],
		"CDFG" : "test_heat_4096_Pipeline_VITIS_LOOP_42_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2072", "EstimateLatencyMax" : "2072",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v2_1", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v2_0", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v3_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_3", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v1", "Type" : "None", "Direction" : "I"},
			{"Name" : "v3_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_2", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v0", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_42_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter24", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter24", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_7_full_dsp_1_U1", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fsub_32ns_32ns_32_7_full_dsp_1_U2", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U3", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fadd_32ns_32ns_32_7_full_dsp_1_U4", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U5", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U6", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U7", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.fmul_32ns_32ns_32_4_max_dsp_1_U8", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U9", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U10", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U11", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U12", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	test_heat_4096_Pipeline_VITIS_LOOP_42_2 {
		v2_1 {Type O LastRead -1 FirstWrite 24}
		v2_0 {Type O LastRead -1 FirstWrite 24}
		v3_1 {Type I LastRead 11 FirstWrite -1}
		v3_3 {Type I LastRead 11 FirstWrite -1}
		v1 {Type I LastRead 0 FirstWrite -1}
		v3_0 {Type I LastRead 4 FirstWrite -1}
		v3_2 {Type I LastRead 4 FirstWrite -1}
		v0 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2072", "Max" : "2072"}
	, {"Name" : "Interval", "Min" : "2072", "Max" : "2072"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	v2_1 { bram {  { v2_1_Addr_A MemPortADDR2 1 32 }  { v2_1_EN_A MemPortCE2 1 1 }  { v2_1_WEN_A MemPortWE2 1 4 }  { v2_1_Din_A MemPortDIN2 1 32 }  { v2_1_Dout_A MemPortDOUT2 0 32 } } }
	v2_0 { bram {  { v2_0_Addr_A MemPortADDR2 1 32 }  { v2_0_EN_A MemPortCE2 1 1 }  { v2_0_WEN_A MemPortWE2 1 4 }  { v2_0_Din_A MemPortDIN2 1 32 }  { v2_0_Dout_A MemPortDOUT2 0 32 } } }
	v3_1 { bram {  { v3_1_Addr_A MemPortADDR2 1 32 }  { v3_1_EN_A MemPortCE2 1 1 }  { v3_1_WEN_A MemPortWE2 1 4 }  { v3_1_Din_A MemPortDIN2 1 32 }  { v3_1_Dout_A in_data 0 32 }  { v3_1_Addr_B MemPortADDR2 1 32 }  { v3_1_EN_B MemPortCE2 1 1 }  { v3_1_WEN_B MemPortWE2 1 4 }  { v3_1_Din_B MemPortDIN2 1 32 }  { v3_1_Dout_B in_data 0 32 } } }
	v3_3 { bram {  { v3_3_Addr_A MemPortADDR2 1 32 }  { v3_3_EN_A MemPortCE2 1 1 }  { v3_3_WEN_A MemPortWE2 1 4 }  { v3_3_Din_A MemPortDIN2 1 32 }  { v3_3_Dout_A in_data 0 32 }  { v3_3_Addr_B MemPortADDR2 1 32 }  { v3_3_EN_B MemPortCE2 1 1 }  { v3_3_WEN_B MemPortWE2 1 4 }  { v3_3_Din_B MemPortDIN2 1 32 }  { v3_3_Dout_B in_data 0 32 } } }
	v1 { ap_none {  { v1 in_data 0 32 } } }
	v3_0 { bram {  { v3_0_Addr_A MemPortADDR2 1 32 }  { v3_0_EN_A MemPortCE2 1 1 }  { v3_0_WEN_A MemPortWE2 1 4 }  { v3_0_Din_A MemPortDIN2 1 32 }  { v3_0_Dout_A in_data 0 32 }  { v3_0_Addr_B MemPortADDR2 1 32 }  { v3_0_EN_B MemPortCE2 1 1 }  { v3_0_WEN_B MemPortWE2 1 4 }  { v3_0_Din_B MemPortDIN2 1 32 }  { v3_0_Dout_B in_data 0 32 } } }
	v3_2 { bram {  { v3_2_Addr_A MemPortADDR2 1 32 }  { v3_2_EN_A MemPortCE2 1 1 }  { v3_2_WEN_A MemPortWE2 1 4 }  { v3_2_Din_A MemPortDIN2 1 32 }  { v3_2_Dout_A in_data 0 32 }  { v3_2_Addr_B MemPortADDR2 1 32 }  { v3_2_EN_B MemPortCE2 1 1 }  { v3_2_WEN_B MemPortWE2 1 4 }  { v3_2_Din_B MemPortDIN2 1 32 }  { v3_2_Dout_B in_data 0 32 } } }
	v0 { ap_none {  { v0 in_data 0 32 } } }
}
