set_app_var search_path [list .  /opt/tools/synopsys/SAED90_EDK/SAED_EDK90nm/Digital_Standard_cell_Library/synopsys/models]
set_app_var link_path [list * saed90nm_typ.db]

read_db saed90nm_typ.db

read_verilog ../simple.v
current_design simple
link_design simple

#read_verilog ../fpu_mul_syn.v
#current_design fpu
#link_design fpu

#define_scaling_lib_group {saed90nm_max.db saed90nm_typ.db saed90nm_min.db}
define_scaling_lib_group {saed90nm_typ.db saed90nm_typ_tm.db saed90nm_typ_ntl.db}


create_clock -name "clk" -period 0.44 -waveform { 0 0.22  }  {clk}
#create_clock -name "clk" -period 60 -waveform { 0 30  }  {Clk_i}

create_power_domain TOP

create_power_domain pdA -elements [get_cell I_post_norm_mul]

create_supply_port VDD_TYP 
create_supply_net  VDD_TYP -domain TOP

create_supply_port VDD_LOW 
create_supply_net  VDD_LOW -domain TOP
create_supply_net  VDD_LOW -domain pdA -reuse
connect_supply_net VDD_LOW -ports VDD_LOW

create_supply_port VSS
create_supply_net  VSS -domain TOP
create_supply_net  VSS -domain pdA -reuse
connect_supply_net VSS -ports VSS


set_domain_supply_net TOP -primary_power_net VDD_TYP -primary_ground_net VSS
set_domain_supply_net pdA -primary_power_net VDD_LOW -primary_ground_net VSS


set_voltage 1.2 -object_list VDD_TYP
set_voltage 0.8 -object_list VDD_LOW
set_temperature 25.0 -object_list [get_cells]

check_timing -override_defaults operating_conditions

report_timing
#report_timing -from A_Reg/CLK -to G_Reg/D
#report_timing -from B_Reg/CLK -to G_Reg/D
#report_timing -from C_Reg/CLK -to G_Reg/D

#set power_enable_analysis true
#set_switching_activity [get_nets -hierarchical *] -static_probability 0.1 -toggle_rate 0.1 -period 60
#set_switching_activity [get_nets Clk_i] -static_probability 0.5 -toggle_rate 1.0 -period 60
#read_vcd test.vcd -strip_path main/DUT
#report_power
#1.305e-03
#1.214e-03


write_sdf -version 3 mydesign.sdf
quit

