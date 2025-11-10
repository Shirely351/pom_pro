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
#define AUTOTB_TVIN_v0 "../tv/cdatafile/c.test_gemm_32.autotvin_v0.dat"
#define AUTOTB_TVOUT_v0 "../tv/cdatafile/c.test_gemm_32.autotvout_v0.dat"
#define AUTOTB_TVIN_v1 "../tv/cdatafile/c.test_gemm_32.autotvin_v1.dat"
#define AUTOTB_TVOUT_v1 "../tv/cdatafile/c.test_gemm_32.autotvout_v1.dat"
#define AUTOTB_TVIN_v2_0 "../tv/cdatafile/c.test_gemm_32.autotvin_v2_0.dat"
#define AUTOTB_TVOUT_v2_0 "../tv/cdatafile/c.test_gemm_32.autotvout_v2_0.dat"
#define AUTOTB_TVIN_v2_1 "../tv/cdatafile/c.test_gemm_32.autotvin_v2_1.dat"
#define AUTOTB_TVOUT_v2_1 "../tv/cdatafile/c.test_gemm_32.autotvout_v2_1.dat"
#define AUTOTB_TVIN_v3_0 "../tv/cdatafile/c.test_gemm_32.autotvin_v3_0.dat"
#define AUTOTB_TVOUT_v3_0 "../tv/cdatafile/c.test_gemm_32.autotvout_v3_0.dat"
#define AUTOTB_TVIN_v3_1 "../tv/cdatafile/c.test_gemm_32.autotvin_v3_1.dat"
#define AUTOTB_TVOUT_v3_1 "../tv/cdatafile/c.test_gemm_32.autotvout_v3_1.dat"
#define AUTOTB_TVIN_v3_2 "../tv/cdatafile/c.test_gemm_32.autotvin_v3_2.dat"
#define AUTOTB_TVOUT_v3_2 "../tv/cdatafile/c.test_gemm_32.autotvout_v3_2.dat"
#define AUTOTB_TVIN_v3_3 "../tv/cdatafile/c.test_gemm_32.autotvin_v3_3.dat"
#define AUTOTB_TVOUT_v3_3 "../tv/cdatafile/c.test_gemm_32.autotvout_v3_3.dat"
#define AUTOTB_TVIN_v3_4 "../tv/cdatafile/c.test_gemm_32.autotvin_v3_4.dat"
#define AUTOTB_TVOUT_v3_4 "../tv/cdatafile/c.test_gemm_32.autotvout_v3_4.dat"
#define AUTOTB_TVIN_v3_5 "../tv/cdatafile/c.test_gemm_32.autotvin_v3_5.dat"
#define AUTOTB_TVOUT_v3_5 "../tv/cdatafile/c.test_gemm_32.autotvout_v3_5.dat"
#define AUTOTB_TVIN_v3_6 "../tv/cdatafile/c.test_gemm_32.autotvin_v3_6.dat"
#define AUTOTB_TVOUT_v3_6 "../tv/cdatafile/c.test_gemm_32.autotvout_v3_6.dat"
#define AUTOTB_TVIN_v3_7 "../tv/cdatafile/c.test_gemm_32.autotvin_v3_7.dat"
#define AUTOTB_TVOUT_v3_7 "../tv/cdatafile/c.test_gemm_32.autotvout_v3_7.dat"
#define AUTOTB_TVIN_v3_8 "../tv/cdatafile/c.test_gemm_32.autotvin_v3_8.dat"
#define AUTOTB_TVOUT_v3_8 "../tv/cdatafile/c.test_gemm_32.autotvout_v3_8.dat"
#define AUTOTB_TVIN_v3_9 "../tv/cdatafile/c.test_gemm_32.autotvin_v3_9.dat"
#define AUTOTB_TVOUT_v3_9 "../tv/cdatafile/c.test_gemm_32.autotvout_v3_9.dat"
#define AUTOTB_TVIN_v3_10 "../tv/cdatafile/c.test_gemm_32.autotvin_v3_10.dat"
#define AUTOTB_TVOUT_v3_10 "../tv/cdatafile/c.test_gemm_32.autotvout_v3_10.dat"
#define AUTOTB_TVIN_v3_11 "../tv/cdatafile/c.test_gemm_32.autotvin_v3_11.dat"
#define AUTOTB_TVOUT_v3_11 "../tv/cdatafile/c.test_gemm_32.autotvout_v3_11.dat"
#define AUTOTB_TVIN_v3_12 "../tv/cdatafile/c.test_gemm_32.autotvin_v3_12.dat"
#define AUTOTB_TVOUT_v3_12 "../tv/cdatafile/c.test_gemm_32.autotvout_v3_12.dat"
#define AUTOTB_TVIN_v3_13 "../tv/cdatafile/c.test_gemm_32.autotvin_v3_13.dat"
#define AUTOTB_TVOUT_v3_13 "../tv/cdatafile/c.test_gemm_32.autotvout_v3_13.dat"
#define AUTOTB_TVIN_v3_14 "../tv/cdatafile/c.test_gemm_32.autotvin_v3_14.dat"
#define AUTOTB_TVOUT_v3_14 "../tv/cdatafile/c.test_gemm_32.autotvout_v3_14.dat"
#define AUTOTB_TVIN_v3_15 "../tv/cdatafile/c.test_gemm_32.autotvin_v3_15.dat"
#define AUTOTB_TVOUT_v3_15 "../tv/cdatafile/c.test_gemm_32.autotvout_v3_15.dat"
#define AUTOTB_TVIN_v4_0_0 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_0_0.dat"
#define AUTOTB_TVOUT_v4_0_0 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_0_0.dat"
#define AUTOTB_TVIN_v4_0_1 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_0_1.dat"
#define AUTOTB_TVOUT_v4_0_1 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_0_1.dat"
#define AUTOTB_TVIN_v4_0_2 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_0_2.dat"
#define AUTOTB_TVOUT_v4_0_2 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_0_2.dat"
#define AUTOTB_TVIN_v4_0_3 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_0_3.dat"
#define AUTOTB_TVOUT_v4_0_3 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_0_3.dat"
#define AUTOTB_TVIN_v4_0_4 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_0_4.dat"
#define AUTOTB_TVOUT_v4_0_4 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_0_4.dat"
#define AUTOTB_TVIN_v4_0_5 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_0_5.dat"
#define AUTOTB_TVOUT_v4_0_5 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_0_5.dat"
#define AUTOTB_TVIN_v4_0_6 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_0_6.dat"
#define AUTOTB_TVOUT_v4_0_6 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_0_6.dat"
#define AUTOTB_TVIN_v4_0_7 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_0_7.dat"
#define AUTOTB_TVOUT_v4_0_7 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_0_7.dat"
#define AUTOTB_TVIN_v4_0_8 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_0_8.dat"
#define AUTOTB_TVOUT_v4_0_8 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_0_8.dat"
#define AUTOTB_TVIN_v4_0_9 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_0_9.dat"
#define AUTOTB_TVOUT_v4_0_9 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_0_9.dat"
#define AUTOTB_TVIN_v4_0_10 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_0_10.dat"
#define AUTOTB_TVOUT_v4_0_10 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_0_10.dat"
#define AUTOTB_TVIN_v4_0_11 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_0_11.dat"
#define AUTOTB_TVOUT_v4_0_11 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_0_11.dat"
#define AUTOTB_TVIN_v4_0_12 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_0_12.dat"
#define AUTOTB_TVOUT_v4_0_12 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_0_12.dat"
#define AUTOTB_TVIN_v4_0_13 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_0_13.dat"
#define AUTOTB_TVOUT_v4_0_13 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_0_13.dat"
#define AUTOTB_TVIN_v4_0_14 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_0_14.dat"
#define AUTOTB_TVOUT_v4_0_14 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_0_14.dat"
#define AUTOTB_TVIN_v4_0_15 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_0_15.dat"
#define AUTOTB_TVOUT_v4_0_15 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_0_15.dat"
#define AUTOTB_TVIN_v4_1_0 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_1_0.dat"
#define AUTOTB_TVOUT_v4_1_0 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_1_0.dat"
#define AUTOTB_TVIN_v4_1_1 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_1_1.dat"
#define AUTOTB_TVOUT_v4_1_1 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_1_1.dat"
#define AUTOTB_TVIN_v4_1_2 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_1_2.dat"
#define AUTOTB_TVOUT_v4_1_2 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_1_2.dat"
#define AUTOTB_TVIN_v4_1_3 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_1_3.dat"
#define AUTOTB_TVOUT_v4_1_3 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_1_3.dat"
#define AUTOTB_TVIN_v4_1_4 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_1_4.dat"
#define AUTOTB_TVOUT_v4_1_4 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_1_4.dat"
#define AUTOTB_TVIN_v4_1_5 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_1_5.dat"
#define AUTOTB_TVOUT_v4_1_5 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_1_5.dat"
#define AUTOTB_TVIN_v4_1_6 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_1_6.dat"
#define AUTOTB_TVOUT_v4_1_6 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_1_6.dat"
#define AUTOTB_TVIN_v4_1_7 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_1_7.dat"
#define AUTOTB_TVOUT_v4_1_7 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_1_7.dat"
#define AUTOTB_TVIN_v4_1_8 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_1_8.dat"
#define AUTOTB_TVOUT_v4_1_8 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_1_8.dat"
#define AUTOTB_TVIN_v4_1_9 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_1_9.dat"
#define AUTOTB_TVOUT_v4_1_9 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_1_9.dat"
#define AUTOTB_TVIN_v4_1_10 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_1_10.dat"
#define AUTOTB_TVOUT_v4_1_10 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_1_10.dat"
#define AUTOTB_TVIN_v4_1_11 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_1_11.dat"
#define AUTOTB_TVOUT_v4_1_11 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_1_11.dat"
#define AUTOTB_TVIN_v4_1_12 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_1_12.dat"
#define AUTOTB_TVOUT_v4_1_12 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_1_12.dat"
#define AUTOTB_TVIN_v4_1_13 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_1_13.dat"
#define AUTOTB_TVOUT_v4_1_13 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_1_13.dat"
#define AUTOTB_TVIN_v4_1_14 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_1_14.dat"
#define AUTOTB_TVOUT_v4_1_14 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_1_14.dat"
#define AUTOTB_TVIN_v4_1_15 "../tv/cdatafile/c.test_gemm_32.autotvin_v4_1_15.dat"
#define AUTOTB_TVOUT_v4_1_15 "../tv/cdatafile/c.test_gemm_32.autotvout_v4_1_15.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_v4_0_0 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_0_0.dat"
#define AUTOTB_TVOUT_PC_v4_0_1 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_0_1.dat"
#define AUTOTB_TVOUT_PC_v4_0_2 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_0_2.dat"
#define AUTOTB_TVOUT_PC_v4_0_3 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_0_3.dat"
#define AUTOTB_TVOUT_PC_v4_0_4 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_0_4.dat"
#define AUTOTB_TVOUT_PC_v4_0_5 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_0_5.dat"
#define AUTOTB_TVOUT_PC_v4_0_6 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_0_6.dat"
#define AUTOTB_TVOUT_PC_v4_0_7 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_0_7.dat"
#define AUTOTB_TVOUT_PC_v4_0_8 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_0_8.dat"
#define AUTOTB_TVOUT_PC_v4_0_9 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_0_9.dat"
#define AUTOTB_TVOUT_PC_v4_0_10 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_0_10.dat"
#define AUTOTB_TVOUT_PC_v4_0_11 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_0_11.dat"
#define AUTOTB_TVOUT_PC_v4_0_12 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_0_12.dat"
#define AUTOTB_TVOUT_PC_v4_0_13 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_0_13.dat"
#define AUTOTB_TVOUT_PC_v4_0_14 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_0_14.dat"
#define AUTOTB_TVOUT_PC_v4_0_15 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_0_15.dat"
#define AUTOTB_TVOUT_PC_v4_1_0 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_1_0.dat"
#define AUTOTB_TVOUT_PC_v4_1_1 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_1_1.dat"
#define AUTOTB_TVOUT_PC_v4_1_2 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_1_2.dat"
#define AUTOTB_TVOUT_PC_v4_1_3 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_1_3.dat"
#define AUTOTB_TVOUT_PC_v4_1_4 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_1_4.dat"
#define AUTOTB_TVOUT_PC_v4_1_5 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_1_5.dat"
#define AUTOTB_TVOUT_PC_v4_1_6 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_1_6.dat"
#define AUTOTB_TVOUT_PC_v4_1_7 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_1_7.dat"
#define AUTOTB_TVOUT_PC_v4_1_8 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_1_8.dat"
#define AUTOTB_TVOUT_PC_v4_1_9 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_1_9.dat"
#define AUTOTB_TVOUT_PC_v4_1_10 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_1_10.dat"
#define AUTOTB_TVOUT_PC_v4_1_11 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_1_11.dat"
#define AUTOTB_TVOUT_PC_v4_1_12 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_1_12.dat"
#define AUTOTB_TVOUT_PC_v4_1_13 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_1_13.dat"
#define AUTOTB_TVOUT_PC_v4_1_14 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_1_14.dat"
#define AUTOTB_TVOUT_PC_v4_1_15 "../tv/rtldatafile/rtl.test_gemm_32.autotvout_v4_1_15.dat"


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
void test_gemm_32_hw_stub_wrapper(float, float, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*);

