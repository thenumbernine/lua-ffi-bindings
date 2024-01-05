local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/hdf5/serial/hdf5.h */
enum { HDF5_H = 1 };
/* ++ BEGIN /usr/include/hdf5/serial/H5public.h */
enum { H5public_H = 1 };
/* +++ BEGIN /usr/include/hdf5/serial/H5pubconf.h */
enum { H5_CXX_HAVE_OFFSETOF = 1 };
/* #define H5_DEFAULT_PLUGINDIR "/usr/lib/x86_64-linux-gnu/hdf5/serial/plugins" ### string, not number "\"/usr/lib/x86_64-linux-gnu/hdf5/serial/plugins\"" */
enum { H5_DEV_T_IS_SCALAR = 1 };
/* #define H5_EXAMPLESDIR "${prefix}/share/hdf5_examples" ### string, not number "\"${prefix}/share/hdf5_examples\"" */
enum { H5_FORTRAN_C_LONG_DOUBLE_IS_UNIQUE = 1 };
enum { H5_FORTRAN_HAVE_C_LONG_DOUBLE = 1 };
enum { H5_FORTRAN_HAVE_C_SIZEOF = 1 };
enum { H5_FORTRAN_HAVE_SIZEOF = 1 };
enum { H5_FORTRAN_HAVE_STORAGE_SIZE = 1 };
/* #define H5_FORTRAN_SIZEOF_LONG_DOUBLE "16" ### string, not number "\"16\"" */
enum { H5_Fortran_COMPILER_ID = 0 };
/* #define H5_H5CONFIG_F_IKIND INTEGER, DIMENSION(1:num_ikinds) :: ikind = (/1,2,4,8,16/) ### string, not number "INTEGER, DIMENSION(1:num_ikinds) :: ikind = (/1,2,4,8,16/)" */
/* #define H5_H5CONFIG_F_NUM_IKIND INTEGER, PARAMETER :: num_ikinds = 5 ### string, not number "INTEGER, PARAMETER :: num_ikinds = 5" */
/* #define H5_H5CONFIG_F_NUM_RKIND INTEGER, PARAMETER :: num_rkinds = 4 ### string, not number "INTEGER, PARAMETER :: num_rkinds = 4" */
/* #define H5_H5CONFIG_F_RKIND INTEGER, DIMENSION(1:num_rkinds) :: rkind = (/4,8,10,16/) ### string, not number "INTEGER, DIMENSION(1:num_rkinds) :: rkind = (/4,8,10,16/)" */
/* #define H5_H5CONFIG_F_RKIND_SIZEOF INTEGER, DIMENSION(1:num_rkinds) :: rkind_sizeof = (/4,8,16,16/) ### string, not number "INTEGER, DIMENSION(1:num_rkinds) :: rkind_sizeof = (/4,8,16,16/)" */
enum { H5_HAVE_ALARM = 1 };
enum { H5_HAVE_ARPA_INET_H = 1 };
enum { H5_HAVE_ASPRINTF = 1 };
enum { H5_HAVE_ATTRIBUTE = 1 };
enum { H5_HAVE_C99_DESIGNATED_INITIALIZER = 1 };
enum { H5_HAVE_C99_FUNC = 1 };
enum { H5_HAVE_CLOCK_GETTIME = 1 };
enum { H5_HAVE_CURL_CURL_H = 1 };
enum { H5_HAVE_DIFFTIME = 1 };
enum { H5_HAVE_DIRENT_H = 1 };
enum { H5_HAVE_DLFCN_H = 1 };
enum { H5_HAVE_EMBEDDED_LIBINFO = 1 };
enum { H5_HAVE_FCNTL = 1 };
enum { H5_HAVE_FEATURES_H = 1 };
enum { H5_HAVE_FILTER_DEFLATE = 1 };
enum { H5_HAVE_FILTER_SZIP = 1 };
enum { H5_HAVE_FLOAT128 = 1 };
enum { H5_HAVE_FLOCK = 1 };
enum { H5_HAVE_FORK = 1 };
enum { H5_HAVE_FREXPF = 1 };
enum { H5_HAVE_FREXPL = 1 };
enum { H5_HAVE_FUNCTION = 1 };
enum { H5_HAVE_Fortran_INTEGER_SIZEOF_16 = 1 };
enum { H5_HAVE_GETHOSTNAME = 1 };
enum { H5_HAVE_GETPWUID = 1 };
enum { H5_HAVE_GETRUSAGE = 1 };
enum { H5_HAVE_GETTIMEOFDAY = 1 };
enum { H5_HAVE_INLINE = 1 };
enum { H5_HAVE_INTTYPES_H = 1 };
enum { H5_HAVE_IOCTL = 1 };
enum { H5_HAVE_LIBCRYPTO = 1 };
enum { H5_HAVE_LIBCURL = 1 };
enum { H5_HAVE_LIBDL = 1 };
enum { H5_HAVE_LIBM = 1 };
enum { H5_HAVE_LIBPTHREAD = 1 };
enum { H5_HAVE_LIBSZ = 1 };
enum { H5_HAVE_LIBZ = 1 };
enum { H5_HAVE_LLROUND = 1 };
enum { H5_HAVE_LLROUNDF = 1 };
enum { H5_HAVE_LONGJMP = 1 };
enum { H5_HAVE_LROUND = 1 };
enum { H5_HAVE_LROUNDF = 1 };
enum { H5_HAVE_LSTAT = 1 };
enum { H5_HAVE_NETDB_H = 1 };
enum { H5_HAVE_NETINET_IN_H = 1 };
enum { H5_HAVE_OPENSSL_EVP_H = 1 };
enum { H5_HAVE_OPENSSL_HMAC_H = 1 };
enum { H5_HAVE_OPENSSL_SHA_H = 1 };
enum { H5_HAVE_PREADWRITE = 1 };
enum { H5_HAVE_PTHREAD_H = 1 };
enum { H5_HAVE_PWD_H = 1 };
enum { H5_HAVE_QUADMATH_H = 1 };
enum { H5_HAVE_RANDOM = 1 };
enum { H5_HAVE_RAND_R = 1 };
enum { H5_HAVE_ROS3_VFD = 1 };
enum { H5_HAVE_ROUND = 1 };
enum { H5_HAVE_ROUNDF = 1 };
enum { H5_HAVE_SETJMP = 1 };
enum { H5_HAVE_SETJMP_H = 1 };
enum { H5_HAVE_SIGLONGJMP = 1 };
enum { H5_HAVE_SIGNAL = 1 };
enum { H5_HAVE_SIGPROCMASK = 1 };
enum { H5_HAVE_SNPRINTF = 1 };
enum { H5_HAVE_SRANDOM = 1 };
enum { H5_HAVE_STAT_ST_BLOCKS = 1 };
enum { H5_HAVE_STDBOOL_H = 1 };
enum { H5_HAVE_STDDEF_H = 1 };
enum { H5_HAVE_STDINT_H = 1 };
enum { H5_HAVE_STDIO_H = 1 };
enum { H5_HAVE_STDLIB_H = 1 };
enum { H5_HAVE_STRDUP = 1 };
enum { H5_HAVE_STRINGS_H = 1 };
enum { H5_HAVE_STRING_H = 1 };
enum { H5_HAVE_STRTOLL = 1 };
enum { H5_HAVE_STRTOULL = 1 };
enum { H5_HAVE_SYMLINK = 1 };
enum { H5_HAVE_SYSTEM = 1 };
enum { H5_HAVE_SYS_FILE_H = 1 };
enum { H5_HAVE_SYS_IOCTL_H = 1 };
enum { H5_HAVE_SYS_RESOURCE_H = 1 };
enum { H5_HAVE_SYS_SOCKET_H = 1 };
enum { H5_HAVE_SYS_STAT_H = 1 };
enum { H5_HAVE_SYS_TIMEB_H = 1 };
enum { H5_HAVE_SYS_TIME_H = 1 };
enum { H5_HAVE_SYS_TYPES_H = 1 };
enum { H5_HAVE_SZLIB_H = 1 };
enum { H5_HAVE_THREADSAFE = 1 };
enum { H5_HAVE_TIMEZONE = 1 };
enum { H5_HAVE_TIOCGETD = 1 };
enum { H5_HAVE_TIOCGWINSZ = 1 };
enum { H5_HAVE_TMPFILE = 1 };
enum { H5_HAVE_TM_GMTOFF = 1 };
enum { H5_HAVE_UNISTD_H = 1 };
enum { H5_HAVE_VASPRINTF = 1 };
enum { H5_HAVE_VSNPRINTF = 1 };
enum { H5_HAVE_WAITPID = 1 };
enum { H5_HAVE_ZLIB_H = 1 };
enum { H5_HAVE___INLINE = 1 };
enum { H5_HAVE___INLINE__ = 1 };
enum { H5_IGNORE_DISABLED_FILE_LOCKS = 1 };
enum { H5_INCLUDE_HL = 1 };
enum { H5_LDOUBLE_TO_LLONG_ACCURATE = 1 };
enum { H5_LLONG_TO_LDOUBLE_CORRECT = 1 };
/* #define H5_LT_OBJDIR ".libs/" ### string, not number "\".libs/\"" */
/* #define H5_PACKAGE "hdf5" ### string, not number "\"hdf5\"" */
/* #define H5_PACKAGE_BUGREPORT "help@hdfgroup.org" ### string, not number "\"help@hdfgroup.org\"" */
/* #define H5_PACKAGE_NAME "HDF5" ### string, not number "\"HDF5\"" */
/* #define H5_PACKAGE_STRING "HDF5 1.10.8" ### string, not number "\"HDF5 1.10.8\"" */
/* #define H5_PACKAGE_TARNAME "hdf5" ### string, not number "\"hdf5\"" */
/* #define H5_PACKAGE_URL "" ### string, not number "\"\"" */
/* #define H5_PACKAGE_VERSION "1.10.8" ### string, not number "\"1.10.8\"" */
enum { H5_PAC_C_MAX_REAL_PRECISION = 33 };
enum { H5_PAC_FC_MAX_REAL_PRECISION = 33 };
/* #define H5_PRINTF_LL_WIDTH "ll" ### string, not number "\"ll\"" */
enum { H5_SIZEOF_BOOL = 1 };
enum { H5_SIZEOF_CHAR = 1 };
enum { H5_SIZEOF_DOUBLE = 8 };
enum { H5_SIZEOF_FLOAT = 4 };
enum { H5_SIZEOF_INT = 4 };
enum { H5_SIZEOF_INT16_T = 2 };
enum { H5_SIZEOF_INT32_T = 4 };
enum { H5_SIZEOF_INT64_T = 8 };
enum { H5_SIZEOF_INT8_T = 1 };
enum { H5_SIZEOF_INT_FAST16_T = 8 };
enum { H5_SIZEOF_INT_FAST32_T = 8 };
enum { H5_SIZEOF_INT_FAST64_T = 8 };
enum { H5_SIZEOF_INT_FAST8_T = 1 };
enum { H5_SIZEOF_INT_LEAST16_T = 2 };
enum { H5_SIZEOF_INT_LEAST32_T = 4 };
enum { H5_SIZEOF_INT_LEAST64_T = 8 };
enum { H5_SIZEOF_INT_LEAST8_T = 1 };
enum { H5_SIZEOF_LONG = 8 };
enum { H5_SIZEOF_LONG_DOUBLE = 16 };
enum { H5_SIZEOF_LONG_LONG = 8 };
enum { H5_SIZEOF_OFF_T = 8 };
enum { H5_SIZEOF_PTRDIFF_T = 8 };
enum { H5_SIZEOF_SHORT = 2 };
enum { H5_SIZEOF_SIZE_T = 8 };
enum { H5_SIZEOF_SSIZE_T = 8 };
enum { H5_SIZEOF_TIME_T = 8 };
enum { H5_SIZEOF_UINT16_T = 2 };
enum { H5_SIZEOF_UINT32_T = 4 };
enum { H5_SIZEOF_UINT64_T = 8 };
enum { H5_SIZEOF_UINT8_T = 1 };
enum { H5_SIZEOF_UINT_FAST16_T = 8 };
enum { H5_SIZEOF_UINT_FAST32_T = 8 };
enum { H5_SIZEOF_UINT_FAST64_T = 8 };
enum { H5_SIZEOF_UINT_FAST8_T = 1 };
enum { H5_SIZEOF_UINT_LEAST16_T = 2 };
enum { H5_SIZEOF_UINT_LEAST32_T = 4 };
enum { H5_SIZEOF_UINT_LEAST64_T = 8 };
enum { H5_SIZEOF_UINT_LEAST8_T = 1 };
enum { H5_SIZEOF_UNSIGNED = 4 };
enum { H5_SIZEOF__QUAD = 0 };
enum { H5_SIZEOF___FLOAT128 = 16 };
enum { H5_SIZEOF___INT64 = 0 };
enum { H5_STDC_HEADERS = 1 };
enum { H5_SYSTEM_SCOPE_THREADS = 1 };
enum { H5_TIME_WITH_SYS_TIME = 1 };
enum { H5_USE_18_API_DEFAULT = 1 };
enum { H5_USE_FILE_LOCKING = 1 };
/* #define H5_VERSION "1.10.8" ### string, not number "\"1.10.8\"" */
enum { H5_WANT_DATA_ACCURACY = 1 };
enum { H5_WANT_DCONV_EXCEPTION = 1 };
/* +++ END   /usr/include/hdf5/serial/H5pubconf.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5version.h */
enum { H5version_H = 1 };
enum { H5_USE_18_API = 1 };
enum { H5Acreate_vers = 2 };
enum { H5Aiterate_vers = 2 };
enum { H5Dcreate_vers = 2 };
enum { H5Dopen_vers = 2 };
enum { H5Eclear_vers = 2 };
enum { H5Eget_auto_vers = 2 };
enum { H5Eprint_vers = 2 };
enum { H5Epush_vers = 2 };
enum { H5Eset_auto_vers = 2 };
enum { H5Ewalk_vers = 2 };
enum { H5Fget_info_vers = 1 };
enum { H5Gcreate_vers = 2 };
enum { H5Gopen_vers = 2 };
enum { H5Pget_filter_vers = 2 };
enum { H5Pget_filter_by_id_vers = 2 };
enum { H5Pinsert_vers = 2 };
enum { H5Pregister_vers = 2 };
enum { H5Rdereference_vers = 1 };
enum { H5Rget_obj_type_vers = 2 };
enum { H5Tarray_create_vers = 2 };
enum { H5Tcommit_vers = 2 };
enum { H5Tget_array_dims_vers = 2 };
enum { H5Topen_vers = 2 };
enum { H5E_auto_t_vers = 2 };
enum { H5Z_class_t_vers = 2 };
enum { H5Acreate = 0 };
enum { H5Aiterate = 0 };
enum { H5A_operator_t = 0 };
enum { H5Dcreate = 0 };
enum { H5Dopen = 0 };
enum { H5Eclear = 0 };
enum { H5Eget_auto = 0 };
enum { H5Eprint = 0 };
enum { H5Epush = 0 };
enum { H5Eset_auto = 0 };
enum { H5Ewalk = 0 };
enum { H5E_error_t = 0 };
enum { H5E_walk_t = 0 };
enum { H5Fget_info = 0 };
enum { H5F_info_t = 0 };
enum { H5Gcreate = 0 };
enum { H5Gopen = 0 };
enum { H5Pget_filter = 0 };
enum { H5Pget_filter_by_id = 0 };
enum { H5Pinsert = 0 };
enum { H5Pregister = 0 };
enum { H5Rdereference = 0 };
enum { H5Rget_obj_type = 0 };
enum { H5Tarray_create = 0 };
enum { H5Tcommit = 0 };
enum { H5Tget_array_dims = 0 };
enum { H5Topen = 0 };
enum { H5E_auto_t = 0 };
enum { H5Z_class_t = 0 };
/* +++ END   /usr/include/hdf5/serial/H5version.h */
/* +++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* +++ END   /usr/include/features.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/sys/types.h */
/* +++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/limits.h */
]] require 'ffi.req' 'c.limits' ffi.cdef[[
/* +++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/limits.h */
/* +++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stdarg.h */
]] require 'ffi.req' 'c.stdarg' ffi.cdef[[
/* +++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stdarg.h */
/* +++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* +++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stdint.h */
/* +++ BEGIN /usr/include/inttypes.h */
]] require 'ffi.req' 'c.inttypes' ffi.cdef[[
/* +++ END   /usr/include/inttypes.h */
/* +++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* +++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5api_adpt.h */
enum { H5API_ADPT_H = 1 };
enum { H5_DLL = 1 };
enum { H5_DLLVAR = 0 };
enum { H5TEST_DLL = 1 };
enum { H5TEST_DLLVAR = 0 };
enum { H5TOOLS_DLL = 1 };
enum { H5TOOLS_DLLVAR = 0 };
enum { H5_DLLCPP = 1 };
enum { H5_DLLCPPVAR = 0 };
enum { H5_HLDLL = 1 };
enum { H5_HLDLLVAR = 0 };
enum { H5_HLCPPDLL = 1 };
enum { H5_HLCPPDLLVAR = 0 };
enum { H5_FCDLL = 1 };
enum { H5_FCDLLVAR = 0 };
enum { H5_FCTESTDLL = 1 };
enum { H5_FCTESTDLLVAR = 0 };
enum { HDF5_HL_F90CSTUBDLL = 1 };
enum { HDF5_HL_F90CSTUBDLLVAR = 0 };
/* +++ END   /usr/include/hdf5/serial/H5api_adpt.h */
enum { H5_VERS_MAJOR = 1 };
enum { H5_VERS_MINOR = 10 };
enum { H5_VERS_RELEASE = 8 };
/* #define H5_VERS_SUBRELEASE "" ### string, not number "\"\"" */
/* #define H5_VERS_INFO "HDF5 library version: 1.10.8" ### string, not number "\"HDF5 library version: 1.10.8\"" */
typedef int herr_t;
/* +++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stdbool.h */
]] require 'ffi.req' 'c.stdbool' ffi.cdef[[
/* +++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stdbool.h */
typedef _Bool hbool_t;
typedef int htri_t;
typedef unsigned long long hsize_t;
typedef signed long long hssize_t;
/* #define PRIdHSIZE          H5_PRINTF_LL_WIDTH "d" ### string, not number "H5_PRINTF_LL_WIDTH \"d\"" */
/* #define PRIiHSIZE          H5_PRINTF_LL_WIDTH "i" ### string, not number "H5_PRINTF_LL_WIDTH \"i\"" */
/* #define PRIoHSIZE          H5_PRINTF_LL_WIDTH "o" ### string, not number "H5_PRINTF_LL_WIDTH \"o\"" */
/* #define PRIuHSIZE          H5_PRINTF_LL_WIDTH "u" ### string, not number "H5_PRINTF_LL_WIDTH \"u\"" */
/* #define PRIxHSIZE          H5_PRINTF_LL_WIDTH "x" ### string, not number "H5_PRINTF_LL_WIDTH \"x\"" */
/* #define PRIXHSIZE          H5_PRINTF_LL_WIDTH "X" ### string, not number "H5_PRINTF_LL_WIDTH \"X\"" */
enum { H5_SIZEOF_HSIZE_T = 8 };
enum { H5_SIZEOF_HSSIZE_T = 8 };
/* #define HSIZE_UNDEF        ULLONG_MAX ### string, not number "ULLONG_MAX" */
typedef unsigned long haddr_t;
/* #define HADDR_UNDEF       ULONG_MAX ### string, not number "1.844674407371e+19" */
enum { H5_SIZEOF_HADDR_T = 8 };
/* #define PRIdHADDR "ld" ### string, not number "\"ld\"" */
/* #define PRIoHADDR "lo" ### string, not number "\"lo\"" */
/* #define PRIuHADDR "lu" ### string, not number "\"lu\"" */
/* #define PRIxHADDR "lx" ### string, not number "\"lx\"" */
/* #define PRIXHADDR "lX" ### string, not number "\"lX\"" */
/* #define H5_PRINTF_HADDR_FMT "%" PRIuHADDR ### string, not number "\"%\" PRIuHADDR" */
/* #define HADDR_MAX           (HADDR_UNDEF - 1) ### string, not number "1.844674407371e+19" */
typedef enum { H5_ITER_UNKNOWN = -1, H5_ITER_INC, H5_ITER_DEC, H5_ITER_NATIVE, H5_ITER_N } H5_iter_order_t;
enum { H5_ITER_ERROR = -1 };
enum { H5_ITER_CONT = 0 };
enum { H5_ITER_STOP = 1 };
typedef enum H5_index_t { H5_INDEX_UNKNOWN = -1, H5_INDEX_NAME, H5_INDEX_CRT_ORDER, H5_INDEX_N } H5_index_t;
typedef struct H5_ih_info_t {
	hsize_t index_size;
	hsize_t heap_size;
} H5_ih_info_t;
typedef struct H5_alloc_stats_t {
	unsigned long long total_alloc_bytes;
	size_t curr_alloc_bytes;
	size_t peak_alloc_bytes;
	size_t max_block_size;
	size_t total_alloc_blocks_count;
	size_t curr_alloc_blocks_count;
	size_t peak_alloc_blocks_count;
} H5_alloc_stats_t;
herr_t H5open(void);
herr_t H5close(void);
herr_t H5dont_atexit(void);
herr_t H5garbage_collect(void);
herr_t H5set_free_list_limits(int reg_global_lim, int reg_list_lim, int arr_global_lim, int arr_list_lim, int blk_global_lim, int blk_list_lim);
herr_t H5get_free_list_sizes(size_t *reg_size, size_t *arr_size, size_t *blk_size, size_t *fac_size);
herr_t H5get_alloc_stats(H5_alloc_stats_t *stats);
herr_t H5get_libversion(unsigned *majnum, unsigned *minnum, unsigned *relnum);
herr_t H5check_version(unsigned majnum, unsigned minnum, unsigned relnum);
herr_t H5is_library_threadsafe(hbool_t *is_ts);
herr_t H5free_memory(void *mem);
void *H5allocate_memory(size_t size, hbool_t clear);
void *H5resize_memory(void *mem, size_t size);
/* ++ END   /usr/include/hdf5/serial/H5public.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5Apublic.h */
enum { H5Apublic_H = 1 };
/* +++ BEGIN /usr/include/hdf5/serial/H5Ipublic.h */
enum { H5Ipublic_H = 1 };
/* ++++ BEGIN /usr/include/hdf5/serial/H5public.h */
/* ++++ END   /usr/include/hdf5/serial/H5public.h */
typedef enum H5I_type_t { H5I_UNINIT = (-2), H5I_BADID = (-1), H5I_FILE = 1, H5I_GROUP, H5I_DATATYPE, H5I_DATASPACE, H5I_DATASET, H5I_ATTR, H5I_REFERENCE, H5I_VFL, H5I_GENPROP_CLS, H5I_GENPROP_LST, H5I_ERROR_CLASS, H5I_ERROR_MSG, H5I_ERROR_STACK, H5I_NTYPES } H5I_type_t;
typedef int64_t hid_t;
enum { H5_SIZEOF_HID_T = 8 };
enum { H5I_INVALID_HID = -1 };
typedef herr_t (*H5I_free_t)(void *);
typedef int (*H5I_search_func_t)(void *obj, hid_t id, void *key);
hid_t H5Iregister(H5I_type_t type, const void *object);
void *H5Iobject_verify(hid_t id, H5I_type_t type);
void *H5Iremove_verify(hid_t id, H5I_type_t type);
H5I_type_t H5Iget_type(hid_t id);
hid_t H5Iget_file_id(hid_t id);
ssize_t H5Iget_name(hid_t id, char *name , size_t size);
int H5Iinc_ref(hid_t id);
int H5Idec_ref(hid_t id);
int H5Iget_ref(hid_t id);
H5I_type_t H5Iregister_type(size_t hash_size, unsigned reserved, H5I_free_t free_func);
herr_t H5Iclear_type(H5I_type_t type, hbool_t force);
herr_t H5Idestroy_type(H5I_type_t type);
int H5Iinc_type_ref(H5I_type_t type);
int H5Idec_type_ref(H5I_type_t type);
int H5Iget_type_ref(H5I_type_t type);
void *H5Isearch(H5I_type_t type, H5I_search_func_t func, void *key);
herr_t H5Inmembers(H5I_type_t type, hsize_t *num_members);
htri_t H5Itype_exists(H5I_type_t type);
htri_t H5Iis_valid(hid_t id);
/* +++ END   /usr/include/hdf5/serial/H5Ipublic.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5Opublic.h */
enum { H5Opublic_H = 1 };
/* ++++ BEGIN /usr/include/hdf5/serial/H5public.h */
/* ++++ END   /usr/include/hdf5/serial/H5public.h */
/* ++++ BEGIN /usr/include/hdf5/serial/H5Ipublic.h */
/* ++++ END   /usr/include/hdf5/serial/H5Ipublic.h */
/* ++++ BEGIN /usr/include/hdf5/serial/H5Lpublic.h */
enum { H5Lpublic_H = 1 };
/* +++++ BEGIN /usr/include/hdf5/serial/H5public.h */
/* +++++ END   /usr/include/hdf5/serial/H5public.h */
/* +++++ BEGIN /usr/include/hdf5/serial/H5Ipublic.h */
/* +++++ END   /usr/include/hdf5/serial/H5Ipublic.h */
/* +++++ BEGIN /usr/include/hdf5/serial/H5Tpublic.h */
enum { H5Tpublic_H = 1 };
/* ++++++ BEGIN /usr/include/hdf5/serial/H5public.h */
/* ++++++ END   /usr/include/hdf5/serial/H5public.h */
/* ++++++ BEGIN /usr/include/hdf5/serial/H5Ipublic.h */
/* ++++++ END   /usr/include/hdf5/serial/H5Ipublic.h */
typedef enum H5T_class_t { H5T_NO_CLASS = -1, H5T_INTEGER = 0, H5T_FLOAT = 1, H5T_TIME = 2, H5T_STRING = 3, H5T_BITFIELD = 4, H5T_OPAQUE = 5, H5T_COMPOUND = 6, H5T_REFERENCE = 7, H5T_ENUM = 8, H5T_VLEN = 9, H5T_ARRAY = 10, H5T_NCLASSES } H5T_class_t;
typedef enum H5T_order_t { H5T_ORDER_ERROR = -1, H5T_ORDER_LE = 0, H5T_ORDER_BE = 1, H5T_ORDER_VAX = 2, H5T_ORDER_MIXED = 3, H5T_ORDER_NONE = 4 } H5T_order_t;
typedef enum H5T_sign_t { H5T_SGN_ERROR = -1, H5T_SGN_NONE = 0, H5T_SGN_2 = 1, H5T_NSGN = 2 } H5T_sign_t;
typedef enum H5T_norm_t { H5T_NORM_ERROR = -1, H5T_NORM_IMPLIED = 0, H5T_NORM_MSBSET = 1, H5T_NORM_NONE = 2 } H5T_norm_t;
typedef enum H5T_cset_t { H5T_CSET_ERROR = -1, H5T_CSET_ASCII = 0, H5T_CSET_UTF8 = 1, H5T_CSET_RESERVED_2 = 2, H5T_CSET_RESERVED_3 = 3, H5T_CSET_RESERVED_4 = 4, H5T_CSET_RESERVED_5 = 5, H5T_CSET_RESERVED_6 = 6, H5T_CSET_RESERVED_7 = 7, H5T_CSET_RESERVED_8 = 8, H5T_CSET_RESERVED_9 = 9, H5T_CSET_RESERVED_10 = 10, H5T_CSET_RESERVED_11 = 11, H5T_CSET_RESERVED_12 = 12, H5T_CSET_RESERVED_13 = 13, H5T_CSET_RESERVED_14 = 14, H5T_CSET_RESERVED_15 = 15 } H5T_cset_t;
enum { H5T_NCSET = 0 };
typedef enum H5T_str_t { H5T_STR_ERROR = -1, H5T_STR_NULLTERM = 0, H5T_STR_NULLPAD = 1, H5T_STR_SPACEPAD = 2, H5T_STR_RESERVED_3 = 3, H5T_STR_RESERVED_4 = 4, H5T_STR_RESERVED_5 = 5, H5T_STR_RESERVED_6 = 6, H5T_STR_RESERVED_7 = 7, H5T_STR_RESERVED_8 = 8, H5T_STR_RESERVED_9 = 9, H5T_STR_RESERVED_10 = 10, H5T_STR_RESERVED_11 = 11, H5T_STR_RESERVED_12 = 12, H5T_STR_RESERVED_13 = 13, H5T_STR_RESERVED_14 = 14, H5T_STR_RESERVED_15 = 15 } H5T_str_t;
enum { H5T_NSTR = 0 };
typedef enum H5T_pad_t { H5T_PAD_ERROR = -1, H5T_PAD_ZERO = 0, H5T_PAD_ONE = 1, H5T_PAD_BACKGROUND = 2, H5T_NPAD = 3 } H5T_pad_t;
typedef enum H5T_cmd_t { H5T_CONV_INIT = 0, H5T_CONV_CONV = 1, H5T_CONV_FREE = 2 } H5T_cmd_t;
typedef enum H5T_bkg_t { H5T_BKG_NO = 0, H5T_BKG_TEMP = 1, H5T_BKG_YES = 2 } H5T_bkg_t;
typedef struct H5T_cdata_t {
	H5T_cmd_t command;
	H5T_bkg_t need_bkg;
	hbool_t recalc;
	void * priv;
} H5T_cdata_t;
typedef enum H5T_pers_t { H5T_PERS_DONTCARE = -1, H5T_PERS_HARD = 0, H5T_PERS_SOFT = 1 } H5T_pers_t;
typedef enum H5T_direction_t { H5T_DIR_DEFAULT = 0, H5T_DIR_ASCEND = 1, H5T_DIR_DESCEND = 2 } H5T_direction_t;
typedef enum H5T_conv_except_t { H5T_CONV_EXCEPT_RANGE_HI = 0, H5T_CONV_EXCEPT_RANGE_LOW = 1, H5T_CONV_EXCEPT_PRECISION = 2, H5T_CONV_EXCEPT_TRUNCATE = 3, H5T_CONV_EXCEPT_PINF = 4, H5T_CONV_EXCEPT_NINF = 5, H5T_CONV_EXCEPT_NAN = 6 } H5T_conv_except_t;
typedef enum H5T_conv_ret_t { H5T_CONV_ABORT = -1, H5T_CONV_UNHANDLED = 0, H5T_CONV_HANDLED = 1 } H5T_conv_ret_t;
typedef struct {
	size_t len;
	void * p;
} hvl_t;
/* #define H5T_VARIABLE ((size_t)(-1)) ### string, not number "((size_t)(-1))" */
enum { H5T_OPAQUE_TAG_MAX = 256 };
typedef herr_t (*H5T_conv_t)(hid_t src_id, hid_t dst_id, H5T_cdata_t *cdata, size_t nelmts, size_t buf_stride, size_t bkg_stride, void *buf, void *bkg, hid_t dset_xfer_plist);
typedef H5T_conv_ret_t (*H5T_conv_except_func_t)(H5T_conv_except_t except_type, hid_t src_id, hid_t dst_id, void *src_buf, void *dst_buf, void *user_data);
/* #define H5OPEN H5open(), ### string, not number "H5open()," */
/* #define H5T_IEEE_F32BE (H5OPEN H5T_IEEE_F32BE_g) ### string, not number "(H5OPEN H5T_IEEE_F32BE_g)" */
/* #define H5T_IEEE_F32LE (H5OPEN H5T_IEEE_F32LE_g) ### string, not number "(H5OPEN H5T_IEEE_F32LE_g)" */
/* #define H5T_IEEE_F64BE (H5OPEN H5T_IEEE_F64BE_g) ### string, not number "(H5OPEN H5T_IEEE_F64BE_g)" */
/* #define H5T_IEEE_F64LE (H5OPEN H5T_IEEE_F64LE_g) ### string, not number "(H5OPEN H5T_IEEE_F64LE_g)" */
extern hid_t H5T_IEEE_F32BE_g;
extern hid_t H5T_IEEE_F32LE_g;
extern hid_t H5T_IEEE_F64BE_g;
extern hid_t H5T_IEEE_F64LE_g;
/* #define H5T_STD_I8BE (H5OPEN H5T_STD_I8BE_g) ### string, not number "(H5OPEN H5T_STD_I8BE_g)" */
/* #define H5T_STD_I8LE (H5OPEN H5T_STD_I8LE_g) ### string, not number "(H5OPEN H5T_STD_I8LE_g)" */
/* #define H5T_STD_I16BE (H5OPEN H5T_STD_I16BE_g) ### string, not number "(H5OPEN H5T_STD_I16BE_g)" */
/* #define H5T_STD_I16LE (H5OPEN H5T_STD_I16LE_g) ### string, not number "(H5OPEN H5T_STD_I16LE_g)" */
/* #define H5T_STD_I32BE (H5OPEN H5T_STD_I32BE_g) ### string, not number "(H5OPEN H5T_STD_I32BE_g)" */
/* #define H5T_STD_I32LE (H5OPEN H5T_STD_I32LE_g) ### string, not number "(H5OPEN H5T_STD_I32LE_g)" */
/* #define H5T_STD_I64BE (H5OPEN H5T_STD_I64BE_g) ### string, not number "(H5OPEN H5T_STD_I64BE_g)" */
/* #define H5T_STD_I64LE (H5OPEN H5T_STD_I64LE_g) ### string, not number "(H5OPEN H5T_STD_I64LE_g)" */
/* #define H5T_STD_U8BE (H5OPEN H5T_STD_U8BE_g) ### string, not number "(H5OPEN H5T_STD_U8BE_g)" */
/* #define H5T_STD_U8LE (H5OPEN H5T_STD_U8LE_g) ### string, not number "(H5OPEN H5T_STD_U8LE_g)" */
/* #define H5T_STD_U16BE (H5OPEN H5T_STD_U16BE_g) ### string, not number "(H5OPEN H5T_STD_U16BE_g)" */
/* #define H5T_STD_U16LE (H5OPEN H5T_STD_U16LE_g) ### string, not number "(H5OPEN H5T_STD_U16LE_g)" */
/* #define H5T_STD_U32BE (H5OPEN H5T_STD_U32BE_g) ### string, not number "(H5OPEN H5T_STD_U32BE_g)" */
/* #define H5T_STD_U32LE (H5OPEN H5T_STD_U32LE_g) ### string, not number "(H5OPEN H5T_STD_U32LE_g)" */
/* #define H5T_STD_U64BE (H5OPEN H5T_STD_U64BE_g) ### string, not number "(H5OPEN H5T_STD_U64BE_g)" */
/* #define H5T_STD_U64LE (H5OPEN H5T_STD_U64LE_g) ### string, not number "(H5OPEN H5T_STD_U64LE_g)" */
/* #define H5T_STD_B8BE (H5OPEN H5T_STD_B8BE_g) ### string, not number "(H5OPEN H5T_STD_B8BE_g)" */
/* #define H5T_STD_B8LE (H5OPEN H5T_STD_B8LE_g) ### string, not number "(H5OPEN H5T_STD_B8LE_g)" */
/* #define H5T_STD_B16BE (H5OPEN H5T_STD_B16BE_g) ### string, not number "(H5OPEN H5T_STD_B16BE_g)" */
/* #define H5T_STD_B16LE (H5OPEN H5T_STD_B16LE_g) ### string, not number "(H5OPEN H5T_STD_B16LE_g)" */
/* #define H5T_STD_B32BE (H5OPEN H5T_STD_B32BE_g) ### string, not number "(H5OPEN H5T_STD_B32BE_g)" */
/* #define H5T_STD_B32LE (H5OPEN H5T_STD_B32LE_g) ### string, not number "(H5OPEN H5T_STD_B32LE_g)" */
/* #define H5T_STD_B64BE (H5OPEN H5T_STD_B64BE_g) ### string, not number "(H5OPEN H5T_STD_B64BE_g)" */
/* #define H5T_STD_B64LE (H5OPEN H5T_STD_B64LE_g) ### string, not number "(H5OPEN H5T_STD_B64LE_g)" */
/* #define H5T_STD_REF_OBJ (H5OPEN H5T_STD_REF_OBJ_g) ### string, not number "(H5OPEN H5T_STD_REF_OBJ_g)" */
/* #define H5T_STD_REF_DSETREG (H5OPEN H5T_STD_REF_DSETREG_g) ### string, not number "(H5OPEN H5T_STD_REF_DSETREG_g)" */
extern hid_t H5T_STD_I8BE_g;
extern hid_t H5T_STD_I8LE_g;
extern hid_t H5T_STD_I16BE_g;
extern hid_t H5T_STD_I16LE_g;
extern hid_t H5T_STD_I32BE_g;
extern hid_t H5T_STD_I32LE_g;
extern hid_t H5T_STD_I64BE_g;
extern hid_t H5T_STD_I64LE_g;
extern hid_t H5T_STD_U8BE_g;
extern hid_t H5T_STD_U8LE_g;
extern hid_t H5T_STD_U16BE_g;
extern hid_t H5T_STD_U16LE_g;
extern hid_t H5T_STD_U32BE_g;
extern hid_t H5T_STD_U32LE_g;
extern hid_t H5T_STD_U64BE_g;
extern hid_t H5T_STD_U64LE_g;
extern hid_t H5T_STD_B8BE_g;
extern hid_t H5T_STD_B8LE_g;
extern hid_t H5T_STD_B16BE_g;
extern hid_t H5T_STD_B16LE_g;
extern hid_t H5T_STD_B32BE_g;
extern hid_t H5T_STD_B32LE_g;
extern hid_t H5T_STD_B64BE_g;
extern hid_t H5T_STD_B64LE_g;
extern hid_t H5T_STD_REF_OBJ_g;
extern hid_t H5T_STD_REF_DSETREG_g;
/* #define H5T_UNIX_D32BE (H5OPEN H5T_UNIX_D32BE_g) ### string, not number "(H5OPEN H5T_UNIX_D32BE_g)" */
/* #define H5T_UNIX_D32LE (H5OPEN H5T_UNIX_D32LE_g) ### string, not number "(H5OPEN H5T_UNIX_D32LE_g)" */
/* #define H5T_UNIX_D64BE (H5OPEN H5T_UNIX_D64BE_g) ### string, not number "(H5OPEN H5T_UNIX_D64BE_g)" */
/* #define H5T_UNIX_D64LE (H5OPEN H5T_UNIX_D64LE_g) ### string, not number "(H5OPEN H5T_UNIX_D64LE_g)" */
extern hid_t H5T_UNIX_D32BE_g;
extern hid_t H5T_UNIX_D32LE_g;
extern hid_t H5T_UNIX_D64BE_g;
extern hid_t H5T_UNIX_D64LE_g;
/* #define H5T_C_S1 (H5OPEN H5T_C_S1_g) ### string, not number "(H5OPEN H5T_C_S1_g)" */
extern hid_t H5T_C_S1_g;
/* #define H5T_FORTRAN_S1 (H5OPEN H5T_FORTRAN_S1_g) ### string, not number "(H5OPEN H5T_FORTRAN_S1_g)" */
extern hid_t H5T_FORTRAN_S1_g;
/* #define H5T_INTEL_I8 H5T_STD_I8LE ### string, not number "H5T_STD_I8LE" */
/* #define H5T_INTEL_I16 H5T_STD_I16LE ### string, not number "H5T_STD_I16LE" */
/* #define H5T_INTEL_I32 H5T_STD_I32LE ### string, not number "H5T_STD_I32LE" */
/* #define H5T_INTEL_I64 H5T_STD_I64LE ### string, not number "H5T_STD_I64LE" */
/* #define H5T_INTEL_U8 H5T_STD_U8LE ### string, not number "H5T_STD_U8LE" */
/* #define H5T_INTEL_U16 H5T_STD_U16LE ### string, not number "H5T_STD_U16LE" */
/* #define H5T_INTEL_U32 H5T_STD_U32LE ### string, not number "H5T_STD_U32LE" */
/* #define H5T_INTEL_U64 H5T_STD_U64LE ### string, not number "H5T_STD_U64LE" */
/* #define H5T_INTEL_B8 H5T_STD_B8LE ### string, not number "H5T_STD_B8LE" */
/* #define H5T_INTEL_B16 H5T_STD_B16LE ### string, not number "H5T_STD_B16LE" */
/* #define H5T_INTEL_B32 H5T_STD_B32LE ### string, not number "H5T_STD_B32LE" */
/* #define H5T_INTEL_B64 H5T_STD_B64LE ### string, not number "H5T_STD_B64LE" */
/* #define H5T_INTEL_F32 H5T_IEEE_F32LE ### string, not number "H5T_IEEE_F32LE" */
/* #define H5T_INTEL_F64 H5T_IEEE_F64LE ### string, not number "H5T_IEEE_F64LE" */
/* #define H5T_ALPHA_I8 H5T_STD_I8LE ### string, not number "H5T_STD_I8LE" */
/* #define H5T_ALPHA_I16 H5T_STD_I16LE ### string, not number "H5T_STD_I16LE" */
/* #define H5T_ALPHA_I32 H5T_STD_I32LE ### string, not number "H5T_STD_I32LE" */
/* #define H5T_ALPHA_I64 H5T_STD_I64LE ### string, not number "H5T_STD_I64LE" */
/* #define H5T_ALPHA_U8 H5T_STD_U8LE ### string, not number "H5T_STD_U8LE" */
/* #define H5T_ALPHA_U16 H5T_STD_U16LE ### string, not number "H5T_STD_U16LE" */
/* #define H5T_ALPHA_U32 H5T_STD_U32LE ### string, not number "H5T_STD_U32LE" */
/* #define H5T_ALPHA_U64 H5T_STD_U64LE ### string, not number "H5T_STD_U64LE" */
/* #define H5T_ALPHA_B8 H5T_STD_B8LE ### string, not number "H5T_STD_B8LE" */
/* #define H5T_ALPHA_B16 H5T_STD_B16LE ### string, not number "H5T_STD_B16LE" */
/* #define H5T_ALPHA_B32 H5T_STD_B32LE ### string, not number "H5T_STD_B32LE" */
/* #define H5T_ALPHA_B64 H5T_STD_B64LE ### string, not number "H5T_STD_B64LE" */
/* #define H5T_ALPHA_F32 H5T_IEEE_F32LE ### string, not number "H5T_IEEE_F32LE" */
/* #define H5T_ALPHA_F64 H5T_IEEE_F64LE ### string, not number "H5T_IEEE_F64LE" */
/* #define H5T_MIPS_I8 H5T_STD_I8BE ### string, not number "H5T_STD_I8BE" */
/* #define H5T_MIPS_I16 H5T_STD_I16BE ### string, not number "H5T_STD_I16BE" */
/* #define H5T_MIPS_I32 H5T_STD_I32BE ### string, not number "H5T_STD_I32BE" */
/* #define H5T_MIPS_I64 H5T_STD_I64BE ### string, not number "H5T_STD_I64BE" */
/* #define H5T_MIPS_U8 H5T_STD_U8BE ### string, not number "H5T_STD_U8BE" */
/* #define H5T_MIPS_U16 H5T_STD_U16BE ### string, not number "H5T_STD_U16BE" */
/* #define H5T_MIPS_U32 H5T_STD_U32BE ### string, not number "H5T_STD_U32BE" */
/* #define H5T_MIPS_U64 H5T_STD_U64BE ### string, not number "H5T_STD_U64BE" */
/* #define H5T_MIPS_B8 H5T_STD_B8BE ### string, not number "H5T_STD_B8BE" */
/* #define H5T_MIPS_B16 H5T_STD_B16BE ### string, not number "H5T_STD_B16BE" */
/* #define H5T_MIPS_B32 H5T_STD_B32BE ### string, not number "H5T_STD_B32BE" */
/* #define H5T_MIPS_B64 H5T_STD_B64BE ### string, not number "H5T_STD_B64BE" */
/* #define H5T_MIPS_F32 H5T_IEEE_F32BE ### string, not number "H5T_IEEE_F32BE" */
/* #define H5T_MIPS_F64 H5T_IEEE_F64BE ### string, not number "H5T_IEEE_F64BE" */
/* #define H5T_VAX_F32 (H5OPEN H5T_VAX_F32_g) ### string, not number "(H5OPEN H5T_VAX_F32_g)" */
/* #define H5T_VAX_F64 (H5OPEN H5T_VAX_F64_g) ### string, not number "(H5OPEN H5T_VAX_F64_g)" */
extern hid_t H5T_VAX_F32_g;
extern hid_t H5T_VAX_F64_g;
enum { H5T_NATIVE_CHAR = 0 };
/* #define H5T_NATIVE_SCHAR (H5OPEN H5T_NATIVE_SCHAR_g) ### string, not number "(H5OPEN H5T_NATIVE_SCHAR_g)" */
/* #define H5T_NATIVE_UCHAR (H5OPEN H5T_NATIVE_UCHAR_g) ### string, not number "(H5OPEN H5T_NATIVE_UCHAR_g)" */
/* #define H5T_NATIVE_SHORT (H5OPEN H5T_NATIVE_SHORT_g) ### string, not number "(H5OPEN H5T_NATIVE_SHORT_g)" */
/* #define H5T_NATIVE_USHORT (H5OPEN H5T_NATIVE_USHORT_g) ### string, not number "(H5OPEN H5T_NATIVE_USHORT_g)" */
/* #define H5T_NATIVE_INT (H5OPEN H5T_NATIVE_INT_g) ### string, not number "(H5OPEN H5T_NATIVE_INT_g)" */
/* #define H5T_NATIVE_UINT (H5OPEN H5T_NATIVE_UINT_g) ### string, not number "(H5OPEN H5T_NATIVE_UINT_g)" */
/* #define H5T_NATIVE_LONG (H5OPEN H5T_NATIVE_LONG_g) ### string, not number "(H5OPEN H5T_NATIVE_LONG_g)" */
/* #define H5T_NATIVE_ULONG (H5OPEN H5T_NATIVE_ULONG_g) ### string, not number "(H5OPEN H5T_NATIVE_ULONG_g)" */
/* #define H5T_NATIVE_LLONG (H5OPEN H5T_NATIVE_LLONG_g) ### string, not number "(H5OPEN H5T_NATIVE_LLONG_g)" */
/* #define H5T_NATIVE_ULLONG (H5OPEN H5T_NATIVE_ULLONG_g) ### string, not number "(H5OPEN H5T_NATIVE_ULLONG_g)" */
/* #define H5T_NATIVE_FLOAT (H5OPEN H5T_NATIVE_FLOAT_g) ### string, not number "(H5OPEN H5T_NATIVE_FLOAT_g)" */
/* #define H5T_NATIVE_DOUBLE (H5OPEN H5T_NATIVE_DOUBLE_g) ### string, not number "(H5OPEN H5T_NATIVE_DOUBLE_g)" */
/* #define H5T_NATIVE_LDOUBLE (H5OPEN H5T_NATIVE_LDOUBLE_g) ### string, not number "(H5OPEN H5T_NATIVE_LDOUBLE_g)" */
/* #define H5T_NATIVE_B8 (H5OPEN H5T_NATIVE_B8_g) ### string, not number "(H5OPEN H5T_NATIVE_B8_g)" */
/* #define H5T_NATIVE_B16 (H5OPEN H5T_NATIVE_B16_g) ### string, not number "(H5OPEN H5T_NATIVE_B16_g)" */
/* #define H5T_NATIVE_B32 (H5OPEN H5T_NATIVE_B32_g) ### string, not number "(H5OPEN H5T_NATIVE_B32_g)" */
/* #define H5T_NATIVE_B64 (H5OPEN H5T_NATIVE_B64_g) ### string, not number "(H5OPEN H5T_NATIVE_B64_g)" */
/* #define H5T_NATIVE_OPAQUE (H5OPEN H5T_NATIVE_OPAQUE_g) ### string, not number "(H5OPEN H5T_NATIVE_OPAQUE_g)" */
/* #define H5T_NATIVE_HADDR (H5OPEN H5T_NATIVE_HADDR_g) ### string, not number "(H5OPEN H5T_NATIVE_HADDR_g)" */
/* #define H5T_NATIVE_HSIZE (H5OPEN H5T_NATIVE_HSIZE_g) ### string, not number "(H5OPEN H5T_NATIVE_HSIZE_g)" */
/* #define H5T_NATIVE_HSSIZE (H5OPEN H5T_NATIVE_HSSIZE_g) ### string, not number "(H5OPEN H5T_NATIVE_HSSIZE_g)" */
/* #define H5T_NATIVE_HERR (H5OPEN H5T_NATIVE_HERR_g) ### string, not number "(H5OPEN H5T_NATIVE_HERR_g)" */
/* #define H5T_NATIVE_HBOOL (H5OPEN H5T_NATIVE_HBOOL_g) ### string, not number "(H5OPEN H5T_NATIVE_HBOOL_g)" */
extern hid_t H5T_NATIVE_SCHAR_g;
extern hid_t H5T_NATIVE_UCHAR_g;
extern hid_t H5T_NATIVE_SHORT_g;
extern hid_t H5T_NATIVE_USHORT_g;
extern hid_t H5T_NATIVE_INT_g;
extern hid_t H5T_NATIVE_UINT_g;
extern hid_t H5T_NATIVE_LONG_g;
extern hid_t H5T_NATIVE_ULONG_g;
extern hid_t H5T_NATIVE_LLONG_g;
extern hid_t H5T_NATIVE_ULLONG_g;
extern hid_t H5T_NATIVE_FLOAT_g;
extern hid_t H5T_NATIVE_DOUBLE_g;
extern hid_t H5T_NATIVE_LDOUBLE_g;
extern hid_t H5T_NATIVE_B8_g;
extern hid_t H5T_NATIVE_B16_g;
extern hid_t H5T_NATIVE_B32_g;
extern hid_t H5T_NATIVE_B64_g;
extern hid_t H5T_NATIVE_OPAQUE_g;
extern hid_t H5T_NATIVE_HADDR_g;
extern hid_t H5T_NATIVE_HSIZE_g;
extern hid_t H5T_NATIVE_HSSIZE_g;
extern hid_t H5T_NATIVE_HERR_g;
extern hid_t H5T_NATIVE_HBOOL_g;
/* #define H5T_NATIVE_INT8 (H5OPEN H5T_NATIVE_INT8_g) ### string, not number "(H5OPEN H5T_NATIVE_INT8_g)" */
/* #define H5T_NATIVE_UINT8 (H5OPEN H5T_NATIVE_UINT8_g) ### string, not number "(H5OPEN H5T_NATIVE_UINT8_g)" */
/* #define H5T_NATIVE_INT_LEAST8 (H5OPEN H5T_NATIVE_INT_LEAST8_g) ### string, not number "(H5OPEN H5T_NATIVE_INT_LEAST8_g)" */
/* #define H5T_NATIVE_UINT_LEAST8 (H5OPEN H5T_NATIVE_UINT_LEAST8_g) ### string, not number "(H5OPEN H5T_NATIVE_UINT_LEAST8_g)" */
/* #define H5T_NATIVE_INT_FAST8 (H5OPEN H5T_NATIVE_INT_FAST8_g) ### string, not number "(H5OPEN H5T_NATIVE_INT_FAST8_g)" */
/* #define H5T_NATIVE_UINT_FAST8 (H5OPEN H5T_NATIVE_UINT_FAST8_g) ### string, not number "(H5OPEN H5T_NATIVE_UINT_FAST8_g)" */
extern hid_t H5T_NATIVE_INT8_g;
extern hid_t H5T_NATIVE_UINT8_g;
extern hid_t H5T_NATIVE_INT_LEAST8_g;
extern hid_t H5T_NATIVE_UINT_LEAST8_g;
extern hid_t H5T_NATIVE_INT_FAST8_g;
extern hid_t H5T_NATIVE_UINT_FAST8_g;
/* #define H5T_NATIVE_INT16 (H5OPEN H5T_NATIVE_INT16_g) ### string, not number "(H5OPEN H5T_NATIVE_INT16_g)" */
/* #define H5T_NATIVE_UINT16 (H5OPEN H5T_NATIVE_UINT16_g) ### string, not number "(H5OPEN H5T_NATIVE_UINT16_g)" */
/* #define H5T_NATIVE_INT_LEAST16 (H5OPEN H5T_NATIVE_INT_LEAST16_g) ### string, not number "(H5OPEN H5T_NATIVE_INT_LEAST16_g)" */
/* #define H5T_NATIVE_UINT_LEAST16 (H5OPEN H5T_NATIVE_UINT_LEAST16_g) ### string, not number "(H5OPEN H5T_NATIVE_UINT_LEAST16_g)" */
/* #define H5T_NATIVE_INT_FAST16 (H5OPEN H5T_NATIVE_INT_FAST16_g) ### string, not number "(H5OPEN H5T_NATIVE_INT_FAST16_g)" */
/* #define H5T_NATIVE_UINT_FAST16 (H5OPEN H5T_NATIVE_UINT_FAST16_g) ### string, not number "(H5OPEN H5T_NATIVE_UINT_FAST16_g)" */
extern hid_t H5T_NATIVE_INT16_g;
extern hid_t H5T_NATIVE_UINT16_g;
extern hid_t H5T_NATIVE_INT_LEAST16_g;
extern hid_t H5T_NATIVE_UINT_LEAST16_g;
extern hid_t H5T_NATIVE_INT_FAST16_g;
extern hid_t H5T_NATIVE_UINT_FAST16_g;
/* #define H5T_NATIVE_INT32 (H5OPEN H5T_NATIVE_INT32_g) ### string, not number "(H5OPEN H5T_NATIVE_INT32_g)" */
/* #define H5T_NATIVE_UINT32 (H5OPEN H5T_NATIVE_UINT32_g) ### string, not number "(H5OPEN H5T_NATIVE_UINT32_g)" */
/* #define H5T_NATIVE_INT_LEAST32 (H5OPEN H5T_NATIVE_INT_LEAST32_g) ### string, not number "(H5OPEN H5T_NATIVE_INT_LEAST32_g)" */
/* #define H5T_NATIVE_UINT_LEAST32 (H5OPEN H5T_NATIVE_UINT_LEAST32_g) ### string, not number "(H5OPEN H5T_NATIVE_UINT_LEAST32_g)" */
/* #define H5T_NATIVE_INT_FAST32 (H5OPEN H5T_NATIVE_INT_FAST32_g) ### string, not number "(H5OPEN H5T_NATIVE_INT_FAST32_g)" */
/* #define H5T_NATIVE_UINT_FAST32 (H5OPEN H5T_NATIVE_UINT_FAST32_g) ### string, not number "(H5OPEN H5T_NATIVE_UINT_FAST32_g)" */
extern hid_t H5T_NATIVE_INT32_g;
extern hid_t H5T_NATIVE_UINT32_g;
extern hid_t H5T_NATIVE_INT_LEAST32_g;
extern hid_t H5T_NATIVE_UINT_LEAST32_g;
extern hid_t H5T_NATIVE_INT_FAST32_g;
extern hid_t H5T_NATIVE_UINT_FAST32_g;
/* #define H5T_NATIVE_INT64 (H5OPEN H5T_NATIVE_INT64_g) ### string, not number "(H5OPEN H5T_NATIVE_INT64_g)" */
/* #define H5T_NATIVE_UINT64 (H5OPEN H5T_NATIVE_UINT64_g) ### string, not number "(H5OPEN H5T_NATIVE_UINT64_g)" */
/* #define H5T_NATIVE_INT_LEAST64 (H5OPEN H5T_NATIVE_INT_LEAST64_g) ### string, not number "(H5OPEN H5T_NATIVE_INT_LEAST64_g)" */
/* #define H5T_NATIVE_UINT_LEAST64 (H5OPEN H5T_NATIVE_UINT_LEAST64_g) ### string, not number "(H5OPEN H5T_NATIVE_UINT_LEAST64_g)" */
/* #define H5T_NATIVE_INT_FAST64 (H5OPEN H5T_NATIVE_INT_FAST64_g) ### string, not number "(H5OPEN H5T_NATIVE_INT_FAST64_g)" */
/* #define H5T_NATIVE_UINT_FAST64 (H5OPEN H5T_NATIVE_UINT_FAST64_g) ### string, not number "(H5OPEN H5T_NATIVE_UINT_FAST64_g)" */
extern hid_t H5T_NATIVE_INT64_g;
extern hid_t H5T_NATIVE_UINT64_g;
extern hid_t H5T_NATIVE_INT_LEAST64_g;
extern hid_t H5T_NATIVE_UINT_LEAST64_g;
extern hid_t H5T_NATIVE_INT_FAST64_g;
extern hid_t H5T_NATIVE_UINT_FAST64_g;
hid_t H5Tcreate(H5T_class_t type, size_t size);
hid_t H5Tcopy(hid_t type_id);
herr_t H5Tclose(hid_t type_id);
htri_t H5Tequal(hid_t type1_id, hid_t type2_id);
herr_t H5Tlock(hid_t type_id);
herr_t H5Tcommit2(hid_t loc_id, const char *name, hid_t type_id, hid_t lcpl_id, hid_t tcpl_id, hid_t tapl_id);
hid_t H5Topen2(hid_t loc_id, const char *name, hid_t tapl_id);
herr_t H5Tcommit_anon(hid_t loc_id, hid_t type_id, hid_t tcpl_id, hid_t tapl_id);
hid_t H5Tget_create_plist(hid_t type_id);
htri_t H5Tcommitted(hid_t type_id);
herr_t H5Tencode(hid_t obj_id, void *buf, size_t *nalloc);
hid_t H5Tdecode(const void *buf);
herr_t H5Tflush(hid_t type_id);
herr_t H5Trefresh(hid_t type_id);
herr_t H5Tinsert(hid_t parent_id, const char *name, size_t offset, hid_t member_id);
herr_t H5Tpack(hid_t type_id);
hid_t H5Tenum_create(hid_t base_id);
herr_t H5Tenum_insert(hid_t type, const char *name, const void *value);
herr_t H5Tenum_nameof(hid_t type, const void *value, char *name , size_t size);
herr_t H5Tenum_valueof(hid_t type, const char *name, void *value );
hid_t H5Tvlen_create(hid_t base_id);
hid_t H5Tarray_create2(hid_t base_id, unsigned ndims, const hsize_t dim[]);
int H5Tget_array_ndims(hid_t type_id);
int H5Tget_array_dims2(hid_t type_id, hsize_t dims[]);
herr_t H5Tset_tag(hid_t type, const char *tag);
char *H5Tget_tag(hid_t type);
hid_t H5Tget_super(hid_t type);
H5T_class_t H5Tget_class(hid_t type_id);
htri_t H5Tdetect_class(hid_t type_id, H5T_class_t cls);
size_t H5Tget_size(hid_t type_id);
H5T_order_t H5Tget_order(hid_t type_id);
size_t H5Tget_precision(hid_t type_id);
int H5Tget_offset(hid_t type_id);
herr_t H5Tget_pad(hid_t type_id, H5T_pad_t *lsb , H5T_pad_t *msb );
H5T_sign_t H5Tget_sign(hid_t type_id);
herr_t H5Tget_fields(hid_t type_id, size_t *spos , size_t *epos , size_t *esize , size_t *mpos , size_t *msize );
size_t H5Tget_ebias(hid_t type_id);
H5T_norm_t H5Tget_norm(hid_t type_id);
H5T_pad_t H5Tget_inpad(hid_t type_id);
H5T_str_t H5Tget_strpad(hid_t type_id);
int H5Tget_nmembers(hid_t type_id);
char *H5Tget_member_name(hid_t type_id, unsigned membno);
int H5Tget_member_index(hid_t type_id, const char *name);
size_t H5Tget_member_offset(hid_t type_id, unsigned membno);
H5T_class_t H5Tget_member_class(hid_t type_id, unsigned membno);
hid_t H5Tget_member_type(hid_t type_id, unsigned membno);
herr_t H5Tget_member_value(hid_t type_id, unsigned membno, void *value );
H5T_cset_t H5Tget_cset(hid_t type_id);
htri_t H5Tis_variable_str(hid_t type_id);
hid_t H5Tget_native_type(hid_t type_id, H5T_direction_t direction);
herr_t H5Tset_size(hid_t type_id, size_t size);
herr_t H5Tset_order(hid_t type_id, H5T_order_t order);
herr_t H5Tset_precision(hid_t type_id, size_t prec);
herr_t H5Tset_offset(hid_t type_id, size_t offset);
herr_t H5Tset_pad(hid_t type_id, H5T_pad_t lsb, H5T_pad_t msb);
herr_t H5Tset_sign(hid_t type_id, H5T_sign_t sign);
herr_t H5Tset_fields(hid_t type_id, size_t spos, size_t epos, size_t esize, size_t mpos, size_t msize);
herr_t H5Tset_ebias(hid_t type_id, size_t ebias);
herr_t H5Tset_norm(hid_t type_id, H5T_norm_t norm);
herr_t H5Tset_inpad(hid_t type_id, H5T_pad_t pad);
herr_t H5Tset_cset(hid_t type_id, H5T_cset_t cset);
herr_t H5Tset_strpad(hid_t type_id, H5T_str_t strpad);
herr_t H5Tregister(H5T_pers_t pers, const char *name, hid_t src_id, hid_t dst_id, H5T_conv_t func);
herr_t H5Tunregister(H5T_pers_t pers, const char *name, hid_t src_id, hid_t dst_id, H5T_conv_t func);
H5T_conv_t H5Tfind(hid_t src_id, hid_t dst_id, H5T_cdata_t **pcdata);
htri_t H5Tcompiler_conv(hid_t src_id, hid_t dst_id);
herr_t H5Tconvert(hid_t src_id, hid_t dst_id, size_t nelmts, void *buf, void *background, hid_t plist_id);
herr_t H5Treclaim(hid_t type_id, hid_t space_id, hid_t plist_id, void *buf);
herr_t H5Tcommit1(hid_t loc_id, const char *name, hid_t type_id);
hid_t H5Topen1(hid_t loc_id, const char *name);
hid_t H5Tarray_create1(hid_t base_id, int ndims, const hsize_t dim[], const int perm[]);
int H5Tget_array_dims1(hid_t type_id, hsize_t dims[], int perm[]);
/* +++++ END   /usr/include/hdf5/serial/H5Tpublic.h */
enum { H5L_MAX_LINK_NAME_LEN = 4294967295 };
enum { H5L_SAME_LOC = 0 };
enum { H5L_LINK_CLASS_T_VERS = 1 };
enum { H5L_LINK_CLASS_T_VERS_0 = 0 };
typedef enum { H5L_TYPE_ERROR = (-1), H5L_TYPE_HARD = 0, H5L_TYPE_SOFT = 1, H5L_TYPE_EXTERNAL = 64, H5L_TYPE_MAX = 255 } H5L_type_t;
enum { H5L_TYPE_BUILTIN_MAX = 0 };
enum { H5L_TYPE_UD_MIN = 0 };
typedef struct {
	H5L_type_t type;
	hbool_t corder_valid;
	int64_t corder;
	H5T_cset_t cset;
	union {
	haddr_t address;
	size_t val_size;
} u;
} H5L_info_t;
typedef herr_t (*H5L_create_func_t)(const char *link_name, hid_t loc_group, const void *lnkdata, size_t lnkdata_size, hid_t lcpl_id);
typedef herr_t (*H5L_move_func_t)(const char *new_name, hid_t new_loc, const void *lnkdata, size_t lnkdata_size);
typedef herr_t (*H5L_copy_func_t)(const char *new_name, hid_t new_loc, const void *lnkdata, size_t lnkdata_size);
typedef hid_t (*H5L_traverse_0_func_t)(const char *link_name, hid_t cur_group, const void *lnkdata, size_t lnkdata_size, hid_t lapl_id);
typedef hid_t (*H5L_traverse_func_t)(const char *link_name, hid_t cur_group, const void *lnkdata, size_t lnkdata_size, hid_t lapl_id, hid_t dxpl_id);
typedef herr_t (*H5L_delete_func_t)(const char *link_name, hid_t file, const void *lnkdata, size_t lnkdata_size);
typedef ssize_t (*H5L_query_func_t)(const char *link_name, const void *lnkdata, size_t lnkdata_size, void *buf , size_t buf_size);
typedef struct {
	int version;
	H5L_type_t id;
	const char * comment;
	H5L_create_func_t create_func;
	H5L_move_func_t move_func;
	H5L_copy_func_t copy_func;
	H5L_traverse_0_func_t trav_func;
	H5L_delete_func_t del_func;
	H5L_query_func_t query_func;
} H5L_class_0_t;
typedef struct {
	int version;
	H5L_type_t id;
	const char * comment;
	H5L_create_func_t create_func;
	H5L_move_func_t move_func;
	H5L_copy_func_t copy_func;
	H5L_traverse_func_t trav_func;
	H5L_delete_func_t del_func;
	H5L_query_func_t query_func;
} H5L_class_t;
typedef herr_t (*H5L_iterate_t)(hid_t group, const char *name, const H5L_info_t *info, void *op_data);
typedef herr_t (*H5L_elink_traverse_t)(const char *parent_file_name, const char *parent_group_name, const char *child_file_name, const char *child_object_name, unsigned *acc_flags, hid_t fapl_id, void *op_data);
herr_t H5Lmove(hid_t src_loc, const char *src_name, hid_t dst_loc, const char *dst_name, hid_t lcpl_id, hid_t lapl_id);
herr_t H5Lcopy(hid_t src_loc, const char *src_name, hid_t dst_loc, const char *dst_name, hid_t lcpl_id, hid_t lapl_id);
herr_t H5Lcreate_hard(hid_t cur_loc, const char *cur_name, hid_t dst_loc, const char *dst_name, hid_t lcpl_id, hid_t lapl_id);
herr_t H5Lcreate_soft(const char *link_target, hid_t link_loc_id, const char *link_name, hid_t lcpl_id, hid_t lapl_id);
herr_t H5Ldelete(hid_t loc_id, const char *name, hid_t lapl_id);
herr_t H5Ldelete_by_idx(hid_t loc_id, const char *group_name, H5_index_t idx_type, H5_iter_order_t order, hsize_t n, hid_t lapl_id);
herr_t H5Lget_val(hid_t loc_id, const char *name, void *buf , size_t size, hid_t lapl_id);
herr_t H5Lget_val_by_idx(hid_t loc_id, const char *group_name, H5_index_t idx_type, H5_iter_order_t order, hsize_t n, void *buf , size_t size, hid_t lapl_id);
htri_t H5Lexists(hid_t loc_id, const char *name, hid_t lapl_id);
herr_t H5Lget_info(hid_t loc_id, const char *name, H5L_info_t *linfo, hid_t lapl_id);
herr_t H5Lget_info_by_idx(hid_t loc_id, const char *group_name, H5_index_t idx_type, H5_iter_order_t order, hsize_t n, H5L_info_t *linfo, hid_t lapl_id);
ssize_t H5Lget_name_by_idx(hid_t loc_id, const char *group_name, H5_index_t idx_type, H5_iter_order_t order, hsize_t n, char *name , size_t size, hid_t lapl_id);
herr_t H5Literate(hid_t grp_id, H5_index_t idx_type, H5_iter_order_t order, hsize_t *idx, H5L_iterate_t op, void *op_data);
herr_t H5Literate_by_name(hid_t loc_id, const char *group_name, H5_index_t idx_type, H5_iter_order_t order, hsize_t *idx, H5L_iterate_t op, void *op_data, hid_t lapl_id);
herr_t H5Lvisit(hid_t grp_id, H5_index_t idx_type, H5_iter_order_t order, H5L_iterate_t op, void *op_data);
herr_t H5Lvisit_by_name(hid_t loc_id, const char *group_name, H5_index_t idx_type, H5_iter_order_t order, H5L_iterate_t op, void *op_data, hid_t lapl_id);
herr_t H5Lcreate_ud(hid_t link_loc_id, const char *link_name, H5L_type_t link_type, const void *udata, size_t udata_size, hid_t lcpl_id, hid_t lapl_id);
herr_t H5Lregister(const H5L_class_t *cls);
herr_t H5Lunregister(H5L_type_t id);
htri_t H5Lis_registered(H5L_type_t id);
herr_t H5Lunpack_elink_val(const void *ext_linkval , size_t link_size, unsigned *flags, const char **filename , const char **obj_path );
herr_t H5Lcreate_external(const char *file_name, const char *obj_name, hid_t link_loc_id, const char *link_name, hid_t lcpl_id, hid_t lapl_id);
/* ++++ END   /usr/include/hdf5/serial/H5Lpublic.h */
/* #define H5O_COPY_SHALLOW_HIERARCHY_FLAG     (0x0001u) ### string, not number "(0x0001u)" */
/* #define H5O_COPY_EXPAND_SOFT_LINK_FLAG      (0x0002u) ### string, not number "(0x0002u)" */
/* #define H5O_COPY_EXPAND_EXT_LINK_FLAG       (0x0004u) ### string, not number "(0x0004u)" */
/* #define H5O_COPY_EXPAND_REFERENCE_FLAG      (0x0008u) ### string, not number "(0x0008u)" */
/* #define H5O_COPY_WITHOUT_ATTR_FLAG          (0x0010u) ### string, not number "(0x0010u)" */
/* #define H5O_COPY_PRESERVE_NULL_FLAG         (0x0020u) ### string, not number "(0x0020u)" */
/* #define H5O_COPY_MERGE_COMMITTED_DTYPE_FLAG (0x0040u) ### string, not number "(0x0040u)" */
/* #define H5O_COPY_ALL                        (0x007Fu) ### string, not number "(0x007Fu)" */
enum { H5O_SHMESG_NONE_FLAG = 0 };
/* #define H5O_SHMESG_SDSPACE_FLAG ((unsigned)1 << 0x0001) ### string, not number "((unsigned)1 << 0x0001)" */
/* #define H5O_SHMESG_DTYPE_FLAG   ((unsigned)1 << 0x0003) ### string, not number "((unsigned)1 << 0x0003)" */
/* #define H5O_SHMESG_FILL_FLAG    ((unsigned)1 << 0x0005) ### string, not number "((unsigned)1 << 0x0005)" */
/* #define H5O_SHMESG_PLINE_FLAG   ((unsigned)1 << 0x000b) ### string, not number "((unsigned)1 << 0x000b)" */
/* #define H5O_SHMESG_ATTR_FLAG    ((unsigned)1 << 0x000c) ### string, not number "((unsigned)1 << 0x000c)" */
/* #define H5O_SHMESG_ALL_FLAG                                                                                       (H5O_SHMESG_SDSPACE_FLAG | H5O_SHMESG_DTYPE_FLAG | H5O_SHMESG_FILL_FLAG | H5O_SHMESG_PLINE_FLAG |              H5O_SHMESG_ATTR_FLAG) ### string, not number "(H5O_SHMESG_SDSPACE_FLAG | H5O_SHMESG_DTYPE_FLAG | H5O_SHMESG_FILL_FLAG | H5O_SHMESG_PLINE_FLAG |              H5O_SHMESG_ATTR_FLAG)" */
enum { H5O_HDR_CHUNK0_SIZE = 3 };
enum { H5O_HDR_ATTR_CRT_ORDER_TRACKED = 4 };
enum { H5O_HDR_ATTR_CRT_ORDER_INDEXED = 8 };
enum { H5O_HDR_ATTR_STORE_PHASE_CHANGE = 16 };
enum { H5O_HDR_STORE_TIMES = 32 };
enum { H5O_HDR_ALL_FLAGS = 63 };
enum { H5O_SHMESG_MAX_NINDEXES = 8 };
enum { H5O_SHMESG_MAX_LIST_SIZE = 5000 };
enum { H5O_INFO_BASIC = 0x0001u };
enum { H5O_INFO_TIME = 0x0002u };
enum { H5O_INFO_NUM_ATTRS = 0x0004u };
enum { H5O_INFO_HDR = 0x0008u };
enum { H5O_INFO_META_SIZE = 0x0010u };
/* #define H5O_INFO_ALL       (H5O_INFO_BASIC | H5O_INFO_TIME | H5O_INFO_NUM_ATTRS | H5O_INFO_HDR | H5O_INFO_META_SIZE) ### string, not number "(H5O_INFO_BASIC | H5O_INFO_TIME | H5O_INFO_NUM_ATTRS | H5O_INFO_HDR | H5O_INFO_META_SIZE)" */
typedef enum H5O_type_t { H5O_TYPE_UNKNOWN = -1, H5O_TYPE_GROUP, H5O_TYPE_DATASET, H5O_TYPE_NAMED_DATATYPE, H5O_TYPE_NTYPES } H5O_type_t;
typedef struct H5O_hdr_info_t {
	unsigned version;
	unsigned nmesgs;
	unsigned nchunks;
	unsigned flags;
	struct {
	hsize_t total;
	hsize_t meta;
	hsize_t mesg;
	hsize_t free;
} space;
struct {
	uint64_t present;
	uint64_t shared;
} mesg;
} H5O_hdr_info_t;
typedef struct H5O_info_t {
	unsigned long fileno;
	haddr_t addr;
	H5O_type_t type;
	unsigned rc;
	time_t atime;
	time_t mtime;
	time_t ctime;
	time_t btime;
	hsize_t num_attrs;
	H5O_hdr_info_t hdr;
	struct {
	H5_ih_info_t obj;
	H5_ih_info_t attr;
} meta_size;
} H5O_info_t;
typedef uint32_t H5O_msg_crt_idx_t;
typedef herr_t (*H5O_iterate_t)(hid_t obj, const char *name, const H5O_info_t *info, void *op_data);
typedef enum H5O_mcdt_search_ret_t { H5O_MCDT_SEARCH_ERROR = -1, H5O_MCDT_SEARCH_CONT, H5O_MCDT_SEARCH_STOP } H5O_mcdt_search_ret_t;
typedef H5O_mcdt_search_ret_t (*H5O_mcdt_search_cb_t)(void *op_data);
hid_t H5Oopen(hid_t loc_id, const char *name, hid_t lapl_id);
hid_t H5Oopen_by_addr(hid_t loc_id, haddr_t addr);
hid_t H5Oopen_by_idx(hid_t loc_id, const char *group_name, H5_index_t idx_type, H5_iter_order_t order, hsize_t n, hid_t lapl_id);
htri_t H5Oexists_by_name(hid_t loc_id, const char *name, hid_t lapl_id);
herr_t H5Oget_info2(hid_t loc_id, H5O_info_t *oinfo, unsigned fields);
herr_t H5Oget_info_by_name2(hid_t loc_id, const char *name, H5O_info_t *oinfo, unsigned fields, hid_t lapl_id);
herr_t H5Oget_info_by_idx2(hid_t loc_id, const char *group_name, H5_index_t idx_type, H5_iter_order_t order, hsize_t n, H5O_info_t *oinfo, unsigned fields, hid_t lapl_id);
herr_t H5Olink(hid_t obj_id, hid_t new_loc_id, const char *new_name, hid_t lcpl_id, hid_t lapl_id);
herr_t H5Oincr_refcount(hid_t object_id);
herr_t H5Odecr_refcount(hid_t object_id);
herr_t H5Ocopy(hid_t src_loc_id, const char *src_name, hid_t dst_loc_id, const char *dst_name, hid_t ocpypl_id, hid_t lcpl_id);
herr_t H5Oset_comment(hid_t obj_id, const char *comment);
herr_t H5Oset_comment_by_name(hid_t loc_id, const char *name, const char *comment, hid_t lapl_id);
ssize_t H5Oget_comment(hid_t obj_id, char *comment, size_t bufsize);
ssize_t H5Oget_comment_by_name(hid_t loc_id, const char *name, char *comment, size_t bufsize, hid_t lapl_id);
herr_t H5Ovisit2(hid_t obj_id, H5_index_t idx_type, H5_iter_order_t order, H5O_iterate_t op, void *op_data, unsigned fields);
herr_t H5Ovisit_by_name2(hid_t loc_id, const char *obj_name, H5_index_t idx_type, H5_iter_order_t order, H5O_iterate_t op, void *op_data, unsigned fields, hid_t lapl_id);
herr_t H5Oclose(hid_t object_id);
herr_t H5Oflush(hid_t obj_id);
herr_t H5Orefresh(hid_t oid);
herr_t H5Odisable_mdc_flushes(hid_t object_id);
herr_t H5Oenable_mdc_flushes(hid_t object_id);
herr_t H5Oare_mdc_flushes_disabled(hid_t object_id, hbool_t *are_disabled);
herr_t H5Oget_info(hid_t loc_id, H5O_info_t *oinfo);
herr_t H5Oget_info_by_name(hid_t loc_id, const char *name, H5O_info_t *oinfo, hid_t lapl_id);
herr_t H5Oget_info_by_idx(hid_t loc_id, const char *group_name, H5_index_t idx_type, H5_iter_order_t order, hsize_t n, H5O_info_t *oinfo, hid_t lapl_id);
herr_t H5Ovisit(hid_t obj_id, H5_index_t idx_type, H5_iter_order_t order, H5O_iterate_t op, void *op_data);
herr_t H5Ovisit_by_name(hid_t loc_id, const char *obj_name, H5_index_t idx_type, H5_iter_order_t order, H5O_iterate_t op, void *op_data, hid_t lapl_id);
herr_t H5Oget_info1(hid_t loc_id, H5O_info_t *oinfo);
herr_t H5Oget_info_by_name1(hid_t loc_id, const char *name, H5O_info_t *oinfo, hid_t lapl_id);
herr_t H5Oget_info_by_idx1(hid_t loc_id, const char *group_name, H5_index_t idx_type, H5_iter_order_t order, hsize_t n, H5O_info_t *oinfo, hid_t lapl_id);
herr_t H5Ovisit1(hid_t obj_id, H5_index_t idx_type, H5_iter_order_t order, H5O_iterate_t op, void *op_data);
herr_t H5Ovisit_by_name1(hid_t loc_id, const char *obj_name, H5_index_t idx_type, H5_iter_order_t order, H5O_iterate_t op, void *op_data, hid_t lapl_id);
typedef struct H5O_stat_t {
	hsize_t size;
	hsize_t free;
	unsigned nmesgs;
	unsigned nchunks;
} H5O_stat_t;
/* +++ END   /usr/include/hdf5/serial/H5Opublic.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5Tpublic.h */
/* +++ END   /usr/include/hdf5/serial/H5Tpublic.h */
typedef struct {
	hbool_t corder_valid;
	H5O_msg_crt_idx_t corder;
	H5T_cset_t cset;
	hsize_t data_size;
} H5A_info_t;
typedef herr_t (*H5A_operator2_t)(hid_t location_id , const char *attr_name , const H5A_info_t *ainfo , void *op_data );
herr_t H5Aclose(hid_t attr_id);
hid_t H5Acreate2(hid_t loc_id, const char *attr_name, hid_t type_id, hid_t space_id, hid_t acpl_id, hid_t aapl_id);
hid_t H5Acreate_by_name(hid_t loc_id, const char *obj_name, const char *attr_name, hid_t type_id, hid_t space_id, hid_t acpl_id, hid_t aapl_id, hid_t lapl_id);
herr_t H5Adelete(hid_t loc_id, const char *attr_name);
herr_t H5Adelete_by_idx(hid_t loc_id, const char *obj_name, H5_index_t idx_type, H5_iter_order_t order, hsize_t n, hid_t lapl_id);
herr_t H5Adelete_by_name(hid_t loc_id, const char *obj_name, const char *attr_name, hid_t lapl_id);
htri_t H5Aexists(hid_t obj_id, const char *attr_name);
htri_t H5Aexists_by_name(hid_t obj_id, const char *obj_name, const char *attr_name, hid_t lapl_id);
hid_t H5Aget_create_plist(hid_t attr_id);
herr_t H5Aget_info(hid_t attr_id, H5A_info_t *ainfo );
herr_t H5Aget_info_by_idx(hid_t loc_id, const char *obj_name, H5_index_t idx_type, H5_iter_order_t order, hsize_t n, H5A_info_t *ainfo , hid_t lapl_id);
herr_t H5Aget_info_by_name(hid_t loc_id, const char *obj_name, const char *attr_name, H5A_info_t *ainfo , hid_t lapl_id);
ssize_t H5Aget_name(hid_t attr_id, size_t buf_size, char *buf);
ssize_t H5Aget_name_by_idx(hid_t loc_id, const char *obj_name, H5_index_t idx_type, H5_iter_order_t order, hsize_t n, char *name , size_t size, hid_t lapl_id);
hid_t H5Aget_space(hid_t attr_id);
hsize_t H5Aget_storage_size(hid_t attr_id);
hid_t H5Aget_type(hid_t attr_id);
herr_t H5Aiterate2(hid_t loc_id, H5_index_t idx_type, H5_iter_order_t order, hsize_t *idx, H5A_operator2_t op, void *op_data);
herr_t H5Aiterate_by_name(hid_t loc_id, const char *obj_name, H5_index_t idx_type, H5_iter_order_t order, hsize_t *idx, H5A_operator2_t op, void *op_data, hid_t lapl_id);
hid_t H5Aopen(hid_t obj_id, const char *attr_name, hid_t aapl_id);
hid_t H5Aopen_by_idx(hid_t loc_id, const char *obj_name, H5_index_t idx_type, H5_iter_order_t order, hsize_t n, hid_t aapl_id, hid_t lapl_id);
hid_t H5Aopen_by_name(hid_t loc_id, const char *obj_name, const char *attr_name, hid_t aapl_id, hid_t lapl_id);
herr_t H5Aread(hid_t attr_id, hid_t type_id, void *buf);
herr_t H5Arename(hid_t loc_id, const char *old_name, const char *new_name);
herr_t H5Awrite(hid_t attr_id, hid_t type_id, const void *buf);
herr_t H5Arename_by_name(hid_t loc_id, const char *obj_name, const char *old_attr_name, const char *new_attr_name, hid_t lapl_id);
typedef herr_t (*H5A_operator1_t)(hid_t location_id , const char *attr_name , void *operator_data );
hid_t H5Acreate1(hid_t loc_id, const char *name, hid_t type_id, hid_t space_id, hid_t acpl_id);
int H5Aget_num_attrs(hid_t loc_id);
herr_t H5Aiterate1(hid_t loc_id, unsigned *idx, H5A_operator1_t op, void *op_data);
hid_t H5Aopen_idx(hid_t loc_id, unsigned idx);
hid_t H5Aopen_name(hid_t loc_id, const char *name);
/* ++ END   /usr/include/hdf5/serial/H5Apublic.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5ACpublic.h */
enum { H5ACpublic_H = 1 };
/* +++ BEGIN /usr/include/hdf5/serial/H5public.h */
/* +++ END   /usr/include/hdf5/serial/H5public.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5Cpublic.h */
enum { H5Cpublic_H = 1 };
/* ++++ BEGIN /usr/include/hdf5/serial/H5public.h */
/* ++++ END   /usr/include/hdf5/serial/H5public.h */
enum H5C_cache_incr_mode { H5C_incr__off, H5C_incr__threshold };
enum H5C_cache_flash_incr_mode { H5C_flash_incr__off, H5C_flash_incr__add_space };
enum H5C_cache_decr_mode { H5C_decr__off, H5C_decr__threshold, H5C_decr__age_out, H5C_decr__age_out_with_threshold };
/* +++ END   /usr/include/hdf5/serial/H5Cpublic.h */
enum { H5AC__CURR_CACHE_CONFIG_VERSION = 1 };
enum { H5AC__MAX_TRACE_FILE_NAME_LEN = 1024 };
enum { H5AC_METADATA_WRITE_STRATEGY__PROCESS_0_ONLY = 0 };
enum { H5AC_METADATA_WRITE_STRATEGY__DISTRIBUTED = 1 };
typedef struct H5AC_cache_config_t {
	int version;
	hbool_t rpt_fcn_enabled;
	hbool_t open_trace_file;
	hbool_t close_trace_file;
	char trace_file_name[1024 + 1];
	hbool_t evictions_enabled;
	hbool_t set_initial_size;
	size_t initial_size;
	double min_clean_fraction;
	size_t max_size;
	size_t min_size;
	long int epoch_length;
	enum H5C_cache_incr_mode incr_mode;
	double lower_hr_threshold;
	double increment;
	hbool_t apply_max_increment;
	size_t max_increment;
	enum H5C_cache_flash_incr_mode flash_incr_mode;
	double flash_multiple;
	double flash_threshold;
	enum H5C_cache_decr_mode decr_mode;
	double upper_hr_threshold;
	double decrement;
	hbool_t apply_max_decrement;
	size_t max_decrement;
	int epochs_before_eviction;
	hbool_t apply_empty_reserve;
	double empty_reserve;
	size_t dirty_bytes_threshold;
	int metadata_write_strategy;
} H5AC_cache_config_t;
enum { H5AC__CURR_CACHE_IMAGE_CONFIG_VERSION = 1 };
enum { H5AC__CACHE_IMAGE__ENTRY_AGEOUT__NONE = -1 };
enum { H5AC__CACHE_IMAGE__ENTRY_AGEOUT__MAX = 100 };
typedef struct H5AC_cache_image_config_t {
	int version;
	hbool_t generate_image;
	hbool_t save_resize_status;
	int entry_ageout;
} H5AC_cache_image_config_t;
/* ++ END   /usr/include/hdf5/serial/H5ACpublic.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5Dpublic.h */
enum { H5Dpublic_H = 1 };
/* +++ BEGIN /usr/include/hdf5/serial/H5public.h */
/* +++ END   /usr/include/hdf5/serial/H5public.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5Ipublic.h */
/* +++ END   /usr/include/hdf5/serial/H5Ipublic.h */
enum { H5D_CHUNK_CACHE_NSLOTS_DEFAULT = -1 };
enum { H5D_CHUNK_CACHE_NBYTES_DEFAULT = -1 };
/* #define H5D_CHUNK_CACHE_W0_DEFAULT     (-1.0) ### string, not number "(-1.0)" */
/* #define H5D_CHUNK_DONT_FILTER_PARTIAL_CHUNKS (0x0002u) ### string, not number "(0x0002u)" */
typedef enum H5D_layout_t { H5D_LAYOUT_ERROR = -1, H5D_COMPACT = 0, H5D_CONTIGUOUS = 1, H5D_CHUNKED = 2, H5D_VIRTUAL = 3, H5D_NLAYOUTS = 4 } H5D_layout_t;
typedef enum H5D_chunk_index_t { H5D_CHUNK_IDX_BTREE = 0, H5D_CHUNK_IDX_SINGLE = 1, H5D_CHUNK_IDX_NONE = 2, H5D_CHUNK_IDX_FARRAY = 3, H5D_CHUNK_IDX_EARRAY = 4, H5D_CHUNK_IDX_BT2 = 5, H5D_CHUNK_IDX_NTYPES } H5D_chunk_index_t;
typedef enum H5D_alloc_time_t { H5D_ALLOC_TIME_ERROR = -1, H5D_ALLOC_TIME_DEFAULT = 0, H5D_ALLOC_TIME_EARLY = 1, H5D_ALLOC_TIME_LATE = 2, H5D_ALLOC_TIME_INCR = 3 } H5D_alloc_time_t;
typedef enum H5D_space_status_t { H5D_SPACE_STATUS_ERROR = -1, H5D_SPACE_STATUS_NOT_ALLOCATED = 0, H5D_SPACE_STATUS_PART_ALLOCATED = 1, H5D_SPACE_STATUS_ALLOCATED = 2 } H5D_space_status_t;
typedef enum H5D_fill_time_t { H5D_FILL_TIME_ERROR = -1, H5D_FILL_TIME_ALLOC = 0, H5D_FILL_TIME_NEVER = 1, H5D_FILL_TIME_IFSET = 2 } H5D_fill_time_t;
typedef enum H5D_fill_value_t { H5D_FILL_VALUE_ERROR = -1, H5D_FILL_VALUE_UNDEFINED = 0, H5D_FILL_VALUE_DEFAULT = 1, H5D_FILL_VALUE_USER_DEFINED = 2 } H5D_fill_value_t;
typedef enum H5D_vds_view_t { H5D_VDS_ERROR = -1, H5D_VDS_FIRST_MISSING = 0, H5D_VDS_LAST_AVAILABLE = 1 } H5D_vds_view_t;
typedef herr_t (*H5D_append_cb_t)(hid_t dataset_id, hsize_t *cur_dims, void *op_data);
typedef herr_t (*H5D_operator_t)(void *elem, hid_t type_id, unsigned ndim, const hsize_t *point, void *operator_data);
typedef herr_t (*H5D_scatter_func_t)(const void **src_buf , size_t *src_buf_bytes_used , void *op_data);
typedef herr_t (*H5D_gather_func_t)(const void *dst_buf, size_t dst_buf_bytes_used, void *op_data);
hid_t H5Dcreate2(hid_t loc_id, const char *name, hid_t type_id, hid_t space_id, hid_t lcpl_id, hid_t dcpl_id, hid_t dapl_id);
hid_t H5Dcreate_anon(hid_t loc_id, hid_t type_id, hid_t space_id, hid_t dcpl_id, hid_t dapl_id);
hid_t H5Dopen2(hid_t loc_id, const char *name, hid_t dapl_id);
hid_t H5Dget_space(hid_t dset_id);
herr_t H5Dget_space_status(hid_t dset_id, H5D_space_status_t *allocation);
hid_t H5Dget_type(hid_t dset_id);
hid_t H5Dget_create_plist(hid_t dset_id);
hid_t H5Dget_access_plist(hid_t dset_id);
hsize_t H5Dget_storage_size(hid_t dset_id);
herr_t H5Dget_chunk_storage_size(hid_t dset_id, const hsize_t *offset, hsize_t *chunk_bytes);
herr_t H5Dget_num_chunks(hid_t dset_id, hid_t fspace_id, hsize_t *nchunks);
herr_t H5Dget_chunk_info_by_coord(hid_t dset_id, const hsize_t *offset, unsigned *filter_mask, haddr_t *addr, hsize_t *size);
herr_t H5Dget_chunk_info(hid_t dset_id, hid_t fspace_id, hsize_t chk_idx, hsize_t *offset, unsigned *filter_mask, haddr_t *addr, hsize_t *size);
haddr_t H5Dget_offset(hid_t dset_id);
herr_t H5Dread(hid_t dset_id, hid_t mem_type_id, hid_t mem_space_id, hid_t file_space_id, hid_t dxpl_id, void *buf );
herr_t H5Dwrite(hid_t dset_id, hid_t mem_type_id, hid_t mem_space_id, hid_t file_space_id, hid_t dxpl_id, const void *buf);
herr_t H5Dwrite_chunk(hid_t dset_id, hid_t dxpl_id, uint32_t filters, const hsize_t *offset, size_t data_size, const void *buf);
herr_t H5Dread_chunk(hid_t dset_id, hid_t dxpl_id, const hsize_t *offset, uint32_t *filters, void *buf);
herr_t H5Diterate(void *buf, hid_t type_id, hid_t space_id, H5D_operator_t op, void *operator_data);
herr_t H5Dvlen_reclaim(hid_t type_id, hid_t space_id, hid_t dxpl_id, void *buf);
herr_t H5Dvlen_get_buf_size(hid_t dset_id, hid_t type_id, hid_t space_id, hsize_t *size);
herr_t H5Dfill(const void *fill, hid_t fill_type_id, void *buf, hid_t buf_type_id, hid_t space_id);
herr_t H5Dset_extent(hid_t dset_id, const hsize_t size[]);
herr_t H5Dflush(hid_t dset_id);
herr_t H5Drefresh(hid_t dset_id);
herr_t H5Dscatter(H5D_scatter_func_t op, void *op_data, hid_t type_id, hid_t dst_space_id, void *dst_buf);
herr_t H5Dgather(hid_t src_space_id, const void *src_buf, hid_t type_id, size_t dst_buf_size, void *dst_buf, H5D_gather_func_t op, void *op_data);
herr_t H5Dclose(hid_t dset_id);
herr_t H5Ddebug(hid_t dset_id);
herr_t H5Dformat_convert(hid_t dset_id);
herr_t H5Dget_chunk_index_type(hid_t did, H5D_chunk_index_t *idx_type);
enum { H5D_CHUNK_BTREE = 0 };
/* #define H5D_XFER_DIRECT_CHUNK_WRITE_FLAG_NAME     "direct_chunk_flag" ### string, not number "\"direct_chunk_flag\"" */
/* #define H5D_XFER_DIRECT_CHUNK_WRITE_FILTERS_NAME  "direct_chunk_filters" ### string, not number "\"direct_chunk_filters\"" */
/* #define H5D_XFER_DIRECT_CHUNK_WRITE_OFFSET_NAME   "direct_chunk_offset" ### string, not number "\"direct_chunk_offset\"" */
/* #define H5D_XFER_DIRECT_CHUNK_WRITE_DATASIZE_NAME "direct_chunk_datasize" ### string, not number "\"direct_chunk_datasize\"" */
/* #define H5D_XFER_DIRECT_CHUNK_READ_FLAG_NAME    "direct_chunk_read_flag" ### string, not number "\"direct_chunk_read_flag\"" */
/* #define H5D_XFER_DIRECT_CHUNK_READ_OFFSET_NAME  "direct_chunk_read_offset" ### string, not number "\"direct_chunk_read_offset\"" */
/* #define H5D_XFER_DIRECT_CHUNK_READ_FILTERS_NAME "direct_chunk_read_filters" ### string, not number "\"direct_chunk_read_filters\"" */
hid_t H5Dcreate1(hid_t loc_id, const char *name, hid_t type_id, hid_t space_id, hid_t dcpl_id);
hid_t H5Dopen1(hid_t loc_id, const char *name);
herr_t H5Dextend(hid_t dset_id, const hsize_t size[]);
/* ++ END   /usr/include/hdf5/serial/H5Dpublic.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5Epublic.h */
enum { H5Epublic_H = 1 };
/* +++ BEGIN /usr/include/stdio.h */
]] require 'ffi.req' 'c.stdio' ffi.cdef[[
/* +++ END   /usr/include/stdio.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5public.h */
/* +++ END   /usr/include/hdf5/serial/H5public.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5Ipublic.h */
/* +++ END   /usr/include/hdf5/serial/H5Ipublic.h */
enum { H5E_DEFAULT = 0 };
typedef enum H5E_type_t { H5E_MAJOR, H5E_MINOR } H5E_type_t;
typedef struct H5E_error2_t {
	hid_t cls_id;
	hid_t maj_num;
	hid_t min_num;
	unsigned line;
	const char *func_name;
	const char *file_name;
	const char *desc;
} H5E_error2_t;
/* #define H5OPEN H5open(), ### string, not number "H5open()," */
/* #define H5E_ERR_CLS (H5OPEN H5E_ERR_CLS_g) ### string, not number "(H5OPEN H5E_ERR_CLS_g)" */
extern hid_t H5E_ERR_CLS_g;
/* +++ BEGIN /usr/include/hdf5/serial/H5Epubgen.h */
enum { H5Epubgen_H = 1 };
/* #define H5E_FUNC             (H5OPEN H5E_FUNC_g) ### string, not number "(H5OPEN H5E_FUNC_g)" */
/* #define H5E_FILE             (H5OPEN H5E_FILE_g) ### string, not number "(H5OPEN H5E_FILE_g)" */
/* #define H5E_SOHM             (H5OPEN H5E_SOHM_g) ### string, not number "(H5OPEN H5E_SOHM_g)" */
/* #define H5E_SYM              (H5OPEN H5E_SYM_g) ### string, not number "(H5OPEN H5E_SYM_g)" */
/* #define H5E_PLUGIN           (H5OPEN H5E_PLUGIN_g) ### string, not number "(H5OPEN H5E_PLUGIN_g)" */
/* #define H5E_VFL              (H5OPEN H5E_VFL_g) ### string, not number "(H5OPEN H5E_VFL_g)" */
/* #define H5E_INTERNAL         (H5OPEN H5E_INTERNAL_g) ### string, not number "(H5OPEN H5E_INTERNAL_g)" */
/* #define H5E_BTREE            (H5OPEN H5E_BTREE_g) ### string, not number "(H5OPEN H5E_BTREE_g)" */
/* #define H5E_REFERENCE        (H5OPEN H5E_REFERENCE_g) ### string, not number "(H5OPEN H5E_REFERENCE_g)" */
/* #define H5E_DATASPACE        (H5OPEN H5E_DATASPACE_g) ### string, not number "(H5OPEN H5E_DATASPACE_g)" */
/* #define H5E_RESOURCE         (H5OPEN H5E_RESOURCE_g) ### string, not number "(H5OPEN H5E_RESOURCE_g)" */
/* #define H5E_RS               (H5OPEN H5E_RS_g) ### string, not number "(H5OPEN H5E_RS_g)" */
/* #define H5E_FARRAY           (H5OPEN H5E_FARRAY_g) ### string, not number "(H5OPEN H5E_FARRAY_g)" */
/* #define H5E_HEAP             (H5OPEN H5E_HEAP_g) ### string, not number "(H5OPEN H5E_HEAP_g)" */
/* #define H5E_ATTR             (H5OPEN H5E_ATTR_g) ### string, not number "(H5OPEN H5E_ATTR_g)" */
/* #define H5E_IO               (H5OPEN H5E_IO_g) ### string, not number "(H5OPEN H5E_IO_g)" */
/* #define H5E_EFL              (H5OPEN H5E_EFL_g) ### string, not number "(H5OPEN H5E_EFL_g)" */
/* #define H5E_TST              (H5OPEN H5E_TST_g) ### string, not number "(H5OPEN H5E_TST_g)" */
/* #define H5E_PAGEBUF          (H5OPEN H5E_PAGEBUF_g) ### string, not number "(H5OPEN H5E_PAGEBUF_g)" */
/* #define H5E_FSPACE           (H5OPEN H5E_FSPACE_g) ### string, not number "(H5OPEN H5E_FSPACE_g)" */
/* #define H5E_DATASET          (H5OPEN H5E_DATASET_g) ### string, not number "(H5OPEN H5E_DATASET_g)" */
/* #define H5E_STORAGE          (H5OPEN H5E_STORAGE_g) ### string, not number "(H5OPEN H5E_STORAGE_g)" */
/* #define H5E_LINK             (H5OPEN H5E_LINK_g) ### string, not number "(H5OPEN H5E_LINK_g)" */
/* #define H5E_PLIST            (H5OPEN H5E_PLIST_g) ### string, not number "(H5OPEN H5E_PLIST_g)" */
/* #define H5E_DATATYPE         (H5OPEN H5E_DATATYPE_g) ### string, not number "(H5OPEN H5E_DATATYPE_g)" */
/* #define H5E_OHDR             (H5OPEN H5E_OHDR_g) ### string, not number "(H5OPEN H5E_OHDR_g)" */
/* #define H5E_ATOM             (H5OPEN H5E_ATOM_g) ### string, not number "(H5OPEN H5E_ATOM_g)" */
/* #define H5E_NONE_MAJOR       (H5OPEN H5E_NONE_MAJOR_g) ### string, not number "(H5OPEN H5E_NONE_MAJOR_g)" */
/* #define H5E_SLIST            (H5OPEN H5E_SLIST_g) ### string, not number "(H5OPEN H5E_SLIST_g)" */
/* #define H5E_ARGS             (H5OPEN H5E_ARGS_g) ### string, not number "(H5OPEN H5E_ARGS_g)" */
/* #define H5E_CONTEXT          (H5OPEN H5E_CONTEXT_g) ### string, not number "(H5OPEN H5E_CONTEXT_g)" */
/* #define H5E_EARRAY           (H5OPEN H5E_EARRAY_g) ### string, not number "(H5OPEN H5E_EARRAY_g)" */
/* #define H5E_PLINE            (H5OPEN H5E_PLINE_g) ### string, not number "(H5OPEN H5E_PLINE_g)" */
/* #define H5E_ERROR            (H5OPEN H5E_ERROR_g) ### string, not number "(H5OPEN H5E_ERROR_g)" */
/* #define H5E_CACHE            (H5OPEN H5E_CACHE_g) ### string, not number "(H5OPEN H5E_CACHE_g)" */
extern hid_t H5E_FUNC_g;
extern hid_t H5E_FILE_g;
extern hid_t H5E_SOHM_g;
extern hid_t H5E_SYM_g;
extern hid_t H5E_PLUGIN_g;
extern hid_t H5E_VFL_g;
extern hid_t H5E_INTERNAL_g;
extern hid_t H5E_BTREE_g;
extern hid_t H5E_REFERENCE_g;
extern hid_t H5E_DATASPACE_g;
extern hid_t H5E_RESOURCE_g;
extern hid_t H5E_RS_g;
extern hid_t H5E_FARRAY_g;
extern hid_t H5E_HEAP_g;
extern hid_t H5E_ATTR_g;
extern hid_t H5E_IO_g;
extern hid_t H5E_EFL_g;
extern hid_t H5E_TST_g;
extern hid_t H5E_PAGEBUF_g;
extern hid_t H5E_FSPACE_g;
extern hid_t H5E_DATASET_g;
extern hid_t H5E_STORAGE_g;
extern hid_t H5E_LINK_g;
extern hid_t H5E_PLIST_g;
extern hid_t H5E_DATATYPE_g;
extern hid_t H5E_OHDR_g;
extern hid_t H5E_ATOM_g;
extern hid_t H5E_NONE_MAJOR_g;
extern hid_t H5E_SLIST_g;
extern hid_t H5E_ARGS_g;
extern hid_t H5E_CONTEXT_g;
extern hid_t H5E_EARRAY_g;
extern hid_t H5E_PLINE_g;
extern hid_t H5E_ERROR_g;
extern hid_t H5E_CACHE_g;
/* #define H5E_SEEKERROR        (H5OPEN H5E_SEEKERROR_g) ### string, not number "(H5OPEN H5E_SEEKERROR_g)" */
/* #define H5E_READERROR        (H5OPEN H5E_READERROR_g) ### string, not number "(H5OPEN H5E_READERROR_g)" */
/* #define H5E_WRITEERROR       (H5OPEN H5E_WRITEERROR_g) ### string, not number "(H5OPEN H5E_WRITEERROR_g)" */
/* #define H5E_CLOSEERROR       (H5OPEN H5E_CLOSEERROR_g) ### string, not number "(H5OPEN H5E_CLOSEERROR_g)" */
/* #define H5E_OVERFLOW         (H5OPEN H5E_OVERFLOW_g) ### string, not number "(H5OPEN H5E_OVERFLOW_g)" */
/* #define H5E_FCNTL            (H5OPEN H5E_FCNTL_g) ### string, not number "(H5OPEN H5E_FCNTL_g)" */
extern hid_t H5E_SEEKERROR_g;
extern hid_t H5E_READERROR_g;
extern hid_t H5E_WRITEERROR_g;
extern hid_t H5E_CLOSEERROR_g;
extern hid_t H5E_OVERFLOW_g;
extern hid_t H5E_FCNTL_g;
/* #define H5E_NOSPACE          (H5OPEN H5E_NOSPACE_g) ### string, not number "(H5OPEN H5E_NOSPACE_g)" */
/* #define H5E_CANTALLOC        (H5OPEN H5E_CANTALLOC_g) ### string, not number "(H5OPEN H5E_CANTALLOC_g)" */
/* #define H5E_CANTCOPY         (H5OPEN H5E_CANTCOPY_g) ### string, not number "(H5OPEN H5E_CANTCOPY_g)" */
/* #define H5E_CANTFREE         (H5OPEN H5E_CANTFREE_g) ### string, not number "(H5OPEN H5E_CANTFREE_g)" */
/* #define H5E_ALREADYEXISTS    (H5OPEN H5E_ALREADYEXISTS_g) ### string, not number "(H5OPEN H5E_ALREADYEXISTS_g)" */
/* #define H5E_CANTLOCK         (H5OPEN H5E_CANTLOCK_g) ### string, not number "(H5OPEN H5E_CANTLOCK_g)" */
/* #define H5E_CANTUNLOCK       (H5OPEN H5E_CANTUNLOCK_g) ### string, not number "(H5OPEN H5E_CANTUNLOCK_g)" */
/* #define H5E_CANTGC           (H5OPEN H5E_CANTGC_g) ### string, not number "(H5OPEN H5E_CANTGC_g)" */
/* #define H5E_CANTGETSIZE      (H5OPEN H5E_CANTGETSIZE_g) ### string, not number "(H5OPEN H5E_CANTGETSIZE_g)" */
/* #define H5E_OBJOPEN          (H5OPEN H5E_OBJOPEN_g) ### string, not number "(H5OPEN H5E_OBJOPEN_g)" */
extern hid_t H5E_NOSPACE_g;
extern hid_t H5E_CANTALLOC_g;
extern hid_t H5E_CANTCOPY_g;
extern hid_t H5E_CANTFREE_g;
extern hid_t H5E_ALREADYEXISTS_g;
extern hid_t H5E_CANTLOCK_g;
extern hid_t H5E_CANTUNLOCK_g;
extern hid_t H5E_CANTGC_g;
extern hid_t H5E_CANTGETSIZE_g;
extern hid_t H5E_OBJOPEN_g;
/* #define H5E_CANTRESTORE      (H5OPEN H5E_CANTRESTORE_g) ### string, not number "(H5OPEN H5E_CANTRESTORE_g)" */
/* #define H5E_CANTCOMPUTE      (H5OPEN H5E_CANTCOMPUTE_g) ### string, not number "(H5OPEN H5E_CANTCOMPUTE_g)" */
/* #define H5E_CANTEXTEND       (H5OPEN H5E_CANTEXTEND_g) ### string, not number "(H5OPEN H5E_CANTEXTEND_g)" */
/* #define H5E_CANTATTACH       (H5OPEN H5E_CANTATTACH_g) ### string, not number "(H5OPEN H5E_CANTATTACH_g)" */
/* #define H5E_CANTUPDATE       (H5OPEN H5E_CANTUPDATE_g) ### string, not number "(H5OPEN H5E_CANTUPDATE_g)" */
/* #define H5E_CANTOPERATE      (H5OPEN H5E_CANTOPERATE_g) ### string, not number "(H5OPEN H5E_CANTOPERATE_g)" */
extern hid_t H5E_CANTRESTORE_g;
extern hid_t H5E_CANTCOMPUTE_g;
extern hid_t H5E_CANTEXTEND_g;
extern hid_t H5E_CANTATTACH_g;
extern hid_t H5E_CANTUPDATE_g;
extern hid_t H5E_CANTOPERATE_g;
/* #define H5E_CANTINIT         (H5OPEN H5E_CANTINIT_g) ### string, not number "(H5OPEN H5E_CANTINIT_g)" */
/* #define H5E_ALREADYINIT      (H5OPEN H5E_ALREADYINIT_g) ### string, not number "(H5OPEN H5E_ALREADYINIT_g)" */
/* #define H5E_CANTRELEASE      (H5OPEN H5E_CANTRELEASE_g) ### string, not number "(H5OPEN H5E_CANTRELEASE_g)" */
extern hid_t H5E_CANTINIT_g;
extern hid_t H5E_ALREADYINIT_g;
extern hid_t H5E_CANTRELEASE_g;
/* #define H5E_CANTGET          (H5OPEN H5E_CANTGET_g) ### string, not number "(H5OPEN H5E_CANTGET_g)" */
/* #define H5E_CANTSET          (H5OPEN H5E_CANTSET_g) ### string, not number "(H5OPEN H5E_CANTSET_g)" */
/* #define H5E_DUPCLASS         (H5OPEN H5E_DUPCLASS_g) ### string, not number "(H5OPEN H5E_DUPCLASS_g)" */
/* #define H5E_SETDISALLOWED    (H5OPEN H5E_SETDISALLOWED_g) ### string, not number "(H5OPEN H5E_SETDISALLOWED_g)" */
extern hid_t H5E_CANTGET_g;
extern hid_t H5E_CANTSET_g;
extern hid_t H5E_DUPCLASS_g;
extern hid_t H5E_SETDISALLOWED_g;
/* #define H5E_CANTMERGE        (H5OPEN H5E_CANTMERGE_g) ### string, not number "(H5OPEN H5E_CANTMERGE_g)" */
/* #define H5E_CANTREVIVE       (H5OPEN H5E_CANTREVIVE_g) ### string, not number "(H5OPEN H5E_CANTREVIVE_g)" */
/* #define H5E_CANTSHRINK       (H5OPEN H5E_CANTSHRINK_g) ### string, not number "(H5OPEN H5E_CANTSHRINK_g)" */
extern hid_t H5E_CANTMERGE_g;
extern hid_t H5E_CANTREVIVE_g;
extern hid_t H5E_CANTSHRINK_g;
/* #define H5E_LINKCOUNT        (H5OPEN H5E_LINKCOUNT_g) ### string, not number "(H5OPEN H5E_LINKCOUNT_g)" */
/* #define H5E_VERSION          (H5OPEN H5E_VERSION_g) ### string, not number "(H5OPEN H5E_VERSION_g)" */
/* #define H5E_ALIGNMENT        (H5OPEN H5E_ALIGNMENT_g) ### string, not number "(H5OPEN H5E_ALIGNMENT_g)" */
/* #define H5E_BADMESG          (H5OPEN H5E_BADMESG_g) ### string, not number "(H5OPEN H5E_BADMESG_g)" */
/* #define H5E_CANTDELETE       (H5OPEN H5E_CANTDELETE_g) ### string, not number "(H5OPEN H5E_CANTDELETE_g)" */
/* #define H5E_BADITER          (H5OPEN H5E_BADITER_g) ### string, not number "(H5OPEN H5E_BADITER_g)" */
/* #define H5E_CANTPACK         (H5OPEN H5E_CANTPACK_g) ### string, not number "(H5OPEN H5E_CANTPACK_g)" */
/* #define H5E_CANTRESET        (H5OPEN H5E_CANTRESET_g) ### string, not number "(H5OPEN H5E_CANTRESET_g)" */
/* #define H5E_CANTRENAME       (H5OPEN H5E_CANTRENAME_g) ### string, not number "(H5OPEN H5E_CANTRENAME_g)" */
extern hid_t H5E_LINKCOUNT_g;
extern hid_t H5E_VERSION_g;
extern hid_t H5E_ALIGNMENT_g;
extern hid_t H5E_BADMESG_g;
extern hid_t H5E_CANTDELETE_g;
extern hid_t H5E_BADITER_g;
extern hid_t H5E_CANTPACK_g;
extern hid_t H5E_CANTRESET_g;
extern hid_t H5E_CANTRENAME_g;
/* #define H5E_SYSERRSTR        (H5OPEN H5E_SYSERRSTR_g) ### string, not number "(H5OPEN H5E_SYSERRSTR_g)" */
extern hid_t H5E_SYSERRSTR_g;
/* #define H5E_NOFILTER         (H5OPEN H5E_NOFILTER_g) ### string, not number "(H5OPEN H5E_NOFILTER_g)" */
/* #define H5E_CALLBACK         (H5OPEN H5E_CALLBACK_g) ### string, not number "(H5OPEN H5E_CALLBACK_g)" */
/* #define H5E_CANAPPLY         (H5OPEN H5E_CANAPPLY_g) ### string, not number "(H5OPEN H5E_CANAPPLY_g)" */
/* #define H5E_SETLOCAL         (H5OPEN H5E_SETLOCAL_g) ### string, not number "(H5OPEN H5E_SETLOCAL_g)" */
/* #define H5E_NOENCODER        (H5OPEN H5E_NOENCODER_g) ### string, not number "(H5OPEN H5E_NOENCODER_g)" */
/* #define H5E_CANTFILTER       (H5OPEN H5E_CANTFILTER_g) ### string, not number "(H5OPEN H5E_CANTFILTER_g)" */
extern hid_t H5E_NOFILTER_g;
extern hid_t H5E_CALLBACK_g;
extern hid_t H5E_CANAPPLY_g;
extern hid_t H5E_SETLOCAL_g;
extern hid_t H5E_NOENCODER_g;
extern hid_t H5E_CANTFILTER_g;
/* #define H5E_CANTOPENOBJ      (H5OPEN H5E_CANTOPENOBJ_g) ### string, not number "(H5OPEN H5E_CANTOPENOBJ_g)" */
/* #define H5E_CANTCLOSEOBJ     (H5OPEN H5E_CANTCLOSEOBJ_g) ### string, not number "(H5OPEN H5E_CANTCLOSEOBJ_g)" */
/* #define H5E_COMPLEN          (H5OPEN H5E_COMPLEN_g) ### string, not number "(H5OPEN H5E_COMPLEN_g)" */
/* #define H5E_PATH             (H5OPEN H5E_PATH_g) ### string, not number "(H5OPEN H5E_PATH_g)" */
extern hid_t H5E_CANTOPENOBJ_g;
extern hid_t H5E_CANTCLOSEOBJ_g;
extern hid_t H5E_COMPLEN_g;
extern hid_t H5E_PATH_g;
/* #define H5E_NONE_MINOR       (H5OPEN H5E_NONE_MINOR_g) ### string, not number "(H5OPEN H5E_NONE_MINOR_g)" */
extern hid_t H5E_NONE_MINOR_g;
/* #define H5E_OPENERROR        (H5OPEN H5E_OPENERROR_g) ### string, not number "(H5OPEN H5E_OPENERROR_g)" */
extern hid_t H5E_OPENERROR_g;
/* #define H5E_FILEEXISTS       (H5OPEN H5E_FILEEXISTS_g) ### string, not number "(H5OPEN H5E_FILEEXISTS_g)" */
/* #define H5E_FILEOPEN         (H5OPEN H5E_FILEOPEN_g) ### string, not number "(H5OPEN H5E_FILEOPEN_g)" */
/* #define H5E_CANTCREATE       (H5OPEN H5E_CANTCREATE_g) ### string, not number "(H5OPEN H5E_CANTCREATE_g)" */
/* #define H5E_CANTOPENFILE     (H5OPEN H5E_CANTOPENFILE_g) ### string, not number "(H5OPEN H5E_CANTOPENFILE_g)" */
/* #define H5E_CANTCLOSEFILE    (H5OPEN H5E_CANTCLOSEFILE_g) ### string, not number "(H5OPEN H5E_CANTCLOSEFILE_g)" */
/* #define H5E_NOTHDF5          (H5OPEN H5E_NOTHDF5_g) ### string, not number "(H5OPEN H5E_NOTHDF5_g)" */
/* #define H5E_BADFILE          (H5OPEN H5E_BADFILE_g) ### string, not number "(H5OPEN H5E_BADFILE_g)" */
/* #define H5E_TRUNCATED        (H5OPEN H5E_TRUNCATED_g) ### string, not number "(H5OPEN H5E_TRUNCATED_g)" */
/* #define H5E_MOUNT            (H5OPEN H5E_MOUNT_g) ### string, not number "(H5OPEN H5E_MOUNT_g)" */
/* #define H5E_CANTLOCKFILE     (H5OPEN H5E_CANTLOCKFILE_g) ### string, not number "(H5OPEN H5E_CANTLOCKFILE_g)" */
/* #define H5E_CANTUNLOCKFILE   (H5OPEN H5E_CANTUNLOCKFILE_g) ### string, not number "(H5OPEN H5E_CANTUNLOCKFILE_g)" */
extern hid_t H5E_FILEEXISTS_g;
extern hid_t H5E_FILEOPEN_g;
extern hid_t H5E_CANTCREATE_g;
extern hid_t H5E_CANTOPENFILE_g;
extern hid_t H5E_CANTCLOSEFILE_g;
extern hid_t H5E_NOTHDF5_g;
extern hid_t H5E_BADFILE_g;
extern hid_t H5E_TRUNCATED_g;
extern hid_t H5E_MOUNT_g;
extern hid_t H5E_CANTLOCKFILE_g;
extern hid_t H5E_CANTUNLOCKFILE_g;
/* #define H5E_BADATOM          (H5OPEN H5E_BADATOM_g) ### string, not number "(H5OPEN H5E_BADATOM_g)" */
/* #define H5E_BADGROUP         (H5OPEN H5E_BADGROUP_g) ### string, not number "(H5OPEN H5E_BADGROUP_g)" */
/* #define H5E_CANTREGISTER     (H5OPEN H5E_CANTREGISTER_g) ### string, not number "(H5OPEN H5E_CANTREGISTER_g)" */
/* #define H5E_CANTINC          (H5OPEN H5E_CANTINC_g) ### string, not number "(H5OPEN H5E_CANTINC_g)" */
/* #define H5E_CANTDEC          (H5OPEN H5E_CANTDEC_g) ### string, not number "(H5OPEN H5E_CANTDEC_g)" */
/* #define H5E_NOIDS            (H5OPEN H5E_NOIDS_g) ### string, not number "(H5OPEN H5E_NOIDS_g)" */
extern hid_t H5E_BADATOM_g;
extern hid_t H5E_BADGROUP_g;
extern hid_t H5E_CANTREGISTER_g;
extern hid_t H5E_CANTINC_g;
extern hid_t H5E_CANTDEC_g;
extern hid_t H5E_NOIDS_g;
/* #define H5E_CANTFLUSH        (H5OPEN H5E_CANTFLUSH_g) ### string, not number "(H5OPEN H5E_CANTFLUSH_g)" */
/* #define H5E_CANTUNSERIALIZE  (H5OPEN H5E_CANTUNSERIALIZE_g) ### string, not number "(H5OPEN H5E_CANTUNSERIALIZE_g)" */
/* #define H5E_CANTSERIALIZE    (H5OPEN H5E_CANTSERIALIZE_g) ### string, not number "(H5OPEN H5E_CANTSERIALIZE_g)" */
/* #define H5E_CANTTAG          (H5OPEN H5E_CANTTAG_g) ### string, not number "(H5OPEN H5E_CANTTAG_g)" */
/* #define H5E_CANTLOAD         (H5OPEN H5E_CANTLOAD_g) ### string, not number "(H5OPEN H5E_CANTLOAD_g)" */
/* #define H5E_PROTECT          (H5OPEN H5E_PROTECT_g) ### string, not number "(H5OPEN H5E_PROTECT_g)" */
/* #define H5E_NOTCACHED        (H5OPEN H5E_NOTCACHED_g) ### string, not number "(H5OPEN H5E_NOTCACHED_g)" */
/* #define H5E_SYSTEM           (H5OPEN H5E_SYSTEM_g) ### string, not number "(H5OPEN H5E_SYSTEM_g)" */
/* #define H5E_CANTINS          (H5OPEN H5E_CANTINS_g) ### string, not number "(H5OPEN H5E_CANTINS_g)" */
/* #define H5E_CANTPROTECT      (H5OPEN H5E_CANTPROTECT_g) ### string, not number "(H5OPEN H5E_CANTPROTECT_g)" */
/* #define H5E_CANTUNPROTECT    (H5OPEN H5E_CANTUNPROTECT_g) ### string, not number "(H5OPEN H5E_CANTUNPROTECT_g)" */
/* #define H5E_CANTPIN          (H5OPEN H5E_CANTPIN_g) ### string, not number "(H5OPEN H5E_CANTPIN_g)" */
/* #define H5E_CANTUNPIN        (H5OPEN H5E_CANTUNPIN_g) ### string, not number "(H5OPEN H5E_CANTUNPIN_g)" */
/* #define H5E_CANTMARKDIRTY    (H5OPEN H5E_CANTMARKDIRTY_g) ### string, not number "(H5OPEN H5E_CANTMARKDIRTY_g)" */
/* #define H5E_CANTMARKCLEAN    (H5OPEN H5E_CANTMARKCLEAN_g) ### string, not number "(H5OPEN H5E_CANTMARKCLEAN_g)" */
/* #define H5E_CANTMARKUNSERIALIZED (H5OPEN H5E_CANTMARKUNSERIALIZED_g) ### string, not number "(H5OPEN H5E_CANTMARKUNSERIALIZED_g)" */
/* #define H5E_CANTMARKSERIALIZED (H5OPEN H5E_CANTMARKSERIALIZED_g) ### string, not number "(H5OPEN H5E_CANTMARKSERIALIZED_g)" */
/* #define H5E_CANTDIRTY        (H5OPEN H5E_CANTDIRTY_g) ### string, not number "(H5OPEN H5E_CANTDIRTY_g)" */
/* #define H5E_CANTCLEAN        (H5OPEN H5E_CANTCLEAN_g) ### string, not number "(H5OPEN H5E_CANTCLEAN_g)" */
/* #define H5E_CANTEXPUNGE      (H5OPEN H5E_CANTEXPUNGE_g) ### string, not number "(H5OPEN H5E_CANTEXPUNGE_g)" */
/* #define H5E_CANTRESIZE       (H5OPEN H5E_CANTRESIZE_g) ### string, not number "(H5OPEN H5E_CANTRESIZE_g)" */
/* #define H5E_CANTDEPEND       (H5OPEN H5E_CANTDEPEND_g) ### string, not number "(H5OPEN H5E_CANTDEPEND_g)" */
/* #define H5E_CANTUNDEPEND     (H5OPEN H5E_CANTUNDEPEND_g) ### string, not number "(H5OPEN H5E_CANTUNDEPEND_g)" */
/* #define H5E_CANTNOTIFY       (H5OPEN H5E_CANTNOTIFY_g) ### string, not number "(H5OPEN H5E_CANTNOTIFY_g)" */
/* #define H5E_LOGGING          (H5OPEN H5E_LOGGING_g) ### string, not number "(H5OPEN H5E_LOGGING_g)" */
/* #define H5E_LOGFAIL          (H5OPEN H5E_LOGFAIL_g) ### string, not number "(H5OPEN H5E_LOGFAIL_g)" */
/* #define H5E_CANTCORK         (H5OPEN H5E_CANTCORK_g) ### string, not number "(H5OPEN H5E_CANTCORK_g)" */
/* #define H5E_CANTUNCORK       (H5OPEN H5E_CANTUNCORK_g) ### string, not number "(H5OPEN H5E_CANTUNCORK_g)" */
extern hid_t H5E_CANTFLUSH_g;
extern hid_t H5E_CANTUNSERIALIZE_g;
extern hid_t H5E_CANTSERIALIZE_g;
extern hid_t H5E_CANTTAG_g;
extern hid_t H5E_CANTLOAD_g;
extern hid_t H5E_PROTECT_g;
extern hid_t H5E_NOTCACHED_g;
extern hid_t H5E_SYSTEM_g;
extern hid_t H5E_CANTINS_g;
extern hid_t H5E_CANTPROTECT_g;
extern hid_t H5E_CANTUNPROTECT_g;
extern hid_t H5E_CANTPIN_g;
extern hid_t H5E_CANTUNPIN_g;
extern hid_t H5E_CANTMARKDIRTY_g;
extern hid_t H5E_CANTMARKCLEAN_g;
extern hid_t H5E_CANTMARKUNSERIALIZED_g;
extern hid_t H5E_CANTMARKSERIALIZED_g;
extern hid_t H5E_CANTDIRTY_g;
extern hid_t H5E_CANTCLEAN_g;
extern hid_t H5E_CANTEXPUNGE_g;
extern hid_t H5E_CANTRESIZE_g;
extern hid_t H5E_CANTDEPEND_g;
extern hid_t H5E_CANTUNDEPEND_g;
extern hid_t H5E_CANTNOTIFY_g;
extern hid_t H5E_LOGGING_g;
extern hid_t H5E_LOGFAIL_g;
extern hid_t H5E_CANTCORK_g;
extern hid_t H5E_CANTUNCORK_g;
/* #define H5E_TRAVERSE         (H5OPEN H5E_TRAVERSE_g) ### string, not number "(H5OPEN H5E_TRAVERSE_g)" */
/* #define H5E_NLINKS           (H5OPEN H5E_NLINKS_g) ### string, not number "(H5OPEN H5E_NLINKS_g)" */
/* #define H5E_NOTREGISTERED    (H5OPEN H5E_NOTREGISTERED_g) ### string, not number "(H5OPEN H5E_NOTREGISTERED_g)" */
/* #define H5E_CANTMOVE         (H5OPEN H5E_CANTMOVE_g) ### string, not number "(H5OPEN H5E_CANTMOVE_g)" */
/* #define H5E_CANTSORT         (H5OPEN H5E_CANTSORT_g) ### string, not number "(H5OPEN H5E_CANTSORT_g)" */
extern hid_t H5E_TRAVERSE_g;
extern hid_t H5E_NLINKS_g;
extern hid_t H5E_NOTREGISTERED_g;
extern hid_t H5E_CANTMOVE_g;
extern hid_t H5E_CANTSORT_g;
/* #define H5E_MPI              (H5OPEN H5E_MPI_g) ### string, not number "(H5OPEN H5E_MPI_g)" */
/* #define H5E_MPIERRSTR        (H5OPEN H5E_MPIERRSTR_g) ### string, not number "(H5OPEN H5E_MPIERRSTR_g)" */
/* #define H5E_CANTRECV         (H5OPEN H5E_CANTRECV_g) ### string, not number "(H5OPEN H5E_CANTRECV_g)" */
/* #define H5E_CANTGATHER       (H5OPEN H5E_CANTGATHER_g) ### string, not number "(H5OPEN H5E_CANTGATHER_g)" */
/* #define H5E_NO_INDEPENDENT   (H5OPEN H5E_NO_INDEPENDENT_g) ### string, not number "(H5OPEN H5E_NO_INDEPENDENT_g)" */
extern hid_t H5E_MPI_g;
extern hid_t H5E_MPIERRSTR_g;
extern hid_t H5E_CANTRECV_g;
extern hid_t H5E_CANTGATHER_g;
extern hid_t H5E_NO_INDEPENDENT_g;
/* #define H5E_CANTCLIP         (H5OPEN H5E_CANTCLIP_g) ### string, not number "(H5OPEN H5E_CANTCLIP_g)" */
/* #define H5E_CANTCOUNT        (H5OPEN H5E_CANTCOUNT_g) ### string, not number "(H5OPEN H5E_CANTCOUNT_g)" */
/* #define H5E_CANTSELECT       (H5OPEN H5E_CANTSELECT_g) ### string, not number "(H5OPEN H5E_CANTSELECT_g)" */
/* #define H5E_CANTNEXT         (H5OPEN H5E_CANTNEXT_g) ### string, not number "(H5OPEN H5E_CANTNEXT_g)" */
/* #define H5E_BADSELECT        (H5OPEN H5E_BADSELECT_g) ### string, not number "(H5OPEN H5E_BADSELECT_g)" */
/* #define H5E_CANTCOMPARE      (H5OPEN H5E_CANTCOMPARE_g) ### string, not number "(H5OPEN H5E_CANTCOMPARE_g)" */
/* #define H5E_INCONSISTENTSTATE (H5OPEN H5E_INCONSISTENTSTATE_g) ### string, not number "(H5OPEN H5E_INCONSISTENTSTATE_g)" */
/* #define H5E_CANTAPPEND       (H5OPEN H5E_CANTAPPEND_g) ### string, not number "(H5OPEN H5E_CANTAPPEND_g)" */
extern hid_t H5E_CANTCLIP_g;
extern hid_t H5E_CANTCOUNT_g;
extern hid_t H5E_CANTSELECT_g;
extern hid_t H5E_CANTNEXT_g;
extern hid_t H5E_BADSELECT_g;
extern hid_t H5E_CANTCOMPARE_g;
extern hid_t H5E_INCONSISTENTSTATE_g;
extern hid_t H5E_CANTAPPEND_g;
/* #define H5E_UNINITIALIZED    (H5OPEN H5E_UNINITIALIZED_g) ### string, not number "(H5OPEN H5E_UNINITIALIZED_g)" */
/* #define H5E_UNSUPPORTED      (H5OPEN H5E_UNSUPPORTED_g) ### string, not number "(H5OPEN H5E_UNSUPPORTED_g)" */
/* #define H5E_BADTYPE          (H5OPEN H5E_BADTYPE_g) ### string, not number "(H5OPEN H5E_BADTYPE_g)" */
/* #define H5E_BADRANGE         (H5OPEN H5E_BADRANGE_g) ### string, not number "(H5OPEN H5E_BADRANGE_g)" */
/* #define H5E_BADVALUE         (H5OPEN H5E_BADVALUE_g) ### string, not number "(H5OPEN H5E_BADVALUE_g)" */
extern hid_t H5E_UNINITIALIZED_g;
extern hid_t H5E_UNSUPPORTED_g;
extern hid_t H5E_BADTYPE_g;
extern hid_t H5E_BADRANGE_g;
extern hid_t H5E_BADVALUE_g;
/* #define H5E_NOTFOUND         (H5OPEN H5E_NOTFOUND_g) ### string, not number "(H5OPEN H5E_NOTFOUND_g)" */
/* #define H5E_EXISTS           (H5OPEN H5E_EXISTS_g) ### string, not number "(H5OPEN H5E_EXISTS_g)" */
/* #define H5E_CANTENCODE       (H5OPEN H5E_CANTENCODE_g) ### string, not number "(H5OPEN H5E_CANTENCODE_g)" */
/* #define H5E_CANTDECODE       (H5OPEN H5E_CANTDECODE_g) ### string, not number "(H5OPEN H5E_CANTDECODE_g)" */
/* #define H5E_CANTSPLIT        (H5OPEN H5E_CANTSPLIT_g) ### string, not number "(H5OPEN H5E_CANTSPLIT_g)" */
/* #define H5E_CANTREDISTRIBUTE (H5OPEN H5E_CANTREDISTRIBUTE_g) ### string, not number "(H5OPEN H5E_CANTREDISTRIBUTE_g)" */
/* #define H5E_CANTSWAP         (H5OPEN H5E_CANTSWAP_g) ### string, not number "(H5OPEN H5E_CANTSWAP_g)" */
/* #define H5E_CANTINSERT       (H5OPEN H5E_CANTINSERT_g) ### string, not number "(H5OPEN H5E_CANTINSERT_g)" */
/* #define H5E_CANTLIST         (H5OPEN H5E_CANTLIST_g) ### string, not number "(H5OPEN H5E_CANTLIST_g)" */
/* #define H5E_CANTMODIFY       (H5OPEN H5E_CANTMODIFY_g) ### string, not number "(H5OPEN H5E_CANTMODIFY_g)" */
/* #define H5E_CANTREMOVE       (H5OPEN H5E_CANTREMOVE_g) ### string, not number "(H5OPEN H5E_CANTREMOVE_g)" */
extern hid_t H5E_NOTFOUND_g;
extern hid_t H5E_EXISTS_g;
extern hid_t H5E_CANTENCODE_g;
extern hid_t H5E_CANTDECODE_g;
extern hid_t H5E_CANTSPLIT_g;
extern hid_t H5E_CANTREDISTRIBUTE_g;
extern hid_t H5E_CANTSWAP_g;
extern hid_t H5E_CANTINSERT_g;
extern hid_t H5E_CANTLIST_g;
extern hid_t H5E_CANTMODIFY_g;
extern hid_t H5E_CANTREMOVE_g;
/* #define H5E_CANTCONVERT      (H5OPEN H5E_CANTCONVERT_g) ### string, not number "(H5OPEN H5E_CANTCONVERT_g)" */
/* #define H5E_BADSIZE          (H5OPEN H5E_BADSIZE_g) ### string, not number "(H5OPEN H5E_BADSIZE_g)" */
extern hid_t H5E_CANTCONVERT_g;
extern hid_t H5E_BADSIZE_g;
/* +++ END   /usr/include/hdf5/serial/H5Epubgen.h */
/* #define H5E_BEGIN_TRY                                                                                             {                                                                                                                 unsigned H5E_saved_is_v2;                                                                                     union {                                                                                                           H5E_auto1_t efunc1;                                                                                           H5E_auto2_t efunc2;                                                                                       } H5E_saved;                                                                                                  void *H5E_saved_edata;                                                                                                                                                                                                      (void)H5Eauto_is_v2(H5E_DEFAULT, &H5E_saved_is_v2);                                                           if (H5E_saved_is_v2) {                                                                                            (void)H5Eget_auto2(H5E_DEFAULT, &H5E_saved.efunc2, &H5E_saved_edata);                                         (void)H5Eset_auto2(H5E_DEFAULT, NULL, NULL);                                                              }                                                                                                             else {                                                                                                            (void)H5Eget_auto1(&H5E_saved.efunc1, &H5E_saved_edata);                                                      (void)H5Eset_auto1(NULL, NULL);                                                                           } ### string, not number "{                                                                                                                 unsigned H5E_saved_is_v2;                                                                                     union {                                                                                                           H5E_auto1_t efunc1;                                                                                           H5E_auto2_t efunc2;                                                                                       } H5E_saved;                                                                                                  void *H5E_saved_edata;                                                                                                                                                                                                      (void)H5Eauto_is_v2(H5E_DEFAULT, &H5E_saved_is_v2);                                                           if (H5E_saved_is_v2) {                                                                                            (void)H5Eget_auto2(H5E_DEFAULT, &H5E_saved.efunc2, &H5E_saved_edata);                                         (void)H5Eset_auto2(H5E_DEFAULT, NULL, NULL);                                                              }                                                                                                             else {                                                                                                            (void)H5Eget_auto1(&H5E_saved.efunc1, &H5E_saved_edata);                                                      (void)H5Eset_auto1(NULL, NULL);                                                                           }" */
/* #define H5E_END_TRY                                                                                               if (H5E_saved_is_v2)                                                                                              (void)H5Eset_auto2(H5E_DEFAULT, H5E_saved.efunc2, H5E_saved_edata);                                       else                                                                                                              (void)H5Eset_auto1(H5E_saved.efunc1, H5E_saved_edata);                                                    } ### string, not number "if (H5E_saved_is_v2)                                                                                              (void)H5Eset_auto2(H5E_DEFAULT, H5E_saved.efunc2, H5E_saved_edata);                                       else                                                                                                              (void)H5Eset_auto1(H5E_saved.efunc1, H5E_saved_edata);                                                    }" */
typedef enum H5E_direction_t { H5E_WALK_UPWARD = 0, H5E_WALK_DOWNWARD = 1 } H5E_direction_t;
typedef herr_t (*H5E_walk2_t)(unsigned n, const H5E_error2_t *err_desc, void *client_data);
typedef herr_t (*H5E_auto2_t)(hid_t estack, void *client_data);
hid_t H5Eregister_class(const char *cls_name, const char *lib_name, const char *version);
herr_t H5Eunregister_class(hid_t class_id);
herr_t H5Eclose_msg(hid_t err_id);
hid_t H5Ecreate_msg(hid_t cls, H5E_type_t msg_type, const char *msg);
hid_t H5Ecreate_stack(void);
hid_t H5Eget_current_stack(void);
herr_t H5Eclose_stack(hid_t stack_id);
ssize_t H5Eget_class_name(hid_t class_id, char *name, size_t size);
herr_t H5Eset_current_stack(hid_t err_stack_id);
herr_t H5Epush2(hid_t err_stack, const char *file, const char *func, unsigned line, hid_t cls_id, hid_t maj_id, hid_t min_id, const char *msg, ...);
herr_t H5Epop(hid_t err_stack, size_t count);
herr_t H5Eprint2(hid_t err_stack, FILE *stream);
herr_t H5Ewalk2(hid_t err_stack, H5E_direction_t direction, H5E_walk2_t func, void *client_data);
herr_t H5Eget_auto2(hid_t estack_id, H5E_auto2_t *func, void **client_data);
herr_t H5Eset_auto2(hid_t estack_id, H5E_auto2_t func, void *client_data);
herr_t H5Eclear2(hid_t err_stack);
herr_t H5Eauto_is_v2(hid_t err_stack, unsigned *is_stack);
ssize_t H5Eget_msg(hid_t msg_id, H5E_type_t *type, char *msg, size_t size);
ssize_t H5Eget_num(hid_t error_stack_id);
typedef hid_t H5E_major_t;
typedef hid_t H5E_minor_t;
typedef struct H5E_error1_t {
	H5E_major_t maj_num;
	H5E_minor_t min_num;
	const char *func_name;
	const char *file_name;
	unsigned line;
	const char *desc;
} H5E_error1_t;
typedef herr_t (*H5E_walk1_t)(int n, H5E_error1_t *err_desc, void *client_data);
typedef herr_t (*H5E_auto1_t)(void *client_data);
herr_t H5Eclear1(void);
herr_t H5Eget_auto1(H5E_auto1_t *func, void **client_data);
herr_t H5Epush1(const char *file, const char *func, unsigned line, H5E_major_t maj, H5E_minor_t min, const char *str);
herr_t H5Eprint1(FILE *stream);
herr_t H5Eset_auto1(H5E_auto1_t func, void *client_data);
herr_t H5Ewalk1(H5E_direction_t direction, H5E_walk1_t func, void *client_data);
char *H5Eget_major(H5E_major_t maj);
char *H5Eget_minor(H5E_minor_t min);
/* ++ END   /usr/include/hdf5/serial/H5Epublic.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5Fpublic.h */
enum { H5Fpublic_H = 1 };
/* +++ BEGIN /usr/include/hdf5/serial/H5public.h */
/* +++ END   /usr/include/hdf5/serial/H5public.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5ACpublic.h */
/* +++ END   /usr/include/hdf5/serial/H5ACpublic.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5Ipublic.h */
/* +++ END   /usr/include/hdf5/serial/H5Ipublic.h */
/* #define H5CHECK H5check(), ### string, not number "H5check()," */
/* #define H5OPEN H5open(), ### string, not number "H5open()," */
/* #define H5F_ACC_RDONLY (H5CHECK H5OPEN 0x0000u) ### string, not number "(H5CHECK H5OPEN 0x0000u)" */
/* #define H5F_ACC_RDWR   (H5CHECK H5OPEN 0x0001u) ### string, not number "(H5CHECK H5OPEN 0x0001u)" */
/* #define H5F_ACC_TRUNC  (H5CHECK H5OPEN 0x0002u) ### string, not number "(H5CHECK H5OPEN 0x0002u)" */
/* #define H5F_ACC_EXCL   (H5CHECK H5OPEN 0x0004u) ### string, not number "(H5CHECK H5OPEN 0x0004u)" */
/* #define H5F_ACC_CREAT (H5CHECK H5OPEN 0x0010u) ### string, not number "(H5CHECK H5OPEN 0x0010u)" */
/* #define H5F_ACC_SWMR_WRITE                                                                                        (H5CHECK 0x0020u) ### string, not number "(H5CHECK 0x0020u)" */
/* #define H5F_ACC_SWMR_READ                                                                                         (H5CHECK 0x0040u) ### string, not number "(H5CHECK 0x0040u)" */
/* #define H5F_ACC_DEFAULT (H5CHECK H5OPEN 0xffffu) ### string, not number "(H5CHECK H5OPEN 0xffffu)" */
/* #define H5F_OBJ_FILE     (0x0001u) ### string, not number "(0x0001u)" */
/* #define H5F_OBJ_DATASET  (0x0002u) ### string, not number "(0x0002u)" */
/* #define H5F_OBJ_GROUP    (0x0004u) ### string, not number "(0x0004u)" */
/* #define H5F_OBJ_DATATYPE (0x0008u) ### string, not number "(0x0008u)" */
/* #define H5F_OBJ_ATTR     (0x0010u) ### string, not number "(0x0010u)" */
/* #define H5F_OBJ_ALL      (H5F_OBJ_FILE | H5F_OBJ_DATASET | H5F_OBJ_GROUP | H5F_OBJ_DATATYPE | H5F_OBJ_ATTR) ### string, not number "(H5F_OBJ_FILE | H5F_OBJ_DATASET | H5F_OBJ_GROUP | H5F_OBJ_DATATYPE | H5F_OBJ_ATTR)" */
/* #define H5F_OBJ_LOCAL                                                                                             (0x0020u) ### string, not number "(0x0020u)" */
enum { H5F_FAMILY_DEFAULT = 0 };
typedef enum H5F_scope_t { H5F_SCOPE_LOCAL = 0, H5F_SCOPE_GLOBAL = 1 } H5F_scope_t;
/* #define H5F_UNLIMITED HSIZE_UNDEF ### string, not number "HSIZE_UNDEF" */
typedef enum H5F_close_degree_t { H5F_CLOSE_DEFAULT = 0, H5F_CLOSE_WEAK = 1, H5F_CLOSE_SEMI = 2, H5F_CLOSE_STRONG = 3 } H5F_close_degree_t;
typedef struct H5F_info2_t {
	struct { unsigned version;
	hsize_t super_size;
	hsize_t super_ext_size;
} super;
struct {
	unsigned version;
	hsize_t meta_size;
	hsize_t tot_space;
} free;
struct {
	unsigned version;
	hsize_t hdr_size;
	H5_ih_info_t msgs_info;
} sohm;
} H5F_info2_t;
typedef enum H5F_mem_t { H5FD_MEM_NOLIST = -1, H5FD_MEM_DEFAULT = 0, H5FD_MEM_SUPER = 1, H5FD_MEM_BTREE = 2, H5FD_MEM_DRAW = 3, H5FD_MEM_GHEAP = 4, H5FD_MEM_LHEAP = 5, H5FD_MEM_OHDR = 6, H5FD_MEM_NTYPES } H5F_mem_t;
typedef struct H5F_sect_info_t {
	haddr_t addr;
	hsize_t size;
} H5F_sect_info_t;
typedef enum H5F_libver_t { H5F_LIBVER_ERROR = -1, H5F_LIBVER_EARLIEST = 0, H5F_LIBVER_V18 = 1, H5F_LIBVER_V110 = 2, H5F_LIBVER_NBOUNDS } H5F_libver_t;
enum { H5F_LIBVER_LATEST = 0 };
typedef enum H5F_fspace_strategy_t { H5F_FSPACE_STRATEGY_FSM_AGGR = 0, H5F_FSPACE_STRATEGY_PAGE = 1, H5F_FSPACE_STRATEGY_AGGR = 2, H5F_FSPACE_STRATEGY_NONE = 3, H5F_FSPACE_STRATEGY_NTYPES } H5F_fspace_strategy_t;
typedef enum H5F_file_space_type_t { H5F_FILE_SPACE_DEFAULT = 0, H5F_FILE_SPACE_ALL_PERSIST = 1, H5F_FILE_SPACE_ALL = 2, H5F_FILE_SPACE_AGGR_VFD = 3, H5F_FILE_SPACE_VFD = 4, H5F_FILE_SPACE_NTYPES } H5F_file_space_type_t;
enum { H5F_NUM_METADATA_READ_RETRY_TYPES = 21 };
typedef struct H5F_retry_info_t {
	unsigned nbins;
	uint32_t *retries[21];
} H5F_retry_info_t;
typedef herr_t (*H5F_flush_cb_t)(hid_t object_id, void *udata);
htri_t H5Fis_hdf5(const char *filename);
hid_t H5Fcreate(const char *filename, unsigned flags, hid_t fcpl_id, hid_t fapl_id);
hid_t H5Fopen(const char *filename, unsigned flags, hid_t fapl_id);
hid_t H5Freopen(hid_t file_id);
herr_t H5Fflush(hid_t object_id, H5F_scope_t scope);
herr_t H5Fclose(hid_t file_id);
hid_t H5Fget_create_plist(hid_t file_id);
hid_t H5Fget_access_plist(hid_t file_id);
herr_t H5Fget_intent(hid_t file_id, unsigned *intent);
ssize_t H5Fget_obj_count(hid_t file_id, unsigned types);
ssize_t H5Fget_obj_ids(hid_t file_id, unsigned types, size_t max_objs, hid_t *obj_id_list);
herr_t H5Fget_vfd_handle(hid_t file_id, hid_t fapl, void **file_handle);
herr_t H5Fmount(hid_t loc, const char *name, hid_t child, hid_t plist);
herr_t H5Funmount(hid_t loc, const char *name);
hssize_t H5Fget_freespace(hid_t file_id);
herr_t H5Fget_filesize(hid_t file_id, hsize_t *size);
herr_t H5Fget_eoa(hid_t file_id, haddr_t *eoa);
herr_t H5Fincrement_filesize(hid_t file_id, hsize_t increment);
ssize_t H5Fget_file_image(hid_t file_id, void *buf_ptr, size_t buf_len);
herr_t H5Fget_mdc_config(hid_t file_id, H5AC_cache_config_t *config_ptr);
herr_t H5Fset_mdc_config(hid_t file_id, H5AC_cache_config_t *config_ptr);
herr_t H5Fget_mdc_hit_rate(hid_t file_id, double *hit_rate_ptr);
herr_t H5Fget_mdc_size(hid_t file_id, size_t *max_size_ptr, size_t *min_clean_size_ptr, size_t *cur_size_ptr, int *cur_num_entries_ptr);
herr_t H5Freset_mdc_hit_rate_stats(hid_t file_id);
ssize_t H5Fget_name(hid_t obj_id, char *name, size_t size);
herr_t H5Fget_info2(hid_t obj_id, H5F_info2_t *file_info);
herr_t H5Fget_metadata_read_retry_info(hid_t file_id, H5F_retry_info_t *info);
herr_t H5Fstart_swmr_write(hid_t file_id);
ssize_t H5Fget_free_sections(hid_t file_id, H5F_mem_t type, size_t nsects, H5F_sect_info_t *sect_info );
herr_t H5Fclear_elink_file_cache(hid_t file_id);
herr_t H5Fset_libver_bounds(hid_t file_id, H5F_libver_t low, H5F_libver_t high);
herr_t H5Fstart_mdc_logging(hid_t file_id);
herr_t H5Fstop_mdc_logging(hid_t file_id);
herr_t H5Fget_mdc_logging_status(hid_t file_id, hbool_t *is_enabled, hbool_t *is_currently_logging);
herr_t H5Fformat_convert(hid_t fid);
herr_t H5Freset_page_buffering_stats(hid_t file_id);
herr_t H5Fget_page_buffering_stats(hid_t file_id, unsigned accesses[2], unsigned hits[2], unsigned misses[2], unsigned evictions[2], unsigned bypasses[2]);
herr_t H5Fget_mdc_image_info(hid_t file_id, haddr_t *image_addr, hsize_t *image_size);
herr_t H5Fget_dset_no_attrs_hint(hid_t file_id, hbool_t *minimize);
herr_t H5Fset_dset_no_attrs_hint(hid_t file_id, hbool_t minimize);
/* #define H5F_ACC_DEBUG (H5CHECK H5OPEN 0x0000u) ### string, not number "(H5CHECK H5OPEN 0x0000u)" */
typedef struct H5F_info1_t {
	hsize_t super_ext_size;
	struct {
	hsize_t hdr_size;
	H5_ih_info_t msgs_info;
} sohm;
} H5F_info1_t;
herr_t H5Fget_info1(hid_t obj_id, H5F_info1_t *file_info);
herr_t H5Fset_latest_format(hid_t file_id, hbool_t latest_format);
/* ++ END   /usr/include/hdf5/serial/H5Fpublic.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5FDpublic.h */
enum { H5FDpublic_H = 1 };
/* +++ BEGIN /usr/include/hdf5/serial/H5public.h */
/* +++ END   /usr/include/hdf5/serial/H5public.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5Fpublic.h */
/* +++ END   /usr/include/hdf5/serial/H5Fpublic.h */
enum { H5_HAVE_VFL = 1 };
enum { H5FD_VFD_DEFAULT = 0 };
typedef enum H5F_mem_t H5FD_mem_t;
enum { H5FD_MEM_FHEAP_HDR = 0 };
enum { H5FD_MEM_FHEAP_IBLOCK = 0 };
enum { H5FD_MEM_FHEAP_DBLOCK = 0 };
enum { H5FD_MEM_FHEAP_HUGE_OBJ = 0 };
enum { H5FD_MEM_FSPACE_HDR = 0 };
enum { H5FD_MEM_FSPACE_SINFO = 0 };
enum { H5FD_MEM_SOHM_TABLE = 0 };
enum { H5FD_MEM_SOHM_INDEX = 0 };
enum { H5FD_MEM_EARRAY_HDR = 0 };
enum { H5FD_MEM_EARRAY_IBLOCK = 0 };
enum { H5FD_MEM_EARRAY_SBLOCK = 0 };
enum { H5FD_MEM_EARRAY_DBLOCK = 0 };
enum { H5FD_MEM_EARRAY_DBLK_PAGE = 0 };
enum { H5FD_MEM_FARRAY_HDR = 0 };
enum { H5FD_MEM_FARRAY_DBLOCK = 0 };
enum { H5FD_MEM_FARRAY_DBLK_PAGE = 0 };
/* #define H5FD_FLMAP_SINGLE                                                                                         {                                                                                                                 H5FD_MEM_SUPER,                                                                                        H5FD_MEM_SUPER,                                                                                      H5FD_MEM_SUPER,                                                                                      H5FD_MEM_SUPER,                                                                                       H5FD_MEM_SUPER,                                                                                      H5FD_MEM_SUPER,                                                                                      H5FD_MEM_SUPER                                                                                } ### string, not number "{                                                                                                                 H5FD_MEM_SUPER,                                                                                        H5FD_MEM_SUPER,                                                                                      H5FD_MEM_SUPER,                                                                                      H5FD_MEM_SUPER,                                                                                       H5FD_MEM_SUPER,                                                                                      H5FD_MEM_SUPER,                                                                                      H5FD_MEM_SUPER                                                                                }" */
/* #define H5FD_FLMAP_DICHOTOMY                                                                                      {                                                                                                                 H5FD_MEM_SUPER,                                                                                        H5FD_MEM_SUPER,                                                                                      H5FD_MEM_SUPER,                                                                                      H5FD_MEM_DRAW,                                                                                        H5FD_MEM_DRAW,                                                                                       H5FD_MEM_SUPER,                                                                                      H5FD_MEM_SUPER                                                                                } ### string, not number "{                                                                                                                 H5FD_MEM_SUPER,                                                                                        H5FD_MEM_SUPER,                                                                                      H5FD_MEM_SUPER,                                                                                      H5FD_MEM_DRAW,                                                                                        H5FD_MEM_DRAW,                                                                                       H5FD_MEM_SUPER,                                                                                      H5FD_MEM_SUPER                                                                                }" */
/* #define H5FD_FLMAP_DEFAULT                                                                                        {                                                                                                                 H5FD_MEM_DEFAULT,                                                                                      H5FD_MEM_DEFAULT,                                                                                    H5FD_MEM_DEFAULT,                                                                                    H5FD_MEM_DEFAULT,                                                                                     H5FD_MEM_DEFAULT,                                                                                    H5FD_MEM_DEFAULT,                                                                                    H5FD_MEM_DEFAULT                                                                              } ### string, not number "{                                                                                                                 H5FD_MEM_DEFAULT,                                                                                      H5FD_MEM_DEFAULT,                                                                                    H5FD_MEM_DEFAULT,                                                                                    H5FD_MEM_DEFAULT,                                                                                     H5FD_MEM_DEFAULT,                                                                                    H5FD_MEM_DEFAULT,                                                                                    H5FD_MEM_DEFAULT                                                                              }" */
enum { H5FD_FEAT_AGGREGATE_METADATA = 1 };
enum { H5FD_FEAT_ACCUMULATE_METADATA_WRITE = 2 };
enum { H5FD_FEAT_ACCUMULATE_METADATA_READ = 4 };
enum { H5FD_FEAT_ACCUMULATE_METADATA = 6 };
enum { H5FD_FEAT_DATA_SIEVE = 8 };
enum { H5FD_FEAT_AGGREGATE_SMALLDATA = 16 };
enum { H5FD_FEAT_IGNORE_DRVRINFO = 32 };
enum { H5FD_FEAT_DIRTY_DRVRINFO_LOAD = 64 };
enum { H5FD_FEAT_POSIX_COMPAT_HANDLE = 128 };
enum { H5FD_FEAT_HAS_MPI = 256 };
enum { H5FD_FEAT_ALLOCATE_EARLY = 512 };
enum { H5FD_FEAT_ALLOW_FILE_IMAGE = 1024 };
enum { H5FD_FEAT_CAN_USE_FILE_IMAGE_CALLBACKS = 2048 };
enum { H5FD_FEAT_SUPPORTS_SWMR_IO = 4096 };
enum { H5FD_FEAT_USE_ALLOC_SIZE = 8192 };
enum { H5FD_FEAT_PAGED_AGGR = 16384 };
enum { H5FD_FEAT_DEFAULT_VFD_COMPATIBLE = 32768 };
typedef struct H5FD_t H5FD_t;
typedef struct H5FD_class_t {
	const char * name;
	haddr_t maxaddr;
	H5F_close_degree_t fc_degree;
	herr_t (*terminate)(void);
	hsize_t (*sb_size)(H5FD_t *file);
	herr_t (*sb_encode)(H5FD_t *file, char *name , unsigned char *p );
	herr_t (*sb_decode)(H5FD_t *f, const char *name, const unsigned char *p);
	size_t fapl_size;
	void *(*fapl_get)(H5FD_t *file);
	void *(*fapl_copy)(const void *fapl);
	herr_t (*fapl_free)(void *fapl);
	size_t dxpl_size;
	void *(*dxpl_copy)(const void *dxpl);
	herr_t (*dxpl_free)(void *dxpl);
	H5FD_t *(*open)(const char *name, unsigned flags, hid_t fapl, haddr_t maxaddr);
	herr_t (*close)(H5FD_t *file);
	int (*cmp)(const H5FD_t *f1, const H5FD_t *f2);
	herr_t (*query)(const H5FD_t *f1, unsigned long *flags);
	herr_t (*get_type_map)(const H5FD_t *file, H5FD_mem_t *type_map);
	haddr_t (*alloc)(H5FD_t *file, H5FD_mem_t type, hid_t dxpl_id, hsize_t size);
	herr_t (*free)(H5FD_t *file, H5FD_mem_t type, hid_t dxpl_id, haddr_t addr, hsize_t size);
	haddr_t (*get_eoa)(const H5FD_t *file, H5FD_mem_t type);
	herr_t (*set_eoa)(H5FD_t *file, H5FD_mem_t type, haddr_t addr);
	haddr_t (*get_eof)(const H5FD_t *file, H5FD_mem_t type);
	herr_t (*get_handle)(H5FD_t *file, hid_t fapl, void **file_handle);
	herr_t (*read)(H5FD_t *file, H5FD_mem_t type, hid_t dxpl, haddr_t addr, size_t size, void *buffer);
	herr_t (*write)(H5FD_t *file, H5FD_mem_t type, hid_t dxpl, haddr_t addr, size_t size, const void *buffer);
	herr_t (*flush)(H5FD_t *file, hid_t dxpl_id, hbool_t closing);
	herr_t (*truncate)(H5FD_t *file, hid_t dxpl_id, hbool_t closing);
	herr_t (*lock)(H5FD_t *file, hbool_t rw);
	herr_t (*unlock)(H5FD_t *file);
	H5FD_mem_t fl_map[H5FD_MEM_NTYPES];
} H5FD_class_t;
typedef struct H5FD_free_t {
	haddr_t addr;
	hsize_t size;
	struct H5FD_free_t *next;
} H5FD_free_t;
struct H5FD_t {
	hid_t driver_id;
	const H5FD_class_t *cls;
	unsigned long fileno;
	unsigned access_flags;
	unsigned long feature_flags;
	haddr_t maxaddr;
	haddr_t base_addr;
	hsize_t threshold;
	hsize_t alignment;
	hbool_t paged_aggr;
};
typedef enum { H5FD_FILE_IMAGE_OP_NO_OP, H5FD_FILE_IMAGE_OP_PROPERTY_LIST_SET, H5FD_FILE_IMAGE_OP_PROPERTY_LIST_COPY, H5FD_FILE_IMAGE_OP_PROPERTY_LIST_GET, H5FD_FILE_IMAGE_OP_PROPERTY_LIST_CLOSE, H5FD_FILE_IMAGE_OP_FILE_OPEN, H5FD_FILE_IMAGE_OP_FILE_RESIZE, H5FD_FILE_IMAGE_OP_FILE_CLOSE } H5FD_file_image_op_t;
typedef struct {
	void *(*image_malloc)(size_t size, H5FD_file_image_op_t file_image_op, void *udata);
	void *(*image_memcpy)(void *dest, const void *src, size_t size, H5FD_file_image_op_t file_image_op, void *udata);
	void *(*image_realloc)(void *ptr, size_t size, H5FD_file_image_op_t file_image_op, void *udata);
	herr_t (*image_free)(void *ptr, H5FD_file_image_op_t file_image_op, void *udata);
	void *(*udata_copy)(void *udata);
	herr_t (*udata_free)(void *udata);
	void *udata;
} H5FD_file_image_callbacks_t;
hid_t H5FDregister(const H5FD_class_t *cls);
herr_t H5FDunregister(hid_t driver_id);
H5FD_t *H5FDopen(const char *name, unsigned flags, hid_t fapl_id, haddr_t maxaddr);
herr_t H5FDclose(H5FD_t *file);
int H5FDcmp(const H5FD_t *f1, const H5FD_t *f2);
int H5FDquery(const H5FD_t *f, unsigned long *flags);
haddr_t H5FDalloc(H5FD_t *file, H5FD_mem_t type, hid_t dxpl_id, hsize_t size);
herr_t H5FDfree(H5FD_t *file, H5FD_mem_t type, hid_t dxpl_id, haddr_t addr, hsize_t size);
haddr_t H5FDget_eoa(H5FD_t *file, H5FD_mem_t type);
herr_t H5FDset_eoa(H5FD_t *file, H5FD_mem_t type, haddr_t eoa);
haddr_t H5FDget_eof(H5FD_t *file, H5FD_mem_t type);
herr_t H5FDget_vfd_handle(H5FD_t *file, hid_t fapl, void **file_handle);
herr_t H5FDread(H5FD_t *file, H5FD_mem_t type, hid_t dxpl_id, haddr_t addr, size_t size, void *buf );
herr_t H5FDwrite(H5FD_t *file, H5FD_mem_t type, hid_t dxpl_id, haddr_t addr, size_t size, const void *buf);
herr_t H5FDflush(H5FD_t *file, hid_t dxpl_id, hbool_t closing);
herr_t H5FDtruncate(H5FD_t *file, hid_t dxpl_id, hbool_t closing);
herr_t H5FDlock(H5FD_t *file, hbool_t rw);
herr_t H5FDunlock(H5FD_t *file);
herr_t H5FDdriver_query(hid_t driver_id, unsigned long *flags );
/* ++ END   /usr/include/hdf5/serial/H5FDpublic.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5Gpublic.h */
enum { H5Gpublic_H = 1 };
/* +++ BEGIN /usr/include/x86_64-linux-gnu/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/sys/types.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5public.h */
/* +++ END   /usr/include/hdf5/serial/H5public.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5Lpublic.h */
/* +++ END   /usr/include/hdf5/serial/H5Lpublic.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5Opublic.h */
/* +++ END   /usr/include/hdf5/serial/H5Opublic.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5Tpublic.h */
/* +++ END   /usr/include/hdf5/serial/H5Tpublic.h */
typedef enum H5G_storage_type_t { H5G_STORAGE_TYPE_UNKNOWN = -1, H5G_STORAGE_TYPE_SYMBOL_TABLE, H5G_STORAGE_TYPE_COMPACT, H5G_STORAGE_TYPE_DENSE } H5G_storage_type_t;
typedef struct H5G_info_t {
	H5G_storage_type_t storage_type;
	hsize_t nlinks;
	int64_t max_corder;
	hbool_t mounted;
} H5G_info_t;
hid_t H5Gcreate2(hid_t loc_id, const char *name, hid_t lcpl_id, hid_t gcpl_id, hid_t gapl_id);
hid_t H5Gcreate_anon(hid_t loc_id, hid_t gcpl_id, hid_t gapl_id);
hid_t H5Gopen2(hid_t loc_id, const char *name, hid_t gapl_id);
hid_t H5Gget_create_plist(hid_t group_id);
herr_t H5Gget_info(hid_t loc_id, H5G_info_t *ginfo);
herr_t H5Gget_info_by_name(hid_t loc_id, const char *name, H5G_info_t *ginfo, hid_t lapl_id);
herr_t H5Gget_info_by_idx(hid_t loc_id, const char *group_name, H5_index_t idx_type, H5_iter_order_t order, hsize_t n, H5G_info_t *ginfo, hid_t lapl_id);
herr_t H5Gflush(hid_t group_id);
herr_t H5Grefresh(hid_t group_id);
herr_t H5Gclose(hid_t group_id);
enum { H5G_SAME_LOC = 0 };
enum { H5G_LINK_ERROR = 0 };
enum { H5G_LINK_HARD = 0 };
enum { H5G_LINK_SOFT = 0 };
enum { H5G_link_t = 0 };
enum { H5G_NTYPES = 256 };
enum { H5G_NLIBTYPES = 8 };
enum { H5G_NUSERTYPES = 248 };
typedef enum H5G_obj_t { H5G_UNKNOWN = -1, H5G_GROUP, H5G_DATASET, H5G_TYPE, H5G_LINK, H5G_UDLINK, H5G_RESERVED_5, H5G_RESERVED_6, H5G_RESERVED_7 } H5G_obj_t;
typedef herr_t (*H5G_iterate_t)(hid_t group, const char *name, void *op_data);
typedef struct H5G_stat_t {
	unsigned long fileno[2];
	unsigned long objno[2];
	unsigned nlink;
	H5G_obj_t type;
	time_t mtime;
	size_t linklen;
	H5O_stat_t ohdr;
} H5G_stat_t;
hid_t H5Gcreate1(hid_t loc_id, const char *name, size_t size_hint);
hid_t H5Gopen1(hid_t loc_id, const char *name);
herr_t H5Glink(hid_t cur_loc_id, H5L_type_t type, const char *cur_name, const char *new_name);
herr_t H5Glink2(hid_t cur_loc_id, const char *cur_name, H5L_type_t type, hid_t new_loc_id, const char *new_name);
herr_t H5Gmove(hid_t src_loc_id, const char *src_name, const char *dst_name);
herr_t H5Gmove2(hid_t src_loc_id, const char *src_name, hid_t dst_loc_id, const char *dst_name);
herr_t H5Gunlink(hid_t loc_id, const char *name);
herr_t H5Gget_linkval(hid_t loc_id, const char *name, size_t size, char *buf );
herr_t H5Gset_comment(hid_t loc_id, const char *name, const char *comment);
int H5Gget_comment(hid_t loc_id, const char *name, size_t bufsize, char *buf);
herr_t H5Giterate(hid_t loc_id, const char *name, int *idx, H5G_iterate_t op, void *op_data);
herr_t H5Gget_num_objs(hid_t loc_id, hsize_t *num_objs);
herr_t H5Gget_objinfo(hid_t loc_id, const char *name, hbool_t follow_link, H5G_stat_t *statbuf );
ssize_t H5Gget_objname_by_idx(hid_t loc_id, hsize_t idx, char *name, size_t size);
H5G_obj_t H5Gget_objtype_by_idx(hid_t loc_id, hsize_t idx);
/* ++ END   /usr/include/hdf5/serial/H5Gpublic.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5Ipublic.h */
/* ++ END   /usr/include/hdf5/serial/H5Ipublic.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5Lpublic.h */
/* ++ END   /usr/include/hdf5/serial/H5Lpublic.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5MMpublic.h */
enum { H5MMpublic_H = 1 };
/* +++ BEGIN /usr/include/hdf5/serial/H5public.h */
/* +++ END   /usr/include/hdf5/serial/H5public.h */
typedef void *(*H5MM_allocate_t)(size_t size, void *alloc_info);
typedef void (*H5MM_free_t)(void *mem, void *free_info);
/* ++ END   /usr/include/hdf5/serial/H5MMpublic.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5Opublic.h */
/* ++ END   /usr/include/hdf5/serial/H5Opublic.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5Ppublic.h */
enum { H5Ppublic_H = 1 };
/* +++ BEGIN /usr/include/hdf5/serial/H5public.h */
/* +++ END   /usr/include/hdf5/serial/H5public.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5ACpublic.h */
/* +++ END   /usr/include/hdf5/serial/H5ACpublic.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5Dpublic.h */
/* +++ END   /usr/include/hdf5/serial/H5Dpublic.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5Fpublic.h */
/* +++ END   /usr/include/hdf5/serial/H5Fpublic.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5FDpublic.h */
/* +++ END   /usr/include/hdf5/serial/H5FDpublic.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5Ipublic.h */
/* +++ END   /usr/include/hdf5/serial/H5Ipublic.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5Lpublic.h */
/* +++ END   /usr/include/hdf5/serial/H5Lpublic.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5MMpublic.h */
/* +++ END   /usr/include/hdf5/serial/H5MMpublic.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5Opublic.h */
/* +++ END   /usr/include/hdf5/serial/H5Opublic.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5Spublic.h */
enum { H5Spublic_H = 1 };
/* ++++ BEGIN /usr/include/hdf5/serial/H5public.h */
/* ++++ END   /usr/include/hdf5/serial/H5public.h */
/* ++++ BEGIN /usr/include/hdf5/serial/H5Ipublic.h */
/* ++++ END   /usr/include/hdf5/serial/H5Ipublic.h */
/* #define H5S_ALL       (hid_t)0 ### string, not number "(hid_t)0" */
/* #define H5S_UNLIMITED HSIZE_UNDEF ### string, not number "HSIZE_UNDEF" */
enum { H5S_MAX_RANK = 32 };
typedef enum H5S_class_t { H5S_NO_CLASS = -1, H5S_SCALAR = 0, H5S_SIMPLE = 1, H5S_NULL = 2 } H5S_class_t;
typedef enum H5S_seloper_t { H5S_SELECT_NOOP = -1, H5S_SELECT_SET = 0, H5S_SELECT_OR, H5S_SELECT_AND, H5S_SELECT_XOR, H5S_SELECT_NOTB, H5S_SELECT_NOTA, H5S_SELECT_APPEND, H5S_SELECT_PREPEND, H5S_SELECT_INVALID } H5S_seloper_t;
typedef enum { H5S_SEL_ERROR = -1, H5S_SEL_NONE = 0, H5S_SEL_POINTS = 1, H5S_SEL_HYPERSLABS = 2, H5S_SEL_ALL = 3, H5S_SEL_N } H5S_sel_type;
herr_t H5Sclose(hid_t space_id);
hid_t H5Scopy(hid_t space_id);
hid_t H5Screate(H5S_class_t type);
hid_t H5Screate_simple(int rank, const hsize_t dims[], const hsize_t maxdims[]);
hid_t H5Sdecode(const void *buf);
herr_t H5Sencode(hid_t obj_id, void *buf, size_t *nalloc);
herr_t H5Sextent_copy(hid_t dst_id, hid_t src_id);
htri_t H5Sextent_equal(hid_t space1_id, hid_t space2_id);
int H5Sget_simple_extent_dims(hid_t space_id, hsize_t dims[], hsize_t maxdims[]);
int H5Sget_simple_extent_ndims(hid_t space_id);
hssize_t H5Sget_simple_extent_npoints(hid_t space_id);
H5S_class_t H5Sget_simple_extent_type(hid_t space_id);
htri_t H5Sis_simple(hid_t space_id);
herr_t H5Sset_extent_none(hid_t space_id);
herr_t H5Sset_extent_simple(hid_t space_id, int rank, const hsize_t dims[], const hsize_t max[]);
hid_t H5Scombine_hyperslab(hid_t space_id, H5S_seloper_t op, const hsize_t start[], const hsize_t stride[], const hsize_t count[], const hsize_t block[]);
hid_t H5Scombine_select(hid_t space1_id, H5S_seloper_t op, hid_t space2_id);
htri_t H5Sget_regular_hyperslab(hid_t spaceid, hsize_t start[], hsize_t stride[], hsize_t count[], hsize_t block[]);
herr_t H5Sget_select_bounds(hid_t spaceid, hsize_t start[], hsize_t end[]);
hssize_t H5Sget_select_elem_npoints(hid_t spaceid);
herr_t H5Sget_select_elem_pointlist(hid_t spaceid, hsize_t startpoint, hsize_t numpoints, hsize_t buf[]);
herr_t H5Sget_select_hyper_blocklist(hid_t spaceid, hsize_t startblock, hsize_t numblocks, hsize_t buf[]);
hssize_t H5Sget_select_hyper_nblocks(hid_t spaceid);
hssize_t H5Sget_select_npoints(hid_t spaceid);
H5S_sel_type H5Sget_select_type(hid_t spaceid);
htri_t H5Sis_regular_hyperslab(hid_t spaceid);
herr_t H5Smodify_select(hid_t space1_id, H5S_seloper_t op, hid_t space2_id);
herr_t H5Soffset_simple(hid_t space_id, const hssize_t *offset);
herr_t H5Sselect_adjust(hid_t spaceid, const hssize_t *offset);
herr_t H5Sselect_all(hid_t spaceid);
herr_t H5Sselect_copy(hid_t dst_id, hid_t src_id);
herr_t H5Sselect_elements(hid_t space_id, H5S_seloper_t op, size_t num_elem, const hsize_t *coord);
herr_t H5Sselect_hyperslab(hid_t space_id, H5S_seloper_t op, const hsize_t start[], const hsize_t stride[], const hsize_t count[], const hsize_t block[]);
htri_t H5Sselect_intersect_block(hid_t space_id, const hsize_t *start, const hsize_t *end);
herr_t H5Sselect_none(hid_t spaceid);
hid_t H5Sselect_project_intersection(hid_t src_space_id, hid_t dst_space_id, hid_t src_intersect_space_id);
htri_t H5Sselect_shape_same(hid_t space1_id, hid_t space2_id);
htri_t H5Sselect_valid(hid_t spaceid);
/* +++ END   /usr/include/hdf5/serial/H5Spublic.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5Tpublic.h */
/* +++ END   /usr/include/hdf5/serial/H5Tpublic.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5Zpublic.h */
enum { H5Zpublic_H = 1 };
/* ++++ BEGIN /usr/include/hdf5/serial/H5public.h */
/* ++++ END   /usr/include/hdf5/serial/H5public.h */
typedef int H5Z_filter_t;
enum { H5Z_FILTER_ERROR = -1 };
enum { H5Z_FILTER_NONE = 0 };
enum { H5Z_FILTER_DEFLATE = 1 };
enum { H5Z_FILTER_SHUFFLE = 2 };
enum { H5Z_FILTER_FLETCHER32 = 3 };
enum { H5Z_FILTER_SZIP = 4 };
enum { H5Z_FILTER_NBIT = 5 };
enum { H5Z_FILTER_SCALEOFFSET = 6 };
enum { H5Z_FILTER_RESERVED = 256 };
enum { H5Z_FILTER_MAX = 65535 };
enum { H5Z_FILTER_ALL = 0 };
enum { H5Z_MAX_NFILTERS = 32 };
enum { H5Z_FLAG_DEFMASK = 255 };
enum { H5Z_FLAG_MANDATORY = 0 };
enum { H5Z_FLAG_OPTIONAL = 1 };
enum { H5Z_FLAG_INVMASK = 65280 };
enum { H5Z_FLAG_REVERSE = 256 };
enum { H5Z_FLAG_SKIP_EDC = 512 };
enum { H5_SZIP_ALLOW_K13_OPTION_MASK = 1 };
enum { H5_SZIP_CHIP_OPTION_MASK = 2 };
enum { H5_SZIP_EC_OPTION_MASK = 4 };
enum { H5_SZIP_NN_OPTION_MASK = 32 };
enum { H5_SZIP_MAX_PIXELS_PER_BLOCK = 32 };
enum { H5Z_SHUFFLE_USER_NPARMS = 0 };
enum { H5Z_SHUFFLE_TOTAL_NPARMS = 1 };
enum { H5Z_SZIP_USER_NPARMS = 2 };
enum { H5Z_SZIP_TOTAL_NPARMS = 4 };
enum { H5Z_SZIP_PARM_MASK = 0 };
enum { H5Z_SZIP_PARM_PPB = 1 };
enum { H5Z_SZIP_PARM_BPP = 2 };
enum { H5Z_SZIP_PARM_PPS = 3 };
enum { H5Z_NBIT_USER_NPARMS = 0 };
enum { H5Z_SCALEOFFSET_USER_NPARMS = 2 };
enum { H5Z_SO_INT_MINBITS_DEFAULT = 0 };
typedef enum H5Z_SO_scale_type_t { H5Z_SO_FLOAT_DSCALE = 0, H5Z_SO_FLOAT_ESCALE = 1, H5Z_SO_INT = 2 } H5Z_SO_scale_type_t;
enum { H5Z_CLASS_T_VERS = 1 };
typedef enum H5Z_EDC_t { H5Z_ERROR_EDC = -1, H5Z_DISABLE_EDC = 0, H5Z_ENABLE_EDC = 1, H5Z_NO_EDC = 2 } H5Z_EDC_t;
enum { H5Z_FILTER_CONFIG_ENCODE_ENABLED = 1 };
enum { H5Z_FILTER_CONFIG_DECODE_ENABLED = 2 };
typedef enum H5Z_cb_return_t { H5Z_CB_ERROR = -1, H5Z_CB_FAIL = 0, H5Z_CB_CONT = 1, H5Z_CB_NO = 2 } H5Z_cb_return_t;
typedef H5Z_cb_return_t (*H5Z_filter_func_t)(H5Z_filter_t filter, void *buf, size_t buf_size, void *op_data);
typedef struct H5Z_cb_t {
	H5Z_filter_func_t func;
	void * op_data;
} H5Z_cb_t;
typedef htri_t (*H5Z_can_apply_func_t)(hid_t dcpl_id, hid_t type_id, hid_t space_id);
typedef herr_t (*H5Z_set_local_func_t)(hid_t dcpl_id, hid_t type_id, hid_t space_id);
typedef size_t (*H5Z_func_t)(unsigned int flags, size_t cd_nelmts, const unsigned int cd_values[], size_t nbytes, size_t *buf_size, void **buf);
typedef struct H5Z_class2_t {
	int version;
	H5Z_filter_t id;
	unsigned encoder_present;
	unsigned decoder_present;
	const char * name;
	H5Z_can_apply_func_t can_apply;
	H5Z_set_local_func_t set_local;
	H5Z_func_t filter;
} H5Z_class2_t;
herr_t H5Zregister(const void *cls);
herr_t H5Zunregister(H5Z_filter_t id);
htri_t H5Zfilter_avail(H5Z_filter_t id);
herr_t H5Zget_filter_info(H5Z_filter_t filter, unsigned int *filter_config_flags);
typedef struct H5Z_class1_t {
	H5Z_filter_t id;
	const char * name;
	H5Z_can_apply_func_t can_apply;
	H5Z_set_local_func_t set_local;
	H5Z_func_t filter;
} H5Z_class1_t;
/* +++ END   /usr/include/hdf5/serial/H5Zpublic.h */
/* #define H5OPEN H5open(), ### string, not number "H5open()," */
/* #define H5P_ROOT             (H5OPEN H5P_CLS_ROOT_ID_g) ### string, not number "(H5OPEN H5P_CLS_ROOT_ID_g)" */
/* #define H5P_OBJECT_CREATE    (H5OPEN H5P_CLS_OBJECT_CREATE_ID_g) ### string, not number "(H5OPEN H5P_CLS_OBJECT_CREATE_ID_g)" */
/* #define H5P_FILE_CREATE      (H5OPEN H5P_CLS_FILE_CREATE_ID_g) ### string, not number "(H5OPEN H5P_CLS_FILE_CREATE_ID_g)" */
/* #define H5P_FILE_ACCESS      (H5OPEN H5P_CLS_FILE_ACCESS_ID_g) ### string, not number "(H5OPEN H5P_CLS_FILE_ACCESS_ID_g)" */
/* #define H5P_DATASET_CREATE   (H5OPEN H5P_CLS_DATASET_CREATE_ID_g) ### string, not number "(H5OPEN H5P_CLS_DATASET_CREATE_ID_g)" */
/* #define H5P_DATASET_ACCESS   (H5OPEN H5P_CLS_DATASET_ACCESS_ID_g) ### string, not number "(H5OPEN H5P_CLS_DATASET_ACCESS_ID_g)" */
/* #define H5P_DATASET_XFER     (H5OPEN H5P_CLS_DATASET_XFER_ID_g) ### string, not number "(H5OPEN H5P_CLS_DATASET_XFER_ID_g)" */
/* #define H5P_FILE_MOUNT       (H5OPEN H5P_CLS_FILE_MOUNT_ID_g) ### string, not number "(H5OPEN H5P_CLS_FILE_MOUNT_ID_g)" */
/* #define H5P_GROUP_CREATE     (H5OPEN H5P_CLS_GROUP_CREATE_ID_g) ### string, not number "(H5OPEN H5P_CLS_GROUP_CREATE_ID_g)" */
/* #define H5P_GROUP_ACCESS     (H5OPEN H5P_CLS_GROUP_ACCESS_ID_g) ### string, not number "(H5OPEN H5P_CLS_GROUP_ACCESS_ID_g)" */
/* #define H5P_DATATYPE_CREATE  (H5OPEN H5P_CLS_DATATYPE_CREATE_ID_g) ### string, not number "(H5OPEN H5P_CLS_DATATYPE_CREATE_ID_g)" */
/* #define H5P_DATATYPE_ACCESS  (H5OPEN H5P_CLS_DATATYPE_ACCESS_ID_g) ### string, not number "(H5OPEN H5P_CLS_DATATYPE_ACCESS_ID_g)" */
/* #define H5P_STRING_CREATE    (H5OPEN H5P_CLS_STRING_CREATE_ID_g) ### string, not number "(H5OPEN H5P_CLS_STRING_CREATE_ID_g)" */
/* #define H5P_ATTRIBUTE_CREATE (H5OPEN H5P_CLS_ATTRIBUTE_CREATE_ID_g) ### string, not number "(H5OPEN H5P_CLS_ATTRIBUTE_CREATE_ID_g)" */
/* #define H5P_ATTRIBUTE_ACCESS (H5OPEN H5P_CLS_ATTRIBUTE_ACCESS_ID_g) ### string, not number "(H5OPEN H5P_CLS_ATTRIBUTE_ACCESS_ID_g)" */
/* #define H5P_OBJECT_COPY      (H5OPEN H5P_CLS_OBJECT_COPY_ID_g) ### string, not number "(H5OPEN H5P_CLS_OBJECT_COPY_ID_g)" */
/* #define H5P_LINK_CREATE      (H5OPEN H5P_CLS_LINK_CREATE_ID_g) ### string, not number "(H5OPEN H5P_CLS_LINK_CREATE_ID_g)" */
/* #define H5P_LINK_ACCESS      (H5OPEN H5P_CLS_LINK_ACCESS_ID_g) ### string, not number "(H5OPEN H5P_CLS_LINK_ACCESS_ID_g)" */
/* #define H5P_FILE_CREATE_DEFAULT      (H5OPEN H5P_LST_FILE_CREATE_ID_g) ### string, not number "(H5OPEN H5P_LST_FILE_CREATE_ID_g)" */
/* #define H5P_FILE_ACCESS_DEFAULT      (H5OPEN H5P_LST_FILE_ACCESS_ID_g) ### string, not number "(H5OPEN H5P_LST_FILE_ACCESS_ID_g)" */
/* #define H5P_DATASET_CREATE_DEFAULT   (H5OPEN H5P_LST_DATASET_CREATE_ID_g) ### string, not number "(H5OPEN H5P_LST_DATASET_CREATE_ID_g)" */
/* #define H5P_DATASET_ACCESS_DEFAULT   (H5OPEN H5P_LST_DATASET_ACCESS_ID_g) ### string, not number "(H5OPEN H5P_LST_DATASET_ACCESS_ID_g)" */
/* #define H5P_DATASET_XFER_DEFAULT     (H5OPEN H5P_LST_DATASET_XFER_ID_g) ### string, not number "(H5OPEN H5P_LST_DATASET_XFER_ID_g)" */
/* #define H5P_FILE_MOUNT_DEFAULT       (H5OPEN H5P_LST_FILE_MOUNT_ID_g) ### string, not number "(H5OPEN H5P_LST_FILE_MOUNT_ID_g)" */
/* #define H5P_GROUP_CREATE_DEFAULT     (H5OPEN H5P_LST_GROUP_CREATE_ID_g) ### string, not number "(H5OPEN H5P_LST_GROUP_CREATE_ID_g)" */
/* #define H5P_GROUP_ACCESS_DEFAULT     (H5OPEN H5P_LST_GROUP_ACCESS_ID_g) ### string, not number "(H5OPEN H5P_LST_GROUP_ACCESS_ID_g)" */
/* #define H5P_DATATYPE_CREATE_DEFAULT  (H5OPEN H5P_LST_DATATYPE_CREATE_ID_g) ### string, not number "(H5OPEN H5P_LST_DATATYPE_CREATE_ID_g)" */
/* #define H5P_DATATYPE_ACCESS_DEFAULT  (H5OPEN H5P_LST_DATATYPE_ACCESS_ID_g) ### string, not number "(H5OPEN H5P_LST_DATATYPE_ACCESS_ID_g)" */
/* #define H5P_ATTRIBUTE_CREATE_DEFAULT (H5OPEN H5P_LST_ATTRIBUTE_CREATE_ID_g) ### string, not number "(H5OPEN H5P_LST_ATTRIBUTE_CREATE_ID_g)" */
/* #define H5P_ATTRIBUTE_ACCESS_DEFAULT (H5OPEN H5P_LST_ATTRIBUTE_ACCESS_ID_g) ### string, not number "(H5OPEN H5P_LST_ATTRIBUTE_ACCESS_ID_g)" */
/* #define H5P_OBJECT_COPY_DEFAULT      (H5OPEN H5P_LST_OBJECT_COPY_ID_g) ### string, not number "(H5OPEN H5P_LST_OBJECT_COPY_ID_g)" */
/* #define H5P_LINK_CREATE_DEFAULT      (H5OPEN H5P_LST_LINK_CREATE_ID_g) ### string, not number "(H5OPEN H5P_LST_LINK_CREATE_ID_g)" */
/* #define H5P_LINK_ACCESS_DEFAULT      (H5OPEN H5P_LST_LINK_ACCESS_ID_g) ### string, not number "(H5OPEN H5P_LST_LINK_ACCESS_ID_g)" */
enum { H5P_CRT_ORDER_TRACKED = 1 };
enum { H5P_CRT_ORDER_INDEXED = 2 };
enum { H5P_DEFAULT = 0 };
typedef herr_t (*H5P_cls_create_func_t)(hid_t prop_id, void *create_data);
typedef herr_t (*H5P_cls_copy_func_t)(hid_t new_prop_id, hid_t old_prop_id, void *copy_data);
typedef herr_t (*H5P_cls_close_func_t)(hid_t prop_id, void *close_data);
typedef herr_t (*H5P_prp_cb1_t)(const char *name, size_t size, void *value);
typedef herr_t (*H5P_prp_cb2_t)(hid_t prop_id, const char *name, size_t size, void *value);
typedef H5P_prp_cb1_t H5P_prp_create_func_t;
typedef H5P_prp_cb2_t H5P_prp_set_func_t;
typedef H5P_prp_cb2_t H5P_prp_get_func_t;
typedef H5P_prp_cb2_t H5P_prp_delete_func_t;
typedef H5P_prp_cb1_t H5P_prp_copy_func_t;
typedef int (*H5P_prp_compare_func_t)(const void *value1, const void *value2, size_t size);
typedef H5P_prp_cb1_t H5P_prp_close_func_t;
typedef herr_t (*H5P_iterate_t)(hid_t id, const char *name, void *iter_data);
typedef enum H5D_mpio_actual_chunk_opt_mode_t { H5D_MPIO_NO_CHUNK_OPTIMIZATION = 0, H5D_MPIO_LINK_CHUNK, H5D_MPIO_MULTI_CHUNK } H5D_mpio_actual_chunk_opt_mode_t;
typedef enum H5D_mpio_actual_io_mode_t { H5D_MPIO_NO_COLLECTIVE = 0x0, H5D_MPIO_CHUNK_INDEPENDENT = 0x1, H5D_MPIO_CHUNK_COLLECTIVE = 0x2, H5D_MPIO_CHUNK_MIXED = 0x1 | 0x2, H5D_MPIO_CONTIGUOUS_COLLECTIVE = 0x4 } H5D_mpio_actual_io_mode_t;
typedef enum H5D_mpio_no_collective_cause_t { H5D_MPIO_COLLECTIVE = 0x00, H5D_MPIO_SET_INDEPENDENT = 0x01, H5D_MPIO_DATATYPE_CONVERSION = 0x02, H5D_MPIO_DATA_TRANSFORMS = 0x04, H5D_MPIO_MPI_OPT_TYPES_ENV_VAR_DISABLED = 0x08, H5D_MPIO_NOT_SIMPLE_OR_SCALAR_DATASPACES = 0x10, H5D_MPIO_NOT_CONTIGUOUS_OR_CHUNKED_DATASET = 0x20, H5D_MPIO_PARALLEL_FILTERED_WRITES_DISABLED = 0x40, H5D_MPIO_ERROR_WHILE_CHECKING_COLLECTIVE_POSSIBLE = 0x80, H5D_MPIO_NO_COLLECTIVE_MAX_CAUSE = 0x100 } H5D_mpio_no_collective_cause_t;
extern hid_t H5P_CLS_ROOT_ID_g;
extern hid_t H5P_CLS_OBJECT_CREATE_ID_g;
extern hid_t H5P_CLS_FILE_CREATE_ID_g;
extern hid_t H5P_CLS_FILE_ACCESS_ID_g;
extern hid_t H5P_CLS_DATASET_CREATE_ID_g;
extern hid_t H5P_CLS_DATASET_ACCESS_ID_g;
extern hid_t H5P_CLS_DATASET_XFER_ID_g;
extern hid_t H5P_CLS_FILE_MOUNT_ID_g;
extern hid_t H5P_CLS_GROUP_CREATE_ID_g;
extern hid_t H5P_CLS_GROUP_ACCESS_ID_g;
extern hid_t H5P_CLS_DATATYPE_CREATE_ID_g;
extern hid_t H5P_CLS_DATATYPE_ACCESS_ID_g;
extern hid_t H5P_CLS_STRING_CREATE_ID_g;
extern hid_t H5P_CLS_ATTRIBUTE_CREATE_ID_g;
extern hid_t H5P_CLS_ATTRIBUTE_ACCESS_ID_g;
extern hid_t H5P_CLS_OBJECT_COPY_ID_g;
extern hid_t H5P_CLS_LINK_CREATE_ID_g;
extern hid_t H5P_CLS_LINK_ACCESS_ID_g;
extern hid_t H5P_LST_FILE_CREATE_ID_g;
extern hid_t H5P_LST_FILE_ACCESS_ID_g;
extern hid_t H5P_LST_DATASET_CREATE_ID_g;
extern hid_t H5P_LST_DATASET_ACCESS_ID_g;
extern hid_t H5P_LST_DATASET_XFER_ID_g;
extern hid_t H5P_LST_FILE_MOUNT_ID_g;
extern hid_t H5P_LST_GROUP_CREATE_ID_g;
extern hid_t H5P_LST_GROUP_ACCESS_ID_g;
extern hid_t H5P_LST_DATATYPE_CREATE_ID_g;
extern hid_t H5P_LST_DATATYPE_ACCESS_ID_g;
extern hid_t H5P_LST_ATTRIBUTE_CREATE_ID_g;
extern hid_t H5P_LST_ATTRIBUTE_ACCESS_ID_g;
extern hid_t H5P_LST_OBJECT_COPY_ID_g;
extern hid_t H5P_LST_LINK_CREATE_ID_g;
extern hid_t H5P_LST_LINK_ACCESS_ID_g;
herr_t H5Pclose(hid_t plist_id);
herr_t H5Pclose_class(hid_t plist_id);
hid_t H5Pcopy(hid_t plist_id);
herr_t H5Pcopy_prop(hid_t dst_id, hid_t src_id, const char *name);
hid_t H5Pcreate(hid_t cls_id);
hid_t H5Pcreate_class(hid_t parent, const char *name, H5P_cls_create_func_t create, void *create_data, H5P_cls_copy_func_t copy, void *copy_data, H5P_cls_close_func_t close, void *close_data);
hid_t H5Pdecode(const void *buf);
herr_t H5Pencode(hid_t plist_id, void *buf, size_t *nalloc);
htri_t H5Pequal(hid_t id1, hid_t id2);
htri_t H5Pexist(hid_t plist_id, const char *name);
herr_t H5Pget(hid_t plist_id, const char *name, void *value);
hid_t H5Pget_class(hid_t plist_id);
char *H5Pget_class_name(hid_t pclass_id);
hid_t H5Pget_class_parent(hid_t pclass_id);
herr_t H5Pget_nprops(hid_t id, size_t *nprops);
herr_t H5Pget_size(hid_t id, const char *name, size_t *size);
herr_t H5Pinsert2(hid_t plist_id, const char *name, size_t size, void *value, H5P_prp_set_func_t set, H5P_prp_get_func_t get, H5P_prp_delete_func_t prp_del, H5P_prp_copy_func_t copy, H5P_prp_compare_func_t compare, H5P_prp_close_func_t close);
htri_t H5Pisa_class(hid_t plist_id, hid_t pclass_id);
int H5Piterate(hid_t id, int *idx, H5P_iterate_t iter_func, void *iter_data);
herr_t H5Pregister2(hid_t cls_id, const char *name, size_t size, void *def_value, H5P_prp_create_func_t create, H5P_prp_set_func_t set, H5P_prp_get_func_t get, H5P_prp_delete_func_t prp_del, H5P_prp_copy_func_t copy, H5P_prp_compare_func_t compare, H5P_prp_close_func_t close);
herr_t H5Premove(hid_t plist_id, const char *name);
herr_t H5Pset(hid_t plist_id, const char *name, const void *value);
herr_t H5Punregister(hid_t pclass_id, const char *name);
htri_t H5Pall_filters_avail(hid_t plist_id);
herr_t H5Pget_attr_creation_order(hid_t plist_id, unsigned *crt_order_flags);
herr_t H5Pget_attr_phase_change(hid_t plist_id, unsigned *max_compact, unsigned *min_dense);
H5Z_filter_t H5Pget_filter2(hid_t plist_id, unsigned idx, unsigned int *flags , size_t *cd_nelmts , unsigned cd_values[] , size_t namelen, char name[], unsigned *filter_config );
herr_t H5Pget_filter_by_id2(hid_t plist_id, H5Z_filter_t filter_id, unsigned int *flags , size_t *cd_nelmts , unsigned cd_values[] , size_t namelen, char name[] , unsigned *filter_config );
int H5Pget_nfilters(hid_t plist_id);
herr_t H5Pget_obj_track_times(hid_t plist_id, hbool_t *track_times);
herr_t H5Pmodify_filter(hid_t plist_id, H5Z_filter_t filter, unsigned int flags, size_t cd_nelmts, const unsigned int cd_values[]);
herr_t H5Premove_filter(hid_t plist_id, H5Z_filter_t filter);
herr_t H5Pset_attr_creation_order(hid_t plist_id, unsigned crt_order_flags);
herr_t H5Pset_attr_phase_change(hid_t plist_id, unsigned max_compact, unsigned min_dense);
herr_t H5Pset_deflate(hid_t plist_id, unsigned level);
herr_t H5Pset_filter(hid_t plist_id, H5Z_filter_t filter, unsigned int flags, size_t cd_nelmts, const unsigned int c_values[]);
herr_t H5Pset_fletcher32(hid_t plist_id);
herr_t H5Pset_obj_track_times(hid_t plist_id, hbool_t track_times);
herr_t H5Pget_file_space_page_size(hid_t plist_id, hsize_t *fsp_size);
herr_t H5Pget_file_space_strategy(hid_t plist_id, H5F_fspace_strategy_t *strategy, hbool_t *persist, hsize_t *threshold);
herr_t H5Pget_istore_k(hid_t plist_id, unsigned *ik );
herr_t H5Pget_shared_mesg_index(hid_t plist_id, unsigned index_num, unsigned *mesg_type_flags, unsigned *min_mesg_size);
herr_t H5Pget_shared_mesg_nindexes(hid_t plist_id, unsigned *nindexes);
herr_t H5Pget_shared_mesg_phase_change(hid_t plist_id, unsigned *max_list, unsigned *min_btree);
herr_t H5Pget_sizes(hid_t plist_id, size_t *sizeof_addr , size_t *sizeof_size );
herr_t H5Pget_sym_k(hid_t plist_id, unsigned *ik , unsigned *lk );
herr_t H5Pget_userblock(hid_t plist_id, hsize_t *size);
herr_t H5Pset_file_space_page_size(hid_t plist_id, hsize_t fsp_size);
herr_t H5Pset_file_space_strategy(hid_t plist_id, H5F_fspace_strategy_t strategy, hbool_t persist, hsize_t threshold);
herr_t H5Pset_istore_k(hid_t plist_id, unsigned ik);
herr_t H5Pset_shared_mesg_index(hid_t plist_id, unsigned index_num, unsigned mesg_type_flags, unsigned min_mesg_size);
herr_t H5Pset_shared_mesg_nindexes(hid_t plist_id, unsigned nindexes);
herr_t H5Pset_shared_mesg_phase_change(hid_t plist_id, unsigned max_list, unsigned min_btree);
herr_t H5Pset_sizes(hid_t plist_id, size_t sizeof_addr, size_t sizeof_size);
herr_t H5Pset_sym_k(hid_t plist_id, unsigned ik, unsigned lk);
herr_t H5Pset_userblock(hid_t plist_id, hsize_t size);
herr_t H5Pget_alignment(hid_t fapl_id, hsize_t *threshold , hsize_t *alignment );
herr_t H5Pget_cache(hid_t plist_id, int *mdc_nelmts, size_t *rdcc_nslots , size_t *rdcc_nbytes , double *rdcc_w0);
herr_t H5Pget_core_write_tracking(hid_t fapl_id, hbool_t *is_enabled, size_t *page_size);
hid_t H5Pget_driver(hid_t plist_id);
const void *H5Pget_driver_info(hid_t plist_id);
herr_t H5Pget_elink_file_cache_size(hid_t plist_id, unsigned *efc_size);
herr_t H5Pget_evict_on_close(hid_t fapl_id, hbool_t *evict_on_close);
herr_t H5Pget_family_offset(hid_t fapl_id, hsize_t *offset);
herr_t H5Pget_fclose_degree(hid_t fapl_id, H5F_close_degree_t *degree);
herr_t H5Pget_file_image(hid_t fapl_id, void **buf_ptr_ptr, size_t *buf_len_ptr);
herr_t H5Pget_file_image_callbacks(hid_t fapl_id, H5FD_file_image_callbacks_t *callbacks_ptr);
herr_t H5Pget_file_locking(hid_t fapl_id, hbool_t *use_file_locking, hbool_t *ignore_when_disabled);
herr_t H5Pget_gc_references(hid_t fapl_id, unsigned *gc_ref );
herr_t H5Pget_libver_bounds(hid_t plist_id, H5F_libver_t *low, H5F_libver_t *high);
herr_t H5Pget_mdc_config(hid_t plist_id, H5AC_cache_config_t *config_ptr);
herr_t H5Pget_mdc_image_config(hid_t plist_id, H5AC_cache_image_config_t *config_ptr );
herr_t H5Pget_mdc_log_options(hid_t plist_id, hbool_t *is_enabled, char *location, size_t *location_size, hbool_t *start_on_access);
herr_t H5Pget_meta_block_size(hid_t fapl_id, hsize_t *size);
herr_t H5Pget_metadata_read_attempts(hid_t plist_id, unsigned *attempts);
herr_t H5Pget_multi_type(hid_t fapl_id, H5FD_mem_t *type);
herr_t H5Pget_object_flush_cb(hid_t plist_id, H5F_flush_cb_t *func, void **udata);
herr_t H5Pget_page_buffer_size(hid_t plist_id, size_t *buf_size, unsigned *min_meta_perc, unsigned *min_raw_perc);
herr_t H5Pget_sieve_buf_size(hid_t fapl_id, size_t *size );
herr_t H5Pget_small_data_block_size(hid_t fapl_id, hsize_t *size );
herr_t H5Pset_alignment(hid_t fapl_id, hsize_t threshold, hsize_t alignment);
herr_t H5Pset_cache(hid_t plist_id, int mdc_nelmts, size_t rdcc_nslots, size_t rdcc_nbytes, double rdcc_w0);
herr_t H5Pset_core_write_tracking(hid_t fapl_id, hbool_t is_enabled, size_t page_size);
herr_t H5Pset_driver(hid_t plist_id, hid_t driver_id, const void *driver_info);
herr_t H5Pset_elink_file_cache_size(hid_t plist_id, unsigned efc_size);
herr_t H5Pset_evict_on_close(hid_t fapl_id, hbool_t evict_on_close);
herr_t H5Pset_family_offset(hid_t fapl_id, hsize_t offset);
herr_t H5Pset_fclose_degree(hid_t fapl_id, H5F_close_degree_t degree);
herr_t H5Pset_file_image(hid_t fapl_id, void *buf_ptr, size_t buf_len);
herr_t H5Pset_file_image_callbacks(hid_t fapl_id, H5FD_file_image_callbacks_t *callbacks_ptr);
herr_t H5Pset_file_locking(hid_t fapl_id, hbool_t use_file_locking, hbool_t ignore_when_disabled);
herr_t H5Pset_gc_references(hid_t fapl_id, unsigned gc_ref);
herr_t H5Pset_libver_bounds(hid_t plist_id, H5F_libver_t low, H5F_libver_t high);
herr_t H5Pset_mdc_config(hid_t plist_id, H5AC_cache_config_t *config_ptr);
herr_t H5Pset_mdc_log_options(hid_t plist_id, hbool_t is_enabled, const char *location, hbool_t start_on_access);
herr_t H5Pset_meta_block_size(hid_t fapl_id, hsize_t size);
herr_t H5Pset_metadata_read_attempts(hid_t plist_id, unsigned attempts);
herr_t H5Pset_multi_type(hid_t fapl_id, H5FD_mem_t type);
herr_t H5Pset_object_flush_cb(hid_t plist_id, H5F_flush_cb_t func, void *udata);
herr_t H5Pset_sieve_buf_size(hid_t fapl_id, size_t size);
herr_t H5Pset_small_data_block_size(hid_t fapl_id, hsize_t size);
herr_t H5Pset_mdc_image_config(hid_t plist_id, H5AC_cache_image_config_t *config_ptr);
herr_t H5Pset_page_buffer_size(hid_t plist_id, size_t buf_size, unsigned min_meta_per, unsigned min_raw_per);
herr_t H5Pfill_value_defined(hid_t plist, H5D_fill_value_t *status);
herr_t H5Pget_alloc_time(hid_t plist_id, H5D_alloc_time_t *alloc_time );
int H5Pget_chunk(hid_t plist_id, int max_ndims, hsize_t dim[] );
herr_t H5Pget_chunk_opts(hid_t plist_id, unsigned *opts);
herr_t H5Pget_dset_no_attrs_hint(hid_t dcpl_id, hbool_t *minimize);
herr_t H5Pget_external(hid_t plist_id, unsigned idx, size_t name_size, char *name , off_t *offset , hsize_t *size );
int H5Pget_external_count(hid_t plist_id);
herr_t H5Pget_fill_time(hid_t plist_id, H5D_fill_time_t *fill_time );
herr_t H5Pget_fill_value(hid_t plist_id, hid_t type_id, void *value );
H5D_layout_t H5Pget_layout(hid_t plist_id);
herr_t H5Pget_virtual_count(hid_t dcpl_id, size_t *count );
ssize_t H5Pget_virtual_dsetname(hid_t dcpl_id, size_t index, char *name , size_t size);
ssize_t H5Pget_virtual_filename(hid_t dcpl_id, size_t index, char *name , size_t size);
hid_t H5Pget_virtual_srcspace(hid_t dcpl_id, size_t index);
hid_t H5Pget_virtual_vspace(hid_t dcpl_id, size_t index);
herr_t H5Pset_alloc_time(hid_t plist_id, H5D_alloc_time_t alloc_time);
herr_t H5Pset_chunk(hid_t plist_id, int ndims, const hsize_t dim[]);
herr_t H5Pset_chunk_opts(hid_t plist_id, unsigned opts);
herr_t H5Pset_dset_no_attrs_hint(hid_t dcpl_id, hbool_t minimize);
herr_t H5Pset_external(hid_t plist_id, const char *name, off_t offset, hsize_t size);
herr_t H5Pset_fill_time(hid_t plist_id, H5D_fill_time_t fill_time);
herr_t H5Pset_fill_value(hid_t plist_id, hid_t type_id, const void *value);
herr_t H5Pset_shuffle(hid_t plist_id);
herr_t H5Pset_layout(hid_t plist_id, H5D_layout_t layout);
herr_t H5Pset_nbit(hid_t plist_id);
herr_t H5Pset_scaleoffset(hid_t plist_id, H5Z_SO_scale_type_t scale_type, int scale_factor);
herr_t H5Pset_szip(hid_t plist_id, unsigned options_mask, unsigned pixels_per_block);
herr_t H5Pset_virtual(hid_t dcpl_id, hid_t vspace_id, const char *src_file_name, const char *src_dset_name, hid_t src_space_id);
herr_t H5Pget_append_flush(hid_t dapl_id, unsigned dims, hsize_t boundary[], H5D_append_cb_t *func, void **udata);
herr_t H5Pget_chunk_cache(hid_t dapl_id, size_t *rdcc_nslots , size_t *rdcc_nbytes , double *rdcc_w0 );
ssize_t H5Pget_efile_prefix(hid_t dapl_id, char *prefix , size_t size);
ssize_t H5Pget_virtual_prefix(hid_t dapl_id, char *prefix , size_t size);
herr_t H5Pget_virtual_printf_gap(hid_t dapl_id, hsize_t *gap_size);
herr_t H5Pget_virtual_view(hid_t dapl_id, H5D_vds_view_t *view);
herr_t H5Pset_append_flush(hid_t dapl_id, unsigned ndims, const hsize_t boundary[], H5D_append_cb_t func, void *udata);
herr_t H5Pset_chunk_cache(hid_t dapl_id, size_t rdcc_nslots, size_t rdcc_nbytes, double rdcc_w0);
herr_t H5Pset_efile_prefix(hid_t dapl_id, const char *prefix);
herr_t H5Pset_virtual_prefix(hid_t dapl_id, const char *prefix);
herr_t H5Pset_virtual_printf_gap(hid_t dapl_id, hsize_t gap_size);
herr_t H5Pset_virtual_view(hid_t dapl_id, H5D_vds_view_t view);
herr_t H5Pget_btree_ratios(hid_t plist_id, double *left , double *middle , double *right );
size_t H5Pget_buffer(hid_t plist_id, void **tconv , void **bkg );
ssize_t H5Pget_data_transform(hid_t plist_id, char *expression , size_t size);
H5Z_EDC_t H5Pget_edc_check(hid_t plist_id);
herr_t H5Pget_hyper_vector_size(hid_t fapl_id, size_t *size );
int H5Pget_preserve(hid_t plist_id);
herr_t H5Pget_type_conv_cb(hid_t dxpl_id, H5T_conv_except_func_t *op, void **operate_data);
herr_t H5Pget_vlen_mem_manager(hid_t plist_id, H5MM_allocate_t *alloc_func, void **alloc_info, H5MM_free_t *free_func, void **free_info);
herr_t H5Pset_btree_ratios(hid_t plist_id, double left, double middle, double right);
herr_t H5Pset_buffer(hid_t plist_id, size_t size, void *tconv, void *bkg);
herr_t H5Pset_data_transform(hid_t plist_id, const char *expression);
herr_t H5Pset_edc_check(hid_t plist_id, H5Z_EDC_t check);
herr_t H5Pset_filter_callback(hid_t plist_id, H5Z_filter_func_t func, void *op_data);
herr_t H5Pset_hyper_vector_size(hid_t plist_id, size_t size);
herr_t H5Pset_preserve(hid_t plist_id, hbool_t status);
herr_t H5Pset_type_conv_cb(hid_t dxpl_id, H5T_conv_except_func_t op, void *operate_data);
herr_t H5Pset_vlen_mem_manager(hid_t plist_id, H5MM_allocate_t alloc_func, void *alloc_info, H5MM_free_t free_func, void *free_info);
herr_t H5Pget_create_intermediate_group(hid_t plist_id, unsigned *crt_intmd );
herr_t H5Pset_create_intermediate_group(hid_t plist_id, unsigned crt_intmd);
herr_t H5Pget_est_link_info(hid_t plist_id, unsigned *est_num_entries , unsigned *est_name_len );
herr_t H5Pget_link_creation_order(hid_t plist_id, unsigned *crt_order_flags );
herr_t H5Pget_link_phase_change(hid_t plist_id, unsigned *max_compact , unsigned *min_dense );
herr_t H5Pget_local_heap_size_hint(hid_t plist_id, size_t *size_hint );
herr_t H5Pset_est_link_info(hid_t plist_id, unsigned est_num_entries, unsigned est_name_len);
herr_t H5Pset_link_creation_order(hid_t plist_id, unsigned crt_order_flags);
herr_t H5Pset_link_phase_change(hid_t plist_id, unsigned max_compact, unsigned min_dense);
herr_t H5Pset_local_heap_size_hint(hid_t plist_id, size_t size_hint);
herr_t H5Pget_char_encoding(hid_t plist_id, H5T_cset_t *encoding );
herr_t H5Pset_char_encoding(hid_t plist_id, H5T_cset_t encoding);
herr_t H5Pget_elink_acc_flags(hid_t lapl_id, unsigned *flags);
herr_t H5Pget_elink_cb(hid_t lapl_id, H5L_elink_traverse_t *func, void **op_data);
hid_t H5Pget_elink_fapl(hid_t lapl_id);
ssize_t H5Pget_elink_prefix(hid_t plist_id, char *prefix, size_t size);
herr_t H5Pget_nlinks(hid_t plist_id, size_t *nlinks);
herr_t H5Pset_elink_acc_flags(hid_t lapl_id, unsigned flags);
herr_t H5Pset_elink_cb(hid_t lapl_id, H5L_elink_traverse_t func, void *op_data);
herr_t H5Pset_elink_fapl(hid_t lapl_id, hid_t fapl_id);
herr_t H5Pset_elink_prefix(hid_t plist_id, const char *prefix);
herr_t H5Pset_nlinks(hid_t plist_id, size_t nlinks);
herr_t H5Padd_merge_committed_dtype_path(hid_t plist_id, const char *path);
herr_t H5Pfree_merge_committed_dtype_paths(hid_t plist_id);
herr_t H5Pget_copy_object(hid_t plist_id, unsigned *copy_options );
herr_t H5Pget_mcdt_search_cb(hid_t plist_id, H5O_mcdt_search_cb_t *func, void **op_data);
herr_t H5Pset_copy_object(hid_t plist_id, unsigned copy_options);
herr_t H5Pset_mcdt_search_cb(hid_t plist_id, H5O_mcdt_search_cb_t func, void *op_data);
/* #define H5P_NO_CLASS H5P_ROOT ### string, not number "H5P_ROOT" */
herr_t H5Pregister1(hid_t cls_id, const char *name, size_t size, void *def_value, H5P_prp_create_func_t prp_create, H5P_prp_set_func_t prp_set, H5P_prp_get_func_t prp_get, H5P_prp_delete_func_t prp_del, H5P_prp_copy_func_t prp_copy, H5P_prp_close_func_t prp_close);
herr_t H5Pinsert1(hid_t plist_id, const char *name, size_t size, void *value, H5P_prp_set_func_t prp_set, H5P_prp_get_func_t prp_get, H5P_prp_delete_func_t prp_delete, H5P_prp_copy_func_t prp_copy, H5P_prp_close_func_t prp_close);
H5Z_filter_t H5Pget_filter1(hid_t plist_id, unsigned filter, unsigned int *flags , size_t *cd_nelmts , unsigned cd_values[] , size_t namelen, char name[]);
herr_t H5Pget_filter_by_id1(hid_t plist_id, H5Z_filter_t id, unsigned int *flags , size_t *cd_nelmts , unsigned cd_values[] , size_t namelen, char name[] );
herr_t H5Pget_version(hid_t plist_id, unsigned *boot , unsigned *freelist , unsigned *stab , unsigned *shhdr );
herr_t H5Pset_file_space(hid_t plist_id, H5F_file_space_type_t strategy, hsize_t threshold);
herr_t H5Pget_file_space(hid_t plist_id, H5F_file_space_type_t *strategy, hsize_t *threshold);
/* ++ END   /usr/include/hdf5/serial/H5Ppublic.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5PLpublic.h */
enum { H5PLpublic_H = 1 };
/* +++ BEGIN /usr/include/hdf5/serial/H5public.h */
/* +++ END   /usr/include/hdf5/serial/H5public.h */
/* #define H5PL_NO_PLUGIN "::" ### string, not number "\"::\"" */
typedef enum H5PL_type_t { H5PL_TYPE_ERROR = -1, H5PL_TYPE_FILTER = 0, H5PL_TYPE_NONE = 1 } H5PL_type_t;
enum { H5PL_FILTER_PLUGIN = 1 };
enum { H5PL_ALL_PLUGIN = 65535 };
herr_t H5PLset_loading_state(unsigned int plugin_control_mask);
herr_t H5PLget_loading_state(unsigned int *plugin_control_mask );
herr_t H5PLappend(const char *search_path);
herr_t H5PLprepend(const char *search_path);
herr_t H5PLreplace(const char *search_path, unsigned int index);
herr_t H5PLinsert(const char *search_path, unsigned int index);
herr_t H5PLremove(unsigned int index);
ssize_t H5PLget(unsigned int index, char *path_buf , size_t buf_size);
herr_t H5PLsize(unsigned int *num_paths );
/* ++ END   /usr/include/hdf5/serial/H5PLpublic.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5Rpublic.h */
enum { H5Rpublic_H = 1 };
/* +++ BEGIN /usr/include/hdf5/serial/H5public.h */
/* +++ END   /usr/include/hdf5/serial/H5public.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5Gpublic.h */
/* +++ END   /usr/include/hdf5/serial/H5Gpublic.h */
/* +++ BEGIN /usr/include/hdf5/serial/H5Ipublic.h */
/* +++ END   /usr/include/hdf5/serial/H5Ipublic.h */
/* #define H5R_OBJ_REF_BUF_SIZE sizeof(haddr_t) ### string, not number "sizeof(haddr_t)" */
/* #define H5R_DSET_REG_REF_BUF_SIZE (sizeof(haddr_t) + 4) ### string, not number "(sizeof(haddr_t) + 4)" */
typedef enum { H5R_BADTYPE = (-1), H5R_OBJECT, H5R_DATASET_REGION, H5R_MAXTYPE } H5R_type_t;
typedef haddr_t hobj_ref_t;
typedef unsigned char hdset_reg_ref_t[(sizeof(haddr_t) + 4)];
herr_t H5Rcreate(void *ref, hid_t loc_id, const char *name, H5R_type_t ref_type, hid_t space_id);
hid_t H5Rdereference2(hid_t obj_id, hid_t oapl_id, H5R_type_t ref_type, const void *ref);
hid_t H5Rget_region(hid_t dataset, H5R_type_t ref_type, const void *ref);
herr_t H5Rget_obj_type2(hid_t id, H5R_type_t ref_type, const void *_ref, H5O_type_t *obj_type);
ssize_t H5Rget_name(hid_t loc_id, H5R_type_t ref_type, const void *ref, char *name , size_t size);
H5G_obj_t H5Rget_obj_type1(hid_t id, H5R_type_t ref_type, const void *ref);
hid_t H5Rdereference1(hid_t obj_id, H5R_type_t ref_type, const void *ref);
/* ++ END   /usr/include/hdf5/serial/H5Rpublic.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5Spublic.h */
/* ++ END   /usr/include/hdf5/serial/H5Spublic.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5Tpublic.h */
/* ++ END   /usr/include/hdf5/serial/H5Tpublic.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5Zpublic.h */
/* ++ END   /usr/include/hdf5/serial/H5Zpublic.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5FDcore.h */
enum { H5FDcore_H = 1 };
/* #define H5FD_CORE (H5FD_core_init()) ### string, not number "(H5FD_core_init())" */
hid_t H5FD_core_init(void);
herr_t H5Pset_fapl_core(hid_t fapl_id, size_t increment, hbool_t backing_store);
herr_t H5Pget_fapl_core(hid_t fapl_id, size_t *increment , hbool_t *backing_store );
/* ++ END   /usr/include/hdf5/serial/H5FDcore.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5FDdirect.h */
enum { H5FDdirect_H = 1 };
enum { H5FD_DIRECT = -1 };
/* ++ END   /usr/include/hdf5/serial/H5FDdirect.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5FDfamily.h */
enum { H5FDfamily_H = 1 };
/* #define H5FD_FAMILY (H5FD_family_init()) ### string, not number "(H5FD_family_init())" */
hid_t H5FD_family_init(void);
herr_t H5Pset_fapl_family(hid_t fapl_id, hsize_t memb_size, hid_t memb_fapl_id);
herr_t H5Pget_fapl_family(hid_t fapl_id, hsize_t *memb_size , hid_t *memb_fapl_id );
/* ++ END   /usr/include/hdf5/serial/H5FDfamily.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5FDhdfs.h */
enum { H5FDhdfs_H = 1 };
enum { H5FD_HDFS = -1 };
enum { H5FD__CURR_HDFS_FAPL_T_VERSION = 1 };
enum { H5FD__HDFS_NODE_NAME_SPACE = 128 };
enum { H5FD__HDFS_USER_NAME_SPACE = 128 };
enum { H5FD__HDFS_KERB_CACHE_PATH_SPACE = 128 };
typedef struct H5FD_hdfs_fapl_t {
	int32_t version;
	char namenode_name[128 + 1];
	int32_t namenode_port;
	char user_name[128 + 1];
	char kerberos_ticket_cache[128 + 1];
	int32_t stream_buffer_size;
} H5FD_hdfs_fapl_t;
hid_t H5FD_hdfs_init(void);
herr_t H5Pget_fapl_hdfs(hid_t fapl_id, H5FD_hdfs_fapl_t *fa_out);
herr_t H5Pset_fapl_hdfs(hid_t fapl_id, H5FD_hdfs_fapl_t *fa);
/* ++ END   /usr/include/hdf5/serial/H5FDhdfs.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5FDlog.h */
enum { H5FDlog_H = 1 };
/* #define H5FD_LOG (H5FD_log_init()) ### string, not number "(H5FD_log_init())" */
enum { H5FD_LOG_TRUNCATE = 1 };
enum { H5FD_LOG_META_IO = 1 };
enum { H5FD_LOG_LOC_READ = 2 };
enum { H5FD_LOG_LOC_WRITE = 4 };
enum { H5FD_LOG_LOC_SEEK = 8 };
enum { H5FD_LOG_LOC_IO = 14 };
enum { H5FD_LOG_FILE_READ = 16 };
enum { H5FD_LOG_FILE_WRITE = 32 };
enum { H5FD_LOG_FILE_IO = 48 };
enum { H5FD_LOG_FLAVOR = 64 };
enum { H5FD_LOG_NUM_READ = 128 };
enum { H5FD_LOG_NUM_WRITE = 256 };
enum { H5FD_LOG_NUM_SEEK = 512 };
enum { H5FD_LOG_NUM_TRUNCATE = 1024 };
enum { H5FD_LOG_NUM_IO = 1920 };
enum { H5FD_LOG_TIME_OPEN = 2048 };
enum { H5FD_LOG_TIME_STAT = 4096 };
enum { H5FD_LOG_TIME_READ = 8192 };
enum { H5FD_LOG_TIME_WRITE = 16384 };
enum { H5FD_LOG_TIME_SEEK = 32768 };
enum { H5FD_LOG_TIME_TRUNCATE = 65536 };
enum { H5FD_LOG_TIME_CLOSE = 131072 };
enum { H5FD_LOG_TIME_IO = 260096 };
enum { H5FD_LOG_ALLOC = 262144 };
enum { H5FD_LOG_FREE = 524288 };
enum { H5FD_LOG_ALL = 1048575 };
hid_t H5FD_log_init(void);
herr_t H5Pset_fapl_log(hid_t fapl_id, const char *logfile, unsigned long long flags, size_t buf_size);
/* ++ END   /usr/include/hdf5/serial/H5FDlog.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5FDmirror.h */
enum { H5FDmirror_H = 1 };
enum { H5FD_MIRROR = 0 };
/* ++ END   /usr/include/hdf5/serial/H5FDmirror.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5FDmpi.h */
enum { H5FDmpi_H = 1 };
enum { H5D_ONE_LINK_CHUNK_IO_THRESHOLD = 0 };
enum { H5D_MULTI_CHUNK_IO_COL_THRESHOLD = 60 };
typedef enum H5FD_mpio_xfer_t { H5FD_MPIO_INDEPENDENT = 0, H5FD_MPIO_COLLECTIVE } H5FD_mpio_xfer_t;
typedef enum H5FD_mpio_chunk_opt_t { H5FD_MPIO_CHUNK_DEFAULT = 0, H5FD_MPIO_CHUNK_ONE_IO, H5FD_MPIO_CHUNK_MULTI_IO } H5FD_mpio_chunk_opt_t;
typedef enum H5FD_mpio_collective_opt_t { H5FD_MPIO_COLLECTIVE_IO = 0, H5FD_MPIO_INDIVIDUAL_IO } H5FD_mpio_collective_opt_t;
/* +++ BEGIN /usr/include/hdf5/serial/H5FDmpio.h */
enum { H5FDmpio_H = 1 };
enum { H5FD_MPIO = -1 };
/* +++ END   /usr/include/hdf5/serial/H5FDmpio.h */
/* ++ END   /usr/include/hdf5/serial/H5FDmpi.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5FDmulti.h */
enum { H5FDmulti_H = 1 };
/* #define H5FD_MULTI (H5FD_multi_init()) ### string, not number "(H5FD_multi_init())" */
hid_t H5FD_multi_init(void);
herr_t H5Pset_fapl_multi(hid_t fapl_id, const H5FD_mem_t *memb_map, const hid_t *memb_fapl, const char *const *memb_name, const haddr_t *memb_addr, hbool_t relax);
herr_t H5Pget_fapl_multi(hid_t fapl_id, H5FD_mem_t *memb_map , hid_t *memb_fapl , char **memb_name , haddr_t *memb_addr , hbool_t *relax );
herr_t H5Pset_fapl_split(hid_t fapl, const char *meta_ext, hid_t meta_plist_id, const char *raw_ext, hid_t raw_plist_id);
/* ++ END   /usr/include/hdf5/serial/H5FDmulti.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5FDros3.h */
enum { H5FDros3_H = 1 };
/* #define H5FD_ROS3 (H5FD_ros3_init()) ### string, not number "(H5FD_ros3_init())" */
enum { H5FD_CURR_ROS3_FAPL_T_VERSION = 1 };
enum { H5FD_ROS3_MAX_REGION_LEN = 32 };
enum { H5FD_ROS3_MAX_SECRET_ID_LEN = 128 };
enum { H5FD_ROS3_MAX_SECRET_KEY_LEN = 128 };
typedef struct H5FD_ros3_fapl_t {
	int32_t version;
	hbool_t authenticate;
	char aws_region[32 + 1];
	char secret_id[128 + 1];
	char secret_key[128 + 1];
} H5FD_ros3_fapl_t;
hid_t H5FD_ros3_init(void);
herr_t H5Pget_fapl_ros3(hid_t fapl_id, H5FD_ros3_fapl_t *fa_out);
herr_t H5Pset_fapl_ros3(hid_t fapl_id, H5FD_ros3_fapl_t *fa);
/* ++ END   /usr/include/hdf5/serial/H5FDros3.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5FDsec2.h */
enum { H5FDsec2_H = 1 };
/* #define H5FD_SEC2 (H5FD_sec2_init()) ### string, not number "(H5FD_sec2_init())" */
hid_t H5FD_sec2_init(void);
herr_t H5Pset_fapl_sec2(hid_t fapl_id);
/* ++ END   /usr/include/hdf5/serial/H5FDsec2.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5FDsplitter.h */
enum { H5FDsplitter_H = 1 };
/* #define H5FD_SPLITTER (H5FD_splitter_init()) ### string, not number "(H5FD_splitter_init())" */
enum { H5FD_CURR_SPLITTER_VFD_CONFIG_VERSION = 1 };
enum { H5FD_SPLITTER_PATH_MAX = 4096 };
enum { H5FD_SPLITTER_MAGIC = 730949760 };
typedef struct H5FD_splitter_vfd_config_t {
	int32_t magic;
	unsigned int version;
	hid_t rw_fapl_id;
	hid_t wo_fapl_id;
	char wo_path[4096 + 1];
	char log_file_path[4096 + 1];
	hbool_t ignore_wo_errs;
} H5FD_splitter_vfd_config_t;
hid_t H5FD_splitter_init(void);
herr_t H5Pset_fapl_splitter(hid_t fapl_id, H5FD_splitter_vfd_config_t *config_ptr);
herr_t H5Pget_fapl_splitter(hid_t fapl_id, H5FD_splitter_vfd_config_t *config_ptr);
/* ++ END   /usr/include/hdf5/serial/H5FDsplitter.h */
/* ++ BEGIN /usr/include/hdf5/serial/H5FDstdio.h */
enum { H5FDstdio_H = 1 };
/* +++ BEGIN /usr/include/hdf5/serial/H5Ipublic.h */
/* +++ END   /usr/include/hdf5/serial/H5Ipublic.h */
/* #define H5FD_STDIO (H5FD_stdio_init()) ### string, not number "(H5FD_stdio_init())" */
hid_t H5FD_stdio_init(void);
herr_t H5Pset_fapl_stdio(hid_t fapl_id);
/* ++ END   /usr/include/hdf5/serial/H5FDstdio.h */
/* + END   /usr/include/hdf5/serial/hdf5.h */
]]
return require 'ffi.load' 'hdf5'	-- pkg-config --libs hdf5
