set master_data {ad_cell1 sa_cell1 ar_cell1 va_cell1 su_cell1 sa_cell2 ar_cell2 va_cell2 su_cell3 hb_cell1}
set master_list ""
set master_dict [dict create]
foreach a $master_data {
set pat [string range $a 0 1]
dict lappend master_dict $pat $a
}
set my_keys [dict keys $master_dict] 
foreach b $my_keys {
set value [dict get $master_dict $b]
lappend master_list $value
}
return $master_list

