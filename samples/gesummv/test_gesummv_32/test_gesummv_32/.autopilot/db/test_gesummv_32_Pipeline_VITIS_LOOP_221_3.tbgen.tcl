set moduleName test_gesummv_32_Pipeline_VITIS_LOOP_221_3
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
set C_modelName {test_gesummv_32_Pipeline_VITIS_LOOP_221_3}
set C_modelType { void 0 }
set C_modelArgList {
	{ v6_15 int 32 regular {bram 2 { 0 1 } 1 1 }  }
	{ v6_14 int 32 regular {bram 2 { 0 1 } 1 1 }  }
	{ v6_13 int 32 regular {bram 2 { 0 1 } 1 1 }  }
	{ v6_12 int 32 regular {bram 2 { 0 1 } 1 1 }  }
	{ v6_11 int 32 regular {bram 2 { 0 1 } 1 1 }  }
	{ v6_10 int 32 regular {bram 2 { 0 1 } 1 1 }  }
	{ v6_9 int 32 regular {bram 2 { 0 1 } 1 1 }  }
	{ v6_8 int 32 regular {bram 2 { 0 1 } 1 1 }  }
	{ v6_7 int 32 regular {bram 2 { 0 1 } 1 1 }  }
	{ v6_6 int 32 regular {bram 2 { 0 1 } 1 1 }  }
	{ v6_5 int 32 regular {bram 2 { 0 1 } 1 1 }  }
	{ v6_4 int 32 regular {bram 2 { 0 1 } 1 1 }  }
	{ v6_3 int 32 regular {bram 2 { 0 1 } 1 1 }  }
	{ v6_2 int 32 regular {bram 2 { 0 1 } 1 1 }  }
	{ v6_1 int 32 regular {bram 2 { 0 1 } 1 1 }  }
	{ v6_0 int 32 regular {bram 2 { 0 1 } 1 1 }  }
	{ v4_0 int 32 regular {bram 2 { 1 3 } 1 1 }  }
	{ v4_1 int 32 regular {bram 2 { 1 3 } 1 1 }  }
	{ v4_2 int 32 regular {bram 2 { 1 3 } 1 1 }  }
	{ v4_3 int 32 regular {bram 2 { 1 3 } 1 1 }  }
	{ v4_4 int 32 regular {bram 2 { 1 3 } 1 1 }  }
	{ v4_5 int 32 regular {bram 2 { 1 3 } 1 1 }  }
	{ v4_6 int 32 regular {bram 2 { 1 3 } 1 1 }  }
	{ v4_7 int 32 regular {bram 2 { 1 3 } 1 1 }  }
	{ v4_8 int 32 regular {bram 2 { 1 3 } 1 1 }  }
	{ v4_9 int 32 regular {bram 2 { 1 3 } 1 1 }  }
	{ v4_10 int 32 regular {bram 2 { 1 3 } 1 1 }  }
	{ v4_11 int 32 regular {bram 2 { 1 3 } 1 1 }  }
	{ v4_12 int 32 regular {bram 2 { 1 3 } 1 1 }  }
	{ v4_13 int 32 regular {bram 2 { 1 3 } 1 1 }  }
	{ v4_14 int 32 regular {bram 2 { 1 3 } 1 1 }  }
	{ v4_15 int 32 regular {bram 2 { 1 3 } 1 1 }  }
	{ v0 float 32 regular  }
	{ v1 float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v6_15", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v6_14", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v6_13", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v6_12", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v6_11", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v6_10", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v6_9", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v6_8", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v6_7", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v6_6", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v6_5", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v6_4", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v6_3", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v6_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v6_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v6_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_3", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_4", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_5", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_6", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_7", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_8", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_9", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_10", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_11", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_12", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_13", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_14", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v4_15", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 261
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ v6_15_Addr_A sc_out sc_lv 32 signal 0 } 
	{ v6_15_EN_A sc_out sc_logic 1 signal 0 } 
	{ v6_15_WEN_A sc_out sc_lv 4 signal 0 } 
	{ v6_15_Din_A sc_out sc_lv 32 signal 0 } 
	{ v6_15_Dout_A sc_in sc_lv 32 signal 0 } 
	{ v6_15_Addr_B sc_out sc_lv 32 signal 0 } 
	{ v6_15_EN_B sc_out sc_logic 1 signal 0 } 
	{ v6_15_WEN_B sc_out sc_lv 4 signal 0 } 
	{ v6_15_Din_B sc_out sc_lv 32 signal 0 } 
	{ v6_15_Dout_B sc_in sc_lv 32 signal 0 } 
	{ v6_14_Addr_A sc_out sc_lv 32 signal 1 } 
	{ v6_14_EN_A sc_out sc_logic 1 signal 1 } 
	{ v6_14_WEN_A sc_out sc_lv 4 signal 1 } 
	{ v6_14_Din_A sc_out sc_lv 32 signal 1 } 
	{ v6_14_Dout_A sc_in sc_lv 32 signal 1 } 
	{ v6_14_Addr_B sc_out sc_lv 32 signal 1 } 
	{ v6_14_EN_B sc_out sc_logic 1 signal 1 } 
	{ v6_14_WEN_B sc_out sc_lv 4 signal 1 } 
	{ v6_14_Din_B sc_out sc_lv 32 signal 1 } 
	{ v6_14_Dout_B sc_in sc_lv 32 signal 1 } 
	{ v6_13_Addr_A sc_out sc_lv 32 signal 2 } 
	{ v6_13_EN_A sc_out sc_logic 1 signal 2 } 
	{ v6_13_WEN_A sc_out sc_lv 4 signal 2 } 
	{ v6_13_Din_A sc_out sc_lv 32 signal 2 } 
	{ v6_13_Dout_A sc_in sc_lv 32 signal 2 } 
	{ v6_13_Addr_B sc_out sc_lv 32 signal 2 } 
	{ v6_13_EN_B sc_out sc_logic 1 signal 2 } 
	{ v6_13_WEN_B sc_out sc_lv 4 signal 2 } 
	{ v6_13_Din_B sc_out sc_lv 32 signal 2 } 
	{ v6_13_Dout_B sc_in sc_lv 32 signal 2 } 
	{ v6_12_Addr_A sc_out sc_lv 32 signal 3 } 
	{ v6_12_EN_A sc_out sc_logic 1 signal 3 } 
	{ v6_12_WEN_A sc_out sc_lv 4 signal 3 } 
	{ v6_12_Din_A sc_out sc_lv 32 signal 3 } 
	{ v6_12_Dout_A sc_in sc_lv 32 signal 3 } 
	{ v6_12_Addr_B sc_out sc_lv 32 signal 3 } 
	{ v6_12_EN_B sc_out sc_logic 1 signal 3 } 
	{ v6_12_WEN_B sc_out sc_lv 4 signal 3 } 
	{ v6_12_Din_B sc_out sc_lv 32 signal 3 } 
	{ v6_12_Dout_B sc_in sc_lv 32 signal 3 } 
	{ v6_11_Addr_A sc_out sc_lv 32 signal 4 } 
	{ v6_11_EN_A sc_out sc_logic 1 signal 4 } 
	{ v6_11_WEN_A sc_out sc_lv 4 signal 4 } 
	{ v6_11_Din_A sc_out sc_lv 32 signal 4 } 
	{ v6_11_Dout_A sc_in sc_lv 32 signal 4 } 
	{ v6_11_Addr_B sc_out sc_lv 32 signal 4 } 
	{ v6_11_EN_B sc_out sc_logic 1 signal 4 } 
	{ v6_11_WEN_B sc_out sc_lv 4 signal 4 } 
	{ v6_11_Din_B sc_out sc_lv 32 signal 4 } 
	{ v6_11_Dout_B sc_in sc_lv 32 signal 4 } 
	{ v6_10_Addr_A sc_out sc_lv 32 signal 5 } 
	{ v6_10_EN_A sc_out sc_logic 1 signal 5 } 
	{ v6_10_WEN_A sc_out sc_lv 4 signal 5 } 
	{ v6_10_Din_A sc_out sc_lv 32 signal 5 } 
	{ v6_10_Dout_A sc_in sc_lv 32 signal 5 } 
	{ v6_10_Addr_B sc_out sc_lv 32 signal 5 } 
	{ v6_10_EN_B sc_out sc_logic 1 signal 5 } 
	{ v6_10_WEN_B sc_out sc_lv 4 signal 5 } 
	{ v6_10_Din_B sc_out sc_lv 32 signal 5 } 
	{ v6_10_Dout_B sc_in sc_lv 32 signal 5 } 
	{ v6_9_Addr_A sc_out sc_lv 32 signal 6 } 
	{ v6_9_EN_A sc_out sc_logic 1 signal 6 } 
	{ v6_9_WEN_A sc_out sc_lv 4 signal 6 } 
	{ v6_9_Din_A sc_out sc_lv 32 signal 6 } 
	{ v6_9_Dout_A sc_in sc_lv 32 signal 6 } 
	{ v6_9_Addr_B sc_out sc_lv 32 signal 6 } 
	{ v6_9_EN_B sc_out sc_logic 1 signal 6 } 
	{ v6_9_WEN_B sc_out sc_lv 4 signal 6 } 
	{ v6_9_Din_B sc_out sc_lv 32 signal 6 } 
	{ v6_9_Dout_B sc_in sc_lv 32 signal 6 } 
	{ v6_8_Addr_A sc_out sc_lv 32 signal 7 } 
	{ v6_8_EN_A sc_out sc_logic 1 signal 7 } 
	{ v6_8_WEN_A sc_out sc_lv 4 signal 7 } 
	{ v6_8_Din_A sc_out sc_lv 32 signal 7 } 
	{ v6_8_Dout_A sc_in sc_lv 32 signal 7 } 
	{ v6_8_Addr_B sc_out sc_lv 32 signal 7 } 
	{ v6_8_EN_B sc_out sc_logic 1 signal 7 } 
	{ v6_8_WEN_B sc_out sc_lv 4 signal 7 } 
	{ v6_8_Din_B sc_out sc_lv 32 signal 7 } 
	{ v6_8_Dout_B sc_in sc_lv 32 signal 7 } 
	{ v6_7_Addr_A sc_out sc_lv 32 signal 8 } 
	{ v6_7_EN_A sc_out sc_logic 1 signal 8 } 
	{ v6_7_WEN_A sc_out sc_lv 4 signal 8 } 
	{ v6_7_Din_A sc_out sc_lv 32 signal 8 } 
	{ v6_7_Dout_A sc_in sc_lv 32 signal 8 } 
	{ v6_7_Addr_B sc_out sc_lv 32 signal 8 } 
	{ v6_7_EN_B sc_out sc_logic 1 signal 8 } 
	{ v6_7_WEN_B sc_out sc_lv 4 signal 8 } 
	{ v6_7_Din_B sc_out sc_lv 32 signal 8 } 
	{ v6_7_Dout_B sc_in sc_lv 32 signal 8 } 
	{ v6_6_Addr_A sc_out sc_lv 32 signal 9 } 
	{ v6_6_EN_A sc_out sc_logic 1 signal 9 } 
	{ v6_6_WEN_A sc_out sc_lv 4 signal 9 } 
	{ v6_6_Din_A sc_out sc_lv 32 signal 9 } 
	{ v6_6_Dout_A sc_in sc_lv 32 signal 9 } 
	{ v6_6_Addr_B sc_out sc_lv 32 signal 9 } 
	{ v6_6_EN_B sc_out sc_logic 1 signal 9 } 
	{ v6_6_WEN_B sc_out sc_lv 4 signal 9 } 
	{ v6_6_Din_B sc_out sc_lv 32 signal 9 } 
	{ v6_6_Dout_B sc_in sc_lv 32 signal 9 } 
	{ v6_5_Addr_A sc_out sc_lv 32 signal 10 } 
	{ v6_5_EN_A sc_out sc_logic 1 signal 10 } 
	{ v6_5_WEN_A sc_out sc_lv 4 signal 10 } 
	{ v6_5_Din_A sc_out sc_lv 32 signal 10 } 
	{ v6_5_Dout_A sc_in sc_lv 32 signal 10 } 
	{ v6_5_Addr_B sc_out sc_lv 32 signal 10 } 
	{ v6_5_EN_B sc_out sc_logic 1 signal 10 } 
	{ v6_5_WEN_B sc_out sc_lv 4 signal 10 } 
	{ v6_5_Din_B sc_out sc_lv 32 signal 10 } 
	{ v6_5_Dout_B sc_in sc_lv 32 signal 10 } 
	{ v6_4_Addr_A sc_out sc_lv 32 signal 11 } 
	{ v6_4_EN_A sc_out sc_logic 1 signal 11 } 
	{ v6_4_WEN_A sc_out sc_lv 4 signal 11 } 
	{ v6_4_Din_A sc_out sc_lv 32 signal 11 } 
	{ v6_4_Dout_A sc_in sc_lv 32 signal 11 } 
	{ v6_4_Addr_B sc_out sc_lv 32 signal 11 } 
	{ v6_4_EN_B sc_out sc_logic 1 signal 11 } 
	{ v6_4_WEN_B sc_out sc_lv 4 signal 11 } 
	{ v6_4_Din_B sc_out sc_lv 32 signal 11 } 
	{ v6_4_Dout_B sc_in sc_lv 32 signal 11 } 
	{ v6_3_Addr_A sc_out sc_lv 32 signal 12 } 
	{ v6_3_EN_A sc_out sc_logic 1 signal 12 } 
	{ v6_3_WEN_A sc_out sc_lv 4 signal 12 } 
	{ v6_3_Din_A sc_out sc_lv 32 signal 12 } 
	{ v6_3_Dout_A sc_in sc_lv 32 signal 12 } 
	{ v6_3_Addr_B sc_out sc_lv 32 signal 12 } 
	{ v6_3_EN_B sc_out sc_logic 1 signal 12 } 
	{ v6_3_WEN_B sc_out sc_lv 4 signal 12 } 
	{ v6_3_Din_B sc_out sc_lv 32 signal 12 } 
	{ v6_3_Dout_B sc_in sc_lv 32 signal 12 } 
	{ v6_2_Addr_A sc_out sc_lv 32 signal 13 } 
	{ v6_2_EN_A sc_out sc_logic 1 signal 13 } 
	{ v6_2_WEN_A sc_out sc_lv 4 signal 13 } 
	{ v6_2_Din_A sc_out sc_lv 32 signal 13 } 
	{ v6_2_Dout_A sc_in sc_lv 32 signal 13 } 
	{ v6_2_Addr_B sc_out sc_lv 32 signal 13 } 
	{ v6_2_EN_B sc_out sc_logic 1 signal 13 } 
	{ v6_2_WEN_B sc_out sc_lv 4 signal 13 } 
	{ v6_2_Din_B sc_out sc_lv 32 signal 13 } 
	{ v6_2_Dout_B sc_in sc_lv 32 signal 13 } 
	{ v6_1_Addr_A sc_out sc_lv 32 signal 14 } 
	{ v6_1_EN_A sc_out sc_logic 1 signal 14 } 
	{ v6_1_WEN_A sc_out sc_lv 4 signal 14 } 
	{ v6_1_Din_A sc_out sc_lv 32 signal 14 } 
	{ v6_1_Dout_A sc_in sc_lv 32 signal 14 } 
	{ v6_1_Addr_B sc_out sc_lv 32 signal 14 } 
	{ v6_1_EN_B sc_out sc_logic 1 signal 14 } 
	{ v6_1_WEN_B sc_out sc_lv 4 signal 14 } 
	{ v6_1_Din_B sc_out sc_lv 32 signal 14 } 
	{ v6_1_Dout_B sc_in sc_lv 32 signal 14 } 
	{ v6_0_Addr_A sc_out sc_lv 32 signal 15 } 
	{ v6_0_EN_A sc_out sc_logic 1 signal 15 } 
	{ v6_0_WEN_A sc_out sc_lv 4 signal 15 } 
	{ v6_0_Din_A sc_out sc_lv 32 signal 15 } 
	{ v6_0_Dout_A sc_in sc_lv 32 signal 15 } 
	{ v6_0_Addr_B sc_out sc_lv 32 signal 15 } 
	{ v6_0_EN_B sc_out sc_logic 1 signal 15 } 
	{ v6_0_WEN_B sc_out sc_lv 4 signal 15 } 
	{ v6_0_Din_B sc_out sc_lv 32 signal 15 } 
	{ v6_0_Dout_B sc_in sc_lv 32 signal 15 } 
	{ v4_0_Addr_A sc_out sc_lv 32 signal 16 } 
	{ v4_0_EN_A sc_out sc_logic 1 signal 16 } 
	{ v4_0_WEN_A sc_out sc_lv 4 signal 16 } 
	{ v4_0_Din_A sc_out sc_lv 32 signal 16 } 
	{ v4_0_Dout_A sc_in sc_lv 32 signal 16 } 
	{ v4_1_Addr_A sc_out sc_lv 32 signal 17 } 
	{ v4_1_EN_A sc_out sc_logic 1 signal 17 } 
	{ v4_1_WEN_A sc_out sc_lv 4 signal 17 } 
	{ v4_1_Din_A sc_out sc_lv 32 signal 17 } 
	{ v4_1_Dout_A sc_in sc_lv 32 signal 17 } 
	{ v4_2_Addr_A sc_out sc_lv 32 signal 18 } 
	{ v4_2_EN_A sc_out sc_logic 1 signal 18 } 
	{ v4_2_WEN_A sc_out sc_lv 4 signal 18 } 
	{ v4_2_Din_A sc_out sc_lv 32 signal 18 } 
	{ v4_2_Dout_A sc_in sc_lv 32 signal 18 } 
	{ v4_3_Addr_A sc_out sc_lv 32 signal 19 } 
	{ v4_3_EN_A sc_out sc_logic 1 signal 19 } 
	{ v4_3_WEN_A sc_out sc_lv 4 signal 19 } 
	{ v4_3_Din_A sc_out sc_lv 32 signal 19 } 
	{ v4_3_Dout_A sc_in sc_lv 32 signal 19 } 
	{ v4_4_Addr_A sc_out sc_lv 32 signal 20 } 
	{ v4_4_EN_A sc_out sc_logic 1 signal 20 } 
	{ v4_4_WEN_A sc_out sc_lv 4 signal 20 } 
	{ v4_4_Din_A sc_out sc_lv 32 signal 20 } 
	{ v4_4_Dout_A sc_in sc_lv 32 signal 20 } 
	{ v4_5_Addr_A sc_out sc_lv 32 signal 21 } 
	{ v4_5_EN_A sc_out sc_logic 1 signal 21 } 
	{ v4_5_WEN_A sc_out sc_lv 4 signal 21 } 
	{ v4_5_Din_A sc_out sc_lv 32 signal 21 } 
	{ v4_5_Dout_A sc_in sc_lv 32 signal 21 } 
	{ v4_6_Addr_A sc_out sc_lv 32 signal 22 } 
	{ v4_6_EN_A sc_out sc_logic 1 signal 22 } 
	{ v4_6_WEN_A sc_out sc_lv 4 signal 22 } 
	{ v4_6_Din_A sc_out sc_lv 32 signal 22 } 
	{ v4_6_Dout_A sc_in sc_lv 32 signal 22 } 
	{ v4_7_Addr_A sc_out sc_lv 32 signal 23 } 
	{ v4_7_EN_A sc_out sc_logic 1 signal 23 } 
	{ v4_7_WEN_A sc_out sc_lv 4 signal 23 } 
	{ v4_7_Din_A sc_out sc_lv 32 signal 23 } 
	{ v4_7_Dout_A sc_in sc_lv 32 signal 23 } 
	{ v4_8_Addr_A sc_out sc_lv 32 signal 24 } 
	{ v4_8_EN_A sc_out sc_logic 1 signal 24 } 
	{ v4_8_WEN_A sc_out sc_lv 4 signal 24 } 
	{ v4_8_Din_A sc_out sc_lv 32 signal 24 } 
	{ v4_8_Dout_A sc_in sc_lv 32 signal 24 } 
	{ v4_9_Addr_A sc_out sc_lv 32 signal 25 } 
	{ v4_9_EN_A sc_out sc_logic 1 signal 25 } 
	{ v4_9_WEN_A sc_out sc_lv 4 signal 25 } 
	{ v4_9_Din_A sc_out sc_lv 32 signal 25 } 
	{ v4_9_Dout_A sc_in sc_lv 32 signal 25 } 
	{ v4_10_Addr_A sc_out sc_lv 32 signal 26 } 
	{ v4_10_EN_A sc_out sc_logic 1 signal 26 } 
	{ v4_10_WEN_A sc_out sc_lv 4 signal 26 } 
	{ v4_10_Din_A sc_out sc_lv 32 signal 26 } 
	{ v4_10_Dout_A sc_in sc_lv 32 signal 26 } 
	{ v4_11_Addr_A sc_out sc_lv 32 signal 27 } 
	{ v4_11_EN_A sc_out sc_logic 1 signal 27 } 
	{ v4_11_WEN_A sc_out sc_lv 4 signal 27 } 
	{ v4_11_Din_A sc_out sc_lv 32 signal 27 } 
	{ v4_11_Dout_A sc_in sc_lv 32 signal 27 } 
	{ v4_12_Addr_A sc_out sc_lv 32 signal 28 } 
	{ v4_12_EN_A sc_out sc_logic 1 signal 28 } 
	{ v4_12_WEN_A sc_out sc_lv 4 signal 28 } 
	{ v4_12_Din_A sc_out sc_lv 32 signal 28 } 
	{ v4_12_Dout_A sc_in sc_lv 32 signal 28 } 
	{ v4_13_Addr_A sc_out sc_lv 32 signal 29 } 
	{ v4_13_EN_A sc_out sc_logic 1 signal 29 } 
	{ v4_13_WEN_A sc_out sc_lv 4 signal 29 } 
	{ v4_13_Din_A sc_out sc_lv 32 signal 29 } 
	{ v4_13_Dout_A sc_in sc_lv 32 signal 29 } 
	{ v4_14_Addr_A sc_out sc_lv 32 signal 30 } 
	{ v4_14_EN_A sc_out sc_logic 1 signal 30 } 
	{ v4_14_WEN_A sc_out sc_lv 4 signal 30 } 
	{ v4_14_Din_A sc_out sc_lv 32 signal 30 } 
	{ v4_14_Dout_A sc_in sc_lv 32 signal 30 } 
	{ v4_15_Addr_A sc_out sc_lv 32 signal 31 } 
	{ v4_15_EN_A sc_out sc_logic 1 signal 31 } 
	{ v4_15_WEN_A sc_out sc_lv 4 signal 31 } 
	{ v4_15_Din_A sc_out sc_lv 32 signal 31 } 
	{ v4_15_Dout_A sc_in sc_lv 32 signal 31 } 
	{ v0 sc_in sc_lv 32 signal 32 } 
	{ v1 sc_in sc_lv 32 signal 33 } 
	{ grp_fu_394_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_394_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_394_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_394_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_394_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_398_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_398_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_398_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_398_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_402_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_402_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_402_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_402_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "v6_15_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_15", "role": "Addr_A" }} , 
 	{ "name": "v6_15_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_15", "role": "EN_A" }} , 
 	{ "name": "v6_15_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_15", "role": "WEN_A" }} , 
 	{ "name": "v6_15_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_15", "role": "Din_A" }} , 
 	{ "name": "v6_15_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_15", "role": "Dout_A" }} , 
 	{ "name": "v6_15_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_15", "role": "Addr_B" }} , 
 	{ "name": "v6_15_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_15", "role": "EN_B" }} , 
 	{ "name": "v6_15_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_15", "role": "WEN_B" }} , 
 	{ "name": "v6_15_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_15", "role": "Din_B" }} , 
 	{ "name": "v6_15_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_15", "role": "Dout_B" }} , 
 	{ "name": "v6_14_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_14", "role": "Addr_A" }} , 
 	{ "name": "v6_14_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_14", "role": "EN_A" }} , 
 	{ "name": "v6_14_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_14", "role": "WEN_A" }} , 
 	{ "name": "v6_14_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_14", "role": "Din_A" }} , 
 	{ "name": "v6_14_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_14", "role": "Dout_A" }} , 
 	{ "name": "v6_14_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_14", "role": "Addr_B" }} , 
 	{ "name": "v6_14_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_14", "role": "EN_B" }} , 
 	{ "name": "v6_14_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_14", "role": "WEN_B" }} , 
 	{ "name": "v6_14_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_14", "role": "Din_B" }} , 
 	{ "name": "v6_14_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_14", "role": "Dout_B" }} , 
 	{ "name": "v6_13_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_13", "role": "Addr_A" }} , 
 	{ "name": "v6_13_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_13", "role": "EN_A" }} , 
 	{ "name": "v6_13_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_13", "role": "WEN_A" }} , 
 	{ "name": "v6_13_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_13", "role": "Din_A" }} , 
 	{ "name": "v6_13_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_13", "role": "Dout_A" }} , 
 	{ "name": "v6_13_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_13", "role": "Addr_B" }} , 
 	{ "name": "v6_13_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_13", "role": "EN_B" }} , 
 	{ "name": "v6_13_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_13", "role": "WEN_B" }} , 
 	{ "name": "v6_13_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_13", "role": "Din_B" }} , 
 	{ "name": "v6_13_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_13", "role": "Dout_B" }} , 
 	{ "name": "v6_12_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_12", "role": "Addr_A" }} , 
 	{ "name": "v6_12_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_12", "role": "EN_A" }} , 
 	{ "name": "v6_12_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_12", "role": "WEN_A" }} , 
 	{ "name": "v6_12_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_12", "role": "Din_A" }} , 
 	{ "name": "v6_12_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_12", "role": "Dout_A" }} , 
 	{ "name": "v6_12_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_12", "role": "Addr_B" }} , 
 	{ "name": "v6_12_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_12", "role": "EN_B" }} , 
 	{ "name": "v6_12_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_12", "role": "WEN_B" }} , 
 	{ "name": "v6_12_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_12", "role": "Din_B" }} , 
 	{ "name": "v6_12_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_12", "role": "Dout_B" }} , 
 	{ "name": "v6_11_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_11", "role": "Addr_A" }} , 
 	{ "name": "v6_11_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_11", "role": "EN_A" }} , 
 	{ "name": "v6_11_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_11", "role": "WEN_A" }} , 
 	{ "name": "v6_11_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_11", "role": "Din_A" }} , 
 	{ "name": "v6_11_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_11", "role": "Dout_A" }} , 
 	{ "name": "v6_11_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_11", "role": "Addr_B" }} , 
 	{ "name": "v6_11_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_11", "role": "EN_B" }} , 
 	{ "name": "v6_11_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_11", "role": "WEN_B" }} , 
 	{ "name": "v6_11_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_11", "role": "Din_B" }} , 
 	{ "name": "v6_11_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_11", "role": "Dout_B" }} , 
 	{ "name": "v6_10_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_10", "role": "Addr_A" }} , 
 	{ "name": "v6_10_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_10", "role": "EN_A" }} , 
 	{ "name": "v6_10_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_10", "role": "WEN_A" }} , 
 	{ "name": "v6_10_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_10", "role": "Din_A" }} , 
 	{ "name": "v6_10_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_10", "role": "Dout_A" }} , 
 	{ "name": "v6_10_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_10", "role": "Addr_B" }} , 
 	{ "name": "v6_10_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_10", "role": "EN_B" }} , 
 	{ "name": "v6_10_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_10", "role": "WEN_B" }} , 
 	{ "name": "v6_10_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_10", "role": "Din_B" }} , 
 	{ "name": "v6_10_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_10", "role": "Dout_B" }} , 
 	{ "name": "v6_9_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_9", "role": "Addr_A" }} , 
 	{ "name": "v6_9_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_9", "role": "EN_A" }} , 
 	{ "name": "v6_9_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_9", "role": "WEN_A" }} , 
 	{ "name": "v6_9_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_9", "role": "Din_A" }} , 
 	{ "name": "v6_9_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_9", "role": "Dout_A" }} , 
 	{ "name": "v6_9_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_9", "role": "Addr_B" }} , 
 	{ "name": "v6_9_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_9", "role": "EN_B" }} , 
 	{ "name": "v6_9_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_9", "role": "WEN_B" }} , 
 	{ "name": "v6_9_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_9", "role": "Din_B" }} , 
 	{ "name": "v6_9_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_9", "role": "Dout_B" }} , 
 	{ "name": "v6_8_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_8", "role": "Addr_A" }} , 
 	{ "name": "v6_8_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_8", "role": "EN_A" }} , 
 	{ "name": "v6_8_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_8", "role": "WEN_A" }} , 
 	{ "name": "v6_8_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_8", "role": "Din_A" }} , 
 	{ "name": "v6_8_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_8", "role": "Dout_A" }} , 
 	{ "name": "v6_8_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_8", "role": "Addr_B" }} , 
 	{ "name": "v6_8_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_8", "role": "EN_B" }} , 
 	{ "name": "v6_8_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_8", "role": "WEN_B" }} , 
 	{ "name": "v6_8_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_8", "role": "Din_B" }} , 
 	{ "name": "v6_8_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_8", "role": "Dout_B" }} , 
 	{ "name": "v6_7_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_7", "role": "Addr_A" }} , 
 	{ "name": "v6_7_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_7", "role": "EN_A" }} , 
 	{ "name": "v6_7_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_7", "role": "WEN_A" }} , 
 	{ "name": "v6_7_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_7", "role": "Din_A" }} , 
 	{ "name": "v6_7_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_7", "role": "Dout_A" }} , 
 	{ "name": "v6_7_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_7", "role": "Addr_B" }} , 
 	{ "name": "v6_7_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_7", "role": "EN_B" }} , 
 	{ "name": "v6_7_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_7", "role": "WEN_B" }} , 
 	{ "name": "v6_7_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_7", "role": "Din_B" }} , 
 	{ "name": "v6_7_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_7", "role": "Dout_B" }} , 
 	{ "name": "v6_6_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_6", "role": "Addr_A" }} , 
 	{ "name": "v6_6_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_6", "role": "EN_A" }} , 
 	{ "name": "v6_6_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_6", "role": "WEN_A" }} , 
 	{ "name": "v6_6_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_6", "role": "Din_A" }} , 
 	{ "name": "v6_6_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_6", "role": "Dout_A" }} , 
 	{ "name": "v6_6_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_6", "role": "Addr_B" }} , 
 	{ "name": "v6_6_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_6", "role": "EN_B" }} , 
 	{ "name": "v6_6_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_6", "role": "WEN_B" }} , 
 	{ "name": "v6_6_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_6", "role": "Din_B" }} , 
 	{ "name": "v6_6_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_6", "role": "Dout_B" }} , 
 	{ "name": "v6_5_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_5", "role": "Addr_A" }} , 
 	{ "name": "v6_5_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_5", "role": "EN_A" }} , 
 	{ "name": "v6_5_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_5", "role": "WEN_A" }} , 
 	{ "name": "v6_5_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_5", "role": "Din_A" }} , 
 	{ "name": "v6_5_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_5", "role": "Dout_A" }} , 
 	{ "name": "v6_5_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_5", "role": "Addr_B" }} , 
 	{ "name": "v6_5_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_5", "role": "EN_B" }} , 
 	{ "name": "v6_5_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_5", "role": "WEN_B" }} , 
 	{ "name": "v6_5_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_5", "role": "Din_B" }} , 
 	{ "name": "v6_5_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_5", "role": "Dout_B" }} , 
 	{ "name": "v6_4_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_4", "role": "Addr_A" }} , 
 	{ "name": "v6_4_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_4", "role": "EN_A" }} , 
 	{ "name": "v6_4_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_4", "role": "WEN_A" }} , 
 	{ "name": "v6_4_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_4", "role": "Din_A" }} , 
 	{ "name": "v6_4_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_4", "role": "Dout_A" }} , 
 	{ "name": "v6_4_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_4", "role": "Addr_B" }} , 
 	{ "name": "v6_4_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_4", "role": "EN_B" }} , 
 	{ "name": "v6_4_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_4", "role": "WEN_B" }} , 
 	{ "name": "v6_4_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_4", "role": "Din_B" }} , 
 	{ "name": "v6_4_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_4", "role": "Dout_B" }} , 
 	{ "name": "v6_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3", "role": "Addr_A" }} , 
 	{ "name": "v6_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_3", "role": "EN_A" }} , 
 	{ "name": "v6_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_3", "role": "WEN_A" }} , 
 	{ "name": "v6_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3", "role": "Din_A" }} , 
 	{ "name": "v6_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3", "role": "Dout_A" }} , 
 	{ "name": "v6_3_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3", "role": "Addr_B" }} , 
 	{ "name": "v6_3_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_3", "role": "EN_B" }} , 
 	{ "name": "v6_3_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_3", "role": "WEN_B" }} , 
 	{ "name": "v6_3_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3", "role": "Din_B" }} , 
 	{ "name": "v6_3_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3", "role": "Dout_B" }} , 
 	{ "name": "v6_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2", "role": "Addr_A" }} , 
 	{ "name": "v6_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_2", "role": "EN_A" }} , 
 	{ "name": "v6_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_2", "role": "WEN_A" }} , 
 	{ "name": "v6_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2", "role": "Din_A" }} , 
 	{ "name": "v6_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2", "role": "Dout_A" }} , 
 	{ "name": "v6_2_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2", "role": "Addr_B" }} , 
 	{ "name": "v6_2_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_2", "role": "EN_B" }} , 
 	{ "name": "v6_2_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_2", "role": "WEN_B" }} , 
 	{ "name": "v6_2_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2", "role": "Din_B" }} , 
 	{ "name": "v6_2_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2", "role": "Dout_B" }} , 
 	{ "name": "v6_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1", "role": "Addr_A" }} , 
 	{ "name": "v6_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_1", "role": "EN_A" }} , 
 	{ "name": "v6_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_1", "role": "WEN_A" }} , 
 	{ "name": "v6_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1", "role": "Din_A" }} , 
 	{ "name": "v6_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1", "role": "Dout_A" }} , 
 	{ "name": "v6_1_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1", "role": "Addr_B" }} , 
 	{ "name": "v6_1_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_1", "role": "EN_B" }} , 
 	{ "name": "v6_1_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_1", "role": "WEN_B" }} , 
 	{ "name": "v6_1_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1", "role": "Din_B" }} , 
 	{ "name": "v6_1_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1", "role": "Dout_B" }} , 
 	{ "name": "v6_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0", "role": "Addr_A" }} , 
 	{ "name": "v6_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_0", "role": "EN_A" }} , 
 	{ "name": "v6_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_0", "role": "WEN_A" }} , 
 	{ "name": "v6_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0", "role": "Din_A" }} , 
 	{ "name": "v6_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0", "role": "Dout_A" }} , 
 	{ "name": "v6_0_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0", "role": "Addr_B" }} , 
 	{ "name": "v6_0_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_0", "role": "EN_B" }} , 
 	{ "name": "v6_0_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_0", "role": "WEN_B" }} , 
 	{ "name": "v6_0_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0", "role": "Din_B" }} , 
 	{ "name": "v6_0_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0", "role": "Dout_B" }} , 
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
 	{ "name": "v4_8_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_8", "role": "Addr_A" }} , 
 	{ "name": "v4_8_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_8", "role": "EN_A" }} , 
 	{ "name": "v4_8_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_8", "role": "WEN_A" }} , 
 	{ "name": "v4_8_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_8", "role": "Din_A" }} , 
 	{ "name": "v4_8_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_8", "role": "Dout_A" }} , 
 	{ "name": "v4_9_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_9", "role": "Addr_A" }} , 
 	{ "name": "v4_9_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_9", "role": "EN_A" }} , 
 	{ "name": "v4_9_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_9", "role": "WEN_A" }} , 
 	{ "name": "v4_9_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_9", "role": "Din_A" }} , 
 	{ "name": "v4_9_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_9", "role": "Dout_A" }} , 
 	{ "name": "v4_10_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_10", "role": "Addr_A" }} , 
 	{ "name": "v4_10_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_10", "role": "EN_A" }} , 
 	{ "name": "v4_10_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_10", "role": "WEN_A" }} , 
 	{ "name": "v4_10_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_10", "role": "Din_A" }} , 
 	{ "name": "v4_10_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_10", "role": "Dout_A" }} , 
 	{ "name": "v4_11_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_11", "role": "Addr_A" }} , 
 	{ "name": "v4_11_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_11", "role": "EN_A" }} , 
 	{ "name": "v4_11_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_11", "role": "WEN_A" }} , 
 	{ "name": "v4_11_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_11", "role": "Din_A" }} , 
 	{ "name": "v4_11_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_11", "role": "Dout_A" }} , 
 	{ "name": "v4_12_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_12", "role": "Addr_A" }} , 
 	{ "name": "v4_12_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_12", "role": "EN_A" }} , 
 	{ "name": "v4_12_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_12", "role": "WEN_A" }} , 
 	{ "name": "v4_12_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_12", "role": "Din_A" }} , 
 	{ "name": "v4_12_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_12", "role": "Dout_A" }} , 
 	{ "name": "v4_13_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_13", "role": "Addr_A" }} , 
 	{ "name": "v4_13_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_13", "role": "EN_A" }} , 
 	{ "name": "v4_13_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_13", "role": "WEN_A" }} , 
 	{ "name": "v4_13_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_13", "role": "Din_A" }} , 
 	{ "name": "v4_13_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_13", "role": "Dout_A" }} , 
 	{ "name": "v4_14_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_14", "role": "Addr_A" }} , 
 	{ "name": "v4_14_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_14", "role": "EN_A" }} , 
 	{ "name": "v4_14_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_14", "role": "WEN_A" }} , 
 	{ "name": "v4_14_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_14", "role": "Din_A" }} , 
 	{ "name": "v4_14_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_14", "role": "Dout_A" }} , 
 	{ "name": "v4_15_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_15", "role": "Addr_A" }} , 
 	{ "name": "v4_15_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_15", "role": "EN_A" }} , 
 	{ "name": "v4_15_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_15", "role": "WEN_A" }} , 
 	{ "name": "v4_15_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_15", "role": "Din_A" }} , 
 	{ "name": "v4_15_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_15", "role": "Dout_A" }} , 
 	{ "name": "v0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v0", "role": "default" }} , 
 	{ "name": "v1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1", "role": "default" }} , 
 	{ "name": "grp_fu_394_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_394_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_394_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_394_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_394_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_394_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_394_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_394_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_394_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_394_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_398_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_398_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_398_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_398_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_398_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_398_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_398_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_398_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_402_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_402_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_402_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_402_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_402_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_402_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_402_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_402_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "test_gesummv_32_Pipeline_VITIS_LOOP_221_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "50", "EstimateLatencyMax" : "50",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v6_15", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v6_14", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v6_13", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v6_12", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v6_11", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v6_10", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v6_9", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v6_8", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v6_7", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v6_6", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v6_5", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v6_4", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v6_3", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v6_2", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v6_1", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v6_0", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_2", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_3", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_4", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_5", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_6", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_7", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_8", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_9", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_10", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_11", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_12", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_13", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_14", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v4_15", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v0", "Type" : "None", "Direction" : "I"},
			{"Name" : "v1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_221_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter17", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter17", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_32_1_1_U24", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_164_32_1_1_U25", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	test_gesummv_32_Pipeline_VITIS_LOOP_221_3 {
		v6_15 {Type IO LastRead 11 FirstWrite 17}
		v6_14 {Type IO LastRead 11 FirstWrite 17}
		v6_13 {Type IO LastRead 11 FirstWrite 17}
		v6_12 {Type IO LastRead 11 FirstWrite 17}
		v6_11 {Type IO LastRead 11 FirstWrite 17}
		v6_10 {Type IO LastRead 11 FirstWrite 17}
		v6_9 {Type IO LastRead 11 FirstWrite 17}
		v6_8 {Type IO LastRead 11 FirstWrite 17}
		v6_7 {Type IO LastRead 11 FirstWrite 17}
		v6_6 {Type IO LastRead 11 FirstWrite 17}
		v6_5 {Type IO LastRead 11 FirstWrite 17}
		v6_4 {Type IO LastRead 11 FirstWrite 17}
		v6_3 {Type IO LastRead 11 FirstWrite 17}
		v6_2 {Type IO LastRead 11 FirstWrite 17}
		v6_1 {Type IO LastRead 11 FirstWrite 17}
		v6_0 {Type IO LastRead 11 FirstWrite 17}
		v4_0 {Type I LastRead 0 FirstWrite -1}
		v4_1 {Type I LastRead 0 FirstWrite -1}
		v4_2 {Type I LastRead 0 FirstWrite -1}
		v4_3 {Type I LastRead 0 FirstWrite -1}
		v4_4 {Type I LastRead 0 FirstWrite -1}
		v4_5 {Type I LastRead 0 FirstWrite -1}
		v4_6 {Type I LastRead 0 FirstWrite -1}
		v4_7 {Type I LastRead 0 FirstWrite -1}
		v4_8 {Type I LastRead 0 FirstWrite -1}
		v4_9 {Type I LastRead 0 FirstWrite -1}
		v4_10 {Type I LastRead 0 FirstWrite -1}
		v4_11 {Type I LastRead 0 FirstWrite -1}
		v4_12 {Type I LastRead 0 FirstWrite -1}
		v4_13 {Type I LastRead 0 FirstWrite -1}
		v4_14 {Type I LastRead 0 FirstWrite -1}
		v4_15 {Type I LastRead 0 FirstWrite -1}
		v0 {Type I LastRead 0 FirstWrite -1}
		v1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "50", "Max" : "50"}
	, {"Name" : "Interval", "Min" : "50", "Max" : "50"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	v6_15 { bram {  { v6_15_Addr_A MemPortADDR2 1 32 }  { v6_15_EN_A MemPortCE2 1 1 }  { v6_15_WEN_A MemPortWE2 1 4 }  { v6_15_Din_A MemPortDIN2 1 32 }  { v6_15_Dout_A MemPortDOUT2 0 32 }  { v6_15_Addr_B MemPortADDR2 1 32 }  { v6_15_EN_B MemPortCE2 1 1 }  { v6_15_WEN_B MemPortWE2 1 4 }  { v6_15_Din_B MemPortDIN2 1 32 }  { v6_15_Dout_B in_data 0 32 } } }
	v6_14 { bram {  { v6_14_Addr_A MemPortADDR2 1 32 }  { v6_14_EN_A MemPortCE2 1 1 }  { v6_14_WEN_A MemPortWE2 1 4 }  { v6_14_Din_A MemPortDIN2 1 32 }  { v6_14_Dout_A MemPortDOUT2 0 32 }  { v6_14_Addr_B MemPortADDR2 1 32 }  { v6_14_EN_B MemPortCE2 1 1 }  { v6_14_WEN_B MemPortWE2 1 4 }  { v6_14_Din_B MemPortDIN2 1 32 }  { v6_14_Dout_B in_data 0 32 } } }
	v6_13 { bram {  { v6_13_Addr_A MemPortADDR2 1 32 }  { v6_13_EN_A MemPortCE2 1 1 }  { v6_13_WEN_A MemPortWE2 1 4 }  { v6_13_Din_A MemPortDIN2 1 32 }  { v6_13_Dout_A MemPortDOUT2 0 32 }  { v6_13_Addr_B MemPortADDR2 1 32 }  { v6_13_EN_B MemPortCE2 1 1 }  { v6_13_WEN_B MemPortWE2 1 4 }  { v6_13_Din_B MemPortDIN2 1 32 }  { v6_13_Dout_B in_data 0 32 } } }
	v6_12 { bram {  { v6_12_Addr_A MemPortADDR2 1 32 }  { v6_12_EN_A MemPortCE2 1 1 }  { v6_12_WEN_A MemPortWE2 1 4 }  { v6_12_Din_A MemPortDIN2 1 32 }  { v6_12_Dout_A MemPortDOUT2 0 32 }  { v6_12_Addr_B MemPortADDR2 1 32 }  { v6_12_EN_B MemPortCE2 1 1 }  { v6_12_WEN_B MemPortWE2 1 4 }  { v6_12_Din_B MemPortDIN2 1 32 }  { v6_12_Dout_B in_data 0 32 } } }
	v6_11 { bram {  { v6_11_Addr_A MemPortADDR2 1 32 }  { v6_11_EN_A MemPortCE2 1 1 }  { v6_11_WEN_A MemPortWE2 1 4 }  { v6_11_Din_A MemPortDIN2 1 32 }  { v6_11_Dout_A MemPortDOUT2 0 32 }  { v6_11_Addr_B MemPortADDR2 1 32 }  { v6_11_EN_B MemPortCE2 1 1 }  { v6_11_WEN_B MemPortWE2 1 4 }  { v6_11_Din_B MemPortDIN2 1 32 }  { v6_11_Dout_B in_data 0 32 } } }
	v6_10 { bram {  { v6_10_Addr_A MemPortADDR2 1 32 }  { v6_10_EN_A MemPortCE2 1 1 }  { v6_10_WEN_A MemPortWE2 1 4 }  { v6_10_Din_A MemPortDIN2 1 32 }  { v6_10_Dout_A MemPortDOUT2 0 32 }  { v6_10_Addr_B MemPortADDR2 1 32 }  { v6_10_EN_B MemPortCE2 1 1 }  { v6_10_WEN_B MemPortWE2 1 4 }  { v6_10_Din_B MemPortDIN2 1 32 }  { v6_10_Dout_B in_data 0 32 } } }
	v6_9 { bram {  { v6_9_Addr_A MemPortADDR2 1 32 }  { v6_9_EN_A MemPortCE2 1 1 }  { v6_9_WEN_A MemPortWE2 1 4 }  { v6_9_Din_A MemPortDIN2 1 32 }  { v6_9_Dout_A MemPortDOUT2 0 32 }  { v6_9_Addr_B MemPortADDR2 1 32 }  { v6_9_EN_B MemPortCE2 1 1 }  { v6_9_WEN_B MemPortWE2 1 4 }  { v6_9_Din_B MemPortDIN2 1 32 }  { v6_9_Dout_B in_data 0 32 } } }
	v6_8 { bram {  { v6_8_Addr_A MemPortADDR2 1 32 }  { v6_8_EN_A MemPortCE2 1 1 }  { v6_8_WEN_A MemPortWE2 1 4 }  { v6_8_Din_A MemPortDIN2 1 32 }  { v6_8_Dout_A MemPortDOUT2 0 32 }  { v6_8_Addr_B MemPortADDR2 1 32 }  { v6_8_EN_B MemPortCE2 1 1 }  { v6_8_WEN_B MemPortWE2 1 4 }  { v6_8_Din_B MemPortDIN2 1 32 }  { v6_8_Dout_B in_data 0 32 } } }
	v6_7 { bram {  { v6_7_Addr_A MemPortADDR2 1 32 }  { v6_7_EN_A MemPortCE2 1 1 }  { v6_7_WEN_A MemPortWE2 1 4 }  { v6_7_Din_A MemPortDIN2 1 32 }  { v6_7_Dout_A MemPortDOUT2 0 32 }  { v6_7_Addr_B MemPortADDR2 1 32 }  { v6_7_EN_B MemPortCE2 1 1 }  { v6_7_WEN_B MemPortWE2 1 4 }  { v6_7_Din_B MemPortDIN2 1 32 }  { v6_7_Dout_B in_data 0 32 } } }
	v6_6 { bram {  { v6_6_Addr_A MemPortADDR2 1 32 }  { v6_6_EN_A MemPortCE2 1 1 }  { v6_6_WEN_A MemPortWE2 1 4 }  { v6_6_Din_A MemPortDIN2 1 32 }  { v6_6_Dout_A MemPortDOUT2 0 32 }  { v6_6_Addr_B MemPortADDR2 1 32 }  { v6_6_EN_B MemPortCE2 1 1 }  { v6_6_WEN_B MemPortWE2 1 4 }  { v6_6_Din_B MemPortDIN2 1 32 }  { v6_6_Dout_B in_data 0 32 } } }
	v6_5 { bram {  { v6_5_Addr_A MemPortADDR2 1 32 }  { v6_5_EN_A MemPortCE2 1 1 }  { v6_5_WEN_A MemPortWE2 1 4 }  { v6_5_Din_A MemPortDIN2 1 32 }  { v6_5_Dout_A MemPortDOUT2 0 32 }  { v6_5_Addr_B MemPortADDR2 1 32 }  { v6_5_EN_B MemPortCE2 1 1 }  { v6_5_WEN_B MemPortWE2 1 4 }  { v6_5_Din_B MemPortDIN2 1 32 }  { v6_5_Dout_B in_data 0 32 } } }
	v6_4 { bram {  { v6_4_Addr_A MemPortADDR2 1 32 }  { v6_4_EN_A MemPortCE2 1 1 }  { v6_4_WEN_A MemPortWE2 1 4 }  { v6_4_Din_A MemPortDIN2 1 32 }  { v6_4_Dout_A MemPortDOUT2 0 32 }  { v6_4_Addr_B MemPortADDR2 1 32 }  { v6_4_EN_B MemPortCE2 1 1 }  { v6_4_WEN_B MemPortWE2 1 4 }  { v6_4_Din_B MemPortDIN2 1 32 }  { v6_4_Dout_B in_data 0 32 } } }
	v6_3 { bram {  { v6_3_Addr_A MemPortADDR2 1 32 }  { v6_3_EN_A MemPortCE2 1 1 }  { v6_3_WEN_A MemPortWE2 1 4 }  { v6_3_Din_A MemPortDIN2 1 32 }  { v6_3_Dout_A MemPortDOUT2 0 32 }  { v6_3_Addr_B MemPortADDR2 1 32 }  { v6_3_EN_B MemPortCE2 1 1 }  { v6_3_WEN_B MemPortWE2 1 4 }  { v6_3_Din_B MemPortDIN2 1 32 }  { v6_3_Dout_B in_data 0 32 } } }
	v6_2 { bram {  { v6_2_Addr_A MemPortADDR2 1 32 }  { v6_2_EN_A MemPortCE2 1 1 }  { v6_2_WEN_A MemPortWE2 1 4 }  { v6_2_Din_A MemPortDIN2 1 32 }  { v6_2_Dout_A MemPortDOUT2 0 32 }  { v6_2_Addr_B MemPortADDR2 1 32 }  { v6_2_EN_B MemPortCE2 1 1 }  { v6_2_WEN_B MemPortWE2 1 4 }  { v6_2_Din_B MemPortDIN2 1 32 }  { v6_2_Dout_B in_data 0 32 } } }
	v6_1 { bram {  { v6_1_Addr_A MemPortADDR2 1 32 }  { v6_1_EN_A MemPortCE2 1 1 }  { v6_1_WEN_A MemPortWE2 1 4 }  { v6_1_Din_A MemPortDIN2 1 32 }  { v6_1_Dout_A MemPortDOUT2 0 32 }  { v6_1_Addr_B MemPortADDR2 1 32 }  { v6_1_EN_B MemPortCE2 1 1 }  { v6_1_WEN_B MemPortWE2 1 4 }  { v6_1_Din_B MemPortDIN2 1 32 }  { v6_1_Dout_B in_data 0 32 } } }
	v6_0 { bram {  { v6_0_Addr_A MemPortADDR2 1 32 }  { v6_0_EN_A MemPortCE2 1 1 }  { v6_0_WEN_A MemPortWE2 1 4 }  { v6_0_Din_A MemPortDIN2 1 32 }  { v6_0_Dout_A MemPortDOUT2 0 32 }  { v6_0_Addr_B MemPortADDR2 1 32 }  { v6_0_EN_B MemPortCE2 1 1 }  { v6_0_WEN_B MemPortWE2 1 4 }  { v6_0_Din_B MemPortDIN2 1 32 }  { v6_0_Dout_B in_data 0 32 } } }
	v4_0 { bram {  { v4_0_Addr_A MemPortADDR2 1 32 }  { v4_0_EN_A MemPortCE2 1 1 }  { v4_0_WEN_A MemPortWE2 1 4 }  { v4_0_Din_A MemPortDIN2 1 32 }  { v4_0_Dout_A in_data 0 32 } } }
	v4_1 { bram {  { v4_1_Addr_A MemPortADDR2 1 32 }  { v4_1_EN_A MemPortCE2 1 1 }  { v4_1_WEN_A MemPortWE2 1 4 }  { v4_1_Din_A MemPortDIN2 1 32 }  { v4_1_Dout_A in_data 0 32 } } }
	v4_2 { bram {  { v4_2_Addr_A MemPortADDR2 1 32 }  { v4_2_EN_A MemPortCE2 1 1 }  { v4_2_WEN_A MemPortWE2 1 4 }  { v4_2_Din_A MemPortDIN2 1 32 }  { v4_2_Dout_A in_data 0 32 } } }
	v4_3 { bram {  { v4_3_Addr_A MemPortADDR2 1 32 }  { v4_3_EN_A MemPortCE2 1 1 }  { v4_3_WEN_A MemPortWE2 1 4 }  { v4_3_Din_A MemPortDIN2 1 32 }  { v4_3_Dout_A in_data 0 32 } } }
	v4_4 { bram {  { v4_4_Addr_A MemPortADDR2 1 32 }  { v4_4_EN_A MemPortCE2 1 1 }  { v4_4_WEN_A MemPortWE2 1 4 }  { v4_4_Din_A MemPortDIN2 1 32 }  { v4_4_Dout_A in_data 0 32 } } }
	v4_5 { bram {  { v4_5_Addr_A MemPortADDR2 1 32 }  { v4_5_EN_A MemPortCE2 1 1 }  { v4_5_WEN_A MemPortWE2 1 4 }  { v4_5_Din_A MemPortDIN2 1 32 }  { v4_5_Dout_A in_data 0 32 } } }
	v4_6 { bram {  { v4_6_Addr_A MemPortADDR2 1 32 }  { v4_6_EN_A MemPortCE2 1 1 }  { v4_6_WEN_A MemPortWE2 1 4 }  { v4_6_Din_A MemPortDIN2 1 32 }  { v4_6_Dout_A in_data 0 32 } } }
	v4_7 { bram {  { v4_7_Addr_A MemPortADDR2 1 32 }  { v4_7_EN_A MemPortCE2 1 1 }  { v4_7_WEN_A MemPortWE2 1 4 }  { v4_7_Din_A MemPortDIN2 1 32 }  { v4_7_Dout_A in_data 0 32 } } }
	v4_8 { bram {  { v4_8_Addr_A MemPortADDR2 1 32 }  { v4_8_EN_A MemPortCE2 1 1 }  { v4_8_WEN_A MemPortWE2 1 4 }  { v4_8_Din_A MemPortDIN2 1 32 }  { v4_8_Dout_A in_data 0 32 } } }
	v4_9 { bram {  { v4_9_Addr_A MemPortADDR2 1 32 }  { v4_9_EN_A MemPortCE2 1 1 }  { v4_9_WEN_A MemPortWE2 1 4 }  { v4_9_Din_A MemPortDIN2 1 32 }  { v4_9_Dout_A in_data 0 32 } } }
	v4_10 { bram {  { v4_10_Addr_A MemPortADDR2 1 32 }  { v4_10_EN_A MemPortCE2 1 1 }  { v4_10_WEN_A MemPortWE2 1 4 }  { v4_10_Din_A MemPortDIN2 1 32 }  { v4_10_Dout_A in_data 0 32 } } }
	v4_11 { bram {  { v4_11_Addr_A MemPortADDR2 1 32 }  { v4_11_EN_A MemPortCE2 1 1 }  { v4_11_WEN_A MemPortWE2 1 4 }  { v4_11_Din_A MemPortDIN2 1 32 }  { v4_11_Dout_A in_data 0 32 } } }
	v4_12 { bram {  { v4_12_Addr_A MemPortADDR2 1 32 }  { v4_12_EN_A MemPortCE2 1 1 }  { v4_12_WEN_A MemPortWE2 1 4 }  { v4_12_Din_A MemPortDIN2 1 32 }  { v4_12_Dout_A in_data 0 32 } } }
	v4_13 { bram {  { v4_13_Addr_A MemPortADDR2 1 32 }  { v4_13_EN_A MemPortCE2 1 1 }  { v4_13_WEN_A MemPortWE2 1 4 }  { v4_13_Din_A MemPortDIN2 1 32 }  { v4_13_Dout_A in_data 0 32 } } }
	v4_14 { bram {  { v4_14_Addr_A MemPortADDR2 1 32 }  { v4_14_EN_A MemPortCE2 1 1 }  { v4_14_WEN_A MemPortWE2 1 4 }  { v4_14_Din_A MemPortDIN2 1 32 }  { v4_14_Dout_A in_data 0 32 } } }
	v4_15 { bram {  { v4_15_Addr_A MemPortADDR2 1 32 }  { v4_15_EN_A MemPortCE2 1 1 }  { v4_15_WEN_A MemPortWE2 1 4 }  { v4_15_Din_A MemPortDIN2 1 32 }  { v4_15_Dout_A in_data 0 32 } } }
	v0 { ap_none {  { v0 in_data 0 32 } } }
	v1 { ap_none {  { v1 in_data 0 32 } } }
}
