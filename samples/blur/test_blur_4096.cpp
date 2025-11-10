
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
/// Latency=33521733, interval=33521733
/// DSP=12, BRAM=0
void test_blur_4096(
  float v0,
  float v1[4096][4096][3],
  float v2[4096][4096][3],
  float v3[4096][4096][3]
) {	// L5, [0,33521733)
  #pragma HLS interface s_axilite port=return bundle=ctrl
  #pragma HLS interface s_axilite port=v0 bundle=ctrl
  #pragma HLS interface bram port=v1
  #pragma HLS interface bram port=v2
  #pragma HLS interface bram port=v3

  #pragma HLS array_partition variable=v1 cyclic factor=4 dim=1
  #pragma HLS array_partition variable=v1 cyclic factor=2 dim=2
  #pragma HLS array_partition variable=v1 cyclic factor=3 dim=3
  #pragma HLS resource variable=v1 core=ram_s2p_bram

  #pragma HLS array_partition variable=v2 cyclic factor=2 dim=1
  #pragma HLS array_partition variable=v2 cyclic factor=2 dim=2
  #pragma HLS array_partition variable=v2 cyclic factor=3 dim=3
  #pragma HLS resource variable=v2 core=ram_s2p_bram

  #pragma HLS array_partition variable=v3 cyclic factor=2 dim=1
  #pragma HLS array_partition variable=v3 cyclic factor=4 dim=2
  #pragma HLS array_partition variable=v3 cyclic factor=3 dim=3
  #pragma HLS resource variable=v3 core=ram_s2p_bram

  for (int v4 = 0; v4 < 2047; v4 += 1) {	// L6
    for (int v5 = 0; v5 < 2047; v5 += 1) {	// L7
      #pragma HLS pipeline II=1
      float v6 = v3[(v4 * 2)][(v5 * 2)][0];	// L8
      float v7 = v3[(v4 * 2)][((v5 * 2) + 1)][0];	// L9
      float v8 = v6 + v7;	// L10
      float v9 = v3[(v4 * 2)][((v5 * 2) + 2)][0];	// L11
      float v10 = v9 + v8;	// L12
      float v11 = v10 / v0;	// L13
      v1[(v4 * 2)][(v5 * 2)][0] = v11;	// L14
      float v12 = v7 + v9;	// L15
      float v13 = v3[(v4 * 2)][((v5 * 2) + 3)][0];	// L16
      float v14 = v13 + v12;	// L17
      float v15 = v14 / v0;	// L18
      v1[(v4 * 2)][((v5 * 2) + 1)][0] = v15;	// L19
      float v16 = v3[((v4 * 2) + 1)][(v5 * 2)][0];	// L20
      float v17 = v3[((v4 * 2) + 1)][((v5 * 2) + 1)][0];	// L21
      float v18 = v16 + v17;	// L22
      float v19 = v3[((v4 * 2) + 1)][((v5 * 2) + 2)][0];	// L23
      float v20 = v19 + v18;	// L24
      float v21 = v20 / v0;	// L25
      v1[((v4 * 2) + 1)][(v5 * 2)][0] = v21;	// L26
      float v22 = v17 + v19;	// L27
      float v23 = v3[((v4 * 2) + 1)][((v5 * 2) + 3)][0];	// L28
      float v24 = v23 + v22;	// L29
      float v25 = v24 / v0;	// L30
      v1[((v4 * 2) + 1)][((v5 * 2) + 1)][0] = v25;	// L31
      float v26 = v3[(v4 * 2)][(v5 * 2)][1];	// L32
      float v27 = v3[(v4 * 2)][((v5 * 2) + 1)][1];	// L33
      float v28 = v26 + v27;	// L34
      float v29 = v3[(v4 * 2)][((v5 * 2) + 2)][1];	// L35
      float v30 = v29 + v28;	// L36
      float v31 = v30 / v0;	// L37
      v1[(v4 * 2)][(v5 * 2)][1] = v31;	// L38
      float v32 = v27 + v29;	// L39
      float v33 = v3[(v4 * 2)][((v5 * 2) + 3)][1];	// L40
      float v34 = v33 + v32;	// L41
      float v35 = v34 / v0;	// L42
      v1[(v4 * 2)][((v5 * 2) + 1)][1] = v35;	// L43
      float v36 = v3[((v4 * 2) + 1)][(v5 * 2)][1];	// L44
      float v37 = v3[((v4 * 2) + 1)][((v5 * 2) + 1)][1];	// L45
      float v38 = v36 + v37;	// L46
      float v39 = v3[((v4 * 2) + 1)][((v5 * 2) + 2)][1];	// L47
      float v40 = v39 + v38;	// L48
      float v41 = v40 / v0;	// L49
      v1[((v4 * 2) + 1)][(v5 * 2)][1] = v41;	// L50
      float v42 = v37 + v39;	// L51
      float v43 = v3[((v4 * 2) + 1)][((v5 * 2) + 3)][1];	// L52
      float v44 = v43 + v42;	// L53
      float v45 = v44 / v0;	// L54
      v1[((v4 * 2) + 1)][((v5 * 2) + 1)][1] = v45;	// L55
      float v46 = v3[(v4 * 2)][(v5 * 2)][2];	// L56
      float v47 = v3[(v4 * 2)][((v5 * 2) + 1)][2];	// L57
      float v48 = v46 + v47;	// L58
      float v49 = v3[(v4 * 2)][((v5 * 2) + 2)][2];	// L59
      float v50 = v49 + v48;	// L60
      float v51 = v50 / v0;	// L61
      v1[(v4 * 2)][(v5 * 2)][2] = v51;	// L62
      float v52 = v47 + v49;	// L63
      float v53 = v3[(v4 * 2)][((v5 * 2) + 3)][2];	// L64
      float v54 = v53 + v52;	// L65
      float v55 = v54 / v0;	// L66
      v1[(v4 * 2)][((v5 * 2) + 1)][2] = v55;	// L67
      float v56 = v3[((v4 * 2) + 1)][(v5 * 2)][2];	// L68
      float v57 = v3[((v4 * 2) + 1)][((v5 * 2) + 1)][2];	// L69
      float v58 = v56 + v57;	// L70
      float v59 = v3[((v4 * 2) + 1)][((v5 * 2) + 2)][2];	// L71
      float v60 = v59 + v58;	// L72
      float v61 = v60 / v0;	// L73
      v1[((v4 * 2) + 1)][(v5 * 2)][2] = v61;	// L74
      float v62 = v57 + v59;	// L75
      float v63 = v3[((v4 * 2) + 1)][((v5 * 2) + 3)][2];	// L76
      float v64 = v63 + v62;	// L77
      float v65 = v64 / v0;	// L78
      v1[((v4 * 2) + 1)][((v5 * 2) + 1)][2] = v65;	// L79
    }
  }
  for (int v66 = 0; v66 < 2047; v66 += 1) {	// L82, [0,16760865), iterCycle=31, II=4
    for (int v67 = 0; v67 < 2047; v67 += 1) {	// L83, [0,8217), iterCycle=31, II=4
      #pragma HLS pipeline II=1
      float v68 = v1[(v66 * 2)][(v67 * 2)][0];	// L84, [29,31)
      float v69 = v1[((v66 * 2) + 1)][(v67 * 2)][0];	// L85, [28,30)
      float v70 = v68 + v69;	// L86, [22,27)
      float v71 = v1[((v66 * 2) + 2)][(v67 * 2)][0];	// L87, [27,29)
      float v72 = v71 + v70;	// L88, [17,22)
      float v73 = v72 / v0;	// L89, [1,17)
      v2[(v66 * 2)][(v67 * 2)][0] = v73;	// L90, [0,1)
      float v74 = v1[(v66 * 2)][((v67 * 2) + 1)][0];	// L91, [29,31)
      float v75 = v1[((v66 * 2) + 1)][((v67 * 2) + 1)][0];	// L92, [28,30)
      float v76 = v74 + v75;	// L93, [22,27)
      float v77 = v1[((v66 * 2) + 2)][((v67 * 2) + 1)][0];	// L94, [27,29)
      float v78 = v77 + v76;	// L95, [17,22)
      float v79 = v78 / v0;	// L96, [1,17)
      v2[(v66 * 2)][((v67 * 2) + 1)][0] = v79;	// L97, [0,1)
      float v80 = v69 + v71;	// L98, [22,27)
      float v81 = v1[((v66 * 2) + 3)][(v67 * 2)][0];	// L99, [22,24)
      float v82 = v81 + v80;	// L100, [17,22)
      float v83 = v82 / v0;	// L101, [1,17)
      v2[((v66 * 2) + 1)][(v67 * 2)][0] = v83;	// L102, [0,1)
      float v84 = v75 + v77;	// L103, [22,27)
      float v85 = v1[((v66 * 2) + 3)][((v67 * 2) + 1)][0];	// L104, [22,24)
      float v86 = v85 + v84;	// L105, [17,22)
      float v87 = v86 / v0;	// L106, [1,17)
      v2[((v66 * 2) + 1)][((v67 * 2) + 1)][0] = v87;	// L107, [0,1)
      float v88 = v1[(v66 * 2)][(v67 * 2)][1];	// L108, [29,31)
      float v89 = v1[((v66 * 2) + 1)][(v67 * 2)][1];	// L109, [28,30)
      float v90 = v88 + v89;	// L110, [22,27)
      float v91 = v1[((v66 * 2) + 2)][(v67 * 2)][1];	// L111, [27,29)
      float v92 = v91 + v90;	// L112, [17,22)
      float v93 = v92 / v0;	// L113, [1,17)
      v2[(v66 * 2)][(v67 * 2)][1] = v93;	// L114, [0,1)
      float v94 = v1[(v66 * 2)][((v67 * 2) + 1)][1];	// L115, [29,31)
      float v95 = v1[((v66 * 2) + 1)][((v67 * 2) + 1)][1];	// L116, [28,30)
      float v96 = v94 + v95;	// L117, [22,27)
      float v97 = v1[((v66 * 2) + 2)][((v67 * 2) + 1)][1];	// L118, [27,29)
      float v98 = v97 + v96;	// L119, [17,22)
      float v99 = v98 / v0;	// L120, [1,17)
      v2[(v66 * 2)][((v67 * 2) + 1)][1] = v99;	// L121, [0,1)
      float v100 = v89 + v91;	// L122, [22,27)
      float v101 = v1[((v66 * 2) + 3)][(v67 * 2)][1];	// L123, [22,24)
      float v102 = v101 + v100;	// L124, [17,22)
      float v103 = v102 / v0;	// L125, [1,17)
      v2[((v66 * 2) + 1)][(v67 * 2)][1] = v103;	// L126, [0,1)
      float v104 = v95 + v97;	// L127, [22,27)
      float v105 = v1[((v66 * 2) + 3)][((v67 * 2) + 1)][1];	// L128, [22,24)
      float v106 = v105 + v104;	// L129, [17,22)
      float v107 = v106 / v0;	// L130, [1,17)
      v2[((v66 * 2) + 1)][((v67 * 2) + 1)][1] = v107;	// L131, [0,1)
      float v108 = v1[(v66 * 2)][(v67 * 2)][2];	// L132, [29,31)
      float v109 = v1[((v66 * 2) + 1)][(v67 * 2)][2];	// L133, [28,30)
      float v110 = v108 + v109;	// L134, [22,27)
      float v111 = v1[((v66 * 2) + 2)][(v67 * 2)][2];	// L135, [27,29)
      float v112 = v111 + v110;	// L136, [17,22)
      float v113 = v112 / v0;	// L137, [1,17)
      v2[(v66 * 2)][(v67 * 2)][2] = v113;	// L138, [0,1)
      float v114 = v1[(v66 * 2)][((v67 * 2) + 1)][2];	// L139, [29,31)
      float v115 = v1[((v66 * 2) + 1)][((v67 * 2) + 1)][2];	// L140, [28,30)
      float v116 = v114 + v115;	// L141, [22,27)
      float v117 = v1[((v66 * 2) + 2)][((v67 * 2) + 1)][2];	// L142, [27,29)
      float v118 = v117 + v116;	// L143, [17,22)
      float v119 = v118 / v0;	// L144, [1,17)
      v2[(v66 * 2)][((v67 * 2) + 1)][2] = v119;	// L145, [0,1)
      float v120 = v109 + v111;	// L146, [22,27)
      float v121 = v1[((v66 * 2) + 3)][(v67 * 2)][2];	// L147, [22,24)
      float v122 = v121 + v120;	// L148, [17,22)
      float v123 = v122 / v0;	// L149, [1,17)
      v2[((v66 * 2) + 1)][(v67 * 2)][2] = v123;	// L150, [0,1)
      float v124 = v115 + v117;	// L151, [22,27)
      float v125 = v1[((v66 * 2) + 3)][((v67 * 2) + 1)][2];	// L152, [22,24)
      float v126 = v125 + v124;	// L153, [17,22)
      float v127 = v126 / v0;	// L154, [1,17)
      v2[((v66 * 2) + 1)][((v67 * 2) + 1)][2] = v127;	// L155, [0,1)
    }
  }
}

