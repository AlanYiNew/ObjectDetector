############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 2015 Xilinx Inc. All rights reserved.
############################################################
open_project proj_axi_stream_no_side_channel_data
set_top example
add_files example.cpp
add_files -tb example_test.cpp
open_solution "solution1"
set_part {xc7z020clg484-2}
create_clock -period 75MHz -name default
#source "./proj_axi_stream_no_side_channel_data/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -format ip_catalog
