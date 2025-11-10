
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
/// Latency=41351783, interval=41351783
/// DSP=40, BRAM=0
void test_vgg16(
  float v0,
  float v1[64][3][3][3],
  float v2[64][64][3][3],
  float v3[128][64][3][3],
  float v4[128][128][3][3],
  float v5[256][128][3][3],
  float v6[256][256][3][3],
  float v7[512][256][3][3],
  float v8[512][512][3][3],
  float v9[512][512][3][3],
  float v10[64][32][32],
  float v11[256][4][4],
  float v12[512][4][4],
  float v13[512][8][8],
  float v14[512][8][8],
  float v15[512][2][2],
  float v16[512][2][2],
  float v17[512][2][2],
  float v18[512][2][2],
  float v19[512],
  float v20[64][32][32],
  float v21[64][16][16],
  float v22[128][16][16],
  float v23[128][16][16],
  float v24[128][8][8],
  float v25[256][8][8],
  float v26[256][8][8],
  float v27[256][8][8],
  float v28[3][34][34]
) {	// L6, [0,41351783)
  #pragma HLS interface s_axilite port=return bundle=ctrl
  #pragma HLS interface s_axilite port=v0 bundle=ctrl
  #pragma HLS interface bram port=v1
  #pragma HLS interface bram port=v2
  #pragma HLS interface bram port=v3
  #pragma HLS interface bram port=v4
  #pragma HLS interface bram port=v5
  #pragma HLS interface bram port=v6
  #pragma HLS interface bram port=v7
  #pragma HLS interface bram port=v8
  #pragma HLS interface bram port=v9
  #pragma HLS interface bram port=v10
  #pragma HLS interface bram port=v11
  #pragma HLS interface bram port=v12
  #pragma HLS interface bram port=v13
  #pragma HLS interface bram port=v14
  #pragma HLS interface bram port=v15
  #pragma HLS interface bram port=v16
  #pragma HLS interface bram port=v17
  #pragma HLS interface bram port=v18
  #pragma HLS interface bram port=v19
  #pragma HLS interface bram port=v20
  #pragma HLS interface bram port=v21
  #pragma HLS interface bram port=v22
  #pragma HLS interface bram port=v23
  #pragma HLS interface bram port=v24
  #pragma HLS interface bram port=v25
  #pragma HLS interface bram port=v26
  #pragma HLS interface bram port=v27
  #pragma HLS interface bram port=v28

  #pragma HLS array_partition variable=v1 cyclic factor=8 dim=1
  #pragma HLS resource variable=v1 core=ram_s2p_bram

  #pragma HLS array_partition variable=v2 cyclic factor=8 dim=1
  #pragma HLS resource variable=v2 core=ram_s2p_bram

  #pragma HLS array_partition variable=v3 cyclic factor=8 dim=1
  #pragma HLS resource variable=v3 core=ram_s2p_bram

  #pragma HLS array_partition variable=v4 cyclic factor=8 dim=1
  #pragma HLS resource variable=v4 core=ram_s2p_bram

  #pragma HLS array_partition variable=v5 cyclic factor=8 dim=1
  #pragma HLS resource variable=v5 core=ram_s2p_bram

  #pragma HLS array_partition variable=v6 cyclic factor=8 dim=1
  #pragma HLS resource variable=v6 core=ram_s2p_bram

  #pragma HLS array_partition variable=v7 cyclic factor=8 dim=1
  #pragma HLS resource variable=v7 core=ram_s2p_bram

  #pragma HLS array_partition variable=v8 cyclic factor=8 dim=1
  #pragma HLS resource variable=v8 core=ram_s2p_bram

  #pragma HLS array_partition variable=v9 cyclic factor=8 dim=1
  #pragma HLS resource variable=v9 core=ram_s2p_bram

  #pragma HLS array_partition variable=v10 cyclic factor=8 dim=1
  #pragma HLS resource variable=v10 core=ram_s2p_bram

  #pragma HLS resource variable=v11 core=ram_s2p_bram

  #pragma HLS array_partition variable=v12 cyclic factor=8 dim=1
  #pragma HLS resource variable=v12 core=ram_s2p_bram

  #pragma HLS array_partition variable=v13 cyclic factor=8 dim=1
  #pragma HLS resource variable=v13 core=ram_s2p_bram

  #pragma HLS array_partition variable=v14 cyclic factor=8 dim=1
  #pragma HLS resource variable=v14 core=ram_s2p_bram

  #pragma HLS resource variable=v15 core=ram_s2p_bram

  #pragma HLS array_partition variable=v16 cyclic factor=8 dim=1
  #pragma HLS resource variable=v16 core=ram_s2p_bram

  #pragma HLS array_partition variable=v17 cyclic factor=8 dim=1
  #pragma HLS resource variable=v17 core=ram_s2p_bram

  #pragma HLS array_partition variable=v18 cyclic factor=8 dim=1
  #pragma HLS resource variable=v18 core=ram_s2p_bram

  #pragma HLS resource variable=v19 core=ram_s2p_bram

  #pragma HLS array_partition variable=v20 cyclic factor=8 dim=1
  #pragma HLS resource variable=v20 core=ram_s2p_bram

  #pragma HLS resource variable=v21 core=ram_s2p_bram

  #pragma HLS array_partition variable=v22 cyclic factor=8 dim=1
  #pragma HLS resource variable=v22 core=ram_s2p_bram

  #pragma HLS array_partition variable=v23 cyclic factor=8 dim=1
  #pragma HLS resource variable=v23 core=ram_s2p_bram

  #pragma HLS resource variable=v24 core=ram_s2p_bram

  #pragma HLS array_partition variable=v25 cyclic factor=8 dim=1
  #pragma HLS resource variable=v25 core=ram_s2p_bram

  #pragma HLS array_partition variable=v26 cyclic factor=8 dim=1
  #pragma HLS resource variable=v26 core=ram_s2p_bram

  #pragma HLS array_partition variable=v27 cyclic factor=8 dim=1
  #pragma HLS resource variable=v27 core=ram_s2p_bram

  #pragma HLS resource variable=v28 core=ram_s2p_bram

  for (int v29 = 0; v29 < 64; v29 += 1) {	// L7, [0,69762), iterCycle=1090, II=1090
    for (int v30 = 0; v30 < 32; v30 += 1) {	// L8, [0,1090), iterCycle=34, II=34
      for (int v31 = 0; v31 < 32; v31 += 1) {	// L9, [0,34), iterCycle=1, II=1
        v10[v29][v30][v31] = v0;	// L10, [0,1)
      }
    }
  }
  for (int v32 = 0; v32 < 3; v32 += 1) {	// L14, [69762,290959), iterCycle=12, II=1
    for (int v33 = 0; v33 < 3; v33 += 1) {	// L15, [41060822,41134563), iterCycle=12, II=1
      for (int v34 = 0; v34 < 3; v34 += 1) {	// L16, [41060822,41085411), iterCycle=12, II=1
        for (int v35 = 0; v35 < 8; v35 += 1) {	// L17, [41060822,41069027), iterCycle=12, II=1
          for (int v36 = 0; v36 < 32; v36 += 1) {	// L18, [41060822,41061859), iterCycle=12, II=1
            for (int v37 = 0; v37 < 32; v37 += 1) {	// L19, [41060822,41060867), iterCycle=12, II=1
              #pragma HLS pipeline II=1
              float v38 = v28[v32][(v36 + v33)][(v37 + v34)];	// L20, [0,2)
              float v39 = v1[(v35 * 8)][v32][v33][v34];	// L21, [0,2)
              float v40 = v38 * v39;	// L22, [2,6)
              float v41 = v10[(v35 * 8)][v36][v37];	// L23, [4,6)
              float v42 = v40 + v41;	// L24, [6,11)
              v10[(v35 * 8)][v36][v37] = v42;	// L25, [11,12)
              float v43 = v1[((v35 * 8) + 1)][v32][v33][v34];	// L26, [0,2)
              float v44 = v38 * v43;	// L27, [2,6)
              float v45 = v10[((v35 * 8) + 1)][v36][v37];	// L28, [4,6)
              float v46 = v44 + v45;	// L29, [6,11)
              v10[((v35 * 8) + 1)][v36][v37] = v46;	// L30, [11,12)
              float v47 = v1[((v35 * 8) + 2)][v32][v33][v34];	// L31, [0,2)
              float v48 = v38 * v47;	// L32, [2,6)
              float v49 = v10[((v35 * 8) + 2)][v36][v37];	// L33, [4,6)
              float v50 = v48 + v49;	// L34, [6,11)
              v10[((v35 * 8) + 2)][v36][v37] = v50;	// L35, [11,12)
              float v51 = v1[((v35 * 8) + 3)][v32][v33][v34];	// L36, [0,2)
              float v52 = v38 * v51;	// L37, [2,6)
              float v53 = v10[((v35 * 8) + 3)][v36][v37];	// L38, [4,6)
              float v54 = v52 + v53;	// L39, [6,11)
              v10[((v35 * 8) + 3)][v36][v37] = v54;	// L40, [11,12)
              float v55 = v1[((v35 * 8) + 4)][v32][v33][v34];	// L41, [0,2)
              float v56 = v38 * v55;	// L42, [2,6)
              float v57 = v10[((v35 * 8) + 4)][v36][v37];	// L43, [4,6)
              float v58 = v56 + v57;	// L44, [6,11)
              v10[((v35 * 8) + 4)][v36][v37] = v58;	// L45, [11,12)
              float v59 = v1[((v35 * 8) + 5)][v32][v33][v34];	// L46, [0,2)
              float v60 = v38 * v59;	// L47, [2,6)
              float v61 = v10[((v35 * 8) + 5)][v36][v37];	// L48, [4,6)
              float v62 = v60 + v61;	// L49, [6,11)
              v10[((v35 * 8) + 5)][v36][v37] = v62;	// L50, [11,12)
              float v63 = v1[((v35 * 8) + 6)][v32][v33][v34];	// L51, [0,2)
              float v64 = v38 * v63;	// L52, [2,6)
              float v65 = v10[((v35 * 8) + 6)][v36][v37];	// L53, [4,6)
              float v66 = v64 + v65;	// L54, [6,11)
              v10[((v35 * 8) + 6)][v36][v37] = v66;	// L55, [11,12)
              float v67 = v1[((v35 * 8) + 7)][v32][v33][v34];	// L56, [0,2)
              float v68 = v38 * v67;	// L57, [2,6)
              float v69 = v10[((v35 * 8) + 7)][v36][v37];	// L58, [4,6)
              float v70 = v68 + v69;	// L59, [6,11)
              v10[((v35 * 8) + 7)][v36][v37] = v70;	// L60, [11,12)
            }
          }
        }
      }
    }
  }
  for (int v71 = 0; v71 < 64; v71 += 1) {	// L67, [290959,491793), iterCycle=3138, II=3138
    for (int v72 = 0; v72 < 32; v72 += 1) {	// L68, [0,3138), iterCycle=98, II=98
      for (int v73 = 0; v73 < 32; v73 += 1) {	// L69, [0,98), iterCycle=3, II=3
        float v74 = v10[v71][v72][v73];	// L70, [0,2)
        float v75 = max(v74, v0);	// L71, [2,2)
        v10[v71][v72][v73] = v75;	// L72, [2,3)
        v20[v71][v72][v73] = v0;	// L73, [2,3)
      }
    }
  }
  for (int v76 = 0; v76 < 64; v76 += 1) {	// L77, [491793,5210398), iterCycle=12, II=1
    for (int v77 = 0; v77 < 3; v77 += 1) {	// L78, [36141383,36215124), iterCycle=12, II=1
      for (int v78 = 0; v78 < 3; v78 += 1) {	// L79, [36141383,36165972), iterCycle=12, II=1
        for (int v79 = 0; v79 < 8; v79 += 1) {	// L80, [36141383,36149588), iterCycle=12, II=1
          for (int v80 = 0; v80 < 32; v80 += 1) {	// L81, [36141383,36142420), iterCycle=12, II=1
            for (int v81 = 0; v81 < 32; v81 += 1) {	// L82, [36141383,36141428), iterCycle=12, II=1
              #pragma HLS pipeline II=1
              float v82 = v10[v76][(v80 + v77)][(v81 + v78)];	// L83, [0,2)
              float v83 = v2[(v79 * 8)][v76][v77][v78];	// L84, [0,2)
              float v84 = v82 * v83;	// L85, [2,6)
              float v85 = v20[(v79 * 8)][v80][v81];	// L86, [4,6)
              float v86 = v84 + v85;	// L87, [6,11)
              v20[(v79 * 8)][v80][v81] = v86;	// L88, [11,12)
              float v87 = v2[((v79 * 8) + 1)][v76][v77][v78];	// L89, [0,2)
              float v88 = v82 * v87;	// L90, [2,6)
              float v89 = v20[((v79 * 8) + 1)][v80][v81];	// L91, [4,6)
              float v90 = v88 + v89;	// L92, [6,11)
              v20[((v79 * 8) + 1)][v80][v81] = v90;	// L93, [11,12)
              float v91 = v2[((v79 * 8) + 2)][v76][v77][v78];	// L94, [0,2)
              float v92 = v82 * v91;	// L95, [2,6)
              float v93 = v20[((v79 * 8) + 2)][v80][v81];	// L96, [4,6)
              float v94 = v92 + v93;	// L97, [6,11)
              v20[((v79 * 8) + 2)][v80][v81] = v94;	// L98, [11,12)
              float v95 = v2[((v79 * 8) + 3)][v76][v77][v78];	// L99, [0,2)
              float v96 = v82 * v95;	// L100, [2,6)
              float v97 = v20[((v79 * 8) + 3)][v80][v81];	// L101, [4,6)
              float v98 = v96 + v97;	// L102, [6,11)
              v20[((v79 * 8) + 3)][v80][v81] = v98;	// L103, [11,12)
              float v99 = v2[((v79 * 8) + 4)][v76][v77][v78];	// L104, [0,2)
              float v100 = v82 * v99;	// L105, [2,6)
              float v101 = v20[((v79 * 8) + 4)][v80][v81];	// L106, [4,6)
              float v102 = v100 + v101;	// L107, [6,11)
              v20[((v79 * 8) + 4)][v80][v81] = v102;	// L108, [11,12)
              float v103 = v2[((v79 * 8) + 5)][v76][v77][v78];	// L109, [0,2)
              float v104 = v82 * v103;	// L110, [2,6)
              float v105 = v20[((v79 * 8) + 5)][v80][v81];	// L111, [4,6)
              float v106 = v104 + v105;	// L112, [6,11)
              v20[((v79 * 8) + 5)][v80][v81] = v106;	// L113, [11,12)
              float v107 = v2[((v79 * 8) + 6)][v76][v77][v78];	// L114, [0,2)
              float v108 = v82 * v107;	// L115, [2,6)
              float v109 = v20[((v79 * 8) + 6)][v80][v81];	// L116, [4,6)
              float v110 = v108 + v109;	// L117, [6,11)
              v20[((v79 * 8) + 6)][v80][v81] = v110;	// L118, [11,12)
              float v111 = v2[((v79 * 8) + 7)][v76][v77][v78];	// L119, [0,2)
              float v112 = v82 * v111;	// L120, [2,6)
              float v113 = v20[((v79 * 8) + 7)][v80][v81];	// L121, [4,6)
              float v114 = v112 + v113;	// L122, [6,11)
              v20[((v79 * 8) + 7)][v80][v81] = v114;	// L123, [11,12)
            }
          }
        }
      }
    }
  }
  for (int v115 = 0; v115 < 64; v115 += 1) {	// L130, [5210398,5411232), iterCycle=3138, II=3138
    for (int v116 = 0; v116 < 32; v116 += 1) {	// L131, [0,3138), iterCycle=98, II=98
      for (int v117 = 0; v117 < 32; v117 += 1) {	// L132, [0,98), iterCycle=3, II=3
        float v118 = v20[v115][v116][v117];	// L133, [0,2)
        float v119 = max(v118, v0);	// L134, [2,2)
        v20[v115][v116][v117] = v119;	// L135, [2,3)
      }
    }
  }
  for (int v120 = 0; v120 < 64; v120 += 1) {	// L139, [5411232,5429794), iterCycle=290, II=290
    for (int v121 = 0; v121 < 16; v121 += 1) {	// L140, [0,290), iterCycle=18, II=18
      for (int v122 = 0; v122 < 16; v122 += 1) {	// L141, [0,18), iterCycle=1, II=1
        v21[v120][v121][v122] = v0;	// L142, [0,1)
      }
    }
  }
  for (int v123 = 0; v123 < 64; v123 += 1) {	// L146, [5429794,6005412), iterCycle=8994, II=8994
    for (int v124 = 0; v124 < 16; v124 += 1) {	// L147, [0,8994), iterCycle=562, II=562
      for (int v125 = 0; v125 < 16; v125 += 1) {	// L148, [0,562), iterCycle=35, II=35
        for (int v126 = 0; v126 < 3; v126 += 1) {	// L149, [0,35), iterCycle=11, II=11
          for (int v127 = 0; v127 < 3; v127 += 1) {	// L150, [0,11), iterCycle=3, II=3
            float v128 = v20[v123][((v124 * 2) + v126)][((v125 * 2) + v127)];	// L151, [0,2)
            v21[v123][v124][v125] = v128;	// L152, [2,3)
          }
        }
      }
    }
  }
  for (int v129 = 0; v129 < 128; v129 += 1) {	// L158, [6005412,6042534), iterCycle=290, II=290
    for (int v130 = 0; v130 < 16; v130 += 1) {	// L159, [0,290), iterCycle=18, II=18
      for (int v131 = 0; v131 < 16; v131 += 1) {	// L160, [0,18), iterCycle=1, II=1
        v22[v129][v130][v131] = v0;	// L161, [0,1)
      }
    }
  }
  for (int v132 = 0; v132 < 64; v132 += 1) {	// L165, [6042534,8401843), iterCycle=12, II=1
    for (int v133 = 0; v133 < 3; v133 += 1) {	// L166, [32949938,32986815), iterCycle=12, II=1
      for (int v134 = 0; v134 < 3; v134 += 1) {	// L167, [32949938,32962239), iterCycle=12, II=1
        for (int v135 = 0; v135 < 16; v135 += 1) {	// L168, [32949938,32954047), iterCycle=12, II=1
          for (int v136 = 0; v136 < 16; v136 += 1) {	// L169, [32949938,32950207), iterCycle=12, II=1
            for (int v137 = 0; v137 < 16; v137 += 1) {	// L170, [32949938,32949967), iterCycle=12, II=1
              #pragma HLS pipeline II=1
              float v138 = v21[v132][(v136 + v133)][(v137 + v134)];	// L171, [0,2)
              float v139 = v3[(v135 * 8)][v132][v133][v134];	// L172, [0,2)
              float v140 = v138 * v139;	// L173, [2,6)
              float v141 = v22[(v135 * 8)][v136][v137];	// L174, [4,6)
              float v142 = v140 + v141;	// L175, [6,11)
              v22[(v135 * 8)][v136][v137] = v142;	// L176, [11,12)
              float v143 = v3[((v135 * 8) + 1)][v132][v133][v134];	// L177, [0,2)
              float v144 = v138 * v143;	// L178, [2,6)
              float v145 = v22[((v135 * 8) + 1)][v136][v137];	// L179, [4,6)
              float v146 = v144 + v145;	// L180, [6,11)
              v22[((v135 * 8) + 1)][v136][v137] = v146;	// L181, [11,12)
              float v147 = v3[((v135 * 8) + 2)][v132][v133][v134];	// L182, [0,2)
              float v148 = v138 * v147;	// L183, [2,6)
              float v149 = v22[((v135 * 8) + 2)][v136][v137];	// L184, [4,6)
              float v150 = v148 + v149;	// L185, [6,11)
              v22[((v135 * 8) + 2)][v136][v137] = v150;	// L186, [11,12)
              float v151 = v3[((v135 * 8) + 3)][v132][v133][v134];	// L187, [0,2)
              float v152 = v138 * v151;	// L188, [2,6)
              float v153 = v22[((v135 * 8) + 3)][v136][v137];	// L189, [4,6)
              float v154 = v152 + v153;	// L190, [6,11)
              v22[((v135 * 8) + 3)][v136][v137] = v154;	// L191, [11,12)
              float v155 = v3[((v135 * 8) + 4)][v132][v133][v134];	// L192, [0,2)
              float v156 = v138 * v155;	// L193, [2,6)
              float v157 = v22[((v135 * 8) + 4)][v136][v137];	// L194, [4,6)
              float v158 = v156 + v157;	// L195, [6,11)
              v22[((v135 * 8) + 4)][v136][v137] = v158;	// L196, [11,12)
              float v159 = v3[((v135 * 8) + 5)][v132][v133][v134];	// L197, [0,2)
              float v160 = v138 * v159;	// L198, [2,6)
              float v161 = v22[((v135 * 8) + 5)][v136][v137];	// L199, [4,6)
              float v162 = v160 + v161;	// L200, [6,11)
              v22[((v135 * 8) + 5)][v136][v137] = v162;	// L201, [11,12)
              float v163 = v3[((v135 * 8) + 6)][v132][v133][v134];	// L202, [0,2)
              float v164 = v138 * v163;	// L203, [2,6)
              float v165 = v22[((v135 * 8) + 6)][v136][v137];	// L204, [4,6)
              float v166 = v164 + v165;	// L205, [6,11)
              v22[((v135 * 8) + 6)][v136][v137] = v166;	// L206, [11,12)
              float v167 = v3[((v135 * 8) + 7)][v132][v133][v134];	// L207, [0,2)
              float v168 = v138 * v167;	// L208, [2,6)
              float v169 = v22[((v135 * 8) + 7)][v136][v137];	// L209, [4,6)
              float v170 = v168 + v169;	// L210, [6,11)
              v22[((v135 * 8) + 7)][v136][v137] = v170;	// L211, [11,12)
            }
          }
        }
      }
    }
  }
  for (int v171 = 0; v171 < 128; v171 += 1) {	// L218, [8401843,8504501), iterCycle=802, II=802
    for (int v172 = 0; v172 < 16; v172 += 1) {	// L219, [0,802), iterCycle=50, II=50
      for (int v173 = 0; v173 < 16; v173 += 1) {	// L220, [0,50), iterCycle=3, II=3
        float v174 = v22[v171][v172][v173];	// L221, [0,2)
        float v175 = max(v174, v0);	// L222, [2,2)
        v22[v171][v172][v173] = v175;	// L223, [2,3)
        v23[v171][v172][v173] = v0;	// L224, [2,3)
      }
    }
  }
  for (int v176 = 0; v176 < 128; v176 += 1) {	// L228, [8504501,13223106), iterCycle=12, II=1
    for (int v177 = 0; v177 < 3; v177 += 1) {	// L229, [28128675,28165552), iterCycle=12, II=1
      for (int v178 = 0; v178 < 3; v178 += 1) {	// L230, [28128675,28140976), iterCycle=12, II=1
        for (int v179 = 0; v179 < 16; v179 += 1) {	// L231, [28128675,28132784), iterCycle=12, II=1
          for (int v180 = 0; v180 < 16; v180 += 1) {	// L232, [28128675,28128944), iterCycle=12, II=1
            for (int v181 = 0; v181 < 16; v181 += 1) {	// L233, [28128675,28128704), iterCycle=12, II=1
              #pragma HLS pipeline II=1
              float v182 = v22[v176][(v180 + v177)][(v181 + v178)];	// L234, [0,2)
              float v183 = v4[(v179 * 8)][v176][v177][v178];	// L235, [0,2)
              float v184 = v182 * v183;	// L236, [2,6)
              float v185 = v23[(v179 * 8)][v180][v181];	// L237, [4,6)
              float v186 = v184 + v185;	// L238, [6,11)
              v23[(v179 * 8)][v180][v181] = v186;	// L239, [11,12)
              float v187 = v4[((v179 * 8) + 1)][v176][v177][v178];	// L240, [0,2)
              float v188 = v182 * v187;	// L241, [2,6)
              float v189 = v23[((v179 * 8) + 1)][v180][v181];	// L242, [4,6)
              float v190 = v188 + v189;	// L243, [6,11)
              v23[((v179 * 8) + 1)][v180][v181] = v190;	// L244, [11,12)
              float v191 = v4[((v179 * 8) + 2)][v176][v177][v178];	// L245, [0,2)
              float v192 = v182 * v191;	// L246, [2,6)
              float v193 = v23[((v179 * 8) + 2)][v180][v181];	// L247, [4,6)
              float v194 = v192 + v193;	// L248, [6,11)
              v23[((v179 * 8) + 2)][v180][v181] = v194;	// L249, [11,12)
              float v195 = v4[((v179 * 8) + 3)][v176][v177][v178];	// L250, [0,2)
              float v196 = v182 * v195;	// L251, [2,6)
              float v197 = v23[((v179 * 8) + 3)][v180][v181];	// L252, [4,6)
              float v198 = v196 + v197;	// L253, [6,11)
              v23[((v179 * 8) + 3)][v180][v181] = v198;	// L254, [11,12)
              float v199 = v4[((v179 * 8) + 4)][v176][v177][v178];	// L255, [0,2)
              float v200 = v182 * v199;	// L256, [2,6)
              float v201 = v23[((v179 * 8) + 4)][v180][v181];	// L257, [4,6)
              float v202 = v200 + v201;	// L258, [6,11)
              v23[((v179 * 8) + 4)][v180][v181] = v202;	// L259, [11,12)
              float v203 = v4[((v179 * 8) + 5)][v176][v177][v178];	// L260, [0,2)
              float v204 = v182 * v203;	// L261, [2,6)
              float v205 = v23[((v179 * 8) + 5)][v180][v181];	// L262, [4,6)
              float v206 = v204 + v205;	// L263, [6,11)
              v23[((v179 * 8) + 5)][v180][v181] = v206;	// L264, [11,12)
              float v207 = v4[((v179 * 8) + 6)][v176][v177][v178];	// L265, [0,2)
              float v208 = v182 * v207;	// L266, [2,6)
              float v209 = v23[((v179 * 8) + 6)][v180][v181];	// L267, [4,6)
              float v210 = v208 + v209;	// L268, [6,11)
              v23[((v179 * 8) + 6)][v180][v181] = v210;	// L269, [11,12)
              float v211 = v4[((v179 * 8) + 7)][v176][v177][v178];	// L270, [0,2)
              float v212 = v182 * v211;	// L271, [2,6)
              float v213 = v23[((v179 * 8) + 7)][v180][v181];	// L272, [4,6)
              float v214 = v212 + v213;	// L273, [6,11)
              v23[((v179 * 8) + 7)][v180][v181] = v214;	// L274, [11,12)
            }
          }
        }
      }
    }
  }
  for (int v215 = 0; v215 < 128; v215 += 1) {	// L281, [13223106,13325764), iterCycle=802, II=802
    for (int v216 = 0; v216 < 16; v216 += 1) {	// L282, [0,802), iterCycle=50, II=50
      for (int v217 = 0; v217 < 16; v217 += 1) {	// L283, [0,50), iterCycle=3, II=3
        float v218 = v23[v215][v216][v217];	// L284, [0,2)
        float v219 = max(v218, v0);	// L285, [2,2)
        v23[v215][v216][v217] = v219;	// L286, [2,3)
      }
    }
  }
  for (int v220 = 0; v220 < 128; v220 += 1) {	// L290, [13325764,13336262), iterCycle=82, II=82
    for (int v221 = 0; v221 < 8; v221 += 1) {	// L291, [0,82), iterCycle=10, II=10
      for (int v222 = 0; v222 < 8; v222 += 1) {	// L292, [0,10), iterCycle=1, II=1
        v24[v220][v221][v222] = v0;	// L293, [0,1)
      }
    }
  }
  for (int v223 = 0; v223 < 128; v223 += 1) {	// L297, [13336262,13625288), iterCycle=2258, II=2258
    for (int v224 = 0; v224 < 8; v224 += 1) {	// L298, [0,2258), iterCycle=282, II=282
      for (int v225 = 0; v225 < 8; v225 += 1) {	// L299, [0,282), iterCycle=35, II=35
        for (int v226 = 0; v226 < 3; v226 += 1) {	// L300, [0,35), iterCycle=11, II=11
          for (int v227 = 0; v227 < 3; v227 += 1) {	// L301, [0,11), iterCycle=3, II=3
            float v228 = v23[v223][((v224 * 2) + v226)][((v225 * 2) + v227)];	// L302, [0,2)
            v24[v223][v224][v225] = v228;	// L303, [2,3)
          }
        }
      }
    }
  }
  for (int v229 = 0; v229 < 256; v229 += 1) {	// L309, [13625288,13646282), iterCycle=82, II=82
    for (int v230 = 0; v230 < 8; v230 += 1) {	// L310, [0,82), iterCycle=10, II=10
      for (int v231 = 0; v231 < 8; v231 += 1) {	// L311, [0,10), iterCycle=1, II=1
        v25[v229][v230][v231] = v0;	// L312, [0,1)
      }
    }
  }
  for (int v232 = 0; v232 < 128; v232 += 1) {	// L316, [13646282,16005591), iterCycle=12, II=1
    for (int v233 = 0; v233 < 3; v233 += 1) {	// L317, [25346190,25364635), iterCycle=12, II=1
      for (int v234 = 0; v234 < 3; v234 += 1) {	// L318, [25346190,25352347), iterCycle=12, II=1
        for (int v235 = 0; v235 < 32; v235 += 1) {	// L319, [25346190,25348251), iterCycle=12, II=1
          for (int v236 = 0; v236 < 8; v236 += 1) {	// L320, [25346190,25346267), iterCycle=12, II=1
            for (int v237 = 0; v237 < 8; v237 += 1) {	// L321, [25346190,25346211), iterCycle=12, II=1
              #pragma HLS pipeline II=1
              float v238 = v24[v232][(v236 + v233)][(v237 + v234)];	// L322, [0,2)
              float v239 = v5[(v235 * 8)][v232][v233][v234];	// L323, [0,2)
              float v240 = v238 * v239;	// L324, [2,6)
              float v241 = v25[(v235 * 8)][v236][v237];	// L325, [4,6)
              float v242 = v240 + v241;	// L326, [6,11)
              v25[(v235 * 8)][v236][v237] = v242;	// L327, [11,12)
              float v243 = v5[((v235 * 8) + 1)][v232][v233][v234];	// L328, [0,2)
              float v244 = v238 * v243;	// L329, [2,6)
              float v245 = v25[((v235 * 8) + 1)][v236][v237];	// L330, [4,6)
              float v246 = v244 + v245;	// L331, [6,11)
              v25[((v235 * 8) + 1)][v236][v237] = v246;	// L332, [11,12)
              float v247 = v5[((v235 * 8) + 2)][v232][v233][v234];	// L333, [0,2)
              float v248 = v238 * v247;	// L334, [2,6)
              float v249 = v25[((v235 * 8) + 2)][v236][v237];	// L335, [4,6)
              float v250 = v248 + v249;	// L336, [6,11)
              v25[((v235 * 8) + 2)][v236][v237] = v250;	// L337, [11,12)
              float v251 = v5[((v235 * 8) + 3)][v232][v233][v234];	// L338, [0,2)
              float v252 = v238 * v251;	// L339, [2,6)
              float v253 = v25[((v235 * 8) + 3)][v236][v237];	// L340, [4,6)
              float v254 = v252 + v253;	// L341, [6,11)
              v25[((v235 * 8) + 3)][v236][v237] = v254;	// L342, [11,12)
              float v255 = v5[((v235 * 8) + 4)][v232][v233][v234];	// L343, [0,2)
              float v256 = v238 * v255;	// L344, [2,6)
              float v257 = v25[((v235 * 8) + 4)][v236][v237];	// L345, [4,6)
              float v258 = v256 + v257;	// L346, [6,11)
              v25[((v235 * 8) + 4)][v236][v237] = v258;	// L347, [11,12)
              float v259 = v5[((v235 * 8) + 5)][v232][v233][v234];	// L348, [0,2)
              float v260 = v238 * v259;	// L349, [2,6)
              float v261 = v25[((v235 * 8) + 5)][v236][v237];	// L350, [4,6)
              float v262 = v260 + v261;	// L351, [6,11)
              v25[((v235 * 8) + 5)][v236][v237] = v262;	// L352, [11,12)
              float v263 = v5[((v235 * 8) + 6)][v232][v233][v234];	// L353, [0,2)
              float v264 = v238 * v263;	// L354, [2,6)
              float v265 = v25[((v235 * 8) + 6)][v236][v237];	// L355, [4,6)
              float v266 = v264 + v265;	// L356, [6,11)
              v25[((v235 * 8) + 6)][v236][v237] = v266;	// L357, [11,12)
              float v267 = v5[((v235 * 8) + 7)][v232][v233][v234];	// L358, [0,2)
              float v268 = v238 * v267;	// L359, [2,6)
              float v269 = v25[((v235 * 8) + 7)][v236][v237];	// L360, [4,6)
              float v270 = v268 + v269;	// L361, [6,11)
              v25[((v235 * 8) + 7)][v236][v237] = v270;	// L362, [11,12)
            }
          }
        }
      }
    }
  }
  for (int v271 = 0; v271 < 256; v271 += 1) {	// L369, [16005591,16059353), iterCycle=210, II=210
    for (int v272 = 0; v272 < 8; v272 += 1) {	// L370, [0,210), iterCycle=26, II=26
      for (int v273 = 0; v273 < 8; v273 += 1) {	// L371, [0,26), iterCycle=3, II=3
        float v274 = v25[v271][v272][v273];	// L372, [0,2)
        float v275 = max(v274, v0);	// L373, [2,2)
        v25[v271][v272][v273] = v275;	// L374, [2,3)
        v26[v271][v272][v273] = v0;	// L375, [2,3)
      }
    }
  }
  for (int v276 = 0; v276 < 256; v276 += 1) {	// L379, [16059353,20777958), iterCycle=12, II=1
    for (int v277 = 0; v277 < 3; v277 += 1) {	// L380, [20573823,20592268), iterCycle=12, II=1
      for (int v278 = 0; v278 < 3; v278 += 1) {	// L381, [20573823,20579980), iterCycle=12, II=1
        for (int v279 = 0; v279 < 32; v279 += 1) {	// L382, [20573823,20575884), iterCycle=12, II=1
          for (int v280 = 0; v280 < 8; v280 += 1) {	// L383, [20573823,20573900), iterCycle=12, II=1
            for (int v281 = 0; v281 < 8; v281 += 1) {	// L384, [20573823,20573844), iterCycle=12, II=1
              #pragma HLS pipeline II=1
              float v282 = v25[v276][(v280 + v277)][(v281 + v278)];	// L385, [0,2)
              float v283 = v6[(v279 * 8)][v276][v277][v278];	// L386, [0,2)
              float v284 = v282 * v283;	// L387, [2,6)
              float v285 = v26[(v279 * 8)][v280][v281];	// L388, [4,6)
              float v286 = v284 + v285;	// L389, [6,11)
              v26[(v279 * 8)][v280][v281] = v286;	// L390, [11,12)
              float v287 = v6[((v279 * 8) + 1)][v276][v277][v278];	// L391, [0,2)
              float v288 = v282 * v287;	// L392, [2,6)
              float v289 = v26[((v279 * 8) + 1)][v280][v281];	// L393, [4,6)
              float v290 = v288 + v289;	// L394, [6,11)
              v26[((v279 * 8) + 1)][v280][v281] = v290;	// L395, [11,12)
              float v291 = v6[((v279 * 8) + 2)][v276][v277][v278];	// L396, [0,2)
              float v292 = v282 * v291;	// L397, [2,6)
              float v293 = v26[((v279 * 8) + 2)][v280][v281];	// L398, [4,6)
              float v294 = v292 + v293;	// L399, [6,11)
              v26[((v279 * 8) + 2)][v280][v281] = v294;	// L400, [11,12)
              float v295 = v6[((v279 * 8) + 3)][v276][v277][v278];	// L401, [0,2)
              float v296 = v282 * v295;	// L402, [2,6)
              float v297 = v26[((v279 * 8) + 3)][v280][v281];	// L403, [4,6)
              float v298 = v296 + v297;	// L404, [6,11)
              v26[((v279 * 8) + 3)][v280][v281] = v298;	// L405, [11,12)
              float v299 = v6[((v279 * 8) + 4)][v276][v277][v278];	// L406, [0,2)
              float v300 = v282 * v299;	// L407, [2,6)
              float v301 = v26[((v279 * 8) + 4)][v280][v281];	// L408, [4,6)
              float v302 = v300 + v301;	// L409, [6,11)
              v26[((v279 * 8) + 4)][v280][v281] = v302;	// L410, [11,12)
              float v303 = v6[((v279 * 8) + 5)][v276][v277][v278];	// L411, [0,2)
              float v304 = v282 * v303;	// L412, [2,6)
              float v305 = v26[((v279 * 8) + 5)][v280][v281];	// L413, [4,6)
              float v306 = v304 + v305;	// L414, [6,11)
              v26[((v279 * 8) + 5)][v280][v281] = v306;	// L415, [11,12)
              float v307 = v6[((v279 * 8) + 6)][v276][v277][v278];	// L416, [0,2)
              float v308 = v282 * v307;	// L417, [2,6)
              float v309 = v26[((v279 * 8) + 6)][v280][v281];	// L418, [4,6)
              float v310 = v308 + v309;	// L419, [6,11)
              v26[((v279 * 8) + 6)][v280][v281] = v310;	// L420, [11,12)
              float v311 = v6[((v279 * 8) + 7)][v276][v277][v278];	// L421, [0,2)
              float v312 = v282 * v311;	// L422, [2,6)
              float v313 = v26[((v279 * 8) + 7)][v280][v281];	// L423, [4,6)
              float v314 = v312 + v313;	// L424, [6,11)
              v26[((v279 * 8) + 7)][v280][v281] = v314;	// L425, [11,12)
            }
          }
        }
      }
    }
  }
  for (int v315 = 0; v315 < 256; v315 += 1) {	// L432, [20777958,20831720), iterCycle=210, II=210
    for (int v316 = 0; v316 < 8; v316 += 1) {	// L433, [0,210), iterCycle=26, II=26
      for (int v317 = 0; v317 < 8; v317 += 1) {	// L434, [0,26), iterCycle=3, II=3
        float v318 = v26[v315][v316][v317];	// L435, [0,2)
        float v319 = max(v318, v0);	// L436, [2,2)
        v26[v315][v316][v317] = v319;	// L437, [2,3)
      }
    }
  }
  for (int v320 = 0; v320 < 256; v320 += 1) {	// L441, [20831720,20852714), iterCycle=82, II=82
    for (int v321 = 0; v321 < 8; v321 += 1) {	// L442, [0,82), iterCycle=10, II=10
      for (int v322 = 0; v322 < 8; v322 += 1) {	// L443, [0,10), iterCycle=1, II=1
        v27[v320][v321][v322] = v0;	// L444, [0,1)
      }
    }
  }
  for (int v323 = 0; v323 < 256; v323 += 1) {	// L448, [20852714,25571319), iterCycle=12, II=1
    for (int v324 = 0; v324 < 3; v324 += 1) {	// L449, [15780462,15798907), iterCycle=12, II=1
      for (int v325 = 0; v325 < 3; v325 += 1) {	// L450, [15780462,15786619), iterCycle=12, II=1
        for (int v326 = 0; v326 < 32; v326 += 1) {	// L451, [15780462,15782523), iterCycle=12, II=1
          for (int v327 = 0; v327 < 8; v327 += 1) {	// L452, [15780462,15780539), iterCycle=12, II=1
            for (int v328 = 0; v328 < 8; v328 += 1) {	// L453, [15780462,15780483), iterCycle=12, II=1
              #pragma HLS pipeline II=1
              float v329 = v26[v323][(v327 + v324)][(v328 + v325)];	// L454, [0,2)
              float v330 = v6[(v326 * 8)][v323][v324][v325];	// L455, [0,2)
              float v331 = v329 * v330;	// L456, [2,6)
              float v332 = v27[(v326 * 8)][v327][v328];	// L457, [4,6)
              float v333 = v331 + v332;	// L458, [6,11)
              v27[(v326 * 8)][v327][v328] = v333;	// L459, [11,12)
              float v334 = v6[((v326 * 8) + 1)][v323][v324][v325];	// L460, [0,2)
              float v335 = v329 * v334;	// L461, [2,6)
              float v336 = v27[((v326 * 8) + 1)][v327][v328];	// L462, [4,6)
              float v337 = v335 + v336;	// L463, [6,11)
              v27[((v326 * 8) + 1)][v327][v328] = v337;	// L464, [11,12)
              float v338 = v6[((v326 * 8) + 2)][v323][v324][v325];	// L465, [0,2)
              float v339 = v329 * v338;	// L466, [2,6)
              float v340 = v27[((v326 * 8) + 2)][v327][v328];	// L467, [4,6)
              float v341 = v339 + v340;	// L468, [6,11)
              v27[((v326 * 8) + 2)][v327][v328] = v341;	// L469, [11,12)
              float v342 = v6[((v326 * 8) + 3)][v323][v324][v325];	// L470, [0,2)
              float v343 = v329 * v342;	// L471, [2,6)
              float v344 = v27[((v326 * 8) + 3)][v327][v328];	// L472, [4,6)
              float v345 = v343 + v344;	// L473, [6,11)
              v27[((v326 * 8) + 3)][v327][v328] = v345;	// L474, [11,12)
              float v346 = v6[((v326 * 8) + 4)][v323][v324][v325];	// L475, [0,2)
              float v347 = v329 * v346;	// L476, [2,6)
              float v348 = v27[((v326 * 8) + 4)][v327][v328];	// L477, [4,6)
              float v349 = v347 + v348;	// L478, [6,11)
              v27[((v326 * 8) + 4)][v327][v328] = v349;	// L479, [11,12)
              float v350 = v6[((v326 * 8) + 5)][v323][v324][v325];	// L480, [0,2)
              float v351 = v329 * v350;	// L481, [2,6)
              float v352 = v27[((v326 * 8) + 5)][v327][v328];	// L482, [4,6)
              float v353 = v351 + v352;	// L483, [6,11)
              v27[((v326 * 8) + 5)][v327][v328] = v353;	// L484, [11,12)
              float v354 = v6[((v326 * 8) + 6)][v323][v324][v325];	// L485, [0,2)
              float v355 = v329 * v354;	// L486, [2,6)
              float v356 = v27[((v326 * 8) + 6)][v327][v328];	// L487, [4,6)
              float v357 = v355 + v356;	// L488, [6,11)
              v27[((v326 * 8) + 6)][v327][v328] = v357;	// L489, [11,12)
              float v358 = v6[((v326 * 8) + 7)][v323][v324][v325];	// L490, [0,2)
              float v359 = v329 * v358;	// L491, [2,6)
              float v360 = v27[((v326 * 8) + 7)][v327][v328];	// L492, [4,6)
              float v361 = v359 + v360;	// L493, [6,11)
              v27[((v326 * 8) + 7)][v327][v328] = v361;	// L494, [11,12)
            }
          }
        }
      }
    }
  }
  for (int v362 = 0; v362 < 256; v362 += 1) {	// L501, [25571319,25625081), iterCycle=210, II=210
    for (int v363 = 0; v363 < 8; v363 += 1) {	// L502, [0,210), iterCycle=26, II=26
      for (int v364 = 0; v364 < 8; v364 += 1) {	// L503, [0,26), iterCycle=3, II=3
        float v365 = v27[v362][v363][v364];	// L504, [0,2)
        float v366 = max(v365, v0);	// L505, [2,2)
        v27[v362][v363][v364] = v366;	// L506, [2,3)
      }
    }
  }
  for (int v367 = 0; v367 < 256; v367 += 1) {	// L510, [25625081,25631739), iterCycle=26, II=26
    for (int v368 = 0; v368 < 4; v368 += 1) {	// L511, [0,26), iterCycle=6, II=6
      for (int v369 = 0; v369 < 4; v369 += 1) {	// L512, [0,6), iterCycle=1, II=1
        v11[v367][v368][v369] = v0;	// L513, [0,1)
      }
    }
  }
  for (int v370 = 0; v370 < 256; v370 += 1) {	// L517, [25631739,25777661), iterCycle=570, II=570
    for (int v371 = 0; v371 < 4; v371 += 1) {	// L518, [0,570), iterCycle=142, II=142
      for (int v372 = 0; v372 < 4; v372 += 1) {	// L519, [0,142), iterCycle=35, II=35
        for (int v373 = 0; v373 < 3; v373 += 1) {	// L520, [0,35), iterCycle=11, II=11
          for (int v374 = 0; v374 < 3; v374 += 1) {	// L521, [0,11), iterCycle=3, II=3
            float v375 = v27[v370][((v371 * 2) + v373)][((v372 * 2) + v374)];	// L522, [0,2)
            v11[v370][v371][v372] = v375;	// L523, [2,3)
          }
        }
      }
    }
  }
  for (int v376 = 0; v376 < 512; v376 += 1) {	// L529, [25777661,25790975), iterCycle=26, II=26
    for (int v377 = 0; v377 < 4; v377 += 1) {	// L530, [0,26), iterCycle=6, II=6
      for (int v378 = 0; v378 < 4; v378 += 1) {	// L531, [0,6), iterCycle=1, II=1
        v12[v376][v377][v378] = v0;	// L532, [0,1)
      }
    }
  }
  for (int v379 = 0; v379 < 256; v379 += 1) {	// L536, [25790975,28150284), iterCycle=12, II=1
    for (int v380 = 0; v380 < 3; v380 += 1) {	// L537, [13201497,13210726), iterCycle=12, II=1
      for (int v381 = 0; v381 < 3; v381 += 1) {	// L538, [13201497,13204582), iterCycle=12, II=1
        for (int v382 = 0; v382 < 64; v382 += 1) {	// L539, [13201497,13202534), iterCycle=12, II=1
          for (int v383 = 0; v383 < 4; v383 += 1) {	// L540, [13201497,13201526), iterCycle=12, II=1
            for (int v384 = 0; v384 < 4; v384 += 1) {	// L541, [13201497,13201514), iterCycle=12, II=1
              #pragma HLS pipeline II=1
              float v385 = v11[v379][(v383 + v380)][(v384 + v381)];	// L542, [0,2)
              float v386 = v7[(v382 * 8)][v379][v380][v381];	// L543, [0,2)
              float v387 = v385 * v386;	// L544, [2,6)
              float v388 = v12[(v382 * 8)][v383][v384];	// L545, [4,6)
              float v389 = v387 + v388;	// L546, [6,11)
              v12[(v382 * 8)][v383][v384] = v389;	// L547, [11,12)
              float v390 = v7[((v382 * 8) + 1)][v379][v380][v381];	// L548, [0,2)
              float v391 = v385 * v390;	// L549, [2,6)
              float v392 = v12[((v382 * 8) + 1)][v383][v384];	// L550, [4,6)
              float v393 = v391 + v392;	// L551, [6,11)
              v12[((v382 * 8) + 1)][v383][v384] = v393;	// L552, [11,12)
              float v394 = v7[((v382 * 8) + 2)][v379][v380][v381];	// L553, [0,2)
              float v395 = v385 * v394;	// L554, [2,6)
              float v396 = v12[((v382 * 8) + 2)][v383][v384];	// L555, [4,6)
              float v397 = v395 + v396;	// L556, [6,11)
              v12[((v382 * 8) + 2)][v383][v384] = v397;	// L557, [11,12)
              float v398 = v7[((v382 * 8) + 3)][v379][v380][v381];	// L558, [0,2)
              float v399 = v385 * v398;	// L559, [2,6)
              float v400 = v12[((v382 * 8) + 3)][v383][v384];	// L560, [4,6)
              float v401 = v399 + v400;	// L561, [6,11)
              v12[((v382 * 8) + 3)][v383][v384] = v401;	// L562, [11,12)
              float v402 = v7[((v382 * 8) + 4)][v379][v380][v381];	// L563, [0,2)
              float v403 = v385 * v402;	// L564, [2,6)
              float v404 = v12[((v382 * 8) + 4)][v383][v384];	// L565, [4,6)
              float v405 = v403 + v404;	// L566, [6,11)
              v12[((v382 * 8) + 4)][v383][v384] = v405;	// L567, [11,12)
              float v406 = v7[((v382 * 8) + 5)][v379][v380][v381];	// L568, [0,2)
              float v407 = v385 * v406;	// L569, [2,6)
              float v408 = v12[((v382 * 8) + 5)][v383][v384];	// L570, [4,6)
              float v409 = v407 + v408;	// L571, [6,11)
              v12[((v382 * 8) + 5)][v383][v384] = v409;	// L572, [11,12)
              float v410 = v7[((v382 * 8) + 6)][v379][v380][v381];	// L573, [0,2)
              float v411 = v385 * v410;	// L574, [2,6)
              float v412 = v12[((v382 * 8) + 6)][v383][v384];	// L575, [4,6)
              float v413 = v411 + v412;	// L576, [6,11)
              v12[((v382 * 8) + 6)][v383][v384] = v413;	// L577, [11,12)
              float v414 = v7[((v382 * 8) + 7)][v379][v380][v381];	// L578, [0,2)
              float v415 = v385 * v414;	// L579, [2,6)
              float v416 = v12[((v382 * 8) + 7)][v383][v384];	// L580, [4,6)
              float v417 = v415 + v416;	// L581, [6,11)
              v12[((v382 * 8) + 7)][v383][v384] = v417;	// L582, [11,12)
            }
          }
        }
      }
    }
  }
  for (int v418 = 0; v418 < 512; v418 += 1) {	// L589, [28150284,28179982), iterCycle=58, II=58
    for (int v419 = 0; v419 < 4; v419 += 1) {	// L590, [0,58), iterCycle=14, II=14
      for (int v420 = 0; v420 < 4; v420 += 1) {	// L591, [0,14), iterCycle=3, II=3
        float v421 = v12[v418][v419][v420];	// L592, [0,2)
        float v422 = max(v421, v0);	// L593, [2,2)
        v12[v418][v419][v420] = v422;	// L594, [2,3)
        v13[v418][v419][v420] = v0;	// L595, [2,3)
      }
    }
  }
  for (int v423 = 0; v423 < 512; v423 += 1) {	// L599, [28179982,32898587), iterCycle=12, II=1
    for (int v424 = 0; v424 < 3; v424 += 1) {	// L600, [8453194,8462423), iterCycle=12, II=1
      for (int v425 = 0; v425 < 3; v425 += 1) {	// L601, [8453194,8456279), iterCycle=12, II=1
        for (int v426 = 0; v426 < 64; v426 += 1) {	// L602, [8453194,8454231), iterCycle=12, II=1
          for (int v427 = 0; v427 < 4; v427 += 1) {	// L603, [8453194,8453223), iterCycle=12, II=1
            for (int v428 = 0; v428 < 4; v428 += 1) {	// L604, [8453194,8453211), iterCycle=12, II=1
              #pragma HLS pipeline II=1
              float v429 = v12[v423][(v427 + v424)][(v428 + v425)];	// L605, [0,2)
              float v430 = v8[(v426 * 8)][v423][v424][v425];	// L606, [0,2)
              float v431 = v429 * v430;	// L607, [2,6)
              float v432 = v13[(v426 * 8)][v427][v428];	// L608, [4,6)
              float v433 = v431 + v432;	// L609, [6,11)
              v13[(v426 * 8)][v427][v428] = v433;	// L610, [11,12)
              float v434 = v8[((v426 * 8) + 1)][v423][v424][v425];	// L611, [0,2)
              float v435 = v429 * v434;	// L612, [2,6)
              float v436 = v13[((v426 * 8) + 1)][v427][v428];	// L613, [4,6)
              float v437 = v435 + v436;	// L614, [6,11)
              v13[((v426 * 8) + 1)][v427][v428] = v437;	// L615, [11,12)
              float v438 = v8[((v426 * 8) + 2)][v423][v424][v425];	// L616, [0,2)
              float v439 = v429 * v438;	// L617, [2,6)
              float v440 = v13[((v426 * 8) + 2)][v427][v428];	// L618, [4,6)
              float v441 = v439 + v440;	// L619, [6,11)
              v13[((v426 * 8) + 2)][v427][v428] = v441;	// L620, [11,12)
              float v442 = v8[((v426 * 8) + 3)][v423][v424][v425];	// L621, [0,2)
              float v443 = v429 * v442;	// L622, [2,6)
              float v444 = v13[((v426 * 8) + 3)][v427][v428];	// L623, [4,6)
              float v445 = v443 + v444;	// L624, [6,11)
              v13[((v426 * 8) + 3)][v427][v428] = v445;	// L625, [11,12)
              float v446 = v8[((v426 * 8) + 4)][v423][v424][v425];	// L626, [0,2)
              float v447 = v429 * v446;	// L627, [2,6)
              float v448 = v13[((v426 * 8) + 4)][v427][v428];	// L628, [4,6)
              float v449 = v447 + v448;	// L629, [6,11)
              v13[((v426 * 8) + 4)][v427][v428] = v449;	// L630, [11,12)
              float v450 = v8[((v426 * 8) + 5)][v423][v424][v425];	// L631, [0,2)
              float v451 = v429 * v450;	// L632, [2,6)
              float v452 = v13[((v426 * 8) + 5)][v427][v428];	// L633, [4,6)
              float v453 = v451 + v452;	// L634, [6,11)
              v13[((v426 * 8) + 5)][v427][v428] = v453;	// L635, [11,12)
              float v454 = v8[((v426 * 8) + 6)][v423][v424][v425];	// L636, [0,2)
              float v455 = v429 * v454;	// L637, [2,6)
              float v456 = v13[((v426 * 8) + 6)][v427][v428];	// L638, [4,6)
              float v457 = v455 + v456;	// L639, [6,11)
              v13[((v426 * 8) + 6)][v427][v428] = v457;	// L640, [11,12)
              float v458 = v8[((v426 * 8) + 7)][v423][v424][v425];	// L641, [0,2)
              float v459 = v429 * v458;	// L642, [2,6)
              float v460 = v13[((v426 * 8) + 7)][v427][v428];	// L643, [4,6)
              float v461 = v459 + v460;	// L644, [6,11)
              v13[((v426 * 8) + 7)][v427][v428] = v461;	// L645, [11,12)
            }
          }
        }
      }
    }
  }
  for (int v462 = 0; v462 < 512; v462 += 1) {	// L652, [32898587,32928285), iterCycle=58, II=58
    for (int v463 = 0; v463 < 4; v463 += 1) {	// L653, [0,58), iterCycle=14, II=14
      for (int v464 = 0; v464 < 4; v464 += 1) {	// L654, [0,14), iterCycle=3, II=3
        float v465 = v13[v462][v463][v464];	// L655, [0,2)
        float v466 = max(v465, v0);	// L656, [2,2)
        v13[v462][v463][v464] = v466;	// L657, [2,3)
        v14[v462][v463][v464] = v0;	// L658, [2,3)
      }
    }
  }
  for (int v467 = 0; v467 < 512; v467 += 1) {	// L662, [32928285,37646890), iterCycle=12, II=1
    for (int v468 = 0; v468 < 3; v468 += 1) {	// L663, [3704891,3714120), iterCycle=12, II=1
      for (int v469 = 0; v469 < 3; v469 += 1) {	// L664, [3704891,3707976), iterCycle=12, II=1
        for (int v470 = 0; v470 < 64; v470 += 1) {	// L665, [3704891,3705928), iterCycle=12, II=1
          for (int v471 = 0; v471 < 4; v471 += 1) {	// L666, [3704891,3704920), iterCycle=12, II=1
            for (int v472 = 0; v472 < 4; v472 += 1) {	// L667, [3704891,3704908), iterCycle=12, II=1
              #pragma HLS pipeline II=1
              float v473 = v13[v467][(v471 + v468)][(v472 + v469)];	// L668, [0,2)
              float v474 = v8[(v470 * 8)][v467][v468][v469];	// L669, [0,2)
              float v475 = v473 * v474;	// L670, [2,6)
              float v476 = v14[(v470 * 8)][v471][v472];	// L671, [4,6)
              float v477 = v475 + v476;	// L672, [6,11)
              v14[(v470 * 8)][v471][v472] = v477;	// L673, [11,12)
              float v478 = v8[((v470 * 8) + 1)][v467][v468][v469];	// L674, [0,2)
              float v479 = v473 * v478;	// L675, [2,6)
              float v480 = v14[((v470 * 8) + 1)][v471][v472];	// L676, [4,6)
              float v481 = v479 + v480;	// L677, [6,11)
              v14[((v470 * 8) + 1)][v471][v472] = v481;	// L678, [11,12)
              float v482 = v8[((v470 * 8) + 2)][v467][v468][v469];	// L679, [0,2)
              float v483 = v473 * v482;	// L680, [2,6)
              float v484 = v14[((v470 * 8) + 2)][v471][v472];	// L681, [4,6)
              float v485 = v483 + v484;	// L682, [6,11)
              v14[((v470 * 8) + 2)][v471][v472] = v485;	// L683, [11,12)
              float v486 = v8[((v470 * 8) + 3)][v467][v468][v469];	// L684, [0,2)
              float v487 = v473 * v486;	// L685, [2,6)
              float v488 = v14[((v470 * 8) + 3)][v471][v472];	// L686, [4,6)
              float v489 = v487 + v488;	// L687, [6,11)
              v14[((v470 * 8) + 3)][v471][v472] = v489;	// L688, [11,12)
              float v490 = v8[((v470 * 8) + 4)][v467][v468][v469];	// L689, [0,2)
              float v491 = v473 * v490;	// L690, [2,6)
              float v492 = v14[((v470 * 8) + 4)][v471][v472];	// L691, [4,6)
              float v493 = v491 + v492;	// L692, [6,11)
              v14[((v470 * 8) + 4)][v471][v472] = v493;	// L693, [11,12)
              float v494 = v8[((v470 * 8) + 5)][v467][v468][v469];	// L694, [0,2)
              float v495 = v473 * v494;	// L695, [2,6)
              float v496 = v14[((v470 * 8) + 5)][v471][v472];	// L696, [4,6)
              float v497 = v495 + v496;	// L697, [6,11)
              v14[((v470 * 8) + 5)][v471][v472] = v497;	// L698, [11,12)
              float v498 = v8[((v470 * 8) + 6)][v467][v468][v469];	// L699, [0,2)
              float v499 = v473 * v498;	// L700, [2,6)
              float v500 = v14[((v470 * 8) + 6)][v471][v472];	// L701, [4,6)
              float v501 = v499 + v500;	// L702, [6,11)
              v14[((v470 * 8) + 6)][v471][v472] = v501;	// L703, [11,12)
              float v502 = v8[((v470 * 8) + 7)][v467][v468][v469];	// L704, [0,2)
              float v503 = v473 * v502;	// L705, [2,6)
              float v504 = v14[((v470 * 8) + 7)][v471][v472];	// L706, [4,6)
              float v505 = v503 + v504;	// L707, [6,11)
              v14[((v470 * 8) + 7)][v471][v472] = v505;	// L708, [11,12)
            }
          }
        }
      }
    }
  }
  for (int v506 = 0; v506 < 512; v506 += 1) {	// L715, [37646890,37676588), iterCycle=58, II=58
    for (int v507 = 0; v507 < 4; v507 += 1) {	// L716, [0,58), iterCycle=14, II=14
      for (int v508 = 0; v508 < 4; v508 += 1) {	// L717, [0,14), iterCycle=3, II=3
        float v509 = v14[v506][v507][v508];	// L718, [0,2)
        float v510 = max(v509, v0);	// L719, [2,2)
        v14[v506][v507][v508] = v510;	// L720, [2,3)
      }
    }
  }
  for (int v511 = 0; v511 < 512; v511 += 1) {	// L724, [37676588,37681710), iterCycle=10, II=10
    for (int v512 = 0; v512 < 2; v512 += 1) {	// L725, [0,10), iterCycle=4, II=4
      for (int v513 = 0; v513 < 2; v513 += 1) {	// L726, [0,4), iterCycle=1, II=1
        v15[v511][v512][v513] = v0;	// L727, [0,1)
      }
    }
  }
  for (int v514 = 0; v514 < 512; v514 += 1) {	// L731, [37681710,37756464), iterCycle=146, II=146
    for (int v515 = 0; v515 < 2; v515 += 1) {	// L732, [0,146), iterCycle=72, II=72
      for (int v516 = 0; v516 < 2; v516 += 1) {	// L733, [0,72), iterCycle=35, II=35
        for (int v517 = 0; v517 < 3; v517 += 1) {	// L734, [0,35), iterCycle=11, II=11
          for (int v518 = 0; v518 < 3; v518 += 1) {	// L735, [0,11), iterCycle=3, II=3
            float v519 = v14[v514][((v515 * 2) + v517)][((v516 * 2) + v518)];	// L736, [0,2)
            v15[v514][v515][v516] = v519;	// L737, [2,3)
          }
        }
      }
    }
  }
  for (int v520 = 0; v520 < 512; v520 += 1) {	// L743, [37756464,37761586), iterCycle=10, II=10
    for (int v521 = 0; v521 < 2; v521 += 1) {	// L744, [0,10), iterCycle=4, II=4
      for (int v522 = 0; v522 < 2; v522 += 1) {	// L745, [0,4), iterCycle=1, II=1
        v16[v520][v521][v522] = v0;	// L746, [0,1)
      }
    }
  }
  for (int v523 = 0; v523 < 512; v523 += 1) {	// L750, [37761586,38941247), iterCycle=12, II=1
    for (int v524 = 0; v524 < 3; v524 += 1) {	// L751, [2410534,2412851), iterCycle=12, II=1
      for (int v525 = 0; v525 < 3; v525 += 1) {	// L752, [2410534,2411315), iterCycle=12, II=1
        for (int v526 = 0; v526 < 64; v526 += 1) {	// L753, [2410534,2410803), iterCycle=12, II=1
          for (int v527 = 0; v527 < 2; v527 += 1) {	// L754, [2410534,2410551), iterCycle=12, II=1
            for (int v528 = 0; v528 < 2; v528 += 1) {	// L755, [2410534,2410549), iterCycle=12, II=1
              #pragma HLS pipeline II=1
              float v529 = v15[v523][(v527 + v524)][(v528 + v525)];	// L756, [0,2)
              float v530 = v9[(v526 * 8)][v523][v524][v525];	// L757, [0,2)
              float v531 = v529 * v530;	// L758, [2,6)
              float v532 = v16[(v526 * 8)][v527][v528];	// L759, [4,6)
              float v533 = v531 + v532;	// L760, [6,11)
              v16[(v526 * 8)][v527][v528] = v533;	// L761, [11,12)
              float v534 = v9[((v526 * 8) + 1)][v523][v524][v525];	// L762, [0,2)
              float v535 = v529 * v534;	// L763, [2,6)
              float v536 = v16[((v526 * 8) + 1)][v527][v528];	// L764, [4,6)
              float v537 = v535 + v536;	// L765, [6,11)
              v16[((v526 * 8) + 1)][v527][v528] = v537;	// L766, [11,12)
              float v538 = v9[((v526 * 8) + 2)][v523][v524][v525];	// L767, [0,2)
              float v539 = v529 * v538;	// L768, [2,6)
              float v540 = v16[((v526 * 8) + 2)][v527][v528];	// L769, [4,6)
              float v541 = v539 + v540;	// L770, [6,11)
              v16[((v526 * 8) + 2)][v527][v528] = v541;	// L771, [11,12)
              float v542 = v9[((v526 * 8) + 3)][v523][v524][v525];	// L772, [0,2)
              float v543 = v529 * v542;	// L773, [2,6)
              float v544 = v16[((v526 * 8) + 3)][v527][v528];	// L774, [4,6)
              float v545 = v543 + v544;	// L775, [6,11)
              v16[((v526 * 8) + 3)][v527][v528] = v545;	// L776, [11,12)
              float v546 = v9[((v526 * 8) + 4)][v523][v524][v525];	// L777, [0,2)
              float v547 = v529 * v546;	// L778, [2,6)
              float v548 = v16[((v526 * 8) + 4)][v527][v528];	// L779, [4,6)
              float v549 = v547 + v548;	// L780, [6,11)
              v16[((v526 * 8) + 4)][v527][v528] = v549;	// L781, [11,12)
              float v550 = v9[((v526 * 8) + 5)][v523][v524][v525];	// L782, [0,2)
              float v551 = v529 * v550;	// L783, [2,6)
              float v552 = v16[((v526 * 8) + 5)][v527][v528];	// L784, [4,6)
              float v553 = v551 + v552;	// L785, [6,11)
              v16[((v526 * 8) + 5)][v527][v528] = v553;	// L786, [11,12)
              float v554 = v9[((v526 * 8) + 6)][v523][v524][v525];	// L787, [0,2)
              float v555 = v529 * v554;	// L788, [2,6)
              float v556 = v16[((v526 * 8) + 6)][v527][v528];	// L789, [4,6)
              float v557 = v555 + v556;	// L790, [6,11)
              v16[((v526 * 8) + 6)][v527][v528] = v557;	// L791, [11,12)
              float v558 = v9[((v526 * 8) + 7)][v523][v524][v525];	// L792, [0,2)
              float v559 = v529 * v558;	// L793, [2,6)
              float v560 = v16[((v526 * 8) + 7)][v527][v528];	// L794, [4,6)
              float v561 = v559 + v560;	// L795, [6,11)
              v16[((v526 * 8) + 7)][v527][v528] = v561;	// L796, [11,12)
            }
          }
        }
      }
    }
  }
  for (int v562 = 0; v562 < 512; v562 += 1) {	// L803, [38941247,38950465), iterCycle=18, II=18
    for (int v563 = 0; v563 < 2; v563 += 1) {	// L804, [0,18), iterCycle=8, II=8
      for (int v564 = 0; v564 < 2; v564 += 1) {	// L805, [0,8), iterCycle=3, II=3
        float v565 = v16[v562][v563][v564];	// L806, [0,2)
        float v566 = max(v565, v0);	// L807, [2,2)
        v16[v562][v563][v564] = v566;	// L808, [2,3)
        v17[v562][v563][v564] = v0;	// L809, [2,3)
      }
    }
  }
  for (int v567 = 0; v567 < 512; v567 += 1) {	// L813, [38950465,40130126), iterCycle=12, II=1
    for (int v568 = 0; v568 < 3; v568 += 1) {	// L814, [1221655,1223972), iterCycle=12, II=1
      for (int v569 = 0; v569 < 3; v569 += 1) {	// L815, [1221655,1222436), iterCycle=12, II=1
        for (int v570 = 0; v570 < 64; v570 += 1) {	// L816, [1221655,1221924), iterCycle=12, II=1
          for (int v571 = 0; v571 < 2; v571 += 1) {	// L817, [1221655,1221672), iterCycle=12, II=1
            for (int v572 = 0; v572 < 2; v572 += 1) {	// L818, [1221655,1221670), iterCycle=12, II=1
              #pragma HLS pipeline II=1
              float v573 = v16[v567][(v571 + v568)][(v572 + v569)];	// L819, [0,2)
              float v574 = v9[(v570 * 8)][v567][v568][v569];	// L820, [0,2)
              float v575 = v573 * v574;	// L821, [2,6)
              float v576 = v17[(v570 * 8)][v571][v572];	// L822, [4,6)
              float v577 = v575 + v576;	// L823, [6,11)
              v17[(v570 * 8)][v571][v572] = v577;	// L824, [11,12)
              float v578 = v9[((v570 * 8) + 1)][v567][v568][v569];	// L825, [0,2)
              float v579 = v573 * v578;	// L826, [2,6)
              float v580 = v17[((v570 * 8) + 1)][v571][v572];	// L827, [4,6)
              float v581 = v579 + v580;	// L828, [6,11)
              v17[((v570 * 8) + 1)][v571][v572] = v581;	// L829, [11,12)
              float v582 = v9[((v570 * 8) + 2)][v567][v568][v569];	// L830, [0,2)
              float v583 = v573 * v582;	// L831, [2,6)
              float v584 = v17[((v570 * 8) + 2)][v571][v572];	// L832, [4,6)
              float v585 = v583 + v584;	// L833, [6,11)
              v17[((v570 * 8) + 2)][v571][v572] = v585;	// L834, [11,12)
              float v586 = v9[((v570 * 8) + 3)][v567][v568][v569];	// L835, [0,2)
              float v587 = v573 * v586;	// L836, [2,6)
              float v588 = v17[((v570 * 8) + 3)][v571][v572];	// L837, [4,6)
              float v589 = v587 + v588;	// L838, [6,11)
              v17[((v570 * 8) + 3)][v571][v572] = v589;	// L839, [11,12)
              float v590 = v9[((v570 * 8) + 4)][v567][v568][v569];	// L840, [0,2)
              float v591 = v573 * v590;	// L841, [2,6)
              float v592 = v17[((v570 * 8) + 4)][v571][v572];	// L842, [4,6)
              float v593 = v591 + v592;	// L843, [6,11)
              v17[((v570 * 8) + 4)][v571][v572] = v593;	// L844, [11,12)
              float v594 = v9[((v570 * 8) + 5)][v567][v568][v569];	// L845, [0,2)
              float v595 = v573 * v594;	// L846, [2,6)
              float v596 = v17[((v570 * 8) + 5)][v571][v572];	// L847, [4,6)
              float v597 = v595 + v596;	// L848, [6,11)
              v17[((v570 * 8) + 5)][v571][v572] = v597;	// L849, [11,12)
              float v598 = v9[((v570 * 8) + 6)][v567][v568][v569];	// L850, [0,2)
              float v599 = v573 * v598;	// L851, [2,6)
              float v600 = v17[((v570 * 8) + 6)][v571][v572];	// L852, [4,6)
              float v601 = v599 + v600;	// L853, [6,11)
              v17[((v570 * 8) + 6)][v571][v572] = v601;	// L854, [11,12)
              float v602 = v9[((v570 * 8) + 7)][v567][v568][v569];	// L855, [0,2)
              float v603 = v573 * v602;	// L856, [2,6)
              float v604 = v17[((v570 * 8) + 7)][v571][v572];	// L857, [4,6)
              float v605 = v603 + v604;	// L858, [6,11)
              v17[((v570 * 8) + 7)][v571][v572] = v605;	// L859, [11,12)
            }
          }
        }
      }
    }
  }
  for (int v606 = 0; v606 < 512; v606 += 1) {	// L866, [40130126,40139344), iterCycle=18, II=18
    for (int v607 = 0; v607 < 2; v607 += 1) {	// L867, [0,18), iterCycle=8, II=8
      for (int v608 = 0; v608 < 2; v608 += 1) {	// L868, [0,8), iterCycle=3, II=3
        float v609 = v17[v606][v607][v608];	// L869, [0,2)
        float v610 = max(v609, v0);	// L870, [2,2)
        v17[v606][v607][v608] = v610;	// L871, [2,3)
      }
    }
  }
  for (int v611 = 0; v611 < 512; v611 += 1) {	// L875, [40139344,40144466), iterCycle=10, II=10
    for (int v612 = 0; v612 < 2; v612 += 1) {	// L876, [0,10), iterCycle=4, II=4
      for (int v613 = 0; v613 < 2; v613 += 1) {	// L877, [0,4), iterCycle=1, II=1
        v18[v611][v612][v613] = v0;	// L878, [0,1)
      }
    }
  }
  for (int v614 = 0; v614 < 512; v614 += 1) {	// L882, [40144466,41324127), iterCycle=12, II=1
    for (int v615 = 0; v615 < 3; v615 += 1) {	// L883, [27654,29971), iterCycle=12, II=1
      for (int v616 = 0; v616 < 3; v616 += 1) {	// L884, [27654,28435), iterCycle=12, II=1
        for (int v617 = 0; v617 < 64; v617 += 1) {	// L885, [27654,27923), iterCycle=12, II=1
          for (int v618 = 0; v618 < 2; v618 += 1) {	// L886, [27654,27671), iterCycle=12, II=1
            for (int v619 = 0; v619 < 2; v619 += 1) {	// L887, [27654,27669), iterCycle=12, II=1
              #pragma HLS pipeline II=1
              float v620 = v17[v614][(v618 + v615)][(v619 + v616)];	// L888, [0,2)
              float v621 = v9[(v617 * 8)][v614][v615][v616];	// L889, [0,2)
              float v622 = v620 * v621;	// L890, [2,6)
              float v623 = v18[(v617 * 8)][v618][v619];	// L891, [4,6)
              float v624 = v622 + v623;	// L892, [6,11)
              v18[(v617 * 8)][v618][v619] = v624;	// L893, [11,12)
              float v625 = v9[((v617 * 8) + 1)][v614][v615][v616];	// L894, [0,2)
              float v626 = v620 * v625;	// L895, [2,6)
              float v627 = v18[((v617 * 8) + 1)][v618][v619];	// L896, [4,6)
              float v628 = v626 + v627;	// L897, [6,11)
              v18[((v617 * 8) + 1)][v618][v619] = v628;	// L898, [11,12)
              float v629 = v9[((v617 * 8) + 2)][v614][v615][v616];	// L899, [0,2)
              float v630 = v620 * v629;	// L900, [2,6)
              float v631 = v18[((v617 * 8) + 2)][v618][v619];	// L901, [4,6)
              float v632 = v630 + v631;	// L902, [6,11)
              v18[((v617 * 8) + 2)][v618][v619] = v632;	// L903, [11,12)
              float v633 = v9[((v617 * 8) + 3)][v614][v615][v616];	// L904, [0,2)
              float v634 = v620 * v633;	// L905, [2,6)
              float v635 = v18[((v617 * 8) + 3)][v618][v619];	// L906, [4,6)
              float v636 = v634 + v635;	// L907, [6,11)
              v18[((v617 * 8) + 3)][v618][v619] = v636;	// L908, [11,12)
              float v637 = v9[((v617 * 8) + 4)][v614][v615][v616];	// L909, [0,2)
              float v638 = v620 * v637;	// L910, [2,6)
              float v639 = v18[((v617 * 8) + 4)][v618][v619];	// L911, [4,6)
              float v640 = v638 + v639;	// L912, [6,11)
              v18[((v617 * 8) + 4)][v618][v619] = v640;	// L913, [11,12)
              float v641 = v9[((v617 * 8) + 5)][v614][v615][v616];	// L914, [0,2)
              float v642 = v620 * v641;	// L915, [2,6)
              float v643 = v18[((v617 * 8) + 5)][v618][v619];	// L916, [4,6)
              float v644 = v642 + v643;	// L917, [6,11)
              v18[((v617 * 8) + 5)][v618][v619] = v644;	// L918, [11,12)
              float v645 = v9[((v617 * 8) + 6)][v614][v615][v616];	// L919, [0,2)
              float v646 = v620 * v645;	// L920, [2,6)
              float v647 = v18[((v617 * 8) + 6)][v618][v619];	// L921, [4,6)
              float v648 = v646 + v647;	// L922, [6,11)
              v18[((v617 * 8) + 6)][v618][v619] = v648;	// L923, [11,12)
              float v649 = v9[((v617 * 8) + 7)][v614][v615][v616];	// L924, [0,2)
              float v650 = v620 * v649;	// L925, [2,6)
              float v651 = v18[((v617 * 8) + 7)][v618][v619];	// L926, [4,6)
              float v652 = v650 + v651;	// L927, [6,11)
              v18[((v617 * 8) + 7)][v618][v619] = v652;	// L928, [11,12)
            }
          }
        }
      }
    }
  }
  for (int v653 = 0; v653 < 512; v653 += 1) {	// L935, [41324127,41333345), iterCycle=18, II=18
    for (int v654 = 0; v654 < 2; v654 += 1) {	// L936, [0,18), iterCycle=8, II=8
      for (int v655 = 0; v655 < 2; v655 += 1) {	// L937, [0,8), iterCycle=3, II=3
        float v656 = v18[v653][v654][v655];	// L938, [0,2)
        float v657 = max(v656, v0);	// L939, [2,2)
        v18[v653][v654][v655] = v657;	// L940, [2,3)
      }
    }
  }
  for (int v658 = 0; v658 < 512; v658 += 1) {	// L944, [41333345,41333859), iterCycle=1, II=1
    v19[v658] = v0;	// L945, [0,1)
  }
  for (int v659 = 0; v659 < 512; v659 += 1) {	// L947, [41333859,41351781), iterCycle=35, II=35
    for (int v660 = 0; v660 < 3; v660 += 1) {	// L948, [0,35), iterCycle=11, II=11
      for (int v661 = 0; v661 < 3; v661 += 1) {	// L949, [0,11), iterCycle=3, II=3
        float v662 = v18[v659][(v660 + 2)][(v661 + 2)];	// L950, [0,2)
        v19[v659] = v662;	// L951, [2,3)
      }
    }
  }
}

