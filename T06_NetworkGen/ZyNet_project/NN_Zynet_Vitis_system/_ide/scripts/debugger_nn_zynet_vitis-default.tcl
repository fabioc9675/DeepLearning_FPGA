# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\GitHub\GICM_Xilinx_Tutorial\DeepLearning_FPGA\T06_NetworkGen\ZyNet_project\NN_Zynet_Vitis_system\_ide\scripts\debugger_nn_zynet_vitis-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\GitHub\GICM_Xilinx_Tutorial\DeepLearning_FPGA\T06_NetworkGen\ZyNet_project\NN_Zynet_Vitis_system\_ide\scripts\debugger_nn_zynet_vitis-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Xilinx PYNQ-Z1 003017A93AB6A" && level==0 && jtag_device_ctx=="jsn-Xilinx PYNQ-Z1-003017A93AB6A-23727093-0"}
fpga -file C:/GitHub/GICM_Xilinx_Tutorial/DeepLearning_FPGA/T06_NetworkGen/ZyNet_project/NN_Zynet_Vitis/_ide/bitstream/NN_Zinet_Block_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/GitHub/GICM_Xilinx_Tutorial/DeepLearning_FPGA/T06_NetworkGen/ZyNet_project/NN_Zynet_Platform/export/NN_Zynet_Platform/hw/NN_Zinet_Block_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/GitHub/GICM_Xilinx_Tutorial/DeepLearning_FPGA/T06_NetworkGen/ZyNet_project/NN_Zynet_Vitis/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/GitHub/GICM_Xilinx_Tutorial/DeepLearning_FPGA/T06_NetworkGen/ZyNet_project/NN_Zynet_Vitis/Debug/NN_Zynet_Vitis.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
