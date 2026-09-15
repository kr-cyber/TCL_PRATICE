#set sh_script_stop_severity W 
set sh_continue_on_error true

read_verilog ../design_data/orca.v
read_db ../libs/core_slow.db

current_design ORCA

link

source orca_const_func.tcl

# Functional mode analysis
set_case_analysis 0 [get_ports "test_mode scan_en"]
set_case_analysis 0 [get_ports power_save]
set_case_analysis 1 [get_ports pm66en]

 


