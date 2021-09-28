transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/linco/Desktop/PWM {C:/Users/linco/Desktop/PWM/PWM.v}
vlog -vlog01compat -work work +incdir+C:/Users/linco/Desktop/PWM {C:/Users/linco/Desktop/PWM/contador.v}
vlog -vlog01compat -work work +incdir+C:/Users/linco/Desktop/PWM {C:/Users/linco/Desktop/PWM/comparador.v}
vlog -vlog01compat -work work +incdir+C:/Users/linco/Desktop/PWM {C:/Users/linco/Desktop/PWM/amostras.v}

vlog -vlog01compat -work work +incdir+C:/Users/linco/Desktop/PWM {C:/Users/linco/Desktop/PWM/PWM_TB.v}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L rtl_work -L work -voptargs="+acc"  PWM_TB

add wave *
view structure
view signals
run -all
