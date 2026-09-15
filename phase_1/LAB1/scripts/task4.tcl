set str "abc icc snps icc def icc"
set icc_count [regexp -all icc $str]
echo "Number of icc substring in string str is $icc_count"

set str1 "searchagivenstring"
set give_count [regexp -all give $str1]
echo "Number of give substring in string str1 is $give_count"