extern "C"
void apatb_test_gemm_32_hw(float __xlx_apatb_param_v0, float __xlx_apatb_param_v1, void* __xlx_apatb_param_v2_0, void* __xlx_apatb_param_v2_1, void* __xlx_apatb_param_v3_0, void* __xlx_apatb_param_v3_1, void* __xlx_apatb_param_v3_2, void* __xlx_apatb_param_v3_3, void* __xlx_apatb_param_v3_4, void* __xlx_apatb_param_v3_5, void* __xlx_apatb_param_v3_6, void* __xlx_apatb_param_v3_7, void* __xlx_apatb_param_v3_8, void* __xlx_apatb_param_v3_9, void* __xlx_apatb_param_v3_10, void* __xlx_apatb_param_v3_11, void* __xlx_apatb_param_v3_12, void* __xlx_apatb_param_v3_13, void* __xlx_apatb_param_v3_14, void* __xlx_apatb_param_v3_15, void* __xlx_apatb_param_v4_0_0, void* __xlx_apatb_param_v4_0_1, void* __xlx_apatb_param_v4_0_2, void* __xlx_apatb_param_v4_0_3, void* __xlx_apatb_param_v4_0_4, void* __xlx_apatb_param_v4_0_5, void* __xlx_apatb_param_v4_0_6, void* __xlx_apatb_param_v4_0_7, void* __xlx_apatb_param_v4_0_8, void* __xlx_apatb_param_v4_0_9, void* __xlx_apatb_param_v4_0_10, void* __xlx_apatb_param_v4_0_11, void* __xlx_apatb_param_v4_0_12, void* __xlx_apatb_param_v4_0_13, void* __xlx_apatb_param_v4_0_14, void* __xlx_apatb_param_v4_0_15, void* __xlx_apatb_param_v4_1_0, void* __xlx_apatb_param_v4_1_1, void* __xlx_apatb_param_v4_1_2, void* __xlx_apatb_param_v4_1_3, void* __xlx_apatb_param_v4_1_4, void* __xlx_apatb_param_v4_1_5, void* __xlx_apatb_param_v4_1_6, void* __xlx_apatb_param_v4_1_7, void* __xlx_apatb_param_v4_1_8, void* __xlx_apatb_param_v4_1_9, void* __xlx_apatb_param_v4_1_10, void* __xlx_apatb_param_v4_1_11, void* __xlx_apatb_param_v4_1_12, void* __xlx_apatb_param_v4_1_13, void* __xlx_apatb_param_v4_1_14, void* __xlx_apatb_param_v4_1_15)
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

  static hls::sim::Register port1 {
    .name = "v1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v1),
#endif
  };
  port1.param = &__xlx_apatb_param_v1;

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port2 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port2 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v2_0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v2_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v2_0),
#endif
#endif
  };
  port2.param = { __xlx_apatb_param_v2_0 };
  port2.depth = { 512 };
  port2.offset = {  };
  port2.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port3 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port3 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v2_1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v2_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v2_1),
