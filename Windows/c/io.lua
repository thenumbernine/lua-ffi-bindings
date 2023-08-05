local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/io.h */
enum { _INC_IO = 1 };
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_io.h */
/* +++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_share.h */
]] require 'ffi.req' 'c.corecrt_share' ffi.cdef[[
/* +++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_share.h */
/* +++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wio.h */
]] require 'ffi.req' 'c.corecrt_wio' ffi.cdef[[
/* +++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wio.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */


struct _finddata32_t {
	unsigned attrib;
	__time32_t time_create;
	__time32_t time_access;
	__time32_t time_write;
	_fsize_t size;
	char name[260];
};
struct _finddata32i64_t {
	unsigned attrib;
	__time32_t time_create;
	__time32_t time_access;
	__time32_t time_write;
	__int64 size;
	char name[260];
};
struct _finddata64i32_t {
	unsigned attrib;
	__time64_t time_create;
	__time64_t time_access;
	__time64_t time_write;
	_fsize_t size;
	char name[260];
};
struct __finddata64_t {
	unsigned attrib;
	__time64_t time_create;
	__time64_t time_access;
	__time64_t time_write;
	__int64 size;
	char name[260];
};
enum { _A_NORMAL = 0 };
enum { _A_RDONLY = 1 };
enum { _A_HIDDEN = 2 };
enum { _A_SYSTEM = 4 };
enum { _A_SUBDIR = 16 };
enum { _A_ARCH = 32 };
enum { _findfirst = 0 };
enum { _findnext = 0 };
enum { _findfirsti64 = 0 };
enum { _findnexti64 = 0 };
int __cdecl _access( char const* _FileName, int _AccessMode );
errno_t __cdecl _access_s( char const* _FileName, int _AccessMode );
int __cdecl _chmod( char const* _FileName, int _Mode );
int __cdecl _chsize( int _FileHandle, long _Size );
errno_t __cdecl _chsize_s( int _FileHandle, __int64 _Size );
int __cdecl _close( int _FileHandle );
int __cdecl _commit( int _FileHandle );
int __cdecl _creat( char const* _FileName, int _PermissionMode );
int __cdecl _dup( int _FileHandle );
int __cdecl _dup2( int _FileHandleSrc, int _FileHandleDst );
int __cdecl _eof( int _FileHandle );
long __cdecl _filelength( int _FileHandle );
intptr_t __cdecl _findfirst32( char const* _FileName, struct _finddata32_t* _FindData );
int __cdecl _findnext32( intptr_t _FindHandle, struct _finddata32_t* _FindData );
int __cdecl _findclose( intptr_t _FindHandle );
intptr_t __cdecl _get_osfhandle( int _FileHandle );
int __cdecl _isatty( int _FileHandle );
int __cdecl _locking( int _FileHandle, int _LockMode, long _NumOfBytes );
long __cdecl _lseek( int _FileHandle, long _Offset, int _Origin );
errno_t __cdecl _mktemp_s( char* _TemplateName, size_t _Size );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( ### TO ### errno_t, _mktemp_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _mktemp_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _mktemp_s, ### TO ### _Prepost_z_ char, _TemplateName */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _mktemp_s,  char, _TemplateName */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _mktemp_s,  char, _TemplateName ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ###  __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( */
/* ### PREPENDING ###  __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( ### TO ### char *, __RETURN_POLICY_DST, _ACRTIMP, _mktemp, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ###  __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( char *, __RETURN_POLICY_DST, , _mktemp, */
/* ### PREPENDING ###  __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( char *, __RETURN_POLICY_DST, , _mktemp, ### TO ### _Inout_z_, char, _TemplateName */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ###  __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( char *, __RETURN_POLICY_DST, , _mktemp, , char, _TemplateName */
/* ### PREPENDING ###  __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( char *, __RETURN_POLICY_DST, , _mktemp, , char, _TemplateName ### TO ### ) */
char * __cdecl _mktemp( char * _TemplateName );
int __cdecl _open_osfhandle( intptr_t _OSFileHandle, int _Flags );
int __cdecl _pipe( int* _PtHandles, unsigned int _PipeSize, int _TextMode );
int __cdecl _read( int _FileHandle, void* _DstBuf, unsigned int _MaxCharCount );
int __cdecl remove( char const* _FileName );
int __cdecl rename( char const* _OldFilename, char const* _NewFilename );
int __cdecl _unlink( char const* _FileName );
int __cdecl _setmode( int _FileHandle, int _Mode );
long __cdecl _tell( int _FileHandle );
int __cdecl _umask( int _Mode );
errno_t __cdecl _umask_s( int _NewMode, int* _OldMode );
int __cdecl _write( int _FileHandle, void const* _Buf, unsigned int _MaxCharCount );
__int64 __cdecl _filelengthi64( int _FileHandle );
intptr_t __cdecl _findfirst32i64( char const* _FileName, struct _finddata32i64_t* _FindData );
intptr_t __cdecl _findfirst64i32( char const* _FileName, struct _finddata64i32_t* _FindData );
intptr_t __cdecl _findfirst64( char const* _FileName, struct __finddata64_t* _FindData );
int __cdecl _findnext32i64( intptr_t _FindHandle, struct _finddata32i64_t* _FindData );
int __cdecl _findnext64i32( intptr_t _FindHandle, struct _finddata64i32_t* _FindData );
int __cdecl _findnext64( intptr_t _FindHandle, struct __finddata64_t* _FindData );
__int64 __cdecl _lseeki64( int _FileHandle, __int64 _Offset, int _Origin );
__int64 __cdecl _telli64( int _FileHandle );
errno_t __cdecl _sopen_s( int* _FileHandle, char const* _FileName, int _OpenFlag, int _ShareFlag, int _PermissionMode );
errno_t __cdecl _sopen_s_nolock( int* _FileHandle, char const* _FileName, int _OpenFlag, int _ShareFlag, int _PermissionMode );
errno_t __cdecl _sopen_dispatch( char const* _FileName, int _OFlag, int _ShFlag, int _PMode, int* _PFileHandle, int _BSecure );
int __cdecl _open( char const* _FileName, int _OpenFlag, ...);
int __cdecl _sopen( char const* _FileName, int _OpenFlag, int _ShareFlag, ...);
/*         #pragma warning(push) */
/*         #pragma warning(disable: 4141) */
int __cdecl access( char const* _FileName, int _AccessMode );
int __cdecl chmod( char const* _FileName, int _AccessMode );
int __cdecl chsize( int _FileHandle, long _Size );
int __cdecl close( int _FileHandle );
int __cdecl creat( char const* _FileName, int _PermissionMode );
int __cdecl dup( int _FileHandle );
int __cdecl dup2( int _FileHandleSrc, int _FileHandleDst );
int __cdecl eof( int _FileHandle );
long __cdecl filelength( int _FileHandle );
int __cdecl isatty( int _FileHandle );
int __cdecl locking( int _FileHandle, int _LockMode, long _NumOfBytes );
long __cdecl lseek( int _FileHandle, long _Offset, int _Origin );
char * __cdecl mktemp( char* _TemplateName );
int __cdecl open( char const* _FileName, int _OpenFlag, ...);
int __cdecl read( int _FileHandle, void* _DstBuf, unsigned int _MaxCharCount );
int __cdecl setmode( int _FileHandle, int _Mode );
int __cdecl sopen( char const* _FileName, int _OpenFlag, int _ShareFlag, ...);
long __cdecl tell( int _FileHandle );
int __cdecl umask( int _Mode );
int __cdecl unlink( char const* _FileName );
int __cdecl write( int _FileHandle, void const* _Buf, unsigned int _MaxCharCount );
/*         #pragma warning(pop) */
/* #pragma warning(pop)  */
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_io.h */
/* + END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/io.h */
]]
ffi.cdef[[
/* #ifdef _USE_32BIT_TIME_T
	typedef _finddata32_t _finddata_t;
	typedef _finddata32i64_t _finddatai64_t;
#else */
	typedef struct _finddata64i32_t _finddata_t;
	typedef struct _finddata64_t _finddatai64_t;
/* #endif */
]]

local lib = ffi.C
return setmetatable({
--[[
#ifdef _USE_32BIT_TIME_T
	_findfirst = lib._findfirst32,
	_findnext = lib._findnext32,
	_findfirsti64 = lib._findfirst32i64,
	_findnexti64 = lib._findnext32i64,
#else
--]]
	_findfirst = lib._findfirst64i32,
	_findnext = lib._findnext64i32,
	_findfirsti64 = lib._findfirst64,
	_findnexti64 = lib._findnext64,
--[[
#endif
--]]
}, {
	__index = ffi.C,
})
