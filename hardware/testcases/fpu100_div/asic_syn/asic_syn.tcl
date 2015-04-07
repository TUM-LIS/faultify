

source ../setup_asic_lib.tcl
source ../files.synp
set TOPLEVEL fpu
set LOG_PATH  "log/"


set STAGE  "final"
set CLK  "clk"
#set RST  "rst"
set CLK_PERIOD 10; # 2ns
#set CLK_UNCERTAINTY  0.2; # 200ps  




current_design $TOPLEVEL


# Link all blocks and uniquify them 
#link
#uniquify
# check the design for errors such as missing module definisions
check_design > $LOG_PATH$TOPLEVEL-check_design.log

#create_clock $CLK -period $CLK_PERIOD
#set_clock_uncertainty $CLK_UNCERTAINTY [all_clocks]
#set_dont_touch_network [all_clocks]

#remove_driving_cell $RST
#set_drive 0 $RST
#set_dont_touch_network $RST


compile -exact_map
#define_name_rules CAPS_ONLY -allow "A-Z 0-9"
#change_names -rules CAPS_ONLY -verbose
#change_names -rules verilog -verbose
write -hierarchy -format verilog -output asic_syn.v

# Basic reports 
report_area     > $LOG_PATH/$TOPLEVEL-$STAGE-area.log                
report_timing -nworst 10        > $LOG_PATH/$TOPLEVEL-$STAGE-timing.log
report_hierarchy                > $LOG_PATH/$TOPLEVEL-$STAGE-hierarchy.log
report_resources                > $LOG_PATH/$TOPLEVEL-$STAGE-resources.log
report_constraint               > $LOG_PATH/$TOPLEVEL-$STAGE-constraint.log

quit
