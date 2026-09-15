

proc clean_log {args} {
   parse_proc_arguments -args $args results

   set in_file_handle [open $results(-infile) r]
   set out_file_handle [open $results(-outfile) w]

   # True if inside a timing report, false if not
   set inside_rpt 0
   # Number of timing reports in infile
   set infile_count 0

   while {[gets $in_file_handle each_line] != -1 } {
      if {[string match *Startpoint* $each_line]} {
         set inside_rpt 1
         set capture_rpt $each_line\n
      } elseif {[string match *slack* $each_line]} {
         set inside_rpt 0
         incr infile_count
         append capture_rpt $each_line
         puts $out_file_handle $capture_rpt 
      } elseif {$inside_rpt} {
         append capture_rpt $each_line\n
      } else {
         puts $out_file_handle $each_line
      }; # End if
   }; # End while

   if {[info exists results(-verbose)]} {
      echo "This is a space holder for verbose output"
   }

   close $in_file_handle
   close $out_file_handle
   return $infile_count
}; # End proc 

define_proc_attributes clean_log -info "Removes duplicate timing reports" \
  -define_args {
    {-infile "Log file to be cleaned" file string required}
    {-outfile "Clean log file" file string required}
    {-verbose "Generate verbose output" "" boolean optional}
  }
