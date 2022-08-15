local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/features.h */
enum { _FEATURES_H = 1 };
enum { _DEFAULT_SOURCE = 1 };
enum { __GLIBC_USE_ISOC2X = 0 };
enum { __USE_ISOC11 = 1 };
enum { __USE_ISOC99 = 1 };
enum { __USE_ISOC95 = 1 };
enum { __USE_POSIX_IMPLICITLY = 1 };
enum { _POSIX_SOURCE = 1 };
enum { __USE_POSIX = 1 };
enum { __USE_MISC = 1 };
enum { __USE_FORTIFY_LEVEL = 0 };
enum { __GLIBC_USE_DEPRECATED_GETS = 0 };
enum { __GLIBC_USE_DEPRECATED_SCANF = 0 };
/* BEGIN /usr/include/stdc-predef.h */
/* END /usr/include/stdc-predef.h */
enum { __GNU_LIBRARY__ = 6 };
enum { __GLIBC__ = 2 };
enum { __GLIBC_MINOR__ = 31 };
/* BEGIN /usr/include/x86_64-linux-gnu/sys/cdefs.h */
enum { _SYS_CDEFS_H = 1 };
enum { __glibc_c99_flexarr_available = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
enum { __WORDSIZE = 64 };
enum { __WORDSIZE_TIME64_COMPAT32 = 1 };
enum { __SYSCALL_WORDSIZE = 64 };
/* END /usr/include/x86_64-1-gnu/bits/wordsize.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/long-double.h */
enum { __LONG_DOUBLE_USES_FLOAT128 = 0 };
/* END /usr/include/x86_64-1-gnu/bits/long-double.h */
enum { __HAVE_GENERIC_SELECTION = 1 };
/* END /usr/include/x86_64-1-gnu/sys/cdefs.h */
/* BEGIN /usr/include/x86_64-linux-gnu/gnu/stubs.h */
/* BEGIN /usr/include/x86_64-linux-gnu/gnu/stubs-64.h */
/* END /usr/include/x86_64-1-gnu/gnu/stubs-64.h */
/* END /usr/include/x86_64-1-gnu/gnu/stubs.h */
/* END /usr/include/features.h */
]]
