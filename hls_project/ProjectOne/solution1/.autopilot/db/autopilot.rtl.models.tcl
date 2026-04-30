set SynModuleInfo {
  {SRCNAME D_CNN_Pipeline_loop_for_channel_pad_0 MODELNAME D_CNN_Pipeline_loop_for_channel_pad_0 RTLNAME inference_top_D_CNN_Pipeline_loop_for_channel_pad_0
    SUBMODULES {
      {MODELNAME inference_top_flow_control_loop_pipe_sequential_init RTLNAME inference_top_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME inference_top_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME D_CNN_Pipeline_VITIS_LOOP_19_1_loop_for_bp2D_0_loop_for_ap2D_0 MODELNAME D_CNN_Pipeline_VITIS_LOOP_19_1_loop_for_bp2D_0_loop_for_ap2D_0 RTLNAME inference_top_D_CNN_Pipeline_VITIS_LOOP_19_1_loop_for_bp2D_0_loop_for_ap2D_0
    SUBMODULES {
      {MODELNAME inference_top_mac_muladd_3ns_10ns_5ns_12_4_1 RTLNAME inference_top_mac_muladd_3ns_10ns_5ns_12_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_mul_mul_16s_16s_24_4_1 RTLNAME inference_top_mul_mul_16s_16s_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_mac_muladd_16s_16s_24ns_24_4_1 RTLNAME inference_top_mac_muladd_16s_16s_24ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME D_CNN_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_8_2_VITIS_LOOP_9_3 MODELNAME D_CNN_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_8_2_VITIS_LOOP_9_3 RTLNAME inference_top_D_CNN_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_8_2_VITIS_LOOP_9_3
    SUBMODULES {
      {MODELNAME inference_top_mac_muladd_3ns_8ns_8ns_10_4_1 RTLNAME inference_top_mac_muladd_3ns_8ns_8ns_10_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME D_CNN_Pipeline_loop_for_3_channel_pad_1_loop_for_channel_pad_1_loop_for_weight_p MODELNAME D_CNN_Pipeline_loop_for_3_channel_pad_1_loop_for_channel_pad_1_loop_for_weight_p RTLNAME inference_top_D_CNN_Pipeline_loop_for_3_channel_pad_1_loop_for_channel_pad_1_loop_for_weight_p
    SUBMODULES {
      {MODELNAME inference_top_mul_3ns_9ns_10_1_1 RTLNAME inference_top_mul_3ns_9ns_10_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1 MODELNAME D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1 RTLNAME inference_top_D_CNN_Pipeline_VITIS_LOOP_56_1_loop_for_bp2D_1_loop_for_ap2D_1
    SUBMODULES {
      {MODELNAME inference_top_mac_muladd_4ns_8ns_4ns_11_4_1 RTLNAME inference_top_mac_muladd_4ns_8ns_4ns_11_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME D_CNN_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2_VITIS_LOOP_28_3 MODELNAME D_CNN_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2_VITIS_LOOP_28_3 RTLNAME inference_top_D_CNN_Pipeline_VITIS_LOOP_26_1_VITIS_LOOP_27_2_VITIS_LOOP_28_3
    SUBMODULES {
      {MODELNAME inference_top_mac_muladd_4ns_10ns_5ns_13_4_1 RTLNAME inference_top_mac_muladd_4ns_10ns_5ns_13_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_mac_muladd_3ns_8ns_4ns_11_4_1 RTLNAME inference_top_mac_muladd_3ns_8ns_4ns_11_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME D_CNN_Pipeline_loop_for_3_channel_pad_2_loop_for_channel_pad_2_loop_for_weight_p MODELNAME D_CNN_Pipeline_loop_for_3_channel_pad_2_loop_for_channel_pad_2_loop_for_weight_p RTLNAME inference_top_D_CNN_Pipeline_loop_for_3_channel_pad_2_loop_for_channel_pad_2_loop_for_weight_p
    SUBMODULES {
      {MODELNAME inference_top_mul_4ns_11ns_13_1_1 RTLNAME inference_top_mul_4ns_11ns_13_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME D_CNN_Pipeline_loop_for_fc_2_loop_for_fb_2_loop_for_fa_2 MODELNAME D_CNN_Pipeline_loop_for_fc_2_loop_for_fb_2_loop_for_fa_2 RTLNAME inference_top_D_CNN_Pipeline_loop_for_fc_2_loop_for_fb_2_loop_for_fa_2}
  {SRCNAME D_CNN_Pipeline_loop_for_3_channel_pad_3_loop_for_channel_pad_3_loop_for_weight_p MODELNAME D_CNN_Pipeline_loop_for_3_channel_pad_3_loop_for_channel_pad_3_loop_for_weight_p RTLNAME inference_top_D_CNN_Pipeline_loop_for_3_channel_pad_3_loop_for_channel_pad_3_loop_for_weight_p
    SUBMODULES {
      {MODELNAME inference_top_mul_3ns_11ns_12_1_1 RTLNAME inference_top_mul_3ns_11ns_12_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME D_Conv2D_3 MODELNAME D_Conv2D_3 RTLNAME inference_top_D_Conv2D_3
    SUBMODULES {
      {MODELNAME inference_top_dadd_64ns_64ns_64_5_full_dsp_1 RTLNAME inference_top_dadd_64ns_64ns_64_5_full_dsp_1 BINDTYPE op TYPE dadd IMPL fulldsp LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_ddiv_64ns_64ns_64_22_no_dsp_1 RTLNAME inference_top_ddiv_64ns_64ns_64_22_no_dsp_1 BINDTYPE op TYPE ddiv IMPL fabric LATENCY 21 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_dexp_64ns_64ns_64_13_full_dsp_1 RTLNAME inference_top_dexp_64ns_64ns_64_13_full_dsp_1 BINDTYPE op TYPE dexp IMPL fulldsp LATENCY 12 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME D_CNN_Pipeline_VITIS_LOOP_26_1 MODELNAME D_CNN_Pipeline_VITIS_LOOP_26_1 RTLNAME inference_top_D_CNN_Pipeline_VITIS_LOOP_26_1}
  {SRCNAME D_CNN MODELNAME D_CNN RTLNAME inference_top_D_CNN
    SUBMODULES {
      {MODELNAME inference_top_D_CNN_OutPadConv0_V_RAM_AUTO_1R1W RTLNAME inference_top_D_CNN_OutPadConv0_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_D_CNN_conv1_V_RAM_1WNR_AUTO_1R1W RTLNAME inference_top_D_CNN_conv1_V_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_D_CNN_pool_V_RAM_AUTO_1R1W RTLNAME inference_top_D_CNN_pool_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_D_CNN_OutPadConv1_V_RAM_1WNR_AUTO_1R1W RTLNAME inference_top_D_CNN_OutPadConv1_V_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_D_CNN_conv2_V_RAM_AUTO_1R1W RTLNAME inference_top_D_CNN_conv2_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_D_CNN_upsample_V_RAM_AUTO_1R1W RTLNAME inference_top_D_CNN_upsample_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_D_CNN_OutPadConv2_V_RAM_AUTO_1R1W RTLNAME inference_top_D_CNN_OutPadConv2_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_D_CNN_conv3_V_RAM_AUTO_1R1W RTLNAME inference_top_D_CNN_conv3_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_D_CNN_OutPadConv3_V_RAM_1WNR_AUTO_1R1W RTLNAME inference_top_D_CNN_OutPadConv3_V_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0 MODELNAME C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0 RTLNAME inference_top_C_CNN_Pipeline_loop_for_channel2D_0_loop_for_bp2D_0_loop_for_ap2D_0
    SUBMODULES {
      {MODELNAME inference_top_mul_3ns_7ns_9_1_1 RTLNAME inference_top_mul_3ns_7ns_9_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME C_CNN_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_8_2_VITIS_LOOP_9_3 MODELNAME C_CNN_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_8_2_VITIS_LOOP_9_3 RTLNAME inference_top_C_CNN_Pipeline_VITIS_LOOP_6_1_VITIS_LOOP_8_2_VITIS_LOOP_9_3}
  {SRCNAME C_CNN_Pipeline_loop_for_fc_1_loop_for_fb_1_loop_for_fa_1 MODELNAME C_CNN_Pipeline_loop_for_fc_1_loop_for_fb_1_loop_for_fa_1 RTLNAME inference_top_C_CNN_Pipeline_loop_for_fc_1_loop_for_fb_1_loop_for_fa_1}
  {SRCNAME C_CNN_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3 MODELNAME C_CNN_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3 RTLNAME inference_top_C_CNN_Pipeline_VITIS_LOOP_29_1_VITIS_LOOP_31_2_VITIS_LOOP_32_3}
  {SRCNAME C_CNN_Pipeline_VITIS_LOOP_50_1_VITIS_LOOP_51_2_VITIS_LOOP_52_3 MODELNAME C_CNN_Pipeline_VITIS_LOOP_50_1_VITIS_LOOP_51_2_VITIS_LOOP_52_3 RTLNAME inference_top_C_CNN_Pipeline_VITIS_LOOP_50_1_VITIS_LOOP_51_2_VITIS_LOOP_52_3}
  {SRCNAME C_CNN_Pipeline_loop_for_a_Dense_0_loop_for_b_Dense_0 MODELNAME C_CNN_Pipeline_loop_for_a_Dense_0_loop_for_b_Dense_0 RTLNAME inference_top_C_CNN_Pipeline_loop_for_a_Dense_0_loop_for_b_Dense_0}
  {SRCNAME C_CNN_Pipeline_VITIS_LOOP_13_1 MODELNAME C_CNN_Pipeline_VITIS_LOOP_13_1 RTLNAME inference_top_C_CNN_Pipeline_VITIS_LOOP_13_1}
  {SRCNAME C_CNN_Pipeline_loop_for_a_Dense_1 MODELNAME C_CNN_Pipeline_loop_for_a_Dense_1 RTLNAME inference_top_C_CNN_Pipeline_loop_for_a_Dense_1
    SUBMODULES {
      {MODELNAME inference_top_mul_mul_16s_15ns_24_4_1 RTLNAME inference_top_mul_mul_16s_15ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_mac_muladd_16s_15ns_24ns_24_4_1 RTLNAME inference_top_mac_muladd_16s_15ns_24ns_24_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME C_CNN_Pipeline_VITIS_LOOP_28_1 MODELNAME C_CNN_Pipeline_VITIS_LOOP_28_1 RTLNAME inference_top_C_CNN_Pipeline_VITIS_LOOP_28_1}
  {SRCNAME C_Dense_2_Pipeline_loop_for_a_Dense_2 MODELNAME C_Dense_2_Pipeline_loop_for_a_Dense_2 RTLNAME inference_top_C_Dense_2_Pipeline_loop_for_a_Dense_2}
  {SRCNAME C_Dense_2_Pipeline_loop_detect MODELNAME C_Dense_2_Pipeline_loop_detect RTLNAME inference_top_C_Dense_2_Pipeline_loop_detect}
  {SRCNAME {exp<17, 9>} MODELNAME exp_17_9_s RTLNAME inference_top_exp_17_9_s
    SUBMODULES {
      {MODELNAME inference_top_mul_25ns_25ns_50_1_1 RTLNAME inference_top_mul_25ns_25ns_50_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_mul_mul_25ns_18ns_43_4_1 RTLNAME inference_top_mul_mul_25ns_18ns_43_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_exp_17_9_s_f_x_lsb_table_V_ROM_AUTO_1R RTLNAME inference_top_exp_17_9_s_f_x_lsb_table_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_exp_17_9_s_exp_x_msb_2_m_1_table_V_ROM_AUTO_1R RTLNAME inference_top_exp_17_9_s_exp_x_msb_2_m_1_table_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_exp_17_9_s_exp_x_msb_1_table_V_ROM_AUTO_1R RTLNAME inference_top_exp_17_9_s_exp_x_msb_1_table_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME C_Dense_2_Pipeline_VITIS_LOOP_53_1 MODELNAME C_Dense_2_Pipeline_VITIS_LOOP_53_1 RTLNAME inference_top_C_Dense_2_Pipeline_VITIS_LOOP_53_1}
  {SRCNAME C_Dense_2_Pipeline_VITIS_LOOP_57_2 MODELNAME C_Dense_2_Pipeline_VITIS_LOOP_57_2 RTLNAME inference_top_C_Dense_2_Pipeline_VITIS_LOOP_57_2
    SUBMODULES {
      {MODELNAME inference_top_sdiv_25ns_16s_16_29_1 RTLNAME inference_top_sdiv_25ns_16s_16_29_1 BINDTYPE op TYPE sdiv IMPL auto LATENCY 28 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME C_Dense_2_Pipeline_VITIS_LOOP_62_3 MODELNAME C_Dense_2_Pipeline_VITIS_LOOP_62_3 RTLNAME inference_top_C_Dense_2_Pipeline_VITIS_LOOP_62_3}
  {SRCNAME C_Dense_2 MODELNAME C_Dense_2 RTLNAME inference_top_C_Dense_2
    SUBMODULES {
      {MODELNAME inference_top_C_Dense_2_out_Dense_V_RAM_AUTO_1R1W RTLNAME inference_top_C_Dense_2_out_Dense_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME C_CNN MODELNAME C_CNN RTLNAME inference_top_C_CNN
    SUBMODULES {
      {MODELNAME inference_top_mac_muladd_4ns_8ns_8ns_11_4_1 RTLNAME inference_top_mac_muladd_4ns_8ns_8ns_11_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_C_CNN_out_Dense_V_RAM_AUTO_1R1W RTLNAME inference_top_C_CNN_out_Dense_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_C_CNN_out_Dense_V_1_RAM_AUTO_1R1W RTLNAME inference_top_C_CNN_out_Dense_V_1_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_C_CNN_Conv1_C1_V_RAM_1WNR_AUTO_1R1W RTLNAME inference_top_C_CNN_Conv1_C1_V_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_C_CNN_MaxPool_S2_V_RAM_AUTO_1R1W RTLNAME inference_top_C_CNN_MaxPool_S2_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_C_CNN_Conv2_C3_V_RAM_1WNR_AUTO_1R1W RTLNAME inference_top_C_CNN_Conv2_C3_V_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_C_CNN_MaxPool_S4_V_RAM_AUTO_1R1W RTLNAME inference_top_C_CNN_MaxPool_S4_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_C_CNN_Dense_C5_V_RAM_AUTO_1R1W RTLNAME inference_top_C_CNN_Dense_C5_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_C_CNN_Dense_F6_V_RAM_AUTO_1R1W RTLNAME inference_top_C_CNN_Dense_F6_V_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME inference_top MODELNAME inference_top RTLNAME inference_top IS_TOP 1
    SUBMODULES {
      {MODELNAME inference_top_denoised_V_RAM_1WNR_AUTO_1R1W RTLNAME inference_top_denoised_V_RAM_1WNR_AUTO_1R1W BINDTYPE storage TYPE ram_1wnr IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME inference_top_gmem0_m_axi RTLNAME inference_top_gmem0_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME inference_top_gmem1_m_axi RTLNAME inference_top_gmem1_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME inference_top_control_s_axi RTLNAME inference_top_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
      {MODELNAME inference_top_control_r_s_axi RTLNAME inference_top_control_r_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
