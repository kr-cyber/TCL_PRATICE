

proc clean_log {infile outfile} {

  set in_file_handle [open $infile r]
  set out_file_handle [open $outfile w]

  # gets strips the newline from each line  
  # puts adds a newline after each line
  while {[gets $in_file_handle each_line] != -1} { 
      puts $out_file_handle $each_line
  }

  close $out_file_handle
  close $in_file_handle 

}; # End proc 

