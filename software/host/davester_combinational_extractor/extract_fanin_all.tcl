foreach_in_collection register [all_registers] {


	set fields [split [get_object_name $register] "/"]
	set filename ""		
	for {set i 1} {$i < [expr {[llength $fields]-1}]} {incr i} {
		append $filename [lindex $fields $i]
	}
	set _file [open [$filename]_fanin.cav w]
	#set _file [open [get_object_name $register]_fanin.csv w]
	
	puts "[get_object_name $register]"
	foreach_in_collection fanin [all_fanin -flat -to [get_object_name $register]/D ] {

		puts -nonewline $_file "[get_object_name $fanin],"

		if {[string equal [get_attribute [get_object_name $fanin] object_class] "port"]} {	

		} else {

		set fields [split [get_object_name $fanin] "/"]
		set gatename [lindex $fields 0]
		set gatenamespice [lindex $fields 0]
		#puts $_file "[lindex $fields 0]"
		for {set i 1} {$i < [expr {[llength $fields]-1}]} {incr i} {
			append gatename "/"
			append gatename [lindex $fields $i]
			append gatenamespice [lindex $fields $i]
			#puts $_file "[lindex $fields $i]"
		}

		puts -nonewline $_file "$gatenamespice," 

		## Class
		puts $_file "[get_attribute [get_cells $gatename] ref_name]"
		}
	}

	close $_file
	
}
