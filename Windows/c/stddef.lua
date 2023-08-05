local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/stddef.h */
enum { _INC_STDDEF = 1 };
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
int* __cdecl _errno(void);
/* #define errno (*_errno()) ### string, not number "(*_errno())" */
errno_t __cdecl _set_errno( int _Value);
errno_t __cdecl _get_errno( int* _Value);
extern unsigned long __cdecl __threadid(void);
/* #define _threadid (__threadid()) ### string, not number "(__threadid())" */
extern uintptr_t __cdecl __threadhandle(void);
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/stddef.h */
]]
