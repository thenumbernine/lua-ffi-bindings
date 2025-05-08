local ffi = require 'ffi'

-- typedefs

require 'ffi.req' 'c.stdio'	-- for FILE, even though jpeglib.h itself never includes <stdio.h> ... hmm ...

-- TODO does this discrepency still exist in Windows' LibJPEG Turbo 3.0.4 ?
if ffi.os == 'Windows' then
	ffi.cdef[[
typedef unsigned char boolean;
typedef signed int INT32;
]]
else
	ffi.cdef[[
typedef long INT32;
typedef int boolean;
]]
end

ffi.cdef[[
typedef unsigned char JSAMPLE;
typedef short J12SAMPLE;
typedef unsigned short J16SAMPLE;
typedef short JCOEF;
typedef unsigned char JOCTET;
typedef unsigned char UINT8;
typedef unsigned short UINT16;
typedef short INT16;
typedef unsigned int JDIMENSION;
typedef JSAMPLE *JSAMPROW;
typedef JSAMPROW *JSAMPARRAY;
typedef JSAMPARRAY *JSAMPIMAGE;
typedef J12SAMPLE *J12SAMPROW;
typedef J12SAMPROW *J12SAMPARRAY;
typedef J12SAMPARRAY *J12SAMPIMAGE;
typedef J16SAMPLE *J16SAMPROW;
typedef J16SAMPROW *J16SAMPARRAY;
typedef J16SAMPARRAY *J16SAMPIMAGE;
typedef JCOEF JBLOCK[64];
typedef JBLOCK *JBLOCKROW;
typedef JBLOCKROW *JBLOCKARRAY;
typedef JBLOCKARRAY *JBLOCKIMAGE;
typedef JCOEF *JCOEFPTR;
typedef struct {
	UINT16 quantval[64];
	boolean sent_table;
} JQUANT_TBL;
typedef struct {
	UINT8 bits[17];
	UINT8 huffval[256];
	boolean sent_table;
} JHUFF_TBL;
typedef struct {
	int component_id;
	int component_index;
	int h_samp_factor;
	int v_samp_factor;
	int quant_tbl_no;
	int dc_tbl_no;
	int ac_tbl_no;
	JDIMENSION width_in_blocks;
	JDIMENSION height_in_blocks;
	int DCT_h_scaled_size;
	int DCT_v_scaled_size;
	JDIMENSION downsampled_width;
	JDIMENSION downsampled_height;
	boolean component_needed;
	int MCU_width;
	int MCU_height;
	int MCU_blocks;
	int MCU_sample_width;
	int last_col_width;
	int last_row_height;
	JQUANT_TBL *quant_table;
	void *dct_table;
} jpeg_component_info;
typedef struct {
	int comps_in_scan;
	int component_index[4];
	int Ss, Se;
	int Ah, Al;
} jpeg_scan_info;
typedef struct jpeg_marker_struct *jpeg_saved_marker_ptr;
struct jpeg_marker_struct {
	jpeg_saved_marker_ptr next;
	UINT8 marker;
	unsigned int original_length;
	unsigned int data_length;
	JOCTET *data;
};
typedef enum {
	JCS_UNKNOWN,
	JCS_GRAYSCALE,
	JCS_RGB,
	JCS_YCbCr,
	JCS_CMYK,
	JCS_YCCK,
	JCS_EXT_RGB,
	JCS_EXT_RGBX,
	JCS_EXT_BGR,
	JCS_EXT_BGRX,
	JCS_EXT_XBGR,
	JCS_EXT_XRGB,
	JCS_EXT_RGBA,
	JCS_EXT_BGRA,
	JCS_EXT_ABGR,
	JCS_EXT_ARGB,
	JCS_RGB565,
} J_COLOR_SPACE;
typedef enum {
	JDCT_ISLOW,
	JDCT_IFAST,
	JDCT_FLOAT,
} J_DCT_METHOD;
typedef enum {
	JDITHER_NONE,
	JDITHER_ORDERED,
	JDITHER_FS,
} J_DITHER_MODE;
struct jpeg_common_struct {
	struct jpeg_error_mgr *err;
	struct jpeg_memory_mgr *mem;
	struct jpeg_progress_mgr *progress;
	void *client_data;
	boolean is_decompressor;
	int global_state;
};
typedef struct jpeg_common_struct *j_common_ptr;
typedef struct jpeg_compress_struct *j_compress_ptr;
typedef struct jpeg_decompress_struct *j_decompress_ptr;
struct jpeg_compress_struct {
	struct jpeg_error_mgr *err;
	struct jpeg_memory_mgr *mem;
	struct jpeg_progress_mgr *progress;
	void *client_data;
	boolean is_decompressor;
	int global_state;
	struct jpeg_destination_mgr *dest;
	JDIMENSION image_width;
	JDIMENSION image_height;
	int input_components;
	J_COLOR_SPACE in_color_space;
	double input_gamma;
	unsigned int scale_num, scale_denom;
	JDIMENSION jpeg_width;
	JDIMENSION jpeg_height;
	int data_precision;
	int num_components;
	J_COLOR_SPACE jpeg_color_space;
	jpeg_component_info *comp_info;
	JQUANT_TBL *quant_tbl_ptrs[4];
	int q_scale_factor[4];
	JHUFF_TBL *dc_huff_tbl_ptrs[4];
	JHUFF_TBL *ac_huff_tbl_ptrs[4];
	UINT8 arith_dc_L[16];
	UINT8 arith_dc_U[16];
	UINT8 arith_ac_K[16];
	int num_scans;
	jpeg_scan_info const *scan_info;
	boolean raw_data_in;
	boolean arith_code;
	boolean optimize_coding;
	boolean CCIR601_sampling;
	boolean do_fancy_downsampling;
	int smoothing_factor;
	J_DCT_METHOD dct_method;
	unsigned int restart_interval;
	int restart_in_rows;
	boolean write_JFIF_header;
	UINT8 JFIF_major_version;
	UINT8 JFIF_minor_version;
	UINT8 density_unit;
	UINT16 X_density;
	UINT16 Y_density;
	boolean write_Adobe_marker;
	JDIMENSION next_scanline;
	boolean progressive_mode;
	int max_h_samp_factor;
	int max_v_samp_factor;
	int min_DCT_h_scaled_size;
	int min_DCT_v_scaled_size;
	JDIMENSION total_iMCU_rows;
	int comps_in_scan;
	jpeg_component_info *cur_comp_info[4];
	JDIMENSION MCUs_per_row;
	JDIMENSION MCU_rows_in_scan;
	int blocks_in_MCU;
	int MCU_membership[10];
	int Ss, Se, Ah, Al;
	int block_size;
	int const *natural_order;
	int lim_Se;
	struct jpeg_comp_master *master;
	struct jpeg_c_main_controller *main;
	struct jpeg_c_prep_controller *prep;
	struct jpeg_c_coef_controller *coef;
	struct jpeg_marker_writer *marker;
	struct jpeg_color_converter *cconvert;
	struct jpeg_downsampler *downsample;
	struct jpeg_forward_dct *fdct;
	struct jpeg_entropy_encoder *entropy;
	jpeg_scan_info *script_space;
	int script_space_size;
};
struct jpeg_decompress_struct {
	struct jpeg_error_mgr *err;
	struct jpeg_memory_mgr *mem;
	struct jpeg_progress_mgr *progress;
	void *client_data;
	boolean is_decompressor;
	int global_state;
	struct jpeg_source_mgr *src;
	JDIMENSION image_width;
	JDIMENSION image_height;
	int num_components;
	J_COLOR_SPACE jpeg_color_space;
	J_COLOR_SPACE out_color_space;
	unsigned int scale_num, scale_denom;
	double output_gamma;
	boolean buffered_image;
	boolean raw_data_out;
	J_DCT_METHOD dct_method;
	boolean do_fancy_upsampling;
	boolean do_block_smoothing;
	boolean quantize_colors;
	J_DITHER_MODE dither_mode;
	boolean two_pass_quantize;
	int desired_number_of_colors;
	boolean enable_1pass_quant;
	boolean enable_external_quant;
	boolean enable_2pass_quant;
	JDIMENSION output_width;
	JDIMENSION output_height;
	int out_color_components;
	int output_components;
	int rec_outbuf_height;
	int actual_number_of_colors;
	JSAMPARRAY colormap;
	JDIMENSION output_scanline;
	int input_scan_number;
	JDIMENSION input_iMCU_row;
	int output_scan_number;
	JDIMENSION output_iMCU_row;
	int (*coef_bits)[64];
	JQUANT_TBL *quant_tbl_ptrs[4];
	JHUFF_TBL *dc_huff_tbl_ptrs[4];
	JHUFF_TBL *ac_huff_tbl_ptrs[4];
	int data_precision;
	jpeg_component_info *comp_info;
	boolean is_baseline;
	boolean progressive_mode;
	boolean arith_code;
	UINT8 arith_dc_L[16];
	UINT8 arith_dc_U[16];
	UINT8 arith_ac_K[16];
	unsigned int restart_interval;
	boolean saw_JFIF_marker;
	UINT8 JFIF_major_version;
	UINT8 JFIF_minor_version;
	UINT8 density_unit;
	UINT16 X_density;
	UINT16 Y_density;
	boolean saw_Adobe_marker;
	UINT8 Adobe_transform;
	boolean CCIR601_sampling;
	jpeg_saved_marker_ptr marker_list;
	int max_h_samp_factor;
	int max_v_samp_factor;
	int min_DCT_h_scaled_size;
	int min_DCT_v_scaled_size;
	JDIMENSION total_iMCU_rows;
	JSAMPLE *sample_range_limit;
	int comps_in_scan;
	jpeg_component_info *cur_comp_info[4];
	JDIMENSION MCUs_per_row;
	JDIMENSION MCU_rows_in_scan;
	int blocks_in_MCU;
	int MCU_membership[10];
	int Ss, Se, Ah, Al;
	int block_size;
	int const *natural_order;
	int lim_Se;
	int unread_marker;
	struct jpeg_decomp_master *master;
	struct jpeg_d_main_controller *main;
	struct jpeg_d_coef_controller *coef;
	struct jpeg_d_post_controller *post;
	struct jpeg_input_controller *inputctl;
	struct jpeg_marker_reader *marker;
	struct jpeg_entropy_decoder *entropy;
	struct jpeg_inverse_dct *idct;
	struct jpeg_upsampler *upsample;
	struct jpeg_color_deconverter *cconvert;
	struct jpeg_color_quantizer *cquantize;
};
struct jpeg_error_mgr {
	void (*error_exit)(j_common_ptr cinfo);
	void (*emit_message)(j_common_ptr cinfo, int msg_level);
	void (*output_message)(j_common_ptr cinfo);
	void (*format_message)(j_common_ptr cinfo, char *buffer);
	void (*reset_error_mgr)(j_common_ptr cinfo);
	int msg_code;
	union {
		int i[8];
		char s[80];
	} msg_parm;
	int trace_level;
	long num_warnings;
	char const *const *jpeg_message_table;
	int last_jpeg_message;
	char const *const *addon_message_table;
	int first_addon_message;
	int last_addon_message;
};
struct jpeg_progress_mgr {
	void (*progress_monitor)(j_common_ptr cinfo);
	long pass_counter;
	long pass_limit;
	int completed_passes;
	int total_passes;
};
struct jpeg_destination_mgr {
	JOCTET *next_output_byte;
	size_t free_in_buffer;
	void (*init_destination)(j_compress_ptr cinfo);
	boolean (*empty_output_buffer)(j_compress_ptr cinfo);
	void (*term_destination)(j_compress_ptr cinfo);
};
struct jpeg_source_mgr {
	JOCTET const *next_input_byte;
	size_t bytes_in_buffer;
	void (*init_source)(j_decompress_ptr cinfo);
	boolean (*fill_input_buffer)(j_decompress_ptr cinfo);
	void (*skip_input_data)(j_decompress_ptr cinfo, long num_bytes);
	boolean (*resync_to_restart)(j_decompress_ptr cinfo, int desired);
	void (*term_source)(j_decompress_ptr cinfo);
};
typedef struct jvirt_sarray_control *jvirt_sarray_ptr;
typedef struct jvirt_barray_control *jvirt_barray_ptr;
struct jpeg_memory_mgr {
	void *(*alloc_small)(j_common_ptr cinfo, int pool_id, size_t sizeofobject);
	void *(*alloc_large)(j_common_ptr cinfo, int pool_id, size_t sizeofobject);
	JSAMPARRAY (*alloc_sarray)(j_common_ptr cinfo, int pool_id, JDIMENSION samplesperrow, JDIMENSION numrows);
	JBLOCKARRAY (*alloc_barray)(j_common_ptr cinfo, int pool_id, JDIMENSION blocksperrow, JDIMENSION numrows);
	jvirt_sarray_ptr (*request_virt_sarray)(j_common_ptr cinfo, int pool_id, boolean pre_zero, JDIMENSION samplesperrow, JDIMENSION numrows, JDIMENSION maxaccess);
	jvirt_barray_ptr (*request_virt_barray)(j_common_ptr cinfo, int pool_id, boolean pre_zero, JDIMENSION blocksperrow, JDIMENSION numrows, JDIMENSION maxaccess);
	void (*realize_virt_arrays)(j_common_ptr cinfo);
	JSAMPARRAY (*access_virt_sarray)(j_common_ptr cinfo, jvirt_sarray_ptr ptr, JDIMENSION start_row, JDIMENSION num_rows, boolean writable);
	JBLOCKARRAY (*access_virt_barray)(j_common_ptr cinfo, jvirt_barray_ptr ptr, JDIMENSION start_row, JDIMENSION num_rows, boolean writable);
	void (*free_pool)(j_common_ptr cinfo, int pool_id);
	void (*self_destruct)(j_common_ptr cinfo);
	long max_memory_to_use;
	long max_alloc_chunk;
};
typedef boolean (*jpeg_marker_parser_method)(j_decompress_ptr cinfo);
]]

