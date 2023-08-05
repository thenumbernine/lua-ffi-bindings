local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_share.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
enum { _SH_DENYRW = 16 };
enum { _SH_DENYWR = 32 };
enum { _SH_DENYRD = 48 };
enum { _SH_DENYNO = 64 };
enum { _SH_SECURE = 128 };
enum { SH_DENYRW = 16 };
enum { SH_DENYWR = 32 };
enum { SH_DENYRD = 48 };
enum { SH_DENYNO = 64 };
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_share.h */
]]
