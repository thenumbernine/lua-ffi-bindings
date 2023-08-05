local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/time.h */
enum { _INC_TIME = 1 };
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wtime.h */
]] require 'ffi.req' 'c.corecrt_wtime' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wtime.h */
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
int* __cdecl __daylight(void);
/* #define _daylight (*__daylight()) ### string, not number "(*__daylight())" */
long* __cdecl __dstbias(void);
/* #define _dstbias (*__dstbias()) ### string, not number "(*__dstbias())" */
long* __cdecl __timezone(void);
/* #define _timezone (*__timezone()) ### string, not number "(*__timezone())" */
char** __cdecl __tzname(void);
/* #define _tzname (__tzname()) ### string, not number "(__tzname())" */
errno_t __cdecl _get_daylight( int* _Daylight );
errno_t __cdecl _get_dstbias( long* _DaylightSavingsBias );
errno_t __cdecl _get_timezone( long* _TimeZone );
errno_t __cdecl _get_tzname( size_t* _ReturnValue, char* _Buffer, size_t _SizeInBytes, int _Index );
char* __cdecl asctime( struct tm const* _Tm );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, asctime_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, asctime_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, asctime_s, ### TO ### _Post_readable_size_(26) char,             _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, asctime_s,    char,             _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, asctime_s,    char,             _Buffer, ### TO ### _In_                     struct tm const*, _Time */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, asctime_s,    char,             _Buffer,                      struct tm const*, _Time */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, asctime_s,    char,             _Buffer,                      struct tm const*, _Time ### TO ### ) */
clock_t __cdecl clock(void);
char* __cdecl _ctime32( __time32_t const* _Time );
errno_t __cdecl _ctime32_s( char* _Buffer, size_t _SizeInBytes, __time32_t const* _Time );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, _ctime32_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime32_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime32_s, ### TO ### _Post_readable_size_(26) char,              _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime32_s,    char,              _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime32_s,    char,              _Buffer, ### TO ### _In_                     __time32_t const*, _Time */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime32_s,    char,              _Buffer,                      __time32_t const*, _Time */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime32_s,    char,              _Buffer,                      __time32_t const*, _Time ### TO ### ) */
char* __cdecl _ctime64( __time64_t const* _Time );
errno_t __cdecl _ctime64_s( char* _Buffer, size_t _SizeInBytes, __time64_t const* _Time );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, _ctime64_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime64_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime64_s, ### TO ### _Post_readable_size_(26) char,              _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime64_s,    char,              _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime64_s,    char,              _Buffer, ### TO ### _In_                     __time64_t const*, _Time */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime64_s,    char,              _Buffer,                      __time64_t const*, _Time */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _ctime64_s,    char,              _Buffer,                      __time64_t const*, _Time ### TO ### ) */
double __cdecl _difftime32( __time32_t _Time1, __time32_t _Time2 );
double __cdecl _difftime64( __time64_t _Time1, __time64_t _Time2 );
struct tm* __cdecl _gmtime32( __time32_t const* _Time );
errno_t __cdecl _gmtime32_s( struct tm* _Tm, __time32_t const* _Time );
struct tm* __cdecl _gmtime64( __time64_t const* _Time );
errno_t __cdecl _gmtime64_s( struct tm* _Tm, __time64_t const* _Time );
struct tm* __cdecl _localtime32( __time32_t const* _Time );
errno_t __cdecl _localtime32_s( struct tm* _Tm, __time32_t const* _Time );
struct tm* __cdecl _localtime64( __time64_t const* _Time );
errno_t __cdecl _localtime64_s( struct tm* _Tm, __time64_t const* _Time );
__time32_t __cdecl _mkgmtime32( struct tm* _Tm );
__time64_t __cdecl _mkgmtime64( struct tm* _Tm );
__time32_t __cdecl _mktime32( struct tm* _Tm );
__time64_t __cdecl _mktime64( struct tm* _Tm );
size_t __cdecl strftime( char* _Buffer, size_t _SizeInBytes, char const* _Format, struct tm const* _Tm );
size_t __cdecl _strftime_l( char* _Buffer, size_t _MaxSize, char const* _Format, struct tm const* _Tm, _locale_t _Locale );
errno_t __cdecl _strdate_s( char* _Buffer, size_t _SizeInBytes );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( ### TO ### errno_t, _strdate_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strdate_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strdate_s, ### TO ### _Post_readable_size_(9) char, _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strdate_s,    char, _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strdate_s,    char, _Buffer ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( ### TO ### _Success_(return != 0) char*, __RETURN_POLICY_DST, _ACRTIMP, _strdate, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(    char*, __RETURN_POLICY_DST, , _strdate, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(    char*, __RETURN_POLICY_DST, , _strdate, ### TO ### _Out_writes_z_(9), char, _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(    char*, __RETURN_POLICY_DST, , _strdate,   , char, _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(    char*, __RETURN_POLICY_DST, , _strdate,   , char, _Buffer ### TO ### ) */
char* __cdecl _strdate( char * _Buffer );
errno_t __cdecl _strtime_s( char* _Buffer, size_t _SizeInBytes );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( ### TO ### errno_t, _strtime_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strtime_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strtime_s, ### TO ### _Post_readable_size_(9) char, _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strtime_s,    char, _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strtime_s,    char, _Buffer ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( ### TO ### char*, __RETURN_POLICY_DST, _ACRTIMP, _strtime, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( char*, __RETURN_POLICY_DST, , _strtime, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( char*, __RETURN_POLICY_DST, , _strtime, ### TO ### _Out_writes_z_(9), char, _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( char*, __RETURN_POLICY_DST, , _strtime,   , char, _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( char*, __RETURN_POLICY_DST, , _strtime,   , char, _Buffer ### TO ### ) */
char* __cdecl _strtime( char * _Buffer );
__time32_t __cdecl _time32( __time32_t* _Time );
__time64_t __cdecl _time64( __time64_t* _Time );
int __cdecl _timespec32_get( struct _timespec32* _Ts, int _Base );
int __cdecl _timespec64_get( struct _timespec64* _Ts, int _Base );
void __cdecl _tzset(void);
unsigned __cdecl _getsystime( struct tm* _Tm );
unsigned __cdecl _setsystime( struct tm* _Tm, unsigned _Milliseconds );
       
/* #define CLK_TCK CLOCKS_PER_SEC ### string, not number "CLOCKS_PER_SEC" */
void __cdecl tzset(void);
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/time.h */
]]
local lib = ffi.C
if ffi.arch == 'x86' then
	return setmetatable({
		_wctime = lib._wctime32,		-- in corecrt_wtime.h
		_wctime_s = lib._wctime32_s,		-- in corecrt_wtime.h
		ctime = _ctime32,
		difftime = _difftime32,
		gmtime = _gmtime32,
		localtime = _localtime32,
		_mkgmtime = _mkgmtime32,
		mktime = _mktime32,
		time = _time32,
		timespec_get = _timespec32_get,
	}, {
		__index = lib,
	})
elseif ffi.arch == 'x64' then
	return setmetatable({
		_wctime = lib._wctime64,		-- in corecrt_wtime.h
		_wctime_s = lib._wctime64_s,		-- in corecrt_wtime.h
		ctime = _ctime64,
		difftime = _difftime64,
		gmtime = _gmtime64,
		localtime = _localtime64,
		_mkgmtime = _mkgmtime64,
		mktime = _mktime64,
		time = _time64,
		timespec_get = _timespec64_get,
	}, {
		__index = lib,
	})
end
