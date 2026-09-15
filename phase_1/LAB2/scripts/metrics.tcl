
proc metrics {header} {
  global metrics_last_cputime
  echo $header
  echo [info exists metrics_last_cputime]
if { [info exists metrics_last_cputime] } {
		set cur_cputime [expr [cputime] - $metrics_last_cputime]
	echo "CPU usage since beginning of process is $cur_cputime seconds"
  } else {
	echo "CPU usage since beginning of process is [cputime] seconds"
}
echo "Maximum memory used since beginning of process is [mem] Kbytes\n"
set metrics_last_cputime [cputime]
echo "after every process value of meteric_last_cpu_time $metrics_last_cputime"
return ""
}; #end proc



