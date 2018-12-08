onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib instructionROM_opt

do {wave.do}

view wave
view structure
view signals

do {instructionROM.udo}

run -all

quit -force
