#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
using namespace std;

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
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
using hls::sim::Byte;
extern "C" void test_gemm_64(float, float, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*);
extern "C" void apatb_test_gemm_64_hw(float __xlx_apatb_param_v0, float __xlx_apatb_param_v1, volatile void * __xlx_apatb_param_v2_0, volatile void * __xlx_apatb_param_v2_1, volatile void * __xlx_apatb_param_v3_0, volatile void * __xlx_apatb_param_v3_1, volatile void * __xlx_apatb_param_v3_2, volatile void * __xlx_apatb_param_v3_3, volatile void * __xlx_apatb_param_v3_4, volatile void * __xlx_apatb_param_v3_5, volatile void * __xlx_apatb_param_v3_6, volatile void * __xlx_apatb_param_v3_7, volatile void * __xlx_apatb_param_v3_8, volatile void * __xlx_apatb_param_v3_9, volatile void * __xlx_apatb_param_v3_10, volatile void * __xlx_apatb_param_v3_11, volatile void * __xlx_apatb_param_v3_12, volatile void * __xlx_apatb_param_v3_13, volatile void * __xlx_apatb_param_v3_14, volatile void * __xlx_apatb_param_v3_15, volatile void * __xlx_apatb_param_v4_0_0, volatile void * __xlx_apatb_param_v4_0_1, volatile void * __xlx_apatb_param_v4_0_2, volatile void * __xlx_apatb_param_v4_0_3, volatile void * __xlx_apatb_param_v4_0_4, volatile void * __xlx_apatb_param_v4_0_5, volatile void * __xlx_apatb_param_v4_0_6, volatile void * __xlx_apatb_param_v4_0_7, volatile void * __xlx_apatb_param_v4_0_8, volatile void * __xlx_apatb_param_v4_0_9, volatile void * __xlx_apatb_param_v4_0_10, volatile void * __xlx_apatb_param_v4_0_11, volatile void * __xlx_apatb_param_v4_0_12, volatile void * __xlx_apatb_param_v4_0_13, volatile void * __xlx_apatb_param_v4_0_14, volatile void * __xlx_apatb_param_v4_0_15, volatile void * __xlx_apatb_param_v4_1_0, volatile void * __xlx_apatb_param_v4_1_1, volatile void * __xlx_apatb_param_v4_1_2, volatile void * __xlx_apatb_param_v4_1_3, volatile void * __xlx_apatb_param_v4_1_4, volatile void * __xlx_apatb_param_v4_1_5, volatile void * __xlx_apatb_param_v4_1_6, volatile void * __xlx_apatb_param_v4_1_7, volatile void * __xlx_apatb_param_v4_1_8, volatile void * __xlx_apatb_param_v4_1_9, volatile void * __xlx_apatb_param_v4_1_10, volatile void * __xlx_apatb_param_v4_1_11, volatile void * __xlx_apatb_param_v4_1_12, volatile void * __xlx_apatb_param_v4_1_13, volatile void * __xlx_apatb_param_v4_1_14, volatile void * __xlx_apatb_param_v4_1_15) {
using hls::sim::createStream;
  // Collect __xlx_v2_0__tmp_vec
std::vector<Byte<4>> __xlx_v2_0__tmp_vec;
for (size_t i = 0; i < 2048; ++i){
__xlx_v2_0__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v2_0)[i]);
}
  int __xlx_size_param_v2_0 = 2048;
  int __xlx_offset_param_v2_0 = 0;
  int __xlx_offset_byte_param_v2_0 = 0*4;
  // Collect __xlx_v2_1__tmp_vec
std::vector<Byte<4>> __xlx_v2_1__tmp_vec;
for (size_t i = 0; i < 2048; ++i){
__xlx_v2_1__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v2_1)[i]);
}
  int __xlx_size_param_v2_1 = 2048;
  int __xlx_offset_param_v2_1 = 0;
  int __xlx_offset_byte_param_v2_1 = 0*4;
  // Collect __xlx_v3_0__tmp_vec
std::vector<Byte<4>> __xlx_v3_0__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_v3_0__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_0)[i]);
}
  int __xlx_size_param_v3_0 = 256;
  int __xlx_offset_param_v3_0 = 0;
  int __xlx_offset_byte_param_v3_0 = 0*4;
  // Collect __xlx_v3_1__tmp_vec
std::vector<Byte<4>> __xlx_v3_1__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_v3_1__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_1)[i]);
}
  int __xlx_size_param_v3_1 = 256;
  int __xlx_offset_param_v3_1 = 0;
  int __xlx_offset_byte_param_v3_1 = 0*4;
  // Collect __xlx_v3_2__tmp_vec
