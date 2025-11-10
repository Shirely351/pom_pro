module {
  func @test_3mm_256(%arg0: f32, %arg1: memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, 0, d0 floordiv 4, d1)>>, %arg2: memref<256x256xf32, affine_map<(d0, d1) -> (0, d1 mod 8, d0, d1 floordiv 8)>>, %arg3: memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, 0, d0 floordiv 4, d1)>>, %arg4: memref<256x256xf32, affine_map<(d0, d1) -> (0, d1 mod 8, d0, d1 floordiv 8)>>, %arg5: memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>, %arg6: memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>, %arg7: memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>) attributes {resource = #hls.r<lut=0, dsp=160, bram=0>, timing = #hls.t<0 -> 1579067, 1579067, 1579067>, top_func} {
    affine.for %arg8 = 0 to 64 {
      affine.for %arg9 = 0 to 32 {
        affine.store %arg0, %arg5[%arg8 * 4, %arg9 * 8] {partition_indices = [0, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4, %arg9 * 8 + 1] {partition_indices = [0, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4, %arg9 * 8 + 2] {partition_indices = [0, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4, %arg9 * 8 + 3] {partition_indices = [0, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4, %arg9 * 8 + 4] {partition_indices = [0, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4, %arg9 * 8 + 5] {partition_indices = [0, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4, %arg9 * 8 + 6] {partition_indices = [0, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4, %arg9 * 8 + 7] {partition_indices = [0, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 1, %arg9 * 8] {partition_indices = [1, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 1, %arg9 * 8 + 1] {partition_indices = [1, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 1, %arg9 * 8 + 2] {partition_indices = [1, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 1, %arg9 * 8 + 3] {partition_indices = [1, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 1, %arg9 * 8 + 4] {partition_indices = [1, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 1, %arg9 * 8 + 5] {partition_indices = [1, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 1, %arg9 * 8 + 6] {partition_indices = [1, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 1, %arg9 * 8 + 7] {partition_indices = [1, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 2, %arg9 * 8] {partition_indices = [2, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 2, %arg9 * 8 + 1] {partition_indices = [2, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 2, %arg9 * 8 + 2] {partition_indices = [2, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 2, %arg9 * 8 + 3] {partition_indices = [2, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 2, %arg9 * 8 + 4] {partition_indices = [2, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 2, %arg9 * 8 + 5] {partition_indices = [2, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 2, %arg9 * 8 + 6] {partition_indices = [2, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 2, %arg9 * 8 + 7] {partition_indices = [2, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 3, %arg9 * 8] {partition_indices = [3, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 3, %arg9 * 8 + 1] {partition_indices = [3, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 3, %arg9 * 8 + 2] {partition_indices = [3, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 3, %arg9 * 8 + 3] {partition_indices = [3, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 3, %arg9 * 8 + 4] {partition_indices = [3, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 3, %arg9 * 8 + 5] {partition_indices = [3, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 3, %arg9 * 8 + 6] {partition_indices = [3, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg5[%arg8 * 4 + 3, %arg9 * 8 + 7] {partition_indices = [3, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
      } {loop_directive = #hls.ld<pipeline=true, targetII=1, dataflow=false, flatten=false>, parallel}
    } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
    affine.for %arg8 = 0 to 256 {
      affine.for %arg9 = 0 to 64 {
        affine.for %arg10 = 0 to 32 {
          %0 = affine.load %arg1[%arg9 * 4, %arg8] {partition_indices = [0, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, 0, d0 floordiv 4, d1)>>
          %1 = affine.load %arg2[%arg8, %arg10 * 8] {partition_indices = [0, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (0, d1 mod 8, d0, d1 floordiv 8)>>
          %2 = arith.mulf %0, %1 : f32
          %3 = affine.load %arg5[%arg9 * 4, %arg10 * 8] {partition_indices = [0, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %4 = arith.addf %2, %3 : f32
          affine.store %4, %arg5[%arg9 * 4, %arg10 * 8] {partition_indices = [0, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %5 = affine.load %arg2[%arg8, %arg10 * 8 + 1] {partition_indices = [0, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (0, d1 mod 8, d0, d1 floordiv 8)>>
          %6 = arith.mulf %0, %5 : f32
          %7 = affine.load %arg5[%arg9 * 4, %arg10 * 8 + 1] {partition_indices = [0, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %8 = arith.addf %6, %7 : f32
          affine.store %8, %arg5[%arg9 * 4, %arg10 * 8 + 1] {partition_indices = [0, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %9 = affine.load %arg2[%arg8, %arg10 * 8 + 2] {partition_indices = [0, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (0, d1 mod 8, d0, d1 floordiv 8)>>
          %10 = arith.mulf %0, %9 : f32
          %11 = affine.load %arg5[%arg9 * 4, %arg10 * 8 + 2] {partition_indices = [0, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %12 = arith.addf %10, %11 : f32
          affine.store %12, %arg5[%arg9 * 4, %arg10 * 8 + 2] {partition_indices = [0, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %13 = affine.load %arg2[%arg8, %arg10 * 8 + 3] {partition_indices = [0, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (0, d1 mod 8, d0, d1 floordiv 8)>>
          %14 = arith.mulf %0, %13 : f32
          %15 = affine.load %arg5[%arg9 * 4, %arg10 * 8 + 3] {partition_indices = [0, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %16 = arith.addf %14, %15 : f32
          affine.store %16, %arg5[%arg9 * 4, %arg10 * 8 + 3] {partition_indices = [0, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %17 = affine.load %arg2[%arg8, %arg10 * 8 + 4] {partition_indices = [0, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (0, d1 mod 8, d0, d1 floordiv 8)>>
          %18 = arith.mulf %0, %17 : f32
          %19 = affine.load %arg5[%arg9 * 4, %arg10 * 8 + 4] {partition_indices = [0, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %20 = arith.addf %18, %19 : f32
          affine.store %20, %arg5[%arg9 * 4, %arg10 * 8 + 4] {partition_indices = [0, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %21 = affine.load %arg2[%arg8, %arg10 * 8 + 5] {partition_indices = [0, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (0, d1 mod 8, d0, d1 floordiv 8)>>
          %22 = arith.mulf %0, %21 : f32
          %23 = affine.load %arg5[%arg9 * 4, %arg10 * 8 + 5] {partition_indices = [0, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %24 = arith.addf %22, %23 : f32
          affine.store %24, %arg5[%arg9 * 4, %arg10 * 8 + 5] {partition_indices = [0, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %25 = affine.load %arg2[%arg8, %arg10 * 8 + 6] {partition_indices = [0, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (0, d1 mod 8, d0, d1 floordiv 8)>>
          %26 = arith.mulf %0, %25 : f32
          %27 = affine.load %arg5[%arg9 * 4, %arg10 * 8 + 6] {partition_indices = [0, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %28 = arith.addf %26, %27 : f32
          affine.store %28, %arg5[%arg9 * 4, %arg10 * 8 + 6] {partition_indices = [0, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %29 = affine.load %arg2[%arg8, %arg10 * 8 + 7] {partition_indices = [0, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (0, d1 mod 8, d0, d1 floordiv 8)>>
          %30 = arith.mulf %0, %29 : f32
          %31 = affine.load %arg5[%arg9 * 4, %arg10 * 8 + 7] {partition_indices = [0, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %32 = arith.addf %30, %31 : f32
          affine.store %32, %arg5[%arg9 * 4, %arg10 * 8 + 7] {partition_indices = [0, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %33 = affine.load %arg1[%arg9 * 4 + 1, %arg8] {partition_indices = [1, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, 0, d0 floordiv 4, d1)>>
          %34 = arith.mulf %33, %1 : f32
          %35 = affine.load %arg5[%arg9 * 4 + 1, %arg10 * 8] {partition_indices = [1, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %36 = arith.addf %34, %35 : f32
          affine.store %36, %arg5[%arg9 * 4 + 1, %arg10 * 8] {partition_indices = [1, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %37 = arith.mulf %33, %5 : f32
          %38 = affine.load %arg5[%arg9 * 4 + 1, %arg10 * 8 + 1] {partition_indices = [1, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %39 = arith.addf %37, %38 : f32
          affine.store %39, %arg5[%arg9 * 4 + 1, %arg10 * 8 + 1] {partition_indices = [1, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %40 = arith.mulf %33, %9 : f32
          %41 = affine.load %arg5[%arg9 * 4 + 1, %arg10 * 8 + 2] {partition_indices = [1, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %42 = arith.addf %40, %41 : f32
          affine.store %42, %arg5[%arg9 * 4 + 1, %arg10 * 8 + 2] {partition_indices = [1, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %43 = arith.mulf %33, %13 : f32
          %44 = affine.load %arg5[%arg9 * 4 + 1, %arg10 * 8 + 3] {partition_indices = [1, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %45 = arith.addf %43, %44 : f32
          affine.store %45, %arg5[%arg9 * 4 + 1, %arg10 * 8 + 3] {partition_indices = [1, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %46 = arith.mulf %33, %17 : f32
          %47 = affine.load %arg5[%arg9 * 4 + 1, %arg10 * 8 + 4] {partition_indices = [1, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %48 = arith.addf %46, %47 : f32
          affine.store %48, %arg5[%arg9 * 4 + 1, %arg10 * 8 + 4] {partition_indices = [1, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %49 = arith.mulf %33, %21 : f32
          %50 = affine.load %arg5[%arg9 * 4 + 1, %arg10 * 8 + 5] {partition_indices = [1, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %51 = arith.addf %49, %50 : f32
          affine.store %51, %arg5[%arg9 * 4 + 1, %arg10 * 8 + 5] {partition_indices = [1, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %52 = arith.mulf %33, %25 : f32
          %53 = affine.load %arg5[%arg9 * 4 + 1, %arg10 * 8 + 6] {partition_indices = [1, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %54 = arith.addf %52, %53 : f32
          affine.store %54, %arg5[%arg9 * 4 + 1, %arg10 * 8 + 6] {partition_indices = [1, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %55 = arith.mulf %33, %29 : f32
          %56 = affine.load %arg5[%arg9 * 4 + 1, %arg10 * 8 + 7] {partition_indices = [1, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %57 = arith.addf %55, %56 : f32
          affine.store %57, %arg5[%arg9 * 4 + 1, %arg10 * 8 + 7] {partition_indices = [1, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %58 = affine.load %arg1[%arg9 * 4 + 2, %arg8] {partition_indices = [2, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, 0, d0 floordiv 4, d1)>>
          %59 = arith.mulf %58, %1 : f32
          %60 = affine.load %arg5[%arg9 * 4 + 2, %arg10 * 8] {partition_indices = [2, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %61 = arith.addf %59, %60 : f32
          affine.store %61, %arg5[%arg9 * 4 + 2, %arg10 * 8] {partition_indices = [2, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %62 = arith.mulf %58, %5 : f32
          %63 = affine.load %arg5[%arg9 * 4 + 2, %arg10 * 8 + 1] {partition_indices = [2, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %64 = arith.addf %62, %63 : f32
          affine.store %64, %arg5[%arg9 * 4 + 2, %arg10 * 8 + 1] {partition_indices = [2, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %65 = arith.mulf %58, %9 : f32
          %66 = affine.load %arg5[%arg9 * 4 + 2, %arg10 * 8 + 2] {partition_indices = [2, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %67 = arith.addf %65, %66 : f32
          affine.store %67, %arg5[%arg9 * 4 + 2, %arg10 * 8 + 2] {partition_indices = [2, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %68 = arith.mulf %58, %13 : f32
          %69 = affine.load %arg5[%arg9 * 4 + 2, %arg10 * 8 + 3] {partition_indices = [2, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %70 = arith.addf %68, %69 : f32
          affine.store %70, %arg5[%arg9 * 4 + 2, %arg10 * 8 + 3] {partition_indices = [2, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %71 = arith.mulf %58, %17 : f32
          %72 = affine.load %arg5[%arg9 * 4 + 2, %arg10 * 8 + 4] {partition_indices = [2, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %73 = arith.addf %71, %72 : f32
          affine.store %73, %arg5[%arg9 * 4 + 2, %arg10 * 8 + 4] {partition_indices = [2, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %74 = arith.mulf %58, %21 : f32
          %75 = affine.load %arg5[%arg9 * 4 + 2, %arg10 * 8 + 5] {partition_indices = [2, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %76 = arith.addf %74, %75 : f32
          affine.store %76, %arg5[%arg9 * 4 + 2, %arg10 * 8 + 5] {partition_indices = [2, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %77 = arith.mulf %58, %25 : f32
          %78 = affine.load %arg5[%arg9 * 4 + 2, %arg10 * 8 + 6] {partition_indices = [2, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %79 = arith.addf %77, %78 : f32
          affine.store %79, %arg5[%arg9 * 4 + 2, %arg10 * 8 + 6] {partition_indices = [2, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %80 = arith.mulf %58, %29 : f32
          %81 = affine.load %arg5[%arg9 * 4 + 2, %arg10 * 8 + 7] {partition_indices = [2, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %82 = arith.addf %80, %81 : f32
          affine.store %82, %arg5[%arg9 * 4 + 2, %arg10 * 8 + 7] {partition_indices = [2, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %83 = affine.load %arg1[%arg9 * 4 + 3, %arg8] {partition_indices = [3, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, 0, d0 floordiv 4, d1)>>
          %84 = arith.mulf %83, %1 : f32
          %85 = affine.load %arg5[%arg9 * 4 + 3, %arg10 * 8] {partition_indices = [3, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %86 = arith.addf %84, %85 : f32
          affine.store %86, %arg5[%arg9 * 4 + 3, %arg10 * 8] {partition_indices = [3, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %87 = arith.mulf %83, %5 : f32
          %88 = affine.load %arg5[%arg9 * 4 + 3, %arg10 * 8 + 1] {partition_indices = [3, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %89 = arith.addf %87, %88 : f32
          affine.store %89, %arg5[%arg9 * 4 + 3, %arg10 * 8 + 1] {partition_indices = [3, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %90 = arith.mulf %83, %9 : f32
          %91 = affine.load %arg5[%arg9 * 4 + 3, %arg10 * 8 + 2] {partition_indices = [3, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %92 = arith.addf %90, %91 : f32
          affine.store %92, %arg5[%arg9 * 4 + 3, %arg10 * 8 + 2] {partition_indices = [3, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %93 = arith.mulf %83, %13 : f32
          %94 = affine.load %arg5[%arg9 * 4 + 3, %arg10 * 8 + 3] {partition_indices = [3, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %95 = arith.addf %93, %94 : f32
          affine.store %95, %arg5[%arg9 * 4 + 3, %arg10 * 8 + 3] {partition_indices = [3, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %96 = arith.mulf %83, %17 : f32
          %97 = affine.load %arg5[%arg9 * 4 + 3, %arg10 * 8 + 4] {partition_indices = [3, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %98 = arith.addf %96, %97 : f32
          affine.store %98, %arg5[%arg9 * 4 + 3, %arg10 * 8 + 4] {partition_indices = [3, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %99 = arith.mulf %83, %21 : f32
          %100 = affine.load %arg5[%arg9 * 4 + 3, %arg10 * 8 + 5] {partition_indices = [3, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %101 = arith.addf %99, %100 : f32
          affine.store %101, %arg5[%arg9 * 4 + 3, %arg10 * 8 + 5] {partition_indices = [3, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %102 = arith.mulf %83, %25 : f32
          %103 = affine.load %arg5[%arg9 * 4 + 3, %arg10 * 8 + 6] {partition_indices = [3, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %104 = arith.addf %102, %103 : f32
          affine.store %104, %arg5[%arg9 * 4 + 3, %arg10 * 8 + 6] {partition_indices = [3, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %105 = arith.mulf %83, %29 : f32
          %106 = affine.load %arg5[%arg9 * 4 + 3, %arg10 * 8 + 7] {partition_indices = [3, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %107 = arith.addf %105, %106 : f32
          affine.store %107, %arg5[%arg9 * 4 + 3, %arg10 * 8 + 7] {partition_indices = [3, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        } {loop_directive = #hls.ld<pipeline=true, targetII=1, dataflow=false, flatten=false>, parallel}
      } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
    } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    affine.for %arg8 = 0 to 64 {
      affine.for %arg9 = 0 to 32 {
        affine.store %arg0, %arg6[%arg8 * 4, %arg9 * 8] {partition_indices = [0, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4, %arg9 * 8 + 1] {partition_indices = [0, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4, %arg9 * 8 + 2] {partition_indices = [0, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4, %arg9 * 8 + 3] {partition_indices = [0, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4, %arg9 * 8 + 4] {partition_indices = [0, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4, %arg9 * 8 + 5] {partition_indices = [0, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4, %arg9 * 8 + 6] {partition_indices = [0, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4, %arg9 * 8 + 7] {partition_indices = [0, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 1, %arg9 * 8] {partition_indices = [1, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 1, %arg9 * 8 + 1] {partition_indices = [1, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 1, %arg9 * 8 + 2] {partition_indices = [1, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 1, %arg9 * 8 + 3] {partition_indices = [1, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 1, %arg9 * 8 + 4] {partition_indices = [1, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 1, %arg9 * 8 + 5] {partition_indices = [1, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 1, %arg9 * 8 + 6] {partition_indices = [1, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 1, %arg9 * 8 + 7] {partition_indices = [1, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 2, %arg9 * 8] {partition_indices = [2, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 2, %arg9 * 8 + 1] {partition_indices = [2, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 2, %arg9 * 8 + 2] {partition_indices = [2, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 2, %arg9 * 8 + 3] {partition_indices = [2, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 2, %arg9 * 8 + 4] {partition_indices = [2, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 2, %arg9 * 8 + 5] {partition_indices = [2, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 2, %arg9 * 8 + 6] {partition_indices = [2, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 2, %arg9 * 8 + 7] {partition_indices = [2, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 3, %arg9 * 8] {partition_indices = [3, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 3, %arg9 * 8 + 1] {partition_indices = [3, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 3, %arg9 * 8 + 2] {partition_indices = [3, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 3, %arg9 * 8 + 3] {partition_indices = [3, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 3, %arg9 * 8 + 4] {partition_indices = [3, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 3, %arg9 * 8 + 5] {partition_indices = [3, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 3, %arg9 * 8 + 6] {partition_indices = [3, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg6[%arg8 * 4 + 3, %arg9 * 8 + 7] {partition_indices = [3, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
      } {loop_directive = #hls.ld<pipeline=true, targetII=1, dataflow=false, flatten=false>, parallel}
    } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
    affine.for %arg8 = 0 to 256 {
      affine.for %arg9 = 0 to 64 {
        affine.for %arg10 = 0 to 32 {
          %0 = affine.load %arg3[%arg9 * 4, %arg8] {partition_indices = [0, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, 0, d0 floordiv 4, d1)>>
          %1 = affine.load %arg4[%arg8, %arg10 * 8] {partition_indices = [0, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (0, d1 mod 8, d0, d1 floordiv 8)>>
          %2 = arith.mulf %0, %1 : f32
          %3 = affine.load %arg6[%arg9 * 4, %arg10 * 8] {partition_indices = [0, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %4 = arith.addf %2, %3 : f32
          affine.store %4, %arg6[%arg9 * 4, %arg10 * 8] {partition_indices = [0, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %5 = affine.load %arg4[%arg8, %arg10 * 8 + 1] {partition_indices = [0, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (0, d1 mod 8, d0, d1 floordiv 8)>>
          %6 = arith.mulf %0, %5 : f32
          %7 = affine.load %arg6[%arg9 * 4, %arg10 * 8 + 1] {partition_indices = [0, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %8 = arith.addf %6, %7 : f32
          affine.store %8, %arg6[%arg9 * 4, %arg10 * 8 + 1] {partition_indices = [0, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %9 = affine.load %arg4[%arg8, %arg10 * 8 + 2] {partition_indices = [0, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (0, d1 mod 8, d0, d1 floordiv 8)>>
          %10 = arith.mulf %0, %9 : f32
          %11 = affine.load %arg6[%arg9 * 4, %arg10 * 8 + 2] {partition_indices = [0, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %12 = arith.addf %10, %11 : f32
          affine.store %12, %arg6[%arg9 * 4, %arg10 * 8 + 2] {partition_indices = [0, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %13 = affine.load %arg4[%arg8, %arg10 * 8 + 3] {partition_indices = [0, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (0, d1 mod 8, d0, d1 floordiv 8)>>
          %14 = arith.mulf %0, %13 : f32
          %15 = affine.load %arg6[%arg9 * 4, %arg10 * 8 + 3] {partition_indices = [0, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %16 = arith.addf %14, %15 : f32
          affine.store %16, %arg6[%arg9 * 4, %arg10 * 8 + 3] {partition_indices = [0, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %17 = affine.load %arg4[%arg8, %arg10 * 8 + 4] {partition_indices = [0, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (0, d1 mod 8, d0, d1 floordiv 8)>>
          %18 = arith.mulf %0, %17 : f32
          %19 = affine.load %arg6[%arg9 * 4, %arg10 * 8 + 4] {partition_indices = [0, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %20 = arith.addf %18, %19 : f32
          affine.store %20, %arg6[%arg9 * 4, %arg10 * 8 + 4] {partition_indices = [0, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %21 = affine.load %arg4[%arg8, %arg10 * 8 + 5] {partition_indices = [0, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (0, d1 mod 8, d0, d1 floordiv 8)>>
          %22 = arith.mulf %0, %21 : f32
          %23 = affine.load %arg6[%arg9 * 4, %arg10 * 8 + 5] {partition_indices = [0, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %24 = arith.addf %22, %23 : f32
          affine.store %24, %arg6[%arg9 * 4, %arg10 * 8 + 5] {partition_indices = [0, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %25 = affine.load %arg4[%arg8, %arg10 * 8 + 6] {partition_indices = [0, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (0, d1 mod 8, d0, d1 floordiv 8)>>
          %26 = arith.mulf %0, %25 : f32
          %27 = affine.load %arg6[%arg9 * 4, %arg10 * 8 + 6] {partition_indices = [0, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %28 = arith.addf %26, %27 : f32
          affine.store %28, %arg6[%arg9 * 4, %arg10 * 8 + 6] {partition_indices = [0, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %29 = affine.load %arg4[%arg8, %arg10 * 8 + 7] {partition_indices = [0, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (0, d1 mod 8, d0, d1 floordiv 8)>>
          %30 = arith.mulf %0, %29 : f32
          %31 = affine.load %arg6[%arg9 * 4, %arg10 * 8 + 7] {partition_indices = [0, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %32 = arith.addf %30, %31 : f32
          affine.store %32, %arg6[%arg9 * 4, %arg10 * 8 + 7] {partition_indices = [0, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %33 = affine.load %arg3[%arg9 * 4 + 1, %arg8] {partition_indices = [1, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, 0, d0 floordiv 4, d1)>>
          %34 = arith.mulf %33, %1 : f32
          %35 = affine.load %arg6[%arg9 * 4 + 1, %arg10 * 8] {partition_indices = [1, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %36 = arith.addf %34, %35 : f32
          affine.store %36, %arg6[%arg9 * 4 + 1, %arg10 * 8] {partition_indices = [1, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %37 = arith.mulf %33, %5 : f32
          %38 = affine.load %arg6[%arg9 * 4 + 1, %arg10 * 8 + 1] {partition_indices = [1, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %39 = arith.addf %37, %38 : f32
          affine.store %39, %arg6[%arg9 * 4 + 1, %arg10 * 8 + 1] {partition_indices = [1, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %40 = arith.mulf %33, %9 : f32
          %41 = affine.load %arg6[%arg9 * 4 + 1, %arg10 * 8 + 2] {partition_indices = [1, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %42 = arith.addf %40, %41 : f32
          affine.store %42, %arg6[%arg9 * 4 + 1, %arg10 * 8 + 2] {partition_indices = [1, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %43 = arith.mulf %33, %13 : f32
          %44 = affine.load %arg6[%arg9 * 4 + 1, %arg10 * 8 + 3] {partition_indices = [1, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %45 = arith.addf %43, %44 : f32
          affine.store %45, %arg6[%arg9 * 4 + 1, %arg10 * 8 + 3] {partition_indices = [1, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %46 = arith.mulf %33, %17 : f32
          %47 = affine.load %arg6[%arg9 * 4 + 1, %arg10 * 8 + 4] {partition_indices = [1, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %48 = arith.addf %46, %47 : f32
          affine.store %48, %arg6[%arg9 * 4 + 1, %arg10 * 8 + 4] {partition_indices = [1, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %49 = arith.mulf %33, %21 : f32
          %50 = affine.load %arg6[%arg9 * 4 + 1, %arg10 * 8 + 5] {partition_indices = [1, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %51 = arith.addf %49, %50 : f32
          affine.store %51, %arg6[%arg9 * 4 + 1, %arg10 * 8 + 5] {partition_indices = [1, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %52 = arith.mulf %33, %25 : f32
          %53 = affine.load %arg6[%arg9 * 4 + 1, %arg10 * 8 + 6] {partition_indices = [1, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %54 = arith.addf %52, %53 : f32
          affine.store %54, %arg6[%arg9 * 4 + 1, %arg10 * 8 + 6] {partition_indices = [1, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %55 = arith.mulf %33, %29 : f32
          %56 = affine.load %arg6[%arg9 * 4 + 1, %arg10 * 8 + 7] {partition_indices = [1, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %57 = arith.addf %55, %56 : f32
          affine.store %57, %arg6[%arg9 * 4 + 1, %arg10 * 8 + 7] {partition_indices = [1, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %58 = affine.load %arg3[%arg9 * 4 + 2, %arg8] {partition_indices = [2, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, 0, d0 floordiv 4, d1)>>
          %59 = arith.mulf %58, %1 : f32
          %60 = affine.load %arg6[%arg9 * 4 + 2, %arg10 * 8] {partition_indices = [2, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %61 = arith.addf %59, %60 : f32
          affine.store %61, %arg6[%arg9 * 4 + 2, %arg10 * 8] {partition_indices = [2, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %62 = arith.mulf %58, %5 : f32
          %63 = affine.load %arg6[%arg9 * 4 + 2, %arg10 * 8 + 1] {partition_indices = [2, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %64 = arith.addf %62, %63 : f32
          affine.store %64, %arg6[%arg9 * 4 + 2, %arg10 * 8 + 1] {partition_indices = [2, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %65 = arith.mulf %58, %9 : f32
          %66 = affine.load %arg6[%arg9 * 4 + 2, %arg10 * 8 + 2] {partition_indices = [2, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %67 = arith.addf %65, %66 : f32
          affine.store %67, %arg6[%arg9 * 4 + 2, %arg10 * 8 + 2] {partition_indices = [2, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %68 = arith.mulf %58, %13 : f32
          %69 = affine.load %arg6[%arg9 * 4 + 2, %arg10 * 8 + 3] {partition_indices = [2, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %70 = arith.addf %68, %69 : f32
          affine.store %70, %arg6[%arg9 * 4 + 2, %arg10 * 8 + 3] {partition_indices = [2, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %71 = arith.mulf %58, %17 : f32
          %72 = affine.load %arg6[%arg9 * 4 + 2, %arg10 * 8 + 4] {partition_indices = [2, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %73 = arith.addf %71, %72 : f32
          affine.store %73, %arg6[%arg9 * 4 + 2, %arg10 * 8 + 4] {partition_indices = [2, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %74 = arith.mulf %58, %21 : f32
          %75 = affine.load %arg6[%arg9 * 4 + 2, %arg10 * 8 + 5] {partition_indices = [2, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %76 = arith.addf %74, %75 : f32
          affine.store %76, %arg6[%arg9 * 4 + 2, %arg10 * 8 + 5] {partition_indices = [2, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %77 = arith.mulf %58, %25 : f32
          %78 = affine.load %arg6[%arg9 * 4 + 2, %arg10 * 8 + 6] {partition_indices = [2, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %79 = arith.addf %77, %78 : f32
          affine.store %79, %arg6[%arg9 * 4 + 2, %arg10 * 8 + 6] {partition_indices = [2, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %80 = arith.mulf %58, %29 : f32
          %81 = affine.load %arg6[%arg9 * 4 + 2, %arg10 * 8 + 7] {partition_indices = [2, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %82 = arith.addf %80, %81 : f32
          affine.store %82, %arg6[%arg9 * 4 + 2, %arg10 * 8 + 7] {partition_indices = [2, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %83 = affine.load %arg3[%arg9 * 4 + 3, %arg8] {partition_indices = [3, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, 0, d0 floordiv 4, d1)>>
          %84 = arith.mulf %83, %1 : f32
          %85 = affine.load %arg6[%arg9 * 4 + 3, %arg10 * 8] {partition_indices = [3, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %86 = arith.addf %84, %85 : f32
          affine.store %86, %arg6[%arg9 * 4 + 3, %arg10 * 8] {partition_indices = [3, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %87 = arith.mulf %83, %5 : f32
          %88 = affine.load %arg6[%arg9 * 4 + 3, %arg10 * 8 + 1] {partition_indices = [3, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %89 = arith.addf %87, %88 : f32
          affine.store %89, %arg6[%arg9 * 4 + 3, %arg10 * 8 + 1] {partition_indices = [3, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %90 = arith.mulf %83, %9 : f32
          %91 = affine.load %arg6[%arg9 * 4 + 3, %arg10 * 8 + 2] {partition_indices = [3, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %92 = arith.addf %90, %91 : f32
          affine.store %92, %arg6[%arg9 * 4 + 3, %arg10 * 8 + 2] {partition_indices = [3, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %93 = arith.mulf %83, %13 : f32
          %94 = affine.load %arg6[%arg9 * 4 + 3, %arg10 * 8 + 3] {partition_indices = [3, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %95 = arith.addf %93, %94 : f32
          affine.store %95, %arg6[%arg9 * 4 + 3, %arg10 * 8 + 3] {partition_indices = [3, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %96 = arith.mulf %83, %17 : f32
          %97 = affine.load %arg6[%arg9 * 4 + 3, %arg10 * 8 + 4] {partition_indices = [3, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %98 = arith.addf %96, %97 : f32
          affine.store %98, %arg6[%arg9 * 4 + 3, %arg10 * 8 + 4] {partition_indices = [3, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %99 = arith.mulf %83, %21 : f32
          %100 = affine.load %arg6[%arg9 * 4 + 3, %arg10 * 8 + 5] {partition_indices = [3, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %101 = arith.addf %99, %100 : f32
          affine.store %101, %arg6[%arg9 * 4 + 3, %arg10 * 8 + 5] {partition_indices = [3, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %102 = arith.mulf %83, %25 : f32
          %103 = affine.load %arg6[%arg9 * 4 + 3, %arg10 * 8 + 6] {partition_indices = [3, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %104 = arith.addf %102, %103 : f32
          affine.store %104, %arg6[%arg9 * 4 + 3, %arg10 * 8 + 6] {partition_indices = [3, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %105 = arith.mulf %83, %29 : f32
          %106 = affine.load %arg6[%arg9 * 4 + 3, %arg10 * 8 + 7] {partition_indices = [3, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %107 = arith.addf %105, %106 : f32
          affine.store %107, %arg6[%arg9 * 4 + 3, %arg10 * 8 + 7] {partition_indices = [3, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        } {loop_directive = #hls.ld<pipeline=true, targetII=1, dataflow=false, flatten=false>, parallel}
      } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
    } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    affine.for %arg8 = 0 to 64 {
      affine.for %arg9 = 0 to 32 {
        affine.store %arg0, %arg7[%arg8 * 4, %arg9 * 8] {partition_indices = [0, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4, %arg9 * 8 + 1] {partition_indices = [0, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4, %arg9 * 8 + 2] {partition_indices = [0, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4, %arg9 * 8 + 3] {partition_indices = [0, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4, %arg9 * 8 + 4] {partition_indices = [0, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4, %arg9 * 8 + 5] {partition_indices = [0, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4, %arg9 * 8 + 6] {partition_indices = [0, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4, %arg9 * 8 + 7] {partition_indices = [0, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 1, %arg9 * 8] {partition_indices = [1, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 1, %arg9 * 8 + 1] {partition_indices = [1, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 1, %arg9 * 8 + 2] {partition_indices = [1, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 1, %arg9 * 8 + 3] {partition_indices = [1, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 1, %arg9 * 8 + 4] {partition_indices = [1, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 1, %arg9 * 8 + 5] {partition_indices = [1, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 1, %arg9 * 8 + 6] {partition_indices = [1, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 1, %arg9 * 8 + 7] {partition_indices = [1, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 2, %arg9 * 8] {partition_indices = [2, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 2, %arg9 * 8 + 1] {partition_indices = [2, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 2, %arg9 * 8 + 2] {partition_indices = [2, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 2, %arg9 * 8 + 3] {partition_indices = [2, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 2, %arg9 * 8 + 4] {partition_indices = [2, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 2, %arg9 * 8 + 5] {partition_indices = [2, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 2, %arg9 * 8 + 6] {partition_indices = [2, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 2, %arg9 * 8 + 7] {partition_indices = [2, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 3, %arg9 * 8] {partition_indices = [3, 0]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 3, %arg9 * 8 + 1] {partition_indices = [3, 1]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 3, %arg9 * 8 + 2] {partition_indices = [3, 2]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 3, %arg9 * 8 + 3] {partition_indices = [3, 3]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 3, %arg9 * 8 + 4] {partition_indices = [3, 4]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 3, %arg9 * 8 + 5] {partition_indices = [3, 5]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 3, %arg9 * 8 + 6] {partition_indices = [3, 6]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        affine.store %arg0, %arg7[%arg8 * 4 + 3, %arg9 * 8 + 7] {partition_indices = [3, 7]} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
      } {loop_directive = #hls.ld<pipeline=true, targetII=1, dataflow=false, flatten=false>, parallel}
    } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
    affine.for %arg8 = 0 to 256 {
      affine.for %arg9 = 0 to 64 {
        affine.for %arg10 = 0 to 32 {
          %0 = affine.load %arg5[%arg9 * 4, %arg8] {max_mux_size = 8 : i64, partition_indices = [0, -1], timing = #hls.t<14 -> 16, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %1 = affine.load %arg6[%arg8, %arg10 * 8] {max_mux_size = 4 : i64, partition_indices = [-1, 0], timing = #hls.t<14 -> 16, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %2 = arith.mulf %0, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %3 = affine.load %arg7[%arg9 * 4, %arg10 * 8] {partition_indices = [0, 0], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %4 = arith.addf %2, %3 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %4, %arg7[%arg9 * 4, %arg10 * 8] {partition_indices = [0, 0], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %5 = affine.load %arg6[%arg8, %arg10 * 8 + 1] {max_mux_size = 4 : i64, partition_indices = [-1, 1], timing = #hls.t<14 -> 16, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %6 = arith.mulf %0, %5 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %7 = affine.load %arg7[%arg9 * 4, %arg10 * 8 + 1] {partition_indices = [0, 1], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %8 = arith.addf %6, %7 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %8, %arg7[%arg9 * 4, %arg10 * 8 + 1] {partition_indices = [0, 1], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %9 = affine.load %arg6[%arg8, %arg10 * 8 + 2] {max_mux_size = 4 : i64, partition_indices = [-1, 2], timing = #hls.t<14 -> 16, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %10 = arith.mulf %0, %9 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %11 = affine.load %arg7[%arg9 * 4, %arg10 * 8 + 2] {partition_indices = [0, 2], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %12 = arith.addf %10, %11 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %12, %arg7[%arg9 * 4, %arg10 * 8 + 2] {partition_indices = [0, 2], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %13 = affine.load %arg6[%arg8, %arg10 * 8 + 3] {max_mux_size = 4 : i64, partition_indices = [-1, 3], timing = #hls.t<14 -> 16, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %14 = arith.mulf %0, %13 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %15 = affine.load %arg7[%arg9 * 4, %arg10 * 8 + 3] {partition_indices = [0, 3], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %16 = arith.addf %14, %15 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %16, %arg7[%arg9 * 4, %arg10 * 8 + 3] {partition_indices = [0, 3], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %17 = affine.load %arg6[%arg8, %arg10 * 8 + 4] {max_mux_size = 4 : i64, partition_indices = [-1, 4], timing = #hls.t<14 -> 16, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %18 = arith.mulf %0, %17 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %19 = affine.load %arg7[%arg9 * 4, %arg10 * 8 + 4] {partition_indices = [0, 4], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %20 = arith.addf %18, %19 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %20, %arg7[%arg9 * 4, %arg10 * 8 + 4] {partition_indices = [0, 4], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %21 = affine.load %arg6[%arg8, %arg10 * 8 + 5] {max_mux_size = 4 : i64, partition_indices = [-1, 5], timing = #hls.t<14 -> 16, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %22 = arith.mulf %0, %21 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %23 = affine.load %arg7[%arg9 * 4, %arg10 * 8 + 5] {partition_indices = [0, 5], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %24 = arith.addf %22, %23 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %24, %arg7[%arg9 * 4, %arg10 * 8 + 5] {partition_indices = [0, 5], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %25 = affine.load %arg6[%arg8, %arg10 * 8 + 6] {max_mux_size = 4 : i64, partition_indices = [-1, 6], timing = #hls.t<14 -> 16, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %26 = arith.mulf %0, %25 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %27 = affine.load %arg7[%arg9 * 4, %arg10 * 8 + 6] {partition_indices = [0, 6], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %28 = arith.addf %26, %27 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %28, %arg7[%arg9 * 4, %arg10 * 8 + 6] {partition_indices = [0, 6], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %29 = affine.load %arg6[%arg8, %arg10 * 8 + 7] {max_mux_size = 4 : i64, partition_indices = [-1, 7], timing = #hls.t<14 -> 16, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %30 = arith.mulf %0, %29 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %31 = affine.load %arg7[%arg9 * 4, %arg10 * 8 + 7] {partition_indices = [0, 7], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %32 = arith.addf %30, %31 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %32, %arg7[%arg9 * 4, %arg10 * 8 + 7] {partition_indices = [0, 7], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %33 = affine.load %arg5[%arg9 * 4 + 1, %arg8] {max_mux_size = 8 : i64, partition_indices = [1, -1], timing = #hls.t<14 -> 16, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %34 = arith.mulf %33, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %35 = affine.load %arg7[%arg9 * 4 + 1, %arg10 * 8] {partition_indices = [1, 0], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %36 = arith.addf %34, %35 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %36, %arg7[%arg9 * 4 + 1, %arg10 * 8] {partition_indices = [1, 0], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %37 = arith.mulf %33, %5 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %38 = affine.load %arg7[%arg9 * 4 + 1, %arg10 * 8 + 1] {partition_indices = [1, 1], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %39 = arith.addf %37, %38 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %39, %arg7[%arg9 * 4 + 1, %arg10 * 8 + 1] {partition_indices = [1, 1], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %40 = arith.mulf %33, %9 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %41 = affine.load %arg7[%arg9 * 4 + 1, %arg10 * 8 + 2] {partition_indices = [1, 2], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %42 = arith.addf %40, %41 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %42, %arg7[%arg9 * 4 + 1, %arg10 * 8 + 2] {partition_indices = [1, 2], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %43 = arith.mulf %33, %13 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %44 = affine.load %arg7[%arg9 * 4 + 1, %arg10 * 8 + 3] {partition_indices = [1, 3], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %45 = arith.addf %43, %44 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %45, %arg7[%arg9 * 4 + 1, %arg10 * 8 + 3] {partition_indices = [1, 3], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %46 = arith.mulf %33, %17 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %47 = affine.load %arg7[%arg9 * 4 + 1, %arg10 * 8 + 4] {partition_indices = [1, 4], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %48 = arith.addf %46, %47 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %48, %arg7[%arg9 * 4 + 1, %arg10 * 8 + 4] {partition_indices = [1, 4], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %49 = arith.mulf %33, %21 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %50 = affine.load %arg7[%arg9 * 4 + 1, %arg10 * 8 + 5] {partition_indices = [1, 5], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %51 = arith.addf %49, %50 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %51, %arg7[%arg9 * 4 + 1, %arg10 * 8 + 5] {partition_indices = [1, 5], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %52 = arith.mulf %33, %25 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %53 = affine.load %arg7[%arg9 * 4 + 1, %arg10 * 8 + 6] {partition_indices = [1, 6], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %54 = arith.addf %52, %53 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %54, %arg7[%arg9 * 4 + 1, %arg10 * 8 + 6] {partition_indices = [1, 6], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %55 = arith.mulf %33, %29 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %56 = affine.load %arg7[%arg9 * 4 + 1, %arg10 * 8 + 7] {partition_indices = [1, 7], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %57 = arith.addf %55, %56 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %57, %arg7[%arg9 * 4 + 1, %arg10 * 8 + 7] {partition_indices = [1, 7], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %58 = affine.load %arg5[%arg9 * 4 + 2, %arg8] {max_mux_size = 8 : i64, partition_indices = [2, -1], timing = #hls.t<14 -> 16, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %59 = arith.mulf %58, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %60 = affine.load %arg7[%arg9 * 4 + 2, %arg10 * 8] {partition_indices = [2, 0], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %61 = arith.addf %59, %60 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %61, %arg7[%arg9 * 4 + 2, %arg10 * 8] {partition_indices = [2, 0], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %62 = arith.mulf %58, %5 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %63 = affine.load %arg7[%arg9 * 4 + 2, %arg10 * 8 + 1] {partition_indices = [2, 1], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %64 = arith.addf %62, %63 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %64, %arg7[%arg9 * 4 + 2, %arg10 * 8 + 1] {partition_indices = [2, 1], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %65 = arith.mulf %58, %9 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %66 = affine.load %arg7[%arg9 * 4 + 2, %arg10 * 8 + 2] {partition_indices = [2, 2], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %67 = arith.addf %65, %66 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %67, %arg7[%arg9 * 4 + 2, %arg10 * 8 + 2] {partition_indices = [2, 2], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %68 = arith.mulf %58, %13 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %69 = affine.load %arg7[%arg9 * 4 + 2, %arg10 * 8 + 3] {partition_indices = [2, 3], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %70 = arith.addf %68, %69 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %70, %arg7[%arg9 * 4 + 2, %arg10 * 8 + 3] {partition_indices = [2, 3], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %71 = arith.mulf %58, %17 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %72 = affine.load %arg7[%arg9 * 4 + 2, %arg10 * 8 + 4] {partition_indices = [2, 4], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %73 = arith.addf %71, %72 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %73, %arg7[%arg9 * 4 + 2, %arg10 * 8 + 4] {partition_indices = [2, 4], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %74 = arith.mulf %58, %21 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %75 = affine.load %arg7[%arg9 * 4 + 2, %arg10 * 8 + 5] {partition_indices = [2, 5], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %76 = arith.addf %74, %75 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %76, %arg7[%arg9 * 4 + 2, %arg10 * 8 + 5] {partition_indices = [2, 5], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %77 = arith.mulf %58, %25 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %78 = affine.load %arg7[%arg9 * 4 + 2, %arg10 * 8 + 6] {partition_indices = [2, 6], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %79 = arith.addf %77, %78 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %79, %arg7[%arg9 * 4 + 2, %arg10 * 8 + 6] {partition_indices = [2, 6], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %80 = arith.mulf %58, %29 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %81 = affine.load %arg7[%arg9 * 4 + 2, %arg10 * 8 + 7] {partition_indices = [2, 7], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %82 = arith.addf %80, %81 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %82, %arg7[%arg9 * 4 + 2, %arg10 * 8 + 7] {partition_indices = [2, 7], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %83 = affine.load %arg5[%arg9 * 4 + 3, %arg8] {max_mux_size = 8 : i64, partition_indices = [3, -1], timing = #hls.t<14 -> 16, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %84 = arith.mulf %83, %1 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %85 = affine.load %arg7[%arg9 * 4 + 3, %arg10 * 8] {partition_indices = [3, 0], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %86 = arith.addf %84, %85 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %86, %arg7[%arg9 * 4 + 3, %arg10 * 8] {partition_indices = [3, 0], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %87 = arith.mulf %83, %5 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %88 = affine.load %arg7[%arg9 * 4 + 3, %arg10 * 8 + 1] {partition_indices = [3, 1], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %89 = arith.addf %87, %88 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %89, %arg7[%arg9 * 4 + 3, %arg10 * 8 + 1] {partition_indices = [3, 1], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %90 = arith.mulf %83, %9 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %91 = affine.load %arg7[%arg9 * 4 + 3, %arg10 * 8 + 2] {partition_indices = [3, 2], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %92 = arith.addf %90, %91 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %92, %arg7[%arg9 * 4 + 3, %arg10 * 8 + 2] {partition_indices = [3, 2], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %93 = arith.mulf %83, %13 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %94 = affine.load %arg7[%arg9 * 4 + 3, %arg10 * 8 + 3] {partition_indices = [3, 3], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %95 = arith.addf %93, %94 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %95, %arg7[%arg9 * 4 + 3, %arg10 * 8 + 3] {partition_indices = [3, 3], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %96 = arith.mulf %83, %17 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %97 = affine.load %arg7[%arg9 * 4 + 3, %arg10 * 8 + 4] {partition_indices = [3, 4], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %98 = arith.addf %96, %97 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %98, %arg7[%arg9 * 4 + 3, %arg10 * 8 + 4] {partition_indices = [3, 4], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %99 = arith.mulf %83, %21 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %100 = affine.load %arg7[%arg9 * 4 + 3, %arg10 * 8 + 5] {partition_indices = [3, 5], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %101 = arith.addf %99, %100 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %101, %arg7[%arg9 * 4 + 3, %arg10 * 8 + 5] {partition_indices = [3, 5], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %102 = arith.mulf %83, %25 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %103 = affine.load %arg7[%arg9 * 4 + 3, %arg10 * 8 + 6] {partition_indices = [3, 6], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %104 = arith.addf %102, %103 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %104, %arg7[%arg9 * 4 + 3, %arg10 * 8 + 6] {partition_indices = [3, 6], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %105 = arith.mulf %83, %29 {timing = #hls.t<9 -> 14, 5, 1>} : f32
          %106 = affine.load %arg7[%arg9 * 4 + 3, %arg10 * 8 + 7] {partition_indices = [3, 7], timing = #hls.t<9 -> 11, 2, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
          %107 = arith.addf %105, %106 {timing = #hls.t<1 -> 9, 8, 1>} : f32
          affine.store %107, %arg7[%arg9 * 4 + 3, %arg10 * 8 + 7] {partition_indices = [3, 7], timing = #hls.t<0 -> 1, 1, 1>} : memref<256x256xf32, affine_map<(d0, d1) -> (d0 mod 4, d1 mod 8, d0 floordiv 4, d1 floordiv 8)>>
        } {loop_directive = #hls.ld<pipeline=true, targetII=1, dataflow=false, flatten=false>, loop_info = #hls.l<flattenTripCount=32, iterLatency=16, minII=1>, parallel, timing = #hls.t<0 -> 49, 49, 49>}
      } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, loop_info = #hls.l<flattenTripCount=2048, iterLatency=16, minII=1>, parallel, timing = #hls.t<0 -> 2065, 2065, 2065>}
    } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, loop_info = #hls.l<flattenTripCount=524288, iterLatency=16, minII=1>, resource = #hls.r<lut=0, dsp=160, bram=0>, timing = #hls.t<0 -> 524305, 524305, 524305>}
    return
  }
}