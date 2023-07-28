local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/wchar.h */
enum { _INC_WCHAR = 1 };
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]] require 'ffi.Windows.c.corecrt' ffi.cdef[[
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_memcpy_s.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/errno.h */
]] require 'ffi.c.errno' ffi.cdef[[
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/errno.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
/* #define _CRT_MEMCPY_S_INLINE static __inline ### string, not number "static __inline" */
/* #pragma warning(pop)  */
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_memcpy_s.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wconio.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_stdio_config.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
enum { _CRT_STDIO_INLINE = 0 };
/* #define _CRT_INTERNAL_STDIO_SYMBOL_PREFIX "" ### string, not number "\"\"" */
 
/* #define _CRT_INTERNAL_LOCAL_PRINTF_OPTIONS (*__local_stdio_printf_options()) ### string, not number "(*__local_stdio_printf_options())" */
/* #define _CRT_INTERNAL_LOCAL_SCANF_OPTIONS  (*__local_stdio_scanf_options ()) ### string, not number "(*__local_stdio_scanf_options ())" */
/* #define _CRT_INTERNAL_PRINTF_LEGACY_VSPRINTF_NULL_TERMINATION (1ULL << 0) ### string, not number "(1ULL << 0)" */
/* #define _CRT_INTERNAL_PRINTF_STANDARD_SNPRINTF_BEHAVIOR       (1ULL << 1) ### string, not number "(1ULL << 1)" */
/* #define _CRT_INTERNAL_PRINTF_LEGACY_WIDE_SPECIFIERS           (1ULL << 2) ### string, not number "(1ULL << 2)" */
/* #define _CRT_INTERNAL_PRINTF_LEGACY_MSVCRT_COMPATIBILITY      (1ULL << 3) ### string, not number "(1ULL << 3)" */
/* #define _CRT_INTERNAL_PRINTF_LEGACY_THREE_DIGIT_EXPONENTS     (1ULL << 4) ### string, not number "(1ULL << 4)" */
/* #define _CRT_INTERNAL_PRINTF_STANDARD_ROUNDING                (1ULL << 5) ### string, not number "(1ULL << 5)" */
/* #define _CRT_INTERNAL_SCANF_SECURECRT                   (1ULL << 0) ### string, not number "(1ULL << 0)" */
/* #define _CRT_INTERNAL_SCANF_LEGACY_WIDE_SPECIFIERS      (1ULL << 1) ### string, not number "(1ULL << 1)" */
/* #define _CRT_INTERNAL_SCANF_LEGACY_MSVCRT_COMPATIBILITY (1ULL << 2) ### string, not number "(1ULL << 2)" */
/* #pragma warning(pop)  */
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
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
/* #pragma push_macro("_wgetcwd") */
/* #pragma push_macro("_wgetdcwd") */
__declspec(allocator) wchar_t* __cdecl _wgetcwd( wchar_t* _DstBuf, int _SizeInWords );
__declspec(allocator) wchar_t* __cdecl _wgetdcwd( int _Drive, wchar_t* _DstBuf, int _SizeInWords );
enum { _wgetdcwd_nolock = 0 };
/* #pragma pop_macro("_wgetcwd") */
/* #pragma pop_macro("_wgetdcwd") */
int __cdecl _wchdir( wchar_t const* _Path );
int __cdecl _wmkdir( wchar_t const* _Path );
int __cdecl _wrmdir( wchar_t const* _Path );
/* #pragma warning(pop)  */
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wdirect.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wio.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_share.h */
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
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_share.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
enum { _wfinddata_t = 0 };
enum { _wfinddatai64_t = 0 };
typedef unsigned long _fsize_t;
struct _wfinddata32_t {
	unsigned attrib;
	__time32_t time_create;
	__time32_t time_access;
	__time32_t time_write;
	_fsize_t size;
	wchar_t name[260];
};
struct _wfinddata32i64_t {
	unsigned attrib;
	__time32_t time_create;
	__time32_t time_access;
	__time32_t time_write;
	__int64 size;
	wchar_t name[260];
};
struct _wfinddata64i32_t {
	unsigned attrib;
	__time64_t time_create;
	__time64_t time_access;
	__time64_t time_write;
	_fsize_t size;
	wchar_t name[260];
};
struct _wfinddata64_t {
	unsigned attrib;
	__time64_t time_create;
	__time64_t time_access;
	__time64_t time_write;
	__int64 size;
	wchar_t name[260];
};
enum { _wfindfirst = 0 };
enum { _wfindnext = 0 };
enum { _wfindfirsti64 = 0 };
enum { _wfindnexti64 = 0 };
int __cdecl _waccess( wchar_t const* _FileName, int _AccessMode );
errno_t __cdecl _waccess_s( wchar_t const* _FileName, int _AccessMode );
int __cdecl _wchmod( wchar_t const* _FileName, int _Mode );
int __cdecl _wcreat( wchar_t const* _FileName, int _PermissionMode );
intptr_t __cdecl _wfindfirst32( wchar_t const* _FileName, struct _wfinddata32_t* _FindData );
int __cdecl _wfindnext32( intptr_t _FindHandle, struct _wfinddata32_t* _FindData );
int __cdecl _wunlink( wchar_t const* _FileName );
int __cdecl _wrename( wchar_t const* _OldFileName, wchar_t const* _NewFileName );
errno_t __cdecl _wmktemp_s( wchar_t* _TemplateName, size_t _SizeInWords );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( ### TO ### errno_t, _wmktemp_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wmktemp_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wmktemp_s, ### TO ### wchar_t, _TemplateName */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wmktemp_s, wchar_t, _TemplateName */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wmktemp_s, wchar_t, _TemplateName ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _wmktemp, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wmktemp, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wmktemp, ### TO ### _Inout_z_, wchar_t, _TemplateName */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wmktemp, , wchar_t, _TemplateName */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wmktemp, , wchar_t, _TemplateName ### TO ### ) */
wchar_t* __cdecl _wmktemp( wchar_t * _TemplateName );
intptr_t __cdecl _wfindfirst32i64( wchar_t const* _FileName, struct _wfinddata32i64_t* _FindData );
intptr_t __cdecl _wfindfirst64i32( wchar_t const* _FileName, struct _wfinddata64i32_t* _FindData );
intptr_t __cdecl _wfindfirst64( wchar_t const* _FileName, struct _wfinddata64_t* _FindData );
int __cdecl _wfindnext32i64( intptr_t _FindHandle, struct _wfinddata32i64_t* _FindData );
int __cdecl _wfindnext64i32( intptr_t _FindHandle, struct _wfinddata64i32_t* _FindData );
int __cdecl _wfindnext64( intptr_t _FindHandle, struct _wfinddata64_t* _FindData );
errno_t __cdecl _wsopen_s( int* _FileHandle, wchar_t const* _FileName, int _OpenFlag, int _ShareFlag, int _PermissionFlag );
errno_t __cdecl _wsopen_dispatch( wchar_t const* _FileName, int _OFlag, int _ShFlag, int _PMode, int* _PFileHandle, int _BSecure );
int __cdecl _wopen( wchar_t const* _FileName, int _OpenFlag, ...);
int __cdecl _wsopen( wchar_t const* _FileName, int _OpenFlag, int _ShareFlag, ...);
/* #pragma warning(pop)  */
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
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
enum { _FILE_DEFINED = 1 };
typedef struct _iobuf {
	void* _Placeholder;
} FILE;
FILE* __cdecl __acrt_iob_func(unsigned _Ix);
/* #define stdin  (__acrt_iob_func(0)) ### string, not number "(__acrt_iob_func(0))" */
/* #define stdout (__acrt_iob_func(1)) ### string, not number "(__acrt_iob_func(1))" */
/* #define stderr (__acrt_iob_func(2)) ### string, not number "(__acrt_iob_func(2))" */
/* #define WEOF ((wint_t)(0xFFFF)) ### string, not number "((wint_t)(0xFFFF))" */
wint_t __cdecl fgetwc( FILE* _Stream );
wint_t __cdecl _fgetwchar(void);
wint_t __cdecl fputwc( wchar_t _Character, FILE* _Stream);
wint_t __cdecl _fputwchar( wchar_t _Character );
wint_t __cdecl getwc( FILE* _Stream );
wint_t __cdecl getwchar(void);
wchar_t* __cdecl fgetws( wchar_t* _Buffer, int _BufferCount, FILE* _Stream );
int __cdecl fputws( wchar_t const* _Buffer, FILE* _Stream );
wchar_t* __cdecl _getws_s( wchar_t* _Buffer, size_t _BufferCount );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( ### TO ### _Success_(return != 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(    ### TO ### wchar_t*, _getws_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(    wchar_t*, _getws_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(    wchar_t*, _getws_s, ### TO ### _Always_(_Post_z_) wchar_t, _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(    wchar_t*, _getws_s,    wchar_t, _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(    wchar_t*, _getws_s,    wchar_t, _Buffer ### TO ### ) */
wint_t __cdecl putwc( wchar_t _Character, FILE* _Stream );
wint_t __cdecl putwchar( wchar_t _Character );
int __cdecl _putws( wchar_t const* _Buffer );
wint_t __cdecl ungetwc( wint_t _Character, FILE* _Stream );
FILE * __cdecl _wfdopen( int _FileHandle, wchar_t const* _Mode );
FILE* __cdecl _wfopen( wchar_t const* _FileName, wchar_t const* _Mode );
errno_t __cdecl _wfopen_s( FILE** _Stream, wchar_t const* _FileName, wchar_t const* _Mode );
FILE* __cdecl _wfreopen( wchar_t const* _FileName, wchar_t const* _Mode, FILE* _OldStream );
errno_t __cdecl _wfreopen_s( FILE** _Stream, wchar_t const* _FileName, wchar_t const* _Mode, FILE* _OldStream );
FILE* __cdecl _wfsopen( wchar_t const* _FileName, wchar_t const* _Mode, int _ShFlag );
void __cdecl _wperror( wchar_t const* _ErrorMessage );
FILE* __cdecl _wpopen( wchar_t const* _Command, wchar_t const* _Mode );
int __cdecl _wremove( wchar_t const* _FileName );
/*     #pragma push_macro("_wtempnam") */
__declspec(allocator) wchar_t* __cdecl _wtempnam( wchar_t const* _Directory, wchar_t const* _FilePrefix );
/*     #pragma pop_macro("_wtempnam") */
errno_t __cdecl _wtmpnam_s( wchar_t* _Buffer, size_t _BufferCount );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( ### TO ### _Success_(return == 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(    ### TO ### errno_t, _wtmpnam_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(    errno_t, _wtmpnam_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(    errno_t, _wtmpnam_s, ### TO ### _Always_(_Post_z_) wchar_t, _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(    errno_t, _wtmpnam_s,    wchar_t, _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(    errno_t, _wtmpnam_s,    wchar_t, _Buffer ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( ### TO ### _Success_(return != 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(    ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _wtmpnam, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(    wchar_t*, __RETURN_POLICY_DST, , _wtmpnam, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(    wchar_t*, __RETURN_POLICY_DST, , _wtmpnam, ### TO ### _Pre_maybenull_ _Always_(_Post_z_), wchar_t, _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(    wchar_t*, __RETURN_POLICY_DST, , _wtmpnam,    , wchar_t, _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(    wchar_t*, __RETURN_POLICY_DST, , _wtmpnam,    , wchar_t, _Buffer ### TO ### ) */
wchar_t* __cdecl _wtmpnam( wchar_t * _Buffer );
wint_t __cdecl _fgetwc_nolock( FILE* _Stream );
wint_t __cdecl _fputwc_nolock( wchar_t _Character, FILE* _Stream );
wint_t __cdecl _getwc_nolock( FILE* _Stream );
wint_t __cdecl _putwc_nolock( wchar_t _Character, FILE* _Stream );
wint_t __cdecl _ungetwc_nolock( wint_t _Character, FILE* _Stream );
int __cdecl __stdio_common_vfwprintf( unsigned __int64 _Options, FILE* _Stream, wchar_t const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl __stdio_common_vfwprintf_s( unsigned __int64 _Options, FILE* _Stream, wchar_t const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl __stdio_common_vfwprintf_p( unsigned __int64 _Options, FILE* _Stream, wchar_t const* _Format, _locale_t _Locale, va_list _ArgList );
                    int __cdecl __stdio_common_vfwscanf( unsigned __int64 _Options, FILE* _Stream, wchar_t const* _Format, _locale_t _Locale, va_list _ArgList );
           
/* #define _SWPRINTFS_DEPRECATED _CRT_DEPRECATE_TEXT(                                        "function has been changed to conform with the ISO C standard, "                  "adding an extra character count parameter. To use the traditional "                  "Microsoft version, set _CRT_NON_CONFORMING_SWPRINTFS.") ### string, not number "_CRT_DEPRECATE_TEXT(                                        \"function has been changed to conform with the ISO C standard, \"                  \"adding an extra character count parameter. To use the traditional \"                  \"Microsoft version, set _CRT_NON_CONFORMING_SWPRINTFS.\")" */
int __cdecl __stdio_common_vswprintf( unsigned __int64 _Options, wchar_t* _Buffer, size_t _BufferCount, wchar_t const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl __stdio_common_vswprintf_s( unsigned __int64 _Options, wchar_t* _Buffer, size_t _BufferCount, wchar_t const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl __stdio_common_vsnwprintf_s( unsigned __int64 _Options, wchar_t* _Buffer, size_t _BufferCount, size_t _MaxCount, wchar_t const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl __stdio_common_vswprintf_p( unsigned __int64 _Options, wchar_t* _Buffer, size_t _BufferCount, wchar_t const* _Format, _locale_t _Locale, va_list _ArgList );
  
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX( ### TO ### _Success_(return >= 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    ### TO ### int, __RETURN_POLICY_SAME, _CRT_STDIO_INLINE, __CRTDECL, _snwprintf, _vsnwprintf, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, __inline, __cdecl, _snwprintf, _vsnwprintf, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, __inline, __cdecl, _snwprintf, _vsnwprintf, ### TO ### _Pre_notnull_ _Post_maybez_                   wchar_t, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, __inline, __cdecl, _snwprintf, _vsnwprintf,                     wchar_t, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, __inline, __cdecl, _snwprintf, _vsnwprintf,                     wchar_t, ### TO ### _Out_writes_opt_(_BufferCount) _Post_maybez_, wchar_t,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, __inline, __cdecl, _snwprintf, _vsnwprintf,                     wchar_t,    , wchar_t,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, __inline, __cdecl, _snwprintf, _vsnwprintf,                     wchar_t,    , wchar_t,        _Buffer, ### TO ### _In_                                          size_t,         _BufferCount, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, __inline, __cdecl, _snwprintf, _vsnwprintf,                     wchar_t,    , wchar_t,        _Buffer,                                           size_t,         _BufferCount, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, __inline, __cdecl, _snwprintf, _vsnwprintf,                     wchar_t,    , wchar_t,        _Buffer,                                           size_t,         _BufferCount, ### TO ### _In_z_ _Printf_format_string_                 wchar_t const*, _Format */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, __inline, __cdecl, _snwprintf, _vsnwprintf,                     wchar_t,    , wchar_t,        _Buffer,                                           size_t,         _BufferCount,                   wchar_t const*, _Format */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, __inline, __cdecl, _snwprintf, _vsnwprintf,                     wchar_t,    , wchar_t,        _Buffer,                                           size_t,         _BufferCount,                   wchar_t const*, _Format ### TO ### ) */
  
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST( ### TO ### _Success_(return >= 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(    ### TO ### int, _snwprintf_s, _vsnwprintf_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(    int, _snwprintf_s, _vsnwprintf_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(    int, _snwprintf_s, _vsnwprintf_s, ### TO ### _Always_(_Post_z_)            wchar_t,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(    int, _snwprintf_s, _vsnwprintf_s,               wchar_t,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(    int, _snwprintf_s, _vsnwprintf_s,               wchar_t,        _Buffer, ### TO ### _In_                          size_t,         _BufferCount, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(    int, _snwprintf_s, _vsnwprintf_s,               wchar_t,        _Buffer,                           size_t,         _BufferCount, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(    int, _snwprintf_s, _vsnwprintf_s,               wchar_t,        _Buffer,                           size_t,         _BufferCount, ### TO ### _In_z_ _Printf_format_string_ wchar_t const*, _Format */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(    int, _snwprintf_s, _vsnwprintf_s,               wchar_t,        _Buffer,                           size_t,         _BufferCount,   wchar_t const*, _Format */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(    int, _snwprintf_s, _vsnwprintf_s,               wchar_t,        _Buffer,                           size_t,         _BufferCount,   wchar_t const*, _Format ### TO ### ) */
   
/*         #pragma warning(push) */
/*         #pragma warning(disable: 4141 6054) */
/*         #pragma warning(pop) */
int __cdecl __stdio_common_vswscanf( unsigned __int64 _Options, wchar_t const* _Buffer, size_t _BufferCount, wchar_t const* _Format, _locale_t _Locale, va_list _ArgList );
  
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( ### TO ### _Success_(return >= 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    ### TO ### int, vswscanf_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    int, vswscanf_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    int, vswscanf_s, ### TO ### _In_z_                        wchar_t,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    int, vswscanf_s,                         wchar_t,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    int, vswscanf_s,                         wchar_t,        _Buffer, ### TO ### _In_z_ _Printf_format_string_ wchar_t const*, _Format, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    int, vswscanf_s,                         wchar_t,        _Buffer,   wchar_t const*, _Format, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    int, vswscanf_s,                         wchar_t,        _Buffer,   wchar_t const*, _Format, ### TO ### va_list,        _ArgList */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    int, vswscanf_s,                         wchar_t,        _Buffer,   wchar_t const*, _Format, va_list,        _ArgList */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    int, vswscanf_s,                         wchar_t,        _Buffer,   wchar_t const*, _Format, va_list,        _ArgList ### TO ### ) */
        
/* #pragma warning(pop)  */
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
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
__declspec(allocator) wchar_t* __cdecl _wcsdup( wchar_t const* _String );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, wcscat_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscat_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscat_s, ### TO ### wchar_t,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscat_s, wchar_t,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscat_s, wchar_t,        _Destination, ### TO ### _In_z_ wchar_t const*, _Source */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscat_s, wchar_t,        _Destination,  wchar_t const*, _Source */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscat_s, wchar_t,        _Destination,  wchar_t const*, _Source ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, wcscat, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscat, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscat, ### TO ### _Inout_updates_z_(_String_length_(_Destination) + _String_length_(_Source) + 1), wchar_t,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscat,   , wchar_t,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscat,   , wchar_t,        _Destination, ### TO ### _In_z_                                                                           wchar_t const*, _Source */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscat,   , wchar_t,        _Destination,                                                                            wchar_t const*, _Source */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscat,   , wchar_t,        _Destination,                                                                            wchar_t const*, _Source ### TO ### ) */
wchar_t* __cdecl wcscat( wchar_t * _Destination, wchar_t const* _Source );
int __cdecl wcscmp( wchar_t const* _String1, wchar_t const* _String2 );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, wcscpy_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscpy_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscpy_s, ### TO ### wchar_t,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscpy_s, wchar_t,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscpy_s, wchar_t,        _Destination, ### TO ### _In_z_ wchar_t const*, _Source */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscpy_s, wchar_t,        _Destination,  wchar_t const*, _Source */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscpy_s, wchar_t,        _Destination,  wchar_t const*, _Source ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, wcscpy, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscpy, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscpy, ### TO ### _Out_writes_z_(_String_length_(_Source) + 1), wchar_t,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscpy,   , wchar_t,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscpy,   , wchar_t,        _Destination, ### TO ### _In_z_                                        wchar_t const*, _Source */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscpy,   , wchar_t,        _Destination,                                         wchar_t const*, _Source */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscpy,   , wchar_t,        _Destination,                                         wchar_t const*, _Source ### TO ### ) */
wchar_t* __cdecl wcscpy( wchar_t * _Destination, wchar_t const* _Source );
size_t __cdecl wcscspn( wchar_t const* _String, wchar_t const* _Control );
size_t __cdecl wcslen( wchar_t const* _String );
/* ### INCOMPLETE ARG MACRO ### _When_ ### IN LINE ### _When_( */
/* ### PREPENDING ### _When_( ### TO ### _MaxCount > _String_length_(_Source), */
/* ### INCOMPLETE ARG MACRO ### _When_ ### IN LINE ### _When_( _MaxCount > _String_length_(_Source), */
/* ### PREPENDING ### _When_( _MaxCount > _String_length_(_Source), ### TO ### _Post_satisfies_(return == _String_length_(_Source)) */
/* ### INCOMPLETE ARG MACRO ### _When_ ### IN LINE ### _When_( _MaxCount > _String_length_(_Source),    */
/* ### PREPENDING ### _When_( _MaxCount > _String_length_(_Source),    ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### _When_ ### IN LINE ### _When_( */
/* ### PREPENDING ### _When_( ### TO ### _MaxCount <= _String_length_(_Source), */
/* ### INCOMPLETE ARG MACRO ### _When_ ### IN LINE ### _When_( _MaxCount <= _String_length_(_Source), */
/* ### PREPENDING ### _When_( _MaxCount <= _String_length_(_Source), ### TO ### _Post_satisfies_(return == _MaxCount) */
/* ### INCOMPLETE ARG MACRO ### _When_ ### IN LINE ### _When_( _MaxCount <= _String_length_(_Source),    */
/* ### PREPENDING ### _When_( _MaxCount <= _String_length_(_Source),    ### TO ### ) */
size_t __cdecl wcsnlen( wchar_t const* _Source, size_t _MaxCount );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( ### TO ### errno_t, wcsncat_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncat_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncat_s, ### TO ### _Prepost_z_             wchar_t,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncat_s,              wchar_t,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncat_s,              wchar_t,        _Destination, ### TO ### _In_reads_or_z_(_Count) wchar_t const*, _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncat_s,              wchar_t,        _Destination,    wchar_t const*, _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncat_s,              wchar_t,        _Destination,    wchar_t const*, _Source, ### TO ### _In_                    size_t,         _Count */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncat_s,              wchar_t,        _Destination,    wchar_t const*, _Source,                     size_t,         _Count */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncat_s,              wchar_t,        _Destination,    wchar_t const*, _Source,                     size_t,         _Count ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, wcsncat, wcsncat_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncat, wcsncat_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncat, wcsncat_s, ### TO ### _Inout_updates_z_(_Size)   wchar_t, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncat, wcsncat_s,      wchar_t, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncat, wcsncat_s,      wchar_t, ### TO ### _Inout_updates_z_(_Count), wchar_t,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncat, wcsncat_s,      wchar_t,   , wchar_t,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncat, wcsncat_s,      wchar_t,   , wchar_t,        _Destination, ### TO ### _In_reads_or_z_(_Count)    wchar_t const*, _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncat, wcsncat_s,      wchar_t,   , wchar_t,        _Destination,       wchar_t const*, _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncat, wcsncat_s,      wchar_t,   , wchar_t,        _Destination,       wchar_t const*, _Source, ### TO ### _In_                       size_t,         _Count */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncat, wcsncat_s,      wchar_t,   , wchar_t,        _Destination,       wchar_t const*, _Source,                        size_t,         _Count */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncat, wcsncat_s,      wchar_t,   , wchar_t,        _Destination,       wchar_t const*, _Source,                        size_t,         _Count ### TO ### ) */
wchar_t* __cdecl wcsncat( wchar_t * _Destination, wchar_t const* _Source, size_t _Count );
int __cdecl wcsncmp( wchar_t const* _String1, wchar_t const* _String2, size_t _MaxCount );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( ### TO ### errno_t, wcsncpy_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncpy_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncpy_s, ### TO ### wchar_t,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncpy_s, wchar_t,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncpy_s, wchar_t,        _Destination, ### TO ### _In_reads_or_z_(_Count) wchar_t const*, _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncpy_s, wchar_t,        _Destination,    wchar_t const*, _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncpy_s, wchar_t,        _Destination,    wchar_t const*, _Source, ### TO ### _In_                    size_t,         _Count */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncpy_s, wchar_t,        _Destination,    wchar_t const*, _Source,                     size_t,         _Count */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncpy_s, wchar_t,        _Destination,    wchar_t const*, _Source,                     size_t,         _Count ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, wcsncpy, wcsncpy_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncpy, wcsncpy_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncpy, wcsncpy_s, ### TO ### _Pre_notnull_ _Post_maybez_         wchar_t, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncpy, wcsncpy_s,           wchar_t, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncpy, wcsncpy_s,           wchar_t, ### TO ### _Out_writes_(_Count) _Post_maybez_, wchar_t,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncpy, wcsncpy_s,           wchar_t,    , wchar_t,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncpy, wcsncpy_s,           wchar_t,    , wchar_t,        _Destination, ### TO ### _In_reads_or_z_(_Count)             wchar_t const*, _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncpy, wcsncpy_s,           wchar_t,    , wchar_t,        _Destination,                wchar_t const*, _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncpy, wcsncpy_s,           wchar_t,    , wchar_t,        _Destination,                wchar_t const*, _Source, ### TO ### _In_                                size_t,         _Count */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncpy, wcsncpy_s,           wchar_t,    , wchar_t,        _Destination,                wchar_t const*, _Source,                                 size_t,         _Count */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncpy, wcsncpy_s,           wchar_t,    , wchar_t,        _Destination,                wchar_t const*, _Source,                                 size_t,         _Count ### TO ### ) */
wchar_t* __cdecl wcsncpy( wchar_t * _Destination, wchar_t const* _Source, size_t _Count );
wchar_t * __cdecl wcspbrk( wchar_t const* _String, wchar_t const* _Control );
size_t __cdecl wcsspn( wchar_t const* _String, wchar_t const* _Control );
wchar_t* __cdecl wcstok( wchar_t* _String, wchar_t const* _Delimiter, wchar_t** _Context );
/* #define _WCSTOK_DEPRECATED _CRT_DEPRECATE_TEXT(                                            "wcstok has been changed to conform with the ISO C standard, "                     "adding an extra context parameter. To use the legacy Microsoft "                  "wcstok, define _CRT_NON_CONFORMING_WCSTOK.") ### string, not number "_CRT_DEPRECATE_TEXT(                                            \"wcstok has been changed to conform with the ISO C standard, \"                     \"adding an extra context parameter. To use the legacy Microsoft \"                  \"wcstok, define _CRT_NON_CONFORMING_WCSTOK.\")" */
 wchar_t* __cdecl _wcserror( int _ErrorNumber );
errno_t __cdecl _wcserror_s( wchar_t* _Buffer, size_t _SizeInWords, int _ErrorNumber );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, _wcserror_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcserror_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcserror_s, ### TO ### wchar_t, _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcserror_s, wchar_t, _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcserror_s, wchar_t, _Buffer, ### TO ### _In_ int,     _Error */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcserror_s, wchar_t, _Buffer,  int,     _Error */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcserror_s, wchar_t, _Buffer,  int,     _Error ### TO ### ) */
wchar_t* __cdecl __wcserror( wchar_t const* _String );
errno_t __cdecl __wcserror_s( wchar_t* _Buffer, size_t _SizeInWords, wchar_t const* _ErrorMessage );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, __wcserror_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, __wcserror_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, __wcserror_s, ### TO ### wchar_t,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, __wcserror_s, wchar_t,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, __wcserror_s, wchar_t,        _Buffer, ### TO ### _In_z_ wchar_t const*, _ErrorMessage */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, __wcserror_s, wchar_t,        _Buffer,  wchar_t const*, _ErrorMessage */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, __wcserror_s, wchar_t,        _Buffer,  wchar_t const*, _ErrorMessage ### TO ### ) */
int __cdecl _wcsicmp( wchar_t const* _String1, wchar_t const* _String2 );
int __cdecl _wcsicmp_l( wchar_t const* _String1, wchar_t const* _String2, _locale_t _Locale );
int __cdecl _wcsnicmp( wchar_t const* _String1, wchar_t const* _String2, size_t _MaxCount );
int __cdecl _wcsnicmp_l( wchar_t const* _String1, wchar_t const* _String2, size_t _MaxCount, _locale_t _Locale );
errno_t __cdecl _wcsnset_s( wchar_t* _Destination, size_t _SizeInWords, wchar_t _Value, size_t _MaxCount );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( ### TO ### errno_t, _wcsnset_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _wcsnset_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _wcsnset_s, ### TO ### _Prepost_z_ wchar_t, _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _wcsnset_s,  wchar_t, _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _wcsnset_s,  wchar_t, _Destination, ### TO ### _In_        wchar_t, _Value, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _wcsnset_s,  wchar_t, _Destination,         wchar_t, _Value, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _wcsnset_s,  wchar_t, _Destination,         wchar_t, _Value, ### TO ### _In_         size_t, _MaxCount */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _wcsnset_s,  wchar_t, _Destination,         wchar_t, _Value,          size_t, _MaxCount */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _wcsnset_s,  wchar_t, _Destination,         wchar_t, _Value,          size_t, _MaxCount ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _wcsnset, _wcsnset_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsnset, _wcsnset_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsnset, _wcsnset_s, ### TO ### _Inout_updates_z_(_Size)      wchar_t, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsnset, _wcsnset_s,         wchar_t, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsnset, _wcsnset_s,         wchar_t, ### TO ### _Inout_updates_z_(_MaxCount), wchar_t, _String, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsnset, _wcsnset_s,         wchar_t,   , wchar_t, _String, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsnset, _wcsnset_s,         wchar_t,   , wchar_t, _String, ### TO ### _In_                          wchar_t, _Value, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsnset, _wcsnset_s,         wchar_t,   , wchar_t, _String,                           wchar_t, _Value, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsnset, _wcsnset_s,         wchar_t,   , wchar_t, _String,                           wchar_t, _Value, ### TO ### _In_                          size_t,  _MaxCount */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsnset, _wcsnset_s,         wchar_t,   , wchar_t, _String,                           wchar_t, _Value,                           size_t,  _MaxCount */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsnset, _wcsnset_s,         wchar_t,   , wchar_t, _String,                           wchar_t, _Value,                           size_t,  _MaxCount ### TO ### ) */
wchar_t* __cdecl _wcsnset( wchar_t * _String, wchar_t _Value, size_t _MaxCount );
wchar_t* __cdecl _wcsrev( wchar_t* _String );
errno_t __cdecl _wcsset_s( wchar_t* _Destination, size_t _SizeInWords, wchar_t _Value );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, _wcsset_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsset_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsset_s, ### TO ### _Prepost_z_ wchar_t, _String, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsset_s,  wchar_t, _String, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsset_s,  wchar_t, _String, ### TO ### _In_        wchar_t, _Value */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsset_s,  wchar_t, _String,         wchar_t, _Value */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsset_s,  wchar_t, _String,         wchar_t, _Value ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _wcsset, _wcsset_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsset, _wcsset_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsset, _wcsset_s, ### TO ### _Inout_updates_z_(_Size) wchar_t, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsset, _wcsset_s,    wchar_t, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsset, _wcsset_s,    wchar_t, ### TO ### _Inout_z_,               wchar_t, _String, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsset, _wcsset_s,    wchar_t, ,               wchar_t, _String, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsset, _wcsset_s,    wchar_t, ,               wchar_t, _String, ### TO ### _In_                     wchar_t, _Value */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsset, _wcsset_s,    wchar_t, ,               wchar_t, _String,                      wchar_t, _Value */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsset, _wcsset_s,    wchar_t, ,               wchar_t, _String,                      wchar_t, _Value ### TO ### ) */
wchar_t* __cdecl _wcsset( wchar_t * _String, wchar_t _Value );
errno_t __cdecl _wcslwr_s( wchar_t* _String, size_t _SizeInWords );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( ### TO ### errno_t, _wcslwr_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wcslwr_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wcslwr_s, ### TO ### _Prepost_z_ wchar_t, _String */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wcslwr_s,  wchar_t, _String */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wcslwr_s,  wchar_t, _String ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _wcslwr, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wcslwr, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wcslwr, ### TO ### _Inout_z_, wchar_t, _String */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wcslwr, , wchar_t, _String */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wcslwr, , wchar_t, _String ### TO ### ) */
wchar_t* __cdecl _wcslwr( wchar_t * _String );
errno_t __cdecl _wcslwr_s_l( wchar_t* _String, size_t _SizeInWords, _locale_t _Locale );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, _wcslwr_s_l, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcslwr_s_l, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcslwr_s_l, ### TO ### _Prepost_z_ wchar_t,   _String, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcslwr_s_l,  wchar_t,   _String, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcslwr_s_l,  wchar_t,   _String, ### TO ### _In_opt_    _locale_t, _Locale */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcslwr_s_l,  wchar_t,   _String,     _locale_t, _Locale */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcslwr_s_l,  wchar_t,   _String,     _locale_t, _Locale ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _wcslwr_l, _wcslwr_s_l, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcslwr_l, _wcslwr_s_l, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcslwr_l, _wcslwr_s_l, ### TO ### _Inout_updates_z_(_Size) wchar_t, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcslwr_l, _wcslwr_s_l,    wchar_t, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcslwr_l, _wcslwr_s_l,    wchar_t, ### TO ### _Inout_z_,               wchar_t,   _String, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcslwr_l, _wcslwr_s_l,    wchar_t, ,               wchar_t,   _String, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcslwr_l, _wcslwr_s_l,    wchar_t, ,               wchar_t,   _String, ### TO ### _In_opt_                 _locale_t, _Locale */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcslwr_l, _wcslwr_s_l,    wchar_t, ,               wchar_t,   _String,                  _locale_t, _Locale */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcslwr_l, _wcslwr_s_l,    wchar_t, ,               wchar_t,   _String,                  _locale_t, _Locale ### TO ### ) */
wchar_t* __cdecl _wcslwr_l( wchar_t * _String, _locale_t _Locale );
errno_t __cdecl _wcsupr_s( wchar_t* _String, size_t _Size );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( ### TO ### errno_t, _wcsupr_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wcsupr_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wcsupr_s, ### TO ### _Prepost_z_ wchar_t, _String */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wcsupr_s,  wchar_t, _String */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wcsupr_s,  wchar_t, _String ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _wcsupr, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wcsupr, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wcsupr, ### TO ### _Inout_z_, wchar_t, _String */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wcsupr, , wchar_t, _String */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wcsupr, , wchar_t, _String ### TO ### ) */
wchar_t* __cdecl _wcsupr( wchar_t * _String );
errno_t __cdecl _wcsupr_s_l( wchar_t* _String, size_t _Size, _locale_t _Locale );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, _wcsupr_s_l, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsupr_s_l, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsupr_s_l, ### TO ### _Prepost_z_ wchar_t,   _String, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsupr_s_l,  wchar_t,   _String, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsupr_s_l,  wchar_t,   _String, ### TO ### _In_opt_    _locale_t, _Locale */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsupr_s_l,  wchar_t,   _String,     _locale_t, _Locale */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsupr_s_l,  wchar_t,   _String,     _locale_t, _Locale ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _wcsupr_l, _wcsupr_s_l, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsupr_l, _wcsupr_s_l, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsupr_l, _wcsupr_s_l, ### TO ### _Inout_updates_z_(_Size) wchar_t, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsupr_l, _wcsupr_s_l,    wchar_t, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsupr_l, _wcsupr_s_l,    wchar_t, ### TO ### _Inout_z_,               wchar_t,   _String, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsupr_l, _wcsupr_s_l,    wchar_t, ,               wchar_t,   _String, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsupr_l, _wcsupr_s_l,    wchar_t, ,               wchar_t,   _String, ### TO ### _In_opt_                 _locale_t, _Locale */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsupr_l, _wcsupr_s_l,    wchar_t, ,               wchar_t,   _String,                  _locale_t, _Locale */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsupr_l, _wcsupr_s_l,    wchar_t, ,               wchar_t,   _String,                  _locale_t, _Locale ### TO ### ) */
wchar_t* __cdecl _wcsupr_l( wchar_t * _String, _locale_t _Locale );
size_t __cdecl wcsxfrm( wchar_t* _Destination, wchar_t const* _Source, size_t _MaxCount );
size_t __cdecl _wcsxfrm_l( wchar_t* _Destination, wchar_t const* _Source, size_t _MaxCount, _locale_t _Locale );
int __cdecl wcscoll( wchar_t const* _String1, wchar_t const* _String2 );
int __cdecl _wcscoll_l( wchar_t const* _String1, wchar_t const* _String2, _locale_t _Locale );
int __cdecl _wcsicoll( wchar_t const* _String1, wchar_t const* _String2 );
int __cdecl _wcsicoll_l( wchar_t const* _String1, wchar_t const* _String2, _locale_t _Locale );
int __cdecl _wcsncoll( wchar_t const* _String1, wchar_t const* _String2, size_t _MaxCount );
int __cdecl _wcsncoll_l( wchar_t const* _String1, wchar_t const* _String2, size_t _MaxCount, _locale_t _Locale );
int __cdecl _wcsnicoll( wchar_t const* _String1, wchar_t const* _String2, size_t _MaxCount );
int __cdecl _wcsnicoll_l( wchar_t const* _String1, wchar_t const* _String2, size_t _MaxCount, _locale_t _Locale );
wchar_t* __cdecl wcsdup( wchar_t const* _String );
enum { wcswcs = 0 };
int __cdecl wcsicmp( wchar_t const* _String1, wchar_t const* _String2 );
int __cdecl wcsnicmp( wchar_t const* _String1, wchar_t const* _String2, size_t _MaxCount );
wchar_t* __cdecl wcsnset( wchar_t* _String, wchar_t _Value, size_t _MaxCount );
wchar_t* __cdecl wcsrev( wchar_t* _String );
wchar_t* __cdecl wcsset( wchar_t* _String, wchar_t _Value );
wchar_t* __cdecl wcslwr( wchar_t* _String );
wchar_t* __cdecl wcsupr( wchar_t* _String );
int __cdecl wcsicoll( wchar_t const* _String1, wchar_t const* _String2 );
/* #pragma warning(pop)  */
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
