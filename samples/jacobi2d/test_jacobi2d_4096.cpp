
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
/// Latency=205957152794, interval=205957152794
/// DSP=20, BRAM=0
void test_jacobi2d_4096(
  float v0,
  float v1[4096][4096],
  float v2[4096][4096]
) {	// L3, [0,205957152794)
  #pragma HLS interface s_axilite port=return bundle=ctrl
  #pragma HLS interface s_axilite port=v0 bundle=ctrl
  #pragma HLS interface bram port=v1
  #pragma HLS interface bram port=v2

  #pragma HLS array_partition variable=v1 cyclic factor=4 dim=1
  #pragma HLS array_partition variable=v1 cyclic factor=4 dim=2
  #pragma HLS resource variable=v1 core=ram_s2p_bram

  #pragma HLS array_partition variable=v2 cyclic factor=4 dim=1
  #pragma HLS array_partition variable=v2 cyclic factor=4 dim=2
  #pragma HLS resource variable=v2 core=ram_s2p_bram

  for (int v3 = 0; v3 < 4096; v3 += 1) {	// L4, [0,205957152792), iterCycle=34, II=12
    for (int v4 = 0; v4 < 2047; v4 += 1) {	// L5, [142471202,192753734), iterCycle=34, II=12
      for (int v5 = 0; v5 < 2047; v5 += 1) {	// L6, [142471202,142495790), iterCycle=34, II=12
        #pragma HLS pipeline II=1
        float v6 = v1[((v4 * 2) + 1)][((v5 * 2) + 1)];	// L7, [142471234,142471236)
        float v7 = v1[((v4 * 2) + 1)][(v5 * 2)];	// L8, [142471233,142471235)
        float v8 = v6 + v7;	// L9, [142471225,142471230)
        float v9 = v1[((v4 * 2) + 1)][((v5 * 2) + 2)];	// L10, [142471231,142471233)
        float v10 = v9 + v8;	// L11, [142471220,142471225)
        float v11 = v1[((v4 * 2) + 2)][((v5 * 2) + 1)];	// L12, [142471229,142471231)
        float v12 = v11 + v10;	// L13, [142471215,142471220)
        float v13 = v1[(v4 * 2)][((v5 * 2) + 1)];	// L14, [142471225,142471227)
        float v14 = v13 + v12;	// L15, [142471210,142471215)
        float v15 = v14 * v0;	// L16, [142471206,142471210)
        v2[((v4 * 2) + 1)][((v5 * 2) + 1)] = v15;	// L17, [142471205,142471206)
        float v16 = v9 + v6;	// L18, [142471224,142471229)
        float v17 = v1[((v4 * 2) + 1)][((v5 * 2) + 3)];	// L19, [142471224,142471226)
        float v18 = v17 + v16;	// L20, [142471219,142471224)
        float v19 = v1[((v4 * 2) + 2)][((v5 * 2) + 2)];	// L21, [142471232,142471234)
        float v20 = v19 + v18;	// L22, [142471214,142471219)
        float v21 = v1[(v4 * 2)][((v5 * 2) + 2)];	// L23, [142471230,142471232)
        float v22 = v21 + v20;	// L24, [142471209,142471214)
        float v23 = v22 * v0;	// L25, [142471205,142471209)
        v2[((v4 * 2) + 1)][((v5 * 2) + 2)] = v23;	// L26, [142471204,142471205)
        float v24 = v1[((v4 * 2) + 2)][(v5 * 2)];	// L27, [142471228,142471230)
        float v25 = v11 + v24;	// L28, [142471223,142471228)
        float v26 = v19 + v25;	// L29, [142471218,142471223)
        float v27 = v1[((v4 * 2) + 3)][((v5 * 2) + 1)];	// L30, [142471218,142471220)
        float v28 = v27 + v26;	// L31, [142471213,142471218)
        float v29 = v6 + v28;	// L32, [142471208,142471213)
        float v30 = v29 * v0;	// L33, [142471204,142471208)
        v2[((v4 * 2) + 2)][((v5 * 2) + 1)] = v30;	// L34, [142471203,142471204)
        float v31 = v19 + v11;	// L35, [142471222,142471227)
        float v32 = v1[((v4 * 2) + 2)][((v5 * 2) + 3)];	// L36, [142471222,142471224)
        float v33 = v32 + v31;	// L37, [142471217,142471222)
        float v34 = v1[((v4 * 2) + 3)][((v5 * 2) + 2)];	// L38, [142471217,142471219)
        float v35 = v34 + v33;	// L39, [142471212,142471217)
        float v36 = v9 + v35;	// L40, [142471207,142471212)
        float v37 = v36 * v0;	// L41, [142471203,142471207)
        v2[((v4 * 2) + 2)][((v5 * 2) + 2)] = v37;	// L42, [142471202,142471203)
      }
    }
    for (int v38 = 0; v38 < 2047; v38 += 1) {	// L45, [0,142471202), iterCycle=69600, II=69600
      for (int v39 = 0; v39 < 2047; v39 += 1) {	// L46, [0,69600), iterCycle=34, II=34
        float v40 = v2[((v38 * 2) + 1)][((v39 * 2) + 1)];	// L47, [32,34)
        float v41 = v2[((v38 * 2) + 1)][(v39 * 2)];	// L48, [31,33)
        float v42 = v40 + v41;	// L49, [23,28)
        float v43 = v2[((v38 * 2) + 1)][((v39 * 2) + 2)];	// L50, [29,31)
        float v44 = v43 + v42;	// L51, [18,23)
        float v45 = v2[((v38 * 2) + 2)][((v39 * 2) + 1)];	// L52, [27,29)
        float v46 = v45 + v44;	// L53, [13,18)
        float v47 = v2[(v38 * 2)][((v39 * 2) + 1)];	// L54, [23,25)
        float v48 = v47 + v46;	// L55, [8,13)
        float v49 = v48 * v0;	// L56, [4,8)
        v1[((v38 * 2) + 1)][((v39 * 2) + 1)] = v49;	// L57, [3,4)
        float v50 = v43 + v40;	// L58, [22,27)
        float v51 = v2[((v38 * 2) + 1)][((v39 * 2) + 3)];	// L59, [22,24)
        float v52 = v51 + v50;	// L60, [17,22)
        float v53 = v2[((v38 * 2) + 2)][((v39 * 2) + 2)];	// L61, [30,32)
        float v54 = v53 + v52;	// L62, [12,17)
        float v55 = v2[(v38 * 2)][((v39 * 2) + 2)];	// L63, [28,30)
        float v56 = v55 + v54;	// L64, [7,12)
        float v57 = v56 * v0;	// L65, [3,7)
        v1[((v38 * 2) + 1)][((v39 * 2) + 2)] = v57;	// L66, [2,3)
        float v58 = v2[((v38 * 2) + 2)][(v39 * 2)];	// L67, [26,28)
        float v59 = v45 + v58;	// L68, [21,26)
        float v60 = v53 + v59;	// L69, [16,21)
        float v61 = v2[((v38 * 2) + 3)][((v39 * 2) + 1)];	// L70, [16,18)
        float v62 = v61 + v60;	// L71, [11,16)
        float v63 = v40 + v62;	// L72, [6,11)
        float v64 = v63 * v0;	// L73, [2,6)
        v1[((v38 * 2) + 2)][((v39 * 2) + 1)] = v64;	// L74, [1,2)
        float v65 = v53 + v45;	// L75, [20,25)
        float v66 = v2[((v38 * 2) + 2)][((v39 * 2) + 3)];	// L76, [20,22)
        float v67 = v66 + v65;	// L77, [15,20)
        float v68 = v2[((v38 * 2) + 3)][((v39 * 2) + 2)];	// L78, [15,17)
        float v69 = v68 + v67;	// L79, [10,15)
        float v70 = v43 + v69;	// L80, [5,10)
        float v71 = v70 * v0;	// L81, [1,5)
        v1[((v38 * 2) + 2)][((v39 * 2) + 2)] = v71;	// L82, [0,1)
      }
    }
  }
}

