

proc ss {args} {

   parse_proc_arguments -args $args results

   echo *********  Commands **********
   help *$results(pattern)*

   echo "********* Variables **********"
   uplevel "printvar *$results(pattern)*"

   if {[info exists results(-verbose)]} {
      echo "********* -help *************"
      apropos *$results(pattern)*
   }
}; # end proc

define_proc_attributes ss -info "Search synopsys commands and variables" \
-define_args {
   {pattern "Pattern to search for" pattern string required}
   {-verbose "Search -help as well" "" boolean optional}}  
