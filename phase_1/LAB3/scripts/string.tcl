set a "hello world"
set b "one\ntwo\nthree"
set b1 "one two three"
set b2 "onetwothree"
set l_count  [regexp -all l $a] 
set new_line_count [regexp -all "\n" $b]
set lenga [llength $a]
set lengb [llength $b]
echo "count of the char l is $l_count in $a"
echo "count of new line is $new_line_count in $b"

echo "length of the string $a is $lenga"
echo "length of the string $b is $lengb"
echo "pattern matching of string world is [string match *world $a] in $a"
echo "pattern matching of string two is [string match *two* $b1] in $b1"

echo "char at index 1 in $a is [string index $a 1]"
echo "char at index 0 in $a is [string index $a 0]"
echo "char at last index in $a is [string index $a end]"
echo "char at second last index in $a is [string index $a end-1]"
echo [string index $a 12]
echo "newline position in $a is [string last \n $a]"

append b1 "a"
echo "after appending a in $b1"
append b2 "a"
echo "after appending a in $b2"
#playing with list 
echo "llength usage"
echo "length of the string $a is [llength $a]"
echo "length of the string $b1 is [llength $b1]"
echo "length of the list $b1 is [llength b1]"

echo "lindex usage"
echo "index of char 1 in $a: [lindex $a 1]"
echo "index of char 0 in $a: [lindex $a 0]"

echo "lsearch usage"

echo "searching the word matching with wo in $a is [lsearch -glob $a wo*]"
echo "searching the word matching with three in $b is [lsearch -glob $b three]"
echo "searching the word matching with w in $a is [lsearch -glob $a w*]"
echo "searching the word matching with tw in $b is [lsearch -glob $b tw*]"

#element manipulation
echo "after insertion value of b is $b"
set b "one two three"
echo "after insertion value of b is [linsert $b 0 zero]"; #this will only insert the element to the list not update the oldlist
set b [linsert $b 0 zero]; #this is used to update the inserted list in the old list

lappend b four five
echo "after insertion value of b is $b"
lappend a $b
echo "after insertion value of a is $a"
echo "length of list a after insertion is [llength %a]"

#pratice using for loop
printvar "the elements present in list"
foreach element $a {
	printvar element
}

#split command str to list
set b "one\ntwo\nthree"
echo "spliting the string a at char o [split $a o]"
echo "spliting the string a at char oe [split $a oe]"
set c [split $b \n]
puts "string a is converted to list $c"
join $c
puts "list to string $c"
join [split $a o] 5


