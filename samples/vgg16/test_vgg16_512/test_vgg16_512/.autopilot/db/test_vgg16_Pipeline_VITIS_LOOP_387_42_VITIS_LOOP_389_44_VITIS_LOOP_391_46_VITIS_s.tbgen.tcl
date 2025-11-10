set moduleName test_vgg16_Pipeline_VITIS_LOOP_387_42_VITIS_LOOP_389_44_VITIS_LOOP_391_46_VITIS_s
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
set C_modelName {test_vgg16_Pipeline_VITIS_LOOP_387_42_VITIS_LOOP_389_44_VITIS_LOOP_391_46_VITIS_}
set C_modelType { void 0 }
set C_modelArgList {
	{ v4_0 int 32 regular {bram 18432 { 1 3 } 1 1 }  }
	{ v4_1 int 32 regular {bram 18432 { 1 3 } 1 1 }  }
	{ v4_2 int 32 regular {bram 18432 { 1 3 } 1 1 }  }
	{ v4_3 int 32 regular {bram 18432 { 1 3 } 1 1 }  }
	{ v4_4 int 32 regular {bram 18432 { 1 3 } 1 1 }  }
	{ v4_5 int 32 regular {bram 18432 { 1 3 } 1 1 }  }
	{ v4_6 int 32 regular {bram 18432 { 1 3 } 1 1 }  }
	{ v4_7 int 32 regular {bram 18432 { 1 3 } 1 1 }  }
	{ v23_0 int 32 regular {bram 4096 { 0 1 } 1 1 }  }
	{ v23_1 int 32 regular {bram 4096 { 0 1 } 1 1 }  }
	{ v23_2 int 32 regular {bram 4096 { 0 1 } 1 1 }  }
	{ v23_3 int 32 regular {bram 4096 { 0 1 } 1 1 }  }
	{ v23_4 int 32 regular {bram 4096 { 0 1 } 1 1 }  }
	{ v23_5 int 32 regular {bram 4096 { 0 1 } 1 1 }  }
	{ v23_6 int 32 regular {bram 4096 { 0 1 } 1 1 }  }
	{ v23_7 int 32 regular {bram 4096 { 0 1 } 1 1 }  }
	{ v22_0 int 32 regular {bram 4096 { 1 3 } 1 1 }  }
	{ v22_1 int 32 regular {bram 4096 { 1 3 } 1 1 }  }
	{ v22_2 int 32 regular {bram 4096 { 1 3 } 1 1 }  }
	{ v22_3 int 32 regular {bram 4096 { 1 3 } 1 1 }  }
	{ v22_4 int 32 regular {bram 4096 { 1 3 } 1 1 }  }
	{ v22_5 int 32 regular {bram 4096 { 1 3 } 1 1 }  }
	{ v22_6 int 32 regular {bram 4096 { 1 3 } 1 1 }  }
	{ v22_7 int 32 regular {bram 4096 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v4_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_3", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_4", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_5", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_6", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_7", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v23_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v23_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v23_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v23_3", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v23_4", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v23_5", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v23_6", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v23_7", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v22_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v22_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v22_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v22_3", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v22_4", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v22_5", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v22_6", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v22_7", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 238
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ v4_0_Addr_A sc_out sc_lv 32 signal 0 } 
	{ v4_0_EN_A sc_out sc_logic 1 signal 0 } 
	{ v4_0_WEN_A sc_out sc_lv 4 signal 0 } 
	{ v4_0_Din_A sc_out sc_lv 32 signal 0 } 
	{ v4_0_Dout_A sc_in sc_lv 32 signal 0 } 
	{ v4_1_Addr_A sc_out sc_lv 32 signal 1 } 
	{ v4_1_EN_A sc_out sc_logic 1 signal 1 } 
	{ v4_1_WEN_A sc_out sc_lv 4 signal 1 } 
	{ v4_1_Din_A sc_out sc_lv 32 signal 1 } 
	{ v4_1_Dout_A sc_in sc_lv 32 signal 1 } 
	{ v4_2_Addr_A sc_out sc_lv 32 signal 2 } 
	{ v4_2_EN_A sc_out sc_logic 1 signal 2 } 
	{ v4_2_WEN_A sc_out sc_lv 4 signal 2 } 
	{ v4_2_Din_A sc_out sc_lv 32 signal 2 } 
	{ v4_2_Dout_A sc_in sc_lv 32 signal 2 } 
	{ v4_3_Addr_A sc_out sc_lv 32 signal 3 } 
	{ v4_3_EN_A sc_out sc_logic 1 signal 3 } 
	{ v4_3_WEN_A sc_out sc_lv 4 signal 3 } 
	{ v4_3_Din_A sc_out sc_lv 32 signal 3 } 
	{ v4_3_Dout_A sc_in sc_lv 32 signal 3 } 
	{ v4_4_Addr_A sc_out sc_lv 32 signal 4 } 
	{ v4_4_EN_A sc_out sc_logic 1 signal 4 } 
	{ v4_4_WEN_A sc_out sc_lv 4 signal 4 } 
	{ v4_4_Din_A sc_out sc_lv 32 signal 4 } 
	{ v4_4_Dout_A sc_in sc_lv 32 signal 4 } 
	{ v4_5_Addr_A sc_out sc_lv 32 signal 5 } 
	{ v4_5_EN_A sc_out sc_logic 1 signal 5 } 
	{ v4_5_WEN_A sc_out sc_lv 4 signal 5 } 
	{ v4_5_Din_A sc_out sc_lv 32 signal 5 } 
	{ v4_5_Dout_A sc_in sc_lv 32 signal 5 } 
	{ v4_6_Addr_A sc_out sc_lv 32 signal 6 } 
	{ v4_6_EN_A sc_out sc_logic 1 signal 6 } 
	{ v4_6_WEN_A sc_out sc_lv 4 signal 6 } 
	{ v4_6_Din_A sc_out sc_lv 32 signal 6 } 
	{ v4_6_Dout_A sc_in sc_lv 32 signal 6 } 
	{ v4_7_Addr_A sc_out sc_lv 32 signal 7 } 
	{ v4_7_EN_A sc_out sc_logic 1 signal 7 } 
	{ v4_7_WEN_A sc_out sc_lv 4 signal 7 } 
	{ v4_7_Din_A sc_out sc_lv 32 signal 7 } 
	{ v4_7_Dout_A sc_in sc_lv 32 signal 7 } 
	{ v23_0_Addr_A sc_out sc_lv 32 signal 8 } 
	{ v23_0_EN_A sc_out sc_logic 1 signal 8 } 
	{ v23_0_WEN_A sc_out sc_lv 4 signal 8 } 
	{ v23_0_Din_A sc_out sc_lv 32 signal 8 } 
	{ v23_0_Dout_A sc_in sc_lv 32 signal 8 } 
	{ v23_0_Addr_B sc_out sc_lv 32 signal 8 } 
	{ v23_0_EN_B sc_out sc_logic 1 signal 8 } 
	{ v23_0_WEN_B sc_out sc_lv 4 signal 8 } 
	{ v23_0_Din_B sc_out sc_lv 32 signal 8 } 
	{ v23_0_Dout_B sc_in sc_lv 32 signal 8 } 
	{ v23_1_Addr_A sc_out sc_lv 32 signal 9 } 
	{ v23_1_EN_A sc_out sc_logic 1 signal 9 } 
	{ v23_1_WEN_A sc_out sc_lv 4 signal 9 } 
	{ v23_1_Din_A sc_out sc_lv 32 signal 9 } 
	{ v23_1_Dout_A sc_in sc_lv 32 signal 9 } 
	{ v23_1_Addr_B sc_out sc_lv 32 signal 9 } 
	{ v23_1_EN_B sc_out sc_logic 1 signal 9 } 
	{ v23_1_WEN_B sc_out sc_lv 4 signal 9 } 
	{ v23_1_Din_B sc_out sc_lv 32 signal 9 } 
	{ v23_1_Dout_B sc_in sc_lv 32 signal 9 } 
	{ v23_2_Addr_A sc_out sc_lv 32 signal 10 } 
	{ v23_2_EN_A sc_out sc_logic 1 signal 10 } 
	{ v23_2_WEN_A sc_out sc_lv 4 signal 10 } 
	{ v23_2_Din_A sc_out sc_lv 32 signal 10 } 
	{ v23_2_Dout_A sc_in sc_lv 32 signal 10 } 
	{ v23_2_Addr_B sc_out sc_lv 32 signal 10 } 
	{ v23_2_EN_B sc_out sc_logic 1 signal 10 } 
	{ v23_2_WEN_B sc_out sc_lv 4 signal 10 } 
	{ v23_2_Din_B sc_out sc_lv 32 signal 10 } 
	{ v23_2_Dout_B sc_in sc_lv 32 signal 10 } 
	{ v23_3_Addr_A sc_out sc_lv 32 signal 11 } 
	{ v23_3_EN_A sc_out sc_logic 1 signal 11 } 
	{ v23_3_WEN_A sc_out sc_lv 4 signal 11 } 
	{ v23_3_Din_A sc_out sc_lv 32 signal 11 } 
	{ v23_3_Dout_A sc_in sc_lv 32 signal 11 } 
	{ v23_3_Addr_B sc_out sc_lv 32 signal 11 } 
	{ v23_3_EN_B sc_out sc_logic 1 signal 11 } 
	{ v23_3_WEN_B sc_out sc_lv 4 signal 11 } 
	{ v23_3_Din_B sc_out sc_lv 32 signal 11 } 
	{ v23_3_Dout_B sc_in sc_lv 32 signal 11 } 
	{ v23_4_Addr_A sc_out sc_lv 32 signal 12 } 
	{ v23_4_EN_A sc_out sc_logic 1 signal 12 } 
	{ v23_4_WEN_A sc_out sc_lv 4 signal 12 } 
	{ v23_4_Din_A sc_out sc_lv 32 signal 12 } 
	{ v23_4_Dout_A sc_in sc_lv 32 signal 12 } 
	{ v23_4_Addr_B sc_out sc_lv 32 signal 12 } 
	{ v23_4_EN_B sc_out sc_logic 1 signal 12 } 
	{ v23_4_WEN_B sc_out sc_lv 4 signal 12 } 
	{ v23_4_Din_B sc_out sc_lv 32 signal 12 } 
	{ v23_4_Dout_B sc_in sc_lv 32 signal 12 } 
	{ v23_5_Addr_A sc_out sc_lv 32 signal 13 } 
	{ v23_5_EN_A sc_out sc_logic 1 signal 13 } 
	{ v23_5_WEN_A sc_out sc_lv 4 signal 13 } 
	{ v23_5_Din_A sc_out sc_lv 32 signal 13 } 
	{ v23_5_Dout_A sc_in sc_lv 32 signal 13 } 
	{ v23_5_Addr_B sc_out sc_lv 32 signal 13 } 
	{ v23_5_EN_B sc_out sc_logic 1 signal 13 } 
	{ v23_5_WEN_B sc_out sc_lv 4 signal 13 } 
	{ v23_5_Din_B sc_out sc_lv 32 signal 13 } 
	{ v23_5_Dout_B sc_in sc_lv 32 signal 13 } 
	{ v23_6_Addr_A sc_out sc_lv 32 signal 14 } 
	{ v23_6_EN_A sc_out sc_logic 1 signal 14 } 
	{ v23_6_WEN_A sc_out sc_lv 4 signal 14 } 
	{ v23_6_Din_A sc_out sc_lv 32 signal 14 } 
	{ v23_6_Dout_A sc_in sc_lv 32 signal 14 } 
	{ v23_6_Addr_B sc_out sc_lv 32 signal 14 } 
	{ v23_6_EN_B sc_out sc_logic 1 signal 14 } 
	{ v23_6_WEN_B sc_out sc_lv 4 signal 14 } 
	{ v23_6_Din_B sc_out sc_lv 32 signal 14 } 
	{ v23_6_Dout_B sc_in sc_lv 32 signal 14 } 
	{ v23_7_Addr_A sc_out sc_lv 32 signal 15 } 
	{ v23_7_EN_A sc_out sc_logic 1 signal 15 } 
	{ v23_7_WEN_A sc_out sc_lv 4 signal 15 } 
	{ v23_7_Din_A sc_out sc_lv 32 signal 15 } 
	{ v23_7_Dout_A sc_in sc_lv 32 signal 15 } 
	{ v23_7_Addr_B sc_out sc_lv 32 signal 15 } 
	{ v23_7_EN_B sc_out sc_logic 1 signal 15 } 
	{ v23_7_WEN_B sc_out sc_lv 4 signal 15 } 
	{ v23_7_Din_B sc_out sc_lv 32 signal 15 } 
	{ v23_7_Dout_B sc_in sc_lv 32 signal 15 } 
	{ v22_0_Addr_A sc_out sc_lv 32 signal 16 } 
	{ v22_0_EN_A sc_out sc_logic 1 signal 16 } 
	{ v22_0_WEN_A sc_out sc_lv 4 signal 16 } 
	{ v22_0_Din_A sc_out sc_lv 32 signal 16 } 
	{ v22_0_Dout_A sc_in sc_lv 32 signal 16 } 
	{ v22_1_Addr_A sc_out sc_lv 32 signal 17 } 
	{ v22_1_EN_A sc_out sc_logic 1 signal 17 } 
	{ v22_1_WEN_A sc_out sc_lv 4 signal 17 } 
	{ v22_1_Din_A sc_out sc_lv 32 signal 17 } 
	{ v22_1_Dout_A sc_in sc_lv 32 signal 17 } 
	{ v22_2_Addr_A sc_out sc_lv 32 signal 18 } 
	{ v22_2_EN_A sc_out sc_logic 1 signal 18 } 
	{ v22_2_WEN_A sc_out sc_lv 4 signal 18 } 
	{ v22_2_Din_A sc_out sc_lv 32 signal 18 } 
	{ v22_2_Dout_A sc_in sc_lv 32 signal 18 } 
	{ v22_3_Addr_A sc_out sc_lv 32 signal 19 } 
	{ v22_3_EN_A sc_out sc_logic 1 signal 19 } 
	{ v22_3_WEN_A sc_out sc_lv 4 signal 19 } 
	{ v22_3_Din_A sc_out sc_lv 32 signal 19 } 
	{ v22_3_Dout_A sc_in sc_lv 32 signal 19 } 
	{ v22_4_Addr_A sc_out sc_lv 32 signal 20 } 
	{ v22_4_EN_A sc_out sc_logic 1 signal 20 } 
	{ v22_4_WEN_A sc_out sc_lv 4 signal 20 } 
	{ v22_4_Din_A sc_out sc_lv 32 signal 20 } 
	{ v22_4_Dout_A sc_in sc_lv 32 signal 20 } 
	{ v22_5_Addr_A sc_out sc_lv 32 signal 21 } 
	{ v22_5_EN_A sc_out sc_logic 1 signal 21 } 
	{ v22_5_WEN_A sc_out sc_lv 4 signal 21 } 
	{ v22_5_Din_A sc_out sc_lv 32 signal 21 } 
	{ v22_5_Dout_A sc_in sc_lv 32 signal 21 } 
	{ v22_6_Addr_A sc_out sc_lv 32 signal 22 } 
	{ v22_6_EN_A sc_out sc_logic 1 signal 22 } 
	{ v22_6_WEN_A sc_out sc_lv 4 signal 22 } 
	{ v22_6_Din_A sc_out sc_lv 32 signal 22 } 
	{ v22_6_Dout_A sc_in sc_lv 32 signal 22 } 
	{ v22_7_Addr_A sc_out sc_lv 32 signal 23 } 
	{ v22_7_EN_A sc_out sc_logic 1 signal 23 } 
	{ v22_7_WEN_A sc_out sc_lv 4 signal 23 } 
	{ v22_7_Din_A sc_out sc_lv 32 signal 23 } 
	{ v22_7_Dout_A sc_in sc_lv 32 signal 23 } 
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
 	{ "name": "v4_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0", "role": "Addr_A" }} , 
 	{ "name": "v4_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0", "role": "EN_A" }} , 
 	{ "name": "v4_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0", "role": "WEN_A" }} , 
 	{ "name": "v4_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0", "role": "Din_A" }} , 
 	{ "name": "v4_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0", "role": "Dout_A" }} , 
 	{ "name": "v4_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1", "role": "Addr_A" }} , 
 	{ "name": "v4_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1", "role": "EN_A" }} , 
 	{ "name": "v4_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1", "role": "WEN_A" }} , 
 	{ "name": "v4_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1", "role": "Din_A" }} , 
 	{ "name": "v4_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1", "role": "Dout_A" }} , 
 	{ "name": "v4_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_2", "role": "Addr_A" }} , 
 	{ "name": "v4_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_2", "role": "EN_A" }} , 
 	{ "name": "v4_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_2", "role": "WEN_A" }} , 
 	{ "name": "v4_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_2", "role": "Din_A" }} , 
 	{ "name": "v4_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_2", "role": "Dout_A" }} , 
 	{ "name": "v4_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_3", "role": "Addr_A" }} , 
 	{ "name": "v4_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_3", "role": "EN_A" }} , 
 	{ "name": "v4_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_3", "role": "WEN_A" }} , 
 	{ "name": "v4_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_3", "role": "Din_A" }} , 
 	{ "name": "v4_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_3", "role": "Dout_A" }} , 
 	{ "name": "v4_4_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_4", "role": "Addr_A" }} , 
 	{ "name": "v4_4_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_4", "role": "EN_A" }} , 
 	{ "name": "v4_4_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_4", "role": "WEN_A" }} , 
 	{ "name": "v4_4_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_4", "role": "Din_A" }} , 
 	{ "name": "v4_4_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_4", "role": "Dout_A" }} , 
 	{ "name": "v4_5_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_5", "role": "Addr_A" }} , 
 	{ "name": "v4_5_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_5", "role": "EN_A" }} , 
 	{ "name": "v4_5_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_5", "role": "WEN_A" }} , 
 	{ "name": "v4_5_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_5", "role": "Din_A" }} , 
 	{ "name": "v4_5_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_5", "role": "Dout_A" }} , 
 	{ "name": "v4_6_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_6", "role": "Addr_A" }} , 
 	{ "name": "v4_6_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_6", "role": "EN_A" }} , 
 	{ "name": "v4_6_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_6", "role": "WEN_A" }} , 
 	{ "name": "v4_6_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_6", "role": "Din_A" }} , 
 	{ "name": "v4_6_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_6", "role": "Dout_A" }} , 
 	{ "name": "v4_7_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_7", "role": "Addr_A" }} , 
 	{ "name": "v4_7_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_7", "role": "EN_A" }} , 
 	{ "name": "v4_7_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_7", "role": "WEN_A" }} , 
 	{ "name": "v4_7_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_7", "role": "Din_A" }} , 
 	{ "name": "v4_7_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_7", "role": "Dout_A" }} , 
 	{ "name": "v23_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_0", "role": "Addr_A" }} , 
 	{ "name": "v23_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v23_0", "role": "EN_A" }} , 
 	{ "name": "v23_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v23_0", "role": "WEN_A" }} , 
 	{ "name": "v23_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_0", "role": "Din_A" }} , 
 	{ "name": "v23_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_0", "role": "Dout_A" }} , 
 	{ "name": "v23_0_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_0", "role": "Addr_B" }} , 
 	{ "name": "v23_0_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v23_0", "role": "EN_B" }} , 
 	{ "name": "v23_0_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v23_0", "role": "WEN_B" }} , 
 	{ "name": "v23_0_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_0", "role": "Din_B" }} , 
 	{ "name": "v23_0_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_0", "role": "Dout_B" }} , 
 	{ "name": "v23_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_1", "role": "Addr_A" }} , 
 	{ "name": "v23_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v23_1", "role": "EN_A" }} , 
 	{ "name": "v23_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v23_1", "role": "WEN_A" }} , 
 	{ "name": "v23_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_1", "role": "Din_A" }} , 
 	{ "name": "v23_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_1", "role": "Dout_A" }} , 
 	{ "name": "v23_1_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_1", "role": "Addr_B" }} , 
 	{ "name": "v23_1_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v23_1", "role": "EN_B" }} , 
 	{ "name": "v23_1_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v23_1", "role": "WEN_B" }} , 
 	{ "name": "v23_1_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_1", "role": "Din_B" }} , 
 	{ "name": "v23_1_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_1", "role": "Dout_B" }} , 
 	{ "name": "v23_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_2", "role": "Addr_A" }} , 
 	{ "name": "v23_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v23_2", "role": "EN_A" }} , 
 	{ "name": "v23_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v23_2", "role": "WEN_A" }} , 
 	{ "name": "v23_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_2", "role": "Din_A" }} , 
 	{ "name": "v23_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_2", "role": "Dout_A" }} , 
 	{ "name": "v23_2_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_2", "role": "Addr_B" }} , 
 	{ "name": "v23_2_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v23_2", "role": "EN_B" }} , 
 	{ "name": "v23_2_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v23_2", "role": "WEN_B" }} , 
 	{ "name": "v23_2_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_2", "role": "Din_B" }} , 
 	{ "name": "v23_2_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_2", "role": "Dout_B" }} , 
 	{ "name": "v23_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_3", "role": "Addr_A" }} , 
 	{ "name": "v23_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v23_3", "role": "EN_A" }} , 
 	{ "name": "v23_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v23_3", "role": "WEN_A" }} , 
 	{ "name": "v23_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_3", "role": "Din_A" }} , 
 	{ "name": "v23_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_3", "role": "Dout_A" }} , 
 	{ "name": "v23_3_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_3", "role": "Addr_B" }} , 
 	{ "name": "v23_3_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v23_3", "role": "EN_B" }} , 
 	{ "name": "v23_3_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v23_3", "role": "WEN_B" }} , 
 	{ "name": "v23_3_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_3", "role": "Din_B" }} , 
 	{ "name": "v23_3_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_3", "role": "Dout_B" }} , 
 	{ "name": "v23_4_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_4", "role": "Addr_A" }} , 
 	{ "name": "v23_4_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v23_4", "role": "EN_A" }} , 
 	{ "name": "v23_4_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v23_4", "role": "WEN_A" }} , 
 	{ "name": "v23_4_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_4", "role": "Din_A" }} , 
 	{ "name": "v23_4_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_4", "role": "Dout_A" }} , 
 	{ "name": "v23_4_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_4", "role": "Addr_B" }} , 
 	{ "name": "v23_4_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v23_4", "role": "EN_B" }} , 
 	{ "name": "v23_4_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v23_4", "role": "WEN_B" }} , 
 	{ "name": "v23_4_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_4", "role": "Din_B" }} , 
 	{ "name": "v23_4_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_4", "role": "Dout_B" }} , 
 	{ "name": "v23_5_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_5", "role": "Addr_A" }} , 
 	{ "name": "v23_5_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v23_5", "role": "EN_A" }} , 
 	{ "name": "v23_5_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v23_5", "role": "WEN_A" }} , 
 	{ "name": "v23_5_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_5", "role": "Din_A" }} , 
 	{ "name": "v23_5_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_5", "role": "Dout_A" }} , 
 	{ "name": "v23_5_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_5", "role": "Addr_B" }} , 
 	{ "name": "v23_5_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v23_5", "role": "EN_B" }} , 
 	{ "name": "v23_5_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v23_5", "role": "WEN_B" }} , 
 	{ "name": "v23_5_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_5", "role": "Din_B" }} , 
 	{ "name": "v23_5_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_5", "role": "Dout_B" }} , 
 	{ "name": "v23_6_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_6", "role": "Addr_A" }} , 
 	{ "name": "v23_6_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v23_6", "role": "EN_A" }} , 
 	{ "name": "v23_6_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v23_6", "role": "WEN_A" }} , 
 	{ "name": "v23_6_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_6", "role": "Din_A" }} , 
 	{ "name": "v23_6_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_6", "role": "Dout_A" }} , 
 	{ "name": "v23_6_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_6", "role": "Addr_B" }} , 
 	{ "name": "v23_6_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v23_6", "role": "EN_B" }} , 
 	{ "name": "v23_6_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v23_6", "role": "WEN_B" }} , 
 	{ "name": "v23_6_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_6", "role": "Din_B" }} , 
 	{ "name": "v23_6_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_6", "role": "Dout_B" }} , 
 	{ "name": "v23_7_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_7", "role": "Addr_A" }} , 
 	{ "name": "v23_7_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v23_7", "role": "EN_A" }} , 
 	{ "name": "v23_7_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v23_7", "role": "WEN_A" }} , 
 	{ "name": "v23_7_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_7", "role": "Din_A" }} , 
 	{ "name": "v23_7_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_7", "role": "Dout_A" }} , 
 	{ "name": "v23_7_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_7", "role": "Addr_B" }} , 
 	{ "name": "v23_7_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v23_7", "role": "EN_B" }} , 
 	{ "name": "v23_7_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v23_7", "role": "WEN_B" }} , 
 	{ "name": "v23_7_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_7", "role": "Din_B" }} , 
 	{ "name": "v23_7_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v23_7", "role": "Dout_B" }} , 
 	{ "name": "v22_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_0", "role": "Addr_A" }} , 
 	{ "name": "v22_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v22_0", "role": "EN_A" }} , 
 	{ "name": "v22_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v22_0", "role": "WEN_A" }} , 
 	{ "name": "v22_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_0", "role": "Din_A" }} , 
 	{ "name": "v22_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_0", "role": "Dout_A" }} , 
 	{ "name": "v22_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_1", "role": "Addr_A" }} , 
 	{ "name": "v22_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v22_1", "role": "EN_A" }} , 
 	{ "name": "v22_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v22_1", "role": "WEN_A" }} , 
 	{ "name": "v22_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_1", "role": "Din_A" }} , 
 	{ "name": "v22_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_1", "role": "Dout_A" }} , 
 	{ "name": "v22_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_2", "role": "Addr_A" }} , 
 	{ "name": "v22_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v22_2", "role": "EN_A" }} , 
 	{ "name": "v22_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v22_2", "role": "WEN_A" }} , 
 	{ "name": "v22_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_2", "role": "Din_A" }} , 
 	{ "name": "v22_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_2", "role": "Dout_A" }} , 
 	{ "name": "v22_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_3", "role": "Addr_A" }} , 
 	{ "name": "v22_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v22_3", "role": "EN_A" }} , 
 	{ "name": "v22_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v22_3", "role": "WEN_A" }} , 
 	{ "name": "v22_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_3", "role": "Din_A" }} , 
 	{ "name": "v22_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_3", "role": "Dout_A" }} , 
 	{ "name": "v22_4_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_4", "role": "Addr_A" }} , 
 	{ "name": "v22_4_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v22_4", "role": "EN_A" }} , 
 	{ "name": "v22_4_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v22_4", "role": "WEN_A" }} , 
 	{ "name": "v22_4_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_4", "role": "Din_A" }} , 
 	{ "name": "v22_4_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_4", "role": "Dout_A" }} , 
 	{ "name": "v22_5_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_5", "role": "Addr_A" }} , 
 	{ "name": "v22_5_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v22_5", "role": "EN_A" }} , 
 	{ "name": "v22_5_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v22_5", "role": "WEN_A" }} , 
 	{ "name": "v22_5_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_5", "role": "Din_A" }} , 
 	{ "name": "v22_5_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_5", "role": "Dout_A" }} , 
 	{ "name": "v22_6_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_6", "role": "Addr_A" }} , 
 	{ "name": "v22_6_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v22_6", "role": "EN_A" }} , 
 	{ "name": "v22_6_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v22_6", "role": "WEN_A" }} , 
 	{ "name": "v22_6_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_6", "role": "Din_A" }} , 
 	{ "name": "v22_6_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_6", "role": "Dout_A" }} , 
 	{ "name": "v22_7_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_7", "role": "Addr_A" }} , 
 	{ "name": "v22_7_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v22_7", "role": "EN_A" }} , 
 	{ "name": "v22_7_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v22_7", "role": "WEN_A" }} , 
 	{ "name": "v22_7_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_7", "role": "Din_A" }} , 
 	{ "name": "v22_7_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v22_7", "role": "Dout_A" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "test_vgg16_Pipeline_VITIS_LOOP_387_42_VITIS_LOOP_389_44_VITIS_LOOP_391_46_VITIS_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4718612", "EstimateLatencyMax" : "4718612",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v4_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_2", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_3", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_4", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_5", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_6", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_7", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v23_0", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v23_1", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v23_2", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v23_3", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v23_4", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v23_5", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v23_6", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v23_7", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v22_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v22_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v22_2", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v22_3", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v22_4", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v22_5", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v22_6", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v22_7", "Type" : "Bram", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_387_42_VITIS_LOOP_389_44_VITIS_LOOP_391_46_VITIS_LOOP_392_47", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter20", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter20", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_83_32_1_1_U67", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	test_vgg16_Pipeline_VITIS_LOOP_387_42_VITIS_LOOP_389_44_VITIS_LOOP_391_46_VITIS_s {
		v4_0 {Type I LastRead 7 FirstWrite -1}
		v4_1 {Type I LastRead 7 FirstWrite -1}
		v4_2 {Type I LastRead 7 FirstWrite -1}
		v4_3 {Type I LastRead 7 FirstWrite -1}
		v4_4 {Type I LastRead 7 FirstWrite -1}
		v4_5 {Type I LastRead 7 FirstWrite -1}
		v4_6 {Type I LastRead 7 FirstWrite -1}
		v4_7 {Type I LastRead 7 FirstWrite -1}
		v23_0 {Type IO LastRead 11 FirstWrite 20}
		v23_1 {Type IO LastRead 11 FirstWrite 20}
		v23_2 {Type IO LastRead 11 FirstWrite 20}
		v23_3 {Type IO LastRead 11 FirstWrite 20}
		v23_4 {Type IO LastRead 11 FirstWrite 20}
		v23_5 {Type IO LastRead 11 FirstWrite 20}
		v23_6 {Type IO LastRead 11 FirstWrite 20}
		v23_7 {Type IO LastRead 11 FirstWrite 20}
		v22_0 {Type I LastRead 7 FirstWrite -1}
		v22_1 {Type I LastRead 7 FirstWrite -1}
		v22_2 {Type I LastRead 7 FirstWrite -1}
		v22_3 {Type I LastRead 7 FirstWrite -1}
		v22_4 {Type I LastRead 7 FirstWrite -1}
		v22_5 {Type I LastRead 7 FirstWrite -1}
		v22_6 {Type I LastRead 7 FirstWrite -1}
		v22_7 {Type I LastRead 7 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4718612", "Max" : "4718612"}
	, {"Name" : "Interval", "Min" : "4718612", "Max" : "4718612"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	v4_0 { bram {  { v4_0_Addr_A MemPortADDR2 1 32 }  { v4_0_EN_A MemPortCE2 1 1 }  { v4_0_WEN_A MemPortWE2 1 4 }  { v4_0_Din_A MemPortDIN2 1 32 }  { v4_0_Dout_A MemPortDOUT2 0 32 } } }
	v4_1 { bram {  { v4_1_Addr_A MemPortADDR2 1 32 }  { v4_1_EN_A MemPortCE2 1 1 }  { v4_1_WEN_A MemPortWE2 1 4 }  { v4_1_Din_A MemPortDIN2 1 32 }  { v4_1_Dout_A MemPortDOUT2 0 32 } } }
	v4_2 { bram {  { v4_2_Addr_A MemPortADDR2 1 32 }  { v4_2_EN_A MemPortCE2 1 1 }  { v4_2_WEN_A MemPortWE2 1 4 }  { v4_2_Din_A MemPortDIN2 1 32 }  { v4_2_Dout_A MemPortDOUT2 0 32 } } }
	v4_3 { bram {  { v4_3_Addr_A MemPortADDR2 1 32 }  { v4_3_EN_A MemPortCE2 1 1 }  { v4_3_WEN_A MemPortWE2 1 4 }  { v4_3_Din_A MemPortDIN2 1 32 }  { v4_3_Dout_A MemPortDOUT2 0 32 } } }
	v4_4 { bram {  { v4_4_Addr_A MemPortADDR2 1 32 }  { v4_4_EN_A MemPortCE2 1 1 }  { v4_4_WEN_A MemPortWE2 1 4 }  { v4_4_Din_A MemPortDIN2 1 32 }  { v4_4_Dout_A MemPortDOUT2 0 32 } } }
	v4_5 { bram {  { v4_5_Addr_A MemPortADDR2 1 32 }  { v4_5_EN_A MemPortCE2 1 1 }  { v4_5_WEN_A MemPortWE2 1 4 }  { v4_5_Din_A MemPortDIN2 1 32 }  { v4_5_Dout_A MemPortDOUT2 0 32 } } }
	v4_6 { bram {  { v4_6_Addr_A MemPortADDR2 1 32 }  { v4_6_EN_A MemPortCE2 1 1 }  { v4_6_WEN_A MemPortWE2 1 4 }  { v4_6_Din_A MemPortDIN2 1 32 }  { v4_6_Dout_A MemPortDOUT2 0 32 } } }
	v4_7 { bram {  { v4_7_Addr_A MemPortADDR2 1 32 }  { v4_7_EN_A MemPortCE2 1 1 }  { v4_7_WEN_A MemPortWE2 1 4 }  { v4_7_Din_A MemPortDIN2 1 32 }  { v4_7_Dout_A MemPortDOUT2 0 32 } } }
	v23_0 { bram {  { v23_0_Addr_A MemPortADDR2 1 32 }  { v23_0_EN_A MemPortCE2 1 1 }  { v23_0_WEN_A MemPortWE2 1 4 }  { v23_0_Din_A MemPortDIN2 1 32 }  { v23_0_Dout_A MemPortDOUT2 0 32 }  { v23_0_Addr_B MemPortADDR2 1 32 }  { v23_0_EN_B MemPortCE2 1 1 }  { v23_0_WEN_B MemPortWE2 1 4 }  { v23_0_Din_B MemPortDIN2 1 32 }  { v23_0_Dout_B MemPortDOUT2 0 32 } } }
	v23_1 { bram {  { v23_1_Addr_A MemPortADDR2 1 32 }  { v23_1_EN_A MemPortCE2 1 1 }  { v23_1_WEN_A MemPortWE2 1 4 }  { v23_1_Din_A MemPortDIN2 1 32 }  { v23_1_Dout_A MemPortDOUT2 0 32 }  { v23_1_Addr_B MemPortADDR2 1 32 }  { v23_1_EN_B MemPortCE2 1 1 }  { v23_1_WEN_B MemPortWE2 1 4 }  { v23_1_Din_B MemPortDIN2 1 32 }  { v23_1_Dout_B MemPortDOUT2 0 32 } } }
	v23_2 { bram {  { v23_2_Addr_A MemPortADDR2 1 32 }  { v23_2_EN_A MemPortCE2 1 1 }  { v23_2_WEN_A MemPortWE2 1 4 }  { v23_2_Din_A MemPortDIN2 1 32 }  { v23_2_Dout_A MemPortDOUT2 0 32 }  { v23_2_Addr_B MemPortADDR2 1 32 }  { v23_2_EN_B MemPortCE2 1 1 }  { v23_2_WEN_B MemPortWE2 1 4 }  { v23_2_Din_B MemPortDIN2 1 32 }  { v23_2_Dout_B MemPortDOUT2 0 32 } } }
	v23_3 { bram {  { v23_3_Addr_A MemPortADDR2 1 32 }  { v23_3_EN_A MemPortCE2 1 1 }  { v23_3_WEN_A MemPortWE2 1 4 }  { v23_3_Din_A MemPortDIN2 1 32 }  { v23_3_Dout_A MemPortDOUT2 0 32 }  { v23_3_Addr_B MemPortADDR2 1 32 }  { v23_3_EN_B MemPortCE2 1 1 }  { v23_3_WEN_B MemPortWE2 1 4 }  { v23_3_Din_B MemPortDIN2 1 32 }  { v23_3_Dout_B MemPortDOUT2 0 32 } } }
	v23_4 { bram {  { v23_4_Addr_A MemPortADDR2 1 32 }  { v23_4_EN_A MemPortCE2 1 1 }  { v23_4_WEN_A MemPortWE2 1 4 }  { v23_4_Din_A MemPortDIN2 1 32 }  { v23_4_Dout_A MemPortDOUT2 0 32 }  { v23_4_Addr_B MemPortADDR2 1 32 }  { v23_4_EN_B MemPortCE2 1 1 }  { v23_4_WEN_B MemPortWE2 1 4 }  { v23_4_Din_B MemPortDIN2 1 32 }  { v23_4_Dout_B MemPortDOUT2 0 32 } } }
	v23_5 { bram {  { v23_5_Addr_A MemPortADDR2 1 32 }  { v23_5_EN_A MemPortCE2 1 1 }  { v23_5_WEN_A MemPortWE2 1 4 }  { v23_5_Din_A MemPortDIN2 1 32 }  { v23_5_Dout_A MemPortDOUT2 0 32 }  { v23_5_Addr_B MemPortADDR2 1 32 }  { v23_5_EN_B MemPortCE2 1 1 }  { v23_5_WEN_B MemPortWE2 1 4 }  { v23_5_Din_B MemPortDIN2 1 32 }  { v23_5_Dout_B MemPortDOUT2 0 32 } } }
	v23_6 { bram {  { v23_6_Addr_A MemPortADDR2 1 32 }  { v23_6_EN_A MemPortCE2 1 1 }  { v23_6_WEN_A MemPortWE2 1 4 }  { v23_6_Din_A MemPortDIN2 1 32 }  { v23_6_Dout_A MemPortDOUT2 0 32 }  { v23_6_Addr_B MemPortADDR2 1 32 }  { v23_6_EN_B MemPortCE2 1 1 }  { v23_6_WEN_B MemPortWE2 1 4 }  { v23_6_Din_B MemPortDIN2 1 32 }  { v23_6_Dout_B MemPortDOUT2 0 32 } } }
	v23_7 { bram {  { v23_7_Addr_A MemPortADDR2 1 32 }  { v23_7_EN_A MemPortCE2 1 1 }  { v23_7_WEN_A MemPortWE2 1 4 }  { v23_7_Din_A MemPortDIN2 1 32 }  { v23_7_Dout_A MemPortDOUT2 0 32 }  { v23_7_Addr_B MemPortADDR2 1 32 }  { v23_7_EN_B MemPortCE2 1 1 }  { v23_7_WEN_B MemPortWE2 1 4 }  { v23_7_Din_B MemPortDIN2 1 32 }  { v23_7_Dout_B MemPortDOUT2 0 32 } } }
	v22_0 { bram {  { v22_0_Addr_A MemPortADDR2 1 32 }  { v22_0_EN_A MemPortCE2 1 1 }  { v22_0_WEN_A MemPortWE2 1 4 }  { v22_0_Din_A MemPortDIN2 1 32 }  { v22_0_Dout_A in_data 0 32 } } }
	v22_1 { bram {  { v22_1_Addr_A MemPortADDR2 1 32 }  { v22_1_EN_A MemPortCE2 1 1 }  { v22_1_WEN_A MemPortWE2 1 4 }  { v22_1_Din_A MemPortDIN2 1 32 }  { v22_1_Dout_A in_data 0 32 } } }
	v22_2 { bram {  { v22_2_Addr_A MemPortADDR2 1 32 }  { v22_2_EN_A MemPortCE2 1 1 }  { v22_2_WEN_A MemPortWE2 1 4 }  { v22_2_Din_A MemPortDIN2 1 32 }  { v22_2_Dout_A in_data 0 32 } } }
	v22_3 { bram {  { v22_3_Addr_A MemPortADDR2 1 32 }  { v22_3_EN_A MemPortCE2 1 1 }  { v22_3_WEN_A MemPortWE2 1 4 }  { v22_3_Din_A MemPortDIN2 1 32 }  { v22_3_Dout_A in_data 0 32 } } }
	v22_4 { bram {  { v22_4_Addr_A MemPortADDR2 1 32 }  { v22_4_EN_A MemPortCE2 1 1 }  { v22_4_WEN_A MemPortWE2 1 4 }  { v22_4_Din_A MemPortDIN2 1 32 }  { v22_4_Dout_A in_data 0 32 } } }
	v22_5 { bram {  { v22_5_Addr_A MemPortADDR2 1 32 }  { v22_5_EN_A MemPortCE2 1 1 }  { v22_5_WEN_A MemPortWE2 1 4 }  { v22_5_Din_A MemPortDIN2 1 32 }  { v22_5_Dout_A in_data 0 32 } } }
	v22_6 { bram {  { v22_6_Addr_A MemPortADDR2 1 32 }  { v22_6_EN_A MemPortCE2 1 1 }  { v22_6_WEN_A MemPortWE2 1 4 }  { v22_6_Din_A MemPortDIN2 1 32 }  { v22_6_Dout_A in_data 0 32 } } }
	v22_7 { bram {  { v22_7_Addr_A MemPortADDR2 1 32 }  { v22_7_EN_A MemPortCE2 1 1 }  { v22_7_WEN_A MemPortWE2 1 4 }  { v22_7_Din_A MemPortDIN2 1 32 }  { v22_7_Dout_A in_data 0 32 } } }
}
