transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+F:/Base\ Remote\ FRAME\ MAKER {F:/Base Remote FRAME MAKER/BR_Frame_Maker.v}

vlog -vlog01compat -work work +incdir+F:/Base\ Remote\ FRAME\ MAKER {F:/Base Remote FRAME MAKER/BR_Frame_Maker_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  BR_Frame_Maker_TB

add wave *
view structure
view signals
run -all
