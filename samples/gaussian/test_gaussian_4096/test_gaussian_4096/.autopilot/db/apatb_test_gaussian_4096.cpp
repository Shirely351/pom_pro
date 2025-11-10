#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_signal_handler.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_v0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v0.dat"
#define AUTOTB_TVOUT_v0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v0.dat"
#define AUTOTB_TVIN_v1_0_0_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_0_0_0.dat"
#define AUTOTB_TVOUT_v1_0_0_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_0_0_0.dat"
#define AUTOTB_TVIN_v1_0_0_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_0_0_1.dat"
#define AUTOTB_TVOUT_v1_0_0_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_0_0_1.dat"
#define AUTOTB_TVIN_v1_0_0_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_0_0_2.dat"
#define AUTOTB_TVOUT_v1_0_0_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_0_0_2.dat"
#define AUTOTB_TVIN_v1_0_1_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_0_1_0.dat"
#define AUTOTB_TVOUT_v1_0_1_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_0_1_0.dat"
#define AUTOTB_TVIN_v1_0_1_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_0_1_1.dat"
#define AUTOTB_TVOUT_v1_0_1_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_0_1_1.dat"
#define AUTOTB_TVIN_v1_0_1_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_0_1_2.dat"
#define AUTOTB_TVOUT_v1_0_1_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_0_1_2.dat"
#define AUTOTB_TVIN_v1_0_2_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_0_2_0.dat"
#define AUTOTB_TVOUT_v1_0_2_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_0_2_0.dat"
#define AUTOTB_TVIN_v1_0_2_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_0_2_1.dat"
#define AUTOTB_TVOUT_v1_0_2_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_0_2_1.dat"
#define AUTOTB_TVIN_v1_0_2_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_0_2_2.dat"
#define AUTOTB_TVOUT_v1_0_2_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_0_2_2.dat"
#define AUTOTB_TVIN_v1_1_0_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_1_0_0.dat"
#define AUTOTB_TVOUT_v1_1_0_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_1_0_0.dat"
#define AUTOTB_TVIN_v1_1_0_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_1_0_1.dat"
#define AUTOTB_TVOUT_v1_1_0_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_1_0_1.dat"
#define AUTOTB_TVIN_v1_1_0_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_1_0_2.dat"
#define AUTOTB_TVOUT_v1_1_0_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_1_0_2.dat"
#define AUTOTB_TVIN_v1_1_1_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_1_1_0.dat"
#define AUTOTB_TVOUT_v1_1_1_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_1_1_0.dat"
#define AUTOTB_TVIN_v1_1_1_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_1_1_1.dat"
#define AUTOTB_TVOUT_v1_1_1_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_1_1_1.dat"
#define AUTOTB_TVIN_v1_1_1_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_1_1_2.dat"
#define AUTOTB_TVOUT_v1_1_1_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_1_1_2.dat"
#define AUTOTB_TVIN_v1_1_2_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_1_2_0.dat"
#define AUTOTB_TVOUT_v1_1_2_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_1_2_0.dat"
#define AUTOTB_TVIN_v1_1_2_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_1_2_1.dat"
#define AUTOTB_TVOUT_v1_1_2_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_1_2_1.dat"
#define AUTOTB_TVIN_v1_1_2_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_1_2_2.dat"
#define AUTOTB_TVOUT_v1_1_2_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_1_2_2.dat"
#define AUTOTB_TVIN_v1_2_0_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_2_0_0.dat"
#define AUTOTB_TVOUT_v1_2_0_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_2_0_0.dat"
#define AUTOTB_TVIN_v1_2_0_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_2_0_1.dat"
#define AUTOTB_TVOUT_v1_2_0_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_2_0_1.dat"
#define AUTOTB_TVIN_v1_2_0_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_2_0_2.dat"
#define AUTOTB_TVOUT_v1_2_0_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_2_0_2.dat"
#define AUTOTB_TVIN_v1_2_1_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_2_1_0.dat"
#define AUTOTB_TVOUT_v1_2_1_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_2_1_0.dat"
#define AUTOTB_TVIN_v1_2_1_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_2_1_1.dat"
#define AUTOTB_TVOUT_v1_2_1_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_2_1_1.dat"
#define AUTOTB_TVIN_v1_2_1_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_2_1_2.dat"
#define AUTOTB_TVOUT_v1_2_1_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_2_1_2.dat"
#define AUTOTB_TVIN_v1_2_2_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_2_2_0.dat"
#define AUTOTB_TVOUT_v1_2_2_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_2_2_0.dat"
#define AUTOTB_TVIN_v1_2_2_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_2_2_1.dat"
#define AUTOTB_TVOUT_v1_2_2_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_2_2_1.dat"
#define AUTOTB_TVIN_v1_2_2_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v1_2_2_2.dat"
#define AUTOTB_TVOUT_v1_2_2_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v1_2_2_2.dat"
#define AUTOTB_TVIN_v2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v2.dat"
#define AUTOTB_TVOUT_v2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v2.dat"
#define AUTOTB_TVIN_v3 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v3.dat"
#define AUTOTB_TVOUT_v3 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v3.dat"
#define AUTOTB_TVIN_v4_0_0_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_0_0_0.dat"
#define AUTOTB_TVOUT_v4_0_0_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_0_0_0.dat"
#define AUTOTB_TVIN_v4_0_0_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_0_0_1.dat"
#define AUTOTB_TVOUT_v4_0_0_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_0_0_1.dat"
#define AUTOTB_TVIN_v4_0_0_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_0_0_2.dat"
#define AUTOTB_TVOUT_v4_0_0_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_0_0_2.dat"
#define AUTOTB_TVIN_v4_0_1_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_0_1_0.dat"
#define AUTOTB_TVOUT_v4_0_1_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_0_1_0.dat"
#define AUTOTB_TVIN_v4_0_1_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_0_1_1.dat"
#define AUTOTB_TVOUT_v4_0_1_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_0_1_1.dat"
#define AUTOTB_TVIN_v4_0_1_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_0_1_2.dat"
#define AUTOTB_TVOUT_v4_0_1_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_0_1_2.dat"
#define AUTOTB_TVIN_v4_0_2_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_0_2_0.dat"
#define AUTOTB_TVOUT_v4_0_2_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_0_2_0.dat"
#define AUTOTB_TVIN_v4_0_2_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_0_2_1.dat"
#define AUTOTB_TVOUT_v4_0_2_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_0_2_1.dat"
#define AUTOTB_TVIN_v4_0_2_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_0_2_2.dat"
#define AUTOTB_TVOUT_v4_0_2_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_0_2_2.dat"
#define AUTOTB_TVIN_v4_1_0_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_1_0_0.dat"
#define AUTOTB_TVOUT_v4_1_0_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_1_0_0.dat"
#define AUTOTB_TVIN_v4_1_0_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_1_0_1.dat"
#define AUTOTB_TVOUT_v4_1_0_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_1_0_1.dat"
#define AUTOTB_TVIN_v4_1_0_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_1_0_2.dat"
#define AUTOTB_TVOUT_v4_1_0_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_1_0_2.dat"
#define AUTOTB_TVIN_v4_1_1_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_1_1_0.dat"
#define AUTOTB_TVOUT_v4_1_1_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_1_1_0.dat"
#define AUTOTB_TVIN_v4_1_1_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_1_1_1.dat"
#define AUTOTB_TVOUT_v4_1_1_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_1_1_1.dat"
#define AUTOTB_TVIN_v4_1_1_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_1_1_2.dat"
#define AUTOTB_TVOUT_v4_1_1_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_1_1_2.dat"
#define AUTOTB_TVIN_v4_1_2_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_1_2_0.dat"
#define AUTOTB_TVOUT_v4_1_2_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_1_2_0.dat"
#define AUTOTB_TVIN_v4_1_2_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_1_2_1.dat"
#define AUTOTB_TVOUT_v4_1_2_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_1_2_1.dat"
#define AUTOTB_TVIN_v4_1_2_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_1_2_2.dat"
#define AUTOTB_TVOUT_v4_1_2_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_1_2_2.dat"
#define AUTOTB_TVIN_v4_2_0_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_2_0_0.dat"
#define AUTOTB_TVOUT_v4_2_0_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_2_0_0.dat"
#define AUTOTB_TVIN_v4_2_0_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_2_0_1.dat"
#define AUTOTB_TVOUT_v4_2_0_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_2_0_1.dat"
#define AUTOTB_TVIN_v4_2_0_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_2_0_2.dat"
#define AUTOTB_TVOUT_v4_2_0_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_2_0_2.dat"
#define AUTOTB_TVIN_v4_2_1_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_2_1_0.dat"
#define AUTOTB_TVOUT_v4_2_1_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_2_1_0.dat"
#define AUTOTB_TVIN_v4_2_1_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_2_1_1.dat"
#define AUTOTB_TVOUT_v4_2_1_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_2_1_1.dat"
#define AUTOTB_TVIN_v4_2_1_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_2_1_2.dat"
#define AUTOTB_TVOUT_v4_2_1_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_2_1_2.dat"
#define AUTOTB_TVIN_v4_2_2_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_2_2_0.dat"
#define AUTOTB_TVOUT_v4_2_2_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_2_2_0.dat"
#define AUTOTB_TVIN_v4_2_2_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_2_2_1.dat"
#define AUTOTB_TVOUT_v4_2_2_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_2_2_1.dat"
#define AUTOTB_TVIN_v4_2_2_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v4_2_2_2.dat"
#define AUTOTB_TVOUT_v4_2_2_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v4_2_2_2.dat"
#define AUTOTB_TVIN_v5_0_0_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_0_0_0.dat"
#define AUTOTB_TVOUT_v5_0_0_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_0_0_0.dat"
#define AUTOTB_TVIN_v5_0_0_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_0_0_1.dat"
#define AUTOTB_TVOUT_v5_0_0_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_0_0_1.dat"
#define AUTOTB_TVIN_v5_0_0_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_0_0_2.dat"
#define AUTOTB_TVOUT_v5_0_0_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_0_0_2.dat"
#define AUTOTB_TVIN_v5_0_1_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_0_1_0.dat"
#define AUTOTB_TVOUT_v5_0_1_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_0_1_0.dat"
#define AUTOTB_TVIN_v5_0_1_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_0_1_1.dat"
#define AUTOTB_TVOUT_v5_0_1_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_0_1_1.dat"
#define AUTOTB_TVIN_v5_0_1_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_0_1_2.dat"
#define AUTOTB_TVOUT_v5_0_1_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_0_1_2.dat"
#define AUTOTB_TVIN_v5_0_2_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_0_2_0.dat"
#define AUTOTB_TVOUT_v5_0_2_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_0_2_0.dat"
#define AUTOTB_TVIN_v5_0_2_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_0_2_1.dat"
#define AUTOTB_TVOUT_v5_0_2_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_0_2_1.dat"
#define AUTOTB_TVIN_v5_0_2_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_0_2_2.dat"
#define AUTOTB_TVOUT_v5_0_2_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_0_2_2.dat"
#define AUTOTB_TVIN_v5_1_0_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_1_0_0.dat"
#define AUTOTB_TVOUT_v5_1_0_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_1_0_0.dat"
#define AUTOTB_TVIN_v5_1_0_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_1_0_1.dat"
#define AUTOTB_TVOUT_v5_1_0_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_1_0_1.dat"
#define AUTOTB_TVIN_v5_1_0_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_1_0_2.dat"
#define AUTOTB_TVOUT_v5_1_0_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_1_0_2.dat"
#define AUTOTB_TVIN_v5_1_1_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_1_1_0.dat"
#define AUTOTB_TVOUT_v5_1_1_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_1_1_0.dat"
#define AUTOTB_TVIN_v5_1_1_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_1_1_1.dat"
#define AUTOTB_TVOUT_v5_1_1_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_1_1_1.dat"
#define AUTOTB_TVIN_v5_1_1_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_1_1_2.dat"
#define AUTOTB_TVOUT_v5_1_1_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_1_1_2.dat"
#define AUTOTB_TVIN_v5_1_2_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_1_2_0.dat"
#define AUTOTB_TVOUT_v5_1_2_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_1_2_0.dat"
#define AUTOTB_TVIN_v5_1_2_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_1_2_1.dat"
#define AUTOTB_TVOUT_v5_1_2_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_1_2_1.dat"
#define AUTOTB_TVIN_v5_1_2_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_1_2_2.dat"
#define AUTOTB_TVOUT_v5_1_2_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_1_2_2.dat"
#define AUTOTB_TVIN_v5_2_0_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_2_0_0.dat"
#define AUTOTB_TVOUT_v5_2_0_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_2_0_0.dat"
#define AUTOTB_TVIN_v5_2_0_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_2_0_1.dat"
#define AUTOTB_TVOUT_v5_2_0_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_2_0_1.dat"
#define AUTOTB_TVIN_v5_2_0_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_2_0_2.dat"
#define AUTOTB_TVOUT_v5_2_0_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_2_0_2.dat"
#define AUTOTB_TVIN_v5_2_1_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_2_1_0.dat"
#define AUTOTB_TVOUT_v5_2_1_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_2_1_0.dat"
#define AUTOTB_TVIN_v5_2_1_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_2_1_1.dat"
#define AUTOTB_TVOUT_v5_2_1_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_2_1_1.dat"
#define AUTOTB_TVIN_v5_2_1_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_2_1_2.dat"
#define AUTOTB_TVOUT_v5_2_1_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_2_1_2.dat"
#define AUTOTB_TVIN_v5_2_2_0 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_2_2_0.dat"
#define AUTOTB_TVOUT_v5_2_2_0 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_2_2_0.dat"
#define AUTOTB_TVIN_v5_2_2_1 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_2_2_1.dat"
#define AUTOTB_TVOUT_v5_2_2_1 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_2_2_1.dat"
#define AUTOTB_TVIN_v5_2_2_2 "../tv/cdatafile/c.test_gaussian_4096.autotvin_v5_2_2_2.dat"
#define AUTOTB_TVOUT_v5_2_2_2 "../tv/cdatafile/c.test_gaussian_4096.autotvout_v5_2_2_2.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_v1_0_0_0 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_0_0_0.dat"
#define AUTOTB_TVOUT_PC_v1_0_0_1 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_0_0_1.dat"
#define AUTOTB_TVOUT_PC_v1_0_0_2 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_0_0_2.dat"
#define AUTOTB_TVOUT_PC_v1_0_1_0 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_0_1_0.dat"
#define AUTOTB_TVOUT_PC_v1_0_1_1 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_0_1_1.dat"
#define AUTOTB_TVOUT_PC_v1_0_1_2 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_0_1_2.dat"
#define AUTOTB_TVOUT_PC_v1_0_2_0 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_0_2_0.dat"
#define AUTOTB_TVOUT_PC_v1_0_2_1 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_0_2_1.dat"
#define AUTOTB_TVOUT_PC_v1_0_2_2 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_0_2_2.dat"
#define AUTOTB_TVOUT_PC_v1_1_0_0 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_1_0_0.dat"
#define AUTOTB_TVOUT_PC_v1_1_0_1 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_1_0_1.dat"
#define AUTOTB_TVOUT_PC_v1_1_0_2 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_1_0_2.dat"
#define AUTOTB_TVOUT_PC_v1_1_1_0 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_1_1_0.dat"
#define AUTOTB_TVOUT_PC_v1_1_1_1 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_1_1_1.dat"
#define AUTOTB_TVOUT_PC_v1_1_1_2 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_1_1_2.dat"
#define AUTOTB_TVOUT_PC_v1_1_2_0 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_1_2_0.dat"
#define AUTOTB_TVOUT_PC_v1_1_2_1 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_1_2_1.dat"
#define AUTOTB_TVOUT_PC_v1_1_2_2 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_1_2_2.dat"
#define AUTOTB_TVOUT_PC_v1_2_0_0 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_2_0_0.dat"
#define AUTOTB_TVOUT_PC_v1_2_0_1 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_2_0_1.dat"
#define AUTOTB_TVOUT_PC_v1_2_0_2 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_2_0_2.dat"
#define AUTOTB_TVOUT_PC_v1_2_1_0 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_2_1_0.dat"
#define AUTOTB_TVOUT_PC_v1_2_1_1 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_2_1_1.dat"
#define AUTOTB_TVOUT_PC_v1_2_1_2 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_2_1_2.dat"
#define AUTOTB_TVOUT_PC_v1_2_2_0 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_2_2_0.dat"
#define AUTOTB_TVOUT_PC_v1_2_2_1 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_2_2_1.dat"
#define AUTOTB_TVOUT_PC_v1_2_2_2 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v1_2_2_2.dat"
#define AUTOTB_TVOUT_PC_v5_0_0_0 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_0_0_0.dat"
#define AUTOTB_TVOUT_PC_v5_0_0_1 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_0_0_1.dat"
#define AUTOTB_TVOUT_PC_v5_0_0_2 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_0_0_2.dat"
#define AUTOTB_TVOUT_PC_v5_0_1_0 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_0_1_0.dat"
#define AUTOTB_TVOUT_PC_v5_0_1_1 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_0_1_1.dat"
#define AUTOTB_TVOUT_PC_v5_0_1_2 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_0_1_2.dat"
#define AUTOTB_TVOUT_PC_v5_0_2_0 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_0_2_0.dat"
#define AUTOTB_TVOUT_PC_v5_0_2_1 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_0_2_1.dat"
#define AUTOTB_TVOUT_PC_v5_0_2_2 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_0_2_2.dat"
#define AUTOTB_TVOUT_PC_v5_1_0_0 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_1_0_0.dat"
#define AUTOTB_TVOUT_PC_v5_1_0_1 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_1_0_1.dat"
#define AUTOTB_TVOUT_PC_v5_1_0_2 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_1_0_2.dat"
#define AUTOTB_TVOUT_PC_v5_1_1_0 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_1_1_0.dat"
#define AUTOTB_TVOUT_PC_v5_1_1_1 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_1_1_1.dat"
#define AUTOTB_TVOUT_PC_v5_1_1_2 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_1_1_2.dat"
#define AUTOTB_TVOUT_PC_v5_1_2_0 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_1_2_0.dat"
#define AUTOTB_TVOUT_PC_v5_1_2_1 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_1_2_1.dat"
#define AUTOTB_TVOUT_PC_v5_1_2_2 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_1_2_2.dat"
#define AUTOTB_TVOUT_PC_v5_2_0_0 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_2_0_0.dat"
#define AUTOTB_TVOUT_PC_v5_2_0_1 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_2_0_1.dat"
#define AUTOTB_TVOUT_PC_v5_2_0_2 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_2_0_2.dat"
#define AUTOTB_TVOUT_PC_v5_2_1_0 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_2_1_0.dat"
#define AUTOTB_TVOUT_PC_v5_2_1_1 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_2_1_1.dat"
#define AUTOTB_TVOUT_PC_v5_2_1_2 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_2_1_2.dat"
#define AUTOTB_TVOUT_PC_v5_2_2_0 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_2_2_0.dat"
#define AUTOTB_TVOUT_PC_v5_2_2_1 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_2_2_1.dat"
#define AUTOTB_TVOUT_PC_v5_2_2_2 "../tv/rtldatafile/rtl.test_gaussian_4096.autotvout_v5_2_2_2.dat"


namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const char *msg;
    const size_t line;
    SimException(const char *msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const char *msg)
  {
    std::string s;
    s += "at line ";
    s += std::to_string(line);
    s += " occurred problem: ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}

namespace hls::sim
{
  const bool little_endian()
  {
    int a = 1;
    return *(char*)&a == 1;
  }

  inline void rev_endian(unsigned char *p, size_t nbytes)
  {
    std::reverse(p, p+nbytes);
  }

  const bool LE = little_endian();

  inline size_t least_nbyte(size_t width)
  {
    return (width+7)>>3;
  }

  std::string formatData(unsigned char *pos, size_t wbits)
  {
    size_t wbytes = least_nbyte(wbits);
    size_t i = LE ? wbytes-1 : 0;
    auto next = [&] () {
      auto c = pos[i];
      LE ? --i : ++i;
      return c;
    };
    std::ostringstream ss;
    ss << "0x";
    if (int t = (wbits & 0x7)) {
      if (t <= 4) {
        unsigned char mask = (1<<t)-1;
        ss << std::hex << std::setfill('0') << std::setw(1)
           << (int) (next() & mask);
        wbytes -= 1;
      }
    }
    for (size_t i = 0; i < wbytes; ++i) {
      ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
    }
    return ss.str();
  }

  char ord(char c)
  {
    if (c >= 'a' && c <= 'f') {
      return c-'a'+10;
    } else if (c >= 'A' && c <= 'F') {
      return c-'A'+10;
    } else if (c >= '0' && c <= '9') {
      return c-'0';
    } else {
      throw SimException("Not Hexdecimal Digit", __LINE__);
    }
  }

  void unformatData(const char *data, unsigned char *put)
  {
    size_t wbytes = (strlen(data)-2+1)>>1;
    put = LE ? put : put+wbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + strlen(data) - 1;
    auto next = [&] () {
      char res = ord(*c);
      --c;
      return res;
    };
    size_t fbytes = (strlen(data)-2)>>1;
    for (size_t i = 0; i < fbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
    }
    if (wbytes > fbytes) {
      *nextp() = next();
    }
  }

  char* strip(char *s)
  {
    while (isspace(*s)) {
      ++s;
    }
    for (char *p = s+strlen(s)-1; p >= s; --p) {
      if (isspace(*p)) {
        *p = 0;
      } else {
        return s;
      }
    }
    return s;
  }

  size_t sum(const std::vector<size_t> &v)
  {
    size_t res = 0;
    for (const auto &e : v) {
      res += e;
    }
    return res;
  }

  const char* bad = "Bad TV file";
  const char* err = "Error on TV file";

  const unsigned char bmark[] = {
    0x5a, 0x5a, 0xa5, 0xa5, 0x0f, 0x0f, 0xf0, 0xf0
  };

#ifdef USE_BINARY_TV_FILE
  class Input {
    FILE *fp;
    long pos;

    void read(unsigned char *buf, size_t size)
    {
      if (fread(buf, size, 1, fp) != 1) {
        throw SimException(bad, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    void advance(size_t nbytes)
    {
      if (fseek(fp, nbytes, SEEK_CUR) == -1) {
        throw SimException(bad, __LINE__);
      }
    }

    Input(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "rb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin()
    {
      advance(8);
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t psize, size_t depth)
    {
      for (size_t i = 0; i < depth; ++i) {
        read(param, wbytes);
        param += psize;
      }
    }

    ~Input()
    {
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      if (std::memcmp(buf, bmark, 8) != 0) {
        errExit(__LINE__, bad);
      }
    }
  };

  class Output {
    FILE *fp;

    void write(unsigned char *buf, size_t size)
    {
      if (LE) {
        rev_endian(buf, size);
      }
      if (fwrite(buf, size, 1, fp) != 1) {
        throw SimException(err, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    Output(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "wb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin(size_t total)
    {
      unsigned char buf[8] = {0};
      std::memcpy(buf, &total, sizeof(buf));
      write(buf, sizeof(buf));
    }

    void from(unsigned char *param, size_t wbytes, size_t psize, size_t depth, size_t skip)
    {
      param -= psize*skip;
      for (size_t i = 0; i < depth; ++i) {
        write(param, wbytes);
        param += psize;
      }
    }

    ~Output()
    {
      size_t res = fwrite(bmark, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }
  };
#endif

  class Reader {
    FILE *fp;
    long pos;
    int size;
    char *s;

    void readline()
    {
      s = fgets(s, size, fp);
      if (s == nullptr) {
        throw SimException(bad, __LINE__);
      }
    }

  public:
    Reader(const char *path) : fp(nullptr), size(1<<12), s(new char[size])
    {
      try {
        fp = fopen(path, "r");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          readline();
          static const char mark[] = "[[[runtime]]]\n";
          if (strcmp(s, mark) != 0) {
            throw SimException(bad, __LINE__);
          }
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    ~Reader()
    {
      fclose(fp);
      delete[] s;
    }

    void begin()
    {
      readline();
      static const char mark[] = "[[transaction]]";
      if (strncmp(s, mark, strlen(mark)) != 0) {
        throw SimException(bad, __LINE__);
      }
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void skip(size_t n)
    {
      for (size_t i = 0; i < n; ++i) {
        readline();
      }
    }

    char* next()
    {
      long pos = ftell(fp);
      readline();
      if (*s == '[') {
        fseek(fp, pos, SEEK_SET);
        return nullptr;
      }
      return strip(s);
    }

    void end()
    {
      do {
        readline();
      } while (strcmp(s, "[[/transaction]]\n") != 0);
    }
  };

  class Writer {
    FILE *fp;

    void write(const char *s)
    {
      if (fputs(s, fp) == EOF) {
        throw SimException(err, __LINE__);
      }
    }

  public:
    Writer(const char *path) : fp(nullptr)
    {
      try {
        fp = fopen(path, "w");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          static const char mark[] = "[[[runtime]]]\n";
          write(mark);
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    virtual ~Writer()
    {
      try {
        static const char mark[] = "[[[/runtime]]]\n";
        write(mark);
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
      fclose(fp);
    }

    void begin(size_t AESL_transaction)
    {
      static const char mark[] = "[[transaction]]           ";
      write(mark);
      auto buf = std::to_string(AESL_transaction);
      buf.push_back('\n');
      buf.push_back('\0');
      write(buf.data());
    }

    void next(const char *s)
    {
      write(s);
      write("\n");
    }

    void end()
    {
      static const char mark[] = "[[/transaction]]\n";
      write(mark);
    }
  };

  bool RTLOutputCheckAndReplacement(char *data)
  {
    bool changed = false;
    for (size_t i = 2; i < strlen(data); ++i) {
      if (data[i] == 'X' || data[i] == 'x') {
        data[i] = '0';
        changed = true;
      }
    }
    return changed;
  }

  void warnOnX()
  {
    static const char msg[] =
      "WARNING: [SIM 212-201] RTL produces unknown value "
      "'x' or 'X' on some port, possible cause: "
      "There are uninitialized variables in the design.\n";
    fprintf(stderr, msg);
  }

#ifndef POST_CHECK
  class RefTCL {
    FILE *fp;
    std::ostringstream ss;

    void formatDepth()
    {
      ss << "set depth_list {\n";
      for (auto &p : depth) {
        ss << "  {" << p.first << " " << p.second << "}\n";
      }
      if (nameHBM != "") {
        ss << "  {" << nameHBM << " " << depthHBM << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }

    void close()
    {
      formatDepth();
      formatTransNum();
      if (nameHBM != "") {
        formatHBM();
      }
      std::string &&s { ss.str() };
      size_t res = fwrite(s.data(), s.size(), 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }

  public:
    std::map<const std::string, size_t> depth;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    ~RefTCL()
    {
      close();
    }
  };

#endif

  struct Register {
    const char* name;
    unsigned width;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (strcmp(name, "return") == 0) {
        tcl.set("ap_return", 1);
      } else {
        tcl.set(name, 1);
      }
    }
#endif
    ~Register()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename Reader, typename Writer>
  struct Memory {
    unsigned width;
    unsigned asize;
    bool hbm;
    std::vector<const char*> name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    std::vector<void*> param;
    std::vector<size_t> depth;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        tcl.depthHBM = depth[0];
      } else {
        tcl.set(name[0], sum(depth));
      }
    }
#endif

    ~Memory()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  struct FIFO {
    unsigned width;
    unsigned asize;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;
    size_t depth;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~FIFO()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct Stream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  void check(Register &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)port.param);
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

#ifdef USE_BINARY_TV_FILE
  void checkHBM(Memory<Input, Output> &port)
  {
    port.reader->begin();
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        port.reader->reset();
        size_t skip = port.offset[i];
        size_t depth = port.depth[i] - skip;
        port.reader->advance(wbytes*skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                          port.asize, depth);
      }
    }
  }

  void check(Memory<Input, Output> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          port.reader->into((unsigned char*)port.param[i], wbytes,
                            port.asize, port.depth[i]);
        } else {
          port.reader->advance(wbytes*port.depth[i]);
        }
      }
    }
  }
#endif
  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        for (size_t j = 0; j < port.depth[i]-port.offset[i]; ++j) {
          if (char *s = port.reader->next()) {
            foundX |= RTLOutputCheckAndReplacement(s);
            unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
          }
        }
        if (i < last) {
          port.reader->reset();
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  void check(Memory<Reader, Writer> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      bool foundX = false;
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          for (size_t j = 0; j < port.depth[i]; ++j) {
            if (char *s = port.reader->next()) {
              foundX |= RTLOutputCheckAndReplacement(s);
              unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
            }
          }
        } else {
          port.reader->skip(port.depth[i]);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(FIFO &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      for (size_t j = 0; j < port.depth; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, (unsigned char*)port.param+j*port.asize);
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(Stream<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }
#else
  void dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    std::string &&s { formatData((unsigned char*)port.param, port.width) };
    writer->next(s.data());
    writer->end();
  }

#ifdef USE_BINARY_TV_FILE
  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    writer->begin(sum(port.depth));
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                   port.depth[i], 0);
    }
  }

#endif
  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      for (size_t j = 0; j < port.depth[i]; ++j) {
        std::string &&s {
          formatData((unsigned char*)port.param[i]+j*port.asize, port.width)
        };
        writer->next(s.data());
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(FIFO &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t j = 0; j < port.depth; ++j) {
      std::string &&s {
        formatData((unsigned char*)port.param+j*port.asize, port.width)
      };
      writer->next(s.data());
    }
    writer->end();
  }


  template<typename E>
  void dump(Stream<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }
#endif
}



extern "C"
void test_gaussian_4096_hw_stub_wrapper(float, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*);

extern "C"
void apatb_test_gaussian_4096_hw(float __xlx_apatb_param_v0, void* __xlx_apatb_param_v1_0_0_0, void* __xlx_apatb_param_v1_0_0_1, void* __xlx_apatb_param_v1_0_0_2, void* __xlx_apatb_param_v1_0_1_0, void* __xlx_apatb_param_v1_0_1_1, void* __xlx_apatb_param_v1_0_1_2, void* __xlx_apatb_param_v1_0_2_0, void* __xlx_apatb_param_v1_0_2_1, void* __xlx_apatb_param_v1_0_2_2, void* __xlx_apatb_param_v1_1_0_0, void* __xlx_apatb_param_v1_1_0_1, void* __xlx_apatb_param_v1_1_0_2, void* __xlx_apatb_param_v1_1_1_0, void* __xlx_apatb_param_v1_1_1_1, void* __xlx_apatb_param_v1_1_1_2, void* __xlx_apatb_param_v1_1_2_0, void* __xlx_apatb_param_v1_1_2_1, void* __xlx_apatb_param_v1_1_2_2, void* __xlx_apatb_param_v1_2_0_0, void* __xlx_apatb_param_v1_2_0_1, void* __xlx_apatb_param_v1_2_0_2, void* __xlx_apatb_param_v1_2_1_0, void* __xlx_apatb_param_v1_2_1_1, void* __xlx_apatb_param_v1_2_1_2, void* __xlx_apatb_param_v1_2_2_0, void* __xlx_apatb_param_v1_2_2_1, void* __xlx_apatb_param_v1_2_2_2, void* __xlx_apatb_param_v2, void* __xlx_apatb_param_v3, void* __xlx_apatb_param_v4_0_0_0, void* __xlx_apatb_param_v4_0_0_1, void* __xlx_apatb_param_v4_0_0_2, void* __xlx_apatb_param_v4_0_1_0, void* __xlx_apatb_param_v4_0_1_1, void* __xlx_apatb_param_v4_0_1_2, void* __xlx_apatb_param_v4_0_2_0, void* __xlx_apatb_param_v4_0_2_1, void* __xlx_apatb_param_v4_0_2_2, void* __xlx_apatb_param_v4_1_0_0, void* __xlx_apatb_param_v4_1_0_1, void* __xlx_apatb_param_v4_1_0_2, void* __xlx_apatb_param_v4_1_1_0, void* __xlx_apatb_param_v4_1_1_1, void* __xlx_apatb_param_v4_1_1_2, void* __xlx_apatb_param_v4_1_2_0, void* __xlx_apatb_param_v4_1_2_1, void* __xlx_apatb_param_v4_1_2_2, void* __xlx_apatb_param_v4_2_0_0, void* __xlx_apatb_param_v4_2_0_1, void* __xlx_apatb_param_v4_2_0_2, void* __xlx_apatb_param_v4_2_1_0, void* __xlx_apatb_param_v4_2_1_1, void* __xlx_apatb_param_v4_2_1_2, void* __xlx_apatb_param_v4_2_2_0, void* __xlx_apatb_param_v4_2_2_1, void* __xlx_apatb_param_v4_2_2_2, void* __xlx_apatb_param_v5_0_0_0, void* __xlx_apatb_param_v5_0_0_1, void* __xlx_apatb_param_v5_0_0_2, void* __xlx_apatb_param_v5_0_1_0, void* __xlx_apatb_param_v5_0_1_1, void* __xlx_apatb_param_v5_0_1_2, void* __xlx_apatb_param_v5_0_2_0, void* __xlx_apatb_param_v5_0_2_1, void* __xlx_apatb_param_v5_0_2_2, void* __xlx_apatb_param_v5_1_0_0, void* __xlx_apatb_param_v5_1_0_1, void* __xlx_apatb_param_v5_1_0_2, void* __xlx_apatb_param_v5_1_1_0, void* __xlx_apatb_param_v5_1_1_1, void* __xlx_apatb_param_v5_1_1_2, void* __xlx_apatb_param_v5_1_2_0, void* __xlx_apatb_param_v5_1_2_1, void* __xlx_apatb_param_v5_1_2_2, void* __xlx_apatb_param_v5_2_0_0, void* __xlx_apatb_param_v5_2_0_1, void* __xlx_apatb_param_v5_2_0_2, void* __xlx_apatb_param_v5_2_1_0, void* __xlx_apatb_param_v5_2_1_1, void* __xlx_apatb_param_v5_2_1_2, void* __xlx_apatb_param_v5_2_2_0, void* __xlx_apatb_param_v5_2_2_1, void* __xlx_apatb_param_v5_2_2_2)
{
  static hls::sim::Register port0 {
    .name = "v0",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v0),
#endif
  };
  port0.param = &__xlx_apatb_param_v0;

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port1 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port1 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_0_0_0" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_0_0_0),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_0_0_0),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_0_0_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_0_0_0),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_0_0_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_0_0_0),
#endif
#endif
  };
  port1.param = { __xlx_apatb_param_v1_0_0_0 };
  port1.depth = { 1865956 };
  port1.offset = {  };
  port1.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port2 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port2 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_0_0_1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_0_0_1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_0_0_1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_0_0_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_0_0_1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_0_0_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_0_0_1),
#endif
#endif
  };
  port2.param = { __xlx_apatb_param_v1_0_0_1 };
  port2.depth = { 1865956 };
  port2.offset = {  };
  port2.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port3 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port3 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_0_0_2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_0_0_2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_0_0_2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_0_0_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_0_0_2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_0_0_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_0_0_2),
#endif
#endif
  };
  port3.param = { __xlx_apatb_param_v1_0_0_2 };
  port3.depth = { 1865956 };
  port3.offset = {  };
  port3.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port4 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port4 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_0_1_0" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_0_1_0),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_0_1_0),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_0_1_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_0_1_0),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_0_1_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_0_1_0),
#endif
#endif
  };
  port4.param = { __xlx_apatb_param_v1_0_1_0 };
  port4.depth = { 1865956 };
  port4.offset = {  };
  port4.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port5 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port5 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_0_1_1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_0_1_1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_0_1_1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_0_1_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_0_1_1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_0_1_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_0_1_1),
#endif
#endif
  };
  port5.param = { __xlx_apatb_param_v1_0_1_1 };
  port5.depth = { 1865956 };
  port5.offset = {  };
  port5.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port6 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port6 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_0_1_2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_0_1_2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_0_1_2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_0_1_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_0_1_2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_0_1_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_0_1_2),
#endif
#endif
  };
  port6.param = { __xlx_apatb_param_v1_0_1_2 };
  port6.depth = { 1865956 };
  port6.offset = {  };
  port6.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port7 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port7 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_0_2_0" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_0_2_0),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_0_2_0),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_0_2_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_0_2_0),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_0_2_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_0_2_0),
#endif
#endif
  };
  port7.param = { __xlx_apatb_param_v1_0_2_0 };
  port7.depth = { 1865956 };
  port7.offset = {  };
  port7.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port8 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port8 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_0_2_1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_0_2_1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_0_2_1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_0_2_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_0_2_1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_0_2_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_0_2_1),
