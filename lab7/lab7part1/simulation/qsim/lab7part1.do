onerror {quit -f}
vlib work
vlog -work work lab7part1.vo
vlog -work work lab7part1.vt
vsim -novopt -c -t 1ps -L cyclonev_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.lab7part1_vlg_vec_tst
vcd file -direction lab7part1.msim.vcd
vcd add -internal lab7part1_vlg_vec_tst/*
vcd add -internal lab7part1_vlg_vec_tst/i1/*
add wave /*
run -all
