

proc clock_domain {args} {

# This Tcl procedure identifies the clocks constraining input ports
 foreach_in_collection each_port [get_ports -quiet $args] {

  set paths [get_timing_paths -from $each_port]
  foreach_in_collection each_path $paths {
     lappend port_array([get_object_name $each_port]) \
                   [get_object_name [get_attribute $each_path endpoint_clock]]
  }
 }

 foreach item [array names port_array] {
     echo "$item    $port_array($item)"
 }
}