std::vector<Byte<4>> __xlx_v3_2__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_v3_2__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_2)[i]);
}
  int __xlx_size_param_v3_2 = 256;
  int __xlx_offset_param_v3_2 = 0;
  int __xlx_offset_byte_param_v3_2 = 0*4;
  // Collect __xlx_v3_3__tmp_vec
std::vector<Byte<4>> __xlx_v3_3__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_v3_3__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_3)[i]);
}
  int __xlx_size_param_v3_3 = 256;
  int __xlx_offset_param_v3_3 = 0;
  int __xlx_offset_byte_param_v3_3 = 0*4;
  // Collect __xlx_v3_4__tmp_vec
std::vector<Byte<4>> __xlx_v3_4__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_v3_4__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_4)[i]);
}
  int __xlx_size_param_v3_4 = 256;
  int __xlx_offset_param_v3_4 = 0;
  int __xlx_offset_byte_param_v3_4 = 0*4;
  // Collect __xlx_v3_5__tmp_vec
std::vector<Byte<4>> __xlx_v3_5__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_v3_5__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_5)[i]);
}
  int __xlx_size_param_v3_5 = 256;
  int __xlx_offset_param_v3_5 = 0;
  int __xlx_offset_byte_param_v3_5 = 0*4;
  // Collect __xlx_v3_6__tmp_vec
std::vector<Byte<4>> __xlx_v3_6__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_v3_6__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_6)[i]);
}
  int __xlx_size_param_v3_6 = 256;
  int __xlx_offset_param_v3_6 = 0;
  int __xlx_offset_byte_param_v3_6 = 0*4;
  // Collect __xlx_v3_7__tmp_vec
std::vector<Byte<4>> __xlx_v3_7__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_v3_7__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_7)[i]);
}
  int __xlx_size_param_v3_7 = 256;
  int __xlx_offset_param_v3_7 = 0;
  int __xlx_offset_byte_param_v3_7 = 0*4;
  // Collect __xlx_v3_8__tmp_vec
std::vector<Byte<4>> __xlx_v3_8__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_v3_8__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_8)[i]);
}
  int __xlx_size_param_v3_8 = 256;
  int __xlx_offset_param_v3_8 = 0;
  int __xlx_offset_byte_param_v3_8 = 0*4;
  // Collect __xlx_v3_9__tmp_vec
std::vector<Byte<4>> __xlx_v3_9__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_v3_9__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_9)[i]);
}
  int __xlx_size_param_v3_9 = 256;
  int __xlx_offset_param_v3_9 = 0;
  int __xlx_offset_byte_param_v3_9 = 0*4;
  // Collect __xlx_v3_10__tmp_vec
std::vector<Byte<4>> __xlx_v3_10__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_v3_10__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_10)[i]);
}
  int __xlx_size_param_v3_10 = 256;
  int __xlx_offset_param_v3_10 = 0;
  int __xlx_offset_byte_param_v3_10 = 0*4;
  // Collect __xlx_v3_11__tmp_vec
std::vector<Byte<4>> __xlx_v3_11__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_v3_11__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_11)[i]);
}
  int __xlx_size_param_v3_11 = 256;
  int __xlx_offset_param_v3_11 = 0;
  int __xlx_offset_byte_param_v3_11 = 0*4;
  // Collect __xlx_v3_12__tmp_vec
std::vector<Byte<4>> __xlx_v3_12__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_v3_12__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_12)[i]);
}
  int __xlx_size_param_v3_12 = 256;
  int __xlx_offset_param_v3_12 = 0;
  int __xlx_offset_byte_param_v3_12 = 0*4;
  // Collect __xlx_v3_13__tmp_vec
std::vector<Byte<4>> __xlx_v3_13__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_v3_13__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_13)[i]);
}
  int __xlx_size_param_v3_13 = 256;
  int __xlx_offset_param_v3_13 = 0;
  int __xlx_offset_byte_param_v3_13 = 0*4;
  // Collect __xlx_v3_14__tmp_vec
std::vector<Byte<4>> __xlx_v3_14__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_v3_14__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_14)[i]);
}
  int __xlx_size_param_v3_14 = 256;
  int __xlx_offset_param_v3_14 = 0;
  int __xlx_offset_byte_param_v3_14 = 0*4;
  // Collect __xlx_v3_15__tmp_vec
std::vector<Byte<4>> __xlx_v3_15__tmp_vec;
for (size_t i = 0; i < 256; ++i){
__xlx_v3_15__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_15)[i]);
}
  int __xlx_size_param_v3_15 = 256;
  int __xlx_offset_param_v3_15 = 0;
  int __xlx_offset_byte_param_v3_15 = 0*4;
  // Collect __xlx_v4_0_0__tmp_vec
