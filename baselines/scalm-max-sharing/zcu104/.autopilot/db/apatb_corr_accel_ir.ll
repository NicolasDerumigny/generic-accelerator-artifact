; ModuleID = '/home/derumigny/FPGA/data/zcu104/2023-Dac/sscale-max-sharing/zcu104/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

%"struct.ap_uint<64>" = type { %"struct.ap_int_base<64, false>" }
%"struct.ap_int_base<64, false>" = type { %"struct.ssdm_int<64, false>" }
%"struct.ssdm_int<64, false>" = type { i64 }

; Function Attrs: noinline
define void @apatb_corr_accel_ir(%"struct.ap_uint<64>"* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="8192" %data_in, %"struct.ap_uint<64>"* noalias nocapture nonnull "fpga.decayed.dim.hint"="8192" %data_out, %"struct.ap_uint<64>"* noalias nocapture nonnull readonly %counter, %"struct.ap_uint<64>"* noalias nocapture nonnull %start_time, %"struct.ap_uint<64>"* noalias nocapture nonnull %end_time) local_unnamed_addr #0 {
entry:
  %malloccall = call i8* @malloc(i64 65536)
  %data_in_copy = bitcast i8* %malloccall to [8192 x i64]*
  %malloccall1 = call i8* @malloc(i64 65536)
  %data_out_copy = bitcast i8* %malloccall1 to [8192 x i64]*
  %counter_copy = alloca i64, align 512
  %start_time_copy = alloca i64, align 512
  %end_time_copy = alloca i64, align 512
  %0 = bitcast %"struct.ap_uint<64>"* %data_in to [8192 x %"struct.ap_uint<64>"]*
  %1 = bitcast %"struct.ap_uint<64>"* %data_out to [8192 x %"struct.ap_uint<64>"]*
  call fastcc void @copy_in([8192 x %"struct.ap_uint<64>"]* nonnull %0, [8192 x i64]* %data_in_copy, [8192 x %"struct.ap_uint<64>"]* nonnull %1, [8192 x i64]* %data_out_copy, %"struct.ap_uint<64>"* nonnull %counter, i64* nonnull align 512 %counter_copy, %"struct.ap_uint<64>"* nonnull %start_time, i64* nonnull align 512 %start_time_copy, %"struct.ap_uint<64>"* nonnull %end_time, i64* nonnull align 512 %end_time_copy)
  %2 = getelementptr [8192 x i64], [8192 x i64]* %data_in_copy, i32 0, i32 0
  %3 = getelementptr [8192 x i64], [8192 x i64]* %data_out_copy, i32 0, i32 0
  call void @apatb_corr_accel_hw(i64* %2, i64* %3, i64* %counter_copy, i64* %start_time_copy, i64* %end_time_copy)
  call void @copy_back([8192 x %"struct.ap_uint<64>"]* %0, [8192 x i64]* %data_in_copy, [8192 x %"struct.ap_uint<64>"]* %1, [8192 x i64]* %data_out_copy, %"struct.ap_uint<64>"* %counter, i64* %counter_copy, %"struct.ap_uint<64>"* %start_time, i64* %start_time_copy, %"struct.ap_uint<64>"* %end_time, i64* %end_time_copy)
  call void @free(i8* %malloccall)
  call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([8192 x %"struct.ap_uint<64>"]* noalias readonly "unpacked"="0", [8192 x i64]* noalias nocapture "unpacked"="1.0.0.0", [8192 x %"struct.ap_uint<64>"]* noalias readonly "unpacked"="2", [8192 x i64]* noalias nocapture "unpacked"="3.0.0.0", %"struct.ap_uint<64>"* noalias readonly "unpacked"="4", i64* noalias nocapture align 512 "unpacked"="5.0.0.0", %"struct.ap_uint<64>"* noalias readonly "unpacked"="6", i64* noalias nocapture align 512 "unpacked"="7.0.0.0", %"struct.ap_uint<64>"* noalias readonly "unpacked"="8", i64* noalias nocapture align 512 "unpacked"="9.0.0.0") unnamed_addr #1 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<64>"([8192 x i64]* %1, [8192 x %"struct.ap_uint<64>"]* %0)
  call fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<64>"([8192 x i64]* %3, [8192 x %"struct.ap_uint<64>"]* %2)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<64>"(i64* align 512 %5, %"struct.ap_uint<64>"* %4)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<64>"(i64* align 512 %7, %"struct.ap_uint<64>"* %6)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<64>"(i64* align 512 %9, %"struct.ap_uint<64>"* %8)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([8192 x %"struct.ap_uint<64>"]* noalias "unpacked"="0", [8192 x i64]* noalias nocapture readonly "unpacked"="1.0.0.0", [8192 x %"struct.ap_uint<64>"]* noalias "unpacked"="2", [8192 x i64]* noalias nocapture readonly "unpacked"="3.0.0.0", %"struct.ap_uint<64>"* noalias "unpacked"="4", i64* noalias nocapture readonly align 512 "unpacked"="5.0.0.0", %"struct.ap_uint<64>"* noalias "unpacked"="6", i64* noalias nocapture readonly align 512 "unpacked"="7.0.0.0", %"struct.ap_uint<64>"* noalias "unpacked"="8", i64* noalias nocapture readonly align 512 "unpacked"="9.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<64>.62.70"([8192 x %"struct.ap_uint<64>"]* %0, [8192 x i64]* %1)
  call fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<64>.62.70"([8192 x %"struct.ap_uint<64>"]* %2, [8192 x i64]* %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<64>.4.18.32"(%"struct.ap_uint<64>"* %4, i64* align 512 %5)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<64>.4.18.32"(%"struct.ap_uint<64>"* %6, i64* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<64>.4.18.32"(%"struct.ap_uint<64>"* %8, i64* align 512 %9)
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<64>.4.18.32"(%"struct.ap_uint<64>"* noalias "unpacked"="0", i64* noalias nocapture readonly align 512 "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq %"struct.ap_uint<64>"* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.01.0.05 = getelementptr %"struct.ap_uint<64>", %"struct.ap_uint<64>"* %0, i32 0, i32 0, i32 0, i32 0
  %3 = load i64, i64* %1, align 512
  store i64 %3, i64* %.01.0.05, align 8
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0struct.ap_uint<64>"(i64* noalias nocapture align 512 "unpacked"="0.0.0.0", %"struct.ap_uint<64>"* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq %"struct.ap_uint<64>"* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %.0.0.04 = getelementptr %"struct.ap_uint<64>", %"struct.ap_uint<64>"* %1, i32 0, i32 0, i32 0, i32 0
  %3 = load i64, i64* %.0.0.04, align 8
  store i64 %3, i64* %0, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<64>"([8192 x i64]* noalias nocapture "unpacked"="0.0.0.0", [8192 x %"struct.ap_uint<64>"]* noalias readonly "unpacked"="1") unnamed_addr #3 {
entry:
  %2 = icmp eq [8192 x %"struct.ap_uint<64>"]* %1, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8192 x %"struct.ap_uint<64>"], [8192 x %"struct.ap_uint<64>"]* %1, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %dst.addr.0.0.06 = getelementptr [8192 x i64], [8192 x i64]* %0, i64 0, i64 %for.loop.idx1
  %3 = load i64, i64* %src.addr.0.0.05, align 8
  store i64 %3, i64* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8192
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<64>.62.70"([8192 x %"struct.ap_uint<64>"]* noalias "unpacked"="0", [8192 x i64]* noalias nocapture readonly "unpacked"="1.0.0.0") unnamed_addr #3 {
entry:
  %2 = icmp eq [8192 x %"struct.ap_uint<64>"]* %0, null
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %copy
  %for.loop.idx1 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop ]
  %src.addr.0.0.05 = getelementptr [8192 x i64], [8192 x i64]* %1, i64 0, i64 %for.loop.idx1
  %dst.addr.0.0.06 = getelementptr [8192 x %"struct.ap_uint<64>"], [8192 x %"struct.ap_uint<64>"]* %0, i64 0, i64 %for.loop.idx1, i32 0, i32 0, i32 0
  %3 = load i64, i64* %src.addr.0.0.05, align 8
  store i64 %3, i64* %dst.addr.0.0.06, align 8
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx1, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, 8192
  br i1 %exitcond, label %for.loop, label %ret

