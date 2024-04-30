local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.39.33519/include/vcruntime_string.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _VCRUNTIME_DISABLED_WARNINGS) */
void const* __cdecl memchr( void const* _Buf, int _Val, size_t _MaxCount );
int __cdecl memcmp( void const* _Buf1, void const* _Buf2, size_t _Size );
void* __cdecl memcpy( void* _Dst, void const* _Src, size_t _Size );
void* __cdecl memmove( void* _Dst, void const* _Src, size_t _Size );
void* __cdecl memset( void* _Dst, int _Val, size_t _Size );
char const* __cdecl strchr( char const* _Str, int _Val );
char const* __cdecl strrchr( char const* _Str, int _Ch );
char const* __cdecl strstr( char const* _Str, char const* _SubStr );
wchar_t const* __cdecl wcschr( wchar_t const* _Str, wchar_t _Ch );
wchar_t const* __cdecl wcsrchr( wchar_t const* _Str, wchar_t _Ch );
wchar_t const* __cdecl wcsstr( wchar_t const* _Str, wchar_t const* _SubStr );
/* #pragma warning(pop)  */
/* + END   C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.39.33519/include/vcruntime_string.h */
]]
