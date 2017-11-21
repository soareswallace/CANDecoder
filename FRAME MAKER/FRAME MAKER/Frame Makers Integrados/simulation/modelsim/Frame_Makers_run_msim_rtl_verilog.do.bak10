transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+F:/BROE\ Frame\ Maker {F:/BROE Frame Maker/Frame_Makers.v}
vlog -vlog01compat -work work +incdir+F:/BROE\ Frame\ Maker {F:/BROE Frame Maker/OE_Frame_Maker.v}
vlog -vlog01compat -work work +incdir+F:/BROE\ Frame\ Maker {F:/BROE Frame Maker/BR_Frame_Maker.v}

vlog -vlog01compat -work work +incdir+F:/BROE\ Frame\ Maker {F:/BROE Frame Maker/Frame_Makers_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  Frame_Makers_TB

add wave *
view structure
view signals
run -all