std::vector<Byte<4>> __xlx_v4_0_0__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_0_0__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_0_0)[i]);
}
  int __xlx_size_param_v4_0_0 = 128;
  int __xlx_offset_param_v4_0_0 = 0;
  int __xlx_offset_byte_param_v4_0_0 = 0*4;
  // Collect __xlx_v4_0_1__tmp_vec
std::vector<Byte<4>> __xlx_v4_0_1__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_0_1__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_0_1)[i]);
}
  int __xlx_size_param_v4_0_1 = 128;
  int __xlx_offset_param_v4_0_1 = 0;
  int __xlx_offset_byte_param_v4_0_1 = 0*4;
  // Collect __xlx_v4_0_2__tmp_vec
std::vector<Byte<4>> __xlx_v4_0_2__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_0_2__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_0_2)[i]);
}
  int __xlx_size_param_v4_0_2 = 128;
  int __xlx_offset_param_v4_0_2 = 0;
  int __xlx_offset_byte_param_v4_0_2 = 0*4;
  // Collect __xlx_v4_0_3__tmp_vec
std::vector<Byte<4>> __xlx_v4_0_3__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_0_3__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_0_3)[i]);
}
  int __xlx_size_param_v4_0_3 = 128;
  int __xlx_offset_param_v4_0_3 = 0;
  int __xlx_offset_byte_param_v4_0_3 = 0*4;
  // Collect __xlx_v4_0_4__tmp_vec
std::vector<Byte<4>> __xlx_v4_0_4__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_0_4__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_0_4)[i]);
}
  int __xlx_size_param_v4_0_4 = 128;
  int __xlx_offset_param_v4_0_4 = 0;
  int __xlx_offset_byte_param_v4_0_4 = 0*4;
  // Collect __xlx_v4_0_5__tmp_vec
std::vector<Byte<4>> __xlx_v4_0_5__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_0_5__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_0_5)[i]);
}
  int __xlx_size_param_v4_0_5 = 128;
  int __xlx_offset_param_v4_0_5 = 0;
  int __xlx_offset_byte_param_v4_0_5 = 0*4;
  // Collect __xlx_v4_0_6__tmp_vec
std::vector<Byte<4>> __xlx_v4_0_6__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_0_6__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_0_6)[i]);
}
  int __xlx_size_param_v4_0_6 = 128;
  int __xlx_offset_param_v4_0_6 = 0;
  int __xlx_offset_byte_param_v4_0_6 = 0*4;
  // Collect __xlx_v4_0_7__tmp_vec
std::vector<Byte<4>> __xlx_v4_0_7__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_0_7__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_0_7)[i]);
}
  int __xlx_size_param_v4_0_7 = 128;
  int __xlx_offset_param_v4_0_7 = 0;
  int __xlx_offset_byte_param_v4_0_7 = 0*4;
  // Collect __xlx_v4_0_8__tmp_vec
std::vector<Byte<4>> __xlx_v4_0_8__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_0_8__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_0_8)[i]);
}
  int __xlx_size_param_v4_0_8 = 128;
  int __xlx_offset_param_v4_0_8 = 0;
  int __xlx_offset_byte_param_v4_0_8 = 0*4;
  // Collect __xlx_v4_0_9__tmp_vec
std::vector<Byte<4>> __xlx_v4_0_9__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_0_9__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_0_9)[i]);
}
  int __xlx_size_param_v4_0_9 = 128;
  int __xlx_offset_param_v4_0_9 = 0;
  int __xlx_offset_byte_param_v4_0_9 = 0*4;
  // Collect __xlx_v4_0_10__tmp_vec
std::vector<Byte<4>> __xlx_v4_0_10__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_0_10__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_0_10)[i]);
}
  int __xlx_size_param_v4_0_10 = 128;
  int __xlx_offset_param_v4_0_10 = 0;
  int __xlx_offset_byte_param_v4_0_10 = 0*4;
  // Collect __xlx_v4_0_11__tmp_vec
std::vector<Byte<4>> __xlx_v4_0_11__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_0_11__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_0_11)[i]);
}
  int __xlx_size_param_v4_0_11 = 128;
  int __xlx_offset_param_v4_0_11 = 0;
  int __xlx_offset_byte_param_v4_0_11 = 0*4;
  // Collect __xlx_v4_0_12__tmp_vec
