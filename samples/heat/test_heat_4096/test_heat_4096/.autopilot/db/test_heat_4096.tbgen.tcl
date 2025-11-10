set moduleName test_heat_4096
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {test_heat_4096}
set C_modelType { void 0 }
set C_modelArgList {
	{ v0 float 32 regular {axi_slave 0}  }
	{ v1 float 32 regular {axi_slave 0}  }
	{ v2_0 int 32 regular {bram 2048 { 2 3 } 1 1 }  }
	{ v2_1 int 32 regular {bram 2048 { 2 3 } 1 1 }  }
	{ v3_0 int 32 regular {bram 1024 { 2 1 } 1 1 }  }
	{ v3_1 int 32 regular {bram 1024 { 2 1 } 1 1 }  }
	{ v3_2 int 32 regular {bram 1024 { 2 1 } 1 1 }  }
	{ v3_3 int 32 regular {bram 1024 { 2 1 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "v0", "interface" : "axi_slave", "bundle":"ctrl","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":16}, "offset_end" : {"in":23}} , 
 	{ "Name" : "v1", "interface" : "axi_slave", "bundle":"ctrl","type":"ap_none","bitwidth" : 32, "direction" : "READONLY", "offset" : {"in":24}, "offset_end" : {"in":31}} , 
 	{ "Name" : "v2_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v2_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v3_0", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v3_1", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v3_2", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "v3_3", "interface" : "bram", "bitwidth" : 32, "direction" : "READWRITE"} ]}
