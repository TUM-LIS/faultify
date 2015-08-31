
proc count_elements {l} {
    set total 0
    foreach_in_collection nxt $l {
        incr total 1
    }
    return $total
}

foreach_in_collection register [all_registers] {
	puts "[get_object_name $register]/Q -> [get_object_name [get_attribute [get_timing_paths -from [get_object_name $register]/Q ] endpoint]]"
	foreach_in_collection point  [get_attribute [get_timing_paths -from [get_object_name $register]/Q ] points] {
		puts  "[get_object_name [get_attribute $point object]] [get_object_name [get_nets -of_objects [get_attribute $point object]]]"
		puts  "[count_elements [all_fanout -from [get_object_name [get_nets -of_objects [get_attribute $point object]]] -levels 0 -flat]]"

	}
}
