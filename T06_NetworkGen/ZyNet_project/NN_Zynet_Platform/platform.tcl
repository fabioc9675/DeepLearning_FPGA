# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\GitHub\GICM_Xilinx_Tutorial\DeepLearning_FPGA\T06_NetworkGen\ZyNet_project\NN_Zynet_Platform\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\GitHub\GICM_Xilinx_Tutorial\DeepLearning_FPGA\T06_NetworkGen\ZyNet_project\NN_Zynet_Platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {NN_Zynet_Platform}\
-hw {C:\GitHub\GICM_Xilinx_Tutorial\DeepLearning_FPGA\T06_NetworkGen\ZyNet_project\NN_Zynet_Prj\NN_Zinet_Block_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/GitHub/GICM_Xilinx_Tutorial/DeepLearning_FPGA/T06_NetworkGen/ZyNet_project}

platform write
platform generate -domains 
platform active {NN_Zynet_Platform}
platform generate
platform active {NN_Zynet_Platform}
platform config -updatehw {C:/GitHub/GICM_Xilinx_Tutorial/DeepLearning_FPGA/T06_NetworkGen/ZyNet_project/NN_Zynet_Prj/NN_Zinet_Block_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/GitHub/GICM_Xilinx_Tutorial/DeepLearning_FPGA/T06_NetworkGen/ZyNet_project/NN_Zynet_Prj/NN_Zinet_Block_wrapper.xsa}
platform generate -domains 
platform generate -domains 
platform config -updatehw {C:/GitHub/GICM_Xilinx_Tutorial/DeepLearning_FPGA/T06_NetworkGen/ZyNet_project/NN_Zynet_Prj/NN_Zinet_Block_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/GitHub/GICM_Xilinx_Tutorial/DeepLearning_FPGA/T06_NetworkGen/ZyNet_project/NN_Zynet_Prj/NN_Zinet_Block_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/GitHub/GICM_Xilinx_Tutorial/DeepLearning_FPGA/T06_NetworkGen/ZyNet_project/NN_Zynet_Prj/NN_Zinet_Block_wrapper.xsa}
platform generate -domains 
platform active {NN_Zynet_Platform}
platform config -updatehw {C:/GitHub/GICM_Xilinx_Tutorial/DeepLearning_FPGA/T06_NetworkGen/ZyNet_project/NN_Zynet_Prj/NN_Zinet_Block_wrapper.xsa}
platform generate -domains 
platform active {NN_Zynet_Platform}
platform config -updatehw {C:/GitHub/GICM_Xilinx_Tutorial/DeepLearning_FPGA/T06_NetworkGen/ZyNet_project/NN_Zynet_Prj/NN_Zinet_Block_wrapper.xsa}
platform generate -domains 
platform active {NN_Zynet_Platform}
platform config -updatehw {C:/GitHub/GICM_Xilinx_Tutorial/DeepLearning_FPGA/T06_NetworkGen/ZyNet_project/NN_Zynet_Prj/NN_Zinet_Block_wrapper.xsa}
platform generate -domains 
platform active {NN_Zynet_Platform}
platform config -updatehw {C:/GitHub/GICM_Xilinx_Tutorial/DeepLearning_FPGA/T06_NetworkGen/ZyNet_project/NN_Zynet_Prj/NN_Zinet_Block_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/GitHub/GICM_Xilinx_Tutorial/DeepLearning_FPGA/T06_NetworkGen/ZyNet_project/NN_Zynet_Prj/NN_Zinet_Block_wrapper.xsa}
platform generate -domains 
