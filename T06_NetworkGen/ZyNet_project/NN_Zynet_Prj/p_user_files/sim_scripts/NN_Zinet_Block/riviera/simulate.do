onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+NN_Zinet_Block -L xilinx_vip -L xpm -L lib_pkg_v1_0_2 -L fifo_generator_v13_2_7 -L lib_fifo_v1_0_16 -L lib_srl_fifo_v1_0_2 -L lib_cdc_v1_0_2 -L axi_datamover_v5_1_28 -L axi_sg_v4_1_15 -L axi_dma_v7_1_27 -L xil_defaultlib -L xlconstant_v1_1_7 -L proc_sys_reset_v5_0_13 -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_26 -L axi_vip_v1_1_12 -L processing_system7_vip_v1_0_14 -L generic_baseblocks_v2_1_0 -L axi_data_fifo_v2_1_25 -L axi_crossbar_v2_1_27 -L xlconcat_v2_1_4 -L axi_protocol_converter_v2_1_26 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.NN_Zinet_Block xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {NN_Zinet_Block.udo}

run -all

endsim

quit -force
