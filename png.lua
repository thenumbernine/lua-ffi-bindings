local ffi = require 'ffi'

-- comments

--[[
/* #define PNG_LIBPNG_VER_STRING "1.6.47" ### string, not number "\"1.6.47\"" */
/* #define PNG_HEADER_VERSION_STRING " libpng version " PNG_LIBPNG_VER_STRING "\n" ### string, not number "\" libpng version \" PNG_LIBPNG_VER_STRING \"\\n\"" */
/* #define png_libpng_ver png_get_header_ver(NULL) ### string, not number "png_get_header_ver(NULL)" */
/* #define PNG_UINT_31_MAX ((png_uint_32)0x7fffffffL) ### string, not number "((png_uint_32)0x7fffffffL)" */
/* #define PNG_UINT_32_MAX ((png_uint_32)(-1)) ### string, not number "((png_uint_32)(-1))" */
/* #define PNG_SIZE_MAX ((size_t)(-1)) ### string, not number "((size_t)(-1))" */
/* #define PNG_FP_MAX  ((png_fixed_point)0x7fffffffL) ### string, not number "((png_fixed_point)0x7fffffffL)" */
/* #define PNG_FP_MIN  (-PNG_FP_MAX) ### string, not number "(-PNG_FP_MAX)" */
/* #define PNG_GAMMA_THRESHOLD (PNG_GAMMA_THRESHOLD_FIXED*.00001) ### string, not number "(PNG_GAMMA_THRESHOLD_FIXED*.00001)" */
--]]

-- typedefs

require 'ffi.req' 'c.limits'
require 'ffi.req' 'c.stddef'
require 'ffi.req' 'c.stdio'
require 'ffi.req' 'c.setjmp'
require 'ffi.req' 'c.time'

ffi.cdef[[
typedef unsigned char png_byte;
typedef short png_int_16;
typedef unsigned short png_uint_16;
typedef int png_int_32;
typedef unsigned int png_uint_32;
typedef size_t png_size_t;
typedef ptrdiff_t png_ptrdiff_t;
typedef size_t png_alloc_size_t;
typedef png_int_32 png_fixed_point;
typedef void *png_voidp;
typedef void const *png_const_voidp;
typedef png_byte *png_bytep;
typedef png_byte const *png_const_bytep;
typedef png_uint_32 *png_uint_32p;
typedef png_uint_32 const *png_const_uint_32p;
typedef png_int_32 *png_int_32p;
typedef png_int_32 const *png_const_int_32p;
typedef png_uint_16 *png_uint_16p;
typedef png_uint_16 const *png_const_uint_16p;
typedef png_int_16 *png_int_16p;
typedef png_int_16 const *png_const_int_16p;
typedef char *png_charp;
typedef char const *png_const_charp;
typedef png_fixed_point *png_fixed_point_p;
typedef png_fixed_point const *png_const_fixed_point_p;
typedef size_t *png_size_tp;
typedef size_t const *png_const_size_tp;
typedef FILE *png_FILE_p;
typedef double *png_doublep;
typedef double const *png_const_doublep;
typedef png_byte **png_bytepp;
typedef png_uint_32 **png_uint_32pp;
typedef png_int_32 **png_int_32pp;
typedef png_uint_16 **png_uint_16pp;
typedef png_int_16 **png_int_16pp;
typedef char const **png_const_charpp;
typedef char **png_charpp;
typedef png_fixed_point **png_fixed_point_pp;
typedef double **png_doublepp;
typedef char ***png_charppp;
typedef char *png_libpng_version_1_6_47;
typedef struct png_struct_def png_struct;
typedef png_struct const *png_const_structp;
typedef png_struct *png_structp;
typedef png_struct **png_structpp;
typedef struct png_info_def png_info;
typedef png_info *png_infop;
typedef png_info const *png_const_infop;
typedef png_info **png_infopp;
typedef png_struct *restrict png_structrp;
typedef png_struct const *restrict png_const_structrp;
typedef png_info *restrict png_inforp;
typedef png_info const *restrict png_const_inforp;
typedef struct png_color_struct {
	png_byte red;
	png_byte green;
	png_byte blue;
} png_color;
typedef png_color *png_colorp;
typedef png_color const *png_const_colorp;
typedef png_color **png_colorpp;
typedef struct png_color_16_struct {
	png_byte index;
	png_uint_16 red;
	png_uint_16 green;
	png_uint_16 blue;
	png_uint_16 gray;
} png_color_16;
typedef png_color_16 *png_color_16p;
typedef png_color_16 const *png_const_color_16p;
typedef png_color_16 **png_color_16pp;
typedef struct png_color_8_struct {
	png_byte red;
	png_byte green;
	png_byte blue;
	png_byte gray;
	png_byte alpha;
} png_color_8;
typedef png_color_8 *png_color_8p;
typedef png_color_8 const *png_const_color_8p;
typedef png_color_8 **png_color_8pp;
typedef struct png_sPLT_entry_struct {
	png_uint_16 red;
	png_uint_16 green;
	png_uint_16 blue;
	png_uint_16 alpha;
	png_uint_16 frequency;
} png_sPLT_entry;
typedef png_sPLT_entry *png_sPLT_entryp;
typedef png_sPLT_entry const *png_const_sPLT_entryp;
typedef png_sPLT_entry **png_sPLT_entrypp;
typedef struct png_sPLT_struct {
	png_charp name;
	png_byte depth;
	png_sPLT_entryp entries;
	png_int_32 nentries;
} png_sPLT_t;
typedef png_sPLT_t *png_sPLT_tp;
typedef png_sPLT_t const *png_const_sPLT_tp;
typedef png_sPLT_t **png_sPLT_tpp;
typedef struct png_text_struct {
	int compression;
	png_charp key;
	png_charp text;
	size_t text_length;
	size_t itxt_length;
	png_charp lang;
	png_charp lang_key;
} png_text;
typedef png_text *png_textp;
typedef png_text const *png_const_textp;
typedef png_text **png_textpp;
typedef struct png_time_struct {
	png_uint_16 year;
	png_byte month;
	png_byte day;
	png_byte hour;
	png_byte minute;
	png_byte second;
} png_time;
typedef png_time *png_timep;
typedef png_time const *png_const_timep;
typedef png_time **png_timepp;
typedef struct png_unknown_chunk_t {
	png_byte name[5];
	png_byte *data;
	size_t size;
	png_byte location;
} png_unknown_chunk;
typedef png_unknown_chunk *png_unknown_chunkp;
typedef png_unknown_chunk const *png_const_unknown_chunkp;
typedef png_unknown_chunk **png_unknown_chunkpp;
typedef struct png_row_info_struct {
	png_uint_32 width;
	size_t rowbytes;
	png_byte color_type;
	png_byte bit_depth;
	png_byte channels;
	png_byte pixel_depth;
} png_row_info;
typedef png_row_info *png_row_infop;
typedef png_row_info **png_row_infopp;
typedef void (*png_error_ptr)(png_structp, png_const_charp);
typedef void (*png_rw_ptr)(png_structp, png_bytep, size_t);
typedef void (*png_flush_ptr)(png_structp);
typedef void (*png_read_status_ptr)(png_structp, png_uint_32, int);
typedef void (*png_write_status_ptr)(png_structp, png_uint_32, int);
typedef void (*png_progressive_info_ptr)(png_structp, png_infop);
typedef void (*png_progressive_end_ptr)(png_structp, png_infop);
typedef void (*png_progressive_row_ptr)(png_structp, png_bytep, png_uint_32, int);
typedef void (*png_user_transform_ptr)(png_structp, png_row_infop, png_bytep);
typedef int (*png_user_chunk_ptr)(png_structp, png_unknown_chunkp);
typedef void (*png_longjmp_ptr)(jmp_buf, int);
typedef png_voidp (*png_malloc_ptr)(png_structp, png_alloc_size_t);
typedef void (*png_free_ptr)(png_structp, png_voidp);
typedef struct png_control *png_controlp;
typedef struct {
	png_controlp opaque;
	png_uint_32 version;
	png_uint_32 width;
	png_uint_32 height;
	png_uint_32 format;
	png_uint_32 flags;
	png_uint_32 colormap_entries;
	png_uint_32 warning_or_error;
	char message[64];
} png_image, *png_imagep;
]]

