proc get_cells_connected_to {port_name} {
 return [get_cells -of_objects $port_name]
}
