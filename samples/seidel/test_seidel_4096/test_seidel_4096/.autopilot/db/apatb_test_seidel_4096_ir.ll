; ModuleID = '/home/yuyes/workdir/pom/samples/seidel/test_seidel_4096/test_seidel_4096/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_test_seidel_4096_ir(float %v0, [4096 x float]* noalias nocapture nonnull "fpga.decayed.dim.hint"="4096" %v1, [4096 x float]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="4096" %v2) local_unnamed_addr #1 {
entry:
  %malloccall_0_0 = call i8* @malloc(i64 7463824)
  %malloccall_0_1 = call i8* @malloc(i64 7463824)
  %malloccall_0_2 = call i8* @malloc(i64 7463824)
  %malloccall_1_0 = call i8* @malloc(i64 7463824)
  %malloccall_1_1 = call i8* @malloc(i64 7463824)
  %malloccall_1_2 = call i8* @malloc(i64 7463824)
  %malloccall_2_0 = call i8* @malloc(i64 7463824)
  %malloccall_2_1 = call i8* @malloc(i64 7463824)
  %malloccall_2_2 = call i8* @malloc(i64 7463824)
  %v1_copy_0_0 = bitcast i8* %malloccall_0_0 to [1366 x [1366 x float]]*
  %v1_copy_0_1 = bitcast i8* %malloccall_0_1 to [1366 x [1366 x float]]*
  %v1_copy_0_2 = bitcast i8* %malloccall_0_2 to [1366 x [1366 x float]]*
  %v1_copy_1_0 = bitcast i8* %malloccall_1_0 to [1366 x [1366 x float]]*
  %v1_copy_1_1 = bitcast i8* %malloccall_1_1 to [1366 x [1366 x float]]*
  %v1_copy_1_2 = bitcast i8* %malloccall_1_2 to [1366 x [1366 x float]]*
  %v1_copy_2_0 = bitcast i8* %malloccall_2_0 to [1366 x [1366 x float]]*
  %v1_copy_2_1 = bitcast i8* %malloccall_2_1 to [1366 x [1366 x float]]*
  %v1_copy_2_2 = bitcast i8* %malloccall_2_2 to [1366 x [1366 x float]]*
  %malloccall1 = tail call i8* @malloc(i64 67108864)
  %v2_copy = bitcast i8* %malloccall1 to [4096 x [4096 x float]]*
  %0 = bitcast [4096 x float]* %v1 to [4096 x [4096 x float]]*
  %1 = bitcast [4096 x float]* %v2 to [4096 x [4096 x float]]*
  call void @copy_in([4096 x [4096 x float]]* nonnull %0, [1366 x [1366 x float]]* %v1_copy_0_0, [1366 x [1366 x float]]* %v1_copy_0_1, [1366 x [1366 x float]]* %v1_copy_0_2, [1366 x [1366 x float]]* %v1_copy_1_0, [1366 x [1366 x float]]* %v1_copy_1_1, [1366 x [1366 x float]]* %v1_copy_1_2, [1366 x [1366 x float]]* %v1_copy_2_0, [1366 x [1366 x float]]* %v1_copy_2_1, [1366 x [1366 x float]]* %v1_copy_2_2, [4096 x [4096 x float]]* nonnull %1, [4096 x [4096 x float]]* %v2_copy)
  %_0_0 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %v1_copy_0_0, i32 0, i32 0
  %_0_1 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %v1_copy_0_1, i32 0, i32 0
  %_0_2 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %v1_copy_0_2, i32 0, i32 0
  %_1_0 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %v1_copy_1_0, i32 0, i32 0
  %_1_1 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %v1_copy_1_1, i32 0, i32 0
  %_1_2 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %v1_copy_1_2, i32 0, i32 0
  %_2_0 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %v1_copy_2_0, i32 0, i32 0
  %_2_1 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %v1_copy_2_1, i32 0, i32 0
  %_2_2 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %v1_copy_2_2, i32 0, i32 0
  %2 = getelementptr inbounds [4096 x [4096 x float]], [4096 x [4096 x float]]* %v2_copy, i32 0, i32 0
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([1366 x float]* %_0_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !21
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([1366 x float]* %_0_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !21
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([1366 x float]* %_0_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !21
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([1366 x float]* %_1_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !21
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([1366 x float]* %_1_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !21
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([1366 x float]* %_1_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !21
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([1366 x float]* %_2_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !21
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([1366 x float]* %_2_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !21
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([1366 x float]* %_2_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !21
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([1366 x float]* %_0_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !694
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([1366 x float]* %_0_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !694
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([1366 x float]* %_0_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !694
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([1366 x float]* %_1_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !694
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([1366 x float]* %_1_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !694
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([1366 x float]* %_1_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !694
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([1366 x float]* %_2_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !694
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([1366 x float]* %_2_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !694
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([1366 x float]* %_2_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !694
  call void @apatb_test_seidel_4096_hw(float %v0, [1366 x [1366 x float]]* %v1_copy_0_0, [1366 x [1366 x float]]* %v1_copy_0_1, [1366 x [1366 x float]]* %v1_copy_0_2, [1366 x [1366 x float]]* %v1_copy_1_0, [1366 x [1366 x float]]* %v1_copy_1_1, [1366 x [1366 x float]]* %v1_copy_1_2, [1366 x [1366 x float]]* %v1_copy_2_0, [1366 x [1366 x float]]* %v1_copy_2_1, [1366 x [1366 x float]]* %v1_copy_2_2, [4096 x float]* %2)
  call void @copy_back([4096 x [4096 x float]]* %0, [1366 x [1366 x float]]* %v1_copy_0_0, [1366 x [1366 x float]]* %v1_copy_0_1, [1366 x [1366 x float]]* %v1_copy_0_2, [1366 x [1366 x float]]* %v1_copy_1_0, [1366 x [1366 x float]]* %v1_copy_1_1, [1366 x [1366 x float]]* %v1_copy_1_2, [1366 x [1366 x float]]* %v1_copy_2_0, [1366 x [1366 x float]]* %v1_copy_2_1, [1366 x [1366 x float]]* %v1_copy_2_2, [4096 x [4096 x float]]* %1, [4096 x [4096 x float]]* %v2_copy)
  call void @free(i8* %malloccall_0_0)
  call void @free(i8* %malloccall_0_1)
  call void @free(i8* %malloccall_0_2)
  call void @free(i8* %malloccall_1_0)
  call void @free(i8* %malloccall_1_1)
  call void @free(i8* %malloccall_1_2)
  call void @free(i8* %malloccall_2_0)
  call void @free(i8* %malloccall_2_1)
  call void @free(i8* %malloccall_2_2)
  tail call void @free(i8* %malloccall1)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a4096a4096f32([4096 x [4096 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [4096 x [4096 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") unnamed_addr #2 {
entry:
  %2 = icmp eq [4096 x [4096 x float]]* %0, null
  %3 = icmp eq [4096 x [4096 x float]]* %1, null
  %4 = or i1 %2, %3
  br i1 %4, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %for.loop2, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %for.loop2 ]
  %dst.addr57 = getelementptr [4096 x [4096 x float]], [4096 x [4096 x float]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68 = getelementptr [4096 x [4096 x float]], [4096 x [4096 x float]]* %1, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %5 = load float, float* %src.addr68, align 4
  store float %5, float* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4096
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %for.loop2
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 4096
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

declare void @free(i8*) local_unnamed_addr

; Function Attrs: nounwind
declare void @llvm.assume(i1) #3

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a4096a4096f32.3.4([1366 x [1366 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.0" %_0_0, [1366 x [1366 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.1" %_0_1, [1366 x [1366 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.2" %_0_2, [1366 x [1366 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.0" %_1_0, [1366 x [1366 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.1" %_1_1, [1366 x [1366 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.2" %_1_2, [1366 x [1366 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2.0" %_2_0, [1366 x [1366 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2.1" %_2_1, [1366 x [1366 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2.2" %_2_2, [4096 x [4096 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #2 {
entry:
  %1 = icmp eq [1366 x [1366 x float]]* %_0_0, null
  %2 = icmp eq [4096 x [4096 x float]]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %4 = urem i64 %for.loop.idx10, 3
  %5 = udiv i64 %for.loop.idx10, 3
  %6 = trunc i64 %4 to i2
  %7 = icmp eq i2 %6, -2
  br label %for.loop2

for.loop2:                                        ; preds = %dst.addr57.exit, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %dst.addr57.exit ]
  %8 = urem i64 %for.loop.idx39, 3
  %9 = udiv i64 %for.loop.idx39, 3
  %dst.addr57_0_0 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %_0_0, i64 0, i64 %5, i64 %9
  %dst.addr57_0_1 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %_0_1, i64 0, i64 %5, i64 %9
  %dst.addr57_0_2 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %_0_2, i64 0, i64 %5, i64 %9
  %dst.addr57_1_0 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %_1_0, i64 0, i64 %5, i64 %9
  %dst.addr57_1_1 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %_1_1, i64 0, i64 %5, i64 %9
  %dst.addr57_1_2 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %_1_2, i64 0, i64 %5, i64 %9
  %dst.addr57_2_0 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %_2_0, i64 0, i64 %5, i64 %9
  %dst.addr57_2_1 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %_2_1, i64 0, i64 %5, i64 %9
  %dst.addr57_2_2 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %_2_2, i64 0, i64 %5, i64 %9
  %src.addr68 = getelementptr [4096 x [4096 x float]], [4096 x [4096 x float]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %10 = load float, float* %src.addr68, align 4
  %11 = trunc i64 %8 to i2
  switch i2 %6, label %dst.addr57.case.2 [
    i2 0, label %dst.addr57.case.0
    i2 1, label %dst.addr57.case.1
  ]

dst.addr57.case.0:                                ; preds = %for.loop2
  switch i2 %11, label %dst.addr57.case.25 [
    i2 0, label %dst.addr57.case.03
    i2 1, label %dst.addr57.case.14
  ]

dst.addr57.case.03:                               ; preds = %dst.addr57.case.0
  store float %10, float* %dst.addr57_0_0, align 4
  br label %dst.addr57.exit2

dst.addr57.case.14:                               ; preds = %dst.addr57.case.0
  store float %10, float* %dst.addr57_0_1, align 4
  br label %dst.addr57.exit2

dst.addr57.case.25:                               ; preds = %dst.addr57.case.0
  %12 = icmp eq i2 %11, -2
  call void @llvm.assume(i1 %12)
  store float %10, float* %dst.addr57_0_2, align 4
  br label %dst.addr57.exit2

dst.addr57.exit2:                                 ; preds = %dst.addr57.case.25, %dst.addr57.case.14, %dst.addr57.case.03
  br label %dst.addr57.exit

dst.addr57.case.1:                                ; preds = %for.loop2
  switch i2 %11, label %dst.addr57.case.210 [
    i2 0, label %dst.addr57.case.08
    i2 1, label %dst.addr57.case.19
  ]

dst.addr57.case.08:                               ; preds = %dst.addr57.case.1
  store float %10, float* %dst.addr57_1_0, align 4
  br label %dst.addr57.exit7

dst.addr57.case.19:                               ; preds = %dst.addr57.case.1
  store float %10, float* %dst.addr57_1_1, align 4
  br label %dst.addr57.exit7

dst.addr57.case.210:                              ; preds = %dst.addr57.case.1
  %13 = icmp eq i2 %11, -2
  call void @llvm.assume(i1 %13)
  store float %10, float* %dst.addr57_1_2, align 4
  br label %dst.addr57.exit7

dst.addr57.exit7:                                 ; preds = %dst.addr57.case.210, %dst.addr57.case.19, %dst.addr57.case.08
  br label %dst.addr57.exit

dst.addr57.case.2:                                ; preds = %for.loop2
  call void @llvm.assume(i1 %7)
  switch i2 %11, label %dst.addr57.case.215 [
    i2 0, label %dst.addr57.case.013
    i2 1, label %dst.addr57.case.114
  ]

dst.addr57.case.013:                              ; preds = %dst.addr57.case.2
  store float %10, float* %dst.addr57_2_0, align 4
  br label %dst.addr57.exit12

dst.addr57.case.114:                              ; preds = %dst.addr57.case.2
  store float %10, float* %dst.addr57_2_1, align 4
  br label %dst.addr57.exit12

dst.addr57.case.215:                              ; preds = %dst.addr57.case.2
  %14 = icmp eq i2 %11, -2
  call void @llvm.assume(i1 %14)
  store float %10, float* %dst.addr57_2_2, align 4
  br label %dst.addr57.exit12

dst.addr57.exit12:                                ; preds = %dst.addr57.case.215, %dst.addr57.case.114, %dst.addr57.case.013
  br label %dst.addr57.exit

dst.addr57.exit:                                  ; preds = %dst.addr57.exit12, %dst.addr57.exit7, %dst.addr57.exit2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4096
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %dst.addr57.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 4096
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([4096 x [4096 x float]]* noalias readonly "orig.arg.no"="0", [1366 x [1366 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.0" %_0_0, [1366 x [1366 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.1" %_0_1, [1366 x [1366 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.2" %_0_2, [1366 x [1366 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.0" %_1_0, [1366 x [1366 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.1" %_1_1, [1366 x [1366 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.2" %_1_2, [1366 x [1366 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2.0" %_2_0, [1366 x [1366 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2.1" %_2_1, [1366 x [1366 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2.2" %_2_2, [4096 x [4096 x float]]* noalias readonly "orig.arg.no"="2", [4096 x [4096 x float]]* noalias "orig.arg.no"="3") #4 {
entry:
  call void @onebyonecpy_hls.p0a4096a4096f32.3.4([1366 x [1366 x float]]* %_0_0, [1366 x [1366 x float]]* %_0_1, [1366 x [1366 x float]]* %_0_2, [1366 x [1366 x float]]* %_1_0, [1366 x [1366 x float]]* %_1_1, [1366 x [1366 x float]]* %_1_2, [1366 x [1366 x float]]* %_2_0, [1366 x [1366 x float]]* %_2_1, [1366 x [1366 x float]]* %_2_2, [4096 x [4096 x float]]* %0)
  call fastcc void @onebyonecpy_hls.p0a4096a4096f32([4096 x [4096 x float]]* %2, [4096 x [4096 x float]]* %1)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a4096a4096f32.9.10([4096 x [4096 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.0" %_0_0, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.1" %_0_1, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.2" %_0_2, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.0" %_1_0, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.1" %_1_1, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.2" %_1_2, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2.0" %_2_0, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2.1" %_2_1, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2.2" %_2_2) #2 {
entry:
  %1 = icmp eq [4096 x [4096 x float]]* %0, null
  %2 = icmp eq [1366 x [1366 x float]]* %_0_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %4 = urem i64 %for.loop.idx10, 3
  %5 = udiv i64 %for.loop.idx10, 3
  %6 = trunc i64 %4 to i2
  %7 = icmp eq i2 %6, -2
  br label %for.loop2

for.loop2:                                        ; preds = %src.addr68.exit, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %src.addr68.exit ]
  %dst.addr57 = getelementptr [4096 x [4096 x float]], [4096 x [4096 x float]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %8 = urem i64 %for.loop.idx39, 3
  %9 = udiv i64 %for.loop.idx39, 3
  %src.addr68_0_0 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %_0_0, i64 0, i64 %5, i64 %9
  %src.addr68_0_1 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %_0_1, i64 0, i64 %5, i64 %9
  %src.addr68_0_2 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %_0_2, i64 0, i64 %5, i64 %9
  %src.addr68_1_0 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %_1_0, i64 0, i64 %5, i64 %9
  %src.addr68_1_1 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %_1_1, i64 0, i64 %5, i64 %9
  %src.addr68_1_2 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %_1_2, i64 0, i64 %5, i64 %9
  %src.addr68_2_0 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %_2_0, i64 0, i64 %5, i64 %9
  %src.addr68_2_1 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %_2_1, i64 0, i64 %5, i64 %9
  %src.addr68_2_2 = getelementptr [1366 x [1366 x float]], [1366 x [1366 x float]]* %_2_2, i64 0, i64 %5, i64 %9
  %10 = trunc i64 %8 to i2
  switch i2 %6, label %src.addr68.case.2 [
    i2 0, label %src.addr68.case.0
    i2 1, label %src.addr68.case.1
  ]

src.addr68.case.0:                                ; preds = %for.loop2
  switch i2 %10, label %src.addr68.case.25 [
    i2 0, label %src.addr68.case.03
    i2 1, label %src.addr68.case.14
  ]

src.addr68.case.03:                               ; preds = %src.addr68.case.0
  %_0_06 = load float, float* %src.addr68_0_0, align 4
  br label %src.addr68.exit

src.addr68.case.14:                               ; preds = %src.addr68.case.0
  %_0_17 = load float, float* %src.addr68_0_1, align 4
  br label %src.addr68.exit

src.addr68.case.25:                               ; preds = %src.addr68.case.0
  %11 = icmp eq i2 %10, -2
  call void @llvm.assume(i1 %11)
  %_0_28 = load float, float* %src.addr68_0_2, align 4
  br label %src.addr68.exit

src.addr68.case.1:                                ; preds = %for.loop2
  switch i2 %10, label %src.addr68.case.213 [
    i2 0, label %src.addr68.case.011
    i2 1, label %src.addr68.case.112
  ]

src.addr68.case.011:                              ; preds = %src.addr68.case.1
  %_1_014 = load float, float* %src.addr68_1_0, align 4
  br label %src.addr68.exit

src.addr68.case.112:                              ; preds = %src.addr68.case.1
  %_1_115 = load float, float* %src.addr68_1_1, align 4
  br label %src.addr68.exit

src.addr68.case.213:                              ; preds = %src.addr68.case.1
  %12 = icmp eq i2 %10, -2
  call void @llvm.assume(i1 %12)
  %_1_216 = load float, float* %src.addr68_1_2, align 4
  br label %src.addr68.exit

src.addr68.case.2:                                ; preds = %for.loop2
  call void @llvm.assume(i1 %7)
  switch i2 %10, label %src.addr68.case.221 [
    i2 0, label %src.addr68.case.019
    i2 1, label %src.addr68.case.120
  ]

src.addr68.case.019:                              ; preds = %src.addr68.case.2
  %_2_022 = load float, float* %src.addr68_2_0, align 4
  br label %src.addr68.exit

src.addr68.case.120:                              ; preds = %src.addr68.case.2
  %_2_123 = load float, float* %src.addr68_2_1, align 4
  br label %src.addr68.exit

src.addr68.case.221:                              ; preds = %src.addr68.case.2
  %13 = icmp eq i2 %10, -2
  call void @llvm.assume(i1 %13)
  %_2_224 = load float, float* %src.addr68_2_2, align 4
  br label %src.addr68.exit

src.addr68.exit:                                  ; preds = %src.addr68.case.221, %src.addr68.case.120, %src.addr68.case.019, %src.addr68.case.213, %src.addr68.case.112, %src.addr68.case.011, %src.addr68.case.25, %src.addr68.case.14, %src.addr68.case.03
  %14 = phi float [ %_1_014, %src.addr68.case.011 ], [ %_1_115, %src.addr68.case.112 ], [ %_1_216, %src.addr68.case.213 ], [ %_0_06, %src.addr68.case.03 ], [ %_0_17, %src.addr68.case.14 ], [ %_0_28, %src.addr68.case.25 ], [ %_2_022, %src.addr68.case.019 ], [ %_2_123, %src.addr68.case.120 ], [ %_2_224, %src.addr68.case.221 ]
  store float %14, float* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 4096
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %src.addr68.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 4096
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([4096 x [4096 x float]]* noalias "orig.arg.no"="0", [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.0" %_0_0, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.1" %_0_1, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.2" %_0_2, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.0" %_1_0, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.1" %_1_1, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.2" %_1_2, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2.0" %_2_0, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2.1" %_2_1, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2.2" %_2_2, [4096 x [4096 x float]]* noalias "orig.arg.no"="2", [4096 x [4096 x float]]* noalias readonly "orig.arg.no"="3") #5 {
entry:
  call void @onebyonecpy_hls.p0a4096a4096f32.9.10([4096 x [4096 x float]]* %0, [1366 x [1366 x float]]* %_0_0, [1366 x [1366 x float]]* %_0_1, [1366 x [1366 x float]]* %_0_2, [1366 x [1366 x float]]* %_1_0, [1366 x [1366 x float]]* %_1_1, [1366 x [1366 x float]]* %_1_2, [1366 x [1366 x float]]* %_2_0, [1366 x [1366 x float]]* %_2_1, [1366 x [1366 x float]]* %_2_2)
  call fastcc void @onebyonecpy_hls.p0a4096a4096f32([4096 x [4096 x float]]* %1, [4096 x [4096 x float]]* %2)
  ret void
}

declare void @apatb_test_seidel_4096_hw(float, [1366 x [1366 x float]]*, [1366 x [1366 x float]]*, [1366 x [1366 x float]]*, [1366 x [1366 x float]]*, [1366 x [1366 x float]]*, [1366 x [1366 x float]]*, [1366 x [1366 x float]]*, [1366 x [1366 x float]]*, [1366 x [1366 x float]]*, [4096 x float]*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([4096 x [4096 x float]]* noalias "orig.arg.no"="0", [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.0" %_0_0, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.1" %_0_1, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.2" %_0_2, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.0" %_1_0, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.1" %_1_1, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.2" %_1_2, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2.0" %_2_0, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2.1" %_2_1, [1366 x [1366 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2.2" %_2_2, [4096 x [4096 x float]]* noalias "orig.arg.no"="2", [4096 x [4096 x float]]* noalias readonly "orig.arg.no"="3") #5 {
entry:
  call void @onebyonecpy_hls.p0a4096a4096f32.9.10([4096 x [4096 x float]]* %0, [1366 x [1366 x float]]* %_0_0, [1366 x [1366 x float]]* %_0_1, [1366 x [1366 x float]]* %_0_2, [1366 x [1366 x float]]* %_1_0, [1366 x [1366 x float]]* %_1_1, [1366 x [1366 x float]]* %_1_2, [1366 x [1366 x float]]* %_2_0, [1366 x [1366 x float]]* %_2_1, [1366 x [1366 x float]]* %_2_2)
  ret void
}

define void @test_seidel_4096_hw_stub_wrapper(float, [1366 x [1366 x float]]*, [1366 x [1366 x float]]*, [1366 x [1366 x float]]*, [1366 x [1366 x float]]*, [1366 x [1366 x float]]*, [1366 x [1366 x float]]*, [1366 x [1366 x float]]*, [1366 x [1366 x float]]*, [1366 x [1366 x float]]*, [4096 x float]*) #6 {
entry:
  %malloccall = tail call i8* @malloc(i64 67108864)
  %11 = bitcast i8* %malloccall to [4096 x [4096 x float]]*
  %12 = bitcast [4096 x float]* %10 to [4096 x [4096 x float]]*
  call void @copy_out([4096 x [4096 x float]]* %11, [1366 x [1366 x float]]* %1, [1366 x [1366 x float]]* %2, [1366 x [1366 x float]]* %3, [1366 x [1366 x float]]* %4, [1366 x [1366 x float]]* %5, [1366 x [1366 x float]]* %6, [1366 x [1366 x float]]* %7, [1366 x [1366 x float]]* %8, [1366 x [1366 x float]]* %9, [4096 x [4096 x float]]* null, [4096 x [4096 x float]]* %12)
  %13 = bitcast [4096 x [4096 x float]]* %11 to [4096 x float]*
  %14 = bitcast [4096 x [4096 x float]]* %12 to [4096 x float]*
  call void @test_seidel_4096_hw_stub(float %0, [4096 x float]* %13, [4096 x float]* %14)
  call void @copy_in([4096 x [4096 x float]]* %11, [1366 x [1366 x float]]* %1, [1366 x [1366 x float]]* %2, [1366 x [1366 x float]]* %3, [1366 x [1366 x float]]* %4, [1366 x [1366 x float]]* %5, [1366 x [1366 x float]]* %6, [1366 x [1366 x float]]* %7, [1366 x [1366 x float]]* %8, [1366 x [1366 x float]]* %9, [4096 x [4096 x float]]* null, [4096 x [4096 x float]]* %12)
  ret void
}

declare void @test_seidel_4096_hw_stub(float, [4096 x float]*, [4096 x float]*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { nounwind }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }
attributes #7 = { inaccessiblememonly nounwind "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !11}
!6 = !{!7}
!7 = !{!"1", [4096 x [4096 x float]]* null}
!8 = !{!9, !10}
!9 = !{!"array_partition", !"type=Cyclic", !"dim=1", !"factor=3"}
!10 = !{!"array_partition", !"type=Cyclic", !"dim=2", !"factor=3"}
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20}
!12 = !{!"1.0.0", [1366 x [1366 x float]]* null}
!13 = !{!"1.0.1", [1366 x [1366 x float]]* null}
!14 = !{!"1.0.2", [1366 x [1366 x float]]* null}
!15 = !{!"1.1.0", [1366 x [1366 x float]]* null}
!16 = !{!"1.1.1", [1366 x [1366 x float]]* null}
!17 = !{!"1.1.2", [1366 x [1366 x float]]* null}
!18 = !{!"1.2.0", [1366 x [1366 x float]]* null}
!19 = !{!"1.2.1", [1366 x [1366 x float]]* null}
!20 = !{!"1.2.2", [1366 x [1366 x float]]* null}
!21 = !DILocation(line: 32, column: 9, scope: !22)
!22 = distinct !DISubprogram(name: "test_seidel_4096", linkageName: "_Z16test_seidel_4096fPA4096_fS0_", scope: !23, file: !23, line: 21, type: !24, isLocal: false, isDefinition: true, scopeLine: 25, flags: DIFlagPrototyped, isOptimized: false, unit: !31, variables: !4)
!23 = !DIFile(filename: "test_seidel_4096.cpp", directory: "/home/yuyes/workdir/pom/samples/seidel")
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26, !27, !27}
!26 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 131072, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 4096)
!31 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !32, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, imports: !33)
!32 = !DIFile(filename: "/home/yuyes/workdir/pom/samples/seidel/test_seidel_4096/test_seidel_4096/.autopilot/db/test_seidel_4096.pp.0.cpp", directory: "/home/yuyes/workdir/pom/samples/seidel")
!33 = !{!34, !39, !46, !50, !57, !61, !66, !68, !76, !80, !84, !98, !102, !106, !110, !114, !119, !123, !127, !131, !135, !143, !147, !151, !153, !157, !161, !166, !172, !176, !180, !182, !190, !194, !202, !204, !208, !212, !216, !220, !225, !229, !234, !235, !236, !237, !239, !240, !241, !242, !243, !244, !245, !349, !353, !359, !361, !363, !367, !369, !371, !373, !375, !377, !379, !381, !386, !390, !392, !394, !399, !401, !403, !405, !407, !409, !411, !414, !416, !418, !422, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !450, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !488, !492, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !518, !522, !526, !528, !530, !532, !536, !540, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !572, !576, !580, !582, !584, !586, !588, !592, !596, !598, !600, !602, !604, !606, !608, !612, !616, !618, !620, !622, !624, !628, !632, !636, !638, !640, !642, !644, !646, !648, !652, !656, !660, !662, !666, !670, !672, !674, !676, !678, !680, !682, !688, !693}
!34 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !35, entity: !36, file: !38, line: 58)
!35 = !DINamespace(name: "__gnu_debug", scope: null)
!36 = !DINamespace(name: "__debug", scope: !37)
!37 = !DINamespace(name: "std", scope: null)
!38 = !DIFile(filename: "/home/yuyes/Xilinx/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/debug/debug.h", directory: "/home/yuyes/workdir/pom/samples/seidel")
!39 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !40, file: !45, line: 52)
!40 = !DISubprogram(name: "abs", scope: !41, file: !41, line: 848, type: !42, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!41 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/yuyes/workdir/pom/samples/seidel")
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !44}
!44 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!45 = !DIFile(filename: "/home/yuyes/Xilinx/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/bits/std_abs.h", directory: "/home/yuyes/workdir/pom/samples/seidel")
!46 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !47, file: !49, line: 127)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !41, line: 63, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 59, size: 64, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!49 = !DIFile(filename: "/home/yuyes/Xilinx/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/cstdlib", directory: "/home/yuyes/workdir/pom/samples/seidel")
!50 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !51, file: !49, line: 128)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !41, line: 71, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !53, identifier: "_ZTS6ldiv_t")
!53 = !{!54, !56}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !52, file: !41, line: 69, baseType: !55, size: 64)
!55 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !52, file: !41, line: 70, baseType: !55, size: 64, offset: 64)
!57 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !58, file: !49, line: 130)
!58 = !DISubprogram(name: "abort", scope: !41, file: !41, line: 598, type: !59, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!59 = !DISubroutineType(types: !60)
!60 = !{null}
!61 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !62, file: !49, line: 134)
!62 = !DISubprogram(name: "atexit", scope: !41, file: !41, line: 602, type: !63, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!63 = !DISubroutineType(types: !64)
!64 = !{!44, !65}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!66 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !67, file: !49, line: 137)
!67 = !DISubprogram(name: "at_quick_exit", scope: !41, file: !41, line: 607, type: !63, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!68 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !69, file: !49, line: 140)
!69 = !DISubprogram(name: "atof", scope: !41, file: !41, line: 102, type: !70, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!70 = !DISubroutineType(types: !71)
!71 = !{!72, !73}
!72 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!76 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !77, file: !49, line: 141)
!77 = !DISubprogram(name: "atoi", scope: !41, file: !41, line: 105, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!78 = !DISubroutineType(types: !79)
!79 = !{!44, !73}
!80 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !81, file: !49, line: 142)
!81 = !DISubprogram(name: "atol", scope: !41, file: !41, line: 108, type: !82, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!82 = !DISubroutineType(types: !83)
!83 = !{!55, !73}
!84 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !85, file: !49, line: 143)
!85 = !DISubprogram(name: "bsearch", scope: !41, file: !41, line: 828, type: !86, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!86 = !DISubroutineType(types: !87)
!87 = !{!88, !89, !89, !91, !91, !94}
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !92, line: 62, baseType: !93)
!92 = !DIFile(filename: "/home/yuyes/Xilinx/Vitis_HLS/2022.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h", directory: "/home/yuyes/workdir/pom/samples/seidel")
!93 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !41, line: 816, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{!44, !89, !89}
!98 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !99, file: !49, line: 144)
!99 = !DISubprogram(name: "calloc", scope: !41, file: !41, line: 543, type: !100, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!100 = !DISubroutineType(types: !101)
!101 = !{!88, !91, !91}
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !103, file: !49, line: 145)
!103 = !DISubprogram(name: "div", scope: !41, file: !41, line: 860, type: !104, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!104 = !DISubroutineType(types: !105)
!105 = !{!47, !44, !44}
!106 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !107, file: !49, line: 146)
!107 = !DISubprogram(name: "exit", scope: !41, file: !41, line: 624, type: !108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !44}
!110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !111, file: !49, line: 147)
!111 = !DISubprogram(name: "free", scope: !41, file: !41, line: 555, type: !112, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !88}
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !115, file: !49, line: 148)
!115 = !DISubprogram(name: "getenv", scope: !41, file: !41, line: 641, type: !116, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !73}
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !120, file: !49, line: 149)
!120 = !DISubprogram(name: "labs", scope: !41, file: !41, line: 849, type: !121, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!121 = !DISubroutineType(types: !122)
!122 = !{!55, !55}
!123 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !124, file: !49, line: 150)
!124 = !DISubprogram(name: "ldiv", scope: !41, file: !41, line: 862, type: !125, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!125 = !DISubroutineType(types: !126)
!126 = !{!51, !55, !55}
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !128, file: !49, line: 151)
!128 = !DISubprogram(name: "malloc", scope: !41, file: !41, line: 540, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!129 = !DISubroutineType(types: !130)
!130 = !{!88, !91}
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !132, file: !49, line: 153)
!132 = !DISubprogram(name: "mblen", scope: !41, file: !41, line: 930, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DISubroutineType(types: !134)
!134 = !{!44, !73, !91}
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !136, file: !49, line: 154)
!136 = !DISubprogram(name: "mbstowcs", scope: !41, file: !41, line: 941, type: !137, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!137 = !DISubroutineType(types: !138)
!138 = !{!91, !139, !142, !91}
!139 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!142 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !73)
!143 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !144, file: !49, line: 155)
!144 = !DISubprogram(name: "mbtowc", scope: !41, file: !41, line: 933, type: !145, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!145 = !DISubroutineType(types: !146)
!146 = !{!44, !139, !142, !91}
!147 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !148, file: !49, line: 157)
!148 = !DISubprogram(name: "qsort", scope: !41, file: !41, line: 838, type: !149, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !88, !91, !91, !94}
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !152, file: !49, line: 160)
!152 = !DISubprogram(name: "quick_exit", scope: !41, file: !41, line: 630, type: !108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !154, file: !49, line: 163)
!154 = !DISubprogram(name: "rand", scope: !41, file: !41, line: 454, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DISubroutineType(types: !156)
!156 = !{!44}
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !158, file: !49, line: 164)
!158 = !DISubprogram(name: "realloc", scope: !41, file: !41, line: 551, type: !159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!159 = !DISubroutineType(types: !160)
!160 = !{!88, !88, !91}
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !162, file: !49, line: 165)
!162 = !DISubprogram(name: "srand", scope: !41, file: !41, line: 456, type: !163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !165}
!165 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!166 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !167, file: !49, line: 166)
!167 = !DISubprogram(name: "strtod", scope: !41, file: !41, line: 118, type: !168, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!168 = !DISubroutineType(types: !169)
!169 = !{!72, !142, !170}
!170 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!172 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !173, file: !49, line: 167)
!173 = !DISubprogram(name: "strtol", scope: !41, file: !41, line: 177, type: !174, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!174 = !DISubroutineType(types: !175)
!175 = !{!55, !142, !170, !44}
!176 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !177, file: !49, line: 168)
!177 = !DISubprogram(name: "strtoul", scope: !41, file: !41, line: 181, type: !178, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!178 = !DISubroutineType(types: !179)
!179 = !{!93, !142, !170, !44}
!180 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !181, file: !49, line: 169)
!181 = !DISubprogram(name: "system", scope: !41, file: !41, line: 791, type: !78, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !183, file: !49, line: 171)
!183 = !DISubprogram(name: "wcstombs", scope: !41, file: !41, line: 945, type: !184, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!184 = !DISubroutineType(types: !185)
!185 = !{!91, !186, !187, !91}
!186 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !118)
!187 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !191, file: !49, line: 172)
!191 = !DISubprogram(name: "wctomb", scope: !41, file: !41, line: 937, type: !192, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!192 = !DISubroutineType(types: !193)
!193 = !{!44, !118, !141}
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !195, entity: !196, file: !49, line: 200)
!195 = !DINamespace(name: "__gnu_cxx", scope: null)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !41, line: 81, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !41, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !198, identifier: "_ZTS7lldiv_t")
!198 = !{!199, !201}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !197, file: !41, line: 79, baseType: !200, size: 64)
!200 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !197, file: !41, line: 80, baseType: !200, size: 64, offset: 64)
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !195, entity: !203, file: !49, line: 206)
!203 = !DISubprogram(name: "_Exit", scope: !41, file: !41, line: 636, type: !108, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !195, entity: !205, file: !49, line: 210)
!205 = !DISubprogram(name: "llabs", scope: !41, file: !41, line: 852, type: !206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!206 = !DISubroutineType(types: !207)
!207 = !{!200, !200}
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !195, entity: !209, file: !49, line: 216)
!209 = !DISubprogram(name: "lldiv", scope: !41, file: !41, line: 866, type: !210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!210 = !DISubroutineType(types: !211)
!211 = !{!196, !200, !200}
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !195, entity: !213, file: !49, line: 227)
!213 = !DISubprogram(name: "atoll", scope: !41, file: !41, line: 113, type: !214, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!214 = !DISubroutineType(types: !215)
!215 = !{!200, !73}
!216 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !195, entity: !217, file: !49, line: 228)
!217 = !DISubprogram(name: "strtoll", scope: !41, file: !41, line: 201, type: !218, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!218 = !DISubroutineType(types: !219)
!219 = !{!200, !142, !170, !44}
!220 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !195, entity: !221, file: !49, line: 229)
!221 = !DISubprogram(name: "strtoull", scope: !41, file: !41, line: 206, type: !222, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!222 = !DISubroutineType(types: !223)
!223 = !{!224, !142, !170, !44}
!224 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !195, entity: !226, file: !49, line: 231)
!226 = !DISubprogram(name: "strtof", scope: !41, file: !41, line: 124, type: !227, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!227 = !DISubroutineType(types: !228)
!228 = !{!26, !142, !170}
!229 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !195, entity: !230, file: !49, line: 232)
!230 = !DISubprogram(name: "strtold", scope: !41, file: !41, line: 127, type: !231, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !142, !170}
!233 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!234 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !196, file: !49, line: 240)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !203, file: !49, line: 242)
!236 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !205, file: !49, line: 244)
!237 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !238, file: !49, line: 245)
!238 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !195, file: !49, line: 213, type: !210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !209, file: !49, line: 246)
!240 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !213, file: !49, line: 248)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !226, file: !49, line: 249)
!242 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !217, file: !49, line: 250)
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !221, file: !49, line: 251)
!244 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !230, file: !49, line: 252)
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !246, file: !247, line: 57)
!246 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !248, file: !247, line: 79, size: 64, flags: DIFlagTypePassByReference, elements: !249, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!247 = !DIFile(filename: "/home/yuyes/Xilinx/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/bits/exception_ptr.h", directory: "/home/yuyes/workdir/pom/samples/seidel")
!248 = !DINamespace(name: "__exception_ptr", scope: !37)
!249 = !{!250, !251, !255, !258, !259, !264, !265, !269, !275, !279, !283, !286, !287, !290, !294}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !246, file: !247, line: 81, baseType: !88, size: 64)
!251 = !DISubprogram(name: "exception_ptr", scope: !246, file: !247, line: 83, type: !252, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !254, !88}
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!255 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !246, file: !247, line: 85, type: !256, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !254}
!258 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !246, file: !247, line: 86, type: !256, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false)
!259 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !246, file: !247, line: 88, type: !260, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false)
!260 = !DISubroutineType(types: !261)
!261 = !{!88, !262}
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!264 = !DISubprogram(name: "exception_ptr", scope: !246, file: !247, line: 96, type: !256, isLocal: false, isDefinition: false, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!265 = !DISubprogram(name: "exception_ptr", scope: !246, file: !247, line: 98, type: !266, isLocal: false, isDefinition: false, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!266 = !DISubroutineType(types: !267)
!267 = !{null, !254, !268}
!268 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !263, size: 64)
!269 = !DISubprogram(name: "exception_ptr", scope: !246, file: !247, line: 101, type: !270, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!270 = !DISubroutineType(types: !271)
!271 = !{null, !254, !272}
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !37, file: !273, line: 242, baseType: !274)
!273 = !DIFile(filename: "/home/yuyes/Xilinx/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/x86_64-pc-linux-gnu/bits/c++config.h", directory: "/home/yuyes/workdir/pom/samples/seidel")
!274 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!275 = !DISubprogram(name: "exception_ptr", scope: !246, file: !247, line: 105, type: !276, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !254, !278}
!278 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !246, size: 64)
!279 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !246, file: !247, line: 118, type: !280, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!280 = !DISubroutineType(types: !281)
!281 = !{!282, !254, !268}
!282 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !246, size: 64)
!283 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !246, file: !247, line: 122, type: !284, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!284 = !DISubroutineType(types: !285)
!285 = !{!282, !254, !278}
!286 = !DISubprogram(name: "~exception_ptr", scope: !246, file: !247, line: 129, type: !256, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!287 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !246, file: !247, line: 132, type: !288, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !254, !282}
!290 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !246, file: !247, line: 144, type: !291, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!291 = !DISubroutineType(types: !292)
!292 = !{!293, !262}
!293 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!294 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !246, file: !247, line: 153, type: !295, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!295 = !DISubroutineType(types: !296)
!296 = !{!297, !262}
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !37, file: !300, line: 88, size: 128, flags: DIFlagTypePassByReference, elements: !301, vtableHolder: !299, identifier: "_ZTSSt9type_info")
!300 = !DIFile(filename: "/home/yuyes/Xilinx/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/typeinfo", directory: "/home/yuyes/workdir/pom/samples/seidel")
!301 = !{!302, !305, !306, !310, !314, !318, !319, !320, !324, !327, !328, !332, !339, !342, !346}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$type_info", scope: !300, file: !300, baseType: !303, size: 64, flags: DIFlagArtificial)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !155, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "__name", scope: !299, file: !300, line: 171, baseType: !73, size: 64, offset: 64, flags: DIFlagProtected)
!306 = !DISubprogram(name: "~type_info", scope: !299, file: !300, line: 95, type: !307, isLocal: false, isDefinition: false, scopeLine: 95, containingType: !299, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !309}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!310 = !DISubprogram(name: "name", linkageName: "_ZNKSt9type_info4nameEv", scope: !299, file: !300, line: 99, type: !311, isLocal: false, isDefinition: false, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!311 = !DISubroutineType(types: !312)
!312 = !{!73, !313}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!314 = !DISubprogram(name: "before", linkageName: "_ZNKSt9type_info6beforeERKS_", scope: !299, file: !300, line: 115, type: !315, isLocal: false, isDefinition: false, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!315 = !DISubroutineType(types: !316)
!316 = !{!293, !313, !317}
!317 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !298, size: 64)
!318 = !DISubprogram(name: "operator==", linkageName: "_ZNKSt9type_infoeqERKS_", scope: !299, file: !300, line: 120, type: !315, isLocal: false, isDefinition: false, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!319 = !DISubprogram(name: "operator!=", linkageName: "_ZNKSt9type_infoneERKS_", scope: !299, file: !300, line: 136, type: !315, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!320 = !DISubprogram(name: "hash_code", linkageName: "_ZNKSt9type_info9hash_codeEv", scope: !299, file: !300, line: 140, type: !321, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!321 = !DISubroutineType(types: !322)
!322 = !{!323, !313}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !37, file: !273, line: 238, baseType: !93)
!324 = !DISubprogram(name: "__is_pointer_p", linkageName: "_ZNKSt9type_info14__is_pointer_pEv", scope: !299, file: !300, line: 152, type: !325, isLocal: false, isDefinition: false, scopeLine: 152, containingType: !299, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!325 = !DISubroutineType(types: !326)
!326 = !{!293, !313}
!327 = !DISubprogram(name: "__is_function_p", linkageName: "_ZNKSt9type_info15__is_function_pEv", scope: !299, file: !300, line: 155, type: !325, isLocal: false, isDefinition: false, scopeLine: 155, containingType: !299, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!328 = !DISubprogram(name: "__do_catch", linkageName: "_ZNKSt9type_info10__do_catchEPKS_PPvj", scope: !299, file: !300, line: 163, type: !329, isLocal: false, isDefinition: false, scopeLine: 163, containingType: !299, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!329 = !DISubroutineType(types: !330)
!330 = !{!293, !313, !297, !331, !165}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!332 = !DISubprogram(name: "__do_upcast", linkageName: "_ZNKSt9type_info11__do_upcastEPKN10__cxxabiv117__class_type_infoEPPv", scope: !299, file: !300, line: 167, type: !333, isLocal: false, isDefinition: false, scopeLine: 167, containingType: !299, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!333 = !DISubroutineType(types: !334)
!334 = !{!293, !313, !335, !331}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__class_type_info", scope: !338, file: !300, line: 45, flags: DIFlagFwdDecl, identifier: "_ZTSN10__cxxabiv117__class_type_infoE")
!338 = !DINamespace(name: "__cxxabiv1", scope: null)
!339 = !DISubprogram(name: "type_info", scope: !299, file: !300, line: 173, type: !340, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagProtected | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!340 = !DISubroutineType(types: !341)
!341 = !{null, !309, !73}
!342 = !DISubprogram(name: "operator=", linkageName: "_ZNSt9type_infoaSERKS_", scope: !299, file: !300, line: 177, type: !343, isLocal: false, isDefinition: false, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false)
!343 = !DISubroutineType(types: !344)
!344 = !{!345, !309, !317}
!345 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !299, size: 64)
!346 = !DISubprogram(name: "type_info", scope: !299, file: !300, line: 178, type: !347, isLocal: false, isDefinition: false, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !309, !317}
!349 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !248, entity: !350, file: !247, line: 73)
!350 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !37, file: !247, line: 69, type: !351, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!351 = !DISubroutineType(types: !352)
!352 = !{null, !246}
!353 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !354, file: !358, line: 83)
!354 = !DISubprogram(name: "acos", scope: !355, file: !355, line: 53, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!355 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/yuyes/workdir/pom/samples/seidel")
!356 = !DISubroutineType(types: !357)
!357 = !{!72, !72}
!358 = !DIFile(filename: "/home/yuyes/Xilinx/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/cmath", directory: "/home/yuyes/workdir/pom/samples/seidel")
!359 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !360, file: !358, line: 102)
!360 = !DISubprogram(name: "asin", scope: !355, file: !355, line: 55, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!361 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !362, file: !358, line: 121)
!362 = !DISubprogram(name: "atan", scope: !355, file: !355, line: 57, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!363 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !364, file: !358, line: 140)
!364 = !DISubprogram(name: "atan2", scope: !355, file: !355, line: 59, type: !365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!365 = !DISubroutineType(types: !366)
!366 = !{!72, !72, !72}
!367 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !368, file: !358, line: 161)
!368 = !DISubprogram(name: "ceil", scope: !355, file: !355, line: 159, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !370, file: !358, line: 180)
!370 = !DISubprogram(name: "cos", scope: !355, file: !355, line: 62, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !372, file: !358, line: 199)
!372 = !DISubprogram(name: "cosh", scope: !355, file: !355, line: 71, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !374, file: !358, line: 218)
!374 = !DISubprogram(name: "exp", scope: !355, file: !355, line: 95, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!375 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !376, file: !358, line: 237)
!376 = !DISubprogram(name: "fabs", scope: !355, file: !355, line: 162, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!377 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !378, file: !358, line: 256)
!378 = !DISubprogram(name: "floor", scope: !355, file: !355, line: 165, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!379 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !380, file: !358, line: 275)
!380 = !DISubprogram(name: "fmod", scope: !355, file: !355, line: 168, type: !365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!381 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !382, file: !358, line: 296)
!382 = !DISubprogram(name: "frexp", scope: !355, file: !355, line: 98, type: !383, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!383 = !DISubroutineType(types: !384)
!384 = !{!72, !72, !385}
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !387, file: !358, line: 315)
!387 = !DISubprogram(name: "ldexp", scope: !355, file: !355, line: 101, type: !388, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!388 = !DISubroutineType(types: !389)
!389 = !{!72, !72, !44}
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !391, file: !358, line: 334)
!391 = !DISubprogram(name: "log", scope: !355, file: !355, line: 104, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!392 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !393, file: !358, line: 353)
!393 = !DISubprogram(name: "log10", scope: !355, file: !355, line: 107, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!394 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !395, file: !358, line: 372)
!395 = !DISubprogram(name: "modf", scope: !355, file: !355, line: 110, type: !396, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!396 = !DISubroutineType(types: !397)
!397 = !{!72, !72, !398}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!399 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !400, file: !358, line: 384)
!400 = !DISubprogram(name: "pow", scope: !355, file: !355, line: 140, type: !365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !402, file: !358, line: 421)
!402 = !DISubprogram(name: "sin", scope: !355, file: !355, line: 64, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!403 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !404, file: !358, line: 440)
!404 = !DISubprogram(name: "sinh", scope: !355, file: !355, line: 73, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !406, file: !358, line: 459)
!406 = !DISubprogram(name: "sqrt", scope: !355, file: !355, line: 143, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !408, file: !358, line: 478)
!408 = !DISubprogram(name: "tan", scope: !355, file: !355, line: 66, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !410, file: !358, line: 497)
!410 = !DISubprogram(name: "tanh", scope: !355, file: !355, line: 75, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !412, file: !358, line: 1065)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !413, line: 164, baseType: !72)
!413 = !DIFile(filename: "/usr/include/math.h", directory: "/home/yuyes/workdir/pom/samples/seidel")
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !415, file: !358, line: 1066)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !413, line: 163, baseType: !26)
!416 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !417, file: !358, line: 1069)
!417 = !DISubprogram(name: "acosh", scope: !355, file: !355, line: 85, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !419, file: !358, line: 1070)
!419 = !DISubprogram(name: "acoshf", scope: !355, file: !355, line: 85, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!420 = !DISubroutineType(types: !421)
!421 = !{!26, !26}
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !423, file: !358, line: 1071)
!423 = !DISubprogram(name: "acoshl", scope: !355, file: !355, line: 85, type: !424, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!424 = !DISubroutineType(types: !425)
!425 = !{!233, !233}
!426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !427, file: !358, line: 1073)
!427 = !DISubprogram(name: "asinh", scope: !355, file: !355, line: 87, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !429, file: !358, line: 1074)
!429 = !DISubprogram(name: "asinhf", scope: !355, file: !355, line: 87, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !431, file: !358, line: 1075)
!431 = !DISubprogram(name: "asinhl", scope: !355, file: !355, line: 87, type: !424, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !433, file: !358, line: 1077)
!433 = !DISubprogram(name: "atanh", scope: !355, file: !355, line: 89, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!434 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !435, file: !358, line: 1078)
!435 = !DISubprogram(name: "atanhf", scope: !355, file: !355, line: 89, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!436 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !437, file: !358, line: 1079)
!437 = !DISubprogram(name: "atanhl", scope: !355, file: !355, line: 89, type: !424, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!438 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !439, file: !358, line: 1081)
!439 = !DISubprogram(name: "cbrt", scope: !355, file: !355, line: 152, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!440 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !441, file: !358, line: 1082)
!441 = !DISubprogram(name: "cbrtf", scope: !355, file: !355, line: 152, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!442 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !443, file: !358, line: 1083)
!443 = !DISubprogram(name: "cbrtl", scope: !355, file: !355, line: 152, type: !424, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!444 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !445, file: !358, line: 1085)
!445 = !DISubprogram(name: "copysign", scope: !355, file: !355, line: 198, type: !365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!446 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !447, file: !358, line: 1086)
!447 = !DISubprogram(name: "copysignf", scope: !355, file: !355, line: 198, type: !448, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!448 = !DISubroutineType(types: !449)
!449 = !{!26, !26, !26}
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !451, file: !358, line: 1087)
!451 = !DISubprogram(name: "copysignl", scope: !355, file: !355, line: 198, type: !452, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!452 = !DISubroutineType(types: !453)
!453 = !{!233, !233, !233}
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !455, file: !358, line: 1089)
!455 = !DISubprogram(name: "erf", scope: !355, file: !355, line: 231, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !457, file: !358, line: 1090)
!457 = !DISubprogram(name: "erff", scope: !355, file: !355, line: 231, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !459, file: !358, line: 1091)
!459 = !DISubprogram(name: "erfl", scope: !355, file: !355, line: 231, type: !424, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !461, file: !358, line: 1093)
!461 = !DISubprogram(name: "erfc", scope: !355, file: !355, line: 232, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !463, file: !358, line: 1094)
!463 = !DISubprogram(name: "erfcf", scope: !355, file: !355, line: 232, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!464 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !465, file: !358, line: 1095)
!465 = !DISubprogram(name: "erfcl", scope: !355, file: !355, line: 232, type: !424, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!466 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !467, file: !358, line: 1097)
!467 = !DISubprogram(name: "exp2", scope: !355, file: !355, line: 130, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!468 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !469, file: !358, line: 1098)
!469 = !DISubprogram(name: "exp2f", scope: !355, file: !355, line: 130, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!470 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !471, file: !358, line: 1099)
!471 = !DISubprogram(name: "exp2l", scope: !355, file: !355, line: 130, type: !424, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!472 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !473, file: !358, line: 1101)
!473 = !DISubprogram(name: "expm1", scope: !355, file: !355, line: 119, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!474 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !475, file: !358, line: 1102)
!475 = !DISubprogram(name: "expm1f", scope: !355, file: !355, line: 119, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!476 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !477, file: !358, line: 1103)
!477 = !DISubprogram(name: "expm1l", scope: !355, file: !355, line: 119, type: !424, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!478 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !479, file: !358, line: 1105)
!479 = !DISubprogram(name: "fdim", scope: !355, file: !355, line: 329, type: !365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!480 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !481, file: !358, line: 1106)
!481 = !DISubprogram(name: "fdimf", scope: !355, file: !355, line: 329, type: !448, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!482 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !483, file: !358, line: 1107)
!483 = !DISubprogram(name: "fdiml", scope: !355, file: !355, line: 329, type: !452, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!484 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !485, file: !358, line: 1109)
!485 = !DISubprogram(name: "fma", scope: !355, file: !355, line: 340, type: !486, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!486 = !DISubroutineType(types: !487)
!487 = !{!72, !72, !72, !72}
!488 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !489, file: !358, line: 1110)
!489 = !DISubprogram(name: "fmaf", scope: !355, file: !355, line: 340, type: !490, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!490 = !DISubroutineType(types: !491)
!491 = !{!26, !26, !26, !26}
!492 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !493, file: !358, line: 1111)
!493 = !DISubprogram(name: "fmal", scope: !355, file: !355, line: 340, type: !494, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!494 = !DISubroutineType(types: !495)
!495 = !{!233, !233, !233, !233}
!496 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !497, file: !358, line: 1113)
!497 = !DISubprogram(name: "fmax", scope: !355, file: !355, line: 333, type: !365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!498 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !499, file: !358, line: 1114)
!499 = !DISubprogram(name: "fmaxf", scope: !355, file: !355, line: 333, type: !448, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!500 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !501, file: !358, line: 1115)
!501 = !DISubprogram(name: "fmaxl", scope: !355, file: !355, line: 333, type: !452, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!502 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !503, file: !358, line: 1117)
!503 = !DISubprogram(name: "fmin", scope: !355, file: !355, line: 336, type: !365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!504 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !505, file: !358, line: 1118)
!505 = !DISubprogram(name: "fminf", scope: !355, file: !355, line: 336, type: !448, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!506 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !507, file: !358, line: 1119)
!507 = !DISubprogram(name: "fminl", scope: !355, file: !355, line: 336, type: !452, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!508 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !509, file: !358, line: 1121)
!509 = !DISubprogram(name: "hypot", scope: !355, file: !355, line: 147, type: !365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!510 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !511, file: !358, line: 1122)
!511 = !DISubprogram(name: "hypotf", scope: !355, file: !355, line: 147, type: !448, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!512 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !513, file: !358, line: 1123)
!513 = !DISubprogram(name: "hypotl", scope: !355, file: !355, line: 147, type: !452, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!514 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !515, file: !358, line: 1125)
!515 = !DISubprogram(name: "ilogb", scope: !355, file: !355, line: 283, type: !516, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!516 = !DISubroutineType(types: !517)
!517 = !{!44, !72}
!518 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !519, file: !358, line: 1126)
!519 = !DISubprogram(name: "ilogbf", scope: !355, file: !355, line: 283, type: !520, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!520 = !DISubroutineType(types: !521)
!521 = !{!44, !26}
!522 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !523, file: !358, line: 1127)
!523 = !DISubprogram(name: "ilogbl", scope: !355, file: !355, line: 283, type: !524, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!524 = !DISubroutineType(types: !525)
!525 = !{!44, !233}
!526 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !527, file: !358, line: 1129)
!527 = !DISubprogram(name: "lgamma", scope: !355, file: !355, line: 233, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!528 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !529, file: !358, line: 1130)
!529 = !DISubprogram(name: "lgammaf", scope: !355, file: !355, line: 233, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!530 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !531, file: !358, line: 1131)
!531 = !DISubprogram(name: "lgammal", scope: !355, file: !355, line: 233, type: !424, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!532 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !533, file: !358, line: 1134)
!533 = !DISubprogram(name: "llrint", scope: !355, file: !355, line: 319, type: !534, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!534 = !DISubroutineType(types: !535)
!535 = !{!200, !72}
!536 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !537, file: !358, line: 1135)
!537 = !DISubprogram(name: "llrintf", scope: !355, file: !355, line: 319, type: !538, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!538 = !DISubroutineType(types: !539)
!539 = !{!200, !26}
!540 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !541, file: !358, line: 1136)
!541 = !DISubprogram(name: "llrintl", scope: !355, file: !355, line: 319, type: !542, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!542 = !DISubroutineType(types: !543)
!543 = !{!200, !233}
!544 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !545, file: !358, line: 1138)
!545 = !DISubprogram(name: "llround", scope: !355, file: !355, line: 325, type: !534, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!546 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !547, file: !358, line: 1139)
!547 = !DISubprogram(name: "llroundf", scope: !355, file: !355, line: 325, type: !538, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!548 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !549, file: !358, line: 1140)
!549 = !DISubprogram(name: "llroundl", scope: !355, file: !355, line: 325, type: !542, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!550 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !551, file: !358, line: 1143)
!551 = !DISubprogram(name: "log1p", scope: !355, file: !355, line: 122, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!552 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !553, file: !358, line: 1144)
!553 = !DISubprogram(name: "log1pf", scope: !355, file: !355, line: 122, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!554 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !555, file: !358, line: 1145)
!555 = !DISubprogram(name: "log1pl", scope: !355, file: !355, line: 122, type: !424, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!556 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !557, file: !358, line: 1147)
!557 = !DISubprogram(name: "log2", scope: !355, file: !355, line: 133, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!558 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !559, file: !358, line: 1148)
!559 = !DISubprogram(name: "log2f", scope: !355, file: !355, line: 133, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!560 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !561, file: !358, line: 1149)
!561 = !DISubprogram(name: "log2l", scope: !355, file: !355, line: 133, type: !424, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!562 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !563, file: !358, line: 1151)
!563 = !DISubprogram(name: "logb", scope: !355, file: !355, line: 125, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!564 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !565, file: !358, line: 1152)
!565 = !DISubprogram(name: "logbf", scope: !355, file: !355, line: 125, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!566 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !567, file: !358, line: 1153)
!567 = !DISubprogram(name: "logbl", scope: !355, file: !355, line: 125, type: !424, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!568 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !569, file: !358, line: 1155)
!569 = !DISubprogram(name: "lrint", scope: !355, file: !355, line: 317, type: !570, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!570 = !DISubroutineType(types: !571)
!571 = !{!55, !72}
!572 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !573, file: !358, line: 1156)
!573 = !DISubprogram(name: "lrintf", scope: !355, file: !355, line: 317, type: !574, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!574 = !DISubroutineType(types: !575)
!575 = !{!55, !26}
!576 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !577, file: !358, line: 1157)
!577 = !DISubprogram(name: "lrintl", scope: !355, file: !355, line: 317, type: !578, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!578 = !DISubroutineType(types: !579)
!579 = !{!55, !233}
!580 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !581, file: !358, line: 1159)
!581 = !DISubprogram(name: "lround", scope: !355, file: !355, line: 323, type: !570, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!582 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !583, file: !358, line: 1160)
!583 = !DISubprogram(name: "lroundf", scope: !355, file: !355, line: 323, type: !574, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!584 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !585, file: !358, line: 1161)
!585 = !DISubprogram(name: "lroundl", scope: !355, file: !355, line: 323, type: !578, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!586 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !587, file: !358, line: 1163)
!587 = !DISubprogram(name: "nan", scope: !355, file: !355, line: 203, type: !70, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!588 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !589, file: !358, line: 1164)
!589 = !DISubprogram(name: "nanf", scope: !355, file: !355, line: 203, type: !590, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!590 = !DISubroutineType(types: !591)
!591 = !{!26, !73}
!592 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !593, file: !358, line: 1165)
!593 = !DISubprogram(name: "nanl", scope: !355, file: !355, line: 203, type: !594, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!594 = !DISubroutineType(types: !595)
!595 = !{!233, !73}
!596 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !597, file: !358, line: 1167)
!597 = !DISubprogram(name: "nearbyint", scope: !355, file: !355, line: 297, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!598 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !599, file: !358, line: 1168)
!599 = !DISubprogram(name: "nearbyintf", scope: !355, file: !355, line: 297, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!600 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !601, file: !358, line: 1169)
!601 = !DISubprogram(name: "nearbyintl", scope: !355, file: !355, line: 297, type: !424, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!602 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !603, file: !358, line: 1171)
!603 = !DISubprogram(name: "nextafter", scope: !355, file: !355, line: 262, type: !365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!604 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !605, file: !358, line: 1172)
!605 = !DISubprogram(name: "nextafterf", scope: !355, file: !355, line: 262, type: !448, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!606 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !607, file: !358, line: 1173)
!607 = !DISubprogram(name: "nextafterl", scope: !355, file: !355, line: 262, type: !452, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!608 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !609, file: !358, line: 1175)
!609 = !DISubprogram(name: "nexttoward", scope: !355, file: !355, line: 264, type: !610, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!610 = !DISubroutineType(types: !611)
!611 = !{!72, !72, !233}
!612 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !613, file: !358, line: 1176)
!613 = !DISubprogram(name: "nexttowardf", scope: !355, file: !355, line: 264, type: !614, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!614 = !DISubroutineType(types: !615)
!615 = !{!26, !26, !233}
!616 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !617, file: !358, line: 1177)
!617 = !DISubprogram(name: "nexttowardl", scope: !355, file: !355, line: 264, type: !452, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!618 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !619, file: !358, line: 1179)
!619 = !DISubprogram(name: "remainder", scope: !355, file: !355, line: 275, type: !365, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!620 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !621, file: !358, line: 1180)
!621 = !DISubprogram(name: "remainderf", scope: !355, file: !355, line: 275, type: !448, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!622 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !623, file: !358, line: 1181)
!623 = !DISubprogram(name: "remainderl", scope: !355, file: !355, line: 275, type: !452, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!624 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !625, file: !358, line: 1183)
!625 = !DISubprogram(name: "remquo", scope: !355, file: !355, line: 310, type: !626, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!626 = !DISubroutineType(types: !627)
!627 = !{!72, !72, !72, !385}
!628 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !629, file: !358, line: 1184)
!629 = !DISubprogram(name: "remquof", scope: !355, file: !355, line: 310, type: !630, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!630 = !DISubroutineType(types: !631)
!631 = !{!26, !26, !26, !385}
!632 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !633, file: !358, line: 1185)
!633 = !DISubprogram(name: "remquol", scope: !355, file: !355, line: 310, type: !634, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!634 = !DISubroutineType(types: !635)
!635 = !{!233, !233, !233, !385}
!636 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !637, file: !358, line: 1187)
!637 = !DISubprogram(name: "rint", scope: !355, file: !355, line: 259, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!638 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !639, file: !358, line: 1188)
!639 = !DISubprogram(name: "rintf", scope: !355, file: !355, line: 259, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!640 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !641, file: !358, line: 1189)
!641 = !DISubprogram(name: "rintl", scope: !355, file: !355, line: 259, type: !424, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!642 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !643, file: !358, line: 1191)
!643 = !DISubprogram(name: "round", scope: !355, file: !355, line: 301, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!644 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !645, file: !358, line: 1192)
!645 = !DISubprogram(name: "roundf", scope: !355, file: !355, line: 301, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!646 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !647, file: !358, line: 1193)
!647 = !DISubprogram(name: "roundl", scope: !355, file: !355, line: 301, type: !424, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!648 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !649, file: !358, line: 1195)
!649 = !DISubprogram(name: "scalbln", scope: !355, file: !355, line: 293, type: !650, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!650 = !DISubroutineType(types: !651)
!651 = !{!72, !72, !55}
!652 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !653, file: !358, line: 1196)
!653 = !DISubprogram(name: "scalblnf", scope: !355, file: !355, line: 293, type: !654, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!654 = !DISubroutineType(types: !655)
!655 = !{!26, !26, !55}
!656 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !657, file: !358, line: 1197)
!657 = !DISubprogram(name: "scalblnl", scope: !355, file: !355, line: 293, type: !658, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!658 = !DISubroutineType(types: !659)
!659 = !{!233, !233, !55}
!660 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !661, file: !358, line: 1199)
!661 = !DISubprogram(name: "scalbn", scope: !355, file: !355, line: 279, type: !388, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!662 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !663, file: !358, line: 1200)
!663 = !DISubprogram(name: "scalbnf", scope: !355, file: !355, line: 279, type: !664, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!664 = !DISubroutineType(types: !665)
!665 = !{!26, !26, !44}
!666 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !667, file: !358, line: 1201)
!667 = !DISubprogram(name: "scalbnl", scope: !355, file: !355, line: 279, type: !668, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!668 = !DISubroutineType(types: !669)
!669 = !{!233, !233, !44}
!670 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !671, file: !358, line: 1203)
!671 = !DISubprogram(name: "tgamma", scope: !355, file: !355, line: 238, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!672 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !673, file: !358, line: 1204)
!673 = !DISubprogram(name: "tgammaf", scope: !355, file: !355, line: 238, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!674 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !675, file: !358, line: 1205)
!675 = !DISubprogram(name: "tgammal", scope: !355, file: !355, line: 238, type: !424, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !677, file: !358, line: 1207)
!677 = !DISubprogram(name: "trunc", scope: !355, file: !355, line: 305, type: !356, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !679, file: !358, line: 1208)
!679 = !DISubprogram(name: "truncf", scope: !355, file: !355, line: 305, type: !420, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!680 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !37, entity: !681, file: !358, line: 1209)
!681 = !DISubprogram(name: "truncl", scope: !355, file: !355, line: 305, type: !424, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !683, file: !687, line: 38)
!683 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !37, file: !45, line: 102, type: !684, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!684 = !DISubroutineType(types: !685)
!685 = !{!686, !686}
!686 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!687 = !DIFile(filename: "/home/yuyes/Xilinx/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/math.h", directory: "/home/yuyes/workdir/pom/samples/seidel")
!688 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !31, entity: !689, file: !687, line: 54)
!689 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !37, file: !358, line: 380, type: !690, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!690 = !DISubroutineType(types: !691)
!691 = !{!233, !233, !692}
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!693 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !31, entity: !37, file: !23, line: 18)
!694 = !DILocation(line: 31, column: 9, scope: !22)