#endif
#endif
  };
  port3.param = { __xlx_apatb_param_v2_1 };
  port3.depth = { 512 };
  port3.offset = {  };
  port3.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port4 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port4 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v3_0" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v3_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v3_0),
#endif
#endif
  };
  port4.param = { __xlx_apatb_param_v3_0 };
  port4.depth = { 64 };
  port4.offset = {  };
  port4.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port5 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port5 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v3_1" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v3_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v3_1),
#endif
#endif
  };
  port5.param = { __xlx_apatb_param_v3_1 };
  port5.depth = { 64 };
  port5.offset = {  };
  port5.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port6 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port6 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v3_2" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v3_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v3_2),
#endif
#endif
  };
  port6.param = { __xlx_apatb_param_v3_2 };
  port6.depth = { 64 };
  port6.offset = {  };
  port6.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port7 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port7 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v3_3" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v3_3),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v3_3),
#endif
#endif
  };
  port7.param = { __xlx_apatb_param_v3_3 };
  port7.depth = { 64 };
  port7.offset = {  };
  port7.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port8 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port8 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v3_4" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v3_4),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v3_4),
#endif
#endif
  };
  port8.param = { __xlx_apatb_param_v3_4 };
  port8.depth = { 64 };
  port8.offset = {  };
  port8.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port9 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port9 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v3_5" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v3_5),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v3_5),