#endif
#endif
  };
  port8.param = { __xlx_apatb_param_v1_0_2_1 };
  port8.depth = { 1865956 };
  port8.offset = {  };
  port8.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port9 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port9 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_0_2_2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_0_2_2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_0_2_2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_0_2_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_0_2_2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_0_2_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_0_2_2),
#endif
#endif
  };
  port9.param = { __xlx_apatb_param_v1_0_2_2 };
  port9.depth = { 1865956 };
  port9.offset = {  };
  port9.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port10 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port10 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_1_0_0" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_1_0_0),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_1_0_0),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_1_0_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_1_0_0),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_1_0_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_1_0_0),
#endif
#endif
  };
  port10.param = { __xlx_apatb_param_v1_1_0_0 };
  port10.depth = { 1865956 };
  port10.offset = {  };
  port10.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port11 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port11 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_1_0_1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_1_0_1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_1_0_1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_1_0_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_1_0_1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_1_0_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_1_0_1),
#endif
#endif
  };
  port11.param = { __xlx_apatb_param_v1_1_0_1 };
  port11.depth = { 1865956 };
  port11.offset = {  };
  port11.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port12 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port12 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_1_0_2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_1_0_2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_1_0_2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_1_0_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_1_0_2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_1_0_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_1_0_2),
