local ffi = require 'ffi'
ffi.cdef[[
typedef __gnuc_va_list va_list;
enum { _VA_LIST_DEFINED = 1 };
]]