#endif
#endif
  };
  port9.param = { __xlx_apatb_param_v3_5 };
  port9.depth = { 64 };
  port9.offset = {  };
  port9.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port10 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port10 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v3_6" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v3_6),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v3_6),
#endif
#endif
  };
  port10.param = { __xlx_apatb_param_v3_6 };
  port10.depth = { 64 };
  port10.offset = {  };
  port10.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port11 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port11 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v3_7" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v3_7),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v3_7),
#endif
#endif
  };
  port11.param = { __xlx_apatb_param_v3_7 };
  port11.depth = { 64 };
  port11.offset = {  };
  port11.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port12 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port12 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v3_8" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v3_8),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v3_8),
#endif
#endif
  };
  port12.param = { __xlx_apatb_param_v3_8 };
  port12.depth = { 64 };
  port12.offset = {  };
  port12.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port13 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port13 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v3_9" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v3_9),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v3_9),
#endif
#endif
  };
  port13.param = { __xlx_apatb_param_v3_9 };
  port13.depth = { 64 };
  port13.offset = {  };
  port13.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port14 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port14 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v3_10" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v3_10),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v3_10),
#endif
#endif
  };
  port14.param = { __xlx_apatb_param_v3_10 };
  port14.depth = { 64 };
  port14.offset = {  };
  port14.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port15 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port15 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v3_11" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v3_11),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v3_11),
