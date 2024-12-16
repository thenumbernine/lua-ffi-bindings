local ffi = require 'ffi'
local assert = require 'ext.assert'

-- comments

--[[
/* #  define z_longlong long long ### string, not number "long long" */
/* #define ZLIB_VERSION "1.2.12" ### string, not number "\"1.2.12\"" */
/* #define zlib_version zlibVersion() ### string, not number "zlibVersion()" */
--]]

-- typedefs

require 'ffi.req' 'c.stddef'
require 'ffi.req' 'c.sys.types'
require 'ffi.req' 'c.stdarg'
require 'ffi.req' 'c.unistd'
require 'ffi.req' 'c.Availability'

ffi.cdef[[
typedef long long z_longlong;
typedef size_t z_size_t;
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
typedef unsigned long z_crc_t;
typedef voidpf (*alloc_func)(voidpf opaque, uInt items, uInt size);
typedef void (*free_func)(voidpf opaque, voidpf address);
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
typedef unsigned (*in_func)(void *, unsigned char * *);
typedef int (*out_func)(void *, unsigned char *, unsigned);
typedef struct gzFile_s *gzFile;
struct gzFile_s {
	unsigned have;
	unsigned char *next;
	off_t pos;
};
]]

local wrapper
wrapper = require 'ffi.libwrapper'{
	lib = require 'ffi.load' 'z',
	defs = {

		-- enums

		ZLIB_H = 1,
		ZCONF_H = 1,
		STDC = 1,
		STDC99 = 1,
		z_const = 1,
		MAX_MEM_LEVEL = 9,
		MAX_WBITS = 15,
		ZEXTERN = 0,
		ZEXPORT = 1,
		ZEXPORTVA = 1,
		Z_HAVE_UNISTD_H = 1,
		Z_HAVE_STDARG_H = 1,
		ZLIB_VERNUM = 4800,
		ZLIB_VER_MAJOR = 1,
		ZLIB_VER_MINOR = 2,
		ZLIB_VER_REVISION = 12,
		ZLIB_VER_SUBREVISION = 0,
		Z_NO_FLUSH = 0,
		Z_PARTIAL_FLUSH = 1,
		Z_SYNC_FLUSH = 2,
		Z_FULL_FLUSH = 3,
		Z_FINISH = 4,
		Z_BLOCK = 5,
		Z_TREES = 6,
		Z_OK = 0,
		Z_STREAM_END = 1,
		Z_NEED_DICT = 2,
		Z_ERRNO = -1,
		Z_STREAM_ERROR = -2,
		Z_DATA_ERROR = -3,
		Z_MEM_ERROR = -4,
		Z_BUF_ERROR = -5,
		Z_VERSION_ERROR = -6,
		Z_NO_COMPRESSION = 0,
		Z_BEST_SPEED = 1,
		Z_BEST_COMPRESSION = 9,
		Z_DEFAULT_COMPRESSION = -1,
		Z_FILTERED = 1,
		Z_HUFFMAN_ONLY = 2,
		Z_RLE = 3,
		Z_FIXED = 4,
		Z_DEFAULT_STRATEGY = 0,
		Z_BINARY = 0,
		Z_TEXT = 1,
		Z_ASCII = 1,
		Z_UNKNOWN = 2,
		Z_DEFLATED = 8,
		Z_NULL = 0,

		-- functions

		zlibVersion = [[const char * zlibVersion();]],
		deflate = [[int deflate(z_streamp strm, int flush);]],
		deflateEnd = [[int deflateEnd(z_streamp strm);]],
		inflate = [[int inflate(z_streamp strm, int flush);]],
		inflateEnd = [[int inflateEnd(z_streamp strm);]],
		deflateSetDictionary = [[int deflateSetDictionary(z_streamp strm, const Bytef *dictionary, uInt dictLength);]],
		deflateGetDictionary = [[int deflateGetDictionary(z_streamp strm, Bytef *dictionary, uInt *dictLength);]],
		deflateCopy = [[int deflateCopy(z_streamp dest, z_streamp source);]],
		deflateReset = [[int deflateReset(z_streamp strm);]],
		deflateParams = [[int deflateParams(z_streamp strm, int level, int strategy);]],
		deflateTune = [[int deflateTune(z_streamp strm, int good_length, int max_lazy, int nice_length, int max_chain);]],
		deflateBound = [[uLong deflateBound(z_streamp strm, uLong sourceLen);]],
		deflatePending = [[int deflatePending(z_streamp strm, unsigned *pending, int *bits);]],
		deflatePrime = [[int deflatePrime(z_streamp strm, int bits, int value);]],
		deflateSetHeader = [[int deflateSetHeader(z_streamp strm, gz_headerp head);]],
		inflateSetDictionary = [[int inflateSetDictionary(z_streamp strm, const Bytef *dictionary, uInt dictLength);]],
		inflateGetDictionary = [[int inflateGetDictionary(z_streamp strm, Bytef *dictionary, uInt *dictLength);]],
		inflateSync = [[int inflateSync(z_streamp strm);]],
		inflateCopy = [[int inflateCopy(z_streamp dest, z_streamp source);]],
		inflateReset = [[int inflateReset(z_streamp strm);]],
		inflateReset2 = [[int inflateReset2(z_streamp strm, int windowBits);]],
		inflatePrime = [[int inflatePrime(z_streamp strm, int bits, int value);]],
		inflateMark = [[long inflateMark(z_streamp strm);]],
		inflateGetHeader = [[int inflateGetHeader(z_streamp strm, gz_headerp head);]],
		inflateBack = [[int inflateBack(z_streamp strm, in_func in, void *in_desc, out_func out, void *out_desc);]],
		inflateBackEnd = [[int inflateBackEnd(z_streamp strm);]],
		zlibCompileFlags = [[uLong zlibCompileFlags();]],
		compress = [[int compress(Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen);]],
		compress2 = [[int compress2(Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen, int level);]],
		compressBound = [[uLong compressBound(uLong sourceLen);]],
		uncompress = [[int uncompress(Bytef *dest, uLongf *destLen, const Bytef *source, uLong sourceLen);]],
		uncompress2 = [[int uncompress2(Bytef *dest, uLongf *destLen, const Bytef *source, uLong *sourceLen);]],
		gzdopen = [[gzFile gzdopen(int fd, const char *mode);]],
		gzbuffer = [[int gzbuffer(gzFile file, unsigned size);]],
		gzsetparams = [[int gzsetparams(gzFile file, int level, int strategy);]],
		gzread = [[int gzread(gzFile file, voidp buf, unsigned len);]],
		gzfread = [[z_size_t gzfread(voidp buf, z_size_t size, z_size_t nitems, gzFile file);]],
		gzwrite = [[int gzwrite(gzFile file, voidpc buf, unsigned len);]],
		gzfwrite = [[z_size_t gzfwrite(voidpc buf, z_size_t size, z_size_t nitems, gzFile file);]],
		gzprintf = [[int gzprintf(gzFile file, const char *format, ...);]],
		gzputs = [[int gzputs(gzFile file, const char *s);]],
		gzgets = [[char * gzgets(gzFile file, char *buf, int len);]],
		gzputc = [[int gzputc(gzFile file, int c);]],
		gzgetc = [[int gzgetc(gzFile file);]],
		gzungetc = [[int gzungetc(int c, gzFile file);]],
		gzflush = [[int gzflush(gzFile file, int flush);]],
		gzrewind = [[int gzrewind(gzFile file);]],
		gzeof = [[int gzeof(gzFile file);]],
		gzdirect = [[int gzdirect(gzFile file);]],
		gzclose = [[int gzclose(gzFile file);]],
		gzclose_r = [[int gzclose_r(gzFile file);]],
		gzclose_w = [[int gzclose_w(gzFile file);]],
		gzerror = [[const char * gzerror(gzFile file, int *errnum);]],
		gzclearerr = [[void gzclearerr(gzFile file);]],
		adler32 = [[uLong adler32(uLong adler, const Bytef *buf, uInt len);]],
		adler32_z = [[uLong adler32_z(uLong adler, const Bytef *buf, z_size_t len);]],
		crc32 = [[uLong crc32(uLong crc, const Bytef *buf, uInt len);]],
		crc32_z = [[uLong crc32_z(uLong crc, const Bytef *buf, z_size_t len);]],
		crc32_combine_op = [[uLong crc32_combine_op(uLong crc1, uLong crc2, uLong op);]],
		deflateInit_ = [[int deflateInit_(z_streamp strm, int level, const char *version, int stream_size);]],
		inflateInit_ = [[int inflateInit_(z_streamp strm, const char *version, int stream_size);]],
		deflateInit2_ = [[int deflateInit2_(z_streamp strm, int level, int method, int windowBits, int memLevel, int strategy, const char *version, int stream_size);]],
		inflateInit2_ = [[int inflateInit2_(z_streamp strm, int windowBits, const char *version, int stream_size);]],
		inflateBackInit_ = [[int inflateBackInit_(z_streamp strm, int windowBits, unsigned char *window, const char *version, int stream_size);]],
		gzgetc_ = [[int gzgetc_(gzFile file);]],
		gzopen = [[gzFile gzopen(const char *, const char *);]],
		gzseek = [[long gzseek(gzFile, long, int);]],
		gztell = [[long gztell(gzFile);]],
		gzoffset = [[long gzoffset(gzFile);]],
		adler32_combine = [[uLong adler32_combine(uLong, uLong, long);]],
		crc32_combine = [[uLong crc32_combine(uLong, uLong, long);]],
		crc32_combine_gen = [[uLong crc32_combine_gen(long);]],
		zError = [[const char * zError(int);]],
		inflateSyncPoint = [[int inflateSyncPoint(z_streamp);]],
		get_crc_table = [[const z_crc_t * get_crc_table();]],
		inflateUndermine = [[int inflateUndermine(z_streamp, int);]],
		inflateValidate = [[int inflateValidate(z_streamp, int);]],
		inflateCodesUsed = [[unsigned long inflateCodesUsed(z_streamp);]],
		inflateResetKeep = [[int inflateResetKeep(z_streamp);]],
		deflateResetKeep = [[int deflateResetKeep(z_streamp);]],
		gzvprintf = [[int gzvprintf(gzFile file, const char *format, va_list va);]],
	},
}

