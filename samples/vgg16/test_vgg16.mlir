module {
  func @test_vgg16(%arg0: f32, %arg1: memref<64x3x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>, %arg2: memref<64x64x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>, %arg3: memref<128x64x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>, %arg4: memref<128x128x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>, %arg5: memref<256x128x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>, %arg6: memref<256x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>, %arg7: memref<512x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>, %arg8: memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>, %arg9: memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>, %arg10: memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>, %arg11: memref<256x4x4xf32, affine_map<(d0, d1, d2) -> (0, 0, 0, d0, d1, d2)>>, %arg12: memref<512x4x4xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>, %arg13: memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>, %arg14: memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>, %arg15: memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (0, 0, 0, d0, d1, d2)>>, %arg16: memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>, %arg17: memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>, %arg18: memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>, %arg19: memref<512xf32, affine_map<(d0) -> (0, d0)>>, %arg20: memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>, %arg21: memref<64x16x16xf32, affine_map<(d0, d1, d2) -> (0, 0, 0, d0, d1, d2)>>, %arg22: memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>, %arg23: memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>, %arg24: memref<128x8x8xf32, affine_map<(d0, d1, d2) -> (0, 0, 0, d0, d1, d2)>>, %arg25: memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>, %arg26: memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>, %arg27: memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>, %arg28: memref<3x34x34xf32, affine_map<(d0, d1, d2) -> (0, 0, 0, d0, d1, d2)>>) attributes {resource = #hls.r<lut=0, dsp=40, bram=0>, timing = #hls.t<0 -> 41351783, 41351783, 41351783>, top_func} {
    affine.for %arg29 = 0 to 64 {
      affine.for %arg30 = 0 to 32 {
        affine.for %arg31 = 0 to 32 {
          affine.store %arg0, %arg10[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 3 {
      affine.for %arg30 = 0 to 3 {
        affine.for %arg31 = 0 to 3 {
          affine.for %arg32 = 0 to 8 {
            affine.for %arg33 = 0 to 32 {
              affine.for %arg34 = 0 to 32 {
                %0 = affine.load %arg28[%arg29, %arg33 + %arg30, %arg34 + %arg31] {partition_indices = [0, 0, 0]} : memref<3x34x34xf32, affine_map<(d0, d1, d2) -> (0, 0, 0, d0, d1, d2)>>
                %1 = affine.load %arg1[%arg32 * 8, %arg29, %arg30, %arg31] {partition_indices = [0, 0, 0, 0]} : memref<64x3x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %2 = arith.mulf %0, %1 : f32
                %3 = affine.load %arg10[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %4 = arith.addf %2, %3 : f32
                affine.store %4, %arg10[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %5 = affine.load %arg1[%arg32 * 8 + 1, %arg29, %arg30, %arg31] {partition_indices = [1, 0, 0, 0]} : memref<64x3x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %6 = arith.mulf %0, %5 : f32
                %7 = affine.load %arg10[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %8 = arith.addf %6, %7 : f32
                affine.store %8, %arg10[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %9 = affine.load %arg1[%arg32 * 8 + 2, %arg29, %arg30, %arg31] {partition_indices = [2, 0, 0, 0]} : memref<64x3x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %10 = arith.mulf %0, %9 : f32
                %11 = affine.load %arg10[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %12 = arith.addf %10, %11 : f32
                affine.store %12, %arg10[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %13 = affine.load %arg1[%arg32 * 8 + 3, %arg29, %arg30, %arg31] {partition_indices = [3, 0, 0, 0]} : memref<64x3x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %14 = arith.mulf %0, %13 : f32
                %15 = affine.load %arg10[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %16 = arith.addf %14, %15 : f32
                affine.store %16, %arg10[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %17 = affine.load %arg1[%arg32 * 8 + 4, %arg29, %arg30, %arg31] {partition_indices = [4, 0, 0, 0]} : memref<64x3x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %18 = arith.mulf %0, %17 : f32
                %19 = affine.load %arg10[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %20 = arith.addf %18, %19 : f32
                affine.store %20, %arg10[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %21 = affine.load %arg1[%arg32 * 8 + 5, %arg29, %arg30, %arg31] {partition_indices = [5, 0, 0, 0]} : memref<64x3x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %22 = arith.mulf %0, %21 : f32
                %23 = affine.load %arg10[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %24 = arith.addf %22, %23 : f32
                affine.store %24, %arg10[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %25 = affine.load %arg1[%arg32 * 8 + 6, %arg29, %arg30, %arg31] {partition_indices = [6, 0, 0, 0]} : memref<64x3x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %26 = arith.mulf %0, %25 : f32
                %27 = affine.load %arg10[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %28 = arith.addf %26, %27 : f32
                affine.store %28, %arg10[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %29 = affine.load %arg1[%arg32 * 8 + 7, %arg29, %arg30, %arg31] {partition_indices = [7, 0, 0, 0]} : memref<64x3x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %30 = arith.mulf %0, %29 : f32
                %31 = affine.load %arg10[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %32 = arith.addf %30, %31 : f32
                affine.store %32, %arg10[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
              } {loop_directive = #hls.ld<pipeline=true, targetII=1, dataflow=false, flatten=false>, parallel}
            } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
          } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
        } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
      } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    affine.for %arg29 = 0 to 64 {
      affine.for %arg30 = 0 to 32 {
        affine.for %arg31 = 0 to 32 {
          %0 = affine.load %arg10[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
          %1 = arith.maxf %0, %arg0 : f32
          affine.store %1, %arg10[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
          affine.store %arg0, %arg20[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 64 {
      affine.for %arg30 = 0 to 3 {
        affine.for %arg31 = 0 to 3 {
          affine.for %arg32 = 0 to 8 {
            affine.for %arg33 = 0 to 32 {
              affine.for %arg34 = 0 to 32 {
                %0 = affine.load %arg10[%arg29, %arg33 + %arg30, %arg34 + %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %1 = affine.load %arg2[%arg32 * 8, %arg29, %arg30, %arg31] {partition_indices = [0, 0, 0, 0]} : memref<64x64x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %2 = arith.mulf %0, %1 : f32
                %3 = affine.load %arg20[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %4 = arith.addf %2, %3 : f32
                affine.store %4, %arg20[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %5 = affine.load %arg2[%arg32 * 8 + 1, %arg29, %arg30, %arg31] {partition_indices = [1, 0, 0, 0]} : memref<64x64x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %6 = arith.mulf %0, %5 : f32
                %7 = affine.load %arg20[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %8 = arith.addf %6, %7 : f32
                affine.store %8, %arg20[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %9 = affine.load %arg2[%arg32 * 8 + 2, %arg29, %arg30, %arg31] {partition_indices = [2, 0, 0, 0]} : memref<64x64x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %10 = arith.mulf %0, %9 : f32
                %11 = affine.load %arg20[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %12 = arith.addf %10, %11 : f32
                affine.store %12, %arg20[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %13 = affine.load %arg2[%arg32 * 8 + 3, %arg29, %arg30, %arg31] {partition_indices = [3, 0, 0, 0]} : memref<64x64x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %14 = arith.mulf %0, %13 : f32
                %15 = affine.load %arg20[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %16 = arith.addf %14, %15 : f32
                affine.store %16, %arg20[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %17 = affine.load %arg2[%arg32 * 8 + 4, %arg29, %arg30, %arg31] {partition_indices = [4, 0, 0, 0]} : memref<64x64x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %18 = arith.mulf %0, %17 : f32
                %19 = affine.load %arg20[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %20 = arith.addf %18, %19 : f32
                affine.store %20, %arg20[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %21 = affine.load %arg2[%arg32 * 8 + 5, %arg29, %arg30, %arg31] {partition_indices = [5, 0, 0, 0]} : memref<64x64x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %22 = arith.mulf %0, %21 : f32
                %23 = affine.load %arg20[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %24 = arith.addf %22, %23 : f32
                affine.store %24, %arg20[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %25 = affine.load %arg2[%arg32 * 8 + 6, %arg29, %arg30, %arg31] {partition_indices = [6, 0, 0, 0]} : memref<64x64x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %26 = arith.mulf %0, %25 : f32
                %27 = affine.load %arg20[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %28 = arith.addf %26, %27 : f32
                affine.store %28, %arg20[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %29 = affine.load %arg2[%arg32 * 8 + 7, %arg29, %arg30, %arg31] {partition_indices = [7, 0, 0, 0]} : memref<64x64x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %30 = arith.mulf %0, %29 : f32
                %31 = affine.load %arg20[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %32 = arith.addf %30, %31 : f32
                affine.store %32, %arg20[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
              } {loop_directive = #hls.ld<pipeline=true, targetII=1, dataflow=false, flatten=false>, parallel}
            } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
          } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
        } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
      } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    affine.for %arg29 = 0 to 64 {
      affine.for %arg30 = 0 to 32 {
        affine.for %arg31 = 0 to 32 {
          %0 = affine.load %arg20[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
          %1 = arith.maxf %0, %arg0 : f32
          affine.store %1, %arg20[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 64 {
      affine.for %arg30 = 0 to 16 {
        affine.for %arg31 = 0 to 16 {
          affine.store %arg0, %arg21[%arg29, %arg30, %arg31] {partition_indices = [0, 0, 0]} : memref<64x16x16xf32, affine_map<(d0, d1, d2) -> (0, 0, 0, d0, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 64 {
      affine.for %arg30 = 0 to 16 {
        affine.for %arg31 = 0 to 16 {
          affine.for %arg32 = 0 to 3 {
            affine.for %arg33 = 0 to 3 {
              %0 = affine.load %arg20[%arg29, %arg30 * 2 + %arg32, %arg31 * 2 + %arg33] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<64x32x32xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
              affine.store %0, %arg21[%arg29, %arg30, %arg31] {partition_indices = [0, 0, 0]} : memref<64x16x16xf32, affine_map<(d0, d1, d2) -> (0, 0, 0, d0, d1, d2)>>
            }
          }
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 128 {
      affine.for %arg30 = 0 to 16 {
        affine.for %arg31 = 0 to 16 {
          affine.store %arg0, %arg22[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 64 {
      affine.for %arg30 = 0 to 3 {
        affine.for %arg31 = 0 to 3 {
          affine.for %arg32 = 0 to 16 {
            affine.for %arg33 = 0 to 16 {
              affine.for %arg34 = 0 to 16 {
                %0 = affine.load %arg21[%arg29, %arg33 + %arg30, %arg34 + %arg31] {partition_indices = [0, 0, 0]} : memref<64x16x16xf32, affine_map<(d0, d1, d2) -> (0, 0, 0, d0, d1, d2)>>
                %1 = affine.load %arg3[%arg32 * 8, %arg29, %arg30, %arg31] {partition_indices = [0, 0, 0, 0]} : memref<128x64x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %2 = arith.mulf %0, %1 : f32
                %3 = affine.load %arg22[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %4 = arith.addf %2, %3 : f32
                affine.store %4, %arg22[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %5 = affine.load %arg3[%arg32 * 8 + 1, %arg29, %arg30, %arg31] {partition_indices = [1, 0, 0, 0]} : memref<128x64x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %6 = arith.mulf %0, %5 : f32
                %7 = affine.load %arg22[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %8 = arith.addf %6, %7 : f32
                affine.store %8, %arg22[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %9 = affine.load %arg3[%arg32 * 8 + 2, %arg29, %arg30, %arg31] {partition_indices = [2, 0, 0, 0]} : memref<128x64x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %10 = arith.mulf %0, %9 : f32
                %11 = affine.load %arg22[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %12 = arith.addf %10, %11 : f32
                affine.store %12, %arg22[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %13 = affine.load %arg3[%arg32 * 8 + 3, %arg29, %arg30, %arg31] {partition_indices = [3, 0, 0, 0]} : memref<128x64x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %14 = arith.mulf %0, %13 : f32
                %15 = affine.load %arg22[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %16 = arith.addf %14, %15 : f32
                affine.store %16, %arg22[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %17 = affine.load %arg3[%arg32 * 8 + 4, %arg29, %arg30, %arg31] {partition_indices = [4, 0, 0, 0]} : memref<128x64x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %18 = arith.mulf %0, %17 : f32
                %19 = affine.load %arg22[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %20 = arith.addf %18, %19 : f32
                affine.store %20, %arg22[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %21 = affine.load %arg3[%arg32 * 8 + 5, %arg29, %arg30, %arg31] {partition_indices = [5, 0, 0, 0]} : memref<128x64x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %22 = arith.mulf %0, %21 : f32
                %23 = affine.load %arg22[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %24 = arith.addf %22, %23 : f32
                affine.store %24, %arg22[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %25 = affine.load %arg3[%arg32 * 8 + 6, %arg29, %arg30, %arg31] {partition_indices = [6, 0, 0, 0]} : memref<128x64x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %26 = arith.mulf %0, %25 : f32
                %27 = affine.load %arg22[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %28 = arith.addf %26, %27 : f32
                affine.store %28, %arg22[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %29 = affine.load %arg3[%arg32 * 8 + 7, %arg29, %arg30, %arg31] {partition_indices = [7, 0, 0, 0]} : memref<128x64x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %30 = arith.mulf %0, %29 : f32
                %31 = affine.load %arg22[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %32 = arith.addf %30, %31 : f32
                affine.store %32, %arg22[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
              } {loop_directive = #hls.ld<pipeline=true, targetII=1, dataflow=false, flatten=false>, parallel}
            } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
          } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
        } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
      } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    affine.for %arg29 = 0 to 128 {
      affine.for %arg30 = 0 to 16 {
        affine.for %arg31 = 0 to 16 {
          %0 = affine.load %arg22[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
          %1 = arith.maxf %0, %arg0 : f32
          affine.store %1, %arg22[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
          affine.store %arg0, %arg23[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 128 {
      affine.for %arg30 = 0 to 3 {
        affine.for %arg31 = 0 to 3 {
          affine.for %arg32 = 0 to 16 {
            affine.for %arg33 = 0 to 16 {
              affine.for %arg34 = 0 to 16 {
                %0 = affine.load %arg22[%arg29, %arg33 + %arg30, %arg34 + %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %1 = affine.load %arg4[%arg32 * 8, %arg29, %arg30, %arg31] {partition_indices = [0, 0, 0, 0]} : memref<128x128x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %2 = arith.mulf %0, %1 : f32
                %3 = affine.load %arg23[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %4 = arith.addf %2, %3 : f32
                affine.store %4, %arg23[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %5 = affine.load %arg4[%arg32 * 8 + 1, %arg29, %arg30, %arg31] {partition_indices = [1, 0, 0, 0]} : memref<128x128x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %6 = arith.mulf %0, %5 : f32
                %7 = affine.load %arg23[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %8 = arith.addf %6, %7 : f32
                affine.store %8, %arg23[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %9 = affine.load %arg4[%arg32 * 8 + 2, %arg29, %arg30, %arg31] {partition_indices = [2, 0, 0, 0]} : memref<128x128x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %10 = arith.mulf %0, %9 : f32
                %11 = affine.load %arg23[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %12 = arith.addf %10, %11 : f32
                affine.store %12, %arg23[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %13 = affine.load %arg4[%arg32 * 8 + 3, %arg29, %arg30, %arg31] {partition_indices = [3, 0, 0, 0]} : memref<128x128x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %14 = arith.mulf %0, %13 : f32
                %15 = affine.load %arg23[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %16 = arith.addf %14, %15 : f32
                affine.store %16, %arg23[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %17 = affine.load %arg4[%arg32 * 8 + 4, %arg29, %arg30, %arg31] {partition_indices = [4, 0, 0, 0]} : memref<128x128x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %18 = arith.mulf %0, %17 : f32
                %19 = affine.load %arg23[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %20 = arith.addf %18, %19 : f32
                affine.store %20, %arg23[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %21 = affine.load %arg4[%arg32 * 8 + 5, %arg29, %arg30, %arg31] {partition_indices = [5, 0, 0, 0]} : memref<128x128x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %22 = arith.mulf %0, %21 : f32
                %23 = affine.load %arg23[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %24 = arith.addf %22, %23 : f32
                affine.store %24, %arg23[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %25 = affine.load %arg4[%arg32 * 8 + 6, %arg29, %arg30, %arg31] {partition_indices = [6, 0, 0, 0]} : memref<128x128x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %26 = arith.mulf %0, %25 : f32
                %27 = affine.load %arg23[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %28 = arith.addf %26, %27 : f32
                affine.store %28, %arg23[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %29 = affine.load %arg4[%arg32 * 8 + 7, %arg29, %arg30, %arg31] {partition_indices = [7, 0, 0, 0]} : memref<128x128x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %30 = arith.mulf %0, %29 : f32
                %31 = affine.load %arg23[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %32 = arith.addf %30, %31 : f32
                affine.store %32, %arg23[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
              } {loop_directive = #hls.ld<pipeline=true, targetII=1, dataflow=false, flatten=false>, parallel}
            } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
          } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
        } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
      } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    affine.for %arg29 = 0 to 128 {
      affine.for %arg30 = 0 to 16 {
        affine.for %arg31 = 0 to 16 {
          %0 = affine.load %arg23[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
          %1 = arith.maxf %0, %arg0 : f32
          affine.store %1, %arg23[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 128 {
      affine.for %arg30 = 0 to 8 {
        affine.for %arg31 = 0 to 8 {
          affine.store %arg0, %arg24[%arg29, %arg30, %arg31] {partition_indices = [0, 0, 0]} : memref<128x8x8xf32, affine_map<(d0, d1, d2) -> (0, 0, 0, d0, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 128 {
      affine.for %arg30 = 0 to 8 {
        affine.for %arg31 = 0 to 8 {
          affine.for %arg32 = 0 to 3 {
            affine.for %arg33 = 0 to 3 {
              %0 = affine.load %arg23[%arg29, %arg30 * 2 + %arg32, %arg31 * 2 + %arg33] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<128x16x16xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
              affine.store %0, %arg24[%arg29, %arg30, %arg31] {partition_indices = [0, 0, 0]} : memref<128x8x8xf32, affine_map<(d0, d1, d2) -> (0, 0, 0, d0, d1, d2)>>
            }
          }
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 256 {
      affine.for %arg30 = 0 to 8 {
        affine.for %arg31 = 0 to 8 {
          affine.store %arg0, %arg25[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 128 {
      affine.for %arg30 = 0 to 3 {
        affine.for %arg31 = 0 to 3 {
          affine.for %arg32 = 0 to 32 {
            affine.for %arg33 = 0 to 8 {
              affine.for %arg34 = 0 to 8 {
                %0 = affine.load %arg24[%arg29, %arg33 + %arg30, %arg34 + %arg31] {partition_indices = [0, 0, 0]} : memref<128x8x8xf32, affine_map<(d0, d1, d2) -> (0, 0, 0, d0, d1, d2)>>
                %1 = affine.load %arg5[%arg32 * 8, %arg29, %arg30, %arg31] {partition_indices = [0, 0, 0, 0]} : memref<256x128x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %2 = arith.mulf %0, %1 : f32
                %3 = affine.load %arg25[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %4 = arith.addf %2, %3 : f32
                affine.store %4, %arg25[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %5 = affine.load %arg5[%arg32 * 8 + 1, %arg29, %arg30, %arg31] {partition_indices = [1, 0, 0, 0]} : memref<256x128x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %6 = arith.mulf %0, %5 : f32
                %7 = affine.load %arg25[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %8 = arith.addf %6, %7 : f32
                affine.store %8, %arg25[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %9 = affine.load %arg5[%arg32 * 8 + 2, %arg29, %arg30, %arg31] {partition_indices = [2, 0, 0, 0]} : memref<256x128x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %10 = arith.mulf %0, %9 : f32
                %11 = affine.load %arg25[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %12 = arith.addf %10, %11 : f32
                affine.store %12, %arg25[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %13 = affine.load %arg5[%arg32 * 8 + 3, %arg29, %arg30, %arg31] {partition_indices = [3, 0, 0, 0]} : memref<256x128x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %14 = arith.mulf %0, %13 : f32
                %15 = affine.load %arg25[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %16 = arith.addf %14, %15 : f32
                affine.store %16, %arg25[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %17 = affine.load %arg5[%arg32 * 8 + 4, %arg29, %arg30, %arg31] {partition_indices = [4, 0, 0, 0]} : memref<256x128x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %18 = arith.mulf %0, %17 : f32
                %19 = affine.load %arg25[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %20 = arith.addf %18, %19 : f32
                affine.store %20, %arg25[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %21 = affine.load %arg5[%arg32 * 8 + 5, %arg29, %arg30, %arg31] {partition_indices = [5, 0, 0, 0]} : memref<256x128x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %22 = arith.mulf %0, %21 : f32
                %23 = affine.load %arg25[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %24 = arith.addf %22, %23 : f32
                affine.store %24, %arg25[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %25 = affine.load %arg5[%arg32 * 8 + 6, %arg29, %arg30, %arg31] {partition_indices = [6, 0, 0, 0]} : memref<256x128x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %26 = arith.mulf %0, %25 : f32
                %27 = affine.load %arg25[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %28 = arith.addf %26, %27 : f32
                affine.store %28, %arg25[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %29 = affine.load %arg5[%arg32 * 8 + 7, %arg29, %arg30, %arg31] {partition_indices = [7, 0, 0, 0]} : memref<256x128x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %30 = arith.mulf %0, %29 : f32
                %31 = affine.load %arg25[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %32 = arith.addf %30, %31 : f32
                affine.store %32, %arg25[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
              } {loop_directive = #hls.ld<pipeline=true, targetII=1, dataflow=false, flatten=false>, parallel}
            } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
          } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
        } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
      } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    affine.for %arg29 = 0 to 256 {
      affine.for %arg30 = 0 to 8 {
        affine.for %arg31 = 0 to 8 {
          %0 = affine.load %arg25[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
          %1 = arith.maxf %0, %arg0 : f32
          affine.store %1, %arg25[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
          affine.store %arg0, %arg26[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 256 {
      affine.for %arg30 = 0 to 3 {
        affine.for %arg31 = 0 to 3 {
          affine.for %arg32 = 0 to 32 {
            affine.for %arg33 = 0 to 8 {
              affine.for %arg34 = 0 to 8 {
                %0 = affine.load %arg25[%arg29, %arg33 + %arg30, %arg34 + %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %1 = affine.load %arg6[%arg32 * 8, %arg29, %arg30, %arg31] {partition_indices = [0, 0, 0, 0]} : memref<256x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %2 = arith.mulf %0, %1 : f32
                %3 = affine.load %arg26[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %4 = arith.addf %2, %3 : f32
                affine.store %4, %arg26[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %5 = affine.load %arg6[%arg32 * 8 + 1, %arg29, %arg30, %arg31] {partition_indices = [1, 0, 0, 0]} : memref<256x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %6 = arith.mulf %0, %5 : f32
                %7 = affine.load %arg26[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %8 = arith.addf %6, %7 : f32
                affine.store %8, %arg26[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %9 = affine.load %arg6[%arg32 * 8 + 2, %arg29, %arg30, %arg31] {partition_indices = [2, 0, 0, 0]} : memref<256x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %10 = arith.mulf %0, %9 : f32
                %11 = affine.load %arg26[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %12 = arith.addf %10, %11 : f32
                affine.store %12, %arg26[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %13 = affine.load %arg6[%arg32 * 8 + 3, %arg29, %arg30, %arg31] {partition_indices = [3, 0, 0, 0]} : memref<256x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %14 = arith.mulf %0, %13 : f32
                %15 = affine.load %arg26[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %16 = arith.addf %14, %15 : f32
                affine.store %16, %arg26[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %17 = affine.load %arg6[%arg32 * 8 + 4, %arg29, %arg30, %arg31] {partition_indices = [4, 0, 0, 0]} : memref<256x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %18 = arith.mulf %0, %17 : f32
                %19 = affine.load %arg26[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %20 = arith.addf %18, %19 : f32
                affine.store %20, %arg26[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %21 = affine.load %arg6[%arg32 * 8 + 5, %arg29, %arg30, %arg31] {partition_indices = [5, 0, 0, 0]} : memref<256x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %22 = arith.mulf %0, %21 : f32
                %23 = affine.load %arg26[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %24 = arith.addf %22, %23 : f32
                affine.store %24, %arg26[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %25 = affine.load %arg6[%arg32 * 8 + 6, %arg29, %arg30, %arg31] {partition_indices = [6, 0, 0, 0]} : memref<256x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %26 = arith.mulf %0, %25 : f32
                %27 = affine.load %arg26[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %28 = arith.addf %26, %27 : f32
                affine.store %28, %arg26[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %29 = affine.load %arg6[%arg32 * 8 + 7, %arg29, %arg30, %arg31] {partition_indices = [7, 0, 0, 0]} : memref<256x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %30 = arith.mulf %0, %29 : f32
                %31 = affine.load %arg26[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %32 = arith.addf %30, %31 : f32
                affine.store %32, %arg26[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
              } {loop_directive = #hls.ld<pipeline=true, targetII=1, dataflow=false, flatten=false>, parallel}
            } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
          } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
        } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
      } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    affine.for %arg29 = 0 to 256 {
      affine.for %arg30 = 0 to 8 {
        affine.for %arg31 = 0 to 8 {
          %0 = affine.load %arg26[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
          %1 = arith.maxf %0, %arg0 : f32
          affine.store %1, %arg26[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 256 {
      affine.for %arg30 = 0 to 8 {
        affine.for %arg31 = 0 to 8 {
          affine.store %arg0, %arg27[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 256 {
      affine.for %arg30 = 0 to 3 {
        affine.for %arg31 = 0 to 3 {
          affine.for %arg32 = 0 to 32 {
            affine.for %arg33 = 0 to 8 {
              affine.for %arg34 = 0 to 8 {
                %0 = affine.load %arg26[%arg29, %arg33 + %arg30, %arg34 + %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %1 = affine.load %arg6[%arg32 * 8, %arg29, %arg30, %arg31] {partition_indices = [0, 0, 0, 0]} : memref<256x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %2 = arith.mulf %0, %1 : f32
                %3 = affine.load %arg27[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %4 = arith.addf %2, %3 : f32
                affine.store %4, %arg27[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %5 = affine.load %arg6[%arg32 * 8 + 1, %arg29, %arg30, %arg31] {partition_indices = [1, 0, 0, 0]} : memref<256x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %6 = arith.mulf %0, %5 : f32
                %7 = affine.load %arg27[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %8 = arith.addf %6, %7 : f32
                affine.store %8, %arg27[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %9 = affine.load %arg6[%arg32 * 8 + 2, %arg29, %arg30, %arg31] {partition_indices = [2, 0, 0, 0]} : memref<256x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %10 = arith.mulf %0, %9 : f32
                %11 = affine.load %arg27[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %12 = arith.addf %10, %11 : f32
                affine.store %12, %arg27[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %13 = affine.load %arg6[%arg32 * 8 + 3, %arg29, %arg30, %arg31] {partition_indices = [3, 0, 0, 0]} : memref<256x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %14 = arith.mulf %0, %13 : f32
                %15 = affine.load %arg27[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %16 = arith.addf %14, %15 : f32
                affine.store %16, %arg27[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %17 = affine.load %arg6[%arg32 * 8 + 4, %arg29, %arg30, %arg31] {partition_indices = [4, 0, 0, 0]} : memref<256x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %18 = arith.mulf %0, %17 : f32
                %19 = affine.load %arg27[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %20 = arith.addf %18, %19 : f32
                affine.store %20, %arg27[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %21 = affine.load %arg6[%arg32 * 8 + 5, %arg29, %arg30, %arg31] {partition_indices = [5, 0, 0, 0]} : memref<256x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %22 = arith.mulf %0, %21 : f32
                %23 = affine.load %arg27[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %24 = arith.addf %22, %23 : f32
                affine.store %24, %arg27[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %25 = affine.load %arg6[%arg32 * 8 + 6, %arg29, %arg30, %arg31] {partition_indices = [6, 0, 0, 0]} : memref<256x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %26 = arith.mulf %0, %25 : f32
                %27 = affine.load %arg27[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %28 = arith.addf %26, %27 : f32
                affine.store %28, %arg27[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %29 = affine.load %arg6[%arg32 * 8 + 7, %arg29, %arg30, %arg31] {partition_indices = [7, 0, 0, 0]} : memref<256x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %30 = arith.mulf %0, %29 : f32
                %31 = affine.load %arg27[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %32 = arith.addf %30, %31 : f32
                affine.store %32, %arg27[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
              } {loop_directive = #hls.ld<pipeline=true, targetII=1, dataflow=false, flatten=false>, parallel}
            } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
          } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
        } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
      } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    affine.for %arg29 = 0 to 256 {
      affine.for %arg30 = 0 to 8 {
        affine.for %arg31 = 0 to 8 {
          %0 = affine.load %arg27[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
          %1 = arith.maxf %0, %arg0 : f32
          affine.store %1, %arg27[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 256 {
      affine.for %arg30 = 0 to 4 {
        affine.for %arg31 = 0 to 4 {
          affine.store %arg0, %arg11[%arg29, %arg30, %arg31] {partition_indices = [0, 0, 0]} : memref<256x4x4xf32, affine_map<(d0, d1, d2) -> (0, 0, 0, d0, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 256 {
      affine.for %arg30 = 0 to 4 {
        affine.for %arg31 = 0 to 4 {
          affine.for %arg32 = 0 to 3 {
            affine.for %arg33 = 0 to 3 {
              %0 = affine.load %arg27[%arg29, %arg30 * 2 + %arg32, %arg31 * 2 + %arg33] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<256x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
              affine.store %0, %arg11[%arg29, %arg30, %arg31] {partition_indices = [0, 0, 0]} : memref<256x4x4xf32, affine_map<(d0, d1, d2) -> (0, 0, 0, d0, d1, d2)>>
            }
          }
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 512 {
      affine.for %arg30 = 0 to 4 {
        affine.for %arg31 = 0 to 4 {
          affine.store %arg0, %arg12[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x4x4xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 256 {
      affine.for %arg30 = 0 to 3 {
        affine.for %arg31 = 0 to 3 {
          affine.for %arg32 = 0 to 64 {
            affine.for %arg33 = 0 to 4 {
              affine.for %arg34 = 0 to 4 {
                %0 = affine.load %arg11[%arg29, %arg33 + %arg30, %arg34 + %arg31] {partition_indices = [0, 0, 0]} : memref<256x4x4xf32, affine_map<(d0, d1, d2) -> (0, 0, 0, d0, d1, d2)>>
                %1 = affine.load %arg7[%arg32 * 8, %arg29, %arg30, %arg31] {partition_indices = [0, 0, 0, 0]} : memref<512x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %2 = arith.mulf %0, %1 : f32
                %3 = affine.load %arg12[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<512x4x4xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %4 = arith.addf %2, %3 : f32
                affine.store %4, %arg12[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<512x4x4xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %5 = affine.load %arg7[%arg32 * 8 + 1, %arg29, %arg30, %arg31] {partition_indices = [1, 0, 0, 0]} : memref<512x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %6 = arith.mulf %0, %5 : f32
                %7 = affine.load %arg12[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<512x4x4xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %8 = arith.addf %6, %7 : f32
                affine.store %8, %arg12[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<512x4x4xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %9 = affine.load %arg7[%arg32 * 8 + 2, %arg29, %arg30, %arg31] {partition_indices = [2, 0, 0, 0]} : memref<512x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %10 = arith.mulf %0, %9 : f32
                %11 = affine.load %arg12[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<512x4x4xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %12 = arith.addf %10, %11 : f32
                affine.store %12, %arg12[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<512x4x4xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %13 = affine.load %arg7[%arg32 * 8 + 3, %arg29, %arg30, %arg31] {partition_indices = [3, 0, 0, 0]} : memref<512x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %14 = arith.mulf %0, %13 : f32
                %15 = affine.load %arg12[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<512x4x4xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %16 = arith.addf %14, %15 : f32
                affine.store %16, %arg12[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<512x4x4xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %17 = affine.load %arg7[%arg32 * 8 + 4, %arg29, %arg30, %arg31] {partition_indices = [4, 0, 0, 0]} : memref<512x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %18 = arith.mulf %0, %17 : f32
                %19 = affine.load %arg12[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<512x4x4xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %20 = arith.addf %18, %19 : f32
                affine.store %20, %arg12[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<512x4x4xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %21 = affine.load %arg7[%arg32 * 8 + 5, %arg29, %arg30, %arg31] {partition_indices = [5, 0, 0, 0]} : memref<512x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %22 = arith.mulf %0, %21 : f32
                %23 = affine.load %arg12[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<512x4x4xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %24 = arith.addf %22, %23 : f32
                affine.store %24, %arg12[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<512x4x4xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %25 = affine.load %arg7[%arg32 * 8 + 6, %arg29, %arg30, %arg31] {partition_indices = [6, 0, 0, 0]} : memref<512x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %26 = arith.mulf %0, %25 : f32
                %27 = affine.load %arg12[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<512x4x4xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %28 = arith.addf %26, %27 : f32
                affine.store %28, %arg12[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<512x4x4xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %29 = affine.load %arg7[%arg32 * 8 + 7, %arg29, %arg30, %arg31] {partition_indices = [7, 0, 0, 0]} : memref<512x256x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %30 = arith.mulf %0, %29 : f32
                %31 = affine.load %arg12[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<512x4x4xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %32 = arith.addf %30, %31 : f32
                affine.store %32, %arg12[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<512x4x4xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
              } {loop_directive = #hls.ld<pipeline=true, targetII=1, dataflow=false, flatten=false>, parallel}
            } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
          } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
        } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
      } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    affine.for %arg29 = 0 to 512 {
      affine.for %arg30 = 0 to 4 {
        affine.for %arg31 = 0 to 4 {
          %0 = affine.load %arg12[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x4x4xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
          %1 = arith.maxf %0, %arg0 : f32
          affine.store %1, %arg12[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x4x4xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
          affine.store %arg0, %arg13[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 512 {
      affine.for %arg30 = 0 to 3 {
        affine.for %arg31 = 0 to 3 {
          affine.for %arg32 = 0 to 64 {
            affine.for %arg33 = 0 to 4 {
              affine.for %arg34 = 0 to 4 {
                %0 = affine.load %arg12[%arg29, %arg33 + %arg30, %arg34 + %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x4x4xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %1 = affine.load %arg8[%arg32 * 8, %arg29, %arg30, %arg31] {partition_indices = [0, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %2 = arith.mulf %0, %1 : f32
                %3 = affine.load %arg13[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %4 = arith.addf %2, %3 : f32
                affine.store %4, %arg13[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %5 = affine.load %arg8[%arg32 * 8 + 1, %arg29, %arg30, %arg31] {partition_indices = [1, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %6 = arith.mulf %0, %5 : f32
                %7 = affine.load %arg13[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %8 = arith.addf %6, %7 : f32
                affine.store %8, %arg13[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %9 = affine.load %arg8[%arg32 * 8 + 2, %arg29, %arg30, %arg31] {partition_indices = [2, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %10 = arith.mulf %0, %9 : f32
                %11 = affine.load %arg13[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %12 = arith.addf %10, %11 : f32
                affine.store %12, %arg13[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %13 = affine.load %arg8[%arg32 * 8 + 3, %arg29, %arg30, %arg31] {partition_indices = [3, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %14 = arith.mulf %0, %13 : f32
                %15 = affine.load %arg13[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %16 = arith.addf %14, %15 : f32
                affine.store %16, %arg13[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %17 = affine.load %arg8[%arg32 * 8 + 4, %arg29, %arg30, %arg31] {partition_indices = [4, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %18 = arith.mulf %0, %17 : f32
                %19 = affine.load %arg13[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %20 = arith.addf %18, %19 : f32
                affine.store %20, %arg13[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %21 = affine.load %arg8[%arg32 * 8 + 5, %arg29, %arg30, %arg31] {partition_indices = [5, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %22 = arith.mulf %0, %21 : f32
                %23 = affine.load %arg13[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %24 = arith.addf %22, %23 : f32
                affine.store %24, %arg13[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %25 = affine.load %arg8[%arg32 * 8 + 6, %arg29, %arg30, %arg31] {partition_indices = [6, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %26 = arith.mulf %0, %25 : f32
                %27 = affine.load %arg13[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %28 = arith.addf %26, %27 : f32
                affine.store %28, %arg13[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %29 = affine.load %arg8[%arg32 * 8 + 7, %arg29, %arg30, %arg31] {partition_indices = [7, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %30 = arith.mulf %0, %29 : f32
                %31 = affine.load %arg13[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %32 = arith.addf %30, %31 : f32
                affine.store %32, %arg13[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
              } {loop_directive = #hls.ld<pipeline=true, targetII=1, dataflow=false, flatten=false>, parallel}
            } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
          } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
        } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
      } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    affine.for %arg29 = 0 to 512 {
      affine.for %arg30 = 0 to 4 {
        affine.for %arg31 = 0 to 4 {
          %0 = affine.load %arg13[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
          %1 = arith.maxf %0, %arg0 : f32
          affine.store %1, %arg13[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
          affine.store %arg0, %arg14[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 512 {
      affine.for %arg30 = 0 to 3 {
        affine.for %arg31 = 0 to 3 {
          affine.for %arg32 = 0 to 64 {
            affine.for %arg33 = 0 to 4 {
              affine.for %arg34 = 0 to 4 {
                %0 = affine.load %arg13[%arg29, %arg33 + %arg30, %arg34 + %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %1 = affine.load %arg8[%arg32 * 8, %arg29, %arg30, %arg31] {partition_indices = [0, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %2 = arith.mulf %0, %1 : f32
                %3 = affine.load %arg14[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %4 = arith.addf %2, %3 : f32
                affine.store %4, %arg14[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %5 = affine.load %arg8[%arg32 * 8 + 1, %arg29, %arg30, %arg31] {partition_indices = [1, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %6 = arith.mulf %0, %5 : f32
                %7 = affine.load %arg14[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %8 = arith.addf %6, %7 : f32
                affine.store %8, %arg14[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %9 = affine.load %arg8[%arg32 * 8 + 2, %arg29, %arg30, %arg31] {partition_indices = [2, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %10 = arith.mulf %0, %9 : f32
                %11 = affine.load %arg14[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %12 = arith.addf %10, %11 : f32
                affine.store %12, %arg14[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %13 = affine.load %arg8[%arg32 * 8 + 3, %arg29, %arg30, %arg31] {partition_indices = [3, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %14 = arith.mulf %0, %13 : f32
                %15 = affine.load %arg14[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %16 = arith.addf %14, %15 : f32
                affine.store %16, %arg14[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %17 = affine.load %arg8[%arg32 * 8 + 4, %arg29, %arg30, %arg31] {partition_indices = [4, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %18 = arith.mulf %0, %17 : f32
                %19 = affine.load %arg14[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %20 = arith.addf %18, %19 : f32
                affine.store %20, %arg14[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %21 = affine.load %arg8[%arg32 * 8 + 5, %arg29, %arg30, %arg31] {partition_indices = [5, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %22 = arith.mulf %0, %21 : f32
                %23 = affine.load %arg14[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %24 = arith.addf %22, %23 : f32
                affine.store %24, %arg14[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %25 = affine.load %arg8[%arg32 * 8 + 6, %arg29, %arg30, %arg31] {partition_indices = [6, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %26 = arith.mulf %0, %25 : f32
                %27 = affine.load %arg14[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %28 = arith.addf %26, %27 : f32
                affine.store %28, %arg14[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %29 = affine.load %arg8[%arg32 * 8 + 7, %arg29, %arg30, %arg31] {partition_indices = [7, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %30 = arith.mulf %0, %29 : f32
                %31 = affine.load %arg14[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %32 = arith.addf %30, %31 : f32
                affine.store %32, %arg14[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
              } {loop_directive = #hls.ld<pipeline=true, targetII=1, dataflow=false, flatten=false>, parallel}
            } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
          } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
        } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
      } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    affine.for %arg29 = 0 to 512 {
      affine.for %arg30 = 0 to 4 {
        affine.for %arg31 = 0 to 4 {
          %0 = affine.load %arg14[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
          %1 = arith.maxf %0, %arg0 : f32
          affine.store %1, %arg14[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 512 {
      affine.for %arg30 = 0 to 2 {
        affine.for %arg31 = 0 to 2 {
          affine.store %arg0, %arg15[%arg29, %arg30, %arg31] {partition_indices = [0, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (0, 0, 0, d0, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 512 {
      affine.for %arg30 = 0 to 2 {
        affine.for %arg31 = 0 to 2 {
          affine.for %arg32 = 0 to 3 {
            affine.for %arg33 = 0 to 3 {
              %0 = affine.load %arg14[%arg29, %arg30 * 2 + %arg32, %arg31 * 2 + %arg33] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x8x8xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
              affine.store %0, %arg15[%arg29, %arg30, %arg31] {partition_indices = [0, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (0, 0, 0, d0, d1, d2)>>
            }
          }
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 512 {
      affine.for %arg30 = 0 to 2 {
        affine.for %arg31 = 0 to 2 {
          affine.store %arg0, %arg16[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 512 {
      affine.for %arg30 = 0 to 3 {
        affine.for %arg31 = 0 to 3 {
          affine.for %arg32 = 0 to 64 {
            affine.for %arg33 = 0 to 2 {
              affine.for %arg34 = 0 to 2 {
                %0 = affine.load %arg15[%arg29, %arg33 + %arg30, %arg34 + %arg31] {partition_indices = [0, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (0, 0, 0, d0, d1, d2)>>
                %1 = affine.load %arg9[%arg32 * 8, %arg29, %arg30, %arg31] {partition_indices = [0, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %2 = arith.mulf %0, %1 : f32
                %3 = affine.load %arg16[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %4 = arith.addf %2, %3 : f32
                affine.store %4, %arg16[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %5 = affine.load %arg9[%arg32 * 8 + 1, %arg29, %arg30, %arg31] {partition_indices = [1, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %6 = arith.mulf %0, %5 : f32
                %7 = affine.load %arg16[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %8 = arith.addf %6, %7 : f32
                affine.store %8, %arg16[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %9 = affine.load %arg9[%arg32 * 8 + 2, %arg29, %arg30, %arg31] {partition_indices = [2, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %10 = arith.mulf %0, %9 : f32
                %11 = affine.load %arg16[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %12 = arith.addf %10, %11 : f32
                affine.store %12, %arg16[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %13 = affine.load %arg9[%arg32 * 8 + 3, %arg29, %arg30, %arg31] {partition_indices = [3, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %14 = arith.mulf %0, %13 : f32
                %15 = affine.load %arg16[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %16 = arith.addf %14, %15 : f32
                affine.store %16, %arg16[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %17 = affine.load %arg9[%arg32 * 8 + 4, %arg29, %arg30, %arg31] {partition_indices = [4, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %18 = arith.mulf %0, %17 : f32
                %19 = affine.load %arg16[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %20 = arith.addf %18, %19 : f32
                affine.store %20, %arg16[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %21 = affine.load %arg9[%arg32 * 8 + 5, %arg29, %arg30, %arg31] {partition_indices = [5, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %22 = arith.mulf %0, %21 : f32
                %23 = affine.load %arg16[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %24 = arith.addf %22, %23 : f32
                affine.store %24, %arg16[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %25 = affine.load %arg9[%arg32 * 8 + 6, %arg29, %arg30, %arg31] {partition_indices = [6, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %26 = arith.mulf %0, %25 : f32
                %27 = affine.load %arg16[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %28 = arith.addf %26, %27 : f32
                affine.store %28, %arg16[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %29 = affine.load %arg9[%arg32 * 8 + 7, %arg29, %arg30, %arg31] {partition_indices = [7, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %30 = arith.mulf %0, %29 : f32
                %31 = affine.load %arg16[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %32 = arith.addf %30, %31 : f32
                affine.store %32, %arg16[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
              } {loop_directive = #hls.ld<pipeline=true, targetII=1, dataflow=false, flatten=false>, parallel}
            } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
          } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
        } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
      } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    affine.for %arg29 = 0 to 512 {
      affine.for %arg30 = 0 to 2 {
        affine.for %arg31 = 0 to 2 {
          %0 = affine.load %arg16[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
          %1 = arith.maxf %0, %arg0 : f32
          affine.store %1, %arg16[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
          affine.store %arg0, %arg17[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 512 {
      affine.for %arg30 = 0 to 3 {
        affine.for %arg31 = 0 to 3 {
          affine.for %arg32 = 0 to 64 {
            affine.for %arg33 = 0 to 2 {
              affine.for %arg34 = 0 to 2 {
                %0 = affine.load %arg16[%arg29, %arg33 + %arg30, %arg34 + %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %1 = affine.load %arg9[%arg32 * 8, %arg29, %arg30, %arg31] {partition_indices = [0, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %2 = arith.mulf %0, %1 : f32
                %3 = affine.load %arg17[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %4 = arith.addf %2, %3 : f32
                affine.store %4, %arg17[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %5 = affine.load %arg9[%arg32 * 8 + 1, %arg29, %arg30, %arg31] {partition_indices = [1, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %6 = arith.mulf %0, %5 : f32
                %7 = affine.load %arg17[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %8 = arith.addf %6, %7 : f32
                affine.store %8, %arg17[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %9 = affine.load %arg9[%arg32 * 8 + 2, %arg29, %arg30, %arg31] {partition_indices = [2, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %10 = arith.mulf %0, %9 : f32
                %11 = affine.load %arg17[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %12 = arith.addf %10, %11 : f32
                affine.store %12, %arg17[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %13 = affine.load %arg9[%arg32 * 8 + 3, %arg29, %arg30, %arg31] {partition_indices = [3, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %14 = arith.mulf %0, %13 : f32
                %15 = affine.load %arg17[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %16 = arith.addf %14, %15 : f32
                affine.store %16, %arg17[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %17 = affine.load %arg9[%arg32 * 8 + 4, %arg29, %arg30, %arg31] {partition_indices = [4, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %18 = arith.mulf %0, %17 : f32
                %19 = affine.load %arg17[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %20 = arith.addf %18, %19 : f32
                affine.store %20, %arg17[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %21 = affine.load %arg9[%arg32 * 8 + 5, %arg29, %arg30, %arg31] {partition_indices = [5, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %22 = arith.mulf %0, %21 : f32
                %23 = affine.load %arg17[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %24 = arith.addf %22, %23 : f32
                affine.store %24, %arg17[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %25 = affine.load %arg9[%arg32 * 8 + 6, %arg29, %arg30, %arg31] {partition_indices = [6, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %26 = arith.mulf %0, %25 : f32
                %27 = affine.load %arg17[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %28 = arith.addf %26, %27 : f32
                affine.store %28, %arg17[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %29 = affine.load %arg9[%arg32 * 8 + 7, %arg29, %arg30, %arg31] {partition_indices = [7, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %30 = arith.mulf %0, %29 : f32
                %31 = affine.load %arg17[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %32 = arith.addf %30, %31 : f32
                affine.store %32, %arg17[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
              } {loop_directive = #hls.ld<pipeline=true, targetII=1, dataflow=false, flatten=false>, parallel}
            } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
          } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
        } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
      } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    affine.for %arg29 = 0 to 512 {
      affine.for %arg30 = 0 to 2 {
        affine.for %arg31 = 0 to 2 {
          %0 = affine.load %arg17[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
          %1 = arith.maxf %0, %arg0 : f32
          affine.store %1, %arg17[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 512 {
      affine.for %arg30 = 0 to 2 {
        affine.for %arg31 = 0 to 2 {
          affine.store %arg0, %arg18[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 512 {
      affine.for %arg30 = 0 to 3 {
        affine.for %arg31 = 0 to 3 {
          affine.for %arg32 = 0 to 64 {
            affine.for %arg33 = 0 to 2 {
              affine.for %arg34 = 0 to 2 {
                %0 = affine.load %arg17[%arg29, %arg33 + %arg30, %arg34 + %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %1 = affine.load %arg9[%arg32 * 8, %arg29, %arg30, %arg31] {partition_indices = [0, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %2 = arith.mulf %0, %1 : f32
                %3 = affine.load %arg18[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %4 = arith.addf %2, %3 : f32
                affine.store %4, %arg18[%arg32 * 8, %arg33, %arg34] {partition_indices = [0, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %5 = affine.load %arg9[%arg32 * 8 + 1, %arg29, %arg30, %arg31] {partition_indices = [1, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %6 = arith.mulf %0, %5 : f32
                %7 = affine.load %arg18[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %8 = arith.addf %6, %7 : f32
                affine.store %8, %arg18[%arg32 * 8 + 1, %arg33, %arg34] {partition_indices = [1, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %9 = affine.load %arg9[%arg32 * 8 + 2, %arg29, %arg30, %arg31] {partition_indices = [2, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %10 = arith.mulf %0, %9 : f32
                %11 = affine.load %arg18[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %12 = arith.addf %10, %11 : f32
                affine.store %12, %arg18[%arg32 * 8 + 2, %arg33, %arg34] {partition_indices = [2, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %13 = affine.load %arg9[%arg32 * 8 + 3, %arg29, %arg30, %arg31] {partition_indices = [3, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %14 = arith.mulf %0, %13 : f32
                %15 = affine.load %arg18[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %16 = arith.addf %14, %15 : f32
                affine.store %16, %arg18[%arg32 * 8 + 3, %arg33, %arg34] {partition_indices = [3, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %17 = affine.load %arg9[%arg32 * 8 + 4, %arg29, %arg30, %arg31] {partition_indices = [4, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %18 = arith.mulf %0, %17 : f32
                %19 = affine.load %arg18[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %20 = arith.addf %18, %19 : f32
                affine.store %20, %arg18[%arg32 * 8 + 4, %arg33, %arg34] {partition_indices = [4, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %21 = affine.load %arg9[%arg32 * 8 + 5, %arg29, %arg30, %arg31] {partition_indices = [5, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %22 = arith.mulf %0, %21 : f32
                %23 = affine.load %arg18[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %24 = arith.addf %22, %23 : f32
                affine.store %24, %arg18[%arg32 * 8 + 5, %arg33, %arg34] {partition_indices = [5, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %25 = affine.load %arg9[%arg32 * 8 + 6, %arg29, %arg30, %arg31] {partition_indices = [6, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %26 = arith.mulf %0, %25 : f32
                %27 = affine.load %arg18[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %28 = arith.addf %26, %27 : f32
                affine.store %28, %arg18[%arg32 * 8 + 6, %arg33, %arg34] {partition_indices = [6, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %29 = affine.load %arg9[%arg32 * 8 + 7, %arg29, %arg30, %arg31] {partition_indices = [7, 0, 0, 0]} : memref<512x512x3x3xf32, affine_map<(d0, d1, d2, d3) -> (d0 mod 8, 0, 0, 0, d0 floordiv 8, d1, d2, d3)>>
                %30 = arith.mulf %0, %29 : f32
                %31 = affine.load %arg18[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
                %32 = arith.addf %30, %31 : f32
                affine.store %32, %arg18[%arg32 * 8 + 7, %arg33, %arg34] {partition_indices = [7, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
              } {loop_directive = #hls.ld<pipeline=true, targetII=1, dataflow=false, flatten=false>, parallel}
            } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
          } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>, parallel}
        } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
      } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    } {loop_directive = #hls.ld<pipeline=false, targetII=1, dataflow=false, flatten=true>}
    affine.for %arg29 = 0 to 512 {
      affine.for %arg30 = 0 to 2 {
        affine.for %arg31 = 0 to 2 {
          %0 = affine.load %arg18[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
          %1 = arith.maxf %0, %arg0 : f32
          affine.store %1, %arg18[%arg29, %arg30, %arg31] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0]} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
        } {parallel}
      } {parallel}
    } {parallel}
    affine.for %arg29 = 0 to 512 {
      affine.store %arg0, %arg19[%arg29] {partition_indices = [0]} : memref<512xf32, affine_map<(d0) -> (0, d0)>>
    } {parallel}
    affine.for %arg29 = 0 to 512 {
      affine.for %arg30 = 0 to 3 {
        affine.for %arg31 = 0 to 3 {
          %0 = affine.load %arg18[%arg29, %arg30 + 2, %arg31 + 2] {max_mux_size = 8 : i64, partition_indices = [-1, 0, 0], timing = #hls.t<1 -> 3, 2, 1>} : memref<512x2x2xf32, affine_map<(d0, d1, d2) -> (d0 mod 8, 0, 0, d0 floordiv 8, d1, d2)>>
          affine.store %0, %arg19[%arg29] {partition_indices = [0], timing = #hls.t<0 -> 1, 1, 1>} : memref<512xf32, affine_map<(d0) -> (0, d0)>>
        } {loop_info = #hls.l<flattenTripCount=3, iterLatency=3, minII=3>, timing = #hls.t<0 -> 11, 11, 11>}
      } {loop_info = #hls.l<flattenTripCount=3, iterLatency=11, minII=11>, timing = #hls.t<0 -> 35, 35, 35>}
    } {loop_info = #hls.l<flattenTripCount=512, iterLatency=35, minII=35>, parallel, resource = #hls.r<lut=0, dsp=0, bram=0>, timing = #hls.t<0 -> 17922, 17922, 17922>}
    return
  }
}