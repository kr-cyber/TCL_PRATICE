
proc clean_log {infile outfile} {
	echo "$infile"
	echo [pwd]
	set infile_fh [open  $infile r]
	set outfile_fh [open  $outfile w]
	while { [gets $infile_fh eachline] !=-1} {
		puts $outfile_fh $eachline
	}
	close $infile_fh
	close $outfile_fh

}

create_command_group My_procs

define_proc_attributes clean_log \
-info "removes duplicates from timing group from timing log i.e. space,newline.etc" \
-command_group My_procs \
-define_args {
	{infile "log file to be cleaned" infile}
	{outfile "clean log file" outfile}
}

