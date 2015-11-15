proc calculate_kronecker {vector1 vector2} {
    set result {}
    foreach el1 $vector1 {
	foreach el2 $vector2 {
	    lappend result [expr {$el1 * $el2}]
	}
    }
    return $result
}


proc string_kronecker {vector1 vector2} {
    set result {}
    
    foreach el1 $vector1 {
	foreach el2 $vector2 {
	    set cat ""
	    #puts "$el1 $el2"
	    append cat $el1 $el2 
	    #puts $cat
	    lappend result $cat
	}
    }
    return $result
}

proc initialize_gate_mask {register} {
    global gate_mask
    foreach_in_collection  cell [all_fanin -to [get_object_name $register]/D -only_cells] {
	set act_name [get_object_name $cell]
	set act_type [get_attribute $cell ref_name]
	#puts "$act_name ($act_type)"
	
	if {[string equal -length 6 $act_type NAND2X]} {
	    dict set gate_mask $act_name mask {rrf r1f ffr f1r 1rf 1fr};
	}
	if {[string equal -length 5 $act_type AND2X]} {
	    dict set gate_mask $act_name mask {rrr r1r fff f1f 1rr 1ff};
	}
	
    }
}


proc find_relevant_entries_in_mask {mask rise_fall input_index} {

    set relevant_entries {}
    #puts "$mask $rise_fall $input_index"
    foreach comb $mask {
	if {[string equal $rise_fall rise]} {
	    if {[string equal [string index $comb $input_index] r]} {
		#puts $comb
		lappend relevant_entries $comb
	    }
	}
	if {[string equal $rise_fall fall]} {
	    if {[string equal [string index $comb $input_index] f]} {
		#puts $comb
		lappend relevant_entries $comb
		
	    }
	}
    }
    return $relevant_entries
}


proc remove_output_from_mask {mask input_index} {
    set new_mask {}
    
    foreach entry $mask {
	set new_entry ""
	
	for {set x 0} {$x<[expr {[string length $entry]-1}]} {incr x} {
	    #puts [string index $entry $x]
	    append new_entry [string index $entry $x]
	    }
	append new_entry "-"
	#puts $new_entry
	lappend new_mask $new_entry
    }
    return $new_mask
}

proc delete_entries_from_mask {gate_name entries} {
    global gate_mask
    set act_mask [dict get $gate_mask $gate_name mask]
    puts $act_mask
    puts $entries
    puts $gate_name
    foreach to_delete_entry $entries {
	set updated_mask {}
	#puts $to_delete_entry
	foreach entry $act_mask {
	    if {[string equal $to_delete_entry $entry] == 0} {
		lappend updated_mask $entry
	    }
	}
	set act_mask $updated_mask
    }
    puts $updated_mask
    set $gate_mask [dict remove $gate_mask $gate_name mask]
    dict set gate_mask $gate_name mask $updated_mask
}


