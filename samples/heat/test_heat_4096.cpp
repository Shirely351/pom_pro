
//===------------------------------------------------------------*- C++ -*-===//
//
// Automatically generated file for High-level Synthesis (HLS).
//
//===----------------------------------------------------------------------===//

#include <algorithm>
#include <ap_axi_sdata.h>
#include <ap_fixed.h>
#include <ap_int.h>
#include <hls_math.h>
#include <hls_stream.h>
#include <math.h>
#include <stdint.h>
#include <string.h>

using namespace std;

/// This is top function.
/// Latency=33538071, interval=33538071
/// DSP=5, BRAM=0
void test_heat_4096(
  float v0,
  float v1,
  float v2[4096],
  float v3[4096]
) {	// L4, [0,33538071)
  #pragma HLS interface s_axilite port=return bundle=ctrl
  #pragma HLS interface s_axilite port=v0 bundle=ctrl
  #pragma HLS interface s_axilite port=v1 bundle=ctrl
  #pragma HLS interface bram port=v2
  #pragma HLS interface bram port=v3

  #pragma HLS array_partition variable=v2 cyclic factor=2 dim=1
  #pragma HLS resource variable=v2 core=ram_s2p_bram

  #pragma HLS array_partition variable=v3 cyclic factor=4 dim=1
  #pragma HLS resource variable=v3 core=ram_s2p_bram

  for (int v4 = 0; v4 < 4096; v4 += 1) {	// L5, [0,33538069), iterCycle=23, II=4
    for (int v5 = 0; v5 < 2047; v5 += 1) {	// L6, [4098,12307), iterCycle=23, II=4
      #pragma HLS pipeline II=1
      float v6 = v3[((v5 * 2) + 1)];	// L7, [4118,4120)
      float v7 = v1 * v6;	// L8, [4113,4117)
      float v8 = v3[(v5 * 2)];	// L9, [4119,4121)
      float v9 = v7 - v8;	// L10, [4108,4113)
      float v10 = v3[((v5 * 2) + 2)];	// L11, [4117,4119)
      float v11 = v10 + v9;	// L12, [4103,4108)
      float v12 = v11 * v0;	// L13, [4099,4103)
      v2[((v5 * 2) + 1)] = v12;	// L14, [4098,4099)
      float v13 = v1 * v10;	// L15, [4113,4117)
      float v14 = v13 - v6;	// L16, [4108,4113)
      float v15 = v3[((v5 * 2) + 3)];	// L17, [4108,4110)
      float v16 = v15 + v14;	// L18, [4103,4108)
      float v17 = v16 * v0;	// L19, [4099,4103)
      v2[((v5 * 2) + 2)] = v17;	// L20, [4098,4099)
    }
    for (int v18 = 0; v18 < 2047; v18 += 1) {	// L22, [0,4098), iterCycle=4, II=2
      #pragma HLS pipeline II=1
      float v19 = v2[((v18 * 2) + 1)];	// L23, [2,4)
      v3[((v18 * 2) + 1)] = v19;	// L24, [1,2)
      float v20 = v2[((v18 * 2) + 2)];	// L25, [1,3)
      v3[((v18 * 2) + 2)] = v20;	// L26, [0,1)
    }
  }
}

