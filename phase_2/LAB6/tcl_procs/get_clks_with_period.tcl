proc  get_clocks_with_period {args} {
 parse_proc_arguments -args $args results

if {[info exist results(-no_generated)]} { set no_generated 1 } else { set no_generated 0 }


###If both greater_than_or_equal_to AND less_than_or_equal_to are entered###
if { [info exist results(-greater_than_or_equal_to)] && [info exist results(-less_than_or_equal_to)] } { 
set x $results(-greater_than_or_equal_to)
set y $results(-less_than_or_equal_to)
if {$x > $y} {
puts "Invalid entry: 'greater than' value should be less than 'less than' value"} else {
if {!$no_generated} { return [get_clocks -filter "period >= $x && period <= $y"] } else {
return [get_clocks -filter "period >= $x && period <= $y && is_generated == false"]
}
}
}
###

###If only greater_than_or_equal_to is entered###
if {[info exist results(-greater_than_or_equal_to)] && ![info exist results(-less_than_or_equal_to)] } { set x $results(-greater_than_or_equal_to) 
if {!$no_generated} { return [get_clocks -filter "period >= $x"] } else {
return [get_clocks -filter "period >= $x && is_generated == false"]
}
} 
###

###If only less_than_or_equal_to is entered###
if {[info exist results(-less_than_or_equal_to)] && ![info exist results(-greater_than_or_equal_to)]} { set y $results(-less_than_or_equal_to) 
if {!$no_generated} { return [get_clocks -filter "period <= $y"] } else {
return [get_clocks -filter "period <= $y && is_generated == false"]
}
}
### 
}


define_proc_attributes get_clocks_with_period \
 -info "Get clocks with period less than/ equal to or greater than/ equal to user-defined value" \
 -define_args {
   {-greater_than_or_equal_to "greater than or equal to the given value" "" float optional}
   {-less_than_or_equal_to "less than or equal to given value" "" float optional}
   {-no_generated "Do not return generated clocks" "" boolean optional}
 }

