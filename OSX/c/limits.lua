local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <limits.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/limits.h */
/* ++ BEGIN <limits.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/limits.h */
/* +++ BEGIN <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
]] require 'ffi.req' 'c.sys.cdefs' ffi.cdef[[
/* +++ END <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN <machine/limits.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/limits.h */
/* ++++ BEGIN <i386/limits.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/limits.h */
/* +++++ BEGIN <i386/_limits.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_limits.h */
/* +++++ END <i386/_limits.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_limits.h */
/* ++++ END <i386/limits.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/limits.h */
/* +++ END <machine/limits.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/limits.h */
/* +++ BEGIN <sys/syslimits.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/syslimits.h */
/* +++ END <sys/syslimits.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/syslimits.h */
/* ++ END <limits.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/limits.h */
enum { __DARWIN_CLK_TCK = 100 };
enum { MB_LEN_MAX = 6 };
enum { CLK_TCK = 100 };
enum { LONG_BIT = 64 };
enum { WORD_BIT = 32 };
/* #define SIZE_T_MAX (__LONG_MAX__ *2UL+1UL) ### define is not number */
/* #define UQUAD_MAX (__LONG_LONG_MAX__*2ULL+1ULL) ### define is not number */
/* #define QUAD_MIN (-__LONG_LONG_MAX__-1LL) ### define is not number */
/* #define ARG_MAX (1024 * 1024) ### define is not number */
enum { CHILD_MAX = 266 };
enum { GID_MAX = 2147483647 };
enum { LINK_MAX = 32767 };
enum { MAX_CANON = 1024 };
enum { MAX_INPUT = 1024 };
enum { NAME_MAX = 255 };
enum { NGROUPS_MAX = 16 };
enum { UID_MAX = 2147483647 };
enum { OPEN_MAX = 10240 };
enum { PATH_MAX = 1024 };
enum { PIPE_BUF = 512 };
enum { BC_BASE_MAX = 99 };
enum { BC_DIM_MAX = 2048 };
enum { BC_SCALE_MAX = 99 };
enum { BC_STRING_MAX = 1000 };
enum { CHARCLASS_NAME_MAX = 14 };
enum { COLL_WEIGHTS_MAX = 2 };
enum { EQUIV_CLASS_MAX = 2 };
enum { EXPR_NEST_MAX = 32 };
enum { LINE_MAX = 2048 };
enum { RE_DUP_MAX = 255 };
enum { NZERO = 20 };
enum { _POSIX_ARG_MAX = 4096 };
enum { _POSIX_CHILD_MAX = 25 };
enum { _POSIX_LINK_MAX = 8 };
enum { _POSIX_MAX_CANON = 255 };
enum { _POSIX_MAX_INPUT = 255 };
enum { _POSIX_NAME_MAX = 14 };
enum { _POSIX_NGROUPS_MAX = 8 };
enum { _POSIX_OPEN_MAX = 20 };
enum { _POSIX_PATH_MAX = 256 };
enum { _POSIX_PIPE_BUF = 512 };
enum { _POSIX_SSIZE_MAX = 32767 };
enum { _POSIX_STREAM_MAX = 8 };
enum { _POSIX_TZNAME_MAX = 6 };
enum { _POSIX2_BC_BASE_MAX = 99 };
enum { _POSIX2_BC_DIM_MAX = 2048 };
enum { _POSIX2_BC_SCALE_MAX = 99 };
enum { _POSIX2_BC_STRING_MAX = 1000 };
enum { _POSIX2_EQUIV_CLASS_MAX = 2 };
enum { _POSIX2_EXPR_NEST_MAX = 32 };
enum { _POSIX2_LINE_MAX = 2048 };
enum { _POSIX2_RE_DUP_MAX = 255 };
enum { _POSIX_AIO_LISTIO_MAX = 2 };
enum { _POSIX_AIO_MAX = 1 };
enum { _POSIX_DELAYTIMER_MAX = 32 };
enum { _POSIX_MQ_OPEN_MAX = 8 };
enum { _POSIX_MQ_PRIO_MAX = 32 };
enum { _POSIX_RTSIG_MAX = 8 };
enum { _POSIX_SEM_NSEMS_MAX = 256 };
enum { _POSIX_SEM_VALUE_MAX = 32767 };
enum { _POSIX_SIGQUEUE_MAX = 32 };
enum { _POSIX_TIMER_MAX = 32 };
enum { _POSIX_CLOCKRES_MIN = 20000000 };
enum { _POSIX_THREAD_DESTRUCTOR_ITERATIONS = 4 };
enum { _POSIX_THREAD_KEYS_MAX = 128 };
enum { _POSIX_THREAD_THREADS_MAX = 64 };
enum { PTHREAD_DESTRUCTOR_ITERATIONS = 4 };
enum { PTHREAD_KEYS_MAX = 512 };
enum { PTHREAD_STACK_MIN = 8192 };
enum { _POSIX_HOST_NAME_MAX = 255 };
enum { _POSIX_LOGIN_NAME_MAX = 9 };
enum { _POSIX_SS_REPL_MAX = 4 };
enum { _POSIX_SYMLINK_MAX = 255 };
enum { _POSIX_SYMLOOP_MAX = 8 };
enum { _POSIX_TRACE_EVENT_NAME_MAX = 30 };
enum { _POSIX_TRACE_NAME_MAX = 8 };
enum { _POSIX_TRACE_SYS_MAX = 8 };
enum { _POSIX_TRACE_USER_EVENT_MAX = 32 };
enum { _POSIX_TTY_NAME_MAX = 9 };
enum { _POSIX2_CHARCLASS_NAME_MAX = 14 };
enum { _POSIX2_COLL_WEIGHTS_MAX = 2 };
enum { _POSIX_RE_DUP_MAX = 255 };
/* #define OFF_MIN (-__LONG_LONG_MAX__-1LL) ### define is not number */
enum { PASS_MAX = 128 };
enum { NL_ARGMAX = 9 };
enum { NL_LANGMAX = 14 };
enum { NL_MSGMAX = 32767 };
enum { NL_NMAX = 1 };
enum { NL_SETMAX = 255 };
enum { NL_TEXTMAX = 2048 };
enum { _XOPEN_IOV_MAX = 16 };
enum { IOV_MAX = 1024 };
enum { _XOPEN_NAME_MAX = 255 };
enum { _XOPEN_PATH_MAX = 1024 };
enum { SCHAR_MAX = 127 };
enum { SHRT_MAX = 32767 };
enum { INT_MAX = 2147483647 };
/* #define SCHAR_MIN (-__SCHAR_MAX__-1) ### define is not number */
/* #define SHRT_MIN (-__SHRT_MAX__ -1) ### define is not number */
/* #define INT_MIN (-__INT_MAX__ -1) ### define is not number */
/* #define LONG_MIN (-__LONG_MAX__ -1L) ### define is not number */
/* #define UCHAR_MAX (__SCHAR_MAX__*2 +1) ### define is not number */
/* #define USHRT_MAX (__SHRT_MAX__ * 2 + 1) ### define is not number */
/* #define UINT_MAX (__INT_MAX__ *2U +1U) ### define is not number */
/* #define ULONG_MAX (__LONG_MAX__ *2UL+1UL) ### define is not number */
enum { CHAR_BIT = 8 };
/* #define CHAR_MIN (-__SCHAR_MAX__-1) ### define is not number */
enum { CHAR_MAX = 127 };
/* #define LLONG_MIN (-__LONG_LONG_MAX__-1LL) ### define is not number */
/* #define ULLONG_MAX (__LONG_LONG_MAX__*2ULL+1ULL) ### define is not number */
/* #define LONG_LONG_MIN (-__LONG_LONG_MAX__-1LL) ### define is not number */
/* #define ULONG_LONG_MAX (__LONG_LONG_MAX__*2ULL+1ULL) ### define is not number */
/* + END <limits.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/limits.h */
]]

-- add in values that can't be ffi.cdef enum'd
local wrapper = setmetatable({}, {__index=ffi.C})
wrapper.LONG_MAX = 0x7FFFFFFFFFFFFFFFLL
wrapper.LONG_MIN = -wrapper.LONG_MAX - 1LL
wrapper.ULONG_MAX = 0xFFFFFFFFFFFFFFFFULL
wrapper.LLONG_MAX = wrapper.LONG_MAX
wrapper.LONG_LONG_MIN = wrapper.LONG_MIN
wrapper.LONG_LONG_MAX = wrapper.LONG_MAX
wrapper.LLONG_MIN = wrapper.LONG_MIN
return wrapper
