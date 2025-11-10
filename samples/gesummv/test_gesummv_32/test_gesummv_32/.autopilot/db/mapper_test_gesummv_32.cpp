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
extern "C" void test_gesummv_32(float, float, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*, Byte<4>*);
extern "C" void apatb_test_gesummv_32_hw(float __xlx_apatb_param_v0, float __xlx_apatb_param_v1, volatile void * __xlx_apatb_param_v2_0, volatile void * __xlx_apatb_param_v2_1, volatile void * __xlx_apatb_param_v2_2, volatile void * __xlx_apatb_param_v2_3, volatile void * __xlx_apatb_param_v2_4, volatile void * __xlx_apatb_param_v2_5, volatile void * __xlx_apatb_param_v2_6, volatile void * __xlx_apatb_param_v2_7, volatile void * __xlx_apatb_param_v2_8, volatile void * __xlx_apatb_param_v2_9, volatile void * __xlx_apatb_param_v2_10, volatile void * __xlx_apatb_param_v2_11, volatile void * __xlx_apatb_param_v2_12, volatile void * __xlx_apatb_param_v2_13, volatile void * __xlx_apatb_param_v2_14, volatile void * __xlx_apatb_param_v2_15, volatile void * __xlx_apatb_param_v3_0, volatile void * __xlx_apatb_param_v3_1, volatile void * __xlx_apatb_param_v3_2, volatile void * __xlx_apatb_param_v3_3, volatile void * __xlx_apatb_param_v3_4, volatile void * __xlx_apatb_param_v3_5, volatile void * __xlx_apatb_param_v3_6, volatile void * __xlx_apatb_param_v3_7, volatile void * __xlx_apatb_param_v3_8, volatile void * __xlx_apatb_param_v3_9, volatile void * __xlx_apatb_param_v3_10, volatile void * __xlx_apatb_param_v3_11, volatile void * __xlx_apatb_param_v3_12, volatile void * __xlx_apatb_param_v3_13, volatile void * __xlx_apatb_param_v3_14, volatile void * __xlx_apatb_param_v3_15, volatile void * __xlx_apatb_param_v4_0, volatile void * __xlx_apatb_param_v4_1, volatile void * __xlx_apatb_param_v4_2, volatile void * __xlx_apatb_param_v4_3, volatile void * __xlx_apatb_param_v4_4, volatile void * __xlx_apatb_param_v4_5, volatile void * __xlx_apatb_param_v4_6, volatile void * __xlx_apatb_param_v4_7, volatile void * __xlx_apatb_param_v4_8, volatile void * __xlx_apatb_param_v4_9, volatile void * __xlx_apatb_param_v4_10, volatile void * __xlx_apatb_param_v4_11, volatile void * __xlx_apatb_param_v4_12, volatile void * __xlx_apatb_param_v4_13, volatile void * __xlx_apatb_param_v4_14, volatile void * __xlx_apatb_param_v4_15, volatile void * __xlx_apatb_param_v5, volatile void * __xlx_apatb_param_v6_0, volatile void * __xlx_apatb_param_v6_1, volatile void * __xlx_apatb_param_v6_2, volatile void * __xlx_apatb_param_v6_3, volatile void * __xlx_apatb_param_v6_4, volatile void * __xlx_apatb_param_v6_5, volatile void * __xlx_apatb_param_v6_6, volatile void * __xlx_apatb_param_v6_7, volatile void * __xlx_apatb_param_v6_8, volatile void * __xlx_apatb_param_v6_9, volatile void * __xlx_apatb_param_v6_10, volatile void * __xlx_apatb_param_v6_11, volatile void * __xlx_apatb_param_v6_12, volatile void * __xlx_apatb_param_v6_13, volatile void * __xlx_apatb_param_v6_14, volatile void * __xlx_apatb_param_v6_15) {
using hls::sim::createStream;
  // Collect __xlx_v2_0__tmp_vec
std::vector<Byte<4>> __xlx_v2_0__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v2_0__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v2_0)[i]);
}
  int __xlx_size_param_v2_0 = 64;
  int __xlx_offset_param_v2_0 = 0;
  int __xlx_offset_byte_param_v2_0 = 0*4;
  // Collect __xlx_v2_1__tmp_vec
std::vector<Byte<4>> __xlx_v2_1__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v2_1__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v2_1)[i]);
}
  int __xlx_size_param_v2_1 = 64;
  int __xlx_offset_param_v2_1 = 0;
  int __xlx_offset_byte_param_v2_1 = 0*4;
  // Collect __xlx_v2_2__tmp_vec
std::vector<Byte<4>> __xlx_v2_2__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v2_2__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v2_2)[i]);
}
  int __xlx_size_param_v2_2 = 64;
  int __xlx_offset_param_v2_2 = 0;
  int __xlx_offset_byte_param_v2_2 = 0*4;
  // Collect __xlx_v2_3__tmp_vec
std::vector<Byte<4>> __xlx_v2_3__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v2_3__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v2_3)[i]);
}
  int __xlx_size_param_v2_3 = 64;
  int __xlx_offset_param_v2_3 = 0;
  int __xlx_offset_byte_param_v2_3 = 0*4;
  // Collect __xlx_v2_4__tmp_vec
