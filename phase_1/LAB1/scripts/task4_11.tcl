set str2 "clock v_CLK (rise edge) 7.50"
echo $str2 
set f_ind [expr [string last "_" $str2]+1]
set l_ind [expr [string last " (" $str2]-1]
#set to_be_replaced [string range $str2 $f_ind $l_ind]
set str1 [string replace $str2 $f_ind $l_ind PCI_CLK]
echo $str1

#string replace $str2 