#endif
#endif
  };
  port12.param = { __xlx_apatb_param_v1_1_0_2 };
  port12.depth = { 1865956 };
  port12.offset = {  };
  port12.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port13 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port13 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_1_1_0" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_1_1_0),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_1_1_0),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_1_1_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_1_1_0),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_1_1_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_1_1_0),
#endif
#endif
  };
  port13.param = { __xlx_apatb_param_v1_1_1_0 };
  port13.depth = { 1865956 };
  port13.offset = {  };
  port13.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port14 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port14 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_1_1_1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_1_1_1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_1_1_1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_1_1_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_1_1_1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_1_1_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_1_1_1),
#endif
#endif
  };
  port14.param = { __xlx_apatb_param_v1_1_1_1 };
  port14.depth = { 1865956 };
  port14.offset = {  };
  port14.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port15 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port15 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_1_1_2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_1_1_2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_1_1_2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_1_1_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_1_1_2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_1_1_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_1_1_2),
#endif
#endif
  };
  port15.param = { __xlx_apatb_param_v1_1_1_2 };
  port15.depth = { 1865956 };
  port15.offset = {  };
  port15.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port16 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port16 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_1_2_0" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_1_2_0),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_1_2_0),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_1_2_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_1_2_0),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_1_2_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_1_2_0),
