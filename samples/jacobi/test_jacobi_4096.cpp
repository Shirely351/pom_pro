
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
/// Latency=33538067, interval=33538067
/// DSP=5, BRAM=0
void test_jacobi_4096(
  float v0,
  float v1[4096],
  float v2[4096]
) {	// L3, [0,33538067)
  #pragma HLS interface s_axilite port=return bundle=ctrl
  #pragma HLS interface s_axilite port=v0 bundle=ctrl
  #pragma HLS interface bram port=v1
  #pragma HLS interface bram port=v2

  #pragma HLS array_partition variable=v1 cyclic factor=4 dim=1
  #pragma HLS resource variable=v1 core=ram_s2p_bram

  #pragma HLS array_partition variable=v2 cyclic factor=4 dim=1
  #pragma HLS resource variable=v2 core=ram_s2p_bram

  for (int v3 = 0; v3 < 4096; v3 += 1) {	// L4, [0,33538065), iterCycle=19, II=4
    for (int v4 = 0; v4 < 2047; v4 += 1) {	// L5, [8205,16410), iterCycle=19, II=4
      #pragma HLS pipeline II=1
      float v5 = v2[(v4 * 2)];	// L6, [8222,8224)
      float v6 = v2[((v4 * 2) + 1)];	// L7, [8221,8223)
      float v7 = v5 + v6;	// L8, [8216,8221)
      float v8 = v2[((v4 * 2) + 2)];	// L9, [8220,8222)
      float v9 = v8 + v7;	// L10, [8211,8216)
      float v10 = v9 * v0;	// L11, [8207,8211)
      v1[((v4 * 2) + 1)] = v10;	// L12, [8206,8207)
      float v11 = v6 + v8;	// L13, [8215,8220)
      float v12 = v2[((v4 * 2) + 3)];	// L14, [8215,8217)
      float v13 = v12 + v11;	// L15, [8210,8215)
      float v14 = v13 * v0;	// L16, [8206,8210)
      v1[((v4 * 2) + 2)] = v14;	// L17, [8205,8206)
    }
    for (int v15 = 0; v15 < 2047; v15 += 1) {	// L19, [0,8205), iterCycle=19, II=4
      #pragma HLS pipeline II=1
      float v16 = v1[(v15 * 2)];	// L20, [17,19)
      float v17 = v1[((v15 * 2) + 1)];	// L21, [16,18)
      float v18 = v16 + v17;	// L22, [11,16)
      float v19 = v1[((v15 * 2) + 2)];	// L23, [15,17)
      float v20 = v19 + v18;	// L24, [6,11)
      float v21 = v20 * v0;	// L25, [2,6)
      v2[((v15 * 2) + 1)] = v21;	// L26, [1,2)
      float v22 = v17 + v19;	// L27, [10,15)
      float v23 = v1[((v15 * 2) + 3)];	// L28, [10,12)
      float v24 = v23 + v22;	// L29, [5,10)
      float v25 = v24 * v0;	// L30, [1,5)
      v2[((v15 * 2) + 2)] = v25;	// L31, [0,1)
    }
  }
}

