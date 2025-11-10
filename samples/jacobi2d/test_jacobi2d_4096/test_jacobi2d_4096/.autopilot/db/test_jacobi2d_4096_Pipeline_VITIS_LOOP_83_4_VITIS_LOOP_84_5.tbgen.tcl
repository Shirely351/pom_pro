set moduleName test_jacobi2d_4096_Pipeline_VITIS_LOOP_83_4_VITIS_LOOP_84_5
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
set C_modelName {test_jacobi2d_4096_Pipeline_VITIS_LOOP_83_4_VITIS_LOOP_84_5}
set C_modelType { void 0 }
set C_modelArgList {
	{ v0 float 32 regular  }
	{ v2_0_1 int 32 regular {bram 1048576 { 1 3 } 1 1 }  }
	{ v2_0_3 int 32 regular {bram 1048576 { 1 3 } 1 1 }  }
	{ v2_1_1 int 32 regular {bram 1048576 { 1 3 } 1 1 }  }
	{ v2_1_3 int 32 regular {bram 1048576 { 1 3 } 1 1 }  }
	{ v2_2_1 int 32 regular {bram 1048576 { 1 3 } 1 1 }  }
	{ v2_2_3 int 32 regular {bram 1048576 { 1 3 } 1 1 }  }
	{ v2_3_1 int 32 regular {bram 1048576 { 1 3 } 1 1 }  }
	{ v2_3_3 int 32 regular {bram 1048576 { 1 3 } 1 1 }  }
	{ v1_0_1 int 32 regular {bram 1048576 { 0 3 } 0 1 }  }
	{ v1_0_3 int 32 regular {bram 1048576 { 0 3 } 0 1 }  }
	{ v1_1_1 int 32 regular {bram 1048576 { 0 3 } 0 1 }  }
	{ v1_1_3 int 32 regular {bram 1048576 { 0 3 } 0 1 }  }
	{ v1_2_1 int 32 regular {bram 1048576 { 0 3 } 0 1 }  }
	{ v1_2_3 int 32 regular {bram 1048576 { 0 3 } 0 1 }  }
	{ v1_3_1 int 32 regular {bram 1048576 { 0 3 } 0 1 }  }
	{ v1_3_3 int 32 regular {bram 1048576 { 0 3 } 0 1 }  }
	{ v2_0_0 int 32 regular {bram 1048576 { 1 3 } 1 1 }  }
	{ v2_0_2 int 32 regular {bram 1048576 { 1 3 } 1 1 }  }
	{ v2_1_0 int 32 regular {bram 1048576 { 1 3 } 1 1 }  }
	{ v2_1_2 int 32 regular {bram 1048576 { 1 3 } 1 1 }  }
	{ v2_2_0 int 32 regular {bram 1048576 { 1 3 } 1 1 }  }
	{ v2_2_2 int 32 regular {bram 1048576 { 1 3 } 1 1 }  }
	{ v2_3_0 int 32 regular {bram 1048576 { 1 3 } 1 1 }  }
	{ v2_3_2 int 32 regular {bram 1048576 { 1 3 } 1 1 }  }
	{ v1_0_0 int 32 regular {bram 1048576 { 0 3 } 0 1 }  }
	{ v1_0_2 int 32 regular {bram 1048576 { 0 3 } 0 1 }  }
	{ v1_1_0 int 32 regular {bram 1048576 { 0 3 } 0 1 }  }
	{ v1_1_2 int 32 regular {bram 1048576 { 0 3 } 0 1 }  }
	{ v1_2_0 int 32 regular {bram 1048576 { 0 3 } 0 1 }  }
	{ v1_2_2 int 32 regular {bram 1048576 { 0 3 } 0 1 }  }
	{ v1_3_0 int 32 regular {bram 1048576 { 0 3 } 0 1 }  }
	{ v1_3_2 int 32 regular {bram 1048576 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v0", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v2_0_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v2_0_3", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v2_1_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v2_1_3", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v2_2_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v2_2_3", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v2_3_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v2_3_3", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v1_0_1", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_0_3", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_1_1", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_1_3", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_2_1", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_2_3", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_3_1", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_3_3", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v2_0_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v2_0_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v2_1_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v2_1_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v2_2_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v2_2_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v2_3_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v2_3_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "v1_0_0", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_0_2", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_1_0", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_1_2", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_2_0", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_2_2", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_3_0", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "v1_3_2", "interface" : "bram", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 263
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ v0 sc_in sc_lv 32 signal 0 } 
	{ v2_0_1_Addr_A sc_out sc_lv 32 signal 1 } 
	{ v2_0_1_EN_A sc_out sc_logic 1 signal 1 } 
	{ v2_0_1_WEN_A sc_out sc_lv 4 signal 1 } 
	{ v2_0_1_Din_A sc_out sc_lv 32 signal 1 } 
	{ v2_0_1_Dout_A sc_in sc_lv 32 signal 1 } 
	{ v2_0_3_Addr_A sc_out sc_lv 32 signal 2 } 
	{ v2_0_3_EN_A sc_out sc_logic 1 signal 2 } 
	{ v2_0_3_WEN_A sc_out sc_lv 4 signal 2 } 
	{ v2_0_3_Din_A sc_out sc_lv 32 signal 2 } 
	{ v2_0_3_Dout_A sc_in sc_lv 32 signal 2 } 
	{ v2_1_1_Addr_A sc_out sc_lv 32 signal 3 } 
	{ v2_1_1_EN_A sc_out sc_logic 1 signal 3 } 
	{ v2_1_1_WEN_A sc_out sc_lv 4 signal 3 } 
	{ v2_1_1_Din_A sc_out sc_lv 32 signal 3 } 
	{ v2_1_1_Dout_A sc_in sc_lv 32 signal 3 } 
	{ v2_1_3_Addr_A sc_out sc_lv 32 signal 4 } 
	{ v2_1_3_EN_A sc_out sc_logic 1 signal 4 } 
	{ v2_1_3_WEN_A sc_out sc_lv 4 signal 4 } 
	{ v2_1_3_Din_A sc_out sc_lv 32 signal 4 } 
	{ v2_1_3_Dout_A sc_in sc_lv 32 signal 4 } 
	{ v2_2_1_Addr_A sc_out sc_lv 32 signal 5 } 
	{ v2_2_1_EN_A sc_out sc_logic 1 signal 5 } 
	{ v2_2_1_WEN_A sc_out sc_lv 4 signal 5 } 
	{ v2_2_1_Din_A sc_out sc_lv 32 signal 5 } 
	{ v2_2_1_Dout_A sc_in sc_lv 32 signal 5 } 
	{ v2_2_3_Addr_A sc_out sc_lv 32 signal 6 } 
	{ v2_2_3_EN_A sc_out sc_logic 1 signal 6 } 
	{ v2_2_3_WEN_A sc_out sc_lv 4 signal 6 } 
	{ v2_2_3_Din_A sc_out sc_lv 32 signal 6 } 
	{ v2_2_3_Dout_A sc_in sc_lv 32 signal 6 } 
	{ v2_3_1_Addr_A sc_out sc_lv 32 signal 7 } 
	{ v2_3_1_EN_A sc_out sc_logic 1 signal 7 } 
	{ v2_3_1_WEN_A sc_out sc_lv 4 signal 7 } 
	{ v2_3_1_Din_A sc_out sc_lv 32 signal 7 } 
	{ v2_3_1_Dout_A sc_in sc_lv 32 signal 7 } 
	{ v2_3_3_Addr_A sc_out sc_lv 32 signal 8 } 
	{ v2_3_3_EN_A sc_out sc_logic 1 signal 8 } 
	{ v2_3_3_WEN_A sc_out sc_lv 4 signal 8 } 
	{ v2_3_3_Din_A sc_out sc_lv 32 signal 8 } 
	{ v2_3_3_Dout_A sc_in sc_lv 32 signal 8 } 
	{ v1_0_1_Addr_A sc_out sc_lv 32 signal 9 } 
	{ v1_0_1_EN_A sc_out sc_logic 1 signal 9 } 
	{ v1_0_1_WEN_A sc_out sc_lv 4 signal 9 } 
	{ v1_0_1_Din_A sc_out sc_lv 32 signal 9 } 
	{ v1_0_1_Dout_A sc_in sc_lv 32 signal 9 } 
	{ v1_0_3_Addr_A sc_out sc_lv 32 signal 10 } 
	{ v1_0_3_EN_A sc_out sc_logic 1 signal 10 } 
	{ v1_0_3_WEN_A sc_out sc_lv 4 signal 10 } 
	{ v1_0_3_Din_A sc_out sc_lv 32 signal 10 } 
	{ v1_0_3_Dout_A sc_in sc_lv 32 signal 10 } 
	{ v1_1_1_Addr_A sc_out sc_lv 32 signal 11 } 
	{ v1_1_1_EN_A sc_out sc_logic 1 signal 11 } 
	{ v1_1_1_WEN_A sc_out sc_lv 4 signal 11 } 
	{ v1_1_1_Din_A sc_out sc_lv 32 signal 11 } 
	{ v1_1_1_Dout_A sc_in sc_lv 32 signal 11 } 
	{ v1_1_3_Addr_A sc_out sc_lv 32 signal 12 } 
	{ v1_1_3_EN_A sc_out sc_logic 1 signal 12 } 
	{ v1_1_3_WEN_A sc_out sc_lv 4 signal 12 } 
	{ v1_1_3_Din_A sc_out sc_lv 32 signal 12 } 
	{ v1_1_3_Dout_A sc_in sc_lv 32 signal 12 } 
	{ v1_2_1_Addr_A sc_out sc_lv 32 signal 13 } 
	{ v1_2_1_EN_A sc_out sc_logic 1 signal 13 } 
	{ v1_2_1_WEN_A sc_out sc_lv 4 signal 13 } 
	{ v1_2_1_Din_A sc_out sc_lv 32 signal 13 } 
	{ v1_2_1_Dout_A sc_in sc_lv 32 signal 13 } 
	{ v1_2_3_Addr_A sc_out sc_lv 32 signal 14 } 
	{ v1_2_3_EN_A sc_out sc_logic 1 signal 14 } 
	{ v1_2_3_WEN_A sc_out sc_lv 4 signal 14 } 
	{ v1_2_3_Din_A sc_out sc_lv 32 signal 14 } 
	{ v1_2_3_Dout_A sc_in sc_lv 32 signal 14 } 
	{ v1_3_1_Addr_A sc_out sc_lv 32 signal 15 } 
	{ v1_3_1_EN_A sc_out sc_logic 1 signal 15 } 
	{ v1_3_1_WEN_A sc_out sc_lv 4 signal 15 } 
	{ v1_3_1_Din_A sc_out sc_lv 32 signal 15 } 
	{ v1_3_1_Dout_A sc_in sc_lv 32 signal 15 } 
	{ v1_3_3_Addr_A sc_out sc_lv 32 signal 16 } 
	{ v1_3_3_EN_A sc_out sc_logic 1 signal 16 } 
	{ v1_3_3_WEN_A sc_out sc_lv 4 signal 16 } 
	{ v1_3_3_Din_A sc_out sc_lv 32 signal 16 } 
	{ v1_3_3_Dout_A sc_in sc_lv 32 signal 16 } 
	{ v2_0_0_Addr_A sc_out sc_lv 32 signal 17 } 
	{ v2_0_0_EN_A sc_out sc_logic 1 signal 17 } 
	{ v2_0_0_WEN_A sc_out sc_lv 4 signal 17 } 
	{ v2_0_0_Din_A sc_out sc_lv 32 signal 17 } 
	{ v2_0_0_Dout_A sc_in sc_lv 32 signal 17 } 
	{ v2_0_2_Addr_A sc_out sc_lv 32 signal 18 } 
	{ v2_0_2_EN_A sc_out sc_logic 1 signal 18 } 
	{ v2_0_2_WEN_A sc_out sc_lv 4 signal 18 } 
	{ v2_0_2_Din_A sc_out sc_lv 32 signal 18 } 
	{ v2_0_2_Dout_A sc_in sc_lv 32 signal 18 } 
	{ v2_1_0_Addr_A sc_out sc_lv 32 signal 19 } 
	{ v2_1_0_EN_A sc_out sc_logic 1 signal 19 } 
	{ v2_1_0_WEN_A sc_out sc_lv 4 signal 19 } 
	{ v2_1_0_Din_A sc_out sc_lv 32 signal 19 } 
	{ v2_1_0_Dout_A sc_in sc_lv 32 signal 19 } 
	{ v2_1_2_Addr_A sc_out sc_lv 32 signal 20 } 
	{ v2_1_2_EN_A sc_out sc_logic 1 signal 20 } 
	{ v2_1_2_WEN_A sc_out sc_lv 4 signal 20 } 
	{ v2_1_2_Din_A sc_out sc_lv 32 signal 20 } 
	{ v2_1_2_Dout_A sc_in sc_lv 32 signal 20 } 
	{ v2_2_0_Addr_A sc_out sc_lv 32 signal 21 } 
	{ v2_2_0_EN_A sc_out sc_logic 1 signal 21 } 
	{ v2_2_0_WEN_A sc_out sc_lv 4 signal 21 } 
	{ v2_2_0_Din_A sc_out sc_lv 32 signal 21 } 
	{ v2_2_0_Dout_A sc_in sc_lv 32 signal 21 } 
	{ v2_2_2_Addr_A sc_out sc_lv 32 signal 22 } 
	{ v2_2_2_EN_A sc_out sc_logic 1 signal 22 } 
	{ v2_2_2_WEN_A sc_out sc_lv 4 signal 22 } 
	{ v2_2_2_Din_A sc_out sc_lv 32 signal 22 } 
	{ v2_2_2_Dout_A sc_in sc_lv 32 signal 22 } 
	{ v2_3_0_Addr_A sc_out sc_lv 32 signal 23 } 
	{ v2_3_0_EN_A sc_out sc_logic 1 signal 23 } 
	{ v2_3_0_WEN_A sc_out sc_lv 4 signal 23 } 
	{ v2_3_0_Din_A sc_out sc_lv 32 signal 23 } 
	{ v2_3_0_Dout_A sc_in sc_lv 32 signal 23 } 
	{ v2_3_2_Addr_A sc_out sc_lv 32 signal 24 } 
	{ v2_3_2_EN_A sc_out sc_logic 1 signal 24 } 
	{ v2_3_2_WEN_A sc_out sc_lv 4 signal 24 } 
	{ v2_3_2_Din_A sc_out sc_lv 32 signal 24 } 
	{ v2_3_2_Dout_A sc_in sc_lv 32 signal 24 } 
	{ v1_0_0_Addr_A sc_out sc_lv 32 signal 25 } 
	{ v1_0_0_EN_A sc_out sc_logic 1 signal 25 } 
	{ v1_0_0_WEN_A sc_out sc_lv 4 signal 25 } 
	{ v1_0_0_Din_A sc_out sc_lv 32 signal 25 } 
	{ v1_0_0_Dout_A sc_in sc_lv 32 signal 25 } 
	{ v1_0_2_Addr_A sc_out sc_lv 32 signal 26 } 
	{ v1_0_2_EN_A sc_out sc_logic 1 signal 26 } 
	{ v1_0_2_WEN_A sc_out sc_lv 4 signal 26 } 
	{ v1_0_2_Din_A sc_out sc_lv 32 signal 26 } 
	{ v1_0_2_Dout_A sc_in sc_lv 32 signal 26 } 
	{ v1_1_0_Addr_A sc_out sc_lv 32 signal 27 } 
	{ v1_1_0_EN_A sc_out sc_logic 1 signal 27 } 
	{ v1_1_0_WEN_A sc_out sc_lv 4 signal 27 } 
	{ v1_1_0_Din_A sc_out sc_lv 32 signal 27 } 
	{ v1_1_0_Dout_A sc_in sc_lv 32 signal 27 } 
	{ v1_1_2_Addr_A sc_out sc_lv 32 signal 28 } 
	{ v1_1_2_EN_A sc_out sc_logic 1 signal 28 } 
	{ v1_1_2_WEN_A sc_out sc_lv 4 signal 28 } 
	{ v1_1_2_Din_A sc_out sc_lv 32 signal 28 } 
	{ v1_1_2_Dout_A sc_in sc_lv 32 signal 28 } 
	{ v1_2_0_Addr_A sc_out sc_lv 32 signal 29 } 
	{ v1_2_0_EN_A sc_out sc_logic 1 signal 29 } 
	{ v1_2_0_WEN_A sc_out sc_lv 4 signal 29 } 
	{ v1_2_0_Din_A sc_out sc_lv 32 signal 29 } 
	{ v1_2_0_Dout_A sc_in sc_lv 32 signal 29 } 
	{ v1_2_2_Addr_A sc_out sc_lv 32 signal 30 } 
	{ v1_2_2_EN_A sc_out sc_logic 1 signal 30 } 
	{ v1_2_2_WEN_A sc_out sc_lv 4 signal 30 } 
	{ v1_2_2_Din_A sc_out sc_lv 32 signal 30 } 
	{ v1_2_2_Dout_A sc_in sc_lv 32 signal 30 } 
	{ v1_3_0_Addr_A sc_out sc_lv 32 signal 31 } 
	{ v1_3_0_EN_A sc_out sc_logic 1 signal 31 } 
	{ v1_3_0_WEN_A sc_out sc_lv 4 signal 31 } 
	{ v1_3_0_Din_A sc_out sc_lv 32 signal 31 } 
	{ v1_3_0_Dout_A sc_in sc_lv 32 signal 31 } 
	{ v1_3_2_Addr_A sc_out sc_lv 32 signal 32 } 
	{ v1_3_2_EN_A sc_out sc_logic 1 signal 32 } 
	{ v1_3_2_WEN_A sc_out sc_lv 4 signal 32 } 
	{ v1_3_2_Din_A sc_out sc_lv 32 signal 32 } 
	{ v1_3_2_Dout_A sc_in sc_lv 32 signal 32 } 
	{ grp_fu_301_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_301_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_301_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_301_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_301_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_305_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_305_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_305_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_305_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_305_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_309_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_309_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_309_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_309_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_309_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_313_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_313_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_313_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_313_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_313_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_317_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_317_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_317_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_317_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_317_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_321_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_321_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_321_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_321_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_321_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_325_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_325_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_325_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_325_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_325_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_329_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_329_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_329_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_329_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_329_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_333_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_333_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_333_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_333_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_333_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_337_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_337_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_337_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_337_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_337_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_341_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_341_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_341_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_341_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_341_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_345_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_345_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_345_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_345_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_345_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_349_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_349_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_349_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_349_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_349_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_353_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_353_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_353_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_353_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_353_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_357_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_357_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_357_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_357_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_357_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_361_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_361_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_361_p_opcode sc_out sc_lv 2 signal -1 } 
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
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "v0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v0", "role": "default" }} , 
 	{ "name": "v2_0_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_0_1", "role": "Addr_A" }} , 
 	{ "name": "v2_0_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_0_1", "role": "EN_A" }} , 
 	{ "name": "v2_0_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2_0_1", "role": "WEN_A" }} , 
 	{ "name": "v2_0_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_0_1", "role": "Din_A" }} , 
 	{ "name": "v2_0_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_0_1", "role": "Dout_A" }} , 
 	{ "name": "v2_0_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_0_3", "role": "Addr_A" }} , 
 	{ "name": "v2_0_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_0_3", "role": "EN_A" }} , 
 	{ "name": "v2_0_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2_0_3", "role": "WEN_A" }} , 
 	{ "name": "v2_0_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_0_3", "role": "Din_A" }} , 
 	{ "name": "v2_0_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_0_3", "role": "Dout_A" }} , 
 	{ "name": "v2_1_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_1_1", "role": "Addr_A" }} , 
 	{ "name": "v2_1_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_1_1", "role": "EN_A" }} , 
 	{ "name": "v2_1_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2_1_1", "role": "WEN_A" }} , 
 	{ "name": "v2_1_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_1_1", "role": "Din_A" }} , 
 	{ "name": "v2_1_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_1_1", "role": "Dout_A" }} , 
 	{ "name": "v2_1_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_1_3", "role": "Addr_A" }} , 
 	{ "name": "v2_1_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_1_3", "role": "EN_A" }} , 
 	{ "name": "v2_1_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2_1_3", "role": "WEN_A" }} , 
 	{ "name": "v2_1_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_1_3", "role": "Din_A" }} , 
 	{ "name": "v2_1_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_1_3", "role": "Dout_A" }} , 
 	{ "name": "v2_2_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_2_1", "role": "Addr_A" }} , 
 	{ "name": "v2_2_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_2_1", "role": "EN_A" }} , 
 	{ "name": "v2_2_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2_2_1", "role": "WEN_A" }} , 
 	{ "name": "v2_2_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_2_1", "role": "Din_A" }} , 
 	{ "name": "v2_2_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_2_1", "role": "Dout_A" }} , 
 	{ "name": "v2_2_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_2_3", "role": "Addr_A" }} , 
 	{ "name": "v2_2_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_2_3", "role": "EN_A" }} , 
 	{ "name": "v2_2_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2_2_3", "role": "WEN_A" }} , 
 	{ "name": "v2_2_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_2_3", "role": "Din_A" }} , 
 	{ "name": "v2_2_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_2_3", "role": "Dout_A" }} , 
 	{ "name": "v2_3_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_3_1", "role": "Addr_A" }} , 
 	{ "name": "v2_3_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_3_1", "role": "EN_A" }} , 
 	{ "name": "v2_3_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2_3_1", "role": "WEN_A" }} , 
 	{ "name": "v2_3_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_3_1", "role": "Din_A" }} , 
 	{ "name": "v2_3_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_3_1", "role": "Dout_A" }} , 
 	{ "name": "v2_3_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_3_3", "role": "Addr_A" }} , 
 	{ "name": "v2_3_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_3_3", "role": "EN_A" }} , 
 	{ "name": "v2_3_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2_3_3", "role": "WEN_A" }} , 
 	{ "name": "v2_3_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_3_3", "role": "Din_A" }} , 
 	{ "name": "v2_3_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_3_3", "role": "Dout_A" }} , 
 	{ "name": "v1_0_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_1", "role": "Addr_A" }} , 
 	{ "name": "v1_0_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_0_1", "role": "EN_A" }} , 
 	{ "name": "v1_0_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_0_1", "role": "WEN_A" }} , 
 	{ "name": "v1_0_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_1", "role": "Din_A" }} , 
 	{ "name": "v1_0_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_1", "role": "Dout_A" }} , 
 	{ "name": "v1_0_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_3", "role": "Addr_A" }} , 
 	{ "name": "v1_0_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_0_3", "role": "EN_A" }} , 
 	{ "name": "v1_0_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_0_3", "role": "WEN_A" }} , 
 	{ "name": "v1_0_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_3", "role": "Din_A" }} , 
 	{ "name": "v1_0_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_3", "role": "Dout_A" }} , 
 	{ "name": "v1_1_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_1", "role": "Addr_A" }} , 
 	{ "name": "v1_1_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_1_1", "role": "EN_A" }} , 
 	{ "name": "v1_1_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_1_1", "role": "WEN_A" }} , 
 	{ "name": "v1_1_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_1", "role": "Din_A" }} , 
 	{ "name": "v1_1_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_1", "role": "Dout_A" }} , 
 	{ "name": "v1_1_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_3", "role": "Addr_A" }} , 
 	{ "name": "v1_1_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_1_3", "role": "EN_A" }} , 
 	{ "name": "v1_1_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_1_3", "role": "WEN_A" }} , 
 	{ "name": "v1_1_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_3", "role": "Din_A" }} , 
 	{ "name": "v1_1_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_3", "role": "Dout_A" }} , 
 	{ "name": "v1_2_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_2_1", "role": "Addr_A" }} , 
 	{ "name": "v1_2_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_2_1", "role": "EN_A" }} , 
 	{ "name": "v1_2_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_2_1", "role": "WEN_A" }} , 
 	{ "name": "v1_2_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_2_1", "role": "Din_A" }} , 
 	{ "name": "v1_2_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_2_1", "role": "Dout_A" }} , 
 	{ "name": "v1_2_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_2_3", "role": "Addr_A" }} , 
 	{ "name": "v1_2_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_2_3", "role": "EN_A" }} , 
 	{ "name": "v1_2_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_2_3", "role": "WEN_A" }} , 
 	{ "name": "v1_2_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_2_3", "role": "Din_A" }} , 
 	{ "name": "v1_2_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_2_3", "role": "Dout_A" }} , 
 	{ "name": "v1_3_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_3_1", "role": "Addr_A" }} , 
 	{ "name": "v1_3_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_3_1", "role": "EN_A" }} , 
 	{ "name": "v1_3_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_3_1", "role": "WEN_A" }} , 
 	{ "name": "v1_3_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_3_1", "role": "Din_A" }} , 
 	{ "name": "v1_3_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_3_1", "role": "Dout_A" }} , 
 	{ "name": "v1_3_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_3_3", "role": "Addr_A" }} , 
 	{ "name": "v1_3_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_3_3", "role": "EN_A" }} , 
 	{ "name": "v1_3_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_3_3", "role": "WEN_A" }} , 
 	{ "name": "v1_3_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_3_3", "role": "Din_A" }} , 
 	{ "name": "v1_3_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_3_3", "role": "Dout_A" }} , 
 	{ "name": "v2_0_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_0_0", "role": "Addr_A" }} , 
 	{ "name": "v2_0_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_0_0", "role": "EN_A" }} , 
 	{ "name": "v2_0_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2_0_0", "role": "WEN_A" }} , 
 	{ "name": "v2_0_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_0_0", "role": "Din_A" }} , 
 	{ "name": "v2_0_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_0_0", "role": "Dout_A" }} , 
 	{ "name": "v2_0_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_0_2", "role": "Addr_A" }} , 
 	{ "name": "v2_0_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_0_2", "role": "EN_A" }} , 
 	{ "name": "v2_0_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2_0_2", "role": "WEN_A" }} , 
 	{ "name": "v2_0_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_0_2", "role": "Din_A" }} , 
 	{ "name": "v2_0_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_0_2", "role": "Dout_A" }} , 
 	{ "name": "v2_1_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_1_0", "role": "Addr_A" }} , 
 	{ "name": "v2_1_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_1_0", "role": "EN_A" }} , 
 	{ "name": "v2_1_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2_1_0", "role": "WEN_A" }} , 
 	{ "name": "v2_1_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_1_0", "role": "Din_A" }} , 
 	{ "name": "v2_1_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_1_0", "role": "Dout_A" }} , 
 	{ "name": "v2_1_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_1_2", "role": "Addr_A" }} , 
 	{ "name": "v2_1_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_1_2", "role": "EN_A" }} , 
 	{ "name": "v2_1_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2_1_2", "role": "WEN_A" }} , 
 	{ "name": "v2_1_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_1_2", "role": "Din_A" }} , 
 	{ "name": "v2_1_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_1_2", "role": "Dout_A" }} , 
 	{ "name": "v2_2_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_2_0", "role": "Addr_A" }} , 
 	{ "name": "v2_2_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_2_0", "role": "EN_A" }} , 
 	{ "name": "v2_2_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2_2_0", "role": "WEN_A" }} , 
 	{ "name": "v2_2_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_2_0", "role": "Din_A" }} , 
 	{ "name": "v2_2_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_2_0", "role": "Dout_A" }} , 
 	{ "name": "v2_2_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_2_2", "role": "Addr_A" }} , 
 	{ "name": "v2_2_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_2_2", "role": "EN_A" }} , 
 	{ "name": "v2_2_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2_2_2", "role": "WEN_A" }} , 
 	{ "name": "v2_2_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_2_2", "role": "Din_A" }} , 
 	{ "name": "v2_2_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_2_2", "role": "Dout_A" }} , 
 	{ "name": "v2_3_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_3_0", "role": "Addr_A" }} , 
 	{ "name": "v2_3_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_3_0", "role": "EN_A" }} , 
 	{ "name": "v2_3_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2_3_0", "role": "WEN_A" }} , 
 	{ "name": "v2_3_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_3_0", "role": "Din_A" }} , 
 	{ "name": "v2_3_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_3_0", "role": "Dout_A" }} , 
 	{ "name": "v2_3_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_3_2", "role": "Addr_A" }} , 
 	{ "name": "v2_3_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_3_2", "role": "EN_A" }} , 
 	{ "name": "v2_3_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2_3_2", "role": "WEN_A" }} , 
 	{ "name": "v2_3_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_3_2", "role": "Din_A" }} , 
 	{ "name": "v2_3_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_3_2", "role": "Dout_A" }} , 
 	{ "name": "v1_0_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_0", "role": "Addr_A" }} , 
 	{ "name": "v1_0_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_0_0", "role": "EN_A" }} , 
 	{ "name": "v1_0_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_0_0", "role": "WEN_A" }} , 
 	{ "name": "v1_0_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_0", "role": "Din_A" }} , 
 	{ "name": "v1_0_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_0", "role": "Dout_A" }} , 
 	{ "name": "v1_0_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_2", "role": "Addr_A" }} , 
 	{ "name": "v1_0_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_0_2", "role": "EN_A" }} , 
 	{ "name": "v1_0_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_0_2", "role": "WEN_A" }} , 
 	{ "name": "v1_0_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_2", "role": "Din_A" }} , 
 	{ "name": "v1_0_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_0_2", "role": "Dout_A" }} , 
 	{ "name": "v1_1_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_0", "role": "Addr_A" }} , 
 	{ "name": "v1_1_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_1_0", "role": "EN_A" }} , 
 	{ "name": "v1_1_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_1_0", "role": "WEN_A" }} , 
 	{ "name": "v1_1_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_0", "role": "Din_A" }} , 
 	{ "name": "v1_1_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_0", "role": "Dout_A" }} , 
 	{ "name": "v1_1_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_2", "role": "Addr_A" }} , 
 	{ "name": "v1_1_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_1_2", "role": "EN_A" }} , 
 	{ "name": "v1_1_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_1_2", "role": "WEN_A" }} , 
 	{ "name": "v1_1_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_2", "role": "Din_A" }} , 
 	{ "name": "v1_1_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_1_2", "role": "Dout_A" }} , 
 	{ "name": "v1_2_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_2_0", "role": "Addr_A" }} , 
 	{ "name": "v1_2_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_2_0", "role": "EN_A" }} , 
 	{ "name": "v1_2_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_2_0", "role": "WEN_A" }} , 
 	{ "name": "v1_2_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_2_0", "role": "Din_A" }} , 
 	{ "name": "v1_2_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_2_0", "role": "Dout_A" }} , 
 	{ "name": "v1_2_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_2_2", "role": "Addr_A" }} , 
 	{ "name": "v1_2_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_2_2", "role": "EN_A" }} , 
 	{ "name": "v1_2_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_2_2", "role": "WEN_A" }} , 
 	{ "name": "v1_2_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_2_2", "role": "Din_A" }} , 
 	{ "name": "v1_2_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_2_2", "role": "Dout_A" }} , 
 	{ "name": "v1_3_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_3_0", "role": "Addr_A" }} , 
 	{ "name": "v1_3_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_3_0", "role": "EN_A" }} , 
 	{ "name": "v1_3_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_3_0", "role": "WEN_A" }} , 
 	{ "name": "v1_3_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_3_0", "role": "Din_A" }} , 
 	{ "name": "v1_3_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_3_0", "role": "Dout_A" }} , 
 	{ "name": "v1_3_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_3_2", "role": "Addr_A" }} , 
 	{ "name": "v1_3_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v1_3_2", "role": "EN_A" }} , 
 	{ "name": "v1_3_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v1_3_2", "role": "WEN_A" }} , 
 	{ "name": "v1_3_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_3_2", "role": "Din_A" }} , 
 	{ "name": "v1_3_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v1_3_2", "role": "Dout_A" }} , 
 	{ "name": "grp_fu_301_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_301_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_301_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_301_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_301_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_301_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_301_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_301_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_301_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_301_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_305_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_305_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_305_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_305_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_305_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_305_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_305_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_305_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_305_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_305_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_309_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_309_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_309_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_309_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_309_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_309_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_309_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_309_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_309_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_309_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_313_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_313_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_313_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_313_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_313_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_313_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_313_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_313_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_313_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_313_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_317_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_317_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_317_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_317_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_317_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_317_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_317_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_317_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_317_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_317_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_321_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_321_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_321_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_321_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_321_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_321_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_321_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_321_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_321_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_321_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_325_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_325_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_325_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_325_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_325_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_325_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_325_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_325_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_325_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_325_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_329_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_329_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_329_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_329_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_329_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_329_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_329_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_329_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_329_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_329_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_333_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_333_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_333_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_333_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_333_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_333_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_333_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_333_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_333_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_333_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_337_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_337_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_337_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_337_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_337_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_337_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_337_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_337_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_337_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_337_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_341_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_341_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_341_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_341_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_341_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_341_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_341_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_341_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_341_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_341_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_345_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_345_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_345_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_345_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_345_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_345_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_345_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_345_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_345_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_345_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_349_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_349_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_349_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_349_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_349_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_349_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_349_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_349_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_349_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_349_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_353_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_353_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_353_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_353_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_353_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_353_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_353_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_353_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_353_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_353_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_357_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_357_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_357_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_357_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_357_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_357_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_357_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_357_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_357_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_357_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_361_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_361_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_361_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_361_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_361_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_361_p_opcode", "role": "default" }} , 
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
 	{ "name": "grp_fu_377_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_377_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37"],
		"CDFG" : "test_jacobi2d_4096_Pipeline_VITIS_LOOP_83_4_VITIS_LOOP_84_5",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "4190245", "EstimateLatencyMax" : "4190245",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v0", "Type" : "None", "Direction" : "I"},
			{"Name" : "v2_0_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v2_0_3", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v2_1_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v2_1_3", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v2_2_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v2_2_3", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v2_3_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v2_3_3", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v1_0_1", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_0_3", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_1_1", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_1_3", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_2_1", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_2_3", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_3_1", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_3_3", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v2_0_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v2_0_2", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v2_1_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v2_1_2", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v2_2_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v2_2_2", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v2_3_0", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v2_3_2", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v1_0_0", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_0_2", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_1_0", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_1_2", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_2_0", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_2_2", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_3_0", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v1_3_2", "Type" : "Bram", "Direction" : "O"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_83_4_VITIS_LOOP_84_5", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter1", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter36", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter36", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U79", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U80", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U81", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U82", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U83", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U84", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U85", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U86", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U87", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U88", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U89", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U90", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U91", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U92", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U93", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U94", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U95", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U96", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U97", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U98", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U99", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U100", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U101", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U102", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U103", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U104", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U105", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U106", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U107", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U108", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U109", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U110", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U111", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U112", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U113", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mux_21_32_1_1_U114", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	test_jacobi2d_4096_Pipeline_VITIS_LOOP_83_4_VITIS_LOOP_84_5 {
		v0 {Type I LastRead 0 FirstWrite -1}
		v2_0_1 {Type I LastRead 3 FirstWrite -1}
		v2_0_3 {Type I LastRead 3 FirstWrite -1}
		v2_1_1 {Type I LastRead 3 FirstWrite -1}
		v2_1_3 {Type I LastRead 3 FirstWrite -1}
		v2_2_1 {Type I LastRead 3 FirstWrite -1}
		v2_2_3 {Type I LastRead 3 FirstWrite -1}
		v2_3_1 {Type I LastRead 3 FirstWrite -1}
		v2_3_3 {Type I LastRead 3 FirstWrite -1}
		v1_0_1 {Type O LastRead -1 FirstWrite 36}
		v1_0_3 {Type O LastRead -1 FirstWrite 36}
		v1_1_1 {Type O LastRead -1 FirstWrite 36}
		v1_1_3 {Type O LastRead -1 FirstWrite 36}
		v1_2_1 {Type O LastRead -1 FirstWrite 36}
		v1_2_3 {Type O LastRead -1 FirstWrite 36}
		v1_3_1 {Type O LastRead -1 FirstWrite 36}
		v1_3_3 {Type O LastRead -1 FirstWrite 36}
		v2_0_0 {Type I LastRead 3 FirstWrite -1}
		v2_0_2 {Type I LastRead 3 FirstWrite -1}
		v2_1_0 {Type I LastRead 3 FirstWrite -1}
		v2_1_2 {Type I LastRead 3 FirstWrite -1}
		v2_2_0 {Type I LastRead 3 FirstWrite -1}
		v2_2_2 {Type I LastRead 3 FirstWrite -1}
		v2_3_0 {Type I LastRead 3 FirstWrite -1}
		v2_3_2 {Type I LastRead 3 FirstWrite -1}
		v1_0_0 {Type O LastRead -1 FirstWrite 36}
		v1_0_2 {Type O LastRead -1 FirstWrite 36}
		v1_1_0 {Type O LastRead -1 FirstWrite 36}
		v1_1_2 {Type O LastRead -1 FirstWrite 36}
		v1_2_0 {Type O LastRead -1 FirstWrite 36}
		v1_2_2 {Type O LastRead -1 FirstWrite 36}
		v1_3_0 {Type O LastRead -1 FirstWrite 36}
		v1_3_2 {Type O LastRead -1 FirstWrite 36}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4190245", "Max" : "4190245"}
	, {"Name" : "Interval", "Min" : "4190245", "Max" : "4190245"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	v0 { ap_none {  { v0 in_data 0 32 } } }
	v2_0_1 { bram {  { v2_0_1_Addr_A MemPortADDR2 1 32 }  { v2_0_1_EN_A MemPortCE2 1 1 }  { v2_0_1_WEN_A MemPortWE2 1 4 }  { v2_0_1_Din_A MemPortDIN2 1 32 }  { v2_0_1_Dout_A in_data 0 32 } } }
	v2_0_3 { bram {  { v2_0_3_Addr_A MemPortADDR2 1 32 }  { v2_0_3_EN_A MemPortCE2 1 1 }  { v2_0_3_WEN_A MemPortWE2 1 4 }  { v2_0_3_Din_A MemPortDIN2 1 32 }  { v2_0_3_Dout_A in_data 0 32 } } }
	v2_1_1 { bram {  { v2_1_1_Addr_A MemPortADDR2 1 32 }  { v2_1_1_EN_A MemPortCE2 1 1 }  { v2_1_1_WEN_A MemPortWE2 1 4 }  { v2_1_1_Din_A MemPortDIN2 1 32 }  { v2_1_1_Dout_A in_data 0 32 } } }
	v2_1_3 { bram {  { v2_1_3_Addr_A MemPortADDR2 1 32 }  { v2_1_3_EN_A MemPortCE2 1 1 }  { v2_1_3_WEN_A MemPortWE2 1 4 }  { v2_1_3_Din_A MemPortDIN2 1 32 }  { v2_1_3_Dout_A in_data 0 32 } } }
	v2_2_1 { bram {  { v2_2_1_Addr_A MemPortADDR2 1 32 }  { v2_2_1_EN_A MemPortCE2 1 1 }  { v2_2_1_WEN_A MemPortWE2 1 4 }  { v2_2_1_Din_A MemPortDIN2 1 32 }  { v2_2_1_Dout_A in_data 0 32 } } }
	v2_2_3 { bram {  { v2_2_3_Addr_A MemPortADDR2 1 32 }  { v2_2_3_EN_A MemPortCE2 1 1 }  { v2_2_3_WEN_A MemPortWE2 1 4 }  { v2_2_3_Din_A MemPortDIN2 1 32 }  { v2_2_3_Dout_A in_data 0 32 } } }
	v2_3_1 { bram {  { v2_3_1_Addr_A MemPortADDR2 1 32 }  { v2_3_1_EN_A MemPortCE2 1 1 }  { v2_3_1_WEN_A MemPortWE2 1 4 }  { v2_3_1_Din_A MemPortDIN2 1 32 }  { v2_3_1_Dout_A in_data 0 32 } } }
	v2_3_3 { bram {  { v2_3_3_Addr_A MemPortADDR2 1 32 }  { v2_3_3_EN_A MemPortCE2 1 1 }  { v2_3_3_WEN_A MemPortWE2 1 4 }  { v2_3_3_Din_A MemPortDIN2 1 32 }  { v2_3_3_Dout_A in_data 0 32 } } }
	v1_0_1 { bram {  { v1_0_1_Addr_A MemPortADDR2 1 32 }  { v1_0_1_EN_A MemPortCE2 1 1 }  { v1_0_1_WEN_A MemPortWE2 1 4 }  { v1_0_1_Din_A MemPortDIN2 1 32 }  { v1_0_1_Dout_A MemPortDOUT2 0 32 } } }
	v1_0_3 { bram {  { v1_0_3_Addr_A MemPortADDR2 1 32 }  { v1_0_3_EN_A MemPortCE2 1 1 }  { v1_0_3_WEN_A MemPortWE2 1 4 }  { v1_0_3_Din_A MemPortDIN2 1 32 }  { v1_0_3_Dout_A MemPortDOUT2 0 32 } } }
	v1_1_1 { bram {  { v1_1_1_Addr_A MemPortADDR2 1 32 }  { v1_1_1_EN_A MemPortCE2 1 1 }  { v1_1_1_WEN_A MemPortWE2 1 4 }  { v1_1_1_Din_A MemPortDIN2 1 32 }  { v1_1_1_Dout_A MemPortDOUT2 0 32 } } }
	v1_1_3 { bram {  { v1_1_3_Addr_A MemPortADDR2 1 32 }  { v1_1_3_EN_A MemPortCE2 1 1 }  { v1_1_3_WEN_A MemPortWE2 1 4 }  { v1_1_3_Din_A MemPortDIN2 1 32 }  { v1_1_3_Dout_A MemPortDOUT2 0 32 } } }
	v1_2_1 { bram {  { v1_2_1_Addr_A MemPortADDR2 1 32 }  { v1_2_1_EN_A MemPortCE2 1 1 }  { v1_2_1_WEN_A MemPortWE2 1 4 }  { v1_2_1_Din_A MemPortDIN2 1 32 }  { v1_2_1_Dout_A MemPortDOUT2 0 32 } } }
	v1_2_3 { bram {  { v1_2_3_Addr_A MemPortADDR2 1 32 }  { v1_2_3_EN_A MemPortCE2 1 1 }  { v1_2_3_WEN_A MemPortWE2 1 4 }  { v1_2_3_Din_A MemPortDIN2 1 32 }  { v1_2_3_Dout_A MemPortDOUT2 0 32 } } }
	v1_3_1 { bram {  { v1_3_1_Addr_A MemPortADDR2 1 32 }  { v1_3_1_EN_A MemPortCE2 1 1 }  { v1_3_1_WEN_A MemPortWE2 1 4 }  { v1_3_1_Din_A MemPortDIN2 1 32 }  { v1_3_1_Dout_A MemPortDOUT2 0 32 } } }
	v1_3_3 { bram {  { v1_3_3_Addr_A MemPortADDR2 1 32 }  { v1_3_3_EN_A MemPortCE2 1 1 }  { v1_3_3_WEN_A MemPortWE2 1 4 }  { v1_3_3_Din_A MemPortDIN2 1 32 }  { v1_3_3_Dout_A MemPortDOUT2 0 32 } } }
	v2_0_0 { bram {  { v2_0_0_Addr_A MemPortADDR2 1 32 }  { v2_0_0_EN_A MemPortCE2 1 1 }  { v2_0_0_WEN_A MemPortWE2 1 4 }  { v2_0_0_Din_A MemPortDIN2 1 32 }  { v2_0_0_Dout_A in_data 0 32 } } }
	v2_0_2 { bram {  { v2_0_2_Addr_A MemPortADDR2 1 32 }  { v2_0_2_EN_A MemPortCE2 1 1 }  { v2_0_2_WEN_A MemPortWE2 1 4 }  { v2_0_2_Din_A MemPortDIN2 1 32 }  { v2_0_2_Dout_A in_data 0 32 } } }
	v2_1_0 { bram {  { v2_1_0_Addr_A MemPortADDR2 1 32 }  { v2_1_0_EN_A MemPortCE2 1 1 }  { v2_1_0_WEN_A MemPortWE2 1 4 }  { v2_1_0_Din_A MemPortDIN2 1 32 }  { v2_1_0_Dout_A in_data 0 32 } } }
	v2_1_2 { bram {  { v2_1_2_Addr_A MemPortADDR2 1 32 }  { v2_1_2_EN_A MemPortCE2 1 1 }  { v2_1_2_WEN_A MemPortWE2 1 4 }  { v2_1_2_Din_A MemPortDIN2 1 32 }  { v2_1_2_Dout_A in_data 0 32 } } }
	v2_2_0 { bram {  { v2_2_0_Addr_A MemPortADDR2 1 32 }  { v2_2_0_EN_A MemPortCE2 1 1 }  { v2_2_0_WEN_A MemPortWE2 1 4 }  { v2_2_0_Din_A MemPortDIN2 1 32 }  { v2_2_0_Dout_A in_data 0 32 } } }
	v2_2_2 { bram {  { v2_2_2_Addr_A MemPortADDR2 1 32 }  { v2_2_2_EN_A MemPortCE2 1 1 }  { v2_2_2_WEN_A MemPortWE2 1 4 }  { v2_2_2_Din_A MemPortDIN2 1 32 }  { v2_2_2_Dout_A in_data 0 32 } } }
	v2_3_0 { bram {  { v2_3_0_Addr_A MemPortADDR2 1 32 }  { v2_3_0_EN_A MemPortCE2 1 1 }  { v2_3_0_WEN_A MemPortWE2 1 4 }  { v2_3_0_Din_A MemPortDIN2 1 32 }  { v2_3_0_Dout_A in_data 0 32 } } }
	v2_3_2 { bram {  { v2_3_2_Addr_A MemPortADDR2 1 32 }  { v2_3_2_EN_A MemPortCE2 1 1 }  { v2_3_2_WEN_A MemPortWE2 1 4 }  { v2_3_2_Din_A MemPortDIN2 1 32 }  { v2_3_2_Dout_A in_data 0 32 } } }
	v1_0_0 { bram {  { v1_0_0_Addr_A MemPortADDR2 1 32 }  { v1_0_0_EN_A MemPortCE2 1 1 }  { v1_0_0_WEN_A MemPortWE2 1 4 }  { v1_0_0_Din_A MemPortDIN2 1 32 }  { v1_0_0_Dout_A MemPortDOUT2 0 32 } } }
	v1_0_2 { bram {  { v1_0_2_Addr_A MemPortADDR2 1 32 }  { v1_0_2_EN_A MemPortCE2 1 1 }  { v1_0_2_WEN_A MemPortWE2 1 4 }  { v1_0_2_Din_A MemPortDIN2 1 32 }  { v1_0_2_Dout_A MemPortDOUT2 0 32 } } }
	v1_1_0 { bram {  { v1_1_0_Addr_A MemPortADDR2 1 32 }  { v1_1_0_EN_A MemPortCE2 1 1 }  { v1_1_0_WEN_A MemPortWE2 1 4 }  { v1_1_0_Din_A MemPortDIN2 1 32 }  { v1_1_0_Dout_A MemPortDOUT2 0 32 } } }
	v1_1_2 { bram {  { v1_1_2_Addr_A MemPortADDR2 1 32 }  { v1_1_2_EN_A MemPortCE2 1 1 }  { v1_1_2_WEN_A MemPortWE2 1 4 }  { v1_1_2_Din_A MemPortDIN2 1 32 }  { v1_1_2_Dout_A MemPortDOUT2 0 32 } } }
	v1_2_0 { bram {  { v1_2_0_Addr_A MemPortADDR2 1 32 }  { v1_2_0_EN_A MemPortCE2 1 1 }  { v1_2_0_WEN_A MemPortWE2 1 4 }  { v1_2_0_Din_A MemPortDIN2 1 32 }  { v1_2_0_Dout_A MemPortDOUT2 0 32 } } }
	v1_2_2 { bram {  { v1_2_2_Addr_A MemPortADDR2 1 32 }  { v1_2_2_EN_A MemPortCE2 1 1 }  { v1_2_2_WEN_A MemPortWE2 1 4 }  { v1_2_2_Din_A MemPortDIN2 1 32 }  { v1_2_2_Dout_A MemPortDOUT2 0 32 } } }
	v1_3_0 { bram {  { v1_3_0_Addr_A MemPortADDR2 1 32 }  { v1_3_0_EN_A MemPortCE2 1 1 }  { v1_3_0_WEN_A MemPortWE2 1 4 }  { v1_3_0_Din_A MemPortDIN2 1 32 }  { v1_3_0_Dout_A MemPortDOUT2 0 32 } } }
	v1_3_2 { bram {  { v1_3_2_Addr_A MemPortADDR2 1 32 }  { v1_3_2_EN_A MemPortCE2 1 1 }  { v1_3_2_WEN_A MemPortWE2 1 4 }  { v1_3_2_Din_A MemPortDIN2 1 32 }  { v1_3_2_Dout_A MemPortDOUT2 0 32 } } }
}