-- macros

wrapper.ZLIB_VERSION = "1.2.12"

function wrapper.zlib_version(...)
	return wrapper.zlibVersion(...)
end

function wrapper.deflateInit(strm)
	return wrapper.deflateInit_(strm, wrapper.ZLIB_VERSION, ffi.sizeof'z_stream')
end

function wrapper.inflateInit(strm)
	return wrapper.inflateInit_(strm, wrapper.ZLIB_VERSION, ffi.sizeof'z_stream')
end

function wrapper.deflateInit2(strm, level, method, windowBits, memLevel, strategy)
	return wrapper.deflateInit2_(strm, level, method, windowBits, memLevel, strategy, wrapper.ZLIB_VERSION, ffi.sizeof'z_stream')
end

function wrapper.inflateInit2(strm, windowBits)
	return wrapper.inflateInit2_(strm, windowBits, wrapper.ZLIB_VERSION, ffi.sizeof'z_stream')
end

function wrapper.inflateBackInit(strm, windowBits, window)
	return wrapper.inflateBackInit_(strm, windowBits, window, wrapper.ZLIB_VERSION, ffi.sizeof'z_stream')
end

-- safe-call wrapper:
function wrapper.pcall(fn, ...)
	local f = assert(wrapper[fn])
	local result = f(...)
	if result == wrapper.Z_OK then return true end
	local errs = require 'ext.table'{
		'Z_ERRNO',
		'Z_STREAM_ERROR',
		'Z_DATA_ERROR',
		'Z_MEM_ERROR',
		'Z_BUF_ERROR',
		'Z_VERSION_ERROR',
	}:mapi(function(v) return v, assert(wrapper[v]) end):setmetatable(nil)
	local name = errs[result]
	return false, fn.." failed with error "..result..(name and (' ('..name..')') or ''), result
