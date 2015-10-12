
source ../setup_asic_lib.tcl


read_file -format vhdl  ../fpu100/trunk/fpupack.vhd
read_file -format vhdl  ../fpu100/trunk/pre_norm_addsub.vhd
read_file -format vhdl  ../fpu100/trunk/addsub_28.vhd
read_file -format vhdl  ../fpu100/trunk/post_norm_addsub.vhd
read_file -format vhdl  ../fpu100/trunk/pre_norm_mul.vhd
read_file -format vhdl  ../fpu100/trunk/mul_24.vhd
read_file -format vhdl  ../fpu100/trunk/serial_mul.vhd
read_file -format vhdl  ../fpu100/trunk/post_norm_mul.vhd
read_file -format vhdl  ../fpu100/trunk/pre_norm_div.vhd
read_file -format vhdl  ../fpu100/trunk/serial_div.vhd
read_file -format vhdl  ../fpu100/trunk/post_norm_div.vhd
read_file -format vhdl  ../fpu100/trunk/pre_norm_sqrt.vhd
read_file -format vhdl  ../fpu100/trunk/sqrt.vhd
read_file -format vhdl  ../fpu100/trunk/post_norm_sqrt.vhd
read_file -format vhdl  ../fpu100/trunk/comppack.vhd
read_file -format vhdl  ../fpu100/trunk/fpu.vhd

current_design fpu

create_clock -name "clk" -period 60 -waveform { 30 60  }  { clk_i  }

set_fix_multiple_port_nets -all -buffer_constants

current_design fpu

compile -exact_map
define_name_rules limited -restricted "!@#$%^&*()\\-[]" -first_restricted "a-z"
change_names  -rules  limited -verbose
write -hierarchy -format verilog -output ../fpu_mul_syn.v


yosys -p 'write_spice test.sp' yosys_saed90nm.v b14_syn.v
