# ==============================================================
# Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
# Tool Version Limit: 2019.12
# Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
# ==============================================================
CSIM_DESIGN = 1

__SIM_FPO__ = 1

__SIM_MATHHLS__ = 1

__SIM_FFT__ = 1

__SIM_FIR__ = 1

__SIM_DDS__ = 1

ObjDir = obj

HLS_SOURCES = ../../../../pipeline/tb_inference.cpp ../../../../pipeline/C_CNN.cpp ../../../../pipeline/C_Conv.cpp ../../../../pipeline/C_Dense.cpp ../../../../pipeline/C_Pool.cpp ../../../../pipeline/D_CNN.cpp ../../../../pipeline/D_Conv.cpp ../../../../pipeline/D_Pool.cpp ../../../../pipeline/inference_top.cpp

override TARGET := csim.exe

AUTOPILOT_ROOT := D:/Xilinx/Vitis_HLS/2022.2
AUTOPILOT_MACH := win64
ifdef AP_GCC_M32
  AUTOPILOT_MACH := Linux_x86
  IFLAG += -m32
endif
ifndef AP_GCC_PATH
  AP_GCC_PATH := D:/Xilinx/Vitis_HLS/2022.2/tps/win64/msys64/mingw64/bin
endif
AUTOPILOT_TOOL := ${AUTOPILOT_ROOT}/${AUTOPILOT_MACH}/tools
AP_CLANG_PATH := ${AUTOPILOT_ROOT}/tps/win64/msys64/mingw64/bin
AUTOPILOT_TECH := ${AUTOPILOT_ROOT}/common/technology


IFLAG += -I "${AUTOPILOT_ROOT}/include"
IFLAG += -I "${AUTOPILOT_ROOT}/include/ap_sysc"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_FP_comp"
IFLAG += -I "${AUTOPILOT_TECH}/generic/SystemC/AESL_comp"
IFLAG += -I "${AUTOPILOT_TOOL}/auto_cc/include"
IFLAG += -D__HLS_COSIM__

IFLAG += -D__HLS_CSIM__

IFLAG += -D__VITIS_HLS__

IFLAG += -D__SIM_FPO__

IFLAG += -D__SIM_FFT__

IFLAG += -D__SIM_FIR__

IFLAG += -D__SIM_DDS__

IFLAG += -D__DSP48E2__
IFLAG += -Wno-unknown-pragmas 
AP_ENABLE_OPTIMIZED := 1
IFLAG += -DNT
LFLAG += -Wl,--enable-auto-import 
DFLAG += -D__xilinx_ip_top= -DAESL_TB
CCFLAG += -Werror=return-type
CCFLAG += -Wno-abi
TOOLCHAIN += 



include ./Makefile.rules

all: $(TARGET)



$(ObjDir)/tb_inference.o: ../../../../pipeline/tb_inference.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../pipeline/tb_inference.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/tb_inference.d

$(ObjDir)/C_CNN.o: ../../../../pipeline/C_CNN.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../pipeline/C_CNN.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/C_CNN.d

$(ObjDir)/C_Conv.o: ../../../../pipeline/C_Conv.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../pipeline/C_Conv.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/C_Conv.d

$(ObjDir)/C_Dense.o: ../../../../pipeline/C_Dense.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../pipeline/C_Dense.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/C_Dense.d

$(ObjDir)/C_Pool.o: ../../../../pipeline/C_Pool.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../pipeline/C_Pool.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/C_Pool.d

$(ObjDir)/D_CNN.o: ../../../../pipeline/D_CNN.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../pipeline/D_CNN.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/D_CNN.d

$(ObjDir)/D_Conv.o: ../../../../pipeline/D_Conv.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../pipeline/D_Conv.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/D_Conv.d

$(ObjDir)/D_Pool.o: ../../../../pipeline/D_Pool.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../pipeline/D_Pool.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/D_Pool.d

$(ObjDir)/inference_top.o: ../../../../pipeline/inference_top.cpp $(ObjDir)/.dir
	$(Echo) "   Compiling ../../../../pipeline/inference_top.cpp in $(BuildMode) mode" $(AVE_DIR_DLOG)
	$(Verb)  $(CC) ${CCFLAG} -c -MMD  $(IFLAG) $(DFLAG) -DNDEBUG $< -o $@ ; \

-include $(ObjDir)/inference_top.d
