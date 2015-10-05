
source ../setup_asic_lib.tcl
read_file -format vhdl {../b14.vhd}
create_clock -name "clk" -period 20 -waveform { 0 10  }  { clock }
set_fix_multiple_port_nets -all -buffer_constants
compile -exact_map
define_name_rules limited -restricted "!@#$%^&*()\\-[]" -first_restricted "a-z"
change_names  -rules  limited -verbose
write -hierarchy -format verilog -output ../b14_syn.v


yosys -p 'write_spice test.sp' yosys_saed90nm.v b14_syn.v