#endif
#endif
  };
  port16.param = { __xlx_apatb_param_v1_1_2_0 };
  port16.depth = { 1865956 };
  port16.offset = {  };
  port16.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port17 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port17 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_1_2_1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_1_2_1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_1_2_1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_1_2_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_1_2_1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_1_2_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_1_2_1),
#endif
#endif
  };
  port17.param = { __xlx_apatb_param_v1_1_2_1 };
  port17.depth = { 1865956 };
  port17.offset = {  };
  port17.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port18 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port18 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_1_2_2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_1_2_2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_1_2_2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_1_2_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_1_2_2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_1_2_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_1_2_2),
#endif
#endif
  };
  port18.param = { __xlx_apatb_param_v1_1_2_2 };
  port18.depth = { 1865956 };
  port18.offset = {  };
  port18.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port19 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port19 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_2_0_0" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_2_0_0),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_2_0_0),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_2_0_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_2_0_0),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_2_0_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_2_0_0),
#endif
#endif
  };
  port19.param = { __xlx_apatb_param_v1_2_0_0 };
  port19.depth = { 1865956 };
  port19.offset = {  };
  port19.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port20 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port20 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_2_0_1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_2_0_1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_2_0_1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_2_0_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_2_0_1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_2_0_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_2_0_1),
#endif
#endif
  };
  port20.param = { __xlx_apatb_param_v1_2_0_1 };
  port20.depth = { 1865956 };
  port20.offset = {  };
  port20.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port21 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port21 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_2_0_2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_2_0_2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_2_0_2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_2_0_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_2_0_2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_2_0_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_2_0_2),
#endif
#endif
  };
  port21.param = { __xlx_apatb_param_v1_2_0_2 };
  port21.depth = { 1865956 };
  port21.offset = {  };
  port21.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port22 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port22 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_2_1_0" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_2_1_0),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_2_1_0),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_2_1_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_2_1_0),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_2_1_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_2_1_0),
#endif
#endif
  };
  port22.param = { __xlx_apatb_param_v1_2_1_0 };
  port22.depth = { 1865956 };
  port22.offset = {  };
  port22.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port23 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port23 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_2_1_1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_2_1_1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_2_1_1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_2_1_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_2_1_1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_2_1_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_2_1_1),
#endif
#endif
  };
  port23.param = { __xlx_apatb_param_v1_2_1_1 };
  port23.depth = { 1865956 };
  port23.offset = {  };
  port23.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port24 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port24 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_2_1_2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_2_1_2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_2_1_2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_2_1_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_2_1_2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_2_1_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_2_1_2),
#endif
#endif
  };
  port24.param = { __xlx_apatb_param_v1_2_1_2 };
  port24.depth = { 1865956 };
  port24.offset = {  };
  port24.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port25 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port25 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_2_2_0" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_2_2_0),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_2_2_0),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_2_2_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_2_2_0),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_2_2_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_2_2_0),
#endif
#endif
  };
  port25.param = { __xlx_apatb_param_v1_2_2_0 };
  port25.depth = { 1865956 };
  port25.offset = {  };
  port25.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port26 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port26 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_2_2_1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_2_2_1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_2_2_1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_2_2_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_2_2_1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_2_2_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_2_2_1),
#endif
#endif
  };
  port26.param = { __xlx_apatb_param_v1_2_2_1 };
  port26.depth = { 1865956 };
  port26.offset = {  };
  port26.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port27 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port27 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v1_2_2_2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v1_2_2_2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v1_2_2_2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v1_2_2_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v1_2_2_2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v1_2_2_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1_2_2_2),
#endif
#endif
  };
  port27.param = { __xlx_apatb_param_v1_2_2_2 };
  port27.depth = { 1865956 };
  port27.offset = {  };
  port27.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port28 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port28 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v2),
#endif
#endif
  };
  port28.param = { __xlx_apatb_param_v2 };
  port28.depth = { 7 };
  port28.offset = {  };
  port28.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port29 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port29 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v3" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v3),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v3),
#endif
#endif
  };
  port29.param = { __xlx_apatb_param_v3 };
  port29.depth = { 7 };
  port29.offset = {  };
  port29.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port30 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port30 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_0_0_0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_0_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_0_0),
#endif
#endif
  };
  port30.param = { __xlx_apatb_param_v4_0_0_0 };
  port30.depth = { 1865956 };
  port30.offset = {  };
  port30.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port31 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port31 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_0_0_1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_0_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_0_1),
#endif
#endif
  };
  port31.param = { __xlx_apatb_param_v4_0_0_1 };
  port31.depth = { 1865956 };
  port31.offset = {  };
  port31.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port32 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port32 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_0_0_2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_0_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_0_2),
#endif
#endif
  };
  port32.param = { __xlx_apatb_param_v4_0_0_2 };
  port32.depth = { 1865956 };
  port32.offset = {  };
  port32.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port33 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port33 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_0_1_0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_1_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_1_0),
#endif
#endif
  };
  port33.param = { __xlx_apatb_param_v4_0_1_0 };
  port33.depth = { 1865956 };
  port33.offset = {  };
  port33.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port34 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port34 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_0_1_1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_1_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_1_1),
#endif
#endif
  };
  port34.param = { __xlx_apatb_param_v4_0_1_1 };
  port34.depth = { 1865956 };
  port34.offset = {  };
  port34.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port35 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port35 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_0_1_2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_1_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_1_2),
#endif
#endif
  };
  port35.param = { __xlx_apatb_param_v4_0_1_2 };
  port35.depth = { 1865956 };
  port35.offset = {  };
  port35.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port36 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port36 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_0_2_0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_2_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_2_0),
#endif
#endif
  };
  port36.param = { __xlx_apatb_param_v4_0_2_0 };
  port36.depth = { 1865956 };
  port36.offset = {  };
  port36.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port37 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port37 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_0_2_1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_2_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_2_1),
#endif
#endif
  };
  port37.param = { __xlx_apatb_param_v4_0_2_1 };
  port37.depth = { 1865956 };
  port37.offset = {  };
  port37.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port38 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port38 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_0_2_2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_2_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_2_2),
#endif
#endif
  };
  port38.param = { __xlx_apatb_param_v4_0_2_2 };
  port38.depth = { 1865956 };
  port38.offset = {  };
  port38.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port39 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port39 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_0_0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_0_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_0_0),
#endif
#endif
  };
  port39.param = { __xlx_apatb_param_v4_1_0_0 };
  port39.depth = { 1865956 };
  port39.offset = {  };
  port39.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port40 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port40 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_0_1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_0_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_0_1),
#endif
#endif
  };
  port40.param = { __xlx_apatb_param_v4_1_0_1 };
  port40.depth = { 1865956 };
  port40.offset = {  };
  port40.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port41 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port41 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_0_2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_0_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_0_2),
#endif
#endif
  };
  port41.param = { __xlx_apatb_param_v4_1_0_2 };
  port41.depth = { 1865956 };
  port41.offset = {  };
  port41.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port42 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port42 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_1_0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_1_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_1_0),
#endif
#endif
  };
  port42.param = { __xlx_apatb_param_v4_1_1_0 };
  port42.depth = { 1865956 };
  port42.offset = {  };
  port42.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port43 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port43 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_1_1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_1_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_1_1),
#endif
#endif
  };
  port43.param = { __xlx_apatb_param_v4_1_1_1 };
  port43.depth = { 1865956 };
  port43.offset = {  };
  port43.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port44 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port44 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_1_2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_1_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_1_2),
#endif
#endif
  };
  port44.param = { __xlx_apatb_param_v4_1_1_2 };
  port44.depth = { 1865956 };
  port44.offset = {  };
  port44.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port45 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port45 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_2_0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_2_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_2_0),
#endif
#endif
  };
  port45.param = { __xlx_apatb_param_v4_1_2_0 };
  port45.depth = { 1865956 };
  port45.offset = {  };
  port45.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port46 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port46 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_2_1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_2_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_2_1),
#endif
#endif
  };
  port46.param = { __xlx_apatb_param_v4_1_2_1 };
  port46.depth = { 1865956 };
  port46.offset = {  };
  port46.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port47 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port47 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_2_2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_2_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_2_2),