local wrapper
wrapper = require 'ffi.libwrapper'{
	lib = require 'ffi.load' 'jpeg',
	defs = {
		-- enums

		JPEGLIB_H = 1,
		JPEG_LIB_VERSION = 80,
		LIBJPEG_TURBO_VERSION_NUMBER = 3000004,
		C_ARITH_CODING_SUPPORTED = 1,
		D_ARITH_CODING_SUPPORTED = 1,
		MEM_SRCDST_SUPPORTED = 1,
		WITH_SIMD = 1,
		BITS_IN_JSAMPLE = 8,
		MAX_COMPONENTS = 10,
		MAXJSAMPLE = 255,
		CENTERJSAMPLE = 128,
		MAXJ12SAMPLE = 4095,
		CENTERJ12SAMPLE = 2048,
		MAXJ16SAMPLE = 65535,
		CENTERJ16SAMPLE = 32768,
		JPEG_MAX_DIMENSION = 65500,
		FAR = 1,
		FALSE = 0,
		TRUE = 1,
		DCTSIZE = 8,
		DCTSIZE2 = 64,
		NUM_QUANT_TBLS = 4,
		NUM_HUFF_TBLS = 4,
		NUM_ARITH_TBLS = 16,
		MAX_COMPS_IN_SCAN = 4,
		MAX_SAMP_FACTOR = 4,
		C_MAX_BLOCKS_IN_MCU = 10,
		D_MAX_BLOCKS_IN_MCU = 10,
		JCS_EXTENSIONS = 1,
		JCS_ALPHA_EXTENSIONS = 1,
		JDCT_DEFAULT = 0,
		JDCT_FASTEST = 0,
		JMSG_LENGTH_MAX = 200,
		JMSG_STR_PARM_MAX = 80,
		JPOOL_PERMANENT = 0,
		JPOOL_IMAGE = 1,
		JPOOL_NUMPOOLS = 2,
		JPEG_SUSPENDED = 0,
		JPEG_HEADER_OK = 1,
		JPEG_HEADER_TABLES_ONLY = 2,
		JPEG_REACHED_SOS = 1,
		JPEG_REACHED_EOI = 2,
		JPEG_ROW_COMPLETED = 3,
		JPEG_SCAN_COMPLETED = 4,
		JPEG_RST0 = 208,
		JPEG_EOI = 217,
		JPEG_APP0 = 224,
		JPEG_COM = 254,

		-- functions

		jpeg_std_error = [[struct jpeg_error_mgr *jpeg_std_error(struct jpeg_error_mgr *err);]],
		jpeg_CreateCompress = [[void jpeg_CreateCompress(j_compress_ptr cinfo, int version, size_t structsize);]],
		jpeg_CreateDecompress = [[void jpeg_CreateDecompress(j_decompress_ptr cinfo, int version, size_t structsize);]],
		jpeg_destroy_compress = [[void jpeg_destroy_compress(j_compress_ptr cinfo);]],
		jpeg_destroy_decompress = [[void jpeg_destroy_decompress(j_decompress_ptr cinfo);]],
		jpeg_stdio_dest = [[void jpeg_stdio_dest(j_compress_ptr cinfo, FILE *outfile);]],
		jpeg_stdio_src = [[void jpeg_stdio_src(j_decompress_ptr cinfo, FILE *infile);]],
		jpeg_mem_dest = [[void jpeg_mem_dest(j_compress_ptr cinfo, unsigned char **outbuffer, unsigned long *outsize);]],
		jpeg_mem_src = [[void jpeg_mem_src(j_decompress_ptr cinfo, unsigned char const *inbuffer, unsigned long insize);]],
		jpeg_set_defaults = [[void jpeg_set_defaults(j_compress_ptr cinfo);]],
		jpeg_set_colorspace = [[void jpeg_set_colorspace(j_compress_ptr cinfo, J_COLOR_SPACE colorspace);]],
		jpeg_default_colorspace = [[void jpeg_default_colorspace(j_compress_ptr cinfo);]],
		jpeg_set_quality = [[void jpeg_set_quality(j_compress_ptr cinfo, int quality, boolean force_baseline);]],
		jpeg_set_linear_quality = [[void jpeg_set_linear_quality(j_compress_ptr cinfo, int scale_factor, boolean force_baseline);]],
		jpeg_default_qtables = [[void jpeg_default_qtables(j_compress_ptr cinfo, boolean force_baseline);]],
		jpeg_add_quant_table = [[void jpeg_add_quant_table(j_compress_ptr cinfo, int which_tbl, unsigned int const *basic_table, int scale_factor, boolean force_baseline);]],
		jpeg_quality_scaling = [[int jpeg_quality_scaling(int quality);]],
		jpeg_enable_lossless = [[void jpeg_enable_lossless(j_compress_ptr cinfo, int predictor_selection_value, int point_transform);]],
		jpeg_simple_progression = [[void jpeg_simple_progression(j_compress_ptr cinfo);]],
		jpeg_suppress_tables = [[void jpeg_suppress_tables(j_compress_ptr cinfo, boolean suppress);]],
		jpeg_alloc_quant_table = [[JQUANT_TBL *jpeg_alloc_quant_table(j_common_ptr cinfo);]],
		jpeg_alloc_huff_table = [[JHUFF_TBL *jpeg_alloc_huff_table(j_common_ptr cinfo);]],
		jpeg_start_compress = [[void jpeg_start_compress(j_compress_ptr cinfo, boolean write_all_tables);]],
		jpeg_write_scanlines = [[JDIMENSION jpeg_write_scanlines(j_compress_ptr cinfo, JSAMPARRAY scanlines, JDIMENSION num_lines);]],
		jpeg12_write_scanlines = [[JDIMENSION jpeg12_write_scanlines(j_compress_ptr cinfo, J12SAMPARRAY scanlines, JDIMENSION num_lines);]],
		jpeg16_write_scanlines = [[JDIMENSION jpeg16_write_scanlines(j_compress_ptr cinfo, J16SAMPARRAY scanlines, JDIMENSION num_lines);]],
		jpeg_finish_compress = [[void jpeg_finish_compress(j_compress_ptr cinfo);]],
		jpeg_calc_jpeg_dimensions = [[void jpeg_calc_jpeg_dimensions(j_compress_ptr cinfo);]],
		jpeg_write_raw_data = [[JDIMENSION jpeg_write_raw_data(j_compress_ptr cinfo, JSAMPIMAGE data, JDIMENSION num_lines);]],
		jpeg12_write_raw_data = [[JDIMENSION jpeg12_write_raw_data(j_compress_ptr cinfo, J12SAMPIMAGE data, JDIMENSION num_lines);]],
		jpeg_write_marker = [[void jpeg_write_marker(j_compress_ptr cinfo, int marker, JOCTET const *dataptr, unsigned int datalen);]],
		jpeg_write_m_header = [[void jpeg_write_m_header(j_compress_ptr cinfo, int marker, unsigned int datalen);]],
		jpeg_write_m_byte = [[void jpeg_write_m_byte(j_compress_ptr cinfo, int val);]],
		jpeg_write_tables = [[void jpeg_write_tables(j_compress_ptr cinfo);]],
		jpeg_write_icc_profile = [[void jpeg_write_icc_profile(j_compress_ptr cinfo, JOCTET const *icc_data_ptr, unsigned int icc_data_len);]],
		jpeg_read_header = [[int jpeg_read_header(j_decompress_ptr cinfo, boolean require_image);]],
		jpeg_start_decompress = [[boolean jpeg_start_decompress(j_decompress_ptr cinfo);]],
		jpeg_read_scanlines = [[JDIMENSION jpeg_read_scanlines(j_decompress_ptr cinfo, JSAMPARRAY scanlines, JDIMENSION max_lines);]],
		jpeg12_read_scanlines = [[JDIMENSION jpeg12_read_scanlines(j_decompress_ptr cinfo, J12SAMPARRAY scanlines, JDIMENSION max_lines);]],
		jpeg16_read_scanlines = [[JDIMENSION jpeg16_read_scanlines(j_decompress_ptr cinfo, J16SAMPARRAY scanlines, JDIMENSION max_lines);]],
		jpeg_skip_scanlines = [[JDIMENSION jpeg_skip_scanlines(j_decompress_ptr cinfo, JDIMENSION num_lines);]],
		jpeg12_skip_scanlines = [[JDIMENSION jpeg12_skip_scanlines(j_decompress_ptr cinfo, JDIMENSION num_lines);]],
		jpeg_crop_scanline = [[void jpeg_crop_scanline(j_decompress_ptr cinfo, JDIMENSION *xoffset, JDIMENSION *width);]],
		jpeg12_crop_scanline = [[void jpeg12_crop_scanline(j_decompress_ptr cinfo, JDIMENSION *xoffset, JDIMENSION *width);]],
		jpeg_finish_decompress = [[boolean jpeg_finish_decompress(j_decompress_ptr cinfo);]],
		jpeg_read_raw_data = [[JDIMENSION jpeg_read_raw_data(j_decompress_ptr cinfo, JSAMPIMAGE data, JDIMENSION max_lines);]],
		jpeg12_read_raw_data = [[JDIMENSION jpeg12_read_raw_data(j_decompress_ptr cinfo, J12SAMPIMAGE data, JDIMENSION max_lines);]],
		jpeg_has_multiple_scans = [[boolean jpeg_has_multiple_scans(j_decompress_ptr cinfo);]],
		jpeg_start_output = [[boolean jpeg_start_output(j_decompress_ptr cinfo, int scan_number);]],
		jpeg_finish_output = [[boolean jpeg_finish_output(j_decompress_ptr cinfo);]],
		jpeg_input_complete = [[boolean jpeg_input_complete(j_decompress_ptr cinfo);]],
		jpeg_new_colormap = [[void jpeg_new_colormap(j_decompress_ptr cinfo);]],
		jpeg_consume_input = [[int jpeg_consume_input(j_decompress_ptr cinfo);]],
		jpeg_core_output_dimensions = [[void jpeg_core_output_dimensions(j_decompress_ptr cinfo);]],
		jpeg_calc_output_dimensions = [[void jpeg_calc_output_dimensions(j_decompress_ptr cinfo);]],
		jpeg_save_markers = [[void jpeg_save_markers(j_decompress_ptr cinfo, int marker_code, unsigned int length_limit);]],
		jpeg_set_marker_processor = [[void jpeg_set_marker_processor(j_decompress_ptr cinfo, int marker_code, jpeg_marker_parser_method routine);]],
		jpeg_read_coefficients = [[jvirt_barray_ptr *jpeg_read_coefficients(j_decompress_ptr cinfo);]],
		jpeg_write_coefficients = [[void jpeg_write_coefficients(j_compress_ptr cinfo, jvirt_barray_ptr *coef_arrays);]],
		jpeg_copy_critical_parameters = [[void jpeg_copy_critical_parameters(j_decompress_ptr srcinfo, j_compress_ptr dstinfo);]],
		jpeg_abort_compress = [[void jpeg_abort_compress(j_compress_ptr cinfo);]],
		jpeg_abort_decompress = [[void jpeg_abort_decompress(j_decompress_ptr cinfo);]],
		jpeg_abort = [[void jpeg_abort(j_common_ptr cinfo);]],
		jpeg_destroy = [[void jpeg_destroy(j_common_ptr cinfo);]],
		jpeg_resync_to_restart = [[boolean jpeg_resync_to_restart(j_decompress_ptr cinfo, int desired);]],
		jpeg_read_icc_profile = [[boolean jpeg_read_icc_profile(j_decompress_ptr cinfo, JOCTET **icc_data_ptr, unsigned int *icc_data_len);]],
	},
}

-- these are #define's in jpeglib.h

wrapper.LIBJPEG_TURBO_VERSION = '3.0.4'

function wrapper.jpeg_create_compress(cinfo)
	return wrapper.jpeg_CreateCompress(cinfo, wrapper.JPEG_LIB_VERSION, ffi.sizeof'struct jpeg_compress_struct')
end

function wrapper.jpeg_create_decompress(cinfo)
	return wrapper.jpeg_CreateDecompress(cinfo, wrapper.JPEG_LIB_VERSION, ffi.sizeof'struct jpeg_decompress_struct')
end

return wrapper
