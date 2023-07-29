local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/stdlib.h */
enum { _INC_STDLIB = 1 };
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]] require 'ffi.Windows.c.corecrt' ffi.cdef[[
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_malloc.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
void* __cdecl _calloc_base( size_t _Count, size_t _Size );
void* __cdecl calloc( size_t _Count, size_t _Size );
int __cdecl _callnewh( size_t _Size );
void* __cdecl _expand( void* _Block, size_t _Size );
void __cdecl _free_base( void* _Block );
void __cdecl free( void* _Block );
void* __cdecl _malloc_base( size_t _Size );
void* __cdecl malloc( size_t _Size );
size_t __cdecl _msize_base( void* _Block );
size_t __cdecl _msize( void* _Block );
void* __cdecl _realloc_base( void* _Block, size_t _Size );
void* __cdecl realloc( void* _Block, size_t _Size );
void* __cdecl _recalloc_base( void* _Block, size_t _Count, size_t _Size );
void* __cdecl _recalloc( void* _Block, size_t _Count, size_t _Size );
void __cdecl _aligned_free( void* _Block );
void* __cdecl _aligned_malloc( size_t _Size, size_t _Alignment );
void* __cdecl _aligned_offset_malloc( size_t _Size, size_t _Alignment, size_t _Offset );
size_t __cdecl _aligned_msize( void* _Block, size_t _Alignment, size_t _Offset );
void* __cdecl _aligned_offset_realloc( void* _Block, size_t _Size, size_t _Alignment, size_t _Offset );
void* __cdecl _aligned_offset_recalloc( void* _Block, size_t _Count, size_t _Size, size_t _Alignment, size_t _Offset );
void* __cdecl _aligned_realloc( void* _Block, size_t _Size, size_t _Alignment );
void* __cdecl _aligned_recalloc( void* _Block, size_t _Count, size_t _Size, size_t _Alignment );
/* #pragma warning(pop)  */
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_malloc.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_search.h */
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/stddef.h */
]] require 'ffi.Windows.c.stddef' ffi.cdef[[
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/stddef.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
typedef int (__cdecl* _CoreCrtSecureSearchSortCompareFunction)(void*, void const*, void const*);
typedef int (__cdecl* _CoreCrtNonSecureSearchSortCompareFunction)(void const*, void const*);
void* __cdecl bsearch( void const* _Key, void const* _Base, size_t _NumOfElements, size_t _SizeOfElements, _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction );
void __cdecl qsort( void* _Base, size_t _NumOfElements, size_t _SizeOfElements, _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction );
void* __cdecl _lfind_s( void const* _Key, void const* _Base, unsigned int* _NumOfElements, size_t _SizeOfElements, _CoreCrtSecureSearchSortCompareFunction _CompareFunction, void* _Context );
void* __cdecl _lfind( void const* _Key, void const* _Base, unsigned int* _NumOfElements, unsigned int _SizeOfElements, _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction );
void* __cdecl _lsearch_s( void const* _Key, void* _Base, unsigned int* _NumOfElements, size_t _SizeOfElements, _CoreCrtSecureSearchSortCompareFunction _CompareFunction, void* _Context );
void* __cdecl _lsearch( void const* _Key, void* _Base, unsigned int* _NumOfElements, unsigned int _SizeOfElements, _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction );
void* __cdecl lfind( void const* _Key, void const* _Base, unsigned int* _NumOfElements, unsigned int _SizeOfElements, _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction );
void* __cdecl lsearch( void const* _Key, void* _Base, unsigned int* _NumOfElements, unsigned int _SizeOfElements, _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction );
/* #pragma warning(pop)  */
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_search.h */
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
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wstdlib.h */
/* BEGIN C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.36.32532/include/limits.h */
]] require 'ffi.c.limits' ffi.cdef[[
/* END   C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.36.32532/include/limits.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
enum { _countof = 0 };
void __cdecl _swab( char* _Buf1, char* _Buf2, int _SizeInBytes );
enum { EXIT_SUCCESS = 0 };
enum { EXIT_FAILURE = 1 };
void __cdecl exit( int _Code);
void __cdecl _exit( int _Code);
void __cdecl _Exit( int _Code);
void __cdecl quick_exit( int _Code);
void __cdecl abort(void);
enum { _WRITE_ABORT_MSG = 1 };
enum { _CALL_REPORTFAULT = 2 };
unsigned int __cdecl _set_abort_behavior( unsigned int _Flags, unsigned int _Mask );
enum { _CRT_ONEXIT_T_DEFINED = 1 };
typedef int (__cdecl* _onexit_t)(void);
enum { onexit_t = 0 };
int __cdecl atexit(void (__cdecl*)(void));
_onexit_t __cdecl _onexit( _onexit_t _Func);
int __cdecl at_quick_exit(void (__cdecl*)(void));
typedef void (__cdecl* _purecall_handler)(void);
typedef void (__cdecl* _invalid_parameter_handler)( wchar_t const*, wchar_t const*, wchar_t const*, unsigned int, uintptr_t );
_purecall_handler __cdecl _set_purecall_handler( _purecall_handler _Handler );
_purecall_handler __cdecl _get_purecall_handler(void);
_invalid_parameter_handler __cdecl _set_invalid_parameter_handler( _invalid_parameter_handler _Handler );
_invalid_parameter_handler __cdecl _get_invalid_parameter_handler(void);
_invalid_parameter_handler __cdecl _set_thread_local_invalid_parameter_handler( _invalid_parameter_handler _Handler );
_invalid_parameter_handler __cdecl _get_thread_local_invalid_parameter_handler(void);
enum { _OUT_TO_DEFAULT = 0 };
enum { _OUT_TO_STDERR = 1 };
enum { _OUT_TO_MSGBOX = 2 };
enum { _REPORT_ERRMODE = 3 };
int __cdecl _set_error_mode( int _Mode);
int* __cdecl _errno(void);
/* #define errno (*_errno()) ### string, not number "(*_errno())" */
errno_t __cdecl _set_errno( int _Value);
errno_t __cdecl _get_errno( int* _Value);
unsigned long* __cdecl __doserrno(void);
/* #define _doserrno (*__doserrno()) ### string, not number "(*__doserrno())" */
errno_t __cdecl _set_doserrno( unsigned long _Value);
errno_t __cdecl _get_doserrno( unsigned long * _Value);
char** __cdecl __sys_errlist(void);
/* #define _sys_errlist (__sys_errlist()) ### string, not number "(__sys_errlist())" */
int * __cdecl __sys_nerr(void);
/* #define _sys_nerr (*__sys_nerr()) ### string, not number "(*__sys_nerr())" */
void __cdecl perror( char const* _ErrMsg);
char** __cdecl __p__pgmptr (void);
wchar_t** __cdecl __p__wpgmptr(void);
int* __cdecl __p__fmode (void);
/* #define _pgmptr  (*__p__pgmptr ()) ### string, not number "(*__p__pgmptr ())" */
/* #define _wpgmptr (*__p__wpgmptr()) ### string, not number "(*__p__wpgmptr())" */
/* #define _fmode   (*__p__fmode  ()) ### string, not number "(*__p__fmode  ())" */
errno_t __cdecl _get_pgmptr ( char** _Value);
errno_t __cdecl _get_wpgmptr( wchar_t** _Value);
errno_t __cdecl _set_fmode ( int _Mode );
errno_t __cdecl _get_fmode ( int* _PMode);
typedef struct _div_t {
	int quot;
	int rem;
} div_t;
typedef struct _ldiv_t {
	long quot;
	long rem;
} ldiv_t;
typedef struct _lldiv_t {
	long long quot;
	long long rem;
} lldiv_t;
int __cdecl abs ( int _Number);
long __cdecl labs ( long _Number);
long long __cdecl llabs ( long long _Number);
__int64 __cdecl _abs64( __int64 _Number);
unsigned short __cdecl _byteswap_ushort( unsigned short _Number);
unsigned long __cdecl _byteswap_ulong ( unsigned long _Number);
unsigned __int64 __cdecl _byteswap_uint64( unsigned __int64 _Number);
div_t __cdecl div ( int _Numerator, int _Denominator);
ldiv_t __cdecl ldiv ( long _Numerator, long _Denominator);
lldiv_t __cdecl lldiv( long long _Numerator, long long _Denominator);
/* #pragma warning(push) */
/* #pragma warning(disable: 6540) */
unsigned int __cdecl _rotl( unsigned int _Value, int _Shift );
unsigned long __cdecl _lrotl( unsigned long _Value, int _Shift );
unsigned __int64 __cdecl _rotl64( unsigned __int64 _Value, int _Shift );
unsigned int __cdecl _rotr( unsigned int _Value, int _Shift );
unsigned long __cdecl _lrotr( unsigned long _Value, int _Shift );
unsigned __int64 __cdecl _rotr64( unsigned __int64 _Value, int _Shift );
/* #pragma warning(pop) */
enum { RAND_MAX = 32767 };
void __cdecl srand( unsigned int _Seed);
int __cdecl rand(void);
enum { _CRT_DOUBLE_DEC = 1 };
/*     #pragma pack(push, 4) */
typedef struct {
	unsigned char ld[10];
} _LDOUBLE;
/*     #pragma pack(pop) */
typedef struct {
	double x;
} _CRT_DOUBLE;
typedef struct {
	float f;
} _CRT_FLOAT;
/* #pragma push_macro("long") */
typedef struct {
	long double x;
} _LONGDOUBLE;
/* #pragma pop_macro("long") */
/* #pragma pack(push, 4) */
typedef struct {
	unsigned char ld12[12];
} _LDBL12;
/* #pragma pack(pop) */
double __cdecl atof ( char const* _String);
int __cdecl atoi ( char const* _String);
long __cdecl atol ( char const* _String);
long long __cdecl atoll ( char const* _String);
__int64 __cdecl _atoi64( char const* _String);
double __cdecl _atof_l ( char const* _String, _locale_t _Locale);
int __cdecl _atoi_l ( char const* _String, _locale_t _Locale);
long __cdecl _atol_l ( char const* _String, _locale_t _Locale);
long long __cdecl _atoll_l ( char const* _String, _locale_t _Locale);
__int64 __cdecl _atoi64_l( char const* _String, _locale_t _Locale);
int __cdecl _atoflt ( _CRT_FLOAT* _Result, char const* _String);
int __cdecl _atodbl ( _CRT_DOUBLE* _Result, char* _String);
int __cdecl _atoldbl( _LDOUBLE* _Result, char* _String);
int __cdecl _atoflt_l( _CRT_FLOAT* _Result, char const* _String, _locale_t _Locale );
int __cdecl _atodbl_l( _CRT_DOUBLE* _Result, char* _String, _locale_t _Locale );
int __cdecl _atoldbl_l( _LDOUBLE* _Result, char* _String, _locale_t _Locale );
float __cdecl strtof( char const* _String, char** _EndPtr );
float __cdecl _strtof_l( char const* _String, char** _EndPtr, _locale_t _Locale );
double __cdecl strtod( char const* _String, char** _EndPtr );
double __cdecl _strtod_l( char const* _String, char** _EndPtr, _locale_t _Locale );
long double __cdecl strtold( char const* _String, char** _EndPtr );
long double __cdecl _strtold_l( char const* _String, char** _EndPtr, _locale_t _Locale );
long __cdecl strtol( char const* _String, char** _EndPtr, int _Radix );
long __cdecl _strtol_l( char const* _String, char** _EndPtr, int _Radix, _locale_t _Locale );
long long __cdecl strtoll( char const* _String, char** _EndPtr, int _Radix );
long long __cdecl _strtoll_l( char const* _String, char** _EndPtr, int _Radix, _locale_t _Locale );
unsigned long __cdecl strtoul( char const* _String, char** _EndPtr, int _Radix );
unsigned long __cdecl _strtoul_l( char const* _String, char** _EndPtr, int _Radix, _locale_t _Locale );
unsigned long long __cdecl strtoull( char const* _String, char** _EndPtr, int _Radix );
unsigned long long __cdecl _strtoull_l( char const* _String, char** _EndPtr, int _Radix, _locale_t _Locale );
__int64 __cdecl _strtoi64( char const* _String, char** _EndPtr, int _Radix );
__int64 __cdecl _strtoi64_l( char const* _String, char** _EndPtr, int _Radix, _locale_t _Locale );
unsigned __int64 __cdecl _strtoui64( char const* _String, char** _EndPtr, int _Radix );
unsigned __int64 __cdecl _strtoui64_l( char const* _String, char** _EndPtr, int _Radix, _locale_t _Locale );
errno_t __cdecl _itoa_s( int _Value, char* _Buffer, size_t _BufferCount, int _Radix );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( ### TO ### _Success_(return == 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(    ### TO ### errno_t, _itoa_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(    errno_t, _itoa_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(    errno_t, _itoa_s, ### TO ### _In_ int,  _Value, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(    errno_t, _itoa_s,  int,  _Value, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(    errno_t, _itoa_s,  int,  _Value, ### TO ### char, _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(    errno_t, _itoa_s,  int,  _Value, char, _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(    errno_t, _itoa_s,  int,  _Value, char, _Buffer, ### TO ### _In_ int,  _Radix */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(    errno_t, _itoa_s,  int,  _Value, char, _Buffer,  int,  _Radix */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1(    errno_t, _itoa_s,  int,  _Value, char, _Buffer,  int,  _Radix ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( ### TO ### char*, __RETURN_POLICY_DST, _ACRTIMP, _itoa, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _itoa, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _itoa, ### TO ### _In_                    int,  _Value, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _itoa,                     int,  _Value, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _itoa,                     int,  _Value, ### TO ### _Pre_notnull_ _Post_z_, char, _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _itoa,                     int,  _Value,  , char, _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _itoa,                     int,  _Value,  , char, _Buffer, ### TO ### _In_                    int,  _Radix */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _itoa,                     int,  _Value,  , char, _Buffer,                     int,  _Radix */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _itoa,                     int,  _Value,  , char, _Buffer,                     int,  _Radix ### TO ### ) */
char* __cdecl _itoa( int _Value, char * _Buffer, int _Radix );
errno_t __cdecl _ltoa_s( long _Value, char* _Buffer, size_t _BufferCount, int _Radix );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( ### TO ### errno_t, _ltoa_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ltoa_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ltoa_s, ### TO ### _In_ long, _Value, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ltoa_s,  long, _Value, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ltoa_s,  long, _Value, ### TO ### char, _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ltoa_s,  long, _Value, char, _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ltoa_s,  long, _Value, char, _Buffer, ### TO ### _In_ int,  _Radix */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ltoa_s,  long, _Value, char, _Buffer,  int,  _Radix */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ltoa_s,  long, _Value, char, _Buffer,  int,  _Radix ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( ### TO ### char*, __RETURN_POLICY_DST, _ACRTIMP, _ltoa, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _ltoa, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _ltoa, ### TO ### _In_                    long, _Value, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _ltoa,                     long, _Value, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _ltoa,                     long, _Value, ### TO ### _Pre_notnull_ _Post_z_, char, _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _ltoa,                     long, _Value,  , char, _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _ltoa,                     long, _Value,  , char, _Buffer, ### TO ### _In_                    int,  _Radix */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _ltoa,                     long, _Value,  , char, _Buffer,                     int,  _Radix */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _ltoa,                     long, _Value,  , char, _Buffer,                     int,  _Radix ### TO ### ) */
char* __cdecl _ltoa( long _Value, char * _Buffer, int _Radix );
errno_t __cdecl _ultoa_s( unsigned long _Value, char* _Buffer, size_t _BufferCount, int _Radix );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( ### TO ### errno_t, _ultoa_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ultoa_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ultoa_s, ### TO ### _In_ unsigned long, _Value, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ultoa_s,  unsigned long, _Value, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ultoa_s,  unsigned long, _Value, ### TO ### char,          _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ultoa_s,  unsigned long, _Value, char,          _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ultoa_s,  unsigned long, _Value, char,          _Buffer, ### TO ### _In_ int,           _Radix */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ultoa_s,  unsigned long, _Value, char,          _Buffer,  int,           _Radix */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, _ultoa_s,  unsigned long, _Value, char,          _Buffer,  int,           _Radix ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( ### TO ### char*, __RETURN_POLICY_DST, _ACRTIMP, _ultoa, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _ultoa, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _ultoa, ### TO ### _In_                    unsigned long, _Value, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _ultoa,                     unsigned long, _Value, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _ultoa,                     unsigned long, _Value, ### TO ### _Pre_notnull_ _Post_z_, char,          _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _ultoa,                     unsigned long, _Value,  , char,          _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _ultoa,                     unsigned long, _Value,  , char,          _Buffer, ### TO ### _In_                    int,           _Radix */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _ultoa,                     unsigned long, _Value,  , char,          _Buffer,                     int,           _Radix */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_1_1( char*, __RETURN_POLICY_DST, , _ultoa,                     unsigned long, _Value,  , char,          _Buffer,                     int,           _Radix ### TO ### ) */
char* __cdecl _ultoa( unsigned long _Value, char * _Buffer, int _Radix );
errno_t __cdecl _i64toa_s( __int64 _Value, char* _Buffer, size_t _BufferCount, int _Radix );
char* __cdecl _i64toa( __int64 _Value, char* _Buffer, int _Radix );
errno_t __cdecl _ui64toa_s( unsigned __int64 _Value, char* _Buffer, size_t _BufferCount, int _Radix );
char* __cdecl _ui64toa( unsigned __int64 _Value, char* _Buffer, int _Radix );
enum { _CVTBUFSIZE = 349 };
errno_t __cdecl _ecvt_s( char* _Buffer, size_t _BufferCount, double _Value, int _DigitCount, int* _PtDec, int* _PtSign );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( ### TO ### errno_t, _ecvt_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _ecvt_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _ecvt_s, ### TO ### char,   _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _ecvt_s, char,   _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _ecvt_s, char,   _Buffer, ### TO ### _In_  double, _Value, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _ecvt_s, char,   _Buffer,   double, _Value, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _ecvt_s, char,   _Buffer,   double, _Value, ### TO ### _In_  int,    _DigitCount, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _ecvt_s, char,   _Buffer,   double, _Value,   int,    _DigitCount, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _ecvt_s, char,   _Buffer,   double, _Value,   int,    _DigitCount, ### TO ### _Out_ int*,   _PtDec, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _ecvt_s, char,   _Buffer,   double, _Value,   int,    _DigitCount,  int*,   _PtDec, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _ecvt_s, char,   _Buffer,   double, _Value,   int,    _DigitCount,  int*,   _PtDec, ### TO ### _Out_ int*,   _PtSign */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _ecvt_s, char,   _Buffer,   double, _Value,   int,    _DigitCount,  int*,   _PtDec,  int*,   _PtSign */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _ecvt_s, char,   _Buffer,   double, _Value,   int,    _DigitCount,  int*,   _PtDec,  int*,   _PtSign ### TO ### ) */
char* __cdecl _ecvt( double _Value, int _DigitCount, int* _PtDec, int* _PtSign );
errno_t __cdecl _fcvt_s( char* _Buffer, size_t _BufferCount, double _Value, int _FractionalDigitCount, int* _PtDec, int* _PtSign );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( ### TO ### _Success_(return == 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4(    ### TO ### errno_t, _fcvt_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4(    errno_t, _fcvt_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4(    errno_t, _fcvt_s, ### TO ### char,   _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4(    errno_t, _fcvt_s, char,   _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4(    errno_t, _fcvt_s, char,   _Buffer, ### TO ### _In_  double, _Value, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4(    errno_t, _fcvt_s, char,   _Buffer,   double, _Value, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4(    errno_t, _fcvt_s, char,   _Buffer,   double, _Value, ### TO ### _In_  int,    _FractionalDigitCount, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4(    errno_t, _fcvt_s, char,   _Buffer,   double, _Value,   int,    _FractionalDigitCount, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4(    errno_t, _fcvt_s, char,   _Buffer,   double, _Value,   int,    _FractionalDigitCount, ### TO ### _Out_ int*,   _PtDec, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4(    errno_t, _fcvt_s, char,   _Buffer,   double, _Value,   int,    _FractionalDigitCount,  int*,   _PtDec, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4(    errno_t, _fcvt_s, char,   _Buffer,   double, _Value,   int,    _FractionalDigitCount,  int*,   _PtDec, ### TO ### _Out_ int*,   _PtSign */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4(    errno_t, _fcvt_s, char,   _Buffer,   double, _Value,   int,    _FractionalDigitCount,  int*,   _PtDec,  int*,   _PtSign */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4(    errno_t, _fcvt_s, char,   _Buffer,   double, _Value,   int,    _FractionalDigitCount,  int*,   _PtDec,  int*,   _PtSign ### TO ### ) */
char* __cdecl _fcvt( double _Value, int _FractionalDigitCount, int* _PtDec, int* _PtSign );
errno_t __cdecl _gcvt_s( char* _Buffer, size_t _BufferCount, double _Value, int _DigitCount );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( ### TO ### _Success_(return == 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    ### TO ### errno_t, _gcvt_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    errno_t, _gcvt_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    errno_t, _gcvt_s, ### TO ### char,   _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    errno_t, _gcvt_s, char,   _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    errno_t, _gcvt_s, char,   _Buffer, ### TO ### _In_ double, _Value, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    errno_t, _gcvt_s, char,   _Buffer,  double, _Value, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    errno_t, _gcvt_s, char,   _Buffer,  double, _Value, ### TO ### _In_ int,    _DigitCount */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    errno_t, _gcvt_s, char,   _Buffer,  double, _Value,  int,    _DigitCount */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2(    errno_t, _gcvt_s, char,   _Buffer,  double, _Value,  int,    _DigitCount ### TO ### ) */
char* __cdecl _gcvt( double _Value, int _DigitCount, char* _Buffer );
/* #define MB_CUR_MAX ___mb_cur_max_func() ### string, not number "___mb_cur_max_func()" */
/* #define __mb_cur_max (___mb_cur_max_func()) ### string, not number "(___mb_cur_max_func())" */
int __cdecl ___mb_cur_max_func(void);
int __cdecl ___mb_cur_max_l_func(_locale_t _Locale);
int __cdecl mblen( char const* _Ch, size_t _MaxCount );
int __cdecl _mblen_l( char const* _Ch, size_t _MaxCount, _locale_t _Locale );
size_t __cdecl _mbstrlen( char const* _String );
size_t __cdecl _mbstrlen_l( char const* _String, _locale_t _Locale );
size_t __cdecl _mbstrnlen( char const* _String, size_t _MaxCount );
size_t __cdecl _mbstrnlen_l( char const* _String, size_t _MaxCount, _locale_t _Locale );
int __cdecl mbtowc( wchar_t* _DstCh, char const* _SrcCh, size_t _SrcSizeInBytes );
int __cdecl _mbtowc_l( wchar_t* _DstCh, char const* _SrcCh, size_t _SrcSizeInBytes, _locale_t _Locale );
errno_t __cdecl mbstowcs_s( size_t* _PtNumOfCharConverted, wchar_t* _DstBuf, size_t _SizeInWords, char const* _SrcBuf, size_t _MaxCount );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( ### TO ### errno_t, mbstowcs_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( errno_t, mbstowcs_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( errno_t, mbstowcs_s, ### TO ### _Out_opt_ size_t*,     _PtNumOfCharConverted, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( errno_t, mbstowcs_s,  size_t*,     _PtNumOfCharConverted, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( errno_t, mbstowcs_s,  size_t*,     _PtNumOfCharConverted, ### TO ### _Post_z_  wchar_t,     _Dest, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( errno_t, mbstowcs_s,  size_t*,     _PtNumOfCharConverted,   wchar_t,     _Dest, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( errno_t, mbstowcs_s,  size_t*,     _PtNumOfCharConverted,   wchar_t,     _Dest, ### TO ### _In_z_    char const*, _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( errno_t, mbstowcs_s,  size_t*,     _PtNumOfCharConverted,   wchar_t,     _Dest,     char const*, _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( errno_t, mbstowcs_s,  size_t*,     _PtNumOfCharConverted,   wchar_t,     _Dest,     char const*, _Source, ### TO ### _In_      size_t,      _MaxCount */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( errno_t, mbstowcs_s,  size_t*,     _PtNumOfCharConverted,   wchar_t,     _Dest,     char const*, _Source,       size_t,      _MaxCount */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( errno_t, mbstowcs_s,  size_t*,     _PtNumOfCharConverted,   wchar_t,     _Dest,     char const*, _Source,       size_t,      _MaxCount ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE( ### TO ### _ACRTIMP, mbstowcs, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE( , mbstowcs, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE( , mbstowcs, ### TO ### _Out_writes_opt_z_(_MaxCount), wchar_t,     _Dest, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE( , mbstowcs,   , wchar_t,     _Dest, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE( , mbstowcs,   , wchar_t,     _Dest, ### TO ### _In_z_                         char const*, _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE( , mbstowcs,   , wchar_t,     _Dest,                          char const*, _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE( , mbstowcs,   , wchar_t,     _Dest,                          char const*, _Source, ### TO ### _In_                           size_t,      _MaxCount */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE( , mbstowcs,   , wchar_t,     _Dest,                          char const*, _Source,                            size_t,      _MaxCount */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE( , mbstowcs,   , wchar_t,     _Dest,                          char const*, _Source,                            size_t,      _MaxCount ### TO ### ) */
size_t __cdecl mbstowcs( wchar_t * _Dest, char const* _Source, size_t _MaxCount );
errno_t __cdecl _mbstowcs_s_l( size_t* _PtNumOfCharConverted, wchar_t* _DstBuf, size_t _SizeInWords, char const* _SrcBuf, size_t _MaxCount, _locale_t _Locale );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( ### TO ### errno_t, _mbstowcs_s_l, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _mbstowcs_s_l, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _mbstowcs_s_l, ### TO ### _Out_opt_ size_t*,     _PtNumOfCharConverted, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _mbstowcs_s_l,  size_t*,     _PtNumOfCharConverted, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _mbstowcs_s_l,  size_t*,     _PtNumOfCharConverted, ### TO ### _Post_z_  wchar_t,     _Dest, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _mbstowcs_s_l,  size_t*,     _PtNumOfCharConverted,   wchar_t,     _Dest, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _mbstowcs_s_l,  size_t*,     _PtNumOfCharConverted,   wchar_t,     _Dest, ### TO ### _In_z_    char const*, _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _mbstowcs_s_l,  size_t*,     _PtNumOfCharConverted,   wchar_t,     _Dest,     char const*, _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _mbstowcs_s_l,  size_t*,     _PtNumOfCharConverted,   wchar_t,     _Dest,     char const*, _Source, ### TO ### _In_      size_t,      _MaxCount, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _mbstowcs_s_l,  size_t*,     _PtNumOfCharConverted,   wchar_t,     _Dest,     char const*, _Source,       size_t,      _MaxCount, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _mbstowcs_s_l,  size_t*,     _PtNumOfCharConverted,   wchar_t,     _Dest,     char const*, _Source,       size_t,      _MaxCount, ### TO ### _In_opt_  _locale_t,   _Locale */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _mbstowcs_s_l,  size_t*,     _PtNumOfCharConverted,   wchar_t,     _Dest,     char const*, _Source,       size_t,      _MaxCount,   _locale_t,   _Locale */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _mbstowcs_s_l,  size_t*,     _PtNumOfCharConverted,   wchar_t,     _Dest,     char const*, _Source,       size_t,      _MaxCount,   _locale_t,   _Locale ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( ### TO ### _ACRTIMP, _mbstowcs_l, _mbstowcs_s_l, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _mbstowcs_l, _mbstowcs_s_l, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _mbstowcs_l, _mbstowcs_s_l, ### TO ### _Out_writes_opt_z_(_Size)  wchar_t, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _mbstowcs_l, _mbstowcs_s_l,     wchar_t, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _mbstowcs_l, _mbstowcs_s_l,     wchar_t, ### TO ### _Out_writes_z_(_MaxCount), wchar_t,     _Dest, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _mbstowcs_l, _mbstowcs_s_l,     wchar_t,   , wchar_t,     _Dest, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _mbstowcs_l, _mbstowcs_s_l,     wchar_t,   , wchar_t,     _Dest, ### TO ### _In_z_                     char const*, _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _mbstowcs_l, _mbstowcs_s_l,     wchar_t,   , wchar_t,     _Dest,                      char const*, _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _mbstowcs_l, _mbstowcs_s_l,     wchar_t,   , wchar_t,     _Dest,                      char const*, _Source, ### TO ### _In_                       size_t,      _MaxCount, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _mbstowcs_l, _mbstowcs_s_l,     wchar_t,   , wchar_t,     _Dest,                      char const*, _Source,                        size_t,      _MaxCount, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _mbstowcs_l, _mbstowcs_s_l,     wchar_t,   , wchar_t,     _Dest,                      char const*, _Source,                        size_t,      _MaxCount, ### TO ### _In_opt_                   _locale_t,   _Locale */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _mbstowcs_l, _mbstowcs_s_l,     wchar_t,   , wchar_t,     _Dest,                      char const*, _Source,                        size_t,      _MaxCount,                    _locale_t,   _Locale */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _mbstowcs_l, _mbstowcs_s_l,     wchar_t,   , wchar_t,     _Dest,                      char const*, _Source,                        size_t,      _MaxCount,                    _locale_t,   _Locale ### TO ### ) */
size_t __cdecl _mbstowcs_l( wchar_t * _Dest, char const* _Source, size_t _MaxCount, _locale_t _Locale );
int __cdecl wctomb( char* _MbCh, wchar_t _WCh );
int __cdecl _wctomb_l( char* _MbCh, wchar_t _WCh, _locale_t _Locale );
errno_t __cdecl _wctomb_s_l( int* _SizeConverted, char* _MbCh, size_t _SizeInBytes, wchar_t _WCh, _locale_t _Locale);
errno_t __cdecl wcstombs_s( size_t* _PtNumOfCharConverted, char* _Dst, size_t _DstSizeInBytes, wchar_t const* _Src, size_t _MaxCountInBytes );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( ### TO ### errno_t, wcstombs_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( errno_t, wcstombs_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( errno_t, wcstombs_s, ### TO ### _Out_opt_                     size_t*,        _PtNumOfCharConverted, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( errno_t, wcstombs_s,                      size_t*,        _PtNumOfCharConverted, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( errno_t, wcstombs_s,                      size_t*,        _PtNumOfCharConverted, ### TO ### _Out_writes_bytes_opt_(_Size) char,           _Dest, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( errno_t, wcstombs_s,                      size_t*,        _PtNumOfCharConverted,    char,           _Dest, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( errno_t, wcstombs_s,                      size_t*,        _PtNumOfCharConverted,    char,           _Dest, ### TO ### _In_z_                        wchar_t const*, _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( errno_t, wcstombs_s,                      size_t*,        _PtNumOfCharConverted,    char,           _Dest,                         wchar_t const*, _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( errno_t, wcstombs_s,                      size_t*,        _PtNumOfCharConverted,    char,           _Dest,                         wchar_t const*, _Source, ### TO ### _In_                          size_t,         _MaxCount */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( errno_t, wcstombs_s,                      size_t*,        _PtNumOfCharConverted,    char,           _Dest,                         wchar_t const*, _Source,                           size_t,         _MaxCount */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_2( errno_t, wcstombs_s,                      size_t*,        _PtNumOfCharConverted,    char,           _Dest,                         wchar_t const*, _Source,                           size_t,         _MaxCount ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE( ### TO ### _ACRTIMP, wcstombs, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE( , wcstombs, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE( , wcstombs, ### TO ### _Out_writes_opt_(_MaxCount),   char,           _Dest, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE( , wcstombs,   ,   char,           _Dest, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE( , wcstombs,   ,   char,           _Dest, ### TO ### _In_z_                         wchar_t const*, _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE( , wcstombs,   ,   char,           _Dest,                          wchar_t const*, _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE( , wcstombs,   ,   char,           _Dest,                          wchar_t const*, _Source, ### TO ### _In_                           size_t,         _MaxCount */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE( , wcstombs,   ,   char,           _Dest,                          wchar_t const*, _Source,                            size_t,         _MaxCount */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_SIZE( , wcstombs,   ,   char,           _Dest,                          wchar_t const*, _Source,                            size_t,         _MaxCount ### TO ### ) */
size_t __cdecl wcstombs( char * _Dest, wchar_t const* _Source, size_t _MaxCount );
errno_t __cdecl _wcstombs_s_l( size_t* _PtNumOfCharConverted, char* _Dst, size_t _DstSizeInBytes, wchar_t const* _Src, size_t _MaxCountInBytes, _locale_t _Locale );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( ### TO ### errno_t, _wcstombs_s_l, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _wcstombs_s_l, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _wcstombs_s_l, ### TO ### _Out_opt_               size_t*,        _PtNumOfCharConverted, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _wcstombs_s_l,                size_t*,        _PtNumOfCharConverted, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _wcstombs_s_l,                size_t*,        _PtNumOfCharConverted, ### TO ### _Out_writes_opt_(_Size) char,           _Dest, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _wcstombs_s_l,                size_t*,        _PtNumOfCharConverted,    char,           _Dest, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _wcstombs_s_l,                size_t*,        _PtNumOfCharConverted,    char,           _Dest, ### TO ### _In_z_                  wchar_t const*, _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _wcstombs_s_l,                size_t*,        _PtNumOfCharConverted,    char,           _Dest,                   wchar_t const*, _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _wcstombs_s_l,                size_t*,        _PtNumOfCharConverted,    char,           _Dest,                   wchar_t const*, _Source, ### TO ### _In_                    size_t,         _MaxCount, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _wcstombs_s_l,                size_t*,        _PtNumOfCharConverted,    char,           _Dest,                   wchar_t const*, _Source,                     size_t,         _MaxCount, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _wcstombs_s_l,                size_t*,        _PtNumOfCharConverted,    char,           _Dest,                   wchar_t const*, _Source,                     size_t,         _MaxCount, ### TO ### _In_opt_                _locale_t,      _Locale */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _wcstombs_s_l,                size_t*,        _PtNumOfCharConverted,    char,           _Dest,                   wchar_t const*, _Source,                     size_t,         _MaxCount,                 _locale_t,      _Locale */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_3( errno_t, _wcstombs_s_l,                size_t*,        _PtNumOfCharConverted,    char,           _Dest,                   wchar_t const*, _Source,                     size_t,         _MaxCount,                 _locale_t,      _Locale ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( ### TO ### _ACRTIMP, _wcstombs_l, _wcstombs_s_l, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _wcstombs_l, _wcstombs_s_l, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _wcstombs_l, _wcstombs_s_l, ### TO ### _Out_writes_opt_z_(_Size)  char, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _wcstombs_l, _wcstombs_s_l,     char, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _wcstombs_l, _wcstombs_s_l,     char, ### TO ### _Out_writes_(_MaxCount),   char,           _Dest, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _wcstombs_l, _wcstombs_s_l,     char,   ,   char,           _Dest, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _wcstombs_l, _wcstombs_s_l,     char,   ,   char,           _Dest, ### TO ### _In_z_                     wchar_t const*, _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _wcstombs_l, _wcstombs_s_l,     char,   ,   char,           _Dest,                      wchar_t const*, _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _wcstombs_l, _wcstombs_s_l,     char,   ,   char,           _Dest,                      wchar_t const*, _Source, ### TO ### _In_                       size_t,         _MaxCount, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _wcstombs_l, _wcstombs_s_l,     char,   ,   char,           _Dest,                      wchar_t const*, _Source,                        size_t,         _MaxCount, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _wcstombs_l, _wcstombs_s_l,     char,   ,   char,           _Dest,                      wchar_t const*, _Source,                        size_t,         _MaxCount, ### TO ### _In_opt_                   _locale_t,      _Locale */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _wcstombs_l, _wcstombs_s_l,     char,   ,   char,           _Dest,                      wchar_t const*, _Source,                        size_t,         _MaxCount,                    _locale_t,      _Locale */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_3_SIZE_EX( , _wcstombs_l, _wcstombs_s_l,     char,   ,   char,           _Dest,                      wchar_t const*, _Source,                        size_t,         _MaxCount,                    _locale_t,      _Locale ### TO ### ) */
size_t __cdecl _wcstombs_l( char * _Dest, wchar_t const* _Source, size_t _MaxCount, _locale_t _Locale );
enum { _MAX_PATH = 260 };
enum { _MAX_DRIVE = 3 };
enum { _MAX_DIR = 256 };
enum { _MAX_FNAME = 256 };
enum { _MAX_EXT = 256 };
/* #pragma push_macro("_fullpath") */
char* __cdecl _fullpath( char* _Buffer, char const* _Path, size_t _BufferCount );
/* #pragma pop_macro("_fullpath") */
errno_t __cdecl _makepath_s( char* _Buffer, size_t _BufferCount, char const* _Drive, char const* _Dir, char const* _Filename, char const* _Ext );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( ### TO ### errno_t, _makepath_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _makepath_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _makepath_s, ### TO ### char,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _makepath_s, char,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _makepath_s, char,        _Buffer, ### TO ### _In_opt_z_ char const*, _Drive, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _makepath_s, char,        _Buffer,  char const*, _Drive, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _makepath_s, char,        _Buffer,  char const*, _Drive, ### TO ### _In_opt_z_ char const*, _Dir, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _makepath_s, char,        _Buffer,  char const*, _Drive,  char const*, _Dir, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _makepath_s, char,        _Buffer,  char const*, _Drive,  char const*, _Dir, ### TO ### _In_opt_z_ char const*, _Filename, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _makepath_s, char,        _Buffer,  char const*, _Drive,  char const*, _Dir,  char const*, _Filename, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _makepath_s, char,        _Buffer,  char const*, _Drive,  char const*, _Dir,  char const*, _Filename, ### TO ### _In_opt_z_ char const*, _Ext */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _makepath_s, char,        _Buffer,  char const*, _Drive,  char const*, _Dir,  char const*, _Filename,  char const*, _Ext */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_4( errno_t, _makepath_s, char,        _Buffer,  char const*, _Drive,  char const*, _Dir,  char const*, _Filename,  char const*, _Ext ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( ### TO ### void, __RETURN_POLICY_VOID, _ACRTIMP, _makepath, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _makepath, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _makepath, ### TO ### _Pre_notnull_ _Post_z_, char,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _makepath,  , char,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _makepath,  , char,        _Buffer, ### TO ### _In_opt_z_              char const*, _Drive, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _makepath,  , char,        _Buffer,               char const*, _Drive, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _makepath,  , char,        _Buffer,               char const*, _Drive, ### TO ### _In_opt_z_              char const*, _Dir, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _makepath,  , char,        _Buffer,               char const*, _Drive,               char const*, _Dir, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _makepath,  , char,        _Buffer,               char const*, _Drive,               char const*, _Dir, ### TO ### _In_opt_z_              char const*, _Filename, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _makepath,  , char,        _Buffer,               char const*, _Drive,               char const*, _Dir,               char const*, _Filename, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _makepath,  , char,        _Buffer,               char const*, _Drive,               char const*, _Dir,               char const*, _Filename, ### TO ### _In_opt_z_              char const*, _Ext */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _makepath,  , char,        _Buffer,               char const*, _Drive,               char const*, _Dir,               char const*, _Filename,               char const*, _Ext */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_4( void, __RETURN_POLICY_VOID, , _makepath,  , char,        _Buffer,               char const*, _Drive,               char const*, _Dir,               char const*, _Filename,               char const*, _Ext ### TO ### ) */
void __cdecl _makepath( char * _Buffer, char const* _Drive, char const* _Dir, char const* _Filename, char const* _Ext );
void __cdecl _splitpath( char const* _FullPath, char* _Drive, char* _Dir, char* _Filename, char* _Ext );
errno_t __cdecl _splitpath_s( char const* _FullPath, char* _Drive, size_t _DriveCount, char* _Dir, size_t _DirCount, char* _Filename, size_t _FilenameCount, char* _Ext, size_t _ExtCount );
int* __cdecl __p___argc (void);
char*** __cdecl __p___argv (void);
wchar_t*** __cdecl __p___wargv(void);
/* #define __argc  (*__p___argc()) ### string, not number "(*__p___argc())" */
/* #define __argv  (*__p___argv()) ### string, not number "(*__p___argv())" */
/* #define __wargv (*__p___wargv()) ### string, not number "(*__p___wargv())" */
char*** __cdecl __p__environ (void);
wchar_t*** __cdecl __p__wenviron(void);
enum { _CRT_V12_LEGACY_FUNCTIONALITY = 1 };
/* #define _environ  (*__p__environ()) ### string, not number "(*__p__environ())" */
/* #define _wenviron (*__p__wenviron()) ### string, not number "(*__p__wenviron())" */
enum { _MAX_ENV = 32767 };
char* __cdecl getenv( char const* _VarName );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( ### TO ### errno_t, getenv_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, getenv_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, getenv_s, ### TO ### _Out_  size_t*,     _RequiredCount, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, getenv_s,   size_t*,     _RequiredCount, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, getenv_s,   size_t*,     _RequiredCount, ### TO ### char,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, getenv_s,   size_t*,     _RequiredCount, char,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, getenv_s,   size_t*,     _RequiredCount, char,        _Buffer, ### TO ### _In_z_ char const*, _VarName */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, getenv_s,   size_t*,     _RequiredCount, char,        _Buffer,  char const*, _VarName */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_1_1( errno_t, getenv_s,   size_t*,     _RequiredCount, char,        _Buffer,  char const*, _VarName ### TO ### ) */
errno_t __cdecl _dupenv_s( char** _Buffer, size_t* _BufferCount, char const* _VarName );
int __cdecl system( char const* _Command );
/*     #pragma warning(push) */
/*     #pragma warning(disable: 6540) */
int __cdecl _putenv( char const* _EnvString );
errno_t __cdecl _putenv_s( char const* _Name, char const* _Value );
/*     #pragma warning(pop) */
errno_t __cdecl _searchenv_s( char const* _Filename, char const* _VarName, char* _Buffer, size_t _BufferCount );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0( ### TO ### errno_t, _searchenv_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0( errno_t, _searchenv_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0( errno_t, _searchenv_s, ### TO ### _In_z_ char const*, _Filename, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0( errno_t, _searchenv_s,  char const*, _Filename, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0( errno_t, _searchenv_s,  char const*, _Filename, ### TO ### _In_z_ char const*, _VarName, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0( errno_t, _searchenv_s,  char const*, _Filename,  char const*, _VarName, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0( errno_t, _searchenv_s,  char const*, _Filename,  char const*, _VarName, ### TO ### char,        _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0( errno_t, _searchenv_s,  char const*, _Filename,  char const*, _VarName, char,        _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_2_0( errno_t, _searchenv_s,  char const*, _Filename,  char const*, _VarName, char,        _Buffer ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0( ### TO ### void, __RETURN_POLICY_VOID, _DCRTIMP, _searchenv, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0( void, __RETURN_POLICY_VOID, , _searchenv, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0( void, __RETURN_POLICY_VOID, , _searchenv, ### TO ### _In_z_                  char const*, _Filename, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0( void, __RETURN_POLICY_VOID, , _searchenv,                   char const*, _Filename, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0( void, __RETURN_POLICY_VOID, , _searchenv,                   char const*, _Filename, ### TO ### _In_z_                  char const*, _VarName, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0( void, __RETURN_POLICY_VOID, , _searchenv,                   char const*, _Filename,                   char const*, _VarName, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0( void, __RETURN_POLICY_VOID, , _searchenv,                   char const*, _Filename,                   char const*, _VarName, ### TO ### _Pre_notnull_ _Post_z_, char,        _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0( void, __RETURN_POLICY_VOID, , _searchenv,                   char const*, _Filename,                   char const*, _VarName,  , char,        _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_2_0( void, __RETURN_POLICY_VOID, , _searchenv,                   char const*, _Filename,                   char const*, _VarName,  , char,        _Buffer ### TO ### ) */
void __cdecl _searchenv( char const* _Filename, char const* _VarName, char * _Buffer );
void __cdecl _seterrormode( int _Mode );
void __cdecl _beep( unsigned _Frequency, unsigned _Duration );
void __cdecl _sleep( unsigned long _Duration );
/* #define sys_errlist _sys_errlist ### string, not number "_sys_errlist" */
/* #define sys_nerr    _sys_nerr ### string, not number "_sys_nerr" */
/*     #pragma warning(push) */
/*     #pragma warning(disable: 4141)  */
char* __cdecl ecvt( double _Value, int _DigitCount, int* _PtDec, int* _PtSign );
char* __cdecl fcvt( double _Value, int _FractionalDigitCount, int* _PtDec, int* _PtSign );
char* __cdecl gcvt( double _Value, int _DigitCount, char* _DstBuf );
char* __cdecl itoa( int _Value, char* _Buffer, int _Radix );
char* __cdecl ltoa( long _Value, char* _Buffer, int _Radix );
void __cdecl swab( char* _Buf1, char* _Buf2, int _SizeInBytes );
char* __cdecl ultoa( unsigned long _Value, char* _Buffer, int _Radix );
/* #define environ _environ ### string, not number "_environ" */
int __cdecl putenv( char const* _EnvString );
/*     #pragma warning(pop) */
_onexit_t __cdecl onexit( _onexit_t _Func);
/* #pragma warning(pop)  */
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/stdlib.h */
]]
