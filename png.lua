local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/png.h */
enum { PNG_H = 1 };
/* #define PNG_LIBPNG_VER_STRING "1.6.40" ### string, not number "\"1.6.40\"" */
/* #define PNG_HEADER_VERSION_STRING " libpng version 1.6.40 - June 21, 2023\n" ### string, not number "\" libpng version 1.6.40 - June 21, 2023\\n\"" */
enum { PNG_LIBPNG_VER_SONUM = 16 };
enum { PNG_LIBPNG_VER_DLLNUM = 16 };
enum { PNG_LIBPNG_VER_MAJOR = 1 };
enum { PNG_LIBPNG_VER_MINOR = 6 };
enum { PNG_LIBPNG_VER_RELEASE = 40 };
enum { PNG_LIBPNG_VER_BUILD = 0 };
enum { PNG_LIBPNG_BUILD_ALPHA = 1 };
enum { PNG_LIBPNG_BUILD_BETA = 2 };
enum { PNG_LIBPNG_BUILD_RC = 3 };
enum { PNG_LIBPNG_BUILD_STABLE = 4 };
enum { PNG_LIBPNG_BUILD_RELEASE_STATUS_MASK = 7 };
enum { PNG_LIBPNG_BUILD_PATCH = 8 };
enum { PNG_LIBPNG_BUILD_PRIVATE = 16 };
enum { PNG_LIBPNG_BUILD_SPECIAL = 32 };
enum { PNG_LIBPNG_BUILD_BASE_TYPE = 4 };
enum { PNG_LIBPNG_VER = 10640 };
/* ++ BEGIN /usr/include/pnglibconf.h */
/* ++ END   /usr/include/pnglibconf.h */
/* ++ BEGIN /usr/include/pngconf.h */
enum { PNGCONF_H = 1 };
/* +++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/limits.h */
]] require 'ffi.req' 'c.limits' ffi.cdef[[
/* +++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/limits.h */
/* +++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* +++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
/* +++ BEGIN /usr/include/stdio.h */
]] require 'ffi.req' 'c.stdio' ffi.cdef[[
/* +++ END   /usr/include/stdio.h */
/* +++ BEGIN /usr/include/setjmp.h */
]] require 'ffi.req' 'c.setjmp' ffi.cdef[[
/* +++ END   /usr/include/setjmp.h */
/* +++ BEGIN /usr/include/time.h */
]] require 'ffi.req' 'c.time' ffi.cdef[[
/* +++ END   /usr/include/time.h */
enum { PNG_CONST = 0 };
enum { PNG_USE_READ_MACROS = 1 };
enum { PNGCAPI = 1 };
/* #  define PNGCBAPI PNGCAPI ### string, not number "PNGCAPI" */
/* #  define PNGAPI PNGCAPI ### string, not number "PNGCAPI" */
enum { PNG_IMPEXP = 1 };
enum { PNG_EMPTY = 1 };
enum { PNG_PEDANTIC_WARNINGS_SUPPORTED = 1 };
/* #      define PNG_USE_RESULT __attribute__((__warn_unused_result__)) ### string, not number "__attribute__((__warn_unused_result__))" */
/* #      define PNG_NORETURN   __attribute__((__noreturn__)) ### string, not number "__attribute__((__noreturn__))" */
/* #        define PNG_ALLOCATED  __attribute__((__malloc__)) ### string, not number "__attribute__((__malloc__))" */
/* #        define PNG_DEPRECATED __attribute__((__deprecated__)) ### string, not number "__attribute__((__deprecated__))" */
/* #          define PNG_PRIVATE              __attribute__((__deprecated__)) ### string, not number "__attribute__((__deprecated__))" */
/* #          define PNG_RESTRICT __restrict ### string, not number "__restrict" */
typedef unsigned char png_byte;
typedef short png_int_16;
typedef unsigned short png_uint_16;
typedef int png_int_32;
typedef unsigned int png_uint_32;
typedef size_t png_size_t;
typedef ptrdiff_t png_ptrdiff_t;
typedef size_t png_alloc_size_t;
typedef png_int_32 png_fixed_point;
typedef void * png_voidp;
typedef const void * png_const_voidp;
typedef png_byte * png_bytep;
typedef const png_byte * png_const_bytep;
typedef png_uint_32 * png_uint_32p;
typedef const png_uint_32 * png_const_uint_32p;
typedef png_int_32 * png_int_32p;
typedef const png_int_32 * png_const_int_32p;
typedef png_uint_16 * png_uint_16p;
typedef const png_uint_16 * png_const_uint_16p;
typedef png_int_16 * png_int_16p;
typedef const png_int_16 * png_const_int_16p;
typedef char * png_charp;
typedef const char * png_const_charp;
typedef png_fixed_point * png_fixed_point_p;
typedef const png_fixed_point * png_const_fixed_point_p;
typedef size_t * png_size_tp;
typedef const size_t * png_const_size_tp;
typedef FILE * png_FILE_p;
typedef double * png_doublep;
typedef const double * png_const_doublep;
typedef png_byte * * png_bytepp;
typedef png_uint_32 * * png_uint_32pp;
typedef png_int_32 * * png_int_32pp;
typedef png_uint_16 * * png_uint_16pp;
typedef png_int_16 * * png_int_16pp;
typedef const char * * png_const_charpp;
typedef char * * png_charpp;
typedef png_fixed_point * * png_fixed_point_pp;
typedef double * * png_doublepp;
typedef char * * * png_charppp;
/* ++ END   /usr/include/pngconf.h */
enum { PNG_LIBPNG_BUILD_TYPE = 4 };
/* #define png_libpng_ver png_get_header_ver(NULL) ### string, not number "png_get_header_ver(NULL)" */
typedef char* png_libpng_version_1_6_40;
typedef struct png_struct_def png_struct;
typedef const png_struct * png_const_structp;
typedef png_struct * png_structp;
typedef png_struct * * png_structpp;
typedef struct png_info_def png_info;
typedef png_info * png_infop;
typedef const png_info * png_const_infop;
typedef png_info * * png_infopp;
typedef png_struct * png_structrp;
typedef const png_struct * png_const_structrp;
typedef png_info * png_inforp;
typedef const png_info * png_const_inforp;
typedef struct png_color_struct {
	png_byte red;
	png_byte green;
	png_byte blue;
} png_color;
typedef png_color * png_colorp;
typedef const png_color * png_const_colorp;
typedef png_color * * png_colorpp;
typedef struct png_color_16_struct {
	png_byte index;
	png_uint_16 red;
	png_uint_16 green;
	png_uint_16 blue;
	png_uint_16 gray;
} png_color_16;
typedef png_color_16 * png_color_16p;
typedef const png_color_16 * png_const_color_16p;
typedef png_color_16 * * png_color_16pp;
typedef struct png_color_8_struct {
	png_byte red;
	png_byte green;
	png_byte blue;
	png_byte gray;
	png_byte alpha;
} png_color_8;
typedef png_color_8 * png_color_8p;
typedef const png_color_8 * png_const_color_8p;
typedef png_color_8 * * png_color_8pp;
typedef struct png_sPLT_entry_struct {
	png_uint_16 red;
	png_uint_16 green;
	png_uint_16 blue;
	png_uint_16 alpha;
	png_uint_16 frequency;
} png_sPLT_entry;
typedef png_sPLT_entry * png_sPLT_entryp;
typedef const png_sPLT_entry * png_const_sPLT_entryp;
typedef png_sPLT_entry * * png_sPLT_entrypp;
typedef struct png_sPLT_struct {
	png_charp name;
	png_byte depth;
	png_sPLT_entryp entries;
	png_int_32 nentries;
} png_sPLT_t;
typedef png_sPLT_t * png_sPLT_tp;
typedef const png_sPLT_t * png_const_sPLT_tp;
typedef png_sPLT_t * * png_sPLT_tpp;
typedef struct png_text_struct {
	int compression;
	png_charp key;
	png_charp text;
	size_t text_length;
	size_t itxt_length;
	png_charp lang;
	png_charp lang_key;
} png_text;
typedef png_text * png_textp;
typedef const png_text * png_const_textp;
typedef png_text * * png_textpp;
enum { PNG_TEXT_COMPRESSION_NONE_WR = -3 };
enum { PNG_TEXT_COMPRESSION_zTXt_WR = -2 };
enum { PNG_TEXT_COMPRESSION_NONE = -1 };
enum { PNG_TEXT_COMPRESSION_zTXt = 0 };
enum { PNG_ITXT_COMPRESSION_NONE = 1 };
enum { PNG_ITXT_COMPRESSION_zTXt = 2 };
enum { PNG_TEXT_COMPRESSION_LAST = 3 };
typedef struct png_time_struct {
	png_uint_16 year;
	png_byte month;
	png_byte day;
	png_byte hour;
	png_byte minute;
	png_byte second;
} png_time;
typedef png_time * png_timep;
typedef const png_time * png_const_timep;
typedef png_time * * png_timepp;
typedef struct png_unknown_chunk_t {
	png_byte name[5];
	png_byte *data;
	size_t size;
	png_byte location;
} png_unknown_chunk;
typedef png_unknown_chunk * png_unknown_chunkp;
typedef const png_unknown_chunk * png_const_unknown_chunkp;
typedef png_unknown_chunk * * png_unknown_chunkpp;
enum { PNG_HAVE_IHDR = 1 };
enum { PNG_HAVE_PLTE = 2 };
enum { PNG_AFTER_IDAT = 8 };
/* #define PNG_UINT_31_MAX ((png_uint_32)0x7fffffffL) ### string, not number "((png_uint_32)0x7fffffffL)" */
/* #define PNG_UINT_32_MAX ((png_uint_32)(-1)) ### string, not number "((png_uint_32)(-1))" */
/* #define PNG_SIZE_MAX ((size_t)(-1)) ### string, not number "((size_t)(-1))" */
enum { PNG_FP_1 = 100000 };
enum { PNG_FP_HALF = 50000 };
/* #define PNG_FP_MAX  ((png_fixed_point)0x7fffffffL) ### string, not number "((png_fixed_point)0x7fffffffL)" */
/* #define PNG_FP_MIN  (-PNG_FP_MAX) ### string, not number "(-PNG_FP_MAX)" */
enum { PNG_COLOR_MASK_PALETTE = 1 };
enum { PNG_COLOR_MASK_COLOR = 2 };
enum { PNG_COLOR_MASK_ALPHA = 4 };
enum { PNG_COLOR_TYPE_GRAY = 0 };
enum { PNG_COLOR_TYPE_PALETTE = 3 };
enum { PNG_COLOR_TYPE_RGB = 2 };
enum { PNG_COLOR_TYPE_RGB_ALPHA = 6 };
enum { PNG_COLOR_TYPE_GRAY_ALPHA = 4 };
enum { PNG_COLOR_TYPE_RGBA = 6 };
enum { PNG_COLOR_TYPE_GA = 4 };
enum { PNG_COMPRESSION_TYPE_BASE = 0 };
enum { PNG_COMPRESSION_TYPE_DEFAULT = 0 };
enum { PNG_FILTER_TYPE_BASE = 0 };
enum { PNG_INTRAPIXEL_DIFFERENCING = 64 };
enum { PNG_FILTER_TYPE_DEFAULT = 0 };
enum { PNG_INTERLACE_NONE = 0 };
enum { PNG_INTERLACE_ADAM7 = 1 };
enum { PNG_INTERLACE_LAST = 2 };
enum { PNG_OFFSET_PIXEL = 0 };
enum { PNG_OFFSET_MICROMETER = 1 };
enum { PNG_OFFSET_LAST = 2 };
enum { PNG_EQUATION_LINEAR = 0 };
enum { PNG_EQUATION_BASE_E = 1 };
enum { PNG_EQUATION_ARBITRARY = 2 };
enum { PNG_EQUATION_HYPERBOLIC = 3 };
enum { PNG_EQUATION_LAST = 4 };
enum { PNG_SCALE_UNKNOWN = 0 };
enum { PNG_SCALE_METER = 1 };
enum { PNG_SCALE_RADIAN = 2 };
enum { PNG_SCALE_LAST = 3 };
enum { PNG_RESOLUTION_UNKNOWN = 0 };
enum { PNG_RESOLUTION_METER = 1 };
enum { PNG_RESOLUTION_LAST = 2 };
enum { PNG_sRGB_INTENT_PERCEPTUAL = 0 };
enum { PNG_sRGB_INTENT_RELATIVE = 1 };
enum { PNG_sRGB_INTENT_SATURATION = 2 };
enum { PNG_sRGB_INTENT_ABSOLUTE = 3 };
enum { PNG_sRGB_INTENT_LAST = 4 };
enum { PNG_KEYWORD_MAX_LENGTH = 79 };
enum { PNG_MAX_PALETTE_LENGTH = 256 };
enum { PNG_INFO_gAMA = 1 };
enum { PNG_INFO_sBIT = 2 };
enum { PNG_INFO_cHRM = 4 };
enum { PNG_INFO_PLTE = 8 };
enum { PNG_INFO_tRNS = 16 };
enum { PNG_INFO_bKGD = 32 };
enum { PNG_INFO_hIST = 64 };
enum { PNG_INFO_pHYs = 128 };
enum { PNG_INFO_oFFs = 256 };
enum { PNG_INFO_tIME = 512 };
enum { PNG_INFO_pCAL = 1024 };
enum { PNG_INFO_sRGB = 2048 };
enum { PNG_INFO_iCCP = 4096 };
enum { PNG_INFO_sPLT = 8192 };
enum { PNG_INFO_sCAL = 16384 };
enum { PNG_INFO_IDAT = 32768 };
enum { PNG_INFO_eXIf = 65536 };
typedef struct png_row_info_struct {
	png_uint_32 width;
	size_t rowbytes;
	png_byte color_type;
	png_byte bit_depth;
	png_byte channels;
	png_byte pixel_depth;
} png_row_info;
typedef png_row_info * png_row_infop;
typedef png_row_info * * png_row_infopp;
typedef void ( *png_error_ptr) (png_structp, png_const_charp);
typedef void ( *png_rw_ptr) (png_structp, png_bytep, size_t);
typedef void ( *png_flush_ptr) (png_structp);
/* ### INCOMPLETE ARG MACRO ### PNG_CALLBACK ### IN LINE ### typedef PNG_CALLBACK(void, *png_read_status_ptr, (png_structp, png_uint_32, */
/* ### PREPENDING ### typedef PNG_CALLBACK(void, *png_read_status_ptr, (png_structp, png_uint_32, ### TO ### int)); */
typedef void ( *png_read_status_ptr) (png_structp, png_uint_32, int);
/* ### INCOMPLETE ARG MACRO ### PNG_CALLBACK ### IN LINE ### typedef PNG_CALLBACK(void, *png_write_status_ptr, (png_structp, png_uint_32, */
/* ### PREPENDING ### typedef PNG_CALLBACK(void, *png_write_status_ptr, (png_structp, png_uint_32, ### TO ### int)); */
typedef void ( *png_write_status_ptr) (png_structp, png_uint_32, int);
typedef void ( *png_progressive_info_ptr) (png_structp, png_infop);
typedef void ( *png_progressive_end_ptr) (png_structp, png_infop);
/* ### INCOMPLETE ARG MACRO ### PNG_CALLBACK ### IN LINE ### typedef PNG_CALLBACK(void, *png_progressive_row_ptr, (png_structp, png_bytep, */
/* ### PREPENDING ### typedef PNG_CALLBACK(void, *png_progressive_row_ptr, (png_structp, png_bytep, ### TO ### png_uint_32, int)); */
typedef void ( *png_progressive_row_ptr) (png_structp, png_bytep, png_uint_32, int);
/* ### INCOMPLETE ARG MACRO ### PNG_CALLBACK ### IN LINE ### typedef PNG_CALLBACK(void, *png_user_transform_ptr, (png_structp, png_row_infop, */
/* ### PREPENDING ### typedef PNG_CALLBACK(void, *png_user_transform_ptr, (png_structp, png_row_infop, ### TO ### png_bytep)); */
typedef void ( *png_user_transform_ptr) (png_structp, png_row_infop, png_bytep);
/* ### INCOMPLETE ARG MACRO ### PNG_CALLBACK ### IN LINE ### typedef PNG_CALLBACK(int, *png_user_chunk_ptr, (png_structp, */
/* ### PREPENDING ### typedef PNG_CALLBACK(int, *png_user_chunk_ptr, (png_structp, ### TO ### png_unknown_chunkp)); */
typedef int ( *png_user_chunk_ptr) (png_structp, png_unknown_chunkp);
typedef void ( *png_longjmp_ptr) (jmp_buf, int);
enum { PNG_TRANSFORM_IDENTITY = 0 };
enum { PNG_TRANSFORM_STRIP_16 = 1 };
enum { PNG_TRANSFORM_STRIP_ALPHA = 2 };
enum { PNG_TRANSFORM_PACKING = 4 };
enum { PNG_TRANSFORM_PACKSWAP = 8 };
enum { PNG_TRANSFORM_EXPAND = 16 };
enum { PNG_TRANSFORM_INVERT_MONO = 32 };
enum { PNG_TRANSFORM_SHIFT = 64 };
enum { PNG_TRANSFORM_BGR = 128 };
enum { PNG_TRANSFORM_SWAP_ALPHA = 256 };
enum { PNG_TRANSFORM_SWAP_ENDIAN = 512 };
enum { PNG_TRANSFORM_INVERT_ALPHA = 1024 };
enum { PNG_TRANSFORM_STRIP_FILLER = 2048 };
enum { PNG_TRANSFORM_STRIP_FILLER_BEFORE = 2048 };
enum { PNG_TRANSFORM_STRIP_FILLER_AFTER = 4096 };
enum { PNG_TRANSFORM_GRAY_TO_RGB = 8192 };
enum { PNG_TRANSFORM_EXPAND_16 = 16384 };
enum { PNG_TRANSFORM_SCALE_16 = 32768 };
enum { PNG_FLAG_MNG_EMPTY_PLTE = 1 };
enum { PNG_FLAG_MNG_FILTER_64 = 4 };
enum { PNG_ALL_MNG_FEATURES = 5 };
/* ### INCOMPLETE ARG MACRO ### PNG_CALLBACK ### IN LINE ### typedef PNG_CALLBACK(png_voidp, *png_malloc_ptr, (png_structp, */
/* ### PREPENDING ### typedef PNG_CALLBACK(png_voidp, *png_malloc_ptr, (png_structp, ### TO ### png_alloc_size_t)); */
typedef png_voidp ( *png_malloc_ptr) (png_structp, png_alloc_size_t);
typedef void ( *png_free_ptr) (png_structp, png_voidp);
extern png_uint_32 ( png_access_version_number) (void);
extern void ( png_set_sig_bytes) (png_structrp png_ptr, int num_bytes);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(3, int, png_sig_cmp, (png_const_bytep sig, size_t start, */
/* ### PREPENDING ### PNG_EXPORT(3, int, png_sig_cmp, (png_const_bytep sig, size_t start, ### TO ### size_t num_to_check)); */
extern int ( png_sig_cmp) (png_const_bytep sig, size_t start, size_t num_to_check);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(4, png_structp, png_create_read_struct, */
/* ### PREPENDING ### PNG_EXPORTA(4, png_structp, png_create_read_struct, ### TO ### (png_const_charp user_png_ver, png_voidp error_ptr, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(4, png_structp, png_create_read_struct, (png_const_charp user_png_ver, png_voidp error_ptr, */
/* ### PREPENDING ### PNG_EXPORTA(4, png_structp, png_create_read_struct, (png_const_charp user_png_ver, png_voidp error_ptr, ### TO ### png_error_ptr error_fn, png_error_ptr warn_fn), */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(4, png_structp, png_create_read_struct, (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn), */
/* ### PREPENDING ### PNG_EXPORTA(4, png_structp, png_create_read_struct, (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn), ### TO ### PNG_ALLOCATED); */
extern __attribute__((__malloc__)) png_structp ( png_create_read_struct) (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(5, png_structp, png_create_write_struct, */
/* ### PREPENDING ### PNG_EXPORTA(5, png_structp, png_create_write_struct, ### TO ### (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(5, png_structp, png_create_write_struct, (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, */
/* ### PREPENDING ### PNG_EXPORTA(5, png_structp, png_create_write_struct, (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, ### TO ### png_error_ptr warn_fn), */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(5, png_structp, png_create_write_struct, (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn), */
/* ### PREPENDING ### PNG_EXPORTA(5, png_structp, png_create_write_struct, (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn), ### TO ### PNG_ALLOCATED); */
extern __attribute__((__malloc__)) png_structp ( png_create_write_struct) (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(6, size_t, png_get_compression_buffer_size, */
/* ### PREPENDING ### PNG_EXPORT(6, size_t, png_get_compression_buffer_size, ### TO ### (png_const_structrp png_ptr)); */
extern size_t ( png_get_compression_buffer_size) (png_const_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(7, void, png_set_compression_buffer_size, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(7, void, png_set_compression_buffer_size, (png_structrp png_ptr, ### TO ### size_t size)); */
extern void ( png_set_compression_buffer_size) (png_structrp png_ptr, size_t size);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(8, jmp_buf*, png_set_longjmp_fn, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(8, jmp_buf*, png_set_longjmp_fn, (png_structrp png_ptr, ### TO ### png_longjmp_ptr longjmp_fn, size_t jmp_buf_size)); */
extern jmp_buf* ( png_set_longjmp_fn) (png_structrp png_ptr, png_longjmp_ptr longjmp_fn, size_t jmp_buf_size);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(9, void, png_longjmp, (png_const_structrp png_ptr, int val), */
/* ### PREPENDING ### PNG_EXPORTA(9, void, png_longjmp, (png_const_structrp png_ptr, int val), ### TO ### PNG_NORETURN); */
extern __attribute__((__noreturn__)) void ( png_longjmp) (png_const_structrp png_ptr, int val);
extern __attribute__((__deprecated__)) int ( png_reset_zstream) (png_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(11, png_structp, png_create_read_struct_2, */
/* ### PREPENDING ### PNG_EXPORTA(11, png_structp, png_create_read_struct_2, ### TO ### (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(11, png_structp, png_create_read_struct_2, (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, */
/* ### PREPENDING ### PNG_EXPORTA(11, png_structp, png_create_read_struct_2, (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, ### TO ### png_error_ptr warn_fn, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(11, png_structp, png_create_read_struct_2, (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn, */
/* ### PREPENDING ### PNG_EXPORTA(11, png_structp, png_create_read_struct_2, (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn, ### TO ### png_voidp mem_ptr, png_malloc_ptr malloc_fn, png_free_ptr free_fn), */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(11, png_structp, png_create_read_struct_2, (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn, png_voidp mem_ptr, png_malloc_ptr malloc_fn, png_free_ptr free_fn), */
/* ### PREPENDING ### PNG_EXPORTA(11, png_structp, png_create_read_struct_2, (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn, png_voidp mem_ptr, png_malloc_ptr malloc_fn, png_free_ptr free_fn), ### TO ### PNG_ALLOCATED); */
extern __attribute__((__malloc__)) png_structp ( png_create_read_struct_2) (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn, png_voidp mem_ptr, png_malloc_ptr malloc_fn, png_free_ptr free_fn);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(12, png_structp, png_create_write_struct_2, */
/* ### PREPENDING ### PNG_EXPORTA(12, png_structp, png_create_write_struct_2, ### TO ### (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(12, png_structp, png_create_write_struct_2, (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, */
/* ### PREPENDING ### PNG_EXPORTA(12, png_structp, png_create_write_struct_2, (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, ### TO ### png_error_ptr warn_fn, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(12, png_structp, png_create_write_struct_2, (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn, */
/* ### PREPENDING ### PNG_EXPORTA(12, png_structp, png_create_write_struct_2, (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn, ### TO ### png_voidp mem_ptr, png_malloc_ptr malloc_fn, png_free_ptr free_fn), */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(12, png_structp, png_create_write_struct_2, (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn, png_voidp mem_ptr, png_malloc_ptr malloc_fn, png_free_ptr free_fn), */
/* ### PREPENDING ### PNG_EXPORTA(12, png_structp, png_create_write_struct_2, (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn, png_voidp mem_ptr, png_malloc_ptr malloc_fn, png_free_ptr free_fn), ### TO ### PNG_ALLOCATED); */
extern __attribute__((__malloc__)) png_structp ( png_create_write_struct_2) (png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn, png_voidp mem_ptr, png_malloc_ptr malloc_fn, png_free_ptr free_fn);
extern void ( png_write_sig) (png_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(14, void, png_write_chunk, (png_structrp png_ptr, png_const_bytep */
/* ### PREPENDING ### PNG_EXPORT(14, void, png_write_chunk, (png_structrp png_ptr, png_const_bytep ### TO ### chunk_name, png_const_bytep data, size_t length)); */
extern void ( png_write_chunk) (png_structrp png_ptr, png_const_bytep chunk_name, png_const_bytep data, size_t length);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(15, void, png_write_chunk_start, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(15, void, png_write_chunk_start, (png_structrp png_ptr, ### TO ### png_const_bytep chunk_name, png_uint_32 length)); */
extern void ( png_write_chunk_start) (png_structrp png_ptr, png_const_bytep chunk_name, png_uint_32 length);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(16, void, png_write_chunk_data, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(16, void, png_write_chunk_data, (png_structrp png_ptr, ### TO ### png_const_bytep data, size_t length)); */
extern void ( png_write_chunk_data) (png_structrp png_ptr, png_const_bytep data, size_t length);
extern void ( png_write_chunk_end) (png_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(18, png_infop, png_create_info_struct, (png_const_structrp png_ptr), */
/* ### PREPENDING ### PNG_EXPORTA(18, png_infop, png_create_info_struct, (png_const_structrp png_ptr), ### TO ### PNG_ALLOCATED); */
extern __attribute__((__malloc__)) png_infop ( png_create_info_struct) (png_const_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(19, void, png_info_init_3, (png_infopp info_ptr, */
/* ### PREPENDING ### PNG_EXPORTA(19, void, png_info_init_3, (png_infopp info_ptr, ### TO ### size_t png_info_struct_size), PNG_DEPRECATED); */
extern __attribute__((__deprecated__)) void ( png_info_init_3) (png_infopp info_ptr, size_t png_info_struct_size);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(20, void, png_write_info_before_PLTE, */
/* ### PREPENDING ### PNG_EXPORT(20, void, png_write_info_before_PLTE, ### TO ### (png_structrp png_ptr, png_const_inforp info_ptr)); */
extern void ( png_write_info_before_PLTE) (png_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(21, void, png_write_info, */
/* ### PREPENDING ### PNG_EXPORT(21, void, png_write_info, ### TO ### (png_structrp png_ptr, png_const_inforp info_ptr)); */
extern void ( png_write_info) (png_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(22, void, png_read_info, */
/* ### PREPENDING ### PNG_EXPORT(22, void, png_read_info, ### TO ### (png_structrp png_ptr, png_inforp info_ptr)); */
extern void ( png_read_info) (png_structrp png_ptr, png_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(23, png_const_charp, png_convert_to_rfc1123, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORTA(23, png_const_charp, png_convert_to_rfc1123, (png_structrp png_ptr, ### TO ### png_const_timep ptime),PNG_DEPRECATED); */
extern __attribute__((__deprecated__)) png_const_charp ( png_convert_to_rfc1123) (png_structrp png_ptr, png_const_timep ptime);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(241, int, png_convert_to_rfc1123_buffer, (char out[29], */
/* ### PREPENDING ### PNG_EXPORT(241, int, png_convert_to_rfc1123_buffer, (char out[29], ### TO ### png_const_timep ptime)); */
extern int ( png_convert_to_rfc1123_buffer) (char out[29], png_const_timep ptime);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(24, void, png_convert_from_struct_tm, (png_timep ptime, */
/* ### PREPENDING ### PNG_EXPORT(24, void, png_convert_from_struct_tm, (png_timep ptime, ### TO ### const struct tm * ttime)); */
extern void ( png_convert_from_struct_tm) (png_timep ptime, const struct tm * ttime);
extern void ( png_convert_from_time_t) (png_timep ptime, time_t ttime);
extern void ( png_set_expand) (png_structrp png_ptr);
extern void ( png_set_expand_gray_1_2_4_to_8) (png_structrp png_ptr);
extern void ( png_set_palette_to_rgb) (png_structrp png_ptr);
extern void ( png_set_tRNS_to_alpha) (png_structrp png_ptr);
extern void ( png_set_expand_16) (png_structrp png_ptr);
extern void ( png_set_bgr) (png_structrp png_ptr);
extern void ( png_set_gray_to_rgb) (png_structrp png_ptr);
enum { PNG_ERROR_ACTION_NONE = 1 };
enum { PNG_ERROR_ACTION_WARN = 2 };
enum { PNG_ERROR_ACTION_ERROR = 3 };
enum { PNG_RGB_TO_GRAY_DEFAULT = -1 };
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(32, void, png_set_rgb_to_gray, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_FP_EXPORT(32, void, png_set_rgb_to_gray, (png_structrp png_ptr, ### TO ### int error_action, double red, double green)) */
extern void ( png_set_rgb_to_gray) (png_structrp png_ptr, int error_action, double red, double green);
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(33, void, png_set_rgb_to_gray_fixed, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(33, void, png_set_rgb_to_gray_fixed, (png_structrp png_ptr, ### TO ### int error_action, png_fixed_point red, png_fixed_point green)) */
extern void ( png_set_rgb_to_gray_fixed) (png_structrp png_ptr, int error_action, png_fixed_point red, png_fixed_point green);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(34, png_byte, png_get_rgb_to_gray_status, (png_const_structrp */
/* ### PREPENDING ### PNG_EXPORT(34, png_byte, png_get_rgb_to_gray_status, (png_const_structrp ### TO ### png_ptr)); */
extern png_byte ( png_get_rgb_to_gray_status) (png_const_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(35, void, png_build_grayscale_palette, (int bit_depth, */
/* ### PREPENDING ### PNG_EXPORT(35, void, png_build_grayscale_palette, (int bit_depth, ### TO ### png_colorp palette)); */
extern void ( png_build_grayscale_palette) (int bit_depth, png_colorp palette);
enum { PNG_ALPHA_PNG = 0 };
enum { PNG_ALPHA_STANDARD = 1 };
enum { PNG_ALPHA_ASSOCIATED = 1 };
enum { PNG_ALPHA_PREMULTIPLIED = 1 };
enum { PNG_ALPHA_OPTIMIZED = 2 };
enum { PNG_ALPHA_BROKEN = 3 };
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(227, void, png_set_alpha_mode, (png_structrp png_ptr, int mode, */
/* ### PREPENDING ### PNG_FP_EXPORT(227, void, png_set_alpha_mode, (png_structrp png_ptr, int mode, ### TO ### double output_gamma)) */
extern void ( png_set_alpha_mode) (png_structrp png_ptr, int mode, double output_gamma);
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(228, void, png_set_alpha_mode_fixed, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(228, void, png_set_alpha_mode_fixed, (png_structrp png_ptr, ### TO ### int mode, png_fixed_point output_gamma)) */
extern void ( png_set_alpha_mode_fixed) (png_structrp png_ptr, int mode, png_fixed_point output_gamma);
enum { PNG_DEFAULT_sRGB = -1 };
enum { PNG_GAMMA_MAC_18 = -2 };
enum { PNG_GAMMA_sRGB = 220000 };
enum { PNG_GAMMA_LINEAR = 100000 };
extern void ( png_set_strip_alpha) (png_structrp png_ptr);
extern void ( png_set_swap_alpha) (png_structrp png_ptr);
extern void ( png_set_invert_alpha) (png_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(39, void, png_set_filler, (png_structrp png_ptr, png_uint_32 filler, */
/* ### PREPENDING ### PNG_EXPORT(39, void, png_set_filler, (png_structrp png_ptr, png_uint_32 filler, ### TO ### int flags)); */
extern void ( png_set_filler) (png_structrp png_ptr, png_uint_32 filler, int flags);
enum { PNG_FILLER_BEFORE = 0 };
enum { PNG_FILLER_AFTER = 1 };
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(40, void, png_set_add_alpha, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(40, void, png_set_add_alpha, (png_structrp png_ptr, ### TO ### png_uint_32 filler, int flags)); */
extern void ( png_set_add_alpha) (png_structrp png_ptr, png_uint_32 filler, int flags);
extern void ( png_set_swap) (png_structrp png_ptr);
extern void ( png_set_packing) (png_structrp png_ptr);
extern void ( png_set_packswap) (png_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(44, void, png_set_shift, (png_structrp png_ptr, png_const_color_8p */
/* ### PREPENDING ### PNG_EXPORT(44, void, png_set_shift, (png_structrp png_ptr, png_const_color_8p ### TO ### true_bits)); */
extern void ( png_set_shift) (png_structrp png_ptr, png_const_color_8p true_bits);
extern int ( png_set_interlace_handling) (png_structrp png_ptr);
extern void ( png_set_invert_mono) (png_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(47, void, png_set_background, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_FP_EXPORT(47, void, png_set_background, (png_structrp png_ptr, ### TO ### png_const_color_16p background_color, int background_gamma_code, */
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(47, void, png_set_background, (png_structrp png_ptr, png_const_color_16p background_color, int background_gamma_code, */
/* ### PREPENDING ### PNG_FP_EXPORT(47, void, png_set_background, (png_structrp png_ptr, png_const_color_16p background_color, int background_gamma_code, ### TO ### int need_expand, double background_gamma)) */
extern void ( png_set_background) (png_structrp png_ptr, png_const_color_16p background_color, int background_gamma_code, int need_expand, double background_gamma);
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(215, void, png_set_background_fixed, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(215, void, png_set_background_fixed, (png_structrp png_ptr, ### TO ### png_const_color_16p background_color, int background_gamma_code, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(215, void, png_set_background_fixed, (png_structrp png_ptr, png_const_color_16p background_color, int background_gamma_code, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(215, void, png_set_background_fixed, (png_structrp png_ptr, png_const_color_16p background_color, int background_gamma_code, ### TO ### int need_expand, png_fixed_point background_gamma)) */
extern void ( png_set_background_fixed) (png_structrp png_ptr, png_const_color_16p background_color, int background_gamma_code, int need_expand, png_fixed_point background_gamma);
enum { PNG_BACKGROUND_GAMMA_UNKNOWN = 0 };
enum { PNG_BACKGROUND_GAMMA_SCREEN = 1 };
enum { PNG_BACKGROUND_GAMMA_FILE = 2 };
enum { PNG_BACKGROUND_GAMMA_UNIQUE = 3 };
extern void ( png_set_scale_16) (png_structrp png_ptr);
enum { PNG_READ_16_TO_8_SUPPORTED = 1 };
extern void ( png_set_strip_16) (png_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(49, void, png_set_quantize, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(49, void, png_set_quantize, (png_structrp png_ptr, ### TO ### png_colorp palette, int num_palette, int maximum_colors, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(49, void, png_set_quantize, (png_structrp png_ptr, png_colorp palette, int num_palette, int maximum_colors, */
/* ### PREPENDING ### PNG_EXPORT(49, void, png_set_quantize, (png_structrp png_ptr, png_colorp palette, int num_palette, int maximum_colors, ### TO ### png_const_uint_16p histogram, int full_quantize)); */
extern void ( png_set_quantize) (png_structrp png_ptr, png_colorp palette, int num_palette, int maximum_colors, png_const_uint_16p histogram, int full_quantize);
/* #define PNG_GAMMA_THRESHOLD (PNG_GAMMA_THRESHOLD_FIXED*.00001) ### string, not number "(PNG_GAMMA_THRESHOLD_FIXED*.00001)" */
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(50, void, png_set_gamma, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_FP_EXPORT(50, void, png_set_gamma, (png_structrp png_ptr, ### TO ### double screen_gamma, double override_file_gamma)) */
extern void ( png_set_gamma) (png_structrp png_ptr, double screen_gamma, double override_file_gamma);
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(208, void, png_set_gamma_fixed, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(208, void, png_set_gamma_fixed, (png_structrp png_ptr, ### TO ### png_fixed_point screen_gamma, png_fixed_point override_file_gamma)) */
extern void ( png_set_gamma_fixed) (png_structrp png_ptr, png_fixed_point screen_gamma, png_fixed_point override_file_gamma);
extern void ( png_set_flush) (png_structrp png_ptr, int nrows);
extern void ( png_write_flush) (png_structrp png_ptr);
extern void ( png_start_read_image) (png_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(54, void, png_read_update_info, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(54, void, png_read_update_info, (png_structrp png_ptr, ### TO ### png_inforp info_ptr)); */
extern void ( png_read_update_info) (png_structrp png_ptr, png_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(55, void, png_read_rows, (png_structrp png_ptr, png_bytepp row, */
/* ### PREPENDING ### PNG_EXPORT(55, void, png_read_rows, (png_structrp png_ptr, png_bytepp row, ### TO ### png_bytepp display_row, png_uint_32 num_rows)); */
extern void ( png_read_rows) (png_structrp png_ptr, png_bytepp row, png_bytepp display_row, png_uint_32 num_rows);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(56, void, png_read_row, (png_structrp png_ptr, png_bytep row, */
/* ### PREPENDING ### PNG_EXPORT(56, void, png_read_row, (png_structrp png_ptr, png_bytep row, ### TO ### png_bytep display_row)); */
extern void ( png_read_row) (png_structrp png_ptr, png_bytep row, png_bytep display_row);
extern void ( png_read_image) (png_structrp png_ptr, png_bytepp image);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(58, void, png_write_row, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(58, void, png_write_row, (png_structrp png_ptr, ### TO ### png_const_bytep row)); */
extern void ( png_write_row) (png_structrp png_ptr, png_const_bytep row);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(59, void, png_write_rows, (png_structrp png_ptr, png_bytepp row, */
/* ### PREPENDING ### PNG_EXPORT(59, void, png_write_rows, (png_structrp png_ptr, png_bytepp row, ### TO ### png_uint_32 num_rows)); */
extern void ( png_write_rows) (png_structrp png_ptr, png_bytepp row, png_uint_32 num_rows);
extern void ( png_write_image) (png_structrp png_ptr, png_bytepp image);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(61, void, png_write_end, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(61, void, png_write_end, (png_structrp png_ptr, ### TO ### png_inforp info_ptr)); */
extern void ( png_write_end) (png_structrp png_ptr, png_inforp info_ptr);
extern void ( png_read_end) (png_structrp png_ptr, png_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(63, void, png_destroy_info_struct, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(63, void, png_destroy_info_struct, (png_const_structrp png_ptr, ### TO ### png_infopp info_ptr_ptr)); */
extern void ( png_destroy_info_struct) (png_const_structrp png_ptr, png_infopp info_ptr_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(64, void, png_destroy_read_struct, (png_structpp png_ptr_ptr, */
/* ### PREPENDING ### PNG_EXPORT(64, void, png_destroy_read_struct, (png_structpp png_ptr_ptr, ### TO ### png_infopp info_ptr_ptr, png_infopp end_info_ptr_ptr)); */
extern void ( png_destroy_read_struct) (png_structpp png_ptr_ptr, png_infopp info_ptr_ptr, png_infopp end_info_ptr_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(65, void, png_destroy_write_struct, (png_structpp png_ptr_ptr, */
/* ### PREPENDING ### PNG_EXPORT(65, void, png_destroy_write_struct, (png_structpp png_ptr_ptr, ### TO ### png_infopp info_ptr_ptr)); */
extern void ( png_destroy_write_struct) (png_structpp png_ptr_ptr, png_infopp info_ptr_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(66, void, png_set_crc_action, (png_structrp png_ptr, int crit_action, */
/* ### PREPENDING ### PNG_EXPORT(66, void, png_set_crc_action, (png_structrp png_ptr, int crit_action, ### TO ### int ancil_action)); */
extern void ( png_set_crc_action) (png_structrp png_ptr, int crit_action, int ancil_action);
enum { PNG_CRC_DEFAULT = 0 };
enum { PNG_CRC_ERROR_QUIT = 1 };
enum { PNG_CRC_WARN_DISCARD = 2 };
enum { PNG_CRC_WARN_USE = 3 };
enum { PNG_CRC_QUIET_USE = 4 };
enum { PNG_CRC_NO_CHANGE = 5 };
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(67, void, png_set_filter, (png_structrp png_ptr, int method, */
/* ### PREPENDING ### PNG_EXPORT(67, void, png_set_filter, (png_structrp png_ptr, int method, ### TO ### int filters)); */
extern void ( png_set_filter) (png_structrp png_ptr, int method, int filters);
enum { PNG_NO_FILTERS = 0 };
enum { PNG_FILTER_NONE = 8 };
enum { PNG_FILTER_SUB = 16 };
enum { PNG_FILTER_UP = 32 };
enum { PNG_FILTER_AVG = 64 };
enum { PNG_FILTER_PAETH = 128 };
enum { PNG_FAST_FILTERS = 56 };
enum { PNG_ALL_FILTERS = 248 };
enum { PNG_FILTER_VALUE_NONE = 0 };
enum { PNG_FILTER_VALUE_SUB = 1 };
enum { PNG_FILTER_VALUE_UP = 2 };
enum { PNG_FILTER_VALUE_AVG = 3 };
enum { PNG_FILTER_VALUE_PAETH = 4 };
enum { PNG_FILTER_VALUE_LAST = 5 };
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(68, void, png_set_filter_heuristics, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_FP_EXPORT(68, void, png_set_filter_heuristics, (png_structrp png_ptr, ### TO ### int heuristic_method, int num_weights, png_const_doublep filter_weights, */
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(68, void, png_set_filter_heuristics, (png_structrp png_ptr, int heuristic_method, int num_weights, png_const_doublep filter_weights, */
/* ### PREPENDING ### PNG_FP_EXPORT(68, void, png_set_filter_heuristics, (png_structrp png_ptr, int heuristic_method, int num_weights, png_const_doublep filter_weights, ### TO ### png_const_doublep filter_costs)) */
extern void ( png_set_filter_heuristics) (png_structrp png_ptr, int heuristic_method, int num_weights, png_const_doublep filter_weights, png_const_doublep filter_costs);
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(209, void, png_set_filter_heuristics_fixed, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(209, void, png_set_filter_heuristics_fixed, ### TO ### (png_structrp png_ptr, int heuristic_method, int num_weights, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(209, void, png_set_filter_heuristics_fixed, (png_structrp png_ptr, int heuristic_method, int num_weights, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(209, void, png_set_filter_heuristics_fixed, (png_structrp png_ptr, int heuristic_method, int num_weights, ### TO ### png_const_fixed_point_p filter_weights, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(209, void, png_set_filter_heuristics_fixed, (png_structrp png_ptr, int heuristic_method, int num_weights, png_const_fixed_point_p filter_weights, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(209, void, png_set_filter_heuristics_fixed, (png_structrp png_ptr, int heuristic_method, int num_weights, png_const_fixed_point_p filter_weights, ### TO ### png_const_fixed_point_p filter_costs)) */
extern void ( png_set_filter_heuristics_fixed) (png_structrp png_ptr, int heuristic_method, int num_weights, png_const_fixed_point_p filter_weights, png_const_fixed_point_p filter_costs);
enum { PNG_FILTER_HEURISTIC_DEFAULT = 0 };
enum { PNG_FILTER_HEURISTIC_UNWEIGHTED = 1 };
enum { PNG_FILTER_HEURISTIC_WEIGHTED = 2 };
enum { PNG_FILTER_HEURISTIC_LAST = 3 };
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(69, void, png_set_compression_level, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(69, void, png_set_compression_level, (png_structrp png_ptr, ### TO ### int level)); */
extern void ( png_set_compression_level) (png_structrp png_ptr, int level);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(70, void, png_set_compression_mem_level, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(70, void, png_set_compression_mem_level, (png_structrp png_ptr, ### TO ### int mem_level)); */
extern void ( png_set_compression_mem_level) (png_structrp png_ptr, int mem_level);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(71, void, png_set_compression_strategy, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(71, void, png_set_compression_strategy, (png_structrp png_ptr, ### TO ### int strategy)); */
extern void ( png_set_compression_strategy) (png_structrp png_ptr, int strategy);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(72, void, png_set_compression_window_bits, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(72, void, png_set_compression_window_bits, (png_structrp png_ptr, ### TO ### int window_bits)); */
extern void ( png_set_compression_window_bits) (png_structrp png_ptr, int window_bits);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(73, void, png_set_compression_method, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(73, void, png_set_compression_method, (png_structrp png_ptr, ### TO ### int method)); */
extern void ( png_set_compression_method) (png_structrp png_ptr, int method);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(222, void, png_set_text_compression_level, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(222, void, png_set_text_compression_level, (png_structrp png_ptr, ### TO ### int level)); */
extern void ( png_set_text_compression_level) (png_structrp png_ptr, int level);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(223, void, png_set_text_compression_mem_level, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(223, void, png_set_text_compression_mem_level, (png_structrp png_ptr, ### TO ### int mem_level)); */
extern void ( png_set_text_compression_mem_level) (png_structrp png_ptr, int mem_level);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(224, void, png_set_text_compression_strategy, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(224, void, png_set_text_compression_strategy, (png_structrp png_ptr, ### TO ### int strategy)); */
extern void ( png_set_text_compression_strategy) (png_structrp png_ptr, int strategy);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(225, void, png_set_text_compression_window_bits, */
/* ### PREPENDING ### PNG_EXPORT(225, void, png_set_text_compression_window_bits, ### TO ### (png_structrp png_ptr, int window_bits)); */
extern void ( png_set_text_compression_window_bits) (png_structrp png_ptr, int window_bits);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(226, void, png_set_text_compression_method, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(226, void, png_set_text_compression_method, (png_structrp png_ptr, ### TO ### int method)); */
extern void ( png_set_text_compression_method) (png_structrp png_ptr, int method);
extern void ( png_init_io) (png_structrp png_ptr, png_FILE_p fp);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(75, void, png_set_error_fn, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(75, void, png_set_error_fn, (png_structrp png_ptr, ### TO ### png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warning_fn)); */
extern void ( png_set_error_fn) (png_structrp png_ptr, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warning_fn);
extern png_voidp ( png_get_error_ptr) (png_const_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(77, void, png_set_write_fn, (png_structrp png_ptr, png_voidp io_ptr, */
/* ### PREPENDING ### PNG_EXPORT(77, void, png_set_write_fn, (png_structrp png_ptr, png_voidp io_ptr, ### TO ### png_rw_ptr write_data_fn, png_flush_ptr output_flush_fn)); */
extern void ( png_set_write_fn) (png_structrp png_ptr, png_voidp io_ptr, png_rw_ptr write_data_fn, png_flush_ptr output_flush_fn);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(78, void, png_set_read_fn, (png_structrp png_ptr, png_voidp io_ptr, */
/* ### PREPENDING ### PNG_EXPORT(78, void, png_set_read_fn, (png_structrp png_ptr, png_voidp io_ptr, ### TO ### png_rw_ptr read_data_fn)); */
extern void ( png_set_read_fn) (png_structrp png_ptr, png_voidp io_ptr, png_rw_ptr read_data_fn);
extern png_voidp ( png_get_io_ptr) (png_const_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(80, void, png_set_read_status_fn, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(80, void, png_set_read_status_fn, (png_structrp png_ptr, ### TO ### png_read_status_ptr read_row_fn)); */
extern void ( png_set_read_status_fn) (png_structrp png_ptr, png_read_status_ptr read_row_fn);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(81, void, png_set_write_status_fn, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(81, void, png_set_write_status_fn, (png_structrp png_ptr, ### TO ### png_write_status_ptr write_row_fn)); */
extern void ( png_set_write_status_fn) (png_structrp png_ptr, png_write_status_ptr write_row_fn);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(82, void, png_set_mem_fn, (png_structrp png_ptr, png_voidp mem_ptr, */
/* ### PREPENDING ### PNG_EXPORT(82, void, png_set_mem_fn, (png_structrp png_ptr, png_voidp mem_ptr, ### TO ### png_malloc_ptr malloc_fn, png_free_ptr free_fn)); */
extern void ( png_set_mem_fn) (png_structrp png_ptr, png_voidp mem_ptr, png_malloc_ptr malloc_fn, png_free_ptr free_fn);
extern png_voidp ( png_get_mem_ptr) (png_const_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(84, void, png_set_read_user_transform_fn, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(84, void, png_set_read_user_transform_fn, (png_structrp png_ptr, ### TO ### png_user_transform_ptr read_user_transform_fn)); */
extern void ( png_set_read_user_transform_fn) (png_structrp png_ptr, png_user_transform_ptr read_user_transform_fn);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(85, void, png_set_write_user_transform_fn, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(85, void, png_set_write_user_transform_fn, (png_structrp png_ptr, ### TO ### png_user_transform_ptr write_user_transform_fn)); */
extern void ( png_set_write_user_transform_fn) (png_structrp png_ptr, png_user_transform_ptr write_user_transform_fn);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(86, void, png_set_user_transform_info, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(86, void, png_set_user_transform_info, (png_structrp png_ptr, ### TO ### png_voidp user_transform_ptr, int user_transform_depth, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(86, void, png_set_user_transform_info, (png_structrp png_ptr, png_voidp user_transform_ptr, int user_transform_depth, */
/* ### PREPENDING ### PNG_EXPORT(86, void, png_set_user_transform_info, (png_structrp png_ptr, png_voidp user_transform_ptr, int user_transform_depth, ### TO ### int user_transform_channels)); */
extern void ( png_set_user_transform_info) (png_structrp png_ptr, png_voidp user_transform_ptr, int user_transform_depth, int user_transform_channels);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(87, png_voidp, png_get_user_transform_ptr, */
/* ### PREPENDING ### PNG_EXPORT(87, png_voidp, png_get_user_transform_ptr, ### TO ### (png_const_structrp png_ptr)); */
extern png_voidp ( png_get_user_transform_ptr) (png_const_structrp png_ptr);
extern png_uint_32 ( png_get_current_row_number) (png_const_structrp);
extern png_byte ( png_get_current_pass_number) (png_const_structrp);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(88, void, png_set_read_user_chunk_fn, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(88, void, png_set_read_user_chunk_fn, (png_structrp png_ptr, ### TO ### png_voidp user_chunk_ptr, png_user_chunk_ptr read_user_chunk_fn)); */
extern void ( png_set_read_user_chunk_fn) (png_structrp png_ptr, png_voidp user_chunk_ptr, png_user_chunk_ptr read_user_chunk_fn);
extern png_voidp ( png_get_user_chunk_ptr) (png_const_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(90, void, png_set_progressive_read_fn, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(90, void, png_set_progressive_read_fn, (png_structrp png_ptr, ### TO ### png_voidp progressive_ptr, png_progressive_info_ptr info_fn, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(90, void, png_set_progressive_read_fn, (png_structrp png_ptr, png_voidp progressive_ptr, png_progressive_info_ptr info_fn, */
/* ### PREPENDING ### PNG_EXPORT(90, void, png_set_progressive_read_fn, (png_structrp png_ptr, png_voidp progressive_ptr, png_progressive_info_ptr info_fn, ### TO ### png_progressive_row_ptr row_fn, png_progressive_end_ptr end_fn)); */
extern void ( png_set_progressive_read_fn) (png_structrp png_ptr, png_voidp progressive_ptr, png_progressive_info_ptr info_fn, png_progressive_row_ptr row_fn, png_progressive_end_ptr end_fn);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(91, png_voidp, png_get_progressive_ptr, */
/* ### PREPENDING ### PNG_EXPORT(91, png_voidp, png_get_progressive_ptr, ### TO ### (png_const_structrp png_ptr)); */
extern png_voidp ( png_get_progressive_ptr) (png_const_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(92, void, png_process_data, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(92, void, png_process_data, (png_structrp png_ptr, ### TO ### png_inforp info_ptr, png_bytep buffer, size_t buffer_size)); */
extern void ( png_process_data) (png_structrp png_ptr, png_inforp info_ptr, png_bytep buffer, size_t buffer_size);
extern size_t ( png_process_data_pause) (png_structrp, int save);
extern png_uint_32 ( png_process_data_skip) (png_structrp);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(93, void, png_progressive_combine_row, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(93, void, png_progressive_combine_row, (png_const_structrp png_ptr, ### TO ### png_bytep old_row, png_const_bytep new_row)); */
extern void ( png_progressive_combine_row) (png_const_structrp png_ptr, png_bytep old_row, png_const_bytep new_row);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(94, png_voidp, png_malloc, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORTA(94, png_voidp, png_malloc, (png_const_structrp png_ptr, ### TO ### png_alloc_size_t size), PNG_ALLOCATED); */
extern __attribute__((__malloc__)) png_voidp ( png_malloc) (png_const_structrp png_ptr, png_alloc_size_t size);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(95, png_voidp, png_calloc, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORTA(95, png_voidp, png_calloc, (png_const_structrp png_ptr, ### TO ### png_alloc_size_t size), PNG_ALLOCATED); */
extern __attribute__((__malloc__)) png_voidp ( png_calloc) (png_const_structrp png_ptr, png_alloc_size_t size);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(96, png_voidp, png_malloc_warn, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORTA(96, png_voidp, png_malloc_warn, (png_const_structrp png_ptr, ### TO ### png_alloc_size_t size), PNG_ALLOCATED); */
extern __attribute__((__malloc__)) png_voidp ( png_malloc_warn) (png_const_structrp png_ptr, png_alloc_size_t size);
extern void ( png_free) (png_const_structrp png_ptr, png_voidp ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(98, void, png_free_data, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(98, void, png_free_data, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_uint_32 free_me, int num)); */
extern void ( png_free_data) (png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 free_me, int num);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(99, void, png_data_freer, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(99, void, png_data_freer, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, int freer, png_uint_32 mask)); */
extern void ( png_data_freer) (png_const_structrp png_ptr, png_inforp info_ptr, int freer, png_uint_32 mask);
enum { PNG_DESTROY_WILL_FREE_DATA = 1 };
enum { PNG_SET_WILL_FREE_DATA = 1 };
enum { PNG_USER_WILL_FREE_DATA = 2 };
enum { PNG_FREE_HIST = 8 };
enum { PNG_FREE_ICCP = 16 };
enum { PNG_FREE_SPLT = 32 };
enum { PNG_FREE_ROWS = 64 };
enum { PNG_FREE_PCAL = 128 };
enum { PNG_FREE_SCAL = 256 };
enum { PNG_FREE_UNKN = 512 };
enum { PNG_FREE_PLTE = 4096 };
enum { PNG_FREE_TRNS = 8192 };
enum { PNG_FREE_TEXT = 16384 };
enum { PNG_FREE_EXIF = 32768 };
enum { PNG_FREE_ALL = 65535 };
enum { PNG_FREE_MUL = 16928 };
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(100, png_voidp, png_malloc_default, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORTA(100, png_voidp, png_malloc_default, (png_const_structrp png_ptr, ### TO ### png_alloc_size_t size), PNG_ALLOCATED PNG_DEPRECATED); */
extern __attribute__((__malloc__)) __attribute__((__deprecated__)) png_voidp ( png_malloc_default) (png_const_structrp png_ptr, png_alloc_size_t size);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(101, void, png_free_default, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORTA(101, void, png_free_default, (png_const_structrp png_ptr, ### TO ### png_voidp ptr), PNG_DEPRECATED); */
extern __attribute__((__deprecated__)) void ( png_free_default) (png_const_structrp png_ptr, png_voidp ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(102, void, png_error, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORTA(102, void, png_error, (png_const_structrp png_ptr, ### TO ### png_const_charp error_message), PNG_NORETURN); */
extern __attribute__((__noreturn__)) void ( png_error) (png_const_structrp png_ptr, png_const_charp error_message);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORTA ### IN LINE ### PNG_EXPORTA(103, void, png_chunk_error, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORTA(103, void, png_chunk_error, (png_const_structrp png_ptr, ### TO ### png_const_charp error_message), PNG_NORETURN); */
extern __attribute__((__noreturn__)) void ( png_chunk_error) (png_const_structrp png_ptr, png_const_charp error_message);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(105, void, png_warning, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(105, void, png_warning, (png_const_structrp png_ptr, ### TO ### png_const_charp warning_message)); */
extern void ( png_warning) (png_const_structrp png_ptr, png_const_charp warning_message);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(106, void, png_chunk_warning, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(106, void, png_chunk_warning, (png_const_structrp png_ptr, ### TO ### png_const_charp warning_message)); */
extern void ( png_chunk_warning) (png_const_structrp png_ptr, png_const_charp warning_message);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(107, void, png_benign_error, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(107, void, png_benign_error, (png_const_structrp png_ptr, ### TO ### png_const_charp warning_message)); */
extern void ( png_benign_error) (png_const_structrp png_ptr, png_const_charp warning_message);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(108, void, png_chunk_benign_error, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(108, void, png_chunk_benign_error, (png_const_structrp png_ptr, ### TO ### png_const_charp warning_message)); */
extern void ( png_chunk_benign_error) (png_const_structrp png_ptr, png_const_charp warning_message);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(109, void, png_set_benign_errors, */
/* ### PREPENDING ### PNG_EXPORT(109, void, png_set_benign_errors, ### TO ### (png_structrp png_ptr, int allowed)); */
extern void ( png_set_benign_errors) (png_structrp png_ptr, int allowed);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(110, png_uint_32, png_get_valid, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(110, png_uint_32, png_get_valid, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr, png_uint_32 flag)); */
extern png_uint_32 ( png_get_valid) (png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 flag);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(111, size_t, png_get_rowbytes, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(111, size_t, png_get_rowbytes, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr)); */
extern size_t ( png_get_rowbytes) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(112, png_bytepp, png_get_rows, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(112, png_bytepp, png_get_rows, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr)); */
extern png_bytepp ( png_get_rows) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(113, void, png_set_rows, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(113, void, png_set_rows, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_bytepp row_pointers)); */
extern void ( png_set_rows) (png_const_structrp png_ptr, png_inforp info_ptr, png_bytepp row_pointers);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(114, png_byte, png_get_channels, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(114, png_byte, png_get_channels, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr)); */
extern png_byte ( png_get_channels) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(115, png_uint_32, png_get_image_width, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(115, png_uint_32, png_get_image_width, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr)); */
extern png_uint_32 ( png_get_image_width) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(116, png_uint_32, png_get_image_height, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(116, png_uint_32, png_get_image_height, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr)); */
extern png_uint_32 ( png_get_image_height) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(117, png_byte, png_get_bit_depth, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(117, png_byte, png_get_bit_depth, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr)); */
extern png_byte ( png_get_bit_depth) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(118, png_byte, png_get_color_type, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(118, png_byte, png_get_color_type, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr)); */
extern png_byte ( png_get_color_type) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(119, png_byte, png_get_filter_type, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(119, png_byte, png_get_filter_type, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr)); */
extern png_byte ( png_get_filter_type) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(120, png_byte, png_get_interlace_type, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(120, png_byte, png_get_interlace_type, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr)); */
extern png_byte ( png_get_interlace_type) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(121, png_byte, png_get_compression_type, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(121, png_byte, png_get_compression_type, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr)); */
extern png_byte ( png_get_compression_type) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(122, png_uint_32, png_get_pixels_per_meter, */
/* ### PREPENDING ### PNG_EXPORT(122, png_uint_32, png_get_pixels_per_meter, ### TO ### (png_const_structrp png_ptr, png_const_inforp info_ptr)); */
extern png_uint_32 ( png_get_pixels_per_meter) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(123, png_uint_32, png_get_x_pixels_per_meter, */
/* ### PREPENDING ### PNG_EXPORT(123, png_uint_32, png_get_x_pixels_per_meter, ### TO ### (png_const_structrp png_ptr, png_const_inforp info_ptr)); */
extern png_uint_32 ( png_get_x_pixels_per_meter) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(124, png_uint_32, png_get_y_pixels_per_meter, */
/* ### PREPENDING ### PNG_EXPORT(124, png_uint_32, png_get_y_pixels_per_meter, ### TO ### (png_const_structrp png_ptr, png_const_inforp info_ptr)); */
extern png_uint_32 ( png_get_y_pixels_per_meter) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(125, float, png_get_pixel_aspect_ratio, */
/* ### PREPENDING ### PNG_FP_EXPORT(125, float, png_get_pixel_aspect_ratio, ### TO ### (png_const_structrp png_ptr, png_const_inforp info_ptr)) */
extern float ( png_get_pixel_aspect_ratio) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(210, png_fixed_point, png_get_pixel_aspect_ratio_fixed, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(210, png_fixed_point, png_get_pixel_aspect_ratio_fixed, ### TO ### (png_const_structrp png_ptr, png_const_inforp info_ptr)) */
extern png_fixed_point ( png_get_pixel_aspect_ratio_fixed) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(126, png_int_32, png_get_x_offset_pixels, */
/* ### PREPENDING ### PNG_EXPORT(126, png_int_32, png_get_x_offset_pixels, ### TO ### (png_const_structrp png_ptr, png_const_inforp info_ptr)); */
extern png_int_32 ( png_get_x_offset_pixels) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(127, png_int_32, png_get_y_offset_pixels, */
/* ### PREPENDING ### PNG_EXPORT(127, png_int_32, png_get_y_offset_pixels, ### TO ### (png_const_structrp png_ptr, png_const_inforp info_ptr)); */
extern png_int_32 ( png_get_y_offset_pixels) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(128, png_int_32, png_get_x_offset_microns, */
/* ### PREPENDING ### PNG_EXPORT(128, png_int_32, png_get_x_offset_microns, ### TO ### (png_const_structrp png_ptr, png_const_inforp info_ptr)); */
extern png_int_32 ( png_get_x_offset_microns) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(129, png_int_32, png_get_y_offset_microns, */
/* ### PREPENDING ### PNG_EXPORT(129, png_int_32, png_get_y_offset_microns, ### TO ### (png_const_structrp png_ptr, png_const_inforp info_ptr)); */
extern png_int_32 ( png_get_y_offset_microns) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(130, png_const_bytep, png_get_signature, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(130, png_const_bytep, png_get_signature, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr)); */
extern png_const_bytep ( png_get_signature) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(131, png_uint_32, png_get_bKGD, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(131, png_uint_32, png_get_bKGD, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_color_16p *background)); */
extern png_uint_32 ( png_get_bKGD) (png_const_structrp png_ptr, png_inforp info_ptr, png_color_16p *background);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(132, void, png_set_bKGD, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(132, void, png_set_bKGD, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_const_color_16p background)); */
extern void ( png_set_bKGD) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_color_16p background);
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(133, png_uint_32, png_get_cHRM, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_FP_EXPORT(133, png_uint_32, png_get_cHRM, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr, double *white_x, double *white_y, double *red_x, */
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(133, png_uint_32, png_get_cHRM, (png_const_structrp png_ptr, png_const_inforp info_ptr, double *white_x, double *white_y, double *red_x, */
/* ### PREPENDING ### PNG_FP_EXPORT(133, png_uint_32, png_get_cHRM, (png_const_structrp png_ptr, png_const_inforp info_ptr, double *white_x, double *white_y, double *red_x, ### TO ### double *red_y, double *green_x, double *green_y, double *blue_x, */
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(133, png_uint_32, png_get_cHRM, (png_const_structrp png_ptr, png_const_inforp info_ptr, double *white_x, double *white_y, double *red_x, double *red_y, double *green_x, double *green_y, double *blue_x, */
/* ### PREPENDING ### PNG_FP_EXPORT(133, png_uint_32, png_get_cHRM, (png_const_structrp png_ptr, png_const_inforp info_ptr, double *white_x, double *white_y, double *red_x, double *red_y, double *green_x, double *green_y, double *blue_x, ### TO ### double *blue_y)) */
extern png_uint_32 ( png_get_cHRM) (png_const_structrp png_ptr, png_const_inforp info_ptr, double *white_x, double *white_y, double *red_x, double *red_y, double *green_x, double *green_y, double *blue_x, double *blue_y);
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(230, png_uint_32, png_get_cHRM_XYZ, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_FP_EXPORT(230, png_uint_32, png_get_cHRM_XYZ, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr, double *red_X, double *red_Y, double *red_Z, */
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(230, png_uint_32, png_get_cHRM_XYZ, (png_const_structrp png_ptr, png_const_inforp info_ptr, double *red_X, double *red_Y, double *red_Z, */
/* ### PREPENDING ### PNG_FP_EXPORT(230, png_uint_32, png_get_cHRM_XYZ, (png_const_structrp png_ptr, png_const_inforp info_ptr, double *red_X, double *red_Y, double *red_Z, ### TO ### double *green_X, double *green_Y, double *green_Z, double *blue_X, */
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(230, png_uint_32, png_get_cHRM_XYZ, (png_const_structrp png_ptr, png_const_inforp info_ptr, double *red_X, double *red_Y, double *red_Z, double *green_X, double *green_Y, double *green_Z, double *blue_X, */
/* ### PREPENDING ### PNG_FP_EXPORT(230, png_uint_32, png_get_cHRM_XYZ, (png_const_structrp png_ptr, png_const_inforp info_ptr, double *red_X, double *red_Y, double *red_Z, double *green_X, double *green_Y, double *green_Z, double *blue_X, ### TO ### double *blue_Y, double *blue_Z)) */
extern png_uint_32 ( png_get_cHRM_XYZ) (png_const_structrp png_ptr, png_const_inforp info_ptr, double *red_X, double *red_Y, double *red_Z, double *green_X, double *green_Y, double *green_Z, double *blue_X, double *blue_Y, double *blue_Z);
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(134, png_uint_32, png_get_cHRM_fixed, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(134, png_uint_32, png_get_cHRM_fixed, ### TO ### (png_const_structrp png_ptr, png_const_inforp info_ptr, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(134, png_uint_32, png_get_cHRM_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(134, png_uint_32, png_get_cHRM_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, ### TO ### png_fixed_point *int_white_x, png_fixed_point *int_white_y, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(134, png_uint_32, png_get_cHRM_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_white_x, png_fixed_point *int_white_y, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(134, png_uint_32, png_get_cHRM_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_white_x, png_fixed_point *int_white_y, ### TO ### png_fixed_point *int_red_x, png_fixed_point *int_red_y, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(134, png_uint_32, png_get_cHRM_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_white_x, png_fixed_point *int_white_y, png_fixed_point *int_red_x, png_fixed_point *int_red_y, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(134, png_uint_32, png_get_cHRM_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_white_x, png_fixed_point *int_white_y, png_fixed_point *int_red_x, png_fixed_point *int_red_y, ### TO ### png_fixed_point *int_green_x, png_fixed_point *int_green_y, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(134, png_uint_32, png_get_cHRM_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_white_x, png_fixed_point *int_white_y, png_fixed_point *int_red_x, png_fixed_point *int_red_y, png_fixed_point *int_green_x, png_fixed_point *int_green_y, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(134, png_uint_32, png_get_cHRM_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_white_x, png_fixed_point *int_white_y, png_fixed_point *int_red_x, png_fixed_point *int_red_y, png_fixed_point *int_green_x, png_fixed_point *int_green_y, ### TO ### png_fixed_point *int_blue_x, png_fixed_point *int_blue_y)) */
extern png_uint_32 ( png_get_cHRM_fixed) (png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_white_x, png_fixed_point *int_white_y, png_fixed_point *int_red_x, png_fixed_point *int_red_y, png_fixed_point *int_green_x, png_fixed_point *int_green_y, png_fixed_point *int_blue_x, png_fixed_point *int_blue_y);
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(231, png_uint_32, png_get_cHRM_XYZ_fixed, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(231, png_uint_32, png_get_cHRM_XYZ_fixed, ### TO ### (png_const_structrp png_ptr, png_const_inforp info_ptr, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(231, png_uint_32, png_get_cHRM_XYZ_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(231, png_uint_32, png_get_cHRM_XYZ_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, ### TO ### png_fixed_point *int_red_X, png_fixed_point *int_red_Y, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(231, png_uint_32, png_get_cHRM_XYZ_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_red_X, png_fixed_point *int_red_Y, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(231, png_uint_32, png_get_cHRM_XYZ_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_red_X, png_fixed_point *int_red_Y, ### TO ### png_fixed_point *int_red_Z, png_fixed_point *int_green_X, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(231, png_uint_32, png_get_cHRM_XYZ_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_red_X, png_fixed_point *int_red_Y, png_fixed_point *int_red_Z, png_fixed_point *int_green_X, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(231, png_uint_32, png_get_cHRM_XYZ_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_red_X, png_fixed_point *int_red_Y, png_fixed_point *int_red_Z, png_fixed_point *int_green_X, ### TO ### png_fixed_point *int_green_Y, png_fixed_point *int_green_Z, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(231, png_uint_32, png_get_cHRM_XYZ_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_red_X, png_fixed_point *int_red_Y, png_fixed_point *int_red_Z, png_fixed_point *int_green_X, png_fixed_point *int_green_Y, png_fixed_point *int_green_Z, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(231, png_uint_32, png_get_cHRM_XYZ_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_red_X, png_fixed_point *int_red_Y, png_fixed_point *int_red_Z, png_fixed_point *int_green_X, png_fixed_point *int_green_Y, png_fixed_point *int_green_Z, ### TO ### png_fixed_point *int_blue_X, png_fixed_point *int_blue_Y, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(231, png_uint_32, png_get_cHRM_XYZ_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_red_X, png_fixed_point *int_red_Y, png_fixed_point *int_red_Z, png_fixed_point *int_green_X, png_fixed_point *int_green_Y, png_fixed_point *int_green_Z, png_fixed_point *int_blue_X, png_fixed_point *int_blue_Y, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(231, png_uint_32, png_get_cHRM_XYZ_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_red_X, png_fixed_point *int_red_Y, png_fixed_point *int_red_Z, png_fixed_point *int_green_X, png_fixed_point *int_green_Y, png_fixed_point *int_green_Z, png_fixed_point *int_blue_X, png_fixed_point *int_blue_Y, ### TO ### png_fixed_point *int_blue_Z)) */
extern png_uint_32 ( png_get_cHRM_XYZ_fixed) (png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_red_X, png_fixed_point *int_red_Y, png_fixed_point *int_red_Z, png_fixed_point *int_green_X, png_fixed_point *int_green_Y, png_fixed_point *int_green_Z, png_fixed_point *int_blue_X, png_fixed_point *int_blue_Y, png_fixed_point *int_blue_Z);
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(135, void, png_set_cHRM, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_FP_EXPORT(135, void, png_set_cHRM, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, */
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(135, void, png_set_cHRM, (png_const_structrp png_ptr, png_inforp info_ptr, */
/* ### PREPENDING ### PNG_FP_EXPORT(135, void, png_set_cHRM, (png_const_structrp png_ptr, png_inforp info_ptr, ### TO ### double white_x, double white_y, double red_x, double red_y, double green_x, */
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(135, void, png_set_cHRM, (png_const_structrp png_ptr, png_inforp info_ptr, double white_x, double white_y, double red_x, double red_y, double green_x, */
/* ### PREPENDING ### PNG_FP_EXPORT(135, void, png_set_cHRM, (png_const_structrp png_ptr, png_inforp info_ptr, double white_x, double white_y, double red_x, double red_y, double green_x, ### TO ### double green_y, double blue_x, double blue_y)) */
extern void ( png_set_cHRM) (png_const_structrp png_ptr, png_inforp info_ptr, double white_x, double white_y, double red_x, double red_y, double green_x, double green_y, double blue_x, double blue_y);
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(232, void, png_set_cHRM_XYZ, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_FP_EXPORT(232, void, png_set_cHRM_XYZ, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, double red_X, double red_Y, double red_Z, */
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(232, void, png_set_cHRM_XYZ, (png_const_structrp png_ptr, png_inforp info_ptr, double red_X, double red_Y, double red_Z, */
/* ### PREPENDING ### PNG_FP_EXPORT(232, void, png_set_cHRM_XYZ, (png_const_structrp png_ptr, png_inforp info_ptr, double red_X, double red_Y, double red_Z, ### TO ### double green_X, double green_Y, double green_Z, double blue_X, */
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(232, void, png_set_cHRM_XYZ, (png_const_structrp png_ptr, png_inforp info_ptr, double red_X, double red_Y, double red_Z, double green_X, double green_Y, double green_Z, double blue_X, */
/* ### PREPENDING ### PNG_FP_EXPORT(232, void, png_set_cHRM_XYZ, (png_const_structrp png_ptr, png_inforp info_ptr, double red_X, double red_Y, double red_Z, double green_X, double green_Y, double green_Z, double blue_X, ### TO ### double blue_Y, double blue_Z)) */
extern void ( png_set_cHRM_XYZ) (png_const_structrp png_ptr, png_inforp info_ptr, double red_X, double red_Y, double red_Z, double green_X, double green_Y, double green_Z, double blue_X, double blue_Y, double blue_Z);
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(136, void, png_set_cHRM_fixed, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(136, void, png_set_cHRM_fixed, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_fixed_point int_white_x, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(136, void, png_set_cHRM_fixed, (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_white_x, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(136, void, png_set_cHRM_fixed, (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_white_x, ### TO ### png_fixed_point int_white_y, png_fixed_point int_red_x, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(136, void, png_set_cHRM_fixed, (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_white_x, png_fixed_point int_white_y, png_fixed_point int_red_x, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(136, void, png_set_cHRM_fixed, (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_white_x, png_fixed_point int_white_y, png_fixed_point int_red_x, ### TO ### png_fixed_point int_red_y, png_fixed_point int_green_x, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(136, void, png_set_cHRM_fixed, (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_white_x, png_fixed_point int_white_y, png_fixed_point int_red_x, png_fixed_point int_red_y, png_fixed_point int_green_x, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(136, void, png_set_cHRM_fixed, (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_white_x, png_fixed_point int_white_y, png_fixed_point int_red_x, png_fixed_point int_red_y, png_fixed_point int_green_x, ### TO ### png_fixed_point int_green_y, png_fixed_point int_blue_x, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(136, void, png_set_cHRM_fixed, (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_white_x, png_fixed_point int_white_y, png_fixed_point int_red_x, png_fixed_point int_red_y, png_fixed_point int_green_x, png_fixed_point int_green_y, png_fixed_point int_blue_x, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(136, void, png_set_cHRM_fixed, (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_white_x, png_fixed_point int_white_y, png_fixed_point int_red_x, png_fixed_point int_red_y, png_fixed_point int_green_x, png_fixed_point int_green_y, png_fixed_point int_blue_x, ### TO ### png_fixed_point int_blue_y)) */
extern void ( png_set_cHRM_fixed) (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_white_x, png_fixed_point int_white_y, png_fixed_point int_red_x, png_fixed_point int_red_y, png_fixed_point int_green_x, png_fixed_point int_green_y, png_fixed_point int_blue_x, png_fixed_point int_blue_y);
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(233, void, png_set_cHRM_XYZ_fixed, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(233, void, png_set_cHRM_XYZ_fixed, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_fixed_point int_red_X, png_fixed_point int_red_Y, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(233, void, png_set_cHRM_XYZ_fixed, (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_red_X, png_fixed_point int_red_Y, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(233, void, png_set_cHRM_XYZ_fixed, (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_red_X, png_fixed_point int_red_Y, ### TO ### png_fixed_point int_red_Z, png_fixed_point int_green_X, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(233, void, png_set_cHRM_XYZ_fixed, (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_red_X, png_fixed_point int_red_Y, png_fixed_point int_red_Z, png_fixed_point int_green_X, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(233, void, png_set_cHRM_XYZ_fixed, (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_red_X, png_fixed_point int_red_Y, png_fixed_point int_red_Z, png_fixed_point int_green_X, ### TO ### png_fixed_point int_green_Y, png_fixed_point int_green_Z, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(233, void, png_set_cHRM_XYZ_fixed, (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_red_X, png_fixed_point int_red_Y, png_fixed_point int_red_Z, png_fixed_point int_green_X, png_fixed_point int_green_Y, png_fixed_point int_green_Z, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(233, void, png_set_cHRM_XYZ_fixed, (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_red_X, png_fixed_point int_red_Y, png_fixed_point int_red_Z, png_fixed_point int_green_X, png_fixed_point int_green_Y, png_fixed_point int_green_Z, ### TO ### png_fixed_point int_blue_X, png_fixed_point int_blue_Y, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(233, void, png_set_cHRM_XYZ_fixed, (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_red_X, png_fixed_point int_red_Y, png_fixed_point int_red_Z, png_fixed_point int_green_X, png_fixed_point int_green_Y, png_fixed_point int_green_Z, png_fixed_point int_blue_X, png_fixed_point int_blue_Y, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(233, void, png_set_cHRM_XYZ_fixed, (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_red_X, png_fixed_point int_red_Y, png_fixed_point int_red_Z, png_fixed_point int_green_X, png_fixed_point int_green_Y, png_fixed_point int_green_Z, png_fixed_point int_blue_X, png_fixed_point int_blue_Y, ### TO ### png_fixed_point int_blue_Z)) */
extern void ( png_set_cHRM_XYZ_fixed) (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_red_X, png_fixed_point int_red_Y, png_fixed_point int_red_Z, png_fixed_point int_green_X, png_fixed_point int_green_Y, png_fixed_point int_green_Z, png_fixed_point int_blue_X, png_fixed_point int_blue_Y, png_fixed_point int_blue_Z);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(246, png_uint_32, png_get_eXIf, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(246, png_uint_32, png_get_eXIf, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_bytep *exif)); */
extern png_uint_32 ( png_get_eXIf) (png_const_structrp png_ptr, png_inforp info_ptr, png_bytep *exif);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(247, void, png_set_eXIf, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(247, void, png_set_eXIf, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_bytep exif)); */
extern void ( png_set_eXIf) (png_const_structrp png_ptr, png_inforp info_ptr, png_bytep exif);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(248, png_uint_32, png_get_eXIf_1, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(248, png_uint_32, png_get_eXIf_1, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr, png_uint_32 *num_exif, png_bytep *exif)); */
extern png_uint_32 ( png_get_eXIf_1) (png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 *num_exif, png_bytep *exif);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(249, void, png_set_eXIf_1, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(249, void, png_set_eXIf_1, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_uint_32 num_exif, png_bytep exif)); */
extern void ( png_set_eXIf_1) (png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 num_exif, png_bytep exif);
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(137, png_uint_32, png_get_gAMA, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_FP_EXPORT(137, png_uint_32, png_get_gAMA, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr, double *file_gamma)) */
extern png_uint_32 ( png_get_gAMA) (png_const_structrp png_ptr, png_const_inforp info_ptr, double *file_gamma);
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(138, png_uint_32, png_get_gAMA_fixed, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(138, png_uint_32, png_get_gAMA_fixed, ### TO ### (png_const_structrp png_ptr, png_const_inforp info_ptr, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(138, png_uint_32, png_get_gAMA_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(138, png_uint_32, png_get_gAMA_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, ### TO ### png_fixed_point *int_file_gamma)) */
extern png_uint_32 ( png_get_gAMA_fixed) (png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_file_gamma);
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(139, void, png_set_gAMA, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_FP_EXPORT(139, void, png_set_gAMA, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, double file_gamma)) */
extern void ( png_set_gAMA) (png_const_structrp png_ptr, png_inforp info_ptr, double file_gamma);
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(140, void, png_set_gAMA_fixed, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(140, void, png_set_gAMA_fixed, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_fixed_point int_file_gamma)) */
extern void ( png_set_gAMA_fixed) (png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_file_gamma);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(141, png_uint_32, png_get_hIST, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(141, png_uint_32, png_get_hIST, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_uint_16p *hist)); */
extern png_uint_32 ( png_get_hIST) (png_const_structrp png_ptr, png_inforp info_ptr, png_uint_16p *hist);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(142, void, png_set_hIST, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(142, void, png_set_hIST, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_const_uint_16p hist)); */
extern void ( png_set_hIST) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_uint_16p hist);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(143, png_uint_32, png_get_IHDR, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(143, png_uint_32, png_get_IHDR, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr, png_uint_32 *width, png_uint_32 *height, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(143, png_uint_32, png_get_IHDR, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 *width, png_uint_32 *height, */
/* ### PREPENDING ### PNG_EXPORT(143, png_uint_32, png_get_IHDR, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 *width, png_uint_32 *height, ### TO ### int *bit_depth, int *color_type, int *interlace_method, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(143, png_uint_32, png_get_IHDR, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 *width, png_uint_32 *height, int *bit_depth, int *color_type, int *interlace_method, */
/* ### PREPENDING ### PNG_EXPORT(143, png_uint_32, png_get_IHDR, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 *width, png_uint_32 *height, int *bit_depth, int *color_type, int *interlace_method, ### TO ### int *compression_method, int *filter_method)); */
extern png_uint_32 ( png_get_IHDR) (png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 *width, png_uint_32 *height, int *bit_depth, int *color_type, int *interlace_method, int *compression_method, int *filter_method);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(144, void, png_set_IHDR, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(144, void, png_set_IHDR, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_uint_32 width, png_uint_32 height, int bit_depth, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(144, void, png_set_IHDR, (png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 width, png_uint_32 height, int bit_depth, */
/* ### PREPENDING ### PNG_EXPORT(144, void, png_set_IHDR, (png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 width, png_uint_32 height, int bit_depth, ### TO ### int color_type, int interlace_method, int compression_method, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(144, void, png_set_IHDR, (png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 width, png_uint_32 height, int bit_depth, int color_type, int interlace_method, int compression_method, */
/* ### PREPENDING ### PNG_EXPORT(144, void, png_set_IHDR, (png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 width, png_uint_32 height, int bit_depth, int color_type, int interlace_method, int compression_method, ### TO ### int filter_method)); */
extern void ( png_set_IHDR) (png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 width, png_uint_32 height, int bit_depth, int color_type, int interlace_method, int compression_method, int filter_method);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(145, png_uint_32, png_get_oFFs, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(145, png_uint_32, png_get_oFFs, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr, png_int_32 *offset_x, png_int_32 *offset_y, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(145, png_uint_32, png_get_oFFs, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_int_32 *offset_x, png_int_32 *offset_y, */
/* ### PREPENDING ### PNG_EXPORT(145, png_uint_32, png_get_oFFs, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_int_32 *offset_x, png_int_32 *offset_y, ### TO ### int *unit_type)); */
extern png_uint_32 ( png_get_oFFs) (png_const_structrp png_ptr, png_const_inforp info_ptr, png_int_32 *offset_x, png_int_32 *offset_y, int *unit_type);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(146, void, png_set_oFFs, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(146, void, png_set_oFFs, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_int_32 offset_x, png_int_32 offset_y, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(146, void, png_set_oFFs, (png_const_structrp png_ptr, png_inforp info_ptr, png_int_32 offset_x, png_int_32 offset_y, */
/* ### PREPENDING ### PNG_EXPORT(146, void, png_set_oFFs, (png_const_structrp png_ptr, png_inforp info_ptr, png_int_32 offset_x, png_int_32 offset_y, ### TO ### int unit_type)); */
extern void ( png_set_oFFs) (png_const_structrp png_ptr, png_inforp info_ptr, png_int_32 offset_x, png_int_32 offset_y, int unit_type);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(147, png_uint_32, png_get_pCAL, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(147, png_uint_32, png_get_pCAL, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_charp *purpose, png_int_32 *X0, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(147, png_uint_32, png_get_pCAL, (png_const_structrp png_ptr, png_inforp info_ptr, png_charp *purpose, png_int_32 *X0, */
/* ### PREPENDING ### PNG_EXPORT(147, png_uint_32, png_get_pCAL, (png_const_structrp png_ptr, png_inforp info_ptr, png_charp *purpose, png_int_32 *X0, ### TO ### png_int_32 *X1, int *type, int *nparams, png_charp *units, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(147, png_uint_32, png_get_pCAL, (png_const_structrp png_ptr, png_inforp info_ptr, png_charp *purpose, png_int_32 *X0, png_int_32 *X1, int *type, int *nparams, png_charp *units, */
/* ### PREPENDING ### PNG_EXPORT(147, png_uint_32, png_get_pCAL, (png_const_structrp png_ptr, png_inforp info_ptr, png_charp *purpose, png_int_32 *X0, png_int_32 *X1, int *type, int *nparams, png_charp *units, ### TO ### png_charpp *params)); */
extern png_uint_32 ( png_get_pCAL) (png_const_structrp png_ptr, png_inforp info_ptr, png_charp *purpose, png_int_32 *X0, png_int_32 *X1, int * png_uint_32, int *nparams, png_charp *units, png_charpp *params);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(148, void, png_set_pCAL, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(148, void, png_set_pCAL, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_const_charp purpose, png_int_32 X0, png_int_32 X1, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(148, void, png_set_pCAL, (png_const_structrp png_ptr, png_inforp info_ptr, png_const_charp purpose, png_int_32 X0, png_int_32 X1, */
/* ### PREPENDING ### PNG_EXPORT(148, void, png_set_pCAL, (png_const_structrp png_ptr, png_inforp info_ptr, png_const_charp purpose, png_int_32 X0, png_int_32 X1, ### TO ### int type, int nparams, png_const_charp units, png_charpp params)); */
extern void ( png_set_pCAL) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_charp purpose, png_int_32 X0, png_int_32 X1, int type, int nparams, png_const_charp units, png_charpp params);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(149, png_uint_32, png_get_pHYs, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(149, png_uint_32, png_get_pHYs, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr, png_uint_32 *res_x, png_uint_32 *res_y, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(149, png_uint_32, png_get_pHYs, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 *res_x, png_uint_32 *res_y, */
/* ### PREPENDING ### PNG_EXPORT(149, png_uint_32, png_get_pHYs, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 *res_x, png_uint_32 *res_y, ### TO ### int *unit_type)); */
extern png_uint_32 ( png_get_pHYs) (png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 *res_x, png_uint_32 *res_y, int *unit_type);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(150, void, png_set_pHYs, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(150, void, png_set_pHYs, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_uint_32 res_x, png_uint_32 res_y, int unit_type)); */
extern void ( png_set_pHYs) (png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 res_x, png_uint_32 res_y, int unit_type);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(151, png_uint_32, png_get_PLTE, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(151, png_uint_32, png_get_PLTE, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_colorp *palette, int *num_palette)); */
extern png_uint_32 ( png_get_PLTE) (png_const_structrp png_ptr, png_inforp info_ptr, png_colorp *palette, int *num_palette);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(152, void, png_set_PLTE, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(152, void, png_set_PLTE, (png_structrp png_ptr, ### TO ### png_inforp info_ptr, png_const_colorp palette, int num_palette)); */
extern void ( png_set_PLTE) (png_structrp png_ptr, png_inforp info_ptr, png_const_colorp palette, int num_palette);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(153, png_uint_32, png_get_sBIT, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(153, png_uint_32, png_get_sBIT, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_color_8p *sig_bit)); */
extern png_uint_32 ( png_get_sBIT) (png_const_structrp png_ptr, png_inforp info_ptr, png_color_8p *sig_bit);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(154, void, png_set_sBIT, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(154, void, png_set_sBIT, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_const_color_8p sig_bit)); */
extern void ( png_set_sBIT) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_color_8p sig_bit);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(155, png_uint_32, png_get_sRGB, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(155, png_uint_32, png_get_sRGB, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr, int *file_srgb_intent)); */
extern png_uint_32 ( png_get_sRGB) (png_const_structrp png_ptr, png_const_inforp info_ptr, int *file_srgb_intent);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(156, void, png_set_sRGB, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(156, void, png_set_sRGB, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, int srgb_intent)); */
extern void ( png_set_sRGB) (png_const_structrp png_ptr, png_inforp info_ptr, int srgb_intent);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(157, void, png_set_sRGB_gAMA_and_cHRM, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(157, void, png_set_sRGB_gAMA_and_cHRM, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, int srgb_intent)); */
extern void ( png_set_sRGB_gAMA_and_cHRM) (png_const_structrp png_ptr, png_inforp info_ptr, int srgb_intent);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(158, png_uint_32, png_get_iCCP, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(158, png_uint_32, png_get_iCCP, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_charpp name, int *compression_type, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(158, png_uint_32, png_get_iCCP, (png_const_structrp png_ptr, png_inforp info_ptr, png_charpp name, int *compression_type, */
/* ### PREPENDING ### PNG_EXPORT(158, png_uint_32, png_get_iCCP, (png_const_structrp png_ptr, png_inforp info_ptr, png_charpp name, int *compression_type, ### TO ### png_bytepp profile, png_uint_32 *proflen)); */
extern png_uint_32 ( png_get_iCCP) (png_const_structrp png_ptr, png_inforp info_ptr, png_charpp png_get_iCCP, int *compression_type, png_bytepp profile, png_uint_32 *proflen);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(159, void, png_set_iCCP, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(159, void, png_set_iCCP, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_const_charp name, int compression_type, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(159, void, png_set_iCCP, (png_const_structrp png_ptr, png_inforp info_ptr, png_const_charp name, int compression_type, */
/* ### PREPENDING ### PNG_EXPORT(159, void, png_set_iCCP, (png_const_structrp png_ptr, png_inforp info_ptr, png_const_charp name, int compression_type, ### TO ### png_const_bytep profile, png_uint_32 proflen)); */
extern void ( png_set_iCCP) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_charp png_set_iCCP, int compression_type, png_const_bytep profile, png_uint_32 proflen);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(160, int, png_get_sPLT, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(160, int, png_get_sPLT, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_sPLT_tpp entries)); */
extern int ( png_get_sPLT) (png_const_structrp png_ptr, png_inforp info_ptr, png_sPLT_tpp entries);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(161, void, png_set_sPLT, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(161, void, png_set_sPLT, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_const_sPLT_tp entries, int nentries)); */
extern void ( png_set_sPLT) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_sPLT_tp entries, int nentries);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(162, int, png_get_text, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(162, int, png_get_text, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_textp *text_ptr, int *num_text)); */
extern int ( png_get_text) (png_const_structrp png_ptr, png_inforp info_ptr, png_textp *text_ptr, int *num_text);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(163, void, png_set_text, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(163, void, png_set_text, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_const_textp text_ptr, int num_text)); */
extern void ( png_set_text) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_textp text_ptr, int num_text);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(164, png_uint_32, png_get_tIME, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(164, png_uint_32, png_get_tIME, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_timep *mod_time)); */
extern png_uint_32 ( png_get_tIME) (png_const_structrp png_ptr, png_inforp info_ptr, png_timep *mod_time);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(165, void, png_set_tIME, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(165, void, png_set_tIME, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_const_timep mod_time)); */
extern void ( png_set_tIME) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_timep mod_time);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(166, png_uint_32, png_get_tRNS, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(166, png_uint_32, png_get_tRNS, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_bytep *trans_alpha, int *num_trans, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(166, png_uint_32, png_get_tRNS, (png_const_structrp png_ptr, png_inforp info_ptr, png_bytep *trans_alpha, int *num_trans, */
/* ### PREPENDING ### PNG_EXPORT(166, png_uint_32, png_get_tRNS, (png_const_structrp png_ptr, png_inforp info_ptr, png_bytep *trans_alpha, int *num_trans, ### TO ### png_color_16p *trans_color)); */
extern png_uint_32 ( png_get_tRNS) (png_const_structrp png_ptr, png_inforp info_ptr, png_bytep *trans_alpha, int *num_trans, png_color_16p *trans_color);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(167, void, png_set_tRNS, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(167, void, png_set_tRNS, (png_structrp png_ptr, ### TO ### png_inforp info_ptr, png_const_bytep trans_alpha, int num_trans, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(167, void, png_set_tRNS, (png_structrp png_ptr, png_inforp info_ptr, png_const_bytep trans_alpha, int num_trans, */
/* ### PREPENDING ### PNG_EXPORT(167, void, png_set_tRNS, (png_structrp png_ptr, png_inforp info_ptr, png_const_bytep trans_alpha, int num_trans, ### TO ### png_const_color_16p trans_color)); */
extern void ( png_set_tRNS) (png_structrp png_ptr, png_inforp info_ptr, png_const_bytep trans_alpha, int num_trans, png_const_color_16p trans_color);
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(168, png_uint_32, png_get_sCAL, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_FP_EXPORT(168, png_uint_32, png_get_sCAL, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr, int *unit, double *width, double *height)) */
extern png_uint_32 ( png_get_sCAL) (png_const_structrp png_ptr, png_const_inforp info_ptr, int *unit, double *width, double *height);
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(214, png_uint_32, png_get_sCAL_fixed, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(214, png_uint_32, png_get_sCAL_fixed, ### TO ### (png_const_structrp png_ptr, png_const_inforp info_ptr, int *unit, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(214, png_uint_32, png_get_sCAL_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, int *unit, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(214, png_uint_32, png_get_sCAL_fixed, (png_const_structrp png_ptr, png_const_inforp info_ptr, int *unit, ### TO ### png_fixed_point *width, png_fixed_point *height)) */
extern png_uint_32 ( png_get_sCAL_fixed) (png_const_structrp png_ptr, png_const_inforp info_ptr, int *unit, png_fixed_point *width, png_fixed_point *height);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(169, png_uint_32, png_get_sCAL_s, */
/* ### PREPENDING ### PNG_EXPORT(169, png_uint_32, png_get_sCAL_s, ### TO ### (png_const_structrp png_ptr, png_const_inforp info_ptr, int *unit, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(169, png_uint_32, png_get_sCAL_s, (png_const_structrp png_ptr, png_const_inforp info_ptr, int *unit, */
/* ### PREPENDING ### PNG_EXPORT(169, png_uint_32, png_get_sCAL_s, (png_const_structrp png_ptr, png_const_inforp info_ptr, int *unit, ### TO ### png_charpp swidth, png_charpp sheight)); */
extern png_uint_32 ( png_get_sCAL_s) (png_const_structrp png_ptr, png_const_inforp info_ptr, int *unit, png_charpp swidth, png_charpp sheight);
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(170, void, png_set_sCAL, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_FP_EXPORT(170, void, png_set_sCAL, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, int unit, double width, double height)) */
extern void ( png_set_sCAL) (png_const_structrp png_ptr, png_inforp info_ptr, int unit, double width, double height);
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(213, void, png_set_sCAL_fixed, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(213, void, png_set_sCAL_fixed, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, int unit, png_fixed_point width, */
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(213, void, png_set_sCAL_fixed, (png_const_structrp png_ptr, png_inforp info_ptr, int unit, png_fixed_point width, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(213, void, png_set_sCAL_fixed, (png_const_structrp png_ptr, png_inforp info_ptr, int unit, png_fixed_point width, ### TO ### png_fixed_point height)) */
extern void ( png_set_sCAL_fixed) (png_const_structrp png_ptr, png_inforp info_ptr, int unit, png_fixed_point width, png_fixed_point height);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(171, void, png_set_sCAL_s, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(171, void, png_set_sCAL_s, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, int unit, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(171, void, png_set_sCAL_s, (png_const_structrp png_ptr, png_inforp info_ptr, int unit, */
/* ### PREPENDING ### PNG_EXPORT(171, void, png_set_sCAL_s, (png_const_structrp png_ptr, png_inforp info_ptr, int unit, ### TO ### png_const_charp swidth, png_const_charp sheight)); */
extern void ( png_set_sCAL_s) (png_const_structrp png_ptr, png_inforp info_ptr, int unit, png_const_charp swidth, png_const_charp sheight);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(172, void, png_set_keep_unknown_chunks, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(172, void, png_set_keep_unknown_chunks, (png_structrp png_ptr, ### TO ### int keep, png_const_bytep chunk_list, int num_chunks)); */
extern void ( png_set_keep_unknown_chunks) (png_structrp png_ptr, int keep, png_const_bytep chunk_list, int num_chunks);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(173, int, png_handle_as_unknown, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(173, int, png_handle_as_unknown, (png_const_structrp png_ptr, ### TO ### png_const_bytep chunk_name)); */
extern int ( png_handle_as_unknown) (png_const_structrp png_ptr, png_const_bytep chunk_name);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(174, void, png_set_unknown_chunks, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(174, void, png_set_unknown_chunks, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_const_unknown_chunkp unknowns, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(174, void, png_set_unknown_chunks, (png_const_structrp png_ptr, png_inforp info_ptr, png_const_unknown_chunkp unknowns, */
/* ### PREPENDING ### PNG_EXPORT(174, void, png_set_unknown_chunks, (png_const_structrp png_ptr, png_inforp info_ptr, png_const_unknown_chunkp unknowns, ### TO ### int num_unknowns)); */
extern void ( png_set_unknown_chunks) (png_const_structrp png_ptr, png_inforp info_ptr, png_const_unknown_chunkp unknowns, int num_unknowns);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(175, void, png_set_unknown_chunk_location, */
/* ### PREPENDING ### PNG_EXPORT(175, void, png_set_unknown_chunk_location, ### TO ### (png_const_structrp png_ptr, png_inforp info_ptr, int chunk, int location)); */
extern void ( png_set_unknown_chunk_location) (png_const_structrp png_ptr, png_inforp info_ptr, int chunk, int location);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(176, int, png_get_unknown_chunks, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(176, int, png_get_unknown_chunks, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, png_unknown_chunkpp entries)); */
extern int ( png_get_unknown_chunks) (png_const_structrp png_ptr, png_inforp info_ptr, png_unknown_chunkpp entries);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(177, void, png_set_invalid, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(177, void, png_set_invalid, (png_const_structrp png_ptr, ### TO ### png_inforp info_ptr, int mask)); */
extern void ( png_set_invalid) (png_const_structrp png_ptr, png_inforp info_ptr, int mask);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(178, void, png_read_png, (png_structrp png_ptr, png_inforp info_ptr, */
/* ### PREPENDING ### PNG_EXPORT(178, void, png_read_png, (png_structrp png_ptr, png_inforp info_ptr, ### TO ### int transforms, png_voidp params)); */
extern void ( png_read_png) (png_structrp png_ptr, png_inforp info_ptr, int transforms, png_voidp params);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(179, void, png_write_png, (png_structrp png_ptr, png_inforp info_ptr, */
/* ### PREPENDING ### PNG_EXPORT(179, void, png_write_png, (png_structrp png_ptr, png_inforp info_ptr, ### TO ### int transforms, png_voidp params)); */
extern void ( png_write_png) (png_structrp png_ptr, png_inforp info_ptr, int transforms, png_voidp params);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(180, png_const_charp, png_get_copyright, */
/* ### PREPENDING ### PNG_EXPORT(180, png_const_charp, png_get_copyright, ### TO ### (png_const_structrp png_ptr)); */
extern png_const_charp ( png_get_copyright) (png_const_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(181, png_const_charp, png_get_header_ver, */
/* ### PREPENDING ### PNG_EXPORT(181, png_const_charp, png_get_header_ver, ### TO ### (png_const_structrp png_ptr)); */
extern png_const_charp ( png_get_header_ver) (png_const_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(182, png_const_charp, png_get_header_version, */
/* ### PREPENDING ### PNG_EXPORT(182, png_const_charp, png_get_header_version, ### TO ### (png_const_structrp png_ptr)); */
extern png_const_charp ( png_get_header_version) (png_const_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(183, png_const_charp, png_get_libpng_ver, */
/* ### PREPENDING ### PNG_EXPORT(183, png_const_charp, png_get_libpng_ver, ### TO ### (png_const_structrp png_ptr)); */
extern png_const_charp ( png_get_libpng_ver) (png_const_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(184, png_uint_32, png_permit_mng_features, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(184, png_uint_32, png_permit_mng_features, (png_structrp png_ptr, ### TO ### png_uint_32 mng_features_permitted)); */
extern png_uint_32 ( png_permit_mng_features) (png_structrp png_ptr, png_uint_32 mng_features_permitted);
enum { PNG_HANDLE_CHUNK_AS_DEFAULT = 0 };
enum { PNG_HANDLE_CHUNK_NEVER = 1 };
enum { PNG_HANDLE_CHUNK_IF_SAFE = 2 };
enum { PNG_HANDLE_CHUNK_ALWAYS = 3 };
enum { PNG_HANDLE_CHUNK_LAST = 4 };
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(186, void, png_set_user_limits, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(186, void, png_set_user_limits, (png_structrp png_ptr, ### TO ### png_uint_32 user_width_max, png_uint_32 user_height_max)); */
extern void ( png_set_user_limits) (png_structrp png_ptr, png_uint_32 user_width_max, png_uint_32 user_height_max);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(187, png_uint_32, png_get_user_width_max, */
/* ### PREPENDING ### PNG_EXPORT(187, png_uint_32, png_get_user_width_max, ### TO ### (png_const_structrp png_ptr)); */
extern png_uint_32 ( png_get_user_width_max) (png_const_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(188, png_uint_32, png_get_user_height_max, */
/* ### PREPENDING ### PNG_EXPORT(188, png_uint_32, png_get_user_height_max, ### TO ### (png_const_structrp png_ptr)); */
extern png_uint_32 ( png_get_user_height_max) (png_const_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(189, void, png_set_chunk_cache_max, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(189, void, png_set_chunk_cache_max, (png_structrp png_ptr, ### TO ### png_uint_32 user_chunk_cache_max)); */
extern void ( png_set_chunk_cache_max) (png_structrp png_ptr, png_uint_32 user_chunk_cache_max);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(190, png_uint_32, png_get_chunk_cache_max, */
/* ### PREPENDING ### PNG_EXPORT(190, png_uint_32, png_get_chunk_cache_max, ### TO ### (png_const_structrp png_ptr)); */
extern png_uint_32 ( png_get_chunk_cache_max) (png_const_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(191, void, png_set_chunk_malloc_max, (png_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(191, void, png_set_chunk_malloc_max, (png_structrp png_ptr, ### TO ### png_alloc_size_t user_chunk_cache_max)); */
extern void ( png_set_chunk_malloc_max) (png_structrp png_ptr, png_alloc_size_t user_chunk_cache_max);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(192, png_alloc_size_t, png_get_chunk_malloc_max, */
/* ### PREPENDING ### PNG_EXPORT(192, png_alloc_size_t, png_get_chunk_malloc_max, ### TO ### (png_const_structrp png_ptr)); */
extern png_alloc_size_t ( png_get_chunk_malloc_max) (png_const_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(193, png_uint_32, png_get_pixels_per_inch, */
/* ### PREPENDING ### PNG_EXPORT(193, png_uint_32, png_get_pixels_per_inch, ### TO ### (png_const_structrp png_ptr, png_const_inforp info_ptr)); */
extern png_uint_32 ( png_get_pixels_per_inch) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(194, png_uint_32, png_get_x_pixels_per_inch, */
/* ### PREPENDING ### PNG_EXPORT(194, png_uint_32, png_get_x_pixels_per_inch, ### TO ### (png_const_structrp png_ptr, png_const_inforp info_ptr)); */
extern png_uint_32 ( png_get_x_pixels_per_inch) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(195, png_uint_32, png_get_y_pixels_per_inch, */
/* ### PREPENDING ### PNG_EXPORT(195, png_uint_32, png_get_y_pixels_per_inch, ### TO ### (png_const_structrp png_ptr, png_const_inforp info_ptr)); */
extern png_uint_32 ( png_get_y_pixels_per_inch) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(196, float, png_get_x_offset_inches, */
/* ### PREPENDING ### PNG_FP_EXPORT(196, float, png_get_x_offset_inches, ### TO ### (png_const_structrp png_ptr, png_const_inforp info_ptr)) */
extern float ( png_get_x_offset_inches) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(211, png_fixed_point, png_get_x_offset_inches_fixed, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(211, png_fixed_point, png_get_x_offset_inches_fixed, ### TO ### (png_const_structrp png_ptr, png_const_inforp info_ptr)) */
extern png_fixed_point ( png_get_x_offset_inches_fixed) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_FP_EXPORT ### IN LINE ### PNG_FP_EXPORT(197, float, png_get_y_offset_inches, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_FP_EXPORT(197, float, png_get_y_offset_inches, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr)) */
extern float ( png_get_y_offset_inches) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_FIXED_EXPORT ### IN LINE ### PNG_FIXED_EXPORT(212, png_fixed_point, png_get_y_offset_inches_fixed, */
/* ### PREPENDING ### PNG_FIXED_EXPORT(212, png_fixed_point, png_get_y_offset_inches_fixed, ### TO ### (png_const_structrp png_ptr, png_const_inforp info_ptr)) */
extern png_fixed_point ( png_get_y_offset_inches_fixed) (png_const_structrp png_ptr, png_const_inforp info_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(198, png_uint_32, png_get_pHYs_dpi, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(198, png_uint_32, png_get_pHYs_dpi, (png_const_structrp png_ptr, ### TO ### png_const_inforp info_ptr, png_uint_32 *res_x, png_uint_32 *res_y, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(198, png_uint_32, png_get_pHYs_dpi, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 *res_x, png_uint_32 *res_y, */
/* ### PREPENDING ### PNG_EXPORT(198, png_uint_32, png_get_pHYs_dpi, (png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 *res_x, png_uint_32 *res_y, ### TO ### int *unit_type)); */
extern png_uint_32 ( png_get_pHYs_dpi) (png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 *res_x, png_uint_32 *res_y, int *unit_type);
extern png_uint_32 ( png_get_io_state) (png_const_structrp png_ptr);
/* ### INCOMPLETE ARG MACRO ### PNG_REMOVED ### IN LINE ### PNG_REMOVED(200, png_const_bytep, png_get_io_chunk_name, (png_structrp png_ptr), */
/* ### PREPENDING ### PNG_REMOVED(200, png_const_bytep, png_get_io_chunk_name, (png_structrp png_ptr), ### TO ### PNG_DEPRECATED) */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(216, png_uint_32, png_get_io_chunk_type, */
/* ### PREPENDING ### PNG_EXPORT(216, png_uint_32, png_get_io_chunk_type, ### TO ### (png_const_structrp png_ptr)); */
extern png_uint_32 ( png_get_io_chunk_type) (png_const_structrp png_ptr);
enum { PNG_IO_NONE = 0 };
enum { PNG_IO_READING = 1 };
enum { PNG_IO_WRITING = 2 };
enum { PNG_IO_SIGNATURE = 16 };
enum { PNG_IO_CHUNK_HDR = 32 };
enum { PNG_IO_CHUNK_DATA = 64 };
enum { PNG_IO_CHUNK_CRC = 128 };
enum { PNG_IO_MASK_OP = 15 };
enum { PNG_IO_MASK_LOC = 240 };
enum { PNG_INTERLACE_ADAM7_PASSES = 7 };
extern png_uint_32 ( png_get_uint_32) (png_const_bytep buf);
extern png_uint_16 ( png_get_uint_16) (png_const_bytep buf);
extern png_int_32 ( png_get_int_32) (png_const_bytep buf);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(204, png_uint_32, png_get_uint_31, (png_const_structrp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(204, png_uint_32, png_get_uint_31, (png_const_structrp png_ptr, ### TO ### png_const_bytep buf)); */
extern png_uint_32 ( png_get_uint_31) (png_const_structrp png_ptr, png_const_bytep buf);
extern void ( png_save_uint_32) (png_bytep buf, png_uint_32 i);
extern void ( png_save_int_32) (png_bytep buf, png_int_32 i);
extern void ( png_save_uint_16) (png_bytep buf, unsigned int i);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(242, void, png_set_check_for_invalid_index, */
/* ### PREPENDING ### PNG_EXPORT(242, void, png_set_check_for_invalid_index, ### TO ### (png_structrp png_ptr, int allowed)); */
extern void ( png_set_check_for_invalid_index) (png_structrp png_ptr, int allowed);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(243, int, png_get_palette_max, (png_const_structp png_ptr, */
/* ### PREPENDING ### PNG_EXPORT(243, int, png_get_palette_max, (png_const_structp png_ptr, ### TO ### png_const_infop info_ptr)); */
extern int ( png_get_palette_max) (png_const_structp png_ptr, png_const_infop info_ptr);
enum { PNG_IMAGE_VERSION = 1 };
typedef struct png_control *png_controlp;
typedef struct {
	png_controlp opaque;
	png_uint_32 version;
	png_uint_32 width;
	png_uint_32 height;
	png_uint_32 format;
	png_uint_32 flags;
	png_uint_32 colormap_entries;
	enum { PNG_IMAGE_WARNING = 1 };
	enum { PNG_IMAGE_ERROR = 2 };
	png_uint_32 warning_or_error;
	char message[64];
} png_image, *png_imagep;
enum { PNG_FORMAT_FLAG_ALPHA = 1 };
enum { PNG_FORMAT_FLAG_COLOR = 2 };
enum { PNG_FORMAT_FLAG_LINEAR = 4 };
enum { PNG_FORMAT_FLAG_COLORMAP = 8 };
enum { PNG_FORMAT_FLAG_BGR = 16 };
enum { PNG_FORMAT_FLAG_AFIRST = 32 };
enum { PNG_FORMAT_FLAG_ASSOCIATED_ALPHA = 64 };
enum { PNG_FORMAT_GRAY = 0 };
enum { PNG_FORMAT_GA = 1 };
enum { PNG_FORMAT_AG = 33 };
enum { PNG_FORMAT_RGB = 2 };
enum { PNG_FORMAT_BGR = 18 };
enum { PNG_FORMAT_RGBA = 3 };
enum { PNG_FORMAT_ARGB = 35 };
enum { PNG_FORMAT_BGRA = 19 };
enum { PNG_FORMAT_ABGR = 51 };
enum { PNG_FORMAT_LINEAR_Y = 4 };
enum { PNG_FORMAT_LINEAR_Y_ALPHA = 5 };
enum { PNG_FORMAT_LINEAR_RGB = 6 };
enum { PNG_FORMAT_LINEAR_RGB_ALPHA = 7 };
enum { PNG_FORMAT_RGB_COLORMAP = 10 };
enum { PNG_FORMAT_BGR_COLORMAP = 26 };
enum { PNG_FORMAT_RGBA_COLORMAP = 11 };
enum { PNG_FORMAT_ARGB_COLORMAP = 43 };
enum { PNG_FORMAT_BGRA_COLORMAP = 27 };
enum { PNG_FORMAT_ABGR_COLORMAP = 59 };
enum { PNG_IMAGE_FLAG_COLORSPACE_NOT_sRGB = 1 };
enum { PNG_IMAGE_FLAG_FAST = 2 };
enum { PNG_IMAGE_FLAG_16BIT_sRGB = 4 };
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(234, int, png_image_begin_read_from_file, (png_imagep image, */
/* ### PREPENDING ### PNG_EXPORT(234, int, png_image_begin_read_from_file, (png_imagep image, ### TO ### const char *file_name)); */
extern int ( png_image_begin_read_from_file) (png_imagep image, const char *file_name);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(235, int, png_image_begin_read_from_stdio, (png_imagep image, */
/* ### PREPENDING ### PNG_EXPORT(235, int, png_image_begin_read_from_stdio, (png_imagep image, ### TO ### FILE* file)); */
extern int ( png_image_begin_read_from_stdio) (png_imagep image, FILE* file);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(236, int, png_image_begin_read_from_memory, (png_imagep image, */
/* ### PREPENDING ### PNG_EXPORT(236, int, png_image_begin_read_from_memory, (png_imagep image, ### TO ### png_const_voidp memory, size_t size)); */
extern int ( png_image_begin_read_from_memory) (png_imagep image, png_const_voidp memory, size_t size);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(237, int, png_image_finish_read, (png_imagep image, */
/* ### PREPENDING ### PNG_EXPORT(237, int, png_image_finish_read, (png_imagep image, ### TO ### png_const_colorp background, void *buffer, png_int_32 row_stride, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(237, int, png_image_finish_read, (png_imagep image, png_const_colorp background, void *buffer, png_int_32 row_stride, */
/* ### PREPENDING ### PNG_EXPORT(237, int, png_image_finish_read, (png_imagep image, png_const_colorp background, void *buffer, png_int_32 row_stride, ### TO ### void *colormap)); */
extern int ( png_image_finish_read) (png_imagep image, png_const_colorp background, void *buffer, png_int_32 row_stride, void *colormap);
extern void ( png_image_free) (png_imagep image);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(239, int, png_image_write_to_file, (png_imagep image, */
/* ### PREPENDING ### PNG_EXPORT(239, int, png_image_write_to_file, (png_imagep image, ### TO ### const char *file, int convert_to_8bit, const void *buffer, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(239, int, png_image_write_to_file, (png_imagep image, const char *file, int convert_to_8bit, const void *buffer, */
/* ### PREPENDING ### PNG_EXPORT(239, int, png_image_write_to_file, (png_imagep image, const char *file, int convert_to_8bit, const void *buffer, ### TO ### png_int_32 row_stride, const void *colormap)); */
extern int ( png_image_write_to_file) (png_imagep image, const char *file, int convert_to_8bit, const void *buffer, png_int_32 row_stride, const void *colormap);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(240, int, png_image_write_to_stdio, (png_imagep image, FILE *file, */
/* ### PREPENDING ### PNG_EXPORT(240, int, png_image_write_to_stdio, (png_imagep image, FILE *file, ### TO ### int convert_to_8_bit, const void *buffer, png_int_32 row_stride, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(240, int, png_image_write_to_stdio, (png_imagep image, FILE *file, int convert_to_8_bit, const void *buffer, png_int_32 row_stride, */
/* ### PREPENDING ### PNG_EXPORT(240, int, png_image_write_to_stdio, (png_imagep image, FILE *file, int convert_to_8_bit, const void *buffer, png_int_32 row_stride, ### TO ### const void *colormap)); */
extern int ( png_image_write_to_stdio) (png_imagep image, FILE *file, int convert_to_8_bit, const void *buffer, png_int_32 row_stride, const void *colormap);
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(245, int, png_image_write_to_memory, (png_imagep image, void *memory, */
/* ### PREPENDING ### PNG_EXPORT(245, int, png_image_write_to_memory, (png_imagep image, void *memory, ### TO ### png_alloc_size_t * PNG_RESTRICT memory_bytes, int convert_to_8_bit, */
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(245, int, png_image_write_to_memory, (png_imagep image, void *memory, png_alloc_size_t *  memory_bytes, int convert_to_8_bit, */
/* ### PREPENDING ### PNG_EXPORT(245, int, png_image_write_to_memory, (png_imagep image, void *memory, png_alloc_size_t *  memory_bytes, int convert_to_8_bit, ### TO ### const void *buffer, png_int_32 row_stride, const void *colormap)); */
extern int ( png_image_write_to_memory) (png_imagep image, void *memory, png_alloc_size_t * memory_bytes, int convert_to_8_bit, const void *buffer, png_int_32 row_stride, const void *colormap);
enum { PNG_MAXIMUM_INFLATE_WINDOW = 2 };
enum { PNG_SKIP_sRGB_CHECK_PROFILE = 4 };
enum { PNG_IGNORE_ADLER32 = 8 };
enum { PNG_OPTION_NEXT = 12 };
enum { PNG_OPTION_UNSET = 0 };
enum { PNG_OPTION_INVALID = 1 };
enum { PNG_OPTION_OFF = 2 };
enum { PNG_OPTION_ON = 3 };
/* ### INCOMPLETE ARG MACRO ### PNG_EXPORT ### IN LINE ### PNG_EXPORT(244, int, png_set_option, (png_structrp png_ptr, int option, */
/* ### PREPENDING ### PNG_EXPORT(244, int, png_set_option, (png_structrp png_ptr, int option, ### TO ### int onoff)); */
extern int ( png_set_option) (png_structrp png_ptr, int option, int onoff);
/* + END   /usr/include/png.h */
]]
return require 'ffi.load' 'png'
