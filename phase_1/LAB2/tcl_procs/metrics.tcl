
proc metrics {header} {
  # Use long variable names to avoid potential conflicts
  global metrics_last_cputime 

  echo $header
  if {![info exists metrics_last_cputime]} {
     echo "CPU usage since beginning of process is [cputime] seconds"
  } else {
     set delta_cputime [expr [cputime] - $metrics_last_cputime]
     echo "CPU usage since last metrics is $delta_cputime seconds"
  }
  echo "Maximum memory used since beginning of process is [mem] Kbytes\n"
  set metrics_last_cputime [cputime]

  return ""

}; # End proc

#*********COMMANDS TO EXPLORE***********#
#proc metrics {header} {

#  echo $header
#  echo "CPU usage since beginning of process is [cputime] seconds"
#  echo "Maximum memory used since beginning of process is [mem] Kbytes\n"
#  }

#metrics "METRICS: Read Design"
#metrics "METRICS: Link Design"

#set myvar [metrics "METRICS: Read Design"]
#printvar myvar





