-makelib xcelium_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2022.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/83df/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/83df/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_7 \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/83df/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/lib_fifo_v1_0_16 \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/6c82/hdl/lib_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_datamover_v5_1_28 \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/1bb8/hdl/axi_datamover_v5_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_sg_v4_1_15 \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/751a/hdl/axi_sg_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_dma_v7_1_27 \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/7b0b/hdl/axi_dma_v7_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/NN_Zinet_Block/ip/NN_Zinet_Block_axi_dma_0_0/sim/NN_Zinet_Block_axi_dma_0_0.vhd" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/NN_Zinet_Block/ip/NN_Zinet_Block_axi_smc_0/bd_0/ip/ip_0/sim/bd_cd9a_one_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/NN_Zinet_Block/ip/NN_Zinet_Block_axi_smc_0/bd_0/ip/ip_1/sim/bd_cd9a_psr_aclk_0.vhd" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/NN_Zinet_Block/ip/NN_Zinet_Block_axi_smc_0/bd_0/ip/ip_2/sim/bd_cd9a_s00mmu_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/NN_Zinet_Block/ip/NN_Zinet_Block_axi_smc_0/bd_0/ip/ip_3/sim/bd_cd9a_s00tr_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/NN_Zinet_Block/ip/NN_Zinet_Block_axi_smc_0/bd_0/ip/ip_4/sim/bd_cd9a_s00sic_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/f38e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/NN_Zinet_Block/ip/NN_Zinet_Block_axi_smc_0/bd_0/ip/ip_5/sim/bd_cd9a_s00a2s_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/NN_Zinet_Block/ip/NN_Zinet_Block_axi_smc_0/bd_0/ip/ip_6/sim/bd_cd9a_sarn_0.sv" \
  "../../../bd/NN_Zinet_Block/ip/NN_Zinet_Block_axi_smc_0/bd_0/ip/ip_7/sim/bd_cd9a_srn_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/9cc5/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/NN_Zinet_Block/ip/NN_Zinet_Block_axi_smc_0/bd_0/ip/ip_8/sim/bd_cd9a_m00s2a_0.sv" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/6bba/hdl/sc_exit_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/NN_Zinet_Block/ip/NN_Zinet_Block_axi_smc_0/bd_0/ip/ip_9/sim/bd_cd9a_m00e_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/NN_Zinet_Block/ip/NN_Zinet_Block_axi_smc_0/bd_0/sim/bd_cd9a.v" \
-endlib
-makelib xcelium_lib/smartconnect_v1_0 -sv \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_26 \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/0a3f/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_12 -sv \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/1033/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/NN_Zinet_Block/ip/NN_Zinet_Block_axi_smc_0/sim/NN_Zinet_Block_axi_smc_0.v" \
-endlib
-makelib xcelium_lib/processing_system7_vip_v1_0_14 -sv \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/5765/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/NN_Zinet_Block/ip/NN_Zinet_Block_processing_system7_0_0/sim/NN_Zinet_Block_processing_system7_0_0.v" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_25 \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/5390/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_27 \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/3fa0/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/NN_Zinet_Block/ip/NN_Zinet_Block_xbar_0/sim/NN_Zinet_Block_xbar_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/NN_Zinet_Block/ip/NN_Zinet_Block_rst_ps7_0_100M_0/sim/NN_Zinet_Block_rst_ps7_0_100M_0.vhd" \
-endlib
-makelib xcelium_lib/xlconcat_v2_1_4 \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/NN_Zinet_Block/ip/NN_Zinet_Block_xlconcat_0_0/sim/NN_Zinet_Block_xlconcat_0_0.v" \
  "../../../bd/NN_Zinet_Block/ipshared/7e09/rtl/Layer_1.v" \
  "../../../bd/NN_Zinet_Block/ipshared/7e09/rtl/Layer_2.v" \
  "../../../bd/NN_Zinet_Block/ipshared/7e09/rtl/Layer_3.v" \
  "../../../bd/NN_Zinet_Block/ipshared/7e09/rtl/Layer_4.v" \
  "../../../bd/NN_Zinet_Block/ipshared/7e09/rtl/Sig_ROM.v" \
  "../../../bd/NN_Zinet_Block/ipshared/7e09/rtl/Weight_Memory.v" \
  "../../../bd/NN_Zinet_Block/ipshared/7e09/rtl/axi_lite_wrapper.v" \
  "../../../bd/NN_Zinet_Block/ipshared/7e09/rtl/maxFinder.v" \
  "../../../bd/NN_Zinet_Block/ipshared/7e09/rtl/neuron.v" \
  "../../../bd/NN_Zinet_Block/ipshared/7e09/rtl/relu.v" \
  "../../../bd/NN_Zinet_Block/ipshared/7e09/rtl/zynet.v" \
  "../../../bd/NN_Zinet_Block/ip/NN_Zinet_Block_zyNet_0_0/sim/NN_Zinet_Block_zyNet_0_0.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_26 \
  "../../../../NN_Zynet_Prj.gen/sources_1/bd/NN_Zinet_Block/ipshared/90c8/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/NN_Zinet_Block/ip/NN_Zinet_Block_auto_pc_0/sim/NN_Zinet_Block_auto_pc_0.v" \
  "../../../bd/NN_Zinet_Block/sim/NN_Zinet_Block.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