std::vector<Byte<4>> __xlx_v2_4__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v2_4__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v2_4)[i]);
}
  int __xlx_size_param_v2_4 = 64;
  int __xlx_offset_param_v2_4 = 0;
  int __xlx_offset_byte_param_v2_4 = 0*4;
  // Collect __xlx_v2_5__tmp_vec
std::vector<Byte<4>> __xlx_v2_5__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v2_5__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v2_5)[i]);
}
  int __xlx_size_param_v2_5 = 64;
  int __xlx_offset_param_v2_5 = 0;
  int __xlx_offset_byte_param_v2_5 = 0*4;
  // Collect __xlx_v2_6__tmp_vec
std::vector<Byte<4>> __xlx_v2_6__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v2_6__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v2_6)[i]);
}
  int __xlx_size_param_v2_6 = 64;
  int __xlx_offset_param_v2_6 = 0;
  int __xlx_offset_byte_param_v2_6 = 0*4;
  // Collect __xlx_v2_7__tmp_vec
std::vector<Byte<4>> __xlx_v2_7__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v2_7__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v2_7)[i]);
}
  int __xlx_size_param_v2_7 = 64;
  int __xlx_offset_param_v2_7 = 0;
  int __xlx_offset_byte_param_v2_7 = 0*4;
  // Collect __xlx_v2_8__tmp_vec
std::vector<Byte<4>> __xlx_v2_8__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v2_8__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v2_8)[i]);
}
  int __xlx_size_param_v2_8 = 64;
  int __xlx_offset_param_v2_8 = 0;
  int __xlx_offset_byte_param_v2_8 = 0*4;
  // Collect __xlx_v2_9__tmp_vec
std::vector<Byte<4>> __xlx_v2_9__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v2_9__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v2_9)[i]);
}
  int __xlx_size_param_v2_9 = 64;
  int __xlx_offset_param_v2_9 = 0;
  int __xlx_offset_byte_param_v2_9 = 0*4;
  // Collect __xlx_v2_10__tmp_vec
std::vector<Byte<4>> __xlx_v2_10__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v2_10__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v2_10)[i]);
}
  int __xlx_size_param_v2_10 = 64;
  int __xlx_offset_param_v2_10 = 0;
  int __xlx_offset_byte_param_v2_10 = 0*4;
  // Collect __xlx_v2_11__tmp_vec
std::vector<Byte<4>> __xlx_v2_11__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v2_11__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v2_11)[i]);
}
  int __xlx_size_param_v2_11 = 64;
  int __xlx_offset_param_v2_11 = 0;
  int __xlx_offset_byte_param_v2_11 = 0*4;
  // Collect __xlx_v2_12__tmp_vec
std::vector<Byte<4>> __xlx_v2_12__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v2_12__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v2_12)[i]);
}
  int __xlx_size_param_v2_12 = 64;
  int __xlx_offset_param_v2_12 = 0;
  int __xlx_offset_byte_param_v2_12 = 0*4;
  // Collect __xlx_v2_13__tmp_vec
std::vector<Byte<4>> __xlx_v2_13__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v2_13__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v2_13)[i]);
}
  int __xlx_size_param_v2_13 = 64;
  int __xlx_offset_param_v2_13 = 0;
  int __xlx_offset_byte_param_v2_13 = 0*4;
  // Collect __xlx_v2_14__tmp_vec
std::vector<Byte<4>> __xlx_v2_14__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v2_14__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v2_14)[i]);
}
  int __xlx_size_param_v2_14 = 64;
  int __xlx_offset_param_v2_14 = 0;
  int __xlx_offset_byte_param_v2_14 = 0*4;
  // Collect __xlx_v2_15__tmp_vec
std::vector<Byte<4>> __xlx_v2_15__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v2_15__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v2_15)[i]);
}
  int __xlx_size_param_v2_15 = 64;
  int __xlx_offset_param_v2_15 = 0;
  int __xlx_offset_byte_param_v2_15 = 0*4;
  // Collect __xlx_v3_0__tmp_vec
std::vector<Byte<4>> __xlx_v3_0__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v3_0__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_0)[i]);
}
  int __xlx_size_param_v3_0 = 64;
  int __xlx_offset_param_v3_0 = 0;
  int __xlx_offset_byte_param_v3_0 = 0*4;
  // Collect __xlx_v3_1__tmp_vec
std::vector<Byte<4>> __xlx_v3_1__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v3_1__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_1)[i]);
}
  int __xlx_size_param_v3_1 = 64;
  int __xlx_offset_param_v3_1 = 0;
  int __xlx_offset_byte_param_v3_1 = 0*4;
  // Collect __xlx_v3_2__tmp_vec
std::vector<Byte<4>> __xlx_v3_2__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v3_2__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_2)[i]);
}
  int __xlx_size_param_v3_2 = 64;
  int __xlx_offset_param_v3_2 = 0;
  int __xlx_offset_byte_param_v3_2 = 0*4;
  // Collect __xlx_v3_3__tmp_vec
std::vector<Byte<4>> __xlx_v3_3__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v3_3__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_3)[i]);
}
  int __xlx_size_param_v3_3 = 64;
  int __xlx_offset_param_v3_3 = 0;
  int __xlx_offset_byte_param_v3_3 = 0*4;
  // Collect __xlx_v3_4__tmp_vec