#endif
#endif
  };
  port15.param = { __xlx_apatb_param_v3_11 };
  port15.depth = { 64 };
  port15.offset = {  };
  port15.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port16 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port16 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v3_12" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v3_12),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v3_12),
#endif
#endif
  };
  port16.param = { __xlx_apatb_param_v3_12 };
  port16.depth = { 64 };
  port16.offset = {  };
  port16.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port17 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port17 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v3_13" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v3_13),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v3_13),
#endif
#endif
  };
  port17.param = { __xlx_apatb_param_v3_13 };
  port17.depth = { 64 };
  port17.offset = {  };
  port17.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port18 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port18 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v3_14" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v3_14),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v3_14),
#endif
#endif
  };
  port18.param = { __xlx_apatb_param_v3_14 };
  port18.depth = { 64 };
  port18.offset = {  };
  port18.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port19 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port19 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v3_15" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v3_15),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v3_15),
#endif
#endif
  };
  port19.param = { __xlx_apatb_param_v3_15 };
  port19.depth = { 64 };
  port19.offset = {  };
  port19.hasWrite = { false };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port20 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port20 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_0_0" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_0_0),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_0_0),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_0_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_0_0),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_0),
#endif
#endif
  };
  port20.param = { __xlx_apatb_param_v4_0_0 };
  port20.depth = { 32 };
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
    .name = { "v4_0_1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_0_1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_0_1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_0_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_0_1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_1),
#endif
#endif
  };
  port21.param = { __xlx_apatb_param_v4_0_1 };
  port21.depth = { 32 };
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
    .name = { "v4_0_2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_0_2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_0_2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_0_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_0_2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_2),
#endif
#endif
  };
  port22.param = { __xlx_apatb_param_v4_0_2 };
  port22.depth = { 32 };
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
    .name = { "v4_0_3" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_0_3),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_0_3),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_0_3),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_0_3),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_3),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_3),
#endif
#endif
  };
  port23.param = { __xlx_apatb_param_v4_0_3 };
  port23.depth = { 32 };
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
    .name = { "v4_0_4" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_0_4),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_0_4),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_0_4),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_0_4),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_4),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_4),
