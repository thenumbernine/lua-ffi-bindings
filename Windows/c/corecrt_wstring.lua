local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wstring.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt.h */
/* ++ BEGIN C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.39.33519/include/vcruntime_string.h */
]] require 'ffi.req' 'c.vcruntime_string' ffi.cdef[[
/* ++ END   C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.39.33519/include/vcruntime_string.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
wchar_t* __cdecl _wcsdup( wchar_t const* _String );
wchar_t* __cdecl wcscat( wchar_t * _Destination, wchar_t const* _Source );
int __cdecl wcscmp( wchar_t const* _String1, wchar_t const* _String2 );
wchar_t* __cdecl wcscpy( wchar_t * _Destination, wchar_t const* _Source );
size_t __cdecl wcscspn( wchar_t const* _String, wchar_t const* _Control );
size_t __cdecl wcslen( wchar_t const* _String );
size_t __cdecl wcsnlen( wchar_t const* _Source, size_t _MaxCount );
wchar_t* __cdecl wcsncat( wchar_t * _Destination, wchar_t const* _Source, size_t _Count );
int __cdecl wcsncmp( wchar_t const* _String1, wchar_t const* _String2, size_t _MaxCount );
wchar_t* __cdecl wcsncpy( wchar_t * _Destination, wchar_t const* _Source, size_t _Count );
wchar_t const* __cdecl wcspbrk( wchar_t const* _String, wchar_t const* _Control );
size_t __cdecl wcsspn( wchar_t const* _String, wchar_t const* _Control );
wchar_t* __cdecl wcstok( wchar_t* _String, wchar_t const* _Delimiter, wchar_t** _Context );
static __inline wchar_t* __cdecl _wcstok( wchar_t* const _String, wchar_t const* const _Delimiter ) {
	return wcstok(_String, _Delimiter, 0);
} wchar_t* __cdecl _wcserror( int _ErrorNumber );
errno_t __cdecl _wcserror_s( wchar_t* _Buffer, size_t _SizeInWords, int _ErrorNumber );
wchar_t* __cdecl __wcserror( wchar_t const* _String );
errno_t __cdecl __wcserror_s( wchar_t* _Buffer, size_t _SizeInWords, wchar_t const* _ErrorMessage );
int __cdecl _wcsicmp( wchar_t const* _String1, wchar_t const* _String2 );
int __cdecl _wcsicmp_l( wchar_t const* _String1, wchar_t const* _String2, _locale_t _Locale );
int __cdecl _wcsnicmp( wchar_t const* _String1, wchar_t const* _String2, size_t _MaxCount );
int __cdecl _wcsnicmp_l( wchar_t const* _String1, wchar_t const* _String2, size_t _MaxCount, _locale_t _Locale );
errno_t __cdecl _wcsnset_s( wchar_t* _Destination, size_t _SizeInWords, wchar_t _Value, size_t _MaxCount );
wchar_t* __cdecl _wcsnset( wchar_t * _String, wchar_t _Value, size_t _MaxCount );
wchar_t* __cdecl _wcsrev( wchar_t* _String );
errno_t __cdecl _wcsset_s( wchar_t* _Destination, size_t _SizeInWords, wchar_t _Value );
wchar_t* __cdecl _wcsset( wchar_t * _String, wchar_t _Value );
errno_t __cdecl _wcslwr_s( wchar_t* _String, size_t _SizeInWords );
wchar_t* __cdecl _wcslwr( wchar_t * _String );
errno_t __cdecl _wcslwr_s_l( wchar_t* _String, size_t _SizeInWords, _locale_t _Locale );
wchar_t* __cdecl _wcslwr_l( wchar_t * _String, _locale_t _Locale );
errno_t __cdecl _wcsupr_s( wchar_t* _String, size_t _Size );
wchar_t* __cdecl _wcsupr( wchar_t * _String );
errno_t __cdecl _wcsupr_s_l( wchar_t* _String, size_t _Size, _locale_t _Locale );
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
/* + END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wstring.h */
]]
