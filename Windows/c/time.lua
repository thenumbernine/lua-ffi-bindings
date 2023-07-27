local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/time.h */
enum { _INC_TIME = 1 };
/* BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]] require 'ffi.Windows.c.corecrt' ffi.cdef[[
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
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
_Check_return_ _CRT_INSECURE_DEPRECATE(_wasctime_s) _Success_(return != 0) _Ret_writes_z_(26) wchar_t* __cdecl _wasctime( struct tm const* _Tm );
_Success_(return == 0) errno_t __cdecl _wasctime_s( _Out_writes_z_(_SizeInWords) _Post_readable_size_(26) wchar_t* _Buffer, _In_range_(>=,26) size_t _SizeInWords, struct tm const* _Tm );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### _Success_(return == 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( _Success_(return == 0) */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( _Success_(return == 0) ### TO ### errno_t, _wasctime_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( _Success_(return == 0) errno_t, _wasctime_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( _Success_(return == 0) errno_t, _wasctime_s, ### TO ### _Post_readable_size_(26) wchar_t,          _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( _Success_(return == 0) errno_t, _wasctime_s, _Post_readable_size_(26) wchar_t,          _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( _Success_(return == 0) errno_t, _wasctime_s, _Post_readable_size_(26) wchar_t,          _Buffer, ### TO ### _In_                     struct tm const*, _Time */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( _Success_(return == 0) errno_t, _wasctime_s, _Post_readable_size_(26) wchar_t,          _Buffer,                      struct tm const*, _Time */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( _Success_(return == 0) errno_t, _wasctime_s, _Post_readable_size_(26) wchar_t,          _Buffer,                      struct tm const*, _Time ### TO ### ) */
_Success_(return > 0) size_t __cdecl wcsftime( _Out_writes_z_(_SizeInWords) wchar_t* _Buffer, size_t _SizeInWords, _In_z_ wchar_t const* _Format, struct tm const* _Tm );
_Success_(return > 0) size_t __cdecl _wcsftime_l( _Out_writes_z_(_SizeInWords) wchar_t* _Buffer, size_t _SizeInWords, _In_z_ wchar_t const* _Format, struct tm const* _Tm, _In_opt_ _locale_t _Locale );
_Success_(return != 0) _Check_return_ _CRT_INSECURE_DEPRECATE(_wctime32_s) wchar_t* __cdecl _wctime32( __time32_t const* _Time );
errno_t __cdecl _wctime32_s( _Out_writes_z_(_SizeInWords) _Post_readable_size_(26) wchar_t* _Buffer, _In_range_(>=, 26) size_t _SizeInWords, __time32_t const* _Time );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, _wctime32_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime32_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime32_s, ### TO ### _Post_readable_size_(26) wchar_t,           _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime32_s, _Post_readable_size_(26) wchar_t,           _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime32_s, _Post_readable_size_(26) wchar_t,           _Buffer, ### TO ### _In_                     __time32_t const*, _Time */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime32_s, _Post_readable_size_(26) wchar_t,           _Buffer,                      __time32_t const*, _Time */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime32_s, _Post_readable_size_(26) wchar_t,           _Buffer,                      __time32_t const*, _Time ### TO ### ) */
_Success_(return != 0) _Ret_writes_z_(26) _Check_return_ _CRT_INSECURE_DEPRECATE(_wctime64_s) wchar_t* __cdecl _wctime64( __time64_t const* _Time );
errno_t __cdecl _wctime64_s( _Out_writes_z_(_SizeInWords) _Post_readable_size_(26) wchar_t* _Buffer, _In_range_(>=, 26) size_t _SizeInWords, __time64_t const* _Time);
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, _wctime64_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime64_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime64_s, ### TO ### _Post_readable_size_(26) wchar_t,           _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime64_s, _Post_readable_size_(26) wchar_t,           _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime64_s, _Post_readable_size_(26) wchar_t,           _Buffer, ### TO ### _In_                     __time64_t const*, _Time */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime64_s, _Post_readable_size_(26) wchar_t,           _Buffer,                      __time64_t const*, _Time */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wctime64_s, _Post_readable_size_(26) wchar_t,           _Buffer,                      __time64_t const*, _Time ### TO ### ) */
errno_t __cdecl _wstrdate_s( _Out_writes_z_(_SizeInWords) _When_(_SizeInWords >=9, _Post_readable_size_(9)) wchar_t* _Buffer, size_t _SizeInWords );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( ### TO ### errno_t, _wstrdate_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wstrdate_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wstrdate_s, ### TO ### _Post_readable_size_(9) wchar_t, _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wstrdate_s, _Post_readable_size_(9) wchar_t, _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wstrdate_s, _Post_readable_size_(9) wchar_t, _Buffer ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( ### TO ### _Success_(return != 0) _Ret_writes_z_(9) wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _wstrdate, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( _Success_(return != 0) _Ret_writes_z_(9) wchar_t*, __RETURN_POLICY_DST, , _wstrdate, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( _Success_(return != 0) _Ret_writes_z_(9) wchar_t*, __RETURN_POLICY_DST, , _wstrdate, ### TO ### _Out_writes_z_(9), wchar_t, _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( _Success_(return != 0) _Ret_writes_z_(9) wchar_t*, __RETURN_POLICY_DST, , _wstrdate, _Out_writes_z_(9), wchar_t, _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( _Success_(return != 0) _Ret_writes_z_(9) wchar_t*, __RETURN_POLICY_DST, , _wstrdate, _Out_writes_z_(9), wchar_t, _Buffer ### TO ### ) */
_CRT_INSECURE_DEPRECATE( _wstrdate_s) _Success_(return != 0) _Ret_writes_z_(9) wchar_t* __cdecl _wstrdate( _Out_writes_z_(9) wchar_t * _Buffer );
errno_t __cdecl _wstrtime_s( _Out_writes_z_(_SizeInWords) _When_(_SizeInWords >=9, _Post_readable_size_(9)) wchar_t* _Buffer, size_t _SizeInWords );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( ### TO ### errno_t, _wstrtime_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wstrtime_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wstrtime_s, ### TO ### _Post_readable_size_(9) wchar_t, _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wstrtime_s, _Post_readable_size_(9) wchar_t, _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wstrtime_s, _Post_readable_size_(9) wchar_t, _Buffer ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( ### TO ### _Success_(return != 0) _Ret_writes_z_(9) wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _wstrtime, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( _Success_(return != 0) _Ret_writes_z_(9) wchar_t*, __RETURN_POLICY_DST, , _wstrtime, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( _Success_(return != 0) _Ret_writes_z_(9) wchar_t*, __RETURN_POLICY_DST, , _wstrtime, ### TO ### _Out_writes_z_(9), wchar_t, _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( _Success_(return != 0) _Ret_writes_z_(9) wchar_t*, __RETURN_POLICY_DST, , _wstrtime, _Out_writes_z_(9), wchar_t, _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( _Success_(return != 0) _Ret_writes_z_(9) wchar_t*, __RETURN_POLICY_DST, , _wstrtime, _Out_writes_z_(9), wchar_t, _Buffer ### TO ### ) */
_CRT_INSECURE_DEPRECATE( _wstrtime_s) _Success_(return != 0) _Ret_writes_z_(9) wchar_t* __cdecl _wstrtime( _Out_writes_z_(9) wchar_t * _Buffer );
_Check_return_ static __inline wchar_t * __CRTDECL _wctime( time_t const* const _Time) {
	return _wctime64(_Time);
} static __inline errno_t __CRTDECL _wctime_s( _Pre_notnull_ _Post_z_ _Out_writes_z_(_SizeInWords) wchar_t* const _Buffer, size_t const _SizeInWords, time_t const* const _Time ) {
	return _wctime64_s(_Buffer, _SizeInWords, _Time);
}
/* #pragma warning(pop)  */
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wtime.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
typedef long clock_t;
struct _timespec32 {
	__time32_t tv_sec;
	long tv_nsec;
};
struct _timespec64 {
	__time64_t tv_sec;
	long tv_nsec;
};
struct timespec {
	time_t tv_sec;
	long tv_nsec;
};
/* #define CLOCKS_PER_SEC  ((clock_t)1000) ### string, not number "((clock_t)1000)" */
enum { TIME_UTC = 1 };
_Check_return_ _CRT_INSECURE_DEPRECATE(_get_daylight) int* __cdecl __daylight(void);
/* #define _daylight (*__daylight()) ### string, not number "(*__daylight())" */
_Check_return_ _CRT_INSECURE_DEPRECATE(_get_dstbias) long* __cdecl __dstbias(void);
/* #define _dstbias (*__dstbias()) ### string, not number "(*__dstbias())" */
_Check_return_ _CRT_INSECURE_DEPRECATE(_get_timezone) long* __cdecl __timezone(void);
/* #define _timezone (*__timezone()) ### string, not number "(*__timezone())" */
_Check_return_ _Deref_ret_z_ _CRT_INSECURE_DEPRECATE(_get_tzname) char** __cdecl __tzname(void);
/* #define _tzname (__tzname()) ### string, not number "(__tzname())" */
_Success_(_Daylight != 0) errno_t __cdecl _get_daylight( int* _Daylight );
_Success_(_DaylightSavingsBias != 0) errno_t __cdecl _get_dstbias( long* _DaylightSavingsBias );
_Success_(_TimeZone != 0) errno_t __cdecl _get_timezone( long* _TimeZone );
_Success_(return == 0) errno_t __cdecl _get_tzname( size_t* _ReturnValue, _Out_writes_z_(_SizeInBytes) char* _Buffer, size_t _SizeInBytes, int _Index );
_Success_(return != 0) _Ret_writes_z_(26) _Check_return_ _CRT_INSECURE_DEPRECATE(asctime_s) char* __cdecl asctime( struct tm const* _Tm );
_Success_(return == 0) errno_t __cdecl asctime_s( _Out_writes_(_SizeInBytes) _Post_readable_size_(26) char* _Buffer, _In_range_(>=,26) size_t _SizeInBytes, struct tm const* _Tm );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, asctime_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, asctime_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, asctime_s, ### TO ### _Post_readable_size_(26) char,             _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, asctime_s, _Post_readable_size_(26) char,             _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, asctime_s, _Post_readable_size_(26) char,             _Buffer, ### TO ### _In_                     struct tm const*, _Time */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, asctime_s, _Post_readable_size_(26) char,             _Buffer,                      struct tm const*, _Time */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, asctime_s, _Post_readable_size_(26) char,             _Buffer,                      struct tm const*, _Time ### TO ### ) */
_Check_return_ clock_t __cdecl clock(void);
_Ret_z_ _Success_(return != 0) _Check_return_ _CRT_INSECURE_DEPRECATE(_ctime32_s) char* __cdecl _ctime32( __time32_t const* _Time );
errno_t __cdecl _ctime32_s( _Out_writes_(_SizeInBytes) _Post_readable_size_(26) char* _Buffer, _In_range_(>=,26) size_t _SizeInBytes, __time32_t const* _Time );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, _ctime32_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime32_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime32_s, ### TO ### _Post_readable_size_(26) char,              _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime32_s, _Post_readable_size_(26) char,              _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime32_s, _Post_readable_size_(26) char,              _Buffer, ### TO ### _In_                     __time32_t const*, _Time */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime32_s, _Post_readable_size_(26) char,              _Buffer,                      __time32_t const*, _Time */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime32_s, _Post_readable_size_(26) char,              _Buffer,                      __time32_t const*, _Time ### TO ### ) */
_Ret_z_ _Success_(return != 0) _Check_return_ _CRT_INSECURE_DEPRECATE(_ctime64_s) char* __cdecl _ctime64( __time64_t const* _Time );
errno_t __cdecl _ctime64_s( _Out_writes_z_(_SizeInBytes) _Post_readable_size_(26) char* _Buffer, _In_range_(>=,26) size_t _SizeInBytes, __time64_t const* _Time );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, _ctime64_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime64_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime64_s, ### TO ### _Post_readable_size_(26) char,              _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime64_s, _Post_readable_size_(26) char,              _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime64_s, _Post_readable_size_(26) char,              _Buffer, ### TO ### _In_                     __time64_t const*, _Time */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime64_s, _Post_readable_size_(26) char,              _Buffer,                      __time64_t const*, _Time */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime64_s, _Post_readable_size_(26) char,              _Buffer,                      __time64_t const*, _Time ### TO ### ) */
_Check_return_ double __cdecl _difftime32( __time32_t _Time1, __time32_t _Time2 );
_Check_return_ double __cdecl _difftime64( __time64_t _Time1, __time64_t _Time2 );
_Success_(return != 0) _Check_return_ _CRT_INSECURE_DEPRECATE(_gmtime32_s) struct tm* __cdecl _gmtime32( __time32_t const* _Time );
errno_t __cdecl _gmtime32_s( struct tm* _Tm, __time32_t const* _Time );
_Success_(return != 0) _Check_return_ _CRT_INSECURE_DEPRECATE(_gmtime64_s) struct tm* __cdecl _gmtime64( __time64_t const* _Time );
errno_t __cdecl _gmtime64_s( struct tm* _Tm, __time64_t const* _Time );
_Success_(return != 0) _Check_return_ _CRT_INSECURE_DEPRECATE(_localtime32_s) struct tm* __cdecl _localtime32( __time32_t const* _Time );
errno_t __cdecl _localtime32_s( struct tm* _Tm, __time32_t const* _Time );
_Success_(return != 0) _Check_return_ _CRT_INSECURE_DEPRECATE(_localtime64_s) struct tm* __cdecl _localtime64( __time64_t const* _Time );
errno_t __cdecl _localtime64_s( struct tm* _Tm, __time64_t const* _Time );
_Check_return_ __time32_t __cdecl _mkgmtime32( struct tm* _Tm );
_Check_return_ __time64_t __cdecl _mkgmtime64( struct tm* _Tm );
__time32_t __cdecl _mktime32( struct tm* _Tm );
__time64_t __cdecl _mktime64( struct tm* _Tm );
_Success_(return > 0) size_t __cdecl strftime( _Out_writes_z_(_SizeInBytes) char* _Buffer, size_t _SizeInBytes, _In_z_ _Printf_format_string_ char const* _Format, struct tm const* _Tm );
_Success_(return > 0) size_t __cdecl _strftime_l( _Out_writes_z_(_MaxSize) char* _Buffer, size_t _MaxSize, _In_z_ _Printf_format_string_ char const* _Format, struct tm const* _Tm, _In_opt_ _locale_t _Locale );
errno_t __cdecl _strdate_s( _Out_writes_(_SizeInBytes) _When_(_SizeInBytes >=9, _Post_readable_size_(9)) char* _Buffer, size_t _SizeInBytes );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( ### TO ### errno_t, _strdate_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strdate_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strdate_s, ### TO ### _Post_readable_size_(9) char, _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strdate_s, _Post_readable_size_(9) char, _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strdate_s, _Post_readable_size_(9) char, _Buffer ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( ### TO ### _Success_(return != 0) char*, __RETURN_POLICY_DST, _ACRTIMP, _strdate, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( _Success_(return != 0) char*, __RETURN_POLICY_DST, , _strdate, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( _Success_(return != 0) char*, __RETURN_POLICY_DST, , _strdate, ### TO ### _Out_writes_z_(9), char, _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( _Success_(return != 0) char*, __RETURN_POLICY_DST, , _strdate, _Out_writes_z_(9), char, _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( _Success_(return != 0) char*, __RETURN_POLICY_DST, , _strdate, _Out_writes_z_(9), char, _Buffer ### TO ### ) */
_CRT_INSECURE_DEPRECATE( _strdate_s) _Success_(return != 0) char* __cdecl _strdate( _Out_writes_z_(9) char * _Buffer );
errno_t __cdecl _strtime_s( _Out_writes_(_SizeInBytes) _When_(_SizeInBytes >=9, _Post_readable_size_(9)) char* _Buffer, size_t _SizeInBytes );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( ### TO ### errno_t, _strtime_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strtime_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strtime_s, ### TO ### _Post_readable_size_(9) char, _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strtime_s, _Post_readable_size_(9) char, _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strtime_s, _Post_readable_size_(9) char, _Buffer ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( ### TO ### char*, __RETURN_POLICY_DST, _ACRTIMP, _strtime, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( char*, __RETURN_POLICY_DST, , _strtime, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( char*, __RETURN_POLICY_DST, , _strtime, ### TO ### _Out_writes_z_(9), char, _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( char*, __RETURN_POLICY_DST, , _strtime, _Out_writes_z_(9), char, _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( char*, __RETURN_POLICY_DST, , _strtime, _Out_writes_z_(9), char, _Buffer ### TO ### ) */
_CRT_INSECURE_DEPRECATE( _strtime_s) char* __cdecl _strtime( _Out_writes_z_(9) char * _Buffer );
__time32_t __cdecl _time32( _Out_opt_ __time32_t* _Time );
__time64_t __cdecl _time64( _Out_opt_ __time64_t* _Time );
_Success_(return != 0) _Check_return_ int __cdecl _timespec32_get( struct _timespec32* _Ts, int _Base );
_Success_(return != 0) _Check_return_ int __cdecl _timespec64_get( struct _timespec64* _Ts, int _Base );
void __cdecl _tzset(void);
_CRT_DEPRECATE_TEXT( "This function or variable has been superceded by newer library " "or operating system functionality. Consider using " #GetLocalTime " " "instead. See online help for details.") unsigned __cdecl _getsystime( struct tm* _Tm );
_CRT_DEPRECATE_TEXT( "This function or variable has been superceded by newer library " "or operating system functionality. Consider using " #SetLocalTime " " "instead. See online help for details.") unsigned __cdecl _setsystime( struct tm* _Tm, unsigned _Milliseconds );
_Check_return_ _CRT_INSECURE_DEPRECATE(ctime_s) static __inline char* __CRTDECL ctime( time_t const* const _Time ) {
	return _ctime64(_Time);
} _Check_return_ static __inline double __CRTDECL difftime( time_t const _Time1, time_t const _Time2 ) {
	return _difftime64(_Time1, _Time2);
} _Check_return_ _CRT_INSECURE_DEPRECATE(gmtime_s) static __inline struct tm* __CRTDECL gmtime( time_t const* const _Time) {
	return _gmtime64(_Time);
} _CRT_INSECURE_DEPRECATE(localtime_s) static __inline struct tm* __CRTDECL localtime( time_t const* const _Time ) {
	return _localtime64(_Time);
} _Check_return_ static __inline time_t __CRTDECL _mkgmtime( struct tm* const _Tm ) {
	return _mkgmtime64(_Tm);
} static __inline time_t __CRTDECL mktime( struct tm* const _Tm ) {
	return _mktime64(_Tm);
} static __inline time_t __CRTDECL time( _Out_opt_ time_t* const _Time ) {
	return _time64(_Time);
} _Check_return_ static __inline int __CRTDECL timespec_get( struct timespec* const _Ts, int const _Base ) {
	return _timespec64_get((struct _timespec64*)_Ts, _Base);
} static __inline errno_t __CRTDECL ctime_s( _Out_writes_(_SizeInBytes) _Post_readable_size_(26) char* const _Buffer, _In_range_(>=,26) size_t const _SizeInBytes, time_t const* const _Time ) {
	return _ctime64_s(_Buffer, _SizeInBytes, _Time);
} static __inline errno_t __CRTDECL gmtime_s( struct tm* const _Tm, time_t const* const _Time ) {
	return _gmtime64_s(_Tm, _Time);
} static __inline errno_t __CRTDECL localtime_s( struct tm* const _Tm, time_t const* const _Time ) {
	return _localtime64_s(_Tm, _Time);
}
/* #define CLK_TCK CLOCKS_PER_SEC ### string, not number "CLOCKS_PER_SEC" */
_CRT_DEPRECATE_TEXT( "The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " #_tzset ". See online help for details.") void __cdecl tzset(void);
/* #pragma warning(pop)  */
/* END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/time.h */
]]
