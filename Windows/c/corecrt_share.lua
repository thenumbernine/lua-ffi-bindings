local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_share.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
enum { SH_DENYRW = 16 };
enum { SH_DENYWR = 32 };
enum { SH_DENYRD = 48 };
enum { SH_DENYNO = 64 };
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_share.h */
]]
