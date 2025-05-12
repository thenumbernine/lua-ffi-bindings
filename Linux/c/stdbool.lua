local ffi = require 'ffi'
ffi.cdef[[
enum { _STDBOOL_H = 1 };
/* #define bool _Bool ### define is not number */
]]
