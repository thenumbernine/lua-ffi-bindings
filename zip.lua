local ffi = require 'ffi'

-- comments

--[[
/* #define LIBZIP_VERSION "1.7.3" ### string, not number "\"1.7.3\"" */
/* #define ZIP_EXTERN __attribute__((visibility("default"))) ### string, not number "__attribute__((visibility(\"default\")))" */
/* #define ZIP_OPSYS_DEFAULT ZIP_OPSYS_UNIX ### string, not number "ZIP_OPSYS_UNIX" */
/* #define ZIP_SOURCE_SUPPORTS_READABLE	(ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_OPEN)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_READ)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_CLOSE)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_STAT)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_ERROR)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_FREE)) ### string, not number "(ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_OPEN)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_READ)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_CLOSE)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_STAT)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_ERROR)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_FREE))" */
/* #define ZIP_SOURCE_SUPPORTS_SEEKABLE	(ZIP_SOURCE_SUPPORTS_READABLE                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_SEEK)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_TELL)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_SUPPORTS)) ### string, not number "(ZIP_SOURCE_SUPPORTS_READABLE                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_SEEK)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_TELL)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_SUPPORTS))" */
/* #define ZIP_SOURCE_SUPPORTS_WRITABLE    (ZIP_SOURCE_SUPPORTS_SEEKABLE                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_BEGIN_WRITE)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_COMMIT_WRITE)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_ROLLBACK_WRITE)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_WRITE)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_SEEK_WRITE)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_TELL_WRITE)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_REMOVE)) ### string, not number "(ZIP_SOURCE_SUPPORTS_SEEKABLE                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_BEGIN_WRITE)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_COMMIT_WRITE)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_ROLLBACK_WRITE)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_WRITE)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_SEEK_WRITE)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_TELL_WRITE)                                           | ZIP_SOURCE_MAKE_COMMAND_BITMASK(ZIP_SOURCE_REMOVE))" */
--]]

-- typedefs

require 'ffi.req' 'c.inttypes'
require 'ffi.req' 'c.stdio'
require 'ffi.req' 'c.sys.types'
require 'ffi.req' 'c.time'

ffi.cdef[[
typedef int8_t zip_int8_t;
typedef uint8_t zip_uint8_t;
typedef int16_t zip_int16_t;
typedef uint16_t zip_uint16_t;
typedef int32_t zip_int32_t;
typedef uint32_t zip_uint32_t;
typedef int64_t zip_int64_t;
typedef uint64_t zip_uint64_t;
enum zip_source_cmd {
	ZIP_SOURCE_OPEN,
	ZIP_SOURCE_READ,
	ZIP_SOURCE_CLOSE,
	ZIP_SOURCE_STAT,
	ZIP_SOURCE_ERROR,
	ZIP_SOURCE_FREE,
	ZIP_SOURCE_SEEK,
	ZIP_SOURCE_TELL,
	ZIP_SOURCE_BEGIN_WRITE,
	ZIP_SOURCE_COMMIT_WRITE,
	ZIP_SOURCE_ROLLBACK_WRITE,
	ZIP_SOURCE_WRITE,
	ZIP_SOURCE_SEEK_WRITE,
	ZIP_SOURCE_TELL_WRITE,
	ZIP_SOURCE_SUPPORTS,
	ZIP_SOURCE_REMOVE,
	ZIP_SOURCE_RESERVED_1,
	ZIP_SOURCE_BEGIN_WRITE_CLONING,
	ZIP_SOURCE_ACCEPT_EMPTY,
	ZIP_SOURCE_GET_FILE_ATTRIBUTES,
};
typedef enum zip_source_cmd zip_source_cmd_t;
struct zip_source_args_seek {
	zip_int64_t offset;
	int whence;
};
typedef struct zip_source_args_seek zip_source_args_seek_t;
struct zip_error {
	int zip_err;
	int sys_err;
	char *str;
};
struct zip_stat {
	zip_uint64_t valid;
	char const *name;
	zip_uint64_t index;
	zip_uint64_t size;
	zip_uint64_t comp_size;
	time_t mtime;
	zip_uint32_t crc;
	zip_uint16_t comp_method;
	zip_uint16_t encryption_method;
	zip_uint32_t flags;
};
struct zip_buffer_fragment {
	zip_uint8_t *data;
	zip_uint64_t length;
};
struct zip_file_attributes {
	zip_uint64_t valid;
	zip_uint8_t version;
	zip_uint8_t host_system;
	zip_uint8_t ascii;
	zip_uint8_t version_needed;
	zip_uint32_t external_file_attributes;
	zip_uint16_t general_purpose_bit_flags;
	zip_uint16_t general_purpose_bit_mask;
};
struct zip;
struct zip_file;
struct zip_source;
typedef struct zip zip_t;
typedef struct zip_error zip_error_t;
typedef struct zip_file zip_file_t;
typedef struct zip_file_attributes zip_file_attributes_t;
typedef struct zip_source zip_source_t;
typedef struct zip_stat zip_stat_t;
typedef struct zip_buffer_fragment zip_buffer_fragment_t;
typedef zip_uint32_t zip_flags_t;
typedef zip_int64_t (*zip_source_callback)(void *, void *, zip_uint64_t, zip_source_cmd_t);
typedef void (*zip_progress_callback)(zip_t *, double, void *);
typedef int (*zip_cancel_callback)(zip_t *, void *);
typedef void (*zip_progress_callback_t)(double);
]]

