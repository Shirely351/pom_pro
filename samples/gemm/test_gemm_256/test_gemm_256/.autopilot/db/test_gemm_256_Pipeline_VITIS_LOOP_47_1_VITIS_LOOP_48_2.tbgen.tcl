set moduleName test_gemm_256_Pipeline_VITIS_LOOP_47_1_VITIS_LOOP_48_2
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
set C_modelName {test_gemm_256_Pipeline_VITIS_LOOP_47_1_VITIS_LOOP_48_2}
set C_modelType { void 0 }
set C_modelArgList {
	{ v4_0_0 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_0_1 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_0_2 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_0_3 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_0_4 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_0_5 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_0_6 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_0_7 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_0_8 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_0_9 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_0_10 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_0_11 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_0_12 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_0_13 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_0_14 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_0_15 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_1_0 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_1_1 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_1_2 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_1_3 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_1_4 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_1_5 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_1_6 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_1_7 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_1_8 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_1_9 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_1_10 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_1_11 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_1_12 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_1_13 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_1_14 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v4_1_15 int 32 regular {bram 2048 { 0 1 } 1 1 }  }
	{ v1 float 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v4_0_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_0_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_0_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_0_3", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_0_4", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_0_5", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_0_6", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_0_7", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_0_8", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_0_9", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_0_10", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_0_11", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_0_12", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_0_13", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_0_14", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_0_15", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_1_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_1_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_1_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_1_3", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_1_4", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_1_5", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_1_6", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_1_7", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_1_8", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_1_9", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_1_10", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_1_11", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_1_12", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_1_13", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_1_14", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v4_1_15", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v1", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 455
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ v4_0_0_Addr_A sc_out sc_lv 32 signal 0 } 
	{ v4_0_0_EN_A sc_out sc_logic 1 signal 0 } 
	{ v4_0_0_WEN_A sc_out sc_lv 4 signal 0 } 
	{ v4_0_0_Din_A sc_out sc_lv 32 signal 0 } 
	{ v4_0_0_Dout_A sc_in sc_lv 32 signal 0 } 
	{ v4_0_0_Addr_B sc_out sc_lv 32 signal 0 } 
	{ v4_0_0_EN_B sc_out sc_logic 1 signal 0 } 
	{ v4_0_0_WEN_B sc_out sc_lv 4 signal 0 } 
	{ v4_0_0_Din_B sc_out sc_lv 32 signal 0 } 
	{ v4_0_0_Dout_B sc_in sc_lv 32 signal 0 } 
	{ v4_0_1_Addr_A sc_out sc_lv 32 signal 1 } 
	{ v4_0_1_EN_A sc_out sc_logic 1 signal 1 } 
	{ v4_0_1_WEN_A sc_out sc_lv 4 signal 1 } 
	{ v4_0_1_Din_A sc_out sc_lv 32 signal 1 } 
	{ v4_0_1_Dout_A sc_in sc_lv 32 signal 1 } 
	{ v4_0_1_Addr_B sc_out sc_lv 32 signal 1 } 
	{ v4_0_1_EN_B sc_out sc_logic 1 signal 1 } 
	{ v4_0_1_WEN_B sc_out sc_lv 4 signal 1 } 
	{ v4_0_1_Din_B sc_out sc_lv 32 signal 1 } 
	{ v4_0_1_Dout_B sc_in sc_lv 32 signal 1 } 
	{ v4_0_2_Addr_A sc_out sc_lv 32 signal 2 } 
	{ v4_0_2_EN_A sc_out sc_logic 1 signal 2 } 
	{ v4_0_2_WEN_A sc_out sc_lv 4 signal 2 } 
	{ v4_0_2_Din_A sc_out sc_lv 32 signal 2 } 
	{ v4_0_2_Dout_A sc_in sc_lv 32 signal 2 } 
	{ v4_0_2_Addr_B sc_out sc_lv 32 signal 2 } 
	{ v4_0_2_EN_B sc_out sc_logic 1 signal 2 } 
	{ v4_0_2_WEN_B sc_out sc_lv 4 signal 2 } 
	{ v4_0_2_Din_B sc_out sc_lv 32 signal 2 } 
	{ v4_0_2_Dout_B sc_in sc_lv 32 signal 2 } 
	{ v4_0_3_Addr_A sc_out sc_lv 32 signal 3 } 
	{ v4_0_3_EN_A sc_out sc_logic 1 signal 3 } 
	{ v4_0_3_WEN_A sc_out sc_lv 4 signal 3 } 
	{ v4_0_3_Din_A sc_out sc_lv 32 signal 3 } 
	{ v4_0_3_Dout_A sc_in sc_lv 32 signal 3 } 
	{ v4_0_3_Addr_B sc_out sc_lv 32 signal 3 } 
	{ v4_0_3_EN_B sc_out sc_logic 1 signal 3 } 
	{ v4_0_3_WEN_B sc_out sc_lv 4 signal 3 } 
	{ v4_0_3_Din_B sc_out sc_lv 32 signal 3 } 
	{ v4_0_3_Dout_B sc_in sc_lv 32 signal 3 } 
	{ v4_0_4_Addr_A sc_out sc_lv 32 signal 4 } 
	{ v4_0_4_EN_A sc_out sc_logic 1 signal 4 } 
	{ v4_0_4_WEN_A sc_out sc_lv 4 signal 4 } 
	{ v4_0_4_Din_A sc_out sc_lv 32 signal 4 } 
	{ v4_0_4_Dout_A sc_in sc_lv 32 signal 4 } 
	{ v4_0_4_Addr_B sc_out sc_lv 32 signal 4 } 
	{ v4_0_4_EN_B sc_out sc_logic 1 signal 4 } 
	{ v4_0_4_WEN_B sc_out sc_lv 4 signal 4 } 
	{ v4_0_4_Din_B sc_out sc_lv 32 signal 4 } 
	{ v4_0_4_Dout_B sc_in sc_lv 32 signal 4 } 
	{ v4_0_5_Addr_A sc_out sc_lv 32 signal 5 } 
	{ v4_0_5_EN_A sc_out sc_logic 1 signal 5 } 
	{ v4_0_5_WEN_A sc_out sc_lv 4 signal 5 } 
	{ v4_0_5_Din_A sc_out sc_lv 32 signal 5 } 
	{ v4_0_5_Dout_A sc_in sc_lv 32 signal 5 } 
	{ v4_0_5_Addr_B sc_out sc_lv 32 signal 5 } 
	{ v4_0_5_EN_B sc_out sc_logic 1 signal 5 } 
	{ v4_0_5_WEN_B sc_out sc_lv 4 signal 5 } 
	{ v4_0_5_Din_B sc_out sc_lv 32 signal 5 } 
	{ v4_0_5_Dout_B sc_in sc_lv 32 signal 5 } 
	{ v4_0_6_Addr_A sc_out sc_lv 32 signal 6 } 
	{ v4_0_6_EN_A sc_out sc_logic 1 signal 6 } 
	{ v4_0_6_WEN_A sc_out sc_lv 4 signal 6 } 
	{ v4_0_6_Din_A sc_out sc_lv 32 signal 6 } 
	{ v4_0_6_Dout_A sc_in sc_lv 32 signal 6 } 
	{ v4_0_6_Addr_B sc_out sc_lv 32 signal 6 } 
	{ v4_0_6_EN_B sc_out sc_logic 1 signal 6 } 
	{ v4_0_6_WEN_B sc_out sc_lv 4 signal 6 } 
	{ v4_0_6_Din_B sc_out sc_lv 32 signal 6 } 
	{ v4_0_6_Dout_B sc_in sc_lv 32 signal 6 } 
	{ v4_0_7_Addr_A sc_out sc_lv 32 signal 7 } 
	{ v4_0_7_EN_A sc_out sc_logic 1 signal 7 } 
	{ v4_0_7_WEN_A sc_out sc_lv 4 signal 7 } 
	{ v4_0_7_Din_A sc_out sc_lv 32 signal 7 } 
	{ v4_0_7_Dout_A sc_in sc_lv 32 signal 7 } 
	{ v4_0_7_Addr_B sc_out sc_lv 32 signal 7 } 
	{ v4_0_7_EN_B sc_out sc_logic 1 signal 7 } 
	{ v4_0_7_WEN_B sc_out sc_lv 4 signal 7 } 
	{ v4_0_7_Din_B sc_out sc_lv 32 signal 7 } 
	{ v4_0_7_Dout_B sc_in sc_lv 32 signal 7 } 
	{ v4_0_8_Addr_A sc_out sc_lv 32 signal 8 } 
	{ v4_0_8_EN_A sc_out sc_logic 1 signal 8 } 
	{ v4_0_8_WEN_A sc_out sc_lv 4 signal 8 } 
	{ v4_0_8_Din_A sc_out sc_lv 32 signal 8 } 
	{ v4_0_8_Dout_A sc_in sc_lv 32 signal 8 } 
	{ v4_0_8_Addr_B sc_out sc_lv 32 signal 8 } 
	{ v4_0_8_EN_B sc_out sc_logic 1 signal 8 } 
	{ v4_0_8_WEN_B sc_out sc_lv 4 signal 8 } 
	{ v4_0_8_Din_B sc_out sc_lv 32 signal 8 } 
	{ v4_0_8_Dout_B sc_in sc_lv 32 signal 8 } 
	{ v4_0_9_Addr_A sc_out sc_lv 32 signal 9 } 
	{ v4_0_9_EN_A sc_out sc_logic 1 signal 9 } 
	{ v4_0_9_WEN_A sc_out sc_lv 4 signal 9 } 
	{ v4_0_9_Din_A sc_out sc_lv 32 signal 9 } 
	{ v4_0_9_Dout_A sc_in sc_lv 32 signal 9 } 
	{ v4_0_9_Addr_B sc_out sc_lv 32 signal 9 } 
	{ v4_0_9_EN_B sc_out sc_logic 1 signal 9 } 
	{ v4_0_9_WEN_B sc_out sc_lv 4 signal 9 } 
	{ v4_0_9_Din_B sc_out sc_lv 32 signal 9 } 
	{ v4_0_9_Dout_B sc_in sc_lv 32 signal 9 } 
	{ v4_0_10_Addr_A sc_out sc_lv 32 signal 10 } 
	{ v4_0_10_EN_A sc_out sc_logic 1 signal 10 } 
	{ v4_0_10_WEN_A sc_out sc_lv 4 signal 10 } 
	{ v4_0_10_Din_A sc_out sc_lv 32 signal 10 } 
	{ v4_0_10_Dout_A sc_in sc_lv 32 signal 10 } 
	{ v4_0_10_Addr_B sc_out sc_lv 32 signal 10 } 
	{ v4_0_10_EN_B sc_out sc_logic 1 signal 10 } 
	{ v4_0_10_WEN_B sc_out sc_lv 4 signal 10 } 
	{ v4_0_10_Din_B sc_out sc_lv 32 signal 10 } 
	{ v4_0_10_Dout_B sc_in sc_lv 32 signal 10 } 
	{ v4_0_11_Addr_A sc_out sc_lv 32 signal 11 } 
	{ v4_0_11_EN_A sc_out sc_logic 1 signal 11 } 
	{ v4_0_11_WEN_A sc_out sc_lv 4 signal 11 } 
	{ v4_0_11_Din_A sc_out sc_lv 32 signal 11 } 
	{ v4_0_11_Dout_A sc_in sc_lv 32 signal 11 } 
	{ v4_0_11_Addr_B sc_out sc_lv 32 signal 11 } 
	{ v4_0_11_EN_B sc_out sc_logic 1 signal 11 } 
	{ v4_0_11_WEN_B sc_out sc_lv 4 signal 11 } 
	{ v4_0_11_Din_B sc_out sc_lv 32 signal 11 } 
	{ v4_0_11_Dout_B sc_in sc_lv 32 signal 11 } 
	{ v4_0_12_Addr_A sc_out sc_lv 32 signal 12 } 
	{ v4_0_12_EN_A sc_out sc_logic 1 signal 12 } 
	{ v4_0_12_WEN_A sc_out sc_lv 4 signal 12 } 
	{ v4_0_12_Din_A sc_out sc_lv 32 signal 12 } 
	{ v4_0_12_Dout_A sc_in sc_lv 32 signal 12 } 
	{ v4_0_12_Addr_B sc_out sc_lv 32 signal 12 } 
	{ v4_0_12_EN_B sc_out sc_logic 1 signal 12 } 
	{ v4_0_12_WEN_B sc_out sc_lv 4 signal 12 } 
	{ v4_0_12_Din_B sc_out sc_lv 32 signal 12 } 
	{ v4_0_12_Dout_B sc_in sc_lv 32 signal 12 } 
	{ v4_0_13_Addr_A sc_out sc_lv 32 signal 13 } 
	{ v4_0_13_EN_A sc_out sc_logic 1 signal 13 } 
	{ v4_0_13_WEN_A sc_out sc_lv 4 signal 13 } 
	{ v4_0_13_Din_A sc_out sc_lv 32 signal 13 } 
	{ v4_0_13_Dout_A sc_in sc_lv 32 signal 13 } 
	{ v4_0_13_Addr_B sc_out sc_lv 32 signal 13 } 
	{ v4_0_13_EN_B sc_out sc_logic 1 signal 13 } 
	{ v4_0_13_WEN_B sc_out sc_lv 4 signal 13 } 
	{ v4_0_13_Din_B sc_out sc_lv 32 signal 13 } 
	{ v4_0_13_Dout_B sc_in sc_lv 32 signal 13 } 
	{ v4_0_14_Addr_A sc_out sc_lv 32 signal 14 } 
	{ v4_0_14_EN_A sc_out sc_logic 1 signal 14 } 
	{ v4_0_14_WEN_A sc_out sc_lv 4 signal 14 } 
	{ v4_0_14_Din_A sc_out sc_lv 32 signal 14 } 
	{ v4_0_14_Dout_A sc_in sc_lv 32 signal 14 } 
	{ v4_0_14_Addr_B sc_out sc_lv 32 signal 14 } 
	{ v4_0_14_EN_B sc_out sc_logic 1 signal 14 } 
	{ v4_0_14_WEN_B sc_out sc_lv 4 signal 14 } 
	{ v4_0_14_Din_B sc_out sc_lv 32 signal 14 } 
	{ v4_0_14_Dout_B sc_in sc_lv 32 signal 14 } 
	{ v4_0_15_Addr_A sc_out sc_lv 32 signal 15 } 
	{ v4_0_15_EN_A sc_out sc_logic 1 signal 15 } 
	{ v4_0_15_WEN_A sc_out sc_lv 4 signal 15 } 
	{ v4_0_15_Din_A sc_out sc_lv 32 signal 15 } 
	{ v4_0_15_Dout_A sc_in sc_lv 32 signal 15 } 
	{ v4_0_15_Addr_B sc_out sc_lv 32 signal 15 } 
	{ v4_0_15_EN_B sc_out sc_logic 1 signal 15 } 
	{ v4_0_15_WEN_B sc_out sc_lv 4 signal 15 } 
	{ v4_0_15_Din_B sc_out sc_lv 32 signal 15 } 
	{ v4_0_15_Dout_B sc_in sc_lv 32 signal 15 } 
	{ v4_1_0_Addr_A sc_out sc_lv 32 signal 16 } 
	{ v4_1_0_EN_A sc_out sc_logic 1 signal 16 } 
	{ v4_1_0_WEN_A sc_out sc_lv 4 signal 16 } 
	{ v4_1_0_Din_A sc_out sc_lv 32 signal 16 } 
	{ v4_1_0_Dout_A sc_in sc_lv 32 signal 16 } 
	{ v4_1_0_Addr_B sc_out sc_lv 32 signal 16 } 
	{ v4_1_0_EN_B sc_out sc_logic 1 signal 16 } 
	{ v4_1_0_WEN_B sc_out sc_lv 4 signal 16 } 
	{ v4_1_0_Din_B sc_out sc_lv 32 signal 16 } 
	{ v4_1_0_Dout_B sc_in sc_lv 32 signal 16 } 
	{ v4_1_1_Addr_A sc_out sc_lv 32 signal 17 } 
	{ v4_1_1_EN_A sc_out sc_logic 1 signal 17 } 
	{ v4_1_1_WEN_A sc_out sc_lv 4 signal 17 } 
	{ v4_1_1_Din_A sc_out sc_lv 32 signal 17 } 
	{ v4_1_1_Dout_A sc_in sc_lv 32 signal 17 } 
	{ v4_1_1_Addr_B sc_out sc_lv 32 signal 17 } 
	{ v4_1_1_EN_B sc_out sc_logic 1 signal 17 } 
	{ v4_1_1_WEN_B sc_out sc_lv 4 signal 17 } 
	{ v4_1_1_Din_B sc_out sc_lv 32 signal 17 } 
	{ v4_1_1_Dout_B sc_in sc_lv 32 signal 17 } 
	{ v4_1_2_Addr_A sc_out sc_lv 32 signal 18 } 
	{ v4_1_2_EN_A sc_out sc_logic 1 signal 18 } 
	{ v4_1_2_WEN_A sc_out sc_lv 4 signal 18 } 
	{ v4_1_2_Din_A sc_out sc_lv 32 signal 18 } 
	{ v4_1_2_Dout_A sc_in sc_lv 32 signal 18 } 
	{ v4_1_2_Addr_B sc_out sc_lv 32 signal 18 } 
	{ v4_1_2_EN_B sc_out sc_logic 1 signal 18 } 
	{ v4_1_2_WEN_B sc_out sc_lv 4 signal 18 } 
	{ v4_1_2_Din_B sc_out sc_lv 32 signal 18 } 
	{ v4_1_2_Dout_B sc_in sc_lv 32 signal 18 } 
	{ v4_1_3_Addr_A sc_out sc_lv 32 signal 19 } 
	{ v4_1_3_EN_A sc_out sc_logic 1 signal 19 } 
	{ v4_1_3_WEN_A sc_out sc_lv 4 signal 19 } 
	{ v4_1_3_Din_A sc_out sc_lv 32 signal 19 } 
	{ v4_1_3_Dout_A sc_in sc_lv 32 signal 19 } 
	{ v4_1_3_Addr_B sc_out sc_lv 32 signal 19 } 
	{ v4_1_3_EN_B sc_out sc_logic 1 signal 19 } 
	{ v4_1_3_WEN_B sc_out sc_lv 4 signal 19 } 
	{ v4_1_3_Din_B sc_out sc_lv 32 signal 19 } 
	{ v4_1_3_Dout_B sc_in sc_lv 32 signal 19 } 
	{ v4_1_4_Addr_A sc_out sc_lv 32 signal 20 } 
	{ v4_1_4_EN_A sc_out sc_logic 1 signal 20 } 
	{ v4_1_4_WEN_A sc_out sc_lv 4 signal 20 } 
	{ v4_1_4_Din_A sc_out sc_lv 32 signal 20 } 
	{ v4_1_4_Dout_A sc_in sc_lv 32 signal 20 } 
	{ v4_1_4_Addr_B sc_out sc_lv 32 signal 20 } 
	{ v4_1_4_EN_B sc_out sc_logic 1 signal 20 } 
	{ v4_1_4_WEN_B sc_out sc_lv 4 signal 20 } 
	{ v4_1_4_Din_B sc_out sc_lv 32 signal 20 } 
	{ v4_1_4_Dout_B sc_in sc_lv 32 signal 20 } 
	{ v4_1_5_Addr_A sc_out sc_lv 32 signal 21 } 
	{ v4_1_5_EN_A sc_out sc_logic 1 signal 21 } 
	{ v4_1_5_WEN_A sc_out sc_lv 4 signal 21 } 
	{ v4_1_5_Din_A sc_out sc_lv 32 signal 21 } 
	{ v4_1_5_Dout_A sc_in sc_lv 32 signal 21 } 
	{ v4_1_5_Addr_B sc_out sc_lv 32 signal 21 } 
	{ v4_1_5_EN_B sc_out sc_logic 1 signal 21 } 
	{ v4_1_5_WEN_B sc_out sc_lv 4 signal 21 } 
	{ v4_1_5_Din_B sc_out sc_lv 32 signal 21 } 
	{ v4_1_5_Dout_B sc_in sc_lv 32 signal 21 } 
	{ v4_1_6_Addr_A sc_out sc_lv 32 signal 22 } 
	{ v4_1_6_EN_A sc_out sc_logic 1 signal 22 } 
	{ v4_1_6_WEN_A sc_out sc_lv 4 signal 22 } 
	{ v4_1_6_Din_A sc_out sc_lv 32 signal 22 } 
	{ v4_1_6_Dout_A sc_in sc_lv 32 signal 22 } 
	{ v4_1_6_Addr_B sc_out sc_lv 32 signal 22 } 
	{ v4_1_6_EN_B sc_out sc_logic 1 signal 22 } 
	{ v4_1_6_WEN_B sc_out sc_lv 4 signal 22 } 
	{ v4_1_6_Din_B sc_out sc_lv 32 signal 22 } 
	{ v4_1_6_Dout_B sc_in sc_lv 32 signal 22 } 
	{ v4_1_7_Addr_A sc_out sc_lv 32 signal 23 } 
	{ v4_1_7_EN_A sc_out sc_logic 1 signal 23 } 
	{ v4_1_7_WEN_A sc_out sc_lv 4 signal 23 } 
	{ v4_1_7_Din_A sc_out sc_lv 32 signal 23 } 
	{ v4_1_7_Dout_A sc_in sc_lv 32 signal 23 } 
	{ v4_1_7_Addr_B sc_out sc_lv 32 signal 23 } 
	{ v4_1_7_EN_B sc_out sc_logic 1 signal 23 } 
	{ v4_1_7_WEN_B sc_out sc_lv 4 signal 23 } 
	{ v4_1_7_Din_B sc_out sc_lv 32 signal 23 } 
	{ v4_1_7_Dout_B sc_in sc_lv 32 signal 23 } 
	{ v4_1_8_Addr_A sc_out sc_lv 32 signal 24 } 
	{ v4_1_8_EN_A sc_out sc_logic 1 signal 24 } 
	{ v4_1_8_WEN_A sc_out sc_lv 4 signal 24 } 
	{ v4_1_8_Din_A sc_out sc_lv 32 signal 24 } 
	{ v4_1_8_Dout_A sc_in sc_lv 32 signal 24 } 
	{ v4_1_8_Addr_B sc_out sc_lv 32 signal 24 } 
	{ v4_1_8_EN_B sc_out sc_logic 1 signal 24 } 
	{ v4_1_8_WEN_B sc_out sc_lv 4 signal 24 } 
	{ v4_1_8_Din_B sc_out sc_lv 32 signal 24 } 
	{ v4_1_8_Dout_B sc_in sc_lv 32 signal 24 } 
	{ v4_1_9_Addr_A sc_out sc_lv 32 signal 25 } 
	{ v4_1_9_EN_A sc_out sc_logic 1 signal 25 } 
	{ v4_1_9_WEN_A sc_out sc_lv 4 signal 25 } 
	{ v4_1_9_Din_A sc_out sc_lv 32 signal 25 } 
	{ v4_1_9_Dout_A sc_in sc_lv 32 signal 25 } 
	{ v4_1_9_Addr_B sc_out sc_lv 32 signal 25 } 
	{ v4_1_9_EN_B sc_out sc_logic 1 signal 25 } 
	{ v4_1_9_WEN_B sc_out sc_lv 4 signal 25 } 
	{ v4_1_9_Din_B sc_out sc_lv 32 signal 25 } 
	{ v4_1_9_Dout_B sc_in sc_lv 32 signal 25 } 
	{ v4_1_10_Addr_A sc_out sc_lv 32 signal 26 } 
	{ v4_1_10_EN_A sc_out sc_logic 1 signal 26 } 
	{ v4_1_10_WEN_A sc_out sc_lv 4 signal 26 } 
	{ v4_1_10_Din_A sc_out sc_lv 32 signal 26 } 
	{ v4_1_10_Dout_A sc_in sc_lv 32 signal 26 } 
	{ v4_1_10_Addr_B sc_out sc_lv 32 signal 26 } 
	{ v4_1_10_EN_B sc_out sc_logic 1 signal 26 } 
	{ v4_1_10_WEN_B sc_out sc_lv 4 signal 26 } 
	{ v4_1_10_Din_B sc_out sc_lv 32 signal 26 } 
	{ v4_1_10_Dout_B sc_in sc_lv 32 signal 26 } 
	{ v4_1_11_Addr_A sc_out sc_lv 32 signal 27 } 
	{ v4_1_11_EN_A sc_out sc_logic 1 signal 27 } 
	{ v4_1_11_WEN_A sc_out sc_lv 4 signal 27 } 
	{ v4_1_11_Din_A sc_out sc_lv 32 signal 27 } 
	{ v4_1_11_Dout_A sc_in sc_lv 32 signal 27 } 
	{ v4_1_11_Addr_B sc_out sc_lv 32 signal 27 } 
	{ v4_1_11_EN_B sc_out sc_logic 1 signal 27 } 
	{ v4_1_11_WEN_B sc_out sc_lv 4 signal 27 } 
	{ v4_1_11_Din_B sc_out sc_lv 32 signal 27 } 
	{ v4_1_11_Dout_B sc_in sc_lv 32 signal 27 } 
	{ v4_1_12_Addr_A sc_out sc_lv 32 signal 28 } 
	{ v4_1_12_EN_A sc_out sc_logic 1 signal 28 } 
	{ v4_1_12_WEN_A sc_out sc_lv 4 signal 28 } 
	{ v4_1_12_Din_A sc_out sc_lv 32 signal 28 } 
	{ v4_1_12_Dout_A sc_in sc_lv 32 signal 28 } 
	{ v4_1_12_Addr_B sc_out sc_lv 32 signal 28 } 
	{ v4_1_12_EN_B sc_out sc_logic 1 signal 28 } 
	{ v4_1_12_WEN_B sc_out sc_lv 4 signal 28 } 
	{ v4_1_12_Din_B sc_out sc_lv 32 signal 28 } 
	{ v4_1_12_Dout_B sc_in sc_lv 32 signal 28 } 
	{ v4_1_13_Addr_A sc_out sc_lv 32 signal 29 } 
	{ v4_1_13_EN_A sc_out sc_logic 1 signal 29 } 
	{ v4_1_13_WEN_A sc_out sc_lv 4 signal 29 } 
	{ v4_1_13_Din_A sc_out sc_lv 32 signal 29 } 
	{ v4_1_13_Dout_A sc_in sc_lv 32 signal 29 } 
	{ v4_1_13_Addr_B sc_out sc_lv 32 signal 29 } 
	{ v4_1_13_EN_B sc_out sc_logic 1 signal 29 } 
	{ v4_1_13_WEN_B sc_out sc_lv 4 signal 29 } 
	{ v4_1_13_Din_B sc_out sc_lv 32 signal 29 } 
	{ v4_1_13_Dout_B sc_in sc_lv 32 signal 29 } 
	{ v4_1_14_Addr_A sc_out sc_lv 32 signal 30 } 
	{ v4_1_14_EN_A sc_out sc_logic 1 signal 30 } 
	{ v4_1_14_WEN_A sc_out sc_lv 4 signal 30 } 
	{ v4_1_14_Din_A sc_out sc_lv 32 signal 30 } 
	{ v4_1_14_Dout_A sc_in sc_lv 32 signal 30 } 
	{ v4_1_14_Addr_B sc_out sc_lv 32 signal 30 } 
	{ v4_1_14_EN_B sc_out sc_logic 1 signal 30 } 
	{ v4_1_14_WEN_B sc_out sc_lv 4 signal 30 } 
	{ v4_1_14_Din_B sc_out sc_lv 32 signal 30 } 
	{ v4_1_14_Dout_B sc_in sc_lv 32 signal 30 } 
	{ v4_1_15_Addr_A sc_out sc_lv 32 signal 31 } 
	{ v4_1_15_EN_A sc_out sc_logic 1 signal 31 } 
	{ v4_1_15_WEN_A sc_out sc_lv 4 signal 31 } 
	{ v4_1_15_Din_A sc_out sc_lv 32 signal 31 } 
	{ v4_1_15_Dout_A sc_in sc_lv 32 signal 31 } 
	{ v4_1_15_Addr_B sc_out sc_lv 32 signal 31 } 
	{ v4_1_15_EN_B sc_out sc_logic 1 signal 31 } 
	{ v4_1_15_WEN_B sc_out sc_lv 4 signal 31 } 
	{ v4_1_15_Din_B sc_out sc_lv 32 signal 31 } 
	{ v4_1_15_Dout_B sc_in sc_lv 32 signal 31 } 
	{ v1 sc_in sc_lv 32 signal 32 } 
	{ grp_fu_333_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_333_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_333_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_333_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_337_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_337_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_337_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_337_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_341_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_341_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_341_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_341_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_345_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_345_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_345_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_345_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_349_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_349_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_349_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_349_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_353_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_353_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_353_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_353_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_357_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_357_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_357_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_357_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_361_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_361_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_361_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_361_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_365_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_365_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_365_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_365_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_369_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_369_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_369_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_369_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_373_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_373_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_373_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_373_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_377_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_377_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_377_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_377_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_381_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_381_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_381_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_381_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_385_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_385_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_385_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_385_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_389_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_389_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_389_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_389_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_393_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_393_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_393_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_393_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_397_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_397_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_397_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_397_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_401_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_401_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_401_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_401_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_405_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_405_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_405_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_405_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_409_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_409_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_409_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_409_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_413_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_413_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_413_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_413_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_417_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_417_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_417_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_417_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_421_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_421_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_421_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_421_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_425_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_425_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_425_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_425_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_429_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_429_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_429_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_429_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_433_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_433_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_433_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_433_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_437_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_437_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_437_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_437_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_441_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_441_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_441_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_441_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_445_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_445_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_445_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_445_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_449_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_449_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_449_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_449_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_453_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_453_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_453_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_453_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_457_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_457_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_457_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_457_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "v4_0_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_0", "role": "Addr_A" }} , 
 	{ "name": "v4_0_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_0", "role": "EN_A" }} , 
 	{ "name": "v4_0_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_0", "role": "WEN_A" }} , 
 	{ "name": "v4_0_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_0", "role": "Din_A" }} , 
 	{ "name": "v4_0_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_0", "role": "Dout_A" }} , 
 	{ "name": "v4_0_0_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_0", "role": "Addr_B" }} , 
 	{ "name": "v4_0_0_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_0", "role": "EN_B" }} , 
 	{ "name": "v4_0_0_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_0", "role": "WEN_B" }} , 
 	{ "name": "v4_0_0_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_0", "role": "Din_B" }} , 
 	{ "name": "v4_0_0_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_0", "role": "Dout_B" }} , 
 	{ "name": "v4_0_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_1", "role": "Addr_A" }} , 
 	{ "name": "v4_0_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_1", "role": "EN_A" }} , 
 	{ "name": "v4_0_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_1", "role": "WEN_A" }} , 
 	{ "name": "v4_0_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_1", "role": "Din_A" }} , 
 	{ "name": "v4_0_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_1", "role": "Dout_A" }} , 
 	{ "name": "v4_0_1_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_1", "role": "Addr_B" }} , 
 	{ "name": "v4_0_1_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_1", "role": "EN_B" }} , 
 	{ "name": "v4_0_1_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_1", "role": "WEN_B" }} , 
 	{ "name": "v4_0_1_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_1", "role": "Din_B" }} , 
 	{ "name": "v4_0_1_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_1", "role": "Dout_B" }} , 
 	{ "name": "v4_0_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_2", "role": "Addr_A" }} , 
 	{ "name": "v4_0_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_2", "role": "EN_A" }} , 
 	{ "name": "v4_0_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_2", "role": "WEN_A" }} , 
 	{ "name": "v4_0_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_2", "role": "Din_A" }} , 
 	{ "name": "v4_0_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_2", "role": "Dout_A" }} , 
 	{ "name": "v4_0_2_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_2", "role": "Addr_B" }} , 
 	{ "name": "v4_0_2_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_2", "role": "EN_B" }} , 
 	{ "name": "v4_0_2_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_2", "role": "WEN_B" }} , 
 	{ "name": "v4_0_2_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_2", "role": "Din_B" }} , 
 	{ "name": "v4_0_2_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_2", "role": "Dout_B" }} , 
 	{ "name": "v4_0_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_3", "role": "Addr_A" }} , 
 	{ "name": "v4_0_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_3", "role": "EN_A" }} , 
 	{ "name": "v4_0_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_3", "role": "WEN_A" }} , 
 	{ "name": "v4_0_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_3", "role": "Din_A" }} , 
 	{ "name": "v4_0_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_3", "role": "Dout_A" }} , 
 	{ "name": "v4_0_3_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_3", "role": "Addr_B" }} , 
 	{ "name": "v4_0_3_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_3", "role": "EN_B" }} , 
 	{ "name": "v4_0_3_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_3", "role": "WEN_B" }} , 
 	{ "name": "v4_0_3_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_3", "role": "Din_B" }} , 
 	{ "name": "v4_0_3_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_3", "role": "Dout_B" }} , 
 	{ "name": "v4_0_4_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_4", "role": "Addr_A" }} , 
 	{ "name": "v4_0_4_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_4", "role": "EN_A" }} , 
 	{ "name": "v4_0_4_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_4", "role": "WEN_A" }} , 
 	{ "name": "v4_0_4_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_4", "role": "Din_A" }} , 
 	{ "name": "v4_0_4_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_4", "role": "Dout_A" }} , 
 	{ "name": "v4_0_4_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_4", "role": "Addr_B" }} , 
 	{ "name": "v4_0_4_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_4", "role": "EN_B" }} , 
 	{ "name": "v4_0_4_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_4", "role": "WEN_B" }} , 
 	{ "name": "v4_0_4_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_4", "role": "Din_B" }} , 
 	{ "name": "v4_0_4_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_4", "role": "Dout_B" }} , 
 	{ "name": "v4_0_5_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_5", "role": "Addr_A" }} , 
 	{ "name": "v4_0_5_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_5", "role": "EN_A" }} , 
 	{ "name": "v4_0_5_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_5", "role": "WEN_A" }} , 
 	{ "name": "v4_0_5_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_5", "role": "Din_A" }} , 
 	{ "name": "v4_0_5_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_5", "role": "Dout_A" }} , 
 	{ "name": "v4_0_5_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_5", "role": "Addr_B" }} , 
 	{ "name": "v4_0_5_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_5", "role": "EN_B" }} , 
 	{ "name": "v4_0_5_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_5", "role": "WEN_B" }} , 
 	{ "name": "v4_0_5_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_5", "role": "Din_B" }} , 
 	{ "name": "v4_0_5_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_5", "role": "Dout_B" }} , 
 	{ "name": "v4_0_6_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_6", "role": "Addr_A" }} , 
 	{ "name": "v4_0_6_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_6", "role": "EN_A" }} , 
 	{ "name": "v4_0_6_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_6", "role": "WEN_A" }} , 
 	{ "name": "v4_0_6_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_6", "role": "Din_A" }} , 
 	{ "name": "v4_0_6_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_6", "role": "Dout_A" }} , 
 	{ "name": "v4_0_6_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_6", "role": "Addr_B" }} , 
 	{ "name": "v4_0_6_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_6", "role": "EN_B" }} , 
 	{ "name": "v4_0_6_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_6", "role": "WEN_B" }} , 
 	{ "name": "v4_0_6_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_6", "role": "Din_B" }} , 
 	{ "name": "v4_0_6_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_6", "role": "Dout_B" }} , 
 	{ "name": "v4_0_7_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_7", "role": "Addr_A" }} , 
 	{ "name": "v4_0_7_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_7", "role": "EN_A" }} , 
 	{ "name": "v4_0_7_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_7", "role": "WEN_A" }} , 
 	{ "name": "v4_0_7_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_7", "role": "Din_A" }} , 
 	{ "name": "v4_0_7_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_7", "role": "Dout_A" }} , 
 	{ "name": "v4_0_7_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_7", "role": "Addr_B" }} , 
 	{ "name": "v4_0_7_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_7", "role": "EN_B" }} , 
 	{ "name": "v4_0_7_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_7", "role": "WEN_B" }} , 
 	{ "name": "v4_0_7_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_7", "role": "Din_B" }} , 
 	{ "name": "v4_0_7_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_7", "role": "Dout_B" }} , 
 	{ "name": "v4_0_8_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_8", "role": "Addr_A" }} , 
 	{ "name": "v4_0_8_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_8", "role": "EN_A" }} , 
 	{ "name": "v4_0_8_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_8", "role": "WEN_A" }} , 
 	{ "name": "v4_0_8_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_8", "role": "Din_A" }} , 
 	{ "name": "v4_0_8_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_8", "role": "Dout_A" }} , 
 	{ "name": "v4_0_8_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_8", "role": "Addr_B" }} , 
 	{ "name": "v4_0_8_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_8", "role": "EN_B" }} , 
 	{ "name": "v4_0_8_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_8", "role": "WEN_B" }} , 
 	{ "name": "v4_0_8_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_8", "role": "Din_B" }} , 
 	{ "name": "v4_0_8_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_8", "role": "Dout_B" }} , 
 	{ "name": "v4_0_9_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_9", "role": "Addr_A" }} , 
 	{ "name": "v4_0_9_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_9", "role": "EN_A" }} , 
 	{ "name": "v4_0_9_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_9", "role": "WEN_A" }} , 
 	{ "name": "v4_0_9_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_9", "role": "Din_A" }} , 
 	{ "name": "v4_0_9_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_9", "role": "Dout_A" }} , 
 	{ "name": "v4_0_9_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_9", "role": "Addr_B" }} , 
 	{ "name": "v4_0_9_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_9", "role": "EN_B" }} , 
 	{ "name": "v4_0_9_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_9", "role": "WEN_B" }} , 
 	{ "name": "v4_0_9_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_9", "role": "Din_B" }} , 
 	{ "name": "v4_0_9_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_9", "role": "Dout_B" }} , 
 	{ "name": "v4_0_10_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_10", "role": "Addr_A" }} , 
 	{ "name": "v4_0_10_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_10", "role": "EN_A" }} , 
 	{ "name": "v4_0_10_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_10", "role": "WEN_A" }} , 
 	{ "name": "v4_0_10_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_10", "role": "Din_A" }} , 
 	{ "name": "v4_0_10_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_10", "role": "Dout_A" }} , 
 	{ "name": "v4_0_10_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_10", "role": "Addr_B" }} , 
 	{ "name": "v4_0_10_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_10", "role": "EN_B" }} , 
 	{ "name": "v4_0_10_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_10", "role": "WEN_B" }} , 
 	{ "name": "v4_0_10_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_10", "role": "Din_B" }} , 
 	{ "name": "v4_0_10_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_10", "role": "Dout_B" }} , 
 	{ "name": "v4_0_11_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_11", "role": "Addr_A" }} , 
 	{ "name": "v4_0_11_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_11", "role": "EN_A" }} , 
 	{ "name": "v4_0_11_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_11", "role": "WEN_A" }} , 
 	{ "name": "v4_0_11_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_11", "role": "Din_A" }} , 
 	{ "name": "v4_0_11_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_11", "role": "Dout_A" }} , 
 	{ "name": "v4_0_11_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_11", "role": "Addr_B" }} , 
 	{ "name": "v4_0_11_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_11", "role": "EN_B" }} , 
 	{ "name": "v4_0_11_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_11", "role": "WEN_B" }} , 
 	{ "name": "v4_0_11_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_11", "role": "Din_B" }} , 
 	{ "name": "v4_0_11_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_11", "role": "Dout_B" }} , 
 	{ "name": "v4_0_12_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_12", "role": "Addr_A" }} , 
 	{ "name": "v4_0_12_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_12", "role": "EN_A" }} , 
 	{ "name": "v4_0_12_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_12", "role": "WEN_A" }} , 
 	{ "name": "v4_0_12_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_12", "role": "Din_A" }} , 
 	{ "name": "v4_0_12_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_12", "role": "Dout_A" }} , 
 	{ "name": "v4_0_12_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_12", "role": "Addr_B" }} , 
 	{ "name": "v4_0_12_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_12", "role": "EN_B" }} , 
 	{ "name": "v4_0_12_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_12", "role": "WEN_B" }} , 
 	{ "name": "v4_0_12_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_12", "role": "Din_B" }} , 
 	{ "name": "v4_0_12_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_12", "role": "Dout_B" }} , 
 	{ "name": "v4_0_13_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_13", "role": "Addr_A" }} , 
 	{ "name": "v4_0_13_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_13", "role": "EN_A" }} , 
 	{ "name": "v4_0_13_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_13", "role": "WEN_A" }} , 
 	{ "name": "v4_0_13_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_13", "role": "Din_A" }} , 
 	{ "name": "v4_0_13_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_13", "role": "Dout_A" }} , 
 	{ "name": "v4_0_13_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_13", "role": "Addr_B" }} , 
 	{ "name": "v4_0_13_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_13", "role": "EN_B" }} , 
 	{ "name": "v4_0_13_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_13", "role": "WEN_B" }} , 
 	{ "name": "v4_0_13_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_13", "role": "Din_B" }} , 
 	{ "name": "v4_0_13_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_13", "role": "Dout_B" }} , 
 	{ "name": "v4_0_14_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_14", "role": "Addr_A" }} , 
 	{ "name": "v4_0_14_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_14", "role": "EN_A" }} , 
 	{ "name": "v4_0_14_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_14", "role": "WEN_A" }} , 
 	{ "name": "v4_0_14_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_14", "role": "Din_A" }} , 
 	{ "name": "v4_0_14_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_14", "role": "Dout_A" }} , 
 	{ "name": "v4_0_14_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_14", "role": "Addr_B" }} , 
 	{ "name": "v4_0_14_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_14", "role": "EN_B" }} , 
 	{ "name": "v4_0_14_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_14", "role": "WEN_B" }} , 
 	{ "name": "v4_0_14_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_14", "role": "Din_B" }} , 
 	{ "name": "v4_0_14_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_14", "role": "Dout_B" }} , 
 	{ "name": "v4_0_15_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_15", "role": "Addr_A" }} , 
 	{ "name": "v4_0_15_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_15", "role": "EN_A" }} , 
 	{ "name": "v4_0_15_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_15", "role": "WEN_A" }} , 
 	{ "name": "v4_0_15_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_15", "role": "Din_A" }} , 
 	{ "name": "v4_0_15_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_15", "role": "Dout_A" }} , 
 	{ "name": "v4_0_15_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_15", "role": "Addr_B" }} , 
 	{ "name": "v4_0_15_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_0_15", "role": "EN_B" }} , 
 	{ "name": "v4_0_15_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_0_15", "role": "WEN_B" }} , 
 	{ "name": "v4_0_15_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_15", "role": "Din_B" }} , 
 	{ "name": "v4_0_15_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_0_15", "role": "Dout_B" }} , 
 	{ "name": "v4_1_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_0", "role": "Addr_A" }} , 
 	{ "name": "v4_1_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_0", "role": "EN_A" }} , 
 	{ "name": "v4_1_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_0", "role": "WEN_A" }} , 
 	{ "name": "v4_1_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_0", "role": "Din_A" }} , 
 	{ "name": "v4_1_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_0", "role": "Dout_A" }} , 
 	{ "name": "v4_1_0_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_0", "role": "Addr_B" }} , 
 	{ "name": "v4_1_0_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_0", "role": "EN_B" }} , 
 	{ "name": "v4_1_0_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_0", "role": "WEN_B" }} , 
 	{ "name": "v4_1_0_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_0", "role": "Din_B" }} , 
 	{ "name": "v4_1_0_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_0", "role": "Dout_B" }} , 
 	{ "name": "v4_1_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_1", "role": "Addr_A" }} , 
 	{ "name": "v4_1_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_1", "role": "EN_A" }} , 
 	{ "name": "v4_1_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_1", "role": "WEN_A" }} , 
 	{ "name": "v4_1_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_1", "role": "Din_A" }} , 
 	{ "name": "v4_1_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_1", "role": "Dout_A" }} , 
 	{ "name": "v4_1_1_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_1", "role": "Addr_B" }} , 
 	{ "name": "v4_1_1_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_1", "role": "EN_B" }} , 
 	{ "name": "v4_1_1_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_1", "role": "WEN_B" }} , 
 	{ "name": "v4_1_1_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_1", "role": "Din_B" }} , 
 	{ "name": "v4_1_1_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_1", "role": "Dout_B" }} , 
 	{ "name": "v4_1_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_2", "role": "Addr_A" }} , 
 	{ "name": "v4_1_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_2", "role": "EN_A" }} , 
 	{ "name": "v4_1_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_2", "role": "WEN_A" }} , 
 	{ "name": "v4_1_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_2", "role": "Din_A" }} , 
 	{ "name": "v4_1_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_2", "role": "Dout_A" }} , 
 	{ "name": "v4_1_2_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_2", "role": "Addr_B" }} , 
 	{ "name": "v4_1_2_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_2", "role": "EN_B" }} , 
 	{ "name": "v4_1_2_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_2", "role": "WEN_B" }} , 
 	{ "name": "v4_1_2_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_2", "role": "Din_B" }} , 
 	{ "name": "v4_1_2_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_2", "role": "Dout_B" }} , 
 	{ "name": "v4_1_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_3", "role": "Addr_A" }} , 
 	{ "name": "v4_1_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_3", "role": "EN_A" }} , 
 	{ "name": "v4_1_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_3", "role": "WEN_A" }} , 
 	{ "name": "v4_1_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_3", "role": "Din_A" }} , 
 	{ "name": "v4_1_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_3", "role": "Dout_A" }} , 
 	{ "name": "v4_1_3_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_3", "role": "Addr_B" }} , 
 	{ "name": "v4_1_3_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_3", "role": "EN_B" }} , 
 	{ "name": "v4_1_3_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_3", "role": "WEN_B" }} , 
 	{ "name": "v4_1_3_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_3", "role": "Din_B" }} , 
 	{ "name": "v4_1_3_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_3", "role": "Dout_B" }} , 
 	{ "name": "v4_1_4_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_4", "role": "Addr_A" }} , 
 	{ "name": "v4_1_4_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_4", "role": "EN_A" }} , 
 	{ "name": "v4_1_4_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_4", "role": "WEN_A" }} , 
 	{ "name": "v4_1_4_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_4", "role": "Din_A" }} , 
 	{ "name": "v4_1_4_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_4", "role": "Dout_A" }} , 
 	{ "name": "v4_1_4_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_4", "role": "Addr_B" }} , 
 	{ "name": "v4_1_4_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_4", "role": "EN_B" }} , 
 	{ "name": "v4_1_4_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_4", "role": "WEN_B" }} , 
 	{ "name": "v4_1_4_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_4", "role": "Din_B" }} , 
 	{ "name": "v4_1_4_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_4", "role": "Dout_B" }} , 
 	{ "name": "v4_1_5_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_5", "role": "Addr_A" }} , 
 	{ "name": "v4_1_5_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_5", "role": "EN_A" }} , 
 	{ "name": "v4_1_5_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_5", "role": "WEN_A" }} , 
 	{ "name": "v4_1_5_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_5", "role": "Din_A" }} , 
 	{ "name": "v4_1_5_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_5", "role": "Dout_A" }} , 
 	{ "name": "v4_1_5_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_5", "role": "Addr_B" }} , 
 	{ "name": "v4_1_5_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_5", "role": "EN_B" }} , 
 	{ "name": "v4_1_5_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_5", "role": "WEN_B" }} , 
 	{ "name": "v4_1_5_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_5", "role": "Din_B" }} , 
 	{ "name": "v4_1_5_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_5", "role": "Dout_B" }} , 
 	{ "name": "v4_1_6_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_6", "role": "Addr_A" }} , 
 	{ "name": "v4_1_6_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_6", "role": "EN_A" }} , 
 	{ "name": "v4_1_6_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_6", "role": "WEN_A" }} , 
 	{ "name": "v4_1_6_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_6", "role": "Din_A" }} , 
 	{ "name": "v4_1_6_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_6", "role": "Dout_A" }} , 
 	{ "name": "v4_1_6_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_6", "role": "Addr_B" }} , 
 	{ "name": "v4_1_6_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_6", "role": "EN_B" }} , 
 	{ "name": "v4_1_6_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_6", "role": "WEN_B" }} , 
 	{ "name": "v4_1_6_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_6", "role": "Din_B" }} , 
 	{ "name": "v4_1_6_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_6", "role": "Dout_B" }} , 
 	{ "name": "v4_1_7_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_7", "role": "Addr_A" }} , 
 	{ "name": "v4_1_7_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_7", "role": "EN_A" }} , 
 	{ "name": "v4_1_7_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_7", "role": "WEN_A" }} , 
 	{ "name": "v4_1_7_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_7", "role": "Din_A" }} , 
 	{ "name": "v4_1_7_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_7", "role": "Dout_A" }} , 
 	{ "name": "v4_1_7_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_7", "role": "Addr_B" }} , 
 	{ "name": "v4_1_7_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_7", "role": "EN_B" }} , 
 	{ "name": "v4_1_7_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_7", "role": "WEN_B" }} , 
 	{ "name": "v4_1_7_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_7", "role": "Din_B" }} , 
 	{ "name": "v4_1_7_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_7", "role": "Dout_B" }} , 
 	{ "name": "v4_1_8_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_8", "role": "Addr_A" }} , 
 	{ "name": "v4_1_8_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_8", "role": "EN_A" }} , 
 	{ "name": "v4_1_8_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_8", "role": "WEN_A" }} , 
 	{ "name": "v4_1_8_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_8", "role": "Din_A" }} , 
 	{ "name": "v4_1_8_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_8", "role": "Dout_A" }} , 
 	{ "name": "v4_1_8_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_8", "role": "Addr_B" }} , 
 	{ "name": "v4_1_8_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_8", "role": "EN_B" }} , 
 	{ "name": "v4_1_8_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_8", "role": "WEN_B" }} , 
 	{ "name": "v4_1_8_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_8", "role": "Din_B" }} , 
 	{ "name": "v4_1_8_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_8", "role": "Dout_B" }} , 
 	{ "name": "v4_1_9_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_9", "role": "Addr_A" }} , 
 	{ "name": "v4_1_9_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_9", "role": "EN_A" }} , 
 	{ "name": "v4_1_9_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_9", "role": "WEN_A" }} , 
 	{ "name": "v4_1_9_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_9", "role": "Din_A" }} , 
 	{ "name": "v4_1_9_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_9", "role": "Dout_A" }} , 
 	{ "name": "v4_1_9_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_9", "role": "Addr_B" }} , 
 	{ "name": "v4_1_9_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_9", "role": "EN_B" }} , 
 	{ "name": "v4_1_9_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_9", "role": "WEN_B" }} , 
 	{ "name": "v4_1_9_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_9", "role": "Din_B" }} , 
 	{ "name": "v4_1_9_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_9", "role": "Dout_B" }} , 
 	{ "name": "v4_1_10_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_10", "role": "Addr_A" }} , 
 	{ "name": "v4_1_10_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_10", "role": "EN_A" }} , 
 	{ "name": "v4_1_10_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_10", "role": "WEN_A" }} , 
 	{ "name": "v4_1_10_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_10", "role": "Din_A" }} , 
 	{ "name": "v4_1_10_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_10", "role": "Dout_A" }} , 
 	{ "name": "v4_1_10_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_10", "role": "Addr_B" }} , 
 	{ "name": "v4_1_10_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_10", "role": "EN_B" }} , 
 	{ "name": "v4_1_10_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_10", "role": "WEN_B" }} , 
 	{ "name": "v4_1_10_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_10", "role": "Din_B" }} , 
 	{ "name": "v4_1_10_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_10", "role": "Dout_B" }} , 
 	{ "name": "v4_1_11_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_11", "role": "Addr_A" }} , 
 	{ "name": "v4_1_11_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_11", "role": "EN_A" }} , 
 	{ "name": "v4_1_11_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_11", "role": "WEN_A" }} , 
 	{ "name": "v4_1_11_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_11", "role": "Din_A" }} , 
 	{ "name": "v4_1_11_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_11", "role": "Dout_A" }} , 
 	{ "name": "v4_1_11_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_11", "role": "Addr_B" }} , 
 	{ "name": "v4_1_11_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_11", "role": "EN_B" }} , 
 	{ "name": "v4_1_11_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_11", "role": "WEN_B" }} , 
 	{ "name": "v4_1_11_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_11", "role": "Din_B" }} , 
 	{ "name": "v4_1_11_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_11", "role": "Dout_B" }} , 
 	{ "name": "v4_1_12_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_12", "role": "Addr_A" }} , 
 	{ "name": "v4_1_12_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_12", "role": "EN_A" }} , 
 	{ "name": "v4_1_12_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_12", "role": "WEN_A" }} , 
 	{ "name": "v4_1_12_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_12", "role": "Din_A" }} , 
 	{ "name": "v4_1_12_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_12", "role": "Dout_A" }} , 
 	{ "name": "v4_1_12_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_12", "role": "Addr_B" }} , 
 	{ "name": "v4_1_12_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_12", "role": "EN_B" }} , 
 	{ "name": "v4_1_12_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_12", "role": "WEN_B" }} , 
 	{ "name": "v4_1_12_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_12", "role": "Din_B" }} , 
 	{ "name": "v4_1_12_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_12", "role": "Dout_B" }} , 
 	{ "name": "v4_1_13_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_13", "role": "Addr_A" }} , 
 	{ "name": "v4_1_13_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_13", "role": "EN_A" }} , 
 	{ "name": "v4_1_13_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_13", "role": "WEN_A" }} , 
 	{ "name": "v4_1_13_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_13", "role": "Din_A" }} , 
 	{ "name": "v4_1_13_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_13", "role": "Dout_A" }} , 
 	{ "name": "v4_1_13_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_13", "role": "Addr_B" }} , 
 	{ "name": "v4_1_13_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_13", "role": "EN_B" }} , 
 	{ "name": "v4_1_13_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_13", "role": "WEN_B" }} , 
 	{ "name": "v4_1_13_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_13", "role": "Din_B" }} , 
 	{ "name": "v4_1_13_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_13", "role": "Dout_B" }} , 
 	{ "name": "v4_1_14_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_14", "role": "Addr_A" }} , 
 	{ "name": "v4_1_14_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_14", "role": "EN_A" }} , 
 	{ "name": "v4_1_14_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_14", "role": "WEN_A" }} , 
 	{ "name": "v4_1_14_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_14", "role": "Din_A" }} , 
 	{ "name": "v4_1_14_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_14", "role": "Dout_A" }} , 
 	{ "name": "v4_1_14_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_14", "role": "Addr_B" }} , 
 	{ "name": "v4_1_14_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_14", "role": "EN_B" }} , 
 	{ "name": "v4_1_14_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_14", "role": "WEN_B" }} , 
 	{ "name": "v4_1_14_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_14", "role": "Din_B" }} , 
 	{ "name": "v4_1_14_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_14", "role": "Dout_B" }} , 
 	{ "name": "v4_1_15_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_15", "role": "Addr_A" }} , 
 	{ "name": "v4_1_15_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_15", "role": "EN_A" }} , 
 	{ "name": "v4_1_15_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_15", "role": "WEN_A" }} , 
 	{ "name": "v4_1_15_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_15", "role": "Din_A" }} , 
 	{ "name": "v4_1_15_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_15", "role": "Dout_A" }} , 
 	{ "name": "v4_1_15_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_15", "role": "Addr_B" }} , 
 	{ "name": "v4_1_15_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v4_1_15", "role": "EN_B" }} , 
 	{ "name": "v4_1_15_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v4_1_15", "role": "WEN_B" }} , 
 	{ "name": "v4_1_15_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_15", "role": "Din_B" }} , 
 	{ "name": "v4_1_15_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v4_1_15", "role": "Dout_B" }} , 
 	{ "name": "v1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1", "role": "default" }} , 
 	{ "name": "grp_fu_333_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_333_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_333_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_333_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_333_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_333_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_333_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_333_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_337_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_337_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_337_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_337_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_337_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_337_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_337_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_337_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_341_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_341_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_341_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_341_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_341_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_341_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_341_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_341_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_345_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_345_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_345_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_345_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_345_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_345_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_345_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_345_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_349_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_349_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_349_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_349_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_349_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_349_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_349_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_349_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_353_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_353_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_353_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_353_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_353_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_353_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_353_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_353_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_357_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_357_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_357_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_357_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_357_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_357_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_357_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_357_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_361_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_361_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_361_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_361_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_361_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_361_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_361_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_361_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_365_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_365_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_365_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_365_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_365_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_365_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_365_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_365_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_369_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_369_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_369_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_369_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_369_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_369_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_369_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_369_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_373_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_373_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_373_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_373_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_373_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_373_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_373_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_373_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_377_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_377_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_377_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_377_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_377_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_377_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_377_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_377_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_381_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_381_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_381_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_381_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_381_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_381_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_381_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_381_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_385_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_385_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_385_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_385_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_385_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_385_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_385_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_385_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_389_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_389_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_389_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_389_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_389_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_389_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_389_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_389_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_393_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_393_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_393_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_393_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_393_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_393_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_393_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_393_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_397_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_397_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_397_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_397_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_397_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_397_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_397_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_397_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_401_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_401_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_401_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_401_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_401_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_401_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_401_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_401_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_405_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_405_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_405_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_405_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_405_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_405_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_405_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_405_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_409_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_409_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_409_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_409_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_409_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_409_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_409_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_409_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_413_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_413_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_413_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_413_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_413_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_413_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_413_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_413_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_417_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_417_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_417_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_417_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_417_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_417_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_417_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_417_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_421_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_421_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_421_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_421_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_421_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_421_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_421_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_421_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_425_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_425_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_425_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_425_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_425_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_425_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_425_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_425_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_429_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_429_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_429_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_429_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_429_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_429_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_429_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_429_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_433_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_433_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_433_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_433_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_433_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_433_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_433_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_433_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_437_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_437_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_437_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_437_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_437_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_437_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_437_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_437_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_441_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_441_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_441_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_441_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_441_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_441_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_441_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_441_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_445_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_445_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_445_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_445_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_445_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_445_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_445_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_445_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_449_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_449_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_449_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_449_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_449_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_449_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_449_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_449_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_453_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_453_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_453_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_453_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_453_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_453_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_453_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_453_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_457_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_457_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_457_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_457_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_457_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_457_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_457_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_457_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "test_gemm_256_Pipeline_VITIS_LOOP_47_1_VITIS_LOOP_48_2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2056", "EstimateLatencyMax" : "2056",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v4_0_0", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_0_1", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_0_2", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_0_3", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_0_4", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_0_5", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_0_6", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_0_7", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_0_8", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_0_9", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_0_10", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_0_11", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_0_12", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_0_13", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_0_14", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_0_15", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_1_0", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_1_1", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_1_2", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_1_3", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_1_4", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_1_5", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_1_6", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_1_7", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_1_8", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_1_9", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_1_10", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_1_11", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_1_12", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_1_13", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_1_14", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v4_1_15", "Type" : "Bram", "Direction" : "IO"},
			{"Name" : "v1", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_47_1_VITIS_LOOP_48_2", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter7", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter7", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	test_gemm_256_Pipeline_VITIS_LOOP_47_1_VITIS_LOOP_48_2 {
		v4_0_0 {Type IO LastRead 1 FirstWrite 7}
		v4_0_1 {Type IO LastRead 1 FirstWrite 7}
		v4_0_2 {Type IO LastRead 1 FirstWrite 7}
		v4_0_3 {Type IO LastRead 1 FirstWrite 7}
		v4_0_4 {Type IO LastRead 1 FirstWrite 7}
		v4_0_5 {Type IO LastRead 1 FirstWrite 7}
		v4_0_6 {Type IO LastRead 1 FirstWrite 7}
		v4_0_7 {Type IO LastRead 1 FirstWrite 7}
		v4_0_8 {Type IO LastRead 1 FirstWrite 7}
		v4_0_9 {Type IO LastRead 1 FirstWrite 7}
		v4_0_10 {Type IO LastRead 1 FirstWrite 7}
		v4_0_11 {Type IO LastRead 1 FirstWrite 7}
		v4_0_12 {Type IO LastRead 1 FirstWrite 7}
		v4_0_13 {Type IO LastRead 1 FirstWrite 7}
		v4_0_14 {Type IO LastRead 1 FirstWrite 7}
		v4_0_15 {Type IO LastRead 1 FirstWrite 7}
		v4_1_0 {Type IO LastRead 1 FirstWrite 7}
		v4_1_1 {Type IO LastRead 1 FirstWrite 7}
		v4_1_2 {Type IO LastRead 1 FirstWrite 7}
		v4_1_3 {Type IO LastRead 1 FirstWrite 7}
		v4_1_4 {Type IO LastRead 1 FirstWrite 7}
		v4_1_5 {Type IO LastRead 1 FirstWrite 7}
		v4_1_6 {Type IO LastRead 1 FirstWrite 7}
		v4_1_7 {Type IO LastRead 1 FirstWrite 7}
		v4_1_8 {Type IO LastRead 1 FirstWrite 7}
		v4_1_9 {Type IO LastRead 1 FirstWrite 7}
		v4_1_10 {Type IO LastRead 1 FirstWrite 7}
		v4_1_11 {Type IO LastRead 1 FirstWrite 7}
		v4_1_12 {Type IO LastRead 1 FirstWrite 7}
		v4_1_13 {Type IO LastRead 1 FirstWrite 7}
		v4_1_14 {Type IO LastRead 1 FirstWrite 7}
		v4_1_15 {Type IO LastRead 1 FirstWrite 7}
		v1 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2056", "Max" : "2056"}
	, {"Name" : "Interval", "Min" : "2056", "Max" : "2056"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	v4_0_0 { bram {  { v4_0_0_Addr_A MemPortADDR2 1 32 }  { v4_0_0_EN_A MemPortCE2 1 1 }  { v4_0_0_WEN_A MemPortWE2 1 4 }  { v4_0_0_Din_A MemPortDIN2 1 32 }  { v4_0_0_Dout_A MemPortDOUT2 0 32 }  { v4_0_0_Addr_B MemPortADDR2 1 32 }  { v4_0_0_EN_B MemPortCE2 1 1 }  { v4_0_0_WEN_B MemPortWE2 1 4 }  { v4_0_0_Din_B MemPortDIN2 1 32 }  { v4_0_0_Dout_B MemPortDOUT2 0 32 } } }
	v4_0_1 { bram {  { v4_0_1_Addr_A MemPortADDR2 1 32 }  { v4_0_1_EN_A MemPortCE2 1 1 }  { v4_0_1_WEN_A MemPortWE2 1 4 }  { v4_0_1_Din_A MemPortDIN2 1 32 }  { v4_0_1_Dout_A MemPortDOUT2 0 32 }  { v4_0_1_Addr_B MemPortADDR2 1 32 }  { v4_0_1_EN_B MemPortCE2 1 1 }  { v4_0_1_WEN_B MemPortWE2 1 4 }  { v4_0_1_Din_B MemPortDIN2 1 32 }  { v4_0_1_Dout_B MemPortDOUT2 0 32 } } }
	v4_0_2 { bram {  { v4_0_2_Addr_A MemPortADDR2 1 32 }  { v4_0_2_EN_A MemPortCE2 1 1 }  { v4_0_2_WEN_A MemPortWE2 1 4 }  { v4_0_2_Din_A MemPortDIN2 1 32 }  { v4_0_2_Dout_A MemPortDOUT2 0 32 }  { v4_0_2_Addr_B MemPortADDR2 1 32 }  { v4_0_2_EN_B MemPortCE2 1 1 }  { v4_0_2_WEN_B MemPortWE2 1 4 }  { v4_0_2_Din_B MemPortDIN2 1 32 }  { v4_0_2_Dout_B MemPortDOUT2 0 32 } } }
	v4_0_3 { bram {  { v4_0_3_Addr_A MemPortADDR2 1 32 }  { v4_0_3_EN_A MemPortCE2 1 1 }  { v4_0_3_WEN_A MemPortWE2 1 4 }  { v4_0_3_Din_A MemPortDIN2 1 32 }  { v4_0_3_Dout_A MemPortDOUT2 0 32 }  { v4_0_3_Addr_B MemPortADDR2 1 32 }  { v4_0_3_EN_B MemPortCE2 1 1 }  { v4_0_3_WEN_B MemPortWE2 1 4 }  { v4_0_3_Din_B MemPortDIN2 1 32 }  { v4_0_3_Dout_B MemPortDOUT2 0 32 } } }
	v4_0_4 { bram {  { v4_0_4_Addr_A MemPortADDR2 1 32 }  { v4_0_4_EN_A MemPortCE2 1 1 }  { v4_0_4_WEN_A MemPortWE2 1 4 }  { v4_0_4_Din_A MemPortDIN2 1 32 }  { v4_0_4_Dout_A MemPortDOUT2 0 32 }  { v4_0_4_Addr_B MemPortADDR2 1 32 }  { v4_0_4_EN_B MemPortCE2 1 1 }  { v4_0_4_WEN_B MemPortWE2 1 4 }  { v4_0_4_Din_B MemPortDIN2 1 32 }  { v4_0_4_Dout_B MemPortDOUT2 0 32 } } }
	v4_0_5 { bram {  { v4_0_5_Addr_A MemPortADDR2 1 32 }  { v4_0_5_EN_A MemPortCE2 1 1 }  { v4_0_5_WEN_A MemPortWE2 1 4 }  { v4_0_5_Din_A MemPortDIN2 1 32 }  { v4_0_5_Dout_A MemPortDOUT2 0 32 }  { v4_0_5_Addr_B MemPortADDR2 1 32 }  { v4_0_5_EN_B MemPortCE2 1 1 }  { v4_0_5_WEN_B MemPortWE2 1 4 }  { v4_0_5_Din_B MemPortDIN2 1 32 }  { v4_0_5_Dout_B MemPortDOUT2 0 32 } } }
	v4_0_6 { bram {  { v4_0_6_Addr_A MemPortADDR2 1 32 }  { v4_0_6_EN_A MemPortCE2 1 1 }  { v4_0_6_WEN_A MemPortWE2 1 4 }  { v4_0_6_Din_A MemPortDIN2 1 32 }  { v4_0_6_Dout_A MemPortDOUT2 0 32 }  { v4_0_6_Addr_B MemPortADDR2 1 32 }  { v4_0_6_EN_B MemPortCE2 1 1 }  { v4_0_6_WEN_B MemPortWE2 1 4 }  { v4_0_6_Din_B MemPortDIN2 1 32 }  { v4_0_6_Dout_B MemPortDOUT2 0 32 } } }
	v4_0_7 { bram {  { v4_0_7_Addr_A MemPortADDR2 1 32 }  { v4_0_7_EN_A MemPortCE2 1 1 }  { v4_0_7_WEN_A MemPortWE2 1 4 }  { v4_0_7_Din_A MemPortDIN2 1 32 }  { v4_0_7_Dout_A MemPortDOUT2 0 32 }  { v4_0_7_Addr_B MemPortADDR2 1 32 }  { v4_0_7_EN_B MemPortCE2 1 1 }  { v4_0_7_WEN_B MemPortWE2 1 4 }  { v4_0_7_Din_B MemPortDIN2 1 32 }  { v4_0_7_Dout_B MemPortDOUT2 0 32 } } }
	v4_0_8 { bram {  { v4_0_8_Addr_A MemPortADDR2 1 32 }  { v4_0_8_EN_A MemPortCE2 1 1 }  { v4_0_8_WEN_A MemPortWE2 1 4 }  { v4_0_8_Din_A MemPortDIN2 1 32 }  { v4_0_8_Dout_A MemPortDOUT2 0 32 }  { v4_0_8_Addr_B MemPortADDR2 1 32 }  { v4_0_8_EN_B MemPortCE2 1 1 }  { v4_0_8_WEN_B MemPortWE2 1 4 }  { v4_0_8_Din_B MemPortDIN2 1 32 }  { v4_0_8_Dout_B MemPortDOUT2 0 32 } } }
	v4_0_9 { bram {  { v4_0_9_Addr_A MemPortADDR2 1 32 }  { v4_0_9_EN_A MemPortCE2 1 1 }  { v4_0_9_WEN_A MemPortWE2 1 4 }  { v4_0_9_Din_A MemPortDIN2 1 32 }  { v4_0_9_Dout_A MemPortDOUT2 0 32 }  { v4_0_9_Addr_B MemPortADDR2 1 32 }  { v4_0_9_EN_B MemPortCE2 1 1 }  { v4_0_9_WEN_B MemPortWE2 1 4 }  { v4_0_9_Din_B MemPortDIN2 1 32 }  { v4_0_9_Dout_B MemPortDOUT2 0 32 } } }
	v4_0_10 { bram {  { v4_0_10_Addr_A MemPortADDR2 1 32 }  { v4_0_10_EN_A MemPortCE2 1 1 }  { v4_0_10_WEN_A MemPortWE2 1 4 }  { v4_0_10_Din_A MemPortDIN2 1 32 }  { v4_0_10_Dout_A MemPortDOUT2 0 32 }  { v4_0_10_Addr_B MemPortADDR2 1 32 }  { v4_0_10_EN_B MemPortCE2 1 1 }  { v4_0_10_WEN_B MemPortWE2 1 4 }  { v4_0_10_Din_B MemPortDIN2 1 32 }  { v4_0_10_Dout_B MemPortDOUT2 0 32 } } }
	v4_0_11 { bram {  { v4_0_11_Addr_A MemPortADDR2 1 32 }  { v4_0_11_EN_A MemPortCE2 1 1 }  { v4_0_11_WEN_A MemPortWE2 1 4 }  { v4_0_11_Din_A MemPortDIN2 1 32 }  { v4_0_11_Dout_A MemPortDOUT2 0 32 }  { v4_0_11_Addr_B MemPortADDR2 1 32 }  { v4_0_11_EN_B MemPortCE2 1 1 }  { v4_0_11_WEN_B MemPortWE2 1 4 }  { v4_0_11_Din_B MemPortDIN2 1 32 }  { v4_0_11_Dout_B MemPortDOUT2 0 32 } } }
	v4_0_12 { bram {  { v4_0_12_Addr_A MemPortADDR2 1 32 }  { v4_0_12_EN_A MemPortCE2 1 1 }  { v4_0_12_WEN_A MemPortWE2 1 4 }  { v4_0_12_Din_A MemPortDIN2 1 32 }  { v4_0_12_Dout_A MemPortDOUT2 0 32 }  { v4_0_12_Addr_B MemPortADDR2 1 32 }  { v4_0_12_EN_B MemPortCE2 1 1 }  { v4_0_12_WEN_B MemPortWE2 1 4 }  { v4_0_12_Din_B MemPortDIN2 1 32 }  { v4_0_12_Dout_B MemPortDOUT2 0 32 } } }
	v4_0_13 { bram {  { v4_0_13_Addr_A MemPortADDR2 1 32 }  { v4_0_13_EN_A MemPortCE2 1 1 }  { v4_0_13_WEN_A MemPortWE2 1 4 }  { v4_0_13_Din_A MemPortDIN2 1 32 }  { v4_0_13_Dout_A MemPortDOUT2 0 32 }  { v4_0_13_Addr_B MemPortADDR2 1 32 }  { v4_0_13_EN_B MemPortCE2 1 1 }  { v4_0_13_WEN_B MemPortWE2 1 4 }  { v4_0_13_Din_B MemPortDIN2 1 32 }  { v4_0_13_Dout_B MemPortDOUT2 0 32 } } }
	v4_0_14 { bram {  { v4_0_14_Addr_A MemPortADDR2 1 32 }  { v4_0_14_EN_A MemPortCE2 1 1 }  { v4_0_14_WEN_A MemPortWE2 1 4 }  { v4_0_14_Din_A MemPortDIN2 1 32 }  { v4_0_14_Dout_A MemPortDOUT2 0 32 }  { v4_0_14_Addr_B MemPortADDR2 1 32 }  { v4_0_14_EN_B MemPortCE2 1 1 }  { v4_0_14_WEN_B MemPortWE2 1 4 }  { v4_0_14_Din_B MemPortDIN2 1 32 }  { v4_0_14_Dout_B MemPortDOUT2 0 32 } } }
	v4_0_15 { bram {  { v4_0_15_Addr_A MemPortADDR2 1 32 }  { v4_0_15_EN_A MemPortCE2 1 1 }  { v4_0_15_WEN_A MemPortWE2 1 4 }  { v4_0_15_Din_A MemPortDIN2 1 32 }  { v4_0_15_Dout_A MemPortDOUT2 0 32 }  { v4_0_15_Addr_B MemPortADDR2 1 32 }  { v4_0_15_EN_B MemPortCE2 1 1 }  { v4_0_15_WEN_B MemPortWE2 1 4 }  { v4_0_15_Din_B MemPortDIN2 1 32 }  { v4_0_15_Dout_B MemPortDOUT2 0 32 } } }
	v4_1_0 { bram {  { v4_1_0_Addr_A MemPortADDR2 1 32 }  { v4_1_0_EN_A MemPortCE2 1 1 }  { v4_1_0_WEN_A MemPortWE2 1 4 }  { v4_1_0_Din_A MemPortDIN2 1 32 }  { v4_1_0_Dout_A MemPortDOUT2 0 32 }  { v4_1_0_Addr_B MemPortADDR2 1 32 }  { v4_1_0_EN_B MemPortCE2 1 1 }  { v4_1_0_WEN_B MemPortWE2 1 4 }  { v4_1_0_Din_B MemPortDIN2 1 32 }  { v4_1_0_Dout_B MemPortDOUT2 0 32 } } }
	v4_1_1 { bram {  { v4_1_1_Addr_A MemPortADDR2 1 32 }  { v4_1_1_EN_A MemPortCE2 1 1 }  { v4_1_1_WEN_A MemPortWE2 1 4 }  { v4_1_1_Din_A MemPortDIN2 1 32 }  { v4_1_1_Dout_A MemPortDOUT2 0 32 }  { v4_1_1_Addr_B MemPortADDR2 1 32 }  { v4_1_1_EN_B MemPortCE2 1 1 }  { v4_1_1_WEN_B MemPortWE2 1 4 }  { v4_1_1_Din_B MemPortDIN2 1 32 }  { v4_1_1_Dout_B MemPortDOUT2 0 32 } } }
	v4_1_2 { bram {  { v4_1_2_Addr_A MemPortADDR2 1 32 }  { v4_1_2_EN_A MemPortCE2 1 1 }  { v4_1_2_WEN_A MemPortWE2 1 4 }  { v4_1_2_Din_A MemPortDIN2 1 32 }  { v4_1_2_Dout_A MemPortDOUT2 0 32 }  { v4_1_2_Addr_B MemPortADDR2 1 32 }  { v4_1_2_EN_B MemPortCE2 1 1 }  { v4_1_2_WEN_B MemPortWE2 1 4 }  { v4_1_2_Din_B MemPortDIN2 1 32 }  { v4_1_2_Dout_B MemPortDOUT2 0 32 } } }
	v4_1_3 { bram {  { v4_1_3_Addr_A MemPortADDR2 1 32 }  { v4_1_3_EN_A MemPortCE2 1 1 }  { v4_1_3_WEN_A MemPortWE2 1 4 }  { v4_1_3_Din_A MemPortDIN2 1 32 }  { v4_1_3_Dout_A MemPortDOUT2 0 32 }  { v4_1_3_Addr_B MemPortADDR2 1 32 }  { v4_1_3_EN_B MemPortCE2 1 1 }  { v4_1_3_WEN_B MemPortWE2 1 4 }  { v4_1_3_Din_B MemPortDIN2 1 32 }  { v4_1_3_Dout_B MemPortDOUT2 0 32 } } }
	v4_1_4 { bram {  { v4_1_4_Addr_A MemPortADDR2 1 32 }  { v4_1_4_EN_A MemPortCE2 1 1 }  { v4_1_4_WEN_A MemPortWE2 1 4 }  { v4_1_4_Din_A MemPortDIN2 1 32 }  { v4_1_4_Dout_A MemPortDOUT2 0 32 }  { v4_1_4_Addr_B MemPortADDR2 1 32 }  { v4_1_4_EN_B MemPortCE2 1 1 }  { v4_1_4_WEN_B MemPortWE2 1 4 }  { v4_1_4_Din_B MemPortDIN2 1 32 }  { v4_1_4_Dout_B MemPortDOUT2 0 32 } } }
	v4_1_5 { bram {  { v4_1_5_Addr_A MemPortADDR2 1 32 }  { v4_1_5_EN_A MemPortCE2 1 1 }  { v4_1_5_WEN_A MemPortWE2 1 4 }  { v4_1_5_Din_A MemPortDIN2 1 32 }  { v4_1_5_Dout_A MemPortDOUT2 0 32 }  { v4_1_5_Addr_B MemPortADDR2 1 32 }  { v4_1_5_EN_B MemPortCE2 1 1 }  { v4_1_5_WEN_B MemPortWE2 1 4 }  { v4_1_5_Din_B MemPortDIN2 1 32 }  { v4_1_5_Dout_B MemPortDOUT2 0 32 } } }
	v4_1_6 { bram {  { v4_1_6_Addr_A MemPortADDR2 1 32 }  { v4_1_6_EN_A MemPortCE2 1 1 }  { v4_1_6_WEN_A MemPortWE2 1 4 }  { v4_1_6_Din_A MemPortDIN2 1 32 }  { v4_1_6_Dout_A MemPortDOUT2 0 32 }  { v4_1_6_Addr_B MemPortADDR2 1 32 }  { v4_1_6_EN_B MemPortCE2 1 1 }  { v4_1_6_WEN_B MemPortWE2 1 4 }  { v4_1_6_Din_B MemPortDIN2 1 32 }  { v4_1_6_Dout_B MemPortDOUT2 0 32 } } }
	v4_1_7 { bram {  { v4_1_7_Addr_A MemPortADDR2 1 32 }  { v4_1_7_EN_A MemPortCE2 1 1 }  { v4_1_7_WEN_A MemPortWE2 1 4 }  { v4_1_7_Din_A MemPortDIN2 1 32 }  { v4_1_7_Dout_A MemPortDOUT2 0 32 }  { v4_1_7_Addr_B MemPortADDR2 1 32 }  { v4_1_7_EN_B MemPortCE2 1 1 }  { v4_1_7_WEN_B MemPortWE2 1 4 }  { v4_1_7_Din_B MemPortDIN2 1 32 }  { v4_1_7_Dout_B MemPortDOUT2 0 32 } } }
	v4_1_8 { bram {  { v4_1_8_Addr_A MemPortADDR2 1 32 }  { v4_1_8_EN_A MemPortCE2 1 1 }  { v4_1_8_WEN_A MemPortWE2 1 4 }  { v4_1_8_Din_A MemPortDIN2 1 32 }  { v4_1_8_Dout_A MemPortDOUT2 0 32 }  { v4_1_8_Addr_B MemPortADDR2 1 32 }  { v4_1_8_EN_B MemPortCE2 1 1 }  { v4_1_8_WEN_B MemPortWE2 1 4 }  { v4_1_8_Din_B MemPortDIN2 1 32 }  { v4_1_8_Dout_B MemPortDOUT2 0 32 } } }
	v4_1_9 { bram {  { v4_1_9_Addr_A MemPortADDR2 1 32 }  { v4_1_9_EN_A MemPortCE2 1 1 }  { v4_1_9_WEN_A MemPortWE2 1 4 }  { v4_1_9_Din_A MemPortDIN2 1 32 }  { v4_1_9_Dout_A MemPortDOUT2 0 32 }  { v4_1_9_Addr_B MemPortADDR2 1 32 }  { v4_1_9_EN_B MemPortCE2 1 1 }  { v4_1_9_WEN_B MemPortWE2 1 4 }  { v4_1_9_Din_B MemPortDIN2 1 32 }  { v4_1_9_Dout_B MemPortDOUT2 0 32 } } }
	v4_1_10 { bram {  { v4_1_10_Addr_A MemPortADDR2 1 32 }  { v4_1_10_EN_A MemPortCE2 1 1 }  { v4_1_10_WEN_A MemPortWE2 1 4 }  { v4_1_10_Din_A MemPortDIN2 1 32 }  { v4_1_10_Dout_A MemPortDOUT2 0 32 }  { v4_1_10_Addr_B MemPortADDR2 1 32 }  { v4_1_10_EN_B MemPortCE2 1 1 }  { v4_1_10_WEN_B MemPortWE2 1 4 }  { v4_1_10_Din_B MemPortDIN2 1 32 }  { v4_1_10_Dout_B MemPortDOUT2 0 32 } } }
	v4_1_11 { bram {  { v4_1_11_Addr_A MemPortADDR2 1 32 }  { v4_1_11_EN_A MemPortCE2 1 1 }  { v4_1_11_WEN_A MemPortWE2 1 4 }  { v4_1_11_Din_A MemPortDIN2 1 32 }  { v4_1_11_Dout_A MemPortDOUT2 0 32 }  { v4_1_11_Addr_B MemPortADDR2 1 32 }  { v4_1_11_EN_B MemPortCE2 1 1 }  { v4_1_11_WEN_B MemPortWE2 1 4 }  { v4_1_11_Din_B MemPortDIN2 1 32 }  { v4_1_11_Dout_B MemPortDOUT2 0 32 } } }
	v4_1_12 { bram {  { v4_1_12_Addr_A MemPortADDR2 1 32 }  { v4_1_12_EN_A MemPortCE2 1 1 }  { v4_1_12_WEN_A MemPortWE2 1 4 }  { v4_1_12_Din_A MemPortDIN2 1 32 }  { v4_1_12_Dout_A MemPortDOUT2 0 32 }  { v4_1_12_Addr_B MemPortADDR2 1 32 }  { v4_1_12_EN_B MemPortCE2 1 1 }  { v4_1_12_WEN_B MemPortWE2 1 4 }  { v4_1_12_Din_B MemPortDIN2 1 32 }  { v4_1_12_Dout_B MemPortDOUT2 0 32 } } }
	v4_1_13 { bram {  { v4_1_13_Addr_A MemPortADDR2 1 32 }  { v4_1_13_EN_A MemPortCE2 1 1 }  { v4_1_13_WEN_A MemPortWE2 1 4 }  { v4_1_13_Din_A MemPortDIN2 1 32 }  { v4_1_13_Dout_A MemPortDOUT2 0 32 }  { v4_1_13_Addr_B MemPortADDR2 1 32 }  { v4_1_13_EN_B MemPortCE2 1 1 }  { v4_1_13_WEN_B MemPortWE2 1 4 }  { v4_1_13_Din_B MemPortDIN2 1 32 }  { v4_1_13_Dout_B MemPortDOUT2 0 32 } } }
	v4_1_14 { bram {  { v4_1_14_Addr_A MemPortADDR2 1 32 }  { v4_1_14_EN_A MemPortCE2 1 1 }  { v4_1_14_WEN_A MemPortWE2 1 4 }  { v4_1_14_Din_A MemPortDIN2 1 32 }  { v4_1_14_Dout_A MemPortDOUT2 0 32 }  { v4_1_14_Addr_B MemPortADDR2 1 32 }  { v4_1_14_EN_B MemPortCE2 1 1 }  { v4_1_14_WEN_B MemPortWE2 1 4 }  { v4_1_14_Din_B MemPortDIN2 1 32 }  { v4_1_14_Dout_B MemPortDOUT2 0 32 } } }
	v4_1_15 { bram {  { v4_1_15_Addr_A MemPortADDR2 1 32 }  { v4_1_15_EN_A MemPortCE2 1 1 }  { v4_1_15_WEN_A MemPortWE2 1 4 }  { v4_1_15_Din_A MemPortDIN2 1 32 }  { v4_1_15_Dout_A MemPortDOUT2 0 32 }  { v4_1_15_Addr_B MemPortADDR2 1 32 }  { v4_1_15_EN_B MemPortCE2 1 1 }  { v4_1_15_WEN_B MemPortWE2 1 4 }  { v4_1_15_Din_B MemPortDIN2 1 32 }  { v4_1_15_Dout_B MemPortDOUT2 0 32 } } }
	v1 { ap_none {  { v1 in_data 0 32 } } }
}