std::vector<Byte<4>> __xlx_v3_4__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v3_4__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_4)[i]);
}
  int __xlx_size_param_v3_4 = 64;
  int __xlx_offset_param_v3_4 = 0;
  int __xlx_offset_byte_param_v3_4 = 0*4;
  // Collect __xlx_v3_5__tmp_vec
std::vector<Byte<4>> __xlx_v3_5__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v3_5__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_5)[i]);
}
  int __xlx_size_param_v3_5 = 64;
  int __xlx_offset_param_v3_5 = 0;
  int __xlx_offset_byte_param_v3_5 = 0*4;
  // Collect __xlx_v3_6__tmp_vec
std::vector<Byte<4>> __xlx_v3_6__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v3_6__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_6)[i]);
}
  int __xlx_size_param_v3_6 = 64;
  int __xlx_offset_param_v3_6 = 0;
  int __xlx_offset_byte_param_v3_6 = 0*4;
  // Collect __xlx_v3_7__tmp_vec
std::vector<Byte<4>> __xlx_v3_7__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v3_7__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_7)[i]);
}
  int __xlx_size_param_v3_7 = 64;
  int __xlx_offset_param_v3_7 = 0;
  int __xlx_offset_byte_param_v3_7 = 0*4;
  // Collect __xlx_v3_8__tmp_vec
std::vector<Byte<4>> __xlx_v3_8__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v3_8__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_8)[i]);
}
  int __xlx_size_param_v3_8 = 64;
  int __xlx_offset_param_v3_8 = 0;
  int __xlx_offset_byte_param_v3_8 = 0*4;
  // Collect __xlx_v3_9__tmp_vec
std::vector<Byte<4>> __xlx_v3_9__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v3_9__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_9)[i]);
}
  int __xlx_size_param_v3_9 = 64;
  int __xlx_offset_param_v3_9 = 0;
  int __xlx_offset_byte_param_v3_9 = 0*4;
  // Collect __xlx_v3_10__tmp_vec
std::vector<Byte<4>> __xlx_v3_10__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v3_10__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_10)[i]);
}
  int __xlx_size_param_v3_10 = 64;
  int __xlx_offset_param_v3_10 = 0;
  int __xlx_offset_byte_param_v3_10 = 0*4;
  // Collect __xlx_v3_11__tmp_vec
std::vector<Byte<4>> __xlx_v3_11__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v3_11__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_11)[i]);
}
  int __xlx_size_param_v3_11 = 64;
  int __xlx_offset_param_v3_11 = 0;
  int __xlx_offset_byte_param_v3_11 = 0*4;
  // Collect __xlx_v3_12__tmp_vec
std::vector<Byte<4>> __xlx_v3_12__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v3_12__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_12)[i]);
}
  int __xlx_size_param_v3_12 = 64;
  int __xlx_offset_param_v3_12 = 0;
  int __xlx_offset_byte_param_v3_12 = 0*4;
  // Collect __xlx_v3_13__tmp_vec
std::vector<Byte<4>> __xlx_v3_13__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v3_13__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_13)[i]);
}
  int __xlx_size_param_v3_13 = 64;
  int __xlx_offset_param_v3_13 = 0;
  int __xlx_offset_byte_param_v3_13 = 0*4;
  // Collect __xlx_v3_14__tmp_vec
std::vector<Byte<4>> __xlx_v3_14__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v3_14__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_14)[i]);
}
  int __xlx_size_param_v3_14 = 64;
  int __xlx_offset_param_v3_14 = 0;
  int __xlx_offset_byte_param_v3_14 = 0*4;
  // Collect __xlx_v3_15__tmp_vec
std::vector<Byte<4>> __xlx_v3_15__tmp_vec;
for (size_t i = 0; i < 64; ++i){
__xlx_v3_15__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v3_15)[i]);
}
  int __xlx_size_param_v3_15 = 64;
  int __xlx_offset_param_v3_15 = 0;
  int __xlx_offset_byte_param_v3_15 = 0*4;
  // Collect __xlx_v4_0__tmp_vec
std::vector<Byte<4>> __xlx_v4_0__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v4_0__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_0)[i]);
}
  int __xlx_size_param_v4_0 = 2;
  int __xlx_offset_param_v4_0 = 0;
  int __xlx_offset_byte_param_v4_0 = 0*4;
  // Collect __xlx_v4_1__tmp_vec
std::vector<Byte<4>> __xlx_v4_1__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v4_1__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_1)[i]);
}
  int __xlx_size_param_v4_1 = 2;
  int __xlx_offset_param_v4_1 = 0;
  int __xlx_offset_byte_param_v4_1 = 0*4;
  // Collect __xlx_v4_2__tmp_vec
std::vector<Byte<4>> __xlx_v4_2__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v4_2__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_2)[i]);
}
  int __xlx_size_param_v4_2 = 2;
  int __xlx_offset_param_v4_2 = 0;
  int __xlx_offset_byte_param_v4_2 = 0*4;
  // Collect __xlx_v4_3__tmp_vec
std::vector<Byte<4>> __xlx_v4_3__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v4_3__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_3)[i]);
}
  int __xlx_size_param_v4_3 = 2;
  int __xlx_offset_param_v4_3 = 0;
  int __xlx_offset_byte_param_v4_3 = 0*4;
  // Collect __xlx_v4_4__tmp_vec