std::vector<Byte<4>> __xlx_v4_0_12__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_0_12__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_0_12)[i]);
}
  int __xlx_size_param_v4_0_12 = 128;
  int __xlx_offset_param_v4_0_12 = 0;
  int __xlx_offset_byte_param_v4_0_12 = 0*4;
  // Collect __xlx_v4_0_13__tmp_vec
std::vector<Byte<4>> __xlx_v4_0_13__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_0_13__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_0_13)[i]);
}
  int __xlx_size_param_v4_0_13 = 128;
  int __xlx_offset_param_v4_0_13 = 0;
  int __xlx_offset_byte_param_v4_0_13 = 0*4;
  // Collect __xlx_v4_0_14__tmp_vec
std::vector<Byte<4>> __xlx_v4_0_14__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_0_14__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_0_14)[i]);
}
  int __xlx_size_param_v4_0_14 = 128;
  int __xlx_offset_param_v4_0_14 = 0;
  int __xlx_offset_byte_param_v4_0_14 = 0*4;
  // Collect __xlx_v4_0_15__tmp_vec
std::vector<Byte<4>> __xlx_v4_0_15__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_0_15__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_0_15)[i]);
}
  int __xlx_size_param_v4_0_15 = 128;
  int __xlx_offset_param_v4_0_15 = 0;
  int __xlx_offset_byte_param_v4_0_15 = 0*4;
  // Collect __xlx_v4_1_0__tmp_vec
std::vector<Byte<4>> __xlx_v4_1_0__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_1_0__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_1_0)[i]);
}
  int __xlx_size_param_v4_1_0 = 128;
  int __xlx_offset_param_v4_1_0 = 0;
  int __xlx_offset_byte_param_v4_1_0 = 0*4;
  // Collect __xlx_v4_1_1__tmp_vec
std::vector<Byte<4>> __xlx_v4_1_1__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_1_1__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_1_1)[i]);
}
  int __xlx_size_param_v4_1_1 = 128;
  int __xlx_offset_param_v4_1_1 = 0;
  int __xlx_offset_byte_param_v4_1_1 = 0*4;
  // Collect __xlx_v4_1_2__tmp_vec
std::vector<Byte<4>> __xlx_v4_1_2__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_1_2__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_1_2)[i]);
}
  int __xlx_size_param_v4_1_2 = 128;
  int __xlx_offset_param_v4_1_2 = 0;
  int __xlx_offset_byte_param_v4_1_2 = 0*4;
  // Collect __xlx_v4_1_3__tmp_vec
std::vector<Byte<4>> __xlx_v4_1_3__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_1_3__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_1_3)[i]);
}
  int __xlx_size_param_v4_1_3 = 128;
  int __xlx_offset_param_v4_1_3 = 0;
  int __xlx_offset_byte_param_v4_1_3 = 0*4;
  // Collect __xlx_v4_1_4__tmp_vec
std::vector<Byte<4>> __xlx_v4_1_4__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_1_4__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_1_4)[i]);
}
  int __xlx_size_param_v4_1_4 = 128;
  int __xlx_offset_param_v4_1_4 = 0;
  int __xlx_offset_byte_param_v4_1_4 = 0*4;
  // Collect __xlx_v4_1_5__tmp_vec
std::vector<Byte<4>> __xlx_v4_1_5__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_1_5__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_1_5)[i]);
}
  int __xlx_size_param_v4_1_5 = 128;
  int __xlx_offset_param_v4_1_5 = 0;
  int __xlx_offset_byte_param_v4_1_5 = 0*4;
  // Collect __xlx_v4_1_6__tmp_vec
std::vector<Byte<4>> __xlx_v4_1_6__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_1_6__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_1_6)[i]);
}
  int __xlx_size_param_v4_1_6 = 128;
  int __xlx_offset_param_v4_1_6 = 0;
  int __xlx_offset_byte_param_v4_1_6 = 0*4;
  // Collect __xlx_v4_1_7__tmp_vec
std::vector<Byte<4>> __xlx_v4_1_7__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_1_7__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_1_7)[i]);
}
  int __xlx_size_param_v4_1_7 = 128;
  int __xlx_offset_param_v4_1_7 = 0;
  int __xlx_offset_byte_param_v4_1_7 = 0*4;
  // Collect __xlx_v4_1_8__tmp_vec
std::vector<Byte<4>> __xlx_v4_1_8__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_1_8__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_1_8)[i]);
}
  int __xlx_size_param_v4_1_8 = 128;
  int __xlx_offset_param_v4_1_8 = 0;
  int __xlx_offset_byte_param_v4_1_8 = 0*4;
  // Collect __xlx_v4_1_9__tmp_vec
