source "/home/david/.local/share/data/Synplicity/scm_perforce.tcl"
history clear
project -load /home/david/projects/faultify_github/faultify/hardware/testcases/QR/asic_syn/fpga_asic_syn/proj_1.prj
project_file -remove /home/david/projects/faultify_github/faultify/hardware/testcases/QR/asic_syn/dc_syn/asic_syn.v
project -run  -bg 
set_option -top_module qr_wrapper_wrapper_inj
project -run  -bg 
text_select 27 1 30 24
project -run  -bg 
project -save /home/david/projects/faultify_github/faultify/hardware/testcases/QR/asic_syn/fpga_asic_syn/proj_1.prj 
project -close /home/david/projects/faultify_github/faultify/hardware/testcases/QR/asic_syn/fpga_asic_syn/proj_1.prj
