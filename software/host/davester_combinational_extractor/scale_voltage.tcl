proc calc_error_probability {path} {

    puts "calculating probability distribution for ep: [lindex [get_object_name [get_attribute $path endpoint]] 0]"
    
    ## for all startpoints
    set point_index 0
    foreach_in_collection idx [get_attribute $path startpoint] {
	puts "sp: [get_object_name $idx]"
    }
        
    
    ## for all waypoints
    
    
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
    
    ## number of timing paths
    set num_paths [count_elements $slacks]
    
    ## failing paths
    set num_failing [check_failing_paths $slacks]
    
    ## This is not a Input Register
    if {$num_reg > 0} {
	
	puts "Num Reg: $num_reg"
	puts "Num Paths: $num_paths"
	puts "Startpoints: [get_object_name $startpoints]"
	puts ""
	
	calc_error_probability [get_timing_paths -to [get_object_name $register]/D  -nworst 100000 -slack_lesser_than 10000] 
	
	
	set voltage 1200
	set num_failing_prev 0
	
	while {$num_failing < $num_paths} {
	    
	    incr voltage -1
	    
	    set_voltage [expr {double($voltage)/1000}] -object_list VDD_TYP
	    
	    ## update slacks
	    #set slacks [get_attribute [get_timing_paths -to [get_object_name $register]/D  -cover_design -slack_lesser_than 10000] slack]
	    set slacks [get_attribute [get_timing_paths -to [get_object_name $register]/D  -nworst 100000 -slack_lesser_than 10000] slack]
	    
	    set num_failing [check_failing_paths $slacks]
	    
	    if {$num_failing > $num_failing_prev} {
		puts "failing paths: [check_failing_paths $slacks] $voltage"
		set num_failing_prev  $num_failing
	    }
	    
	}

	
	
    }
}
