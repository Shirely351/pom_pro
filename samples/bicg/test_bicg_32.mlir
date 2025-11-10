module {
  func @test_bicg_32(%arg0: memref<32x32xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 16, d0 floordiv 16, d1 floordiv 16)>>, %arg1: memref<32xf32, affine_map<(d0) -> (0, d0)>>, %arg2: memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>, %arg3: memref<32xf32, affine_map<(d0) -> (0, d0)>>, %arg4: memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>) attributes {resource = #hls.r<lut=0, dsp=5, bram=0>, timing = #hls.t<0 -> 6146, 6146, 6146>, top_func} {
    affine.for %arg5 = 0 to 32 {
      affine.for %arg6 = 0 to 4 {
        %0 = affine.load %arg0[%arg5, %arg6 * 8] {max_mux_size = 16 : i64, partition_indices = [-1, -1], timing = #hls.t<44 -> 46, 2, 1>} : memref<32x32xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 16, d0 floordiv 16, d1 floordiv 16)>>
        %1 = affine.load %arg3[%arg5] {partition_indices = [0], timing = #hls.t<14 -> 16, 2, 1>} : memref<32xf32, affine_map<(d0) -> (0, d0)>>
        %2 = arith.mulf %0, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
        %3 = affine.load %arg4[%arg6 * 8] {partition_indices = [0], timing = #hls.t<9 -> 11, 2, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %4 = arith.addf %2, %3 {timing = #hls.t<1 -> 9, 8, 1>} : f32
        affine.store %4, %arg4[%arg6 * 8] {partition_indices = [0], timing = #hls.t<0 -> 1, 1, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %5 = affine.load %arg0[%arg6 * 8, %arg5] {max_mux_size = 16 : i64, partition_indices = [-1, -1], timing = #hls.t<42 -> 44, 2, 1>} : memref<32x32xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 16, d0 floordiv 16, d1 floordiv 16)>>
        %6 = affine.load %arg1[%arg5] {partition_indices = [0], timing = #hls.t<14 -> 16, 2, 1>} : memref<32xf32, affine_map<(d0) -> (0, d0)>>
        %7 = arith.mulf %5, %6 {timing = #hls.t<9 -> 14, 5, 1>} : f32
        %8 = affine.load %arg2[%arg6 * 8] {partition_indices = [0], timing = #hls.t<9 -> 11, 2, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %9 = arith.addf %7, %8 {timing = #hls.t<1 -> 9, 8, 1>} : f32
        affine.store %9, %arg2[%arg6 * 8] {partition_indices = [0], timing = #hls.t<0 -> 1, 1, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %10 = affine.load %arg0[%arg5, %arg6 * 8 + 1] {max_mux_size = 16 : i64, partition_indices = [-1, -1], timing = #hls.t<40 -> 42, 2, 1>} : memref<32x32xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 16, d0 floordiv 16, d1 floordiv 16)>>
        %11 = arith.mulf %10, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
        %12 = affine.load %arg4[%arg6 * 8 + 1] {partition_indices = [1], timing = #hls.t<9 -> 11, 2, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %13 = arith.addf %11, %12 {timing = #hls.t<1 -> 9, 8, 1>} : f32
        affine.store %13, %arg4[%arg6 * 8 + 1] {partition_indices = [1], timing = #hls.t<0 -> 1, 1, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %14 = affine.load %arg0[%arg6 * 8 + 1, %arg5] {max_mux_size = 16 : i64, partition_indices = [-1, -1], timing = #hls.t<38 -> 40, 2, 1>} : memref<32x32xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 16, d0 floordiv 16, d1 floordiv 16)>>
        %15 = arith.mulf %14, %6 {timing = #hls.t<9 -> 14, 5, 1>} : f32
        %16 = affine.load %arg2[%arg6 * 8 + 1] {partition_indices = [1], timing = #hls.t<9 -> 11, 2, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %17 = arith.addf %15, %16 {timing = #hls.t<1 -> 9, 8, 1>} : f32
        affine.store %17, %arg2[%arg6 * 8 + 1] {partition_indices = [1], timing = #hls.t<0 -> 1, 1, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %18 = affine.load %arg0[%arg5, %arg6 * 8 + 2] {max_mux_size = 16 : i64, partition_indices = [-1, -1], timing = #hls.t<36 -> 38, 2, 1>} : memref<32x32xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 16, d0 floordiv 16, d1 floordiv 16)>>
        %19 = arith.mulf %18, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
        %20 = affine.load %arg4[%arg6 * 8 + 2] {partition_indices = [2], timing = #hls.t<9 -> 11, 2, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %21 = arith.addf %19, %20 {timing = #hls.t<1 -> 9, 8, 1>} : f32
        affine.store %21, %arg4[%arg6 * 8 + 2] {partition_indices = [2], timing = #hls.t<0 -> 1, 1, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %22 = affine.load %arg0[%arg6 * 8 + 2, %arg5] {max_mux_size = 16 : i64, partition_indices = [-1, -1], timing = #hls.t<34 -> 36, 2, 1>} : memref<32x32xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 16, d0 floordiv 16, d1 floordiv 16)>>
        %23 = arith.mulf %22, %6 {timing = #hls.t<9 -> 14, 5, 1>} : f32
        %24 = affine.load %arg2[%arg6 * 8 + 2] {partition_indices = [2], timing = #hls.t<9 -> 11, 2, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %25 = arith.addf %23, %24 {timing = #hls.t<1 -> 9, 8, 1>} : f32
        affine.store %25, %arg2[%arg6 * 8 + 2] {partition_indices = [2], timing = #hls.t<0 -> 1, 1, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %26 = affine.load %arg0[%arg5, %arg6 * 8 + 3] {max_mux_size = 16 : i64, partition_indices = [-1, -1], timing = #hls.t<32 -> 34, 2, 1>} : memref<32x32xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 16, d0 floordiv 16, d1 floordiv 16)>>
        %27 = arith.mulf %26, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
        %28 = affine.load %arg4[%arg6 * 8 + 3] {partition_indices = [3], timing = #hls.t<9 -> 11, 2, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %29 = arith.addf %27, %28 {timing = #hls.t<1 -> 9, 8, 1>} : f32
        affine.store %29, %arg4[%arg6 * 8 + 3] {partition_indices = [3], timing = #hls.t<0 -> 1, 1, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %30 = affine.load %arg0[%arg6 * 8 + 3, %arg5] {max_mux_size = 16 : i64, partition_indices = [-1, -1], timing = #hls.t<30 -> 32, 2, 1>} : memref<32x32xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 16, d0 floordiv 16, d1 floordiv 16)>>
        %31 = arith.mulf %30, %6 {timing = #hls.t<9 -> 14, 5, 1>} : f32
        %32 = affine.load %arg2[%arg6 * 8 + 3] {partition_indices = [3], timing = #hls.t<9 -> 11, 2, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %33 = arith.addf %31, %32 {timing = #hls.t<1 -> 9, 8, 1>} : f32
        affine.store %33, %arg2[%arg6 * 8 + 3] {partition_indices = [3], timing = #hls.t<0 -> 1, 1, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %34 = affine.load %arg0[%arg5, %arg6 * 8 + 4] {max_mux_size = 16 : i64, partition_indices = [-1, -1], timing = #hls.t<28 -> 30, 2, 1>} : memref<32x32xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 16, d0 floordiv 16, d1 floordiv 16)>>
        %35 = arith.mulf %34, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
        %36 = affine.load %arg4[%arg6 * 8 + 4] {partition_indices = [4], timing = #hls.t<9 -> 11, 2, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %37 = arith.addf %35, %36 {timing = #hls.t<1 -> 9, 8, 1>} : f32
        affine.store %37, %arg4[%arg6 * 8 + 4] {partition_indices = [4], timing = #hls.t<0 -> 1, 1, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %38 = affine.load %arg0[%arg6 * 8 + 4, %arg5] {max_mux_size = 16 : i64, partition_indices = [-1, -1], timing = #hls.t<26 -> 28, 2, 1>} : memref<32x32xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 16, d0 floordiv 16, d1 floordiv 16)>>
        %39 = arith.mulf %38, %6 {timing = #hls.t<9 -> 14, 5, 1>} : f32
        %40 = affine.load %arg2[%arg6 * 8 + 4] {partition_indices = [4], timing = #hls.t<9 -> 11, 2, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %41 = arith.addf %39, %40 {timing = #hls.t<1 -> 9, 8, 1>} : f32
        affine.store %41, %arg2[%arg6 * 8 + 4] {partition_indices = [4], timing = #hls.t<0 -> 1, 1, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %42 = affine.load %arg0[%arg5, %arg6 * 8 + 5] {max_mux_size = 16 : i64, partition_indices = [-1, -1], timing = #hls.t<24 -> 26, 2, 1>} : memref<32x32xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 16, d0 floordiv 16, d1 floordiv 16)>>
        %43 = arith.mulf %42, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
        %44 = affine.load %arg4[%arg6 * 8 + 5] {partition_indices = [5], timing = #hls.t<9 -> 11, 2, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %45 = arith.addf %43, %44 {timing = #hls.t<1 -> 9, 8, 1>} : f32
        affine.store %45, %arg4[%arg6 * 8 + 5] {partition_indices = [5], timing = #hls.t<0 -> 1, 1, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %46 = affine.load %arg0[%arg6 * 8 + 5, %arg5] {max_mux_size = 16 : i64, partition_indices = [-1, -1], timing = #hls.t<22 -> 24, 2, 1>} : memref<32x32xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 16, d0 floordiv 16, d1 floordiv 16)>>
        %47 = arith.mulf %46, %6 {timing = #hls.t<9 -> 14, 5, 1>} : f32
        %48 = affine.load %arg2[%arg6 * 8 + 5] {partition_indices = [5], timing = #hls.t<9 -> 11, 2, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %49 = arith.addf %47, %48 {timing = #hls.t<1 -> 9, 8, 1>} : f32
        affine.store %49, %arg2[%arg6 * 8 + 5] {partition_indices = [5], timing = #hls.t<0 -> 1, 1, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %50 = affine.load %arg0[%arg5, %arg6 * 8 + 6] {max_mux_size = 16 : i64, partition_indices = [-1, -1], timing = #hls.t<20 -> 22, 2, 1>} : memref<32x32xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 16, d0 floordiv 16, d1 floordiv 16)>>
        %51 = arith.mulf %50, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
        %52 = affine.load %arg4[%arg6 * 8 + 6] {partition_indices = [6], timing = #hls.t<9 -> 11, 2, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %53 = arith.addf %51, %52 {timing = #hls.t<1 -> 9, 8, 1>} : f32
        affine.store %53, %arg4[%arg6 * 8 + 6] {partition_indices = [6], timing = #hls.t<0 -> 1, 1, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %54 = affine.load %arg0[%arg6 * 8 + 6, %arg5] {max_mux_size = 16 : i64, partition_indices = [-1, -1], timing = #hls.t<18 -> 20, 2, 1>} : memref<32x32xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 16, d0 floordiv 16, d1 floordiv 16)>>
        %55 = arith.mulf %54, %6 {timing = #hls.t<9 -> 14, 5, 1>} : f32
        %56 = affine.load %arg2[%arg6 * 8 + 6] {partition_indices = [6], timing = #hls.t<9 -> 11, 2, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %57 = arith.addf %55, %56 {timing = #hls.t<1 -> 9, 8, 1>} : f32
        affine.store %57, %arg2[%arg6 * 8 + 6] {partition_indices = [6], timing = #hls.t<0 -> 1, 1, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %58 = affine.load %arg0[%arg5, %arg6 * 8 + 7] {max_mux_size = 16 : i64, partition_indices = [-1, -1], timing = #hls.t<16 -> 18, 2, 1>} : memref<32x32xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 16, d0 floordiv 16, d1 floordiv 16)>>
        %59 = arith.mulf %58, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
        %60 = affine.load %arg4[%arg6 * 8 + 7] {partition_indices = [7], timing = #hls.t<9 -> 11, 2, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %61 = arith.addf %59, %60 {timing = #hls.t<1 -> 9, 8, 1>} : f32
        affine.store %61, %arg4[%arg6 * 8 + 7] {partition_indices = [7], timing = #hls.t<0 -> 1, 1, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %62 = affine.load %arg0[%arg6 * 8 + 7, %arg5] {max_mux_size = 16 : i64, partition_indices = [-1, -1], timing = #hls.t<14 -> 16, 2, 1>} : memref<32x32xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 16, d0 floordiv 16, d1 floordiv 16)>>
        %63 = arith.mulf %62, %6 {timing = #hls.t<9 -> 14, 5, 1>} : f32
        %64 = affine.load %arg2[%arg6 * 8 + 7] {partition_indices = [7], timing = #hls.t<9 -> 11, 2, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
        %65 = arith.addf %63, %64 {timing = #hls.t<1 -> 9, 8, 1>} : f32
        affine.store %65, %arg2[%arg6 * 8 + 7] {partition_indices = [7], timing = #hls.t<0 -> 1, 1, 1>} : memref<32xf32, affine_map<(d0) -> (d0 mod 8, d0 floordiv 8)>>
      } {loop_directive = #hls.ld<pipeline=true, targetII=48, dataflow=false, flatten=false>, loop_info = #hls.l<flattenTripCount=4, iterLatency=46, minII=48>, parallel, timing = #hls.t<0 -> 192, 192, 192>}
    } {loop_directive = #hls.ld<pipeline=false, targetII=48, dataflow=false, flatten=true>, loop_info = #hls.l<flattenTripCount=128, iterLatency=46, minII=48>, resource = #hls.r<lut=0, dsp=5, bram=0>, timing = #hls.t<0 -> 6144, 6144, 6144>}
    return
  }
}