#endif
#endif
  };
  port24.param = { __xlx_apatb_param_v4_0_4 };
  port24.depth = { 32 };
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
    .name = { "v4_0_5" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_0_5),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_0_5),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_0_5),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_0_5),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_5),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_5),
#endif
#endif
  };
  port25.param = { __xlx_apatb_param_v4_0_5 };
  port25.depth = { 32 };
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
    .name = { "v4_0_6" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_0_6),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_0_6),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_0_6),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_0_6),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_6),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_6),
#endif
#endif
  };
  port26.param = { __xlx_apatb_param_v4_0_6 };
  port26.depth = { 32 };
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
    .name = { "v4_0_7" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_0_7),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_0_7),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_0_7),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_0_7),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_7),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_7),
#endif
#endif
  };
  port27.param = { __xlx_apatb_param_v4_0_7 };
  port27.depth = { 32 };
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
    .name = { "v4_0_8" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_0_8),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_0_8),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_0_8),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_0_8),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_8),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_8),
#endif
#endif
  };
  port28.param = { __xlx_apatb_param_v4_0_8 };
  port28.depth = { 32 };
  port28.offset = {  };
  port28.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port29 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port29 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_0_9" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_0_9),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_0_9),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_0_9),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_0_9),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_9),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_9),
#endif
#endif
  };
  port29.param = { __xlx_apatb_param_v4_0_9 };
  port29.depth = { 32 };
  port29.offset = {  };
  port29.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port30 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port30 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_0_10" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_0_10),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_0_10),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_0_10),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_0_10),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_10),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_10),
#endif
#endif
  };
  port30.param = { __xlx_apatb_param_v4_0_10 };
  port30.depth = { 32 };
  port30.offset = {  };
  port30.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port31 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port31 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_0_11" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_0_11),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_0_11),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_0_11),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_0_11),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_11),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_11),
#endif
#endif
  };
  port31.param = { __xlx_apatb_param_v4_0_11 };
  port31.depth = { 32 };
  port31.offset = {  };
  port31.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port32 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port32 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_0_12" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_0_12),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_0_12),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_0_12),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_0_12),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_12),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_12),
#endif
#endif
  };
  port32.param = { __xlx_apatb_param_v4_0_12 };
  port32.depth = { 32 };
  port32.offset = {  };
  port32.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port33 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port33 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_0_13" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_0_13),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_0_13),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_0_13),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_0_13),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_13),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_13),
#endif
#endif
  };
  port33.param = { __xlx_apatb_param_v4_0_13 };
  port33.depth = { 32 };
  port33.offset = {  };
  port33.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port34 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port34 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_0_14" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_0_14),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_0_14),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_0_14),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_0_14),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_14),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_14),
#endif
#endif
  };
  port34.param = { __xlx_apatb_param_v4_0_14 };
  port34.depth = { 32 };
  port34.offset = {  };
  port34.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port35 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port35 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_0_15" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_0_15),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_0_15),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_0_15),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_0_15),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_0_15),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_0_15),
#endif
#endif
  };
  port35.param = { __xlx_apatb_param_v4_0_15 };
  port35.depth = { 32 };
  port35.offset = {  };
  port35.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port36 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port36 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_0" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_1_0),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_1_0),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_1_0),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_1_0),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_0),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_0),
#endif
#endif
  };
  port36.param = { __xlx_apatb_param_v4_1_0 };
  port36.depth = { 32 };
  port36.offset = {  };
  port36.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port37 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port37 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_1_1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_1_1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_1_1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_1_1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_1),
#endif
#endif
  };
  port37.param = { __xlx_apatb_param_v4_1_1 };
  port37.depth = { 32 };
  port37.offset = {  };
  port37.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port38 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port38 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_1_2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_1_2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_1_2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_1_2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_2),
#endif
#endif
  };
  port38.param = { __xlx_apatb_param_v4_1_2 };
  port38.depth = { 32 };
  port38.offset = {  };
  port38.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port39 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port39 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_3" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_1_3),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_1_3),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_1_3),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_1_3),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_3),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_3),
#endif
#endif
  };
  port39.param = { __xlx_apatb_param_v4_1_3 };
  port39.depth = { 32 };
  port39.offset = {  };
  port39.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port40 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port40 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_4" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_1_4),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_1_4),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_1_4),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_1_4),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_4),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_4),
