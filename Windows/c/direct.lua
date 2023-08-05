local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/direct.h */
enum { _INC_DIRECT = 1 };
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wdirect.h */
]] require 'ffi.req' 'c.corecrt_wdirect' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wdirect.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
enum { _DISKFREE_T_DEFINED = 1 };
struct _diskfree_t {
	unsigned total_clusters;
	unsigned avail_clusters;
	unsigned sectors_per_cluster;
	unsigned bytes_per_sector;
};
unsigned __cdecl _getdiskfree( unsigned _Drive, struct _diskfree_t* _DiskFree );
int __cdecl _chdrive( int _Drive);
int __cdecl _getdrive(void);
unsigned long __cdecl _getdrives(void);
/* #pragma push_macro("_getcwd") */
/* #pragma push_macro("_getdcwd") */
char* __cdecl _getcwd( char* _DstBuf, int _SizeInBytes );
char* __cdecl _getdcwd( int _Drive, char* _DstBuf, int _SizeInBytes );
enum { _getdcwd_nolock = 0 };
/* #pragma pop_macro("_getcwd") */
/* #pragma pop_macro("_getdcwd") */
int __cdecl _chdir( char const* _Path);
int __cdecl _mkdir( char const* _Path);
int __cdecl _rmdir( char const* _Path);
/*         #pragma push_macro("getcwd") */
char* __cdecl getcwd( char* _DstBuf, int _SizeInBytes );
/*         #pragma pop_macro("getcwd") */
int __cdecl chdir( char const* _Path );
enum { diskfree_t = 0 };
int __cdecl mkdir( char const* _Path );
int __cdecl rmdir( char const* _Path );
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/direct.h */
]]
