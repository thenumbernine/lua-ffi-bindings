local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wdirect.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
/* #pragma push_macro("_wgetcwd") */
/* #pragma push_macro("_wgetdcwd") */
wchar_t* __cdecl _wgetcwd( wchar_t* _DstBuf, int _SizeInWords );
wchar_t* __cdecl _wgetdcwd( int _Drive, wchar_t* _DstBuf, int _SizeInWords );
enum { _wgetdcwd_nolock = 0 };
/* #pragma pop_macro("_wgetcwd") */
/* #pragma pop_macro("_wgetdcwd") */
int __cdecl _wchdir( wchar_t const* _Path );
int __cdecl _wmkdir( wchar_t const* _Path );
int __cdecl _wrmdir( wchar_t const* _Path );
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wdirect.h */
]]