ret:                                              ; preds = %for.loop, %entry
  ret void
}

declare void @apatb_corr_accel_hw(i64*, i64*, i64*, i64*, i64*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([8192 x %"struct.ap_uint<64>"]* noalias "unpacked"="0", [8192 x i64]* noalias nocapture readonly "unpacked"="1.0.0.0", [8192 x %"struct.ap_uint<64>"]* noalias "unpacked"="2", [8192 x i64]* noalias nocapture readonly "unpacked"="3.0.0.0", %"struct.ap_uint<64>"* noalias "unpacked"="4", i64* noalias nocapture readonly align 512 "unpacked"="5.0.0.0", %"struct.ap_uint<64>"* noalias "unpacked"="6", i64* noalias nocapture readonly align 512 "unpacked"="7.0.0.0", %"struct.ap_uint<64>"* noalias "unpacked"="8", i64* noalias nocapture readonly align 512 "unpacked"="9.0.0.0") unnamed_addr #2 {
entry:
  call fastcc void @"onebyonecpy_hls.p0a8192struct.ap_uint<64>.62.70"([8192 x %"struct.ap_uint<64>"]* %2, [8192 x i64]* %3)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<64>.4.18.32"(%"struct.ap_uint<64>"* %6, i64* align 512 %7)
  call fastcc void @"onebyonecpy_hls.p0struct.ap_uint<64>.4.18.32"(%"struct.ap_uint<64>"* %8, i64* align 512 %9)
  ret void
}

