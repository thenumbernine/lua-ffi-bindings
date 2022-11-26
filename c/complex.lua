local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/c++/12/complex.h */
/* BEGIN /usr/include/x86_64-linux-gnu/c++/12/bits/c++config.h */
enum { _GLIBCXX_CXX_CONFIG_H = 1 };
enum { _GLIBCXX_RELEASE = 12 };
enum { __GLIBCXX__ = 20220819 };
/* # define _GLIBCXX_PURE __attribute__ ((__pure__)) ### string, not number "__attribute__ ((__pure__))" */
/* # define _GLIBCXX_CONST __attribute__ ((__const__)) ### string, not number "__attribute__ ((__const__))" */
/* # define _GLIBCXX_NORETURN __attribute__ ((__noreturn__)) ### string, not number "__attribute__ ((__noreturn__))" */
/* #  define _GLIBCXX_NOTHROW __attribute__((__nothrow__)) ### string, not number "__attribute__((__nothrow__))" */
enum { _GLIBCXX_HAVE_ATTRIBUTE_VISIBILITY = 1 };
enum { _GLIBCXX_USE_DEPRECATED = 1 };
enum { _GLIBCXX_DEPRECATED = 1 };
enum { _GLIBCXX11_DEPRECATED = 1 };
enum { _GLIBCXX14_DEPRECATED = 1 };
enum { _GLIBCXX17_DEPRECATED = 1 };
/* # define _GLIBCXX_ABI_TAG_CXX11 __attribute ((__abi_tag__ ("cxx11"))) ### string, not number "__attribute ((__abi_tag__ (\"cxx11\")))" */
enum { _GLIBCXX_NODISCARD = 1 };
enum { _GLIBCXX_BEGIN_EXTERN_C = 1 };
enum { _GLIBCXX_END_EXTERN_C = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/c++/12/bits/os_defines.h */
enum { _GLIBCXX_OS_DEFINES = 1 };
enum { __NO_CTYPE = 1 };
/* BEGIN /usr/include/features.h */
]] require 'ffi.c.features' ffi.cdef[[
/* END /usr/include/features.h */
enum { _GLIBCXX_NO_OBSOLETE_ISINF_ISNAN_DYNAMIC = 1 };
/* # define _GLIBCXX_NATIVE_THREAD_ID pthread_self() ### string, not number "pthread_self()" */
enum { _GLIBCXX_GTHREAD_USE_WEAK = 0 };
/* END /usr/include/x86_64-1-gnu/c++/12/bits/os_defines.h */
/* BEGIN /usr/include/x86_64-linux-gnu/c++/12/bits/cpu_defines.h */
enum { _GLIBCXX_CPU_DEFINES = 1 };
/* END /usr/include/x86_64-1-gnu/c++/12/bits/cpu_defines.h */
enum { _GLIBCXX_WEAK_DEFINITION = 1 };
enum { _GLIBCXX_USE_WEAK_REF = 0 };
enum { _GLIBCXX_TXN_SAFE = 1 };
enum { _GLIBCXX_TXN_SAFE_DYN = 1 };
enum { _GLIBCXX_FAST_MATH = 0 };
enum { _GLIBCXX_USE_C99_MATH = 0 };
enum { _GLIBCXX_USE_C99_COMPLEX = 0 };
enum { _GLIBCXX_USE_C99_STDIO = 0 };
enum { _GLIBCXX_USE_C99_STDLIB = 0 };
enum { _GLIBCXX_USE_C99_WCHAR = 0 };
enum { _GLIBCXX_USE_FLOAT128 = 1 };
enum { _GLIBCXX_FLOAT_IS_IEEE_BINARY32 = 1 };
enum { _GLIBCXX_DOUBLE_IS_IEEE_BINARY64 = 1 };
enum { _GLIBCXX_HAVE_ACOSF = 1 };
enum { _GLIBCXX_HAVE_ACOSL = 1 };
enum { _GLIBCXX_HAVE_ALIGNED_ALLOC = 1 };
enum { _GLIBCXX_HAVE_ARC4RANDOM = 1 };
enum { _GLIBCXX_HAVE_ARPA_INET_H = 1 };
enum { _GLIBCXX_HAVE_ASINF = 1 };
enum { _GLIBCXX_HAVE_ASINL = 1 };
enum { _GLIBCXX_HAVE_AS_SYMVER_DIRECTIVE = 1 };
enum { _GLIBCXX_HAVE_ATAN2F = 1 };
enum { _GLIBCXX_HAVE_ATAN2L = 1 };
enum { _GLIBCXX_HAVE_ATANF = 1 };
enum { _GLIBCXX_HAVE_ATANL = 1 };
enum { _GLIBCXX_HAVE_ATOMIC_LOCK_POLICY = 1 };
enum { _GLIBCXX_HAVE_AT_QUICK_EXIT = 1 };
enum { _GLIBCXX_HAVE_CEILF = 1 };
enum { _GLIBCXX_HAVE_CEILL = 1 };
enum { _GLIBCXX_HAVE_COMPLEX_H = 1 };
enum { _GLIBCXX_HAVE_COSF = 1 };
enum { _GLIBCXX_HAVE_COSHF = 1 };
enum { _GLIBCXX_HAVE_COSHL = 1 };
enum { _GLIBCXX_HAVE_COSL = 1 };
enum { _GLIBCXX_HAVE_DECL_STRNLEN = 1 };
enum { _GLIBCXX_HAVE_DIRENT_H = 1 };
enum { _GLIBCXX_HAVE_DIRFD = 1 };
enum { _GLIBCXX_HAVE_DLFCN_H = 1 };
enum { _GLIBCXX_HAVE_ENDIAN_H = 1 };
enum { _GLIBCXX_HAVE_EXCEPTION_PTR_SINCE_GCC46 = 1 };
enum { _GLIBCXX_HAVE_EXECINFO_H = 1 };
enum { _GLIBCXX_HAVE_EXPF = 1 };
enum { _GLIBCXX_HAVE_EXPL = 1 };
enum { _GLIBCXX_HAVE_FABSF = 1 };
enum { _GLIBCXX_HAVE_FABSL = 1 };
enum { _GLIBCXX_HAVE_FCNTL_H = 1 };
enum { _GLIBCXX_HAVE_FDOPENDIR = 1 };
enum { _GLIBCXX_HAVE_FENV_H = 1 };
enum { _GLIBCXX_HAVE_FINITE = 1 };
enum { _GLIBCXX_HAVE_FINITEF = 1 };
enum { _GLIBCXX_HAVE_FINITEL = 1 };
enum { _GLIBCXX_HAVE_FLOAT_H = 1 };
enum { _GLIBCXX_HAVE_FLOORF = 1 };
enum { _GLIBCXX_HAVE_FLOORL = 1 };
enum { _GLIBCXX_HAVE_FMODF = 1 };
enum { _GLIBCXX_HAVE_FMODL = 1 };
enum { _GLIBCXX_HAVE_FREXPF = 1 };
enum { _GLIBCXX_HAVE_FREXPL = 1 };
enum { _GLIBCXX_HAVE_GETENTROPY = 1 };
enum { _GLIBCXX_HAVE_GETIPINFO = 1 };
enum { _GLIBCXX_HAVE_GETS = 1 };
enum { _GLIBCXX_HAVE_HYPOT = 1 };
enum { _GLIBCXX_HAVE_HYPOTF = 1 };
enum { _GLIBCXX_HAVE_HYPOTL = 1 };
enum { _GLIBCXX_HAVE_ICONV = 1 };
enum { _GLIBCXX_HAVE_INTTYPES_H = 1 };
enum { _GLIBCXX_HAVE_ISINFF = 1 };
enum { _GLIBCXX_HAVE_ISINFL = 1 };
enum { _GLIBCXX_HAVE_ISNANF = 1 };
enum { _GLIBCXX_HAVE_ISNANL = 1 };
enum { _GLIBCXX_HAVE_ISWBLANK = 1 };
enum { _GLIBCXX_HAVE_LC_MESSAGES = 1 };
enum { _GLIBCXX_HAVE_LDEXPF = 1 };
enum { _GLIBCXX_HAVE_LDEXPL = 1 };
enum { _GLIBCXX_HAVE_LIBINTL_H = 1 };
enum { _GLIBCXX_HAVE_LIMIT_AS = 1 };
enum { _GLIBCXX_HAVE_LIMIT_DATA = 1 };
enum { _GLIBCXX_HAVE_LIMIT_FSIZE = 1 };
enum { _GLIBCXX_HAVE_LIMIT_RSS = 1 };
enum { _GLIBCXX_HAVE_LIMIT_VMEM = 0 };
enum { _GLIBCXX_HAVE_LINK = 1 };
enum { _GLIBCXX_HAVE_LINK_H = 1 };
enum { _GLIBCXX_HAVE_LINUX_FUTEX = 1 };
enum { _GLIBCXX_HAVE_LINUX_RANDOM_H = 1 };
enum { _GLIBCXX_HAVE_LINUX_TYPES_H = 1 };
enum { _GLIBCXX_HAVE_LOCALE_H = 1 };
enum { _GLIBCXX_HAVE_LOG10F = 1 };
enum { _GLIBCXX_HAVE_LOG10L = 1 };
enum { _GLIBCXX_HAVE_LOGF = 1 };
enum { _GLIBCXX_HAVE_LOGL = 1 };
enum { _GLIBCXX_HAVE_MBSTATE_T = 1 };
enum { _GLIBCXX_HAVE_MEMALIGN = 1 };
enum { _GLIBCXX_HAVE_MEMORY_H = 1 };
enum { _GLIBCXX_HAVE_MODF = 1 };
enum { _GLIBCXX_HAVE_MODFF = 1 };
enum { _GLIBCXX_HAVE_MODFL = 1 };
enum { _GLIBCXX_HAVE_NETDB_H = 1 };
enum { _GLIBCXX_HAVE_NETINET_IN_H = 1 };
enum { _GLIBCXX_HAVE_NETINET_TCP_H = 1 };
enum { _GLIBCXX_HAVE_OPENAT = 1 };
enum { _GLIBCXX_HAVE_POLL = 1 };
enum { _GLIBCXX_HAVE_POLL_H = 1 };
enum { _GLIBCXX_HAVE_POSIX_MEMALIGN = 1 };
enum { _GLIBCXX_HAVE_POSIX_SEMAPHORE = 1 };
enum { _GLIBCXX_HAVE_POWF = 1 };
enum { _GLIBCXX_HAVE_POWL = 1 };
enum { _GLIBCXX_HAVE_QUICK_EXIT = 1 };
enum { _GLIBCXX_HAVE_READLINK = 1 };
enum { _GLIBCXX_HAVE_SECURE_GETENV = 1 };
enum { _GLIBCXX_HAVE_SETENV = 1 };
enum { _GLIBCXX_HAVE_SINCOS = 1 };
enum { _GLIBCXX_HAVE_SINCOSF = 1 };
enum { _GLIBCXX_HAVE_SINCOSL = 1 };
enum { _GLIBCXX_HAVE_SINF = 1 };
enum { _GLIBCXX_HAVE_SINHF = 1 };
enum { _GLIBCXX_HAVE_SINHL = 1 };
enum { _GLIBCXX_HAVE_SINL = 1 };
enum { _GLIBCXX_HAVE_SOCKATMARK = 1 };
enum { _GLIBCXX_HAVE_SQRTF = 1 };
enum { _GLIBCXX_HAVE_SQRTL = 1 };
enum { _GLIBCXX_HAVE_STDALIGN_H = 1 };
enum { _GLIBCXX_HAVE_STDBOOL_H = 1 };
enum { _GLIBCXX_HAVE_STDINT_H = 1 };
enum { _GLIBCXX_HAVE_STDLIB_H = 1 };
enum { _GLIBCXX_HAVE_STRERROR_L = 1 };
enum { _GLIBCXX_HAVE_STRERROR_R = 1 };
enum { _GLIBCXX_HAVE_STRINGS_H = 1 };
enum { _GLIBCXX_HAVE_STRING_H = 1 };
enum { _GLIBCXX_HAVE_STRTOF = 1 };
enum { _GLIBCXX_HAVE_STRTOLD = 1 };
enum { _GLIBCXX_HAVE_STRUCT_DIRENT_D_TYPE = 1 };
enum { _GLIBCXX_HAVE_STRXFRM_L = 1 };
enum { _GLIBCXX_HAVE_SYMLINK = 1 };
enum { _GLIBCXX_HAVE_SYMVER_SYMBOL_RENAMING_RUNTIME_SUPPORT = 1 };
enum { _GLIBCXX_HAVE_SYS_IOCTL_H = 1 };
enum { _GLIBCXX_HAVE_SYS_IPC_H = 1 };
enum { _GLIBCXX_HAVE_SYS_PARAM_H = 1 };
enum { _GLIBCXX_HAVE_SYS_RESOURCE_H = 1 };
enum { _GLIBCXX_HAVE_SYS_SDT_H = 1 };
enum { _GLIBCXX_HAVE_SYS_SEM_H = 1 };
enum { _GLIBCXX_HAVE_SYS_SOCKET_H = 1 };
enum { _GLIBCXX_HAVE_SYS_STATVFS_H = 1 };
enum { _GLIBCXX_HAVE_SYS_STAT_H = 1 };
enum { _GLIBCXX_HAVE_SYS_SYSINFO_H = 1 };
enum { _GLIBCXX_HAVE_SYS_TIME_H = 1 };
enum { _GLIBCXX_HAVE_SYS_TYPES_H = 1 };
enum { _GLIBCXX_HAVE_SYS_UIO_H = 1 };
enum { _GLIBCXX_HAVE_S_ISREG = 1 };
enum { _GLIBCXX_HAVE_TANF = 1 };
enum { _GLIBCXX_HAVE_TANHF = 1 };
enum { _GLIBCXX_HAVE_TANHL = 1 };
enum { _GLIBCXX_HAVE_TANL = 1 };
enum { _GLIBCXX_HAVE_TGMATH_H = 1 };
enum { _GLIBCXX_HAVE_TIMESPEC_GET = 1 };
enum { _GLIBCXX_HAVE_TLS = 1 };
enum { _GLIBCXX_HAVE_TRUNCATE = 1 };
enum { _GLIBCXX_HAVE_UCHAR_H = 1 };
enum { _GLIBCXX_HAVE_UNISTD_H = 1 };
enum { _GLIBCXX_HAVE_UNLINKAT = 1 };
enum { _GLIBCXX_HAVE_USELOCALE = 1 };
enum { _GLIBCXX_HAVE_UTIME_H = 1 };
enum { _GLIBCXX_HAVE_VFWSCANF = 1 };
enum { _GLIBCXX_HAVE_VSWSCANF = 1 };
enum { _GLIBCXX_HAVE_VWSCANF = 1 };
enum { _GLIBCXX_HAVE_WCHAR_H = 1 };
enum { _GLIBCXX_HAVE_WCSTOF = 1 };
enum { _GLIBCXX_HAVE_WCTYPE_H = 1 };
enum { _GLIBCXX_HAVE_WRITEV = 1 };
enum { _GLIBCXX_HAVE___CXA_THREAD_ATEXIT_IMPL = 1 };
enum { _GLIBCXX_ICONV_CONST = 1 };
/* #define _GLIBCXX_LT_OBJDIR ".libs/" ### string, not number "\".libs/\"" */
/* #define _GLIBCXX_PACKAGE_BUGREPORT "" ### string, not number "\"\"" */
/* #define _GLIBCXX_PACKAGE_NAME "package-unused" ### string, not number "\"package-unused\"" */
/* #define _GLIBCXX_PACKAGE_STRING "package-unused version-unused" ### string, not number "\"package-unused version-unused\"" */
/* #define _GLIBCXX_PACKAGE_TARNAME "libstdc++" ### string, not number "\"libstdc++\"" */
/* #define _GLIBCXX_PACKAGE_URL "" ### string, not number "\"\"" */
/* #define _GLIBCXX_PACKAGE__GLIBCXX_VERSION "version-unused" ### string, not number "\"version-unused\"" */
enum { _GLIBCXX_STDC_HEADERS = 1 };
enum { _GLIBCXX_DARWIN_USE_64_BIT_INODE = 1 };
enum { _GLIBCXX11_USE_C99_COMPLEX = 1 };
enum { _GLIBCXX11_USE_C99_MATH = 1 };
enum { _GLIBCXX11_USE_C99_STDIO = 1 };
enum { _GLIBCXX11_USE_C99_STDLIB = 1 };
enum { _GLIBCXX11_USE_C99_WCHAR = 1 };
enum { _GLIBCXX98_USE_C99_COMPLEX = 1 };
enum { _GLIBCXX98_USE_C99_MATH = 1 };
enum { _GLIBCXX98_USE_C99_STDIO = 1 };
enum { _GLIBCXX98_USE_C99_STDLIB = 1 };
enum { _GLIBCXX98_USE_C99_WCHAR = 1 };
enum { _GLIBCXX_ATOMIC_BUILTINS = 1 };
enum { _GLIBCXX_FULLY_DYNAMIC_STRING = 0 };
enum { _GLIBCXX_HAS_GTHREADS = 1 };
enum { _GLIBCXX_HOSTED = 1 };
enum { _GLIBCXX_MANGLE_SIZE_T = 0 };
enum { _GLIBCXX_RES_LIMITS = 1 };
enum { _GLIBCXX_STDIO_EOF = -1 };
enum { _GLIBCXX_STDIO_SEEK_CUR = 1 };
enum { _GLIBCXX_STDIO_SEEK_END = 2 };
enum { _GLIBCXX_SYMVER = 1 };
enum { _GLIBCXX_SYMVER_GNU = 1 };
enum { _GLIBCXX_USE_C11_UCHAR_CXX11 = 1 };
enum { _GLIBCXX_USE_C99 = 1 };
enum { _GLIBCXX_USE_C99_COMPLEX_TR1 = 1 };
enum { _GLIBCXX_USE_C99_CTYPE_TR1 = 1 };
enum { _GLIBCXX_USE_C99_FENV_TR1 = 1 };
enum { _GLIBCXX_USE_C99_INTTYPES_TR1 = 1 };
enum { _GLIBCXX_USE_C99_INTTYPES_WCHAR_T_TR1 = 1 };
enum { _GLIBCXX_USE_C99_MATH_TR1 = 1 };
enum { _GLIBCXX_USE_C99_STDINT_TR1 = 1 };
enum { _GLIBCXX_USE_CLOCK_MONOTONIC = 1 };
enum { _GLIBCXX_USE_CLOCK_REALTIME = 1 };
enum { _GLIBCXX_USE_DECIMAL_FLOAT = 1 };
enum { _GLIBCXX_USE_DEV_RANDOM = 1 };
enum { _GLIBCXX_USE_FCHMOD = 1 };
enum { _GLIBCXX_USE_FCHMODAT = 1 };
enum { _GLIBCXX_USE_GETTIMEOFDAY = 1 };
enum { _GLIBCXX_USE_GET_NPROCS = 1 };
enum { _GLIBCXX_USE_LFS = 1 };
enum { _GLIBCXX_USE_LONG_LONG = 1 };
enum { _GLIBCXX_USE_LSTAT = 1 };
enum { _GLIBCXX_USE_NANOSLEEP = 1 };
enum { _GLIBCXX_USE_NLS = 1 };
enum { _GLIBCXX_USE_PTHREAD_COND_CLOCKWAIT = 1 };
enum { _GLIBCXX_USE_PTHREAD_MUTEX_CLOCKLOCK = 1 };
enum { _GLIBCXX_USE_PTHREAD_RWLOCK_CLOCKLOCK = 1 };
enum { _GLIBCXX_USE_PTHREAD_RWLOCK_T = 1 };
enum { _GLIBCXX_USE_RANDOM_TR1 = 1 };
enum { _GLIBCXX_USE_REALPATH = 1 };
enum { _GLIBCXX_USE_SCHED_YIELD = 1 };
enum { _GLIBCXX_USE_SC_NPROCESSORS_ONLN = 1 };
enum { _GLIBCXX_USE_SENDFILE = 1 };
enum { _GLIBCXX_USE_ST_MTIM = 1 };
enum { _GLIBCXX_USE_TMPNAM = 1 };
enum { _GLIBCXX_USE_UCHAR_C8RTOMB_MBRTOC8_CXX20 = 1 };
enum { _GLIBCXX_USE_UCHAR_C8RTOMB_MBRTOC8_FCHAR8_T = 1 };
enum { _GLIBCXX_USE_UTIME = 1 };
enum { _GLIBCXX_USE_UTIMENSAT = 1 };
enum { _GLIBCXX_USE_WCHAR_T = 1 };
enum { _GLIBCXX_VERBOSE = 1 };
enum { _GLIBCXX_X86_RDRAND = 1 };
enum { _GLIBCXX_X86_RDSEED = 1 };
enum { _GTHREAD_USE_MUTEX_TIMEDLOCK = 1 };
/* END /usr/include/x86_64-1-gnu/c++/12/bits/c++config.h */
/* BEGIN /usr/include/complex.h */
enum { _COMPLEX_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
]] require 'ffi.c.bits.libc-header-start' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/libc-header-start.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/mathdef.h */
/* END /usr/include/x86_64-1-gnu/bits/mathdef.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/floatn.h */
]] require 'ffi.c.bits.floatn' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/floatn.h */
/* Manually commented out because it's already in LuaJIT: enum { _Complex = 0 }; */
/* Manually commented out because it's already in LuaJIT: enum { complex = 0 }; */
/* #define _Complex_I	(__extension__ 1.0iF) ### string, not number "(__extension__ 1.0iF)" */
/* #define I _Complex_I ### string, not number "_Complex_I" */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/cmathcalls.h */
/* # define _Mdouble_complex_ _Mdouble_ _Complex ### string, not number "_Mdouble_ _Complex" */
extern double _Complex cacos (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex casin (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex catan (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex ccos (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex csin (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex ctan (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex cacosh (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex casinh (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex catanh (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex ccosh (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex csinh (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex ctanh (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex cexp (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex clog (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex cpow (double _Complex __x, double _Complex __y) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex csqrt (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double cabs (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double carg (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex conj (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double _Complex cproj (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double cimag (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double creal (double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
/* END /usr/include/x86_64-1-gnu/bits/cmathcalls.h */
/* redefining matching value: #define _Mdouble_ 		float */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/cmathcalls.h */
extern float _Complex cacosf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex casinf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex catanf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex ccosf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex csinf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex ctanf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex cacoshf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex casinhf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex catanhf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex ccoshf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex csinhf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex ctanhf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex cexpf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex clogf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex cpowf (float _Complex __x, float _Complex __y) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex csqrtf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float cabsf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float cargf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex conjf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float _Complex cprojf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float cimagf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern float crealf (float _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
/* END /usr/include/x86_64-1-gnu/bits/cmathcalls.h */
/* # define _Mdouble_ 		long double ### string, not number "long double" */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/cmathcalls.h */
extern long double _Complex cacosl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex casinl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex catanl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex ccosl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex csinl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex ctanl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex cacoshl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex casinhl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex catanhl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex ccoshl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex csinhl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex ctanhl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex cexpl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex clogl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex cpowl (long double _Complex __x, long double _Complex __y) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex csqrtl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double cabsl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double cargl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex conjl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double _Complex cprojl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double cimagl (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
extern long double creall (long double _Complex __z) __attribute__ ((__nothrow__ , __leaf__)) ;
/* END /usr/include/x86_64-1-gnu/bits/cmathcalls.h */
/* END /usr/include/_Complex.h */
enum { _GLIBCXX_COMPLEX_H = 1 };
/* END /usr/include/c++/12/_Complex.h */
]]
