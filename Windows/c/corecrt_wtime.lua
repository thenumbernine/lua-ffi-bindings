local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wtime.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
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
static __inline wchar_t * __cdecl _wctime( time_t const* const _Time) {
	return _wctime64(_Time);
} static __inline errno_t __cdecl _wctime_s( wchar_t* const _Buffer, size_t const _SizeInWords, time_t const* const _Time ) {
	return _wctime64_s(_Buffer, _SizeInWords, _Time);
}
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wtime.h */
]]