define void @corr_accel_hw_stub_wrapper(i64*, i64*, i64*, i64*, i64*) #4 {
entry:
  %malloccall = tail call i8* @malloc(i64 65536)
  %5 = bitcast i8* %malloccall to [8192 x %"struct.ap_uint<64>"]*
  %malloccall1 = tail call i8* @malloc(i64 65536)
  %6 = bitcast i8* %malloccall1 to [8192 x %"struct.ap_uint<64>"]*
  %7 = alloca %"struct.ap_uint<64>"
  %8 = alloca %"struct.ap_uint<64>"
  %9 = alloca %"struct.ap_uint<64>"
  %10 = bitcast i64* %0 to [8192 x i64]*
  %11 = bitcast i64* %1 to [8192 x i64]*
  call void @copy_out([8192 x %"struct.ap_uint<64>"]* %5, [8192 x i64]* %10, [8192 x %"struct.ap_uint<64>"]* %6, [8192 x i64]* %11, %"struct.ap_uint<64>"* %7, i64* %2, %"struct.ap_uint<64>"* %8, i64* %3, %"struct.ap_uint<64>"* %9, i64* %4)
  %12 = bitcast [8192 x %"struct.ap_uint<64>"]* %5 to %"struct.ap_uint<64>"*
  %13 = bitcast [8192 x %"struct.ap_uint<64>"]* %6 to %"struct.ap_uint<64>"*
  call void @corr_accel_hw_stub(%"struct.ap_uint<64>"* %12, %"struct.ap_uint<64>"* %13, %"struct.ap_uint<64>"* %7, %"struct.ap_uint<64>"* %8, %"struct.ap_uint<64>"* %9)
  call void @copy_in([8192 x %"struct.ap_uint<64>"]* %5, [8192 x i64]* %10, [8192 x %"struct.ap_uint<64>"]* %6, [8192 x i64]* %11, %"struct.ap_uint<64>"* %7, i64* %2, %"struct.ap_uint<64>"* %8, i64* %3, %"struct.ap_uint<64>"* %9, i64* %4)
  ret void
}

declare void @corr_accel_hw_stub(%"struct.ap_uint<64>"*, %"struct.ap_uint<64>"*, %"struct.ap_uint<64>"*, %"struct.ap_uint<64>"*, %"struct.ap_uint<64>"*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
