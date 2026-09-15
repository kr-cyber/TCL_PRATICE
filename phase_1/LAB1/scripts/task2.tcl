redirect -variable rptstr {report_lib core_slow.db}
set mx_no [regexp -all mx* $rptstr]
set xor_no [regexp -all xor* $rptstr]
echo "number of mux $mx_no and number of xor $xor_no"
