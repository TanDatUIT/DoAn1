############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project ProjectOne
set_top inference_top
add_files pipeline/inference_top.cpp
add_files pipeline/common.h
add_files pipeline/D_Pool.cpp
add_files pipeline/D_Conv.cpp
add_files pipeline/D_CNN.cpp
add_files pipeline/C_Pool.cpp
add_files pipeline/C_Dense.cpp
add_files pipeline/C_Conv.cpp
add_files pipeline/C_CNN.cpp
add_files -tb pipeline/tb_inference.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vivado
set_part {xck26-sfvc784-2LV-c}
create_clock -period 10 -name default
source "./ProjectOne/solution1/directives.tcl"
csim_design -O
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
