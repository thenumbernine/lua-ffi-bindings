local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/sys/types.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
enum { _INO_T_DEFINED = 1 };
typedef unsigned short _ino_t;
typedef _ino_t ino_t;
enum { _DEV_T_DEFINED = 1 };
typedef unsigned int _dev_t;
typedef _dev_t dev_t;
enum { _OFF_T_DEFINED = 1 };
typedef long _off_t;
typedef _off_t off_t;
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/sys/types.h */
]]

-- this isn't in Windows at all I guess, but for cross-platform's sake, I'll put in some common POSIX defs I need
-- gcc x64 defines ssize_t = __ssize_t, __ssize_t = long int
-- I'm guessing in gcc 'long int' is 8 bytes
-- msvc x64 'long int' is just 4 bytes ...
-- TODO proly arch-specific too

ffi.cdef[[
typedef intptr_t ssize_t;
]]
