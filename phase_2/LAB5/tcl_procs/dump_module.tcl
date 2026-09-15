proc dump_my_module {mod} {
file delete -force module.v
file delete -force netlist.v
set mname "module $mod"

##change this line based on your work directory
sh cp ./design_data/orca.v  ./netlist.v

set fp [open netlist.v]
while {[gets $fp line] != -1} {
if {[regexp $mname $line]} {
echo "$line" > module.v
for {set i 0} {$i!=-1} {incr i} {
gets $fp line1
if {[string equal endmodule $line1]} {
break
}
echo "$line1" >> module.v

}
}
}
echo "endmodule" >> module.v
echo "open module.v to see the output"
close $fp
}

#Usage:
#source dump_module.tcl
#dump_my_module RESET_BLOCK
