vlib work
vlog tb.v +acc
vsim -debugDB test_bench
add schematic -full test_bench
add wave -r *
run -all

