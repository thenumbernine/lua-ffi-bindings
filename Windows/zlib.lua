local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Users/Chris/include/zlib.h */
enum { ZLIB_H = 1 };
/* ++ BEGIN C:/Users/Chris/include/zconf.h */
enum { ZCONF_H = 1 };
enum { WIN32 = 1 };
enum { STDC = 1 };
enum { z_const = 1 };
/* #  define z_longlong long long ### string, not number "long long" */
/* +++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* +++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/stddef.h */
typedef size_t z_size_t;
enum { MAX_MEM_LEVEL = 9 };
enum { MAX_WBITS = 15 };
enum { ZEXTERN = 0 };
enum { ZEXPORT = 1 };
enum { ZEXPORTVA = 1 };
typedef unsigned char Byte;
typedef unsigned int uInt;
typedef unsigned long uLong;
typedef Byte Bytef;
typedef char charf;
typedef int intf;
typedef uInt uIntf;
typedef uLong uLongf;
typedef void const *voidpc;
typedef void *voidpf;
typedef void *voidp;
/* +++ BEGIN C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.39.33519/include/limits.h */
]] require 'ffi.req' 'c.limits' ffi.cdef[[
/* +++ END   C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.39.33519/include/limits.h */
enum { Z_U4 = 0 };
typedef unsigned z_crc_t;
/* +++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* +++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/sys/types.h */
/* +++ BEGIN C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.39.33519/include/stdarg.h */
]] require 'ffi.req' 'c.stdarg' ffi.cdef[[
/* +++ END   C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.39.33519/include/stdarg.h */
enum { SEEK_SET = 0 };
enum { SEEK_CUR = 1 };
enum { SEEK_END = 2 };
enum { off_t = 0 };
enum { z_off64_t = 0 };
/* ++ END   C:/Users/Chris/include/zconf.h */
/* #define ZLIB_VERSION "1.2.11" ### string, not number "\"1.2.11\"" */
enum { ZLIB_VERNUM = 4784 };
enum { ZLIB_VER_MAJOR = 1 };
enum { ZLIB_VER_MINOR = 2 };
enum { ZLIB_VER_REVISION = 11 };
enum { ZLIB_VER_SUBREVISION = 0 };
typedef voidpf (*alloc_func) (voidpf opaque, uInt items, uInt size);
typedef void (*free_func) (voidpf opaque, voidpf address);
struct internal_state;
typedef struct z_stream_s {
	Bytef *next_in;
	uInt avail_in;
	uLong total_in;
	Bytef *next_out;
	uInt avail_out;
	uLong total_out;
	char *msg;
	struct internal_state *state;
	alloc_func zalloc;
	free_func zfree;
	voidpf opaque;
	int data_type;
	uLong adler;
	uLong reserved;
} z_stream;
typedef z_stream *z_streamp;
typedef struct gz_header_s {
	int text;
	uLong time;
	int xflags;
	int os;
	Bytef *extra;
	uInt extra_len;
	uInt extra_max;
	Bytef *name;
	uInt name_max;
	Bytef *comment;
	uInt comm_max;
	int hcrc;
	int done;
} gz_header;
typedef gz_header *gz_headerp;
enum { Z_NO_FLUSH = 0 };
enum { Z_PARTIAL_FLUSH = 1 };
enum { Z_SYNC_FLUSH = 2 };
enum { Z_FULL_FLUSH = 3 };
enum { Z_FINISH = 4 };
enum { Z_BLOCK = 5 };
enum { Z_TREES = 6 };
enum { Z_OK = 0 };
enum { Z_STREAM_END = 1 };
enum { Z_NEED_DICT = 2 };
enum { Z_ERRNO = -1 };
enum { Z_STREAM_ERROR = -2 };
enum { Z_DATA_ERROR = -3 };
enum { Z_MEM_ERROR = -4 };
enum { Z_BUF_ERROR = -5 };
enum { Z_VERSION_ERROR = -6 };
enum { Z_NO_COMPRESSION = 0 };
enum { Z_BEST_SPEED = 1 };
enum { Z_BEST_COMPRESSION = 9 };
enum { Z_DEFAULT_COMPRESSION = -1 };
enum { Z_FILTERED = 1 };
enum { Z_HUFFMAN_ONLY = 2 };
enum { Z_RLE = 3 };
enum { Z_FIXED = 4 };
enum { Z_DEFAULT_STRATEGY = 0 };
enum { Z_BINARY = 0 };
enum { Z_TEXT = 1 };
enum { Z_ASCII = 1 };
enum { Z_UNKNOWN = 2 };
enum { Z_DEFLATED = 8 };
enum { Z_NULL = 0 };
/* #define zlib_version zlibVersion() ### string, not number "zlibVersion()" */
extern const char * zlibVersion (void);
extern int deflate (z_streamp strm, int flush);
extern int deflateEnd (z_streamp strm);
extern int inflate (z_streamp strm, int flush);
extern int inflateEnd (z_streamp strm);
extern int deflateSetDictionary (z_streamp strm, const Bytef *dictionary, uInt dictLength);
extern int deflateGetDictionary (z_streamp strm, Bytef *dictionary, uInt *dictLength);
extern int deflateCopy (z_streamp dest, z_streamp source);
extern int deflateReset (z_streamp strm);
extern int deflateParams (z_streamp strm, int level, int strategy);
extern int deflateTune (z_streamp strm, int good_length, int max_lazy, int nice_length, int max_chain);
extern uLong deflateBound (z_streamp strm, uLong sourceLen);
extern int deflatePending (z_streamp strm, unsigned *pending, int *bits);
extern int deflatePrime (z_streamp strm, int bits, int value);
extern int deflateSetHeader (z_streamp strm, gz_headerp head);
extern int inflateSetDictionary (z_streamp strm, const Bytef *dictionary, uInt dictLength);
extern int inflateGetDictionary (z_streamp strm, Bytef *dictionary, uInt *dictLength);
extern int inflateSync (z_streamp strm);
extern int inflateCopy (z_streamp dest, z_streamp source);
extern int inflateReset (z_streamp strm);
extern int inflateReset2 (z_streamp strm, int windowBits);
extern int inflatePrime (z_streamp strm, int bits, int value);
extern long inflateMark (z_streamp strm);
extern int inflateGetHeader (z_streamp strm, gz_headerp head);
typedef unsigned (*in_func) (void *, unsigned char * *);
typedef int (*out_func) (void *, unsigned char *, unsigned);
extern int inflateBack (z_streamp strm, in_func in, void *in_desc, out_func out, void *out_desc);
extern int inflateBackEnd (z_streamp strm);
extern uLong zlibCompileFlags (void);
extern int compress (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen);
extern int compress2 (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen, int level);
extern uLong compressBound (uLong sourceLen);
extern int uncompress (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen);
extern int uncompress2 (Bytef *dest, uLongf *destLen, const Bytef *source, uLong *sourceLen);
typedef struct gzFile_s *gzFile;
extern gzFile gzdopen (int fd, const char *mode);
extern int gzbuffer (gzFile file, unsigned size);
extern int gzsetparams (gzFile file, int level, int strategy);
extern int gzread (gzFile file, voidp buf, unsigned len);
extern z_size_t gzfread (voidp buf, z_size_t size, z_size_t nitems, gzFile file);
extern int gzwrite (gzFile file, voidpc buf, unsigned len);
extern z_size_t gzfwrite (voidpc buf, z_size_t size, z_size_t nitems, gzFile file);
extern int gzprintf (gzFile file, const char *format, ...);
extern int gzputs (gzFile file, const char *s);
extern char * gzgets (gzFile file, char *buf, int len);
extern int gzputc (gzFile file, int c);
extern int gzgetc (gzFile file);
extern int gzungetc (int c, gzFile file);
extern int gzflush (gzFile file, int flush);
extern int gzrewind (gzFile file);
extern int gzeof (gzFile file);
extern int gzdirect (gzFile file);
extern int gzclose (gzFile file);
extern int gzclose_r (gzFile file);
extern int gzclose_w (gzFile file);
extern const char * gzerror (gzFile file, int *errnum);
extern void gzclearerr (gzFile file);
extern uLong adler32 (uLong adler, const Bytef *buf, uInt len);
extern uLong adler32_z (uLong adler, const Bytef *buf, z_size_t len);
extern uLong crc32 (uLong crc, const Bytef *buf, uInt len);
extern uLong crc32_z (uLong adler, const Bytef *buf, z_size_t len);
extern int deflateInit_ (z_streamp strm, int level, const char *version, int stream_size);
extern int inflateInit_ (z_streamp strm, const char *version, int stream_size);
extern int deflateInit2_ (z_streamp strm, int level, int method, int windowBits, int memLevel, int strategy, const char *version, int stream_size);
extern int inflateInit2_ (z_streamp strm, int windowBits, const char *version, int stream_size);
extern int inflateBackInit_ (z_streamp strm, int windowBits, unsigned char *window, const char *version, int stream_size);
struct gzFile_s {
	unsigned have;
	unsigned char *next;
	__int64 pos;
};
extern int gzgetc_ (gzFile file);
extern gzFile gzopen (const char *, const char *);
extern long gzseek (gzFile, long, int);
extern long gztell (gzFile);
extern long gzoffset (gzFile);
extern uLong adler32_combine (uLong, uLong, long);
extern uLong crc32_combine (uLong, uLong, long);
extern const char * zError (int);
extern int inflateSyncPoint (z_streamp);
extern const z_crc_t * get_crc_table (void);
extern int inflateUndermine (z_streamp, int);
extern int inflateValidate (z_streamp, int);
extern unsigned long inflateCodesUsed (z_streamp);
extern int inflateResetKeep (z_streamp);
extern int deflateResetKeep (z_streamp);
extern gzFile gzopen_w (const wchar_t *path, const char *mode);
extern int gzvprintf (gzFile file, const char *format, va_list va);
/* + END   C:/Users/Chris/include/zlib.h */
]]

