set moduleName test_edgeDetect_4096_Pipeline_VITIS_LOOP_211_3_VITIS_LOOP_212_4
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
set C_modelName {test_edgeDetect_4096_Pipeline_VITIS_LOOP_211_3_VITIS_LOOP_212_4}
set C_modelType { void 0 }
set C_modelArgList {
	{ v1_0_0_0 int 32 regular {bram 4194304 { 0 3 } 0 1 }  }
	{ v1_0_0_1 int 32 regular {bram 4194304 { 0 3 } 0 1 }  }
	{ v1_0_0_2 int 32 regular {bram 4194304 { 0 3 } 0 1 }  }
	{ v1_0_1_0 int 32 regular {bram 4194304 { 0 3 } 0 1 }  }
	{ v1_0_1_1 int 32 regular {bram 4194304 { 0 3 } 0 1 }  }
	{ v1_0_1_2 int 32 regular {bram 4194304 { 0 3 } 0 1 }  }
	{ v1_1_0_0 int 32 regular {bram 4194304 { 0 3 } 0 1 }  }
	{ v1_1_0_1 int 32 regular {bram 4194304 { 0 3 } 0 1 }  }
	{ v1_1_0_2 int 32 regular {bram 4194304 { 0 3 } 0 1 }  }
	{ v1_1_1_0 int 32 regular {bram 4194304 { 0 3 } 0 1 }  }
	{ v1_1_1_1 int 32 regular {bram 4194304 { 0 3 } 0 1 }  }
	{ v1_1_1_2 int 32 regular {bram 4194304 { 0 3 } 0 1 }  }
	{ v3_0_0_0 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_0_0_1 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_0_0_2 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_0_1_0 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_0_1_1 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_0_1_2 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_0_2_0 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_0_2_1 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_0_2_2 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_1_0_0 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_1_0_1 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_1_0_2 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_1_1_0 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_1_1_1 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_1_1_2 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_1_2_0 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_1_2_1 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_1_2_2 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_2_0_0 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_2_0_1 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_2_0_2 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_2_1_0 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_2_1_1 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_2_1_2 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_2_2_0 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_2_2_1 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
	{ v3_2_2_2 int 32 regular {bram 1865956 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v1_0_0_0", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_0_0_1", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_0_0_2", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_0_1_0", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_0_1_1", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_0_1_2", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_1_0_0", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_1_0_1", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_1_0_2", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_1_1_0", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_1_1_1", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_1_1_2", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v3_0_0_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_0_0_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_0_0_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_0_1_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_0_1_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_0_1_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_0_2_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_0_2_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_0_2_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_1_0_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_1_0_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_1_0_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_1_1_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_1_1_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_1_1_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_1_2_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_1_2_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_1_2_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_2_0_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_2_0_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_2_0_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_2_1_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_2_1_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_2_1_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_2_2_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_2_2_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v3_2_2_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 381
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ v1_0_0_0_Addr_A sc_out sc_lv 32 signal 0 } 
	{ v1_0_0_0_EN_A sc_out sc_logic 1 signal 0 } 
	{ v1_0_0_0_WEN_A sc_out sc_lv 4 signal 0 } 
	{ v1_0_0_0_Din_A sc_out sc_lv 32 signal 0 } 
	{ v1_0_0_0_Dout_A sc_in sc_lv 32 signal 0 } 
	{ v1_0_0_1_Addr_A sc_out sc_lv 32 signal 1 } 
	{ v1_0_0_1_EN_A sc_out sc_logic 1 signal 1 } 
	{ v1_0_0_1_WEN_A sc_out sc_lv 4 signal 1 } 
	{ v1_0_0_1_Din_A sc_out sc_lv 32 signal 1 } 
	{ v1_0_0_1_Dout_A sc_in sc_lv 32 signal 1 } 
	{ v1_0_0_2_Addr_A sc_out sc_lv 32 signal 2 } 
	{ v1_0_0_2_EN_A sc_out sc_logic 1 signal 2 } 
	{ v1_0_0_2_WEN_A sc_out sc_lv 4 signal 2 } 
	{ v1_0_0_2_Din_A sc_out sc_lv 32 signal 2 } 
	{ v1_0_0_2_Dout_A sc_in sc_lv 32 signal 2 } 
	{ v1_0_1_0_Addr_A sc_out sc_lv 32 signal 3 } 
	{ v1_0_1_0_EN_A sc_out sc_logic 1 signal 3 } 
	{ v1_0_1_0_WEN_A sc_out sc_lv 4 signal 3 } 
	{ v1_0_1_0_Din_A sc_out sc_lv 32 signal 3 } 
	{ v1_0_1_0_Dout_A sc_in sc_lv 32 signal 3 } 
	{ v1_0_1_1_Addr_A sc_out sc_lv 32 signal 4 } 
	{ v1_0_1_1_EN_A sc_out sc_logic 1 signal 4 } 
	{ v1_0_1_1_WEN_A sc_out sc_lv 4 signal 4 } 
	{ v1_0_1_1_Din_A sc_out sc_lv 32 signal 4 } 
	{ v1_0_1_1_Dout_A sc_in sc_lv 32 signal 4 } 
	{ v1_0_1_2_Addr_A sc_out sc_lv 32 signal 5 } 
	{ v1_0_1_2_EN_A sc_out sc_logic 1 signal 5 } 
	{ v1_0_1_2_WEN_A sc_out sc_lv 4 signal 5 } 
	{ v1_0_1_2_Din_A sc_out sc_lv 32 signal 5 } 
	{ v1_0_1_2_Dout_A sc_in sc_lv 32 signal 5 } 
	{ v1_1_0_0_Addr_A sc_out sc_lv 32 signal 6 } 
	{ v1_1_0_0_EN_A sc_out sc_logic 1 signal 6 } 
	{ v1_1_0_0_WEN_A sc_out sc_lv 4 signal 6 } 
	{ v1_1_0_0_Din_A sc_out sc_lv 32 signal 6 } 
	{ v1_1_0_0_Dout_A sc_in sc_lv 32 signal 6 } 
	{ v1_1_0_1_Addr_A sc_out sc_lv 32 signal 7 } 
	{ v1_1_0_1_EN_A sc_out sc_logic 1 signal 7 } 
	{ v1_1_0_1_WEN_A sc_out sc_lv 4 signal 7 } 
	{ v1_1_0_1_Din_A sc_out sc_lv 32 signal 7 } 
	{ v1_1_0_1_Dout_A sc_in sc_lv 32 signal 7 } 
	{ v1_1_0_2_Addr_A sc_out sc_lv 32 signal 8 } 
	{ v1_1_0_2_EN_A sc_out sc_logic 1 signal 8 } 
	{ v1_1_0_2_WEN_A sc_out sc_lv 4 signal 8 } 
	{ v1_1_0_2_Din_A sc_out sc_lv 32 signal 8 } 
	{ v1_1_0_2_Dout_A sc_in sc_lv 32 signal 8 } 
	{ v1_1_1_0_Addr_A sc_out sc_lv 32 signal 9 } 
	{ v1_1_1_0_EN_A sc_out sc_logic 1 signal 9 } 
	{ v1_1_1_0_WEN_A sc_out sc_lv 4 signal 9 } 
	{ v1_1_1_0_Din_A sc_out sc_lv 32 signal 9 } 
	{ v1_1_1_0_Dout_A sc_in sc_lv 32 signal 9 } 
	{ v1_1_1_1_Addr_A sc_out sc_lv 32 signal 10 } 
	{ v1_1_1_1_EN_A sc_out sc_logic 1 signal 10 } 
	{ v1_1_1_1_WEN_A sc_out sc_lv 4 signal 10 } 
	{ v1_1_1_1_Din_A sc_out sc_lv 32 signal 10 } 
	{ v1_1_1_1_Dout_A sc_in sc_lv 32 signal 10 } 
	{ v1_1_1_2_Addr_A sc_out sc_lv 32 signal 11 } 
	{ v1_1_1_2_EN_A sc_out sc_logic 1 signal 11 } 
	{ v1_1_1_2_WEN_A sc_out sc_lv 4 signal 11 } 
	{ v1_1_1_2_Din_A sc_out sc_lv 32 signal 11 } 
	{ v1_1_1_2_Dout_A sc_in sc_lv 32 signal 11 } 
	{ v3_0_0_0_Addr_A sc_out sc_lv 32 signal 12 } 
	{ v3_0_0_0_EN_A sc_out sc_logic 1 signal 12 } 
	{ v3_0_0_0_WEN_A sc_out sc_lv 4 signal 12 } 
	{ v3_0_0_0_Din_A sc_out sc_lv 32 signal 12 } 
	{ v3_0_0_0_Dout_A sc_in sc_lv 32 signal 12 } 
	{ v3_0_0_1_Addr_A sc_out sc_lv 32 signal 13 } 
	{ v3_0_0_1_EN_A sc_out sc_logic 1 signal 13 } 
	{ v3_0_0_1_WEN_A sc_out sc_lv 4 signal 13 } 
	{ v3_0_0_1_Din_A sc_out sc_lv 32 signal 13 } 
	{ v3_0_0_1_Dout_A sc_in sc_lv 32 signal 13 } 
	{ v3_0_0_2_Addr_A sc_out sc_lv 32 signal 14 } 
	{ v3_0_0_2_EN_A sc_out sc_logic 1 signal 14 } 
	{ v3_0_0_2_WEN_A sc_out sc_lv 4 signal 14 } 
	{ v3_0_0_2_Din_A sc_out sc_lv 32 signal 14 } 
	{ v3_0_0_2_Dout_A sc_in sc_lv 32 signal 14 } 
	{ v3_0_1_0_Addr_A sc_out sc_lv 32 signal 15 } 
	{ v3_0_1_0_EN_A sc_out sc_logic 1 signal 15 } 
	{ v3_0_1_0_WEN_A sc_out sc_lv 4 signal 15 } 
	{ v3_0_1_0_Din_A sc_out sc_lv 32 signal 15 } 
	{ v3_0_1_0_Dout_A sc_in sc_lv 32 signal 15 } 
	{ v3_0_1_1_Addr_A sc_out sc_lv 32 signal 16 } 
	{ v3_0_1_1_EN_A sc_out sc_logic 1 signal 16 } 
	{ v3_0_1_1_WEN_A sc_out sc_lv 4 signal 16 } 
	{ v3_0_1_1_Din_A sc_out sc_lv 32 signal 16 } 
	{ v3_0_1_1_Dout_A sc_in sc_lv 32 signal 16 } 
	{ v3_0_1_2_Addr_A sc_out sc_lv 32 signal 17 } 
	{ v3_0_1_2_EN_A sc_out sc_logic 1 signal 17 } 
	{ v3_0_1_2_WEN_A sc_out sc_lv 4 signal 17 } 
	{ v3_0_1_2_Din_A sc_out sc_lv 32 signal 17 } 
	{ v3_0_1_2_Dout_A sc_in sc_lv 32 signal 17 } 
	{ v3_0_2_0_Addr_A sc_out sc_lv 32 signal 18 } 
	{ v3_0_2_0_EN_A sc_out sc_logic 1 signal 18 } 
	{ v3_0_2_0_WEN_A sc_out sc_lv 4 signal 18 } 
	{ v3_0_2_0_Din_A sc_out sc_lv 32 signal 18 } 
	{ v3_0_2_0_Dout_A sc_in sc_lv 32 signal 18 } 
	{ v3_0_2_1_Addr_A sc_out sc_lv 32 signal 19 } 
	{ v3_0_2_1_EN_A sc_out sc_logic 1 signal 19 } 
	{ v3_0_2_1_WEN_A sc_out sc_lv 4 signal 19 } 
	{ v3_0_2_1_Din_A sc_out sc_lv 32 signal 19 } 
	{ v3_0_2_1_Dout_A sc_in sc_lv 32 signal 19 } 
	{ v3_0_2_2_Addr_A sc_out sc_lv 32 signal 20 } 
	{ v3_0_2_2_EN_A sc_out sc_logic 1 signal 20 } 
	{ v3_0_2_2_WEN_A sc_out sc_lv 4 signal 20 } 
	{ v3_0_2_2_Din_A sc_out sc_lv 32 signal 20 } 
	{ v3_0_2_2_Dout_A sc_in sc_lv 32 signal 20 } 
	{ v3_1_0_0_Addr_A sc_out sc_lv 32 signal 21 } 
	{ v3_1_0_0_EN_A sc_out sc_logic 1 signal 21 } 
	{ v3_1_0_0_WEN_A sc_out sc_lv 4 signal 21 } 
	{ v3_1_0_0_Din_A sc_out sc_lv 32 signal 21 } 
	{ v3_1_0_0_Dout_A sc_in sc_lv 32 signal 21 } 
	{ v3_1_0_1_Addr_A sc_out sc_lv 32 signal 22 } 
	{ v3_1_0_1_EN_A sc_out sc_logic 1 signal 22 } 
	{ v3_1_0_1_WEN_A sc_out sc_lv 4 signal 22 } 
	{ v3_1_0_1_Din_A sc_out sc_lv 32 signal 22 } 
	{ v3_1_0_1_Dout_A sc_in sc_lv 32 signal 22 } 
	{ v3_1_0_2_Addr_A sc_out sc_lv 32 signal 23 } 
	{ v3_1_0_2_EN_A sc_out sc_logic 1 signal 23 } 
	{ v3_1_0_2_WEN_A sc_out sc_lv 4 signal 23 } 
	{ v3_1_0_2_Din_A sc_out sc_lv 32 signal 23 } 
	{ v3_1_0_2_Dout_A sc_in sc_lv 32 signal 23 } 
	{ v3_1_1_0_Addr_A sc_out sc_lv 32 signal 24 } 
	{ v3_1_1_0_EN_A sc_out sc_logic 1 signal 24 } 
	{ v3_1_1_0_WEN_A sc_out sc_lv 4 signal 24 } 
	{ v3_1_1_0_Din_A sc_out sc_lv 32 signal 24 } 
	{ v3_1_1_0_Dout_A sc_in sc_lv 32 signal 24 } 
	{ v3_1_1_1_Addr_A sc_out sc_lv 32 signal 25 } 
	{ v3_1_1_1_EN_A sc_out sc_logic 1 signal 25 } 
	{ v3_1_1_1_WEN_A sc_out sc_lv 4 signal 25 } 
	{ v3_1_1_1_Din_A sc_out sc_lv 32 signal 25 } 
	{ v3_1_1_1_Dout_A sc_in sc_lv 32 signal 25 } 
	{ v3_1_1_2_Addr_A sc_out sc_lv 32 signal 26 } 
	{ v3_1_1_2_EN_A sc_out sc_logic 1 signal 26 } 
	{ v3_1_1_2_WEN_A sc_out sc_lv 4 signal 26 } 
	{ v3_1_1_2_Din_A sc_out sc_lv 32 signal 26 } 
	{ v3_1_1_2_Dout_A sc_in sc_lv 32 signal 26 } 
	{ v3_1_2_0_Addr_A sc_out sc_lv 32 signal 27 } 
	{ v3_1_2_0_EN_A sc_out sc_logic 1 signal 27 } 
	{ v3_1_2_0_WEN_A sc_out sc_lv 4 signal 27 } 
	{ v3_1_2_0_Din_A sc_out sc_lv 32 signal 27 } 
	{ v3_1_2_0_Dout_A sc_in sc_lv 32 signal 27 } 
	{ v3_1_2_1_Addr_A sc_out sc_lv 32 signal 28 } 
	{ v3_1_2_1_EN_A sc_out sc_logic 1 signal 28 } 
	{ v3_1_2_1_WEN_A sc_out sc_lv 4 signal 28 } 
	{ v3_1_2_1_Din_A sc_out sc_lv 32 signal 28 } 
	{ v3_1_2_1_Dout_A sc_in sc_lv 32 signal 28 } 
	{ v3_1_2_2_Addr_A sc_out sc_lv 32 signal 29 } 
	{ v3_1_2_2_EN_A sc_out sc_logic 1 signal 29 } 
	{ v3_1_2_2_WEN_A sc_out sc_lv 4 signal 29 } 
	{ v3_1_2_2_Din_A sc_out sc_lv 32 signal 29 } 
	{ v3_1_2_2_Dout_A sc_in sc_lv 32 signal 29 } 
	{ v3_2_0_0_Addr_A sc_out sc_lv 32 signal 30 } 
	{ v3_2_0_0_EN_A sc_out sc_logic 1 signal 30 } 
	{ v3_2_0_0_WEN_A sc_out sc_lv 4 signal 30 } 
	{ v3_2_0_0_Din_A sc_out sc_lv 32 signal 30 } 
	{ v3_2_0_0_Dout_A sc_in sc_lv 32 signal 30 } 
	{ v3_2_0_1_Addr_A sc_out sc_lv 32 signal 31 } 
	{ v3_2_0_1_EN_A sc_out sc_logic 1 signal 31 } 
	{ v3_2_0_1_WEN_A sc_out sc_lv 4 signal 31 } 
	{ v3_2_0_1_Din_A sc_out sc_lv 32 signal 31 } 
	{ v3_2_0_1_Dout_A sc_in sc_lv 32 signal 31 } 
	{ v3_2_0_2_Addr_A sc_out sc_lv 32 signal 32 } 
	{ v3_2_0_2_EN_A sc_out sc_logic 1 signal 32 } 
	{ v3_2_0_2_WEN_A sc_out sc_lv 4 signal 32 } 
	{ v3_2_0_2_Din_A sc_out sc_lv 32 signal 32 } 
	{ v3_2_0_2_Dout_A sc_in sc_lv 32 signal 32 } 
	{ v3_2_1_0_Addr_A sc_out sc_lv 32 signal 33 } 
	{ v3_2_1_0_EN_A sc_out sc_logic 1 signal 33 } 
	{ v3_2_1_0_WEN_A sc_out sc_lv 4 signal 33 } 
	{ v3_2_1_0_Din_A sc_out sc_lv 32 signal 33 } 
	{ v3_2_1_0_Dout_A sc_in sc_lv 32 signal 33 } 
	{ v3_2_1_1_Addr_A sc_out sc_lv 32 signal 34 } 
	{ v3_2_1_1_EN_A sc_out sc_logic 1 signal 34 } 
	{ v3_2_1_1_WEN_A sc_out sc_lv 4 signal 34 } 
	{ v3_2_1_1_Din_A sc_out sc_lv 32 signal 34 } 
	{ v3_2_1_1_Dout_A sc_in sc_lv 32 signal 34 } 
	{ v3_2_1_2_Addr_A sc_out sc_lv 32 signal 35 } 
	{ v3_2_1_2_EN_A sc_out sc_logic 1 signal 35 } 
	{ v3_2_1_2_WEN_A sc_out sc_lv 4 signal 35 } 
	{ v3_2_1_2_Din_A sc_out sc_lv 32 signal 35 } 
	{ v3_2_1_2_Dout_A sc_in sc_lv 32 signal 35 } 
	{ v3_2_2_0_Addr_A sc_out sc_lv 32 signal 36 } 
	{ v3_2_2_0_EN_A sc_out sc_logic 1 signal 36 } 
	{ v3_2_2_0_WEN_A sc_out sc_lv 4 signal 36 } 
	{ v3_2_2_0_Din_A sc_out sc_lv 32 signal 36 } 
	{ v3_2_2_0_Dout_A sc_in sc_lv 32 signal 36 } 
	{ v3_2_2_1_Addr_A sc_out sc_lv 32 signal 37 } 
	{ v3_2_2_1_EN_A sc_out sc_logic 1 signal 37 } 
	{ v3_2_2_1_WEN_A sc_out sc_lv 4 signal 37 } 
	{ v3_2_2_1_Din_A sc_out sc_lv 32 signal 37 } 
	{ v3_2_2_1_Dout_A sc_in sc_lv 32 signal 37 } 
	{ v3_2_2_2_Addr_A sc_out sc_lv 32 signal 38 } 
	{ v3_2_2_2_EN_A sc_out sc_logic 1 signal 38 } 
	{ v3_2_2_2_WEN_A sc_out sc_lv 4 signal 38 } 
	{ v3_2_2_2_Din_A sc_out sc_lv 32 signal 38 } 
	{ v3_2_2_2_Dout_A sc_in sc_lv 32 signal 38 } 
	{ grp_fu_455_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_455_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_455_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_455_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_455_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_459_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_459_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_459_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_459_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_459_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_463_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_463_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_463_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_463_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_463_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_467_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_467_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_467_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_467_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_467_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_471_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_471_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_471_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_471_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_471_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_475_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_475_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_475_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_475_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_475_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_479_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_479_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_479_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_479_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_479_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_483_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_483_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_483_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_483_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_483_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_487_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_487_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_487_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_487_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_487_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_491_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_491_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_491_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_491_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_491_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_495_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_495_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_495_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_495_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_495_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_499_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_499_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_499_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_499_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_499_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_503_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_503_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_503_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_503_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_503_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_507_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_507_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_507_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_507_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_507_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_511_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_511_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_511_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_511_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_511_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_515_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_515_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_515_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_515_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_515_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_519_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_519_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_519_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_519_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_519_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_523_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_523_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_523_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_523_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_523_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_527_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_527_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_527_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_527_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_527_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_531_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_531_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_531_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_531_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_531_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_535_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_535_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_535_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_535_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_535_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_539_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_539_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_539_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_539_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_539_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_543_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_543_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_543_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_543_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_543_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_547_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_547_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_547_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_547_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_547_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_551_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_551_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_551_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_551_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_551_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_555_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_555_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_555_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_555_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_555_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_559_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_559_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_559_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_559_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_559_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_563_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_563_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_563_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_563_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_563_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_567_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_567_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_567_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_567_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_567_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_571_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_571_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_571_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_571_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_571_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_575_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_575_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_575_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_575_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_575_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_579_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_579_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_579_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_579_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_579_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_583_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_583_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_583_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_583_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_583_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_587_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_587_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_587_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_587_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_587_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_591_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_591_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_591_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_591_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_591_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_595_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_595_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_595_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_595_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_595_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "v1_0_0_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_0_0", "role": "Addr_A" }} , 
 	{ "name": "v1_0_0_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_0_0_0", "role": "EN_A" }} , 
 	{ "name": "v1_0_0_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_0_0_0", "role": "WEN_A" }} , 
 	{ "name": "v1_0_0_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_0_0", "role": "Din_A" }} , 
 	{ "name": "v1_0_0_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_0_0", "role": "Dout_A" }} , 
 	{ "name": "v1_0_0_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_0_1", "role": "Addr_A" }} , 
 	{ "name": "v1_0_0_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_0_0_1", "role": "EN_A" }} , 
 	{ "name": "v1_0_0_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_0_0_1", "role": "WEN_A" }} , 
 	{ "name": "v1_0_0_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_0_1", "role": "Din_A" }} , 
 	{ "name": "v1_0_0_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_0_1", "role": "Dout_A" }} , 
 	{ "name": "v1_0_0_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_0_2", "role": "Addr_A" }} , 
 	{ "name": "v1_0_0_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_0_0_2", "role": "EN_A" }} , 
 	{ "name": "v1_0_0_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_0_0_2", "role": "WEN_A" }} , 
 	{ "name": "v1_0_0_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_0_2", "role": "Din_A" }} , 
 	{ "name": "v1_0_0_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_0_2", "role": "Dout_A" }} , 
 	{ "name": "v1_0_1_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_1_0", "role": "Addr_A" }} , 
 	{ "name": "v1_0_1_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_0_1_0", "role": "EN_A" }} , 
 	{ "name": "v1_0_1_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_0_1_0", "role": "WEN_A" }} , 
 	{ "name": "v1_0_1_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_1_0", "role": "Din_A" }} , 
 	{ "name": "v1_0_1_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_1_0", "role": "Dout_A" }} , 
 	{ "name": "v1_0_1_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_1_1", "role": "Addr_A" }} , 
 	{ "name": "v1_0_1_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_0_1_1", "role": "EN_A" }} , 
 	{ "name": "v1_0_1_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_0_1_1", "role": "WEN_A" }} , 
 	{ "name": "v1_0_1_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_1_1", "role": "Din_A" }} , 
 	{ "name": "v1_0_1_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_1_1", "role": "Dout_A" }} , 
 	{ "name": "v1_0_1_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_1_2", "role": "Addr_A" }} , 
 	{ "name": "v1_0_1_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_0_1_2", "role": "EN_A" }} , 
 	{ "name": "v1_0_1_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_0_1_2", "role": "WEN_A" }} , 
 	{ "name": "v1_0_1_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_1_2", "role": "Din_A" }} , 
 	{ "name": "v1_0_1_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_1_2", "role": "Dout_A" }} , 
 	{ "name": "v1_1_0_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_0_0", "role": "Addr_A" }} , 
 	{ "name": "v1_1_0_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_1_0_0", "role": "EN_A" }} , 
 	{ "name": "v1_1_0_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_1_0_0", "role": "WEN_A" }} , 
 	{ "name": "v1_1_0_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_0_0", "role": "Din_A" }} , 
 	{ "name": "v1_1_0_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_0_0", "role": "Dout_A" }} , 
 	{ "name": "v1_1_0_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_0_1", "role": "Addr_A" }} , 
 	{ "name": "v1_1_0_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_1_0_1", "role": "EN_A" }} , 
 	{ "name": "v1_1_0_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_1_0_1", "role": "WEN_A" }} , 
 	{ "name": "v1_1_0_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_0_1", "role": "Din_A" }} , 
 	{ "name": "v1_1_0_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_0_1", "role": "Dout_A" }} , 
 	{ "name": "v1_1_0_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_0_2", "role": "Addr_A" }} , 
 	{ "name": "v1_1_0_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_1_0_2", "role": "EN_A" }} , 
 	{ "name": "v1_1_0_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_1_0_2", "role": "WEN_A" }} , 
 	{ "name": "v1_1_0_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_0_2", "role": "Din_A" }} , 
 	{ "name": "v1_1_0_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_0_2", "role": "Dout_A" }} , 
 	{ "name": "v1_1_1_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_1_0", "role": "Addr_A" }} , 
 	{ "name": "v1_1_1_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_1_1_0", "role": "EN_A" }} , 
 	{ "name": "v1_1_1_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_1_1_0", "role": "WEN_A" }} , 
 	{ "name": "v1_1_1_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_1_0", "role": "Din_A" }} , 
 	{ "name": "v1_1_1_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_1_0", "role": "Dout_A" }} , 
 	{ "name": "v1_1_1_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_1_1", "role": "Addr_A" }} , 
 	{ "name": "v1_1_1_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_1_1_1", "role": "EN_A" }} , 
 	{ "name": "v1_1_1_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_1_1_1", "role": "WEN_A" }} , 
 	{ "name": "v1_1_1_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_1_1", "role": "Din_A" }} , 
 	{ "name": "v1_1_1_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_1_1", "role": "Dout_A" }} , 
 	{ "name": "v1_1_1_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_1_2", "role": "Addr_A" }} , 
 	{ "name": "v1_1_1_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_1_1_2", "role": "EN_A" }} , 
 	{ "name": "v1_1_1_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_1_1_2", "role": "WEN_A" }} , 
 	{ "name": "v1_1_1_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_1_2", "role": "Din_A" }} , 
 	{ "name": "v1_1_1_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_1_2", "role": "Dout_A" }} , 
 	{ "name": "v3_0_0_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_0_0", "role": "Addr_A" }} , 
 	{ "name": "v3_0_0_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_0_0_0", "role": "EN_A" }} , 
 	{ "name": "v3_0_0_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_0_0_0", "role": "WEN_A" }} , 
 	{ "name": "v3_0_0_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_0_0", "role": "Din_A" }} , 
 	{ "name": "v3_0_0_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_0_0", "role": "Dout_A" }} , 
 	{ "name": "v3_0_0_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_0_1", "role": "Addr_A" }} , 
 	{ "name": "v3_0_0_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_0_0_1", "role": "EN_A" }} , 
 	{ "name": "v3_0_0_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_0_0_1", "role": "WEN_A" }} , 
 	{ "name": "v3_0_0_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_0_1", "role": "Din_A" }} , 
 	{ "name": "v3_0_0_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_0_1", "role": "Dout_A" }} , 
 	{ "name": "v3_0_0_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_0_2", "role": "Addr_A" }} , 
 	{ "name": "v3_0_0_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_0_0_2", "role": "EN_A" }} , 
 	{ "name": "v3_0_0_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_0_0_2", "role": "WEN_A" }} , 
 	{ "name": "v3_0_0_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_0_2", "role": "Din_A" }} , 
 	{ "name": "v3_0_0_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_0_2", "role": "Dout_A" }} , 
 	{ "name": "v3_0_1_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_1_0", "role": "Addr_A" }} , 
 	{ "name": "v3_0_1_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_0_1_0", "role": "EN_A" }} , 
 	{ "name": "v3_0_1_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_0_1_0", "role": "WEN_A" }} , 
 	{ "name": "v3_0_1_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_1_0", "role": "Din_A" }} , 
 	{ "name": "v3_0_1_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_1_0", "role": "Dout_A" }} , 
 	{ "name": "v3_0_1_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_1_1", "role": "Addr_A" }} , 
 	{ "name": "v3_0_1_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_0_1_1", "role": "EN_A" }} , 
 	{ "name": "v3_0_1_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_0_1_1", "role": "WEN_A" }} , 
 	{ "name": "v3_0_1_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_1_1", "role": "Din_A" }} , 
 	{ "name": "v3_0_1_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_1_1", "role": "Dout_A" }} , 
 	{ "name": "v3_0_1_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_1_2", "role": "Addr_A" }} , 
 	{ "name": "v3_0_1_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_0_1_2", "role": "EN_A" }} , 
 	{ "name": "v3_0_1_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_0_1_2", "role": "WEN_A" }} , 
 	{ "name": "v3_0_1_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_1_2", "role": "Din_A" }} , 
 	{ "name": "v3_0_1_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_1_2", "role": "Dout_A" }} , 
 	{ "name": "v3_0_2_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_2_0", "role": "Addr_A" }} , 
 	{ "name": "v3_0_2_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_0_2_0", "role": "EN_A" }} , 
 	{ "name": "v3_0_2_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_0_2_0", "role": "WEN_A" }} , 
 	{ "name": "v3_0_2_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_2_0", "role": "Din_A" }} , 
 	{ "name": "v3_0_2_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_2_0", "role": "Dout_A" }} , 
 	{ "name": "v3_0_2_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_2_1", "role": "Addr_A" }} , 
 	{ "name": "v3_0_2_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_0_2_1", "role": "EN_A" }} , 
 	{ "name": "v3_0_2_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_0_2_1", "role": "WEN_A" }} , 
 	{ "name": "v3_0_2_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_2_1", "role": "Din_A" }} , 
 	{ "name": "v3_0_2_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_2_1", "role": "Dout_A" }} , 
 	{ "name": "v3_0_2_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_2_2", "role": "Addr_A" }} , 
 	{ "name": "v3_0_2_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_0_2_2", "role": "EN_A" }} , 
 	{ "name": "v3_0_2_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_0_2_2", "role": "WEN_A" }} , 
 	{ "name": "v3_0_2_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_2_2", "role": "Din_A" }} , 
 	{ "name": "v3_0_2_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0_2_2", "role": "Dout_A" }} , 
 	{ "name": "v3_1_0_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_0_0", "role": "Addr_A" }} , 
 	{ "name": "v3_1_0_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_1_0_0", "role": "EN_A" }} , 
 	{ "name": "v3_1_0_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_1_0_0", "role": "WEN_A" }} , 
 	{ "name": "v3_1_0_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_0_0", "role": "Din_A" }} , 
 	{ "name": "v3_1_0_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_0_0", "role": "Dout_A" }} , 
 	{ "name": "v3_1_0_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_0_1", "role": "Addr_A" }} , 
 	{ "name": "v3_1_0_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_1_0_1", "role": "EN_A" }} , 
 	{ "name": "v3_1_0_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_1_0_1", "role": "WEN_A" }} , 
 	{ "name": "v3_1_0_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_0_1", "role": "Din_A" }} , 
 	{ "name": "v3_1_0_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_0_1", "role": "Dout_A" }} , 
 	{ "name": "v3_1_0_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_0_2", "role": "Addr_A" }} , 
 	{ "name": "v3_1_0_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_1_0_2", "role": "EN_A" }} , 
 	{ "name": "v3_1_0_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_1_0_2", "role": "WEN_A" }} , 
 	{ "name": "v3_1_0_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_0_2", "role": "Din_A" }} , 
 	{ "name": "v3_1_0_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_0_2", "role": "Dout_A" }} , 
 	{ "name": "v3_1_1_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_1_0", "role": "Addr_A" }} , 
 	{ "name": "v3_1_1_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_1_1_0", "role": "EN_A" }} , 
 	{ "name": "v3_1_1_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_1_1_0", "role": "WEN_A" }} , 
 	{ "name": "v3_1_1_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_1_0", "role": "Din_A" }} , 
 	{ "name": "v3_1_1_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_1_0", "role": "Dout_A" }} , 
 	{ "name": "v3_1_1_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_1_1", "role": "Addr_A" }} , 
 	{ "name": "v3_1_1_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_1_1_1", "role": "EN_A" }} , 
 	{ "name": "v3_1_1_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_1_1_1", "role": "WEN_A" }} , 
 	{ "name": "v3_1_1_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_1_1", "role": "Din_A" }} , 
 	{ "name": "v3_1_1_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_1_1", "role": "Dout_A" }} , 
 	{ "name": "v3_1_1_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_1_2", "role": "Addr_A" }} , 
 	{ "name": "v3_1_1_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_1_1_2", "role": "EN_A" }} , 
 	{ "name": "v3_1_1_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_1_1_2", "role": "WEN_A" }} , 
 	{ "name": "v3_1_1_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_1_2", "role": "Din_A" }} , 
 	{ "name": "v3_1_1_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_1_2", "role": "Dout_A" }} , 
 	{ "name": "v3_1_2_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_2_0", "role": "Addr_A" }} , 
 	{ "name": "v3_1_2_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_1_2_0", "role": "EN_A" }} , 
 	{ "name": "v3_1_2_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_1_2_0", "role": "WEN_A" }} , 
 	{ "name": "v3_1_2_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_2_0", "role": "Din_A" }} , 
 	{ "name": "v3_1_2_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_2_0", "role": "Dout_A" }} , 
 	{ "name": "v3_1_2_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_2_1", "role": "Addr_A" }} , 
 	{ "name": "v3_1_2_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_1_2_1", "role": "EN_A" }} , 
 	{ "name": "v3_1_2_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_1_2_1", "role": "WEN_A" }} , 
 	{ "name": "v3_1_2_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_2_1", "role": "Din_A" }} , 
 	{ "name": "v3_1_2_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_2_1", "role": "Dout_A" }} , 
 	{ "name": "v3_1_2_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_2_2", "role": "Addr_A" }} , 
 	{ "name": "v3_1_2_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_1_2_2", "role": "EN_A" }} , 
 	{ "name": "v3_1_2_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_1_2_2", "role": "WEN_A" }} , 
 	{ "name": "v3_1_2_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_2_2", "role": "Din_A" }} , 
 	{ "name": "v3_1_2_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1_2_2", "role": "Dout_A" }} , 
 	{ "name": "v3_2_0_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_0_0", "role": "Addr_A" }} , 
 	{ "name": "v3_2_0_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_2_0_0", "role": "EN_A" }} , 
 	{ "name": "v3_2_0_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_2_0_0", "role": "WEN_A" }} , 
 	{ "name": "v3_2_0_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_0_0", "role": "Din_A" }} , 
 	{ "name": "v3_2_0_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_0_0", "role": "Dout_A" }} , 
 	{ "name": "v3_2_0_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_0_1", "role": "Addr_A" }} , 
 	{ "name": "v3_2_0_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_2_0_1", "role": "EN_A" }} , 
 	{ "name": "v3_2_0_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_2_0_1", "role": "WEN_A" }} , 
 	{ "name": "v3_2_0_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_0_1", "role": "Din_A" }} , 
 	{ "name": "v3_2_0_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_0_1", "role": "Dout_A" }} , 
 	{ "name": "v3_2_0_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_0_2", "role": "Addr_A" }} , 
 	{ "name": "v3_2_0_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_2_0_2", "role": "EN_A" }} , 
 	{ "name": "v3_2_0_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_2_0_2", "role": "WEN_A" }} , 
 	{ "name": "v3_2_0_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_0_2", "role": "Din_A" }} , 
 	{ "name": "v3_2_0_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_0_2", "role": "Dout_A" }} , 
 	{ "name": "v3_2_1_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_1_0", "role": "Addr_A" }} , 
 	{ "name": "v3_2_1_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_2_1_0", "role": "EN_A" }} , 
 	{ "name": "v3_2_1_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_2_1_0", "role": "WEN_A" }} , 
 	{ "name": "v3_2_1_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_1_0", "role": "Din_A" }} , 
 	{ "name": "v3_2_1_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_1_0", "role": "Dout_A" }} , 
 	{ "name": "v3_2_1_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_1_1", "role": "Addr_A" }} , 
 	{ "name": "v3_2_1_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_2_1_1", "role": "EN_A" }} , 
 	{ "name": "v3_2_1_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_2_1_1", "role": "WEN_A" }} , 
 	{ "name": "v3_2_1_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_1_1", "role": "Din_A" }} , 
 	{ "name": "v3_2_1_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_1_1", "role": "Dout_A" }} , 
 	{ "name": "v3_2_1_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_1_2", "role": "Addr_A" }} , 
 	{ "name": "v3_2_1_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_2_1_2", "role": "EN_A" }} , 
 	{ "name": "v3_2_1_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_2_1_2", "role": "WEN_A" }} , 
 	{ "name": "v3_2_1_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_1_2", "role": "Din_A" }} , 
 	{ "name": "v3_2_1_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_1_2", "role": "Dout_A" }} , 
 	{ "name": "v3_2_2_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_2_0", "role": "Addr_A" }} , 
 	{ "name": "v3_2_2_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_2_2_0", "role": "EN_A" }} , 
 	{ "name": "v3_2_2_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_2_2_0", "role": "WEN_A" }} , 
 	{ "name": "v3_2_2_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_2_0", "role": "Din_A" }} , 
 	{ "name": "v3_2_2_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_2_0", "role": "Dout_A" }} , 
 	{ "name": "v3_2_2_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_2_1", "role": "Addr_A" }} , 
 	{ "name": "v3_2_2_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_2_2_1", "role": "EN_A" }} , 
 	{ "name": "v3_2_2_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_2_2_1", "role": "WEN_A" }} , 
 	{ "name": "v3_2_2_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_2_1", "role": "Din_A" }} , 
 	{ "name": "v3_2_2_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_2_1", "role": "Dout_A" }} , 
 	{ "name": "v3_2_2_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_2_2", "role": "Addr_A" }} , 
 	{ "name": "v3_2_2_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_2_2_2", "role": "EN_A" }} , 
 	{ "name": "v3_2_2_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_2_2_2", "role": "WEN_A" }} , 
 	{ "name": "v3_2_2_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_2_2", "role": "Din_A" }} , 
 	{ "name": "v3_2_2_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2_2_2", "role": "Dout_A" }} , 
 	{ "name": "grp_fu_455_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_455_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_455_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_455_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_455_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_455_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_455_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_455_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_455_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_455_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_459_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_459_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_459_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_459_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_459_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_459_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_459_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_459_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_459_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_459_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_463_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_463_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_463_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_463_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_463_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_463_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_463_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_463_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_463_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_463_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_467_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_467_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_467_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_467_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_467_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_467_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_467_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_467_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_467_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_467_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_471_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_471_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_471_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_471_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_471_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_471_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_471_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_471_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_471_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_471_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_475_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_475_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_475_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_475_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_475_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_475_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_475_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_475_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_475_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_475_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_479_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_479_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_479_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_479_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_479_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_479_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_479_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_479_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_479_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_479_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_483_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_483_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_483_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_483_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_483_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_483_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_483_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_483_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_483_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_483_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_487_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_487_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_487_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_487_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_487_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_487_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_487_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_487_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_487_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_487_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_491_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_491_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_491_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_491_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_491_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_491_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_491_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_491_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_491_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_491_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_495_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_495_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_495_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_495_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_495_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_495_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_495_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_495_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_495_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_495_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_499_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_499_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_499_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_499_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_499_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_499_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_499_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_499_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_499_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_499_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_503_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_503_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_503_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_503_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_503_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_503_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_503_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_503_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_503_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_503_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_507_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_507_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_507_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_507_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_507_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_507_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_507_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_507_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_507_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_507_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_511_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_511_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_511_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_511_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_511_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_511_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_511_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_511_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_511_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_511_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_515_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_515_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_515_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_515_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_515_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_515_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_515_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_515_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_515_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_515_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_519_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_519_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_519_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_519_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_519_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_519_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_519_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_519_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_519_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_519_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_523_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_523_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_523_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_523_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_523_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_523_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_523_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_523_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_523_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_523_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_527_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_527_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_527_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_527_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_527_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_527_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_527_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_527_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_527_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_527_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_531_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_531_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_531_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_531_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_531_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_531_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_531_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_531_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_531_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_531_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_535_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_535_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_535_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_535_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_535_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_535_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_535_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_535_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_535_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_535_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_539_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_539_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_539_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_539_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_539_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_539_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_539_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_539_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_539_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_539_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_543_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_543_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_543_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_543_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_543_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_543_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_543_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_543_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_543_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_543_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_547_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_547_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_547_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_547_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_547_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_547_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_547_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_547_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_547_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_547_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_551_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_551_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_551_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_551_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_551_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_551_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_551_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_551_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_551_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_551_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_555_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_555_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_555_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_555_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_555_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_555_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_555_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_555_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_555_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_555_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_559_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_559_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_559_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_559_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_559_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_559_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_559_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_559_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_559_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_559_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_563_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_563_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_563_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_563_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_563_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_563_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_563_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_563_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_563_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_563_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_567_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_567_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_567_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_567_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_567_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_567_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_567_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_567_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_567_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_567_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_571_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_571_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_571_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_571_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_571_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_571_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_571_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_571_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_571_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_571_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_575_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_575_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_575_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_575_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_575_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_575_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_575_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_575_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_575_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_575_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_579_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_579_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_579_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_579_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_579_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_579_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_579_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_579_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_579_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_579_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_583_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_583_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_583_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_583_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_583_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_583_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_583_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_583_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_583_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_583_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_587_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_587_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_587_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_587_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_587_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_587_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_587_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_587_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_587_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_587_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_591_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_591_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_591_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_591_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_591_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_591_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_591_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_591_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_591_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_591_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_595_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_595_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_595_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_595_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_595_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_595_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_595_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_595_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_595_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_595_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120"],
		"CDFG" : "test_edgeDetect_4096_Pipeline_VITIS_LOOP_211_3_VITIS_LOOP_212_4",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4190248", "EstimateLatencyMax" : "4190248",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v1_0_0_0", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_0_0_1", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_0_0_2", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_0_1_0", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_0_1_1", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_0_1_2", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_1_0_0", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_1_0_1", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_1_0_2", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_1_1_0", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_1_1_1", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_1_1_2", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v3_0_0_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_0_0_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_0_0_2", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_0_1_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_0_1_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_0_1_2", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_0_2_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_0_2_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_0_2_2", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_1_0_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_1_0_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_1_0_2", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_1_1_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_1_1_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_1_1_2", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_1_2_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_1_2_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_1_2_2", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_2_0_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_2_0_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_2_0_2", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_2_1_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_2_1_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_2_1_2", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_2_2_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_2_2_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v3_2_2_2", "Type" : "Bram", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_211_3_VITIS_LOOP_212_4", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter39", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter39", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_11ns_3ns_2_15_1_U292", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.urem_11ns_3ns_2_15_1_U293", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U294", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U295", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U296", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U297", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U298", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U299", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U300", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U301", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U302", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U303", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U304", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U305", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U306", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U307", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U308", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U309", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U310", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U311", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U312", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U313", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U314", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U315", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U316", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U317", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U318", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U319", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U320", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U321", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U322", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U323", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U324", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U325", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U326", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U327", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U328", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U329", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U330", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U331", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U332", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U333", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U334", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U335", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U336", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U337", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U338", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U339", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U340", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U341", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U342", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U343", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U344", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U345", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U346", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U347", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U348", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U349", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U350", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U351", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U352", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U353", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U354", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U355", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U356", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U357", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U358", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U359", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U360", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U361", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U362", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U363", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U364", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U365", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U366", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U367", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U368", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U369", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U370", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U371", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U372", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U373", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U374", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U375", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U376", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U377", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U378", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U379", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U380", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U381", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U382", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U383", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U384", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U385", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U386", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U387", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U388", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U389", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U390", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U391", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U392", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U393", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U394", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U395", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U396", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U397", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U398", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U399", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U400", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_32_32_1_1_U401", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_12ns_13ns_25_4_1_U402", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_12ns_13ns_25_4_1_U403", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_12ns_13ns_25_4_1_U404", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11ns_11ns_21_4_1_U405", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11ns_11ns_21_4_1_U406", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_11ns_11ns_21_4_1_U407", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_12ns_13ns_25_4_1_U408", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_12ns_13ns_25_4_1_U409", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mul_mul_12ns_13ns_25_4_1_U410", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	test_edgeDetect_4096_Pipeline_VITIS_LOOP_211_3_VITIS_LOOP_212_4 {
		v1_0_0_0 {Type O LastRead -1 FirstWrite 39}
		v1_0_0_1 {Type O LastRead -1 FirstWrite 39}
		v1_0_0_2 {Type O LastRead -1 FirstWrite 39}
		v1_0_1_0 {Type O LastRead -1 FirstWrite 39}
		v1_0_1_1 {Type O LastRead -1 FirstWrite 39}
		v1_0_1_2 {Type O LastRead -1 FirstWrite 39}
		v1_1_0_0 {Type O LastRead -1 FirstWrite 39}
		v1_1_0_1 {Type O LastRead -1 FirstWrite 39}
		v1_1_0_2 {Type O LastRead -1 FirstWrite 39}
		v1_1_1_0 {Type O LastRead -1 FirstWrite 39}
		v1_1_1_1 {Type O LastRead -1 FirstWrite 39}
		v1_1_1_2 {Type O LastRead -1 FirstWrite 39}
		v3_0_0_0 {Type I LastRead 17 FirstWrite -1}
		v3_0_0_1 {Type I LastRead 17 FirstWrite -1}
		v3_0_0_2 {Type I LastRead 17 FirstWrite -1}
		v3_0_1_0 {Type I LastRead 17 FirstWrite -1}
		v3_0_1_1 {Type I LastRead 17 FirstWrite -1}
		v3_0_1_2 {Type I LastRead 17 FirstWrite -1}
		v3_0_2_0 {Type I LastRead 17 FirstWrite -1}
		v3_0_2_1 {Type I LastRead 17 FirstWrite -1}
		v3_0_2_2 {Type I LastRead 17 FirstWrite -1}
		v3_1_0_0 {Type I LastRead 17 FirstWrite -1}
		v3_1_0_1 {Type I LastRead 17 FirstWrite -1}
		v3_1_0_2 {Type I LastRead 17 FirstWrite -1}
		v3_1_1_0 {Type I LastRead 17 FirstWrite -1}
		v3_1_1_1 {Type I LastRead 17 FirstWrite -1}
		v3_1_1_2 {Type I LastRead 17 FirstWrite -1}
		v3_1_2_0 {Type I LastRead 17 FirstWrite -1}
		v3_1_2_1 {Type I LastRead 17 FirstWrite -1}
		v3_1_2_2 {Type I LastRead 17 FirstWrite -1}
		v3_2_0_0 {Type I LastRead 17 FirstWrite -1}
		v3_2_0_1 {Type I LastRead 17 FirstWrite -1}
		v3_2_0_2 {Type I LastRead 17 FirstWrite -1}
		v3_2_1_0 {Type I LastRead 17 FirstWrite -1}
		v3_2_1_1 {Type I LastRead 17 FirstWrite -1}
		v3_2_1_2 {Type I LastRead 17 FirstWrite -1}
		v3_2_2_0 {Type I LastRead 17 FirstWrite -1}
		v3_2_2_1 {Type I LastRead 17 FirstWrite -1}
		v3_2_2_2 {Type I LastRead 17 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4190248", "Max" : "4190248"}
	, {"Name" : "Interval", "Min" : "4190248", "Max" : "4190248"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	v1_0_0_0 { bram {  { v1_0_0_0_Addr_A MemPortADDR2 1 32 }  { v1_0_0_0_EN_A MemPortCE2 1 1 }  { v1_0_0_0_WEN_A MemPortWE2 1 4 }  { v1_0_0_0_Din_A MemPortDIN2 1 32 }  { v1_0_0_0_Dout_A MemPortDOUT2 0 32 } } }
	v1_0_0_1 { bram {  { v1_0_0_1_Addr_A MemPortADDR2 1 32 }  { v1_0_0_1_EN_A MemPortCE2 1 1 }  { v1_0_0_1_WEN_A MemPortWE2 1 4 }  { v1_0_0_1_Din_A MemPortDIN2 1 32 }  { v1_0_0_1_Dout_A MemPortDOUT2 0 32 } } }
	v1_0_0_2 { bram {  { v1_0_0_2_Addr_A MemPortADDR2 1 32 }  { v1_0_0_2_EN_A MemPortCE2 1 1 }  { v1_0_0_2_WEN_A MemPortWE2 1 4 }  { v1_0_0_2_Din_A MemPortDIN2 1 32 }  { v1_0_0_2_Dout_A MemPortDOUT2 0 32 } } }
	v1_0_1_0 { bram {  { v1_0_1_0_Addr_A MemPortADDR2 1 32 }  { v1_0_1_0_EN_A MemPortCE2 1 1 }  { v1_0_1_0_WEN_A MemPortWE2 1 4 }  { v1_0_1_0_Din_A MemPortDIN2 1 32 }  { v1_0_1_0_Dout_A MemPortDOUT2 0 32 } } }
	v1_0_1_1 { bram {  { v1_0_1_1_Addr_A MemPortADDR2 1 32 }  { v1_0_1_1_EN_A MemPortCE2 1 1 }  { v1_0_1_1_WEN_A MemPortWE2 1 4 }  { v1_0_1_1_Din_A MemPortDIN2 1 32 }  { v1_0_1_1_Dout_A MemPortDOUT2 0 32 } } }
	v1_0_1_2 { bram {  { v1_0_1_2_Addr_A MemPortADDR2 1 32 }  { v1_0_1_2_EN_A MemPortCE2 1 1 }  { v1_0_1_2_WEN_A MemPortWE2 1 4 }  { v1_0_1_2_Din_A MemPortDIN2 1 32 }  { v1_0_1_2_Dout_A MemPortDOUT2 0 32 } } }
	v1_1_0_0 { bram {  { v1_1_0_0_Addr_A MemPortADDR2 1 32 }  { v1_1_0_0_EN_A MemPortCE2 1 1 }  { v1_1_0_0_WEN_A MemPortWE2 1 4 }  { v1_1_0_0_Din_A MemPortDIN2 1 32 }  { v1_1_0_0_Dout_A MemPortDOUT2 0 32 } } }
	v1_1_0_1 { bram {  { v1_1_0_1_Addr_A MemPortADDR2 1 32 }  { v1_1_0_1_EN_A MemPortCE2 1 1 }  { v1_1_0_1_WEN_A MemPortWE2 1 4 }  { v1_1_0_1_Din_A MemPortDIN2 1 32 }  { v1_1_0_1_Dout_A MemPortDOUT2 0 32 } } }
	v1_1_0_2 { bram {  { v1_1_0_2_Addr_A MemPortADDR2 1 32 }  { v1_1_0_2_EN_A MemPortCE2 1 1 }  { v1_1_0_2_WEN_A MemPortWE2 1 4 }  { v1_1_0_2_Din_A MemPortDIN2 1 32 }  { v1_1_0_2_Dout_A MemPortDOUT2 0 32 } } }
	v1_1_1_0 { bram {  { v1_1_1_0_Addr_A MemPortADDR2 1 32 }  { v1_1_1_0_EN_A MemPortCE2 1 1 }  { v1_1_1_0_WEN_A MemPortWE2 1 4 }  { v1_1_1_0_Din_A MemPortDIN2 1 32 }  { v1_1_1_0_Dout_A MemPortDOUT2 0 32 } } }
	v1_1_1_1 { bram {  { v1_1_1_1_Addr_A MemPortADDR2 1 32 }  { v1_1_1_1_EN_A MemPortCE2 1 1 }  { v1_1_1_1_WEN_A MemPortWE2 1 4 }  { v1_1_1_1_Din_A MemPortDIN2 1 32 }  { v1_1_1_1_Dout_A MemPortDOUT2 0 32 } } }
	v1_1_1_2 { bram {  { v1_1_1_2_Addr_A MemPortADDR2 1 32 }  { v1_1_1_2_EN_A MemPortCE2 1 1 }  { v1_1_1_2_WEN_A MemPortWE2 1 4 }  { v1_1_1_2_Din_A MemPortDIN2 1 32 }  { v1_1_1_2_Dout_A MemPortDOUT2 0 32 } } }
	v3_0_0_0 { bram {  { v3_0_0_0_Addr_A MemPortADDR2 1 32 }  { v3_0_0_0_EN_A MemPortCE2 1 1 }  { v3_0_0_0_WEN_A MemPortWE2 1 4 }  { v3_0_0_0_Din_A MemPortDIN2 1 32 }  { v3_0_0_0_Dout_A in_data 0 32 } } }
	v3_0_0_1 { bram {  { v3_0_0_1_Addr_A MemPortADDR2 1 32 }  { v3_0_0_1_EN_A MemPortCE2 1 1 }  { v3_0_0_1_WEN_A MemPortWE2 1 4 }  { v3_0_0_1_Din_A MemPortDIN2 1 32 }  { v3_0_0_1_Dout_A in_data 0 32 } } }
	v3_0_0_2 { bram {  { v3_0_0_2_Addr_A MemPortADDR2 1 32 }  { v3_0_0_2_EN_A MemPortCE2 1 1 }  { v3_0_0_2_WEN_A MemPortWE2 1 4 }  { v3_0_0_2_Din_A MemPortDIN2 1 32 }  { v3_0_0_2_Dout_A in_data 0 32 } } }
	v3_0_1_0 { bram {  { v3_0_1_0_Addr_A MemPortADDR2 1 32 }  { v3_0_1_0_EN_A MemPortCE2 1 1 }  { v3_0_1_0_WEN_A MemPortWE2 1 4 }  { v3_0_1_0_Din_A MemPortDIN2 1 32 }  { v3_0_1_0_Dout_A in_data 0 32 } } }
	v3_0_1_1 { bram {  { v3_0_1_1_Addr_A MemPortADDR2 1 32 }  { v3_0_1_1_EN_A MemPortCE2 1 1 }  { v3_0_1_1_WEN_A MemPortWE2 1 4 }  { v3_0_1_1_Din_A MemPortDIN2 1 32 }  { v3_0_1_1_Dout_A in_data 0 32 } } }
	v3_0_1_2 { bram {  { v3_0_1_2_Addr_A MemPortADDR2 1 32 }  { v3_0_1_2_EN_A MemPortCE2 1 1 }  { v3_0_1_2_WEN_A MemPortWE2 1 4 }  { v3_0_1_2_Din_A MemPortDIN2 1 32 }  { v3_0_1_2_Dout_A in_data 0 32 } } }
	v3_0_2_0 { bram {  { v3_0_2_0_Addr_A MemPortADDR2 1 32 }  { v3_0_2_0_EN_A MemPortCE2 1 1 }  { v3_0_2_0_WEN_A MemPortWE2 1 4 }  { v3_0_2_0_Din_A MemPortDIN2 1 32 }  { v3_0_2_0_Dout_A in_data 0 32 } } }
	v3_0_2_1 { bram {  { v3_0_2_1_Addr_A MemPortADDR2 1 32 }  { v3_0_2_1_EN_A MemPortCE2 1 1 }  { v3_0_2_1_WEN_A MemPortWE2 1 4 }  { v3_0_2_1_Din_A MemPortDIN2 1 32 }  { v3_0_2_1_Dout_A in_data 0 32 } } }
	v3_0_2_2 { bram {  { v3_0_2_2_Addr_A MemPortADDR2 1 32 }  { v3_0_2_2_EN_A MemPortCE2 1 1 }  { v3_0_2_2_WEN_A MemPortWE2 1 4 }  { v3_0_2_2_Din_A MemPortDIN2 1 32 }  { v3_0_2_2_Dout_A in_data 0 32 } } }
	v3_1_0_0 { bram {  { v3_1_0_0_Addr_A MemPortADDR2 1 32 }  { v3_1_0_0_EN_A MemPortCE2 1 1 }  { v3_1_0_0_WEN_A MemPortWE2 1 4 }  { v3_1_0_0_Din_A MemPortDIN2 1 32 }  { v3_1_0_0_Dout_A in_data 0 32 } } }
	v3_1_0_1 { bram {  { v3_1_0_1_Addr_A MemPortADDR2 1 32 }  { v3_1_0_1_EN_A MemPortCE2 1 1 }  { v3_1_0_1_WEN_A MemPortWE2 1 4 }  { v3_1_0_1_Din_A MemPortDIN2 1 32 }  { v3_1_0_1_Dout_A in_data 0 32 } } }
	v3_1_0_2 { bram {  { v3_1_0_2_Addr_A MemPortADDR2 1 32 }  { v3_1_0_2_EN_A MemPortCE2 1 1 }  { v3_1_0_2_WEN_A MemPortWE2 1 4 }  { v3_1_0_2_Din_A MemPortDIN2 1 32 }  { v3_1_0_2_Dout_A in_data 0 32 } } }
	v3_1_1_0 { bram {  { v3_1_1_0_Addr_A MemPortADDR2 1 32 }  { v3_1_1_0_EN_A MemPortCE2 1 1 }  { v3_1_1_0_WEN_A MemPortWE2 1 4 }  { v3_1_1_0_Din_A MemPortDIN2 1 32 }  { v3_1_1_0_Dout_A in_data 0 32 } } }
	v3_1_1_1 { bram {  { v3_1_1_1_Addr_A MemPortADDR2 1 32 }  { v3_1_1_1_EN_A MemPortCE2 1 1 }  { v3_1_1_1_WEN_A MemPortWE2 1 4 }  { v3_1_1_1_Din_A MemPortDIN2 1 32 }  { v3_1_1_1_Dout_A in_data 0 32 } } }
	v3_1_1_2 { bram {  { v3_1_1_2_Addr_A MemPortADDR2 1 32 }  { v3_1_1_2_EN_A MemPortCE2 1 1 }  { v3_1_1_2_WEN_A MemPortWE2 1 4 }  { v3_1_1_2_Din_A MemPortDIN2 1 32 }  { v3_1_1_2_Dout_A in_data 0 32 } } }
	v3_1_2_0 { bram {  { v3_1_2_0_Addr_A MemPortADDR2 1 32 }  { v3_1_2_0_EN_A MemPortCE2 1 1 }  { v3_1_2_0_WEN_A MemPortWE2 1 4 }  { v3_1_2_0_Din_A MemPortDIN2 1 32 }  { v3_1_2_0_Dout_A in_data 0 32 } } }
	v3_1_2_1 { bram {  { v3_1_2_1_Addr_A MemPortADDR2 1 32 }  { v3_1_2_1_EN_A MemPortCE2 1 1 }  { v3_1_2_1_WEN_A MemPortWE2 1 4 }  { v3_1_2_1_Din_A MemPortDIN2 1 32 }  { v3_1_2_1_Dout_A in_data 0 32 } } }
	v3_1_2_2 { bram {  { v3_1_2_2_Addr_A MemPortADDR2 1 32 }  { v3_1_2_2_EN_A MemPortCE2 1 1 }  { v3_1_2_2_WEN_A MemPortWE2 1 4 }  { v3_1_2_2_Din_A MemPortDIN2 1 32 }  { v3_1_2_2_Dout_A in_data 0 32 } } }
	v3_2_0_0 { bram {  { v3_2_0_0_Addr_A MemPortADDR2 1 32 }  { v3_2_0_0_EN_A MemPortCE2 1 1 }  { v3_2_0_0_WEN_A MemPortWE2 1 4 }  { v3_2_0_0_Din_A MemPortDIN2 1 32 }  { v3_2_0_0_Dout_A in_data 0 32 } } }
	v3_2_0_1 { bram {  { v3_2_0_1_Addr_A MemPortADDR2 1 32 }  { v3_2_0_1_EN_A MemPortCE2 1 1 }  { v3_2_0_1_WEN_A MemPortWE2 1 4 }  { v3_2_0_1_Din_A MemPortDIN2 1 32 }  { v3_2_0_1_Dout_A in_data 0 32 } } }
	v3_2_0_2 { bram {  { v3_2_0_2_Addr_A MemPortADDR2 1 32 }  { v3_2_0_2_EN_A MemPortCE2 1 1 }  { v3_2_0_2_WEN_A MemPortWE2 1 4 }  { v3_2_0_2_Din_A MemPortDIN2 1 32 }  { v3_2_0_2_Dout_A in_data 0 32 } } }
	v3_2_1_0 { bram {  { v3_2_1_0_Addr_A MemPortADDR2 1 32 }  { v3_2_1_0_EN_A MemPortCE2 1 1 }  { v3_2_1_0_WEN_A MemPortWE2 1 4 }  { v3_2_1_0_Din_A MemPortDIN2 1 32 }  { v3_2_1_0_Dout_A in_data 0 32 } } }
	v3_2_1_1 { bram {  { v3_2_1_1_Addr_A MemPortADDR2 1 32 }  { v3_2_1_1_EN_A MemPortCE2 1 1 }  { v3_2_1_1_WEN_A MemPortWE2 1 4 }  { v3_2_1_1_Din_A MemPortDIN2 1 32 }  { v3_2_1_1_Dout_A in_data 0 32 } } }
	v3_2_1_2 { bram {  { v3_2_1_2_Addr_A MemPortADDR2 1 32 }  { v3_2_1_2_EN_A MemPortCE2 1 1 }  { v3_2_1_2_WEN_A MemPortWE2 1 4 }  { v3_2_1_2_Din_A MemPortDIN2 1 32 }  { v3_2_1_2_Dout_A in_data 0 32 } } }
	v3_2_2_0 { bram {  { v3_2_2_0_Addr_A MemPortADDR2 1 32 }  { v3_2_2_0_EN_A MemPortCE2 1 1 }  { v3_2_2_0_WEN_A MemPortWE2 1 4 }  { v3_2_2_0_Din_A MemPortDIN2 1 32 }  { v3_2_2_0_Dout_A in_data 0 32 } } }
	v3_2_2_1 { bram {  { v3_2_2_1_Addr_A MemPortADDR2 1 32 }  { v3_2_2_1_EN_A MemPortCE2 1 1 }  { v3_2_2_1_WEN_A MemPortWE2 1 4 }  { v3_2_2_1_Din_A MemPortDIN2 1 32 }  { v3_2_2_1_Dout_A in_data 0 32 } } }
	v3_2_2_2 { bram {  { v3_2_2_2_Addr_A MemPortADDR2 1 32 }  { v3_2_2_2_EN_A MemPortCE2 1 1 }  { v3_2_2_2_WEN_A MemPortWE2 1 4 }  { v3_2_2_2_Din_A MemPortDIN2 1 32 }  { v3_2_2_2_Dout_A in_data 0 32 } } }
}
