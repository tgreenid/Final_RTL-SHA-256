onerror {quit -f}
vlib work
vlog -work work CompressionFunction.vo
vlog -work work CompressionFunction.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.CompressionFunction_vlg_vec_tst
vcd file -direction CompressionFunction.msim.vcd
vcd add -internal CompressionFunction_vlg_vec_tst/*
vcd add -internal CompressionFunction_vlg_vec_tst/i1/*
add wave /*
run -all
