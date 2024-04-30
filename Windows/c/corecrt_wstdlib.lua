local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wstdlib.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
errno_t __cdecl _itow_s( int _Value, wchar_t* _Buffer, size_t _BufferCount, int _Radix );
wchar_t* __cdecl _itow( int _Value, wchar_t * _Buffer, int _Radix );
errno_t __cdecl _ltow_s( long _Value, wchar_t* _Buffer, size_t _BufferCount, int _Radix );
wchar_t* __cdecl _ltow( long _Value, wchar_t * _Buffer, int _Radix );
errno_t __cdecl _ultow_s( unsigned long _Value, wchar_t* _Buffer, size_t _BufferCount, int _Radix );
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
void __cdecl _wmakepath( wchar_t * _Buffer, wchar_t const* _Drive, wchar_t const* _Dir, wchar_t const* _Filename, wchar_t const* _Ext );
void __cdecl _wperror( wchar_t const* _ErrorMessage );
void __cdecl _wsplitpath( wchar_t const* _FullPath, wchar_t* _Drive, wchar_t* _Dir, wchar_t* _Filename, wchar_t* _Ext );
errno_t __cdecl _wsplitpath_s( wchar_t const* _FullPath, wchar_t* _Drive, size_t _DriveCount, wchar_t* _Dir, size_t _DirCount, wchar_t* _Filename, size_t _FilenameCount, wchar_t* _Ext, size_t _ExtCount );
/*         #pragma push_macro("_wdupenv_s") */
errno_t __cdecl _wdupenv_s( wchar_t** _Buffer, size_t* _BufferCount, wchar_t const* _VarName );
/*         #pragma pop_macro("_wdupenv_s") */
wchar_t* __cdecl _wgetenv( wchar_t const* _VarName );
errno_t __cdecl _wgetenv_s( size_t* _RequiredCount, wchar_t* _Buffer, size_t _BufferCount, wchar_t const* _VarName );
int __cdecl _wputenv( wchar_t const* _EnvString );
errno_t __cdecl _wputenv_s( wchar_t const* _Name, wchar_t const* _Value );
errno_t __cdecl _wsearchenv_s( wchar_t const* _Filename, wchar_t const* _VarName, wchar_t* _Buffer, size_t _BufferCount );
void __cdecl _wsearchenv( wchar_t const* _Filename, wchar_t const* _VarName, wchar_t * _ResultPath );
int __cdecl _wsystem( wchar_t const* _Command );
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wstdlib.h */
]]
