proc get_cells_connected_to  {port_name} {
return [get_cells -of_objects $port_name]
#Returns a collection of cells 
}; # End proc
create_command_group My_procs_exercise1
define_proc_attributes get_cells_connected_to -info "Get all cells connected to given port" \
-command_group My_procs_exercise1 \
-define_args {
{port "Name of the port" port string required}
  }

#Usage:
# get_cells_connected_to sd_DQ[15]
