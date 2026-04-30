// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __inference_top_mac_muladd_4ns_8ns_4ns_11_4_1__HH__
#define __inference_top_mac_muladd_4ns_8ns_4ns_11_4_1__HH__
#include "inference_top_mac_muladd_4ns_8ns_4ns_11_4_1_DSP48_4.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int din2_WIDTH,
    int dout_WIDTH>
SC_MODULE(inference_top_mac_muladd_4ns_8ns_4ns_11_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_in< sc_dt::sc_lv<din2_WIDTH> >   din2;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    inference_top_mac_muladd_4ns_8ns_4ns_11_4_1_DSP48_4 inference_top_mac_muladd_4ns_8ns_4ns_11_4_1_DSP48_4_U;

    SC_CTOR(inference_top_mac_muladd_4ns_8ns_4ns_11_4_1):  inference_top_mac_muladd_4ns_8ns_4ns_11_4_1_DSP48_4_U ("inference_top_mac_muladd_4ns_8ns_4ns_11_4_1_DSP48_4_U") {
        inference_top_mac_muladd_4ns_8ns_4ns_11_4_1_DSP48_4_U.clk(clk);
        inference_top_mac_muladd_4ns_8ns_4ns_11_4_1_DSP48_4_U.rst(reset);
        inference_top_mac_muladd_4ns_8ns_4ns_11_4_1_DSP48_4_U.ce(ce);
        inference_top_mac_muladd_4ns_8ns_4ns_11_4_1_DSP48_4_U.in0(din0);
        inference_top_mac_muladd_4ns_8ns_4ns_11_4_1_DSP48_4_U.in1(din1);
        inference_top_mac_muladd_4ns_8ns_4ns_11_4_1_DSP48_4_U.in2(din2);
        inference_top_mac_muladd_4ns_8ns_4ns_11_4_1_DSP48_4_U.dout(dout);

    }

};

#endif //
