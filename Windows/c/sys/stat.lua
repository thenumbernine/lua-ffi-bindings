require 'ffi.req' 'c.sys.types'
local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/sys/stat.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/sys/types.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
struct _stat32 {
	_dev_t st_dev;
	_ino_t st_ino;
	unsigned short st_mode;
	short st_nlink;
	short st_uid;
	short st_gid;
	_dev_t st_rdev;
	_off_t st_size;
	__time32_t st_atime;
	__time32_t st_mtime;
	__time32_t st_ctime;
};
struct _stat32i64 {
	_dev_t st_dev;
	_ino_t st_ino;
	unsigned short st_mode;
	short st_nlink;
	short st_uid;
	short st_gid;
	_dev_t st_rdev;
	__int64 st_size;
	__time32_t st_atime;
	__time32_t st_mtime;
	__time32_t st_ctime;
};
struct _stat64i32 {
	_dev_t st_dev;
	_ino_t st_ino;
	unsigned short st_mode;
	short st_nlink;
	short st_uid;
	short st_gid;
	_dev_t st_rdev;
	_off_t st_size;
	__time64_t st_atime;
	__time64_t st_mtime;
	__time64_t st_ctime;
};
struct _stat64 {
	_dev_t st_dev;
	_ino_t st_ino;
	unsigned short st_mode;
	short st_nlink;
	short st_uid;
	short st_gid;
	_dev_t st_rdev;
	__int64 st_size;
	__time64_t st_atime;
	__time64_t st_mtime;
	__time64_t st_ctime;
};

struct stat {
	_dev_t st_dev;
	_ino_t st_ino;
	unsigned short st_mode;
	short st_nlink;
	short st_uid;
	short st_gid;
	_dev_t st_rdev;
	_off_t st_size;
	time_t st_atime;
	time_t st_mtime;
	time_t st_ctime;
};
enum { _S_IFMT = 61440 };
enum { _S_IFDIR = 16384 };
enum { _S_IFCHR = 8192 };
enum { _S_IFIFO = 4096 };
enum { _S_IFREG = 32768 };
enum { _S_IREAD = 256 };
enum { _S_IWRITE = 128 };
enum { _S_IEXEC = 64 };
enum { S_IFMT = 61440 };
enum { S_IFDIR = 16384 };
enum { S_IFCHR = 8192 };
enum { S_IFREG = 32768 };
enum { S_IREAD = 256 };
enum { S_IWRITE = 128 };
enum { S_IEXEC = 64 };






int __cdecl _fstat32( int _FileHandle, struct _stat32* _Stat );
int __cdecl _fstat32i64( int _FileHandle, struct _stat32i64* _Stat );
int __cdecl _fstat64i32( int _FileHandle, struct _stat64i32* _Stat );
int __cdecl _fstat64( int _FileHandle, struct _stat64* _Stat );
int __cdecl _stat32( char const* _FileName, struct _stat32* _Stat );
int __cdecl _stat32i64( char const* _FileName, struct _stat32i64* _Stat );
int __cdecl _stat64i32( char const* _FileName, struct _stat64i32* _Stat );
int __cdecl _stat64( char const* _FileName, struct _stat64* _Stat );
int __cdecl _wstat32( wchar_t const* _FileName, struct _stat32* _Stat );
int __cdecl _wstat32i64( wchar_t const* _FileName, struct _stat32i64* _Stat );
int __cdecl _wstat64i32( wchar_t const* _FileName, struct _stat64i32* _Stat );
int __cdecl _wstat64( wchar_t const* _FileName, struct _stat64* _Stat );
 
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/sys/stat.h */
]]
ffi.cdef[[
typedef struct _stat64 __stat64;
]]

-- for linux mkdir compat
require 'ffi.Windows.c.direct'

local lib = ffi.C
local statlib = setmetatable({
--[[
#ifdef _USE_32BIT_TIME_T
	_fstat = lib._fstat32,
	_fstati64 = lib._fstat32i64,

	_wstat = lib._wstat32,
	_wstati64 = lib._wstat32i64,
	-- header inline function Lua alias:
	--fstat = lib._fstat32,
	--stat = lib._stat32,

	--_stat = lib._stat32,
	--struct_stat = 'struct _stat32',
	--_stati64 = lib._stat32i64,
	--struct_stat64 = 'struct _stat32i64',

	-- for lfs compat:
	fstat = lib._fstat32,
	stat = lib._stat32,
	stat_struct = 'struct _stat32',
#else
--]]
	_fstat = lib._fstat64i32,
	_fstati64 = lib._fstat64,

	_wstat = lib._wstat64i32,
	_wstati64 = lib._wstat64,
	-- header inline function Lua alias:
	--fstat = lib._fstat64i32,
	--stat = lib._stat64i32,
	--_stat = lib._stat64i32,
	--struct_stat = 'struct _stat64i32', -- this is the 'struct' that goes with the 'stat' function ...
	--_stati64 = lib._stat64,
	--struct_stat64 = 'struct _stat64',

	-- but I think I want 'stat' to point to '_stat64'
	-- and 'struct_stat' to point to 'struct _stat64'
	-- for lfs_ffi compat between Linux and Windows
	fstat = lib._fstat64,
	stat = lib._stat64,
	struct_stat = 'struct _stat64',
--[[
#endif
--]]
}, {
	__index = ffi.C,
})
-- allow nils instead of errors if we access fields not present (for the sake of lfs_ffi)
ffi.metatype(statlib.struct_stat, {
	__index = function(t,k)
		return nil
	end,
})
return statlib
