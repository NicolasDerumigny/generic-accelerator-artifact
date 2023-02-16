############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project gemv-max-sharing
set_top corr_accel
add_files gemv-max-sharing/src/correlation.cpp
add_files gemv-max-sharing/src/correlation.hpp
add_files gemv-max-sharing/src/dma.hpp
open_solution "zcu104" -flow_target vivado
set_part {xczu7ev-ffvc1156-2-e}
create_clock -period 10 -name default
config_export -flow impl -format ip_catalog -rtl verilog -vivado_clock 10 -vivado_phys_opt all
source "./gemv-max-sharing/zcu104/directives.tcl"
#csim_design
csynth_design
#cosim_design
export_design -flow impl -rtl verilog -format ip_catalog
