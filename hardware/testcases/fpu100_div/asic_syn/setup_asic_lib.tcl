set search_path { /opt/tools/synopsys/SAED90_EDK/SAED_EDK90nm/Digital_Standard_cell_Library/synopsys/
dc_shell}

set target_library { /opt/tools/synopsys/SAED90_EDK/SAED_EDK90nm/Digital_Standard_cell_Library/synopsys/models/saed90nm_typ.db }
set symbol_library { }
set link_library $target_library 

set synlibs {"dw_foundation.sldb" }
set snps [get_unix_variable "SYNOPSYS"]
set synthetic_library { }
foreach i $synlibs {
	lappend synthetic_library  $snps/libraries/syn/$i
	lappend link_library  $snps/libraries/syn/$i
}
