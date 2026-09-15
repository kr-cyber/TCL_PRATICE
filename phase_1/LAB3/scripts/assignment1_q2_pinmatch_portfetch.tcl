set in_str "I_ORCA_TOP/pad_in[10],I_ORCA_TOP/pad_in[5],I_ORCA_TOP/sd_DQ_in[11]"
set in_list [split $in_str ,]
echo $in_list
proc findpin_fetchport {pin_name} {
global in_list
	foreach element $in_list {
		echo "cu_ele :$element, pin_name:$pin_name"
		puts [string match *$pin_name* element]
		if {[string match *$pin_name* $element]} {
			echo "match found\n port of the matched pin is $element"
		}
	}
}
