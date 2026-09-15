

proc clean_log {args} {
   parse_proc_arguments -args $args results

   set in_file_handle [open $results(-infile) r]
   set out_file_handle [open $results(-outfile) w]

   # True if inside timing report, false otherwise
   set inside_rpt 0
   # Tracks number of timing reports in infile
   set infile_count 0

   while {[gets $in_file_handle each_line] >= 0 } {
      if {[string match *Startpoint* $each_line]} {
         set inside_rpt 1
         set capture_rpt $each_line\n
      } elseif {[string match *slack* $each_line]} {
         set inside_rpt 0
         incr infile_count
         append capture_rpt $each_line
         if {[info exists prev_rpts]} {
            if {[lsearch -exact $prev_rpts $capture_rpt] == -1} {
               lappend prev_rpts $capture_rpt
               puts $out_file_handle $capture_rpt
            }
          } else {
            lappend prev_rpts $capture_rpt
            puts $out_file_handle $capture_rpt
          }
       } elseif {$inside_rpt} {
          append capture_rpt $each_line\n
       } else {
          puts $out_file_handle $each_line
       }; # End if
   }; # End while

   if {[info exists results(-verbose)]} {
      echo "\nThere were $infile_count timing reports in the original log file"
      echo "Of these, [llength $prev_rpts] were unique timing reports"
      echo "[expr $infile_count - [llength $prev_rpts]] timing reports were cleaned"
   }
   close $in_file_handle
   close $out_file_handle
   return [expr $infile_count - [llength $prev_rpts]]
}; # End proc 

define_proc_attributes clean_log -info "Removes duplicate timing reports" \
  -define_args {
    {-infile "Log file to be cleaned" file string required}
    {-outfile "Clean log file" file string required}
    {-verbose "Generate verbose output" "" boolean optional}
  }
