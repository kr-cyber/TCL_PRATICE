set clk1 [dict create pci_clk 100 sys_clk 100 sys_2x_clk 200]
echo $clk1
echo [dict get $clk1 sys_clk]
echo [dict size $clk1]
echo "size of the dictionary [dict size $clk1]"
set keys_list [list [dict keys $clk1]]
set keys_name  [dict keys $clk1]
echo "keys of the dictionary $keys_list"
set values_list [list [dict values $clk1]]
echo "values of the dictionary $values_list"
echo "keynames $keys_name"
if {![dict exists "new_clocks" $keys_name] } {
  echo [dict exists "new_clocks" $keys_name] 
  echo "appending new_clock"
  dict set clk1 new_clock [expr 800]
  #echo $clk1
}
echo "after adding new_clock :$clk1"
dict set clk1 new_clock [expr 1000]
echo "after updating value from 800 tio 1000 $clk1"

dict incr clk1 new_clock -200
echo "after changing the value back to 800 using incr $clk1"
