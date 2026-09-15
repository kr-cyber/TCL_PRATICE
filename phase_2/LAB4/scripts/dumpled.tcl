proc dump_my_module {module_name} {
 set mname "module ORCA"
 set net_list_fh [open ./verilogfile.v r]
 set dumping_verilog_fh [open to_be_dumped.v w]
 while {[gets $net_list_fh line] != -1} {
	 if { [regexp $mname $line] }
	echo "match found"	
}
 close $net_list_fh
 close $dumping_verilog_fh
}