end

--[[
zlib doesn't provide any mechanism for determining the required size of an uncompressed buffer.
First I thought I'd try-and-fail and look for Z_MEM_ERROR's ... but sometimes you also get other errors like Z_BUF_ERROR.
A solution would be to save the decompressed length alongside the buffer.
From there I could require the caller to save it themselves.  But nah.
Or - what I will do - to keep this a one-stop-shop function -
I will write the decompressed length to the first 8 bytes.
So for C compatability with the resulting data, just skip the first 8 bytes.
--]]
function wrapper.compressLua(src)
	assert.type(src, 'string')
	local srcLen = ffi.new'uLongf[1]'
	srcLen[0] = #src
	local dstLen = ffi.new('uLongf[1]', wrapper.compressBound(srcLen[0]))
	local dst = ffi.new('Bytef[?]', dstLen[0])
	assert(wrapper.pcall('compress', dst, dstLen, src, srcLen[0]))

	local srcLenP = ffi.cast('uint8_t*', srcLen)
	assert.eq(ffi.sizeof'uLongf', 8)
	local dstAndLen = ''
	for i=0,7 do
		dstAndLen=dstAndLen..string.char(srcLenP[i])
	end
	dstAndLen=dstAndLen..ffi.string(dst, dstLen[0])
	return dstAndLen
end

function wrapper.uncompressLua(srcAndLen)
	assert.type(srcAndLen, 'string')
	-- there's no good way in the zlib api to tell how big this will need to be
	-- so I'm saving it as the first 8 bytes of the data
	assert.eq(ffi.sizeof'uLongf', 8)
	local dstLenP = ffi.cast('uint8_t*', srcAndLen)
	local src = dstLenP + 8
	local srcLen = #srcAndLen - 8
	local dstLen = ffi.new'uLongf[1]'
	dstLen[0] = 0
	for i=7,0,-1 do
		dstLen[0] = bit.bor(bit.lshift(dstLen[0], 8), dstLenP[i])
	end

	local dst = ffi.new('Bytef[?]', dstLen[0])
	assert(wrapper.pcall('uncompress', dst, dstLen, src, srcLen))
	return ffi.string(dst, dstLen[0])
end

return wrapper
