
proc rpt_TNV {} { 

redirect -variable rptstring {report_constraint -all_violators -nosplit}

# Calculate TNV for each clock group

# Indicates summation of TNV is in progress
set trigger 0

foreach line [split $rptstring \n] {
    if {[string match *VIOLATED* $line]} {
             incr TNV
             set trigger 1
        } else {
             if {$trigger} {
                echo "The total number of violations is $TNV"
                set trigger 0
             }
             echo $line
             set TNV 0
       }
   }
}; # End proc





  