std::vector<Byte<4>> __xlx_v4_4__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v4_4__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_4)[i]);
}
  int __xlx_size_param_v4_4 = 2;
  int __xlx_offset_param_v4_4 = 0;
  int __xlx_offset_byte_param_v4_4 = 0*4;
  // Collect __xlx_v4_5__tmp_vec
std::vector<Byte<4>> __xlx_v4_5__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v4_5__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_5)[i]);
}
  int __xlx_size_param_v4_5 = 2;
  int __xlx_offset_param_v4_5 = 0;
  int __xlx_offset_byte_param_v4_5 = 0*4;
  // Collect __xlx_v4_6__tmp_vec
std::vector<Byte<4>> __xlx_v4_6__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v4_6__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_6)[i]);
}
  int __xlx_size_param_v4_6 = 2;
  int __xlx_offset_param_v4_6 = 0;
  int __xlx_offset_byte_param_v4_6 = 0*4;
  // Collect __xlx_v4_7__tmp_vec
std::vector<Byte<4>> __xlx_v4_7__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v4_7__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_7)[i]);
}
  int __xlx_size_param_v4_7 = 2;
  int __xlx_offset_param_v4_7 = 0;
  int __xlx_offset_byte_param_v4_7 = 0*4;
  // Collect __xlx_v4_8__tmp_vec
std::vector<Byte<4>> __xlx_v4_8__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v4_8__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_8)[i]);
}
  int __xlx_size_param_v4_8 = 2;
  int __xlx_offset_param_v4_8 = 0;
  int __xlx_offset_byte_param_v4_8 = 0*4;
  // Collect __xlx_v4_9__tmp_vec
std::vector<Byte<4>> __xlx_v4_9__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v4_9__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_9)[i]);
}
  int __xlx_size_param_v4_9 = 2;
  int __xlx_offset_param_v4_9 = 0;
  int __xlx_offset_byte_param_v4_9 = 0*4;
  // Collect __xlx_v4_10__tmp_vec
std::vector<Byte<4>> __xlx_v4_10__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v4_10__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_10)[i]);
}
  int __xlx_size_param_v4_10 = 2;
  int __xlx_offset_param_v4_10 = 0;
  int __xlx_offset_byte_param_v4_10 = 0*4;
  // Collect __xlx_v4_11__tmp_vec
std::vector<Byte<4>> __xlx_v4_11__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v4_11__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_11)[i]);
}
  int __xlx_size_param_v4_11 = 2;
  int __xlx_offset_param_v4_11 = 0;
  int __xlx_offset_byte_param_v4_11 = 0*4;
  // Collect __xlx_v4_12__tmp_vec
std::vector<Byte<4>> __xlx_v4_12__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v4_12__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_12)[i]);
}
  int __xlx_size_param_v4_12 = 2;
  int __xlx_offset_param_v4_12 = 0;
  int __xlx_offset_byte_param_v4_12 = 0*4;
  // Collect __xlx_v4_13__tmp_vec
std::vector<Byte<4>> __xlx_v4_13__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v4_13__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_13)[i]);
}
  int __xlx_size_param_v4_13 = 2;
  int __xlx_offset_param_v4_13 = 0;
  int __xlx_offset_byte_param_v4_13 = 0*4;
  // Collect __xlx_v4_14__tmp_vec
std::vector<Byte<4>> __xlx_v4_14__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v4_14__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_14)[i]);
}
  int __xlx_size_param_v4_14 = 2;
  int __xlx_offset_param_v4_14 = 0;
  int __xlx_offset_byte_param_v4_14 = 0*4;
  // Collect __xlx_v4_15__tmp_vec
std::vector<Byte<4>> __xlx_v4_15__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v4_15__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v4_15)[i]);
}
  int __xlx_size_param_v4_15 = 2;
  int __xlx_offset_param_v4_15 = 0;
  int __xlx_offset_byte_param_v4_15 = 0*4;
  // Collect __xlx_v5__tmp_vec
std::vector<Byte<4>> __xlx_v5__tmp_vec;
for (size_t i = 0; i < 32; ++i){
__xlx_v5__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v5)[i]);
}
  int __xlx_size_param_v5 = 32;
  int __xlx_offset_param_v5 = 0;
  int __xlx_offset_byte_param_v5 = 0*4;
  // Collect __xlx_v6_0__tmp_vec
std::vector<Byte<4>> __xlx_v6_0__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v6_0__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v6_0)[i]);
}
  int __xlx_size_param_v6_0 = 2;
  int __xlx_offset_param_v6_0 = 0;
  int __xlx_offset_byte_param_v6_0 = 0*4;
  // Collect __xlx_v6_1__tmp_vec
std::vector<Byte<4>> __xlx_v6_1__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v6_1__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v6_1)[i]);
}
  int __xlx_size_param_v6_1 = 2;
  int __xlx_offset_param_v6_1 = 0;
  int __xlx_offset_byte_param_v6_1 = 0*4;
  // Collect __xlx_v6_2__tmp_vec
std::vector<Byte<4>> __xlx_v6_2__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v6_2__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v6_2)[i]);
}
  int __xlx_size_param_v6_2 = 2;
  int __xlx_offset_param_v6_2 = 0;
  int __xlx_offset_byte_param_v6_2 = 0*4;
  // Collect __xlx_v6_3__tmp_vec