std::vector<Byte<4>> __xlx_v4_1_9__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_1_9__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_1_9)[i]);
}
  int __xlx_size_param_v4_1_9 = 128;
  int __xlx_offset_param_v4_1_9 = 0;
  int __xlx_offset_byte_param_v4_1_9 = 0*4;
  // Collect __xlx_v4_1_10__tmp_vec
std::vector<Byte<4>> __xlx_v4_1_10__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_1_10__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_1_10)[i]);
}
  int __xlx_size_param_v4_1_10 = 128;
  int __xlx_offset_param_v4_1_10 = 0;
  int __xlx_offset_byte_param_v4_1_10 = 0*4;
  // Collect __xlx_v4_1_11__tmp_vec
std::vector<Byte<4>> __xlx_v4_1_11__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_1_11__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_1_11)[i]);
}
  int __xlx_size_param_v4_1_11 = 128;
  int __xlx_offset_param_v4_1_11 = 0;
  int __xlx_offset_byte_param_v4_1_11 = 0*4;
  // Collect __xlx_v4_1_12__tmp_vec
std::vector<Byte<4>> __xlx_v4_1_12__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_1_12__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_1_12)[i]);
}
  int __xlx_size_param_v4_1_12 = 128;
  int __xlx_offset_param_v4_1_12 = 0;
  int __xlx_offset_byte_param_v4_1_12 = 0*4;
  // Collect __xlx_v4_1_13__tmp_vec
std::vector<Byte<4>> __xlx_v4_1_13__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_1_13__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_1_13)[i]);
}
  int __xlx_size_param_v4_1_13 = 128;
  int __xlx_offset_param_v4_1_13 = 0;
  int __xlx_offset_byte_param_v4_1_13 = 0*4;
  // Collect __xlx_v4_1_14__tmp_vec
std::vector<Byte<4>> __xlx_v4_1_14__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_1_14__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_1_14)[i]);
}
  int __xlx_size_param_v4_1_14 = 128;
  int __xlx_offset_param_v4_1_14 = 0;
  int __xlx_offset_byte_param_v4_1_14 = 0*4;
  // Collect __xlx_v4_1_15__tmp_vec
std::vector<Byte<4>> __xlx_v4_1_15__tmp_vec;
for (size_t i = 0; i < 128; ++i){
__xlx_v4_1_15__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_1_15)[i]);
}
  int __xlx_size_param_v4_1_15 = 128;
  int __xlx_offset_param_v4_1_15 = 0;
  int __xlx_offset_byte_param_v4_1_15 = 0*4;
  // DUT call
  test_gemm_64(__xlx_apatb_param_v0, __xlx_apatb_param_v1, __xlx_v2_0__tmp_vec.data(), __xlx_v2_1__tmp_vec.data(), __xlx_v3_0__tmp_vec.data(), __xlx_v3_1__tmp_vec.data(), __xlx_v3_2__tmp_vec.data(), __xlx_v3_3__tmp_vec.data(), __xlx_v3_4__tmp_vec.data(), __xlx_v3_5__tmp_vec.data(), __xlx_v3_6__tmp_vec.data(), __xlx_v3_7__tmp_vec.data(), __xlx_v3_8__tmp_vec.data(), __xlx_v3_9__tmp_vec.data(), __xlx_v3_10__tmp_vec.data(), __xlx_v3_11__tmp_vec.data(), __xlx_v3_12__tmp_vec.data(), __xlx_v3_13__tmp_vec.data(), __xlx_v3_14__tmp_vec.data(), __xlx_v3_15__tmp_vec.data(), __xlx_v4_0_0__tmp_vec.data(), __xlx_v4_0_1__tmp_vec.data(), __xlx_v4_0_2__tmp_vec.data(), __xlx_v4_0_3__tmp_vec.data(), __xlx_v4_0_4__tmp_vec.data(), __xlx_v4_0_5__tmp_vec.data(), __xlx_v4_0_6__tmp_vec.data(), __xlx_v4_0_7__tmp_vec.data(), __xlx_v4_0_8__tmp_vec.data(), __xlx_v4_0_9__tmp_vec.data(), __xlx_v4_0_10__tmp_vec.data(), __xlx_v4_0_11__tmp_vec.data(), __xlx_v4_0_12__tmp_vec.data(), __xlx_v4_0_13__tmp_vec.data(), __xlx_v4_0_14__tmp_vec.data(), __xlx_v4_0_15__tmp_vec.data(), __xlx_v4_1_0__tmp_vec.data(), __xlx_v4_1_1__tmp_vec.data(), __xlx_v4_1_2__tmp_vec.data(), __xlx_v4_1_3__tmp_vec.data(), __xlx_v4_1_4__tmp_vec.data(), __xlx_v4_1_5__tmp_vec.data(), __xlx_v4_1_6__tmp_vec.data(), __xlx_v4_1_7__tmp_vec.data(), __xlx_v4_1_8__tmp_vec.data(), __xlx_v4_1_9__tmp_vec.data(), __xlx_v4_1_10__tmp_vec.data(), __xlx_v4_1_11__tmp_vec.data(), __xlx_v4_1_12__tmp_vec.data(), __xlx_v4_1_13__tmp_vec.data(), __xlx_v4_1_14__tmp_vec.data(), __xlx_v4_1_15__tmp_vec.data());
