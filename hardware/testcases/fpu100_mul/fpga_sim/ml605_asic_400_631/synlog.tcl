source "/home/david/.local/share/data/Synplicity/scm_perforce.tcl"
history clear
project -load /home/david/projects/faultify_github/faultify/hardware/testcases/fpu100_div/asic_syn/fpga_asic_syn/proj_1.prj
project -close /home/david/projects/faultify_github/faultify/hardware/testcases/fpu100_div/asic_syn/fpga_asic_syn/proj_1.prj
project -new /home/david/projects/faultify_github/faultify/hardware/testcases/fpu100_mul/fpga_sim/ml605_asic/proj_1.prj
project -save proj_1 /tmp/proj_1.prj
add_file -vhdl ../home/david/projects/faultify_github/faultify/hardware/testcases/fpu100_mul/fpga_sim/xpsLibraryPath_asic/libFaultify/pcores/faultify_axi_wrapper_v1_00_a/hdl/vhdl/faultify_binomial_gen.vhd
set_option -part XC6VLX240T
set_option -package FF1156
set_option -disable_io_insertion 1
project -run  -bg 
set_option -write_verilog 1
project -run  -bg 
project -save /tmp/proj_1.prj 
project -close /tmp/proj_1.prj
