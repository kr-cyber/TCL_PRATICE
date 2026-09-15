set my_pins [list I_ORCA_TOP/pad_in[10] I_ORCA_TOP/pad_in[5] I_ORCA_TOP/sd_DQ_in[11]]

proc match_pins { pin_name } {
global my_pins
if {[lsearch -exact $my_pins $pin_name ] != -1} {
set net [get_object_name [get_attribute [get_pins $pin_name -quiet] net]]
puts "The pin $pin_name is connected to the net $net"
} else {
puts "No pin found"
}
}

