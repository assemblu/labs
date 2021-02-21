transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/dev/labs/lab1/fulladder.vhd}

vcom -93 -work work {C:/dev/labs/lab1/simulation/modelsim/fulladder.vht}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cyclonev -L rtl_work -L work -voptargs="+acc"  fulladder

add wave *
view structure
view signals
run -all
