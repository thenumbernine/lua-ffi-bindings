local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wio.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_share.h */
]] require 'ffi.req' 'c.corecrt_share' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_share.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */


typedef unsigned long _fsize_t;
struct _wfinddata32_t {
	unsigned attrib;
	__time32_t time_create;
	__time32_t time_access;
	__time32_t time_write;
	_fsize_t size;
	wchar_t name[260];
};
struct _wfinddata32i64_t {
	unsigned attrib;
	__time32_t time_create;
	__time32_t time_access;
	__time32_t time_write;
	__int64 size;
	wchar_t name[260];
};
struct _wfinddata64i32_t {
	unsigned attrib;
	__time64_t time_create;
	__time64_t time_access;
	__time64_t time_write;
	_fsize_t size;
	wchar_t name[260];
};
struct _wfinddata64_t {
	unsigned attrib;
	__time64_t time_create;
	__time64_t time_access;
	__time64_t time_write;
	__int64 size;
	wchar_t name[260];
};
enum { _wfindfirst = 0 };
enum { _wfindnext = 0 };
enum { _wfindfirsti64 = 0 };
enum { _wfindnexti64 = 0 };
int __cdecl _waccess( wchar_t const* _FileName, int _AccessMode );
errno_t __cdecl _waccess_s( wchar_t const* _FileName, int _AccessMode );
int __cdecl _wchmod( wchar_t const* _FileName, int _Mode );
int __cdecl _wcreat( wchar_t const* _FileName, int _PermissionMode );
intptr_t __cdecl _wfindfirst32( wchar_t const* _FileName, struct _wfinddata32_t* _FindData );
int __cdecl _wfindnext32( intptr_t _FindHandle, struct _wfinddata32_t* _FindData );
int __cdecl _wunlink( wchar_t const* _FileName );
int __cdecl _wrename( wchar_t const* _OldFileName, wchar_t const* _NewFileName );
errno_t __cdecl _wmktemp_s( wchar_t* _TemplateName, size_t _SizeInWords );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( ### TO ### errno_t, _wmktemp_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wmktemp_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wmktemp_s, ### TO ### wchar_t, _TemplateName */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wmktemp_s, wchar_t, _TemplateName */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wmktemp_s, wchar_t, _TemplateName ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _wmktemp, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wmktemp, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wmktemp, ### TO ### _Inout_z_, wchar_t, _TemplateName */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wmktemp, , wchar_t, _TemplateName */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wmktemp, , wchar_t, _TemplateName ### TO ### ) */
wchar_t* __cdecl _wmktemp( wchar_t * _TemplateName );
intptr_t __cdecl _wfindfirst32i64( wchar_t const* _FileName, struct _wfinddata32i64_t* _FindData );
intptr_t __cdecl _wfindfirst64i32( wchar_t const* _FileName, struct _wfinddata64i32_t* _FindData );
intptr_t __cdecl _wfindfirst64( wchar_t const* _FileName, struct _wfinddata64_t* _FindData );
int __cdecl _wfindnext32i64( intptr_t _FindHandle, struct _wfinddata32i64_t* _FindData );
int __cdecl _wfindnext64i32( intptr_t _FindHandle, struct _wfinddata64i32_t* _FindData );
int __cdecl _wfindnext64( intptr_t _FindHandle, struct _wfinddata64_t* _FindData );
errno_t __cdecl _wsopen_s( int* _FileHandle, wchar_t const* _FileName, int _OpenFlag, int _ShareFlag, int _PermissionFlag );
errno_t __cdecl _wsopen_dispatch( wchar_t const* _FileName, int _OFlag, int _ShFlag, int _PMode, int* _PFileHandle, int _BSecure );
int __cdecl _wopen( wchar_t const* _FileName, int _OpenFlag, ...);
int __cdecl _wsopen( wchar_t const* _FileName, int _OpenFlag, int _ShareFlag, ...);
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wio.h */
]]
