source ../setup_asic_lib.tcl
source ../files.synp
current_design fpu
create_clock -name "clk" -period 10 -waveform { 0 5  }  { clk_i  }
compile -exact_map
write -hierarchy -format verilog -output asic_syn.v
