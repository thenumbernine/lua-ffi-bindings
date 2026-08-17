local ffi = require 'ffi'

-- windef.h
ffi.cdef[[
typedef int BOOL;
typedef int32_t LONG;
typedef uint32_t DWORD;
typedef int64_t LONGLONG;
]]

-- winnt.h:
ffi.cdef[[
typedef union _LARGE_INTEGER {
  struct {
    DWORD LowPart;
    LONG  HighPart;
  } DUMMYSTRUCTNAME;
  struct {
    DWORD LowPart;
    LONG  HighPart;
  } u;
  LONGLONG QuadPart;
} LARGE_INTEGER;
]]

ffi.cdef[[
BOOL QueryPerformanceCounter(LARGE_INTEGER *lpPerformanceCount);
BOOL QueryPerformanceFrequency(LARGE_INTEGER *lpFrequency);
]]

return ffi.C
