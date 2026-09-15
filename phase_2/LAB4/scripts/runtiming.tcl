
set link_path "core_slow.db io_slow.db CLKMUL_lib.db PLL_lib.db *"

read_verilog orca.v

link_design ORCA

source orca_const_func.tcl

# Functional mode analysis
set_case_analysis 0 [get_ports "test_mode scan_en"]
set_case_analysis 0 [get_ports power_save]
set_case_analysis 1 [get_ports pm66en]

report_timing -max 10

report_timing -max 15
 
#quit

