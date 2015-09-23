
proc count_elements {l} {
    set total 0
    foreach_in_collection nxt $l {
        incr total 1
    }
    return $total
}


set _slackfile [open slack.csv w]

foreach_in_collection register [all_registers] {

puts -nonewline $_slackfile "[get_object_name $register],"
puts -nonewline $_slackfile "[get_attribute [get_timing_paths -to [get_object_name $register]/D ] slack],"
puts 		$_slackfile "[get_attribute [get_timing_paths -to [get_object_name $register]/D ] endpoint_setup_time_value]"

}
close $_slackfile

foreach_in_collection register [all_registers] {
	
	puts "[get_object_name $register]"


	set spice_csv 1
	
	##
	for {set v 6} {$v <= 12} {incr v} {
	##
	## open a file
	set _file [open [get_object_name $register]_$v.net w]

	puts "[get_object_name $register]"

	if {$spice_csv == 1} {
	## SPICE title
	puts $_file "[get_object_name $register]/D <- [get_object_name [get_attribute [get_timing_paths -to [get_object_name $register]/D ] startpoint]]"
	puts $_file ".LIB SAED90nm.lib TT_12"
	puts $_file ".include saed90nm.cdl"
	puts $_file ".global udd"
	puts $_file ".global uss"
	puts $_file "VDD udd 0 DC [expr {double($v)/10}]V"
	puts $_file "VSS uss 0 DC 0V"
	puts $_file "VCLK clk 0 PULSE (0V 1.2V 10NS 0.01PS 0.01PS 10NS 20NS)" 
	puts $_file "VIN wire0 0 DC [expr {double($v)/10}] PULSE (0V 1.200000e+00V 1NS 0PS 0PS 150NS)" 
	puts $_file "*** NETLIST DESCRIPTION ***"
	}

	set index 1
	set totalindex 1
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
			
			set gatename [lindex $fields 0]
			set gatenamespice [lindex $fields 0]
			#puts $_file "[lindex $fields 0]"
			for {set i 1} {$i < [expr {[llength $fields]-1}]} {incr i} {
				append gatename "/"
				append gatename [lindex $fields $i]
				append gatenamespice [lindex $fields $i]
				#puts $_file "[lindex $fields $i]"
			}

			 
			set inputpinname [lindex $fields [expr {[llength $fields]-1}] ]
			set gatetype [get_attribute [get_cells $gatename] ref_name]
			set outputnetname [get_object_name [get_nets -of_objects [get_attribute $point object]]]

			#set capacitance [get_attribute [get_nets -of_objects [get_attribute $point object]] actual_max_net_capacitance]
			#puts  $_file "[llength $fields],[lindex $fields [expr {[llength $fields]-1}] ]"
			#puts -nonewline $_file "[get_object_name [get_attribute $point object]],"
			#puts -nonewline $_file "$gatename," 
			#puts -nonewline $_file "$inputpinname,"
			#puts -nonewline $_file "$gatetype,"
			#puts $_file ""

			} elseif {$alternating == 1} {
				set fields [split [get_object_name [get_attribute $point object]] "/"]
				lassign $fields nextgatename outputpinname
				set capacitance [get_attribute [get_nets -of_objects [get_attribute $point object]] actual_max_net_capacitance]
				set fields2 [split [get_object_name [get_nets -of_objects [get_attribute $point object]]] "/"]
				lassign $fields2 unused netname
				#puts -nonewline $_file "input pinname $inputpinname,"
				if {[string equal -length 6 $gatetype "DFFARX"]} {
					if {[string equal $outputpinname "Q"]} {
						puts $_file "x$gatenamespice clk wire[expr {$index-1}] wire$index 0 udd udd uss $gatetype"
					} else {
						puts $_file "x$gatenamespice clk wire[expr {$index-1}] 0 wire$index udd udd uss $gatetype"
					}
				} elseif {[string equal -length 6 $gatetype "NBUFFX"]} { 
					puts $_file "x$gatenamespice wire[expr {$index-1}] udd uss wire$index $gatetype"
				} elseif {[string equal -length 5 $gatetype "NOR2X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] uss wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice uss wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 5 $gatetype "NOR3X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] 0 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice 0 wire[expr {$index-1}] 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice 0 0 wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 5 $gatetype "NOR4X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] 0 0 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice 0 wire[expr {$index-1}] 0 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice 0 0 wire[expr {$index-1}] 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN4"]} {
						puts $_file "x$gatenamespice 0 0 0 wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 5 $gatetype "AO21X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] udd 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice udd wire[expr {$index-1}] 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice 0 0 wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 5 $gatetype "OA21X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] uss udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice uss wire[expr {$index-1}] udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice udd udd wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 5 $gatetype "AOI21X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] udd 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice udd wire[expr {$index-1}] 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice 0 0 wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 5 $gatetype "AO22X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] udd 0 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice udd wire[expr {$index-1}] 0 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice 0 0 wire[expr {$index-1}] udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN4"]} {
						puts $_file "x$gatenamespice 0 0 udd wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 6 $gatetype "AOI22X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] udd 0 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice udd wire[expr {$index-1}] 0 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice 0 0 wire[expr {$index-1}] udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN4"]} {
						puts $_file "x$gatenamespice 0 0 udd wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 6 $gatetype "OAI22X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] 0 0 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice 0 wire[expr {$index-1}] 0 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice 0 0 wire[expr {$index-1}] 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN4"]} {
						puts $_file "x$gatenamespice 0 0 0 wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 6 $gatetype "AO221X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] udd 0 0 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice udd wire[expr {$index-1}] 0 0 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice 0 0 wire[expr {$index-1}] udd 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN4"]} {
						puts $_file "x$gatenamespice 0 0 udd wire[expr {$index-1}] 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN5"]} {
						puts $_file "x$gatenamespice 0 0 0 0 wire[expr {$index-1}] wire$index udd uss $gatetype"
					} 
				} elseif {[string equal -length 6 $gatetype "AOI221X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] udd 0 0 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice udd wire[expr {$index-1}] 0 0 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice 0 0 wire[expr {$index-1}] udd 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN4"]} {
						puts $_file "x$gatenamespice 0 0 udd wire[expr {$index-1}] 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN5"]} {
						puts $_file "x$gatenamespice 0 0 0 0 wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 6 $gatetype "AO222X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] udd 0 0 0 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice udd wire[expr {$index-1}] 0 0 0 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice 0 0 wire[expr {$index-1}] udd 0 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN4"]} {
						puts $_file "x$gatenamespice 0 0 udd wire[expr {$index-1}] 0 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN5"]} {
						puts $_file "x$gatenamespice 0 0 0 0 wire[expr {$index-1}] udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN6"]} {
						puts $_file "x$gatenamespice 0 0 0 0 udd wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 4 $gatetype "INVX"]} {
					puts $_file "x$gatenamespice wire[expr {$index-1}] udd uss wire$index $gatetype"
				} elseif {[string equal -length 4 $gatetype "DELLN"]} {
					puts $_file "x$gatenamespice wire[expr {$index-1}] udd uss wire$index $gatetype"
				
				} elseif {[string equal -length 3 $gatetype "OR2X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice 0 wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 5 $gatetype "XOR2X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice udd wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 5 $gatetype "XOR3X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] udd udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice udd wire[expr {$index-1}] udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice udd udd wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 5 $gatetype "XNOR2X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice udd wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 5 $gatetype "XNOR3X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] udd udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice udd wire[expr {$index-1}] udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice udd udd wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 6 $gatetype "NAND2X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice udd wire[expr {$index-1}] wire$index udd uss $gatetype"
					} 
				} elseif {[string equal -length 6 $gatetype "NAND3X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] udd udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice udd wire[expr {$index-1}] udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice udd udd wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 6 $gatetype "NAND4X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] udd udd udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice udd wire[expr {$index-1}] udd udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice udd udd wire[expr {$index-1}] udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN4"]} {
						puts $_file "x$gatenamespice udd udd udd wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 5 $gatetype "AND2X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice udd wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 5 $gatetype "AND3X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] udd udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice udd wire[expr {$index-1}] udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice udd udd wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 5 $gatetype "AND4X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] udd udd udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice udd wire[expr {$index-1}] udd udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice udd udd wire[expr {$index-1}] udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN4"]} {
						puts $_file "x$gatenamespice udd udd udd wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 6 $gatetype "MUX21X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] udd wire$index uss udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice udd wire[expr {$index-1}] wire$index udd udd uss $gatetype"
					} elseif {[string equal $inputpinname "S"]} {
						puts $_file "x$gatenamespice udd uss wire$index wire[expr {$index-1}] udd uss $gatetype"
					}
				} elseif {[string equal -length 6 $gatetype "MUX41X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] udd udd udd wire$index uss uss udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice udd wire[expr {$index-1}] udd udd wire$index uss udd udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice udd udd wire[expr {$index-1}] udd wire$index udd uss udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN4"]} {
						puts $_file "x$gatenamespice udd udd udd wire[expr {$index-1}] wire$index udd udd udd uss $gatetype"
					} elseif {[string equal $inputpinname "S0"]} {
						puts $_file "x$gatenamespice udd uss uss udd wire$index wire[expr {$index-1}] uss udd uss $gatetype"
					} elseif {[string equal $inputpinname "S1"]} {
						puts $_file "x$gatenamespice udd uss uss udd wire$index uss wire[expr {$index-1}] udd uss $gatetype"
					}
				} elseif {[string equal -length 5 $gatetype "FADDX"]} {
					if {[string equal $outputpinname "CO"]} {
						if {[string equal $inputpinname "A"]} {
							puts $_file "x$gatenamespice wire[expr {$index-1}] udd udd wire$index uss udd uss $gatetype"
						} elseif {[string equal $inputpinname "B"]} {
							puts $_file "x$gatenamespice udd wire[expr {$index-1}] udd wire$index uss udd uss $gatetype"
						} elseif {[string equal $inputpinname "CI"]} {
							puts $_file "x$gatenamespice udd udd wire[expr {$index-1}] wire$index udd udd uss $gatetype"
						}
					} else {
						if {[string equal $inputpinname "A"]} {
							puts $_file "x$gatenamespice wire[expr {$index-1}] udd udd uss wire$index udd uss $gatetype"
						} elseif {[string equal $inputpinname "B"]} {
							puts $_file "x$gatenamespice udd wire[expr {$index-1}] udd uss wire$index udd uss $gatetype"
						} elseif {[string equal $inputpinname "CI"]} {
							puts $_file "x$gatenamespice udd udd wire[expr {$index-1}] uss wire$index udd uss $gatetype"
						}
					}
				#} elseif {[string equal -length 6 $gatetype "b14_DW"]} {
				#	incr index -1
				} else {
					puts "ERROR: Unknown Gate $gatetype"
				}
				puts $_file "c$totalindex wire$index 0 [expr {$capacitance/100}]pF"
				incr index
				incr totalindex
			}
			set alternating [expr {!$alternating}]

		}

		
		}

	}


	puts $_file "**** SIMULATION ****"
	puts $_file ".tran 200p 40n" 
	puts $_file "**** PROPAGATION DELAY ****"
	puts $_file ".control"
	puts $_file "set appendwrite"
	puts $_file "set filetype=ascii"
	puts $_file "run"
	puts $_file "meas TRAN prop_delay TRIG clk val=0.6 cross=1 TARG wire[expr {$index-1}] val=[expr {double($v)/20}] cross=1"
	puts $_file "quit"
	puts $_file ".endc"
	puts $_file ".end"

	close $_file
	##
	}
	##
}
