local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/wchar.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_memcpy_s.h */
/* +++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/errno.h */
]] require 'ffi.req' 'c.errno' ffi.cdef[[
/* +++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/errno.h */
/* +++ BEGIN C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.39.33519/include/vcruntime_string.h */
]] require 'ffi.req' 'c.vcruntime_string' ffi.cdef[[
/* +++ END   C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.39.33519/include/vcruntime_string.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
/* #pragma warning(pop)  */
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_memcpy_s.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wconio.h */
/* +++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_stdio_config.h */
]] require 'ffi.req' 'c.corecrt_stdio_config' ffi.cdef[[
/* +++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_stdio_config.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
/* #define WEOF ((wint_t)(0xFFFF)) ### string, not number "((wint_t)(0xFFFF))" */
errno_t __cdecl _cgetws_s( wchar_t* _Buffer, size_t _BufferCount, size_t* _SizeRead );
int __cdecl _cputws( wchar_t const* _Buffer );
wint_t __cdecl _getwch (void);
wint_t __cdecl _getwche (void);
wint_t __cdecl _putwch ( wchar_t _Character);
wint_t __cdecl _ungetwch( wint_t _Character);
wint_t __cdecl _getwch_nolock (void);
wint_t __cdecl _getwche_nolock (void);
wint_t __cdecl _putwch_nolock ( wchar_t _Character);
wint_t __cdecl _ungetwch_nolock( wint_t _Character);
int __cdecl __conio_common_vcwprintf( unsigned __int64 _Options, wchar_t const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl __conio_common_vcwprintf_s( unsigned __int64 _Options, wchar_t const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl __conio_common_vcwprintf_p( unsigned __int64 _Options, wchar_t const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl _vcwprintf_l( wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vcwprintf( wchar_t const* const _Format, va_list _ArgList );
int __cdecl _vcwprintf_s_l( wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vcwprintf_s( wchar_t const* const _Format, va_list _ArgList );
int __cdecl _vcwprintf_p_l( wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vcwprintf_p( const wchar_t* const _Format, va_list _ArgList );
int __cdecl _cwprintf_l( wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl _cwprintf( wchar_t const* const _Format, ...);
int __cdecl _cwprintf_s_l( wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl _cwprintf_s( wchar_t const* const _Format, ...);
int __cdecl _cwprintf_p_l( wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl _cwprintf_p( wchar_t const* const _Format, ...);
int __cdecl __conio_common_vcwscanf( unsigned __int64 _Options, wchar_t const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl _vcwscanf_l( wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vcwscanf( wchar_t const* const _Format, va_list _ArgList );
int __cdecl _vcwscanf_s_l( wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vcwscanf_s( wchar_t const* const _Format, va_list _ArgList );
int __cdecl _cwscanf_l( wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl _cwscanf( wchar_t const* const _Format, ...);
int __cdecl _cwscanf_s_l( wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl _cwscanf_s( wchar_t const* const _Format, ...);
/* #pragma warning(pop)  */
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wconio.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wctype.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
/* #define WEOF ((wint_t)(0xFFFF)) ### string, not number "((wint_t)(0xFFFF))" */
const unsigned short* __cdecl __pctype_func(void);
const wctype_t* __cdecl __pwctype_func(void);
int __cdecl iswalnum ( wint_t _C);
int __cdecl iswalpha ( wint_t _C);
int __cdecl iswascii ( wint_t _C);
int __cdecl iswblank ( wint_t _C);
int __cdecl iswcntrl ( wint_t _C);
int __cdecl iswdigit ( wint_t _C);
int __cdecl iswgraph ( wint_t _C);
int __cdecl iswlower ( wint_t _C);
int __cdecl iswprint ( wint_t _C);
int __cdecl iswpunct ( wint_t _C);
int __cdecl iswspace ( wint_t _C);
int __cdecl iswupper ( wint_t _C);
int __cdecl iswxdigit ( wint_t _C);
int __cdecl __iswcsymf( wint_t _C);
int __cdecl __iswcsym ( wint_t _C);
int __cdecl _iswalnum_l ( wint_t _C, _locale_t _Locale);
int __cdecl _iswalpha_l ( wint_t _C, _locale_t _Locale);
int __cdecl _iswblank_l ( wint_t _C, _locale_t _Locale);
int __cdecl _iswcntrl_l ( wint_t _C, _locale_t _Locale);
int __cdecl _iswdigit_l ( wint_t _C, _locale_t _Locale);
int __cdecl _iswgraph_l ( wint_t _C, _locale_t _Locale);
int __cdecl _iswlower_l ( wint_t _C, _locale_t _Locale);
int __cdecl _iswprint_l ( wint_t _C, _locale_t _Locale);
int __cdecl _iswpunct_l ( wint_t _C, _locale_t _Locale);
int __cdecl _iswspace_l ( wint_t _C, _locale_t _Locale);
int __cdecl _iswupper_l ( wint_t _C, _locale_t _Locale);
int __cdecl _iswxdigit_l( wint_t _C, _locale_t _Locale);
int __cdecl _iswcsymf_l ( wint_t _C, _locale_t _Locale);
int __cdecl _iswcsym_l ( wint_t _C, _locale_t _Locale);
wint_t __cdecl towupper( wint_t _C);
wint_t __cdecl towlower( wint_t _C);
int __cdecl iswctype( wint_t _C, wctype_t _Type);
wint_t __cdecl _towupper_l( wint_t _C, _locale_t _Locale);
wint_t __cdecl _towlower_l( wint_t _C, _locale_t _Locale);
int __cdecl _iswctype_l( wint_t _C, wctype_t _Type, _locale_t _Locale);
int __cdecl isleadbyte( int _C);
int __cdecl _isleadbyte_l( int _C, _locale_t _Locale);
int __cdecl is_wctype( wint_t _C, wctype_t _Type);
/* #pragma warning(pop)  */
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wctype.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wdirect.h */
]] require 'ffi.req' 'c.corecrt_wdirect' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wdirect.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wio.h */
]] require 'ffi.req' 'c.corecrt_wio' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wio.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wprocess.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
intptr_t __cdecl _wexecl( wchar_t const* _FileName, wchar_t const* _ArgList, ...);
intptr_t __cdecl _wexecle( wchar_t const* _FileName, wchar_t const* _ArgList, ...);
intptr_t __cdecl _wexeclp( wchar_t const* _FileName, wchar_t const* _ArgList, ...);
intptr_t __cdecl _wexeclpe( wchar_t const* _FileName, wchar_t const* _ArgList, ...);
intptr_t __cdecl _wexecv( wchar_t const* _FileName, wchar_t const* const* _ArgList );
intptr_t __cdecl _wexecve( wchar_t const* _FileName, wchar_t const* const* _ArgList, wchar_t const* const* _Env );
intptr_t __cdecl _wexecvp( wchar_t const* _FileName, wchar_t const* const* _ArgList );
intptr_t __cdecl _wexecvpe( wchar_t const* _FileName, wchar_t const* const* _ArgList, wchar_t const* const* _Env );
intptr_t __cdecl _wspawnl( int _Mode, wchar_t const* _FileName, wchar_t const* _ArgList, ...);
intptr_t __cdecl _wspawnle( int _Mode, wchar_t const* _FileName, wchar_t const* _ArgList, ...);
intptr_t __cdecl _wspawnlp( int _Mode, wchar_t const* _FileName, wchar_t const* _ArgList, ...);
intptr_t __cdecl _wspawnlpe( int _Mode, wchar_t const* _FileName, wchar_t const* _ArgList, ...);
intptr_t __cdecl _wspawnv( int _Mode, wchar_t const* _FileName, wchar_t const* const* _ArgList );
intptr_t __cdecl _wspawnve( int _Mode, wchar_t const* _FileName, wchar_t const* const* _ArgList, wchar_t const* const* _Env );
intptr_t __cdecl _wspawnvp( int _Mode, wchar_t const* _FileName, wchar_t const* const* _ArgList );
intptr_t __cdecl _wspawnvpe( int _Mode, wchar_t const* _FileName, wchar_t const* const* _ArgList, wchar_t const* const* _Env );
int __cdecl _wsystem( wchar_t const* _Command );
/* #pragma warning(pop)  */
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wprocess.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wstdio.h */
]] require 'ffi.req' 'c.corecrt_wstdio' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wstdio.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wstdlib.h */
]] require 'ffi.req' 'c.corecrt_wstdlib' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wstdlib.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wstring.h */
]] require 'ffi.req' 'c.corecrt_wstring' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wstring.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wtime.h */
]] require 'ffi.req' 'c.corecrt_wtime' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wtime.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/sys/stat.h */
]] require 'ffi.req' 'c.sys.stat' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/sys/stat.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
/* enum { WCHAR_MIN = 0 }; */ /* also in Windows/c/stdint.h */
/* enum { WCHAR_MAX = 65535 }; */ /* also in Windows/c/stdint.h */
typedef wchar_t _Wint_t;
wchar_t* __cdecl _wsetlocale( int _Category, wchar_t const* _Locale );
_locale_t __cdecl _wcreate_locale( int _Category, wchar_t const* _Locale );
wint_t __cdecl btowc( int _Ch );
size_t __cdecl mbrlen( char const* _Ch, size_t _SizeInBytes, mbstate_t* _State );
size_t __cdecl mbrtowc( wchar_t* _DstCh, char const* _SrcCh, size_t _SizeInBytes, mbstate_t* _State );
errno_t __cdecl mbsrtowcs_s( size_t* _Retval, wchar_t* _Dst, size_t _Size, char const** _PSrc, size_t _N, mbstate_t* _State );
size_t __cdecl mbsrtowcs( wchar_t * _Dest, char const** _PSrc, size_t _Count, mbstate_t* _State );
errno_t __cdecl wcrtomb_s( size_t* _Retval, char* _Dst, size_t _SizeInBytes, wchar_t _Ch, mbstate_t* _State );
size_t __cdecl wcrtomb( char * _Dest, wchar_t _Source, mbstate_t* _State );
errno_t __cdecl wcsrtombs_s( size_t* _Retval, char* _Dst, size_t _SizeInBytes, wchar_t const** _Src, size_t _Size, mbstate_t* _State );
size_t __cdecl wcsrtombs( char * _Dest, wchar_t const** _PSource, size_t _Count, mbstate_t* _State );
int __cdecl wctob( wint_t _WCh );
      
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/wchar.h */
]]
ffi.cdef[[
/* #ifdef _USE_32BIT_TIME_T
	typedef _wfinddata32_t _wfinddata_t;
	typedef _wfinddata32i64_t _wfinddatai64_t;
#else */
	typedef struct _wfinddata64i32_t _wfinddata_t;
	typedef struct _wfinddata64_t _wfinddatai64_t;
/* #endif */
]]

local lib = ffi.C
return setmetatable({
--[[
#ifdef _USE_32BIT_TIME_T
	_wfindfirst = lib._wfindfirst32,
	_wfindnext = lib._wfindnext32,
	_wfindfirsti64 = lib._wfindfirst32i64,
	_wfindnexti64 = lib._wfindnext32i64,
#else
--]]
	_wfindfirst = lib._wfindfirst64i32,
	_wfindnext = lib._wfindnext64i32,
	_wfindfirsti64 = lib._wfindfirst64,
	_wfindnexti64 = lib._wfindnext64,
--[[
#endif
--]]
}, {
	__index = ffi.C,
})
