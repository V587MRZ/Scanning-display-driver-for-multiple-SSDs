#output reg [3:0] ssdAnode;
#output wire [6:0] ssdCathode;
#input wire clk;

set_property -dict {PACKAGE_PIN W5 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 10.00 [get_ports clk]
set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS33} [get_ports {ssdAnode[0]}]
set_property -dict {PACKAGE_PIN U4 IOSTANDARD LVCMOS33} [get_ports {ssdAnode[1]}]
set_property -dict {PACKAGE_PIN V4 IOSTANDARD LVCMOS33} [get_ports {ssdAnode[2]}]
set_property -dict {PACKAGE_PIN W4 IOSTANDARD LVCMOS33} [get_ports {ssdAnode[3]}]
set_property -dict {PACKAGE_PIN W7 IOSTANDARD LVCMOS33} [get_ports {ssdCathode[6]}]
set_property -dict {PACKAGE_PIN W6 IOSTANDARD LVCMOS33} [get_ports {ssdCathode[5]}]
set_property -dict {PACKAGE_PIN U8 IOSTANDARD LVCMOS33} [get_ports {ssdCathode[4]}]
set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVCMOS33} [get_ports {ssdCathode[3]}]
set_property -dict {PACKAGE_PIN U5 IOSTANDARD LVCMOS33} [get_ports {ssdCathode[2]}]
set_property -dict {PACKAGE_PIN V5 IOSTANDARD LVCMOS33} [get_ports {ssdCathode[1]}]
set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS33} [get_ports {ssdCathode[0]}]