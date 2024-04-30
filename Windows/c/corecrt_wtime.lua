local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wtime.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt.h */
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
size_t __cdecl wcsftime( wchar_t* _Buffer, size_t _SizeInWords, wchar_t const* _Format, struct tm const* _Tm );
size_t __cdecl _wcsftime_l( wchar_t* _Buffer, size_t _SizeInWords, wchar_t const* _Format, struct tm const* _Tm, _locale_t _Locale );
wchar_t* __cdecl _wctime32( __time32_t const* _Time );
errno_t __cdecl _wctime32_s( wchar_t* _Buffer, size_t _SizeInWords, __time32_t const* _Time );
wchar_t* __cdecl _wctime64( __time64_t const* _Time );
errno_t __cdecl _wctime64_s( wchar_t* _Buffer, size_t _SizeInWords, __time64_t const* _Time);
errno_t __cdecl _wstrdate_s( wchar_t* _Buffer, size_t _SizeInWords );
wchar_t* __cdecl _wstrdate( wchar_t * _Buffer );
errno_t __cdecl _wstrtime_s( wchar_t* _Buffer, size_t _SizeInWords );
wchar_t* __cdecl _wstrtime( wchar_t * _Buffer );
static __inline wchar_t * __cdecl _wctime( time_t const* const _Time) {
	return _wctime64(_Time);
} static __inline errno_t __cdecl _wctime_s( wchar_t* const _Buffer, size_t const _SizeInWords, time_t const* const _Time ) {
	return _wctime64_s(_Buffer, _SizeInWords, _Time);
}
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wtime.h */
]]