// print __xlx_apatb_param_v2_0
for (size_t i = 0; i < __xlx_size_param_v2_0; ++i) {
((Byte<4>*)__xlx_apatb_param_v2_0)[i] = __xlx_v2_0__tmp_vec[__xlx_offset_param_v2_0+i];
}
// print __xlx_apatb_param_v2_1
for (size_t i = 0; i < __xlx_size_param_v2_1; ++i) {
((Byte<4>*)__xlx_apatb_param_v2_1)[i] = __xlx_v2_1__tmp_vec[__xlx_offset_param_v2_1+i];
}
// print __xlx_apatb_param_v3_0
for (size_t i = 0; i < __xlx_size_param_v3_0; ++i) {
((Byte<4>*)__xlx_apatb_param_v3_0)[i] = __xlx_v3_0__tmp_vec[__xlx_offset_param_v3_0+i];
}
// print __xlx_apatb_param_v3_1
for (size_t i = 0; i < __xlx_size_param_v3_1; ++i) {
((Byte<4>*)__xlx_apatb_param_v3_1)[i] = __xlx_v3_1__tmp_vec[__xlx_offset_param_v3_1+i];
}
// print __xlx_apatb_param_v3_2
for (size_t i = 0; i < __xlx_size_param_v3_2; ++i) {
((Byte<4>*)__xlx_apatb_param_v3_2)[i] = __xlx_v3_2__tmp_vec[__xlx_offset_param_v3_2+i];
}
// print __xlx_apatb_param_v3_3
for (size_t i = 0; i < __xlx_size_param_v3_3; ++i) {
((Byte<4>*)__xlx_apatb_param_v3_3)[i] = __xlx_v3_3__tmp_vec[__xlx_offset_param_v3_3+i];
}
// print __xlx_apatb_param_v3_4
for (size_t i = 0; i < __xlx_size_param_v3_4; ++i) {
((Byte<4>*)__xlx_apatb_param_v3_4)[i] = __xlx_v3_4__tmp_vec[__xlx_offset_param_v3_4+i];
}
// print __xlx_apatb_param_v3_5
for (size_t i = 0; i < __xlx_size_param_v3_5; ++i) {
((Byte<4>*)__xlx_apatb_param_v3_5)[i] = __xlx_v3_5__tmp_vec[__xlx_offset_param_v3_5+i];
}
// print __xlx_apatb_param_v3_6
for (size_t i = 0; i < __xlx_size_param_v3_6; ++i) {
((Byte<4>*)__xlx_apatb_param_v3_6)[i] = __xlx_v3_6__tmp_vec[__xlx_offset_param_v3_6+i];
}
// print __xlx_apatb_param_v3_7
for (size_t i = 0; i < __xlx_size_param_v3_7; ++i) {
((Byte<4>*)__xlx_apatb_param_v3_7)[i] = __xlx_v3_7__tmp_vec[__xlx_offset_param_v3_7+i];
}
// print __xlx_apatb_param_v3_8
for (size_t i = 0; i < __xlx_size_param_v3_8; ++i) {
((Byte<4>*)__xlx_apatb_param_v3_8)[i] = __xlx_v3_8__tmp_vec[__xlx_offset_param_v3_8+i];
}
// print __xlx_apatb_param_v3_9
for (size_t i = 0; i < __xlx_size_param_v3_9; ++i) {
((Byte<4>*)__xlx_apatb_param_v3_9)[i] = __xlx_v3_9__tmp_vec[__xlx_offset_param_v3_9+i];
}
// print __xlx_apatb_param_v3_10
for (size_t i = 0; i < __xlx_size_param_v3_10; ++i) {
((Byte<4>*)__xlx_apatb_param_v3_10)[i] = __xlx_v3_10__tmp_vec[__xlx_offset_param_v3_10+i];
}
// print __xlx_apatb_param_v3_11
for (size_t i = 0; i < __xlx_size_param_v3_11; ++i) {
((Byte<4>*)__xlx_apatb_param_v3_11)[i] = __xlx_v3_11__tmp_vec[__xlx_offset_param_v3_11+i];
}
// print __xlx_apatb_param_v3_12
for (size_t i = 0; i < __xlx_size_param_v3_12; ++i) {
((Byte<4>*)__xlx_apatb_param_v3_12)[i] = __xlx_v3_12__tmp_vec[__xlx_offset_param_v3_12+i];
}
// print __xlx_apatb_param_v3_13
for (size_t i = 0; i < __xlx_size_param_v3_13; ++i) {
((Byte<4>*)__xlx_apatb_param_v3_13)[i] = __xlx_v3_13__tmp_vec[__xlx_offset_param_v3_13+i];
}
// print __xlx_apatb_param_v3_14
for (size_t i = 0; i < __xlx_size_param_v3_14; ++i) {
((Byte<4>*)__xlx_apatb_param_v3_14)[i] = __xlx_v3_14__tmp_vec[__xlx_offset_param_v3_14+i];
}
// print __xlx_apatb_param_v3_15
for (size_t i = 0; i < __xlx_size_param_v3_15; ++i) {
((Byte<4>*)__xlx_apatb_param_v3_15)[i] = __xlx_v3_15__tmp_vec[__xlx_offset_param_v3_15+i];
}
// print __xlx_apatb_param_v4_0_0
for (size_t i = 0; i < __xlx_size_param_v4_0_0; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_0_0)[i] = __xlx_v4_0_0__tmp_vec[__xlx_offset_param_v4_0_0+i];
}
// print __xlx_apatb_param_v4_0_1
for (size_t i = 0; i < __xlx_size_param_v4_0_1; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_0_1)[i] = __xlx_v4_0_1__tmp_vec[__xlx_offset_param_v4_0_1+i];
}
// print __xlx_apatb_param_v4_0_2
for (size_t i = 0; i < __xlx_size_param_v4_0_2; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_0_2)[i] = __xlx_v4_0_2__tmp_vec[__xlx_offset_param_v4_0_2+i];
}
// print __xlx_apatb_param_v4_0_3
for (size_t i = 0; i < __xlx_size_param_v4_0_3; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_0_3)[i] = __xlx_v4_0_3__tmp_vec[__xlx_offset_param_v4_0_3+i];
}
// print __xlx_apatb_param_v4_0_4
for (size_t i = 0; i < __xlx_size_param_v4_0_4; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_0_4)[i] = __xlx_v4_0_4__tmp_vec[__xlx_offset_param_v4_0_4+i];
}
// print __xlx_apatb_param_v4_0_5
for (size_t i = 0; i < __xlx_size_param_v4_0_5; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_0_5)[i] = __xlx_v4_0_5__tmp_vec[__xlx_offset_param_v4_0_5+i];
}
// print __xlx_apatb_param_v4_0_6
for (size_t i = 0; i < __xlx_size_param_v4_0_6; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_0_6)[i] = __xlx_v4_0_6__tmp_vec[__xlx_offset_param_v4_0_6+i];
}
// print __xlx_apatb_param_v4_0_7
for (size_t i = 0; i < __xlx_size_param_v4_0_7; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_0_7)[i] = __xlx_v4_0_7__tmp_vec[__xlx_offset_param_v4_0_7+i];
}
// print __xlx_apatb_param_v4_0_8
for (size_t i = 0; i < __xlx_size_param_v4_0_8; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_0_8)[i] = __xlx_v4_0_8__tmp_vec[__xlx_offset_param_v4_0_8+i];
}
// print __xlx_apatb_param_v4_0_9
for (size_t i = 0; i < __xlx_size_param_v4_0_9; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_0_9)[i] = __xlx_v4_0_9__tmp_vec[__xlx_offset_param_v4_0_9+i];
}
// print __xlx_apatb_param_v4_0_10
for (size_t i = 0; i < __xlx_size_param_v4_0_10; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_0_10)[i] = __xlx_v4_0_10__tmp_vec[__xlx_offset_param_v4_0_10+i];
}
// print __xlx_apatb_param_v4_0_11
for (size_t i = 0; i < __xlx_size_param_v4_0_11; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_0_11)[i] = __xlx_v4_0_11__tmp_vec[__xlx_offset_param_v4_0_11+i];
}
// print __xlx_apatb_param_v4_0_12
for (size_t i = 0; i < __xlx_size_param_v4_0_12; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_0_12)[i] = __xlx_v4_0_12__tmp_vec[__xlx_offset_param_v4_0_12+i];
}
// print __xlx_apatb_param_v4_0_13
for (size_t i = 0; i < __xlx_size_param_v4_0_13; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_0_13)[i] = __xlx_v4_0_13__tmp_vec[__xlx_offset_param_v4_0_13+i];
}
// print __xlx_apatb_param_v4_0_14
for (size_t i = 0; i < __xlx_size_param_v4_0_14; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_0_14)[i] = __xlx_v4_0_14__tmp_vec[__xlx_offset_param_v4_0_14+i];
}
// print __xlx_apatb_param_v4_0_15
for (size_t i = 0; i < __xlx_size_param_v4_0_15; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_0_15)[i] = __xlx_v4_0_15__tmp_vec[__xlx_offset_param_v4_0_15+i];
}
// print __xlx_apatb_param_v4_1_0
for (size_t i = 0; i < __xlx_size_param_v4_1_0; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_1_0)[i] = __xlx_v4_1_0__tmp_vec[__xlx_offset_param_v4_1_0+i];
}
// print __xlx_apatb_param_v4_1_1
for (size_t i = 0; i < __xlx_size_param_v4_1_1; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_1_1)[i] = __xlx_v4_1_1__tmp_vec[__xlx_offset_param_v4_1_1+i];
}
// print __xlx_apatb_param_v4_1_2
for (size_t i = 0; i < __xlx_size_param_v4_1_2; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_1_2)[i] = __xlx_v4_1_2__tmp_vec[__xlx_offset_param_v4_1_2+i];
}
// print __xlx_apatb_param_v4_1_3
for (size_t i = 0; i < __xlx_size_param_v4_1_3; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_1_3)[i] = __xlx_v4_1_3__tmp_vec[__xlx_offset_param_v4_1_3+i];
}
// print __xlx_apatb_param_v4_1_4
for (size_t i = 0; i < __xlx_size_param_v4_1_4; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_1_4)[i] = __xlx_v4_1_4__tmp_vec[__xlx_offset_param_v4_1_4+i];
}
// print __xlx_apatb_param_v4_1_5
for (size_t i = 0; i < __xlx_size_param_v4_1_5; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_1_5)[i] = __xlx_v4_1_5__tmp_vec[__xlx_offset_param_v4_1_5+i];
}
// print __xlx_apatb_param_v4_1_6
for (size_t i = 0; i < __xlx_size_param_v4_1_6; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_1_6)[i] = __xlx_v4_1_6__tmp_vec[__xlx_offset_param_v4_1_6+i];
}
// print __xlx_apatb_param_v4_1_7
for (size_t i = 0; i < __xlx_size_param_v4_1_7; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_1_7)[i] = __xlx_v4_1_7__tmp_vec[__xlx_offset_param_v4_1_7+i];
}
// print __xlx_apatb_param_v4_1_8
for (size_t i = 0; i < __xlx_size_param_v4_1_8; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_1_8)[i] = __xlx_v4_1_8__tmp_vec[__xlx_offset_param_v4_1_8+i];
}
// print __xlx_apatb_param_v4_1_9
for (size_t i = 0; i < __xlx_size_param_v4_1_9; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_1_9)[i] = __xlx_v4_1_9__tmp_vec[__xlx_offset_param_v4_1_9+i];
}
// print __xlx_apatb_param_v4_1_10
for (size_t i = 0; i < __xlx_size_param_v4_1_10; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_1_10)[i] = __xlx_v4_1_10__tmp_vec[__xlx_offset_param_v4_1_10+i];
}
// print __xlx_apatb_param_v4_1_11
for (size_t i = 0; i < __xlx_size_param_v4_1_11; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_1_11)[i] = __xlx_v4_1_11__tmp_vec[__xlx_offset_param_v4_1_11+i];
}
// print __xlx_apatb_param_v4_1_12
for (size_t i = 0; i < __xlx_size_param_v4_1_12; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_1_12)[i] = __xlx_v4_1_12__tmp_vec[__xlx_offset_param_v4_1_12+i];
}
// print __xlx_apatb_param_v4_1_13
for (size_t i = 0; i < __xlx_size_param_v4_1_13; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_1_13)[i] = __xlx_v4_1_13__tmp_vec[__xlx_offset_param_v4_1_13+i];
}
// print __xlx_apatb_param_v4_1_14
for (size_t i = 0; i < __xlx_size_param_v4_1_14; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_1_14)[i] = __xlx_v4_1_14__tmp_vec[__xlx_offset_param_v4_1_14+i];
}
// print __xlx_apatb_param_v4_1_15
for (size_t i = 0; i < __xlx_size_param_v4_1_15; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_1_15)[i] = __xlx_v4_1_15__tmp_vec[__xlx_offset_param_v4_1_15+i];
}
}
