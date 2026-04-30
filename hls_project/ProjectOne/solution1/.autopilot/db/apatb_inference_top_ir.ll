; ModuleID = 'D:/HOCTAP/CLAUDE/PROJECT_ONE/DoAn1/hls_project/ProjectOne/solution1/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>" = type { %"struct.ap_fixed_base<16, 8, true, AP_TRN, AP_WRAP, 0>" }
%"struct.ap_fixed_base<16, 8, true, AP_TRN, AP_WRAP, 0>" = type { %"struct.ssdm_int<16, true>" }
%"struct.ssdm_int<16, true>" = type { i16 }

; Function Attrs: noinline
define void @apatb_inference_top_ir(%"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="784" %input, i32* noalias nocapture nonnull %digit, %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="665" %denoiser_w, %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="5738" %classifier_w) local_unnamed_addr #0 {
entry:
  %input_copy = alloca [784 x i16], align 512
  %digit_copy = alloca i32, align 512
  %denoiser_w_copy = alloca [665 x i16], align 512
  %malloccall = call i8* @malloc(i64 11476)
  %classifier_w_copy = bitcast i8* %malloccall to [5738 x i16]*
  %0 = bitcast %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"* %input to [784 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]*
  %1 = bitcast %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"* %denoiser_w to [665 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]*
  %2 = bitcast %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"* %classifier_w to [5738 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]*
  call fastcc void @copy_in([784 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* nonnull %0, [784 x i16]* nonnull align 512 %input_copy, i32* nonnull %digit, i32* nonnull align 512 %digit_copy, [665 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* nonnull %1, [665 x i16]* nonnull align 512 %denoiser_w_copy, [5738 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* nonnull %2, [5738 x i16]* %classifier_w_copy)
  %3 = getelementptr [784 x i16], [784 x i16]* %input_copy, i32 0, i32 0
  %4 = getelementptr [665 x i16], [665 x i16]* %denoiser_w_copy, i32 0, i32 0
  %5 = getelementptr [5738 x i16], [5738 x i16]* %classifier_w_copy, i32 0, i32 0
  call void @apatb_inference_top_hw(i16* %3, i32* %digit_copy, i16* %4, i16* %5)
  call void @copy_back([784 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %0, [784 x i16]* %input_copy, i32* %digit, i32* %digit_copy, [665 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %1, [665 x i16]* %denoiser_w_copy, [5738 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %2, [5738 x i16]* %classifier_w_copy)
  call void @free(i8* %malloccall)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([784 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="0", [784 x i16]* noalias nocapture align 512 "unpacked"="1.0.0.0", i32* noalias readonly "unpacked"="2", i32* noalias align 512 "unpacked"="3", [665 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="4", [665 x i16]* noalias nocapture align 512 "unpacked"="5.0.0.0", [5738 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="6", [5738 x i16]* noalias nocapture "unpacked"="7.0.0.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a784struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"([784 x i16]* align 512 %1, [784 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %0)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %3, i32* %2)
  call fastcc void @"onebyonecpy_hls.p0a665struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>.236"([665 x i16]* align 512 %5, [665 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %4)
  call fastcc void @"onebyonecpy_hls.p0a5738struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"([5738 x i16]* %7, [5738 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %6)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512, i32* noalias readonly) unnamed_addr #2 {
entry:
  %2 = icmp eq i32* %0, null
  %3 = icmp eq i32* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  %5 = load i32, i32* %1, align 4
  store i32 %5, i32* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([784 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [784 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0", i32* noalias "unpacked"="2", i32* noalias readonly align 512 "unpacked"="3", [665 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="4", [665 x i16]* noalias nocapture readonly align 512 "unpacked"="5.0.0.0", [5738 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="6", [5738 x i16]* noalias nocapture readonly "unpacked"="7.0.0.0") unnamed_addr #3 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a784struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>.287"([784 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %0, [784 x i16]* align 512 %1)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %2, i32* align 512 %3)
  call fastcc void @"onebyonecpy_hls.p0a665struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"([665 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %4, [665 x i16]* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0a5738struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>.190"([5738 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %6, [5738 x i16]* %7)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a5738struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>.190"([5738 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [5738 x i16]* noalias nocapture readonly "unpacked"="1.0.0.0") unnamed_addr #2 {
entry:
  %2 = icmp eq [5738 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [5738 x i16], [5738 x i16]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [5738 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"], [5738 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %3, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 5738
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a5738struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"([5738 x i16]* noalias nocapture "unpacked"="0.0.0.0", [5738 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1") unnamed_addr #2 {
entry:
  %2 = icmp eq [5738 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [5738 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"], [5738 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [5738 x i16], [5738 x i16]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %3, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 5738
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a665struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>.236"([665 x i16]* noalias nocapture align 512 "unpacked"="0.0.0.0", [665 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1") unnamed_addr #2 {
entry:
  %2 = icmp eq [665 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [665 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"], [665 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [665 x i16], [665 x i16]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %3, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 665
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a665struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"([665 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [665 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #2 {
entry:
  %2 = icmp eq [665 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [665 x i16], [665 x i16]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [665 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"], [665 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %3, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 665
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a784struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>.287"([784 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [784 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #2 {
entry:
  %2 = icmp eq [784 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [784 x i16], [784 x i16]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [784 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"], [784 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %3, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 784
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a784struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"([784 x i16]* noalias nocapture align 512 "unpacked"="0.0.0.0", [784 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias readonly "unpacked"="1") unnamed_addr #2 {
entry:
  %2 = icmp eq [784 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [784 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"], [784 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [784 x i16], [784 x i16]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i16, i16* %src.addr.0.0.05, align 2
  store i16 %3, i16* %dst.addr.0.0.06, align 2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 784
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_inference_top_hw(i16*, i32*, i16*, i16*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([784 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="0", [784 x i16]* noalias nocapture readonly align 512 "unpacked"="1.0.0.0", i32* noalias "unpacked"="2", i32* noalias readonly align 512 "unpacked"="3", [665 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="4", [665 x i16]* noalias nocapture readonly align 512 "unpacked"="5.0.0.0", [5738 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* noalias "unpacked"="6", [5738 x i16]* noalias nocapture readonly "unpacked"="7.0.0.0") unnamed_addr #3 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* %2, i32* align 512 %3)
  ret void
}

define void @inference_top_hw_stub_wrapper(i16*, i32*, i16*, i16*) #4 {
entry:
  %4 = alloca [784 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]
  %5 = alloca [665 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]
  %malloccall = tail call i8* @malloc(i64 11476)
  %6 = bitcast i8* %malloccall to [5738 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]*
  %7 = bitcast i16* %0 to [784 x i16]*
  %8 = bitcast i16* %2 to [665 x i16]*
  %9 = bitcast i16* %3 to [5738 x i16]*
  call void @copy_out([784 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %4, [784 x i16]* %7, i32* null, i32* %1, [665 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %5, [665 x i16]* %8, [5738 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %6, [5738 x i16]* %9)
  %10 = bitcast [784 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %4 to %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"*
  %11 = bitcast [665 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %5 to %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"*
  %12 = bitcast [5738 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %6 to %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"*
  call void @inference_top_hw_stub(%"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"* %10, i32* %1, %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"* %11, %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"* %12)
  call void @copy_in([784 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %4, [784 x i16]* %7, i32* null, i32* %1, [665 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %5, [665 x i16]* %8, [5738 x %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"]* %6, [5738 x i16]* %9)
  ret void
}

declare void @inference_top_hw_stub(%"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"*, i32*, %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"*, %"struct.ap_fixed<16, 8, AP_TRN, AP_WRAP, 0>"*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
