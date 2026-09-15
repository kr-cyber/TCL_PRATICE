proc list_sub { lis1 lis2 } {
set result ""
foreach el $lis1 {
if {[lsearch -exact $lis2 $el] == -1} {
lappend result $el
}
}
return $result
}
#Usage
#------
#source list_sub.tcl
#list_sub $list1 $list2

