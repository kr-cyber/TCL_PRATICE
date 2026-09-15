
proc clean_log {args} {
	parse_proc_arguments -args $args results
	echo "args = $args"
	#echo "array = [array get $results]"
	set infile_fh [open  $results(-infile) r]
	set outfile_fh [open  $results(-outfile) w]
	while { [gets $infile_fh eachline] !=-1} {
		puts $outfile_fh $eachline
	}
	close $infile_fh
	close $outfile_fh

	if {[info exists results(-verbose)]} {
		echo "place holder for verbose"
	}

};

create_command_group My_procs

define_proc_attributes clean_log -info "removes duplicates from timing group from timing log i.e. space,newline.etc" \
-command_group My_procs \
-define_args {
	{-infile "log file to be cleaned" file string required}
	{-outfile "clean log file" file string optional}
	{-verbose "generate verbose output" "" boolean optional}
}

