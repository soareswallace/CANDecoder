transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+E:/UFPE/7\ Periodo/Redes\ Automotivas/Projeto\ /CANDecoder/FRAME\ MAKER/INTEGRADOS {E:/UFPE/7 Periodo/Redes Automotivas/Projeto /CANDecoder/FRAME MAKER/INTEGRADOS/OE_Frame_Maker.v}
vlog -vlog01compat -work work +incdir+E:/UFPE/7\ Periodo/Redes\ Automotivas/Projeto\ /CANDecoder/FRAME\ MAKER/INTEGRADOS {E:/UFPE/7 Periodo/Redes Automotivas/Projeto /CANDecoder/FRAME MAKER/INTEGRADOS/Main_Block.v}
vlog -vlog01compat -work work +incdir+E:/UFPE/7\ Periodo/Redes\ Automotivas/Projeto\ /CANDecoder/FRAME\ MAKER/INTEGRADOS {E:/UFPE/7 Periodo/Redes Automotivas/Projeto /CANDecoder/FRAME MAKER/INTEGRADOS/Form_Error_Block.v}
vlog -vlog01compat -work work +incdir+E:/UFPE/7\ Periodo/Redes\ Automotivas/Projeto\ /CANDecoder/FRAME\ MAKER/INTEGRADOS {E:/UFPE/7 Periodo/Redes Automotivas/Projeto /CANDecoder/FRAME MAKER/INTEGRADOS/Error_Block.v}
vlog -vlog01compat -work work +incdir+E:/UFPE/7\ Periodo/Redes\ Automotivas/Projeto\ /CANDecoder/FRAME\ MAKER/INTEGRADOS {E:/UFPE/7 Periodo/Redes Automotivas/Projeto /CANDecoder/FRAME MAKER/INTEGRADOS/EOF_Error_Block.v}
vlog -vlog01compat -work work +incdir+E:/UFPE/7\ Periodo/Redes\ Automotivas/Projeto\ /CANDecoder/FRAME\ MAKER/INTEGRADOS {E:/UFPE/7 Periodo/Redes Automotivas/Projeto /CANDecoder/FRAME MAKER/INTEGRADOS/BR_Frame_Maker.v}

vlog -vlog01compat -work work +incdir+E:/UFPE/7\ Periodo/Redes\ Automotivas/Projeto\ /CANDecoder/FRAME\ MAKER/INTEGRADOS {E:/UFPE/7 Periodo/Redes Automotivas/Projeto /CANDecoder/FRAME MAKER/INTEGRADOS/Main_Block_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cyclonev_ver -L cyclonev_hssi_ver -L cyclonev_pcie_hip_ver -L rtl_work -L work -voptargs="+acc"  Main_Block_TB

add wave *
view structure
view signals
run -all
