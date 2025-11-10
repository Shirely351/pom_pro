
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
/// Latency=204, interval=204
/// DSP=80, BRAM=0
void test_bicg_32(
  float v0[32][32],
  float v1[32],
  float v2[32],
  float v3[32],
  float v4[32]
) {	// L5, [0,204)
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

  #pragma HLS array_partition variable=v2 cyclic factor=16 dim=1
  #pragma HLS resource variable=v2 core=ram_s2p_bram

  #pragma HLS resource variable=v3 core=ram_s2p_bram

  #pragma HLS array_partition variable=v4 cyclic factor=16 dim=1
  #pragma HLS resource variable=v4 core=ram_s2p_bram

  for (int v5 = 0; v5 < 32; v5 += 1) {	// L6, [0,202), iterCycle=74, II=2
    for (int v6 = 0; v6 < 2; v6 += 1) {	// L7, [0,78), iterCycle=74, II=2
      #pragma HLS pipeline II=1
      float v7 = v0[v5][(v6 * 16)];	// L8, [0,2)
      float v8 = v3[v5];	// L9, [62,64)
      float v9 = v7 * v8;	// L10, [64,68)
      float v10 = v4[(v6 * 16)];	// L11, [66,68)
      float v11 = v9 + v10;	// L12, [68,73)
      v4[(v6 * 16)] = v11;	// L13, [73,74)
      float v12 = v0[(v6 * 16)][v5];	// L14, [2,4)
      float v13 = v1[v5];	// L15, [62,64)
      float v14 = v12 * v13;	// L16, [64,68)
      float v15 = v2[(v6 * 16)];	// L17, [66,68)
      float v16 = v14 + v15;	// L18, [68,73)
      v2[(v6 * 16)] = v16;	// L19, [73,74)
      float v17 = v0[v5][((v6 * 16) + 1)];	// L20, [4,6)
      float v18 = v17 * v8;	// L21, [64,68)
      float v19 = v4[((v6 * 16) + 1)];	// L22, [66,68)
      float v20 = v18 + v19;	// L23, [68,73)
      v4[((v6 * 16) + 1)] = v20;	// L24, [73,74)
      float v21 = v0[((v6 * 16) + 1)][v5];	// L25, [6,8)
      float v22 = v21 * v13;	// L26, [64,68)
      float v23 = v2[((v6 * 16) + 1)];	// L27, [66,68)
      float v24 = v22 + v23;	// L28, [68,73)
      v2[((v6 * 16) + 1)] = v24;	// L29, [73,74)
      float v25 = v0[v5][((v6 * 16) + 2)];	// L30, [8,10)
      float v26 = v25 * v8;	// L31, [64,68)
      float v27 = v4[((v6 * 16) + 2)];	// L32, [66,68)
      float v28 = v26 + v27;	// L33, [68,73)
      v4[((v6 * 16) + 2)] = v28;	// L34, [73,74)
      float v29 = v0[((v6 * 16) + 2)][v5];	// L35, [10,12)
      float v30 = v29 * v13;	// L36, [64,68)
      float v31 = v2[((v6 * 16) + 2)];	// L37, [66,68)
      float v32 = v30 + v31;	// L38, [68,73)
      v2[((v6 * 16) + 2)] = v32;	// L39, [73,74)
      float v33 = v0[v5][((v6 * 16) + 3)];	// L40, [12,14)
      float v34 = v33 * v8;	// L41, [64,68)
      float v35 = v4[((v6 * 16) + 3)];	// L42, [66,68)
      float v36 = v34 + v35;	// L43, [68,73)
      v4[((v6 * 16) + 3)] = v36;	// L44, [73,74)
      float v37 = v0[((v6 * 16) + 3)][v5];	// L45, [14,16)
      float v38 = v37 * v13;	// L46, [64,68)
      float v39 = v2[((v6 * 16) + 3)];	// L47, [66,68)
      float v40 = v38 + v39;	// L48, [68,73)
      v2[((v6 * 16) + 3)] = v40;	// L49, [73,74)
      float v41 = v0[v5][((v6 * 16) + 4)];	// L50, [16,18)
      float v42 = v41 * v8;	// L51, [64,68)
      float v43 = v4[((v6 * 16) + 4)];	// L52, [66,68)
      float v44 = v42 + v43;	// L53, [68,73)
      v4[((v6 * 16) + 4)] = v44;	// L54, [73,74)
      float v45 = v0[((v6 * 16) + 4)][v5];	// L55, [18,20)
      float v46 = v45 * v13;	// L56, [64,68)
      float v47 = v2[((v6 * 16) + 4)];	// L57, [66,68)
      float v48 = v46 + v47;	// L58, [68,73)
      v2[((v6 * 16) + 4)] = v48;	// L59, [73,74)
      float v49 = v0[v5][((v6 * 16) + 5)];	// L60, [20,22)
      float v50 = v49 * v8;	// L61, [64,68)
      float v51 = v4[((v6 * 16) + 5)];	// L62, [66,68)
      float v52 = v50 + v51;	// L63, [68,73)
      v4[((v6 * 16) + 5)] = v52;	// L64, [73,74)
      float v53 = v0[((v6 * 16) + 5)][v5];	// L65, [22,24)
      float v54 = v53 * v13;	// L66, [64,68)
      float v55 = v2[((v6 * 16) + 5)];	// L67, [66,68)
      float v56 = v54 + v55;	// L68, [68,73)
      v2[((v6 * 16) + 5)] = v56;	// L69, [73,74)
      float v57 = v0[v5][((v6 * 16) + 6)];	// L70, [24,26)
      float v58 = v57 * v8;	// L71, [64,68)
      float v59 = v4[((v6 * 16) + 6)];	// L72, [66,68)
      float v60 = v58 + v59;	// L73, [68,73)
      v4[((v6 * 16) + 6)] = v60;	// L74, [73,74)
      float v61 = v0[((v6 * 16) + 6)][v5];	// L75, [26,28)
      float v62 = v61 * v13;	// L76, [64,68)
      float v63 = v2[((v6 * 16) + 6)];	// L77, [66,68)
      float v64 = v62 + v63;	// L78, [68,73)
      v2[((v6 * 16) + 6)] = v64;	// L79, [73,74)
      float v65 = v0[v5][((v6 * 16) + 7)];	// L80, [28,30)
      float v66 = v65 * v8;	// L81, [64,68)
      float v67 = v4[((v6 * 16) + 7)];	// L82, [66,68)
      float v68 = v66 + v67;	// L83, [68,73)
      v4[((v6 * 16) + 7)] = v68;	// L84, [73,74)
      float v69 = v0[((v6 * 16) + 7)][v5];	// L85, [30,32)
      float v70 = v69 * v13;	// L86, [64,68)
      float v71 = v2[((v6 * 16) + 7)];	// L87, [66,68)
      float v72 = v70 + v71;	// L88, [68,73)
      v2[((v6 * 16) + 7)] = v72;	// L89, [73,74)
      float v73 = v0[v5][((v6 * 16) + 8)];	// L90, [32,34)
      float v74 = v73 * v8;	// L91, [64,68)
      float v75 = v4[((v6 * 16) + 8)];	// L92, [66,68)
      float v76 = v74 + v75;	// L93, [68,73)
      v4[((v6 * 16) + 8)] = v76;	// L94, [73,74)
      float v77 = v0[((v6 * 16) + 8)][v5];	// L95, [34,36)
      float v78 = v77 * v13;	// L96, [64,68)
      float v79 = v2[((v6 * 16) + 8)];	// L97, [66,68)
      float v80 = v78 + v79;	// L98, [68,73)
      v2[((v6 * 16) + 8)] = v80;	// L99, [73,74)
      float v81 = v0[v5][((v6 * 16) + 9)];	// L100, [36,38)
      float v82 = v81 * v8;	// L101, [64,68)
      float v83 = v4[((v6 * 16) + 9)];	// L102, [66,68)
      float v84 = v82 + v83;	// L103, [68,73)
      v4[((v6 * 16) + 9)] = v84;	// L104, [73,74)
      float v85 = v0[((v6 * 16) + 9)][v5];	// L105, [38,40)
      float v86 = v85 * v13;	// L106, [64,68)
      float v87 = v2[((v6 * 16) + 9)];	// L107, [66,68)
      float v88 = v86 + v87;	// L108, [68,73)
      v2[((v6 * 16) + 9)] = v88;	// L109, [73,74)
      float v89 = v0[v5][((v6 * 16) + 10)];	// L110, [40,42)
      float v90 = v89 * v8;	// L111, [64,68)
      float v91 = v4[((v6 * 16) + 10)];	// L112, [66,68)
      float v92 = v90 + v91;	// L113, [68,73)
      v4[((v6 * 16) + 10)] = v92;	// L114, [73,74)
      float v93 = v0[((v6 * 16) + 10)][v5];	// L115, [42,44)
      float v94 = v93 * v13;	// L116, [64,68)
      float v95 = v2[((v6 * 16) + 10)];	// L117, [66,68)
      float v96 = v94 + v95;	// L118, [68,73)
      v2[((v6 * 16) + 10)] = v96;	// L119, [73,74)
      float v97 = v0[v5][((v6 * 16) + 11)];	// L120, [44,46)
      float v98 = v97 * v8;	// L121, [64,68)
      float v99 = v4[((v6 * 16) + 11)];	// L122, [66,68)
      float v100 = v98 + v99;	// L123, [68,73)
      v4[((v6 * 16) + 11)] = v100;	// L124, [73,74)
      float v101 = v0[((v6 * 16) + 11)][v5];	// L125, [46,48)
      float v102 = v101 * v13;	// L126, [64,68)
      float v103 = v2[((v6 * 16) + 11)];	// L127, [66,68)
      float v104 = v102 + v103;	// L128, [68,73)
      v2[((v6 * 16) + 11)] = v104;	// L129, [73,74)
      float v105 = v0[v5][((v6 * 16) + 12)];	// L130, [48,50)
      float v106 = v105 * v8;	// L131, [64,68)
      float v107 = v4[((v6 * 16) + 12)];	// L132, [66,68)
      float v108 = v106 + v107;	// L133, [68,73)
      v4[((v6 * 16) + 12)] = v108;	// L134, [73,74)
      float v109 = v0[((v6 * 16) + 12)][v5];	// L135, [50,52)
      float v110 = v109 * v13;	// L136, [64,68)
      float v111 = v2[((v6 * 16) + 12)];	// L137, [66,68)
      float v112 = v110 + v111;	// L138, [68,73)
      v2[((v6 * 16) + 12)] = v112;	// L139, [73,74)
      float v113 = v0[v5][((v6 * 16) + 13)];	// L140, [52,54)
      float v114 = v113 * v8;	// L141, [64,68)
      float v115 = v4[((v6 * 16) + 13)];	// L142, [66,68)
      float v116 = v114 + v115;	// L143, [68,73)
      v4[((v6 * 16) + 13)] = v116;	// L144, [73,74)
      float v117 = v0[((v6 * 16) + 13)][v5];	// L145, [54,56)
      float v118 = v117 * v13;	// L146, [64,68)
      float v119 = v2[((v6 * 16) + 13)];	// L147, [66,68)
      float v120 = v118 + v119;	// L148, [68,73)
      v2[((v6 * 16) + 13)] = v120;	// L149, [73,74)
      float v121 = v0[v5][((v6 * 16) + 14)];	// L150, [56,58)
      float v122 = v121 * v8;	// L151, [64,68)
      float v123 = v4[((v6 * 16) + 14)];	// L152, [66,68)
      float v124 = v122 + v123;	// L153, [68,73)
      v4[((v6 * 16) + 14)] = v124;	// L154, [73,74)
      float v125 = v0[((v6 * 16) + 14)][v5];	// L155, [58,60)
      float v126 = v125 * v13;	// L156, [64,68)
      float v127 = v2[((v6 * 16) + 14)];	// L157, [66,68)
      float v128 = v126 + v127;	// L158, [68,73)
      v2[((v6 * 16) + 14)] = v128;	// L159, [73,74)
      float v129 = v0[v5][((v6 * 16) + 15)];	// L160, [60,62)
      float v130 = v129 * v8;	// L161, [64,68)
      float v131 = v4[((v6 * 16) + 15)];	// L162, [66,68)
      float v132 = v130 + v131;	// L163, [68,73)
      v4[((v6 * 16) + 15)] = v132;	// L164, [73,74)
      float v133 = v0[((v6 * 16) + 15)][v5];	// L165, [62,64)
      float v134 = v133 * v13;	// L166, [64,68)
      float v135 = v2[((v6 * 16) + 15)];	// L167, [66,68)
      float v136 = v134 + v135;	// L168, [68,73)
      v2[((v6 * 16) + 15)] = v136;	// L169, [73,74)
    }
  }
}

