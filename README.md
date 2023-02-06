# DeepLearning_FPGA
 This project contains a tutorial about how to implement a Neural Network in a FPGA
 
## Links

- Base repository: https://github.com/vipinkmenon/neuralNetwork
- Video list tutorial: https://www.youtube.com/playlist?list=PLJePd8QU_LYKZwJnByZ8FHDg5l1rXtcIq


### Tutorial 1

This is about the creation of the hardware structure of a percetron, all the conections to create a neuron with the capability to interconect


### Tutorial 2

This is about how to create the activation fucntions and the memory initialization of the instance of the activation functions


### Tutorial 3

This is about the layer stack creation for multilayers Neural Networks


### Tutorial 4

This is about how to create the Hardware Wraper in FPGA VIVADO


### Tutorial 5

This is about how to verify and simulate the behavior of the Neural Network in the FPGA


### Tutorial 6

This project uses Zynet python library to create a VIVADO project and run the Neural Network on FPGA

#### some considerations:
- if you will use a Xilinx development board as PYNQ, you need to change the board definition in `settings` environment
- it is necessary to delete all the block design, and call again all the blocks
	- `ZYNQ7` PS block, enable `PS-PL Configuration` -> `HP Slave AXI Interface` -> `S AXI HP0 interface`
	- Also `Fabric interupts` -> `PL-PS Interrupt Ports` -> `IRQ_F2P[15:0]`
	- `Zynet_0` NN design
	- `AXI_direct_memory_access`, take care on deselect `Enable Scatter Gather Engine`, and just enable `Enable Read Channel`, on this select the `Stream Data Width` corresponding with DataSize selected in Zynet project creation
	- `Concat` to concatenate both interrupts from PS and from DMA.
	
