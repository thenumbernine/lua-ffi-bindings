local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/zlib.h */
enum { ZLIB_H = 1 };
/* ++ BEGIN /usr/include/zconf.h */
enum { ZCONF_H = 1 };
enum { STDC = 1 };
enum { STDC99 = 1 };
enum { z_const = 1 };
/* #  define z_longlong long long ### string, not number "long long" */
/* +++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* +++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
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
/* +++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/limits.h */
]] require 'ffi.req' 'c.limits' ffi.cdef[[
/* +++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/limits.h */
enum { Z_U4 = 0 };
typedef unsigned z_crc_t;
enum { Z_HAVE_UNISTD_H = 1 };
enum { Z_HAVE_STDARG_H = 1 };
/* +++ BEGIN /usr/include/x86_64-linux-gnu/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/sys/types.h */
/* +++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stdarg.h */
]] require 'ffi.req' 'c.stdarg' ffi.cdef[[
/* +++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stdarg.h */
/* +++ BEGIN /usr/include/unistd.h */
]] require 'ffi.req' 'c.unistd' ffi.cdef[[
/* +++ END   /usr/include/unistd.h */
enum { Z_LFS64 = 1 };
/* ++ END   /usr/include/zconf.h */
/* #define ZLIB_VERSION "1.2.13" ### string, not number "\"1.2.13\"" */
enum { ZLIB_VERNUM = 4816 };
enum { ZLIB_VER_MAJOR = 1 };
enum { ZLIB_VER_MINOR = 2 };
enum { ZLIB_VER_REVISION = 13 };
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
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  deflateSetDictionary OF((z_streamp strm, */
/* ### PREPENDING ### extern int  deflateSetDictionary OF((z_streamp strm, ### TO ### const Bytef *dictionary, */
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  deflateSetDictionary OF((z_streamp strm, const Bytef *dictionary, */
/* ### PREPENDING ### extern int  deflateSetDictionary OF((z_streamp strm, const Bytef *dictionary, ### TO ### uInt  dictLength)); */
extern int deflateSetDictionary (z_streamp strm, const Bytef *dictionary, uInt dictLength);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  deflateGetDictionary OF((z_streamp strm, */
/* ### PREPENDING ### extern int  deflateGetDictionary OF((z_streamp strm, ### TO ### Bytef *dictionary, */
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  deflateGetDictionary OF((z_streamp strm, Bytef *dictionary, */
/* ### PREPENDING ### extern int  deflateGetDictionary OF((z_streamp strm, Bytef *dictionary, ### TO ### uInt  *dictLength)); */
extern int deflateGetDictionary (z_streamp strm, Bytef *dictionary, uInt *dictLength);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  deflateCopy OF((z_streamp dest, */
/* ### PREPENDING ### extern int  deflateCopy OF((z_streamp dest, ### TO ### z_streamp source)); */
extern int deflateCopy (z_streamp dest, z_streamp source);
extern int deflateReset (z_streamp strm);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  deflateParams OF((z_streamp strm, */
/* ### PREPENDING ### extern int  deflateParams OF((z_streamp strm, ### TO ### int level, */
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  deflateParams OF((z_streamp strm, int level, */
/* ### PREPENDING ### extern int  deflateParams OF((z_streamp strm, int level, ### TO ### int strategy)); */
extern int deflateParams (z_streamp strm, int level, int strategy);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  deflateTune OF((z_streamp strm, */
/* ### PREPENDING ### extern int  deflateTune OF((z_streamp strm, ### TO ### int good_length, */
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  deflateTune OF((z_streamp strm, int good_length, */
/* ### PREPENDING ### extern int  deflateTune OF((z_streamp strm, int good_length, ### TO ### int max_lazy, */
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  deflateTune OF((z_streamp strm, int good_length, int max_lazy, */
/* ### PREPENDING ### extern int  deflateTune OF((z_streamp strm, int good_length, int max_lazy, ### TO ### int nice_length, */
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  deflateTune OF((z_streamp strm, int good_length, int max_lazy, int nice_length, */
/* ### PREPENDING ### extern int  deflateTune OF((z_streamp strm, int good_length, int max_lazy, int nice_length, ### TO ### int max_chain)); */
extern int deflateTune (z_streamp strm, int good_length, int max_lazy, int nice_length, int max_chain);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern uLong  deflateBound OF((z_streamp strm, */
/* ### PREPENDING ### extern uLong  deflateBound OF((z_streamp strm, ### TO ### uLong sourceLen)); */
extern uLong deflateBound (z_streamp strm, uLong sourceLen);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  deflatePending OF((z_streamp strm, */
/* ### PREPENDING ### extern int  deflatePending OF((z_streamp strm, ### TO ### unsigned *pending, */
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  deflatePending OF((z_streamp strm, unsigned *pending, */
/* ### PREPENDING ### extern int  deflatePending OF((z_streamp strm, unsigned *pending, ### TO ### int *bits)); */
extern int deflatePending (z_streamp strm, unsigned *pending, int *bits);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  deflatePrime OF((z_streamp strm, */
/* ### PREPENDING ### extern int  deflatePrime OF((z_streamp strm, ### TO ### int bits, */
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  deflatePrime OF((z_streamp strm, int bits, */
/* ### PREPENDING ### extern int  deflatePrime OF((z_streamp strm, int bits, ### TO ### int value)); */
extern int deflatePrime (z_streamp strm, int bits, int value);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  deflateSetHeader OF((z_streamp strm, */
/* ### PREPENDING ### extern int  deflateSetHeader OF((z_streamp strm, ### TO ### gz_headerp head)); */
extern int deflateSetHeader (z_streamp strm, gz_headerp head);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  inflateSetDictionary OF((z_streamp strm, */
/* ### PREPENDING ### extern int  inflateSetDictionary OF((z_streamp strm, ### TO ### const Bytef *dictionary, */
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  inflateSetDictionary OF((z_streamp strm, const Bytef *dictionary, */
/* ### PREPENDING ### extern int  inflateSetDictionary OF((z_streamp strm, const Bytef *dictionary, ### TO ### uInt  dictLength)); */
extern int inflateSetDictionary (z_streamp strm, const Bytef *dictionary, uInt dictLength);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  inflateGetDictionary OF((z_streamp strm, */
/* ### PREPENDING ### extern int  inflateGetDictionary OF((z_streamp strm, ### TO ### Bytef *dictionary, */
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  inflateGetDictionary OF((z_streamp strm, Bytef *dictionary, */
/* ### PREPENDING ### extern int  inflateGetDictionary OF((z_streamp strm, Bytef *dictionary, ### TO ### uInt  *dictLength)); */
extern int inflateGetDictionary (z_streamp strm, Bytef *dictionary, uInt *dictLength);
extern int inflateSync (z_streamp strm);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  inflateCopy OF((z_streamp dest, */
/* ### PREPENDING ### extern int  inflateCopy OF((z_streamp dest, ### TO ### z_streamp source)); */
extern int inflateCopy (z_streamp dest, z_streamp source);
extern int inflateReset (z_streamp strm);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  inflateReset2 OF((z_streamp strm, */
/* ### PREPENDING ### extern int  inflateReset2 OF((z_streamp strm, ### TO ### int windowBits)); */
extern int inflateReset2 (z_streamp strm, int windowBits);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  inflatePrime OF((z_streamp strm, */
/* ### PREPENDING ### extern int  inflatePrime OF((z_streamp strm, ### TO ### int bits, */
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  inflatePrime OF((z_streamp strm, int bits, */
/* ### PREPENDING ### extern int  inflatePrime OF((z_streamp strm, int bits, ### TO ### int value)); */
extern int inflatePrime (z_streamp strm, int bits, int value);
extern long inflateMark (z_streamp strm);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  inflateGetHeader OF((z_streamp strm, */
/* ### PREPENDING ### extern int  inflateGetHeader OF((z_streamp strm, ### TO ### gz_headerp head)); */
extern int inflateGetHeader (z_streamp strm, gz_headerp head);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### typedef unsigned (*in_func) OF((void  *, */
/* ### PREPENDING ### typedef unsigned (*in_func) OF((void  *, ### TO ### z_const unsigned char * *)); */
typedef unsigned (*in_func) (void *, unsigned char * *);
typedef int (*out_func) (void *, unsigned char *, unsigned);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  inflateBack OF((z_streamp strm, */
/* ### PREPENDING ### extern int  inflateBack OF((z_streamp strm, ### TO ### in_func in, void *in_desc, */
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  inflateBack OF((z_streamp strm, in_func in, void  *in_desc, */
/* ### PREPENDING ### extern int  inflateBack OF((z_streamp strm, in_func in, void  *in_desc, ### TO ### out_func out, void *out_desc)); */
extern int inflateBack (z_streamp strm, in_func in, void *in_desc, out_func out, void *out_desc);
extern int inflateBackEnd (z_streamp strm);
extern uLong zlibCompileFlags (void);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  compress OF((Bytef *dest,   uLongf *destLen, */
/* ### PREPENDING ### extern int  compress OF((Bytef *dest,   uLongf *destLen, ### TO ### const Bytef *source, uLong sourceLen)); */
extern int compress (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  compress2 OF((Bytef *dest,   uLongf *destLen, */
/* ### PREPENDING ### extern int  compress2 OF((Bytef *dest,   uLongf *destLen, ### TO ### const Bytef *source, uLong sourceLen, */
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  compress2 OF((Bytef *dest,   uLongf *destLen, const Bytef *source, uLong sourceLen, */
/* ### PREPENDING ### extern int  compress2 OF((Bytef *dest,   uLongf *destLen, const Bytef *source, uLong sourceLen, ### TO ### int level)); */
extern int compress2 (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen, int level);
extern uLong compressBound (uLong sourceLen);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  uncompress OF((Bytef *dest,   uLongf *destLen, */
/* ### PREPENDING ### extern int  uncompress OF((Bytef *dest,   uLongf *destLen, ### TO ### const Bytef *source, uLong sourceLen)); */
extern int uncompress (Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  uncompress2 OF((Bytef *dest,   uLongf *destLen, */
/* ### PREPENDING ### extern int  uncompress2 OF((Bytef *dest,   uLongf *destLen, ### TO ### const Bytef *source, uLong *sourceLen)); */
extern int uncompress2 (Bytef *dest, uLongf *destLen, const Bytef *source, uLong *sourceLen);
typedef struct gzFile_s *gzFile;
extern gzFile gzdopen (int fd, const char *mode);
extern int gzbuffer (gzFile file, unsigned size);
extern int gzsetparams (gzFile file, int level, int strategy);
extern int gzread (gzFile file, voidp buf, unsigned len);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern z_size_t  gzfread OF((voidp buf, z_size_t size, z_size_t nitems, */
/* ### PREPENDING ### extern z_size_t  gzfread OF((voidp buf, z_size_t size, z_size_t nitems, ### TO ### gzFile file)); */
extern z_size_t gzfread (voidp buf, z_size_t size, z_size_t nitems, gzFile file);
extern int gzwrite (gzFile file, voidpc buf, unsigned len);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern z_size_t  gzfwrite OF((voidpc buf, z_size_t size, */
/* ### PREPENDING ### extern z_size_t  gzfwrite OF((voidpc buf, z_size_t size, ### TO ### z_size_t nitems, gzFile file)); */
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
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern uLong  adler32_z OF((uLong adler, const Bytef *buf, */
/* ### PREPENDING ### extern uLong  adler32_z OF((uLong adler, const Bytef *buf, ### TO ### z_size_t len)); */
extern uLong adler32_z (uLong adler, const Bytef *buf, z_size_t len);
extern uLong crc32 (uLong crc, const Bytef *buf, uInt len);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern uLong  crc32_z OF((uLong crc, const Bytef *buf, */
/* ### PREPENDING ### extern uLong  crc32_z OF((uLong crc, const Bytef *buf, ### TO ### z_size_t len)); */
extern uLong crc32_z (uLong crc, const Bytef *buf, z_size_t len);
extern uLong crc32_combine_op (uLong crc1, uLong crc2, uLong op);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  deflateInit_ OF((z_streamp strm, int level, */
/* ### PREPENDING ### extern int  deflateInit_ OF((z_streamp strm, int level, ### TO ### const char *version, int stream_size)); */
extern int deflateInit_ (z_streamp strm, int level, const char *version, int stream_size);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  inflateInit_ OF((z_streamp strm, */
/* ### PREPENDING ### extern int  inflateInit_ OF((z_streamp strm, ### TO ### const char *version, int stream_size)); */
extern int inflateInit_ (z_streamp strm, const char *version, int stream_size);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  deflateInit2_ OF((z_streamp strm, int  level, int  method, */
/* ### PREPENDING ### extern int  deflateInit2_ OF((z_streamp strm, int  level, int  method, ### TO ### int windowBits, int memLevel, */
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  deflateInit2_ OF((z_streamp strm, int  level, int  method, int windowBits, int memLevel, */
/* ### PREPENDING ### extern int  deflateInit2_ OF((z_streamp strm, int  level, int  method, int windowBits, int memLevel, ### TO ### int strategy, const char *version, */
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  deflateInit2_ OF((z_streamp strm, int  level, int  method, int windowBits, int memLevel, int strategy, const char *version, */
/* ### PREPENDING ### extern int  deflateInit2_ OF((z_streamp strm, int  level, int  method, int windowBits, int memLevel, int strategy, const char *version, ### TO ### int stream_size)); */
extern int deflateInit2_ (z_streamp strm, int level, int method, int windowBits, int memLevel, int strategy, const char *version, int stream_size);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  inflateInit2_ OF((z_streamp strm, int  windowBits, */
/* ### PREPENDING ### extern int  inflateInit2_ OF((z_streamp strm, int  windowBits, ### TO ### const char *version, int stream_size)); */
extern int inflateInit2_ (z_streamp strm, int windowBits, const char *version, int stream_size);
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  inflateBackInit_ OF((z_streamp strm, int windowBits, */
/* ### PREPENDING ### extern int  inflateBackInit_ OF((z_streamp strm, int windowBits, ### TO ### unsigned char *window, */
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  inflateBackInit_ OF((z_streamp strm, int windowBits, unsigned char  *window, */
/* ### PREPENDING ### extern int  inflateBackInit_ OF((z_streamp strm, int windowBits, unsigned char  *window, ### TO ### const char *version, */
/* ### INCOMPLETE ARG MACRO ### OF ### IN LINE ### extern int  inflateBackInit_ OF((z_streamp strm, int windowBits, unsigned char  *window, const char *version, */
/* ### PREPENDING ### extern int  inflateBackInit_ OF((z_streamp strm, int windowBits, unsigned char  *window, const char *version, ### TO ### int stream_size)); */
extern int inflateBackInit_ (z_streamp strm, int windowBits, unsigned char *window, const char *version, int stream_size);
struct gzFile_s {
	unsigned have;
	unsigned char *next;
	off_t pos;
};
extern int gzgetc_ (gzFile file);
extern gzFile gzopen (const char *, const char *);
extern off_t gzseek (gzFile, off_t, int);
extern off_t gztell (gzFile);
extern off_t gzoffset (gzFile);
extern uLong adler32_combine (uLong, uLong, off_t);
extern uLong crc32_combine (uLong, uLong, off_t);
extern uLong crc32_combine_gen (off_t);
extern const char * zError (int);
extern int inflateSyncPoint (z_streamp);
extern const z_crc_t * get_crc_table (void);
extern int inflateUndermine (z_streamp, int);
extern int inflateValidate (z_streamp, int);
extern unsigned long inflateCodesUsed (z_streamp);
extern int inflateResetKeep (z_streamp);
extern int deflateResetKeep (z_streamp);
/* ### INCOMPLETE ARG MACRO ### Z_ARG ### IN LINE ### extern int             gzvprintf Z_ARG((gzFile file, */
/* ### PREPENDING ### extern int             gzvprintf Z_ARG((gzFile file, ### TO ### const char *format, */
/* ### INCOMPLETE ARG MACRO ### Z_ARG ### IN LINE ### extern int             gzvprintf Z_ARG((gzFile file, const char *format, */
/* ### PREPENDING ### extern int             gzvprintf Z_ARG((gzFile file, const char *format, ### TO ### va_list va)); */
extern int gzvprintf (gzFile file, const char *format, va_list va);
/* + END   /usr/include/zlib.h */
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