local zlib = require 'ffi.load' 'z'
local wrapper
wrapper = setmetatable({
	ZLIB_VERSION = "1.2.11",
	deflateInit = function(strm)
		return zlib.deflateInit_(strm, wrapper.ZLIB_VERSION, ffi.sizeof'z_stream')
	end,
	inflateInit = function(strm)
		return zlib.inflateInit_(strm, wrapper.ZLIB_VERSION, ffi.sizeof'z_stream')
	end,
	deflateInit2 = function(strm, level, method, windowBits, memLevel, strategy)
		return zlib.deflateInit2_(strm, level, method, windowBits, memLevel, strategy, wrapper.ZLIB_VERSION, ffi.sizeof'z_stream')
	end,
	inflateInit2 = function(strm, windowBits)
		return zlib.inflateInit2_(strm, windowBits, wrapper.ZLIB_VERSION, ffi.sizeof'z_stream')
	end,
	inflateBackInit = function(strm, windowBits, window)
		return zlib.inflateBackInit_(strm, windowBits, window, wrapper.ZLIB_VERSION, ffi.sizeof'z_stream')
	end,
	pcall = function(fn, ...)
		local f = assert(wrapper[fn])
		local result = f(...)
		if result == zlib.Z_OK then return true end
		local errs = require 'ext.table'{
			'Z_ERRNO',
			'Z_STREAM_ERROR',
			'Z_DATA_ERROR',
			'Z_MEM_ERROR',
			'Z_BUF_ERROR',
			'Z_VERSION_ERROR',
		}:mapi(function(v) return v, assert(zlib[v]) end):setmetatable(nil)
		local name = errs[result]
		return false, fn.." failed with error "..result..(name and (' ('..name..')') or '')
	end,
}, {
	__index = zlib,
})
return wrapper
