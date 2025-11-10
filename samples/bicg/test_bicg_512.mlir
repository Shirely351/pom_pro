module {
  func @test_bicg_512(%arg0: memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>, %arg1: memref<512xf32, affine_map<(d0) -> (0, d0)>>, %arg2: memref<512xf32, affine_map<(d0) -> (0, d0)>>, %arg3: memref<512xf32>, %arg4: memref<512xf32>) attributes {resource = #hls.r<lut=0, dsp=5, bram=0>, timing = #hls.t<0 -> 263116, 263116, 263116>, top_func} {
    affine.for %arg5 = 0 to 256 {
      affine.for %arg6 = 0 to 16 {
        %0 = affine.load %arg0[%arg5 * 2, %arg6 * 32] {max_mux_size = 16 : i64, partition_indices = [-1, 0], timing = #hls.t<1030 -> 1032, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %1 = affine.load %arg3[%arg5 * 2] {partition_indices = [0], timing = #hls.t<77 -> 79, 2, 1>} : memref<512xf32>
        %2 = arith.mulf %0, %1 {timing = #hls.t<72 -> 77, 5, 1>} : f32
        %3 = affine.load %arg4[%arg6 * 32] {partition_indices = [0], timing = #hls.t<72 -> 74, 2, 1>} : memref<512xf32>
        %4 = arith.addf %2, %3 {timing = #hls.t<64 -> 72, 8, 1>} : f32
        affine.store %4, %arg4[%arg6 * 32] {partition_indices = [0], timing = #hls.t<63 -> 64, 1, 1>} : memref<512xf32>
        %5 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 1] {max_mux_size = 16 : i64, partition_indices = [-1, 1], timing = #hls.t<515 -> 517, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %6 = arith.mulf %5, %1 {timing = #hls.t<71 -> 76, 5, 1>} : f32
        %7 = affine.load %arg4[%arg6 * 32 + 1] {partition_indices = [0], timing = #hls.t<71 -> 73, 2, 1>} : memref<512xf32>
        %8 = arith.addf %6, %7 {timing = #hls.t<63 -> 71, 8, 1>} : f32
        affine.store %8, %arg4[%arg6 * 32 + 1] {partition_indices = [0], timing = #hls.t<62 -> 63, 1, 1>} : memref<512xf32>
        %9 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 2] {max_mux_size = 16 : i64, partition_indices = [-1, 2], timing = #hls.t<1030 -> 1032, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %10 = arith.mulf %9, %1 {timing = #hls.t<70 -> 75, 5, 1>} : f32
        %11 = affine.load %arg4[%arg6 * 32 + 2] {partition_indices = [0], timing = #hls.t<70 -> 72, 2, 1>} : memref<512xf32>
        %12 = arith.addf %10, %11 {timing = #hls.t<62 -> 70, 8, 1>} : f32
        affine.store %12, %arg4[%arg6 * 32 + 2] {partition_indices = [0], timing = #hls.t<61 -> 62, 1, 1>} : memref<512xf32>
        %13 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 3] {max_mux_size = 16 : i64, partition_indices = [-1, 3], timing = #hls.t<515 -> 517, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %14 = arith.mulf %13, %1 {timing = #hls.t<69 -> 74, 5, 1>} : f32
        %15 = affine.load %arg4[%arg6 * 32 + 3] {partition_indices = [0], timing = #hls.t<69 -> 71, 2, 1>} : memref<512xf32>
        %16 = arith.addf %14, %15 {timing = #hls.t<61 -> 69, 8, 1>} : f32
        affine.store %16, %arg4[%arg6 * 32 + 3] {partition_indices = [0], timing = #hls.t<60 -> 61, 1, 1>} : memref<512xf32>
        %17 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 4] {max_mux_size = 16 : i64, partition_indices = [-1, 4], timing = #hls.t<1030 -> 1032, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %18 = arith.mulf %17, %1 {timing = #hls.t<68 -> 73, 5, 1>} : f32
        %19 = affine.load %arg4[%arg6 * 32 + 4] {partition_indices = [0], timing = #hls.t<68 -> 70, 2, 1>} : memref<512xf32>
        %20 = arith.addf %18, %19 {timing = #hls.t<60 -> 68, 8, 1>} : f32
        affine.store %20, %arg4[%arg6 * 32 + 4] {partition_indices = [0], timing = #hls.t<59 -> 60, 1, 1>} : memref<512xf32>
        %21 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 5] {max_mux_size = 16 : i64, partition_indices = [-1, 5], timing = #hls.t<515 -> 517, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %22 = arith.mulf %21, %1 {timing = #hls.t<67 -> 72, 5, 1>} : f32
        %23 = affine.load %arg4[%arg6 * 32 + 5] {partition_indices = [0], timing = #hls.t<67 -> 69, 2, 1>} : memref<512xf32>
        %24 = arith.addf %22, %23 {timing = #hls.t<59 -> 67, 8, 1>} : f32
        affine.store %24, %arg4[%arg6 * 32 + 5] {partition_indices = [0], timing = #hls.t<58 -> 59, 1, 1>} : memref<512xf32>
        %25 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 6] {max_mux_size = 16 : i64, partition_indices = [-1, 6], timing = #hls.t<1030 -> 1032, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %26 = arith.mulf %25, %1 {timing = #hls.t<66 -> 71, 5, 1>} : f32
        %27 = affine.load %arg4[%arg6 * 32 + 6] {partition_indices = [0], timing = #hls.t<66 -> 68, 2, 1>} : memref<512xf32>
        %28 = arith.addf %26, %27 {timing = #hls.t<58 -> 66, 8, 1>} : f32
        affine.store %28, %arg4[%arg6 * 32 + 6] {partition_indices = [0], timing = #hls.t<57 -> 58, 1, 1>} : memref<512xf32>
        %29 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 7] {max_mux_size = 16 : i64, partition_indices = [-1, 7], timing = #hls.t<515 -> 517, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %30 = arith.mulf %29, %1 {timing = #hls.t<65 -> 70, 5, 1>} : f32
        %31 = affine.load %arg4[%arg6 * 32 + 7] {partition_indices = [0], timing = #hls.t<65 -> 67, 2, 1>} : memref<512xf32>
        %32 = arith.addf %30, %31 {timing = #hls.t<57 -> 65, 8, 1>} : f32
        affine.store %32, %arg4[%arg6 * 32 + 7] {partition_indices = [0], timing = #hls.t<56 -> 57, 1, 1>} : memref<512xf32>
        %33 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 8] {max_mux_size = 16 : i64, partition_indices = [-1, 8], timing = #hls.t<1030 -> 1032, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %34 = arith.mulf %33, %1 {timing = #hls.t<64 -> 69, 5, 1>} : f32
        %35 = affine.load %arg4[%arg6 * 32 + 8] {partition_indices = [0], timing = #hls.t<64 -> 66, 2, 1>} : memref<512xf32>
        %36 = arith.addf %34, %35 {timing = #hls.t<56 -> 64, 8, 1>} : f32
        affine.store %36, %arg4[%arg6 * 32 + 8] {partition_indices = [0], timing = #hls.t<55 -> 56, 1, 1>} : memref<512xf32>
        %37 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 9] {max_mux_size = 16 : i64, partition_indices = [-1, 9], timing = #hls.t<515 -> 517, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %38 = arith.mulf %37, %1 {timing = #hls.t<63 -> 68, 5, 1>} : f32
        %39 = affine.load %arg4[%arg6 * 32 + 9] {partition_indices = [0], timing = #hls.t<63 -> 65, 2, 1>} : memref<512xf32>
        %40 = arith.addf %38, %39 {timing = #hls.t<55 -> 63, 8, 1>} : f32
        affine.store %40, %arg4[%arg6 * 32 + 9] {partition_indices = [0], timing = #hls.t<54 -> 55, 1, 1>} : memref<512xf32>
        %41 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 10] {max_mux_size = 16 : i64, partition_indices = [-1, 10], timing = #hls.t<1030 -> 1032, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %42 = arith.mulf %41, %1 {timing = #hls.t<62 -> 67, 5, 1>} : f32
        %43 = affine.load %arg4[%arg6 * 32 + 10] {partition_indices = [0], timing = #hls.t<62 -> 64, 2, 1>} : memref<512xf32>
        %44 = arith.addf %42, %43 {timing = #hls.t<54 -> 62, 8, 1>} : f32
        affine.store %44, %arg4[%arg6 * 32 + 10] {partition_indices = [0], timing = #hls.t<53 -> 54, 1, 1>} : memref<512xf32>
        %45 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 11] {max_mux_size = 16 : i64, partition_indices = [-1, 11], timing = #hls.t<515 -> 517, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %46 = arith.mulf %45, %1 {timing = #hls.t<61 -> 66, 5, 1>} : f32
        %47 = affine.load %arg4[%arg6 * 32 + 11] {partition_indices = [0], timing = #hls.t<61 -> 63, 2, 1>} : memref<512xf32>
        %48 = arith.addf %46, %47 {timing = #hls.t<53 -> 61, 8, 1>} : f32
        affine.store %48, %arg4[%arg6 * 32 + 11] {partition_indices = [0], timing = #hls.t<52 -> 53, 1, 1>} : memref<512xf32>
        %49 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 12] {max_mux_size = 16 : i64, partition_indices = [-1, 12], timing = #hls.t<1030 -> 1032, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %50 = arith.mulf %49, %1 {timing = #hls.t<60 -> 65, 5, 1>} : f32
        %51 = affine.load %arg4[%arg6 * 32 + 12] {partition_indices = [0], timing = #hls.t<60 -> 62, 2, 1>} : memref<512xf32>
        %52 = arith.addf %50, %51 {timing = #hls.t<52 -> 60, 8, 1>} : f32
        affine.store %52, %arg4[%arg6 * 32 + 12] {partition_indices = [0], timing = #hls.t<51 -> 52, 1, 1>} : memref<512xf32>
        %53 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 13] {max_mux_size = 16 : i64, partition_indices = [-1, 13], timing = #hls.t<515 -> 517, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %54 = arith.mulf %53, %1 {timing = #hls.t<59 -> 64, 5, 1>} : f32
        %55 = affine.load %arg4[%arg6 * 32 + 13] {partition_indices = [0], timing = #hls.t<59 -> 61, 2, 1>} : memref<512xf32>
        %56 = arith.addf %54, %55 {timing = #hls.t<51 -> 59, 8, 1>} : f32
        affine.store %56, %arg4[%arg6 * 32 + 13] {partition_indices = [0], timing = #hls.t<50 -> 51, 1, 1>} : memref<512xf32>
        %57 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 14] {max_mux_size = 16 : i64, partition_indices = [-1, 14], timing = #hls.t<1030 -> 1032, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %58 = arith.mulf %57, %1 {timing = #hls.t<58 -> 63, 5, 1>} : f32
        %59 = affine.load %arg4[%arg6 * 32 + 14] {partition_indices = [0], timing = #hls.t<58 -> 60, 2, 1>} : memref<512xf32>
        %60 = arith.addf %58, %59 {timing = #hls.t<50 -> 58, 8, 1>} : f32
        affine.store %60, %arg4[%arg6 * 32 + 14] {partition_indices = [0], timing = #hls.t<49 -> 50, 1, 1>} : memref<512xf32>
        %61 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 15] {max_mux_size = 16 : i64, partition_indices = [-1, 15], timing = #hls.t<515 -> 517, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %62 = arith.mulf %61, %1 {timing = #hls.t<57 -> 62, 5, 1>} : f32
        %63 = affine.load %arg4[%arg6 * 32 + 15] {partition_indices = [0], timing = #hls.t<57 -> 59, 2, 1>} : memref<512xf32>
        %64 = arith.addf %62, %63 {timing = #hls.t<49 -> 57, 8, 1>} : f32
        affine.store %64, %arg4[%arg6 * 32 + 15] {partition_indices = [0], timing = #hls.t<48 -> 49, 1, 1>} : memref<512xf32>
        %65 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 16] {max_mux_size = 16 : i64, partition_indices = [-1, 16], timing = #hls.t<1030 -> 1032, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %66 = arith.mulf %65, %1 {timing = #hls.t<56 -> 61, 5, 1>} : f32
        %67 = affine.load %arg4[%arg6 * 32 + 16] {partition_indices = [0], timing = #hls.t<56 -> 58, 2, 1>} : memref<512xf32>
        %68 = arith.addf %66, %67 {timing = #hls.t<48 -> 56, 8, 1>} : f32
        affine.store %68, %arg4[%arg6 * 32 + 16] {partition_indices = [0], timing = #hls.t<47 -> 48, 1, 1>} : memref<512xf32>
        %69 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 17] {max_mux_size = 16 : i64, partition_indices = [-1, 17], timing = #hls.t<515 -> 517, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %70 = arith.mulf %69, %1 {timing = #hls.t<55 -> 60, 5, 1>} : f32
        %71 = affine.load %arg4[%arg6 * 32 + 17] {partition_indices = [0], timing = #hls.t<55 -> 57, 2, 1>} : memref<512xf32>
        %72 = arith.addf %70, %71 {timing = #hls.t<47 -> 55, 8, 1>} : f32
        affine.store %72, %arg4[%arg6 * 32 + 17] {partition_indices = [0], timing = #hls.t<46 -> 47, 1, 1>} : memref<512xf32>
        %73 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 18] {max_mux_size = 16 : i64, partition_indices = [-1, 18], timing = #hls.t<1030 -> 1032, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %74 = arith.mulf %73, %1 {timing = #hls.t<54 -> 59, 5, 1>} : f32
        %75 = affine.load %arg4[%arg6 * 32 + 18] {partition_indices = [0], timing = #hls.t<54 -> 56, 2, 1>} : memref<512xf32>
        %76 = arith.addf %74, %75 {timing = #hls.t<46 -> 54, 8, 1>} : f32
        affine.store %76, %arg4[%arg6 * 32 + 18] {partition_indices = [0], timing = #hls.t<45 -> 46, 1, 1>} : memref<512xf32>
        %77 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 19] {max_mux_size = 16 : i64, partition_indices = [-1, 19], timing = #hls.t<515 -> 517, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %78 = arith.mulf %77, %1 {timing = #hls.t<53 -> 58, 5, 1>} : f32
        %79 = affine.load %arg4[%arg6 * 32 + 19] {partition_indices = [0], timing = #hls.t<53 -> 55, 2, 1>} : memref<512xf32>
        %80 = arith.addf %78, %79 {timing = #hls.t<45 -> 53, 8, 1>} : f32
        affine.store %80, %arg4[%arg6 * 32 + 19] {partition_indices = [0], timing = #hls.t<44 -> 45, 1, 1>} : memref<512xf32>
        %81 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 20] {max_mux_size = 16 : i64, partition_indices = [-1, 20], timing = #hls.t<1030 -> 1032, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %82 = arith.mulf %81, %1 {timing = #hls.t<52 -> 57, 5, 1>} : f32
        %83 = affine.load %arg4[%arg6 * 32 + 20] {partition_indices = [0], timing = #hls.t<52 -> 54, 2, 1>} : memref<512xf32>
        %84 = arith.addf %82, %83 {timing = #hls.t<44 -> 52, 8, 1>} : f32
        affine.store %84, %arg4[%arg6 * 32 + 20] {partition_indices = [0], timing = #hls.t<43 -> 44, 1, 1>} : memref<512xf32>
        %85 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 21] {max_mux_size = 16 : i64, partition_indices = [-1, 21], timing = #hls.t<515 -> 517, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %86 = arith.mulf %85, %1 {timing = #hls.t<51 -> 56, 5, 1>} : f32
        %87 = affine.load %arg4[%arg6 * 32 + 21] {partition_indices = [0], timing = #hls.t<51 -> 53, 2, 1>} : memref<512xf32>
        %88 = arith.addf %86, %87 {timing = #hls.t<43 -> 51, 8, 1>} : f32
        affine.store %88, %arg4[%arg6 * 32 + 21] {partition_indices = [0], timing = #hls.t<42 -> 43, 1, 1>} : memref<512xf32>
        %89 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 22] {max_mux_size = 16 : i64, partition_indices = [-1, 22], timing = #hls.t<1030 -> 1032, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %90 = arith.mulf %89, %1 {timing = #hls.t<50 -> 55, 5, 1>} : f32
        %91 = affine.load %arg4[%arg6 * 32 + 22] {partition_indices = [0], timing = #hls.t<50 -> 52, 2, 1>} : memref<512xf32>
        %92 = arith.addf %90, %91 {timing = #hls.t<42 -> 50, 8, 1>} : f32
        affine.store %92, %arg4[%arg6 * 32 + 22] {partition_indices = [0], timing = #hls.t<41 -> 42, 1, 1>} : memref<512xf32>
        %93 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 23] {max_mux_size = 16 : i64, partition_indices = [-1, 23], timing = #hls.t<515 -> 517, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %94 = arith.mulf %93, %1 {timing = #hls.t<49 -> 54, 5, 1>} : f32
        %95 = affine.load %arg4[%arg6 * 32 + 23] {partition_indices = [0], timing = #hls.t<49 -> 51, 2, 1>} : memref<512xf32>
        %96 = arith.addf %94, %95 {timing = #hls.t<41 -> 49, 8, 1>} : f32
        affine.store %96, %arg4[%arg6 * 32 + 23] {partition_indices = [0], timing = #hls.t<40 -> 41, 1, 1>} : memref<512xf32>
        %97 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 24] {max_mux_size = 16 : i64, partition_indices = [-1, 24], timing = #hls.t<1030 -> 1032, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %98 = arith.mulf %97, %1 {timing = #hls.t<48 -> 53, 5, 1>} : f32
        %99 = affine.load %arg4[%arg6 * 32 + 24] {partition_indices = [0], timing = #hls.t<48 -> 50, 2, 1>} : memref<512xf32>
        %100 = arith.addf %98, %99 {timing = #hls.t<40 -> 48, 8, 1>} : f32
        affine.store %100, %arg4[%arg6 * 32 + 24] {partition_indices = [0], timing = #hls.t<39 -> 40, 1, 1>} : memref<512xf32>
        %101 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 25] {max_mux_size = 16 : i64, partition_indices = [-1, 25], timing = #hls.t<515 -> 517, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %102 = arith.mulf %101, %1 {timing = #hls.t<47 -> 52, 5, 1>} : f32
        %103 = affine.load %arg4[%arg6 * 32 + 25] {partition_indices = [0], timing = #hls.t<47 -> 49, 2, 1>} : memref<512xf32>
        %104 = arith.addf %102, %103 {timing = #hls.t<39 -> 47, 8, 1>} : f32
        affine.store %104, %arg4[%arg6 * 32 + 25] {partition_indices = [0], timing = #hls.t<38 -> 39, 1, 1>} : memref<512xf32>
        %105 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 26] {max_mux_size = 16 : i64, partition_indices = [-1, 26], timing = #hls.t<1030 -> 1032, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %106 = arith.mulf %105, %1 {timing = #hls.t<46 -> 51, 5, 1>} : f32
        %107 = affine.load %arg4[%arg6 * 32 + 26] {partition_indices = [0], timing = #hls.t<46 -> 48, 2, 1>} : memref<512xf32>
        %108 = arith.addf %106, %107 {timing = #hls.t<38 -> 46, 8, 1>} : f32
        affine.store %108, %arg4[%arg6 * 32 + 26] {partition_indices = [0], timing = #hls.t<37 -> 38, 1, 1>} : memref<512xf32>
        %109 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 27] {max_mux_size = 16 : i64, partition_indices = [-1, 27], timing = #hls.t<515 -> 517, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %110 = arith.mulf %109, %1 {timing = #hls.t<45 -> 50, 5, 1>} : f32
        %111 = affine.load %arg4[%arg6 * 32 + 27] {partition_indices = [0], timing = #hls.t<45 -> 47, 2, 1>} : memref<512xf32>
        %112 = arith.addf %110, %111 {timing = #hls.t<37 -> 45, 8, 1>} : f32
        affine.store %112, %arg4[%arg6 * 32 + 27] {partition_indices = [0], timing = #hls.t<36 -> 37, 1, 1>} : memref<512xf32>
        %113 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 28] {max_mux_size = 16 : i64, partition_indices = [-1, 28], timing = #hls.t<1030 -> 1032, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %114 = arith.mulf %113, %1 {timing = #hls.t<44 -> 49, 5, 1>} : f32
        %115 = affine.load %arg4[%arg6 * 32 + 28] {partition_indices = [0], timing = #hls.t<44 -> 46, 2, 1>} : memref<512xf32>
        %116 = arith.addf %114, %115 {timing = #hls.t<36 -> 44, 8, 1>} : f32
        affine.store %116, %arg4[%arg6 * 32 + 28] {partition_indices = [0], timing = #hls.t<35 -> 36, 1, 1>} : memref<512xf32>
        %117 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 29] {max_mux_size = 16 : i64, partition_indices = [-1, 29], timing = #hls.t<515 -> 517, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %118 = arith.mulf %117, %1 {timing = #hls.t<43 -> 48, 5, 1>} : f32
        %119 = affine.load %arg4[%arg6 * 32 + 29] {partition_indices = [0], timing = #hls.t<43 -> 45, 2, 1>} : memref<512xf32>
        %120 = arith.addf %118, %119 {timing = #hls.t<35 -> 43, 8, 1>} : f32
        affine.store %120, %arg4[%arg6 * 32 + 29] {partition_indices = [0], timing = #hls.t<34 -> 35, 1, 1>} : memref<512xf32>
        %121 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 30] {max_mux_size = 16 : i64, partition_indices = [-1, 30], timing = #hls.t<1030 -> 1032, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %122 = arith.mulf %121, %1 {timing = #hls.t<42 -> 47, 5, 1>} : f32
        %123 = affine.load %arg4[%arg6 * 32 + 30] {partition_indices = [0], timing = #hls.t<42 -> 44, 2, 1>} : memref<512xf32>
        %124 = arith.addf %122, %123 {timing = #hls.t<34 -> 42, 8, 1>} : f32
        affine.store %124, %arg4[%arg6 * 32 + 30] {partition_indices = [0], timing = #hls.t<33 -> 34, 1, 1>} : memref<512xf32>
        %125 = affine.load %arg0[%arg5 * 2, %arg6 * 32 + 31] {max_mux_size = 16 : i64, partition_indices = [-1, 31], timing = #hls.t<515 -> 517, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %126 = arith.mulf %125, %1 {timing = #hls.t<41 -> 46, 5, 1>} : f32
        %127 = affine.load %arg4[%arg6 * 32 + 31] {partition_indices = [0], timing = #hls.t<41 -> 43, 2, 1>} : memref<512xf32>
        %128 = arith.addf %126, %127 {timing = #hls.t<33 -> 41, 8, 1>} : f32
        affine.store %128, %arg4[%arg6 * 32 + 31] {partition_indices = [0], timing = #hls.t<32 -> 33, 1, 1>} : memref<512xf32>
        affine.for %arg7 = 0 to 32 {
          %258 = affine.load %arg0[%arg7 + %arg6 * 32, %arg5 * 2] {max_mux_size = 32 : i64, partition_indices = [-1, -1], timing = #hls.t<530 -> 532, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
          %259 = affine.load %arg1[%arg5 * 2] {partition_indices = [0], timing = #hls.t<530 -> 532, 2, 1>} : memref<512xf32, affine_map<(d0) -> (0, d0)>>
          %260 = arith.mulf %258, %259 {timing = #hls.t<525 -> 530, 5, 1>} : f32
          %261 = affine.load %arg2[%arg7 + %arg6 * 32] {partition_indices = [0], timing = #hls.t<525 -> 527, 2, 1>} : memref<512xf32, affine_map<(d0) -> (0, d0)>>
          %262 = arith.addf %260, %261 {timing = #hls.t<517 -> 525, 8, 1>} : f32
          affine.store %262, %arg2[%arg7 + %arg6 * 32] {partition_indices = [0], timing = #hls.t<516 -> 517, 1, 1>} : memref<512xf32, affine_map<(d0) -> (0, d0)>>
        } {loop_info = #hls.l<flattenTripCount=32, iterLatency=16, minII=16>, parallel, timing = #hls.t<516 -> 1030, 514, 514>}
        %129 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32] {max_mux_size = 16 : i64, partition_indices = [-1, 0], timing = #hls.t<45 -> 47, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %130 = affine.load %arg3[%arg5 * 2 + 1] {partition_indices = [0], timing = #hls.t<45 -> 47, 2, 1>} : memref<512xf32>
        %131 = arith.mulf %129, %130 {timing = #hls.t<40 -> 45, 5, 1>} : f32
        %132 = affine.load %arg4[%arg6 * 32] {partition_indices = [0], timing = #hls.t<40 -> 42, 2, 1>} : memref<512xf32>
        %133 = arith.addf %131, %132 {timing = #hls.t<32 -> 40, 8, 1>} : f32
        affine.store %133, %arg4[%arg6 * 32] {partition_indices = [0], timing = #hls.t<31 -> 32, 1, 1>} : memref<512xf32>
        %134 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 1] {max_mux_size = 16 : i64, partition_indices = [-1, 1], timing = #hls.t<514 -> 516, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %135 = arith.mulf %134, %130 {timing = #hls.t<39 -> 44, 5, 1>} : f32
        %136 = affine.load %arg4[%arg6 * 32 + 1] {partition_indices = [0], timing = #hls.t<39 -> 41, 2, 1>} : memref<512xf32>
        %137 = arith.addf %135, %136 {timing = #hls.t<31 -> 39, 8, 1>} : f32
        affine.store %137, %arg4[%arg6 * 32 + 1] {partition_indices = [0], timing = #hls.t<30 -> 31, 1, 1>} : memref<512xf32>
        %138 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 2] {max_mux_size = 16 : i64, partition_indices = [-1, 2], timing = #hls.t<43 -> 45, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %139 = arith.mulf %138, %130 {timing = #hls.t<38 -> 43, 5, 1>} : f32
        %140 = affine.load %arg4[%arg6 * 32 + 2] {partition_indices = [0], timing = #hls.t<38 -> 40, 2, 1>} : memref<512xf32>
        %141 = arith.addf %139, %140 {timing = #hls.t<30 -> 38, 8, 1>} : f32
        affine.store %141, %arg4[%arg6 * 32 + 2] {partition_indices = [0], timing = #hls.t<29 -> 30, 1, 1>} : memref<512xf32>
        %142 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 3] {max_mux_size = 16 : i64, partition_indices = [-1, 3], timing = #hls.t<514 -> 516, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %143 = arith.mulf %142, %130 {timing = #hls.t<37 -> 42, 5, 1>} : f32
        %144 = affine.load %arg4[%arg6 * 32 + 3] {partition_indices = [0], timing = #hls.t<37 -> 39, 2, 1>} : memref<512xf32>
        %145 = arith.addf %143, %144 {timing = #hls.t<29 -> 37, 8, 1>} : f32
        affine.store %145, %arg4[%arg6 * 32 + 3] {partition_indices = [0], timing = #hls.t<28 -> 29, 1, 1>} : memref<512xf32>
        %146 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 4] {max_mux_size = 16 : i64, partition_indices = [-1, 4], timing = #hls.t<41 -> 43, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %147 = arith.mulf %146, %130 {timing = #hls.t<36 -> 41, 5, 1>} : f32
        %148 = affine.load %arg4[%arg6 * 32 + 4] {partition_indices = [0], timing = #hls.t<36 -> 38, 2, 1>} : memref<512xf32>
        %149 = arith.addf %147, %148 {timing = #hls.t<28 -> 36, 8, 1>} : f32
        affine.store %149, %arg4[%arg6 * 32 + 4] {partition_indices = [0], timing = #hls.t<27 -> 28, 1, 1>} : memref<512xf32>
        %150 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 5] {max_mux_size = 16 : i64, partition_indices = [-1, 5], timing = #hls.t<514 -> 516, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %151 = arith.mulf %150, %130 {timing = #hls.t<35 -> 40, 5, 1>} : f32
        %152 = affine.load %arg4[%arg6 * 32 + 5] {partition_indices = [0], timing = #hls.t<35 -> 37, 2, 1>} : memref<512xf32>
        %153 = arith.addf %151, %152 {timing = #hls.t<27 -> 35, 8, 1>} : f32
        affine.store %153, %arg4[%arg6 * 32 + 5] {partition_indices = [0], timing = #hls.t<26 -> 27, 1, 1>} : memref<512xf32>
        %154 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 6] {max_mux_size = 16 : i64, partition_indices = [-1, 6], timing = #hls.t<39 -> 41, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %155 = arith.mulf %154, %130 {timing = #hls.t<34 -> 39, 5, 1>} : f32
        %156 = affine.load %arg4[%arg6 * 32 + 6] {partition_indices = [0], timing = #hls.t<34 -> 36, 2, 1>} : memref<512xf32>
        %157 = arith.addf %155, %156 {timing = #hls.t<26 -> 34, 8, 1>} : f32
        affine.store %157, %arg4[%arg6 * 32 + 6] {partition_indices = [0], timing = #hls.t<25 -> 26, 1, 1>} : memref<512xf32>
        %158 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 7] {max_mux_size = 16 : i64, partition_indices = [-1, 7], timing = #hls.t<514 -> 516, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %159 = arith.mulf %158, %130 {timing = #hls.t<33 -> 38, 5, 1>} : f32
        %160 = affine.load %arg4[%arg6 * 32 + 7] {partition_indices = [0], timing = #hls.t<33 -> 35, 2, 1>} : memref<512xf32>
        %161 = arith.addf %159, %160 {timing = #hls.t<25 -> 33, 8, 1>} : f32
        affine.store %161, %arg4[%arg6 * 32 + 7] {partition_indices = [0], timing = #hls.t<24 -> 25, 1, 1>} : memref<512xf32>
        %162 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 8] {max_mux_size = 16 : i64, partition_indices = [-1, 8], timing = #hls.t<37 -> 39, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %163 = arith.mulf %162, %130 {timing = #hls.t<32 -> 37, 5, 1>} : f32
        %164 = affine.load %arg4[%arg6 * 32 + 8] {partition_indices = [0], timing = #hls.t<32 -> 34, 2, 1>} : memref<512xf32>
        %165 = arith.addf %163, %164 {timing = #hls.t<24 -> 32, 8, 1>} : f32
        affine.store %165, %arg4[%arg6 * 32 + 8] {partition_indices = [0], timing = #hls.t<23 -> 24, 1, 1>} : memref<512xf32>
        %166 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 9] {max_mux_size = 16 : i64, partition_indices = [-1, 9], timing = #hls.t<514 -> 516, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %167 = arith.mulf %166, %130 {timing = #hls.t<31 -> 36, 5, 1>} : f32
        %168 = affine.load %arg4[%arg6 * 32 + 9] {partition_indices = [0], timing = #hls.t<31 -> 33, 2, 1>} : memref<512xf32>
        %169 = arith.addf %167, %168 {timing = #hls.t<23 -> 31, 8, 1>} : f32
        affine.store %169, %arg4[%arg6 * 32 + 9] {partition_indices = [0], timing = #hls.t<22 -> 23, 1, 1>} : memref<512xf32>
        %170 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 10] {max_mux_size = 16 : i64, partition_indices = [-1, 10], timing = #hls.t<35 -> 37, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %171 = arith.mulf %170, %130 {timing = #hls.t<30 -> 35, 5, 1>} : f32
        %172 = affine.load %arg4[%arg6 * 32 + 10] {partition_indices = [0], timing = #hls.t<30 -> 32, 2, 1>} : memref<512xf32>
        %173 = arith.addf %171, %172 {timing = #hls.t<22 -> 30, 8, 1>} : f32
        affine.store %173, %arg4[%arg6 * 32 + 10] {partition_indices = [0], timing = #hls.t<21 -> 22, 1, 1>} : memref<512xf32>
        %174 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 11] {max_mux_size = 16 : i64, partition_indices = [-1, 11], timing = #hls.t<514 -> 516, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %175 = arith.mulf %174, %130 {timing = #hls.t<29 -> 34, 5, 1>} : f32
        %176 = affine.load %arg4[%arg6 * 32 + 11] {partition_indices = [0], timing = #hls.t<29 -> 31, 2, 1>} : memref<512xf32>
        %177 = arith.addf %175, %176 {timing = #hls.t<21 -> 29, 8, 1>} : f32
        affine.store %177, %arg4[%arg6 * 32 + 11] {partition_indices = [0], timing = #hls.t<20 -> 21, 1, 1>} : memref<512xf32>
        %178 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 12] {max_mux_size = 16 : i64, partition_indices = [-1, 12], timing = #hls.t<33 -> 35, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %179 = arith.mulf %178, %130 {timing = #hls.t<28 -> 33, 5, 1>} : f32
        %180 = affine.load %arg4[%arg6 * 32 + 12] {partition_indices = [0], timing = #hls.t<28 -> 30, 2, 1>} : memref<512xf32>
        %181 = arith.addf %179, %180 {timing = #hls.t<20 -> 28, 8, 1>} : f32
        affine.store %181, %arg4[%arg6 * 32 + 12] {partition_indices = [0], timing = #hls.t<19 -> 20, 1, 1>} : memref<512xf32>
        %182 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 13] {max_mux_size = 16 : i64, partition_indices = [-1, 13], timing = #hls.t<514 -> 516, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %183 = arith.mulf %182, %130 {timing = #hls.t<27 -> 32, 5, 1>} : f32
        %184 = affine.load %arg4[%arg6 * 32 + 13] {partition_indices = [0], timing = #hls.t<27 -> 29, 2, 1>} : memref<512xf32>
        %185 = arith.addf %183, %184 {timing = #hls.t<19 -> 27, 8, 1>} : f32
        affine.store %185, %arg4[%arg6 * 32 + 13] {partition_indices = [0], timing = #hls.t<18 -> 19, 1, 1>} : memref<512xf32>
        %186 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 14] {max_mux_size = 16 : i64, partition_indices = [-1, 14], timing = #hls.t<31 -> 33, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %187 = arith.mulf %186, %130 {timing = #hls.t<26 -> 31, 5, 1>} : f32
        %188 = affine.load %arg4[%arg6 * 32 + 14] {partition_indices = [0], timing = #hls.t<26 -> 28, 2, 1>} : memref<512xf32>
        %189 = arith.addf %187, %188 {timing = #hls.t<18 -> 26, 8, 1>} : f32
        affine.store %189, %arg4[%arg6 * 32 + 14] {partition_indices = [0], timing = #hls.t<17 -> 18, 1, 1>} : memref<512xf32>
        %190 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 15] {max_mux_size = 16 : i64, partition_indices = [-1, 15], timing = #hls.t<514 -> 516, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %191 = arith.mulf %190, %130 {timing = #hls.t<25 -> 30, 5, 1>} : f32
        %192 = affine.load %arg4[%arg6 * 32 + 15] {partition_indices = [0], timing = #hls.t<25 -> 27, 2, 1>} : memref<512xf32>
        %193 = arith.addf %191, %192 {timing = #hls.t<17 -> 25, 8, 1>} : f32
        affine.store %193, %arg4[%arg6 * 32 + 15] {partition_indices = [0], timing = #hls.t<16 -> 17, 1, 1>} : memref<512xf32>
        %194 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 16] {max_mux_size = 16 : i64, partition_indices = [-1, 16], timing = #hls.t<29 -> 31, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %195 = arith.mulf %194, %130 {timing = #hls.t<24 -> 29, 5, 1>} : f32
        %196 = affine.load %arg4[%arg6 * 32 + 16] {partition_indices = [0], timing = #hls.t<24 -> 26, 2, 1>} : memref<512xf32>
        %197 = arith.addf %195, %196 {timing = #hls.t<16 -> 24, 8, 1>} : f32
        affine.store %197, %arg4[%arg6 * 32 + 16] {partition_indices = [0], timing = #hls.t<15 -> 16, 1, 1>} : memref<512xf32>
        %198 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 17] {max_mux_size = 16 : i64, partition_indices = [-1, 17], timing = #hls.t<514 -> 516, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %199 = arith.mulf %198, %130 {timing = #hls.t<23 -> 28, 5, 1>} : f32
        %200 = affine.load %arg4[%arg6 * 32 + 17] {partition_indices = [0], timing = #hls.t<23 -> 25, 2, 1>} : memref<512xf32>
        %201 = arith.addf %199, %200 {timing = #hls.t<15 -> 23, 8, 1>} : f32
        affine.store %201, %arg4[%arg6 * 32 + 17] {partition_indices = [0], timing = #hls.t<14 -> 15, 1, 1>} : memref<512xf32>
        %202 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 18] {max_mux_size = 16 : i64, partition_indices = [-1, 18], timing = #hls.t<27 -> 29, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %203 = arith.mulf %202, %130 {timing = #hls.t<22 -> 27, 5, 1>} : f32
        %204 = affine.load %arg4[%arg6 * 32 + 18] {partition_indices = [0], timing = #hls.t<22 -> 24, 2, 1>} : memref<512xf32>
        %205 = arith.addf %203, %204 {timing = #hls.t<14 -> 22, 8, 1>} : f32
        affine.store %205, %arg4[%arg6 * 32 + 18] {partition_indices = [0], timing = #hls.t<13 -> 14, 1, 1>} : memref<512xf32>
        %206 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 19] {max_mux_size = 16 : i64, partition_indices = [-1, 19], timing = #hls.t<514 -> 516, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %207 = arith.mulf %206, %130 {timing = #hls.t<21 -> 26, 5, 1>} : f32
        %208 = affine.load %arg4[%arg6 * 32 + 19] {partition_indices = [0], timing = #hls.t<21 -> 23, 2, 1>} : memref<512xf32>
        %209 = arith.addf %207, %208 {timing = #hls.t<13 -> 21, 8, 1>} : f32
        affine.store %209, %arg4[%arg6 * 32 + 19] {partition_indices = [0], timing = #hls.t<12 -> 13, 1, 1>} : memref<512xf32>
        %210 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 20] {max_mux_size = 16 : i64, partition_indices = [-1, 20], timing = #hls.t<25 -> 27, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %211 = arith.mulf %210, %130 {timing = #hls.t<20 -> 25, 5, 1>} : f32
        %212 = affine.load %arg4[%arg6 * 32 + 20] {partition_indices = [0], timing = #hls.t<20 -> 22, 2, 1>} : memref<512xf32>
        %213 = arith.addf %211, %212 {timing = #hls.t<12 -> 20, 8, 1>} : f32
        affine.store %213, %arg4[%arg6 * 32 + 20] {partition_indices = [0], timing = #hls.t<11 -> 12, 1, 1>} : memref<512xf32>
        %214 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 21] {max_mux_size = 16 : i64, partition_indices = [-1, 21], timing = #hls.t<514 -> 516, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %215 = arith.mulf %214, %130 {timing = #hls.t<19 -> 24, 5, 1>} : f32
        %216 = affine.load %arg4[%arg6 * 32 + 21] {partition_indices = [0], timing = #hls.t<19 -> 21, 2, 1>} : memref<512xf32>
        %217 = arith.addf %215, %216 {timing = #hls.t<11 -> 19, 8, 1>} : f32
        affine.store %217, %arg4[%arg6 * 32 + 21] {partition_indices = [0], timing = #hls.t<10 -> 11, 1, 1>} : memref<512xf32>
        %218 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 22] {max_mux_size = 16 : i64, partition_indices = [-1, 22], timing = #hls.t<23 -> 25, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %219 = arith.mulf %218, %130 {timing = #hls.t<18 -> 23, 5, 1>} : f32
        %220 = affine.load %arg4[%arg6 * 32 + 22] {partition_indices = [0], timing = #hls.t<18 -> 20, 2, 1>} : memref<512xf32>
        %221 = arith.addf %219, %220 {timing = #hls.t<10 -> 18, 8, 1>} : f32
        affine.store %221, %arg4[%arg6 * 32 + 22] {partition_indices = [0], timing = #hls.t<9 -> 10, 1, 1>} : memref<512xf32>
        %222 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 23] {max_mux_size = 16 : i64, partition_indices = [-1, 23], timing = #hls.t<514 -> 516, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %223 = arith.mulf %222, %130 {timing = #hls.t<17 -> 22, 5, 1>} : f32
        %224 = affine.load %arg4[%arg6 * 32 + 23] {partition_indices = [0], timing = #hls.t<17 -> 19, 2, 1>} : memref<512xf32>
        %225 = arith.addf %223, %224 {timing = #hls.t<9 -> 17, 8, 1>} : f32
        affine.store %225, %arg4[%arg6 * 32 + 23] {partition_indices = [0], timing = #hls.t<8 -> 9, 1, 1>} : memref<512xf32>
        %226 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 24] {max_mux_size = 16 : i64, partition_indices = [-1, 24], timing = #hls.t<21 -> 23, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %227 = arith.mulf %226, %130 {timing = #hls.t<16 -> 21, 5, 1>} : f32
        %228 = affine.load %arg4[%arg6 * 32 + 24] {partition_indices = [0], timing = #hls.t<16 -> 18, 2, 1>} : memref<512xf32>
        %229 = arith.addf %227, %228 {timing = #hls.t<8 -> 16, 8, 1>} : f32
        affine.store %229, %arg4[%arg6 * 32 + 24] {partition_indices = [0], timing = #hls.t<7 -> 8, 1, 1>} : memref<512xf32>
        %230 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 25] {max_mux_size = 16 : i64, partition_indices = [-1, 25], timing = #hls.t<514 -> 516, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %231 = arith.mulf %230, %130 {timing = #hls.t<15 -> 20, 5, 1>} : f32
        %232 = affine.load %arg4[%arg6 * 32 + 25] {partition_indices = [0], timing = #hls.t<15 -> 17, 2, 1>} : memref<512xf32>
        %233 = arith.addf %231, %232 {timing = #hls.t<7 -> 15, 8, 1>} : f32
        affine.store %233, %arg4[%arg6 * 32 + 25] {partition_indices = [0], timing = #hls.t<6 -> 7, 1, 1>} : memref<512xf32>
        %234 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 26] {max_mux_size = 16 : i64, partition_indices = [-1, 26], timing = #hls.t<19 -> 21, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %235 = arith.mulf %234, %130 {timing = #hls.t<14 -> 19, 5, 1>} : f32
        %236 = affine.load %arg4[%arg6 * 32 + 26] {partition_indices = [0], timing = #hls.t<14 -> 16, 2, 1>} : memref<512xf32>
        %237 = arith.addf %235, %236 {timing = #hls.t<6 -> 14, 8, 1>} : f32
        affine.store %237, %arg4[%arg6 * 32 + 26] {partition_indices = [0], timing = #hls.t<5 -> 6, 1, 1>} : memref<512xf32>
        %238 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 27] {max_mux_size = 16 : i64, partition_indices = [-1, 27], timing = #hls.t<514 -> 516, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %239 = arith.mulf %238, %130 {timing = #hls.t<13 -> 18, 5, 1>} : f32
        %240 = affine.load %arg4[%arg6 * 32 + 27] {partition_indices = [0], timing = #hls.t<13 -> 15, 2, 1>} : memref<512xf32>
        %241 = arith.addf %239, %240 {timing = #hls.t<5 -> 13, 8, 1>} : f32
        affine.store %241, %arg4[%arg6 * 32 + 27] {partition_indices = [0], timing = #hls.t<4 -> 5, 1, 1>} : memref<512xf32>
        %242 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 28] {max_mux_size = 16 : i64, partition_indices = [-1, 28], timing = #hls.t<17 -> 19, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %243 = arith.mulf %242, %130 {timing = #hls.t<12 -> 17, 5, 1>} : f32
        %244 = affine.load %arg4[%arg6 * 32 + 28] {partition_indices = [0], timing = #hls.t<12 -> 14, 2, 1>} : memref<512xf32>
        %245 = arith.addf %243, %244 {timing = #hls.t<4 -> 12, 8, 1>} : f32
        affine.store %245, %arg4[%arg6 * 32 + 28] {partition_indices = [0], timing = #hls.t<3 -> 4, 1, 1>} : memref<512xf32>
        %246 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 29] {max_mux_size = 16 : i64, partition_indices = [-1, 29], timing = #hls.t<514 -> 516, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %247 = arith.mulf %246, %130 {timing = #hls.t<11 -> 16, 5, 1>} : f32
        %248 = affine.load %arg4[%arg6 * 32 + 29] {partition_indices = [0], timing = #hls.t<11 -> 13, 2, 1>} : memref<512xf32>
        %249 = arith.addf %247, %248 {timing = #hls.t<3 -> 11, 8, 1>} : f32
        affine.store %249, %arg4[%arg6 * 32 + 29] {partition_indices = [0], timing = #hls.t<2 -> 3, 1, 1>} : memref<512xf32>
        %250 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 30] {max_mux_size = 16 : i64, partition_indices = [-1, 30], timing = #hls.t<15 -> 17, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %251 = arith.mulf %250, %130 {timing = #hls.t<10 -> 15, 5, 1>} : f32
        %252 = affine.load %arg4[%arg6 * 32 + 30] {partition_indices = [0], timing = #hls.t<10 -> 12, 2, 1>} : memref<512xf32>
        %253 = arith.addf %251, %252 {timing = #hls.t<2 -> 10, 8, 1>} : f32
        affine.store %253, %arg4[%arg6 * 32 + 30] {partition_indices = [0], timing = #hls.t<1 -> 2, 1, 1>} : memref<512xf32>
        %254 = affine.load %arg0[%arg5 * 2 + 1, %arg6 * 32 + 31] {max_mux_size = 16 : i64, partition_indices = [-1, 31], timing = #hls.t<514 -> 516, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
        %255 = arith.mulf %254, %130 {timing = #hls.t<9 -> 14, 5, 1>} : f32
        %256 = affine.load %arg4[%arg6 * 32 + 31] {partition_indices = [0], timing = #hls.t<9 -> 11, 2, 1>} : memref<512xf32>
        %257 = arith.addf %255, %256 {timing = #hls.t<1 -> 9, 8, 1>} : f32
        affine.store %257, %arg4[%arg6 * 32 + 31] {partition_indices = [0], timing = #hls.t<0 -> 1, 1, 1>} : memref<512xf32>
        affine.for %arg7 = 0 to 32 {
          %258 = affine.load %arg0[%arg7 + %arg6 * 32, %arg5 * 2 + 1] {max_mux_size = 32 : i64, partition_indices = [-1, -1], timing = #hls.t<14 -> 16, 2, 1>} : memref<512x512xf32, affine_map<(d0, d1) -> (d0 mod 16, d1 mod 32, d0 floordiv 16, d1 floordiv 32)>>
          %259 = affine.load %arg1[%arg5 * 2 + 1] {partition_indices = [0], timing = #hls.t<14 -> 16, 2, 1>} : memref<512xf32, affine_map<(d0) -> (0, d0)>>
          %260 = arith.mulf %258, %259 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %261 = affine.load %arg2[%arg7 + %arg6 * 32] {partition_indices = [0], timing = #hls.t<9 -> 11, 2, 1>} : memref<512xf32, affine_map<(d0) -> (0, d0)>>
          %262 = arith.addf %260, %261 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %262, %arg2[%arg7 + %arg6 * 32] {partition_indices = [0], timing = #hls.t<0 -> 1, 1, 1>} : memref<512xf32, affine_map<(d0) -> (0, d0)>>
        } {loop_info = #hls.l<flattenTripCount=32, iterLatency=16, minII=16>, parallel, timing = #hls.t<0 -> 514, 514, 514>}
      } {loop_directive = #hls.ld<pipeline=true, targetII=1, dataflow=false, flatten=false>, loop_info = #hls.l<flattenTripCount=16, iterLatency=1032, minII=64>, parallel, timing = #hls.t<0 -> 1994, 1994, 1994>}
    } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, loop_info = #hls.l<flattenTripCount=4096, iterLatency=1032, minII=64>, resource = #hls.r<lut=0, dsp=5, bram=0>, timing = #hls.t<0 -> 263114, 263114, 263114>}
    return
  }
}