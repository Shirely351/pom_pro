set moduleName test_vgg16_Pipeline_VITIS_LOOP_916_141_VITIS_LOOP_918_143_VITIS_LOOP_920_145_VIT
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
set C_modelName {test_vgg16_Pipeline_VITIS_LOOP_916_141_VITIS_LOOP_918_143_VITIS_LOOP_920_145_VIT}
set C_modelType { void 0 }
set C_modelArgList {
	{ v9_0 int 32 regular {bram 294912 { 1 3 } 1 1 }  }
	{ v9_1 int 32 regular {bram 294912 { 1 3 } 1 1 }  }
	{ v9_2 int 32 regular {bram 294912 { 1 3 } 1 1 }  }
	{ v9_3 int 32 regular {bram 294912 { 1 3 } 1 1 }  }
	{ v9_4 int 32 regular {bram 294912 { 1 3 } 1 1 }  }
	{ v9_5 int 32 regular {bram 294912 { 1 3 } 1 1 }  }
	{ v9_6 int 32 regular {bram 294912 { 1 3 } 1 1 }  }
	{ v9_7 int 32 regular {bram 294912 { 1 3 } 1 1 }  }
	{ v16_0 int 32 regular {bram 256 { 0 1 } 1 1 }  }
	{ v16_1 int 32 regular {bram 256 { 0 1 } 1 1 }  }
	{ v16_2 int 32 regular {bram 256 { 0 1 } 1 1 }  }
	{ v16_3 int 32 regular {bram 256 { 0 1 } 1 1 }  }
	{ v16_4 int 32 regular {bram 256 { 0 1 } 1 1 }  }
	{ v16_5 int 32 regular {bram 256 { 0 1 } 1 1 }  }
	{ v16_6 int 32 regular {bram 256 { 0 1 } 1 1 }  }
	{ v16_7 int 32 regular {bram 256 { 0 1 } 1 1 }  }
	{ v15 int 32 regular {bram 2048 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v9_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v9_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v9_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v9_3", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v9_4", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v9_5", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v9_6", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v9_7", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v16_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v16_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v16_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v16_3", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v16_4", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v16_5", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v16_6", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v16_7", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v15", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 203
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ v9_0_Addr_A sc_out sc_lv 32 signal 0 } 
	{ v9_0_EN_A sc_out sc_logic 1 signal 0 } 
	{ v9_0_WEN_A sc_out sc_lv 4 signal 0 } 
	{ v9_0_Din_A sc_out sc_lv 32 signal 0 } 
	{ v9_0_Dout_A sc_in sc_lv 32 signal 0 } 
	{ v9_1_Addr_A sc_out sc_lv 32 signal 1 } 
	{ v9_1_EN_A sc_out sc_logic 1 signal 1 } 
	{ v9_1_WEN_A sc_out sc_lv 4 signal 1 } 
	{ v9_1_Din_A sc_out sc_lv 32 signal 1 } 
	{ v9_1_Dout_A sc_in sc_lv 32 signal 1 } 
	{ v9_2_Addr_A sc_out sc_lv 32 signal 2 } 
	{ v9_2_EN_A sc_out sc_logic 1 signal 2 } 
	{ v9_2_WEN_A sc_out sc_lv 4 signal 2 } 
	{ v9_2_Din_A sc_out sc_lv 32 signal 2 } 
	{ v9_2_Dout_A sc_in sc_lv 32 signal 2 } 
	{ v9_3_Addr_A sc_out sc_lv 32 signal 3 } 
	{ v9_3_EN_A sc_out sc_logic 1 signal 3 } 
	{ v9_3_WEN_A sc_out sc_lv 4 signal 3 } 
	{ v9_3_Din_A sc_out sc_lv 32 signal 3 } 
	{ v9_3_Dout_A sc_in sc_lv 32 signal 3 } 
	{ v9_4_Addr_A sc_out sc_lv 32 signal 4 } 
	{ v9_4_EN_A sc_out sc_logic 1 signal 4 } 
	{ v9_4_WEN_A sc_out sc_lv 4 signal 4 } 
	{ v9_4_Din_A sc_out sc_lv 32 signal 4 } 
	{ v9_4_Dout_A sc_in sc_lv 32 signal 4 } 
	{ v9_5_Addr_A sc_out sc_lv 32 signal 5 } 
	{ v9_5_EN_A sc_out sc_logic 1 signal 5 } 
	{ v9_5_WEN_A sc_out sc_lv 4 signal 5 } 
	{ v9_5_Din_A sc_out sc_lv 32 signal 5 } 
	{ v9_5_Dout_A sc_in sc_lv 32 signal 5 } 
	{ v9_6_Addr_A sc_out sc_lv 32 signal 6 } 
	{ v9_6_EN_A sc_out sc_logic 1 signal 6 } 
	{ v9_6_WEN_A sc_out sc_lv 4 signal 6 } 
	{ v9_6_Din_A sc_out sc_lv 32 signal 6 } 
	{ v9_6_Dout_A sc_in sc_lv 32 signal 6 } 
	{ v9_7_Addr_A sc_out sc_lv 32 signal 7 } 
	{ v9_7_EN_A sc_out sc_logic 1 signal 7 } 
	{ v9_7_WEN_A sc_out sc_lv 4 signal 7 } 
	{ v9_7_Din_A sc_out sc_lv 32 signal 7 } 
	{ v9_7_Dout_A sc_in sc_lv 32 signal 7 } 
	{ v16_0_Addr_A sc_out sc_lv 32 signal 8 } 
	{ v16_0_EN_A sc_out sc_logic 1 signal 8 } 
	{ v16_0_WEN_A sc_out sc_lv 4 signal 8 } 
	{ v16_0_Din_A sc_out sc_lv 32 signal 8 } 
	{ v16_0_Dout_A sc_in sc_lv 32 signal 8 } 
	{ v16_0_Addr_B sc_out sc_lv 32 signal 8 } 
	{ v16_0_EN_B sc_out sc_logic 1 signal 8 } 
	{ v16_0_WEN_B sc_out sc_lv 4 signal 8 } 
	{ v16_0_Din_B sc_out sc_lv 32 signal 8 } 
	{ v16_0_Dout_B sc_in sc_lv 32 signal 8 } 
	{ v16_1_Addr_A sc_out sc_lv 32 signal 9 } 
	{ v16_1_EN_A sc_out sc_logic 1 signal 9 } 
	{ v16_1_WEN_A sc_out sc_lv 4 signal 9 } 
	{ v16_1_Din_A sc_out sc_lv 32 signal 9 } 
	{ v16_1_Dout_A sc_in sc_lv 32 signal 9 } 
	{ v16_1_Addr_B sc_out sc_lv 32 signal 9 } 
	{ v16_1_EN_B sc_out sc_logic 1 signal 9 } 
	{ v16_1_WEN_B sc_out sc_lv 4 signal 9 } 
	{ v16_1_Din_B sc_out sc_lv 32 signal 9 } 
	{ v16_1_Dout_B sc_in sc_lv 32 signal 9 } 
	{ v16_2_Addr_A sc_out sc_lv 32 signal 10 } 
	{ v16_2_EN_A sc_out sc_logic 1 signal 10 } 
	{ v16_2_WEN_A sc_out sc_lv 4 signal 10 } 
	{ v16_2_Din_A sc_out sc_lv 32 signal 10 } 
	{ v16_2_Dout_A sc_in sc_lv 32 signal 10 } 
	{ v16_2_Addr_B sc_out sc_lv 32 signal 10 } 
	{ v16_2_EN_B sc_out sc_logic 1 signal 10 } 
	{ v16_2_WEN_B sc_out sc_lv 4 signal 10 } 
	{ v16_2_Din_B sc_out sc_lv 32 signal 10 } 
	{ v16_2_Dout_B sc_in sc_lv 32 signal 10 } 
	{ v16_3_Addr_A sc_out sc_lv 32 signal 11 } 
	{ v16_3_EN_A sc_out sc_logic 1 signal 11 } 
	{ v16_3_WEN_A sc_out sc_lv 4 signal 11 } 
	{ v16_3_Din_A sc_out sc_lv 32 signal 11 } 
	{ v16_3_Dout_A sc_in sc_lv 32 signal 11 } 
	{ v16_3_Addr_B sc_out sc_lv 32 signal 11 } 
	{ v16_3_EN_B sc_out sc_logic 1 signal 11 } 
	{ v16_3_WEN_B sc_out sc_lv 4 signal 11 } 
	{ v16_3_Din_B sc_out sc_lv 32 signal 11 } 
	{ v16_3_Dout_B sc_in sc_lv 32 signal 11 } 
	{ v16_4_Addr_A sc_out sc_lv 32 signal 12 } 
	{ v16_4_EN_A sc_out sc_logic 1 signal 12 } 
	{ v16_4_WEN_A sc_out sc_lv 4 signal 12 } 
	{ v16_4_Din_A sc_out sc_lv 32 signal 12 } 
	{ v16_4_Dout_A sc_in sc_lv 32 signal 12 } 
	{ v16_4_Addr_B sc_out sc_lv 32 signal 12 } 
	{ v16_4_EN_B sc_out sc_logic 1 signal 12 } 
	{ v16_4_WEN_B sc_out sc_lv 4 signal 12 } 
	{ v16_4_Din_B sc_out sc_lv 32 signal 12 } 
	{ v16_4_Dout_B sc_in sc_lv 32 signal 12 } 
	{ v16_5_Addr_A sc_out sc_lv 32 signal 13 } 
	{ v16_5_EN_A sc_out sc_logic 1 signal 13 } 
	{ v16_5_WEN_A sc_out sc_lv 4 signal 13 } 
	{ v16_5_Din_A sc_out sc_lv 32 signal 13 } 
	{ v16_5_Dout_A sc_in sc_lv 32 signal 13 } 
	{ v16_5_Addr_B sc_out sc_lv 32 signal 13 } 
	{ v16_5_EN_B sc_out sc_logic 1 signal 13 } 
	{ v16_5_WEN_B sc_out sc_lv 4 signal 13 } 
	{ v16_5_Din_B sc_out sc_lv 32 signal 13 } 
	{ v16_5_Dout_B sc_in sc_lv 32 signal 13 } 
	{ v16_6_Addr_A sc_out sc_lv 32 signal 14 } 
	{ v16_6_EN_A sc_out sc_logic 1 signal 14 } 
	{ v16_6_WEN_A sc_out sc_lv 4 signal 14 } 
	{ v16_6_Din_A sc_out sc_lv 32 signal 14 } 
	{ v16_6_Dout_A sc_in sc_lv 32 signal 14 } 
	{ v16_6_Addr_B sc_out sc_lv 32 signal 14 } 
	{ v16_6_EN_B sc_out sc_logic 1 signal 14 } 
	{ v16_6_WEN_B sc_out sc_lv 4 signal 14 } 
	{ v16_6_Din_B sc_out sc_lv 32 signal 14 } 
	{ v16_6_Dout_B sc_in sc_lv 32 signal 14 } 
	{ v16_7_Addr_A sc_out sc_lv 32 signal 15 } 
	{ v16_7_EN_A sc_out sc_logic 1 signal 15 } 
	{ v16_7_WEN_A sc_out sc_lv 4 signal 15 } 
	{ v16_7_Din_A sc_out sc_lv 32 signal 15 } 
	{ v16_7_Dout_A sc_in sc_lv 32 signal 15 } 
	{ v16_7_Addr_B sc_out sc_lv 32 signal 15 } 
	{ v16_7_EN_B sc_out sc_logic 1 signal 15 } 
	{ v16_7_WEN_B sc_out sc_lv 4 signal 15 } 
	{ v16_7_Din_B sc_out sc_lv 32 signal 15 } 
	{ v16_7_Dout_B sc_in sc_lv 32 signal 15 } 
	{ v15_Addr_A sc_out sc_lv 32 signal 16 } 
	{ v15_EN_A sc_out sc_logic 1 signal 16 } 
	{ v15_WEN_A sc_out sc_lv 4 signal 16 } 
	{ v15_Din_A sc_out sc_lv 32 signal 16 } 
	{ v15_Dout_A sc_in sc_lv 32 signal 16 } 
	{ grp_fu_12576_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12576_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12576_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_12576_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12576_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12580_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12580_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12580_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_12580_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12580_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12584_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12584_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12584_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_12584_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12584_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12588_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12588_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12588_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_12588_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12588_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12592_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12592_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12592_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_12592_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12592_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12596_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12596_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12596_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_12596_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12596_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12600_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12600_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12600_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_12600_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12600_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12604_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12604_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12604_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_12604_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12604_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12608_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12608_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12608_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12608_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12612_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12612_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12612_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12612_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12616_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12616_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12616_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12616_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12620_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12620_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12620_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12620_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12624_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12624_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12624_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12624_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12628_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12628_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12628_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12628_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12632_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12632_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12632_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12632_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_12636_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12636_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_12636_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_12636_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "v9_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_0", "role": "Addr_A" }} , 
 	{ "name": "v9_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v9_0", "role": "EN_A" }} , 
 	{ "name": "v9_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v9_0", "role": "WEN_A" }} , 
 	{ "name": "v9_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_0", "role": "Din_A" }} , 
 	{ "name": "v9_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_0", "role": "Dout_A" }} , 
 	{ "name": "v9_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_1", "role": "Addr_A" }} , 
 	{ "name": "v9_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v9_1", "role": "EN_A" }} , 
 	{ "name": "v9_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v9_1", "role": "WEN_A" }} , 
 	{ "name": "v9_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_1", "role": "Din_A" }} , 
 	{ "name": "v9_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_1", "role": "Dout_A" }} , 
 	{ "name": "v9_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_2", "role": "Addr_A" }} , 
 	{ "name": "v9_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v9_2", "role": "EN_A" }} , 
 	{ "name": "v9_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v9_2", "role": "WEN_A" }} , 
 	{ "name": "v9_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_2", "role": "Din_A" }} , 
 	{ "name": "v9_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_2", "role": "Dout_A" }} , 
 	{ "name": "v9_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_3", "role": "Addr_A" }} , 
 	{ "name": "v9_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v9_3", "role": "EN_A" }} , 
 	{ "name": "v9_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v9_3", "role": "WEN_A" }} , 
 	{ "name": "v9_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_3", "role": "Din_A" }} , 
 	{ "name": "v9_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_3", "role": "Dout_A" }} , 
 	{ "name": "v9_4_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_4", "role": "Addr_A" }} , 
 	{ "name": "v9_4_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v9_4", "role": "EN_A" }} , 
 	{ "name": "v9_4_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v9_4", "role": "WEN_A" }} , 
 	{ "name": "v9_4_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_4", "role": "Din_A" }} , 
 	{ "name": "v9_4_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_4", "role": "Dout_A" }} , 
 	{ "name": "v9_5_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_5", "role": "Addr_A" }} , 
 	{ "name": "v9_5_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v9_5", "role": "EN_A" }} , 
 	{ "name": "v9_5_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v9_5", "role": "WEN_A" }} , 
 	{ "name": "v9_5_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_5", "role": "Din_A" }} , 
 	{ "name": "v9_5_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_5", "role": "Dout_A" }} , 
 	{ "name": "v9_6_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_6", "role": "Addr_A" }} , 
 	{ "name": "v9_6_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v9_6", "role": "EN_A" }} , 
 	{ "name": "v9_6_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v9_6", "role": "WEN_A" }} , 
 	{ "name": "v9_6_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_6", "role": "Din_A" }} , 
 	{ "name": "v9_6_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_6", "role": "Dout_A" }} , 
 	{ "name": "v9_7_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_7", "role": "Addr_A" }} , 
 	{ "name": "v9_7_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v9_7", "role": "EN_A" }} , 
 	{ "name": "v9_7_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v9_7", "role": "WEN_A" }} , 
 	{ "name": "v9_7_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_7", "role": "Din_A" }} , 
 	{ "name": "v9_7_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v9_7", "role": "Dout_A" }} , 
 	{ "name": "v16_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_0", "role": "Addr_A" }} , 
 	{ "name": "v16_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v16_0", "role": "EN_A" }} , 
 	{ "name": "v16_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v16_0", "role": "WEN_A" }} , 
 	{ "name": "v16_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_0", "role": "Din_A" }} , 
 	{ "name": "v16_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_0", "role": "Dout_A" }} , 
 	{ "name": "v16_0_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_0", "role": "Addr_B" }} , 
 	{ "name": "v16_0_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v16_0", "role": "EN_B" }} , 
 	{ "name": "v16_0_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v16_0", "role": "WEN_B" }} , 
 	{ "name": "v16_0_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_0", "role": "Din_B" }} , 
 	{ "name": "v16_0_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_0", "role": "Dout_B" }} , 
 	{ "name": "v16_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_1", "role": "Addr_A" }} , 
 	{ "name": "v16_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v16_1", "role": "EN_A" }} , 
 	{ "name": "v16_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v16_1", "role": "WEN_A" }} , 
 	{ "name": "v16_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_1", "role": "Din_A" }} , 
 	{ "name": "v16_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_1", "role": "Dout_A" }} , 
 	{ "name": "v16_1_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_1", "role": "Addr_B" }} , 
 	{ "name": "v16_1_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v16_1", "role": "EN_B" }} , 
 	{ "name": "v16_1_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v16_1", "role": "WEN_B" }} , 
 	{ "name": "v16_1_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_1", "role": "Din_B" }} , 
 	{ "name": "v16_1_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_1", "role": "Dout_B" }} , 
 	{ "name": "v16_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_2", "role": "Addr_A" }} , 
 	{ "name": "v16_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v16_2", "role": "EN_A" }} , 
 	{ "name": "v16_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v16_2", "role": "WEN_A" }} , 
 	{ "name": "v16_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_2", "role": "Din_A" }} , 
 	{ "name": "v16_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_2", "role": "Dout_A" }} , 
 	{ "name": "v16_2_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_2", "role": "Addr_B" }} , 
 	{ "name": "v16_2_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v16_2", "role": "EN_B" }} , 
 	{ "name": "v16_2_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v16_2", "role": "WEN_B" }} , 
 	{ "name": "v16_2_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_2", "role": "Din_B" }} , 
 	{ "name": "v16_2_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_2", "role": "Dout_B" }} , 
 	{ "name": "v16_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_3", "role": "Addr_A" }} , 
 	{ "name": "v16_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v16_3", "role": "EN_A" }} , 
 	{ "name": "v16_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v16_3", "role": "WEN_A" }} , 
 	{ "name": "v16_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_3", "role": "Din_A" }} , 
 	{ "name": "v16_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_3", "role": "Dout_A" }} , 
 	{ "name": "v16_3_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_3", "role": "Addr_B" }} , 
 	{ "name": "v16_3_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v16_3", "role": "EN_B" }} , 
 	{ "name": "v16_3_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v16_3", "role": "WEN_B" }} , 
 	{ "name": "v16_3_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_3", "role": "Din_B" }} , 
 	{ "name": "v16_3_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_3", "role": "Dout_B" }} , 
 	{ "name": "v16_4_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_4", "role": "Addr_A" }} , 
 	{ "name": "v16_4_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v16_4", "role": "EN_A" }} , 
 	{ "name": "v16_4_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v16_4", "role": "WEN_A" }} , 
 	{ "name": "v16_4_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_4", "role": "Din_A" }} , 
 	{ "name": "v16_4_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_4", "role": "Dout_A" }} , 
 	{ "name": "v16_4_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_4", "role": "Addr_B" }} , 
 	{ "name": "v16_4_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v16_4", "role": "EN_B" }} , 
 	{ "name": "v16_4_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v16_4", "role": "WEN_B" }} , 
 	{ "name": "v16_4_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_4", "role": "Din_B" }} , 
 	{ "name": "v16_4_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_4", "role": "Dout_B" }} , 
 	{ "name": "v16_5_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_5", "role": "Addr_A" }} , 
 	{ "name": "v16_5_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v16_5", "role": "EN_A" }} , 
 	{ "name": "v16_5_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v16_5", "role": "WEN_A" }} , 
 	{ "name": "v16_5_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_5", "role": "Din_A" }} , 
 	{ "name": "v16_5_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_5", "role": "Dout_A" }} , 
 	{ "name": "v16_5_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_5", "role": "Addr_B" }} , 
 	{ "name": "v16_5_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v16_5", "role": "EN_B" }} , 
 	{ "name": "v16_5_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v16_5", "role": "WEN_B" }} , 
 	{ "name": "v16_5_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_5", "role": "Din_B" }} , 
 	{ "name": "v16_5_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_5", "role": "Dout_B" }} , 
 	{ "name": "v16_6_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_6", "role": "Addr_A" }} , 
 	{ "name": "v16_6_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v16_6", "role": "EN_A" }} , 
 	{ "name": "v16_6_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v16_6", "role": "WEN_A" }} , 
 	{ "name": "v16_6_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_6", "role": "Din_A" }} , 
 	{ "name": "v16_6_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_6", "role": "Dout_A" }} , 
 	{ "name": "v16_6_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_6", "role": "Addr_B" }} , 
 	{ "name": "v16_6_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v16_6", "role": "EN_B" }} , 
 	{ "name": "v16_6_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v16_6", "role": "WEN_B" }} , 
 	{ "name": "v16_6_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_6", "role": "Din_B" }} , 
 	{ "name": "v16_6_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_6", "role": "Dout_B" }} , 
 	{ "name": "v16_7_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_7", "role": "Addr_A" }} , 
 	{ "name": "v16_7_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v16_7", "role": "EN_A" }} , 
 	{ "name": "v16_7_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v16_7", "role": "WEN_A" }} , 
 	{ "name": "v16_7_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_7", "role": "Din_A" }} , 
 	{ "name": "v16_7_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_7", "role": "Dout_A" }} , 
 	{ "name": "v16_7_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_7", "role": "Addr_B" }} , 
 	{ "name": "v16_7_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v16_7", "role": "EN_B" }} , 
 	{ "name": "v16_7_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v16_7", "role": "WEN_B" }} , 
 	{ "name": "v16_7_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_7", "role": "Din_B" }} , 
 	{ "name": "v16_7_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v16_7", "role": "Dout_B" }} , 
 	{ "name": "v15_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v15", "role": "Addr_A" }} , 
 	{ "name": "v15_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v15", "role": "EN_A" }} , 
 	{ "name": "v15_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v15", "role": "WEN_A" }} , 
 	{ "name": "v15_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v15", "role": "Din_A" }} , 
 	{ "name": "v15_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v15", "role": "Dout_A" }} , 
 	{ "name": "grp_fu_12576_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12576_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12576_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12576_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12576_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_12576_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_12576_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12576_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12576_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12576_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12580_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12580_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12580_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12580_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12580_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_12580_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_12580_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12580_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12580_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12580_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12584_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12584_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12584_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12584_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12584_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_12584_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_12584_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12584_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12584_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12584_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12588_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12588_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12588_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12588_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12588_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_12588_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_12588_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12588_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12588_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12588_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12592_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12592_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12592_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12592_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12592_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_12592_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_12592_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12592_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12592_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12592_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12596_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12596_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12596_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12596_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12596_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_12596_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_12596_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12596_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12596_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12596_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12600_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12600_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12600_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12600_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12600_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_12600_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_12600_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12600_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12600_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12600_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12604_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12604_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12604_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12604_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12604_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_12604_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_12604_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12604_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12604_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12604_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12608_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12608_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12608_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12608_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12608_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12608_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12608_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12608_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12612_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12612_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12612_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12612_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12612_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12612_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12612_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12612_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12616_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12616_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12616_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12616_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12616_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12616_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12616_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12616_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12620_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12620_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12620_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12620_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12620_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12620_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12620_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12620_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12624_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12624_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12624_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12624_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12624_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12624_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12624_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12624_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12628_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12628_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12628_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12628_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12628_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12628_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12628_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12628_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12632_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12632_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12632_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12632_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12632_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12632_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12632_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12632_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_12636_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12636_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_12636_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12636_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_12636_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_12636_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_12636_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_12636_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "test_vgg16_Pipeline_VITIS_LOOP_916_141_VITIS_LOOP_918_143_VITIS_LOOP_920_145_VIT",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1179668", "EstimateLatencyMax" : "1179668",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v9_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v9_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v9_2", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v9_3", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v9_4", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v9_5", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v9_6", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v9_7", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v16_0", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v16_1", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v16_2", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v16_3", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v16_4", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v16_5", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v16_6", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v16_7", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v15", "Type" : "Bram", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_916_141_VITIS_LOOP_918_143_VITIS_LOOP_920_145_VITIS_LOOP_921_146", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter20", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter20", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	test_vgg16_Pipeline_VITIS_LOOP_916_141_VITIS_LOOP_918_143_VITIS_LOOP_920_145_VIT {
		v9_0 {Type I LastRead 7 FirstWrite -1}
		v9_1 {Type I LastRead 7 FirstWrite -1}
		v9_2 {Type I LastRead 7 FirstWrite -1}
		v9_3 {Type I LastRead 7 FirstWrite -1}
		v9_4 {Type I LastRead 7 FirstWrite -1}
		v9_5 {Type I LastRead 7 FirstWrite -1}
		v9_6 {Type I LastRead 7 FirstWrite -1}
		v9_7 {Type I LastRead 7 FirstWrite -1}
		v16_0 {Type IO LastRead 11 FirstWrite 20}
		v16_1 {Type IO LastRead 11 FirstWrite 20}
		v16_2 {Type IO LastRead 11 FirstWrite 20}
		v16_3 {Type IO LastRead 11 FirstWrite 20}
		v16_4 {Type IO LastRead 11 FirstWrite 20}
		v16_5 {Type IO LastRead 11 FirstWrite 20}
		v16_6 {Type IO LastRead 11 FirstWrite 20}
		v16_7 {Type IO LastRead 11 FirstWrite 20}
		v15 {Type I LastRead 7 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1179668", "Max" : "1179668"}
	, {"Name" : "Interval", "Min" : "1179668", "Max" : "1179668"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	v9_0 { bram {  { v9_0_Addr_A MemPortADDR2 1 32 }  { v9_0_EN_A MemPortCE2 1 1 }  { v9_0_WEN_A MemPortWE2 1 4 }  { v9_0_Din_A MemPortDIN2 1 32 }  { v9_0_Dout_A MemPortDOUT2 0 32 } } }
	v9_1 { bram {  { v9_1_Addr_A MemPortADDR2 1 32 }  { v9_1_EN_A MemPortCE2 1 1 }  { v9_1_WEN_A MemPortWE2 1 4 }  { v9_1_Din_A MemPortDIN2 1 32 }  { v9_1_Dout_A MemPortDOUT2 0 32 } } }
	v9_2 { bram {  { v9_2_Addr_A MemPortADDR2 1 32 }  { v9_2_EN_A MemPortCE2 1 1 }  { v9_2_WEN_A MemPortWE2 1 4 }  { v9_2_Din_A MemPortDIN2 1 32 }  { v9_2_Dout_A MemPortDOUT2 0 32 } } }
	v9_3 { bram {  { v9_3_Addr_A MemPortADDR2 1 32 }  { v9_3_EN_A MemPortCE2 1 1 }  { v9_3_WEN_A MemPortWE2 1 4 }  { v9_3_Din_A MemPortDIN2 1 32 }  { v9_3_Dout_A MemPortDOUT2 0 32 } } }
	v9_4 { bram {  { v9_4_Addr_A MemPortADDR2 1 32 }  { v9_4_EN_A MemPortCE2 1 1 }  { v9_4_WEN_A MemPortWE2 1 4 }  { v9_4_Din_A MemPortDIN2 1 32 }  { v9_4_Dout_A MemPortDOUT2 0 32 } } }
	v9_5 { bram {  { v9_5_Addr_A MemPortADDR2 1 32 }  { v9_5_EN_A MemPortCE2 1 1 }  { v9_5_WEN_A MemPortWE2 1 4 }  { v9_5_Din_A MemPortDIN2 1 32 }  { v9_5_Dout_A MemPortDOUT2 0 32 } } }
	v9_6 { bram {  { v9_6_Addr_A MemPortADDR2 1 32 }  { v9_6_EN_A MemPortCE2 1 1 }  { v9_6_WEN_A MemPortWE2 1 4 }  { v9_6_Din_A MemPortDIN2 1 32 }  { v9_6_Dout_A MemPortDOUT2 0 32 } } }
	v9_7 { bram {  { v9_7_Addr_A MemPortADDR2 1 32 }  { v9_7_EN_A MemPortCE2 1 1 }  { v9_7_WEN_A MemPortWE2 1 4 }  { v9_7_Din_A MemPortDIN2 1 32 }  { v9_7_Dout_A MemPortDOUT2 0 32 } } }
	v16_0 { bram {  { v16_0_Addr_A MemPortADDR2 1 32 }  { v16_0_EN_A MemPortCE2 1 1 }  { v16_0_WEN_A MemPortWE2 1 4 }  { v16_0_Din_A MemPortDIN2 1 32 }  { v16_0_Dout_A MemPortDOUT2 0 32 }  { v16_0_Addr_B MemPortADDR2 1 32 }  { v16_0_EN_B MemPortCE2 1 1 }  { v16_0_WEN_B MemPortWE2 1 4 }  { v16_0_Din_B MemPortDIN2 1 32 }  { v16_0_Dout_B MemPortDOUT2 0 32 } } }
	v16_1 { bram {  { v16_1_Addr_A MemPortADDR2 1 32 }  { v16_1_EN_A MemPortCE2 1 1 }  { v16_1_WEN_A MemPortWE2 1 4 }  { v16_1_Din_A MemPortDIN2 1 32 }  { v16_1_Dout_A MemPortDOUT2 0 32 }  { v16_1_Addr_B MemPortADDR2 1 32 }  { v16_1_EN_B MemPortCE2 1 1 }  { v16_1_WEN_B MemPortWE2 1 4 }  { v16_1_Din_B MemPortDIN2 1 32 }  { v16_1_Dout_B MemPortDOUT2 0 32 } } }
	v16_2 { bram {  { v16_2_Addr_A MemPortADDR2 1 32 }  { v16_2_EN_A MemPortCE2 1 1 }  { v16_2_WEN_A MemPortWE2 1 4 }  { v16_2_Din_A MemPortDIN2 1 32 }  { v16_2_Dout_A MemPortDOUT2 0 32 }  { v16_2_Addr_B MemPortADDR2 1 32 }  { v16_2_EN_B MemPortCE2 1 1 }  { v16_2_WEN_B MemPortWE2 1 4 }  { v16_2_Din_B MemPortDIN2 1 32 }  { v16_2_Dout_B MemPortDOUT2 0 32 } } }
	v16_3 { bram {  { v16_3_Addr_A MemPortADDR2 1 32 }  { v16_3_EN_A MemPortCE2 1 1 }  { v16_3_WEN_A MemPortWE2 1 4 }  { v16_3_Din_A MemPortDIN2 1 32 }  { v16_3_Dout_A MemPortDOUT2 0 32 }  { v16_3_Addr_B MemPortADDR2 1 32 }  { v16_3_EN_B MemPortCE2 1 1 }  { v16_3_WEN_B MemPortWE2 1 4 }  { v16_3_Din_B MemPortDIN2 1 32 }  { v16_3_Dout_B MemPortDOUT2 0 32 } } }
	v16_4 { bram {  { v16_4_Addr_A MemPortADDR2 1 32 }  { v16_4_EN_A MemPortCE2 1 1 }  { v16_4_WEN_A MemPortWE2 1 4 }  { v16_4_Din_A MemPortDIN2 1 32 }  { v16_4_Dout_A MemPortDOUT2 0 32 }  { v16_4_Addr_B MemPortADDR2 1 32 }  { v16_4_EN_B MemPortCE2 1 1 }  { v16_4_WEN_B MemPortWE2 1 4 }  { v16_4_Din_B MemPortDIN2 1 32 }  { v16_4_Dout_B MemPortDOUT2 0 32 } } }
	v16_5 { bram {  { v16_5_Addr_A MemPortADDR2 1 32 }  { v16_5_EN_A MemPortCE2 1 1 }  { v16_5_WEN_A MemPortWE2 1 4 }  { v16_5_Din_A MemPortDIN2 1 32 }  { v16_5_Dout_A MemPortDOUT2 0 32 }  { v16_5_Addr_B MemPortADDR2 1 32 }  { v16_5_EN_B MemPortCE2 1 1 }  { v16_5_WEN_B MemPortWE2 1 4 }  { v16_5_Din_B MemPortDIN2 1 32 }  { v16_5_Dout_B MemPortDOUT2 0 32 } } }
	v16_6 { bram {  { v16_6_Addr_A MemPortADDR2 1 32 }  { v16_6_EN_A MemPortCE2 1 1 }  { v16_6_WEN_A MemPortWE2 1 4 }  { v16_6_Din_A MemPortDIN2 1 32 }  { v16_6_Dout_A MemPortDOUT2 0 32 }  { v16_6_Addr_B MemPortADDR2 1 32 }  { v16_6_EN_B MemPortCE2 1 1 }  { v16_6_WEN_B MemPortWE2 1 4 }  { v16_6_Din_B MemPortDIN2 1 32 }  { v16_6_Dout_B MemPortDOUT2 0 32 } } }
	v16_7 { bram {  { v16_7_Addr_A MemPortADDR2 1 32 }  { v16_7_EN_A MemPortCE2 1 1 }  { v16_7_WEN_A MemPortWE2 1 4 }  { v16_7_Din_A MemPortDIN2 1 32 }  { v16_7_Dout_A MemPortDOUT2 0 32 }  { v16_7_Addr_B MemPortADDR2 1 32 }  { v16_7_EN_B MemPortCE2 1 1 }  { v16_7_WEN_B MemPortWE2 1 4 }  { v16_7_Din_B MemPortDIN2 1 32 }  { v16_7_Dout_B MemPortDOUT2 0 32 } } }
	v15 { bram {  { v15_Addr_A MemPortADDR2 1 32 }  { v15_EN_A MemPortCE2 1 1 }  { v15_WEN_A MemPortWE2 1 4 }  { v15_Din_A MemPortDIN2 1 32 }  { v15_Dout_A MemPortDOUT2 0 32 } } }
}
