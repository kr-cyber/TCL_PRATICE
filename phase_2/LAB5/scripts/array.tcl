set clk(pci_clk) 50
set clk(sys_clk) 100
set clk(sys_2x_clk) 200

foreach each_element [array names clk] {
	puts $each_element
	puts "frequency is $clk($each_element) in MHz"	
	puts "clock period of $each_element is [expr 1000.0/$clk($each_element)] ns"
}
