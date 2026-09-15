#Q: A timing report has the following line "clock v_CLK (rise edge)  7.50". Write a Tcl script using string processing c#ommands, to match the string "v_CLK" and replace it with "v_PCI_CLK"

set my_str "clock v_CLK (rise edge)  7.50"
proc string_match { clk_name } {
global my_str
if {[string match *$clk_name* $my_str]} {
puts "Matched"
set new_str [string map {"v_CLK" "v_PCI_CLK"} $my_str]
}
puts "New string: $new_str"
}   

#Usage
#-------
#source string_match.tcl
#string_match v_CLK
