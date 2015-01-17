set toplevel $::env(toplevel)

project -new fpga_syn/source_syn.prj
source files.synp
#set_option -technology Virtex5
#set_option -part XC5VLX330
set_option -technology Virtex6
set_option -part XC6VLX240T
set_option -top_module $toplevel

set_option -disable_io_insertion 1
set_option -result_base proj_1
set_option -write_verilog 1
project -run 
project -save source_syn.prj 
open_design fpga_syn/rev_1/proj_1.srs
set bbox [find -hier -inst * -filter @is_black_box==1]
set inports [find -port * -filter @direction== input]
set outports [find -port * -filter @direction== output]
c_print $bbox -file ports/blackboxes.txt
c_print $inports -file ports/inputs.txt
c_print $outports -file ports/outputs.txt

