local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wstdio.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_stdio_config.h */
]] require 'ffi.req' 'c.corecrt_stdio_config' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_stdio_config.h */
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
wchar_t* __cdecl _wtempnam( wchar_t const* _Directory, wchar_t const* _FilePrefix );
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
int __cdecl _vfwprintf_l( FILE* const _Stream, wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl vfwprintf( FILE* const _Stream, wchar_t const* const _Format, va_list _ArgList );
int __cdecl _vfwprintf_s_l( FILE* const _Stream, wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vfwprintf_p_l( FILE* const _Stream, wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vfwprintf_p( FILE* const _Stream, wchar_t const* const _Format, va_list _ArgList );
int __cdecl _vwprintf_l( wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl vwprintf( wchar_t const* const _Format, va_list _ArgList );
int __cdecl _vwprintf_s_l( wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vwprintf_p_l( wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vwprintf_p( wchar_t const* const _Format, va_list _ArgList );
int __cdecl _fwprintf_l( FILE* const _Stream, wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl fwprintf( FILE* const _Stream, wchar_t const* const _Format, ...);
int __cdecl _fwprintf_s_l( FILE* const _Stream, wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl _fwprintf_p_l( FILE* const _Stream, wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl _fwprintf_p( FILE* const _Stream, wchar_t const* const _Format, ...);
int __cdecl _wprintf_l( wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl wprintf( wchar_t const* const _Format, ...);
int __cdecl _wprintf_s_l( wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl _wprintf_p_l( wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl _wprintf_p( wchar_t const* const _Format, ...);
int __cdecl __stdio_common_vfwscanf( unsigned __int64 _Options, FILE* _Stream, wchar_t const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl _vfwscanf_l( FILE* const _Stream, wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl vfwscanf( FILE* const _Stream, wchar_t const* const _Format, va_list _ArgList );
int __cdecl _vfwscanf_s_l( FILE* const _Stream, wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vwscanf_l( wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl vwscanf( wchar_t const* const _Format, va_list _ArgList );
int __cdecl _vwscanf_s_l( wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _fwscanf_l( FILE* const _Stream, wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl fwscanf( FILE* const _Stream, wchar_t const* const _Format, ...);
int __cdecl _fwscanf_s_l( FILE* const _Stream, wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl _wscanf_l( wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl wscanf( wchar_t const* const _Format, ...);
int __cdecl _wscanf_s_l( wchar_t const* const _Format, _locale_t const _Locale, ...);
/* #define _SWPRINTFS_DEPRECATED _CRT_DEPRECATE_TEXT(                                        "function has been changed to conform with the ISO C standard, "                  "adding an extra character count parameter. To use the traditional "                  "Microsoft version, set _CRT_NON_CONFORMING_SWPRINTFS.") ### string, not number "_CRT_DEPRECATE_TEXT(                                        \"function has been changed to conform with the ISO C standard, \"                  \"adding an extra character count parameter. To use the traditional \"                  \"Microsoft version, set _CRT_NON_CONFORMING_SWPRINTFS.\")" */
int __cdecl __stdio_common_vswprintf( unsigned __int64 _Options, wchar_t* _Buffer, size_t _BufferCount, wchar_t const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl __stdio_common_vswprintf_s( unsigned __int64 _Options, wchar_t* _Buffer, size_t _BufferCount, wchar_t const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl __stdio_common_vsnwprintf_s( unsigned __int64 _Options, wchar_t* _Buffer, size_t _BufferCount, size_t _MaxCount, wchar_t const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl __stdio_common_vswprintf_p( unsigned __int64 _Options, wchar_t* _Buffer, size_t _BufferCount, wchar_t const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl _vsnwprintf_l( wchar_t* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vsnwprintf_s_l( wchar_t* const _Buffer, size_t const _BufferCount, size_t const _MaxCount, wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vsnwprintf_s( wchar_t* const _Buffer, size_t const _BufferCount, size_t const _MaxCount, wchar_t const* const _Format, va_list _ArgList );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX( ### TO ### _Success_(return >= 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    ### TO ### int, __RETURN_POLICY_SAME, _CRT_STDIO_INLINE, __CRTDECL, _snwprintf, _vsnwprintf, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _snwprintf, _vsnwprintf, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _snwprintf, _vsnwprintf, ### TO ### _Pre_notnull_ _Post_maybez_                   wchar_t, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _snwprintf, _vsnwprintf,                     wchar_t, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _snwprintf, _vsnwprintf,                     wchar_t, ### TO ### _Out_writes_opt_(_BufferCount) _Post_maybez_, wchar_t,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _snwprintf, _vsnwprintf,                     wchar_t,    , wchar_t,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _snwprintf, _vsnwprintf,                     wchar_t,    , wchar_t,        _Buffer, ### TO ### _In_                                          size_t,         _BufferCount, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _snwprintf, _vsnwprintf,                     wchar_t,    , wchar_t,        _Buffer,                                           size_t,         _BufferCount, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _snwprintf, _vsnwprintf,                     wchar_t,    , wchar_t,        _Buffer,                                           size_t,         _BufferCount, ### TO ### _In_z_ _Printf_format_string_                 wchar_t const*, _Format */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _snwprintf, _vsnwprintf,                     wchar_t,    , wchar_t,        _Buffer,                                           size_t,         _BufferCount,                   wchar_t const*, _Format */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _snwprintf, _vsnwprintf,                     wchar_t,    , wchar_t,        _Buffer,                                           size_t,         _BufferCount,                   wchar_t const*, _Format ### TO ### ) */
int __cdecl _snwprintf( wchar_t * _Buffer, size_t _BufferCount, wchar_t const* _Format , ...); int __cdecl _vsnwprintf( wchar_t * _Buffer, size_t _BufferCount, wchar_t const* _Format , va_list _Args);
int __cdecl _vsnwprintf( wchar_t* _Buffer, size_t _BufferCount, wchar_t const* _Format, va_list _ArgList );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3( ### TO ### _Success_(return >= 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    ### TO ### int, _vsnwprintf_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    int, _vsnwprintf_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    int, _vsnwprintf_s, ### TO ### _Always_(_Post_z_)            wchar_t,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    int, _vsnwprintf_s,               wchar_t,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    int, _vsnwprintf_s,               wchar_t,        _Buffer, ### TO ### _In_                          size_t,         _BufferCount, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    int, _vsnwprintf_s,               wchar_t,        _Buffer,                           size_t,         _BufferCount, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    int, _vsnwprintf_s,               wchar_t,        _Buffer,                           size_t,         _BufferCount, ### TO ### _In_z_ _Printf_format_string_ wchar_t const*, _Format, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    int, _vsnwprintf_s,               wchar_t,        _Buffer,                           size_t,         _BufferCount,   wchar_t const*, _Format, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    int, _vsnwprintf_s,               wchar_t,        _Buffer,                           size_t,         _BufferCount,   wchar_t const*, _Format, ### TO ### va_list,        _ArgList */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    int, _vsnwprintf_s,               wchar_t,        _Buffer,                           size_t,         _BufferCount,   wchar_t const*, _Format, va_list,        _ArgList */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    int, _vsnwprintf_s,               wchar_t,        _Buffer,                           size_t,         _BufferCount,   wchar_t const*, _Format, va_list,        _ArgList ### TO ### ) */
int __cdecl _vswprintf_c_l( wchar_t* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vswprintf_c( wchar_t* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, va_list _ArgList );
int __cdecl _vswprintf_l( wchar_t* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl __vswprintf_l( wchar_t* const _Buffer, wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vswprintf( wchar_t* const _Buffer, wchar_t const* const _Format, va_list _ArgList );
int __cdecl vswprintf( wchar_t* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, va_list _ArgList );
int __cdecl _vswprintf_s_l( wchar_t* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( ### TO ### _Success_(return >= 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    ### TO ### int, vswprintf_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    int, vswprintf_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    int, vswprintf_s, ### TO ### _Always_(_Post_z_)            wchar_t,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    int, vswprintf_s,               wchar_t,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    int, vswprintf_s,               wchar_t,        _Buffer, ### TO ### _In_z_ _Printf_format_string_ wchar_t const*, _Format, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    int, vswprintf_s,               wchar_t,        _Buffer,   wchar_t const*, _Format, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    int, vswprintf_s,               wchar_t,        _Buffer,   wchar_t const*, _Format, ### TO ### va_list,        _ArgList */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    int, vswprintf_s,               wchar_t,        _Buffer,   wchar_t const*, _Format, va_list,        _ArgList */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    int, vswprintf_s,               wchar_t,        _Buffer,   wchar_t const*, _Format, va_list,        _ArgList ### TO ### ) */
int __cdecl _vswprintf_p_l( wchar_t* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vswprintf_p( wchar_t* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, va_list _ArgList );
int __cdecl _vscwprintf_l( wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vscwprintf( wchar_t const* const _Format, va_list _ArgList );
int __cdecl _vscwprintf_p_l( wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vscwprintf_p( wchar_t const* const _Format, va_list _ArgList );
int __cdecl __swprintf_l( wchar_t* const _Buffer, wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl _swprintf_l( wchar_t* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl _swprintf( wchar_t* const _Buffer, wchar_t const* const _Format, ...);
int __cdecl swprintf( wchar_t* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, ...);
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_ARGLIST_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_ARGLIST_EX( ### TO ### _Success_(return >= 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_ARGLIST_EX(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_ARGLIST_EX(    ### TO ### int, __RETURN_POLICY_SAME, _CRT_STDIO_INLINE, __CRTDECL, __swprintf_l, __vswprintf_l, _vswprintf_s_l, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, __swprintf_l, __vswprintf_l, _vswprintf_s_l, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, __swprintf_l, __vswprintf_l, _vswprintf_s_l, ### TO ### _Pre_notnull_ _Always_(_Post_z_)        wchar_t, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, __swprintf_l, __vswprintf_l, _vswprintf_s_l,            wchar_t, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, __swprintf_l, __vswprintf_l, _vswprintf_s_l,            wchar_t, ### TO ### _Pre_notnull_ _Always_(_Post_z_),       wchar_t,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, __swprintf_l, __vswprintf_l, _vswprintf_s_l,            wchar_t,    ,       wchar_t,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, __swprintf_l, __vswprintf_l, _vswprintf_s_l,            wchar_t,    ,       wchar_t,        _Buffer, ### TO ### _In_z_ _Printf_format_string_params_(2) wchar_t const*, _Format, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, __swprintf_l, __vswprintf_l, _vswprintf_s_l,            wchar_t,    ,       wchar_t,        _Buffer,     wchar_t const*, _Format, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, __swprintf_l, __vswprintf_l, _vswprintf_s_l,            wchar_t,    ,       wchar_t,        _Buffer,     wchar_t const*, _Format, ### TO ### _In_opt_                                _locale_t,      _Locale */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, __swprintf_l, __vswprintf_l, _vswprintf_s_l,            wchar_t,    ,       wchar_t,        _Buffer,     wchar_t const*, _Format,                                 _locale_t,      _Locale */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, __swprintf_l, __vswprintf_l, _vswprintf_s_l,            wchar_t,    ,       wchar_t,        _Buffer,     wchar_t const*, _Format,                                 _locale_t,      _Locale ### TO ### ) */
int __cdecl __swprintf_l( wchar_t * _Buffer, wchar_t const* _Format, _locale_t _Locale , ...); int __cdecl __vswprintf_l( wchar_t * _Buffer, wchar_t const* _Format, _locale_t _Locale , va_list _Args);
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST_EX( ### TO ### _Success_(return >= 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST_EX(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST_EX(    ### TO ### int, __RETURN_POLICY_SAME, _CRT_STDIO_INLINE, __CRTDECL, _swprintf, swprintf_s, _vswprintf, vswprintf_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _swprintf, swprintf_s, _vswprintf, vswprintf_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _swprintf, swprintf_s, _vswprintf, vswprintf_s, ### TO ### _Pre_notnull_ _Always_(_Post_z_), wchar_t,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _swprintf, swprintf_s, _vswprintf, vswprintf_s,    , wchar_t,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _swprintf, swprintf_s, _vswprintf, vswprintf_s,    , wchar_t,        _Buffer, ### TO ### _In_z_ _Printf_format_string_     wchar_t const*, _Format */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _swprintf, swprintf_s, _vswprintf, vswprintf_s,    , wchar_t,        _Buffer,       wchar_t const*, _Format */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _swprintf, swprintf_s, _vswprintf, vswprintf_s,    , wchar_t,        _Buffer,       wchar_t const*, _Format ### TO ### ) */
int __cdecl _swprintf( wchar_t * _Buffer, wchar_t const* _Format , ...); int __cdecl _vswprintf( wchar_t * _Buffer, wchar_t const* _Format , va_list _Args);
int __cdecl _swprintf_s_l( wchar_t* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, _locale_t const _Locale, ...);
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST( ### TO ### _Success_(return >= 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(    ### TO ### int, swprintf_s, vswprintf_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(    int, swprintf_s, vswprintf_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(    int, swprintf_s, vswprintf_s, ### TO ### _Always_(_Post_z_)            wchar_t,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(    int, swprintf_s, vswprintf_s,               wchar_t,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(    int, swprintf_s, vswprintf_s,               wchar_t,        _Buffer, ### TO ### _In_z_ _Printf_format_string_ wchar_t const*, _Format */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(    int, swprintf_s, vswprintf_s,               wchar_t,        _Buffer,   wchar_t const*, _Format */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(    int, swprintf_s, vswprintf_s,               wchar_t,        _Buffer,   wchar_t const*, _Format ### TO ### ) */
int __cdecl _swprintf_p_l( wchar_t* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl _swprintf_p( wchar_t* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, ...);
int __cdecl _swprintf_c_l( wchar_t* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl _swprintf_c( wchar_t* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, ...);
int __cdecl _snwprintf_l( wchar_t* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl _snwprintf( wchar_t* _Buffer, size_t _BufferCount, wchar_t const* _Format, ...);
int __cdecl _snwprintf_s_l( wchar_t* const _Buffer, size_t const _BufferCount, size_t const _MaxCount, wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl _snwprintf_s( wchar_t* const _Buffer, size_t const _BufferCount, size_t const _MaxCount, wchar_t const* const _Format, ...);
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
int __cdecl _scwprintf_l( wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl _scwprintf( wchar_t const* const _Format, ...);
int __cdecl _scwprintf_p_l( wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl _scwprintf_p( wchar_t const* const _Format, ...);
/*         #pragma warning(push) */
/*         #pragma warning(disable: 4141 6054) */
/*         #pragma warning(pop) */
int __cdecl __stdio_common_vswscanf( unsigned __int64 _Options, wchar_t const* _Buffer, size_t _BufferCount, wchar_t const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl _vswscanf_l( wchar_t const* const _Buffer, wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl vswscanf( wchar_t const* _Buffer, wchar_t const* _Format, va_list _ArgList );
int __cdecl _vswscanf_s_l( wchar_t const* const _Buffer, wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
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
int __cdecl _vsnwscanf_l( wchar_t const* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vsnwscanf_s_l( wchar_t const* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _swscanf_l( wchar_t const* const _Buffer, wchar_t const* const _Format, _locale_t _Locale, ...);
int __cdecl swscanf( wchar_t const* const _Buffer, wchar_t const* const _Format, ...);
int __cdecl _swscanf_s_l( wchar_t const* const _Buffer, wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl _snwscanf_l( wchar_t const* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl _snwscanf( wchar_t const* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, ...);
int __cdecl _snwscanf_s_l( wchar_t const* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, _locale_t const _Locale, ...);
int __cdecl _snwscanf_s( wchar_t const* const _Buffer, size_t const _BufferCount, wchar_t const* const _Format, ...);
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wstdio.h */
]]