local wrapper
wrapper = require 'ffi.libwrapper'{
	lib = require 'ffi.load' 'png',
	init = {

		-- enums

		PNG_H = 1,
		PNG_LIBPNG_VER_SHAREDLIB = 16,
		PNG_LIBPNG_VER_SONUM = 16,
		PNG_LIBPNG_VER_DLLNUM = 16,
		PNG_LIBPNG_VER_MAJOR = 1,
		PNG_LIBPNG_VER_MINOR = 6,
		PNG_LIBPNG_VER_RELEASE = 47,
		PNG_LIBPNG_VER_BUILD = 0,
		PNG_LIBPNG_BUILD_ALPHA = 1,
		PNG_LIBPNG_BUILD_BETA = 2,
		PNG_LIBPNG_BUILD_RC = 3,
		PNG_LIBPNG_BUILD_STABLE = 4,
		PNG_LIBPNG_BUILD_RELEASE_STATUS_MASK = 7,
		PNG_LIBPNG_BUILD_PATCH = 8,
		PNG_LIBPNG_BUILD_PRIVATE = 16,
		PNG_LIBPNG_BUILD_SPECIAL = 32,
		PNG_LIBPNG_BUILD_BASE_TYPE = 4,
		PNG_LIBPNG_VER = 10647,
		PNGLCONF_H = 1,
		PNG_16BIT_SUPPORTED = 1,
		PNG_ALIGNED_MEMORY_SUPPORTED = 1,
		PNG_BENIGN_ERRORS_SUPPORTED = 1,
		PNG_BENIGN_READ_ERRORS_SUPPORTED = 1,
		PNG_BUILD_GRAYSCALE_PALETTE_SUPPORTED = 1,
		PNG_CHECK_FOR_INVALID_INDEX_SUPPORTED = 1,
		PNG_COLORSPACE_SUPPORTED = 1,
		PNG_CONSOLE_IO_SUPPORTED = 1,
		PNG_CONVERT_tIME_SUPPORTED = 1,
		PNG_EASY_ACCESS_SUPPORTED = 1,
		PNG_ERROR_TEXT_SUPPORTED = 1,
		PNG_FIXED_POINT_SUPPORTED = 1,
		PNG_FLOATING_ARITHMETIC_SUPPORTED = 1,
		PNG_FLOATING_POINT_SUPPORTED = 1,
		PNG_FORMAT_AFIRST_SUPPORTED = 1,
		PNG_FORMAT_BGR_SUPPORTED = 1,
		PNG_GAMMA_SUPPORTED = 1,
		PNG_GET_PALETTE_MAX_SUPPORTED = 1,
		PNG_HANDLE_AS_UNKNOWN_SUPPORTED = 1,
		PNG_INCH_CONVERSIONS_SUPPORTED = 1,
		PNG_INFO_IMAGE_SUPPORTED = 1,
		PNG_IO_STATE_SUPPORTED = 1,
		PNG_MNG_FEATURES_SUPPORTED = 1,
		PNG_POINTER_INDEXING_SUPPORTED = 1,
		PNG_PROGRESSIVE_READ_SUPPORTED = 1,
		PNG_READ_16BIT_SUPPORTED = 1,
		PNG_READ_ALPHA_MODE_SUPPORTED = 1,
		PNG_READ_ANCILLARY_CHUNKS_SUPPORTED = 1,
		PNG_READ_BACKGROUND_SUPPORTED = 1,
		PNG_READ_BGR_SUPPORTED = 1,
		PNG_READ_CHECK_FOR_INVALID_INDEX_SUPPORTED = 1,
		PNG_READ_COMPOSITE_NODIV_SUPPORTED = 1,
		PNG_READ_COMPRESSED_TEXT_SUPPORTED = 1,
		PNG_READ_EXPAND_16_SUPPORTED = 1,
		PNG_READ_EXPAND_SUPPORTED = 1,
		PNG_READ_FILLER_SUPPORTED = 1,
		PNG_READ_GAMMA_SUPPORTED = 1,
		PNG_READ_GET_PALETTE_MAX_SUPPORTED = 1,
		PNG_READ_GRAY_TO_RGB_SUPPORTED = 1,
		PNG_READ_INTERLACING_SUPPORTED = 1,
		PNG_READ_INT_FUNCTIONS_SUPPORTED = 1,
		PNG_READ_INVERT_ALPHA_SUPPORTED = 1,
		PNG_READ_INVERT_SUPPORTED = 1,
		PNG_READ_OPT_PLTE_SUPPORTED = 1,
		PNG_READ_PACKSWAP_SUPPORTED = 1,
		PNG_READ_PACK_SUPPORTED = 1,
		PNG_READ_QUANTIZE_SUPPORTED = 1,
		PNG_READ_RGB_TO_GRAY_SUPPORTED = 1,
		PNG_READ_SCALE_16_TO_8_SUPPORTED = 1,
		PNG_READ_SHIFT_SUPPORTED = 1,
		PNG_READ_STRIP_16_TO_8_SUPPORTED = 1,
		PNG_READ_STRIP_ALPHA_SUPPORTED = 1,
		PNG_READ_SUPPORTED = 1,
		PNG_READ_SWAP_ALPHA_SUPPORTED = 1,
		PNG_READ_SWAP_SUPPORTED = 1,
		PNG_READ_TEXT_SUPPORTED = 1,
		PNG_READ_TRANSFORMS_SUPPORTED = 1,
		PNG_READ_UNKNOWN_CHUNKS_SUPPORTED = 1,
		PNG_READ_USER_CHUNKS_SUPPORTED = 1,
		PNG_READ_USER_TRANSFORM_SUPPORTED = 1,
		PNG_READ_bKGD_SUPPORTED = 1,
		PNG_READ_cHRM_SUPPORTED = 1,
		PNG_READ_cICP_SUPPORTED = 1,
		PNG_READ_cLLI_SUPPORTED = 1,
		PNG_READ_eXIf_SUPPORTED = 1,
		PNG_READ_gAMA_SUPPORTED = 1,
		PNG_READ_hIST_SUPPORTED = 1,
		PNG_READ_iCCP_SUPPORTED = 1,
		PNG_READ_iTXt_SUPPORTED = 1,
		PNG_READ_mDCV_SUPPORTED = 1,
		PNG_READ_oFFs_SUPPORTED = 1,
		PNG_READ_pCAL_SUPPORTED = 1,
		PNG_READ_pHYs_SUPPORTED = 1,
		PNG_READ_sBIT_SUPPORTED = 1,
		PNG_READ_sCAL_SUPPORTED = 1,
		PNG_READ_sPLT_SUPPORTED = 1,
		PNG_READ_sRGB_SUPPORTED = 1,
		PNG_READ_tEXt_SUPPORTED = 1,
		PNG_READ_tIME_SUPPORTED = 1,
		PNG_READ_tRNS_SUPPORTED = 1,
		PNG_READ_zTXt_SUPPORTED = 1,
		PNG_SAVE_INT_32_SUPPORTED = 1,
		PNG_SAVE_UNKNOWN_CHUNKS_SUPPORTED = 1,
		PNG_SEQUENTIAL_READ_SUPPORTED = 1,
		PNG_SETJMP_SUPPORTED = 1,
		PNG_SET_OPTION_SUPPORTED = 1,
		PNG_SET_UNKNOWN_CHUNKS_SUPPORTED = 1,
		PNG_SET_USER_LIMITS_SUPPORTED = 1,
		PNG_SIMPLIFIED_READ_AFIRST_SUPPORTED = 1,
		PNG_SIMPLIFIED_READ_BGR_SUPPORTED = 1,
		PNG_SIMPLIFIED_READ_SUPPORTED = 1,
		PNG_SIMPLIFIED_WRITE_AFIRST_SUPPORTED = 1,
		PNG_SIMPLIFIED_WRITE_BGR_SUPPORTED = 1,
		PNG_SIMPLIFIED_WRITE_STDIO_SUPPORTED = 1,
		PNG_SIMPLIFIED_WRITE_SUPPORTED = 1,
		PNG_STDIO_SUPPORTED = 1,
		PNG_STORE_UNKNOWN_CHUNKS_SUPPORTED = 1,
		PNG_TEXT_SUPPORTED = 1,
		PNG_TIME_RFC1123_SUPPORTED = 1,
		PNG_UNKNOWN_CHUNKS_SUPPORTED = 1,
		PNG_USER_CHUNKS_SUPPORTED = 1,
		PNG_USER_LIMITS_SUPPORTED = 1,
		PNG_USER_MEM_SUPPORTED = 1,
		PNG_USER_TRANSFORM_INFO_SUPPORTED = 1,
		PNG_USER_TRANSFORM_PTR_SUPPORTED = 1,
		PNG_WARNINGS_SUPPORTED = 1,
		PNG_WRITE_16BIT_SUPPORTED = 1,
		PNG_WRITE_ANCILLARY_CHUNKS_SUPPORTED = 1,
		PNG_WRITE_BGR_SUPPORTED = 1,
		PNG_WRITE_CHECK_FOR_INVALID_INDEX_SUPPORTED = 1,
		PNG_WRITE_COMPRESSED_TEXT_SUPPORTED = 1,
		PNG_WRITE_CUSTOMIZE_COMPRESSION_SUPPORTED = 1,
		PNG_WRITE_CUSTOMIZE_ZTXT_COMPRESSION_SUPPORTED = 1,
		PNG_WRITE_FILLER_SUPPORTED = 1,
		PNG_WRITE_FILTER_SUPPORTED = 1,
		PNG_WRITE_FLUSH_SUPPORTED = 1,
		PNG_WRITE_GET_PALETTE_MAX_SUPPORTED = 1,
		PNG_WRITE_INTERLACING_SUPPORTED = 1,
		PNG_WRITE_INT_FUNCTIONS_SUPPORTED = 1,
		PNG_WRITE_INVERT_ALPHA_SUPPORTED = 1,
		PNG_WRITE_INVERT_SUPPORTED = 1,
		PNG_WRITE_OPTIMIZE_CMF_SUPPORTED = 1,
		PNG_WRITE_PACKSWAP_SUPPORTED = 1,
		PNG_WRITE_PACK_SUPPORTED = 1,
		PNG_WRITE_SHIFT_SUPPORTED = 1,
		PNG_WRITE_SUPPORTED = 1,
		PNG_WRITE_SWAP_ALPHA_SUPPORTED = 1,
		PNG_WRITE_SWAP_SUPPORTED = 1,
		PNG_WRITE_TEXT_SUPPORTED = 1,
		PNG_WRITE_TRANSFORMS_SUPPORTED = 1,
		PNG_WRITE_UNKNOWN_CHUNKS_SUPPORTED = 1,
		PNG_WRITE_USER_TRANSFORM_SUPPORTED = 1,
		PNG_WRITE_WEIGHTED_FILTER_SUPPORTED = 1,
		PNG_WRITE_bKGD_SUPPORTED = 1,
		PNG_WRITE_cHRM_SUPPORTED = 1,
		PNG_WRITE_cICP_SUPPORTED = 1,
		PNG_WRITE_cLLI_SUPPORTED = 1,
		PNG_WRITE_eXIf_SUPPORTED = 1,
		PNG_WRITE_gAMA_SUPPORTED = 1,
		PNG_WRITE_hIST_SUPPORTED = 1,
		PNG_WRITE_iCCP_SUPPORTED = 1,
		PNG_WRITE_iTXt_SUPPORTED = 1,
		PNG_WRITE_mDCV_SUPPORTED = 1,
		PNG_WRITE_oFFs_SUPPORTED = 1,
		PNG_WRITE_pCAL_SUPPORTED = 1,
		PNG_WRITE_pHYs_SUPPORTED = 1,
		PNG_WRITE_sBIT_SUPPORTED = 1,
		PNG_WRITE_sCAL_SUPPORTED = 1,
		PNG_WRITE_sPLT_SUPPORTED = 1,
		PNG_WRITE_sRGB_SUPPORTED = 1,
		PNG_WRITE_tEXt_SUPPORTED = 1,
		PNG_WRITE_tIME_SUPPORTED = 1,
		PNG_WRITE_tRNS_SUPPORTED = 1,
		PNG_WRITE_zTXt_SUPPORTED = 1,
		PNG_bKGD_SUPPORTED = 1,
		PNG_cHRM_SUPPORTED = 1,
		PNG_cICP_SUPPORTED = 1,
		PNG_cLLI_SUPPORTED = 1,
		PNG_eXIf_SUPPORTED = 1,
		PNG_gAMA_SUPPORTED = 1,
		PNG_hIST_SUPPORTED = 1,
		PNG_iCCP_SUPPORTED = 1,
		PNG_iTXt_SUPPORTED = 1,
		PNG_mDCV_SUPPORTED = 1,
		PNG_oFFs_SUPPORTED = 1,
		PNG_pCAL_SUPPORTED = 1,
		PNG_pHYs_SUPPORTED = 1,
		PNG_sBIT_SUPPORTED = 1,
		PNG_sCAL_SUPPORTED = 1,
		PNG_sPLT_SUPPORTED = 1,
		PNG_sRGB_SUPPORTED = 1,
		PNG_tEXt_SUPPORTED = 1,
		PNG_tIME_SUPPORTED = 1,
		PNG_tRNS_SUPPORTED = 1,
		PNG_zTXt_SUPPORTED = 1,
		PNG_API_RULE = 0,
		PNG_DEFAULT_READ_MACROS = 1,
		PNG_GAMMA_THRESHOLD_FIXED = 5000,
		PNG_IDAT_READ_SIZE = 0,
		PNG_INFLATE_BUF_SIZE = 1024,
		PNG_LINKAGE_API = 0,
		PNG_LINKAGE_CALLBACK = 0,
		PNG_LINKAGE_DATA = 0,
		PNG_LINKAGE_FUNCTION = 0,
		PNG_MAX_GAMMA_8 = 11,
		PNG_QUANTIZE_BLUE_BITS = 5,
		PNG_QUANTIZE_GREEN_BITS = 5,
		PNG_QUANTIZE_RED_BITS = 5,
		PNG_TEXT_Z_DEFAULT_COMPRESSION = -1,
		PNG_TEXT_Z_DEFAULT_STRATEGY = 0,
		PNG_USER_CHUNK_CACHE_MAX = 1000,
		PNG_USER_CHUNK_MALLOC_MAX = 8000000,
		PNG_USER_HEIGHT_MAX = 1000000,
		PNG_USER_WIDTH_MAX = 1000000,
		PNG_ZBUF_SIZE = 8192,
		PNG_ZLIB_VERNUM = 4800,
		PNG_Z_DEFAULT_COMPRESSION = -1,
		PNG_Z_DEFAULT_NOFILTER_STRATEGY = 0,
		PNG_Z_DEFAULT_STRATEGY = 1,
		PNG_sCAL_PRECISION = 5,
		PNG_sRGB_PROFILE_CHECKS = 2,
		PNGCONF_H = 1,
		PNG_CONST = 0,
		PNG_USE_READ_MACROS = 1,
		PNGCAPI = 1,
		PNGCBAPI = 0,
		PNGAPI = 0,
		PNG_IMPEXP = 1,
		PNG_EMPTY = 1,
		PNG_PEDANTIC_WARNINGS_SUPPORTED = 1,
		PNG_RESTRICT = 0,
		PNG_DEPRECATED = 1,
		PNG_USE_RESULT = 1,
		PNG_NORETURN = 1,
		PNG_ALLOCATED = 1,
		PNG_PRIVATE = 1,
		PNG_LIBPNG_BUILD_TYPE = 4,
		PNG_TEXT_COMPRESSION_NONE_WR = -3,
		PNG_TEXT_COMPRESSION_zTXt_WR = -2,
		PNG_TEXT_COMPRESSION_NONE = -1,
		PNG_TEXT_COMPRESSION_zTXt = 0,
		PNG_ITXT_COMPRESSION_NONE = 1,
		PNG_ITXT_COMPRESSION_zTXt = 2,
		PNG_TEXT_COMPRESSION_LAST = 3,
		PNG_HAVE_IHDR = 1,
		PNG_HAVE_PLTE = 2,
		PNG_AFTER_IDAT = 8,
		PNG_FP_1 = 100000,
		PNG_FP_HALF = 50000,
		PNG_COLOR_MASK_PALETTE = 1,
		PNG_COLOR_MASK_COLOR = 2,
		PNG_COLOR_MASK_ALPHA = 4,
		PNG_COLOR_TYPE_GRAY = 0,
		PNG_COLOR_TYPE_PALETTE = 3,
		PNG_COLOR_TYPE_RGB = 2,
		PNG_COLOR_TYPE_RGB_ALPHA = 6,
		PNG_COLOR_TYPE_GRAY_ALPHA = 4,
		PNG_COLOR_TYPE_RGBA = 6,
		PNG_COLOR_TYPE_GA = 4,
		PNG_COMPRESSION_TYPE_BASE = 0,
		PNG_COMPRESSION_TYPE_DEFAULT = 0,
		PNG_FILTER_TYPE_BASE = 0,
		PNG_INTRAPIXEL_DIFFERENCING = 64,
		PNG_FILTER_TYPE_DEFAULT = 0,
		PNG_INTERLACE_NONE = 0,
		PNG_INTERLACE_ADAM7 = 1,
		PNG_INTERLACE_LAST = 2,
		PNG_OFFSET_PIXEL = 0,
		PNG_OFFSET_MICROMETER = 1,
		PNG_OFFSET_LAST = 2,
		PNG_EQUATION_LINEAR = 0,
		PNG_EQUATION_BASE_E = 1,
		PNG_EQUATION_ARBITRARY = 2,
		PNG_EQUATION_HYPERBOLIC = 3,
		PNG_EQUATION_LAST = 4,
		PNG_SCALE_UNKNOWN = 0,
		PNG_SCALE_METER = 1,
		PNG_SCALE_RADIAN = 2,
		PNG_SCALE_LAST = 3,
		PNG_RESOLUTION_UNKNOWN = 0,
		PNG_RESOLUTION_METER = 1,
		PNG_RESOLUTION_LAST = 2,
		PNG_sRGB_INTENT_PERCEPTUAL = 0,
		PNG_sRGB_INTENT_RELATIVE = 1,
		PNG_sRGB_INTENT_SATURATION = 2,
		PNG_sRGB_INTENT_ABSOLUTE = 3,
		PNG_sRGB_INTENT_LAST = 4,
		PNG_KEYWORD_MAX_LENGTH = 79,
		PNG_MAX_PALETTE_LENGTH = 256,
		PNG_INFO_gAMA = 1,
		PNG_INFO_sBIT = 2,
		PNG_INFO_cHRM = 4,
		PNG_INFO_PLTE = 8,
		PNG_INFO_tRNS = 16,
		PNG_INFO_bKGD = 32,
		PNG_INFO_hIST = 64,
		PNG_INFO_pHYs = 128,
		PNG_INFO_oFFs = 256,
		PNG_INFO_tIME = 512,
		PNG_INFO_pCAL = 1024,
		PNG_INFO_sRGB = 2048,
		PNG_INFO_iCCP = 4096,
		PNG_INFO_sPLT = 8192,
		PNG_INFO_sCAL = 16384,
		PNG_INFO_IDAT = 32768,
		PNG_INFO_eXIf = 65536,
		PNG_INFO_cICP = 131072,
		PNG_INFO_cLLI = 262144,
		PNG_INFO_mDCV = 524288,
		PNG_INFO_acTL = 1048576,
		PNG_INFO_fcTL = 2097152,
		PNG_INFO_fdAT = 4194304,
		PNG_TRANSFORM_IDENTITY = 0,
		PNG_TRANSFORM_STRIP_16 = 1,
		PNG_TRANSFORM_STRIP_ALPHA = 2,
		PNG_TRANSFORM_PACKING = 4,
		PNG_TRANSFORM_PACKSWAP = 8,
		PNG_TRANSFORM_EXPAND = 16,
		PNG_TRANSFORM_INVERT_MONO = 32,
		PNG_TRANSFORM_SHIFT = 64,
		PNG_TRANSFORM_BGR = 128,
		PNG_TRANSFORM_SWAP_ALPHA = 256,
		PNG_TRANSFORM_SWAP_ENDIAN = 512,
		PNG_TRANSFORM_INVERT_ALPHA = 1024,
		PNG_TRANSFORM_STRIP_FILLER = 2048,
		PNG_TRANSFORM_STRIP_FILLER_BEFORE = 2048,
		PNG_TRANSFORM_STRIP_FILLER_AFTER = 4096,
		PNG_TRANSFORM_GRAY_TO_RGB = 8192,
		PNG_TRANSFORM_EXPAND_16 = 16384,
		PNG_FLAG_MNG_EMPTY_PLTE = 1,
		PNG_FLAG_MNG_FILTER_64 = 4,
		PNG_ALL_MNG_FEATURES = 5,
		PNG_ERROR_ACTION_NONE = 1,
		PNG_ERROR_ACTION_WARN = 2,
		PNG_ERROR_ACTION_ERROR = 3,
		PNG_RGB_TO_GRAY_DEFAULT = -1,
		PNG_ALPHA_PNG = 0,
		PNG_ALPHA_STANDARD = 1,
		PNG_ALPHA_ASSOCIATED = 1,
		PNG_ALPHA_PREMULTIPLIED = 1,
		PNG_ALPHA_OPTIMIZED = 2,
		PNG_ALPHA_BROKEN = 3,
		PNG_DEFAULT_sRGB = -1,
		PNG_GAMMA_MAC_18 = -2,
		PNG_GAMMA_sRGB = 220000,
		PNG_GAMMA_LINEAR = 100000,
		PNG_FILLER_BEFORE = 0,
		PNG_FILLER_AFTER = 1,
		PNG_BACKGROUND_GAMMA_UNKNOWN = 0,
		PNG_BACKGROUND_GAMMA_SCREEN = 1,
		PNG_BACKGROUND_GAMMA_FILE = 2,
		PNG_BACKGROUND_GAMMA_UNIQUE = 3,
		PNG_READ_16_TO_8_SUPPORTED = 1,
		PNG_CRC_DEFAULT = 0,
		PNG_CRC_ERROR_QUIT = 1,
		PNG_CRC_WARN_DISCARD = 2,
		PNG_CRC_WARN_USE = 3,
		PNG_CRC_QUIET_USE = 4,
		PNG_CRC_NO_CHANGE = 5,
		PNG_NO_FILTERS = 0,
		PNG_FILTER_NONE = 8,
		PNG_FILTER_SUB = 16,
		PNG_FILTER_UP = 32,
		PNG_FILTER_AVG = 64,
		PNG_FILTER_PAETH = 128,
		PNG_FAST_FILTERS = 56,
		PNG_ALL_FILTERS = 248,
		PNG_FILTER_VALUE_NONE = 0,
		PNG_FILTER_VALUE_SUB = 1,
		PNG_FILTER_VALUE_UP = 2,
		PNG_FILTER_VALUE_AVG = 3,
		PNG_FILTER_VALUE_PAETH = 4,
		PNG_FILTER_VALUE_LAST = 5,
		PNG_FILTER_HEURISTIC_DEFAULT = 0,
		PNG_FILTER_HEURISTIC_UNWEIGHTED = 1,
		PNG_FILTER_HEURISTIC_WEIGHTED = 2,
		PNG_FILTER_HEURISTIC_LAST = 3,
		PNG_DESTROY_WILL_FREE_DATA = 1,
		PNG_SET_WILL_FREE_DATA = 1,
		PNG_USER_WILL_FREE_DATA = 2,
		PNG_FREE_HIST = 8,
		PNG_FREE_ICCP = 16,
		PNG_FREE_SPLT = 32,
		PNG_FREE_ROWS = 64,
		PNG_FREE_PCAL = 128,
		PNG_FREE_SCAL = 256,
		PNG_FREE_UNKN = 512,
		PNG_FREE_PLTE = 4096,
		PNG_FREE_TRNS = 8192,
		PNG_FREE_TEXT = 16384,
		PNG_FREE_EXIF = 32768,
		PNG_FREE_ALL = 65535,
		PNG_FREE_MUL = 16928,
		PNG_HANDLE_CHUNK_AS_DEFAULT = 0,
		PNG_HANDLE_CHUNK_NEVER = 1,
		PNG_HANDLE_CHUNK_IF_SAFE = 2,
		PNG_HANDLE_CHUNK_ALWAYS = 3,
		PNG_HANDLE_CHUNK_LAST = 4,
		PNG_IO_NONE = 0,
		PNG_IO_READING = 1,
		PNG_IO_WRITING = 2,
		PNG_IO_SIGNATURE = 16,
		PNG_IO_CHUNK_HDR = 32,
		PNG_IO_CHUNK_DATA = 64,
		PNG_IO_CHUNK_CRC = 128,
		PNG_IO_MASK_OP = 15,
		PNG_IO_MASK_LOC = 240,
		PNG_INTERLACE_ADAM7_PASSES = 7,
		PNG_IMAGE_VERSION = 1,
		PNG_IMAGE_WARNING = 1,
		PNG_IMAGE_ERROR = 2,
		PNG_FORMAT_FLAG_ALPHA = 1,
		PNG_FORMAT_FLAG_COLOR = 2,
		PNG_FORMAT_FLAG_LINEAR = 4,
		PNG_FORMAT_FLAG_COLORMAP = 8,
		PNG_FORMAT_FLAG_BGR = 16,
		PNG_FORMAT_FLAG_AFIRST = 32,
		PNG_FORMAT_FLAG_ASSOCIATED_ALPHA = 64,
		PNG_FORMAT_GRAY = 0,
		PNG_FORMAT_GA = 1,
		PNG_FORMAT_AG = 33,
		PNG_FORMAT_RGB = 2,
		PNG_FORMAT_BGR = 18,
		PNG_FORMAT_RGBA = 3,
		PNG_FORMAT_ARGB = 35,
		PNG_FORMAT_BGRA = 19,
		PNG_FORMAT_ABGR = 51,
		PNG_FORMAT_LINEAR_Y = 4,
		PNG_FORMAT_LINEAR_Y_ALPHA = 5,
		PNG_FORMAT_LINEAR_RGB = 6,
		PNG_FORMAT_LINEAR_RGB_ALPHA = 7,
		PNG_FORMAT_RGB_COLORMAP = 10,
		PNG_FORMAT_BGR_COLORMAP = 26,
		PNG_FORMAT_RGBA_COLORMAP = 11,
		PNG_FORMAT_ARGB_COLORMAP = 43,
		PNG_FORMAT_BGRA_COLORMAP = 27,
		PNG_FORMAT_ABGR_COLORMAP = 59,
		PNG_IMAGE_FLAG_COLORSPACE_NOT_sRGB = 1,
		PNG_IMAGE_FLAG_FAST = 2,
		PNG_IMAGE_FLAG_16BIT_sRGB = 4,
		PNG_MAXIMUM_INFLATE_WINDOW = 2,
		PNG_SKIP_sRGB_CHECK_PROFILE = 4,
		PNG_OPTION_NEXT = 14,
		PNG_OPTION_UNSET = 0,
		PNG_OPTION_INVALID = 1,
		PNG_OPTION_OFF = 2,
		PNG_OPTION_ON = 3,

	},
	defs = {

		-- functions

		png_access_version_number = [[png_uint_32 png_access_version_number();]],
		png_set_sig_bytes = [[void png_set_sig_bytes(png_structrp png_ptr, int num_bytes);]],
		png_sig_cmp = [[int png_sig_cmp(png_const_bytep sig, size_t start, size_t num_to_check);]],
		png_create_read_struct = [[png_structp png_create_read_struct(png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn);]],
		png_create_write_struct = [[png_structp png_create_write_struct(png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn);]],
		png_get_compression_buffer_size = [[size_t png_get_compression_buffer_size(png_const_structrp png_ptr);]],
		png_set_compression_buffer_size = [[void png_set_compression_buffer_size(png_structrp png_ptr, size_t size);]],
		png_set_longjmp_fn = [[jmp_buf* png_set_longjmp_fn(png_structrp png_ptr, png_longjmp_ptr longjmp_fn, size_t jmp_buf_size);]],
		png_longjmp = [[void png_longjmp(png_const_structrp png_ptr, int val);]],
		png_reset_zstream = [[int png_reset_zstream(png_structrp png_ptr);]],
		png_create_read_struct_2 = [[png_structp png_create_read_struct_2(png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn, png_voidp mem_ptr, png_malloc_ptr malloc_fn, png_free_ptr free_fn);]],
		png_create_write_struct_2 = [[png_structp png_create_write_struct_2(png_const_charp user_png_ver, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warn_fn, png_voidp mem_ptr, png_malloc_ptr malloc_fn, png_free_ptr free_fn);]],
		png_write_sig = [[void png_write_sig(png_structrp png_ptr);]],
		png_write_chunk = [[void png_write_chunk(png_structrp png_ptr, png_const_bytep chunk_name, png_const_bytep data, size_t length);]],
		png_write_chunk_start = [[void png_write_chunk_start(png_structrp png_ptr, png_const_bytep chunk_name, png_uint_32 length);]],
		png_write_chunk_data = [[void png_write_chunk_data(png_structrp png_ptr, png_const_bytep data, size_t length);]],
		png_write_chunk_end = [[void png_write_chunk_end(png_structrp png_ptr);]],
		png_create_info_struct = [[png_infop png_create_info_struct(png_const_structrp png_ptr);]],
		png_info_init_3 = [[void png_info_init_3(png_infopp info_ptr, size_t png_info_struct_size);]],
		png_write_info_before_PLTE = [[void png_write_info_before_PLTE(png_structrp png_ptr, png_const_inforp info_ptr);]],
		png_write_info = [[void png_write_info(png_structrp png_ptr, png_const_inforp info_ptr);]],
		png_read_info = [[void png_read_info(png_structrp png_ptr, png_inforp info_ptr);]],
		png_convert_to_rfc1123 = [[png_const_charp png_convert_to_rfc1123(png_structrp png_ptr, png_const_timep ptime);]],
		png_convert_to_rfc1123_buffer = [[int png_convert_to_rfc1123_buffer(char out[29], png_const_timep ptime);]],
		png_convert_from_struct_tm = [[void png_convert_from_struct_tm(png_timep ptime, struct tm const * ttime);]],
		png_convert_from_time_t = [[void png_convert_from_time_t(png_timep ptime, time_t ttime);]],
		png_set_expand = [[void png_set_expand(png_structrp png_ptr);]],
		png_set_expand_gray_1_2_4_to_8 = [[void png_set_expand_gray_1_2_4_to_8(png_structrp png_ptr);]],
		png_set_palette_to_rgb = [[void png_set_palette_to_rgb(png_structrp png_ptr);]],
		png_set_tRNS_to_alpha = [[void png_set_tRNS_to_alpha(png_structrp png_ptr);]],
		png_set_expand_16 = [[void png_set_expand_16(png_structrp png_ptr);]],
		png_set_bgr = [[void png_set_bgr(png_structrp png_ptr);]],
		png_set_gray_to_rgb = [[void png_set_gray_to_rgb(png_structrp png_ptr);]],
		png_set_rgb_to_gray = [[void png_set_rgb_to_gray(png_structrp png_ptr, int error_action, double red, double green);]],
		png_set_rgb_to_gray_fixed = [[void png_set_rgb_to_gray_fixed(png_structrp png_ptr, int error_action, png_fixed_point red, png_fixed_point green);]],
		png_get_rgb_to_gray_status = [[png_byte png_get_rgb_to_gray_status(png_const_structrp png_ptr);]],
		png_build_grayscale_palette = [[void png_build_grayscale_palette(int bit_depth, png_colorp palette);]],
		png_set_alpha_mode = [[void png_set_alpha_mode(png_structrp png_ptr, int mode, double output_gamma);]],
		png_set_alpha_mode_fixed = [[void png_set_alpha_mode_fixed(png_structrp png_ptr, int mode, png_fixed_point output_gamma);]],
		png_set_strip_alpha = [[void png_set_strip_alpha(png_structrp png_ptr);]],
		png_set_swap_alpha = [[void png_set_swap_alpha(png_structrp png_ptr);]],
		png_set_invert_alpha = [[void png_set_invert_alpha(png_structrp png_ptr);]],
		png_set_filler = [[void png_set_filler(png_structrp png_ptr, png_uint_32 filler, int flags);]],
		png_set_add_alpha = [[void png_set_add_alpha(png_structrp png_ptr, png_uint_32 filler, int flags);]],
		png_set_swap = [[void png_set_swap(png_structrp png_ptr);]],
		png_set_packing = [[void png_set_packing(png_structrp png_ptr);]],
		png_set_packswap = [[void png_set_packswap(png_structrp png_ptr);]],
		png_set_shift = [[void png_set_shift(png_structrp png_ptr, png_const_color_8p true_bits);]],
		png_set_interlace_handling = [[int png_set_interlace_handling(png_structrp png_ptr);]],
		png_set_invert_mono = [[void png_set_invert_mono(png_structrp png_ptr);]],
		png_set_background = [[void png_set_background(png_structrp png_ptr, png_const_color_16p background_color, int background_gamma_code, int need_expand, double background_gamma);]],
		png_set_background_fixed = [[void png_set_background_fixed(png_structrp png_ptr, png_const_color_16p background_color, int background_gamma_code, int need_expand, png_fixed_point background_gamma);]],
		png_set_scale_16 = [[void png_set_scale_16(png_structrp png_ptr);]],
		png_set_strip_16 = [[void png_set_strip_16(png_structrp png_ptr);]],
		png_set_quantize = [[void png_set_quantize(png_structrp png_ptr, png_colorp palette, int num_palette, int maximum_colors, png_const_uint_16p histogram, int full_quantize);]],
		png_set_gamma = [[void png_set_gamma(png_structrp png_ptr, double screen_gamma, double override_file_gamma);]],
		png_set_gamma_fixed = [[void png_set_gamma_fixed(png_structrp png_ptr, png_fixed_point screen_gamma, png_fixed_point override_file_gamma);]],
		png_set_flush = [[void png_set_flush(png_structrp png_ptr, int nrows);]],
		png_write_flush = [[void png_write_flush(png_structrp png_ptr);]],
		png_start_read_image = [[void png_start_read_image(png_structrp png_ptr);]],
		png_read_update_info = [[void png_read_update_info(png_structrp png_ptr, png_inforp info_ptr);]],
		png_read_rows = [[void png_read_rows(png_structrp png_ptr, png_bytepp row, png_bytepp display_row, png_uint_32 num_rows);]],
		png_read_row = [[void png_read_row(png_structrp png_ptr, png_bytep row, png_bytep display_row);]],
		png_read_image = [[void png_read_image(png_structrp png_ptr, png_bytepp image);]],
		png_write_row = [[void png_write_row(png_structrp png_ptr, png_const_bytep row);]],
		png_write_rows = [[void png_write_rows(png_structrp png_ptr, png_bytepp row, png_uint_32 num_rows);]],
		png_write_image = [[void png_write_image(png_structrp png_ptr, png_bytepp image);]],
		png_write_end = [[void png_write_end(png_structrp png_ptr, png_inforp info_ptr);]],
		png_read_end = [[void png_read_end(png_structrp png_ptr, png_inforp info_ptr);]],
		png_destroy_info_struct = [[void png_destroy_info_struct(png_const_structrp png_ptr, png_infopp info_ptr_ptr);]],
		png_destroy_read_struct = [[void png_destroy_read_struct(png_structpp png_ptr_ptr, png_infopp info_ptr_ptr, png_infopp end_info_ptr_ptr);]],
		png_destroy_write_struct = [[void png_destroy_write_struct(png_structpp png_ptr_ptr, png_infopp info_ptr_ptr);]],
		png_set_crc_action = [[void png_set_crc_action(png_structrp png_ptr, int crit_action, int ancil_action);]],
		png_set_filter = [[void png_set_filter(png_structrp png_ptr, int method, int filters);]],
		png_set_filter_heuristics = [[void png_set_filter_heuristics(png_structrp png_ptr, int heuristic_method, int num_weights, png_const_doublep filter_weights, png_const_doublep filter_costs);]],
		png_set_filter_heuristics_fixed = [[void png_set_filter_heuristics_fixed(png_structrp png_ptr, int heuristic_method, int num_weights, png_const_fixed_point_p filter_weights, png_const_fixed_point_p filter_costs);]],
		png_set_compression_level = [[void png_set_compression_level(png_structrp png_ptr, int level);]],
		png_set_compression_mem_level = [[void png_set_compression_mem_level(png_structrp png_ptr, int mem_level);]],
		png_set_compression_strategy = [[void png_set_compression_strategy(png_structrp png_ptr, int strategy);]],
		png_set_compression_window_bits = [[void png_set_compression_window_bits(png_structrp png_ptr, int window_bits);]],
		png_set_compression_method = [[void png_set_compression_method(png_structrp png_ptr, int method);]],
		png_set_text_compression_level = [[void png_set_text_compression_level(png_structrp png_ptr, int level);]],
		png_set_text_compression_mem_level = [[void png_set_text_compression_mem_level(png_structrp png_ptr, int mem_level);]],
		png_set_text_compression_strategy = [[void png_set_text_compression_strategy(png_structrp png_ptr, int strategy);]],
		png_set_text_compression_window_bits = [[void png_set_text_compression_window_bits(png_structrp png_ptr, int window_bits);]],
		png_set_text_compression_method = [[void png_set_text_compression_method(png_structrp png_ptr, int method);]],
		png_init_io = [[void png_init_io(png_structrp png_ptr, png_FILE_p fp);]],
		png_set_error_fn = [[void png_set_error_fn(png_structrp png_ptr, png_voidp error_ptr, png_error_ptr error_fn, png_error_ptr warning_fn);]],
		png_get_error_ptr = [[png_voidp png_get_error_ptr(png_const_structrp png_ptr);]],
		png_set_write_fn = [[void png_set_write_fn(png_structrp png_ptr, png_voidp io_ptr, png_rw_ptr write_data_fn, png_flush_ptr output_flush_fn);]],
		png_set_read_fn = [[void png_set_read_fn(png_structrp png_ptr, png_voidp io_ptr, png_rw_ptr read_data_fn);]],
		png_get_io_ptr = [[png_voidp png_get_io_ptr(png_const_structrp png_ptr);]],
		png_set_read_status_fn = [[void png_set_read_status_fn(png_structrp png_ptr, png_read_status_ptr read_row_fn);]],
		png_set_write_status_fn = [[void png_set_write_status_fn(png_structrp png_ptr, png_write_status_ptr write_row_fn);]],
		png_set_mem_fn = [[void png_set_mem_fn(png_structrp png_ptr, png_voidp mem_ptr, png_malloc_ptr malloc_fn, png_free_ptr free_fn);]],
		png_get_mem_ptr = [[png_voidp png_get_mem_ptr(png_const_structrp png_ptr);]],
		png_set_read_user_transform_fn = [[void png_set_read_user_transform_fn(png_structrp png_ptr, png_user_transform_ptr read_user_transform_fn);]],
		png_set_write_user_transform_fn = [[void png_set_write_user_transform_fn(png_structrp png_ptr, png_user_transform_ptr write_user_transform_fn);]],
		png_set_user_transform_info = [[void png_set_user_transform_info(png_structrp png_ptr, png_voidp user_transform_ptr, int user_transform_depth, int user_transform_channels);]],
		png_get_user_transform_ptr = [[png_voidp png_get_user_transform_ptr(png_const_structrp png_ptr);]],
		png_get_current_row_number = [[png_uint_32 png_get_current_row_number(png_const_structrp);]],
		png_get_current_pass_number = [[png_byte png_get_current_pass_number(png_const_structrp);]],
		png_set_read_user_chunk_fn = [[void png_set_read_user_chunk_fn(png_structrp png_ptr, png_voidp user_chunk_ptr, png_user_chunk_ptr read_user_chunk_fn);]],
		png_get_user_chunk_ptr = [[png_voidp png_get_user_chunk_ptr(png_const_structrp png_ptr);]],
		png_set_progressive_read_fn = [[void png_set_progressive_read_fn(png_structrp png_ptr, png_voidp progressive_ptr, png_progressive_info_ptr info_fn, png_progressive_row_ptr row_fn, png_progressive_end_ptr end_fn);]],
		png_get_progressive_ptr = [[png_voidp png_get_progressive_ptr(png_const_structrp png_ptr);]],
		png_process_data = [[void png_process_data(png_structrp png_ptr, png_inforp info_ptr, png_bytep buffer, size_t buffer_size);]],
		png_process_data_pause = [[size_t png_process_data_pause(png_structrp, int save);]],
		png_process_data_skip = [[png_uint_32 png_process_data_skip(png_structrp);]],
		png_progressive_combine_row = [[void png_progressive_combine_row(png_const_structrp png_ptr, png_bytep old_row, png_const_bytep new_row);]],
		png_malloc = [[png_voidp png_malloc(png_const_structrp png_ptr, png_alloc_size_t size);]],
		png_calloc = [[png_voidp png_calloc(png_const_structrp png_ptr, png_alloc_size_t size);]],
		png_malloc_warn = [[png_voidp png_malloc_warn(png_const_structrp png_ptr, png_alloc_size_t size);]],
		png_free = [[void png_free(png_const_structrp png_ptr, png_voidp ptr);]],
		png_free_data = [[void png_free_data(png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 free_me, int num);]],
		png_data_freer = [[void png_data_freer(png_const_structrp png_ptr, png_inforp info_ptr, int freer, png_uint_32 mask);]],
		png_malloc_default = [[png_voidp png_malloc_default(png_const_structrp png_ptr, png_alloc_size_t size);]],
		png_free_default = [[void png_free_default(png_const_structrp png_ptr, png_voidp ptr);]],
		png_error = [[void png_error(png_const_structrp png_ptr, png_const_charp error_message);]],
		png_chunk_error = [[void png_chunk_error(png_const_structrp png_ptr, png_const_charp error_message);]],
		png_warning = [[void png_warning(png_const_structrp png_ptr, png_const_charp warning_message);]],
		png_chunk_warning = [[void png_chunk_warning(png_const_structrp png_ptr, png_const_charp warning_message);]],
		png_benign_error = [[void png_benign_error(png_const_structrp png_ptr, png_const_charp warning_message);]],
		png_chunk_benign_error = [[void png_chunk_benign_error(png_const_structrp png_ptr, png_const_charp warning_message);]],
		png_set_benign_errors = [[void png_set_benign_errors(png_structrp png_ptr, int allowed);]],
		png_get_valid = [[png_uint_32 png_get_valid(png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 flag);]],
		png_get_rowbytes = [[size_t png_get_rowbytes(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_rows = [[png_bytepp png_get_rows(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_set_rows = [[void png_set_rows(png_const_structrp png_ptr, png_inforp info_ptr, png_bytepp row_pointers);]],
		png_get_channels = [[png_byte png_get_channels(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_image_width = [[png_uint_32 png_get_image_width(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_image_height = [[png_uint_32 png_get_image_height(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_bit_depth = [[png_byte png_get_bit_depth(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_color_type = [[png_byte png_get_color_type(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_filter_type = [[png_byte png_get_filter_type(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_interlace_type = [[png_byte png_get_interlace_type(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_compression_type = [[png_byte png_get_compression_type(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_pixels_per_meter = [[png_uint_32 png_get_pixels_per_meter(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_x_pixels_per_meter = [[png_uint_32 png_get_x_pixels_per_meter(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_y_pixels_per_meter = [[png_uint_32 png_get_y_pixels_per_meter(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_pixel_aspect_ratio = [[float png_get_pixel_aspect_ratio(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_pixel_aspect_ratio_fixed = [[png_fixed_point png_get_pixel_aspect_ratio_fixed(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_x_offset_pixels = [[png_int_32 png_get_x_offset_pixels(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_y_offset_pixels = [[png_int_32 png_get_y_offset_pixels(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_x_offset_microns = [[png_int_32 png_get_x_offset_microns(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_y_offset_microns = [[png_int_32 png_get_y_offset_microns(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_signature = [[png_const_bytep png_get_signature(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_bKGD = [[png_uint_32 png_get_bKGD(png_const_structrp png_ptr, png_inforp info_ptr, png_color_16p *background);]],
		png_set_bKGD = [[void png_set_bKGD(png_const_structrp png_ptr, png_inforp info_ptr, png_const_color_16p background);]],
		png_get_cHRM = [[png_uint_32 png_get_cHRM(png_const_structrp png_ptr, png_const_inforp info_ptr, double *white_x, double *white_y, double *red_x, double *red_y, double *green_x, double *green_y, double *blue_x, double *blue_y);]],
		png_get_cHRM_XYZ = [[png_uint_32 png_get_cHRM_XYZ(png_const_structrp png_ptr, png_const_inforp info_ptr, double *red_X, double *red_Y, double *red_Z, double *green_X, double *green_Y, double *green_Z, double *blue_X, double *blue_Y, double *blue_Z);]],
		png_get_cHRM_fixed = [[png_uint_32 png_get_cHRM_fixed(png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_white_x, png_fixed_point *int_white_y, png_fixed_point *int_red_x, png_fixed_point *int_red_y, png_fixed_point *int_green_x, png_fixed_point *int_green_y, png_fixed_point *int_blue_x, png_fixed_point *int_blue_y);]],
		png_get_cHRM_XYZ_fixed = [[png_uint_32 png_get_cHRM_XYZ_fixed(png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_red_X, png_fixed_point *int_red_Y, png_fixed_point *int_red_Z, png_fixed_point *int_green_X, png_fixed_point *int_green_Y, png_fixed_point *int_green_Z, png_fixed_point *int_blue_X, png_fixed_point *int_blue_Y, png_fixed_point *int_blue_Z);]],
		png_set_cHRM = [[void png_set_cHRM(png_const_structrp png_ptr, png_inforp info_ptr, double white_x, double white_y, double red_x, double red_y, double green_x, double green_y, double blue_x, double blue_y);]],
		png_set_cHRM_XYZ = [[void png_set_cHRM_XYZ(png_const_structrp png_ptr, png_inforp info_ptr, double red_X, double red_Y, double red_Z, double green_X, double green_Y, double green_Z, double blue_X, double blue_Y, double blue_Z);]],
		png_set_cHRM_fixed = [[void png_set_cHRM_fixed(png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_white_x, png_fixed_point int_white_y, png_fixed_point int_red_x, png_fixed_point int_red_y, png_fixed_point int_green_x, png_fixed_point int_green_y, png_fixed_point int_blue_x, png_fixed_point int_blue_y);]],
		png_set_cHRM_XYZ_fixed = [[void png_set_cHRM_XYZ_fixed(png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_red_X, png_fixed_point int_red_Y, png_fixed_point int_red_Z, png_fixed_point int_green_X, png_fixed_point int_green_Y, png_fixed_point int_green_Z, png_fixed_point int_blue_X, png_fixed_point int_blue_Y, png_fixed_point int_blue_Z);]],
		png_get_cICP = [[png_uint_32 png_get_cICP(png_const_structrp png_ptr, png_const_inforp info_ptr, png_bytep colour_primaries, png_bytep transfer_function, png_bytep matrix_coefficients, png_bytep video_full_range_flag);]],
		png_set_cICP = [[void png_set_cICP(png_const_structrp png_ptr, png_inforp info_ptr, png_byte colour_primaries, png_byte transfer_function, png_byte matrix_coefficients, png_byte video_full_range_flag);]],
		png_get_cLLI = [[png_uint_32 png_get_cLLI(png_const_structrp png_ptr, png_const_inforp info_ptr, double *maximum_content_light_level, double *maximum_frame_average_light_level);]],
		png_get_cLLI_fixed = [[png_uint_32 png_get_cLLI_fixed(png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32p maximum_content_light_level_scaled_by_10000, png_uint_32p maximum_frame_average_light_level_scaled_by_10000);]],
		png_set_cLLI = [[void png_set_cLLI(png_const_structrp png_ptr, png_inforp info_ptr, double maximum_content_light_level, double maximum_frame_average_light_level);]],
		png_set_cLLI_fixed = [[void png_set_cLLI_fixed(png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 maximum_content_light_level_scaled_by_10000, png_uint_32 maximum_frame_average_light_level_scaled_by_10000);]],
		png_get_eXIf = [[png_uint_32 png_get_eXIf(png_const_structrp png_ptr, png_inforp info_ptr, png_bytep *exif);]],
		png_set_eXIf = [[void png_set_eXIf(png_const_structrp png_ptr, png_inforp info_ptr, png_bytep exif);]],
		png_get_eXIf_1 = [[png_uint_32 png_get_eXIf_1(png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 *num_exif, png_bytep *exif);]],
		png_set_eXIf_1 = [[void png_set_eXIf_1(png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 num_exif, png_bytep exif);]],
		png_get_gAMA = [[png_uint_32 png_get_gAMA(png_const_structrp png_ptr, png_const_inforp info_ptr, double *file_gamma);]],
		png_get_gAMA_fixed = [[png_uint_32 png_get_gAMA_fixed(png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_file_gamma);]],
		png_set_gAMA = [[void png_set_gAMA(png_const_structrp png_ptr, png_inforp info_ptr, double file_gamma);]],
		png_set_gAMA_fixed = [[void png_set_gAMA_fixed(png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_file_gamma);]],
		png_get_hIST = [[png_uint_32 png_get_hIST(png_const_structrp png_ptr, png_inforp info_ptr, png_uint_16p *hist);]],
		png_set_hIST = [[void png_set_hIST(png_const_structrp png_ptr, png_inforp info_ptr, png_const_uint_16p hist);]],
		png_get_IHDR = [[png_uint_32 png_get_IHDR(png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 *width, png_uint_32 *height, int *bit_depth, int *color_type, int *interlace_method, int *compression_method, int *filter_method);]],
		png_set_IHDR = [[void png_set_IHDR(png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 width, png_uint_32 height, int bit_depth, int color_type, int interlace_method, int compression_method, int filter_method);]],
		png_get_mDCV = [[png_uint_32 png_get_mDCV(png_const_structrp png_ptr, png_const_inforp info_ptr, double *white_x, double *white_y, double *red_x, double *red_y, double *green_x, double *green_y, double *blue_x, double *blue_y, double *mastering_display_maximum_luminance, double *mastering_display_minimum_luminance);]],
		png_get_mDCV_fixed = [[png_uint_32 png_get_mDCV_fixed(png_const_structrp png_ptr, png_const_inforp info_ptr, png_fixed_point *int_white_x, png_fixed_point *int_white_y, png_fixed_point *int_red_x, png_fixed_point *int_red_y, png_fixed_point *int_green_x, png_fixed_point *int_green_y, png_fixed_point *int_blue_x, png_fixed_point *int_blue_y, png_uint_32p mastering_display_maximum_luminance_scaled_by_10000, png_uint_32p mastering_display_minimum_luminance_scaled_by_10000);]],
		png_set_mDCV = [[void png_set_mDCV(png_const_structrp png_ptr, png_inforp info_ptr, double white_x, double white_y, double red_x, double red_y, double green_x, double green_y, double blue_x, double blue_y, double mastering_display_maximum_luminance, double mastering_display_minimum_luminance);]],
		png_set_mDCV_fixed = [[void png_set_mDCV_fixed(png_const_structrp png_ptr, png_inforp info_ptr, png_fixed_point int_white_x, png_fixed_point int_white_y, png_fixed_point int_red_x, png_fixed_point int_red_y, png_fixed_point int_green_x, png_fixed_point int_green_y, png_fixed_point int_blue_x, png_fixed_point int_blue_y, png_uint_32 mastering_display_maximum_luminance_scaled_by_10000, png_uint_32 mastering_display_minimum_luminance_scaled_by_10000);]],
		png_get_oFFs = [[png_uint_32 png_get_oFFs(png_const_structrp png_ptr, png_const_inforp info_ptr, png_int_32 *offset_x, png_int_32 *offset_y, int *unit_type);]],
		png_set_oFFs = [[void png_set_oFFs(png_const_structrp png_ptr, png_inforp info_ptr, png_int_32 offset_x, png_int_32 offset_y, int unit_type);]],
		png_get_pCAL = [[png_uint_32 png_get_pCAL(png_const_structrp png_ptr, png_inforp info_ptr, png_charp *purpose, png_int_32 *X0, png_int_32 *X1, int * png_uint_32, int *nparams, png_charp *units, png_charpp *params);]],
		png_set_pCAL = [[void png_set_pCAL(png_const_structrp png_ptr, png_inforp info_ptr, png_const_charp purpose, png_int_32 X0, png_int_32 X1, int type, int nparams, png_const_charp units, png_charpp params);]],
		png_get_pHYs = [[png_uint_32 png_get_pHYs(png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 *res_x, png_uint_32 *res_y, int *unit_type);]],
		png_set_pHYs = [[void png_set_pHYs(png_const_structrp png_ptr, png_inforp info_ptr, png_uint_32 res_x, png_uint_32 res_y, int unit_type);]],
		png_get_PLTE = [[png_uint_32 png_get_PLTE(png_const_structrp png_ptr, png_inforp info_ptr, png_colorp *palette, int *num_palette);]],
		png_set_PLTE = [[void png_set_PLTE(png_structrp png_ptr, png_inforp info_ptr, png_const_colorp palette, int num_palette);]],
		png_get_sBIT = [[png_uint_32 png_get_sBIT(png_const_structrp png_ptr, png_inforp info_ptr, png_color_8p *sig_bit);]],
		png_set_sBIT = [[void png_set_sBIT(png_const_structrp png_ptr, png_inforp info_ptr, png_const_color_8p sig_bit);]],
		png_get_sRGB = [[png_uint_32 png_get_sRGB(png_const_structrp png_ptr, png_const_inforp info_ptr, int *file_srgb_intent);]],
		png_set_sRGB = [[void png_set_sRGB(png_const_structrp png_ptr, png_inforp info_ptr, int srgb_intent);]],
		png_set_sRGB_gAMA_and_cHRM = [[void png_set_sRGB_gAMA_and_cHRM(png_const_structrp png_ptr, png_inforp info_ptr, int srgb_intent);]],
		png_get_iCCP = [[png_uint_32 png_get_iCCP(png_const_structrp png_ptr, png_inforp info_ptr, png_charpp png_get_iCCP, int *compression_type, png_bytepp profile, png_uint_32 *proflen);]],
		png_set_iCCP = [[void png_set_iCCP(png_const_structrp png_ptr, png_inforp info_ptr, png_const_charp png_set_iCCP, int compression_type, png_const_bytep profile, png_uint_32 proflen);]],
		png_get_sPLT = [[int png_get_sPLT(png_const_structrp png_ptr, png_inforp info_ptr, png_sPLT_tpp entries);]],
		png_set_sPLT = [[void png_set_sPLT(png_const_structrp png_ptr, png_inforp info_ptr, png_const_sPLT_tp entries, int nentries);]],
		png_get_text = [[int png_get_text(png_const_structrp png_ptr, png_inforp info_ptr, png_textp *text_ptr, int *num_text);]],
		png_set_text = [[void png_set_text(png_const_structrp png_ptr, png_inforp info_ptr, png_const_textp text_ptr, int num_text);]],
		png_get_tIME = [[png_uint_32 png_get_tIME(png_const_structrp png_ptr, png_inforp info_ptr, png_timep *mod_time);]],
		png_set_tIME = [[void png_set_tIME(png_const_structrp png_ptr, png_inforp info_ptr, png_const_timep mod_time);]],
		png_get_tRNS = [[png_uint_32 png_get_tRNS(png_const_structrp png_ptr, png_inforp info_ptr, png_bytep *trans_alpha, int *num_trans, png_color_16p *trans_color);]],
		png_set_tRNS = [[void png_set_tRNS(png_structrp png_ptr, png_inforp info_ptr, png_const_bytep trans_alpha, int num_trans, png_const_color_16p trans_color);]],
		png_get_sCAL = [[png_uint_32 png_get_sCAL(png_const_structrp png_ptr, png_const_inforp info_ptr, int *unit, double *width, double *height);]],
		png_get_sCAL_fixed = [[png_uint_32 png_get_sCAL_fixed(png_const_structrp png_ptr, png_const_inforp info_ptr, int *unit, png_fixed_point *width, png_fixed_point *height);]],
		png_get_sCAL_s = [[png_uint_32 png_get_sCAL_s(png_const_structrp png_ptr, png_const_inforp info_ptr, int *unit, png_charpp swidth, png_charpp sheight);]],
		png_set_sCAL = [[void png_set_sCAL(png_const_structrp png_ptr, png_inforp info_ptr, int unit, double width, double height);]],
		png_set_sCAL_fixed = [[void png_set_sCAL_fixed(png_const_structrp png_ptr, png_inforp info_ptr, int unit, png_fixed_point width, png_fixed_point height);]],
		png_set_sCAL_s = [[void png_set_sCAL_s(png_const_structrp png_ptr, png_inforp info_ptr, int unit, png_const_charp swidth, png_const_charp sheight);]],
		png_set_keep_unknown_chunks = [[void png_set_keep_unknown_chunks(png_structrp png_ptr, int keep, png_const_bytep chunk_list, int num_chunks);]],
		png_handle_as_unknown = [[int png_handle_as_unknown(png_const_structrp png_ptr, png_const_bytep chunk_name);]],
		png_set_unknown_chunks = [[void png_set_unknown_chunks(png_const_structrp png_ptr, png_inforp info_ptr, png_const_unknown_chunkp unknowns, int num_unknowns);]],
		png_set_unknown_chunk_location = [[void png_set_unknown_chunk_location(png_const_structrp png_ptr, png_inforp info_ptr, int chunk, int location);]],
		png_get_unknown_chunks = [[int png_get_unknown_chunks(png_const_structrp png_ptr, png_inforp info_ptr, png_unknown_chunkpp entries);]],
		png_set_invalid = [[void png_set_invalid(png_const_structrp png_ptr, png_inforp info_ptr, int mask);]],
		png_read_png = [[void png_read_png(png_structrp png_ptr, png_inforp info_ptr, int transforms, png_voidp params);]],
		png_write_png = [[void png_write_png(png_structrp png_ptr, png_inforp info_ptr, int transforms, png_voidp params);]],
		png_get_copyright = [[png_const_charp png_get_copyright(png_const_structrp png_ptr);]],
		png_get_header_ver = [[png_const_charp png_get_header_ver(png_const_structrp png_ptr);]],
		png_get_header_version = [[png_const_charp png_get_header_version(png_const_structrp png_ptr);]],
		png_get_libpng_ver = [[png_const_charp png_get_libpng_ver(png_const_structrp png_ptr);]],
		png_permit_mng_features = [[png_uint_32 png_permit_mng_features(png_structrp png_ptr, png_uint_32 mng_features_permitted);]],
		png_set_user_limits = [[void png_set_user_limits(png_structrp png_ptr, png_uint_32 user_width_max, png_uint_32 user_height_max);]],
		png_get_user_width_max = [[png_uint_32 png_get_user_width_max(png_const_structrp png_ptr);]],
		png_get_user_height_max = [[png_uint_32 png_get_user_height_max(png_const_structrp png_ptr);]],
		png_set_chunk_cache_max = [[void png_set_chunk_cache_max(png_structrp png_ptr, png_uint_32 user_chunk_cache_max);]],
		png_get_chunk_cache_max = [[png_uint_32 png_get_chunk_cache_max(png_const_structrp png_ptr);]],
		png_set_chunk_malloc_max = [[void png_set_chunk_malloc_max(png_structrp png_ptr, png_alloc_size_t user_chunk_cache_max);]],
		png_get_chunk_malloc_max = [[png_alloc_size_t png_get_chunk_malloc_max(png_const_structrp png_ptr);]],
		png_get_pixels_per_inch = [[png_uint_32 png_get_pixels_per_inch(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_x_pixels_per_inch = [[png_uint_32 png_get_x_pixels_per_inch(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_y_pixels_per_inch = [[png_uint_32 png_get_y_pixels_per_inch(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_x_offset_inches = [[float png_get_x_offset_inches(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_x_offset_inches_fixed = [[png_fixed_point png_get_x_offset_inches_fixed(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_y_offset_inches = [[float png_get_y_offset_inches(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_y_offset_inches_fixed = [[png_fixed_point png_get_y_offset_inches_fixed(png_const_structrp png_ptr, png_const_inforp info_ptr);]],
		png_get_pHYs_dpi = [[png_uint_32 png_get_pHYs_dpi(png_const_structrp png_ptr, png_const_inforp info_ptr, png_uint_32 *res_x, png_uint_32 *res_y, int *unit_type);]],
		png_get_io_state = [[png_uint_32 png_get_io_state(png_const_structrp png_ptr);]],
		png_get_io_chunk_type = [[png_uint_32 png_get_io_chunk_type(png_const_structrp png_ptr);]],
		png_get_uint_32 = [[png_uint_32 png_get_uint_32(png_const_bytep buf);]],
		png_get_uint_16 = [[png_uint_16 png_get_uint_16(png_const_bytep buf);]],
		png_get_int_32 = [[png_int_32 png_get_int_32(png_const_bytep buf);]],
		png_get_uint_31 = [[png_uint_32 png_get_uint_31(png_const_structrp png_ptr, png_const_bytep buf);]],
		png_save_uint_32 = [[void png_save_uint_32(png_bytep buf, png_uint_32 i);]],
		png_save_int_32 = [[void png_save_int_32(png_bytep buf, png_int_32 i);]],
		png_save_uint_16 = [[void png_save_uint_16(png_bytep buf, unsigned int i);]],
		png_set_check_for_invalid_index = [[void png_set_check_for_invalid_index(png_structrp png_ptr, int allowed);]],
		png_get_palette_max = [[int png_get_palette_max(png_const_structp png_ptr, png_const_infop info_ptr);]],
		png_image_begin_read_from_file = [[int png_image_begin_read_from_file(png_imagep image, char const *file_name);]],
		png_image_begin_read_from_stdio = [[int png_image_begin_read_from_stdio(png_imagep image, FILE* file);]],
		png_image_begin_read_from_memory = [[int png_image_begin_read_from_memory(png_imagep image, png_const_voidp memory, size_t size);]],
		png_image_finish_read = [[int png_image_finish_read(png_imagep image, png_const_colorp background, void *buffer, png_int_32 row_stride, void *colormap);]],
		png_image_free = [[void png_image_free(png_imagep image);]],
		png_image_write_to_file = [[int png_image_write_to_file(png_imagep image, char const *file, int convert_to_8bit, void const *buffer, png_int_32 row_stride, void const *colormap);]],
		png_image_write_to_stdio = [[int png_image_write_to_stdio(png_imagep image, FILE *file, int convert_to_8_bit, void const *buffer, png_int_32 row_stride, void const *colormap);]],
		png_image_write_to_memory = [[int png_image_write_to_memory(png_imagep image, void *memory, png_alloc_size_t * restrict memory_bytes, int convert_to_8_bit, void const *buffer, png_int_32 row_stride, void const *colormap);]],
		png_set_option = [[int png_set_option(png_structrp png_ptr, int option, int onoff);]],
	},
}

-- macros

wrapper.PNG_LIBPNG_VER_STRING = "1.6.47"
wrapper.PNG_HEADER_VERSION_STRING =  ' libpng version '..wrapper.PNG_LIBPNG_VER_STRING..'\n'

-- this is a value in C but a function in Lua
function wrapper.png_libpng_ver() return wrapper.png_get_header_ver(nil) end

wrapper.PNG_GAMMA_THRESHOLD = wrapper.PNG_GAMMA_THRESHOLD_FIXED * .00001

return wrapper
