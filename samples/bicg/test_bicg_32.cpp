
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
/// Latency=6146, interval=6146
/// DSP=5, BRAM=0
void test_bicg_32(
  float v0[32][32],
  float v1[32],
  float v2[32],
  float v3[32],
  float v4[32]
) {	// L5, [0,6146)
  #pragma HLS interface s_axilite port=return bundle=ctrl
  #pragma HLS interface bram port=v0
  #pragma HLS interface bram port=v1
  #pragma HLS interface bram port=v2
  #pragma HLS interface bram port=v3
  #pragma HLS interface bram port=v4

  #pragma HLS array_partition variable=v0 cyclic factor=16 dim=1
  #pragma HLS array_partition variable=v0 cyclic factor=16 dim=2
  #pragma HLS resource variable=v0 core=ram_s2p_bram

  #pragma HLS resource variable=v1 core=ram_s2p_bram

  #pragma HLS array_partition variable=v2 cyclic factor=8 dim=1
  #pragma HLS resource variable=v2 core=ram_s2p_bram

  #pragma HLS resource variable=v3 core=ram_s2p_bram

  #pragma HLS array_partition variable=v4 cyclic factor=8 dim=1
  #pragma HLS resource variable=v4 core=ram_s2p_bram

  for (int v5 = 0; v5 < 32; v5 += 1) {	// L6, [0,6144), iterCycle=46, II=48
    for (int v6 = 0; v6 < 4; v6 += 1) {	// L7, [0,192), iterCycle=46, II=48
      #pragma HLS pipeline II=48
      float v7 = v0[v5][(v6 * 8)];	// L8, [0,2)
      float v8 = v3[v5];	// L9, [30,32)
      float v9 = v7 * v8;	// L10, [32,37)
      float v10 = v4[(v6 * 8)];	// L11, [35,37)
      float v11 = v9 + v10;	// L12, [37,45)
      v4[(v6 * 8)] = v11;	// L13, [45,46)
      float v12 = v0[(v6 * 8)][v5];	// L14, [2,4)
      float v13 = v1[v5];	// L15, [30,32)
      float v14 = v12 * v13;	// L16, [32,37)
      float v15 = v2[(v6 * 8)];	// L17, [35,37)
      float v16 = v14 + v15;	// L18, [37,45)
      v2[(v6 * 8)] = v16;	// L19, [45,46)
      float v17 = v0[v5][((v6 * 8) + 1)];	// L20, [4,6)
      float v18 = v17 * v8;	// L21, [32,37)
      float v19 = v4[((v6 * 8) + 1)];	// L22, [35,37)
      float v20 = v18 + v19;	// L23, [37,45)
      v4[((v6 * 8) + 1)] = v20;	// L24, [45,46)
      float v21 = v0[((v6 * 8) + 1)][v5];	// L25, [6,8)
      float v22 = v21 * v13;	// L26, [32,37)
      float v23 = v2[((v6 * 8) + 1)];	// L27, [35,37)
      float v24 = v22 + v23;	// L28, [37,45)
      v2[((v6 * 8) + 1)] = v24;	// L29, [45,46)
      float v25 = v0[v5][((v6 * 8) + 2)];	// L30, [8,10)
      float v26 = v25 * v8;	// L31, [32,37)
      float v27 = v4[((v6 * 8) + 2)];	// L32, [35,37)
      float v28 = v26 + v27;	// L33, [37,45)
      v4[((v6 * 8) + 2)] = v28;	// L34, [45,46)
      float v29 = v0[((v6 * 8) + 2)][v5];	// L35, [10,12)
      float v30 = v29 * v13;	// L36, [32,37)
      float v31 = v2[((v6 * 8) + 2)];	// L37, [35,37)
      float v32 = v30 + v31;	// L38, [37,45)
      v2[((v6 * 8) + 2)] = v32;	// L39, [45,46)
      float v33 = v0[v5][((v6 * 8) + 3)];	// L40, [12,14)
      float v34 = v33 * v8;	// L41, [32,37)
      float v35 = v4[((v6 * 8) + 3)];	// L42, [35,37)
      float v36 = v34 + v35;	// L43, [37,45)
      v4[((v6 * 8) + 3)] = v36;	// L44, [45,46)
      float v37 = v0[((v6 * 8) + 3)][v5];	// L45, [14,16)
      float v38 = v37 * v13;	// L46, [32,37)
      float v39 = v2[((v6 * 8) + 3)];	// L47, [35,37)
      float v40 = v38 + v39;	// L48, [37,45)
      v2[((v6 * 8) + 3)] = v40;	// L49, [45,46)
      float v41 = v0[v5][((v6 * 8) + 4)];	// L50, [16,18)
      float v42 = v41 * v8;	// L51, [32,37)
      float v43 = v4[((v6 * 8) + 4)];	// L52, [35,37)
      float v44 = v42 + v43;	// L53, [37,45)
      v4[((v6 * 8) + 4)] = v44;	// L54, [45,46)
      float v45 = v0[((v6 * 8) + 4)][v5];	// L55, [18,20)
      float v46 = v45 * v13;	// L56, [32,37)
      float v47 = v2[((v6 * 8) + 4)];	// L57, [35,37)
      float v48 = v46 + v47;	// L58, [37,45)
      v2[((v6 * 8) + 4)] = v48;	// L59, [45,46)
      float v49 = v0[v5][((v6 * 8) + 5)];	// L60, [20,22)
      float v50 = v49 * v8;	// L61, [32,37)
      float v51 = v4[((v6 * 8) + 5)];	// L62, [35,37)
      float v52 = v50 + v51;	// L63, [37,45)
      v4[((v6 * 8) + 5)] = v52;	// L64, [45,46)
      float v53 = v0[((v6 * 8) + 5)][v5];	// L65, [22,24)
      float v54 = v53 * v13;	// L66, [32,37)
      float v55 = v2[((v6 * 8) + 5)];	// L67, [35,37)
      float v56 = v54 + v55;	// L68, [37,45)
      v2[((v6 * 8) + 5)] = v56;	// L69, [45,46)
      float v57 = v0[v5][((v6 * 8) + 6)];	// L70, [24,26)
      float v58 = v57 * v8;	// L71, [32,37)
      float v59 = v4[((v6 * 8) + 6)];	// L72, [35,37)
      float v60 = v58 + v59;	// L73, [37,45)
      v4[((v6 * 8) + 6)] = v60;	// L74, [45,46)
      float v61 = v0[((v6 * 8) + 6)][v5];	// L75, [26,28)
      float v62 = v61 * v13;	// L76, [32,37)
      float v63 = v2[((v6 * 8) + 6)];	// L77, [35,37)
      float v64 = v62 + v63;	// L78, [37,45)
      v2[((v6 * 8) + 6)] = v64;	// L79, [45,46)
      float v65 = v0[v5][((v6 * 8) + 7)];	// L80, [28,30)
      float v66 = v65 * v8;	// L81, [32,37)
      float v67 = v4[((v6 * 8) + 7)];	// L82, [35,37)
      float v68 = v66 + v67;	// L83, [37,45)
      v4[((v6 * 8) + 7)] = v68;	// L84, [45,46)
      float v69 = v0[((v6 * 8) + 7)][v5];	// L85, [30,32)
      float v70 = v69 * v13;	// L86, [32,37)
      float v71 = v2[((v6 * 8) + 7)];	// L87, [35,37)
      float v72 = v70 + v71;	// L88, [37,45)
      v2[((v6 * 8) + 7)] = v72;	// L89, [45,46)
    }
  }
}