# RTL Port declarations: 
set portNum 90
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ v2_0_Addr_A sc_out sc_lv 32 signal 2 } 
	{ v2_0_EN_A sc_out sc_logic 1 signal 2 } 
	{ v2_0_WEN_A sc_out sc_lv 4 signal 2 } 
	{ v2_0_Din_A sc_out sc_lv 32 signal 2 } 
	{ v2_0_Dout_A sc_in sc_lv 32 signal 2 } 
	{ v2_0_Clk_A sc_out sc_logic 1 signal 2 } 
	{ v2_0_Rst_A sc_out sc_logic 1 signal 2 } 
	{ v2_1_Addr_A sc_out sc_lv 32 signal 3 } 
	{ v2_1_EN_A sc_out sc_logic 1 signal 3 } 
	{ v2_1_WEN_A sc_out sc_lv 4 signal 3 } 
	{ v2_1_Din_A sc_out sc_lv 32 signal 3 } 
	{ v2_1_Dout_A sc_in sc_lv 32 signal 3 } 
	{ v2_1_Clk_A sc_out sc_logic 1 signal 3 } 
	{ v2_1_Rst_A sc_out sc_logic 1 signal 3 } 
	{ v3_0_Addr_A sc_out sc_lv 32 signal 4 } 
	{ v3_0_EN_A sc_out sc_logic 1 signal 4 } 
	{ v3_0_WEN_A sc_out sc_lv 4 signal 4 } 
	{ v3_0_Din_A sc_out sc_lv 32 signal 4 } 
	{ v3_0_Dout_A sc_in sc_lv 32 signal 4 } 
	{ v3_0_Clk_A sc_out sc_logic 1 signal 4 } 
	{ v3_0_Rst_A sc_out sc_logic 1 signal 4 } 
	{ v3_0_Addr_B sc_out sc_lv 32 signal 4 } 
	{ v3_0_EN_B sc_out sc_logic 1 signal 4 } 
	{ v3_0_WEN_B sc_out sc_lv 4 signal 4 } 
	{ v3_0_Din_B sc_out sc_lv 32 signal 4 } 
	{ v3_0_Dout_B sc_in sc_lv 32 signal 4 } 
	{ v3_0_Clk_B sc_out sc_logic 1 signal 4 } 
	{ v3_0_Rst_B sc_out sc_logic 1 signal 4 } 
	{ v3_1_Addr_A sc_out sc_lv 32 signal 5 } 
	{ v3_1_EN_A sc_out sc_logic 1 signal 5 } 
	{ v3_1_WEN_A sc_out sc_lv 4 signal 5 } 
	{ v3_1_Din_A sc_out sc_lv 32 signal 5 } 
	{ v3_1_Dout_A sc_in sc_lv 32 signal 5 } 
	{ v3_1_Clk_A sc_out sc_logic 1 signal 5 } 
	{ v3_1_Rst_A sc_out sc_logic 1 signal 5 } 
	{ v3_1_Addr_B sc_out sc_lv 32 signal 5 } 
	{ v3_1_EN_B sc_out sc_logic 1 signal 5 } 
	{ v3_1_WEN_B sc_out sc_lv 4 signal 5 } 
	{ v3_1_Din_B sc_out sc_lv 32 signal 5 } 
	{ v3_1_Dout_B sc_in sc_lv 32 signal 5 } 
	{ v3_1_Clk_B sc_out sc_logic 1 signal 5 } 
	{ v3_1_Rst_B sc_out sc_logic 1 signal 5 } 
	{ v3_2_Addr_A sc_out sc_lv 32 signal 6 } 
	{ v3_2_EN_A sc_out sc_logic 1 signal 6 } 
	{ v3_2_WEN_A sc_out sc_lv 4 signal 6 } 
	{ v3_2_Din_A sc_out sc_lv 32 signal 6 } 
	{ v3_2_Dout_A sc_in sc_lv 32 signal 6 } 
	{ v3_2_Clk_A sc_out sc_logic 1 signal 6 } 
	{ v3_2_Rst_A sc_out sc_logic 1 signal 6 } 
	{ v3_2_Addr_B sc_out sc_lv 32 signal 6 } 
	{ v3_2_EN_B sc_out sc_logic 1 signal 6 } 
	{ v3_2_WEN_B sc_out sc_lv 4 signal 6 } 
	{ v3_2_Din_B sc_out sc_lv 32 signal 6 } 
	{ v3_2_Dout_B sc_in sc_lv 32 signal 6 } 
	{ v3_2_Clk_B sc_out sc_logic 1 signal 6 } 
	{ v3_2_Rst_B sc_out sc_logic 1 signal 6 } 
	{ v3_3_Addr_A sc_out sc_lv 32 signal 7 } 
	{ v3_3_EN_A sc_out sc_logic 1 signal 7 } 
	{ v3_3_WEN_A sc_out sc_lv 4 signal 7 } 
	{ v3_3_Din_A sc_out sc_lv 32 signal 7 } 
	{ v3_3_Dout_A sc_in sc_lv 32 signal 7 } 
	{ v3_3_Clk_A sc_out sc_logic 1 signal 7 } 
	{ v3_3_Rst_A sc_out sc_logic 1 signal 7 } 
	{ v3_3_Addr_B sc_out sc_lv 32 signal 7 } 
	{ v3_3_EN_B sc_out sc_logic 1 signal 7 } 
	{ v3_3_WEN_B sc_out sc_lv 4 signal 7 } 
	{ v3_3_Din_B sc_out sc_lv 32 signal 7 } 
	{ v3_3_Dout_B sc_in sc_lv 32 signal 7 } 
	{ v3_3_Clk_B sc_out sc_logic 1 signal 7 } 
	{ v3_3_Rst_B sc_out sc_logic 1 signal 7 } 
	{ s_axi_ctrl_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_AWADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_ctrl_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_ctrl_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_ctrl_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_ARADDR sc_in sc_lv 5 signal -1 } 
	{ s_axi_ctrl_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_ctrl_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_ctrl_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_ctrl_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_ctrl_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_ctrl_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ctrl", "role": "AWADDR" },"address":[{"name":"test_heat_4096","role":"start","value":"0","valid_bit":"0"},{"name":"test_heat_4096","role":"continue","value":"0","valid_bit":"4"},{"name":"test_heat_4096","role":"auto_start","value":"0","valid_bit":"7"},{"name":"v0","role":"data","value":"16"},{"name":"v1","role":"data","value":"24"}] },
	{ "name": "s_axi_ctrl_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "AWVALID" } },
	{ "name": "s_axi_ctrl_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "AWREADY" } },
	{ "name": "s_axi_ctrl_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "WVALID" } },
	{ "name": "s_axi_ctrl_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "WREADY" } },
	{ "name": "s_axi_ctrl_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl", "role": "WDATA" } },
	{ "name": "s_axi_ctrl_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "ctrl", "role": "WSTRB" } },
	{ "name": "s_axi_ctrl_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "ctrl", "role": "ARADDR" },"address":[{"name":"test_heat_4096","role":"start","value":"0","valid_bit":"0"},{"name":"test_heat_4096","role":"done","value":"0","valid_bit":"1"},{"name":"test_heat_4096","role":"idle","value":"0","valid_bit":"2"},{"name":"test_heat_4096","role":"ready","value":"0","valid_bit":"3"},{"name":"test_heat_4096","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_ctrl_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "ARVALID" } },
	{ "name": "s_axi_ctrl_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "ARREADY" } },
	{ "name": "s_axi_ctrl_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "RVALID" } },
	{ "name": "s_axi_ctrl_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "RREADY" } },
	{ "name": "s_axi_ctrl_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ctrl", "role": "RDATA" } },
	{ "name": "s_axi_ctrl_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctrl", "role": "RRESP" } },
	{ "name": "s_axi_ctrl_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "BVALID" } },
	{ "name": "s_axi_ctrl_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "BREADY" } },
	{ "name": "s_axi_ctrl_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "ctrl", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "ctrl", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "v2_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_0", "role": "Addr_A" }} , 
 	{ "name": "v2_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_0", "role": "EN_A" }} , 
 	{ "name": "v2_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2_0", "role": "WEN_A" }} , 
 	{ "name": "v2_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_0", "role": "Din_A" }} , 
 	{ "name": "v2_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_0", "role": "Dout_A" }} , 
 	{ "name": "v2_0_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_0", "role": "Clk_A" }} , 
 	{ "name": "v2_0_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_0", "role": "Rst_A" }} , 
 	{ "name": "v2_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_1", "role": "Addr_A" }} , 
 	{ "name": "v2_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_1", "role": "EN_A" }} , 
 	{ "name": "v2_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v2_1", "role": "WEN_A" }} , 
 	{ "name": "v2_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_1", "role": "Din_A" }} , 
 	{ "name": "v2_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v2_1", "role": "Dout_A" }} , 
 	{ "name": "v2_1_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_1", "role": "Clk_A" }} , 
 	{ "name": "v2_1_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v2_1", "role": "Rst_A" }} , 
 	{ "name": "v3_0_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0", "role": "Addr_A" }} , 
 	{ "name": "v3_0_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_0", "role": "EN_A" }} , 
 	{ "name": "v3_0_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_0", "role": "WEN_A" }} , 
 	{ "name": "v3_0_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0", "role": "Din_A" }} , 
 	{ "name": "v3_0_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0", "role": "Dout_A" }} , 
 	{ "name": "v3_0_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_0", "role": "Clk_A" }} , 
 	{ "name": "v3_0_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_0", "role": "Rst_A" }} , 
 	{ "name": "v3_0_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0", "role": "Addr_B" }} , 
 	{ "name": "v3_0_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_0", "role": "EN_B" }} , 
 	{ "name": "v3_0_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_0", "role": "WEN_B" }} , 
 	{ "name": "v3_0_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0", "role": "Din_B" }} , 
 	{ "name": "v3_0_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_0", "role": "Dout_B" }} , 
 	{ "name": "v3_0_Clk_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_0", "role": "Clk_B" }} , 
 	{ "name": "v3_0_Rst_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_0", "role": "Rst_B" }} , 
 	{ "name": "v3_1_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1", "role": "Addr_A" }} , 
 	{ "name": "v3_1_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_1", "role": "EN_A" }} , 
 	{ "name": "v3_1_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_1", "role": "WEN_A" }} , 
 	{ "name": "v3_1_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1", "role": "Din_A" }} , 
 	{ "name": "v3_1_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1", "role": "Dout_A" }} , 
 	{ "name": "v3_1_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_1", "role": "Clk_A" }} , 
 	{ "name": "v3_1_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_1", "role": "Rst_A" }} , 
 	{ "name": "v3_1_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1", "role": "Addr_B" }} , 
 	{ "name": "v3_1_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_1", "role": "EN_B" }} , 
 	{ "name": "v3_1_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_1", "role": "WEN_B" }} , 
 	{ "name": "v3_1_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1", "role": "Din_B" }} , 
 	{ "name": "v3_1_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_1", "role": "Dout_B" }} , 
 	{ "name": "v3_1_Clk_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_1", "role": "Clk_B" }} , 
 	{ "name": "v3_1_Rst_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_1", "role": "Rst_B" }} , 
 	{ "name": "v3_2_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2", "role": "Addr_A" }} , 
 	{ "name": "v3_2_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_2", "role": "EN_A" }} , 
 	{ "name": "v3_2_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_2", "role": "WEN_A" }} , 
 	{ "name": "v3_2_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2", "role": "Din_A" }} , 
 	{ "name": "v3_2_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2", "role": "Dout_A" }} , 
 	{ "name": "v3_2_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_2", "role": "Clk_A" }} , 
 	{ "name": "v3_2_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_2", "role": "Rst_A" }} , 
 	{ "name": "v3_2_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2", "role": "Addr_B" }} , 
 	{ "name": "v3_2_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_2", "role": "EN_B" }} , 
 	{ "name": "v3_2_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_2", "role": "WEN_B" }} , 
 	{ "name": "v3_2_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2", "role": "Din_B" }} , 
 	{ "name": "v3_2_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_2", "role": "Dout_B" }} , 
 	{ "name": "v3_2_Clk_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_2", "role": "Clk_B" }} , 
 	{ "name": "v3_2_Rst_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_2", "role": "Rst_B" }} , 
 	{ "name": "v3_3_Addr_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_3", "role": "Addr_A" }} , 
 	{ "name": "v3_3_EN_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_3", "role": "EN_A" }} , 
 	{ "name": "v3_3_WEN_A", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_3", "role": "WEN_A" }} , 
 	{ "name": "v3_3_Din_A", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_3", "role": "Din_A" }} , 
 	{ "name": "v3_3_Dout_A", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_3", "role": "Dout_A" }} , 
 	{ "name": "v3_3_Clk_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_3", "role": "Clk_A" }} , 
 	{ "name": "v3_3_Rst_A", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_3", "role": "Rst_A" }} , 
 	{ "name": "v3_3_Addr_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_3", "role": "Addr_B" }} , 
 	{ "name": "v3_3_EN_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_3", "role": "EN_B" }} , 
 	{ "name": "v3_3_WEN_B", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "v3_3", "role": "WEN_B" }} , 
 	{ "name": "v3_3_Din_B", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_3", "role": "Din_B" }} , 
 	{ "name": "v3_3_Dout_B", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "v3_3", "role": "Dout_B" }} , 
 	{ "name": "v3_3_Clk_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_3", "role": "Clk_B" }} , 
 	{ "name": "v3_3_Rst_B", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "v3_3", "role": "Rst_B" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "15", "17"],
		"CDFG" : "test_heat_4096",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16896001", "EstimateLatencyMax" : "16896001",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v0", "Type" : "None", "Direction" : "I"},
			{"Name" : "v1", "Type" : "None", "Direction" : "I"},
			{"Name" : "v2_0", "Type" : "Bram", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_test_heat_4096_Pipeline_VITIS_LOOP_59_3_fu_98", "Port" : "v2_0", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "1", "SubInstance" : "grp_test_heat_4096_Pipeline_VITIS_LOOP_42_2_fu_80", "Port" : "v2_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "v2_1", "Type" : "Bram", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_test_heat_4096_Pipeline_VITIS_LOOP_59_3_fu_98", "Port" : "v2_1", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "1", "SubInstance" : "grp_test_heat_4096_Pipeline_VITIS_LOOP_42_2_fu_80", "Port" : "v2_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "v3_0", "Type" : "Bram", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_test_heat_4096_Pipeline_VITIS_LOOP_59_3_fu_98", "Port" : "v3_0", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "1", "SubInstance" : "grp_test_heat_4096_Pipeline_VITIS_LOOP_42_2_fu_80", "Port" : "v3_0", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "v3_1", "Type" : "Bram", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_test_heat_4096_Pipeline_VITIS_LOOP_59_3_fu_98", "Port" : "v3_1", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "1", "SubInstance" : "grp_test_heat_4096_Pipeline_VITIS_LOOP_42_2_fu_80", "Port" : "v3_1", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "v3_2", "Type" : "Bram", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_test_heat_4096_Pipeline_VITIS_LOOP_59_3_fu_98", "Port" : "v3_2", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "1", "SubInstance" : "grp_test_heat_4096_Pipeline_VITIS_LOOP_42_2_fu_80", "Port" : "v3_2", "Inst_start_state" : "2", "Inst_end_state" : "3"}]},
			{"Name" : "v3_3", "Type" : "Bram", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "15", "SubInstance" : "grp_test_heat_4096_Pipeline_VITIS_LOOP_59_3_fu_98", "Port" : "v3_3", "Inst_start_state" : "4", "Inst_end_state" : "5"},
					{"ID" : "1", "SubInstance" : "grp_test_heat_4096_Pipeline_VITIS_LOOP_42_2_fu_80", "Port" : "v3_3", "Inst_start_state" : "2", "Inst_end_state" : "3"}]}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_41_1", "PipelineType" : "no",
				"LoopDec" : {"FSMBitwidth" : "5", "FirstState" : "ap_ST_fsm_state2", "LastState" : ["ap_ST_fsm_state5"], "QuitState" : ["ap_ST_fsm_state2"], "PreState" : ["ap_ST_fsm_state1"], "PostState" : ["ap_ST_fsm_state1"], "OneDepthLoop" : "0", "OneStateBlock": ""}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_test_heat_4096_Pipeline_VITIS_LOOP_42_2_fu_80", "Parent" : "0", "Child" : ["2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14"],
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
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_test_heat_4096_Pipeline_VITIS_LOOP_42_2_fu_80.fsub_32ns_32ns_32_7_full_dsp_1_U1", "Parent" : "1"},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_test_heat_4096_Pipeline_VITIS_LOOP_42_2_fu_80.fsub_32ns_32ns_32_7_full_dsp_1_U2", "Parent" : "1"},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_test_heat_4096_Pipeline_VITIS_LOOP_42_2_fu_80.fadd_32ns_32ns_32_7_full_dsp_1_U3", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_test_heat_4096_Pipeline_VITIS_LOOP_42_2_fu_80.fadd_32ns_32ns_32_7_full_dsp_1_U4", "Parent" : "1"},
	{"ID" : "6", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_test_heat_4096_Pipeline_VITIS_LOOP_42_2_fu_80.fmul_32ns_32ns_32_4_max_dsp_1_U5", "Parent" : "1"},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_test_heat_4096_Pipeline_VITIS_LOOP_42_2_fu_80.fmul_32ns_32ns_32_4_max_dsp_1_U6", "Parent" : "1"},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_test_heat_4096_Pipeline_VITIS_LOOP_42_2_fu_80.fmul_32ns_32ns_32_4_max_dsp_1_U7", "Parent" : "1"},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_test_heat_4096_Pipeline_VITIS_LOOP_42_2_fu_80.fmul_32ns_32ns_32_4_max_dsp_1_U8", "Parent" : "1"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_test_heat_4096_Pipeline_VITIS_LOOP_42_2_fu_80.mux_21_32_1_1_U9", "Parent" : "1"},
	{"ID" : "11", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_test_heat_4096_Pipeline_VITIS_LOOP_42_2_fu_80.mux_21_32_1_1_U10", "Parent" : "1"},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_test_heat_4096_Pipeline_VITIS_LOOP_42_2_fu_80.mux_21_32_1_1_U11", "Parent" : "1"},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_test_heat_4096_Pipeline_VITIS_LOOP_42_2_fu_80.mux_21_32_1_1_U12", "Parent" : "1"},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_test_heat_4096_Pipeline_VITIS_LOOP_42_2_fu_80.flow_control_loop_pipe_sequential_init_U", "Parent" : "1"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_test_heat_4096_Pipeline_VITIS_LOOP_59_3_fu_98", "Parent" : "0", "Child" : ["16"],
		"CDFG" : "test_heat_4096_Pipeline_VITIS_LOOP_59_3",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2049", "EstimateLatencyMax" : "2049",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"Port" : [
			{"Name" : "v3_3", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v3_0", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v3_2", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v3_1", "Type" : "Bram", "Direction" : "O"},
			{"Name" : "v2_1", "Type" : "Bram", "Direction" : "I"},
			{"Name" : "v2_0", "Type" : "Bram", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "VITIS_LOOP_59_3", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter1", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter0", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_test_heat_4096_Pipeline_VITIS_LOOP_59_3_fu_98.flow_control_loop_pipe_sequential_init_U", "Parent" : "15"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ctrl_s_axi_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	test_heat_4096 {
		v0 {Type I LastRead 0 FirstWrite -1}
		v1 {Type I LastRead 0 FirstWrite -1}
		v2_0 {Type IO LastRead 0 FirstWrite -1}
		v2_1 {Type IO LastRead 0 FirstWrite -1}
		v3_0 {Type IO LastRead 4 FirstWrite -1}
		v3_1 {Type IO LastRead 11 FirstWrite -1}
		v3_2 {Type IO LastRead 4 FirstWrite -1}
		v3_3 {Type IO LastRead 11 FirstWrite -1}}
	test_heat_4096_Pipeline_VITIS_LOOP_42_2 {
		v2_1 {Type O LastRead -1 FirstWrite 24}
		v2_0 {Type O LastRead -1 FirstWrite 24}
		v3_1 {Type I LastRead 11 FirstWrite -1}
		v3_3 {Type I LastRead 11 FirstWrite -1}
		v1 {Type I LastRead 0 FirstWrite -1}
		v3_0 {Type I LastRead 4 FirstWrite -1}
		v3_2 {Type I LastRead 4 FirstWrite -1}
		v0 {Type I LastRead 0 FirstWrite -1}}
	test_heat_4096_Pipeline_VITIS_LOOP_59_3 {
		v3_3 {Type O LastRead -1 FirstWrite 1}
		v3_0 {Type O LastRead -1 FirstWrite 1}
		v3_2 {Type O LastRead -1 FirstWrite 1}
		v3_1 {Type O LastRead -1 FirstWrite 1}
		v2_1 {Type I LastRead 0 FirstWrite -1}
		v2_0 {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16896001", "Max" : "16896001"}
	, {"Name" : "Interval", "Min" : "16896002", "Max" : "16896002"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	v2_0 { bram {  { v2_0_Addr_A MemPortADDR2 1 32 }  { v2_0_EN_A MemPortCE2 1 1 }  { v2_0_WEN_A MemPortWE2 1 4 }  { v2_0_Din_A MemPortDIN2 1 32 }  { v2_0_Dout_A MemPortDOUT2 0 32 }  { v2_0_Clk_A mem_clk 1 1 }  { v2_0_Rst_A mem_rst 1 1 } } }
	v2_1 { bram {  { v2_1_Addr_A MemPortADDR2 1 32 }  { v2_1_EN_A MemPortCE2 1 1 }  { v2_1_WEN_A MemPortWE2 1 4 }  { v2_1_Din_A MemPortDIN2 1 32 }  { v2_1_Dout_A MemPortDOUT2 0 32 }  { v2_1_Clk_A mem_clk 1 1 }  { v2_1_Rst_A mem_rst 1 1 } } }
	v3_0 { bram {  { v3_0_Addr_A MemPortADDR2 1 32 }  { v3_0_EN_A MemPortCE2 1 1 }  { v3_0_WEN_A MemPortWE2 1 4 }  { v3_0_Din_A MemPortDIN2 1 32 }  { v3_0_Dout_A MemPortDOUT2 0 32 }  { v3_0_Clk_A mem_clk 1 1 }  { v3_0_Rst_A mem_rst 1 1 }  { v3_0_Addr_B MemPortADDR2 1 32 }  { v3_0_EN_B MemPortCE2 1 1 }  { v3_0_WEN_B MemPortWE2 1 4 }  { v3_0_Din_B MemPortDIN2 1 32 }  { v3_0_Dout_B MemPortDOUT2 0 32 }  { v3_0_Clk_B mem_clk 1 1 }  { v3_0_Rst_B mem_rst 1 1 } } }
	v3_1 { bram {  { v3_1_Addr_A MemPortADDR2 1 32 }  { v3_1_EN_A MemPortCE2 1 1 }  { v3_1_WEN_A MemPortWE2 1 4 }  { v3_1_Din_A MemPortDIN2 1 32 }  { v3_1_Dout_A MemPortDOUT2 0 32 }  { v3_1_Clk_A mem_clk 1 1 }  { v3_1_Rst_A mem_rst 1 1 }  { v3_1_Addr_B MemPortADDR2 1 32 }  { v3_1_EN_B MemPortCE2 1 1 }  { v3_1_WEN_B MemPortWE2 1 4 }  { v3_1_Din_B MemPortDIN2 1 32 }  { v3_1_Dout_B MemPortDOUT2 0 32 }  { v3_1_Clk_B mem_clk 1 1 }  { v3_1_Rst_B mem_rst 1 1 } } }
	v3_2 { bram {  { v3_2_Addr_A MemPortADDR2 1 32 }  { v3_2_EN_A MemPortCE2 1 1 }  { v3_2_WEN_A MemPortWE2 1 4 }  { v3_2_Din_A MemPortDIN2 1 32 }  { v3_2_Dout_A MemPortDOUT2 0 32 }  { v3_2_Clk_A mem_clk 1 1 }  { v3_2_Rst_A mem_rst 1 1 }  { v3_2_Addr_B MemPortADDR2 1 32 }  { v3_2_EN_B MemPortCE2 1 1 }  { v3_2_WEN_B MemPortWE2 1 4 }  { v3_2_Din_B MemPortDIN2 1 32 }  { v3_2_Dout_B MemPortDOUT2 0 32 }  { v3_2_Clk_B mem_clk 1 1 }  { v3_2_Rst_B mem_rst 1 1 } } }
	v3_3 { bram {  { v3_3_Addr_A MemPortADDR2 1 32 }  { v3_3_EN_A MemPortCE2 1 1 }  { v3_3_WEN_A MemPortWE2 1 4 }  { v3_3_Din_A MemPortDIN2 1 32 }  { v3_3_Dout_A MemPortDOUT2 0 32 }  { v3_3_Clk_A mem_clk 1 1 }  { v3_3_Rst_A mem_rst 1 1 }  { v3_3_Addr_B MemPortADDR2 1 32 }  { v3_3_EN_B MemPortCE2 1 1 }  { v3_3_WEN_B MemPortWE2 1 4 }  { v3_3_Din_B MemPortDIN2 1 32 }  { v3_3_Dout_B MemPortDOUT2 0 32 }  { v3_3_Clk_B mem_clk 1 1 }  { v3_3_Rst_B mem_rst 1 1 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
