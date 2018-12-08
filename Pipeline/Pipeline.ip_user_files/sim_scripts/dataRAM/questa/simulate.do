onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib dataRAM_opt

do {wave.do}

view wave
view structure
view signals

do {dataRAM.udo}

run -all

quit -force
