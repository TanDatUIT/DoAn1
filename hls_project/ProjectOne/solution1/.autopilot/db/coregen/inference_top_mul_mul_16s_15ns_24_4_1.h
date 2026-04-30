// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __inference_top_mul_mul_16s_15ns_24_4_1__HH__
#define __inference_top_mul_mul_16s_15ns_24_4_1__HH__
#include "inference_top_mul_mul_16s_15ns_24_4_1_DSP48_7.h"

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(inference_top_mul_mul_16s_15ns_24_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    inference_top_mul_mul_16s_15ns_24_4_1_DSP48_7 inference_top_mul_mul_16s_15ns_24_4_1_DSP48_7_U;

    SC_CTOR(inference_top_mul_mul_16s_15ns_24_4_1):  inference_top_mul_mul_16s_15ns_24_4_1_DSP48_7_U ("inference_top_mul_mul_16s_15ns_24_4_1_DSP48_7_U") {
        inference_top_mul_mul_16s_15ns_24_4_1_DSP48_7_U.clk(clk);
        inference_top_mul_mul_16s_15ns_24_4_1_DSP48_7_U.rst(reset);
        inference_top_mul_mul_16s_15ns_24_4_1_DSP48_7_U.ce(ce);
        inference_top_mul_mul_16s_15ns_24_4_1_DSP48_7_U.a(din0);
        inference_top_mul_mul_16s_15ns_24_4_1_DSP48_7_U.b(din1);
        inference_top_mul_mul_16s_15ns_24_4_1_DSP48_7_U.p(dout);

    }

};

#endif //
