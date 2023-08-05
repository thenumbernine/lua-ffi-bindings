local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/sys/utime.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
struct _utimbuf {
	time_t actime;
	time_t modtime;
};
struct __utimbuf32 {
	__time32_t actime;
	__time32_t modtime;
};
struct __utimbuf64 {
	__time64_t actime;
	__time64_t modtime;
};
struct utimbuf {
	time_t actime;
	time_t modtime;
};
struct utimbuf32 {
	__time32_t actime;
	__time32_t modtime;
};
int __cdecl _utime32( char const* _FileName, struct __utimbuf32* _Time );
int __cdecl _futime32( int _FileHandle, struct __utimbuf32* _Time );
int __cdecl _wutime32( wchar_t const* _FileName, struct __utimbuf32* _Time );
int __cdecl _utime64( char const* _FileName, struct __utimbuf64* _Time );
int __cdecl _futime64( int _FileHandle, struct __utimbuf64* _Time );
int __cdecl _wutime64( wchar_t const* _FileName, struct __utimbuf64* _Time );
   
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/sys/utime.h */
]]
local lib = ffi.C
return setmetatable(
ffi.arch == 'x86' and {
	utime = lib._utime32,
	struct_utimbuf = 'struct __utimbuf32',
} or {
	utime = lib._utime64,
	struct_utimbuf = 'struct __utimbuf64'
}, {
	__index = lib,
})
