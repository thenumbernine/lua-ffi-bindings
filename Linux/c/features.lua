local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <features.h> /usr/include/features.h */
/* ++ BEGIN <features-time64.h> /usr/include/features-time64.h */
/* +++ BEGIN <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* +++ END <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* +++ BEGIN <bits/timesize.h> /usr/include/x86_64-linux-gnu/bits/timesize.h */
]] require 'ffi.req' 'c.bits.timesize' ffi.cdef[[
/* +++ END <bits/timesize.h> /usr/include/x86_64-linux-gnu/bits/timesize.h */
/* ++ END <features-time64.h> /usr/include/features-time64.h */
/* ++ BEGIN <sys/cdefs.h> /usr/include/x86_64-linux-gnu/sys/cdefs.h */
/* +++ BEGIN <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* +++ END <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* +++ BEGIN <bits/long-double.h> /usr/include/x86_64-linux-gnu/bits/long-double.h */
/* +++ END <bits/long-double.h> /usr/include/x86_64-linux-gnu/bits/long-double.h */
/* ++ END <sys/cdefs.h> /usr/include/x86_64-linux-gnu/sys/cdefs.h */
/* ++ BEGIN <gnu/stubs.h> /usr/include/x86_64-linux-gnu/gnu/stubs.h */
/* +++ BEGIN <gnu/stubs-64.h> /usr/include/x86_64-linux-gnu/gnu/stubs-64.h */
/* +++ END <gnu/stubs-64.h> /usr/include/x86_64-linux-gnu/gnu/stubs-64.h */
/* ++ END <gnu/stubs.h> /usr/include/x86_64-linux-gnu/gnu/stubs.h */
enum { _FEATURES_H = 1 };
enum { __KERNEL_STRICT_NAMES = 1 };
/* #define __GNUC_PREREQ (maj,min) ((__GNUC__ << 16) + __GNUC_MINOR__ >= ((maj) << 16) + (min)) ### define is not number */
/* #define __glibc_clang_prereq (maj,min) 0 ### define is not number */
/* #define __GLIBC_USE (F) __GLIBC_USE_ ## F ### define is not number */
enum { _DEFAULT_SOURCE = 1 };
enum { __GLIBC_USE_ISOC23 = 0 };
enum { __USE_ISOC11 = 1 };
enum { __USE_POSIX_IMPLICITLY = 1 };
enum { _POSIX_SOURCE = 1 };
enum { _POSIX_C_SOURCE = 200809 };
enum { __USE_POSIX = 1 };
enum { __USE_POSIX2 = 1 };
enum { __USE_POSIX199309 = 1 };
enum { __USE_POSIX199506 = 1 };
enum { __USE_XOPEN2K = 1 };
enum { __USE_ISOC95 = 1 };
enum { __USE_ISOC99 = 1 };
enum { __USE_XOPEN2K8 = 1 };
enum { _ATFILE_SOURCE = 1 };
enum { __USE_MISC = 1 };
enum { __USE_ATFILE = 1 };
enum { __USE_FORTIFY_LEVEL = 0 };
enum { __GLIBC_USE_DEPRECATED_GETS = 0 };
enum { __GLIBC_USE_DEPRECATED_SCANF = 0 };
enum { __GLIBC_USE_C23_STRTOL = 0 };
enum { __GNU_LIBRARY__ = 6 };
enum { __GLIBC__ = 2 };
enum { __GLIBC_MINOR__ = 40 };
/* #define __GLIBC_PREREQ (maj,min) ((__GLIBC__ << 16) + __GLIBC_MINOR__ >= ((maj) << 16) + (min)) ### define is not number */
/* + END <features.h> /usr/include/features.h */
]]
