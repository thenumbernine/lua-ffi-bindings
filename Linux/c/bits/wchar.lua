local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/x86_64-linux-gnu/bits/wchar.h */
enum { _BITS_WCHAR_H = 1 };
enum { __WCHAR_MAX = 2147483647 };
enum { __WCHAR_MIN = -2147483648 };
/* + END   /usr/include/x86_64-linux-gnu/bits/wchar.h */
]]
