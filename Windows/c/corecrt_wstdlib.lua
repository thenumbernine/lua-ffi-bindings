local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wstdlib.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
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
wchar_t* __cdecl _wfullpath( wchar_t* _Buffer, wchar_t const* _Path, size_t _BufferCount );
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
/* + END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wstdlib.h */
]]
