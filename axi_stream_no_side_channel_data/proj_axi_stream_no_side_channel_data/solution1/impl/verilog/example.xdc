create_clock -name ap_clk -period 13.333 -waveform {0.000 6.667} [get_ports ap_clk]
set_property HD.CLK_SRC BUFGCTRL_X0Y0 [get_ports ap_clk]

#set_input_delay 0 -clock CLK  [all_inputs]
#set_output_delay 0 -clock CLK [all_outputs]


