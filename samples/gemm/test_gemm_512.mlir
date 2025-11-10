module {
  func @test_gemm_512(%arg0: f32, %arg1: f32, %arg2: memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, 0, d0 floordiv 4, d1)>>, %arg3: memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>, %arg4: memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>) attributes {resource = #hls.r<lut=0, dsp=218, bram=0>, timing = #hls.t<0 -> 3407903, 3407903, 3407903>, top_func} {
    affine.for %arg5 = 0 to 512 {
      affine.for %arg6 = 0 to 512 {
        %0 = affine.load %arg4[%arg5, %arg6] {max_mux_size = 32 : i64, partition_indices = [-1, -1]} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
        %1 = arith.mulf %0, %arg1 : f32
        affine.store %1, %arg4[%arg5, %arg6] {max_mux_size = 32 : i64, partition_indices = [-1, -1]} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
      } {loop_directive = #hls.ld<pipeline=true, targetII=1, dataflow=false, flatten=false>, parallel}
    } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
    affine.for %arg5 = 0 to 512 {
      affine.for %arg6 = 0 to 128 {
        affine.for %arg7 = 0 to 16 {
          %0 = affine.load %arg2[%arg6 * 4, %arg5] {partition_indices = [0, 0], timing = #hls.t<19 -> 21, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, 0, d0 floordiv 4, d1)>>
          %1 = arith.mulf %arg0, %0 {timing = #hls.t<14 -> 19, 5, 1>} : f32
          %2 = affine.load %arg3[%arg5, %arg7 * 32] {partition_indices = [0, 0], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %3 = arith.mulf %2, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %4 = affine.load %arg4[%arg6 * 4, %arg7 * 32] {partition_indices = [0, 0], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %5 = arith.addf %3, %4 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %5, %arg4[%arg6 * 4, %arg7 * 32] {partition_indices = [0, 0], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %6 = affine.load %arg3[%arg5, %arg7 * 32 + 1] {partition_indices = [0, 1], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %7 = arith.mulf %6, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %8 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 1] {partition_indices = [0, 1], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %9 = arith.addf %7, %8 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %9, %arg4[%arg6 * 4, %arg7 * 32 + 1] {partition_indices = [0, 1], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %10 = affine.load %arg3[%arg5, %arg7 * 32 + 2] {partition_indices = [0, 2], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %11 = arith.mulf %10, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %12 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 2] {partition_indices = [0, 2], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %13 = arith.addf %11, %12 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %13, %arg4[%arg6 * 4, %arg7 * 32 + 2] {partition_indices = [0, 2], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %14 = affine.load %arg3[%arg5, %arg7 * 32 + 3] {partition_indices = [0, 3], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %15 = arith.mulf %14, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %16 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 3] {partition_indices = [0, 3], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %17 = arith.addf %15, %16 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %17, %arg4[%arg6 * 4, %arg7 * 32 + 3] {partition_indices = [0, 3], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %18 = affine.load %arg3[%arg5, %arg7 * 32 + 4] {partition_indices = [0, 4], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %19 = arith.mulf %18, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %20 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 4] {partition_indices = [0, 4], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %21 = arith.addf %19, %20 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %21, %arg4[%arg6 * 4, %arg7 * 32 + 4] {partition_indices = [0, 4], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %22 = affine.load %arg3[%arg5, %arg7 * 32 + 5] {partition_indices = [0, 5], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %23 = arith.mulf %22, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %24 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 5] {partition_indices = [0, 5], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %25 = arith.addf %23, %24 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %25, %arg4[%arg6 * 4, %arg7 * 32 + 5] {partition_indices = [0, 5], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %26 = affine.load %arg3[%arg5, %arg7 * 32 + 6] {partition_indices = [0, 6], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %27 = arith.mulf %26, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %28 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 6] {partition_indices = [0, 6], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %29 = arith.addf %27, %28 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %29, %arg4[%arg6 * 4, %arg7 * 32 + 6] {partition_indices = [0, 6], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %30 = affine.load %arg3[%arg5, %arg7 * 32 + 7] {partition_indices = [0, 7], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %31 = arith.mulf %30, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %32 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 7] {partition_indices = [0, 7], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %33 = arith.addf %31, %32 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %33, %arg4[%arg6 * 4, %arg7 * 32 + 7] {partition_indices = [0, 7], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %34 = affine.load %arg3[%arg5, %arg7 * 32 + 8] {partition_indices = [0, 8], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %35 = arith.mulf %34, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %36 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 8] {partition_indices = [0, 8], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %37 = arith.addf %35, %36 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %37, %arg4[%arg6 * 4, %arg7 * 32 + 8] {partition_indices = [0, 8], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %38 = affine.load %arg3[%arg5, %arg7 * 32 + 9] {partition_indices = [0, 9], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %39 = arith.mulf %38, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %40 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 9] {partition_indices = [0, 9], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %41 = arith.addf %39, %40 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %41, %arg4[%arg6 * 4, %arg7 * 32 + 9] {partition_indices = [0, 9], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %42 = affine.load %arg3[%arg5, %arg7 * 32 + 10] {partition_indices = [0, 10], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %43 = arith.mulf %42, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %44 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 10] {partition_indices = [0, 10], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %45 = arith.addf %43, %44 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %45, %arg4[%arg6 * 4, %arg7 * 32 + 10] {partition_indices = [0, 10], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %46 = affine.load %arg3[%arg5, %arg7 * 32 + 11] {partition_indices = [0, 11], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %47 = arith.mulf %46, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %48 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 11] {partition_indices = [0, 11], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %49 = arith.addf %47, %48 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %49, %arg4[%arg6 * 4, %arg7 * 32 + 11] {partition_indices = [0, 11], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %50 = affine.load %arg3[%arg5, %arg7 * 32 + 12] {partition_indices = [0, 12], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %51 = arith.mulf %50, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %52 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 12] {partition_indices = [0, 12], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %53 = arith.addf %51, %52 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %53, %arg4[%arg6 * 4, %arg7 * 32 + 12] {partition_indices = [0, 12], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %54 = affine.load %arg3[%arg5, %arg7 * 32 + 13] {partition_indices = [0, 13], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %55 = arith.mulf %54, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %56 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 13] {partition_indices = [0, 13], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %57 = arith.addf %55, %56 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %57, %arg4[%arg6 * 4, %arg7 * 32 + 13] {partition_indices = [0, 13], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %58 = affine.load %arg3[%arg5, %arg7 * 32 + 14] {partition_indices = [0, 14], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %59 = arith.mulf %58, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %60 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 14] {partition_indices = [0, 14], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %61 = arith.addf %59, %60 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %61, %arg4[%arg6 * 4, %arg7 * 32 + 14] {partition_indices = [0, 14], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %62 = affine.load %arg3[%arg5, %arg7 * 32 + 15] {partition_indices = [0, 15], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %63 = arith.mulf %62, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %64 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 15] {partition_indices = [0, 15], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %65 = arith.addf %63, %64 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %65, %arg4[%arg6 * 4, %arg7 * 32 + 15] {partition_indices = [0, 15], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %66 = affine.load %arg3[%arg5, %arg7 * 32 + 16] {partition_indices = [0, 16], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %67 = arith.mulf %66, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %68 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 16] {partition_indices = [0, 16], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %69 = arith.addf %67, %68 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %69, %arg4[%arg6 * 4, %arg7 * 32 + 16] {partition_indices = [0, 16], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %70 = affine.load %arg3[%arg5, %arg7 * 32 + 17] {partition_indices = [0, 17], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %71 = arith.mulf %70, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %72 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 17] {partition_indices = [0, 17], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %73 = arith.addf %71, %72 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %73, %arg4[%arg6 * 4, %arg7 * 32 + 17] {partition_indices = [0, 17], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %74 = affine.load %arg3[%arg5, %arg7 * 32 + 18] {partition_indices = [0, 18], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %75 = arith.mulf %74, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %76 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 18] {partition_indices = [0, 18], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %77 = arith.addf %75, %76 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %77, %arg4[%arg6 * 4, %arg7 * 32 + 18] {partition_indices = [0, 18], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %78 = affine.load %arg3[%arg5, %arg7 * 32 + 19] {partition_indices = [0, 19], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %79 = arith.mulf %78, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %80 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 19] {partition_indices = [0, 19], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %81 = arith.addf %79, %80 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %81, %arg4[%arg6 * 4, %arg7 * 32 + 19] {partition_indices = [0, 19], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %82 = affine.load %arg3[%arg5, %arg7 * 32 + 20] {partition_indices = [0, 20], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %83 = arith.mulf %82, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %84 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 20] {partition_indices = [0, 20], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %85 = arith.addf %83, %84 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %85, %arg4[%arg6 * 4, %arg7 * 32 + 20] {partition_indices = [0, 20], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %86 = affine.load %arg3[%arg5, %arg7 * 32 + 21] {partition_indices = [0, 21], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %87 = arith.mulf %86, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %88 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 21] {partition_indices = [0, 21], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %89 = arith.addf %87, %88 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %89, %arg4[%arg6 * 4, %arg7 * 32 + 21] {partition_indices = [0, 21], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %90 = affine.load %arg3[%arg5, %arg7 * 32 + 22] {partition_indices = [0, 22], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %91 = arith.mulf %90, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %92 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 22] {partition_indices = [0, 22], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %93 = arith.addf %91, %92 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %93, %arg4[%arg6 * 4, %arg7 * 32 + 22] {partition_indices = [0, 22], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %94 = affine.load %arg3[%arg5, %arg7 * 32 + 23] {partition_indices = [0, 23], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %95 = arith.mulf %94, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %96 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 23] {partition_indices = [0, 23], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %97 = arith.addf %95, %96 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %97, %arg4[%arg6 * 4, %arg7 * 32 + 23] {partition_indices = [0, 23], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %98 = affine.load %arg3[%arg5, %arg7 * 32 + 24] {partition_indices = [0, 24], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %99 = arith.mulf %98, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %100 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 24] {partition_indices = [0, 24], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %101 = arith.addf %99, %100 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %101, %arg4[%arg6 * 4, %arg7 * 32 + 24] {partition_indices = [0, 24], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %102 = affine.load %arg3[%arg5, %arg7 * 32 + 25] {partition_indices = [0, 25], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %103 = arith.mulf %102, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %104 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 25] {partition_indices = [0, 25], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %105 = arith.addf %103, %104 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %105, %arg4[%arg6 * 4, %arg7 * 32 + 25] {partition_indices = [0, 25], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %106 = affine.load %arg3[%arg5, %arg7 * 32 + 26] {partition_indices = [0, 26], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %107 = arith.mulf %106, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %108 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 26] {partition_indices = [0, 26], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %109 = arith.addf %107, %108 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %109, %arg4[%arg6 * 4, %arg7 * 32 + 26] {partition_indices = [0, 26], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %110 = affine.load %arg3[%arg5, %arg7 * 32 + 27] {partition_indices = [0, 27], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %111 = arith.mulf %110, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %112 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 27] {partition_indices = [0, 27], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %113 = arith.addf %111, %112 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %113, %arg4[%arg6 * 4, %arg7 * 32 + 27] {partition_indices = [0, 27], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %114 = affine.load %arg3[%arg5, %arg7 * 32 + 28] {partition_indices = [0, 28], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %115 = arith.mulf %114, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %116 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 28] {partition_indices = [0, 28], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %117 = arith.addf %115, %116 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %117, %arg4[%arg6 * 4, %arg7 * 32 + 28] {partition_indices = [0, 28], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %118 = affine.load %arg3[%arg5, %arg7 * 32 + 29] {partition_indices = [0, 29], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %119 = arith.mulf %118, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %120 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 29] {partition_indices = [0, 29], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %121 = arith.addf %119, %120 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %121, %arg4[%arg6 * 4, %arg7 * 32 + 29] {partition_indices = [0, 29], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %122 = affine.load %arg3[%arg5, %arg7 * 32 + 30] {partition_indices = [0, 30], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %123 = arith.mulf %122, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %124 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 30] {partition_indices = [0, 30], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %125 = arith.addf %123, %124 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %125, %arg4[%arg6 * 4, %arg7 * 32 + 30] {partition_indices = [0, 30], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %126 = affine.load %arg3[%arg5, %arg7 * 32 + 31] {partition_indices = [0, 31], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (0, d1 mod 32, d0, d1 floordiv 32)>>
          %127 = arith.mulf %126, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %128 = affine.load %arg4[%arg6 * 4, %arg7 * 32 + 31] {partition_indices = [0, 31], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %129 = arith.addf %127, %128 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %129, %arg4[%arg6 * 4, %arg7 * 32 + 31] {partition_indices = [0, 31], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %130 = affine.load %arg2[%arg6 * 4 + 1, %arg5] {partition_indices = [1, 0], timing = #hls.t<19 -> 21, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, 0, d0 floordiv 4, d1)>>
          %131 = arith.mulf %arg0, %130 {timing = #hls.t<14 -> 19, 5, 1>} : f32
          %132 = arith.mulf %2, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %133 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32] {partition_indices = [1, 0], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %134 = arith.addf %132, %133 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %134, %arg4[%arg6 * 4 + 1, %arg7 * 32] {partition_indices = [1, 0], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %135 = arith.mulf %6, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %136 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 1] {partition_indices = [1, 1], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %137 = arith.addf %135, %136 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %137, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 1] {partition_indices = [1, 1], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %138 = arith.mulf %10, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %139 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 2] {partition_indices = [1, 2], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %140 = arith.addf %138, %139 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %140, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 2] {partition_indices = [1, 2], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %141 = arith.mulf %14, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %142 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 3] {partition_indices = [1, 3], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %143 = arith.addf %141, %142 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %143, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 3] {partition_indices = [1, 3], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %144 = arith.mulf %18, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %145 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 4] {partition_indices = [1, 4], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %146 = arith.addf %144, %145 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %146, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 4] {partition_indices = [1, 4], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %147 = arith.mulf %22, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %148 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 5] {partition_indices = [1, 5], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %149 = arith.addf %147, %148 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %149, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 5] {partition_indices = [1, 5], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %150 = arith.mulf %26, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %151 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 6] {partition_indices = [1, 6], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %152 = arith.addf %150, %151 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %152, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 6] {partition_indices = [1, 6], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %153 = arith.mulf %30, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %154 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 7] {partition_indices = [1, 7], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %155 = arith.addf %153, %154 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %155, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 7] {partition_indices = [1, 7], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %156 = arith.mulf %34, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %157 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 8] {partition_indices = [1, 8], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %158 = arith.addf %156, %157 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %158, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 8] {partition_indices = [1, 8], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %159 = arith.mulf %38, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %160 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 9] {partition_indices = [1, 9], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %161 = arith.addf %159, %160 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %161, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 9] {partition_indices = [1, 9], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %162 = arith.mulf %42, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %163 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 10] {partition_indices = [1, 10], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %164 = arith.addf %162, %163 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %164, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 10] {partition_indices = [1, 10], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %165 = arith.mulf %46, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %166 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 11] {partition_indices = [1, 11], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %167 = arith.addf %165, %166 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %167, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 11] {partition_indices = [1, 11], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %168 = arith.mulf %50, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %169 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 12] {partition_indices = [1, 12], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %170 = arith.addf %168, %169 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %170, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 12] {partition_indices = [1, 12], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %171 = arith.mulf %54, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %172 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 13] {partition_indices = [1, 13], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %173 = arith.addf %171, %172 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %173, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 13] {partition_indices = [1, 13], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %174 = arith.mulf %58, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %175 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 14] {partition_indices = [1, 14], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %176 = arith.addf %174, %175 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %176, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 14] {partition_indices = [1, 14], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %177 = arith.mulf %62, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %178 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 15] {partition_indices = [1, 15], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %179 = arith.addf %177, %178 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %179, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 15] {partition_indices = [1, 15], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %180 = arith.mulf %66, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %181 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 16] {partition_indices = [1, 16], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %182 = arith.addf %180, %181 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %182, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 16] {partition_indices = [1, 16], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %183 = arith.mulf %70, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %184 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 17] {partition_indices = [1, 17], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %185 = arith.addf %183, %184 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %185, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 17] {partition_indices = [1, 17], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %186 = arith.mulf %74, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %187 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 18] {partition_indices = [1, 18], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %188 = arith.addf %186, %187 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %188, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 18] {partition_indices = [1, 18], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %189 = arith.mulf %78, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %190 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 19] {partition_indices = [1, 19], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %191 = arith.addf %189, %190 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %191, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 19] {partition_indices = [1, 19], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %192 = arith.mulf %82, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %193 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 20] {partition_indices = [1, 20], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %194 = arith.addf %192, %193 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %194, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 20] {partition_indices = [1, 20], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %195 = arith.mulf %86, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %196 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 21] {partition_indices = [1, 21], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %197 = arith.addf %195, %196 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %197, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 21] {partition_indices = [1, 21], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %198 = arith.mulf %90, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %199 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 22] {partition_indices = [1, 22], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %200 = arith.addf %198, %199 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %200, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 22] {partition_indices = [1, 22], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %201 = arith.mulf %94, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %202 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 23] {partition_indices = [1, 23], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %203 = arith.addf %201, %202 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %203, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 23] {partition_indices = [1, 23], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %204 = arith.mulf %98, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %205 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 24] {partition_indices = [1, 24], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %206 = arith.addf %204, %205 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %206, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 24] {partition_indices = [1, 24], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %207 = arith.mulf %102, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %208 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 25] {partition_indices = [1, 25], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %209 = arith.addf %207, %208 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %209, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 25] {partition_indices = [1, 25], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %210 = arith.mulf %106, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %211 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 26] {partition_indices = [1, 26], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %212 = arith.addf %210, %211 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %212, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 26] {partition_indices = [1, 26], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %213 = arith.mulf %110, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %214 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 27] {partition_indices = [1, 27], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %215 = arith.addf %213, %214 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %215, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 27] {partition_indices = [1, 27], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %216 = arith.mulf %114, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %217 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 28] {partition_indices = [1, 28], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %218 = arith.addf %216, %217 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %218, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 28] {partition_indices = [1, 28], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %219 = arith.mulf %118, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %220 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 29] {partition_indices = [1, 29], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %221 = arith.addf %219, %220 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %221, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 29] {partition_indices = [1, 29], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %222 = arith.mulf %122, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %223 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 30] {partition_indices = [1, 30], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %224 = arith.addf %222, %223 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %224, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 30] {partition_indices = [1, 30], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %225 = arith.mulf %126, %131 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %226 = affine.load %arg4[%arg6 * 4 + 1, %arg7 * 32 + 31] {partition_indices = [1, 31], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %227 = arith.addf %225, %226 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %227, %arg4[%arg6 * 4 + 1, %arg7 * 32 + 31] {partition_indices = [1, 31], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %228 = affine.load %arg2[%arg6 * 4 + 2, %arg5] {partition_indices = [2, 0], timing = #hls.t<19 -> 21, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, 0, d0 floordiv 4, d1)>>
          %229 = arith.mulf %arg0, %228 {timing = #hls.t<14 -> 19, 5, 1>} : f32
          %230 = arith.mulf %2, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %231 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32] {partition_indices = [2, 0], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %232 = arith.addf %230, %231 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %232, %arg4[%arg6 * 4 + 2, %arg7 * 32] {partition_indices = [2, 0], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %233 = arith.mulf %6, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %234 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 1] {partition_indices = [2, 1], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %235 = arith.addf %233, %234 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %235, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 1] {partition_indices = [2, 1], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %236 = arith.mulf %10, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %237 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 2] {partition_indices = [2, 2], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %238 = arith.addf %236, %237 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %238, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 2] {partition_indices = [2, 2], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %239 = arith.mulf %14, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %240 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 3] {partition_indices = [2, 3], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %241 = arith.addf %239, %240 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %241, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 3] {partition_indices = [2, 3], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %242 = arith.mulf %18, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %243 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 4] {partition_indices = [2, 4], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %244 = arith.addf %242, %243 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %244, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 4] {partition_indices = [2, 4], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %245 = arith.mulf %22, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %246 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 5] {partition_indices = [2, 5], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %247 = arith.addf %245, %246 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %247, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 5] {partition_indices = [2, 5], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %248 = arith.mulf %26, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %249 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 6] {partition_indices = [2, 6], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %250 = arith.addf %248, %249 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %250, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 6] {partition_indices = [2, 6], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %251 = arith.mulf %30, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %252 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 7] {partition_indices = [2, 7], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %253 = arith.addf %251, %252 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %253, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 7] {partition_indices = [2, 7], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %254 = arith.mulf %34, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %255 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 8] {partition_indices = [2, 8], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %256 = arith.addf %254, %255 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %256, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 8] {partition_indices = [2, 8], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %257 = arith.mulf %38, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %258 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 9] {partition_indices = [2, 9], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %259 = arith.addf %257, %258 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %259, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 9] {partition_indices = [2, 9], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %260 = arith.mulf %42, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %261 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 10] {partition_indices = [2, 10], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %262 = arith.addf %260, %261 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %262, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 10] {partition_indices = [2, 10], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %263 = arith.mulf %46, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %264 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 11] {partition_indices = [2, 11], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %265 = arith.addf %263, %264 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %265, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 11] {partition_indices = [2, 11], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %266 = arith.mulf %50, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %267 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 12] {partition_indices = [2, 12], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %268 = arith.addf %266, %267 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %268, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 12] {partition_indices = [2, 12], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %269 = arith.mulf %54, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %270 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 13] {partition_indices = [2, 13], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %271 = arith.addf %269, %270 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %271, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 13] {partition_indices = [2, 13], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %272 = arith.mulf %58, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %273 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 14] {partition_indices = [2, 14], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %274 = arith.addf %272, %273 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %274, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 14] {partition_indices = [2, 14], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %275 = arith.mulf %62, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %276 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 15] {partition_indices = [2, 15], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %277 = arith.addf %275, %276 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %277, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 15] {partition_indices = [2, 15], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %278 = arith.mulf %66, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %279 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 16] {partition_indices = [2, 16], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %280 = arith.addf %278, %279 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %280, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 16] {partition_indices = [2, 16], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %281 = arith.mulf %70, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %282 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 17] {partition_indices = [2, 17], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %283 = arith.addf %281, %282 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %283, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 17] {partition_indices = [2, 17], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %284 = arith.mulf %74, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %285 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 18] {partition_indices = [2, 18], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %286 = arith.addf %284, %285 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %286, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 18] {partition_indices = [2, 18], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %287 = arith.mulf %78, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %288 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 19] {partition_indices = [2, 19], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %289 = arith.addf %287, %288 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %289, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 19] {partition_indices = [2, 19], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %290 = arith.mulf %82, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %291 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 20] {partition_indices = [2, 20], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %292 = arith.addf %290, %291 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %292, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 20] {partition_indices = [2, 20], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %293 = arith.mulf %86, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %294 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 21] {partition_indices = [2, 21], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %295 = arith.addf %293, %294 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %295, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 21] {partition_indices = [2, 21], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %296 = arith.mulf %90, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %297 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 22] {partition_indices = [2, 22], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %298 = arith.addf %296, %297 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %298, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 22] {partition_indices = [2, 22], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %299 = arith.mulf %94, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %300 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 23] {partition_indices = [2, 23], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %301 = arith.addf %299, %300 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %301, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 23] {partition_indices = [2, 23], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %302 = arith.mulf %98, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %303 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 24] {partition_indices = [2, 24], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %304 = arith.addf %302, %303 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %304, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 24] {partition_indices = [2, 24], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %305 = arith.mulf %102, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %306 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 25] {partition_indices = [2, 25], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %307 = arith.addf %305, %306 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %307, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 25] {partition_indices = [2, 25], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %308 = arith.mulf %106, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %309 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 26] {partition_indices = [2, 26], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %310 = arith.addf %308, %309 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %310, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 26] {partition_indices = [2, 26], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %311 = arith.mulf %110, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %312 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 27] {partition_indices = [2, 27], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %313 = arith.addf %311, %312 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %313, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 27] {partition_indices = [2, 27], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %314 = arith.mulf %114, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %315 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 28] {partition_indices = [2, 28], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %316 = arith.addf %314, %315 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %316, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 28] {partition_indices = [2, 28], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %317 = arith.mulf %118, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %318 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 29] {partition_indices = [2, 29], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %319 = arith.addf %317, %318 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %319, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 29] {partition_indices = [2, 29], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %320 = arith.mulf %122, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %321 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 30] {partition_indices = [2, 30], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %322 = arith.addf %320, %321 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %322, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 30] {partition_indices = [2, 30], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %323 = arith.mulf %126, %229 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %324 = affine.load %arg4[%arg6 * 4 + 2, %arg7 * 32 + 31] {partition_indices = [2, 31], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %325 = arith.addf %323, %324 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %325, %arg4[%arg6 * 4 + 2, %arg7 * 32 + 31] {partition_indices = [2, 31], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %326 = affine.load %arg2[%arg6 * 4 + 3, %arg5] {partition_indices = [3, 0], timing = #hls.t<19 -> 21, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, 0, d0 floordiv 4, d1)>>
          %327 = arith.mulf %arg0, %326 {timing = #hls.t<14 -> 19, 5, 1>} : f32
          %328 = arith.mulf %2, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %329 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32] {partition_indices = [3, 0], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %330 = arith.addf %328, %329 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %330, %arg4[%arg6 * 4 + 3, %arg7 * 32] {partition_indices = [3, 0], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %331 = arith.mulf %6, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %332 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 1] {partition_indices = [3, 1], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %333 = arith.addf %331, %332 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %333, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 1] {partition_indices = [3, 1], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %334 = arith.mulf %10, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %335 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 2] {partition_indices = [3, 2], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %336 = arith.addf %334, %335 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %336, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 2] {partition_indices = [3, 2], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %337 = arith.mulf %14, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %338 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 3] {partition_indices = [3, 3], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %339 = arith.addf %337, %338 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %339, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 3] {partition_indices = [3, 3], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %340 = arith.mulf %18, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %341 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 4] {partition_indices = [3, 4], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %342 = arith.addf %340, %341 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %342, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 4] {partition_indices = [3, 4], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %343 = arith.mulf %22, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %344 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 5] {partition_indices = [3, 5], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %345 = arith.addf %343, %344 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %345, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 5] {partition_indices = [3, 5], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %346 = arith.mulf %26, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %347 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 6] {partition_indices = [3, 6], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %348 = arith.addf %346, %347 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %348, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 6] {partition_indices = [3, 6], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %349 = arith.mulf %30, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %350 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 7] {partition_indices = [3, 7], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %351 = arith.addf %349, %350 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %351, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 7] {partition_indices = [3, 7], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %352 = arith.mulf %34, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %353 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 8] {partition_indices = [3, 8], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %354 = arith.addf %352, %353 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %354, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 8] {partition_indices = [3, 8], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %355 = arith.mulf %38, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %356 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 9] {partition_indices = [3, 9], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %357 = arith.addf %355, %356 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %357, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 9] {partition_indices = [3, 9], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %358 = arith.mulf %42, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %359 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 10] {partition_indices = [3, 10], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %360 = arith.addf %358, %359 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %360, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 10] {partition_indices = [3, 10], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %361 = arith.mulf %46, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %362 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 11] {partition_indices = [3, 11], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %363 = arith.addf %361, %362 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %363, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 11] {partition_indices = [3, 11], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %364 = arith.mulf %50, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %365 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 12] {partition_indices = [3, 12], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %366 = arith.addf %364, %365 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %366, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 12] {partition_indices = [3, 12], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %367 = arith.mulf %54, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %368 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 13] {partition_indices = [3, 13], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %369 = arith.addf %367, %368 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %369, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 13] {partition_indices = [3, 13], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %370 = arith.mulf %58, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %371 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 14] {partition_indices = [3, 14], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %372 = arith.addf %370, %371 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %372, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 14] {partition_indices = [3, 14], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %373 = arith.mulf %62, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %374 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 15] {partition_indices = [3, 15], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %375 = arith.addf %373, %374 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %375, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 15] {partition_indices = [3, 15], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %376 = arith.mulf %66, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %377 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 16] {partition_indices = [3, 16], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %378 = arith.addf %376, %377 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %378, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 16] {partition_indices = [3, 16], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %379 = arith.mulf %70, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %380 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 17] {partition_indices = [3, 17], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %381 = arith.addf %379, %380 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %381, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 17] {partition_indices = [3, 17], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %382 = arith.mulf %74, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %383 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 18] {partition_indices = [3, 18], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %384 = arith.addf %382, %383 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %384, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 18] {partition_indices = [3, 18], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %385 = arith.mulf %78, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %386 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 19] {partition_indices = [3, 19], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %387 = arith.addf %385, %386 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %387, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 19] {partition_indices = [3, 19], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %388 = arith.mulf %82, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %389 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 20] {partition_indices = [3, 20], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %390 = arith.addf %388, %389 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %390, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 20] {partition_indices = [3, 20], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %391 = arith.mulf %86, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %392 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 21] {partition_indices = [3, 21], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %393 = arith.addf %391, %392 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %393, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 21] {partition_indices = [3, 21], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %394 = arith.mulf %90, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %395 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 22] {partition_indices = [3, 22], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %396 = arith.addf %394, %395 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %396, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 22] {partition_indices = [3, 22], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %397 = arith.mulf %94, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %398 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 23] {partition_indices = [3, 23], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %399 = arith.addf %397, %398 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %399, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 23] {partition_indices = [3, 23], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %400 = arith.mulf %98, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %401 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 24] {partition_indices = [3, 24], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %402 = arith.addf %400, %401 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %402, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 24] {partition_indices = [3, 24], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %403 = arith.mulf %102, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %404 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 25] {partition_indices = [3, 25], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %405 = arith.addf %403, %404 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %405, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 25] {partition_indices = [3, 25], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %406 = arith.mulf %106, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %407 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 26] {partition_indices = [3, 26], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %408 = arith.addf %406, %407 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %408, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 26] {partition_indices = [3, 26], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %409 = arith.mulf %110, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %410 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 27] {partition_indices = [3, 27], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %411 = arith.addf %409, %410 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %411, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 27] {partition_indices = [3, 27], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %412 = arith.mulf %114, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %413 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 28] {partition_indices = [3, 28], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %414 = arith.addf %412, %413 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %414, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 28] {partition_indices = [3, 28], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %415 = arith.mulf %118, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %416 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 29] {partition_indices = [3, 29], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %417 = arith.addf %415, %416 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %417, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 29] {partition_indices = [3, 29], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %418 = arith.mulf %122, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %419 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 30] {partition_indices = [3, 30], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %420 = arith.addf %418, %419 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %420, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 30] {partition_indices = [3, 30], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %421 = arith.mulf %126, %327 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %422 = affine.load %arg4[%arg6 * 4 + 3, %arg7 * 32 + 31] {partition_indices = [3, 31], timing = #hls.t<9 -> 11, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
          %423 = arith.addf %421, %422 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %423, %arg4[%arg6 * 4 + 3, %arg7 * 32 + 31] {partition_indices = [3, 31], timing = #hls.t<0 -> 1, 1, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 32, d0 floordiv 4, d1 floordiv 32)>>
        } {loop_directive = #hls.ld<pipeline=true, targetII=3, dataflow=false, flatten=false>, loop_info = #hls.l<flattenTripCount=16, iterLatency=21, minII=3>, parallel, timing = #hls.t<0 -> 68, 68, 68>}
      } {loop_directive = #hls.ld<pipeline=false, targetII=3, dataflow=false, flatten=true>, loop_info = #hls.l<flattenTripCount=2048, iterLatency=21, minII=3>, parallel, timing = #hls.t<0 -> 6164, 6164, 6164>}
    } {loop_directive = #hls.ld<pipeline=false, targetII=3, dataflow=false, flatten=true>, loop_info = #hls.l<flattenTripCount=1048576, iterLatency=21, minII=3>, resource = #hls.r<lut=0, dsp=218, bram=0>, timing = #hls.t<0 -> 3145748, 3145748, 3145748>}
    return
  }
}