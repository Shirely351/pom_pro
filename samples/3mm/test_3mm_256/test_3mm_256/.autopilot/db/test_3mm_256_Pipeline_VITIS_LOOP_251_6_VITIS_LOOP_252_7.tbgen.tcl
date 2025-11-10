set moduleName test_3mm_256_Pipeline_VITIS_LOOP_251_6_VITIS_LOOP_252_7
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
set C_modelName {test_3mm_256_Pipeline_VITIS_LOOP_251_6_VITIS_LOOP_252_7}
set C_modelType { void 0 }
set C_modelArgList {
	{ v6_0_0 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_0_1 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_0_2 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_0_3 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_0_4 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_0_5 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_0_6 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_0_7 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_1_0 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_1_1 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_1_2 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_1_3 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_1_4 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_1_5 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_1_6 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_1_7 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_2_0 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_2_1 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_2_2 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_2_3 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_2_4 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_2_5 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_2_6 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_2_7 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_3_0 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_3_1 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_3_2 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_3_3 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_3_4 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_3_5 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_3_6 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ v6_3_7 int 32 regular {bram 2048 { 0 3 } 0 1 }  }
	{ bitcast_ln70 int 32 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v6_0_0", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_0_1", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_0_2", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_0_3", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_0_4", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_0_5", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_0_6", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_0_7", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_1_0", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_1_1", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_1_2", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_1_3", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_1_4", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_1_5", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_1_6", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_1_7", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_2_0", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_2_1", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_2_2", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_2_3", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_2_4", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_2_5", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_2_6", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_2_7", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_3_0", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_3_1", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_3_2", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_3_3", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_3_4", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_3_5", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_3_6", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v6_3_7", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bitcast_ln70", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 167
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ v6_0_0_Addr_A sc_out sc_lv 32 signal 0 } 
	{ v6_0_0_EN_A sc_out sc_logic 1 signal 0 } 
	{ v6_0_0_WEN_A sc_out sc_lv 4 signal 0 } 
	{ v6_0_0_Din_A sc_out sc_lv 32 signal 0 } 
	{ v6_0_0_Dout_A sc_in sc_lv 32 signal 0 } 
	{ v6_0_1_Addr_A sc_out sc_lv 32 signal 1 } 
	{ v6_0_1_EN_A sc_out sc_logic 1 signal 1 } 
	{ v6_0_1_WEN_A sc_out sc_lv 4 signal 1 } 
	{ v6_0_1_Din_A sc_out sc_lv 32 signal 1 } 
	{ v6_0_1_Dout_A sc_in sc_lv 32 signal 1 } 
	{ v6_0_2_Addr_A sc_out sc_lv 32 signal 2 } 
	{ v6_0_2_EN_A sc_out sc_logic 1 signal 2 } 
	{ v6_0_2_WEN_A sc_out sc_lv 4 signal 2 } 
	{ v6_0_2_Din_A sc_out sc_lv 32 signal 2 } 
	{ v6_0_2_Dout_A sc_in sc_lv 32 signal 2 } 
	{ v6_0_3_Addr_A sc_out sc_lv 32 signal 3 } 
	{ v6_0_3_EN_A sc_out sc_logic 1 signal 3 } 
	{ v6_0_3_WEN_A sc_out sc_lv 4 signal 3 } 
	{ v6_0_3_Din_A sc_out sc_lv 32 signal 3 } 
	{ v6_0_3_Dout_A sc_in sc_lv 32 signal 3 } 
	{ v6_0_4_Addr_A sc_out sc_lv 32 signal 4 } 
	{ v6_0_4_EN_A sc_out sc_logic 1 signal 4 } 
	{ v6_0_4_WEN_A sc_out sc_lv 4 signal 4 } 
	{ v6_0_4_Din_A sc_out sc_lv 32 signal 4 } 
	{ v6_0_4_Dout_A sc_in sc_lv 32 signal 4 } 
	{ v6_0_5_Addr_A sc_out sc_lv 32 signal 5 } 
	{ v6_0_5_EN_A sc_out sc_logic 1 signal 5 } 
	{ v6_0_5_WEN_A sc_out sc_lv 4 signal 5 } 
	{ v6_0_5_Din_A sc_out sc_lv 32 signal 5 } 
	{ v6_0_5_Dout_A sc_in sc_lv 32 signal 5 } 
	{ v6_0_6_Addr_A sc_out sc_lv 32 signal 6 } 
	{ v6_0_6_EN_A sc_out sc_logic 1 signal 6 } 
	{ v6_0_6_WEN_A sc_out sc_lv 4 signal 6 } 
	{ v6_0_6_Din_A sc_out sc_lv 32 signal 6 } 
	{ v6_0_6_Dout_A sc_in sc_lv 32 signal 6 } 
	{ v6_0_7_Addr_A sc_out sc_lv 32 signal 7 } 
	{ v6_0_7_EN_A sc_out sc_logic 1 signal 7 } 
	{ v6_0_7_WEN_A sc_out sc_lv 4 signal 7 } 
	{ v6_0_7_Din_A sc_out sc_lv 32 signal 7 } 
	{ v6_0_7_Dout_A sc_in sc_lv 32 signal 7 } 
	{ v6_1_0_Addr_A sc_out sc_lv 32 signal 8 } 
	{ v6_1_0_EN_A sc_out sc_logic 1 signal 8 } 
	{ v6_1_0_WEN_A sc_out sc_lv 4 signal 8 } 
	{ v6_1_0_Din_A sc_out sc_lv 32 signal 8 } 
	{ v6_1_0_Dout_A sc_in sc_lv 32 signal 8 } 
	{ v6_1_1_Addr_A sc_out sc_lv 32 signal 9 } 
	{ v6_1_1_EN_A sc_out sc_logic 1 signal 9 } 
	{ v6_1_1_WEN_A sc_out sc_lv 4 signal 9 } 
	{ v6_1_1_Din_A sc_out sc_lv 32 signal 9 } 
	{ v6_1_1_Dout_A sc_in sc_lv 32 signal 9 } 
	{ v6_1_2_Addr_A sc_out sc_lv 32 signal 10 } 
	{ v6_1_2_EN_A sc_out sc_logic 1 signal 10 } 
	{ v6_1_2_WEN_A sc_out sc_lv 4 signal 10 } 
	{ v6_1_2_Din_A sc_out sc_lv 32 signal 10 } 
	{ v6_1_2_Dout_A sc_in sc_lv 32 signal 10 } 
	{ v6_1_3_Addr_A sc_out sc_lv 32 signal 11 } 
	{ v6_1_3_EN_A sc_out sc_logic 1 signal 11 } 
	{ v6_1_3_WEN_A sc_out sc_lv 4 signal 11 } 
	{ v6_1_3_Din_A sc_out sc_lv 32 signal 11 } 
	{ v6_1_3_Dout_A sc_in sc_lv 32 signal 11 } 
	{ v6_1_4_Addr_A sc_out sc_lv 32 signal 12 } 
	{ v6_1_4_EN_A sc_out sc_logic 1 signal 12 } 
	{ v6_1_4_WEN_A sc_out sc_lv 4 signal 12 } 
	{ v6_1_4_Din_A sc_out sc_lv 32 signal 12 } 
	{ v6_1_4_Dout_A sc_in sc_lv 32 signal 12 } 
	{ v6_1_5_Addr_A sc_out sc_lv 32 signal 13 } 
	{ v6_1_5_EN_A sc_out sc_logic 1 signal 13 } 
	{ v6_1_5_WEN_A sc_out sc_lv 4 signal 13 } 
	{ v6_1_5_Din_A sc_out sc_lv 32 signal 13 } 
	{ v6_1_5_Dout_A sc_in sc_lv 32 signal 13 } 
	{ v6_1_6_Addr_A sc_out sc_lv 32 signal 14 } 
	{ v6_1_6_EN_A sc_out sc_logic 1 signal 14 } 
	{ v6_1_6_WEN_A sc_out sc_lv 4 signal 14 } 
	{ v6_1_6_Din_A sc_out sc_lv 32 signal 14 } 
	{ v6_1_6_Dout_A sc_in sc_lv 32 signal 14 } 
	{ v6_1_7_Addr_A sc_out sc_lv 32 signal 15 } 
	{ v6_1_7_EN_A sc_out sc_logic 1 signal 15 } 
	{ v6_1_7_WEN_A sc_out sc_lv 4 signal 15 } 
	{ v6_1_7_Din_A sc_out sc_lv 32 signal 15 } 
	{ v6_1_7_Dout_A sc_in sc_lv 32 signal 15 } 
	{ v6_2_0_Addr_A sc_out sc_lv 32 signal 16 } 
	{ v6_2_0_EN_A sc_out sc_logic 1 signal 16 } 
	{ v6_2_0_WEN_A sc_out sc_lv 4 signal 16 } 
	{ v6_2_0_Din_A sc_out sc_lv 32 signal 16 } 
	{ v6_2_0_Dout_A sc_in sc_lv 32 signal 16 } 
	{ v6_2_1_Addr_A sc_out sc_lv 32 signal 17 } 
	{ v6_2_1_EN_A sc_out sc_logic 1 signal 17 } 
	{ v6_2_1_WEN_A sc_out sc_lv 4 signal 17 } 
	{ v6_2_1_Din_A sc_out sc_lv 32 signal 17 } 
	{ v6_2_1_Dout_A sc_in sc_lv 32 signal 17 } 
	{ v6_2_2_Addr_A sc_out sc_lv 32 signal 18 } 
	{ v6_2_2_EN_A sc_out sc_logic 1 signal 18 } 
	{ v6_2_2_WEN_A sc_out sc_lv 4 signal 18 } 
	{ v6_2_2_Din_A sc_out sc_lv 32 signal 18 } 
	{ v6_2_2_Dout_A sc_in sc_lv 32 signal 18 } 
	{ v6_2_3_Addr_A sc_out sc_lv 32 signal 19 } 
	{ v6_2_3_EN_A sc_out sc_logic 1 signal 19 } 
	{ v6_2_3_WEN_A sc_out sc_lv 4 signal 19 } 
	{ v6_2_3_Din_A sc_out sc_lv 32 signal 19 } 
	{ v6_2_3_Dout_A sc_in sc_lv 32 signal 19 } 
	{ v6_2_4_Addr_A sc_out sc_lv 32 signal 20 } 
	{ v6_2_4_EN_A sc_out sc_logic 1 signal 20 } 
	{ v6_2_4_WEN_A sc_out sc_lv 4 signal 20 } 
	{ v6_2_4_Din_A sc_out sc_lv 32 signal 20 } 
	{ v6_2_4_Dout_A sc_in sc_lv 32 signal 20 } 
	{ v6_2_5_Addr_A sc_out sc_lv 32 signal 21 } 
	{ v6_2_5_EN_A sc_out sc_logic 1 signal 21 } 
	{ v6_2_5_WEN_A sc_out sc_lv 4 signal 21 } 
	{ v6_2_5_Din_A sc_out sc_lv 32 signal 21 } 
	{ v6_2_5_Dout_A sc_in sc_lv 32 signal 21 } 
	{ v6_2_6_Addr_A sc_out sc_lv 32 signal 22 } 
	{ v6_2_6_EN_A sc_out sc_logic 1 signal 22 } 
	{ v6_2_6_WEN_A sc_out sc_lv 4 signal 22 } 
	{ v6_2_6_Din_A sc_out sc_lv 32 signal 22 } 
	{ v6_2_6_Dout_A sc_in sc_lv 32 signal 22 } 
	{ v6_2_7_Addr_A sc_out sc_lv 32 signal 23 } 
	{ v6_2_7_EN_A sc_out sc_logic 1 signal 23 } 
	{ v6_2_7_WEN_A sc_out sc_lv 4 signal 23 } 
	{ v6_2_7_Din_A sc_out sc_lv 32 signal 23 } 
	{ v6_2_7_Dout_A sc_in sc_lv 32 signal 23 } 
	{ v6_3_0_Addr_A sc_out sc_lv 32 signal 24 } 
	{ v6_3_0_EN_A sc_out sc_logic 1 signal 24 } 
	{ v6_3_0_WEN_A sc_out sc_lv 4 signal 24 } 
	{ v6_3_0_Din_A sc_out sc_lv 32 signal 24 } 
	{ v6_3_0_Dout_A sc_in sc_lv 32 signal 24 } 
	{ v6_3_1_Addr_A sc_out sc_lv 32 signal 25 } 
	{ v6_3_1_EN_A sc_out sc_logic 1 signal 25 } 
	{ v6_3_1_WEN_A sc_out sc_lv 4 signal 25 } 
	{ v6_3_1_Din_A sc_out sc_lv 32 signal 25 } 
	{ v6_3_1_Dout_A sc_in sc_lv 32 signal 25 } 
	{ v6_3_2_Addr_A sc_out sc_lv 32 signal 26 } 
	{ v6_3_2_EN_A sc_out sc_logic 1 signal 26 } 
	{ v6_3_2_WEN_A sc_out sc_lv 4 signal 26 } 
	{ v6_3_2_Din_A sc_out sc_lv 32 signal 26 } 
	{ v6_3_2_Dout_A sc_in sc_lv 32 signal 26 } 
	{ v6_3_3_Addr_A sc_out sc_lv 32 signal 27 } 
	{ v6_3_3_EN_A sc_out sc_logic 1 signal 27 } 
	{ v6_3_3_WEN_A sc_out sc_lv 4 signal 27 } 
	{ v6_3_3_Din_A sc_out sc_lv 32 signal 27 } 
	{ v6_3_3_Dout_A sc_in sc_lv 32 signal 27 } 
	{ v6_3_4_Addr_A sc_out sc_lv 32 signal 28 } 
	{ v6_3_4_EN_A sc_out sc_logic 1 signal 28 } 
	{ v6_3_4_WEN_A sc_out sc_lv 4 signal 28 } 
	{ v6_3_4_Din_A sc_out sc_lv 32 signal 28 } 
	{ v6_3_4_Dout_A sc_in sc_lv 32 signal 28 } 
	{ v6_3_5_Addr_A sc_out sc_lv 32 signal 29 } 
	{ v6_3_5_EN_A sc_out sc_logic 1 signal 29 } 
	{ v6_3_5_WEN_A sc_out sc_lv 4 signal 29 } 
	{ v6_3_5_Din_A sc_out sc_lv 32 signal 29 } 
	{ v6_3_5_Dout_A sc_in sc_lv 32 signal 29 } 
	{ v6_3_6_Addr_A sc_out sc_lv 32 signal 30 } 
	{ v6_3_6_EN_A sc_out sc_logic 1 signal 30 } 
	{ v6_3_6_WEN_A sc_out sc_lv 4 signal 30 } 
	{ v6_3_6_Din_A sc_out sc_lv 32 signal 30 } 
	{ v6_3_6_Dout_A sc_in sc_lv 32 signal 30 } 
	{ v6_3_7_Addr_A sc_out sc_lv 32 signal 31 } 
	{ v6_3_7_EN_A sc_out sc_logic 1 signal 31 } 
	{ v6_3_7_WEN_A sc_out sc_lv 4 signal 31 } 
	{ v6_3_7_Din_A sc_out sc_lv 32 signal 31 } 
	{ v6_3_7_Dout_A sc_in sc_lv 32 signal 31 } 
	{ bitcast_ln70 sc_in sc_lv 32 signal 32 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "v6_0_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_0", "role": "Addr_A" }} , 
 	{ "name": "v6_0_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_0_0", "role": "EN_A" }} , 
 	{ "name": "v6_0_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_0_0", "role": "WEN_A" }} , 
 	{ "name": "v6_0_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_0", "role": "Din_A" }} , 
 	{ "name": "v6_0_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_0", "role": "Dout_A" }} , 
 	{ "name": "v6_0_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_1", "role": "Addr_A" }} , 
 	{ "name": "v6_0_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_0_1", "role": "EN_A" }} , 
 	{ "name": "v6_0_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_0_1", "role": "WEN_A" }} , 
 	{ "name": "v6_0_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_1", "role": "Din_A" }} , 
 	{ "name": "v6_0_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_1", "role": "Dout_A" }} , 
 	{ "name": "v6_0_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_2", "role": "Addr_A" }} , 
 	{ "name": "v6_0_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_0_2", "role": "EN_A" }} , 
 	{ "name": "v6_0_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_0_2", "role": "WEN_A" }} , 
 	{ "name": "v6_0_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_2", "role": "Din_A" }} , 
 	{ "name": "v6_0_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_2", "role": "Dout_A" }} , 
 	{ "name": "v6_0_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_3", "role": "Addr_A" }} , 
 	{ "name": "v6_0_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_0_3", "role": "EN_A" }} , 
 	{ "name": "v6_0_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_0_3", "role": "WEN_A" }} , 
 	{ "name": "v6_0_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_3", "role": "Din_A" }} , 
 	{ "name": "v6_0_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_3", "role": "Dout_A" }} , 
 	{ "name": "v6_0_4_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_4", "role": "Addr_A" }} , 
 	{ "name": "v6_0_4_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_0_4", "role": "EN_A" }} , 
 	{ "name": "v6_0_4_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_0_4", "role": "WEN_A" }} , 
 	{ "name": "v6_0_4_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_4", "role": "Din_A" }} , 
 	{ "name": "v6_0_4_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_4", "role": "Dout_A" }} , 
 	{ "name": "v6_0_5_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_5", "role": "Addr_A" }} , 
 	{ "name": "v6_0_5_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_0_5", "role": "EN_A" }} , 
 	{ "name": "v6_0_5_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_0_5", "role": "WEN_A" }} , 
 	{ "name": "v6_0_5_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_5", "role": "Din_A" }} , 
 	{ "name": "v6_0_5_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_5", "role": "Dout_A" }} , 
 	{ "name": "v6_0_6_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_6", "role": "Addr_A" }} , 
 	{ "name": "v6_0_6_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_0_6", "role": "EN_A" }} , 
 	{ "name": "v6_0_6_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_0_6", "role": "WEN_A" }} , 
 	{ "name": "v6_0_6_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_6", "role": "Din_A" }} , 
 	{ "name": "v6_0_6_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_6", "role": "Dout_A" }} , 
 	{ "name": "v6_0_7_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_7", "role": "Addr_A" }} , 
 	{ "name": "v6_0_7_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_0_7", "role": "EN_A" }} , 
 	{ "name": "v6_0_7_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_0_7", "role": "WEN_A" }} , 
 	{ "name": "v6_0_7_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_7", "role": "Din_A" }} , 
 	{ "name": "v6_0_7_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_0_7", "role": "Dout_A" }} , 
 	{ "name": "v6_1_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_0", "role": "Addr_A" }} , 
 	{ "name": "v6_1_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_1_0", "role": "EN_A" }} , 
 	{ "name": "v6_1_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_1_0", "role": "WEN_A" }} , 
 	{ "name": "v6_1_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_0", "role": "Din_A" }} , 
 	{ "name": "v6_1_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_0", "role": "Dout_A" }} , 
 	{ "name": "v6_1_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_1", "role": "Addr_A" }} , 
 	{ "name": "v6_1_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_1_1", "role": "EN_A" }} , 
 	{ "name": "v6_1_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_1_1", "role": "WEN_A" }} , 
 	{ "name": "v6_1_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_1", "role": "Din_A" }} , 
 	{ "name": "v6_1_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_1", "role": "Dout_A" }} , 
 	{ "name": "v6_1_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_2", "role": "Addr_A" }} , 
 	{ "name": "v6_1_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_1_2", "role": "EN_A" }} , 
 	{ "name": "v6_1_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_1_2", "role": "WEN_A" }} , 
 	{ "name": "v6_1_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_2", "role": "Din_A" }} , 
 	{ "name": "v6_1_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_2", "role": "Dout_A" }} , 
 	{ "name": "v6_1_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_3", "role": "Addr_A" }} , 
 	{ "name": "v6_1_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_1_3", "role": "EN_A" }} , 
 	{ "name": "v6_1_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_1_3", "role": "WEN_A" }} , 
 	{ "name": "v6_1_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_3", "role": "Din_A" }} , 
 	{ "name": "v6_1_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_3", "role": "Dout_A" }} , 
 	{ "name": "v6_1_4_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_4", "role": "Addr_A" }} , 
 	{ "name": "v6_1_4_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_1_4", "role": "EN_A" }} , 
 	{ "name": "v6_1_4_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_1_4", "role": "WEN_A" }} , 
 	{ "name": "v6_1_4_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_4", "role": "Din_A" }} , 
 	{ "name": "v6_1_4_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_4", "role": "Dout_A" }} , 
 	{ "name": "v6_1_5_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_5", "role": "Addr_A" }} , 
 	{ "name": "v6_1_5_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_1_5", "role": "EN_A" }} , 
 	{ "name": "v6_1_5_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_1_5", "role": "WEN_A" }} , 
 	{ "name": "v6_1_5_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_5", "role": "Din_A" }} , 
 	{ "name": "v6_1_5_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_5", "role": "Dout_A" }} , 
 	{ "name": "v6_1_6_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_6", "role": "Addr_A" }} , 
 	{ "name": "v6_1_6_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_1_6", "role": "EN_A" }} , 
 	{ "name": "v6_1_6_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_1_6", "role": "WEN_A" }} , 
 	{ "name": "v6_1_6_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_6", "role": "Din_A" }} , 
 	{ "name": "v6_1_6_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_6", "role": "Dout_A" }} , 
 	{ "name": "v6_1_7_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_7", "role": "Addr_A" }} , 
 	{ "name": "v6_1_7_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_1_7", "role": "EN_A" }} , 
 	{ "name": "v6_1_7_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_1_7", "role": "WEN_A" }} , 
 	{ "name": "v6_1_7_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_7", "role": "Din_A" }} , 
 	{ "name": "v6_1_7_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_1_7", "role": "Dout_A" }} , 
 	{ "name": "v6_2_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_0", "role": "Addr_A" }} , 
 	{ "name": "v6_2_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_2_0", "role": "EN_A" }} , 
 	{ "name": "v6_2_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_2_0", "role": "WEN_A" }} , 
 	{ "name": "v6_2_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_0", "role": "Din_A" }} , 
 	{ "name": "v6_2_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_0", "role": "Dout_A" }} , 
 	{ "name": "v6_2_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_1", "role": "Addr_A" }} , 
 	{ "name": "v6_2_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_2_1", "role": "EN_A" }} , 
 	{ "name": "v6_2_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_2_1", "role": "WEN_A" }} , 
 	{ "name": "v6_2_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_1", "role": "Din_A" }} , 
 	{ "name": "v6_2_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_1", "role": "Dout_A" }} , 
 	{ "name": "v6_2_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_2", "role": "Addr_A" }} , 
 	{ "name": "v6_2_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_2_2", "role": "EN_A" }} , 
 	{ "name": "v6_2_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_2_2", "role": "WEN_A" }} , 
 	{ "name": "v6_2_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_2", "role": "Din_A" }} , 
 	{ "name": "v6_2_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_2", "role": "Dout_A" }} , 
 	{ "name": "v6_2_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_3", "role": "Addr_A" }} , 
 	{ "name": "v6_2_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_2_3", "role": "EN_A" }} , 
 	{ "name": "v6_2_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_2_3", "role": "WEN_A" }} , 
 	{ "name": "v6_2_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_3", "role": "Din_A" }} , 
 	{ "name": "v6_2_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_3", "role": "Dout_A" }} , 
 	{ "name": "v6_2_4_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_4", "role": "Addr_A" }} , 
 	{ "name": "v6_2_4_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_2_4", "role": "EN_A" }} , 
 	{ "name": "v6_2_4_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_2_4", "role": "WEN_A" }} , 
 	{ "name": "v6_2_4_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_4", "role": "Din_A" }} , 
 	{ "name": "v6_2_4_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_4", "role": "Dout_A" }} , 
 	{ "name": "v6_2_5_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_5", "role": "Addr_A" }} , 
 	{ "name": "v6_2_5_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_2_5", "role": "EN_A" }} , 
 	{ "name": "v6_2_5_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_2_5", "role": "WEN_A" }} , 
 	{ "name": "v6_2_5_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_5", "role": "Din_A" }} , 
 	{ "name": "v6_2_5_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_5", "role": "Dout_A" }} , 
 	{ "name": "v6_2_6_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_6", "role": "Addr_A" }} , 
 	{ "name": "v6_2_6_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_2_6", "role": "EN_A" }} , 
 	{ "name": "v6_2_6_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_2_6", "role": "WEN_A" }} , 
 	{ "name": "v6_2_6_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_6", "role": "Din_A" }} , 
 	{ "name": "v6_2_6_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_6", "role": "Dout_A" }} , 
 	{ "name": "v6_2_7_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_7", "role": "Addr_A" }} , 
 	{ "name": "v6_2_7_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_2_7", "role": "EN_A" }} , 
 	{ "name": "v6_2_7_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_2_7", "role": "WEN_A" }} , 
 	{ "name": "v6_2_7_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_7", "role": "Din_A" }} , 
 	{ "name": "v6_2_7_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_2_7", "role": "Dout_A" }} , 
 	{ "name": "v6_3_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_0", "role": "Addr_A" }} , 
 	{ "name": "v6_3_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_3_0", "role": "EN_A" }} , 
 	{ "name": "v6_3_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_3_0", "role": "WEN_A" }} , 
 	{ "name": "v6_3_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_0", "role": "Din_A" }} , 
 	{ "name": "v6_3_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_0", "role": "Dout_A" }} , 
 	{ "name": "v6_3_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_1", "role": "Addr_A" }} , 
 	{ "name": "v6_3_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_3_1", "role": "EN_A" }} , 
 	{ "name": "v6_3_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_3_1", "role": "WEN_A" }} , 
 	{ "name": "v6_3_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_1", "role": "Din_A" }} , 
 	{ "name": "v6_3_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_1", "role": "Dout_A" }} , 
 	{ "name": "v6_3_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_2", "role": "Addr_A" }} , 
 	{ "name": "v6_3_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_3_2", "role": "EN_A" }} , 
 	{ "name": "v6_3_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_3_2", "role": "WEN_A" }} , 
 	{ "name": "v6_3_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_2", "role": "Din_A" }} , 
 	{ "name": "v6_3_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_2", "role": "Dout_A" }} , 
 	{ "name": "v6_3_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_3", "role": "Addr_A" }} , 
 	{ "name": "v6_3_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_3_3", "role": "EN_A" }} , 
 	{ "name": "v6_3_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_3_3", "role": "WEN_A" }} , 
 	{ "name": "v6_3_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_3", "role": "Din_A" }} , 
 	{ "name": "v6_3_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_3", "role": "Dout_A" }} , 
 	{ "name": "v6_3_4_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_4", "role": "Addr_A" }} , 
 	{ "name": "v6_3_4_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_3_4", "role": "EN_A" }} , 
 	{ "name": "v6_3_4_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_3_4", "role": "WEN_A" }} , 
 	{ "name": "v6_3_4_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_4", "role": "Din_A" }} , 
 	{ "name": "v6_3_4_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_4", "role": "Dout_A" }} , 
 	{ "name": "v6_3_5_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_5", "role": "Addr_A" }} , 
 	{ "name": "v6_3_5_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_3_5", "role": "EN_A" }} , 
 	{ "name": "v6_3_5_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_3_5", "role": "WEN_A" }} , 
 	{ "name": "v6_3_5_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_5", "role": "Din_A" }} , 
 	{ "name": "v6_3_5_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_5", "role": "Dout_A" }} , 
 	{ "name": "v6_3_6_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_6", "role": "Addr_A" }} , 
 	{ "name": "v6_3_6_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_3_6", "role": "EN_A" }} , 
 	{ "name": "v6_3_6_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_3_6", "role": "WEN_A" }} , 
 	{ "name": "v6_3_6_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_6", "role": "Din_A" }} , 
 	{ "name": "v6_3_6_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_6", "role": "Dout_A" }} , 
 	{ "name": "v6_3_7_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_7", "role": "Addr_A" }} , 
 	{ "name": "v6_3_7_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v6_3_7", "role": "EN_A" }} , 
 	{ "name": "v6_3_7_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v6_3_7", "role": "WEN_A" }} , 
 	{ "name": "v6_3_7_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_7", "role": "Din_A" }} , 
 	{ "name": "v6_3_7_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v6_3_7", "role": "Dout_A" }} , 
 	{ "name": "bitcast_ln70", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bitcast_ln70", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "test_3mm_256_Pipeline_VITIS_LOOP_251_6_VITIS_LOOP_252_7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4098", "EstimateLatencyMax" : "4098",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v6_0_0", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_0_1", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_0_2", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_0_3", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_0_4", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_0_5", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_0_6", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_0_7", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_1_0", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_1_1", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_1_2", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_1_3", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_1_4", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_1_5", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_1_6", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_1_7", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_2_0", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_2_1", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_2_2", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_2_3", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_2_4", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_2_5", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_2_6", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_2_7", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_3_0", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_3_1", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_3_2", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_3_3", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_3_4", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_3_5", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_3_6", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v6_3_7", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "bitcast_ln70", "Type" : "None", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_251_6_VITIS_LOOP_252_7", "PipelineType" : "NotSupport"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	test_3mm_256_Pipeline_VITIS_LOOP_251_6_VITIS_LOOP_252_7 {
		v6_0_0 {Type O LastRead -1 FirstWrite 1}
		v6_0_1 {Type O LastRead -1 FirstWrite 1}
		v6_0_2 {Type O LastRead -1 FirstWrite 1}
		v6_0_3 {Type O LastRead -1 FirstWrite 1}
		v6_0_4 {Type O LastRead -1 FirstWrite 1}
		v6_0_5 {Type O LastRead -1 FirstWrite 1}
		v6_0_6 {Type O LastRead -1 FirstWrite 1}
		v6_0_7 {Type O LastRead -1 FirstWrite 1}
		v6_1_0 {Type O LastRead -1 FirstWrite 1}
		v6_1_1 {Type O LastRead -1 FirstWrite 1}
		v6_1_2 {Type O LastRead -1 FirstWrite 1}
		v6_1_3 {Type O LastRead -1 FirstWrite 1}
		v6_1_4 {Type O LastRead -1 FirstWrite 1}
		v6_1_5 {Type O LastRead -1 FirstWrite 1}
		v6_1_6 {Type O LastRead -1 FirstWrite 1}
		v6_1_7 {Type O LastRead -1 FirstWrite 1}
		v6_2_0 {Type O LastRead -1 FirstWrite 1}
		v6_2_1 {Type O LastRead -1 FirstWrite 1}
		v6_2_2 {Type O LastRead -1 FirstWrite 1}
		v6_2_3 {Type O LastRead -1 FirstWrite 1}
		v6_2_4 {Type O LastRead -1 FirstWrite 1}
		v6_2_5 {Type O LastRead -1 FirstWrite 1}
		v6_2_6 {Type O LastRead -1 FirstWrite 1}
		v6_2_7 {Type O LastRead -1 FirstWrite 1}
		v6_3_0 {Type O LastRead -1 FirstWrite 1}
		v6_3_1 {Type O LastRead -1 FirstWrite 1}
		v6_3_2 {Type O LastRead -1 FirstWrite 1}
		v6_3_3 {Type O LastRead -1 FirstWrite 1}
		v6_3_4 {Type O LastRead -1 FirstWrite 1}
		v6_3_5 {Type O LastRead -1 FirstWrite 1}
		v6_3_6 {Type O LastRead -1 FirstWrite 1}
		v6_3_7 {Type O LastRead -1 FirstWrite 1}
		bitcast_ln70 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4098", "Max" : "4098"}
	, {"Name" : "Interval", "Min" : "4098", "Max" : "4098"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	v6_0_0 { bram {  { v6_0_0_Addr_A MemPortADDR2 1 32 }  { v6_0_0_EN_A MemPortCE2 1 1 }  { v6_0_0_WEN_A MemPortWE2 1 4 }  { v6_0_0_Din_A MemPortDIN2 1 32 }  { v6_0_0_Dout_A MemPortDOUT2 0 32 } } }
	v6_0_1 { bram {  { v6_0_1_Addr_A MemPortADDR2 1 32 }  { v6_0_1_EN_A MemPortCE2 1 1 }  { v6_0_1_WEN_A MemPortWE2 1 4 }  { v6_0_1_Din_A MemPortDIN2 1 32 }  { v6_0_1_Dout_A MemPortDOUT2 0 32 } } }
	v6_0_2 { bram {  { v6_0_2_Addr_A MemPortADDR2 1 32 }  { v6_0_2_EN_A MemPortCE2 1 1 }  { v6_0_2_WEN_A MemPortWE2 1 4 }  { v6_0_2_Din_A MemPortDIN2 1 32 }  { v6_0_2_Dout_A MemPortDOUT2 0 32 } } }
	v6_0_3 { bram {  { v6_0_3_Addr_A MemPortADDR2 1 32 }  { v6_0_3_EN_A MemPortCE2 1 1 }  { v6_0_3_WEN_A MemPortWE2 1 4 }  { v6_0_3_Din_A MemPortDIN2 1 32 }  { v6_0_3_Dout_A MemPortDOUT2 0 32 } } }
	v6_0_4 { bram {  { v6_0_4_Addr_A MemPortADDR2 1 32 }  { v6_0_4_EN_A MemPortCE2 1 1 }  { v6_0_4_WEN_A MemPortWE2 1 4 }  { v6_0_4_Din_A MemPortDIN2 1 32 }  { v6_0_4_Dout_A MemPortDOUT2 0 32 } } }
	v6_0_5 { bram {  { v6_0_5_Addr_A MemPortADDR2 1 32 }  { v6_0_5_EN_A MemPortCE2 1 1 }  { v6_0_5_WEN_A MemPortWE2 1 4 }  { v6_0_5_Din_A MemPortDIN2 1 32 }  { v6_0_5_Dout_A MemPortDOUT2 0 32 } } }
	v6_0_6 { bram {  { v6_0_6_Addr_A MemPortADDR2 1 32 }  { v6_0_6_EN_A MemPortCE2 1 1 }  { v6_0_6_WEN_A MemPortWE2 1 4 }  { v6_0_6_Din_A MemPortDIN2 1 32 }  { v6_0_6_Dout_A MemPortDOUT2 0 32 } } }
	v6_0_7 { bram {  { v6_0_7_Addr_A MemPortADDR2 1 32 }  { v6_0_7_EN_A MemPortCE2 1 1 }  { v6_0_7_WEN_A MemPortWE2 1 4 }  { v6_0_7_Din_A MemPortDIN2 1 32 }  { v6_0_7_Dout_A MemPortDOUT2 0 32 } } }
	v6_1_0 { bram {  { v6_1_0_Addr_A MemPortADDR2 1 32 }  { v6_1_0_EN_A MemPortCE2 1 1 }  { v6_1_0_WEN_A MemPortWE2 1 4 }  { v6_1_0_Din_A MemPortDIN2 1 32 }  { v6_1_0_Dout_A MemPortDOUT2 0 32 } } }
	v6_1_1 { bram {  { v6_1_1_Addr_A MemPortADDR2 1 32 }  { v6_1_1_EN_A MemPortCE2 1 1 }  { v6_1_1_WEN_A MemPortWE2 1 4 }  { v6_1_1_Din_A MemPortDIN2 1 32 }  { v6_1_1_Dout_A MemPortDOUT2 0 32 } } }
	v6_1_2 { bram {  { v6_1_2_Addr_A MemPortADDR2 1 32 }  { v6_1_2_EN_A MemPortCE2 1 1 }  { v6_1_2_WEN_A MemPortWE2 1 4 }  { v6_1_2_Din_A MemPortDIN2 1 32 }  { v6_1_2_Dout_A MemPortDOUT2 0 32 } } }
	v6_1_3 { bram {  { v6_1_3_Addr_A MemPortADDR2 1 32 }  { v6_1_3_EN_A MemPortCE2 1 1 }  { v6_1_3_WEN_A MemPortWE2 1 4 }  { v6_1_3_Din_A MemPortDIN2 1 32 }  { v6_1_3_Dout_A MemPortDOUT2 0 32 } } }
	v6_1_4 { bram {  { v6_1_4_Addr_A MemPortADDR2 1 32 }  { v6_1_4_EN_A MemPortCE2 1 1 }  { v6_1_4_WEN_A MemPortWE2 1 4 }  { v6_1_4_Din_A MemPortDIN2 1 32 }  { v6_1_4_Dout_A MemPortDOUT2 0 32 } } }
	v6_1_5 { bram {  { v6_1_5_Addr_A MemPortADDR2 1 32 }  { v6_1_5_EN_A MemPortCE2 1 1 }  { v6_1_5_WEN_A MemPortWE2 1 4 }  { v6_1_5_Din_A MemPortDIN2 1 32 }  { v6_1_5_Dout_A MemPortDOUT2 0 32 } } }
	v6_1_6 { bram {  { v6_1_6_Addr_A MemPortADDR2 1 32 }  { v6_1_6_EN_A MemPortCE2 1 1 }  { v6_1_6_WEN_A MemPortWE2 1 4 }  { v6_1_6_Din_A MemPortDIN2 1 32 }  { v6_1_6_Dout_A MemPortDOUT2 0 32 } } }
	v6_1_7 { bram {  { v6_1_7_Addr_A MemPortADDR2 1 32 }  { v6_1_7_EN_A MemPortCE2 1 1 }  { v6_1_7_WEN_A MemPortWE2 1 4 }  { v6_1_7_Din_A MemPortDIN2 1 32 }  { v6_1_7_Dout_A MemPortDOUT2 0 32 } } }
	v6_2_0 { bram {  { v6_2_0_Addr_A MemPortADDR2 1 32 }  { v6_2_0_EN_A MemPortCE2 1 1 }  { v6_2_0_WEN_A MemPortWE2 1 4 }  { v6_2_0_Din_A MemPortDIN2 1 32 }  { v6_2_0_Dout_A MemPortDOUT2 0 32 } } }
	v6_2_1 { bram {  { v6_2_1_Addr_A MemPortADDR2 1 32 }  { v6_2_1_EN_A MemPortCE2 1 1 }  { v6_2_1_WEN_A MemPortWE2 1 4 }  { v6_2_1_Din_A MemPortDIN2 1 32 }  { v6_2_1_Dout_A MemPortDOUT2 0 32 } } }
	v6_2_2 { bram {  { v6_2_2_Addr_A MemPortADDR2 1 32 }  { v6_2_2_EN_A MemPortCE2 1 1 }  { v6_2_2_WEN_A MemPortWE2 1 4 }  { v6_2_2_Din_A MemPortDIN2 1 32 }  { v6_2_2_Dout_A MemPortDOUT2 0 32 } } }
	v6_2_3 { bram {  { v6_2_3_Addr_A MemPortADDR2 1 32 }  { v6_2_3_EN_A MemPortCE2 1 1 }  { v6_2_3_WEN_A MemPortWE2 1 4 }  { v6_2_3_Din_A MemPortDIN2 1 32 }  { v6_2_3_Dout_A MemPortDOUT2 0 32 } } }
	v6_2_4 { bram {  { v6_2_4_Addr_A MemPortADDR2 1 32 }  { v6_2_4_EN_A MemPortCE2 1 1 }  { v6_2_4_WEN_A MemPortWE2 1 4 }  { v6_2_4_Din_A MemPortDIN2 1 32 }  { v6_2_4_Dout_A MemPortDOUT2 0 32 } } }
	v6_2_5 { bram {  { v6_2_5_Addr_A MemPortADDR2 1 32 }  { v6_2_5_EN_A MemPortCE2 1 1 }  { v6_2_5_WEN_A MemPortWE2 1 4 }  { v6_2_5_Din_A MemPortDIN2 1 32 }  { v6_2_5_Dout_A MemPortDOUT2 0 32 } } }
	v6_2_6 { bram {  { v6_2_6_Addr_A MemPortADDR2 1 32 }  { v6_2_6_EN_A MemPortCE2 1 1 }  { v6_2_6_WEN_A MemPortWE2 1 4 }  { v6_2_6_Din_A MemPortDIN2 1 32 }  { v6_2_6_Dout_A MemPortDOUT2 0 32 } } }
	v6_2_7 { bram {  { v6_2_7_Addr_A MemPortADDR2 1 32 }  { v6_2_7_EN_A MemPortCE2 1 1 }  { v6_2_7_WEN_A MemPortWE2 1 4 }  { v6_2_7_Din_A MemPortDIN2 1 32 }  { v6_2_7_Dout_A MemPortDOUT2 0 32 } } }
	v6_3_0 { bram {  { v6_3_0_Addr_A MemPortADDR2 1 32 }  { v6_3_0_EN_A MemPortCE2 1 1 }  { v6_3_0_WEN_A MemPortWE2 1 4 }  { v6_3_0_Din_A MemPortDIN2 1 32 }  { v6_3_0_Dout_A MemPortDOUT2 0 32 } } }
	v6_3_1 { bram {  { v6_3_1_Addr_A MemPortADDR2 1 32 }  { v6_3_1_EN_A MemPortCE2 1 1 }  { v6_3_1_WEN_A MemPortWE2 1 4 }  { v6_3_1_Din_A MemPortDIN2 1 32 }  { v6_3_1_Dout_A MemPortDOUT2 0 32 } } }
	v6_3_2 { bram {  { v6_3_2_Addr_A MemPortADDR2 1 32 }  { v6_3_2_EN_A MemPortCE2 1 1 }  { v6_3_2_WEN_A MemPortWE2 1 4 }  { v6_3_2_Din_A MemPortDIN2 1 32 }  { v6_3_2_Dout_A MemPortDOUT2 0 32 } } }
	v6_3_3 { bram {  { v6_3_3_Addr_A MemPortADDR2 1 32 }  { v6_3_3_EN_A MemPortCE2 1 1 }  { v6_3_3_WEN_A MemPortWE2 1 4 }  { v6_3_3_Din_A MemPortDIN2 1 32 }  { v6_3_3_Dout_A MemPortDOUT2 0 32 } } }
	v6_3_4 { bram {  { v6_3_4_Addr_A MemPortADDR2 1 32 }  { v6_3_4_EN_A MemPortCE2 1 1 }  { v6_3_4_WEN_A MemPortWE2 1 4 }  { v6_3_4_Din_A MemPortDIN2 1 32 }  { v6_3_4_Dout_A MemPortDOUT2 0 32 } } }
	v6_3_5 { bram {  { v6_3_5_Addr_A MemPortADDR2 1 32 }  { v6_3_5_EN_A MemPortCE2 1 1 }  { v6_3_5_WEN_A MemPortWE2 1 4 }  { v6_3_5_Din_A MemPortDIN2 1 32 }  { v6_3_5_Dout_A MemPortDOUT2 0 32 } } }
	v6_3_6 { bram {  { v6_3_6_Addr_A MemPortADDR2 1 32 }  { v6_3_6_EN_A MemPortCE2 1 1 }  { v6_3_6_WEN_A MemPortWE2 1 4 }  { v6_3_6_Din_A MemPortDIN2 1 32 }  { v6_3_6_Dout_A MemPortDOUT2 0 32 } } }
	v6_3_7 { bram {  { v6_3_7_Addr_A MemPortADDR2 1 32 }  { v6_3_7_EN_A MemPortCE2 1 1 }  { v6_3_7_WEN_A MemPortWE2 1 4 }  { v6_3_7_Din_A MemPortDIN2 1 32 }  { v6_3_7_Dout_A MemPortDOUT2 0 32 } } }
	bitcast_ln70 { ap_none {  { bitcast_ln70 in_data 0 32 } } }
}