std::vector<Byte<4>> __xlx_v6_3__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v6_3__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v6_3)[i]);
}
  int __xlx_size_param_v6_3 = 2;
  int __xlx_offset_param_v6_3 = 0;
  int __xlx_offset_byte_param_v6_3 = 0*4;
  // Collect __xlx_v6_4__tmp_vec
std::vector<Byte<4>> __xlx_v6_4__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v6_4__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v6_4)[i]);
}
  int __xlx_size_param_v6_4 = 2;
  int __xlx_offset_param_v6_4 = 0;
  int __xlx_offset_byte_param_v6_4 = 0*4;
  // Collect __xlx_v6_5__tmp_vec
std::vector<Byte<4>> __xlx_v6_5__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v6_5__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v6_5)[i]);
}
  int __xlx_size_param_v6_5 = 2;
  int __xlx_offset_param_v6_5 = 0;
  int __xlx_offset_byte_param_v6_5 = 0*4;
  // Collect __xlx_v6_6__tmp_vec
std::vector<Byte<4>> __xlx_v6_6__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v6_6__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v6_6)[i]);
}
  int __xlx_size_param_v6_6 = 2;
  int __xlx_offset_param_v6_6 = 0;
  int __xlx_offset_byte_param_v6_6 = 0*4;
  // Collect __xlx_v6_7__tmp_vec
std::vector<Byte<4>> __xlx_v6_7__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v6_7__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v6_7)[i]);
}
  int __xlx_size_param_v6_7 = 2;
  int __xlx_offset_param_v6_7 = 0;
  int __xlx_offset_byte_param_v6_7 = 0*4;
  // Collect __xlx_v6_8__tmp_vec
std::vector<Byte<4>> __xlx_v6_8__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v6_8__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v6_8)[i]);
}
  int __xlx_size_param_v6_8 = 2;
  int __xlx_offset_param_v6_8 = 0;
  int __xlx_offset_byte_param_v6_8 = 0*4;
  // Collect __xlx_v6_9__tmp_vec
std::vector<Byte<4>> __xlx_v6_9__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v6_9__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v6_9)[i]);
}
  int __xlx_size_param_v6_9 = 2;
  int __xlx_offset_param_v6_9 = 0;
  int __xlx_offset_byte_param_v6_9 = 0*4;
  // Collect __xlx_v6_10__tmp_vec
std::vector<Byte<4>> __xlx_v6_10__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v6_10__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v6_10)[i]);
}
  int __xlx_size_param_v6_10 = 2;
  int __xlx_offset_param_v6_10 = 0;
  int __xlx_offset_byte_param_v6_10 = 0*4;
  // Collect __xlx_v6_11__tmp_vec
std::vector<Byte<4>> __xlx_v6_11__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v6_11__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v6_11)[i]);
}
  int __xlx_size_param_v6_11 = 2;
  int __xlx_offset_param_v6_11 = 0;
  int __xlx_offset_byte_param_v6_11 = 0*4;
  // Collect __xlx_v6_12__tmp_vec
std::vector<Byte<4>> __xlx_v6_12__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v6_12__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v6_12)[i]);
}
  int __xlx_size_param_v6_12 = 2;
  int __xlx_offset_param_v6_12 = 0;
  int __xlx_offset_byte_param_v6_12 = 0*4;
  // Collect __xlx_v6_13__tmp_vec
std::vector<Byte<4>> __xlx_v6_13__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v6_13__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v6_13)[i]);
}
  int __xlx_size_param_v6_13 = 2;
  int __xlx_offset_param_v6_13 = 0;
  int __xlx_offset_byte_param_v6_13 = 0*4;
  // Collect __xlx_v6_14__tmp_vec
std::vector<Byte<4>> __xlx_v6_14__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v6_14__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v6_14)[i]);
}
  int __xlx_size_param_v6_14 = 2;
  int __xlx_offset_param_v6_14 = 0;
  int __xlx_offset_byte_param_v6_14 = 0*4;
  // Collect __xlx_v6_15__tmp_vec
