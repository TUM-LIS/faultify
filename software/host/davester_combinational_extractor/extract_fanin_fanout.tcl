
source ../setup_asic_lib.tcl
read_file -format vhdl {../b14.vhd}
create_clock -name "clk" -period 20 -waveform { 0 10  }  { clock }
compile -exact_map


report_timing -path full -delay max -nworst 1 -input_pins -max_paths 100000 -significant_digits 5 -nosplit -sort_by group -unique_pins -nets > full_report.txt



#report_net [get_nets -hierarchical] > all_fanout.txt

foreach_in_collection register [all_registers] {
	puts "Generating fanin/fanout report for: [get_object_name $register]"
	report_transitive_fanout -from [get_object_name $register]/* -nosplit > fanout_[get_object_name $register]
	report_transitive_fanin  -to   [get_object_name $register]/* -nosplit > fanin_[get_object_name $register]
	}
