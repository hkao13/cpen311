transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/Users/Henry\ Kao/Documents/School/CPEN311/Lab\ 2/Task2_3_4/VHDL {C:/Users/Henry Kao/Documents/School/CPEN311/Lab 2/Task2_3_4/VHDL/vga_pll.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henry\ Kao/Documents/School/CPEN311/Lab\ 2/Task2_3_4/VHDL {C:/Users/Henry Kao/Documents/School/CPEN311/Lab 2/Task2_3_4/VHDL/vga_controller.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henry\ Kao/Documents/School/CPEN311/Lab\ 2/Task2_3_4/VHDL {C:/Users/Henry Kao/Documents/School/CPEN311/Lab 2/Task2_3_4/VHDL/vga_address_translator.v}
vlog -vlog01compat -work work +incdir+C:/Users/Henry\ Kao/Documents/School/CPEN311/Lab\ 2/Task2_3_4/VHDL {C:/Users/Henry Kao/Documents/School/CPEN311/Lab 2/Task2_3_4/VHDL/vga_adapter.v}
vcom -93 -work work {C:/Users/Henry Kao/Documents/School/CPEN311/Lab 2/Task2_3_4/VHDL/task2.vhd}
vcom -93 -work work {C:/Users/Henry Kao/Documents/School/CPEN311/Lab 2/Task2_3_4/xaxis_controller.vhd}

