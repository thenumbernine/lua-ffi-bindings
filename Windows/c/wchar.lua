local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/wchar.h */
enum { _INC_WCHAR = 1 };
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]] require 'ffi.Windows.c.corecrt' ffi.cdef[[
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_memcpy_s.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/errno.h */
]] require 'ffi.Windows.c.errno' ffi.cdef[[
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/errno.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
/* #define _CRT_MEMCPY_S_INLINE static __inline ### string, not number "static __inline" */
/* #pragma warning(pop)  */
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_memcpy_s.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wconio.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_stdio_config.h */
]] require 'ffi.Windows.c.corecrt_stdio_config' ffi.cdef[[
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_stdio_config.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
/* #define WEOF ((wint_t)(0xFFFF)) ### string, not number "((wint_t)(0xFFFF))" */
errno_t __cdecl _cgetws_s( wchar_t* _Buffer, size_t _BufferCount, size_t* _SizeRead );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### _Success_(return == 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(    ### TO ### errno_t, _cgetws_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(    errno_t, _cgetws_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(    errno_t, _cgetws_s, ### TO ### _Out_writes_z_(*_Buffer) wchar_t, _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(    errno_t, _cgetws_s,    wchar_t, _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(    errno_t, _cgetws_s,    wchar_t, _Buffer, ### TO ### _In_                     size_t*, _SizeRead */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(    errno_t, _cgetws_s,    wchar_t, _Buffer,                      size_t*, _SizeRead */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(    errno_t, _cgetws_s,    wchar_t, _Buffer,                      size_t*, _SizeRead ### TO ### ) */
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
            int __cdecl __conio_common_vcwscanf( unsigned __int64 _Options, wchar_t const* _Format, _locale_t _Locale, va_list _ArgList );
       
/* #pragma warning(pop)  */
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wconio.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wctype.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
/* #define WEOF ((wint_t)(0xFFFF)) ### string, not number "((wint_t)(0xFFFF))" */
/* #define __PCTYPE_FUNC __pctype_func() ### string, not number "__pctype_func()" */
const unsigned short* __cdecl __pctype_func(void);
const wctype_t* __cdecl __pwctype_func(void);
/* #define _pctype  (__pctype_func()) ### string, not number "(__pctype_func())" */
/* #define _pwctype (__pwctype_func()) ### string, not number "(__pwctype_func())" */
enum { _UPPER = 1 };
enum { _LOWER = 2 };
enum { _DIGIT = 4 };
enum { _SPACE = 8 };
enum { _PUNCT = 16 };
enum { _CONTROL = 32 };
enum { _BLANK = 64 };
enum { _HEX = 128 };
enum { _LEADBYTE = 32768 };
enum { _ALPHA = 259 };
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
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wctype.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wdirect.h */
]] require 'ffi.Windows.c.corecrt_wdirect' ffi.cdef[[
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wdirect.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wio.h */
]] require 'ffi.Windows.c.corecrt_wio' ffi.cdef[[
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wio.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wprocess.h */
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
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wprocess.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wstdio.h */
]] require 'ffi.Windows.c.corecrt_wstdio' ffi.cdef[[
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wstdio.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wstdlib.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
enum { _MAX_ITOSTR_BASE16_COUNT = 9 };
enum { _MAX_ITOSTR_BASE10_COUNT = 12 };
enum { _MAX_ITOSTR_BASE8_COUNT = 12 };
enum { _MAX_ITOSTR_BASE2_COUNT = 33 };
enum { _MAX_LTOSTR_BASE16_COUNT = 9 };
enum { _MAX_LTOSTR_BASE10_COUNT = 12 };
enum { _MAX_LTOSTR_BASE8_COUNT = 12 };
enum { _MAX_LTOSTR_BASE2_COUNT = 33 };
enum { _MAX_ULTOSTR_BASE16_COUNT = 9 };
enum { _MAX_ULTOSTR_BASE10_COUNT = 11 };
enum { _MAX_ULTOSTR_BASE8_COUNT = 12 };
enum { _MAX_ULTOSTR_BASE2_COUNT = 33 };
enum { _MAX_I64TOSTR_BASE16_COUNT = 17 };
enum { _MAX_I64TOSTR_BASE10_COUNT = 21 };
enum { _MAX_I64TOSTR_BASE8_COUNT = 23 };
enum { _MAX_I64TOSTR_BASE2_COUNT = 65 };
enum { _MAX_U64TOSTR_BASE16_COUNT = 17 };
enum { _MAX_U64TOSTR_BASE10_COUNT = 21 };
enum { _MAX_U64TOSTR_BASE8_COUNT = 23 };
enum { _MAX_U64TOSTR_BASE2_COUNT = 65 };
errno_t __cdecl _itow_s( int _Value, wchar_t* _Buffer, size_t _BufferCount, int _Radix );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( ### TO ### errno_t, _itow_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _itow_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _itow_s, ### TO ### _In_ int,     _Value, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _itow_s,  int,     _Value, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _itow_s,  int,     _Value, ### TO ### wchar_t, _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _itow_s,  int,     _Value, wchar_t, _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _itow_s,  int,     _Value, wchar_t, _Buffer, ### TO ### _In_ int,     _Radix */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _itow_s,  int,     _Value, wchar_t, _Buffer,  int,     _Radix */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _itow_s,  int,     _Value, wchar_t, _Buffer,  int,     _Radix ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _itow, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _itow, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _itow, ### TO ### _In_                    int,     _Value, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _itow,                     int,     _Value, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _itow,                     int,     _Value, ### TO ### _Pre_notnull_ _Post_z_, wchar_t, _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _itow,                     int,     _Value,  , wchar_t, _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _itow,                     int,     _Value,  , wchar_t, _Buffer, ### TO ### _In_                    int,     _Radix */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _itow,                     int,     _Value,  , wchar_t, _Buffer,                     int,     _Radix */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _itow,                     int,     _Value,  , wchar_t, _Buffer,                     int,     _Radix ### TO ### ) */
wchar_t* __cdecl _itow( int _Value, wchar_t * _Buffer, int _Radix );
errno_t __cdecl _ltow_s( long _Value, wchar_t* _Buffer, size_t _BufferCount, int _Radix );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( ### TO ### errno_t, _ltow_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ltow_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ltow_s, ### TO ### _In_ long,    _Value, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ltow_s,  long,    _Value, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ltow_s,  long,    _Value, ### TO ### wchar_t, _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ltow_s,  long,    _Value, wchar_t, _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ltow_s,  long,    _Value, wchar_t, _Buffer, ### TO ### _In_ int,     _Radix */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ltow_s,  long,    _Value, wchar_t, _Buffer,  int,     _Radix */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ltow_s,  long,    _Value, wchar_t, _Buffer,  int,     _Radix ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _ltow, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _ltow, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _ltow, ### TO ### _In_                    long,    _Value, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _ltow,                     long,    _Value, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _ltow,                     long,    _Value, ### TO ### _Pre_notnull_ _Post_z_, wchar_t, _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _ltow,                     long,    _Value,  , wchar_t, _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _ltow,                     long,    _Value,  , wchar_t, _Buffer, ### TO ### _In_                    int,     _Radix */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _ltow,                     long,    _Value,  , wchar_t, _Buffer,                     int,     _Radix */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _ltow,                     long,    _Value,  , wchar_t, _Buffer,                     int,     _Radix ### TO ### ) */
wchar_t* __cdecl _ltow( long _Value, wchar_t * _Buffer, int _Radix );
errno_t __cdecl _ultow_s( unsigned long _Value, wchar_t* _Buffer, size_t _BufferCount, int _Radix );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( ### TO ### errno_t, _ultow_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ultow_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ultow_s, ### TO ### _In_ unsigned long, _Value, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ultow_s,  unsigned long, _Value, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ultow_s,  unsigned long, _Value, ### TO ### wchar_t,       _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ultow_s,  unsigned long, _Value, wchar_t,       _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ultow_s,  unsigned long, _Value, wchar_t,       _Buffer, ### TO ### _In_ int,           _Radix */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ultow_s,  unsigned long, _Value, wchar_t,       _Buffer,  int,           _Radix */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ultow_s,  unsigned long, _Value, wchar_t,       _Buffer,  int,           _Radix ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _ultow, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _ultow, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _ultow, ### TO ### _In_                    unsigned long, _Value, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _ultow,                     unsigned long, _Value, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _ultow,                     unsigned long, _Value, ### TO ### _Pre_notnull_ _Post_z_, wchar_t,       _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _ultow,                     unsigned long, _Value,  , wchar_t,       _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _ultow,                     unsigned long, _Value,  , wchar_t,       _Buffer, ### TO ### _In_                    int,           _Radix */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _ultow,                     unsigned long, _Value,  , wchar_t,       _Buffer,                     int,           _Radix */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( wchar_t*, __RETURN_POLICY_DST, , _ultow,                     unsigned long, _Value,  , wchar_t,       _Buffer,                     int,           _Radix ### TO ### ) */
wchar_t* __cdecl _ultow( unsigned long _Value, wchar_t * _Buffer, int _Radix );
double __cdecl wcstod( wchar_t const* _String, wchar_t** _EndPtr );
double __cdecl _wcstod_l( wchar_t const* _String, wchar_t** _EndPtr, _locale_t _Locale );
long __cdecl wcstol( wchar_t const* _String, wchar_t** _EndPtr, int _Radix );
long __cdecl _wcstol_l( wchar_t const* _String, wchar_t** _EndPtr, int _Radix, _locale_t _Locale );
long long __cdecl wcstoll( wchar_t const* _String, wchar_t** _EndPtr, int _Radix );
long long __cdecl _wcstoll_l( wchar_t const* _String, wchar_t** _EndPtr, int _Radix, _locale_t _Locale );
unsigned long __cdecl wcstoul( wchar_t const* _String, wchar_t** _EndPtr, int _Radix );
unsigned long __cdecl _wcstoul_l( wchar_t const* _String, wchar_t** _EndPtr, int _Radix, _locale_t _Locale );
unsigned long long __cdecl wcstoull( wchar_t const* _String, wchar_t** _EndPtr, int _Radix );
unsigned long long __cdecl _wcstoull_l( wchar_t const* _String, wchar_t** _EndPtr, int _Radix, _locale_t _Locale );
long double __cdecl wcstold( wchar_t const* _String, wchar_t** _EndPtr );
long double __cdecl _wcstold_l( wchar_t const* _String, wchar_t** _EndPtr, _locale_t _Locale );
float __cdecl wcstof( wchar_t const* _String, wchar_t** _EndPtr );
float __cdecl _wcstof_l( wchar_t const* _String, wchar_t** _EndPtr, _locale_t _Locale );
double __cdecl _wtof( wchar_t const* _String );
double __cdecl _wtof_l( wchar_t const* _String, _locale_t _Locale );
int __cdecl _wtoi( wchar_t const* _String );
int __cdecl _wtoi_l( wchar_t const* _String, _locale_t _Locale );
long __cdecl _wtol( wchar_t const* _String );
long __cdecl _wtol_l( wchar_t const* _String, _locale_t _Locale );
long long __cdecl _wtoll( wchar_t const* _String );
long long __cdecl _wtoll_l( wchar_t const* _String, _locale_t _Locale );
errno_t __cdecl _i64tow_s( __int64 _Value, wchar_t* _Buffer, size_t _BufferCount, int _Radix );
wchar_t* __cdecl _i64tow( __int64 _Value, wchar_t* _Buffer, int _Radix );
errno_t __cdecl _ui64tow_s( unsigned __int64 _Value, wchar_t* _Buffer, size_t _BufferCount, int _Radix );
wchar_t* __cdecl _ui64tow( unsigned __int64 _Value, wchar_t* _Buffer, int _Radix );
__int64 __cdecl _wtoi64( wchar_t const* _String );
__int64 __cdecl _wtoi64_l( wchar_t const* _String, _locale_t _Locale );
__int64 __cdecl _wcstoi64( wchar_t const* _String, wchar_t** _EndPtr, int _Radix );
__int64 __cdecl _wcstoi64_l( wchar_t const* _String, wchar_t** _EndPtr, int _Radix, _locale_t _Locale );
unsigned __int64 __cdecl _wcstoui64( wchar_t const* _String, wchar_t** _EndPtr, int _Radix );
unsigned __int64 __cdecl _wcstoui64_l( wchar_t const* _String, wchar_t** _EndPtr, int _Radix, _locale_t _Locale );
/*     #pragma push_macro("_wfullpath") */
__declspec(allocator) wchar_t* __cdecl _wfullpath( wchar_t* _Buffer, wchar_t const* _Path, size_t _BufferCount );
/*     #pragma pop_macro("_wfullpath") */
errno_t __cdecl _wmakepath_s( wchar_t* _Buffer, size_t _BufferCount, wchar_t const* _Drive, wchar_t const* _Dir, wchar_t const* _Filename, wchar_t const* _Ext );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( ### TO ### errno_t, _wmakepath_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _wmakepath_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _wmakepath_s, ### TO ### wchar_t,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _wmakepath_s, wchar_t,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _wmakepath_s, wchar_t,        _Buffer, ### TO ### _In_opt_z_ wchar_t const*, _Drive, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _wmakepath_s, wchar_t,        _Buffer,  wchar_t const*, _Drive, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _wmakepath_s, wchar_t,        _Buffer,  wchar_t const*, _Drive, ### TO ### _In_opt_z_ wchar_t const*, _Dir, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _wmakepath_s, wchar_t,        _Buffer,  wchar_t const*, _Drive,  wchar_t const*, _Dir, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _wmakepath_s, wchar_t,        _Buffer,  wchar_t const*, _Drive,  wchar_t const*, _Dir, ### TO ### _In_opt_z_ wchar_t const*, _Filename, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _wmakepath_s, wchar_t,        _Buffer,  wchar_t const*, _Drive,  wchar_t const*, _Dir,  wchar_t const*, _Filename, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _wmakepath_s, wchar_t,        _Buffer,  wchar_t const*, _Drive,  wchar_t const*, _Dir,  wchar_t const*, _Filename, ### TO ### _In_opt_z_ wchar_t const*, _Ext */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _wmakepath_s, wchar_t,        _Buffer,  wchar_t const*, _Drive,  wchar_t const*, _Dir,  wchar_t const*, _Filename,  wchar_t const*, _Ext */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _wmakepath_s, wchar_t,        _Buffer,  wchar_t const*, _Drive,  wchar_t const*, _Dir,  wchar_t const*, _Filename,  wchar_t const*, _Ext ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( ### TO ### void, __RETURN_POLICY_VOID, _ACRTIMP, _wmakepath, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _wmakepath, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _wmakepath, ### TO ### _Pre_notnull_ _Post_z_, wchar_t,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _wmakepath,  , wchar_t,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _wmakepath,  , wchar_t,        _Buffer, ### TO ### _In_opt_z_              wchar_t const*, _Drive, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _wmakepath,  , wchar_t,        _Buffer,               wchar_t const*, _Drive, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _wmakepath,  , wchar_t,        _Buffer,               wchar_t const*, _Drive, ### TO ### _In_opt_z_              wchar_t const*, _Dir, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _wmakepath,  , wchar_t,        _Buffer,               wchar_t const*, _Drive,               wchar_t const*, _Dir, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _wmakepath,  , wchar_t,        _Buffer,               wchar_t const*, _Drive,               wchar_t const*, _Dir, ### TO ### _In_opt_z_              wchar_t const*, _Filename, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _wmakepath,  , wchar_t,        _Buffer,               wchar_t const*, _Drive,               wchar_t const*, _Dir,               wchar_t const*, _Filename, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _wmakepath,  , wchar_t,        _Buffer,               wchar_t const*, _Drive,               wchar_t const*, _Dir,               wchar_t const*, _Filename, ### TO ### _In_opt_z_              wchar_t const*, _Ext */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _wmakepath,  , wchar_t,        _Buffer,               wchar_t const*, _Drive,               wchar_t const*, _Dir,               wchar_t const*, _Filename,               wchar_t const*, _Ext */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _wmakepath,  , wchar_t,        _Buffer,               wchar_t const*, _Drive,               wchar_t const*, _Dir,               wchar_t const*, _Filename,               wchar_t const*, _Ext ### TO ### ) */
void __cdecl _wmakepath( wchar_t * _Buffer, wchar_t const* _Drive, wchar_t const* _Dir, wchar_t const* _Filename, wchar_t const* _Ext );
void __cdecl _wperror( wchar_t const* _ErrorMessage );
void __cdecl _wsplitpath( wchar_t const* _FullPath, wchar_t* _Drive, wchar_t* _Dir, wchar_t* _Filename, wchar_t* _Ext );
errno_t __cdecl _wsplitpath_s( wchar_t const* _FullPath, wchar_t* _Drive, size_t _DriveCount, wchar_t* _Dir, size_t _DirCount, wchar_t* _Filename, size_t _FilenameCount, wchar_t* _Ext, size_t _ExtCount );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH( ### TO ### errno_t, _wsplitpath_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH( errno_t, _wsplitpath_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH( errno_t, _wsplitpath_s, ### TO ### wchar_t, _Path */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH( errno_t, _wsplitpath_s, wchar_t, _Path */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_SPLITPATH( errno_t, _wsplitpath_s, wchar_t, _Path ### TO ### ) */
/*         #pragma push_macro("_wdupenv_s") */
errno_t __cdecl _wdupenv_s( wchar_t** _Buffer, size_t* _BufferCount, wchar_t const* _VarName );
/*         #pragma pop_macro("_wdupenv_s") */
wchar_t* __cdecl _wgetenv( wchar_t const* _VarName );
errno_t __cdecl _wgetenv_s( size_t* _RequiredCount, wchar_t* _Buffer, size_t _BufferCount, wchar_t const* _VarName );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( ### TO ### _Success_(return == 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(    ### TO ### errno_t, _wgetenv_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(    errno_t, _wgetenv_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(    errno_t, _wgetenv_s, ### TO ### _Out_  size_t*,        _RequiredCount, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(    errno_t, _wgetenv_s,   size_t*,        _RequiredCount, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(    errno_t, _wgetenv_s,   size_t*,        _RequiredCount, ### TO ### wchar_t,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(    errno_t, _wgetenv_s,   size_t*,        _RequiredCount, wchar_t,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(    errno_t, _wgetenv_s,   size_t*,        _RequiredCount, wchar_t,        _Buffer, ### TO ### _In_z_ wchar_t const*, _VarName */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(    errno_t, _wgetenv_s,   size_t*,        _RequiredCount, wchar_t,        _Buffer,  wchar_t const*, _VarName */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(    errno_t, _wgetenv_s,   size_t*,        _RequiredCount, wchar_t,        _Buffer,  wchar_t const*, _VarName ### TO ### ) */
int __cdecl _wputenv( wchar_t const* _EnvString );
errno_t __cdecl _wputenv_s( wchar_t const* _Name, wchar_t const* _Value );
errno_t __cdecl _wsearchenv_s( wchar_t const* _Filename, wchar_t const* _VarName, wchar_t* _Buffer, size_t _BufferCount );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0( ### TO ### errno_t, _wsearchenv_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0( errno_t, _wsearchenv_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0( errno_t, _wsearchenv_s, ### TO ### _In_z_ wchar_t const*, _Filename, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0( errno_t, _wsearchenv_s,  wchar_t const*, _Filename, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0( errno_t, _wsearchenv_s,  wchar_t const*, _Filename, ### TO ### _In_z_ wchar_t const*, _VarName, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0( errno_t, _wsearchenv_s,  wchar_t const*, _Filename,  wchar_t const*, _VarName, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0( errno_t, _wsearchenv_s,  wchar_t const*, _Filename,  wchar_t const*, _VarName, ### TO ### wchar_t,        _ResultPath */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0( errno_t, _wsearchenv_s,  wchar_t const*, _Filename,  wchar_t const*, _VarName, wchar_t,        _ResultPath */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0( errno_t, _wsearchenv_s,  wchar_t const*, _Filename,  wchar_t const*, _VarName, wchar_t,        _ResultPath ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0( ### TO ### void, __RETURN_POLICY_VOID, _DCRTIMP, _wsearchenv, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0( void, __RETURN_POLICY_VOID, , _wsearchenv, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0( void, __RETURN_POLICY_VOID, , _wsearchenv, ### TO ### _In_z_                  wchar_t const*, _Filename, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0( void, __RETURN_POLICY_VOID, , _wsearchenv,                   wchar_t const*, _Filename, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0( void, __RETURN_POLICY_VOID, , _wsearchenv,                   wchar_t const*, _Filename, ### TO ### _In_z_                  wchar_t const*, _VarName, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0( void, __RETURN_POLICY_VOID, , _wsearchenv,                   wchar_t const*, _Filename,                   wchar_t const*, _VarName, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0( void, __RETURN_POLICY_VOID, , _wsearchenv,                   wchar_t const*, _Filename,                   wchar_t const*, _VarName, ### TO ### _Pre_notnull_ _Post_z_, wchar_t,        _ResultPath */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0( void, __RETURN_POLICY_VOID, , _wsearchenv,                   wchar_t const*, _Filename,                   wchar_t const*, _VarName,  , wchar_t,        _ResultPath */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0( void, __RETURN_POLICY_VOID, , _wsearchenv,                   wchar_t const*, _Filename,                   wchar_t const*, _VarName,  , wchar_t,        _ResultPath ### TO ### ) */
void __cdecl _wsearchenv( wchar_t const* _Filename, wchar_t const* _VarName, wchar_t * _ResultPath );
int __cdecl _wsystem( wchar_t const* _Command );
/* #pragma warning(pop)  */
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wstdlib.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wstring.h */
]] require 'ffi.Windows.c.corecrt_wstring' ffi.cdef[[
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wstring.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wtime.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
struct tm {
	int tm_sec;
	int tm_min;
	int tm_hour;
	int tm_mday;
	int tm_mon;
	int tm_year;
	int tm_wday;
	int tm_yday;
	int tm_isdst;
};
wchar_t* __cdecl _wasctime( struct tm const* _Tm );
errno_t __cdecl _wasctime_s( wchar_t* _Buffer, size_t _SizeInWords, struct tm const* _Tm );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### _Success_(return == 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(    ### TO ### errno_t, _wasctime_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(    errno_t, _wasctime_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(    errno_t, _wasctime_s, ### TO ### _Post_readable_size_(26) wchar_t,          _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(    errno_t, _wasctime_s,    wchar_t,          _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(    errno_t, _wasctime_s,    wchar_t,          _Buffer, ### TO ### _In_                     struct tm const*, _Time */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(    errno_t, _wasctime_s,    wchar_t,          _Buffer,                      struct tm const*, _Time */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1(    errno_t, _wasctime_s,    wchar_t,          _Buffer,                      struct tm const*, _Time ### TO ### ) */
size_t __cdecl wcsftime( wchar_t* _Buffer, size_t _SizeInWords, wchar_t const* _Format, struct tm const* _Tm );
size_t __cdecl _wcsftime_l( wchar_t* _Buffer, size_t _SizeInWords, wchar_t const* _Format, struct tm const* _Tm, _locale_t _Locale );
wchar_t* __cdecl _wctime32( __time32_t const* _Time );
errno_t __cdecl _wctime32_s( wchar_t* _Buffer, size_t _SizeInWords, __time32_t const* _Time );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, _wctime32_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime32_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime32_s, ### TO ### _Post_readable_size_(26) wchar_t,           _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime32_s,    wchar_t,           _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime32_s,    wchar_t,           _Buffer, ### TO ### _In_                     __time32_t const*, _Time */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime32_s,    wchar_t,           _Buffer,                      __time32_t const*, _Time */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime32_s,    wchar_t,           _Buffer,                      __time32_t const*, _Time ### TO ### ) */
wchar_t* __cdecl _wctime64( __time64_t const* _Time );
errno_t __cdecl _wctime64_s( wchar_t* _Buffer, size_t _SizeInWords, __time64_t const* _Time);
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, _wctime64_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime64_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime64_s, ### TO ### _Post_readable_size_(26) wchar_t,           _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime64_s,    wchar_t,           _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime64_s,    wchar_t,           _Buffer, ### TO ### _In_                     __time64_t const*, _Time */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime64_s,    wchar_t,           _Buffer,                      __time64_t const*, _Time */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime64_s,    wchar_t,           _Buffer,                      __time64_t const*, _Time ### TO ### ) */
errno_t __cdecl _wstrdate_s( wchar_t* _Buffer, size_t _SizeInWords );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( ### TO ### errno_t, _wstrdate_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wstrdate_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wstrdate_s, ### TO ### _Post_readable_size_(9) wchar_t, _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wstrdate_s,    wchar_t, _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wstrdate_s,    wchar_t, _Buffer ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( ### TO ### _Success_(return != 0) _Ret_writes_z_(9) wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _wstrdate, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(       wchar_t*, __RETURN_POLICY_DST, , _wstrdate, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(       wchar_t*, __RETURN_POLICY_DST, , _wstrdate, ### TO ### _Out_writes_z_(9), wchar_t, _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(       wchar_t*, __RETURN_POLICY_DST, , _wstrdate,   , wchar_t, _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(       wchar_t*, __RETURN_POLICY_DST, , _wstrdate,   , wchar_t, _Buffer ### TO ### ) */
wchar_t* __cdecl _wstrdate( wchar_t * _Buffer );
errno_t __cdecl _wstrtime_s( wchar_t* _Buffer, size_t _SizeInWords );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( ### TO ### errno_t, _wstrtime_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wstrtime_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wstrtime_s, ### TO ### _Post_readable_size_(9) wchar_t, _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wstrtime_s,    wchar_t, _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wstrtime_s,    wchar_t, _Buffer ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( ### TO ### _Success_(return != 0) _Ret_writes_z_(9) wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _wstrtime, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(       wchar_t*, __RETURN_POLICY_DST, , _wstrtime, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(       wchar_t*, __RETURN_POLICY_DST, , _wstrtime, ### TO ### _Out_writes_z_(9), wchar_t, _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(       wchar_t*, __RETURN_POLICY_DST, , _wstrtime,   , wchar_t, _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(       wchar_t*, __RETURN_POLICY_DST, , _wstrtime,   , wchar_t, _Buffer ### TO ### ) */
wchar_t* __cdecl _wstrtime( wchar_t * _Buffer );
 
/* #pragma warning(pop)  */
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wtime.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/sys/stat.h */
]] require 'ffi.c.sys.stat' ffi.cdef[[
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/sys/stat.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
enum { WCHAR_MIN = 0 };
enum { WCHAR_MAX = 65535 };
typedef wchar_t _Wint_t;
wchar_t* __cdecl _wsetlocale( int _Category, wchar_t const* _Locale );
_locale_t __cdecl _wcreate_locale( int _Category, wchar_t const* _Locale );
wint_t __cdecl btowc( int _Ch );
size_t __cdecl mbrlen( char const* _Ch, size_t _SizeInBytes, mbstate_t* _State );
size_t __cdecl mbrtowc( wchar_t* _DstCh, char const* _SrcCh, size_t _SizeInBytes, mbstate_t* _State );
errno_t __cdecl mbsrtowcs_s( size_t* _Retval, wchar_t* _Dst, size_t _Size, char const** _PSrc, size_t _N, mbstate_t* _State );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( ### TO ### _Success_(return == 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    ### TO ### errno_t, mbsrtowcs_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, mbsrtowcs_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, mbsrtowcs_s, ### TO ### _Out_opt_                         size_t*,      _Retval, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, mbsrtowcs_s,                          size_t*,      _Retval, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, mbsrtowcs_s,                          size_t*,      _Retval, ### TO ### _Post_z_                          wchar_t,      _Dest, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, mbsrtowcs_s,                          size_t*,      _Retval,                           wchar_t,      _Dest, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, mbsrtowcs_s,                          size_t*,      _Retval,                           wchar_t,      _Dest, ### TO ### _Inout_ _Deref_prepost_opt_valid_ char const**, _PSource, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, mbsrtowcs_s,                          size_t*,      _Retval,                           wchar_t,      _Dest,   char const**, _PSource, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, mbsrtowcs_s,                          size_t*,      _Retval,                           wchar_t,      _Dest,   char const**, _PSource, ### TO ### _In_                              size_t,       _Count, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, mbsrtowcs_s,                          size_t*,      _Retval,                           wchar_t,      _Dest,   char const**, _PSource,                               size_t,       _Count, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, mbsrtowcs_s,                          size_t*,      _Retval,                           wchar_t,      _Dest,   char const**, _PSource,                               size_t,       _Count, ### TO ### _Inout_                           mbstate_t*,   _State */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, mbsrtowcs_s,                          size_t*,      _Retval,                           wchar_t,      _Dest,   char const**, _PSource,                               size_t,       _Count,                            mbstate_t*,   _State */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, mbsrtowcs_s,                          size_t*,      _Retval,                           wchar_t,      _Dest,   char const**, _PSource,                               size_t,       _Count,                            mbstate_t*,   _State ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE( ### TO ### _Success_(return == 0) _ACRTIMP, mbsrtowcs, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE(    , mbsrtowcs, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE(    , mbsrtowcs, ### TO ### _Out_writes_opt_z_(_Count),           wchar_t,      _Dest, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE(    , mbsrtowcs,   ,           wchar_t,      _Dest, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE(    , mbsrtowcs,   ,           wchar_t,      _Dest, ### TO ### _Deref_pre_opt_z_                 char const**, _PSrc, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE(    , mbsrtowcs,   ,           wchar_t,      _Dest,                  char const**, _PSrc, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE(    , mbsrtowcs,   ,           wchar_t,      _Dest,                  char const**, _PSrc, ### TO ### _In_                              size_t,       _Count, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE(    , mbsrtowcs,   ,           wchar_t,      _Dest,                  char const**, _PSrc,                               size_t,       _Count, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE(    , mbsrtowcs,   ,           wchar_t,      _Dest,                  char const**, _PSrc,                               size_t,       _Count, ### TO ### _Inout_                           mbstate_t*,   _State */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE(    , mbsrtowcs,   ,           wchar_t,      _Dest,                  char const**, _PSrc,                               size_t,       _Count,                            mbstate_t*,   _State */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE(    , mbsrtowcs,   ,           wchar_t,      _Dest,                  char const**, _PSrc,                               size_t,       _Count,                            mbstate_t*,   _State ### TO ### ) */
size_t __cdecl mbsrtowcs( wchar_t * _Dest, char const** _PSrc, size_t _Count, mbstate_t* _State );
errno_t __cdecl wcrtomb_s( size_t* _Retval, char* _Dst, size_t _SizeInBytes, wchar_t _Ch, mbstate_t* _State );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( ### TO ### _Success_(return == 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2(    ### TO ### errno_t, wcrtomb_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2(    errno_t, wcrtomb_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2(    errno_t, wcrtomb_s, ### TO ### _Out_opt_                 size_t*,    _Retval, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2(    errno_t, wcrtomb_s,                  size_t*,    _Retval, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2(    errno_t, wcrtomb_s,                  size_t*,    _Retval, ### TO ### _Out_writes_opt_z_(_Size) char,       _Dest, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2(    errno_t, wcrtomb_s,                  size_t*,    _Retval,    char,       _Dest, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2(    errno_t, wcrtomb_s,                  size_t*,    _Retval,    char,       _Dest, ### TO ### _In_                      wchar_t,    _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2(    errno_t, wcrtomb_s,                  size_t*,    _Retval,    char,       _Dest,                       wchar_t,    _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2(    errno_t, wcrtomb_s,                  size_t*,    _Retval,    char,       _Dest,                       wchar_t,    _Source, ### TO ### _Inout_opt_               mbstate_t*, _State */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2(    errno_t, wcrtomb_s,                  size_t*,    _Retval,    char,       _Dest,                       wchar_t,    _Source,                mbstate_t*, _State */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2(    errno_t, wcrtomb_s,                  size_t*,    _Retval,    char,       _Dest,                       wchar_t,    _Source,                mbstate_t*, _State ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_SIZE( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_SIZE( ### TO ### _ACRTIMP, wcrtomb, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_SIZE( , wcrtomb, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_SIZE( , wcrtomb, ### TO ### _Pre_maybenull_ _Post_z_, char,       _Dest, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_SIZE( , wcrtomb,  , char,       _Dest, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_SIZE( , wcrtomb,  , char,       _Dest, ### TO ### _In_                      wchar_t,    _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_SIZE( , wcrtomb,  , char,       _Dest,                       wchar_t,    _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_SIZE( , wcrtomb,  , char,       _Dest,                       wchar_t,    _Source, ### TO ### _Inout_opt_              mbstate_t*, _State */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_SIZE( , wcrtomb,  , char,       _Dest,                       wchar_t,    _Source,               mbstate_t*, _State */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_SIZE( , wcrtomb,  , char,       _Dest,                       wchar_t,    _Source,               mbstate_t*, _State ### TO ### ) */
size_t __cdecl wcrtomb( char * _Dest, wchar_t _Source, mbstate_t* _State );
errno_t __cdecl wcsrtombs_s( size_t* _Retval, char* _Dst, size_t _SizeInBytes, wchar_t const** _Src, size_t _Size, mbstate_t* _State );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( ### TO ### _Success_(return == 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    ### TO ### errno_t, wcsrtombs_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, wcsrtombs_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, wcsrtombs_s, ### TO ### _Out_opt_                 size_t*,         _Retval, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, wcsrtombs_s,                  size_t*,         _Retval, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, wcsrtombs_s,                  size_t*,         _Retval, ### TO ### _Out_writes_opt_z_(_Size) char,            _Dest, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, wcsrtombs_s,                  size_t*,         _Retval,    char,            _Dest, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, wcsrtombs_s,                  size_t*,         _Retval,    char,            _Dest, ### TO ### _Inout_ _Deref_prepost_z_ wchar_t const**, _PSrc, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, wcsrtombs_s,                  size_t*,         _Retval,    char,            _Dest,   wchar_t const**, _PSrc, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, wcsrtombs_s,                  size_t*,         _Retval,    char,            _Dest,   wchar_t const**, _PSrc, ### TO ### _In_                      size_t,          _Count, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, wcsrtombs_s,                  size_t*,         _Retval,    char,            _Dest,   wchar_t const**, _PSrc,                       size_t,          _Count, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, wcsrtombs_s,                  size_t*,         _Retval,    char,            _Dest,   wchar_t const**, _PSrc,                       size_t,          _Count, ### TO ### _Inout_opt_               mbstate_t*,      _State */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, wcsrtombs_s,                  size_t*,         _Retval,    char,            _Dest,   wchar_t const**, _PSrc,                       size_t,          _Count,                mbstate_t*,      _State */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3(    errno_t, wcsrtombs_s,                  size_t*,         _Retval,    char,            _Dest,   wchar_t const**, _PSrc,                       size_t,          _Count,                mbstate_t*,      _State ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE( ### TO ### _ACRTIMP, wcsrtombs, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE( , wcsrtombs, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE( , wcsrtombs, ### TO ### _Pre_maybenull_ _Post_z_, char,            _Dest, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE( , wcsrtombs,  , char,            _Dest, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE( , wcsrtombs,  , char,            _Dest, ### TO ### _Inout_ _Deref_prepost_z_ wchar_t const**, _PSource, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE( , wcsrtombs,  , char,            _Dest,   wchar_t const**, _PSource, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE( , wcsrtombs,  , char,            _Dest,   wchar_t const**, _PSource, ### TO ### _In_                      size_t,          _Count, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE( , wcsrtombs,  , char,            _Dest,   wchar_t const**, _PSource,                       size_t,          _Count, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE( , wcsrtombs,  , char,            _Dest,   wchar_t const**, _PSource,                       size_t,          _Count, ### TO ### _Inout_opt_               mbstate_t*,      _State */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE( , wcsrtombs,  , char,            _Dest,   wchar_t const**, _PSource,                       size_t,          _Count,                mbstate_t*,      _State */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE( , wcsrtombs,  , char,            _Dest,   wchar_t const**, _PSource,                       size_t,          _Count,                mbstate_t*,      _State ### TO ### ) */
size_t __cdecl wcsrtombs( char * _Dest, wchar_t const** _PSource, size_t _Count, mbstate_t* _State );
int __cdecl wctob( wint_t _WCh );
      
/* #pragma warning(pop)  */
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/wchar.h */
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
