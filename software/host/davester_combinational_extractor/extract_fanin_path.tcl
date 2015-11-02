
proc count_elements {l} {
    set total 0
    foreach_in_collection nxt $l {
        incr total 1
    }
    return $total
}


set _slackfile [open slack.csv w]

foreach_in_collection register [all_registers] {


set fields [split [get_object_name $register] "/"]
set easyname ""	
for {set i 0} {$i < [llength $fields]} {incr i} {
	append easyname [lindex $fields $i]	
}


puts -nonewline $_slackfile "$easyname,"

if {[string equal [get_attribute [get_timing_paths -to [get_object_name $register]/D ] slack] "INFINITY"]} {
puts -nonewline $_slackfile "inf,"
} else {
puts -nonewline $_slackfile "[get_attribute [get_timing_paths -to [get_object_name $register]/D ] slack],"
}
puts 		$_slackfile "[get_attribute [get_timing_paths -to [get_object_name $register]/D ] endpoint_setup_time_value]"

}
close $_slackfile

foreach_in_collection register [all_registers] {
	

	set spice_csv 1
	
	##
	for {set v 50} {$v <= 120} {incr v} {
	##
	## open a file
	set fields [split [get_object_name $register] "/"]
	set filename ""	
	for {set i 0} {$i < [llength $fields]} {incr i} {
		append filename [lindex $fields $i]	
	}
	set filename_full $filename\_$v.net

	set _file [open $filename_full w]

	puts "[get_object_name $register]"

	if {$spice_csv == 1} {
	## SPICE title
	puts $_file "[get_object_name $register]/D <- [get_object_name [get_attribute [get_timing_paths -to [get_object_name $register]/D ] startpoint]]"
	puts $_file ".LIB SAED90nm.lib TT_12"
	puts $_file ".include saed90nm.cdl"
	puts $_file ".global udd"
	puts $_file ".global uss"
	puts $_file "VDD udd 0 DC [expr {double($v)/100}]V"
	puts $_file "VSS uss 0 DC 0V"
	puts $_file "VCLK clk 0 PULSE (0V 1.2V 10NS 0.01PS 0.01PS 30NS 60NS)" 
        #puts $_file "VIN   wire0p uss PULSE (0V [expr {double($v)/100}]V 1NS 0PS 0PS 150NS)"
        #puts $_file "VIN_n wire0n uss PULSE ([expr {double($v)/100}]V 0V 1NS 0PS 0PS 150NS)"
	puts $_file "VIN wire0 uss PWL (0NS 1.2V 1NS 1.2V 1NS 0V 50NS 0V 50NS 1.2V)"
	puts $_file "*** NETLIST DESCRIPTION ***"
	}

	set index 1
	set totalindex 1
	set alternating 0
	set pin_start 0

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
			#puts "[get_object_name [get_attribute $point object] ]"

			if {$alternating == 0} {
			
			if {$pin_start == 1} {
				set capacitance [get_attribute [get_nets -of_objects [get_attribute $point object]] actual_max_net_capacitance]
				puts $_file "c$totalindex wire[expr {$index-1}] 0 [expr {$capacitance/100}]pF"
				set pin_start 0
			}
			
			if {[string equal [get_attribute [get_object_name [get_attribute $point object]] object_class] "port"]} {	
				set gatenamespice [get_object_name [get_attribute $point object]]
				#puts $_file "R$gatenamespice wire[expr {$index-1}] wire$index 0"
				puts $_file "x$gatenamespice clk wire[expr {$index-1}] wire$index 0 udd uss DFFX1"

				set pin_start 1
				set alternating 1
				incr index
			} else {

			set fields [split [get_object_name [get_attribute $point object]] "/"]
			#puts $_file "[get_object_name [get_attribute $point object]]"
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
			}
			} elseif {$alternating == 1} {
					
					
				set fields [split [get_object_name [get_attribute $point object]] "/"]
				lassign $fields nextgatename outputpinname
				set capacitance [get_attribute [get_nets -of_objects [get_attribute $point object]] actual_max_net_capacitance]
				set fields2 [split [get_object_name [get_nets -of_objects [get_attribute $point object]]] "/"]
				lassign $fields2 unused netname
				#puts $_file "$nextgatename $outputpinname [get_attribute [get_cells $nextgatename] ref_name]"
				if {[string equal -length 6 $gatetype "DFFARX"]} {
					if {[string equal $outputpinname "Q"]} {
						puts $_file "x$gatenamespice clk wire[expr {$index-1}] wire$index 0 udd udd uss $gatetype"
					} else {
						puts $_file "x$gatenamespice clk wire[expr {$index-1}] 0 wire$index udd udd uss $gatetype"
					}
				# DFFSSRX1 CLK D Q QN RSTB SETB VDD VSS
				} elseif {[string equal -length 7 $gatetype "DFFSSRX"]} {
					if {[string equal $outputpinname "Q"]} {
						puts $_file "x$gatenamespice clk wire[expr {$index-1}] wire$index 0 udd udd udd uss $gatetype"
					} else {
						puts $_file "x$gatenamespice clk wire[expr {$index-1}] 0 wire$index udd udd udd uss $gatetype"
					}
				} elseif {[string equal -length 4 $gatetype "DFFX"]} {
 					if {[string equal $outputpinname "Q"]} {
						puts $_file "x$gatenamespice clk wire[expr {$index-1}] wire$index 0 udd uss $gatetype"
					} else {
						puts $_file "x$gatenamespice clk wire[expr {$index-1}] 0 wire$index udd uss $gatetype"
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
				} elseif {[string equal -length 6 $gatetype "OAI21X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] 0 udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice 0 wire[expr {$index-1}] udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice udd 0 wire[expr {$index-1}] wire$index udd uss $gatetype"
					} 
				} elseif {[string equal -length 6 $gatetype "OAI22X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] 0 udd 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice 0 wire[expr {$index-1}] udd 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice udd 0 wire[expr {$index-1}] 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN4"]} {
						puts $_file "x$gatenamespice udd 0 0 wire[expr {$index-1}] wire$index udd uss $gatetype"
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
				} elseif {[string equal -length 7 $gatetype "AOI222X"]} {
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
				} elseif {[string equal -length 5 $gatetype "OA22X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] 0 udd 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice 0 wire[expr {$index-1}] udd 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice udd 0 wire[expr {$index-1}] 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN4"]} {
						puts $_file "x$gatenamespice udd 0 0 wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 6 $gatetype "OA221X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] 0 udd 0 udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice 0 wire[expr {$index-1}] udd 0 udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice udd 0 wire[expr {$index-1}] 0 udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN4"]} {
						puts $_file "x$gatenamespice udd 0 0 wire[expr {$index-1}] udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN5"]} {
						puts $_file "x$gatenamespice udd 0 udd 0 wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 7 $gatetype "OAI221X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] 0 udd 0 udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice 0 wire[expr {$index-1}] udd 0 udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice udd 0 wire[expr {$index-1}] 0 udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN4"]} {
						puts $_file "x$gatenamespice udd 0 0 wire[expr {$index-1}] udd wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN5"]} {
						puts $_file "x$gatenamespice udd 0 udd 0 wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 6 $gatetype "OA222X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] 0 udd 0 udd 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice 0 wire[expr {$index-1}] udd 0 udd 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice udd 0 wire[expr {$index-1}] 0 udd 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN4"]} {
						puts $_file "x$gatenamespice udd 0 0 wire[expr {$index-1}] udd 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN5"]} {
						puts $_file "x$gatenamespice udd 0 udd 0 wire[expr {$index-1}] 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN6"]} {
						puts $_file "x$gatenamespice udd 0 udd 0 0 wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 7 $gatetype "OAI222X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] 0 udd 0 udd 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice 0 wire[expr {$index-1}] udd 0 udd 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice udd 0 wire[expr {$index-1}] 0 udd 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN4"]} {
						puts $_file "x$gatenamespice udd 0 0 wire[expr {$index-1}] udd 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN5"]} {
						puts $_file "x$gatenamespice udd 0 udd 0 wire[expr {$index-1}] 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN6"]} {
						puts $_file "x$gatenamespice udd 0 udd 0 0 wire[expr {$index-1}] wire$index udd uss $gatetype"
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
				} elseif {[string equal -length 3 $gatetype "OR3X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] 0 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice 0 wire[expr {$index-1}] 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice 0 0 wire[expr {$index-1}] wire$index udd uss $gatetype"
					}
				} elseif {[string equal -length 3 $gatetype "OR4X"]} {
					if {[string equal $inputpinname "IN1"]} {
						puts $_file "x$gatenamespice wire[expr {$index-1}] 0 0 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN2"]} {
						puts $_file "x$gatenamespice 0 wire[expr {$index-1}] 0 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN3"]} {
						puts $_file "x$gatenamespice 0 0 wire[expr {$index-1}] 0 wire$index udd uss $gatetype"
					} elseif {[string equal $inputpinname "IN4"]} {
						puts $_file "x$gatenamespice 0 0 0 wire[expr {$index-1}] wire$index udd uss $gatetype"
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
				} elseif {[string equal -length 5 $gatetype "HADDX"]} {
					if {[string equal $outputpinname "C1"]} {
						if {[string equal $inputpinname "A0"]} {
							puts $_file "x$gatenamespice wire[expr {$index-1}] udd wire$index uss udd uss $gatetype"
						} elseif {[string equal $inputpinname "B0"]} {
							puts $_file "x$gatenamespice udd wire[expr {$index-1}] wire$index uss udd uss $gatetype"
						} 
					} else {
						if {[string equal $inputpinname "A0"]} {
							puts $_file "x$gatenamespice wire[expr {$index-1}] uss uss wire$index udd uss $gatetype"
						} elseif {[string equal $inputpinname "B0"]} {
							puts $_file "x$gatenamespice uss wire[expr {$index-1}] uss wire$index udd uss $gatetype"
						} 
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
	
	#puts $_file "$gatename $outputpinname [get_attribute [get_cells $gatename] ref_name]"
	set finalgatetype [get_attribute [get_cells $gatename] ref_name]

	if {[string equal -length 6 $finalgatetype "DFFARX"]} {
		if {[string equal $outputpinname "Q"]} {
			puts $_file "xFF$gatenamespice clk wire[expr {$index-1}] wire$index 0 udd udd uss $finalgatetype"
		} else {
			puts $_file "xFF$gatenamespice clk wire[expr {$index-1}] 0 wire$index udd udd uss $finalgatetype"
		}
	} elseif {[string equal -length 4 $finalgatetype "DFFX"]} {
 		if {[string equal $outputpinname "Q"]} {
			puts $_file "xFF$gatenamespice clk wire[expr {$index-1}] wire$index 0 udd uss $finalgatetype"
		} else {
			puts $_file "xFF$gatenamespice clk wire[expr {$index-1}] 0 wire$index udd uss $finalgatetype"
		}
	}

	puts $_file "**** SIMULATION ****"
	puts $_file ".tran 100p 140n UIC" 
	puts $_file "**** PROPAGATION DELAY ****"
	puts $_file ".control"
	puts $_file "set appendwrite"
	puts $_file "set filetype=ascii"
	puts $_file "run"
	puts $_file "meas TRAN prop_delay TRIG clk val=0.6 cross=3 TARG wire[expr {$index-1}] val=[expr {double($v)/200}] cross=LAST"
	puts $_file "quit"
	puts $_file ".endc"
	puts $_file ".end"

	close $_file
	##
	}
	##
}
