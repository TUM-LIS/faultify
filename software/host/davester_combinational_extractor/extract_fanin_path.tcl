
proc count_elements {l} {
    set total 0
    foreach_in_collection nxt $l {
        incr total 1
    }
    return $total
}

#foreach_in_collection register [all_registers] {
foreach_in_collection register [get_cells "IR_reg[0]"] {
	puts "[get_object_name $register]/D -> [get_object_name [get_attribute [get_timing_paths -to [get_object_name $register]/D ] startpoint]]"
	foreach_in_collection point  [get_attribute [get_timing_paths -to [get_object_name $register]/D ] points] {
		puts  -nonewline "[get_object_name [get_attribute $point object]], [get_object_name [get_nets -of_objects [get_attribute $point object]]],"
		puts  -nonewline "[count_elements [all_fanout -from [get_object_name [get_nets -of_objects [get_attribute $point object]]] -levels 0 -flat]],"
		puts  "[get_attribute [get_nets -of_objects [get_attribute $point object]] actual_max_net_capacitance]"

	}
}