#endif
#endif
  };
  port47.param = { __xlx_apatb_param_v4_1_2_2 };
  port47.depth = { 1865956 };
  port47.offset = {  };
  port47.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port48 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port48 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_2_0_0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_2_0_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_2_0_0),
#endif
#endif
  };
  port48.param = { __xlx_apatb_param_v4_2_0_0 };
  port48.depth = { 1865956 };
  port48.offset = {  };
  port48.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port49 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port49 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_2_0_1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_2_0_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_2_0_1),
#endif
#endif
  };
  port49.param = { __xlx_apatb_param_v4_2_0_1 };
  port49.depth = { 1865956 };
  port49.offset = {  };
  port49.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port50 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port50 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_2_0_2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_2_0_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_2_0_2),
#endif
#endif
  };
  port50.param = { __xlx_apatb_param_v4_2_0_2 };
  port50.depth = { 1865956 };
  port50.offset = {  };
  port50.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port51 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port51 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_2_1_0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_2_1_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_2_1_0),
#endif
#endif
  };
  port51.param = { __xlx_apatb_param_v4_2_1_0 };
  port51.depth = { 1865956 };
  port51.offset = {  };
  port51.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port52 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port52 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_2_1_1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_2_1_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_2_1_1),
#endif
#endif
  };
  port52.param = { __xlx_apatb_param_v4_2_1_1 };
  port52.depth = { 1865956 };
  port52.offset = {  };
  port52.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port53 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port53 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_2_1_2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_2_1_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_2_1_2),
#endif
#endif
  };
  port53.param = { __xlx_apatb_param_v4_2_1_2 };
  port53.depth = { 1865956 };
  port53.offset = {  };
  port53.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port54 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port54 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_2_2_0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_2_2_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_2_2_0),
#endif
#endif
  };
  port54.param = { __xlx_apatb_param_v4_2_2_0 };
  port54.depth = { 1865956 };
  port54.offset = {  };
  port54.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port55 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port55 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_2_2_1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_2_2_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_2_2_1),
#endif
#endif
  };
  port55.param = { __xlx_apatb_param_v4_2_2_1 };
  port55.depth = { 1865956 };
  port55.offset = {  };
  port55.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port56 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port56 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_2_2_2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_2_2_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_2_2_2),
#endif
#endif
  };
  port56.param = { __xlx_apatb_param_v4_2_2_2 };
  port56.depth = { 1865956 };
  port56.offset = {  };
  port56.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port57 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port57 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_0_0_0" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_0_0_0),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_0_0_0),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_0_0_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_0_0_0),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_0_0_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_0_0_0),
#endif
#endif
  };
  port57.param = { __xlx_apatb_param_v5_0_0_0 };
  port57.depth = { 1865956 };
  port57.offset = {  };
  port57.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port58 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port58 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_0_0_1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_0_0_1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_0_0_1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_0_0_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_0_0_1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_0_0_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_0_0_1),
#endif
#endif
  };
  port58.param = { __xlx_apatb_param_v5_0_0_1 };
  port58.depth = { 1865956 };
  port58.offset = {  };
  port58.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port59 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port59 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_0_0_2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_0_0_2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_0_0_2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_0_0_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_0_0_2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_0_0_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_0_0_2),
#endif
#endif
  };
  port59.param = { __xlx_apatb_param_v5_0_0_2 };
  port59.depth = { 1865956 };
  port59.offset = {  };
  port59.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port60 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port60 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_0_1_0" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_0_1_0),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_0_1_0),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_0_1_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_0_1_0),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_0_1_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_0_1_0),
#endif
#endif
  };
  port60.param = { __xlx_apatb_param_v5_0_1_0 };
  port60.depth = { 1865956 };
  port60.offset = {  };
  port60.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port61 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port61 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_0_1_1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_0_1_1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_0_1_1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_0_1_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_0_1_1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_0_1_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_0_1_1),
#endif
#endif
  };
  port61.param = { __xlx_apatb_param_v5_0_1_1 };
  port61.depth = { 1865956 };
  port61.offset = {  };
  port61.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port62 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port62 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_0_1_2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_0_1_2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_0_1_2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_0_1_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_0_1_2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_0_1_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_0_1_2),
#endif
#endif
  };
  port62.param = { __xlx_apatb_param_v5_0_1_2 };
  port62.depth = { 1865956 };
  port62.offset = {  };
  port62.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port63 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port63 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_0_2_0" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_0_2_0),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_0_2_0),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_0_2_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_0_2_0),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_0_2_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_0_2_0),
#endif
#endif
  };
  port63.param = { __xlx_apatb_param_v5_0_2_0 };
  port63.depth = { 1865956 };
  port63.offset = {  };
  port63.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port64 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port64 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_0_2_1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_0_2_1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_0_2_1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_0_2_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_0_2_1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_0_2_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_0_2_1),
#endif
#endif
  };
  port64.param = { __xlx_apatb_param_v5_0_2_1 };
  port64.depth = { 1865956 };
  port64.offset = {  };
  port64.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port65 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port65 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_0_2_2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_0_2_2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_0_2_2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_0_2_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_0_2_2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_0_2_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_0_2_2),
#endif
#endif
  };
  port65.param = { __xlx_apatb_param_v5_0_2_2 };
  port65.depth = { 1865956 };
  port65.offset = {  };
  port65.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port66 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port66 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_1_0_0" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_1_0_0),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_1_0_0),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_1_0_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_1_0_0),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_1_0_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_1_0_0),
#endif
#endif
  };
  port66.param = { __xlx_apatb_param_v5_1_0_0 };
  port66.depth = { 1865956 };
  port66.offset = {  };
  port66.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port67 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port67 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_1_0_1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_1_0_1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_1_0_1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_1_0_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_1_0_1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_1_0_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_1_0_1),
#endif
#endif
  };
  port67.param = { __xlx_apatb_param_v5_1_0_1 };
  port67.depth = { 1865956 };
  port67.offset = {  };
  port67.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port68 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port68 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_1_0_2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_1_0_2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_1_0_2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_1_0_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_1_0_2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_1_0_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_1_0_2),
#endif
#endif
  };
  port68.param = { __xlx_apatb_param_v5_1_0_2 };
  port68.depth = { 1865956 };
  port68.offset = {  };
  port68.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port69 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port69 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_1_1_0" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_1_1_0),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_1_1_0),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_1_1_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_1_1_0),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_1_1_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_1_1_0),
#endif
#endif
  };
  port69.param = { __xlx_apatb_param_v5_1_1_0 };
  port69.depth = { 1865956 };
  port69.offset = {  };
  port69.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port70 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port70 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_1_1_1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_1_1_1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_1_1_1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_1_1_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_1_1_1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_1_1_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_1_1_1),
#endif
#endif
  };
  port70.param = { __xlx_apatb_param_v5_1_1_1 };
  port70.depth = { 1865956 };
  port70.offset = {  };
  port70.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port71 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port71 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_1_1_2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_1_1_2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_1_1_2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_1_1_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_1_1_2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_1_1_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_1_1_2),
#endif
#endif
  };
  port71.param = { __xlx_apatb_param_v5_1_1_2 };
  port71.depth = { 1865956 };
  port71.offset = {  };
  port71.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port72 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port72 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_1_2_0" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_1_2_0),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_1_2_0),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_1_2_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_1_2_0),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_1_2_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_1_2_0),
#endif
#endif
  };
  port72.param = { __xlx_apatb_param_v5_1_2_0 };
  port72.depth = { 1865956 };
  port72.offset = {  };
  port72.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port73 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port73 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_1_2_1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_1_2_1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_1_2_1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_1_2_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_1_2_1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_1_2_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_1_2_1),
#endif
#endif
  };
  port73.param = { __xlx_apatb_param_v5_1_2_1 };
  port73.depth = { 1865956 };
  port73.offset = {  };
  port73.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port74 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port74 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_1_2_2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_1_2_2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_1_2_2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_1_2_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_1_2_2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_1_2_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_1_2_2),
#endif
#endif
  };
  port74.param = { __xlx_apatb_param_v5_1_2_2 };
  port74.depth = { 1865956 };
  port74.offset = {  };
  port74.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port75 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port75 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_2_0_0" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_2_0_0),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_2_0_0),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_2_0_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_2_0_0),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_2_0_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_2_0_0),
#endif
#endif
  };
  port75.param = { __xlx_apatb_param_v5_2_0_0 };
  port75.depth = { 1865956 };
  port75.offset = {  };
  port75.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port76 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port76 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_2_0_1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_2_0_1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_2_0_1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_2_0_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_2_0_1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_2_0_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_2_0_1),
#endif
#endif
  };
  port76.param = { __xlx_apatb_param_v5_2_0_1 };
  port76.depth = { 1865956 };
  port76.offset = {  };
  port76.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port77 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port77 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_2_0_2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_2_0_2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_2_0_2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_2_0_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_2_0_2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_2_0_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_2_0_2),
#endif
#endif
  };
  port77.param = { __xlx_apatb_param_v5_2_0_2 };
  port77.depth = { 1865956 };
  port77.offset = {  };
  port77.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port78 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port78 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_2_1_0" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_2_1_0),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_2_1_0),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_2_1_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_2_1_0),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_2_1_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_2_1_0),
#endif
#endif
  };
  port78.param = { __xlx_apatb_param_v5_2_1_0 };
  port78.depth = { 1865956 };
  port78.offset = {  };
  port78.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port79 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port79 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_2_1_1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_2_1_1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_2_1_1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_2_1_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_2_1_1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_2_1_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_2_1_1),
