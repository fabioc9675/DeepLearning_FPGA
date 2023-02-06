onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib NN_Zinet_Block_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {NN_Zinet_Block.udo}

run -all

quit -force
