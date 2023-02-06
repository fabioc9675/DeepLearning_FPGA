// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Feb  3 12:21:07 2023
// Host        : DESKTOP-3FHD9AF running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/GitHub/GICM_Xilinx_Tutorial/DeepLearning_FPGA/T06_NetworkGen/ZyNet_project/NN_Zynet_Prj/NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ip/NN_Zinet_Block_zyNet_0_1/NN_Zinet_Block_zyNet_0_1_stub.v
// Design      : NN_Zinet_Block_zyNet_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "zyNet,Vivado 2022.1" *)
module NN_Zinet_Block_zyNet_0_1(s_axi_aclk, s_axi_aresetn, axis_in_data, 
  axis_in_data_valid, axis_in_data_ready, s_axi_awaddr, s_axi_awprot, s_axi_awvalid, 
  s_axi_awready, s_axi_wdata, s_axi_wstrb, s_axi_wvalid, s_axi_wready, s_axi_bresp, 
  s_axi_bvalid, s_axi_bready, s_axi_araddr, s_axi_arprot, s_axi_arvalid, s_axi_arready, 
  s_axi_rdata, s_axi_rresp, s_axi_rvalid, s_axi_rready, intr)
/* synthesis syn_black_box black_box_pad_pin="s_axi_aclk,s_axi_aresetn,axis_in_data[15:0],axis_in_data_valid,axis_in_data_ready,s_axi_awaddr[4:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bresp[1:0],s_axi_bvalid,s_axi_bready,s_axi_araddr[4:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,intr" */;
  input s_axi_aclk;
  input s_axi_aresetn;
  input [15:0]axis_in_data;
  input axis_in_data_valid;
  output axis_in_data_ready;
  input [4:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [4:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  output intr;
endmodule