#endif
#endif
  };
  port79.param = { __xlx_apatb_param_v5_2_1_1 };
  port79.depth = { 1865956 };
  port79.offset = {  };
  port79.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port80 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port80 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_2_1_2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_2_1_2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_2_1_2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_2_1_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_2_1_2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_2_1_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_2_1_2),
#endif
#endif
  };
  port80.param = { __xlx_apatb_param_v5_2_1_2 };
  port80.depth = { 1865956 };
  port80.offset = {  };
  port80.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port81 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port81 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_2_2_0" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_2_2_0),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_2_2_0),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_2_2_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_2_2_0),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_2_2_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_2_2_0),
#endif
#endif
  };
  port81.param = { __xlx_apatb_param_v5_2_2_0 };
  port81.depth = { 1865956 };
  port81.offset = {  };
  port81.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port82 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port82 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_2_2_1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_2_2_1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_2_2_1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_2_2_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_2_2_1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_2_2_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_2_2_1),
#endif
#endif
  };
  port82.param = { __xlx_apatb_param_v5_2_2_1 };
  port82.depth = { 1865956 };
  port82.offset = {  };
  port82.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port83 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port83 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v5_2_2_2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v5_2_2_2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v5_2_2_2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v5_2_2_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v5_2_2_2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v5_2_2_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v5_2_2_2),