std::vector<Byte<4>> __xlx_v6_15__tmp_vec;
for (size_t i = 0; i < 2; ++i){
__xlx_v6_15__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_v6_15)[i]);
}
  int __xlx_size_param_v6_15 = 2;
  int __xlx_offset_param_v6_15 = 0;
  int __xlx_offset_byte_param_v6_15 = 0*4;
  // DUT call
  test_gesummv_32(__xlx_apatb_param_v0, __xlx_apatb_param_v1, __xlx_v2_0__tmp_vec.data(), __xlx_v2_1__tmp_vec.data(), __xlx_v2_2__tmp_vec.data(), __xlx_v2_3__tmp_vec.data(), __xlx_v2_4__tmp_vec.data(), __xlx_v2_5__tmp_vec.data(), __xlx_v2_6__tmp_vec.data(), __xlx_v2_7__tmp_vec.data(), __xlx_v2_8__tmp_vec.data(), __xlx_v2_9__tmp_vec.data(), __xlx_v2_10__tmp_vec.data(), __xlx_v2_11__tmp_vec.data(), __xlx_v2_12__tmp_vec.data(), __xlx_v2_13__tmp_vec.data(), __xlx_v2_14__tmp_vec.data(), __xlx_v2_15__tmp_vec.data(), __xlx_v3_0__tmp_vec.data(), __xlx_v3_1__tmp_vec.data(), __xlx_v3_2__tmp_vec.data(), __xlx_v3_3__tmp_vec.data(), __xlx_v3_4__tmp_vec.data(), __xlx_v3_5__tmp_vec.data(), __xlx_v3_6__tmp_vec.data(), __xlx_v3_7__tmp_vec.data(), __xlx_v3_8__tmp_vec.data(), __xlx_v3_9__tmp_vec.data(), __xlx_v3_10__tmp_vec.data(), __xlx_v3_11__tmp_vec.data(), __xlx_v3_12__tmp_vec.data(), __xlx_v3_13__tmp_vec.data(), __xlx_v3_14__tmp_vec.data(), __xlx_v3_15__tmp_vec.data(), __xlx_v4_0__tmp_vec.data(), __xlx_v4_1__tmp_vec.data(), __xlx_v4_2__tmp_vec.data(), __xlx_v4_3__tmp_vec.data(), __xlx_v4_4__tmp_vec.data(), __xlx_v4_5__tmp_vec.data(), __xlx_v4_6__tmp_vec.data(), __xlx_v4_7__tmp_vec.data(), __xlx_v4_8__tmp_vec.data(), __xlx_v4_9__tmp_vec.data(), __xlx_v4_10__tmp_vec.data(), __xlx_v4_11__tmp_vec.data(), __xlx_v4_12__tmp_vec.data(), __xlx_v4_13__tmp_vec.data(), __xlx_v4_14__tmp_vec.data(), __xlx_v4_15__tmp_vec.data(), __xlx_v5__tmp_vec.data(), __xlx_v6_0__tmp_vec.data(), __xlx_v6_1__tmp_vec.data(), __xlx_v6_2__tmp_vec.data(), __xlx_v6_3__tmp_vec.data(), __xlx_v6_4__tmp_vec.data(), __xlx_v6_5__tmp_vec.data(), __xlx_v6_6__tmp_vec.data(), __xlx_v6_7__tmp_vec.data(), __xlx_v6_8__tmp_vec.data(), __xlx_v6_9__tmp_vec.data(), __xlx_v6_10__tmp_vec.data(), __xlx_v6_11__tmp_vec.data(), __xlx_v6_12__tmp_vec.data(), __xlx_v6_13__tmp_vec.data(), __xlx_v6_14__tmp_vec.data(), __xlx_v6_15__tmp_vec.data());
