local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/string.h */
enum { _INC_STRING = 1 };
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_memory.h */
/* +++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_memcpy_s.h */
/* ++++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/errno.h */
]] require 'ffi.req' 'c.errno' ffi.cdef[[
/* ++++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/errno.h */
/* ++++ BEGIN C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.36.32532/include/vcruntime_string.h */
]] require 'ffi.req' 'c.vcruntime_string' ffi.cdef[[
/* ++++ END   C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.36.32532/include/vcruntime_string.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
/* #define _CRT_MEMCPY_S_INLINE static __inline ### string, not number "static __inline" */
/* #pragma warning(pop)  */
/* +++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_memcpy_s.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
int __cdecl _memicmp( void const* _Buf1, void const* _Buf2, size_t _Size );
int __cdecl _memicmp_l( void const* _Buf1, void const* _Buf2, size_t _Size, _locale_t _Locale );
void* __cdecl memccpy( void* _Dst, void const* _Src, int _Val, size_t _Size );
int __cdecl memicmp( void const* _Buf1, void const* _Buf2, size_t _Size );
/* #pragma warning(pop)  */
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_memory.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wstring.h */
]] require 'ffi.req' 'c.corecrt_wstring' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wstring.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
enum { _NLSCMPERROR = 2147483647 };
void* __cdecl _memccpy( void* _Dst, void const* _Src, int _Val, size_t _MaxCount );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, strcat_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, strcat_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, strcat_s, ### TO ### char,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, strcat_s, char,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, strcat_s, char,        _Destination, ### TO ### _In_z_ char const*, _Source */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, strcat_s, char,        _Destination,  char const*, _Source */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, strcat_s, char,        _Destination,  char const*, _Source ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( ### TO ### char*, __RETURN_POLICY_DST, __EMPTY_DECLSPEC, strcat, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( char*, __RETURN_POLICY_DST, , strcat, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( char*, __RETURN_POLICY_DST, , strcat, ### TO ### _Inout_updates_z_(_String_length_(_Destination) + _String_length_(_Source) + 1), char,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( char*, __RETURN_POLICY_DST, , strcat,   , char,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( char*, __RETURN_POLICY_DST, , strcat,   , char,        _Destination, ### TO ### _In_z_                                                                           char const*, _Source */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( char*, __RETURN_POLICY_DST, , strcat,   , char,        _Destination,                                                                            char const*, _Source */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( char*, __RETURN_POLICY_DST, , strcat,   , char,        _Destination,                                                                            char const*, _Source ### TO ### ) */
char* __cdecl strcat( char * _Destination, char const* _Source );
int __cdecl strcmp( char const* _Str1, char const* _Str2 );
int __cdecl _strcmpi( char const* _String1, char const* _String2 );
int __cdecl strcoll( char const* _String1, char const* _String2 );
int __cdecl _strcoll_l( char const* _String1, char const* _String2, _locale_t _Locale );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, strcpy_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, strcpy_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, strcpy_s, ### TO ### _Post_z_ char,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, strcpy_s,  char,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, strcpy_s,  char,        _Destination, ### TO ### _In_z_   char const*, _Source */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, strcpy_s,  char,        _Destination,    char const*, _Source */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, strcpy_s,  char,        _Destination,    char const*, _Source ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( ### TO ### char*, __RETURN_POLICY_DST, __EMPTY_DECLSPEC, strcpy, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( char*, __RETURN_POLICY_DST, , strcpy, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( char*, __RETURN_POLICY_DST, , strcpy, ### TO ### _Out_writes_z_(_String_length_(_Source) + 1), char,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( char*, __RETURN_POLICY_DST, , strcpy,   , char,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( char*, __RETURN_POLICY_DST, , strcpy,   , char,        _Destination, ### TO ### _In_z_                                        char const*, _Source */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( char*, __RETURN_POLICY_DST, , strcpy,   , char,        _Destination,                                         char const*, _Source */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( char*, __RETURN_POLICY_DST, , strcpy,   , char,        _Destination,                                         char const*, _Source ### TO ### ) */
char* __cdecl strcpy( char * _Destination, char const* _Source );
size_t __cdecl strcspn( char const* _Str, char const* _Control );
char* __cdecl _strdup( char const* _Source );
char* __cdecl _strerror( char const* _ErrorMessage );
errno_t __cdecl _strerror_s( char* _Buffer, size_t _SizeInBytes, char const* _ErrorMessage );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, _strerror_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strerror_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strerror_s, ### TO ### char,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strerror_s, char,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strerror_s, char,        _Buffer, ### TO ### _In_opt_z_ char const*, _ErrorMessage */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strerror_s, char,        _Buffer,  char const*, _ErrorMessage */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strerror_s, char,        _Buffer,  char const*, _ErrorMessage ### TO ### ) */
char* __cdecl strerror( int _ErrorMessage );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, strerror_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, strerror_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, strerror_s, ### TO ### char, _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, strerror_s, char, _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, strerror_s, char, _Buffer, ### TO ### _In_ int, _ErrorMessage */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, strerror_s, char, _Buffer,  int, _ErrorMessage */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, strerror_s, char, _Buffer,  int, _ErrorMessage ### TO ### ) */
int __cdecl _stricmp( char const* _String1, char const* _String2 );
int __cdecl _stricoll( char const* _String1, char const* _String2 );
int __cdecl _stricoll_l( char const* _String1, char const* _String2, _locale_t _Locale );
int __cdecl _stricmp_l( char const* _String1, char const* _String2, _locale_t _Locale );
size_t __cdecl strlen( char const* _Str );
errno_t __cdecl _strlwr_s( char* _String, size_t _Size );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( ### TO ### errno_t, _strlwr_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strlwr_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strlwr_s, ### TO ### _Prepost_z_ char, _String */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strlwr_s,  char, _String */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strlwr_s,  char, _String ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( ### TO ### char*, __RETURN_POLICY_DST, _ACRTIMP, _strlwr, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( char*, __RETURN_POLICY_DST, , _strlwr, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( char*, __RETURN_POLICY_DST, , _strlwr, ### TO ### _Inout_z_, char, _String */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( char*, __RETURN_POLICY_DST, , _strlwr, , char, _String */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( char*, __RETURN_POLICY_DST, , _strlwr, , char, _String ### TO ### ) */
char* __cdecl _strlwr( char * _String );
errno_t __cdecl _strlwr_s_l( char* _String, size_t _Size, _locale_t _Locale );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, _strlwr_s_l, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strlwr_s_l, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strlwr_s_l, ### TO ### _Prepost_z_ char,      _String, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strlwr_s_l,  char,      _String, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strlwr_s_l,  char,      _String, ### TO ### _In_opt_    _locale_t, _Locale */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strlwr_s_l,  char,      _String,     _locale_t, _Locale */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strlwr_s_l,  char,      _String,     _locale_t, _Locale ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( ### TO ### char*, __RETURN_POLICY_DST, _ACRTIMP, _strlwr_l, _strlwr_s_l, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( char*, __RETURN_POLICY_DST, , _strlwr_l, _strlwr_s_l, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( char*, __RETURN_POLICY_DST, , _strlwr_l, _strlwr_s_l, ### TO ### _Inout_updates_z_(_Size) char, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( char*, __RETURN_POLICY_DST, , _strlwr_l, _strlwr_s_l,    char, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( char*, __RETURN_POLICY_DST, , _strlwr_l, _strlwr_s_l,    char, ### TO ### _Inout_z_,               char,      _String, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( char*, __RETURN_POLICY_DST, , _strlwr_l, _strlwr_s_l,    char, ,               char,      _String, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( char*, __RETURN_POLICY_DST, , _strlwr_l, _strlwr_s_l,    char, ,               char,      _String, ### TO ### _In_opt_                 _locale_t, _Locale */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( char*, __RETURN_POLICY_DST, , _strlwr_l, _strlwr_s_l,    char, ,               char,      _String,                  _locale_t, _Locale */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( char*, __RETURN_POLICY_DST, , _strlwr_l, _strlwr_s_l,    char, ,               char,      _String,                  _locale_t, _Locale ### TO ### ) */
char* __cdecl _strlwr_l( char * _String, _locale_t _Locale );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( ### TO ### errno_t, strncat_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, strncat_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, strncat_s, ### TO ### _Prepost_z_             char,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, strncat_s,              char,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, strncat_s,              char,        _Destination, ### TO ### _In_reads_or_z_(_Count) char const*, _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, strncat_s,              char,        _Destination,    char const*, _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, strncat_s,              char,        _Destination,    char const*, _Source, ### TO ### _In_                    size_t,      _Count */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, strncat_s,              char,        _Destination,    char const*, _Source,                     size_t,      _Count */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, strncat_s,              char,        _Destination,    char const*, _Source,                     size_t,      _Count ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( ### TO ### char*, __RETURN_POLICY_DST, _ACRTIMP, strncat, strncat_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , strncat, strncat_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , strncat, strncat_s, ### TO ### _Inout_updates_z_(_Size)   char, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , strncat, strncat_s,      char, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , strncat, strncat_s,      char, ### TO ### _Inout_updates_z_(_Count), char,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , strncat, strncat_s,      char,   , char,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , strncat, strncat_s,      char,   , char,        _Destination, ### TO ### _In_reads_or_z_(_Count)    char const*, _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , strncat, strncat_s,      char,   , char,        _Destination,       char const*, _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , strncat, strncat_s,      char,   , char,        _Destination,       char const*, _Source, ### TO ### _In_                       size_t,      _Count */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , strncat, strncat_s,      char,   , char,        _Destination,       char const*, _Source,                        size_t,      _Count */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , strncat, strncat_s,      char,   , char,        _Destination,       char const*, _Source,                        size_t,      _Count ### TO ### ) */
char* __cdecl strncat( char * _Destination, char const* _Source, size_t _Count );
int __cdecl strncmp( char const* _Str1, char const* _Str2, size_t _MaxCount );
int __cdecl _strnicmp( char const* _String1, char const* _String2, size_t _MaxCount );
int __cdecl _strnicmp_l( char const* _String1, char const* _String2, size_t _MaxCount, _locale_t _Locale );
int __cdecl _strnicoll( char const* _String1, char const* _String2, size_t _MaxCount );
int __cdecl _strnicoll_l( char const* _String1, char const* _String2, size_t _MaxCount, _locale_t _Locale );
int __cdecl _strncoll( char const* _String1, char const* _String2, size_t _MaxCount );
int __cdecl _strncoll_l( char const* _String1, char const* _String2, size_t _MaxCount, _locale_t _Locale );
size_t __cdecl __strncnt( char const* _String, size_t _Count );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( ### TO ### errno_t, strncpy_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, strncpy_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, strncpy_s, ### TO ### char,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, strncpy_s, char,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, strncpy_s, char,        _Destination, ### TO ### _In_reads_or_z_(_Count) char const*, _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, strncpy_s, char,        _Destination,    char const*, _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, strncpy_s, char,        _Destination,    char const*, _Source, ### TO ### _In_                    size_t,      _Count */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, strncpy_s, char,        _Destination,    char const*, _Source,                     size_t,      _Count */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, strncpy_s, char,        _Destination,    char const*, _Source,                     size_t,      _Count ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( ### TO ### char*, __RETURN_POLICY_DST, _ACRTIMP, strncpy, strncpy_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , strncpy, strncpy_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , strncpy, strncpy_s, ### TO ### _Out_writes_z_(_Size)               char, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , strncpy, strncpy_s,                  char, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , strncpy, strncpy_s,                  char, ### TO ### _Out_writes_(_Count) _Post_maybez_, char,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , strncpy, strncpy_s,                  char,    , char,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , strncpy, strncpy_s,                  char,    , char,        _Destination, ### TO ### _In_reads_or_z_(_Count)             char const*, _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , strncpy, strncpy_s,                  char,    , char,        _Destination,                char const*, _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , strncpy, strncpy_s,                  char,    , char,        _Destination,                char const*, _Source, ### TO ### _In_                                size_t,      _Count */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , strncpy, strncpy_s,                  char,    , char,        _Destination,                char const*, _Source,                                 size_t,      _Count */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , strncpy, strncpy_s,                  char,    , char,        _Destination,                char const*, _Source,                                 size_t,      _Count ### TO ### ) */
char* __cdecl strncpy( char * _Destination, char const* _Source, size_t _Count );
/* ### INCOMPLETE ARG MACRO ### _When_ ### IN LINE ### _When_( */
/* ### PREPENDING ### _When_( ### TO ### _MaxCount > _String_length_(_String), */
/* ### INCOMPLETE ARG MACRO ### _When_ ### IN LINE ### _When_( _MaxCount > _String_length_(_String), */
/* ### PREPENDING ### _When_( _MaxCount > _String_length_(_String), ### TO ### _Post_satisfies_(return == _String_length_(_String)) */
/* ### INCOMPLETE ARG MACRO ### _When_ ### IN LINE ### _When_( _MaxCount > _String_length_(_String),    */
/* ### PREPENDING ### _When_( _MaxCount > _String_length_(_String),    ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### _When_ ### IN LINE ### _When_( */
/* ### PREPENDING ### _When_( ### TO ### _MaxCount <= _String_length_(_String), */
/* ### INCOMPLETE ARG MACRO ### _When_ ### IN LINE ### _When_( _MaxCount <= _String_length_(_String), */
/* ### PREPENDING ### _When_( _MaxCount <= _String_length_(_String), ### TO ### _Post_satisfies_(return == _MaxCount) */
/* ### INCOMPLETE ARG MACRO ### _When_ ### IN LINE ### _When_( _MaxCount <= _String_length_(_String),    */
/* ### PREPENDING ### _When_( _MaxCount <= _String_length_(_String),    ### TO ### ) */
size_t __cdecl strnlen( char const* _String, size_t _MaxCount );
errno_t __cdecl _strnset_s( char* _String, size_t _SizeInBytes, int _Value, size_t _MaxCount );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( ### TO ### errno_t, _strnset_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _strnset_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _strnset_s, ### TO ### _Prepost_z_ char,   _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _strnset_s,  char,   _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _strnset_s,  char,   _Destination, ### TO ### _In_        int,    _Value, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _strnset_s,  char,   _Destination,         int,    _Value, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _strnset_s,  char,   _Destination,         int,    _Value, ### TO ### _In_        size_t, _Count */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _strnset_s,  char,   _Destination,         int,    _Value,         size_t, _Count */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _strnset_s,  char,   _Destination,         int,    _Value,         size_t, _Count ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( ### TO ### char*, __RETURN_POLICY_DST, _ACRTIMP, _strnset, _strnset_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , _strnset, _strnset_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , _strnset, _strnset_s, ### TO ### _Inout_updates_z_(_Size)   char, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , _strnset, _strnset_s,      char, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , _strnset, _strnset_s,      char, ### TO ### _Inout_updates_z_(_Count), char,   _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , _strnset, _strnset_s,      char,   , char,   _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , _strnset, _strnset_s,      char,   , char,   _Destination, ### TO ### _In_                       int,    _Value, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , _strnset, _strnset_s,      char,   , char,   _Destination,                        int,    _Value, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , _strnset, _strnset_s,      char,   , char,   _Destination,                        int,    _Value, ### TO ### _In_                       size_t, _Count */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , _strnset, _strnset_s,      char,   , char,   _Destination,                        int,    _Value,                        size_t, _Count */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( char*, __RETURN_POLICY_DST, , _strnset, _strnset_s,      char,   , char,   _Destination,                        int,    _Value,                        size_t, _Count ### TO ### ) */
char* __cdecl _strnset( char * _Destination, int _Value, size_t _Count );
char const* __cdecl strpbrk( char const* _Str, char const* _Control );
char* __cdecl _strrev( char* _Str );
errno_t __cdecl _strset_s( char* _Destination, size_t _DestinationSize, int _Value );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, _strset_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strset_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strset_s, ### TO ### _Prepost_z_ char, _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strset_s,  char, _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strset_s,  char, _Destination, ### TO ### _In_        int,  _Value */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strset_s,  char, _Destination,         int,  _Value */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strset_s,  char, _Destination,         int,  _Value ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( ### TO ### char*, __RETURN_POLICY_DST, __EMPTY_DECLSPEC, _strset, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( char*, __RETURN_POLICY_DST, , _strset, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( char*, __RETURN_POLICY_DST, , _strset, ### TO ### _Inout_z_, char, _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( char*, __RETURN_POLICY_DST, , _strset, , char, _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( char*, __RETURN_POLICY_DST, , _strset, , char, _Destination, ### TO ### _In_       int,  _Value */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( char*, __RETURN_POLICY_DST, , _strset, , char, _Destination,        int,  _Value */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( char*, __RETURN_POLICY_DST, , _strset, , char, _Destination,        int,  _Value ### TO ### ) */
char* __cdecl _strset( char * _Destination, int _Value );
size_t __cdecl strspn( char const* _Str, char const* _Control );
char* __cdecl strtok( char* _String, char const* _Delimiter );
errno_t __cdecl _strupr_s( char* _String, size_t _Size );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( ### TO ### errno_t, _strupr_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strupr_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strupr_s, ### TO ### _Prepost_z_ char, _String */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strupr_s,  char, _String */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _strupr_s,  char, _String ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( ### TO ### char*, __RETURN_POLICY_DST, _ACRTIMP, _strupr, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( char*, __RETURN_POLICY_DST, , _strupr, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( char*, __RETURN_POLICY_DST, , _strupr, ### TO ### _Inout_z_, char, _String */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( char*, __RETURN_POLICY_DST, , _strupr, , char, _String */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( char*, __RETURN_POLICY_DST, , _strupr, , char, _String ### TO ### ) */
char* __cdecl _strupr( char * _String );
errno_t __cdecl _strupr_s_l( char* _String, size_t _Size, _locale_t _Locale );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, _strupr_s_l, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strupr_s_l, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strupr_s_l, ### TO ### _Prepost_z_ char,      _String, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strupr_s_l,  char,      _String, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strupr_s_l,  char,      _String, ### TO ### _In_opt_    _locale_t, _Locale */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strupr_s_l,  char,      _String,     _locale_t, _Locale */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _strupr_s_l,  char,      _String,     _locale_t, _Locale ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( ### TO ### char*, __RETURN_POLICY_DST, _ACRTIMP, _strupr_l, _strupr_s_l, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( char*, __RETURN_POLICY_DST, , _strupr_l, _strupr_s_l, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( char*, __RETURN_POLICY_DST, , _strupr_l, _strupr_s_l, ### TO ### _Inout_updates_z_(_Size) char, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( char*, __RETURN_POLICY_DST, , _strupr_l, _strupr_s_l,    char, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( char*, __RETURN_POLICY_DST, , _strupr_l, _strupr_s_l,    char, ### TO ### _Inout_z_,               char,      _String, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( char*, __RETURN_POLICY_DST, , _strupr_l, _strupr_s_l,    char, ,               char,      _String, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( char*, __RETURN_POLICY_DST, , _strupr_l, _strupr_s_l,    char, ,               char,      _String, ### TO ### _In_opt_                 _locale_t, _Locale */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( char*, __RETURN_POLICY_DST, , _strupr_l, _strupr_s_l,    char, ,               char,      _String,                  _locale_t, _Locale */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( char*, __RETURN_POLICY_DST, , _strupr_l, _strupr_s_l,    char, ,               char,      _String,                  _locale_t, _Locale ### TO ### ) */
char* __cdecl _strupr_l( char * _String, _locale_t _Locale );
size_t __cdecl strxfrm( char* _Destination, char const* _Source, size_t _MaxCount );
size_t __cdecl _strxfrm_l( char* _Destination, char const* _Source, size_t _MaxCount, _locale_t _Locale );
/*     #pragma push_macro("strdup") */
char* __cdecl strdup( char const* _String );
/*     #pragma pop_macro("strdup") */
int __cdecl strcmpi( char const* _String1, char const* _String2 );
int __cdecl stricmp( char const* _String1, char const* _String2 );
char* __cdecl strlwr( char* _String );
int __cdecl strnicmp( char const* _String1, char const* _String2, size_t _MaxCount );
char* __cdecl strnset( char* _String, int _Value, size_t _MaxCount );
char* __cdecl strrev( char* _String );
char* __cdecl strset( char* _String, int _Value);
char* __cdecl strupr( char* _String );
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/string.h */
]]