#endif
#endif
  };
  port83.param = { __xlx_apatb_param_v5_2_2_2 };
  port83.depth = { 1865956 };
  port83.offset = {  };
  port83.hasWrite = { true };

  refine_signal_handler();
  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port1);
    check(port2);
    check(port3);
    check(port4);
    check(port5);
    check(port6);
    check(port7);
    check(port8);
    check(port9);
    check(port10);
    check(port11);
    check(port12);
    check(port13);
    check(port14);
    check(port15);
    check(port16);
    check(port17);
    check(port18);
    check(port19);
    check(port20);
    check(port21);
    check(port22);
    check(port23);
    check(port24);
    check(port25);
    check(port26);
    check(port27);
    check(port57);
    check(port58);
    check(port59);
    check(port60);
    check(port61);
    check(port62);
    check(port63);
    check(port64);
    check(port65);
    check(port66);
    check(port67);
    check(port68);
    check(port69);
    check(port70);
    check(port71);
    check(port72);
    check(port73);
    check(port74);
    check(port75);
    check(port76);
    check(port77);
    check(port78);
    check(port79);
    check(port80);
    check(port81);
    check(port82);
    check(port83);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    CodeState = DUMP_INPUTS;
    dump(port0, port0.iwriter, tcl.AESL_transaction);
    dump(port1, port1.iwriter, tcl.AESL_transaction);
    dump(port2, port2.iwriter, tcl.AESL_transaction);
    dump(port3, port3.iwriter, tcl.AESL_transaction);
    dump(port4, port4.iwriter, tcl.AESL_transaction);
    dump(port5, port5.iwriter, tcl.AESL_transaction);
    dump(port6, port6.iwriter, tcl.AESL_transaction);
    dump(port7, port7.iwriter, tcl.AESL_transaction);
    dump(port8, port8.iwriter, tcl.AESL_transaction);
    dump(port9, port9.iwriter, tcl.AESL_transaction);
    dump(port10, port10.iwriter, tcl.AESL_transaction);
    dump(port11, port11.iwriter, tcl.AESL_transaction);
    dump(port12, port12.iwriter, tcl.AESL_transaction);
    dump(port13, port13.iwriter, tcl.AESL_transaction);
    dump(port14, port14.iwriter, tcl.AESL_transaction);
    dump(port15, port15.iwriter, tcl.AESL_transaction);
    dump(port16, port16.iwriter, tcl.AESL_transaction);
    dump(port17, port17.iwriter, tcl.AESL_transaction);
    dump(port18, port18.iwriter, tcl.AESL_transaction);
    dump(port19, port19.iwriter, tcl.AESL_transaction);
    dump(port20, port20.iwriter, tcl.AESL_transaction);
    dump(port21, port21.iwriter, tcl.AESL_transaction);
    dump(port22, port22.iwriter, tcl.AESL_transaction);
    dump(port23, port23.iwriter, tcl.AESL_transaction);
    dump(port24, port24.iwriter, tcl.AESL_transaction);
    dump(port25, port25.iwriter, tcl.AESL_transaction);
    dump(port26, port26.iwriter, tcl.AESL_transaction);
    dump(port27, port27.iwriter, tcl.AESL_transaction);
    dump(port28, port28.iwriter, tcl.AESL_transaction);
    dump(port29, port29.iwriter, tcl.AESL_transaction);
    dump(port30, port30.iwriter, tcl.AESL_transaction);
    dump(port31, port31.iwriter, tcl.AESL_transaction);
    dump(port32, port32.iwriter, tcl.AESL_transaction);
    dump(port33, port33.iwriter, tcl.AESL_transaction);
    dump(port34, port34.iwriter, tcl.AESL_transaction);
    dump(port35, port35.iwriter, tcl.AESL_transaction);
    dump(port36, port36.iwriter, tcl.AESL_transaction);
    dump(port37, port37.iwriter, tcl.AESL_transaction);
    dump(port38, port38.iwriter, tcl.AESL_transaction);
    dump(port39, port39.iwriter, tcl.AESL_transaction);
    dump(port40, port40.iwriter, tcl.AESL_transaction);
    dump(port41, port41.iwriter, tcl.AESL_transaction);
    dump(port42, port42.iwriter, tcl.AESL_transaction);
    dump(port43, port43.iwriter, tcl.AESL_transaction);
    dump(port44, port44.iwriter, tcl.AESL_transaction);
    dump(port45, port45.iwriter, tcl.AESL_transaction);
    dump(port46, port46.iwriter, tcl.AESL_transaction);
    dump(port47, port47.iwriter, tcl.AESL_transaction);
    dump(port48, port48.iwriter, tcl.AESL_transaction);
    dump(port49, port49.iwriter, tcl.AESL_transaction);
    dump(port50, port50.iwriter, tcl.AESL_transaction);
    dump(port51, port51.iwriter, tcl.AESL_transaction);
    dump(port52, port52.iwriter, tcl.AESL_transaction);
    dump(port53, port53.iwriter, tcl.AESL_transaction);
    dump(port54, port54.iwriter, tcl.AESL_transaction);
    dump(port55, port55.iwriter, tcl.AESL_transaction);
    dump(port56, port56.iwriter, tcl.AESL_transaction);
    dump(port57, port57.iwriter, tcl.AESL_transaction);
    dump(port58, port58.iwriter, tcl.AESL_transaction);
    dump(port59, port59.iwriter, tcl.AESL_transaction);
    dump(port60, port60.iwriter, tcl.AESL_transaction);
    dump(port61, port61.iwriter, tcl.AESL_transaction);
    dump(port62, port62.iwriter, tcl.AESL_transaction);
    dump(port63, port63.iwriter, tcl.AESL_transaction);
    dump(port64, port64.iwriter, tcl.AESL_transaction);
    dump(port65, port65.iwriter, tcl.AESL_transaction);
    dump(port66, port66.iwriter, tcl.AESL_transaction);
    dump(port67, port67.iwriter, tcl.AESL_transaction);
    dump(port68, port68.iwriter, tcl.AESL_transaction);
    dump(port69, port69.iwriter, tcl.AESL_transaction);
    dump(port70, port70.iwriter, tcl.AESL_transaction);
    dump(port71, port71.iwriter, tcl.AESL_transaction);
    dump(port72, port72.iwriter, tcl.AESL_transaction);
    dump(port73, port73.iwriter, tcl.AESL_transaction);
    dump(port74, port74.iwriter, tcl.AESL_transaction);
    dump(port75, port75.iwriter, tcl.AESL_transaction);
    dump(port76, port76.iwriter, tcl.AESL_transaction);
    dump(port77, port77.iwriter, tcl.AESL_transaction);
    dump(port78, port78.iwriter, tcl.AESL_transaction);
    dump(port79, port79.iwriter, tcl.AESL_transaction);
    dump(port80, port80.iwriter, tcl.AESL_transaction);
    dump(port81, port81.iwriter, tcl.AESL_transaction);
    dump(port82, port82.iwriter, tcl.AESL_transaction);
    dump(port83, port83.iwriter, tcl.AESL_transaction);
    port0.doTCL(tcl);
    port1.doTCL(tcl);
    port2.doTCL(tcl);
    port3.doTCL(tcl);
    port4.doTCL(tcl);
    port5.doTCL(tcl);
    port6.doTCL(tcl);
    port7.doTCL(tcl);
    port8.doTCL(tcl);
    port9.doTCL(tcl);
    port10.doTCL(tcl);
    port11.doTCL(tcl);
    port12.doTCL(tcl);
    port13.doTCL(tcl);
    port14.doTCL(tcl);
    port15.doTCL(tcl);
    port16.doTCL(tcl);
    port17.doTCL(tcl);
    port18.doTCL(tcl);
    port19.doTCL(tcl);
    port20.doTCL(tcl);
    port21.doTCL(tcl);
    port22.doTCL(tcl);
    port23.doTCL(tcl);
    port24.doTCL(tcl);
    port25.doTCL(tcl);
    port26.doTCL(tcl);
    port27.doTCL(tcl);
    port28.doTCL(tcl);
    port29.doTCL(tcl);
    port30.doTCL(tcl);
    port31.doTCL(tcl);
    port32.doTCL(tcl);
    port33.doTCL(tcl);
    port34.doTCL(tcl);
    port35.doTCL(tcl);
    port36.doTCL(tcl);
    port37.doTCL(tcl);
    port38.doTCL(tcl);
    port39.doTCL(tcl);
    port40.doTCL(tcl);
    port41.doTCL(tcl);
    port42.doTCL(tcl);
    port43.doTCL(tcl);
    port44.doTCL(tcl);
    port45.doTCL(tcl);
    port46.doTCL(tcl);
    port47.doTCL(tcl);
    port48.doTCL(tcl);
    port49.doTCL(tcl);
    port50.doTCL(tcl);
    port51.doTCL(tcl);
    port52.doTCL(tcl);
    port53.doTCL(tcl);
    port54.doTCL(tcl);
    port55.doTCL(tcl);
    port56.doTCL(tcl);
    port57.doTCL(tcl);
    port58.doTCL(tcl);
    port59.doTCL(tcl);
    port60.doTCL(tcl);
    port61.doTCL(tcl);
    port62.doTCL(tcl);
    port63.doTCL(tcl);
    port64.doTCL(tcl);
    port65.doTCL(tcl);
    port66.doTCL(tcl);
    port67.doTCL(tcl);
    port68.doTCL(tcl);
    port69.doTCL(tcl);
    port70.doTCL(tcl);
    port71.doTCL(tcl);
    port72.doTCL(tcl);
    port73.doTCL(tcl);
    port74.doTCL(tcl);
    port75.doTCL(tcl);
    port76.doTCL(tcl);
    port77.doTCL(tcl);
    port78.doTCL(tcl);
    port79.doTCL(tcl);
    port80.doTCL(tcl);
    port81.doTCL(tcl);
    port82.doTCL(tcl);
    port83.doTCL(tcl);
    CodeState = CALL_C_DUT;
    test_gaussian_4096_hw_stub_wrapper(__xlx_apatb_param_v0, __xlx_apatb_param_v1_0_0_0, __xlx_apatb_param_v1_0_0_1, __xlx_apatb_param_v1_0_0_2, __xlx_apatb_param_v1_0_1_0, __xlx_apatb_param_v1_0_1_1, __xlx_apatb_param_v1_0_1_2, __xlx_apatb_param_v1_0_2_0, __xlx_apatb_param_v1_0_2_1, __xlx_apatb_param_v1_0_2_2, __xlx_apatb_param_v1_1_0_0, __xlx_apatb_param_v1_1_0_1, __xlx_apatb_param_v1_1_0_2, __xlx_apatb_param_v1_1_1_0, __xlx_apatb_param_v1_1_1_1, __xlx_apatb_param_v1_1_1_2, __xlx_apatb_param_v1_1_2_0, __xlx_apatb_param_v1_1_2_1, __xlx_apatb_param_v1_1_2_2, __xlx_apatb_param_v1_2_0_0, __xlx_apatb_param_v1_2_0_1, __xlx_apatb_param_v1_2_0_2, __xlx_apatb_param_v1_2_1_0, __xlx_apatb_param_v1_2_1_1, __xlx_apatb_param_v1_2_1_2, __xlx_apatb_param_v1_2_2_0, __xlx_apatb_param_v1_2_2_1, __xlx_apatb_param_v1_2_2_2, __xlx_apatb_param_v2, __xlx_apatb_param_v3, __xlx_apatb_param_v4_0_0_0, __xlx_apatb_param_v4_0_0_1, __xlx_apatb_param_v4_0_0_2, __xlx_apatb_param_v4_0_1_0, __xlx_apatb_param_v4_0_1_1, __xlx_apatb_param_v4_0_1_2, __xlx_apatb_param_v4_0_2_0, __xlx_apatb_param_v4_0_2_1, __xlx_apatb_param_v4_0_2_2, __xlx_apatb_param_v4_1_0_0, __xlx_apatb_param_v4_1_0_1, __xlx_apatb_param_v4_1_0_2, __xlx_apatb_param_v4_1_1_0, __xlx_apatb_param_v4_1_1_1, __xlx_apatb_param_v4_1_1_2, __xlx_apatb_param_v4_1_2_0, __xlx_apatb_param_v4_1_2_1, __xlx_apatb_param_v4_1_2_2, __xlx_apatb_param_v4_2_0_0, __xlx_apatb_param_v4_2_0_1, __xlx_apatb_param_v4_2_0_2, __xlx_apatb_param_v4_2_1_0, __xlx_apatb_param_v4_2_1_1, __xlx_apatb_param_v4_2_1_2, __xlx_apatb_param_v4_2_2_0, __xlx_apatb_param_v4_2_2_1, __xlx_apatb_param_v4_2_2_2, __xlx_apatb_param_v5_0_0_0, __xlx_apatb_param_v5_0_0_1, __xlx_apatb_param_v5_0_0_2, __xlx_apatb_param_v5_0_1_0, __xlx_apatb_param_v5_0_1_1, __xlx_apatb_param_v5_0_1_2, __xlx_apatb_param_v5_0_2_0, __xlx_apatb_param_v5_0_2_1, __xlx_apatb_param_v5_0_2_2, __xlx_apatb_param_v5_1_0_0, __xlx_apatb_param_v5_1_0_1, __xlx_apatb_param_v5_1_0_2, __xlx_apatb_param_v5_1_1_0, __xlx_apatb_param_v5_1_1_1, __xlx_apatb_param_v5_1_1_2, __xlx_apatb_param_v5_1_2_0, __xlx_apatb_param_v5_1_2_1, __xlx_apatb_param_v5_1_2_2, __xlx_apatb_param_v5_2_0_0, __xlx_apatb_param_v5_2_0_1, __xlx_apatb_param_v5_2_0_2, __xlx_apatb_param_v5_2_1_0, __xlx_apatb_param_v5_2_1_1, __xlx_apatb_param_v5_2_1_2, __xlx_apatb_param_v5_2_2_0, __xlx_apatb_param_v5_2_2_1, __xlx_apatb_param_v5_2_2_2);
    CodeState = DUMP_OUTPUTS;
    dump(port1, port1.owriter, tcl.AESL_transaction);
    dump(port2, port2.owriter, tcl.AESL_transaction);
    dump(port3, port3.owriter, tcl.AESL_transaction);
    dump(port4, port4.owriter, tcl.AESL_transaction);
    dump(port5, port5.owriter, tcl.AESL_transaction);
    dump(port6, port6.owriter, tcl.AESL_transaction);
    dump(port7, port7.owriter, tcl.AESL_transaction);
    dump(port8, port8.owriter, tcl.AESL_transaction);
    dump(port9, port9.owriter, tcl.AESL_transaction);
    dump(port10, port10.owriter, tcl.AESL_transaction);
    dump(port11, port11.owriter, tcl.AESL_transaction);
    dump(port12, port12.owriter, tcl.AESL_transaction);
    dump(port13, port13.owriter, tcl.AESL_transaction);
    dump(port14, port14.owriter, tcl.AESL_transaction);
    dump(port15, port15.owriter, tcl.AESL_transaction);
    dump(port16, port16.owriter, tcl.AESL_transaction);
    dump(port17, port17.owriter, tcl.AESL_transaction);
    dump(port18, port18.owriter, tcl.AESL_transaction);
    dump(port19, port19.owriter, tcl.AESL_transaction);
    dump(port20, port20.owriter, tcl.AESL_transaction);
    dump(port21, port21.owriter, tcl.AESL_transaction);
    dump(port22, port22.owriter, tcl.AESL_transaction);
    dump(port23, port23.owriter, tcl.AESL_transaction);
    dump(port24, port24.owriter, tcl.AESL_transaction);
    dump(port25, port25.owriter, tcl.AESL_transaction);
    dump(port26, port26.owriter, tcl.AESL_transaction);
    dump(port27, port27.owriter, tcl.AESL_transaction);
    dump(port57, port57.owriter, tcl.AESL_transaction);
    dump(port58, port58.owriter, tcl.AESL_transaction);
    dump(port59, port59.owriter, tcl.AESL_transaction);
    dump(port60, port60.owriter, tcl.AESL_transaction);
    dump(port61, port61.owriter, tcl.AESL_transaction);
    dump(port62, port62.owriter, tcl.AESL_transaction);
    dump(port63, port63.owriter, tcl.AESL_transaction);
    dump(port64, port64.owriter, tcl.AESL_transaction);
    dump(port65, port65.owriter, tcl.AESL_transaction);
    dump(port66, port66.owriter, tcl.AESL_transaction);
    dump(port67, port67.owriter, tcl.AESL_transaction);
    dump(port68, port68.owriter, tcl.AESL_transaction);
    dump(port69, port69.owriter, tcl.AESL_transaction);
    dump(port70, port70.owriter, tcl.AESL_transaction);
    dump(port71, port71.owriter, tcl.AESL_transaction);
    dump(port72, port72.owriter, tcl.AESL_transaction);
    dump(port73, port73.owriter, tcl.AESL_transaction);
    dump(port74, port74.owriter, tcl.AESL_transaction);
    dump(port75, port75.owriter, tcl.AESL_transaction);
    dump(port76, port76.owriter, tcl.AESL_transaction);
    dump(port77, port77.owriter, tcl.AESL_transaction);
    dump(port78, port78.owriter, tcl.AESL_transaction);
    dump(port79, port79.owriter, tcl.AESL_transaction);
    dump(port80, port80.owriter, tcl.AESL_transaction);
    dump(port81, port81.owriter, tcl.AESL_transaction);
    dump(port82, port82.owriter, tcl.AESL_transaction);
    dump(port83, port83.owriter, tcl.AESL_transaction);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}