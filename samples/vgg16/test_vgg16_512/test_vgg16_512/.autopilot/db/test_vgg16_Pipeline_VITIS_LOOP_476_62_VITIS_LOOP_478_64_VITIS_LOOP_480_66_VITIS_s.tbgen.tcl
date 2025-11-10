set moduleName test_vgg16_Pipeline_VITIS_LOOP_476_62_VITIS_LOOP_478_64_VITIS_LOOP_480_66_VITIS_s
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
set C_modelName {test_vgg16_Pipeline_VITIS_LOOP_476_62_VITIS_LOOP_478_64_VITIS_LOOP_480_66_VITIS_}
set C_modelType { void 0 }
set C_modelArgList {
	{ v5_0 int 32 regular {bram 36864 { 1 3 } 1 1 }  }
	{ v5_1 int 32 regular {bram 36864 { 1 3 } 1 1 }  }
	{ v5_2 int 32 regular {bram 36864 { 1 3 } 1 1 }  }
	{ v5_3 int 32 regular {bram 36864 { 1 3 } 1 1 }  }
	{ v5_4 int 32 regular {bram 36864 { 1 3 } 1 1 }  }
	{ v5_5 int 32 regular {bram 36864 { 1 3 } 1 1 }  }
	{ v5_6 int 32 regular {bram 36864 { 1 3 } 1 1 }  }
	{ v5_7 int 32 regular {bram 36864 { 1 3 } 1 1 }  }
	{ v25_0 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v25_1 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v25_2 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v25_3 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v25_4 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v25_5 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v25_6 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v25_7 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v24 int 32 regular {bram 8192 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v5_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v5_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v5_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v5_3", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v5_4", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v5_5", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v5_6", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v5_7", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v25_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v25_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v25_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v25_3", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v25_4", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v25_5", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v25_6", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v25_7", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v24", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 203
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ v5_0_Addr_A sc_out sc_lv 32 signal 0 } 
	{ v5_0_EN_A sc_out sc_logic 1 signal 0 } 
	{ v5_0_WEN_A sc_out sc_lv 4 signal 0 } 
	{ v5_0_Din_A sc_out sc_lv 32 signal 0 } 
	{ v5_0_Dout_A sc_in sc_lv 32 signal 0 } 
	{ v5_1_Addr_A sc_out sc_lv 32 signal 1 } 
	{ v5_1_EN_A sc_out sc_logic 1 signal 1 } 
	{ v5_1_WEN_A sc_out sc_lv 4 signal 1 } 
	{ v5_1_Din_A sc_out sc_lv 32 signal 1 } 
	{ v5_1_Dout_A sc_in sc_lv 32 signal 1 } 
	{ v5_2_Addr_A sc_out sc_lv 32 signal 2 } 
	{ v5_2_EN_A sc_out sc_logic 1 signal 2 } 
	{ v5_2_WEN_A sc_out sc_lv 4 signal 2 } 
	{ v5_2_Din_A sc_out sc_lv 32 signal 2 } 
	{ v5_2_Dout_A sc_in sc_lv 32 signal 2 } 
	{ v5_3_Addr_A sc_out sc_lv 32 signal 3 } 
	{ v5_3_EN_A sc_out sc_logic 1 signal 3 } 
	{ v5_3_WEN_A sc_out sc_lv 4 signal 3 } 
	{ v5_3_Din_A sc_out sc_lv 32 signal 3 } 
	{ v5_3_Dout_A sc_in sc_lv 32 signal 3 } 
	{ v5_4_Addr_A sc_out sc_lv 32 signal 4 } 
	{ v5_4_EN_A sc_out sc_logic 1 signal 4 } 
	{ v5_4_WEN_A sc_out sc_lv 4 signal 4 } 
	{ v5_4_Din_A sc_out sc_lv 32 signal 4 } 
	{ v5_4_Dout_A sc_in sc_lv 32 signal 4 } 
	{ v5_5_Addr_A sc_out sc_lv 32 signal 5 } 
	{ v5_5_EN_A sc_out sc_logic 1 signal 5 } 
	{ v5_5_WEN_A sc_out sc_lv 4 signal 5 } 
	{ v5_5_Din_A sc_out sc_lv 32 signal 5 } 
	{ v5_5_Dout_A sc_in sc_lv 32 signal 5 } 
	{ v5_6_Addr_A sc_out sc_lv 32 signal 6 } 
	{ v5_6_EN_A sc_out sc_logic 1 signal 6 } 
	{ v5_6_WEN_A sc_out sc_lv 4 signal 6 } 
	{ v5_6_Din_A sc_out sc_lv 32 signal 6 } 
	{ v5_6_Dout_A sc_in sc_lv 32 signal 6 } 
	{ v5_7_Addr_A sc_out sc_lv 32 signal 7 } 
	{ v5_7_EN_A sc_out sc_logic 1 signal 7 } 
	{ v5_7_WEN_A sc_out sc_lv 4 signal 7 } 
	{ v5_7_Din_A sc_out sc_lv 32 signal 7 } 
	{ v5_7_Dout_A sc_in sc_lv 32 signal 7 } 
	{ v25_0_Addr_A sc_out sc_lv 32 signal 8 } 
	{ v25_0_EN_A sc_out sc_logic 1 signal 8 } 
	{ v25_0_WEN_A sc_out sc_lv 4 signal 8 } 
	{ v25_0_Din_A sc_out sc_lv 32 signal 8 } 
	{ v25_0_Dout_A sc_in sc_lv 32 signal 8 } 
	{ v25_0_Addr_B sc_out sc_lv 32 signal 8 } 
	{ v25_0_EN_B sc_out sc_logic 1 signal 8 } 
	{ v25_0_WEN_B sc_out sc_lv 4 signal 8 } 
	{ v25_0_Din_B sc_out sc_lv 32 signal 8 } 
	{ v25_0_Dout_B sc_in sc_lv 32 signal 8 } 
	{ v25_1_Addr_A sc_out sc_lv 32 signal 9 } 
	{ v25_1_EN_A sc_out sc_logic 1 signal 9 } 
	{ v25_1_WEN_A sc_out sc_lv 4 signal 9 } 
	{ v25_1_Din_A sc_out sc_lv 32 signal 9 } 
	{ v25_1_Dout_A sc_in sc_lv 32 signal 9 } 
	{ v25_1_Addr_B sc_out sc_lv 32 signal 9 } 
	{ v25_1_EN_B sc_out sc_logic 1 signal 9 } 
	{ v25_1_WEN_B sc_out sc_lv 4 signal 9 } 
	{ v25_1_Din_B sc_out sc_lv 32 signal 9 } 
	{ v25_1_Dout_B sc_in sc_lv 32 signal 9 } 
	{ v25_2_Addr_A sc_out sc_lv 32 signal 10 } 
	{ v25_2_EN_A sc_out sc_logic 1 signal 10 } 
	{ v25_2_WEN_A sc_out sc_lv 4 signal 10 } 
	{ v25_2_Din_A sc_out sc_lv 32 signal 10 } 
	{ v25_2_Dout_A sc_in sc_lv 32 signal 10 } 
	{ v25_2_Addr_B sc_out sc_lv 32 signal 10 } 
	{ v25_2_EN_B sc_out sc_logic 1 signal 10 } 
	{ v25_2_WEN_B sc_out sc_lv 4 signal 10 } 
	{ v25_2_Din_B sc_out sc_lv 32 signal 10 } 
	{ v25_2_Dout_B sc_in sc_lv 32 signal 10 } 
	{ v25_3_Addr_A sc_out sc_lv 32 signal 11 } 
	{ v25_3_EN_A sc_out sc_logic 1 signal 11 } 
	{ v25_3_WEN_A sc_out sc_lv 4 signal 11 } 
	{ v25_3_Din_A sc_out sc_lv 32 signal 11 } 
	{ v25_3_Dout_A sc_in sc_lv 32 signal 11 } 
	{ v25_3_Addr_B sc_out sc_lv 32 signal 11 } 
	{ v25_3_EN_B sc_out sc_logic 1 signal 11 } 
	{ v25_3_WEN_B sc_out sc_lv 4 signal 11 } 
	{ v25_3_Din_B sc_out sc_lv 32 signal 11 } 
	{ v25_3_Dout_B sc_in sc_lv 32 signal 11 } 
	{ v25_4_Addr_A sc_out sc_lv 32 signal 12 } 
	{ v25_4_EN_A sc_out sc_logic 1 signal 12 } 
	{ v25_4_WEN_A sc_out sc_lv 4 signal 12 } 
	{ v25_4_Din_A sc_out sc_lv 32 signal 12 } 
	{ v25_4_Dout_A sc_in sc_lv 32 signal 12 } 
	{ v25_4_Addr_B sc_out sc_lv 32 signal 12 } 
	{ v25_4_EN_B sc_out sc_logic 1 signal 12 } 
	{ v25_4_WEN_B sc_out sc_lv 4 signal 12 } 
	{ v25_4_Din_B sc_out sc_lv 32 signal 12 } 
	{ v25_4_Dout_B sc_in sc_lv 32 signal 12 } 
	{ v25_5_Addr_A sc_out sc_lv 32 signal 13 } 
	{ v25_5_EN_A sc_out sc_logic 1 signal 13 } 
	{ v25_5_WEN_A sc_out sc_lv 4 signal 13 } 
	{ v25_5_Din_A sc_out sc_lv 32 signal 13 } 
	{ v25_5_Dout_A sc_in sc_lv 32 signal 13 } 
	{ v25_5_Addr_B sc_out sc_lv 32 signal 13 } 
	{ v25_5_EN_B sc_out sc_logic 1 signal 13 } 
	{ v25_5_WEN_B sc_out sc_lv 4 signal 13 } 
	{ v25_5_Din_B sc_out sc_lv 32 signal 13 } 
	{ v25_5_Dout_B sc_in sc_lv 32 signal 13 } 
	{ v25_6_Addr_A sc_out sc_lv 32 signal 14 } 
	{ v25_6_EN_A sc_out sc_logic 1 signal 14 } 
	{ v25_6_WEN_A sc_out sc_lv 4 signal 14 } 
	{ v25_6_Din_A sc_out sc_lv 32 signal 14 } 
	{ v25_6_Dout_A sc_in sc_lv 32 signal 14 } 
	{ v25_6_Addr_B sc_out sc_lv 32 signal 14 } 
	{ v25_6_EN_B sc_out sc_logic 1 signal 14 } 
	{ v25_6_WEN_B sc_out sc_lv 4 signal 14 } 
	{ v25_6_Din_B sc_out sc_lv 32 signal 14 } 
	{ v25_6_Dout_B sc_in sc_lv 32 signal 14 } 
	{ v25_7_Addr_A sc_out sc_lv 32 signal 15 } 
	{ v25_7_EN_A sc_out sc_logic 1 signal 15 } 
	{ v25_7_WEN_A sc_out sc_lv 4 signal 15 } 
	{ v25_7_Din_A sc_out sc_lv 32 signal 15 } 
	{ v25_7_Dout_A sc_in sc_lv 32 signal 15 } 
	{ v25_7_Addr_B sc_out sc_lv 32 signal 15 } 
	{ v25_7_EN_B sc_out sc_logic 1 signal 15 } 
	{ v25_7_WEN_B sc_out sc_lv 4 signal 15 } 
	{ v25_7_Din_B sc_out sc_lv 32 signal 15 } 
	{ v25_7_Dout_B sc_in sc_lv 32 signal 15 } 
	{ v24_Addr_A sc_out sc_lv 32 signal 16 } 
	{ v24_EN_A sc_out sc_logic 1 signal 16 } 
	{ v24_WEN_A sc_out sc_lv 4 signal 16 } 
	{ v24_Din_A sc_out sc_lv 32 signal 16 } 
	{ v24_Dout_A sc_in sc_lv 32 signal 16 } 
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
 	{ "name": "v5_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_0", "role": "Addr_A" }} , 
 	{ "name": "v5_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v5_0", "role": "EN_A" }} , 
 	{ "name": "v5_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v5_0", "role": "WEN_A" }} , 
 	{ "name": "v5_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_0", "role": "Din_A" }} , 
 	{ "name": "v5_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_0", "role": "Dout_A" }} , 
 	{ "name": "v5_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_1", "role": "Addr_A" }} , 
 	{ "name": "v5_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v5_1", "role": "EN_A" }} , 
 	{ "name": "v5_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v5_1", "role": "WEN_A" }} , 
 	{ "name": "v5_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_1", "role": "Din_A" }} , 
 	{ "name": "v5_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_1", "role": "Dout_A" }} , 
 	{ "name": "v5_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_2", "role": "Addr_A" }} , 
 	{ "name": "v5_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v5_2", "role": "EN_A" }} , 
 	{ "name": "v5_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v5_2", "role": "WEN_A" }} , 
 	{ "name": "v5_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_2", "role": "Din_A" }} , 
 	{ "name": "v5_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_2", "role": "Dout_A" }} , 
 	{ "name": "v5_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_3", "role": "Addr_A" }} , 
 	{ "name": "v5_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v5_3", "role": "EN_A" }} , 
 	{ "name": "v5_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v5_3", "role": "WEN_A" }} , 
 	{ "name": "v5_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_3", "role": "Din_A" }} , 
 	{ "name": "v5_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_3", "role": "Dout_A" }} , 
 	{ "name": "v5_4_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_4", "role": "Addr_A" }} , 
 	{ "name": "v5_4_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v5_4", "role": "EN_A" }} , 
 	{ "name": "v5_4_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v5_4", "role": "WEN_A" }} , 
 	{ "name": "v5_4_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_4", "role": "Din_A" }} , 
 	{ "name": "v5_4_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_4", "role": "Dout_A" }} , 
 	{ "name": "v5_5_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_5", "role": "Addr_A" }} , 
 	{ "name": "v5_5_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v5_5", "role": "EN_A" }} , 
 	{ "name": "v5_5_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v5_5", "role": "WEN_A" }} , 
 	{ "name": "v5_5_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_5", "role": "Din_A" }} , 
 	{ "name": "v5_5_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_5", "role": "Dout_A" }} , 
 	{ "name": "v5_6_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_6", "role": "Addr_A" }} , 
 	{ "name": "v5_6_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v5_6", "role": "EN_A" }} , 
 	{ "name": "v5_6_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v5_6", "role": "WEN_A" }} , 
 	{ "name": "v5_6_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_6", "role": "Din_A" }} , 
 	{ "name": "v5_6_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_6", "role": "Dout_A" }} , 
 	{ "name": "v5_7_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_7", "role": "Addr_A" }} , 
 	{ "name": "v5_7_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v5_7", "role": "EN_A" }} , 
 	{ "name": "v5_7_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v5_7", "role": "WEN_A" }} , 
 	{ "name": "v5_7_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_7", "role": "Din_A" }} , 
 	{ "name": "v5_7_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v5_7", "role": "Dout_A" }} , 
 	{ "name": "v25_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_0", "role": "Addr_A" }} , 
 	{ "name": "v25_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v25_0", "role": "EN_A" }} , 
 	{ "name": "v25_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v25_0", "role": "WEN_A" }} , 
 	{ "name": "v25_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_0", "role": "Din_A" }} , 
 	{ "name": "v25_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_0", "role": "Dout_A" }} , 
 	{ "name": "v25_0_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_0", "role": "Addr_B" }} , 
 	{ "name": "v25_0_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v25_0", "role": "EN_B" }} , 
 	{ "name": "v25_0_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v25_0", "role": "WEN_B" }} , 
 	{ "name": "v25_0_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_0", "role": "Din_B" }} , 
 	{ "name": "v25_0_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_0", "role": "Dout_B" }} , 
 	{ "name": "v25_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_1", "role": "Addr_A" }} , 
 	{ "name": "v25_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v25_1", "role": "EN_A" }} , 
 	{ "name": "v25_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v25_1", "role": "WEN_A" }} , 
 	{ "name": "v25_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_1", "role": "Din_A" }} , 
 	{ "name": "v25_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_1", "role": "Dout_A" }} , 
 	{ "name": "v25_1_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_1", "role": "Addr_B" }} , 
 	{ "name": "v25_1_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v25_1", "role": "EN_B" }} , 
 	{ "name": "v25_1_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v25_1", "role": "WEN_B" }} , 
 	{ "name": "v25_1_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_1", "role": "Din_B" }} , 
 	{ "name": "v25_1_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_1", "role": "Dout_B" }} , 
 	{ "name": "v25_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_2", "role": "Addr_A" }} , 
 	{ "name": "v25_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v25_2", "role": "EN_A" }} , 
 	{ "name": "v25_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v25_2", "role": "WEN_A" }} , 
 	{ "name": "v25_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_2", "role": "Din_A" }} , 
 	{ "name": "v25_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_2", "role": "Dout_A" }} , 
 	{ "name": "v25_2_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_2", "role": "Addr_B" }} , 
 	{ "name": "v25_2_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v25_2", "role": "EN_B" }} , 
 	{ "name": "v25_2_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v25_2", "role": "WEN_B" }} , 
 	{ "name": "v25_2_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_2", "role": "Din_B" }} , 
 	{ "name": "v25_2_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_2", "role": "Dout_B" }} , 
 	{ "name": "v25_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_3", "role": "Addr_A" }} , 
 	{ "name": "v25_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v25_3", "role": "EN_A" }} , 
 	{ "name": "v25_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v25_3", "role": "WEN_A" }} , 
 	{ "name": "v25_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_3", "role": "Din_A" }} , 
 	{ "name": "v25_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_3", "role": "Dout_A" }} , 
 	{ "name": "v25_3_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_3", "role": "Addr_B" }} , 
 	{ "name": "v25_3_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v25_3", "role": "EN_B" }} , 
 	{ "name": "v25_3_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v25_3", "role": "WEN_B" }} , 
 	{ "name": "v25_3_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_3", "role": "Din_B" }} , 
 	{ "name": "v25_3_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_3", "role": "Dout_B" }} , 
 	{ "name": "v25_4_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_4", "role": "Addr_A" }} , 
 	{ "name": "v25_4_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v25_4", "role": "EN_A" }} , 
 	{ "name": "v25_4_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v25_4", "role": "WEN_A" }} , 
 	{ "name": "v25_4_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_4", "role": "Din_A" }} , 
 	{ "name": "v25_4_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_4", "role": "Dout_A" }} , 
 	{ "name": "v25_4_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_4", "role": "Addr_B" }} , 
 	{ "name": "v25_4_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v25_4", "role": "EN_B" }} , 
 	{ "name": "v25_4_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v25_4", "role": "WEN_B" }} , 
 	{ "name": "v25_4_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_4", "role": "Din_B" }} , 
 	{ "name": "v25_4_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_4", "role": "Dout_B" }} , 
 	{ "name": "v25_5_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_5", "role": "Addr_A" }} , 
 	{ "name": "v25_5_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v25_5", "role": "EN_A" }} , 
 	{ "name": "v25_5_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v25_5", "role": "WEN_A" }} , 
 	{ "name": "v25_5_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_5", "role": "Din_A" }} , 
 	{ "name": "v25_5_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_5", "role": "Dout_A" }} , 
 	{ "name": "v25_5_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_5", "role": "Addr_B" }} , 
 	{ "name": "v25_5_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v25_5", "role": "EN_B" }} , 
 	{ "name": "v25_5_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v25_5", "role": "WEN_B" }} , 
 	{ "name": "v25_5_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_5", "role": "Din_B" }} , 
 	{ "name": "v25_5_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_5", "role": "Dout_B" }} , 
 	{ "name": "v25_6_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_6", "role": "Addr_A" }} , 
 	{ "name": "v25_6_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v25_6", "role": "EN_A" }} , 
 	{ "name": "v25_6_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v25_6", "role": "WEN_A" }} , 
 	{ "name": "v25_6_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_6", "role": "Din_A" }} , 
 	{ "name": "v25_6_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_6", "role": "Dout_A" }} , 
 	{ "name": "v25_6_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_6", "role": "Addr_B" }} , 
 	{ "name": "v25_6_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v25_6", "role": "EN_B" }} , 
 	{ "name": "v25_6_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v25_6", "role": "WEN_B" }} , 
 	{ "name": "v25_6_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_6", "role": "Din_B" }} , 
 	{ "name": "v25_6_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_6", "role": "Dout_B" }} , 
 	{ "name": "v25_7_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_7", "role": "Addr_A" }} , 
 	{ "name": "v25_7_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v25_7", "role": "EN_A" }} , 
 	{ "name": "v25_7_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v25_7", "role": "WEN_A" }} , 
 	{ "name": "v25_7_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_7", "role": "Din_A" }} , 
 	{ "name": "v25_7_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_7", "role": "Dout_A" }} , 
 	{ "name": "v25_7_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_7", "role": "Addr_B" }} , 
 	{ "name": "v25_7_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v25_7", "role": "EN_B" }} , 
 	{ "name": "v25_7_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v25_7", "role": "WEN_B" }} , 
 	{ "name": "v25_7_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_7", "role": "Din_B" }} , 
 	{ "name": "v25_7_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v25_7", "role": "Dout_B" }} , 
 	{ "name": "v24_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v24", "role": "Addr_A" }} , 
 	{ "name": "v24_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v24", "role": "EN_A" }} , 
 	{ "name": "v24_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v24", "role": "WEN_A" }} , 
 	{ "name": "v24_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v24", "role": "Din_A" }} , 
 	{ "name": "v24_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v24", "role": "Dout_A" }} , 
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
		"CDFG" : "test_vgg16_Pipeline_VITIS_LOOP_476_62_VITIS_LOOP_478_64_VITIS_LOOP_480_66_VITIS_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2359316", "EstimateLatencyMax" : "2359316",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v5_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v5_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v5_2", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v5_3", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v5_4", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v5_5", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v5_6", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v5_7", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v25_0", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v25_1", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v25_2", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v25_3", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v25_4", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v25_5", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v25_6", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v25_7", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v24", "Type" : "Bram", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_476_62_VITIS_LOOP_478_64_VITIS_LOOP_480_66_VITIS_LOOP_481_67", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter20", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter20", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	test_vgg16_Pipeline_VITIS_LOOP_476_62_VITIS_LOOP_478_64_VITIS_LOOP_480_66_VITIS_s {
		v5_0 {Type I LastRead 7 FirstWrite -1}
		v5_1 {Type I LastRead 7 FirstWrite -1}
		v5_2 {Type I LastRead 7 FirstWrite -1}
		v5_3 {Type I LastRead 7 FirstWrite -1}
		v5_4 {Type I LastRead 7 FirstWrite -1}
		v5_5 {Type I LastRead 7 FirstWrite -1}
		v5_6 {Type I LastRead 7 FirstWrite -1}
		v5_7 {Type I LastRead 7 FirstWrite -1}
		v25_0 {Type IO LastRead 11 FirstWrite 20}
		v25_1 {Type IO LastRead 11 FirstWrite 20}
		v25_2 {Type IO LastRead 11 FirstWrite 20}
		v25_3 {Type IO LastRead 11 FirstWrite 20}
		v25_4 {Type IO LastRead 11 FirstWrite 20}
		v25_5 {Type IO LastRead 11 FirstWrite 20}
		v25_6 {Type IO LastRead 11 FirstWrite 20}
		v25_7 {Type IO LastRead 11 FirstWrite 20}
		v24 {Type I LastRead 7 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2359316", "Max" : "2359316"}
	, {"Name" : "Interval", "Min" : "2359316", "Max" : "2359316"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	v5_0 { bram {  { v5_0_Addr_A MemPortADDR2 1 32 }  { v5_0_EN_A MemPortCE2 1 1 }  { v5_0_WEN_A MemPortWE2 1 4 }  { v5_0_Din_A MemPortDIN2 1 32 }  { v5_0_Dout_A MemPortDOUT2 0 32 } } }
	v5_1 { bram {  { v5_1_Addr_A MemPortADDR2 1 32 }  { v5_1_EN_A MemPortCE2 1 1 }  { v5_1_WEN_A MemPortWE2 1 4 }  { v5_1_Din_A MemPortDIN2 1 32 }  { v5_1_Dout_A MemPortDOUT2 0 32 } } }
	v5_2 { bram {  { v5_2_Addr_A MemPortADDR2 1 32 }  { v5_2_EN_A MemPortCE2 1 1 }  { v5_2_WEN_A MemPortWE2 1 4 }  { v5_2_Din_A MemPortDIN2 1 32 }  { v5_2_Dout_A MemPortDOUT2 0 32 } } }
	v5_3 { bram {  { v5_3_Addr_A MemPortADDR2 1 32 }  { v5_3_EN_A MemPortCE2 1 1 }  { v5_3_WEN_A MemPortWE2 1 4 }  { v5_3_Din_A MemPortDIN2 1 32 }  { v5_3_Dout_A MemPortDOUT2 0 32 } } }
	v5_4 { bram {  { v5_4_Addr_A MemPortADDR2 1 32 }  { v5_4_EN_A MemPortCE2 1 1 }  { v5_4_WEN_A MemPortWE2 1 4 }  { v5_4_Din_A MemPortDIN2 1 32 }  { v5_4_Dout_A MemPortDOUT2 0 32 } } }
	v5_5 { bram {  { v5_5_Addr_A MemPortADDR2 1 32 }  { v5_5_EN_A MemPortCE2 1 1 }  { v5_5_WEN_A MemPortWE2 1 4 }  { v5_5_Din_A MemPortDIN2 1 32 }  { v5_5_Dout_A MemPortDOUT2 0 32 } } }
	v5_6 { bram {  { v5_6_Addr_A MemPortADDR2 1 32 }  { v5_6_EN_A MemPortCE2 1 1 }  { v5_6_WEN_A MemPortWE2 1 4 }  { v5_6_Din_A MemPortDIN2 1 32 }  { v5_6_Dout_A MemPortDOUT2 0 32 } } }
	v5_7 { bram {  { v5_7_Addr_A MemPortADDR2 1 32 }  { v5_7_EN_A MemPortCE2 1 1 }  { v5_7_WEN_A MemPortWE2 1 4 }  { v5_7_Din_A MemPortDIN2 1 32 }  { v5_7_Dout_A MemPortDOUT2 0 32 } } }
	v25_0 { bram {  { v25_0_Addr_A MemPortADDR2 1 32 }  { v25_0_EN_A MemPortCE2 1 1 }  { v25_0_WEN_A MemPortWE2 1 4 }  { v25_0_Din_A MemPortDIN2 1 32 }  { v25_0_Dout_A MemPortDOUT2 0 32 }  { v25_0_Addr_B MemPortADDR2 1 32 }  { v25_0_EN_B MemPortCE2 1 1 }  { v25_0_WEN_B MemPortWE2 1 4 }  { v25_0_Din_B MemPortDIN2 1 32 }  { v25_0_Dout_B MemPortDOUT2 0 32 } } }
	v25_1 { bram {  { v25_1_Addr_A MemPortADDR2 1 32 }  { v25_1_EN_A MemPortCE2 1 1 }  { v25_1_WEN_A MemPortWE2 1 4 }  { v25_1_Din_A MemPortDIN2 1 32 }  { v25_1_Dout_A MemPortDOUT2 0 32 }  { v25_1_Addr_B MemPortADDR2 1 32 }  { v25_1_EN_B MemPortCE2 1 1 }  { v25_1_WEN_B MemPortWE2 1 4 }  { v25_1_Din_B MemPortDIN2 1 32 }  { v25_1_Dout_B MemPortDOUT2 0 32 } } }
	v25_2 { bram {  { v25_2_Addr_A MemPortADDR2 1 32 }  { v25_2_EN_A MemPortCE2 1 1 }  { v25_2_WEN_A MemPortWE2 1 4 }  { v25_2_Din_A MemPortDIN2 1 32 }  { v25_2_Dout_A MemPortDOUT2 0 32 }  { v25_2_Addr_B MemPortADDR2 1 32 }  { v25_2_EN_B MemPortCE2 1 1 }  { v25_2_WEN_B MemPortWE2 1 4 }  { v25_2_Din_B MemPortDIN2 1 32 }  { v25_2_Dout_B MemPortDOUT2 0 32 } } }
	v25_3 { bram {  { v25_3_Addr_A MemPortADDR2 1 32 }  { v25_3_EN_A MemPortCE2 1 1 }  { v25_3_WEN_A MemPortWE2 1 4 }  { v25_3_Din_A MemPortDIN2 1 32 }  { v25_3_Dout_A MemPortDOUT2 0 32 }  { v25_3_Addr_B MemPortADDR2 1 32 }  { v25_3_EN_B MemPortCE2 1 1 }  { v25_3_WEN_B MemPortWE2 1 4 }  { v25_3_Din_B MemPortDIN2 1 32 }  { v25_3_Dout_B MemPortDOUT2 0 32 } } }
	v25_4 { bram {  { v25_4_Addr_A MemPortADDR2 1 32 }  { v25_4_EN_A MemPortCE2 1 1 }  { v25_4_WEN_A MemPortWE2 1 4 }  { v25_4_Din_A MemPortDIN2 1 32 }  { v25_4_Dout_A MemPortDOUT2 0 32 }  { v25_4_Addr_B MemPortADDR2 1 32 }  { v25_4_EN_B MemPortCE2 1 1 }  { v25_4_WEN_B MemPortWE2 1 4 }  { v25_4_Din_B MemPortDIN2 1 32 }  { v25_4_Dout_B MemPortDOUT2 0 32 } } }
	v25_5 { bram {  { v25_5_Addr_A MemPortADDR2 1 32 }  { v25_5_EN_A MemPortCE2 1 1 }  { v25_5_WEN_A MemPortWE2 1 4 }  { v25_5_Din_A MemPortDIN2 1 32 }  { v25_5_Dout_A MemPortDOUT2 0 32 }  { v25_5_Addr_B MemPortADDR2 1 32 }  { v25_5_EN_B MemPortCE2 1 1 }  { v25_5_WEN_B MemPortWE2 1 4 }  { v25_5_Din_B MemPortDIN2 1 32 }  { v25_5_Dout_B MemPortDOUT2 0 32 } } }
	v25_6 { bram {  { v25_6_Addr_A MemPortADDR2 1 32 }  { v25_6_EN_A MemPortCE2 1 1 }  { v25_6_WEN_A MemPortWE2 1 4 }  { v25_6_Din_A MemPortDIN2 1 32 }  { v25_6_Dout_A MemPortDOUT2 0 32 }  { v25_6_Addr_B MemPortADDR2 1 32 }  { v25_6_EN_B MemPortCE2 1 1 }  { v25_6_WEN_B MemPortWE2 1 4 }  { v25_6_Din_B MemPortDIN2 1 32 }  { v25_6_Dout_B MemPortDOUT2 0 32 } } }
	v25_7 { bram {  { v25_7_Addr_A MemPortADDR2 1 32 }  { v25_7_EN_A MemPortCE2 1 1 }  { v25_7_WEN_A MemPortWE2 1 4 }  { v25_7_Din_A MemPortDIN2 1 32 }  { v25_7_Dout_A MemPortDOUT2 0 32 }  { v25_7_Addr_B MemPortADDR2 1 32 }  { v25_7_EN_B MemPortCE2 1 1 }  { v25_7_WEN_B MemPortWE2 1 4 }  { v25_7_Din_B MemPortDIN2 1 32 }  { v25_7_Dout_B MemPortDOUT2 0 32 } } }
	v24 { bram {  { v24_Addr_A MemPortADDR2 1 32 }  { v24_EN_A MemPortCE2 1 1 }  { v24_WEN_A MemPortWE2 1 4 }  { v24_Din_A MemPortDIN2 1 32 }  { v24_Dout_A MemPortDOUT2 0 32 } } }
}
