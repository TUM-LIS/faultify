
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

create_clock -name "clk" -period 60 -waveform { 0 30  }  { clk_i  }

set_fix_multiple_port_nets -all -buffer_constants

current_design fpu

compile -exact_map
define_name_rules limited -restricted "!@#$%^&*()\\-[]/" 
define_name_rules NO_FSLASH -restricted "/" -replacement_char "_"
define_name_rules NO_SPACE -restricted " " -replacement_char "_"
define_name_rules NO_BSLASH -restricted "\\" -replacement_char "_"
define_name_rules bus_delete -restricted "[]" -replacement_char "_"

#change_names  -rules  limited
change_names -rules bus_delete -hierarchy
change_names -rules NO_FSLASH -hierarchy
change_names -rules NO_SPACE -hierarchy
change_names -rules NO_BSLASH -hierarchy


write -hierarchy -format verilog -output ../fpu_mul_syn.v


#yosys -p 'write_spice -neg VSS -pos VDD test.sp' yosys_saed90nm.v b14_syn.v
