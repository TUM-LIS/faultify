
proc count_elements {l} {
    set total 0
    foreach_in_collection nxt $l {
        incr total 1
    }
    return $total
}




#foreach_in_collection register [all_registers] {
foreach_in_collection register [get_cells "IR_reg[0]"] {

	set spice_csv 1
	## open a file
	set _file [open [get_object_name $register].net w]

	if {$spice_csv == 1} {
	## SPICE title
	puts $_file "[get_object_name $register]/D -> [get_object_name [get_attribute [get_timing_paths -to [get_object_name $register]/D ] startpoint]]"
	puts $_file ".LIB SAED90nm.lib TT_12"
	puts $_file ".include saed90nm.cdl"
	puts $_file ".global udd"
	puts $_file ".global uss"
	puts $_file "VDD udd 0 DC 1.2V"
	puts $_file "VSS uss 0 DC 0V"
	puts $_file "VCLK clk 0 PULSE (0V 1.2V 5NS 0.01PS 0.01PS 5NS 10NS)" 
	puts $_file "VIN wire0 0 DC 1.2 PULSE (0V 1.200000e+00V 1NS 0PS 0PS 150NS)" 
	puts $_file "*** NETLIST DESCRIPTION ***"
	}

	set index 1
	set alternating 0

	foreach_in_collection point  [get_attribute [get_timing_paths -to [get_object_name $register]/D ] points] {
		
		if {$index>0} {
		

		## CSV output	
		if {$spice_csv == 0} {
		## Gate name and input pin
		set fields [split [get_object_name [get_attribute $point object]] "/"]
		lassign $fields gatename pinname
		puts -nonewline $_file "$gatename," 
		puts -nonewline $_file "$pinname," 
		## Class
		puts -nonewline $_file "[get_attribute [get_cells $gatename] ref_name],"
		## Net name
		puts -nonewline $_file "[get_object_name [get_nets -of_objects [get_attribute $point object]]],"
		## Fanout
		puts -nonewline $_file "[count_elements [all_fanout -from [get_object_name [get_nets -of_objects [get_attribute $point object]]] -levels 0 -flat]],"
		## Load capacitance
		puts $_file "[get_attribute [get_nets -of_objects [get_attribute $point object]] actual_max_net_capacitance]"
		} elseif {$spice_csv == 1} {
			if {$alternating == 0} {

			set fields [split [get_object_name [get_attribute $point object]] "/"]
			lassign $fields gatename outputpinname
			set gatetype [get_attribute [get_cells $gatename] ref_name]
			set outputnetname [get_object_name [get_nets -of_objects [get_attribute $point object]]]
			set capacitance [get_attribute [get_nets -of_objects [get_attribute $point object]] actual_max_net_capacitance]
			puts -nonewline $_file "$gatename," 
			puts -nonewline $_file "$outputpinname,"
			puts -nonewline $_file "$gatetype,"
			puts $_file ""

			} elseif {$alternating == 1} {
				set fields [split [get_object_name [get_attribute $point object]] "/"]
				lassign $fields nextgatename inputpinname
				if {[string equal $gatetype "DFFARX1"]} {
					if {[string equal $outputpinname "Q"]} {
						puts $_file "$gatename clk wire[expr {$index-1}] wire$index 0 1 udd uss DFFARX1"
					} else {
						puts $_file "$gatename clk wire[expr {$index-1}] 0 wire$index 1 udd uss DFFARX1"
					}
				}
			}
			set alternating [expr {!$alternating}]

		}

		}
	incr index

	}


	puts $_file "**** SIMULATION ****"
	puts $_file ".tran 10p 110n" 
	puts $_file "**** PROPAGATION DELAY ****"
	puts $_file ".control"
	puts $_file "set appendwrite"
	puts $_file "set filetype=ascii"
	puts $_file "run"


	close $_file
}
