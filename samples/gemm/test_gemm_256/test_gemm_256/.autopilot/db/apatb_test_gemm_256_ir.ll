; ModuleID = '/home/yuyes/workdir/pom/samples/gemm/test_gemm_256/test_gemm_256/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: inaccessiblememonly nounwind
declare void @llvm.sideeffect() #0

; Function Attrs: noinline
define void @apatb_test_gemm_256_ir(float %v0, float %v1, [256 x float]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="256" %v2, [256 x float]* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="256" %v3, [256 x float]* noalias nonnull "fpga.decayed.dim.hint"="256" %v4) local_unnamed_addr #1 {
entry:
  %malloccall_0 = call i8* @malloc(i64 131072)
  %malloccall_1 = call i8* @malloc(i64 131072)
  %v2_copy_0 = bitcast i8* %malloccall_0 to [128 x [256 x float]]*
  %v2_copy_1 = bitcast i8* %malloccall_1 to [128 x [256 x float]]*
  %malloccall1_0 = call i8* @malloc(i64 16384)
  %malloccall1_1 = call i8* @malloc(i64 16384)
  %malloccall1_2 = call i8* @malloc(i64 16384)
  %malloccall1_3 = call i8* @malloc(i64 16384)
  %malloccall1_4 = call i8* @malloc(i64 16384)
  %malloccall1_5 = call i8* @malloc(i64 16384)
  %malloccall1_6 = call i8* @malloc(i64 16384)
  %malloccall1_7 = call i8* @malloc(i64 16384)
  %malloccall1_8 = call i8* @malloc(i64 16384)
  %malloccall1_9 = call i8* @malloc(i64 16384)
  %malloccall1_10 = call i8* @malloc(i64 16384)
  %malloccall1_11 = call i8* @malloc(i64 16384)
  %malloccall1_12 = call i8* @malloc(i64 16384)
  %malloccall1_13 = call i8* @malloc(i64 16384)
  %malloccall1_14 = call i8* @malloc(i64 16384)
  %malloccall1_15 = call i8* @malloc(i64 16384)
  %v3_copy_0 = bitcast i8* %malloccall1_0 to [256 x [16 x float]]*
  %v3_copy_1 = bitcast i8* %malloccall1_1 to [256 x [16 x float]]*
  %v3_copy_2 = bitcast i8* %malloccall1_2 to [256 x [16 x float]]*
  %v3_copy_3 = bitcast i8* %malloccall1_3 to [256 x [16 x float]]*
  %v3_copy_4 = bitcast i8* %malloccall1_4 to [256 x [16 x float]]*
  %v3_copy_5 = bitcast i8* %malloccall1_5 to [256 x [16 x float]]*
  %v3_copy_6 = bitcast i8* %malloccall1_6 to [256 x [16 x float]]*
  %v3_copy_7 = bitcast i8* %malloccall1_7 to [256 x [16 x float]]*
  %v3_copy_8 = bitcast i8* %malloccall1_8 to [256 x [16 x float]]*
  %v3_copy_9 = bitcast i8* %malloccall1_9 to [256 x [16 x float]]*
  %v3_copy_10 = bitcast i8* %malloccall1_10 to [256 x [16 x float]]*
  %v3_copy_11 = bitcast i8* %malloccall1_11 to [256 x [16 x float]]*
  %v3_copy_12 = bitcast i8* %malloccall1_12 to [256 x [16 x float]]*
  %v3_copy_13 = bitcast i8* %malloccall1_13 to [256 x [16 x float]]*
  %v3_copy_14 = bitcast i8* %malloccall1_14 to [256 x [16 x float]]*
  %v3_copy_15 = bitcast i8* %malloccall1_15 to [256 x [16 x float]]*
  %malloccall2_0_0 = call i8* @malloc(i64 8192)
  %malloccall2_0_1 = call i8* @malloc(i64 8192)
  %malloccall2_0_2 = call i8* @malloc(i64 8192)
  %malloccall2_0_3 = call i8* @malloc(i64 8192)
  %malloccall2_0_4 = call i8* @malloc(i64 8192)
  %malloccall2_0_5 = call i8* @malloc(i64 8192)
  %malloccall2_0_6 = call i8* @malloc(i64 8192)
  %malloccall2_0_7 = call i8* @malloc(i64 8192)
  %malloccall2_0_8 = call i8* @malloc(i64 8192)
  %malloccall2_0_9 = call i8* @malloc(i64 8192)
  %malloccall2_0_10 = call i8* @malloc(i64 8192)
  %malloccall2_0_11 = call i8* @malloc(i64 8192)
  %malloccall2_0_12 = call i8* @malloc(i64 8192)
  %malloccall2_0_13 = call i8* @malloc(i64 8192)
  %malloccall2_0_14 = call i8* @malloc(i64 8192)
  %malloccall2_0_15 = call i8* @malloc(i64 8192)
  %malloccall2_1_0 = call i8* @malloc(i64 8192)
  %malloccall2_1_1 = call i8* @malloc(i64 8192)
  %malloccall2_1_2 = call i8* @malloc(i64 8192)
  %malloccall2_1_3 = call i8* @malloc(i64 8192)
  %malloccall2_1_4 = call i8* @malloc(i64 8192)
  %malloccall2_1_5 = call i8* @malloc(i64 8192)
  %malloccall2_1_6 = call i8* @malloc(i64 8192)
  %malloccall2_1_7 = call i8* @malloc(i64 8192)
  %malloccall2_1_8 = call i8* @malloc(i64 8192)
  %malloccall2_1_9 = call i8* @malloc(i64 8192)
  %malloccall2_1_10 = call i8* @malloc(i64 8192)
  %malloccall2_1_11 = call i8* @malloc(i64 8192)
  %malloccall2_1_12 = call i8* @malloc(i64 8192)
  %malloccall2_1_13 = call i8* @malloc(i64 8192)
  %malloccall2_1_14 = call i8* @malloc(i64 8192)
  %malloccall2_1_15 = call i8* @malloc(i64 8192)
  %v4_copy_0_0 = bitcast i8* %malloccall2_0_0 to [128 x [16 x float]]*
  %v4_copy_0_1 = bitcast i8* %malloccall2_0_1 to [128 x [16 x float]]*
  %v4_copy_0_2 = bitcast i8* %malloccall2_0_2 to [128 x [16 x float]]*
  %v4_copy_0_3 = bitcast i8* %malloccall2_0_3 to [128 x [16 x float]]*
  %v4_copy_0_4 = bitcast i8* %malloccall2_0_4 to [128 x [16 x float]]*
  %v4_copy_0_5 = bitcast i8* %malloccall2_0_5 to [128 x [16 x float]]*
  %v4_copy_0_6 = bitcast i8* %malloccall2_0_6 to [128 x [16 x float]]*
  %v4_copy_0_7 = bitcast i8* %malloccall2_0_7 to [128 x [16 x float]]*
  %v4_copy_0_8 = bitcast i8* %malloccall2_0_8 to [128 x [16 x float]]*
  %v4_copy_0_9 = bitcast i8* %malloccall2_0_9 to [128 x [16 x float]]*
  %v4_copy_0_10 = bitcast i8* %malloccall2_0_10 to [128 x [16 x float]]*
  %v4_copy_0_11 = bitcast i8* %malloccall2_0_11 to [128 x [16 x float]]*
  %v4_copy_0_12 = bitcast i8* %malloccall2_0_12 to [128 x [16 x float]]*
  %v4_copy_0_13 = bitcast i8* %malloccall2_0_13 to [128 x [16 x float]]*
  %v4_copy_0_14 = bitcast i8* %malloccall2_0_14 to [128 x [16 x float]]*
  %v4_copy_0_15 = bitcast i8* %malloccall2_0_15 to [128 x [16 x float]]*
  %v4_copy_1_0 = bitcast i8* %malloccall2_1_0 to [128 x [16 x float]]*
  %v4_copy_1_1 = bitcast i8* %malloccall2_1_1 to [128 x [16 x float]]*
  %v4_copy_1_2 = bitcast i8* %malloccall2_1_2 to [128 x [16 x float]]*
  %v4_copy_1_3 = bitcast i8* %malloccall2_1_3 to [128 x [16 x float]]*
  %v4_copy_1_4 = bitcast i8* %malloccall2_1_4 to [128 x [16 x float]]*
  %v4_copy_1_5 = bitcast i8* %malloccall2_1_5 to [128 x [16 x float]]*
  %v4_copy_1_6 = bitcast i8* %malloccall2_1_6 to [128 x [16 x float]]*
  %v4_copy_1_7 = bitcast i8* %malloccall2_1_7 to [128 x [16 x float]]*
  %v4_copy_1_8 = bitcast i8* %malloccall2_1_8 to [128 x [16 x float]]*
  %v4_copy_1_9 = bitcast i8* %malloccall2_1_9 to [128 x [16 x float]]*
  %v4_copy_1_10 = bitcast i8* %malloccall2_1_10 to [128 x [16 x float]]*
  %v4_copy_1_11 = bitcast i8* %malloccall2_1_11 to [128 x [16 x float]]*
  %v4_copy_1_12 = bitcast i8* %malloccall2_1_12 to [128 x [16 x float]]*
  %v4_copy_1_13 = bitcast i8* %malloccall2_1_13 to [128 x [16 x float]]*
  %v4_copy_1_14 = bitcast i8* %malloccall2_1_14 to [128 x [16 x float]]*
  %v4_copy_1_15 = bitcast i8* %malloccall2_1_15 to [128 x [16 x float]]*
  %0 = bitcast [256 x float]* %v2 to [256 x [256 x float]]*
  %1 = bitcast [256 x float]* %v3 to [256 x [256 x float]]*
  %2 = bitcast [256 x float]* %v4 to [256 x [256 x float]]*
  call void @copy_in([256 x [256 x float]]* nonnull %0, [128 x [256 x float]]* %v2_copy_0, [128 x [256 x float]]* %v2_copy_1, [256 x [256 x float]]* nonnull %1, [256 x [16 x float]]* %v3_copy_0, [256 x [16 x float]]* %v3_copy_1, [256 x [16 x float]]* %v3_copy_2, [256 x [16 x float]]* %v3_copy_3, [256 x [16 x float]]* %v3_copy_4, [256 x [16 x float]]* %v3_copy_5, [256 x [16 x float]]* %v3_copy_6, [256 x [16 x float]]* %v3_copy_7, [256 x [16 x float]]* %v3_copy_8, [256 x [16 x float]]* %v3_copy_9, [256 x [16 x float]]* %v3_copy_10, [256 x [16 x float]]* %v3_copy_11, [256 x [16 x float]]* %v3_copy_12, [256 x [16 x float]]* %v3_copy_13, [256 x [16 x float]]* %v3_copy_14, [256 x [16 x float]]* %v3_copy_15, [256 x [256 x float]]* nonnull %2, [128 x [16 x float]]* %v4_copy_0_0, [128 x [16 x float]]* %v4_copy_0_1, [128 x [16 x float]]* %v4_copy_0_2, [128 x [16 x float]]* %v4_copy_0_3, [128 x [16 x float]]* %v4_copy_0_4, [128 x [16 x float]]* %v4_copy_0_5, [128 x [16 x float]]* %v4_copy_0_6, [128 x [16 x float]]* %v4_copy_0_7, [128 x [16 x float]]* %v4_copy_0_8, [128 x [16 x float]]* %v4_copy_0_9, [128 x [16 x float]]* %v4_copy_0_10, [128 x [16 x float]]* %v4_copy_0_11, [128 x [16 x float]]* %v4_copy_0_12, [128 x [16 x float]]* %v4_copy_0_13, [128 x [16 x float]]* %v4_copy_0_14, [128 x [16 x float]]* %v4_copy_0_15, [128 x [16 x float]]* %v4_copy_1_0, [128 x [16 x float]]* %v4_copy_1_1, [128 x [16 x float]]* %v4_copy_1_2, [128 x [16 x float]]* %v4_copy_1_3, [128 x [16 x float]]* %v4_copy_1_4, [128 x [16 x float]]* %v4_copy_1_5, [128 x [16 x float]]* %v4_copy_1_6, [128 x [16 x float]]* %v4_copy_1_7, [128 x [16 x float]]* %v4_copy_1_8, [128 x [16 x float]]* %v4_copy_1_9, [128 x [16 x float]]* %v4_copy_1_10, [128 x [16 x float]]* %v4_copy_1_11, [128 x [16 x float]]* %v4_copy_1_12, [128 x [16 x float]]* %v4_copy_1_13, [128 x [16 x float]]* %v4_copy_1_14, [128 x [16 x float]]* %v4_copy_1_15)
  %_0 = getelementptr [128 x [256 x float]], [128 x [256 x float]]* %v2_copy_0, i32 0, i32 0
  %_1 = getelementptr [128 x [256 x float]], [128 x [256 x float]]* %v2_copy_1, i32 0, i32 0
  %_03 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %v3_copy_0, i32 0, i32 0
  %_14 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %v3_copy_1, i32 0, i32 0
  %_2 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %v3_copy_2, i32 0, i32 0
  %_3 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %v3_copy_3, i32 0, i32 0
  %_4 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %v3_copy_4, i32 0, i32 0
  %_5 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %v3_copy_5, i32 0, i32 0
  %_6 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %v3_copy_6, i32 0, i32 0
  %_7 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %v3_copy_7, i32 0, i32 0
  %_8 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %v3_copy_8, i32 0, i32 0
  %_9 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %v3_copy_9, i32 0, i32 0
  %_10 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %v3_copy_10, i32 0, i32 0
  %_11 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %v3_copy_11, i32 0, i32 0
  %_12 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %v3_copy_12, i32 0, i32 0
  %_13 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %v3_copy_13, i32 0, i32 0
  %_145 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %v3_copy_14, i32 0, i32 0
  %_15 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %v3_copy_15, i32 0, i32 0
  %_0_0 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_0_0, i32 0, i32 0
  %_0_1 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_0_1, i32 0, i32 0
  %_0_2 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_0_2, i32 0, i32 0
  %_0_3 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_0_3, i32 0, i32 0
  %_0_4 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_0_4, i32 0, i32 0
  %_0_5 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_0_5, i32 0, i32 0
  %_0_6 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_0_6, i32 0, i32 0
  %_0_7 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_0_7, i32 0, i32 0
  %_0_8 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_0_8, i32 0, i32 0
  %_0_9 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_0_9, i32 0, i32 0
  %_0_10 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_0_10, i32 0, i32 0
  %_0_11 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_0_11, i32 0, i32 0
  %_0_12 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_0_12, i32 0, i32 0
  %_0_13 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_0_13, i32 0, i32 0
  %_0_14 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_0_14, i32 0, i32 0
  %_0_15 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_0_15, i32 0, i32 0
  %_1_0 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_1_0, i32 0, i32 0
  %_1_1 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_1_1, i32 0, i32 0
  %_1_2 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_1_2, i32 0, i32 0
  %_1_3 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_1_3, i32 0, i32 0
  %_1_4 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_1_4, i32 0, i32 0
  %_1_5 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_1_5, i32 0, i32 0
  %_1_6 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_1_6, i32 0, i32 0
  %_1_7 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_1_7, i32 0, i32 0
  %_1_8 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_1_8, i32 0, i32 0
  %_1_9 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_1_9, i32 0, i32 0
  %_1_10 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_1_10, i32 0, i32 0
  %_1_11 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_1_11, i32 0, i32 0
  %_1_12 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_1_12, i32 0, i32 0
  %_1_13 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_1_13, i32 0, i32 0
  %_1_14 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_1_14, i32 0, i32 0
  %_1_15 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %v4_copy_1_15, i32 0, i32 0
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([256 x float]* %_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !72
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([256 x float]* %_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !72
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_03, i32 998, i32 1, i32 0, i1 false) ], !dbg !745
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_14, i32 998, i32 1, i32 0, i1 false) ], !dbg !745
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !745
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_3, i32 998, i32 1, i32 0, i1 false) ], !dbg !745
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_4, i32 998, i32 1, i32 0, i1 false) ], !dbg !745
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_5, i32 998, i32 1, i32 0, i1 false) ], !dbg !745
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_6, i32 998, i32 1, i32 0, i1 false) ], !dbg !745
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_7, i32 998, i32 1, i32 0, i1 false) ], !dbg !745
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_8, i32 998, i32 1, i32 0, i1 false) ], !dbg !745
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_9, i32 998, i32 1, i32 0, i1 false) ], !dbg !745
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_10, i32 998, i32 1, i32 0, i1 false) ], !dbg !745
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_11, i32 998, i32 1, i32 0, i1 false) ], !dbg !745
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_12, i32 998, i32 1, i32 0, i1 false) ], !dbg !745
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_13, i32 998, i32 1, i32 0, i1 false) ], !dbg !745
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_145, i32 998, i32 1, i32 0, i1 false) ], !dbg !745
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_15, i32 998, i32 1, i32 0, i1 false) ], !dbg !745
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_3, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_4, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_5, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_6, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_7, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_8, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_9, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_10, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_11, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_12, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_13, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_14, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_15, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_3, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_4, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_5, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_6, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_7, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_8, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_9, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_10, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_11, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_12, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_13, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_14, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_15, i32 998, i32 1, i32 0, i1 false) ], !dbg !746
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_3, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_4, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_5, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_6, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_7, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_8, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_9, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_10, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_11, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_12, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_13, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_14, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_0_15, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_0, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_1, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_2, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_3, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_4, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_5, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_6, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_7, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_8, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_9, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_10, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_11, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_12, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_13, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_14, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @llvm.sideeffect() #7 [ "xlx_array_partition"([16 x float]* %_1_15, i32 998, i32 1, i32 0, i1 false) ], !dbg !747
  call void @apatb_test_gemm_256_hw(float %v0, float %v1, [128 x [256 x float]]* %v2_copy_0, [128 x [256 x float]]* %v2_copy_1, [256 x [16 x float]]* %v3_copy_0, [256 x [16 x float]]* %v3_copy_1, [256 x [16 x float]]* %v3_copy_2, [256 x [16 x float]]* %v3_copy_3, [256 x [16 x float]]* %v3_copy_4, [256 x [16 x float]]* %v3_copy_5, [256 x [16 x float]]* %v3_copy_6, [256 x [16 x float]]* %v3_copy_7, [256 x [16 x float]]* %v3_copy_8, [256 x [16 x float]]* %v3_copy_9, [256 x [16 x float]]* %v3_copy_10, [256 x [16 x float]]* %v3_copy_11, [256 x [16 x float]]* %v3_copy_12, [256 x [16 x float]]* %v3_copy_13, [256 x [16 x float]]* %v3_copy_14, [256 x [16 x float]]* %v3_copy_15, [128 x [16 x float]]* %v4_copy_0_0, [128 x [16 x float]]* %v4_copy_0_1, [128 x [16 x float]]* %v4_copy_0_2, [128 x [16 x float]]* %v4_copy_0_3, [128 x [16 x float]]* %v4_copy_0_4, [128 x [16 x float]]* %v4_copy_0_5, [128 x [16 x float]]* %v4_copy_0_6, [128 x [16 x float]]* %v4_copy_0_7, [128 x [16 x float]]* %v4_copy_0_8, [128 x [16 x float]]* %v4_copy_0_9, [128 x [16 x float]]* %v4_copy_0_10, [128 x [16 x float]]* %v4_copy_0_11, [128 x [16 x float]]* %v4_copy_0_12, [128 x [16 x float]]* %v4_copy_0_13, [128 x [16 x float]]* %v4_copy_0_14, [128 x [16 x float]]* %v4_copy_0_15, [128 x [16 x float]]* %v4_copy_1_0, [128 x [16 x float]]* %v4_copy_1_1, [128 x [16 x float]]* %v4_copy_1_2, [128 x [16 x float]]* %v4_copy_1_3, [128 x [16 x float]]* %v4_copy_1_4, [128 x [16 x float]]* %v4_copy_1_5, [128 x [16 x float]]* %v4_copy_1_6, [128 x [16 x float]]* %v4_copy_1_7, [128 x [16 x float]]* %v4_copy_1_8, [128 x [16 x float]]* %v4_copy_1_9, [128 x [16 x float]]* %v4_copy_1_10, [128 x [16 x float]]* %v4_copy_1_11, [128 x [16 x float]]* %v4_copy_1_12, [128 x [16 x float]]* %v4_copy_1_13, [128 x [16 x float]]* %v4_copy_1_14, [128 x [16 x float]]* %v4_copy_1_15)
  call void @copy_back([256 x [256 x float]]* %0, [128 x [256 x float]]* %v2_copy_0, [128 x [256 x float]]* %v2_copy_1, [256 x [256 x float]]* %1, [256 x [16 x float]]* %v3_copy_0, [256 x [16 x float]]* %v3_copy_1, [256 x [16 x float]]* %v3_copy_2, [256 x [16 x float]]* %v3_copy_3, [256 x [16 x float]]* %v3_copy_4, [256 x [16 x float]]* %v3_copy_5, [256 x [16 x float]]* %v3_copy_6, [256 x [16 x float]]* %v3_copy_7, [256 x [16 x float]]* %v3_copy_8, [256 x [16 x float]]* %v3_copy_9, [256 x [16 x float]]* %v3_copy_10, [256 x [16 x float]]* %v3_copy_11, [256 x [16 x float]]* %v3_copy_12, [256 x [16 x float]]* %v3_copy_13, [256 x [16 x float]]* %v3_copy_14, [256 x [16 x float]]* %v3_copy_15, [256 x [256 x float]]* %2, [128 x [16 x float]]* %v4_copy_0_0, [128 x [16 x float]]* %v4_copy_0_1, [128 x [16 x float]]* %v4_copy_0_2, [128 x [16 x float]]* %v4_copy_0_3, [128 x [16 x float]]* %v4_copy_0_4, [128 x [16 x float]]* %v4_copy_0_5, [128 x [16 x float]]* %v4_copy_0_6, [128 x [16 x float]]* %v4_copy_0_7, [128 x [16 x float]]* %v4_copy_0_8, [128 x [16 x float]]* %v4_copy_0_9, [128 x [16 x float]]* %v4_copy_0_10, [128 x [16 x float]]* %v4_copy_0_11, [128 x [16 x float]]* %v4_copy_0_12, [128 x [16 x float]]* %v4_copy_0_13, [128 x [16 x float]]* %v4_copy_0_14, [128 x [16 x float]]* %v4_copy_0_15, [128 x [16 x float]]* %v4_copy_1_0, [128 x [16 x float]]* %v4_copy_1_1, [128 x [16 x float]]* %v4_copy_1_2, [128 x [16 x float]]* %v4_copy_1_3, [128 x [16 x float]]* %v4_copy_1_4, [128 x [16 x float]]* %v4_copy_1_5, [128 x [16 x float]]* %v4_copy_1_6, [128 x [16 x float]]* %v4_copy_1_7, [128 x [16 x float]]* %v4_copy_1_8, [128 x [16 x float]]* %v4_copy_1_9, [128 x [16 x float]]* %v4_copy_1_10, [128 x [16 x float]]* %v4_copy_1_11, [128 x [16 x float]]* %v4_copy_1_12, [128 x [16 x float]]* %v4_copy_1_13, [128 x [16 x float]]* %v4_copy_1_14, [128 x [16 x float]]* %v4_copy_1_15)
  call void @free(i8* %malloccall_0)
  call void @free(i8* %malloccall_1)
  call void @free(i8* %malloccall1_0)
  call void @free(i8* %malloccall1_1)
  call void @free(i8* %malloccall1_2)
  call void @free(i8* %malloccall1_3)
  call void @free(i8* %malloccall1_4)
  call void @free(i8* %malloccall1_5)
  call void @free(i8* %malloccall1_6)
  call void @free(i8* %malloccall1_7)
  call void @free(i8* %malloccall1_8)
  call void @free(i8* %malloccall1_9)
  call void @free(i8* %malloccall1_10)
  call void @free(i8* %malloccall1_11)
  call void @free(i8* %malloccall1_12)
  call void @free(i8* %malloccall1_13)
  call void @free(i8* %malloccall1_14)
  call void @free(i8* %malloccall1_15)
  call void @free(i8* %malloccall2_0_0)
  call void @free(i8* %malloccall2_0_1)
  call void @free(i8* %malloccall2_0_2)
  call void @free(i8* %malloccall2_0_3)
  call void @free(i8* %malloccall2_0_4)
  call void @free(i8* %malloccall2_0_5)
  call void @free(i8* %malloccall2_0_6)
  call void @free(i8* %malloccall2_0_7)
  call void @free(i8* %malloccall2_0_8)
  call void @free(i8* %malloccall2_0_9)
  call void @free(i8* %malloccall2_0_10)
  call void @free(i8* %malloccall2_0_11)
  call void @free(i8* %malloccall2_0_12)
  call void @free(i8* %malloccall2_0_13)
  call void @free(i8* %malloccall2_0_14)
  call void @free(i8* %malloccall2_0_15)
  call void @free(i8* %malloccall2_1_0)
  call void @free(i8* %malloccall2_1_1)
  call void @free(i8* %malloccall2_1_2)
  call void @free(i8* %malloccall2_1_3)
  call void @free(i8* %malloccall2_1_4)
  call void @free(i8* %malloccall2_1_5)
  call void @free(i8* %malloccall2_1_6)
  call void @free(i8* %malloccall2_1_7)
  call void @free(i8* %malloccall2_1_8)
  call void @free(i8* %malloccall2_1_9)
  call void @free(i8* %malloccall2_1_10)
  call void @free(i8* %malloccall2_1_11)
  call void @free(i8* %malloccall2_1_12)
  call void @free(i8* %malloccall2_1_13)
  call void @free(i8* %malloccall2_1_14)
  call void @free(i8* %malloccall2_1_15)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

