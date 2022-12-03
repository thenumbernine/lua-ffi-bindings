local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/features.h */
enum { _FEATURES_H = 1 };
enum { __KERNEL_STRICT_NAMES = 1 };
enum { _DEFAULT_SOURCE = 1 };
enum { __GLIBC_USE_ISOC2X = 0 };
enum { __USE_ISOC11 = 1 };
enum { __USE_ISOC99 = 1 };
enum { __USE_ISOC95 = 1 };
enum { __USE_POSIX_IMPLICITLY = 1 };
enum { _POSIX_SOURCE = 1 };
enum { _POSIX_C_SOURCE = 200809 };
enum { __USE_POSIX = 1 };
enum { __USE_POSIX2 = 1 };
enum { __USE_POSIX199309 = 1 };
enum { __USE_POSIX199506 = 1 };
enum { __USE_XOPEN2K = 1 };
/* redefining matching value: # define __USE_ISOC95		1 */
/* redefining matching value: # define __USE_ISOC99		1 */
enum { __USE_XOPEN2K8 = 1 };
enum { _ATFILE_SOURCE = 1 };
/* BEGIN /usr/include/features-time64.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
enum { __WORDSIZE = 64 };
enum { __WORDSIZE_TIME64_COMPAT32 = 1 };
enum { __SYSCALL_WORDSIZE = 64 };
/* END   /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/timesize.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* redefining matching value: # define __WORDSIZE	64 */
/* redefining matching value: # define __WORDSIZE_TIME64_COMPAT32	1 */
/* redefining matching value: # define __SYSCALL_WORDSIZE		64 */
/* END   /usr/include/x86_64-linux-gnu/bits/wordsize.h */
enum { __TIMESIZE = 64 };
/* END   /usr/include/x86_64-linux-gnu/bits/timesize.h */
/* END   /usr/include/features-time64.h */
enum { __USE_MISC = 1 };
enum { __USE_ATFILE = 1 };
enum { __USE_FORTIFY_LEVEL = 0 };
enum { __GLIBC_USE_DEPRECATED_GETS = 0 };
enum { __GLIBC_USE_DEPRECATED_SCANF = 0 };
/* BEGIN /usr/include/stdc-predef.h */
/* END   /usr/include/stdc-predef.h */
enum { __GNU_LIBRARY__ = 6 };
enum { __GLIBC__ = 2 };
enum { __GLIBC_MINOR__ = 36 };
/* BEGIN /usr/include/x86_64-linux-gnu/sys/cdefs.h */
enum { _SYS_CDEFS_H = 1 };
/* #  define __LEAF , __leaf__ ### string, not number ", __leaf__" */
/* #  define __LEAF_ATTR __attribute__ ((__leaf__)) ### string, not number "__attribute__ ((__leaf__))" */
/* #  define __THROW	__attribute__ ((__nothrow__ __LEAF)) ### string, not number "__attribute__ ((__nothrow__ __LEAF))" */
/* #  define __THROWNL	__attribute__ ((__nothrow__)) ### string, not number "__attribute__ ((__nothrow__))" */
/* #define __ptr_t void * ### string, not number "void *" */
enum { __BEGIN_DECLS = 1 };
enum { __END_DECLS = 1 };
/* # define __flexarr	[] ### string, not number "[]" */
enum { __glibc_c99_flexarr_available = 1 };
/* # define __attribute_malloc__ __attribute__ ((__malloc__)) ### string, not number "__attribute__ ((__malloc__))" */
/* # define __attribute_pure__ __attribute__ ((__pure__)) ### string, not number "__attribute__ ((__pure__))" */
/* # define __attribute_const__ __attribute__ ((__const__)) ### string, not number "__attribute__ ((__const__))" */
/* # define __attribute_maybe_unused__ __attribute__ ((__unused__)) ### string, not number "__attribute__ ((__unused__))" */
/* # define __attribute_used__ __attribute__ ((__used__)) ### string, not number "__attribute__ ((__used__))" */
/* # define __attribute_noinline__ __attribute__ ((__noinline__)) ### string, not number "__attribute__ ((__noinline__))" */
/* # define __attribute_deprecated__ __attribute__ ((__deprecated__)) ### string, not number "__attribute__ ((__deprecated__))" */
/* # define __returns_nonnull __attribute__ ((__returns_nonnull__)) ### string, not number "__attribute__ ((__returns_nonnull__))" */
/* # define __attribute_warn_unused_result__     __attribute__ ((__warn_unused_result__)) ### string, not number "__attribute__ ((__warn_unused_result__))" */
enum { __wur = 1 };
/* # define __always_inline __inline __attribute__ ((__always_inline__)) ### string, not number "__inline __attribute__ ((__always_inline__))" */
/* # define __attribute_artificial__ __attribute__ ((__artificial__)) ### string, not number "__attribute__ ((__artificial__))" */
/* #  define __extern_inline extern __inline __attribute__ ((__gnu_inline__)) ### string, not number "extern __inline __attribute__ ((__gnu_inline__))" */
/* #  define __extern_always_inline    extern __always_inline __attribute__ ((__gnu_inline__)) ### string, not number "extern __always_inline __attribute__ ((__gnu_inline__))" */
/* # define __fortify_function __extern_always_inline __attribute_artificial__ ### string, not number "__extern_always_inline __attribute_artificial__" */
/* # define __restrict_arr	__restrict ### string, not number "__restrict" */
/* # define __attribute_nonstring__ __attribute__ ((__nonstring__)) ### string, not number "__attribute__ ((__nonstring__))" */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* redefining matching value: # define __WORDSIZE	64 */
/* redefining matching value: # define __WORDSIZE_TIME64_COMPAT32	1 */
/* redefining matching value: # define __SYSCALL_WORDSIZE		64 */
/* END   /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/long-double.h */
enum { __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = 0 };
/* END   /usr/include/x86_64-linux-gnu/bits/long-double.h */
enum { __HAVE_GENERIC_SELECTION = 1 };
/* # define __attr_dealloc_free __attr_dealloc (__builtin_free, 1) ### string, not number "__attr_dealloc (__builtin_free, 1)" */
/* # define __attribute_returns_twice__ __attribute__ ((__returns_twice__)) ### string, not number "__attribute__ ((__returns_twice__))" */
/* END   /usr/include/x86_64-linux-gnu/sys/cdefs.h */
/* BEGIN /usr/include/x86_64-linux-gnu/gnu/stubs.h */
/* BEGIN /usr/include/x86_64-linux-gnu/gnu/stubs-64.h */
enum { __stub___compat_bdflush = 1 };
enum { __stub_chflags = 1 };
enum { __stub_fchflags = 1 };
enum { __stub_gtty = 1 };
enum { __stub_revoke = 1 };
enum { __stub_setlogin = 1 };
enum { __stub_sigreturn = 1 };
enum { __stub_stty = 1 };
/* END   /usr/include/x86_64-linux-gnu/gnu/stubs-64.h */
/* END   /usr/include/x86_64-linux-gnu/gnu/stubs.h */
/* END   /usr/include/features.h */
]]
