local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/string.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_memory.h */
/* +++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_memcpy_s.h */
/* ++++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/errno.h */
]] require 'ffi.req' 'c.errno' ffi.cdef[[
/* ++++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/errno.h */
/* ++++ BEGIN C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.39.33519/include/vcruntime_string.h */
]] require 'ffi.req' 'c.vcruntime_string' ffi.cdef[[
/* ++++ END   C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.39.33519/include/vcruntime_string.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
/* #pragma warning(pop)  */
/* +++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_memcpy_s.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
int __cdecl _memicmp( void const* _Buf1, void const* _Buf2, size_t _Size );
int __cdecl _memicmp_l( void const* _Buf1, void const* _Buf2, size_t _Size, _locale_t _Locale );
void* __cdecl memccpy( void* _Dst, void const* _Src, int _Val, size_t _Size );
int __cdecl memicmp( void const* _Buf1, void const* _Buf2, size_t _Size );
/* #pragma warning(pop)  */
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_memory.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wstring.h */
]] require 'ffi.req' 'c.corecrt_wstring' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wstring.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
void* __cdecl _memccpy( void* _Dst, void const* _Src, int _Val, size_t _MaxCount );
char* __cdecl strcat( char * _Destination, char const* _Source );
int __cdecl strcmp( char const* _Str1, char const* _Str2 );
int __cdecl _strcmpi( char const* _String1, char const* _String2 );
int __cdecl strcoll( char const* _String1, char const* _String2 );
int __cdecl _strcoll_l( char const* _String1, char const* _String2, _locale_t _Locale );
char* __cdecl strcpy( char * _Destination, char const* _Source );
size_t __cdecl strcspn( char const* _Str, char const* _Control );
char* __cdecl _strdup( char const* _Source );
char* __cdecl _strerror( char const* _ErrorMessage );
errno_t __cdecl _strerror_s( char* _Buffer, size_t _SizeInBytes, char const* _ErrorMessage );
char* __cdecl strerror( int _ErrorMessage );
int __cdecl _stricmp( char const* _String1, char const* _String2 );
int __cdecl _stricoll( char const* _String1, char const* _String2 );
int __cdecl _stricoll_l( char const* _String1, char const* _String2, _locale_t _Locale );
int __cdecl _stricmp_l( char const* _String1, char const* _String2, _locale_t _Locale );
size_t __cdecl strlen( char const* _Str );
errno_t __cdecl _strlwr_s( char* _String, size_t _Size );
char* __cdecl _strlwr( char * _String );
errno_t __cdecl _strlwr_s_l( char* _String, size_t _Size, _locale_t _Locale );
char* __cdecl _strlwr_l( char * _String, _locale_t _Locale );
char* __cdecl strncat( char * _Destination, char const* _Source, size_t _Count );
int __cdecl strncmp( char const* _Str1, char const* _Str2, size_t _MaxCount );
int __cdecl _strnicmp( char const* _String1, char const* _String2, size_t _MaxCount );
int __cdecl _strnicmp_l( char const* _String1, char const* _String2, size_t _MaxCount, _locale_t _Locale );
int __cdecl _strnicoll( char const* _String1, char const* _String2, size_t _MaxCount );
int __cdecl _strnicoll_l( char const* _String1, char const* _String2, size_t _MaxCount, _locale_t _Locale );
int __cdecl _strncoll( char const* _String1, char const* _String2, size_t _MaxCount );
int __cdecl _strncoll_l( char const* _String1, char const* _String2, size_t _MaxCount, _locale_t _Locale );
size_t __cdecl __strncnt( char const* _String, size_t _Count );
char* __cdecl strncpy( char * _Destination, char const* _Source, size_t _Count );
size_t __cdecl strnlen( char const* _String, size_t _MaxCount );
errno_t __cdecl _strnset_s( char* _String, size_t _SizeInBytes, int _Value, size_t _MaxCount );
char* __cdecl _strnset( char * _Destination, int _Value, size_t _Count );
char const* __cdecl strpbrk( char const* _Str, char const* _Control );
char* __cdecl _strrev( char* _Str );
errno_t __cdecl _strset_s( char* _Destination, size_t _DestinationSize, int _Value );
char* __cdecl _strset( char * _Destination, int _Value );
size_t __cdecl strspn( char const* _Str, char const* _Control );
char* __cdecl strtok( char* _String, char const* _Delimiter );
errno_t __cdecl _strupr_s( char* _String, size_t _Size );
char* __cdecl _strupr( char * _String );
errno_t __cdecl _strupr_s_l( char* _String, size_t _Size, _locale_t _Locale );
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
/* + END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/string.h */
]]