declare void @free(i8*) local_unnamed_addr

; Function Attrs: nounwind
declare void @llvm.assume(i1) #2

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a256a256f32.3.4([128 x [256 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %_0, [128 x [256 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1" %_1, [256 x [256 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #3 {
entry:
  %1 = icmp eq [128 x [256 x float]]* %_0, null
  %2 = icmp eq [256 x [256 x float]]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %4 = urem i64 %for.loop.idx10, 2
  %5 = udiv i64 %for.loop.idx10, 2
  %6 = trunc i64 %4 to i1
  %cond = icmp eq i1 %6, false
  br label %for.loop2

for.loop2:                                        ; preds = %dst.addr57.exit, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %dst.addr57.exit ]
  %dst.addr57_0 = getelementptr [128 x [256 x float]], [128 x [256 x float]]* %_0, i64 0, i64 %5, i64 %for.loop.idx39
  %dst.addr57_1 = getelementptr [128 x [256 x float]], [128 x [256 x float]]* %_1, i64 0, i64 %5, i64 %for.loop.idx39
  %src.addr68 = getelementptr [256 x [256 x float]], [256 x [256 x float]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %7 = load float, float* %src.addr68, align 4
  br i1 %cond, label %dst.addr57.case.0, label %dst.addr57.case.1

dst.addr57.case.0:                                ; preds = %for.loop2
  store float %7, float* %dst.addr57_0, align 4
  br label %dst.addr57.exit

dst.addr57.case.1:                                ; preds = %for.loop2
  call void @llvm.assume(i1 %6)
  store float %7, float* %dst.addr57_1, align 4
  br label %dst.addr57.exit

dst.addr57.exit:                                  ; preds = %dst.addr57.case.1, %dst.addr57.case.0
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 256
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %dst.addr57.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 256
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a256a256f32.5.6([256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0" %_0, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1" %_1, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.2" %_2, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.3" %_3, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.4" %_4, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.5" %_5, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.6" %_6, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.7" %_7, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.8" %_8, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.9" %_9, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.10" %_10, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.11" %_11, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.12" %_12, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.13" %_13, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.14" %_14, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.15" %_15, [256 x [256 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #3 {
entry:
  %1 = icmp eq [256 x [16 x float]]* %_0, null
  %2 = icmp eq [256 x [256 x float]]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %dst.addr57.exit, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %dst.addr57.exit ]
  %4 = urem i64 %for.loop.idx39, 16
  %5 = udiv i64 %for.loop.idx39, 16
  %dst.addr57_0 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_0, i64 0, i64 %for.loop.idx10, i64 %5
  %dst.addr57_1 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_1, i64 0, i64 %for.loop.idx10, i64 %5
  %dst.addr57_2 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_2, i64 0, i64 %for.loop.idx10, i64 %5
  %dst.addr57_3 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_3, i64 0, i64 %for.loop.idx10, i64 %5
  %dst.addr57_4 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_4, i64 0, i64 %for.loop.idx10, i64 %5
  %dst.addr57_5 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_5, i64 0, i64 %for.loop.idx10, i64 %5
  %dst.addr57_6 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_6, i64 0, i64 %for.loop.idx10, i64 %5
  %dst.addr57_7 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_7, i64 0, i64 %for.loop.idx10, i64 %5
  %dst.addr57_8 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_8, i64 0, i64 %for.loop.idx10, i64 %5
  %dst.addr57_9 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_9, i64 0, i64 %for.loop.idx10, i64 %5
  %dst.addr57_10 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_10, i64 0, i64 %for.loop.idx10, i64 %5
  %dst.addr57_11 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_11, i64 0, i64 %for.loop.idx10, i64 %5
  %dst.addr57_12 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_12, i64 0, i64 %for.loop.idx10, i64 %5
  %dst.addr57_13 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_13, i64 0, i64 %for.loop.idx10, i64 %5
  %dst.addr57_14 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_14, i64 0, i64 %for.loop.idx10, i64 %5
  %dst.addr57_15 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_15, i64 0, i64 %for.loop.idx10, i64 %5
  %src.addr68 = getelementptr [256 x [256 x float]], [256 x [256 x float]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %6 = load float, float* %src.addr68, align 4
  %7 = trunc i64 %4 to i4
  switch i4 %7, label %dst.addr57.case.15 [
    i4 0, label %dst.addr57.case.0
    i4 1, label %dst.addr57.case.1
    i4 2, label %dst.addr57.case.2
    i4 3, label %dst.addr57.case.3
    i4 4, label %dst.addr57.case.4
    i4 5, label %dst.addr57.case.5
    i4 6, label %dst.addr57.case.6
    i4 7, label %dst.addr57.case.7
    i4 -8, label %dst.addr57.case.8
    i4 -7, label %dst.addr57.case.9
    i4 -6, label %dst.addr57.case.10
    i4 -5, label %dst.addr57.case.11
    i4 -4, label %dst.addr57.case.12
    i4 -3, label %dst.addr57.case.13
    i4 -2, label %dst.addr57.case.14
  ]

dst.addr57.case.0:                                ; preds = %for.loop2
  store float %6, float* %dst.addr57_0, align 4
  br label %dst.addr57.exit

dst.addr57.case.1:                                ; preds = %for.loop2
  store float %6, float* %dst.addr57_1, align 4
  br label %dst.addr57.exit

dst.addr57.case.2:                                ; preds = %for.loop2
  store float %6, float* %dst.addr57_2, align 4
  br label %dst.addr57.exit

dst.addr57.case.3:                                ; preds = %for.loop2
  store float %6, float* %dst.addr57_3, align 4
  br label %dst.addr57.exit

dst.addr57.case.4:                                ; preds = %for.loop2
  store float %6, float* %dst.addr57_4, align 4
  br label %dst.addr57.exit

dst.addr57.case.5:                                ; preds = %for.loop2
  store float %6, float* %dst.addr57_5, align 4
  br label %dst.addr57.exit

dst.addr57.case.6:                                ; preds = %for.loop2
  store float %6, float* %dst.addr57_6, align 4
  br label %dst.addr57.exit

dst.addr57.case.7:                                ; preds = %for.loop2
  store float %6, float* %dst.addr57_7, align 4
  br label %dst.addr57.exit

dst.addr57.case.8:                                ; preds = %for.loop2
  store float %6, float* %dst.addr57_8, align 4
  br label %dst.addr57.exit

dst.addr57.case.9:                                ; preds = %for.loop2
  store float %6, float* %dst.addr57_9, align 4
  br label %dst.addr57.exit

dst.addr57.case.10:                               ; preds = %for.loop2
  store float %6, float* %dst.addr57_10, align 4
  br label %dst.addr57.exit

dst.addr57.case.11:                               ; preds = %for.loop2
  store float %6, float* %dst.addr57_11, align 4
  br label %dst.addr57.exit

dst.addr57.case.12:                               ; preds = %for.loop2
  store float %6, float* %dst.addr57_12, align 4
  br label %dst.addr57.exit

dst.addr57.case.13:                               ; preds = %for.loop2
  store float %6, float* %dst.addr57_13, align 4
  br label %dst.addr57.exit

dst.addr57.case.14:                               ; preds = %for.loop2
  store float %6, float* %dst.addr57_14, align 4
  br label %dst.addr57.exit

dst.addr57.case.15:                               ; preds = %for.loop2
  store float %6, float* %dst.addr57_15, align 4
  br label %dst.addr57.exit

dst.addr57.exit:                                  ; preds = %dst.addr57.case.15, %dst.addr57.case.14, %dst.addr57.case.13, %dst.addr57.case.12, %dst.addr57.case.11, %dst.addr57.case.10, %dst.addr57.case.9, %dst.addr57.case.8, %dst.addr57.case.7, %dst.addr57.case.6, %dst.addr57.case.5, %dst.addr57.case.4, %dst.addr57.case.3, %dst.addr57.case.2, %dst.addr57.case.1, %dst.addr57.case.0
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 256
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %dst.addr57.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 256
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a256a256f32.7.8([128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.0" %_0_0, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.1" %_0_1, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.2" %_0_2, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.3" %_0_3, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.4" %_0_4, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.5" %_0_5, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.6" %_0_6, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.7" %_0_7, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.8" %_0_8, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.9" %_0_9, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.10" %_0_10, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.11" %_0_11, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.12" %_0_12, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.13" %_0_13, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.14" %_0_14, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.0.15" %_0_15, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.0" %_1_0, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.1" %_1_1, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.2" %_1_2, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.3" %_1_3, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.4" %_1_4, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.5" %_1_5, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.6" %_1_6, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.7" %_1_7, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.8" %_1_8, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.9" %_1_9, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.10" %_1_10, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.11" %_1_11, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.12" %_1_12, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.13" %_1_13, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.14" %_1_14, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0" "unpacked"="0.1.15" %_1_15, [256 x [256 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1") #3 {
entry:
  %1 = icmp eq [128 x [16 x float]]* %_0_0, null
  %2 = icmp eq [256 x [256 x float]]* %0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %4 = urem i64 %for.loop.idx10, 2
  %5 = udiv i64 %for.loop.idx10, 2
  %6 = trunc i64 %4 to i1
  %cond = icmp eq i1 %6, false
  br label %for.loop2

for.loop2:                                        ; preds = %dst.addr57.exit, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %dst.addr57.exit ]
  %7 = urem i64 %for.loop.idx39, 16
  %8 = udiv i64 %for.loop.idx39, 16
  %dst.addr57_0_0 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_0, i64 0, i64 %5, i64 %8
  %dst.addr57_0_1 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_1, i64 0, i64 %5, i64 %8
  %dst.addr57_0_2 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_2, i64 0, i64 %5, i64 %8
  %dst.addr57_0_3 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_3, i64 0, i64 %5, i64 %8
  %dst.addr57_0_4 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_4, i64 0, i64 %5, i64 %8
  %dst.addr57_0_5 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_5, i64 0, i64 %5, i64 %8
  %dst.addr57_0_6 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_6, i64 0, i64 %5, i64 %8
  %dst.addr57_0_7 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_7, i64 0, i64 %5, i64 %8
  %dst.addr57_0_8 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_8, i64 0, i64 %5, i64 %8
  %dst.addr57_0_9 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_9, i64 0, i64 %5, i64 %8
  %dst.addr57_0_10 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_10, i64 0, i64 %5, i64 %8
  %dst.addr57_0_11 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_11, i64 0, i64 %5, i64 %8
  %dst.addr57_0_12 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_12, i64 0, i64 %5, i64 %8
  %dst.addr57_0_13 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_13, i64 0, i64 %5, i64 %8
  %dst.addr57_0_14 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_14, i64 0, i64 %5, i64 %8
  %dst.addr57_0_15 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_15, i64 0, i64 %5, i64 %8
  %dst.addr57_1_0 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_0, i64 0, i64 %5, i64 %8
  %dst.addr57_1_1 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_1, i64 0, i64 %5, i64 %8
  %dst.addr57_1_2 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_2, i64 0, i64 %5, i64 %8
  %dst.addr57_1_3 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_3, i64 0, i64 %5, i64 %8
  %dst.addr57_1_4 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_4, i64 0, i64 %5, i64 %8
  %dst.addr57_1_5 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_5, i64 0, i64 %5, i64 %8
  %dst.addr57_1_6 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_6, i64 0, i64 %5, i64 %8
  %dst.addr57_1_7 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_7, i64 0, i64 %5, i64 %8
  %dst.addr57_1_8 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_8, i64 0, i64 %5, i64 %8
  %dst.addr57_1_9 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_9, i64 0, i64 %5, i64 %8
  %dst.addr57_1_10 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_10, i64 0, i64 %5, i64 %8
  %dst.addr57_1_11 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_11, i64 0, i64 %5, i64 %8
  %dst.addr57_1_12 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_12, i64 0, i64 %5, i64 %8
  %dst.addr57_1_13 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_13, i64 0, i64 %5, i64 %8
  %dst.addr57_1_14 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_14, i64 0, i64 %5, i64 %8
  %dst.addr57_1_15 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_15, i64 0, i64 %5, i64 %8
  %src.addr68 = getelementptr [256 x [256 x float]], [256 x [256 x float]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %9 = load float, float* %src.addr68, align 4
  %10 = trunc i64 %7 to i4
  br i1 %cond, label %dst.addr57.case.0, label %dst.addr57.case.1

dst.addr57.case.0:                                ; preds = %for.loop2
  switch i4 %10, label %dst.addr57.case.15 [
    i4 0, label %dst.addr57.case.03
    i4 1, label %dst.addr57.case.14
    i4 2, label %dst.addr57.case.2
    i4 3, label %dst.addr57.case.3
    i4 4, label %dst.addr57.case.4
    i4 5, label %dst.addr57.case.5
    i4 6, label %dst.addr57.case.6
    i4 7, label %dst.addr57.case.7
    i4 -8, label %dst.addr57.case.8
    i4 -7, label %dst.addr57.case.9
    i4 -6, label %dst.addr57.case.10
    i4 -5, label %dst.addr57.case.11
    i4 -4, label %dst.addr57.case.12
    i4 -3, label %dst.addr57.case.13
    i4 -2, label %dst.addr57.case.145
  ]

dst.addr57.case.03:                               ; preds = %dst.addr57.case.0
  store float %9, float* %dst.addr57_0_0, align 4
  br label %dst.addr57.exit2

dst.addr57.case.14:                               ; preds = %dst.addr57.case.0
  store float %9, float* %dst.addr57_0_1, align 4
  br label %dst.addr57.exit2

dst.addr57.case.2:                                ; preds = %dst.addr57.case.0
  store float %9, float* %dst.addr57_0_2, align 4
  br label %dst.addr57.exit2

dst.addr57.case.3:                                ; preds = %dst.addr57.case.0
  store float %9, float* %dst.addr57_0_3, align 4
  br label %dst.addr57.exit2

dst.addr57.case.4:                                ; preds = %dst.addr57.case.0
  store float %9, float* %dst.addr57_0_4, align 4
  br label %dst.addr57.exit2

dst.addr57.case.5:                                ; preds = %dst.addr57.case.0
  store float %9, float* %dst.addr57_0_5, align 4
  br label %dst.addr57.exit2

dst.addr57.case.6:                                ; preds = %dst.addr57.case.0
  store float %9, float* %dst.addr57_0_6, align 4
  br label %dst.addr57.exit2

dst.addr57.case.7:                                ; preds = %dst.addr57.case.0
  store float %9, float* %dst.addr57_0_7, align 4
  br label %dst.addr57.exit2

dst.addr57.case.8:                                ; preds = %dst.addr57.case.0
  store float %9, float* %dst.addr57_0_8, align 4
  br label %dst.addr57.exit2

dst.addr57.case.9:                                ; preds = %dst.addr57.case.0
  store float %9, float* %dst.addr57_0_9, align 4
  br label %dst.addr57.exit2

dst.addr57.case.10:                               ; preds = %dst.addr57.case.0
  store float %9, float* %dst.addr57_0_10, align 4
  br label %dst.addr57.exit2

dst.addr57.case.11:                               ; preds = %dst.addr57.case.0
  store float %9, float* %dst.addr57_0_11, align 4
  br label %dst.addr57.exit2

dst.addr57.case.12:                               ; preds = %dst.addr57.case.0
  store float %9, float* %dst.addr57_0_12, align 4
  br label %dst.addr57.exit2

dst.addr57.case.13:                               ; preds = %dst.addr57.case.0
  store float %9, float* %dst.addr57_0_13, align 4
  br label %dst.addr57.exit2

dst.addr57.case.145:                              ; preds = %dst.addr57.case.0
  store float %9, float* %dst.addr57_0_14, align 4
  br label %dst.addr57.exit2

dst.addr57.case.15:                               ; preds = %dst.addr57.case.0
  store float %9, float* %dst.addr57_0_15, align 4
  br label %dst.addr57.exit2

dst.addr57.exit2:                                 ; preds = %dst.addr57.case.15, %dst.addr57.case.145, %dst.addr57.case.13, %dst.addr57.case.12, %dst.addr57.case.11, %dst.addr57.case.10, %dst.addr57.case.9, %dst.addr57.case.8, %dst.addr57.case.7, %dst.addr57.case.6, %dst.addr57.case.5, %dst.addr57.case.4, %dst.addr57.case.3, %dst.addr57.case.2, %dst.addr57.case.14, %dst.addr57.case.03
  br label %dst.addr57.exit

dst.addr57.case.1:                                ; preds = %for.loop2
  call void @llvm.assume(i1 %6)
  switch i4 %10, label %dst.addr57.case.1523 [
    i4 0, label %dst.addr57.case.08
    i4 1, label %dst.addr57.case.19
    i4 2, label %dst.addr57.case.210
    i4 3, label %dst.addr57.case.311
    i4 4, label %dst.addr57.case.412
    i4 5, label %dst.addr57.case.513
    i4 6, label %dst.addr57.case.614
    i4 7, label %dst.addr57.case.715
    i4 -8, label %dst.addr57.case.816
    i4 -7, label %dst.addr57.case.917
    i4 -6, label %dst.addr57.case.1018
    i4 -5, label %dst.addr57.case.1119
    i4 -4, label %dst.addr57.case.1220
    i4 -3, label %dst.addr57.case.1321
    i4 -2, label %dst.addr57.case.1422
  ]

dst.addr57.case.08:                               ; preds = %dst.addr57.case.1
  store float %9, float* %dst.addr57_1_0, align 4
  br label %dst.addr57.exit7

dst.addr57.case.19:                               ; preds = %dst.addr57.case.1
  store float %9, float* %dst.addr57_1_1, align 4
  br label %dst.addr57.exit7

dst.addr57.case.210:                              ; preds = %dst.addr57.case.1
  store float %9, float* %dst.addr57_1_2, align 4
  br label %dst.addr57.exit7

dst.addr57.case.311:                              ; preds = %dst.addr57.case.1
  store float %9, float* %dst.addr57_1_3, align 4
  br label %dst.addr57.exit7

dst.addr57.case.412:                              ; preds = %dst.addr57.case.1
  store float %9, float* %dst.addr57_1_4, align 4
  br label %dst.addr57.exit7

dst.addr57.case.513:                              ; preds = %dst.addr57.case.1
  store float %9, float* %dst.addr57_1_5, align 4
  br label %dst.addr57.exit7

dst.addr57.case.614:                              ; preds = %dst.addr57.case.1
  store float %9, float* %dst.addr57_1_6, align 4
  br label %dst.addr57.exit7

dst.addr57.case.715:                              ; preds = %dst.addr57.case.1
  store float %9, float* %dst.addr57_1_7, align 4
  br label %dst.addr57.exit7

dst.addr57.case.816:                              ; preds = %dst.addr57.case.1
  store float %9, float* %dst.addr57_1_8, align 4
  br label %dst.addr57.exit7

dst.addr57.case.917:                              ; preds = %dst.addr57.case.1
  store float %9, float* %dst.addr57_1_9, align 4
  br label %dst.addr57.exit7

dst.addr57.case.1018:                             ; preds = %dst.addr57.case.1
  store float %9, float* %dst.addr57_1_10, align 4
  br label %dst.addr57.exit7

dst.addr57.case.1119:                             ; preds = %dst.addr57.case.1
  store float %9, float* %dst.addr57_1_11, align 4
  br label %dst.addr57.exit7

dst.addr57.case.1220:                             ; preds = %dst.addr57.case.1
  store float %9, float* %dst.addr57_1_12, align 4
  br label %dst.addr57.exit7

dst.addr57.case.1321:                             ; preds = %dst.addr57.case.1
  store float %9, float* %dst.addr57_1_13, align 4
  br label %dst.addr57.exit7

dst.addr57.case.1422:                             ; preds = %dst.addr57.case.1
  store float %9, float* %dst.addr57_1_14, align 4
  br label %dst.addr57.exit7

dst.addr57.case.1523:                             ; preds = %dst.addr57.case.1
  store float %9, float* %dst.addr57_1_15, align 4
  br label %dst.addr57.exit7

dst.addr57.exit7:                                 ; preds = %dst.addr57.case.1523, %dst.addr57.case.1422, %dst.addr57.case.1321, %dst.addr57.case.1220, %dst.addr57.case.1119, %dst.addr57.case.1018, %dst.addr57.case.917, %dst.addr57.case.816, %dst.addr57.case.715, %dst.addr57.case.614, %dst.addr57.case.513, %dst.addr57.case.412, %dst.addr57.case.311, %dst.addr57.case.210, %dst.addr57.case.19, %dst.addr57.case.08
  br label %dst.addr57.exit

dst.addr57.exit:                                  ; preds = %dst.addr57.exit7, %dst.addr57.exit2
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 256
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %dst.addr57.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 256
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_in([256 x [256 x float]]* noalias readonly "orig.arg.no"="0", [128 x [256 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [128 x [256 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, [256 x [256 x float]]* noalias readonly "orig.arg.no"="2", [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0" %_01, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1" %_12, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2" %_2, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3" %_3, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4" %_4, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5" %_5, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6" %_6, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7" %_7, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.8" %_8, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.9" %_9, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.10" %_10, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.11" %_11, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.12" %_123, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.13" %_13, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.14" %_14, [256 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.15" %_15, [256 x [256 x float]]* noalias readonly "orig.arg.no"="4", [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.0" %_0_0, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.1" %_0_1, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.2" %_0_2, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.3" %_0_3, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.4" %_0_4, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.5" %_0_5, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.6" %_0_6, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.7" %_0_7, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.8" %_0_8, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.9" %_0_9, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.10" %_0_10, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.11" %_0_11, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.12" %_0_12, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.13" %_0_13, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.14" %_0_14, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.15" %_0_15, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.0" %_1_0, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.1" %_1_1, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.2" %_1_2, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.3" %_1_3, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.4" %_1_4, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.5" %_1_5, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.6" %_1_6, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.7" %_1_7, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.8" %_1_8, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.9" %_1_9, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.10" %_1_10, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.11" %_1_11, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.12" %_1_12, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.13" %_1_13, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.14" %_1_14, [128 x [16 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.15" %_1_15) #4 {
entry:
  call void @onebyonecpy_hls.p0a256a256f32.3.4([128 x [256 x float]]* %_0, [128 x [256 x float]]* %_1, [256 x [256 x float]]* %0)
  call void @onebyonecpy_hls.p0a256a256f32.5.6([256 x [16 x float]]* %_01, [256 x [16 x float]]* %_12, [256 x [16 x float]]* %_2, [256 x [16 x float]]* %_3, [256 x [16 x float]]* %_4, [256 x [16 x float]]* %_5, [256 x [16 x float]]* %_6, [256 x [16 x float]]* %_7, [256 x [16 x float]]* %_8, [256 x [16 x float]]* %_9, [256 x [16 x float]]* %_10, [256 x [16 x float]]* %_11, [256 x [16 x float]]* %_123, [256 x [16 x float]]* %_13, [256 x [16 x float]]* %_14, [256 x [16 x float]]* %_15, [256 x [256 x float]]* %1)
  call void @onebyonecpy_hls.p0a256a256f32.7.8([128 x [16 x float]]* %_0_0, [128 x [16 x float]]* %_0_1, [128 x [16 x float]]* %_0_2, [128 x [16 x float]]* %_0_3, [128 x [16 x float]]* %_0_4, [128 x [16 x float]]* %_0_5, [128 x [16 x float]]* %_0_6, [128 x [16 x float]]* %_0_7, [128 x [16 x float]]* %_0_8, [128 x [16 x float]]* %_0_9, [128 x [16 x float]]* %_0_10, [128 x [16 x float]]* %_0_11, [128 x [16 x float]]* %_0_12, [128 x [16 x float]]* %_0_13, [128 x [16 x float]]* %_0_14, [128 x [16 x float]]* %_0_15, [128 x [16 x float]]* %_1_0, [128 x [16 x float]]* %_1_1, [128 x [16 x float]]* %_1_2, [128 x [16 x float]]* %_1_3, [128 x [16 x float]]* %_1_4, [128 x [16 x float]]* %_1_5, [128 x [16 x float]]* %_1_6, [128 x [16 x float]]* %_1_7, [128 x [16 x float]]* %_1_8, [128 x [16 x float]]* %_1_9, [128 x [16 x float]]* %_1_10, [128 x [16 x float]]* %_1_11, [128 x [16 x float]]* %_1_12, [128 x [16 x float]]* %_1_13, [128 x [16 x float]]* %_1_14, [128 x [16 x float]]* %_1_15, [256 x [256 x float]]* %2)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a256a256f32.13.14([256 x [256 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [128 x [256 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [128 x [256 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1) #3 {
entry:
  %1 = icmp eq [256 x [256 x float]]* %0, null
  %2 = icmp eq [128 x [256 x float]]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %4 = urem i64 %for.loop.idx10, 2
  %5 = udiv i64 %for.loop.idx10, 2
  %6 = trunc i64 %4 to i1
  %cond = icmp eq i1 %6, false
  br label %for.loop2

for.loop2:                                        ; preds = %src.addr68.exit, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %src.addr68.exit ]
  %dst.addr57 = getelementptr [256 x [256 x float]], [256 x [256 x float]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %src.addr68_0 = getelementptr [128 x [256 x float]], [128 x [256 x float]]* %_0, i64 0, i64 %5, i64 %for.loop.idx39
  %src.addr68_1 = getelementptr [128 x [256 x float]], [128 x [256 x float]]* %_1, i64 0, i64 %5, i64 %for.loop.idx39
  br i1 %cond, label %src.addr68.case.0, label %src.addr68.case.1

src.addr68.case.0:                                ; preds = %for.loop2
  %_01 = load float, float* %src.addr68_0, align 4
  br label %src.addr68.exit

src.addr68.case.1:                                ; preds = %for.loop2
  call void @llvm.assume(i1 %6)
  %_12 = load float, float* %src.addr68_1, align 4
  br label %src.addr68.exit

src.addr68.exit:                                  ; preds = %src.addr68.case.1, %src.addr68.case.0
  %7 = phi float [ %_01, %src.addr68.case.0 ], [ %_12, %src.addr68.case.1 ]
  store float %7, float* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 256
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %src.addr68.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 256
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a256a256f32.15.16([256 x [256 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.2" %_2, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.3" %_3, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.4" %_4, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.5" %_5, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.6" %_6, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.7" %_7, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.8" %_8, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.9" %_9, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.10" %_10, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.11" %_11, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.12" %_12, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.13" %_13, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.14" %_14, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.15" %_15) #3 {
entry:
  %1 = icmp eq [256 x [256 x float]]* %0, null
  %2 = icmp eq [256 x [16 x float]]* %_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  br label %for.loop2

for.loop2:                                        ; preds = %src.addr68.exit, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %src.addr68.exit ]
  %dst.addr57 = getelementptr [256 x [256 x float]], [256 x [256 x float]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %4 = urem i64 %for.loop.idx39, 16
  %5 = udiv i64 %for.loop.idx39, 16
  %src.addr68_0 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_0, i64 0, i64 %for.loop.idx10, i64 %5
  %src.addr68_1 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_1, i64 0, i64 %for.loop.idx10, i64 %5
  %src.addr68_2 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_2, i64 0, i64 %for.loop.idx10, i64 %5
  %src.addr68_3 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_3, i64 0, i64 %for.loop.idx10, i64 %5
  %src.addr68_4 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_4, i64 0, i64 %for.loop.idx10, i64 %5
  %src.addr68_5 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_5, i64 0, i64 %for.loop.idx10, i64 %5
  %src.addr68_6 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_6, i64 0, i64 %for.loop.idx10, i64 %5
  %src.addr68_7 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_7, i64 0, i64 %for.loop.idx10, i64 %5
  %src.addr68_8 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_8, i64 0, i64 %for.loop.idx10, i64 %5
  %src.addr68_9 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_9, i64 0, i64 %for.loop.idx10, i64 %5
  %src.addr68_10 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_10, i64 0, i64 %for.loop.idx10, i64 %5
  %src.addr68_11 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_11, i64 0, i64 %for.loop.idx10, i64 %5
  %src.addr68_12 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_12, i64 0, i64 %for.loop.idx10, i64 %5
  %src.addr68_13 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_13, i64 0, i64 %for.loop.idx10, i64 %5
  %src.addr68_14 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_14, i64 0, i64 %for.loop.idx10, i64 %5
  %src.addr68_15 = getelementptr [256 x [16 x float]], [256 x [16 x float]]* %_15, i64 0, i64 %for.loop.idx10, i64 %5
  %6 = trunc i64 %4 to i4
  switch i4 %6, label %src.addr68.case.15 [
    i4 0, label %src.addr68.case.0
    i4 1, label %src.addr68.case.1
    i4 2, label %src.addr68.case.2
    i4 3, label %src.addr68.case.3
    i4 4, label %src.addr68.case.4
    i4 5, label %src.addr68.case.5
    i4 6, label %src.addr68.case.6
    i4 7, label %src.addr68.case.7
    i4 -8, label %src.addr68.case.8
    i4 -7, label %src.addr68.case.9
    i4 -6, label %src.addr68.case.10
    i4 -5, label %src.addr68.case.11
    i4 -4, label %src.addr68.case.12
    i4 -3, label %src.addr68.case.13
    i4 -2, label %src.addr68.case.14
  ]

src.addr68.case.0:                                ; preds = %for.loop2
  %_01 = load float, float* %src.addr68_0, align 4
  br label %src.addr68.exit

src.addr68.case.1:                                ; preds = %for.loop2
  %_16 = load float, float* %src.addr68_1, align 4
  br label %src.addr68.exit

src.addr68.case.2:                                ; preds = %for.loop2
  %_27 = load float, float* %src.addr68_2, align 4
  br label %src.addr68.exit

src.addr68.case.3:                                ; preds = %for.loop2
  %_38 = load float, float* %src.addr68_3, align 4
  br label %src.addr68.exit

src.addr68.case.4:                                ; preds = %for.loop2
  %_49 = load float, float* %src.addr68_4, align 4
  br label %src.addr68.exit

src.addr68.case.5:                                ; preds = %for.loop2
  %_510 = load float, float* %src.addr68_5, align 4
  br label %src.addr68.exit

src.addr68.case.6:                                ; preds = %for.loop2
  %_611 = load float, float* %src.addr68_6, align 4
  br label %src.addr68.exit

src.addr68.case.7:                                ; preds = %for.loop2
  %_712 = load float, float* %src.addr68_7, align 4
  br label %src.addr68.exit

src.addr68.case.8:                                ; preds = %for.loop2
  %_813 = load float, float* %src.addr68_8, align 4
  br label %src.addr68.exit

src.addr68.case.9:                                ; preds = %for.loop2
  %_914 = load float, float* %src.addr68_9, align 4
  br label %src.addr68.exit

src.addr68.case.10:                               ; preds = %for.loop2
  %_1015 = load float, float* %src.addr68_10, align 4
  br label %src.addr68.exit

src.addr68.case.11:                               ; preds = %for.loop2
  %_1116 = load float, float* %src.addr68_11, align 4
  br label %src.addr68.exit

src.addr68.case.12:                               ; preds = %for.loop2
  %_1217 = load float, float* %src.addr68_12, align 4
  br label %src.addr68.exit

src.addr68.case.13:                               ; preds = %for.loop2
  %_1318 = load float, float* %src.addr68_13, align 4
  br label %src.addr68.exit

src.addr68.case.14:                               ; preds = %for.loop2
  %_1419 = load float, float* %src.addr68_14, align 4
  br label %src.addr68.exit

src.addr68.case.15:                               ; preds = %for.loop2
  %_1520 = load float, float* %src.addr68_15, align 4
  br label %src.addr68.exit

src.addr68.exit:                                  ; preds = %src.addr68.case.15, %src.addr68.case.14, %src.addr68.case.13, %src.addr68.case.12, %src.addr68.case.11, %src.addr68.case.10, %src.addr68.case.9, %src.addr68.case.8, %src.addr68.case.7, %src.addr68.case.6, %src.addr68.case.5, %src.addr68.case.4, %src.addr68.case.3, %src.addr68.case.2, %src.addr68.case.1, %src.addr68.case.0
  %7 = phi float [ %_01, %src.addr68.case.0 ], [ %_16, %src.addr68.case.1 ], [ %_27, %src.addr68.case.2 ], [ %_38, %src.addr68.case.3 ], [ %_49, %src.addr68.case.4 ], [ %_510, %src.addr68.case.5 ], [ %_611, %src.addr68.case.6 ], [ %_712, %src.addr68.case.7 ], [ %_813, %src.addr68.case.8 ], [ %_914, %src.addr68.case.9 ], [ %_1015, %src.addr68.case.10 ], [ %_1116, %src.addr68.case.11 ], [ %_1217, %src.addr68.case.12 ], [ %_1318, %src.addr68.case.13 ], [ %_1419, %src.addr68.case.14 ], [ %_1520, %src.addr68.case.15 ]
  store float %7, float* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 256
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %src.addr68.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 256
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @onebyonecpy_hls.p0a256a256f32.17.18([256 x [256 x float]]* noalias "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="0", [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.0" %_0_0, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.1" %_0_1, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.2" %_0_2, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.3" %_0_3, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.4" %_0_4, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.5" %_0_5, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.6" %_0_6, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.7" %_0_7, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.8" %_0_8, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.9" %_0_9, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.10" %_0_10, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.11" %_0_11, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.12" %_0_12, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.13" %_0_13, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.14" %_0_14, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0.15" %_0_15, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.0" %_1_0, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.1" %_1_1, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.2" %_1_2, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.3" %_1_3, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.4" %_1_4, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.5" %_1_5, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.6" %_1_6, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.7" %_1_7, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.8" %_1_8, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.9" %_1_9, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.10" %_1_10, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.11" %_1_11, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.12" %_1_12, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.13" %_1_13, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.14" %_1_14, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1.15" %_1_15) #3 {
entry:
  %1 = icmp eq [256 x [256 x float]]* %0, null
  %2 = icmp eq [128 x [16 x float]]* %_0_0, null
  %3 = or i1 %1, %2
  br i1 %3, label %ret, label %copy

copy:                                             ; preds = %entry
  br label %for.loop

for.loop:                                         ; preds = %for.loop.split, %copy
  %for.loop.idx10 = phi i64 [ 0, %copy ], [ %for.loop.idx.next, %for.loop.split ]
  %4 = urem i64 %for.loop.idx10, 2
  %5 = udiv i64 %for.loop.idx10, 2
  %6 = trunc i64 %4 to i1
  %cond = icmp eq i1 %6, false
  br label %for.loop2

for.loop2:                                        ; preds = %src.addr68.exit, %for.loop
  %for.loop.idx39 = phi i64 [ 0, %for.loop ], [ %for.loop.idx3.next, %src.addr68.exit ]
  %dst.addr57 = getelementptr [256 x [256 x float]], [256 x [256 x float]]* %0, i64 0, i64 %for.loop.idx10, i64 %for.loop.idx39
  %7 = urem i64 %for.loop.idx39, 16
  %8 = udiv i64 %for.loop.idx39, 16
  %src.addr68_0_0 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_0, i64 0, i64 %5, i64 %8
  %src.addr68_0_1 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_1, i64 0, i64 %5, i64 %8
  %src.addr68_0_2 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_2, i64 0, i64 %5, i64 %8
  %src.addr68_0_3 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_3, i64 0, i64 %5, i64 %8
  %src.addr68_0_4 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_4, i64 0, i64 %5, i64 %8
  %src.addr68_0_5 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_5, i64 0, i64 %5, i64 %8
  %src.addr68_0_6 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_6, i64 0, i64 %5, i64 %8
  %src.addr68_0_7 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_7, i64 0, i64 %5, i64 %8
  %src.addr68_0_8 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_8, i64 0, i64 %5, i64 %8
  %src.addr68_0_9 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_9, i64 0, i64 %5, i64 %8
  %src.addr68_0_10 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_10, i64 0, i64 %5, i64 %8
  %src.addr68_0_11 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_11, i64 0, i64 %5, i64 %8
  %src.addr68_0_12 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_12, i64 0, i64 %5, i64 %8
  %src.addr68_0_13 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_13, i64 0, i64 %5, i64 %8
  %src.addr68_0_14 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_14, i64 0, i64 %5, i64 %8
  %src.addr68_0_15 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_0_15, i64 0, i64 %5, i64 %8
  %src.addr68_1_0 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_0, i64 0, i64 %5, i64 %8
  %src.addr68_1_1 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_1, i64 0, i64 %5, i64 %8
  %src.addr68_1_2 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_2, i64 0, i64 %5, i64 %8
  %src.addr68_1_3 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_3, i64 0, i64 %5, i64 %8
  %src.addr68_1_4 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_4, i64 0, i64 %5, i64 %8
  %src.addr68_1_5 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_5, i64 0, i64 %5, i64 %8
  %src.addr68_1_6 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_6, i64 0, i64 %5, i64 %8
  %src.addr68_1_7 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_7, i64 0, i64 %5, i64 %8
  %src.addr68_1_8 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_8, i64 0, i64 %5, i64 %8
  %src.addr68_1_9 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_9, i64 0, i64 %5, i64 %8
  %src.addr68_1_10 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_10, i64 0, i64 %5, i64 %8
  %src.addr68_1_11 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_11, i64 0, i64 %5, i64 %8
  %src.addr68_1_12 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_12, i64 0, i64 %5, i64 %8
  %src.addr68_1_13 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_13, i64 0, i64 %5, i64 %8
  %src.addr68_1_14 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_14, i64 0, i64 %5, i64 %8
  %src.addr68_1_15 = getelementptr [128 x [16 x float]], [128 x [16 x float]]* %_1_15, i64 0, i64 %5, i64 %8
  %9 = trunc i64 %7 to i4
  br i1 %cond, label %src.addr68.case.0, label %src.addr68.case.1

src.addr68.case.0:                                ; preds = %for.loop2
  switch i4 %9, label %src.addr68.case.15 [
    i4 0, label %src.addr68.case.03
    i4 1, label %src.addr68.case.14
    i4 2, label %src.addr68.case.2
    i4 3, label %src.addr68.case.3
    i4 4, label %src.addr68.case.4
    i4 5, label %src.addr68.case.5
    i4 6, label %src.addr68.case.6
    i4 7, label %src.addr68.case.7
    i4 -8, label %src.addr68.case.8
    i4 -7, label %src.addr68.case.9
    i4 -6, label %src.addr68.case.10
    i4 -5, label %src.addr68.case.11
    i4 -4, label %src.addr68.case.12
    i4 -3, label %src.addr68.case.13
    i4 -2, label %src.addr68.case.145
  ]

src.addr68.case.03:                               ; preds = %src.addr68.case.0
  %_0_06 = load float, float* %src.addr68_0_0, align 4
  br label %src.addr68.exit

src.addr68.case.14:                               ; preds = %src.addr68.case.0
  %_0_17 = load float, float* %src.addr68_0_1, align 4
  br label %src.addr68.exit

src.addr68.case.2:                                ; preds = %src.addr68.case.0
  %_0_28 = load float, float* %src.addr68_0_2, align 4
  br label %src.addr68.exit

src.addr68.case.3:                                ; preds = %src.addr68.case.0
  %_0_39 = load float, float* %src.addr68_0_3, align 4
  br label %src.addr68.exit

src.addr68.case.4:                                ; preds = %src.addr68.case.0
  %_0_410 = load float, float* %src.addr68_0_4, align 4
  br label %src.addr68.exit

src.addr68.case.5:                                ; preds = %src.addr68.case.0
  %_0_511 = load float, float* %src.addr68_0_5, align 4
  br label %src.addr68.exit

src.addr68.case.6:                                ; preds = %src.addr68.case.0
  %_0_612 = load float, float* %src.addr68_0_6, align 4
  br label %src.addr68.exit

src.addr68.case.7:                                ; preds = %src.addr68.case.0
  %_0_713 = load float, float* %src.addr68_0_7, align 4
  br label %src.addr68.exit

src.addr68.case.8:                                ; preds = %src.addr68.case.0
  %_0_814 = load float, float* %src.addr68_0_8, align 4
  br label %src.addr68.exit

src.addr68.case.9:                                ; preds = %src.addr68.case.0
  %_0_915 = load float, float* %src.addr68_0_9, align 4
  br label %src.addr68.exit

src.addr68.case.10:                               ; preds = %src.addr68.case.0
  %_0_1016 = load float, float* %src.addr68_0_10, align 4
  br label %src.addr68.exit

src.addr68.case.11:                               ; preds = %src.addr68.case.0
  %_0_1117 = load float, float* %src.addr68_0_11, align 4
  br label %src.addr68.exit

src.addr68.case.12:                               ; preds = %src.addr68.case.0
  %_0_1218 = load float, float* %src.addr68_0_12, align 4
  br label %src.addr68.exit

src.addr68.case.13:                               ; preds = %src.addr68.case.0
  %_0_1319 = load float, float* %src.addr68_0_13, align 4
  br label %src.addr68.exit

src.addr68.case.145:                              ; preds = %src.addr68.case.0
  %_0_1420 = load float, float* %src.addr68_0_14, align 4
  br label %src.addr68.exit

src.addr68.case.15:                               ; preds = %src.addr68.case.0
  %_0_1521 = load float, float* %src.addr68_0_15, align 4
  br label %src.addr68.exit

src.addr68.case.1:                                ; preds = %for.loop2
  call void @llvm.assume(i1 %6)
  switch i4 %9, label %src.addr68.case.1539 [
    i4 0, label %src.addr68.case.024
    i4 1, label %src.addr68.case.125
    i4 2, label %src.addr68.case.226
    i4 3, label %src.addr68.case.327
    i4 4, label %src.addr68.case.428
    i4 5, label %src.addr68.case.529
    i4 6, label %src.addr68.case.630
    i4 7, label %src.addr68.case.731
    i4 -8, label %src.addr68.case.832
    i4 -7, label %src.addr68.case.933
    i4 -6, label %src.addr68.case.1034
    i4 -5, label %src.addr68.case.1135
    i4 -4, label %src.addr68.case.1236
    i4 -3, label %src.addr68.case.1337
    i4 -2, label %src.addr68.case.1438
  ]

src.addr68.case.024:                              ; preds = %src.addr68.case.1
  %_1_040 = load float, float* %src.addr68_1_0, align 4
  br label %src.addr68.exit

src.addr68.case.125:                              ; preds = %src.addr68.case.1
  %_1_141 = load float, float* %src.addr68_1_1, align 4
  br label %src.addr68.exit

src.addr68.case.226:                              ; preds = %src.addr68.case.1
  %_1_242 = load float, float* %src.addr68_1_2, align 4
  br label %src.addr68.exit

src.addr68.case.327:                              ; preds = %src.addr68.case.1
  %_1_343 = load float, float* %src.addr68_1_3, align 4
  br label %src.addr68.exit

src.addr68.case.428:                              ; preds = %src.addr68.case.1
  %_1_444 = load float, float* %src.addr68_1_4, align 4
  br label %src.addr68.exit

src.addr68.case.529:                              ; preds = %src.addr68.case.1
  %_1_545 = load float, float* %src.addr68_1_5, align 4
  br label %src.addr68.exit

src.addr68.case.630:                              ; preds = %src.addr68.case.1
  %_1_646 = load float, float* %src.addr68_1_6, align 4
  br label %src.addr68.exit

src.addr68.case.731:                              ; preds = %src.addr68.case.1
  %_1_747 = load float, float* %src.addr68_1_7, align 4
  br label %src.addr68.exit

src.addr68.case.832:                              ; preds = %src.addr68.case.1
  %_1_848 = load float, float* %src.addr68_1_8, align 4
  br label %src.addr68.exit

src.addr68.case.933:                              ; preds = %src.addr68.case.1
  %_1_949 = load float, float* %src.addr68_1_9, align 4
  br label %src.addr68.exit

src.addr68.case.1034:                             ; preds = %src.addr68.case.1
  %_1_1050 = load float, float* %src.addr68_1_10, align 4
  br label %src.addr68.exit

src.addr68.case.1135:                             ; preds = %src.addr68.case.1
  %_1_1151 = load float, float* %src.addr68_1_11, align 4
  br label %src.addr68.exit

src.addr68.case.1236:                             ; preds = %src.addr68.case.1
  %_1_1252 = load float, float* %src.addr68_1_12, align 4
  br label %src.addr68.exit

src.addr68.case.1337:                             ; preds = %src.addr68.case.1
  %_1_1353 = load float, float* %src.addr68_1_13, align 4
  br label %src.addr68.exit

src.addr68.case.1438:                             ; preds = %src.addr68.case.1
  %_1_1454 = load float, float* %src.addr68_1_14, align 4
  br label %src.addr68.exit

src.addr68.case.1539:                             ; preds = %src.addr68.case.1
  %_1_1555 = load float, float* %src.addr68_1_15, align 4
  br label %src.addr68.exit

src.addr68.exit:                                  ; preds = %src.addr68.case.1539, %src.addr68.case.1438, %src.addr68.case.1337, %src.addr68.case.1236, %src.addr68.case.1135, %src.addr68.case.1034, %src.addr68.case.933, %src.addr68.case.832, %src.addr68.case.731, %src.addr68.case.630, %src.addr68.case.529, %src.addr68.case.428, %src.addr68.case.327, %src.addr68.case.226, %src.addr68.case.125, %src.addr68.case.024, %src.addr68.case.15, %src.addr68.case.145, %src.addr68.case.13, %src.addr68.case.12, %src.addr68.case.11, %src.addr68.case.10, %src.addr68.case.9, %src.addr68.case.8, %src.addr68.case.7, %src.addr68.case.6, %src.addr68.case.5, %src.addr68.case.4, %src.addr68.case.3, %src.addr68.case.2, %src.addr68.case.14, %src.addr68.case.03
  %10 = phi float [ %_1_040, %src.addr68.case.024 ], [ %_1_141, %src.addr68.case.125 ], [ %_1_242, %src.addr68.case.226 ], [ %_1_343, %src.addr68.case.327 ], [ %_1_444, %src.addr68.case.428 ], [ %_1_545, %src.addr68.case.529 ], [ %_1_646, %src.addr68.case.630 ], [ %_1_747, %src.addr68.case.731 ], [ %_1_848, %src.addr68.case.832 ], [ %_1_949, %src.addr68.case.933 ], [ %_1_1050, %src.addr68.case.1034 ], [ %_1_1151, %src.addr68.case.1135 ], [ %_1_1252, %src.addr68.case.1236 ], [ %_1_1353, %src.addr68.case.1337 ], [ %_1_1454, %src.addr68.case.1438 ], [ %_1_1555, %src.addr68.case.1539 ], [ %_0_06, %src.addr68.case.03 ], [ %_0_17, %src.addr68.case.14 ], [ %_0_28, %src.addr68.case.2 ], [ %_0_39, %src.addr68.case.3 ], [ %_0_410, %src.addr68.case.4 ], [ %_0_511, %src.addr68.case.5 ], [ %_0_612, %src.addr68.case.6 ], [ %_0_713, %src.addr68.case.7 ], [ %_0_814, %src.addr68.case.8 ], [ %_0_915, %src.addr68.case.9 ], [ %_0_1016, %src.addr68.case.10 ], [ %_0_1117, %src.addr68.case.11 ], [ %_0_1218, %src.addr68.case.12 ], [ %_0_1319, %src.addr68.case.13 ], [ %_0_1420, %src.addr68.case.145 ], [ %_0_1521, %src.addr68.case.15 ]
  store float %10, float* %dst.addr57, align 4
  %for.loop.idx3.next = add nuw nsw i64 %for.loop.idx39, 1
  %exitcond = icmp ne i64 %for.loop.idx3.next, 256
  br i1 %exitcond, label %for.loop2, label %for.loop.split

for.loop.split:                                   ; preds = %src.addr68.exit
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx10, 1
  %exitcond11 = icmp ne i64 %for.loop.idx.next, 256
  br i1 %exitcond11, label %for.loop, label %ret

ret:                                              ; preds = %for.loop.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_out([256 x [256 x float]]* noalias "orig.arg.no"="0", [128 x [256 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [128 x [256 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, [256 x [256 x float]]* noalias "orig.arg.no"="2", [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0" %_01, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1" %_12, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2" %_2, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3" %_3, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4" %_4, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5" %_5, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6" %_6, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7" %_7, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.8" %_8, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.9" %_9, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.10" %_10, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.11" %_11, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.12" %_123, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.13" %_13, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.14" %_14, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.15" %_15, [256 x [256 x float]]* noalias "orig.arg.no"="4", [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.0" %_0_0, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.1" %_0_1, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.2" %_0_2, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.3" %_0_3, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.4" %_0_4, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.5" %_0_5, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.6" %_0_6, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.7" %_0_7, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.8" %_0_8, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.9" %_0_9, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.10" %_0_10, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.11" %_0_11, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.12" %_0_12, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.13" %_0_13, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.14" %_0_14, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.15" %_0_15, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.0" %_1_0, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.1" %_1_1, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.2" %_1_2, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.3" %_1_3, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.4" %_1_4, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.5" %_1_5, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.6" %_1_6, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.7" %_1_7, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.8" %_1_8, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.9" %_1_9, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.10" %_1_10, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.11" %_1_11, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.12" %_1_12, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.13" %_1_13, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.14" %_1_14, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.15" %_1_15) #5 {
entry:
  call void @onebyonecpy_hls.p0a256a256f32.13.14([256 x [256 x float]]* %0, [128 x [256 x float]]* %_0, [128 x [256 x float]]* %_1)
  call void @onebyonecpy_hls.p0a256a256f32.15.16([256 x [256 x float]]* %1, [256 x [16 x float]]* %_01, [256 x [16 x float]]* %_12, [256 x [16 x float]]* %_2, [256 x [16 x float]]* %_3, [256 x [16 x float]]* %_4, [256 x [16 x float]]* %_5, [256 x [16 x float]]* %_6, [256 x [16 x float]]* %_7, [256 x [16 x float]]* %_8, [256 x [16 x float]]* %_9, [256 x [16 x float]]* %_10, [256 x [16 x float]]* %_11, [256 x [16 x float]]* %_123, [256 x [16 x float]]* %_13, [256 x [16 x float]]* %_14, [256 x [16 x float]]* %_15)
  call void @onebyonecpy_hls.p0a256a256f32.17.18([256 x [256 x float]]* %2, [128 x [16 x float]]* %_0_0, [128 x [16 x float]]* %_0_1, [128 x [16 x float]]* %_0_2, [128 x [16 x float]]* %_0_3, [128 x [16 x float]]* %_0_4, [128 x [16 x float]]* %_0_5, [128 x [16 x float]]* %_0_6, [128 x [16 x float]]* %_0_7, [128 x [16 x float]]* %_0_8, [128 x [16 x float]]* %_0_9, [128 x [16 x float]]* %_0_10, [128 x [16 x float]]* %_0_11, [128 x [16 x float]]* %_0_12, [128 x [16 x float]]* %_0_13, [128 x [16 x float]]* %_0_14, [128 x [16 x float]]* %_0_15, [128 x [16 x float]]* %_1_0, [128 x [16 x float]]* %_1_1, [128 x [16 x float]]* %_1_2, [128 x [16 x float]]* %_1_3, [128 x [16 x float]]* %_1_4, [128 x [16 x float]]* %_1_5, [128 x [16 x float]]* %_1_6, [128 x [16 x float]]* %_1_7, [128 x [16 x float]]* %_1_8, [128 x [16 x float]]* %_1_9, [128 x [16 x float]]* %_1_10, [128 x [16 x float]]* %_1_11, [128 x [16 x float]]* %_1_12, [128 x [16 x float]]* %_1_13, [128 x [16 x float]]* %_1_14, [128 x [16 x float]]* %_1_15)
  ret void
}

declare void @apatb_test_gemm_256_hw(float, float, [128 x [256 x float]]*, [128 x [256 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*)

; Function Attrs: argmemonly noinline norecurse
define internal void @copy_back([256 x [256 x float]]* noalias "orig.arg.no"="0", [128 x [256 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.0" %_0, [128 x [256 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="1" "unpacked"="1.1" %_1, [256 x [256 x float]]* noalias "orig.arg.no"="2", [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.0" %_01, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.1" %_12, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.2" %_2, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.3" %_3, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.4" %_4, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.5" %_5, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.6" %_6, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.7" %_7, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.8" %_8, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.9" %_9, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.10" %_10, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.11" %_11, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.12" %_123, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.13" %_13, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.14" %_14, [256 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="3" "unpacked"="3.15" %_15, [256 x [256 x float]]* noalias "orig.arg.no"="4", [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.0" %_0_0, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.1" %_0_1, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.2" %_0_2, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.3" %_0_3, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.4" %_0_4, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.5" %_0_5, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.6" %_0_6, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.7" %_0_7, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.8" %_0_8, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.9" %_0_9, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.10" %_0_10, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.11" %_0_11, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.12" %_0_12, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.13" %_0_13, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.14" %_0_14, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.0.15" %_0_15, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.0" %_1_0, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.1" %_1_1, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.2" %_1_2, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.3" %_1_3, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.4" %_1_4, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.5" %_1_5, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.6" %_1_6, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.7" %_1_7, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.8" %_1_8, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.9" %_1_9, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.10" %_1_10, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.11" %_1_11, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.12" %_1_12, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.13" %_1_13, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.14" %_1_14, [128 x [16 x float]]* noalias readonly "fpga.caller.interfaces"="layout_transformed" "orig.arg.no"="5" "unpacked"="5.1.15" %_1_15) #5 {
entry:
  call void @onebyonecpy_hls.p0a256a256f32.17.18([256 x [256 x float]]* %2, [128 x [16 x float]]* %_0_0, [128 x [16 x float]]* %_0_1, [128 x [16 x float]]* %_0_2, [128 x [16 x float]]* %_0_3, [128 x [16 x float]]* %_0_4, [128 x [16 x float]]* %_0_5, [128 x [16 x float]]* %_0_6, [128 x [16 x float]]* %_0_7, [128 x [16 x float]]* %_0_8, [128 x [16 x float]]* %_0_9, [128 x [16 x float]]* %_0_10, [128 x [16 x float]]* %_0_11, [128 x [16 x float]]* %_0_12, [128 x [16 x float]]* %_0_13, [128 x [16 x float]]* %_0_14, [128 x [16 x float]]* %_0_15, [128 x [16 x float]]* %_1_0, [128 x [16 x float]]* %_1_1, [128 x [16 x float]]* %_1_2, [128 x [16 x float]]* %_1_3, [128 x [16 x float]]* %_1_4, [128 x [16 x float]]* %_1_5, [128 x [16 x float]]* %_1_6, [128 x [16 x float]]* %_1_7, [128 x [16 x float]]* %_1_8, [128 x [16 x float]]* %_1_9, [128 x [16 x float]]* %_1_10, [128 x [16 x float]]* %_1_11, [128 x [16 x float]]* %_1_12, [128 x [16 x float]]* %_1_13, [128 x [16 x float]]* %_1_14, [128 x [16 x float]]* %_1_15)
  ret void
}

define void @test_gemm_256_hw_stub_wrapper(float, float, [128 x [256 x float]]*, [128 x [256 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [256 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*, [128 x [16 x float]]*) #6 {
entry:
  %malloccall = tail call i8* @malloc(i64 262144)
  %52 = bitcast i8* %malloccall to [256 x [256 x float]]*
  %malloccall1 = tail call i8* @malloc(i64 262144)
  %53 = bitcast i8* %malloccall1 to [256 x [256 x float]]*
  %malloccall2 = tail call i8* @malloc(i64 262144)
  %54 = bitcast i8* %malloccall2 to [256 x [256 x float]]*
  call void @copy_out([256 x [256 x float]]* %52, [128 x [256 x float]]* %2, [128 x [256 x float]]* %3, [256 x [256 x float]]* %53, [256 x [16 x float]]* %4, [256 x [16 x float]]* %5, [256 x [16 x float]]* %6, [256 x [16 x float]]* %7, [256 x [16 x float]]* %8, [256 x [16 x float]]* %9, [256 x [16 x float]]* %10, [256 x [16 x float]]* %11, [256 x [16 x float]]* %12, [256 x [16 x float]]* %13, [256 x [16 x float]]* %14, [256 x [16 x float]]* %15, [256 x [16 x float]]* %16, [256 x [16 x float]]* %17, [256 x [16 x float]]* %18, [256 x [16 x float]]* %19, [256 x [256 x float]]* %54, [128 x [16 x float]]* %20, [128 x [16 x float]]* %21, [128 x [16 x float]]* %22, [128 x [16 x float]]* %23, [128 x [16 x float]]* %24, [128 x [16 x float]]* %25, [128 x [16 x float]]* %26, [128 x [16 x float]]* %27, [128 x [16 x float]]* %28, [128 x [16 x float]]* %29, [128 x [16 x float]]* %30, [128 x [16 x float]]* %31, [128 x [16 x float]]* %32, [128 x [16 x float]]* %33, [128 x [16 x float]]* %34, [128 x [16 x float]]* %35, [128 x [16 x float]]* %36, [128 x [16 x float]]* %37, [128 x [16 x float]]* %38, [128 x [16 x float]]* %39, [128 x [16 x float]]* %40, [128 x [16 x float]]* %41, [128 x [16 x float]]* %42, [128 x [16 x float]]* %43, [128 x [16 x float]]* %44, [128 x [16 x float]]* %45, [128 x [16 x float]]* %46, [128 x [16 x float]]* %47, [128 x [16 x float]]* %48, [128 x [16 x float]]* %49, [128 x [16 x float]]* %50, [128 x [16 x float]]* %51)
  %55 = bitcast [256 x [256 x float]]* %52 to [256 x float]*
  %56 = bitcast [256 x [256 x float]]* %53 to [256 x float]*
  %57 = bitcast [256 x [256 x float]]* %54 to [256 x float]*
  call void @test_gemm_256_hw_stub(float %0, float %1, [256 x float]* %55, [256 x float]* %56, [256 x float]* %57)
  call void @copy_in([256 x [256 x float]]* %52, [128 x [256 x float]]* %2, [128 x [256 x float]]* %3, [256 x [256 x float]]* %53, [256 x [16 x float]]* %4, [256 x [16 x float]]* %5, [256 x [16 x float]]* %6, [256 x [16 x float]]* %7, [256 x [16 x float]]* %8, [256 x [16 x float]]* %9, [256 x [16 x float]]* %10, [256 x [16 x float]]* %11, [256 x [16 x float]]* %12, [256 x [16 x float]]* %13, [256 x [16 x float]]* %14, [256 x [16 x float]]* %15, [256 x [16 x float]]* %16, [256 x [16 x float]]* %17, [256 x [16 x float]]* %18, [256 x [16 x float]]* %19, [256 x [256 x float]]* %54, [128 x [16 x float]]* %20, [128 x [16 x float]]* %21, [128 x [16 x float]]* %22, [128 x [16 x float]]* %23, [128 x [16 x float]]* %24, [128 x [16 x float]]* %25, [128 x [16 x float]]* %26, [128 x [16 x float]]* %27, [128 x [16 x float]]* %28, [128 x [16 x float]]* %29, [128 x [16 x float]]* %30, [128 x [16 x float]]* %31, [128 x [16 x float]]* %32, [128 x [16 x float]]* %33, [128 x [16 x float]]* %34, [128 x [16 x float]]* %35, [128 x [16 x float]]* %36, [128 x [16 x float]]* %37, [128 x [16 x float]]* %38, [128 x [16 x float]]* %39, [128 x [16 x float]]* %40, [128 x [16 x float]]* %41, [128 x [16 x float]]* %42, [128 x [16 x float]]* %43, [128 x [16 x float]]* %44, [128 x [16 x float]]* %45, [128 x [16 x float]]* %46, [128 x [16 x float]]* %47, [128 x [16 x float]]* %48, [128 x [16 x float]]* %49, [128 x [16 x float]]* %50, [128 x [16 x float]]* %51)
  ret void
}

declare void @test_gemm_256_hw_stub(float, float, [256 x float]*, [256 x float]*, [256 x float]*)

attributes #0 = { inaccessiblememonly nounwind }
attributes #1 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #5 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #6 = { "fpga.wrapper.func"="stub" }
attributes #7 = { inaccessiblememonly nounwind "xlx.source"="user" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}
!datalayout.transforms.on.top = !{!5, !13, !35}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
!5 = !{!6, !8, !10}
!6 = !{!7}
!7 = !{!"2", [256 x [256 x float]]* null}
!8 = !{!9}
!9 = !{!"array_partition", !"type=Cyclic", !"dim=1", !"factor=2"}
!10 = !{!11, !12}
!11 = !{!"2.0", [128 x [256 x float]]* null}
!12 = !{!"2.1", [128 x [256 x float]]* null}
!13 = !{!14, !16, !18}
!14 = !{!15}
!15 = !{!"3", [256 x [256 x float]]* null}
!16 = !{!17}
!17 = !{!"array_partition", !"type=Cyclic", !"dim=2", !"factor=16"}
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34}
!19 = !{!"3.0", [256 x [16 x float]]* null}
!20 = !{!"3.1", [256 x [16 x float]]* null}
!21 = !{!"3.2", [256 x [16 x float]]* null}
!22 = !{!"3.3", [256 x [16 x float]]* null}
!23 = !{!"3.4", [256 x [16 x float]]* null}
!24 = !{!"3.5", [256 x [16 x float]]* null}
!25 = !{!"3.6", [256 x [16 x float]]* null}
!26 = !{!"3.7", [256 x [16 x float]]* null}
!27 = !{!"3.8", [256 x [16 x float]]* null}
!28 = !{!"3.9", [256 x [16 x float]]* null}
!29 = !{!"3.10", [256 x [16 x float]]* null}
!30 = !{!"3.11", [256 x [16 x float]]* null}
!31 = !{!"3.12", [256 x [16 x float]]* null}
!32 = !{!"3.13", [256 x [16 x float]]* null}
!33 = !{!"3.14", [256 x [16 x float]]* null}
!34 = !{!"3.15", [256 x [16 x float]]* null}
!35 = !{!36, !38, !39}
!36 = !{!37}
!37 = !{!"4", [256 x [256 x float]]* null}
!38 = !{!9, !17}
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71}
!40 = !{!"4.0.0", [128 x [16 x float]]* null}
!41 = !{!"4.0.1", [128 x [16 x float]]* null}
!42 = !{!"4.0.2", [128 x [16 x float]]* null}
!43 = !{!"4.0.3", [128 x [16 x float]]* null}
!44 = !{!"4.0.4", [128 x [16 x float]]* null}
!45 = !{!"4.0.5", [128 x [16 x float]]* null}
!46 = !{!"4.0.6", [128 x [16 x float]]* null}
!47 = !{!"4.0.7", [128 x [16 x float]]* null}
!48 = !{!"4.0.8", [128 x [16 x float]]* null}
!49 = !{!"4.0.9", [128 x [16 x float]]* null}
!50 = !{!"4.0.10", [128 x [16 x float]]* null}
!51 = !{!"4.0.11", [128 x [16 x float]]* null}
!52 = !{!"4.0.12", [128 x [16 x float]]* null}
!53 = !{!"4.0.13", [128 x [16 x float]]* null}
!54 = !{!"4.0.14", [128 x [16 x float]]* null}
!55 = !{!"4.0.15", [128 x [16 x float]]* null}
!56 = !{!"4.1.0", [128 x [16 x float]]* null}
!57 = !{!"4.1.1", [128 x [16 x float]]* null}
!58 = !{!"4.1.2", [128 x [16 x float]]* null}
!59 = !{!"4.1.3", [128 x [16 x float]]* null}
!60 = !{!"4.1.4", [128 x [16 x float]]* null}
!61 = !{!"4.1.5", [128 x [16 x float]]* null}
!62 = !{!"4.1.6", [128 x [16 x float]]* null}
!63 = !{!"4.1.7", [128 x [16 x float]]* null}
!64 = !{!"4.1.8", [128 x [16 x float]]* null}
!65 = !{!"4.1.9", [128 x [16 x float]]* null}
!66 = !{!"4.1.10", [128 x [16 x float]]* null}
!67 = !{!"4.1.11", [128 x [16 x float]]* null}
!68 = !{!"4.1.12", [128 x [16 x float]]* null}
!69 = !{!"4.1.13", [128 x [16 x float]]* null}
!70 = !{!"4.1.14", [128 x [16 x float]]* null}
!71 = !{!"4.1.15", [128 x [16 x float]]* null}
!72 = !DILocation(line: 37, column: 9, scope: !73)
!73 = distinct !DISubprogram(name: "test_gemm_256", linkageName: "_Z13test_gemm_256ffPA256_fS0_S0_", scope: !74, file: !74, line: 23, type: !75, isLocal: false, isDefinition: true, scopeLine: 29, flags: DIFlagPrototyped, isOptimized: false, unit: !82, variables: !4)
!74 = !DIFile(filename: "test_gemm_256.cpp", directory: "/home/yuyes/workdir/pom/samples/gemm")
!75 = !DISubroutineType(types: !76)
!76 = !{null, !77, !77, !78, !78, !78}
!77 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !77, size: 8192, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 256)
!82 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !83, producer: "clang version 7.0.0 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, imports: !84)
!83 = !DIFile(filename: "/home/yuyes/workdir/pom/samples/gemm/test_gemm_256/test_gemm_256/.autopilot/db/test_gemm_256.pp.0.cpp", directory: "/home/yuyes/workdir/pom/samples/gemm")
!84 = !{!85, !90, !97, !101, !108, !112, !117, !119, !127, !131, !135, !149, !153, !157, !161, !165, !170, !174, !178, !182, !186, !194, !198, !202, !204, !208, !212, !217, !223, !227, !231, !233, !241, !245, !253, !255, !259, !263, !267, !271, !276, !280, !285, !286, !287, !288, !290, !291, !292, !293, !294, !295, !296, !400, !404, !410, !412, !414, !418, !420, !422, !424, !426, !428, !430, !432, !437, !441, !443, !445, !450, !452, !454, !456, !458, !460, !462, !465, !467, !469, !473, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !501, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !539, !543, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !569, !573, !577, !579, !581, !583, !587, !591, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !623, !627, !631, !633, !635, !637, !639, !643, !647, !649, !651, !653, !655, !657, !659, !663, !667, !669, !671, !673, !675, !679, !683, !687, !689, !691, !693, !695, !697, !699, !703, !707, !711, !713, !717, !721, !723, !725, !727, !729, !731, !733, !739, !744}
!85 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !86, entity: !87, file: !89, line: 58)
!86 = !DINamespace(name: "__gnu_debug", scope: null)
!87 = !DINamespace(name: "__debug", scope: !88)
!88 = !DINamespace(name: "std", scope: null)
!89 = !DIFile(filename: "/home/yuyes/Xilinx/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/debug/debug.h", directory: "/home/yuyes/workdir/pom/samples/gemm")
!90 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !91, file: !96, line: 52)
!91 = !DISubprogram(name: "abs", scope: !92, file: !92, line: 848, type: !93, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!92 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/yuyes/workdir/pom/samples/gemm")
!93 = !DISubroutineType(types: !94)
!94 = !{!95, !95}
!95 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!96 = !DIFile(filename: "/home/yuyes/Xilinx/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/bits/std_abs.h", directory: "/home/yuyes/workdir/pom/samples/gemm")
!97 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !98, file: !100, line: 127)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !92, line: 63, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !92, line: 59, size: 64, align: 32, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!100 = !DIFile(filename: "/home/yuyes/Xilinx/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/cstdlib", directory: "/home/yuyes/workdir/pom/samples/gemm")
!101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !102, file: !100, line: 128)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !92, line: 71, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !92, line: 67, size: 128, flags: DIFlagTypePassByValue, elements: !104, identifier: "_ZTS6ldiv_t")
!104 = !{!105, !107}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !103, file: !92, line: 69, baseType: !106, size: 64)
!106 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !103, file: !92, line: 70, baseType: !106, size: 64, offset: 64)
!108 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !109, file: !100, line: 130)
!109 = !DISubprogram(name: "abort", scope: !92, file: !92, line: 598, type: !110, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!110 = !DISubroutineType(types: !111)
!111 = !{null}
!112 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !113, file: !100, line: 134)
!113 = !DISubprogram(name: "atexit", scope: !92, file: !92, line: 602, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!114 = !DISubroutineType(types: !115)
!115 = !{!95, !116}
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !118, file: !100, line: 137)
!118 = !DISubprogram(name: "at_quick_exit", scope: !92, file: !92, line: 607, type: !114, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !120, file: !100, line: 140)
!120 = !DISubprogram(name: "atof", scope: !92, file: !92, line: 102, type: !121, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!121 = !DISubroutineType(types: !122)
!122 = !{!123, !124}
!123 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!126 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !128, file: !100, line: 141)
!128 = !DISubprogram(name: "atoi", scope: !92, file: !92, line: 105, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!129 = !DISubroutineType(types: !130)
!130 = !{!95, !124}
!131 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !132, file: !100, line: 142)
!132 = !DISubprogram(name: "atol", scope: !92, file: !92, line: 108, type: !133, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!133 = !DISubroutineType(types: !134)
!134 = !{!106, !124}
!135 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !136, file: !100, line: 143)
!136 = !DISubprogram(name: "bsearch", scope: !92, file: !92, line: 828, type: !137, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!137 = !DISubroutineType(types: !138)
!138 = !{!139, !140, !140, !142, !142, !145}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !143, line: 62, baseType: !144)
!143 = !DIFile(filename: "/home/yuyes/Xilinx/Vitis_HLS/2022.2/lnx64/tools/clang-3.9-csynth/lib/clang/7.0.0/include/stddef.h", directory: "/home/yuyes/workdir/pom/samples/gemm")
!144 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !92, line: 816, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!95, !140, !140}
!149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !150, file: !100, line: 144)
!150 = !DISubprogram(name: "calloc", scope: !92, file: !92, line: 543, type: !151, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!151 = !DISubroutineType(types: !152)
!152 = !{!139, !142, !142}
!153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !154, file: !100, line: 145)
!154 = !DISubprogram(name: "div", scope: !92, file: !92, line: 860, type: !155, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!155 = !DISubroutineType(types: !156)
!156 = !{!98, !95, !95}
!157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !158, file: !100, line: 146)
!158 = !DISubprogram(name: "exit", scope: !92, file: !92, line: 624, type: !159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !95}
!161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !162, file: !100, line: 147)
!162 = !DISubprogram(name: "free", scope: !92, file: !92, line: 555, type: !163, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !139}
!165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !166, file: !100, line: 148)
!166 = !DISubprogram(name: "getenv", scope: !92, file: !92, line: 641, type: !167, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!167 = !DISubroutineType(types: !168)
!168 = !{!169, !124}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!170 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !171, file: !100, line: 149)
!171 = !DISubprogram(name: "labs", scope: !92, file: !92, line: 849, type: !172, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!172 = !DISubroutineType(types: !173)
!173 = !{!106, !106}
!174 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !175, file: !100, line: 150)
!175 = !DISubprogram(name: "ldiv", scope: !92, file: !92, line: 862, type: !176, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!176 = !DISubroutineType(types: !177)
!177 = !{!102, !106, !106}
!178 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !179, file: !100, line: 151)
!179 = !DISubprogram(name: "malloc", scope: !92, file: !92, line: 540, type: !180, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!180 = !DISubroutineType(types: !181)
!181 = !{!139, !142}
!182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !183, file: !100, line: 153)
!183 = !DISubprogram(name: "mblen", scope: !92, file: !92, line: 930, type: !184, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!184 = !DISubroutineType(types: !185)
!185 = !{!95, !124, !142}
!186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !187, file: !100, line: 154)
!187 = !DISubprogram(name: "mbstowcs", scope: !92, file: !92, line: 941, type: !188, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!188 = !DISubroutineType(types: !189)
!189 = !{!142, !190, !193, !142}
!190 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!193 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !124)
!194 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !195, file: !100, line: 155)
!195 = !DISubprogram(name: "mbtowc", scope: !92, file: !92, line: 933, type: !196, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!196 = !DISubroutineType(types: !197)
!197 = !{!95, !190, !193, !142}
!198 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !199, file: !100, line: 157)
!199 = !DISubprogram(name: "qsort", scope: !92, file: !92, line: 838, type: !200, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!200 = !DISubroutineType(types: !201)
!201 = !{null, !139, !142, !142, !145}
!202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !203, file: !100, line: 160)
!203 = !DISubprogram(name: "quick_exit", scope: !92, file: !92, line: 630, type: !159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!204 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !205, file: !100, line: 163)
!205 = !DISubprogram(name: "rand", scope: !92, file: !92, line: 454, type: !206, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!206 = !DISubroutineType(types: !207)
!207 = !{!95}
!208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !209, file: !100, line: 164)
!209 = !DISubprogram(name: "realloc", scope: !92, file: !92, line: 551, type: !210, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!210 = !DISubroutineType(types: !211)
!211 = !{!139, !139, !142}
!212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !213, file: !100, line: 165)
!213 = !DISubprogram(name: "srand", scope: !92, file: !92, line: 456, type: !214, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!214 = !DISubroutineType(types: !215)
!215 = !{null, !216}
!216 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!217 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !218, file: !100, line: 166)
!218 = !DISubprogram(name: "strtod", scope: !92, file: !92, line: 118, type: !219, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!219 = !DISubroutineType(types: !220)
!220 = !{!123, !193, !221}
!221 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!223 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !224, file: !100, line: 167)
!224 = !DISubprogram(name: "strtol", scope: !92, file: !92, line: 177, type: !225, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!225 = !DISubroutineType(types: !226)
!226 = !{!106, !193, !221, !95}
!227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !228, file: !100, line: 168)
!228 = !DISubprogram(name: "strtoul", scope: !92, file: !92, line: 181, type: !229, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!229 = !DISubroutineType(types: !230)
!230 = !{!144, !193, !221, !95}
!231 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !232, file: !100, line: 169)
!232 = !DISubprogram(name: "system", scope: !92, file: !92, line: 791, type: !129, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !234, file: !100, line: 171)
!234 = !DISubprogram(name: "wcstombs", scope: !92, file: !92, line: 945, type: !235, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!235 = !DISubroutineType(types: !236)
!236 = !{!142, !237, !238, !142}
!237 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !169)
!238 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!241 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !242, file: !100, line: 172)
!242 = !DISubprogram(name: "wctomb", scope: !92, file: !92, line: 937, type: !243, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!243 = !DISubroutineType(types: !244)
!244 = !{!95, !169, !192}
!245 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !246, entity: !247, file: !100, line: 200)
!246 = !DINamespace(name: "__gnu_cxx", scope: null)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !92, line: 81, baseType: !248)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !92, line: 77, size: 128, flags: DIFlagTypePassByValue, elements: !249, identifier: "_ZTS7lldiv_t")
!249 = !{!250, !252}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !248, file: !92, line: 79, baseType: !251, size: 64)
!251 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !248, file: !92, line: 80, baseType: !251, size: 64, offset: 64)
!253 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !246, entity: !254, file: !100, line: 206)
!254 = !DISubprogram(name: "_Exit", scope: !92, file: !92, line: 636, type: !159, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!255 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !246, entity: !256, file: !100, line: 210)
!256 = !DISubprogram(name: "llabs", scope: !92, file: !92, line: 852, type: !257, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!257 = !DISubroutineType(types: !258)
!258 = !{!251, !251}
!259 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !246, entity: !260, file: !100, line: 216)
!260 = !DISubprogram(name: "lldiv", scope: !92, file: !92, line: 866, type: !261, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!261 = !DISubroutineType(types: !262)
!262 = !{!247, !251, !251}
!263 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !246, entity: !264, file: !100, line: 227)
!264 = !DISubprogram(name: "atoll", scope: !92, file: !92, line: 113, type: !265, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!265 = !DISubroutineType(types: !266)
!266 = !{!251, !124}
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !246, entity: !268, file: !100, line: 228)
!268 = !DISubprogram(name: "strtoll", scope: !92, file: !92, line: 201, type: !269, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!269 = !DISubroutineType(types: !270)
!270 = !{!251, !193, !221, !95}
!271 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !246, entity: !272, file: !100, line: 229)
!272 = !DISubprogram(name: "strtoull", scope: !92, file: !92, line: 206, type: !273, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!273 = !DISubroutineType(types: !274)
!274 = !{!275, !193, !221, !95}
!275 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !246, entity: !277, file: !100, line: 231)
!277 = !DISubprogram(name: "strtof", scope: !92, file: !92, line: 124, type: !278, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!278 = !DISubroutineType(types: !279)
!279 = !{!77, !193, !221}
!280 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !246, entity: !281, file: !100, line: 232)
!281 = !DISubprogram(name: "strtold", scope: !92, file: !92, line: 127, type: !282, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!282 = !DISubroutineType(types: !283)
!283 = !{!284, !193, !221}
!284 = !DIBasicType(name: "long double", size: 64, encoding: DW_ATE_float)
!285 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !247, file: !100, line: 240)
!286 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !254, file: !100, line: 242)
!287 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !256, file: !100, line: 244)
!288 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !289, file: !100, line: 245)
!289 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !246, file: !100, line: 213, type: !261, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!290 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !260, file: !100, line: 246)
!291 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !264, file: !100, line: 248)
!292 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !277, file: !100, line: 249)
!293 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !268, file: !100, line: 250)
!294 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !272, file: !100, line: 251)
!295 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !281, file: !100, line: 252)
!296 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !297, file: !298, line: 57)
!297 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !299, file: !298, line: 79, size: 64, flags: DIFlagTypePassByReference, elements: !300, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!298 = !DIFile(filename: "/home/yuyes/Xilinx/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/bits/exception_ptr.h", directory: "/home/yuyes/workdir/pom/samples/gemm")
!299 = !DINamespace(name: "__exception_ptr", scope: !88)
!300 = !{!301, !302, !306, !309, !310, !315, !316, !320, !326, !330, !334, !337, !338, !341, !345}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !297, file: !298, line: 81, baseType: !139, size: 64)
!302 = !DISubprogram(name: "exception_ptr", scope: !297, file: !298, line: 83, type: !303, isLocal: false, isDefinition: false, scopeLine: 83, flags: DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !305, !139}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!306 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !297, file: !298, line: 85, type: !307, isLocal: false, isDefinition: false, scopeLine: 85, flags: DIFlagPrototyped, isOptimized: false)
!307 = !DISubroutineType(types: !308)
!308 = !{null, !305}
!309 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !297, file: !298, line: 86, type: !307, isLocal: false, isDefinition: false, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: false)
!310 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !297, file: !298, line: 88, type: !311, isLocal: false, isDefinition: false, scopeLine: 88, flags: DIFlagPrototyped, isOptimized: false)
!311 = !DISubroutineType(types: !312)
!312 = !{!139, !313}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!315 = !DISubprogram(name: "exception_ptr", scope: !297, file: !298, line: 96, type: !307, isLocal: false, isDefinition: false, scopeLine: 96, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!316 = !DISubprogram(name: "exception_ptr", scope: !297, file: !298, line: 98, type: !317, isLocal: false, isDefinition: false, scopeLine: 98, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!317 = !DISubroutineType(types: !318)
!318 = !{null, !305, !319}
!319 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !314, size: 64)
!320 = !DISubprogram(name: "exception_ptr", scope: !297, file: !298, line: 101, type: !321, isLocal: false, isDefinition: false, scopeLine: 101, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !305, !323}
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !88, file: !324, line: 242, baseType: !325)
!324 = !DIFile(filename: "/home/yuyes/Xilinx/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/x86_64-pc-linux-gnu/bits/c++config.h", directory: "/home/yuyes/workdir/pom/samples/gemm")
!325 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!326 = !DISubprogram(name: "exception_ptr", scope: !297, file: !298, line: 105, type: !327, isLocal: false, isDefinition: false, scopeLine: 105, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !305, !329}
!329 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !297, size: 64)
!330 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !297, file: !298, line: 118, type: !331, isLocal: false, isDefinition: false, scopeLine: 118, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!331 = !DISubroutineType(types: !332)
!332 = !{!333, !305, !319}
!333 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !297, size: 64)
!334 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !297, file: !298, line: 122, type: !335, isLocal: false, isDefinition: false, scopeLine: 122, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!335 = !DISubroutineType(types: !336)
!336 = !{!333, !305, !329}
!337 = !DISubprogram(name: "~exception_ptr", scope: !297, file: !298, line: 129, type: !307, isLocal: false, isDefinition: false, scopeLine: 129, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!338 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !297, file: !298, line: 132, type: !339, isLocal: false, isDefinition: false, scopeLine: 132, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !305, !333}
!341 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !297, file: !298, line: 144, type: !342, isLocal: false, isDefinition: false, scopeLine: 144, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!342 = !DISubroutineType(types: !343)
!343 = !{!344, !313}
!344 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!345 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !297, file: !298, line: 153, type: !346, isLocal: false, isDefinition: false, scopeLine: 153, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!346 = !DISubroutineType(types: !347)
!347 = !{!348, !313}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!350 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !88, file: !351, line: 88, size: 128, flags: DIFlagTypePassByReference, elements: !352, vtableHolder: !350, identifier: "_ZTSSt9type_info")
!351 = !DIFile(filename: "/home/yuyes/Xilinx/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/typeinfo", directory: "/home/yuyes/workdir/pom/samples/gemm")
!352 = !{!353, !356, !357, !361, !365, !369, !370, !371, !375, !378, !379, !383, !390, !393, !397}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_vptr$type_info", scope: !351, file: !351, baseType: !354, size: 64, flags: DIFlagArtificial)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, name: "__vtbl_ptr_type", baseType: !206, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "__name", scope: !350, file: !351, line: 171, baseType: !124, size: 64, offset: 64, flags: DIFlagProtected)
!357 = !DISubprogram(name: "~type_info", scope: !350, file: !351, line: 95, type: !358, isLocal: false, isDefinition: false, scopeLine: 95, containingType: !350, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 0, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!358 = !DISubroutineType(types: !359)
!359 = !{null, !360}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!361 = !DISubprogram(name: "name", linkageName: "_ZNKSt9type_info4nameEv", scope: !350, file: !351, line: 99, type: !362, isLocal: false, isDefinition: false, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!362 = !DISubroutineType(types: !363)
!363 = !{!124, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!365 = !DISubprogram(name: "before", linkageName: "_ZNKSt9type_info6beforeERKS_", scope: !350, file: !351, line: 115, type: !366, isLocal: false, isDefinition: false, scopeLine: 115, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!366 = !DISubroutineType(types: !367)
!367 = !{!344, !364, !368}
!368 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !349, size: 64)
!369 = !DISubprogram(name: "operator==", linkageName: "_ZNKSt9type_infoeqERKS_", scope: !350, file: !351, line: 120, type: !366, isLocal: false, isDefinition: false, scopeLine: 120, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!370 = !DISubprogram(name: "operator!=", linkageName: "_ZNKSt9type_infoneERKS_", scope: !350, file: !351, line: 136, type: !366, isLocal: false, isDefinition: false, scopeLine: 136, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!371 = !DISubprogram(name: "hash_code", linkageName: "_ZNKSt9type_info9hash_codeEv", scope: !350, file: !351, line: 140, type: !372, isLocal: false, isDefinition: false, scopeLine: 140, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!372 = !DISubroutineType(types: !373)
!373 = !{!374, !364}
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !88, file: !324, line: 238, baseType: !144)
!375 = !DISubprogram(name: "__is_pointer_p", linkageName: "_ZNKSt9type_info14__is_pointer_pEv", scope: !350, file: !351, line: 152, type: !376, isLocal: false, isDefinition: false, scopeLine: 152, containingType: !350, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 2, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!376 = !DISubroutineType(types: !377)
!377 = !{!344, !364}
!378 = !DISubprogram(name: "__is_function_p", linkageName: "_ZNKSt9type_info15__is_function_pEv", scope: !350, file: !351, line: 155, type: !376, isLocal: false, isDefinition: false, scopeLine: 155, containingType: !350, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 3, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!379 = !DISubprogram(name: "__do_catch", linkageName: "_ZNKSt9type_info10__do_catchEPKS_PPvj", scope: !350, file: !351, line: 163, type: !380, isLocal: false, isDefinition: false, scopeLine: 163, containingType: !350, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 4, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!380 = !DISubroutineType(types: !381)
!381 = !{!344, !364, !348, !382, !216}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!383 = !DISubprogram(name: "__do_upcast", linkageName: "_ZNKSt9type_info11__do_upcastEPKN10__cxxabiv117__class_type_infoEPPv", scope: !350, file: !351, line: 167, type: !384, isLocal: false, isDefinition: false, scopeLine: 167, containingType: !350, virtuality: DW_VIRTUALITY_virtual, virtualIndex: 5, flags: DIFlagPublic | DIFlagPrototyped, isOptimized: false)
!384 = !DISubroutineType(types: !385)
!385 = !{!344, !364, !386, !382}
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "__class_type_info", scope: !389, file: !351, line: 45, flags: DIFlagFwdDecl, identifier: "_ZTSN10__cxxabiv117__class_type_infoE")
!389 = !DINamespace(name: "__cxxabiv1", scope: null)
!390 = !DISubprogram(name: "type_info", scope: !350, file: !351, line: 173, type: !391, isLocal: false, isDefinition: false, scopeLine: 173, flags: DIFlagProtected | DIFlagExplicit | DIFlagPrototyped, isOptimized: false)
!391 = !DISubroutineType(types: !392)
!392 = !{null, !360, !124}
!393 = !DISubprogram(name: "operator=", linkageName: "_ZNSt9type_infoaSERKS_", scope: !350, file: !351, line: 177, type: !394, isLocal: false, isDefinition: false, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: false)
!394 = !DISubroutineType(types: !395)
!395 = !{!396, !360, !368}
!396 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !350, size: 64)
!397 = !DISubprogram(name: "type_info", scope: !350, file: !351, line: 178, type: !398, isLocal: false, isDefinition: false, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: false)
!398 = !DISubroutineType(types: !399)
!399 = !{null, !360, !368}
!400 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !299, entity: !401, file: !298, line: 73)
!401 = !DISubprogram(name: "rethrow_exception", linkageName: "_ZSt17rethrow_exceptionNSt15__exception_ptr13exception_ptrE", scope: !88, file: !298, line: 69, type: !402, isLocal: false, isDefinition: false, flags: DIFlagPrototyped | DIFlagNoReturn, isOptimized: false)
!402 = !DISubroutineType(types: !403)
!403 = !{null, !297}
!404 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !405, file: !409, line: 83)
!405 = !DISubprogram(name: "acos", scope: !406, file: !406, line: 53, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!406 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/yuyes/workdir/pom/samples/gemm")
!407 = !DISubroutineType(types: !408)
!408 = !{!123, !123}
!409 = !DIFile(filename: "/home/yuyes/Xilinx/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/cmath", directory: "/home/yuyes/workdir/pom/samples/gemm")
!410 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !411, file: !409, line: 102)
!411 = !DISubprogram(name: "asin", scope: !406, file: !406, line: 55, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!412 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !413, file: !409, line: 121)
!413 = !DISubprogram(name: "atan", scope: !406, file: !406, line: 57, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!414 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !415, file: !409, line: 140)
!415 = !DISubprogram(name: "atan2", scope: !406, file: !406, line: 59, type: !416, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!416 = !DISubroutineType(types: !417)
!417 = !{!123, !123, !123}
!418 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !419, file: !409, line: 161)
!419 = !DISubprogram(name: "ceil", scope: !406, file: !406, line: 159, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!420 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !421, file: !409, line: 180)
!421 = !DISubprogram(name: "cos", scope: !406, file: !406, line: 62, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!422 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !423, file: !409, line: 199)
!423 = !DISubprogram(name: "cosh", scope: !406, file: !406, line: 71, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!424 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !425, file: !409, line: 218)
!425 = !DISubprogram(name: "exp", scope: !406, file: !406, line: 95, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!426 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !427, file: !409, line: 237)
!427 = !DISubprogram(name: "fabs", scope: !406, file: !406, line: 162, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!428 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !429, file: !409, line: 256)
!429 = !DISubprogram(name: "floor", scope: !406, file: !406, line: 165, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!430 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !431, file: !409, line: 275)
!431 = !DISubprogram(name: "fmod", scope: !406, file: !406, line: 168, type: !416, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!432 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !433, file: !409, line: 296)
!433 = !DISubprogram(name: "frexp", scope: !406, file: !406, line: 98, type: !434, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!434 = !DISubroutineType(types: !435)
!435 = !{!123, !123, !436}
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !438, file: !409, line: 315)
!438 = !DISubprogram(name: "ldexp", scope: !406, file: !406, line: 101, type: !439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!439 = !DISubroutineType(types: !440)
!440 = !{!123, !123, !95}
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !442, file: !409, line: 334)
!442 = !DISubprogram(name: "log", scope: !406, file: !406, line: 104, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !444, file: !409, line: 353)
!444 = !DISubprogram(name: "log10", scope: !406, file: !406, line: 107, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !446, file: !409, line: 372)
!446 = !DISubprogram(name: "modf", scope: !406, file: !406, line: 110, type: !447, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!447 = !DISubroutineType(types: !448)
!448 = !{!123, !123, !449}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!450 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !451, file: !409, line: 384)
!451 = !DISubprogram(name: "pow", scope: !406, file: !406, line: 140, type: !416, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!452 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !453, file: !409, line: 421)
!453 = !DISubprogram(name: "sin", scope: !406, file: !406, line: 64, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!454 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !455, file: !409, line: 440)
!455 = !DISubprogram(name: "sinh", scope: !406, file: !406, line: 73, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!456 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !457, file: !409, line: 459)
!457 = !DISubprogram(name: "sqrt", scope: !406, file: !406, line: 143, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!458 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !459, file: !409, line: 478)
!459 = !DISubprogram(name: "tan", scope: !406, file: !406, line: 66, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!460 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !461, file: !409, line: 497)
!461 = !DISubprogram(name: "tanh", scope: !406, file: !406, line: 75, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!462 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !463, file: !409, line: 1065)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !464, line: 164, baseType: !123)
!464 = !DIFile(filename: "/usr/include/math.h", directory: "/home/yuyes/workdir/pom/samples/gemm")
!465 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !466, file: !409, line: 1066)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !464, line: 163, baseType: !77)
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !468, file: !409, line: 1069)
!468 = !DISubprogram(name: "acosh", scope: !406, file: !406, line: 85, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!469 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !470, file: !409, line: 1070)
!470 = !DISubprogram(name: "acoshf", scope: !406, file: !406, line: 85, type: !471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!471 = !DISubroutineType(types: !472)
!472 = !{!77, !77}
!473 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !474, file: !409, line: 1071)
!474 = !DISubprogram(name: "acoshl", scope: !406, file: !406, line: 85, type: !475, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!475 = !DISubroutineType(types: !476)
!476 = !{!284, !284}
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !478, file: !409, line: 1073)
!478 = !DISubprogram(name: "asinh", scope: !406, file: !406, line: 87, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !480, file: !409, line: 1074)
!480 = !DISubprogram(name: "asinhf", scope: !406, file: !406, line: 87, type: !471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !482, file: !409, line: 1075)
!482 = !DISubprogram(name: "asinhl", scope: !406, file: !406, line: 87, type: !475, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !484, file: !409, line: 1077)
!484 = !DISubprogram(name: "atanh", scope: !406, file: !406, line: 89, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !486, file: !409, line: 1078)
!486 = !DISubprogram(name: "atanhf", scope: !406, file: !406, line: 89, type: !471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !488, file: !409, line: 1079)
!488 = !DISubprogram(name: "atanhl", scope: !406, file: !406, line: 89, type: !475, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !490, file: !409, line: 1081)
!490 = !DISubprogram(name: "cbrt", scope: !406, file: !406, line: 152, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !492, file: !409, line: 1082)
!492 = !DISubprogram(name: "cbrtf", scope: !406, file: !406, line: 152, type: !471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !494, file: !409, line: 1083)
!494 = !DISubprogram(name: "cbrtl", scope: !406, file: !406, line: 152, type: !475, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!495 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !496, file: !409, line: 1085)
!496 = !DISubprogram(name: "copysign", scope: !406, file: !406, line: 198, type: !416, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !498, file: !409, line: 1086)
!498 = !DISubprogram(name: "copysignf", scope: !406, file: !406, line: 198, type: !499, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!499 = !DISubroutineType(types: !500)
!500 = !{!77, !77, !77}
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !502, file: !409, line: 1087)
!502 = !DISubprogram(name: "copysignl", scope: !406, file: !406, line: 198, type: !503, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!503 = !DISubroutineType(types: !504)
!504 = !{!284, !284, !284}
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !506, file: !409, line: 1089)
!506 = !DISubprogram(name: "erf", scope: !406, file: !406, line: 231, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !508, file: !409, line: 1090)
!508 = !DISubprogram(name: "erff", scope: !406, file: !406, line: 231, type: !471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !510, file: !409, line: 1091)
!510 = !DISubprogram(name: "erfl", scope: !406, file: !406, line: 231, type: !475, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !512, file: !409, line: 1093)
!512 = !DISubprogram(name: "erfc", scope: !406, file: !406, line: 232, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!513 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !514, file: !409, line: 1094)
!514 = !DISubprogram(name: "erfcf", scope: !406, file: !406, line: 232, type: !471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !516, file: !409, line: 1095)
!516 = !DISubprogram(name: "erfcl", scope: !406, file: !406, line: 232, type: !475, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!517 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !518, file: !409, line: 1097)
!518 = !DISubprogram(name: "exp2", scope: !406, file: !406, line: 130, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !520, file: !409, line: 1098)
!520 = !DISubprogram(name: "exp2f", scope: !406, file: !406, line: 130, type: !471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!521 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !522, file: !409, line: 1099)
!522 = !DISubprogram(name: "exp2l", scope: !406, file: !406, line: 130, type: !475, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !524, file: !409, line: 1101)
!524 = !DISubprogram(name: "expm1", scope: !406, file: !406, line: 119, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !526, file: !409, line: 1102)
!526 = !DISubprogram(name: "expm1f", scope: !406, file: !406, line: 119, type: !471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !528, file: !409, line: 1103)
!528 = !DISubprogram(name: "expm1l", scope: !406, file: !406, line: 119, type: !475, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !530, file: !409, line: 1105)
!530 = !DISubprogram(name: "fdim", scope: !406, file: !406, line: 329, type: !416, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !532, file: !409, line: 1106)
!532 = !DISubprogram(name: "fdimf", scope: !406, file: !406, line: 329, type: !499, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !534, file: !409, line: 1107)
!534 = !DISubprogram(name: "fdiml", scope: !406, file: !406, line: 329, type: !503, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !536, file: !409, line: 1109)
!536 = !DISubprogram(name: "fma", scope: !406, file: !406, line: 340, type: !537, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!537 = !DISubroutineType(types: !538)
!538 = !{!123, !123, !123, !123}
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !540, file: !409, line: 1110)
!540 = !DISubprogram(name: "fmaf", scope: !406, file: !406, line: 340, type: !541, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!541 = !DISubroutineType(types: !542)
!542 = !{!77, !77, !77, !77}
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !544, file: !409, line: 1111)
!544 = !DISubprogram(name: "fmal", scope: !406, file: !406, line: 340, type: !545, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!545 = !DISubroutineType(types: !546)
!546 = !{!284, !284, !284, !284}
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !548, file: !409, line: 1113)
!548 = !DISubprogram(name: "fmax", scope: !406, file: !406, line: 333, type: !416, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!549 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !550, file: !409, line: 1114)
!550 = !DISubprogram(name: "fmaxf", scope: !406, file: !406, line: 333, type: !499, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !552, file: !409, line: 1115)
!552 = !DISubprogram(name: "fmaxl", scope: !406, file: !406, line: 333, type: !503, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!553 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !554, file: !409, line: 1117)
!554 = !DISubprogram(name: "fmin", scope: !406, file: !406, line: 336, type: !416, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !556, file: !409, line: 1118)
!556 = !DISubprogram(name: "fminf", scope: !406, file: !406, line: 336, type: !499, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!557 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !558, file: !409, line: 1119)
!558 = !DISubprogram(name: "fminl", scope: !406, file: !406, line: 336, type: !503, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !560, file: !409, line: 1121)
!560 = !DISubprogram(name: "hypot", scope: !406, file: !406, line: 147, type: !416, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !562, file: !409, line: 1122)
!562 = !DISubprogram(name: "hypotf", scope: !406, file: !406, line: 147, type: !499, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !564, file: !409, line: 1123)
!564 = !DISubprogram(name: "hypotl", scope: !406, file: !406, line: 147, type: !503, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !566, file: !409, line: 1125)
!566 = !DISubprogram(name: "ilogb", scope: !406, file: !406, line: 283, type: !567, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!567 = !DISubroutineType(types: !568)
!568 = !{!95, !123}
!569 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !570, file: !409, line: 1126)
!570 = !DISubprogram(name: "ilogbf", scope: !406, file: !406, line: 283, type: !571, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!571 = !DISubroutineType(types: !572)
!572 = !{!95, !77}
!573 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !574, file: !409, line: 1127)
!574 = !DISubprogram(name: "ilogbl", scope: !406, file: !406, line: 283, type: !575, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!575 = !DISubroutineType(types: !576)
!576 = !{!95, !284}
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !578, file: !409, line: 1129)
!578 = !DISubprogram(name: "lgamma", scope: !406, file: !406, line: 233, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !580, file: !409, line: 1130)
!580 = !DISubprogram(name: "lgammaf", scope: !406, file: !406, line: 233, type: !471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !582, file: !409, line: 1131)
!582 = !DISubprogram(name: "lgammal", scope: !406, file: !406, line: 233, type: !475, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !584, file: !409, line: 1134)
!584 = !DISubprogram(name: "llrint", scope: !406, file: !406, line: 319, type: !585, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!585 = !DISubroutineType(types: !586)
!586 = !{!251, !123}
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !588, file: !409, line: 1135)
!588 = !DISubprogram(name: "llrintf", scope: !406, file: !406, line: 319, type: !589, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!589 = !DISubroutineType(types: !590)
!590 = !{!251, !77}
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !592, file: !409, line: 1136)
!592 = !DISubprogram(name: "llrintl", scope: !406, file: !406, line: 319, type: !593, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!593 = !DISubroutineType(types: !594)
!594 = !{!251, !284}
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !596, file: !409, line: 1138)
!596 = !DISubprogram(name: "llround", scope: !406, file: !406, line: 325, type: !585, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !598, file: !409, line: 1139)
!598 = !DISubprogram(name: "llroundf", scope: !406, file: !406, line: 325, type: !589, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !600, file: !409, line: 1140)
!600 = !DISubprogram(name: "llroundl", scope: !406, file: !406, line: 325, type: !593, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !602, file: !409, line: 1143)
!602 = !DISubprogram(name: "log1p", scope: !406, file: !406, line: 122, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !604, file: !409, line: 1144)
!604 = !DISubprogram(name: "log1pf", scope: !406, file: !406, line: 122, type: !471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!605 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !606, file: !409, line: 1145)
!606 = !DISubprogram(name: "log1pl", scope: !406, file: !406, line: 122, type: !475, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !608, file: !409, line: 1147)
!608 = !DISubprogram(name: "log2", scope: !406, file: !406, line: 133, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!609 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !610, file: !409, line: 1148)
!610 = !DISubprogram(name: "log2f", scope: !406, file: !406, line: 133, type: !471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !612, file: !409, line: 1149)
!612 = !DISubprogram(name: "log2l", scope: !406, file: !406, line: 133, type: !475, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!613 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !614, file: !409, line: 1151)
!614 = !DISubprogram(name: "logb", scope: !406, file: !406, line: 125, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !616, file: !409, line: 1152)
!616 = !DISubprogram(name: "logbf", scope: !406, file: !406, line: 125, type: !471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !618, file: !409, line: 1153)
!618 = !DISubprogram(name: "logbl", scope: !406, file: !406, line: 125, type: !475, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !620, file: !409, line: 1155)
!620 = !DISubprogram(name: "lrint", scope: !406, file: !406, line: 317, type: !621, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!621 = !DISubroutineType(types: !622)
!622 = !{!106, !123}
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !624, file: !409, line: 1156)
!624 = !DISubprogram(name: "lrintf", scope: !406, file: !406, line: 317, type: !625, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!625 = !DISubroutineType(types: !626)
!626 = !{!106, !77}
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !628, file: !409, line: 1157)
!628 = !DISubprogram(name: "lrintl", scope: !406, file: !406, line: 317, type: !629, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!629 = !DISubroutineType(types: !630)
!630 = !{!106, !284}
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !632, file: !409, line: 1159)
!632 = !DISubprogram(name: "lround", scope: !406, file: !406, line: 323, type: !621, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!633 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !634, file: !409, line: 1160)
!634 = !DISubprogram(name: "lroundf", scope: !406, file: !406, line: 323, type: !625, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !636, file: !409, line: 1161)
!636 = !DISubprogram(name: "lroundl", scope: !406, file: !406, line: 323, type: !629, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!637 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !638, file: !409, line: 1163)
!638 = !DISubprogram(name: "nan", scope: !406, file: !406, line: 203, type: !121, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !640, file: !409, line: 1164)
!640 = !DISubprogram(name: "nanf", scope: !406, file: !406, line: 203, type: !641, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!641 = !DISubroutineType(types: !642)
!642 = !{!77, !124}
!643 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !644, file: !409, line: 1165)
!644 = !DISubprogram(name: "nanl", scope: !406, file: !406, line: 203, type: !645, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!645 = !DISubroutineType(types: !646)
!646 = !{!284, !124}
!647 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !648, file: !409, line: 1167)
!648 = !DISubprogram(name: "nearbyint", scope: !406, file: !406, line: 297, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !650, file: !409, line: 1168)
!650 = !DISubprogram(name: "nearbyintf", scope: !406, file: !406, line: 297, type: !471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !652, file: !409, line: 1169)
!652 = !DISubprogram(name: "nearbyintl", scope: !406, file: !406, line: 297, type: !475, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !654, file: !409, line: 1171)
!654 = !DISubprogram(name: "nextafter", scope: !406, file: !406, line: 262, type: !416, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !656, file: !409, line: 1172)
!656 = !DISubprogram(name: "nextafterf", scope: !406, file: !406, line: 262, type: !499, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !658, file: !409, line: 1173)
!658 = !DISubprogram(name: "nextafterl", scope: !406, file: !406, line: 262, type: !503, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !660, file: !409, line: 1175)
!660 = !DISubprogram(name: "nexttoward", scope: !406, file: !406, line: 264, type: !661, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!661 = !DISubroutineType(types: !662)
!662 = !{!123, !123, !284}
!663 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !664, file: !409, line: 1176)
!664 = !DISubprogram(name: "nexttowardf", scope: !406, file: !406, line: 264, type: !665, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!665 = !DISubroutineType(types: !666)
!666 = !{!77, !77, !284}
!667 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !668, file: !409, line: 1177)
!668 = !DISubprogram(name: "nexttowardl", scope: !406, file: !406, line: 264, type: !503, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!669 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !670, file: !409, line: 1179)
!670 = !DISubprogram(name: "remainder", scope: !406, file: !406, line: 275, type: !416, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!671 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !672, file: !409, line: 1180)
!672 = !DISubprogram(name: "remainderf", scope: !406, file: !406, line: 275, type: !499, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!673 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !674, file: !409, line: 1181)
!674 = !DISubprogram(name: "remainderl", scope: !406, file: !406, line: 275, type: !503, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!675 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !676, file: !409, line: 1183)
!676 = !DISubprogram(name: "remquo", scope: !406, file: !406, line: 310, type: !677, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!677 = !DISubroutineType(types: !678)
!678 = !{!123, !123, !123, !436}
!679 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !680, file: !409, line: 1184)
!680 = !DISubprogram(name: "remquof", scope: !406, file: !406, line: 310, type: !681, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!681 = !DISubroutineType(types: !682)
!682 = !{!77, !77, !77, !436}
!683 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !684, file: !409, line: 1185)
!684 = !DISubprogram(name: "remquol", scope: !406, file: !406, line: 310, type: !685, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!685 = !DISubroutineType(types: !686)
!686 = !{!284, !284, !284, !436}
!687 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !688, file: !409, line: 1187)
!688 = !DISubprogram(name: "rint", scope: !406, file: !406, line: 259, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!689 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !690, file: !409, line: 1188)
!690 = !DISubprogram(name: "rintf", scope: !406, file: !406, line: 259, type: !471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!691 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !692, file: !409, line: 1189)
!692 = !DISubprogram(name: "rintl", scope: !406, file: !406, line: 259, type: !475, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!693 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !694, file: !409, line: 1191)
!694 = !DISubprogram(name: "round", scope: !406, file: !406, line: 301, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !696, file: !409, line: 1192)
!696 = !DISubprogram(name: "roundf", scope: !406, file: !406, line: 301, type: !471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!697 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !698, file: !409, line: 1193)
!698 = !DISubprogram(name: "roundl", scope: !406, file: !406, line: 301, type: !475, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !700, file: !409, line: 1195)
!700 = !DISubprogram(name: "scalbln", scope: !406, file: !406, line: 293, type: !701, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!701 = !DISubroutineType(types: !702)
!702 = !{!123, !123, !106}
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !704, file: !409, line: 1196)
!704 = !DISubprogram(name: "scalblnf", scope: !406, file: !406, line: 293, type: !705, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!705 = !DISubroutineType(types: !706)
!706 = !{!77, !77, !106}
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !708, file: !409, line: 1197)
!708 = !DISubprogram(name: "scalblnl", scope: !406, file: !406, line: 293, type: !709, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!709 = !DISubroutineType(types: !710)
!710 = !{!284, !284, !106}
!711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !712, file: !409, line: 1199)
!712 = !DISubprogram(name: "scalbn", scope: !406, file: !406, line: 279, type: !439, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !714, file: !409, line: 1200)
!714 = !DISubprogram(name: "scalbnf", scope: !406, file: !406, line: 279, type: !715, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!715 = !DISubroutineType(types: !716)
!716 = !{!77, !77, !95}
!717 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !718, file: !409, line: 1201)
!718 = !DISubprogram(name: "scalbnl", scope: !406, file: !406, line: 279, type: !719, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!719 = !DISubroutineType(types: !720)
!720 = !{!284, !284, !95}
!721 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !722, file: !409, line: 1203)
!722 = !DISubprogram(name: "tgamma", scope: !406, file: !406, line: 238, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!723 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !724, file: !409, line: 1204)
!724 = !DISubprogram(name: "tgammaf", scope: !406, file: !406, line: 238, type: !471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !726, file: !409, line: 1205)
!726 = !DISubprogram(name: "tgammal", scope: !406, file: !406, line: 238, type: !475, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!727 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !728, file: !409, line: 1207)
!728 = !DISubprogram(name: "trunc", scope: !406, file: !406, line: 305, type: !407, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !730, file: !409, line: 1208)
!730 = !DISubprogram(name: "truncf", scope: !406, file: !406, line: 305, type: !471, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!731 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !88, entity: !732, file: !409, line: 1209)
!732 = !DISubprogram(name: "truncl", scope: !406, file: !406, line: 305, type: !475, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!733 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !82, entity: !734, file: !738, line: 38)
!734 = !DISubprogram(name: "abs", linkageName: "_ZSt3absg", scope: !88, file: !96, line: 102, type: !735, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!735 = !DISubroutineType(types: !736)
!736 = !{!737, !737}
!737 = !DIBasicType(name: "__float128", size: 128, encoding: DW_ATE_float)
!738 = !DIFile(filename: "/home/yuyes/Xilinx/Vitis_HLS/2022.2/tps/lnx64/gcc-8.3.0/lib/gcc/x86_64-pc-linux-gnu/8.3.0/../../../../include/c++/8.3.0/math.h", directory: "/home/yuyes/workdir/pom/samples/gemm")
!739 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !82, entity: !740, file: !738, line: 54)
!740 = !DISubprogram(name: "modf", linkageName: "_ZSt4modfePe", scope: !88, file: !409, line: 380, type: !741, isLocal: false, isDefinition: false, flags: DIFlagPrototyped, isOptimized: false)
!741 = !DISubroutineType(types: !742)
!742 = !{!284, !284, !743}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!744 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !82, entity: !88, file: !74, line: 18)
!745 = !DILocation(line: 40, column: 9, scope: !73)
!746 = !DILocation(line: 44, column: 9, scope: !73)
!747 = !DILocation(line: 43, column: 9, scope: !73)