proc calculate_masking_probability {gate_name entries input_index} {

    set switching_activities_gate [get_switching_activity $gate_name/*]
    set result {}
    foreach entry $entries {
	set term 1
	for {set x 0} {$x<[expr {[string length $entry]-1}]} {incr x} {
	    if {$input_index != $x} {
		set p1 [lindex [split [lindex $switching_activities_gate $x] " "] 5]
		#puts $p1
		if [string equal [string index $entry $x] r] {
		    set factor [expr {(1-$p1)*$p1}]
		}
		if [string equal [string index $entry $x] f] {
		    set factor [expr {$p1*(1-$p1)}]
		}
		if [string equal [string index $entry $x] 1] {
		    set factor [expr {$p1*$p1}]
		}
		if [string equal [string index $entry $x] 0] {
		    set factor [expr {(1-$p1)*(1-$p1)}]
		}
		#puts $factor
		set term [expr {$factor * $term}]
	    }
	}
	lappend result $term
	
    }
    #puts "mask transitions = $result"
    return $result
    
}



proc get_input_pin_index {cell_type pin_name} {

    if {[string equal -length 4 $cell_type NAND]} {
	if {[string equal $pin_name IN1]} {
	    set input_index 0
	}
	if {[string equal $pin_name IN2]} {
	    set input_index 1
	}
    }
    
    if {[string equal -length 3 $cell_type AND]} {
	if {[string equal $pin_name IN1]} {
	    set input_index 0
	}
	if {[string equal $pin_name IN2]} {
	    set input_index 1
	}
    }

    return $input_index
}

proc gate_masking {cell_name cell_type pin_name rise_fall} {
    puts "calculating masking probability for NAND2-Gate $cell_name ($pin_name)"
   
    global gate_mask
    set act_mask [dict get $gate_mask $cell_name mask]
    puts $act_mask
    
    set input_index [get_input_pin_index $cell_type $pin_name]
        
    set relevant_entries [find_relevant_entries_in_mask $act_mask $rise_fall $input_index]
    puts $relevant_entries
    set masking_probabilities [calculate_masking_probability $cell_name $relevant_entries $input_index]
    puts $masking_probabilities

    set new_mask [remove_output_from_mask $relevant_entries $input_index]
    puts $new_mask

    dict set gate_mask probs $masking_probabilities
    dict set gate_mask mask $new_mask

    return $gate_mask
}

proc multiply_list {list} {
    set product 1
    for {set x 0} {$x<[llength $list]} {incr x} {
	set product [expr {$product*[lindex $list $x]}]
    }
    return $product
}

proc sum_list {list} {
    set sum 0
    for {set x 0} {$x<[llength $list]} {incr x} {
	set sum [expr {$sum+[lindex $list $x]}]
    }
    return $sum
}


proc calc_overall_pe {pe_list slacks} {
    set sum 0
    for {set x 0} {$x<[llength $slacks]} {incr x} {
	if {[lindex $slacks $x] <= 0} {
	    set sum  [expr {double($sum) + [lindex $pe_list $x]}]
	}
    }
    return $sum
}


proc calc_corrected_slack {slacks setup_times} {
    set c_slack {}
    for {set x 0} {$x<[llength $slacks]} {incr x} {
	append c_slack [expr {[lindex $slacks $x] + [expr {[lindex $setup_times $x]}]/1}] " "
    }
    return $c_slack
}


proc calc_error_probability {path} {

    puts "calculating probability distribution for ep: [lindex [get_object_name [get_attribute $path endpoint]] 0]"
    
    set timing_points  [get_attribute $path points]
    set endpoint "[lindex [get_object_name [get_attribute $path endpoint]] 0]"

    set point_index 0
    set pe_list {}

    

    ## for all startpoints
    foreach_in_collection idx [get_attribute $path startpoint] {
	puts "------------------------------"
	puts "--sp--: [get_object_name $idx]"
	puts "------------------------------"
	
	## for all waypoints
	set act_point [get_attribute [index_collection $timing_points $point_index] object]
	set act_waypoint_index 0
	set equation {}
	set path_mask ""
	while {[string equal [get_object_name $act_point] $endpoint] == 0} {

	    ## extract cell name, type and input pin
	    set fields [split [get_object_name $act_point] "/"]
	    set cell_name [lindex $fields 0]
	    for {set i 1} {$i < [expr {[llength $fields]-1}]} {incr i} {
		append cell_name "/"
		append cell_name [lindex $fields $i]
	    }
	    set pin_name [lindex $fields [expr {[llength $fields]-1}] ]
	    set ref_name [get_attribute [get_cells $cell_name] ref_name]

	    

	    ## We don't care about FFs
	    if {[string equal -length 3 $ref_name "DFF"] == 0} {
		
		puts "tp: [get_object_name $act_point]"
		puts "tp_ref: $cell_name -> $ref_name"
		
		## our starting factor of the calculation
		## the switching activity of input pin
		## the worst case resulting error of that path
		## failing 
		if {$act_waypoint_index == 0} {
		    
## TODO:calculate for falling/rising
		    set alpha_raw [lindex [split [get_switching_activity [get_object_name $act_point] ] " "] 2]
		    #puts "alpha_raw: $alpha_raw"

		    set alpha [expr {$alpha_raw*0.44/2}]
		    #set alpha 1

		    #puts "alpha: $alpha"
		    append equation $alpha " "
		    set rise_fall [get_attribute [index_collection $timing_points $point_index] rise_fall]
		    append path_mask [string index $rise_fall 0] "-"
		}
		## Here we want to determine the probability that the
		## signal is NOT masked. because then a fault will 
		## be visible at the output


		set rise_fall [get_attribute [index_collection $timing_points $point_index] rise_fall]
 	        #puts "$rise_fall"

		
		set p_mask [gate_masking $cell_name $ref_name $pin_name $rise_fall]


		puts "mask: [dict get $p_mask mask]"
		puts "probs: [dict get $p_mask probs]"

		## calculate kronecker tensor
		set equation [calculate_kronecker $equation [dict get $p_mask probs]]
		set path_mask [string_kronecker $path_mask [dict get $p_mask mask]]
		puts $path_mask
		
		incr act_waypoint_index 1
	    }


	    ## we increment by 2 to skip output pin net
	    incr point_index 2
	    set act_point [get_attribute [index_collection $timing_points $point_index] object]
	}
	incr point_index 1
	puts "eq: $equation"
	set pe [sum_list $equation]
	puts "p_error|tau>Tclk: $pe"
	append pe_list $pe " "
    }
    return $pe_list
}

proc count_register {l} {
    # -1 because we don't count ourself
    set total -1
    foreach_in_collection nxt $l {
	if {[lsearch [get_object_name [all_registers]] [get_object_name $nxt]] >= 0} {
	    incr total 1
	}
    }
    return $total
}

proc count_elements {l} {
    set total 0
    foreach nxt $l {
	incr total 1
    }
    return $total
}

proc check_failing_paths {l} {
    set total 0
    foreach nxt $l {
	if {$nxt <= 0} {
	    incr total 1
	}
    }
    return $total
}


#########################
## MAIN #################
#########################




foreach_in_collection register [all_registers] {
    
    set_voltage 1.2 -object_list VDD_TYP
    
    ## all_fanin
    set fanin [all_fanin -to [get_object_name $register]/D -only_cells]
    
    ## number of startpoint register
    set num_reg [count_register $fanin]
    
    ## startpoints
    #set startpoints [get_attribute [get_timing_paths -to [get_object_name $register]/D  -cover_design -slack_lesser_than 10000] startpoint]
    set startpoints [get_attribute [get_timing_paths -to [get_object_name $register]/D  -nworst 100000 -slack_lesser_than 10000] startpoint]
    
    ## slacks
    #set slacks [get_attribute [get_timing_paths -to [get_object_name $register]/D  -cover_design -slack_lesser_than 10000] slack]
    set slacks [get_attribute [get_timing_paths -to [get_object_name $register]/D  -nworst 100000 -slack_lesser_than 10000] slack]
    
    set setup_times [get_attribute [get_timing_paths -to [get_object_name $register]/D  -nworst 100000 -slack_lesser_than 10000] endpoint_setup_time_value]
	    
    set c_slacks [calc_corrected_slack $slacks $setup_times]
    

    ## number of timing paths
    set num_paths [count_elements $slacks]
    
    ## failing paths
    set num_failing [check_failing_paths $c_slacks]


    ## This is not a Input Register
    if {$num_reg > 0} {


	## initialize gate masking table
	
        initialize_gate_mask $register
	#global gate_mask
	#puts "gate masking transitions:"
	#puts "[dict get $gate_mask]"
	
	puts "Num Reg: $num_reg"
	puts "Num Paths: $num_paths"
	puts "Startpoints: [get_object_name $startpoints]"
	puts ""
	
	set pe_list [calc_error_probability [get_timing_paths -to [get_object_name $register]/D  -nworst 100000 -slack_lesser_than 10000]]
	#puts "$pe_list"
	
	
	set voltage 1200
	set num_failing_prev 0

	puts ""
	puts ""
	puts "-----------------------------"
	puts "V O L T A G E   S C A L I N G"
	puts "--------------!--------------"
	puts ""
	puts ""

	while {$num_failing < $num_paths} {
	    
	    incr voltage -1
	    
	    set_voltage [expr {double($voltage)/1000}] -object_list VDD_TYP
	    
	    ## update slacks
	    #set slacks [get_attribute [get_timing_paths -to [get_object_name $register]/D  -cover_design -slack_lesser_than 10000] slack]
	    set slacks [get_attribute [get_timing_paths -to [get_object_name $register]/D  -nworst 100000 -slack_lesser_than 10000] slack]
	    
	    set setup_times [get_attribute [get_timing_paths -to [get_object_name $register]/D  -nworst 100000 -slack_lesser_than 10000] endpoint_setup_time_value]
	    
	    set c_slacks [calc_corrected_slack $slacks $setup_times]
	    
	    #puts "c_slacks: $c_slacks"

	    set num_failing [check_failing_paths $c_slacks]
	 
	    if {$num_failing > $num_failing_prev} {
		set sum_pe [calc_overall_pe $pe_list $c_slacks]
		#puts "failing paths: [check_failing_paths $slacks] @ $voltage *E-4 V -> p_e: $sum_pe"
		puts "$voltage,$sum_pe"
		set num_failing_prev  $num_failing
	    }
	    
	}

	
	
    }
}