local wrapper
wrapper = require 'ffi.libwrapper'{
	lib = require 'ffi.load' 'zip',
	defs = {
		-- enums

		LIBZIP_VERSION_MAJOR = 1,
		LIBZIP_VERSION_MINOR = 7,
		LIBZIP_VERSION_MICRO = 3,
		ZIP_INT8_MIN = -1,
		ZIP_INT8_MAX = 127,
		ZIP_UINT8_MAX = 255,
		ZIP_INT16_MIN = -1,
		ZIP_INT16_MAX = 32767,
		ZIP_UINT16_MAX = 65535,
		ZIP_INT32_MIN = -1,
		ZIP_INT32_MAX = 2147483647,
		ZIP_UINT32_MAX = 0xffffffff,
		ZIP_INT64_MIN = -1,
		ZIP_CREATE = 1,
		ZIP_EXCL = 2,
		ZIP_CHECKCONS = 4,
		ZIP_TRUNCATE = 8,
		ZIP_RDONLY = 16,
		ZIP_FL_NOCASE = 1,
		ZIP_FL_NODIR = 2,
		ZIP_FL_COMPRESSED = 4,
		ZIP_FL_UNCHANGED = 8,
		ZIP_FL_ENCRYPTED = 32,
		ZIP_FL_ENC_GUESS = 0,
		ZIP_FL_ENC_RAW = 64,
		ZIP_FL_ENC_STRICT = 128,
		ZIP_FL_LOCAL = 256,
		ZIP_FL_CENTRAL = 512,
		ZIP_FL_ENC_UTF_8 = 2048,
		ZIP_FL_ENC_CP437 = 4096,
		ZIP_FL_OVERWRITE = 8192,
		ZIP_AFL_RDONLY = 2,
		ZIP_EXTRA_FIELD_ALL = 65535,
		ZIP_EXTRA_FIELD_NEW = 65535,
		ZIP_ER_OK = 0,
		ZIP_ER_MULTIDISK = 1,
		ZIP_ER_RENAME = 2,
		ZIP_ER_CLOSE = 3,
		ZIP_ER_SEEK = 4,
		ZIP_ER_READ = 5,
		ZIP_ER_WRITE = 6,
		ZIP_ER_CRC = 7,
		ZIP_ER_ZIPCLOSED = 8,
		ZIP_ER_NOENT = 9,
		ZIP_ER_EXISTS = 10,
		ZIP_ER_OPEN = 11,
		ZIP_ER_TMPOPEN = 12,
		ZIP_ER_ZLIB = 13,
		ZIP_ER_MEMORY = 14,
		ZIP_ER_CHANGED = 15,
		ZIP_ER_COMPNOTSUPP = 16,
		ZIP_ER_EOF = 17,
		ZIP_ER_INVAL = 18,
		ZIP_ER_NOZIP = 19,
		ZIP_ER_INTERNAL = 20,
		ZIP_ER_INCONS = 21,
		ZIP_ER_REMOVE = 22,
		ZIP_ER_DELETED = 23,
		ZIP_ER_ENCRNOTSUPP = 24,
		ZIP_ER_RDONLY = 25,
		ZIP_ER_NOPASSWD = 26,
		ZIP_ER_WRONGPASSWD = 27,
		ZIP_ER_OPNOTSUPP = 28,
		ZIP_ER_INUSE = 29,
		ZIP_ER_TELL = 30,
		ZIP_ER_COMPRESSED_DATA = 31,
		ZIP_ER_CANCELLED = 32,
		ZIP_ET_NONE = 0,
		ZIP_ET_SYS = 1,
		ZIP_ET_ZLIB = 2,
		ZIP_CM_DEFAULT = -1,
		ZIP_CM_STORE = 0,
		ZIP_CM_SHRINK = 1,
		ZIP_CM_REDUCE_1 = 2,
		ZIP_CM_REDUCE_2 = 3,
		ZIP_CM_REDUCE_3 = 4,
		ZIP_CM_REDUCE_4 = 5,
		ZIP_CM_IMPLODE = 6,
		ZIP_CM_DEFLATE = 8,
		ZIP_CM_DEFLATE64 = 9,
		ZIP_CM_PKWARE_IMPLODE = 10,
		ZIP_CM_BZIP2 = 12,
		ZIP_CM_LZMA = 14,
		ZIP_CM_TERSE = 18,
		ZIP_CM_LZ77 = 19,
		ZIP_CM_LZMA2 = 33,
		ZIP_CM_XZ = 95,
		ZIP_CM_JPEG = 96,
		ZIP_CM_WAVPACK = 97,
		ZIP_CM_PPMD = 98,
		ZIP_EM_NONE = 0,
		ZIP_EM_TRAD_PKWARE = 1,
		ZIP_EM_AES_128 = 257,
		ZIP_EM_AES_192 = 258,
		ZIP_EM_AES_256 = 259,
		ZIP_EM_UNKNOWN = 65535,
		ZIP_OPSYS_DOS = 0x00,
		ZIP_OPSYS_AMIGA = 0x01,
		ZIP_OPSYS_OPENVMS = 0x02,
		ZIP_OPSYS_UNIX = 0x03,
		ZIP_OPSYS_VM_CMS = 0x04,
		ZIP_OPSYS_ATARI_ST = 0x05,
		ZIP_OPSYS_OS_2 = 0x06,
		ZIP_OPSYS_MACINTOSH = 0x07,
		ZIP_OPSYS_Z_SYSTEM = 0x08,
		ZIP_OPSYS_CPM = 0x09,
		ZIP_OPSYS_WINDOWS_NTFS = 0x0a,
		ZIP_OPSYS_MVS = 0x0b,
		ZIP_OPSYS_VSE = 0x0c,
		ZIP_OPSYS_ACORN_RISC = 0x0d,
		ZIP_OPSYS_VFAT = 0x0e,
		ZIP_OPSYS_ALTERNATE_MVS = 0x0f,
		ZIP_OPSYS_BEOS = 0x10,
		ZIP_OPSYS_TANDEM = 0x11,
		ZIP_OPSYS_OS_400 = 0x12,
		ZIP_OPSYS_OS_X = 0x13,
		ZIP_STAT_NAME = 0x0001,
		ZIP_STAT_INDEX = 0x0002,
		ZIP_STAT_SIZE = 0x0004,
		ZIP_STAT_COMP_SIZE = 0x0008,
		ZIP_STAT_MTIME = 0x0010,
		ZIP_STAT_CRC = 0x0020,
		ZIP_STAT_COMP_METHOD = 0x0040,
		ZIP_STAT_ENCRYPTION_METHOD = 0x0080,
		ZIP_STAT_FLAGS = 0x0100,
		ZIP_FILE_ATTRIBUTES_HOST_SYSTEM = 0x0001,
		ZIP_FILE_ATTRIBUTES_ASCII = 0x0002,
		ZIP_FILE_ATTRIBUTES_VERSION_NEEDED = 0x0004,
		ZIP_FILE_ATTRIBUTES_EXTERNAL_FILE_ATTRIBUTES = 0x0008,
		ZIP_FILE_ATTRIBUTES_GENERAL_PURPOSE_BIT_FLAGS = 0x0010,
		ZIP_FL_RECOMPRESS = 16,

		-- functions

		zip_register_progress_callback = [[void zip_register_progress_callback(zip_t *, zip_progress_callback_t );]],
		zip_add = [[zip_int64_t zip_add(zip_t *, const char *, zip_source_t *);]],
		zip_add_dir = [[zip_int64_t zip_add_dir(zip_t *, const char *);]],
		zip_get_file_comment = [[const char * zip_get_file_comment(zip_t *, zip_uint64_t, int *, int);]],
		zip_get_num_files = [[int zip_get_num_files(zip_t *);]],
		zip_rename = [[int zip_rename(zip_t *, zip_uint64_t, const char *);]],
		zip_replace = [[int zip_replace(zip_t *, zip_uint64_t, zip_source_t *);]],
		zip_set_file_comment = [[int zip_set_file_comment(zip_t *, zip_uint64_t, const char *, int);]],
		zip_error_get_sys_type = [[int zip_error_get_sys_type(int);]],
		zip_error_get = [[void zip_error_get(zip_t *, int *, int *);]],
		zip_error_to_str = [[int zip_error_to_str(char *, zip_uint64_t, int, int);]],
		zip_file_error_get = [[void zip_file_error_get(zip_file_t *, int *, int *);]],
		zip_archive_set_tempdir = [[int zip_archive_set_tempdir(zip_t *, const char *);]],
		zip_close = [[int zip_close(zip_t *);]],
		zip_delete = [[int zip_delete(zip_t *, zip_uint64_t);]],
		zip_dir_add = [[zip_int64_t zip_dir_add(zip_t *, const char *, zip_flags_t);]],
		zip_discard = [[void zip_discard(zip_t *);]],
		zip_get_error = [[zip_error_t * zip_get_error(zip_t *);]],
		zip_error_clear = [[void zip_error_clear(zip_t *);]],
		zip_error_code_zip = [[int zip_error_code_zip(const zip_error_t *);]],
		zip_error_code_system = [[int zip_error_code_system(const zip_error_t *);]],
		zip_error_fini = [[void zip_error_fini(zip_error_t *);]],
		zip_error_init = [[void zip_error_init(zip_error_t *);]],
		zip_error_init_with_code = [[void zip_error_init_with_code(zip_error_t *, int);]],
		zip_error_set = [[void zip_error_set(zip_error_t *, int, int);]],
		zip_error_strerror = [[const char * zip_error_strerror(zip_error_t *);]],
		zip_error_system_type = [[int zip_error_system_type(const zip_error_t *);]],
		zip_error_to_data = [[zip_int64_t zip_error_to_data(const zip_error_t *, void *, zip_uint64_t);]],
		zip_fclose = [[int zip_fclose(zip_file_t *);]],
		zip_fdopen = [[zip_t * zip_fdopen(int, int, int *);]],
		zip_file_add = [[zip_int64_t zip_file_add(zip_t *, const char *, zip_source_t *, zip_flags_t);]],
		zip_file_attributes_init = [[void zip_file_attributes_init(zip_file_attributes_t *);]],
		zip_file_error_clear = [[void zip_file_error_clear(zip_file_t *);]],
		zip_file_extra_field_delete = [[int zip_file_extra_field_delete(zip_t *, zip_uint64_t, zip_uint16_t, zip_flags_t);]],
		zip_file_extra_field_delete_by_id = [[int zip_file_extra_field_delete_by_id(zip_t *, zip_uint64_t, zip_uint16_t, zip_uint16_t, zip_flags_t);]],
		zip_file_extra_field_set = [[int zip_file_extra_field_set(zip_t *, zip_uint64_t, zip_uint16_t, zip_uint16_t, const zip_uint8_t *, zip_uint16_t, zip_flags_t);]],
		zip_file_extra_fields_count = [[zip_int16_t zip_file_extra_fields_count(zip_t *, zip_uint64_t, zip_flags_t);]],
		zip_file_extra_fields_count_by_id = [[zip_int16_t zip_file_extra_fields_count_by_id(zip_t *, zip_uint64_t, zip_uint16_t, zip_flags_t);]],
		zip_file_extra_field_get = [[const zip_uint8_t * zip_file_extra_field_get(zip_t *, zip_uint64_t, zip_uint16_t, zip_uint16_t *, zip_uint16_t *, zip_flags_t);]],
		zip_file_extra_field_get_by_id = [[const zip_uint8_t * zip_file_extra_field_get_by_id(zip_t *, zip_uint64_t, zip_uint16_t, zip_uint16_t, zip_uint16_t *, zip_flags_t);]],
		zip_file_get_comment = [[const char * zip_file_get_comment(zip_t *, zip_uint64_t, zip_uint32_t *, zip_flags_t);]],
		zip_file_get_error = [[zip_error_t * zip_file_get_error(zip_file_t *);]],
		zip_file_get_external_attributes = [[int zip_file_get_external_attributes(zip_t *, zip_uint64_t, zip_flags_t, zip_uint8_t *, zip_uint32_t *);]],
		zip_file_rename = [[int zip_file_rename(zip_t *, zip_uint64_t, const char *, zip_flags_t);]],
		zip_file_replace = [[int zip_file_replace(zip_t *, zip_uint64_t, zip_source_t *, zip_flags_t);]],
		zip_file_set_comment = [[int zip_file_set_comment(zip_t *, zip_uint64_t, const char *, zip_uint16_t, zip_flags_t);]],
		zip_file_set_dostime = [[int zip_file_set_dostime(zip_t *, zip_uint64_t, zip_uint16_t, zip_uint16_t, zip_flags_t);]],
		zip_file_set_encryption = [[int zip_file_set_encryption(zip_t *, zip_uint64_t, zip_uint16_t, const char *);]],
		zip_file_set_external_attributes = [[int zip_file_set_external_attributes(zip_t *, zip_uint64_t, zip_flags_t, zip_uint8_t, zip_uint32_t);]],
		zip_file_set_mtime = [[int zip_file_set_mtime(zip_t *, zip_uint64_t, time_t, zip_flags_t);]],
		zip_file_strerror = [[const char * zip_file_strerror(zip_file_t *);]],
		zip_fopen = [[zip_file_t * zip_fopen(zip_t *, const char *, zip_flags_t);]],
		zip_fopen_encrypted = [[zip_file_t * zip_fopen_encrypted(zip_t *, const char *, zip_flags_t, const char *);]],
		zip_fopen_index = [[zip_file_t * zip_fopen_index(zip_t *, zip_uint64_t, zip_flags_t);]],
		zip_fopen_index_encrypted = [[zip_file_t * zip_fopen_index_encrypted(zip_t *, zip_uint64_t, zip_flags_t, const char *);]],
		zip_fread = [[zip_int64_t zip_fread(zip_file_t *, void *, zip_uint64_t);]],
		zip_fseek = [[zip_int8_t zip_fseek(zip_file_t *, zip_int64_t, int);]],
		zip_ftell = [[zip_int64_t zip_ftell(zip_file_t *);]],
		zip_get_archive_comment = [[const char * zip_get_archive_comment(zip_t *, int *, zip_flags_t);]],
		zip_get_archive_flag = [[int zip_get_archive_flag(zip_t *, zip_flags_t, zip_flags_t);]],
		zip_get_name = [[const char * zip_get_name(zip_t *, zip_uint64_t, zip_flags_t);]],
		zip_get_num_entries = [[zip_int64_t zip_get_num_entries(zip_t *, zip_flags_t);]],
		zip_libzip_version = [[const char * zip_libzip_version(void);]],
		zip_name_locate = [[zip_int64_t zip_name_locate(zip_t *, const char *, zip_flags_t);]],
		zip_open = [[zip_t * zip_open(const char *, int, int *);]],
		zip_open_from_source = [[zip_t * zip_open_from_source(zip_source_t *, int, zip_error_t *);]],
		void = [[int zip_register_progress_callback_with_state(zip_t *, double, zip_progress_callback , void (*)(void *), void *);]],
		void = [[int zip_register_cancel_callback_with_state(zip_t *, zip_cancel_callback , void (*)(void *), void *);]],
		zip_set_archive_comment = [[int zip_set_archive_comment(zip_t *, const char *, zip_uint16_t);]],
		zip_set_archive_flag = [[int zip_set_archive_flag(zip_t *, zip_flags_t, int);]],
		zip_set_default_password = [[int zip_set_default_password(zip_t *, const char *);]],
		zip_set_file_compression = [[int zip_set_file_compression(zip_t *, zip_uint64_t, zip_int32_t, zip_uint32_t);]],
		zip_source_begin_write = [[int zip_source_begin_write(zip_source_t *);]],
		zip_source_begin_write_cloning = [[int zip_source_begin_write_cloning(zip_source_t *, zip_uint64_t);]],
		zip_source_buffer = [[zip_source_t * zip_source_buffer(zip_t *, const void *, zip_uint64_t, int);]],
		zip_source_buffer_create = [[zip_source_t * zip_source_buffer_create(const void *, zip_uint64_t, int, zip_error_t *);]],
		zip_source_buffer_fragment = [[zip_source_t * zip_source_buffer_fragment(zip_t *, const zip_buffer_fragment_t *, zip_uint64_t, int);]],
		zip_source_buffer_fragment_create = [[zip_source_t * zip_source_buffer_fragment_create(const zip_buffer_fragment_t *, zip_uint64_t, int, zip_error_t *);]],
		zip_source_close = [[int zip_source_close(zip_source_t *);]],
		zip_source_commit_write = [[int zip_source_commit_write(zip_source_t *);]],
		zip_source_error = [[zip_error_t * zip_source_error(zip_source_t *);]],
		zip_source_file = [[zip_source_t * zip_source_file(zip_t *, const char *, zip_uint64_t, zip_int64_t);]],
		zip_source_file_create = [[zip_source_t * zip_source_file_create(const char *, zip_uint64_t, zip_int64_t, zip_error_t *);]],
		zip_source_filep = [[zip_source_t * zip_source_filep(zip_t *, FILE *_Nonnull, zip_uint64_t, zip_int64_t);]],
		zip_source_filep_create = [[zip_source_t * zip_source_filep_create(FILE *, zip_uint64_t, zip_int64_t, zip_error_t *);]],
		zip_source_free = [[void zip_source_free(zip_source_t *);]],
		zip_source_function = [[zip_source_t * zip_source_function(zip_t *, zip_source_callback , void *);]],
		zip_source_function_create = [[zip_source_t * zip_source_function_create(zip_source_callback , void *, zip_error_t *);]],
		zip_source_get_file_attributes = [[int zip_source_get_file_attributes(zip_source_t *, zip_file_attributes_t *);]],
		zip_source_is_deleted = [[int zip_source_is_deleted(zip_source_t *);]],
		zip_source_keep = [[void zip_source_keep(zip_source_t *);]],
		zip_source_make_command_bitmap = [[zip_int64_t zip_source_make_command_bitmap(zip_source_cmd_t, ...);]],
		zip_source_open = [[int zip_source_open(zip_source_t *);]],
		zip_source_read = [[zip_int64_t zip_source_read(zip_source_t *, void *, zip_uint64_t);]],
		zip_source_rollback_write = [[void zip_source_rollback_write(zip_source_t *);]],
		zip_source_seek = [[int zip_source_seek(zip_source_t *, zip_int64_t, int);]],
		zip_source_seek_compute_offset = [[zip_int64_t zip_source_seek_compute_offset(zip_uint64_t, zip_uint64_t, void *, zip_uint64_t, zip_error_t *);]],
		zip_source_seek_write = [[int zip_source_seek_write(zip_source_t *, zip_int64_t, int);]],
		zip_source_stat = [[int zip_source_stat(zip_source_t *, zip_stat_t *);]],
		zip_source_tell = [[zip_int64_t zip_source_tell(zip_source_t *);]],
		zip_source_tell_write = [[zip_int64_t zip_source_tell_write(zip_source_t *);]],
		zip_source_write = [[zip_int64_t zip_source_write(zip_source_t *, const void *, zip_uint64_t);]],
		zip_source_zip = [[zip_source_t * zip_source_zip(zip_t *, zip_t *, zip_uint64_t, zip_flags_t, zip_uint64_t, zip_int64_t);]],
		zip_stat = [[int zip_stat(zip_t *, const char *, zip_flags_t, zip_stat_t *);]],
		zip_stat_index = [[int zip_stat_index(zip_t *, zip_uint64_t, zip_flags_t, zip_stat_t *);]],
		zip_stat_init = [[void zip_stat_init(zip_stat_t *);]],
		zip_strerror = [[const char * zip_strerror(zip_t *);]],
		zip_unchange = [[int zip_unchange(zip_t *, zip_uint64_t);]],
		zip_unchange_all = [[int zip_unchange_all(zip_t *);]],
		zip_unchange_archive = [[int zip_unchange_archive(zip_t *);]],
		zip_compression_method_supported = [[int zip_compression_method_supported(zip_int32_t method, int compress);]],
		zip_encryption_method_supported = [[int zip_encryption_method_supported(zip_uint16_t method, int encode);]],
	},
}

-- macros

wrapper.LIBZIP_VERSION = "1.7.3"
wrapper.ZIP_INT64_MAX = 0x7fffffffffffffffLL
wrapper.ZIP_UINT64_MAX = 0xffffffffffffffffULL

return wrapper
