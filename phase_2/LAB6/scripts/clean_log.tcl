
# Start your procedure for the command clean_log in this file


proc clean_log {infile outfile} {

  set in_file_handle [open $infile r]

  set out_file_handle [open $outfile w]
  set l1 ""
  set str1 ""
  # gets strips the newline from each line  
  # puts adds a newline after each line
  while {[gets $in_file_handle each_line] != -1 } {
      puts $out_file_handle $each_line
      lappend l1 $each_line 
      #puts $l1
  }
  #puts $l1
  #
  #global $str1
  set str1 [join $l1 "\n"]
  redirect-file ./str.report [$str1]
  set group_list [split $str1 Startpoint]
  puts $group_list
  foreach group $group_list {
	puts $group
	set slack [regexp -all slack $group]
	#puts $slack
}
  close $in_file_handle
  close $out_file_handle

}; # End proc 

create_command_group My_procs

define_proc_attributes clean_log -info "Removes duplicate timing reports" \
  -command_group My_procs \
  -define_args {
    {infile "Log file to be cleaned" infile}
    {outfile "Clean log file name" outfile}
  }