#endif
#endif
  };
  port40.param = { __xlx_apatb_param_v4_1_4 };
  port40.depth = { 32 };
  port40.offset = {  };
  port40.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port41 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port41 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_5" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_1_5),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_1_5),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_1_5),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_1_5),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_5),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_5),
#endif
#endif
  };
  port41.param = { __xlx_apatb_param_v4_1_5 };
  port41.depth = { 32 };
  port41.offset = {  };
  port41.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port42 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port42 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_6" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_1_6),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_1_6),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_1_6),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_1_6),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_6),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_6),
#endif
#endif
  };
  port42.param = { __xlx_apatb_param_v4_1_6 };
  port42.depth = { 32 };
  port42.offset = {  };
  port42.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port43 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port43 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_7" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_1_7),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_1_7),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_1_7),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_1_7),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_7),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_7),
#endif
#endif
  };
  port43.param = { __xlx_apatb_param_v4_1_7 };
  port43.depth = { 32 };
  port43.offset = {  };
  port43.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port44 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port44 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_8" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_1_8),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_1_8),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_1_8),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_1_8),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_8),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_8),
#endif
#endif
  };
  port44.param = { __xlx_apatb_param_v4_1_8 };
  port44.depth = { 32 };
  port44.offset = {  };
  port44.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port45 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port45 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_9" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_1_9),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_1_9),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_1_9),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_1_9),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_9),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_9),
#endif
#endif
  };
  port45.param = { __xlx_apatb_param_v4_1_9 };
  port45.depth = { 32 };
  port45.offset = {  };
  port45.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port46 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port46 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_10" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_1_10),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_1_10),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_1_10),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_1_10),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_10),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_10),
#endif
#endif
  };
  port46.param = { __xlx_apatb_param_v4_1_10 };
  port46.depth = { 32 };
  port46.offset = {  };
  port46.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port47 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port47 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_11" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_1_11),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_1_11),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_1_11),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_1_11),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_11),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_11),
#endif
#endif
  };
  port47.param = { __xlx_apatb_param_v4_1_11 };
  port47.depth = { 32 };
  port47.offset = {  };
  port47.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port48 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port48 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_12" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_1_12),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_1_12),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_1_12),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_1_12),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_12),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_12),
#endif
#endif
  };
  port48.param = { __xlx_apatb_param_v4_1_12 };
  port48.depth = { 32 };
  port48.offset = {  };
  port48.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port49 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port49 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_13" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_1_13),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_1_13),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_1_13),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_1_13),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_13),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_13),
#endif
#endif
  };
  port49.param = { __xlx_apatb_param_v4_1_13 };
  port49.depth = { 32 };
  port49.offset = {  };
  port49.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port50 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port50 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_14" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_1_14),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_1_14),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_1_14),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_1_14),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_14),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_14),
#endif
#endif
  };
  port50.param = { __xlx_apatb_param_v4_1_14 };
  port50.depth = { 32 };
  port50.offset = {  };
  port50.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port51 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port51 {
#endif
    .width = 32,
    .asize = 4,
    .hbm = false,
    .name = { "v4_1_15" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_v4_1_15),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_v4_1_15),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_v4_1_15),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_v4_1_15),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_v4_1_15),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_v4_1_15),
