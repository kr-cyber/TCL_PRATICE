

proc clean_log {args} {

  parse_proc_arguments -args $args results

  set in_file_handle [open $results(-infile) r]

  set out_file_handle [open $results(-outfile) w]

  # gets strips the newline from each line  
  # puts adds a newline after each line
  while {[gets $in_file_handle each_line] != -1 } {
      puts $out_file_handle $each_line
  }
  close $in_file_handle
  close $out_file_handle

  if {[info exists results(-verbose)]} {
     echo "This is a space holder for verbose output"
  }

}; # End proc 

create_command_group My_procs

define_proc_attributes clean_log -info "Removes duplicate timing reports" \
  -command_group My_procs \
  -define_args {
    {-infile "Log file to be cleaned" file string required}
    {-outfile "Clean log file name" file string required}
    {-verbose "Generate verbose output" "" boolean optional}
  }