// print __xlx_apatb_param_v2_0
for (size_t i = 0; i < __xlx_size_param_v2_0; ++i) {
((Byte<4>*)__xlx_apatb_param_v2_0)[i] = __xlx_v2_0__tmp_vec[__xlx_offset_param_v2_0+i];
}
// print __xlx_apatb_param_v2_1
for (size_t i = 0; i < __xlx_size_param_v2_1; ++i) {
((Byte<4>*)__xlx_apatb_param_v2_1)[i] = __xlx_v2_1__tmp_vec[__xlx_offset_param_v2_1+i];
}
// print __xlx_apatb_param_v2_2
for (size_t i = 0; i < __xlx_size_param_v2_2; ++i) {
((Byte<4>*)__xlx_apatb_param_v2_2)[i] = __xlx_v2_2__tmp_vec[__xlx_offset_param_v2_2+i];
}
// print __xlx_apatb_param_v2_3
for (size_t i = 0; i < __xlx_size_param_v2_3; ++i) {
((Byte<4>*)__xlx_apatb_param_v2_3)[i] = __xlx_v2_3__tmp_vec[__xlx_offset_param_v2_3+i];
}
// print __xlx_apatb_param_v2_4
for (size_t i = 0; i < __xlx_size_param_v2_4; ++i) {
((Byte<4>*)__xlx_apatb_param_v2_4)[i] = __xlx_v2_4__tmp_vec[__xlx_offset_param_v2_4+i];
}
// print __xlx_apatb_param_v2_5
for (size_t i = 0; i < __xlx_size_param_v2_5; ++i) {
((Byte<4>*)__xlx_apatb_param_v2_5)[i] = __xlx_v2_5__tmp_vec[__xlx_offset_param_v2_5+i];
}
// print __xlx_apatb_param_v2_6
for (size_t i = 0; i < __xlx_size_param_v2_6; ++i) {
((Byte<4>*)__xlx_apatb_param_v2_6)[i] = __xlx_v2_6__tmp_vec[__xlx_offset_param_v2_6+i];
}
// print __xlx_apatb_param_v2_7
for (size_t i = 0; i < __xlx_size_param_v2_7; ++i) {
((Byte<4>*)__xlx_apatb_param_v2_7)[i] = __xlx_v2_7__tmp_vec[__xlx_offset_param_v2_7+i];
}
// print __xlx_apatb_param_v2_8
for (size_t i = 0; i < __xlx_size_param_v2_8; ++i) {
((Byte<4>*)__xlx_apatb_param_v2_8)[i] = __xlx_v2_8__tmp_vec[__xlx_offset_param_v2_8+i];
}
// print __xlx_apatb_param_v2_9
for (size_t i = 0; i < __xlx_size_param_v2_9; ++i) {
((Byte<4>*)__xlx_apatb_param_v2_9)[i] = __xlx_v2_9__tmp_vec[__xlx_offset_param_v2_9+i];
}
// print __xlx_apatb_param_v2_10
for (size_t i = 0; i < __xlx_size_param_v2_10; ++i) {
((Byte<4>*)__xlx_apatb_param_v2_10)[i] = __xlx_v2_10__tmp_vec[__xlx_offset_param_v2_10+i];
}
// print __xlx_apatb_param_v2_11
for (size_t i = 0; i < __xlx_size_param_v2_11; ++i) {
((Byte<4>*)__xlx_apatb_param_v2_11)[i] = __xlx_v2_11__tmp_vec[__xlx_offset_param_v2_11+i];
}
// print __xlx_apatb_param_v2_12
for (size_t i = 0; i < __xlx_size_param_v2_12; ++i) {
((Byte<4>*)__xlx_apatb_param_v2_12)[i] = __xlx_v2_12__tmp_vec[__xlx_offset_param_v2_12+i];
}
// print __xlx_apatb_param_v2_13
for (size_t i = 0; i < __xlx_size_param_v2_13; ++i) {
((Byte<4>*)__xlx_apatb_param_v2_13)[i] = __xlx_v2_13__tmp_vec[__xlx_offset_param_v2_13+i];
}
// print __xlx_apatb_param_v2_14
for (size_t i = 0; i < __xlx_size_param_v2_14; ++i) {
((Byte<4>*)__xlx_apatb_param_v2_14)[i] = __xlx_v2_14__tmp_vec[__xlx_offset_param_v2_14+i];
}
// print __xlx_apatb_param_v2_15
for (size_t i = 0; i < __xlx_size_param_v2_15; ++i) {
((Byte<4>*)__xlx_apatb_param_v2_15)[i] = __xlx_v2_15__tmp_vec[__xlx_offset_param_v2_15+i];
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
// print __xlx_apatb_param_v4_0
for (size_t i = 0; i < __xlx_size_param_v4_0; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_0)[i] = __xlx_v4_0__tmp_vec[__xlx_offset_param_v4_0+i];
}
// print __xlx_apatb_param_v4_1
for (size_t i = 0; i < __xlx_size_param_v4_1; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_1)[i] = __xlx_v4_1__tmp_vec[__xlx_offset_param_v4_1+i];
}
// print __xlx_apatb_param_v4_2
for (size_t i = 0; i < __xlx_size_param_v4_2; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_2)[i] = __xlx_v4_2__tmp_vec[__xlx_offset_param_v4_2+i];
}
// print __xlx_apatb_param_v4_3
for (size_t i = 0; i < __xlx_size_param_v4_3; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_3)[i] = __xlx_v4_3__tmp_vec[__xlx_offset_param_v4_3+i];
}
// print __xlx_apatb_param_v4_4
for (size_t i = 0; i < __xlx_size_param_v4_4; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_4)[i] = __xlx_v4_4__tmp_vec[__xlx_offset_param_v4_4+i];
}
// print __xlx_apatb_param_v4_5
for (size_t i = 0; i < __xlx_size_param_v4_5; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_5)[i] = __xlx_v4_5__tmp_vec[__xlx_offset_param_v4_5+i];
}
// print __xlx_apatb_param_v4_6
for (size_t i = 0; i < __xlx_size_param_v4_6; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_6)[i] = __xlx_v4_6__tmp_vec[__xlx_offset_param_v4_6+i];
}
// print __xlx_apatb_param_v4_7
for (size_t i = 0; i < __xlx_size_param_v4_7; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_7)[i] = __xlx_v4_7__tmp_vec[__xlx_offset_param_v4_7+i];
}
// print __xlx_apatb_param_v4_8
for (size_t i = 0; i < __xlx_size_param_v4_8; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_8)[i] = __xlx_v4_8__tmp_vec[__xlx_offset_param_v4_8+i];
}
// print __xlx_apatb_param_v4_9
for (size_t i = 0; i < __xlx_size_param_v4_9; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_9)[i] = __xlx_v4_9__tmp_vec[__xlx_offset_param_v4_9+i];
}
// print __xlx_apatb_param_v4_10
for (size_t i = 0; i < __xlx_size_param_v4_10; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_10)[i] = __xlx_v4_10__tmp_vec[__xlx_offset_param_v4_10+i];
}
// print __xlx_apatb_param_v4_11
for (size_t i = 0; i < __xlx_size_param_v4_11; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_11)[i] = __xlx_v4_11__tmp_vec[__xlx_offset_param_v4_11+i];
}
// print __xlx_apatb_param_v4_12
for (size_t i = 0; i < __xlx_size_param_v4_12; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_12)[i] = __xlx_v4_12__tmp_vec[__xlx_offset_param_v4_12+i];
}
// print __xlx_apatb_param_v4_13
for (size_t i = 0; i < __xlx_size_param_v4_13; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_13)[i] = __xlx_v4_13__tmp_vec[__xlx_offset_param_v4_13+i];
}
// print __xlx_apatb_param_v4_14
for (size_t i = 0; i < __xlx_size_param_v4_14; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_14)[i] = __xlx_v4_14__tmp_vec[__xlx_offset_param_v4_14+i];
}
// print __xlx_apatb_param_v4_15
for (size_t i = 0; i < __xlx_size_param_v4_15; ++i) {
((Byte<4>*)__xlx_apatb_param_v4_15)[i] = __xlx_v4_15__tmp_vec[__xlx_offset_param_v4_15+i];
}
// print __xlx_apatb_param_v5
for (size_t i = 0; i < __xlx_size_param_v5; ++i) {
((Byte<4>*)__xlx_apatb_param_v5)[i] = __xlx_v5__tmp_vec[__xlx_offset_param_v5+i];
}
// print __xlx_apatb_param_v6_0
for (size_t i = 0; i < __xlx_size_param_v6_0; ++i) {
((Byte<4>*)__xlx_apatb_param_v6_0)[i] = __xlx_v6_0__tmp_vec[__xlx_offset_param_v6_0+i];
}
// print __xlx_apatb_param_v6_1
for (size_t i = 0; i < __xlx_size_param_v6_1; ++i) {
((Byte<4>*)__xlx_apatb_param_v6_1)[i] = __xlx_v6_1__tmp_vec[__xlx_offset_param_v6_1+i];
}
// print __xlx_apatb_param_v6_2
for (size_t i = 0; i < __xlx_size_param_v6_2; ++i) {
((Byte<4>*)__xlx_apatb_param_v6_2)[i] = __xlx_v6_2__tmp_vec[__xlx_offset_param_v6_2+i];
}
// print __xlx_apatb_param_v6_3
for (size_t i = 0; i < __xlx_size_param_v6_3; ++i) {
((Byte<4>*)__xlx_apatb_param_v6_3)[i] = __xlx_v6_3__tmp_vec[__xlx_offset_param_v6_3+i];
}
// print __xlx_apatb_param_v6_4
for (size_t i = 0; i < __xlx_size_param_v6_4; ++i) {
((Byte<4>*)__xlx_apatb_param_v6_4)[i] = __xlx_v6_4__tmp_vec[__xlx_offset_param_v6_4+i];
}
// print __xlx_apatb_param_v6_5
for (size_t i = 0; i < __xlx_size_param_v6_5; ++i) {
((Byte<4>*)__xlx_apatb_param_v6_5)[i] = __xlx_v6_5__tmp_vec[__xlx_offset_param_v6_5+i];
}
// print __xlx_apatb_param_v6_6
for (size_t i = 0; i < __xlx_size_param_v6_6; ++i) {
((Byte<4>*)__xlx_apatb_param_v6_6)[i] = __xlx_v6_6__tmp_vec[__xlx_offset_param_v6_6+i];
}
// print __xlx_apatb_param_v6_7
for (size_t i = 0; i < __xlx_size_param_v6_7; ++i) {
((Byte<4>*)__xlx_apatb_param_v6_7)[i] = __xlx_v6_7__tmp_vec[__xlx_offset_param_v6_7+i];
}
// print __xlx_apatb_param_v6_8
for (size_t i = 0; i < __xlx_size_param_v6_8; ++i) {
((Byte<4>*)__xlx_apatb_param_v6_8)[i] = __xlx_v6_8__tmp_vec[__xlx_offset_param_v6_8+i];
}
// print __xlx_apatb_param_v6_9
for (size_t i = 0; i < __xlx_size_param_v6_9; ++i) {
((Byte<4>*)__xlx_apatb_param_v6_9)[i] = __xlx_v6_9__tmp_vec[__xlx_offset_param_v6_9+i];
}
// print __xlx_apatb_param_v6_10
for (size_t i = 0; i < __xlx_size_param_v6_10; ++i) {
((Byte<4>*)__xlx_apatb_param_v6_10)[i] = __xlx_v6_10__tmp_vec[__xlx_offset_param_v6_10+i];
}
// print __xlx_apatb_param_v6_11
for (size_t i = 0; i < __xlx_size_param_v6_11; ++i) {
((Byte<4>*)__xlx_apatb_param_v6_11)[i] = __xlx_v6_11__tmp_vec[__xlx_offset_param_v6_11+i];
}
// print __xlx_apatb_param_v6_12
for (size_t i = 0; i < __xlx_size_param_v6_12; ++i) {
((Byte<4>*)__xlx_apatb_param_v6_12)[i] = __xlx_v6_12__tmp_vec[__xlx_offset_param_v6_12+i];
}
// print __xlx_apatb_param_v6_13
for (size_t i = 0; i < __xlx_size_param_v6_13; ++i) {
((Byte<4>*)__xlx_apatb_param_v6_13)[i] = __xlx_v6_13__tmp_vec[__xlx_offset_param_v6_13+i];
}
// print __xlx_apatb_param_v6_14
for (size_t i = 0; i < __xlx_size_param_v6_14; ++i) {
((Byte<4>*)__xlx_apatb_param_v6_14)[i] = __xlx_v6_14__tmp_vec[__xlx_offset_param_v6_14+i];
}
// print __xlx_apatb_param_v6_15
for (size_t i = 0; i < __xlx_size_param_v6_15; ++i) {
((Byte<4>*)__xlx_apatb_param_v6_15)[i] = __xlx_v6_15__tmp_vec[__xlx_offset_param_v6_15+i];
}
}