#endif
#endif
  };
  port51.param = { __xlx_apatb_param_v4_1_15 };
  port51.depth = { 32 };
  port51.offset = {  };
  port51.hasWrite = { true };

  refine_signal_handler();
  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port20);
    check(port21);
    check(port22);
    check(port23);
    check(port24);
    check(port25);
    check(port26);
    check(port27);
    check(port28);
    check(port29);
    check(port30);
    check(port31);
    check(port32);
    check(port33);
    check(port34);
    check(port35);
    check(port36);
    check(port37);
    check(port38);
    check(port39);
    check(port40);
    check(port41);
    check(port42);
    check(port43);
    check(port44);
    check(port45);
    check(port46);
    check(port47);
    check(port48);
    check(port49);
    check(port50);
    check(port51);
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
    CodeState = CALL_C_DUT;
    test_gemm_32_hw_stub_wrapper(__xlx_apatb_param_v0, __xlx_apatb_param_v1, __xlx_apatb_param_v2_0, __xlx_apatb_param_v2_1, __xlx_apatb_param_v3_0, __xlx_apatb_param_v3_1, __xlx_apatb_param_v3_2, __xlx_apatb_param_v3_3, __xlx_apatb_param_v3_4, __xlx_apatb_param_v3_5, __xlx_apatb_param_v3_6, __xlx_apatb_param_v3_7, __xlx_apatb_param_v3_8, __xlx_apatb_param_v3_9, __xlx_apatb_param_v3_10, __xlx_apatb_param_v3_11, __xlx_apatb_param_v3_12, __xlx_apatb_param_v3_13, __xlx_apatb_param_v3_14, __xlx_apatb_param_v3_15, __xlx_apatb_param_v4_0_0, __xlx_apatb_param_v4_0_1, __xlx_apatb_param_v4_0_2, __xlx_apatb_param_v4_0_3, __xlx_apatb_param_v4_0_4, __xlx_apatb_param_v4_0_5, __xlx_apatb_param_v4_0_6, __xlx_apatb_param_v4_0_7, __xlx_apatb_param_v4_0_8, __xlx_apatb_param_v4_0_9, __xlx_apatb_param_v4_0_10, __xlx_apatb_param_v4_0_11, __xlx_apatb_param_v4_0_12, __xlx_apatb_param_v4_0_13, __xlx_apatb_param_v4_0_14, __xlx_apatb_param_v4_0_15, __xlx_apatb_param_v4_1_0, __xlx_apatb_param_v4_1_1, __xlx_apatb_param_v4_1_2, __xlx_apatb_param_v4_1_3, __xlx_apatb_param_v4_1_4, __xlx_apatb_param_v4_1_5, __xlx_apatb_param_v4_1_6, __xlx_apatb_param_v4_1_7, __xlx_apatb_param_v4_1_8, __xlx_apatb_param_v4_1_9, __xlx_apatb_param_v4_1_10, __xlx_apatb_param_v4_1_11, __xlx_apatb_param_v4_1_12, __xlx_apatb_param_v4_1_13, __xlx_apatb_param_v4_1_14, __xlx_apatb_param_v4_1_15);
    CodeState = DUMP_OUTPUTS;
    dump(port20, port20.owriter, tcl.AESL_transaction);
    dump(port21, port21.owriter, tcl.AESL_transaction);
    dump(port22, port22.owriter, tcl.AESL_transaction);
    dump(port23, port23.owriter, tcl.AESL_transaction);
    dump(port24, port24.owriter, tcl.AESL_transaction);
    dump(port25, port25.owriter, tcl.AESL_transaction);
    dump(port26, port26.owriter, tcl.AESL_transaction);
    dump(port27, port27.owriter, tcl.AESL_transaction);
    dump(port28, port28.owriter, tcl.AESL_transaction);
    dump(port29, port29.owriter, tcl.AESL_transaction);
    dump(port30, port30.owriter, tcl.AESL_transaction);
    dump(port31, port31.owriter, tcl.AESL_transaction);
    dump(port32, port32.owriter, tcl.AESL_transaction);
    dump(port33, port33.owriter, tcl.AESL_transaction);
    dump(port34, port34.owriter, tcl.AESL_transaction);
    dump(port35, port35.owriter, tcl.AESL_transaction);
    dump(port36, port36.owriter, tcl.AESL_transaction);
    dump(port37, port37.owriter, tcl.AESL_transaction);
    dump(port38, port38.owriter, tcl.AESL_transaction);
    dump(port39, port39.owriter, tcl.AESL_transaction);
    dump(port40, port40.owriter, tcl.AESL_transaction);
    dump(port41, port41.owriter, tcl.AESL_transaction);
    dump(port42, port42.owriter, tcl.AESL_transaction);
    dump(port43, port43.owriter, tcl.AESL_transaction);
    dump(port44, port44.owriter, tcl.AESL_transaction);
    dump(port45, port45.owriter, tcl.AESL_transaction);
    dump(port46, port46.owriter, tcl.AESL_transaction);
    dump(port47, port47.owriter, tcl.AESL_transaction);
    dump(port48, port48.owriter, tcl.AESL_transaction);
    dump(port49, port49.owriter, tcl.AESL_transaction);
    dump(port50, port50.owriter, tcl.AESL_transaction);
    dump(port51, port51.owriter, tcl.AESL_transaction);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}