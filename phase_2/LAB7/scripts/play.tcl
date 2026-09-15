

proc play {args} {

  parse_proc_arguments -args $args results

  echo "args = $args"
  echo "results = [array get results]"

}

define_proc_attributes play -info "Learn about parsing proc args" \
  -define_args {
     {-fruit "Any fruit" Fruit string required}
     {-veggie "Any veggie" Vegetable string optional}
     {-verbose "Generates verbose output" "" boolean optional}
  }