proc create_dict_for_my_cell { } {
set my_cells [get_cells]
set my_dct [dict create]
foreach_in_collection a $my_cells {
set ob_name [get_object_name [get_cells $a]]
set rf_name [get_attribute [get_cells $a] ref_name]
dict lappend my_dct $ob_name $rf_name
}
puts "dictionary is created"
#puts "dictionary is:"
#puts "$my_dct"
return $my_dct
} 

proc query_my_dict {cell_name} {
set dt [create_dict_for_my_cell]
if {[dict exists $dt $cell_name]} {
set rf [dict get $dt $cell_name]
puts "ref name of for $cell_name is $rf"
} else {
puts "cell does not exist"
}
}
