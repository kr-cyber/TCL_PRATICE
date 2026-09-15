proc dump_my_module {module_name} {
 set mname "module $module_name"
 set net_list_fh [open ./verilogfile.v r]
 set dumping_verilog_fh [open to_be_dumped.v w]
 set flag [expr 0]
 while {[gets $net_list_fh line] != -1} {
	 if { [regexp "$mname " $line] } {
		 #echo "matched at\n"
		 echo "$line" > to_be_dumped.v
		 #echo "starting after finding the module name\n"
	
		# infinite loop with break statement 
		 for {set i 0} {$i!=-1} {incr i} {  
			#echo "searching after matching the module name"
			gets $net_list_fh endline_find 
			echo $endline_find 
			echo "$endline_find" >> to_be_dumped.v
	 		#echo $line	>> to_be_dumped.v
			if {[string equal endmodule $endline_find]} {
			echo "breaking the loop after finding the endmodule of the moudle_name"
			set flag [ expr 1]
			break
			}
		}
	}
	echo "iteration of while loop"
	if {$flag == 1} {
	echo "breaking the while loop using flag"
	break	
	}	
}

 close $net_list_fh
 close $dumping_verilog_fh
}
