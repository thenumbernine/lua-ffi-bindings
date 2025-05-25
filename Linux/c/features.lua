local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <features.h> /usr/include/features.h */
/* ++ BEGIN <features-time64.h> /usr/include/features-time64.h */
/* +++ BEGIN <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
]] require 'ffi.req' 'c.bits.wordsize' ffi.cdef[[
/* +++ END <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* +++ BEGIN <bits/timesize.h> /usr/include/x86_64-linux-gnu/bits/timesize.h */
]] require 'ffi.req' 'c.bits.timesize' ffi.cdef[[
/* +++ END <bits/timesize.h> /usr/include/x86_64-linux-gnu/bits/timesize.h */
/* ++ END <features-time64.h> /usr/include/features-time64.h */
/* ++ BEGIN <sys/cdefs.h> /usr/include/x86_64-linux-gnu/sys/cdefs.h */
/* +++ BEGIN <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
]] require 'ffi.req' 'c.bits.wordsize' ffi.cdef[[
/* +++ END <bits/wordsize.h> /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* +++ BEGIN <bits/long-double.h> /usr/include/x86_64-linux-gnu/bits/long-double.h */
/* +++ END <bits/long-double.h> /usr/include/x86_64-linux-gnu/bits/long-double.h */
/* ++ END <sys/cdefs.h> /usr/include/x86_64-linux-gnu/sys/cdefs.h */
/* ++ BEGIN <gnu/stubs.h> /usr/include/x86_64-linux-gnu/gnu/stubs.h */
/* +++ BEGIN <gnu/stubs-64.h> /usr/include/x86_64-linux-gnu/gnu/stubs-64.h */
/* +++ END <gnu/stubs-64.h> /usr/include/x86_64-linux-gnu/gnu/stubs-64.h */
/* ++ END <gnu/stubs.h> /usr/include/x86_64-linux-gnu/gnu/stubs.h */
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
enum { __USE_TIME_BITS64 = 1 };
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
/* #define __glibc_has_attribute (attr) __has_attribute (attr) ### define is not number */
/* #define __glibc_has_builtin (name) __has_builtin (name) ### define is not number */
/* #define __glibc_has_extension (ext) __has_extension (ext) ### define is not number */
/* #define __LEAF , __leaf__ ### define is not number */
/* #define __LEAF_ATTR __attribute__ ((__leaf__)) ### define is not number */
/* #define __THROW __attribute__ ((__nothrow__ __LEAF)) ### define is not number */
/* #define __THROWNL __attribute__ ((__nothrow__)) ### define is not number */
/* #define __NTH (fct) __attribute__ ((__nothrow__ __LEAF)) fct ### define is not number */
/* #define __NTHNL (fct) __attribute__ ((__nothrow__)) fct ### define is not number */
/* #define __COLD __attribute__ ((__cold__)) ### define is not number */
/* #define __P (args) args ### define is not number */
/* #define __PMT (args) args ### define is not number */
/* #define __CONCAT (x,y) x ## y ### define is not number */
/* #define __STRING (x) #x ### define is not number */
/* #define __ptr_t void * ### define is not number */
enum { __BEGIN_DECLS = 1 };
enum { __END_DECLS = 1 };
enum { __attribute_overloadable__ = 1 };
/* #define __bos (ptr) __builtin_object_size (ptr, __USE_FORTIFY_LEVEL > 1) ### define is not number */
/* #define __bos0 (ptr) __builtin_object_size (ptr, 0) ### define is not number */
/* #define __glibc_objsize0 (__o) __bos0 (__o) ### define is not number */
/* #define __glibc_objsize (__o) __bos (__o) ### define is not number */
/* #define __warnattr (msg) __attribute__((__warning__ (msg))) ### define is not number */
/* #define __errordecl (name,msg) extern void name (void) __attribute__((__error__ (msg))) ### define is not number */
/* #define __flexarr [] ### define is not number */
enum { __glibc_c99_flexarr_available = 1 };
/* #define __REDIRECT (name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) ### define is not number */
/* #define __REDIRECT_NTH (name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROW ### define is not number */
/* #define __REDIRECT_NTHNL (name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROWNL ### define is not number */
/* #define __ASMNAME (cname) __ASMNAME2 (__USER_LABEL_PREFIX__, cname) ### define is not number */
/* #define __ASMNAME2 (prefix,cname) __STRING (prefix) cname ### define is not number */
/* #define __REDIRECT_FORTIFY (name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) ### define is not number */
/* #define __REDIRECT_FORTIFY_NTH (name,proto,alias) name proto __asm__ (__ASMNAME (#alias)) __THROW ### define is not number */
/* #define __attribute_malloc__ __attribute__ ((__malloc__)) ### define is not number */
/* #define __attribute_alloc_size__ (params) __attribute__ ((__alloc_size__ params)) ### define is not number */
/* #define __attribute_alloc_align__ (param) __attribute__ ((__alloc_align__ param)) ### define is not number */
/* #define __attribute_pure__ __attribute__ ((__pure__)) ### define is not number */
/* #define __attribute_const__ __attribute__ ((__const__)) ### define is not number */
/* #define __attribute_maybe_unused__ __attribute__ ((__unused__)) ### define is not number */
/* #define __attribute_used__ __attribute__ ((__used__)) ### define is not number */
/* #define __attribute_noinline__ __attribute__ ((__noinline__)) ### define is not number */
/* #define __attribute_deprecated__ __attribute__ ((__deprecated__)) ### define is not number */
/* #define __attribute_deprecated_msg__ (msg) __attribute__ ((__deprecated__ (msg))) ### define is not number */
/* #define __attribute_format_arg__ (x) __attribute__ ((__format_arg__ (x))) ### define is not number */
/* #define __attribute_format_strfmon__ (a,b) __attribute__ ((__format__ (__strfmon__, a, b))) ### define is not number */
/* #define __attribute_nonnull__ (params) __attribute__ ((__nonnull__ params)) ### define is not number */
/* #define __nonnull (params) __attribute_nonnull__ (params) ### define is not number */
/* #define __returns_nonnull __attribute__ ((__returns_nonnull__)) ### define is not number */
/* #define __attribute_warn_unused_result__ __attribute__ ((__warn_unused_result__)) ### define is not number */
enum { __wur = 1 };
/* #define __always_inline __inline __attribute__ ((__always_inline__)) ### define is not number */
/* #define __attribute_artificial__ __attribute__ ((__artificial__)) ### define is not number */
/* #define __extern_inline extern __inline __attribute__ ((__gnu_inline__)) ### define is not number */
/* #define __extern_always_inline extern __always_inline __attribute__ ((__gnu_inline__)) ### define is not number */
/* #define __fortify_function __extern_always_inline __attribute_artificial__ ### define is not number */
/* #define __va_arg_pack () __builtin_va_arg_pack () ### define is not number */
/* #define __va_arg_pack_len () __builtin_va_arg_pack_len () ### define is not number */
/* #define __restrict_arr __restrict ### define is not number */
/* #define __glibc_unlikely (cond) __builtin_expect ((cond), 0) ### define is not number */
/* #define __glibc_likely (cond) __builtin_expect ((cond), 1) ### define is not number */
/* #define __attribute_nonstring__ __attribute__ ((__nonstring__)) ### define is not number */
/* #define __attribute_copy__ (arg) __attribute__ ((__copy__ (arg))) ### define is not number */
/* #define __LDBL_REDIR1 (name,proto,alias) name proto ### define is not number */
/* #define __LDBL_REDIR (name,proto) name proto ### define is not number */
/* #define __LDBL_REDIR1_NTH (name,proto,alias) name proto __THROW ### define is not number */
/* #define __LDBL_REDIR_NTH (name,proto) name proto __THROW ### define is not number */
/* #define __LDBL_REDIR2_DECL (name)  ### define is not number */
/* #define __LDBL_REDIR_DECL (name)  ### define is not number */
/* #define __REDIRECT_LDBL (name,proto,alias) __REDIRECT (name, proto, alias) ### define is not number */
/* #define __REDIRECT_NTH_LDBL (name,proto,alias) __REDIRECT_NTH (name, proto, alias) ### define is not number */
/* #define __glibc_macro_warning1 (message) _Pragma (#message) ### define is not number */
/* #define __glibc_macro_warning (message) __glibc_macro_warning1 (GCC warning message) ### define is not number */
enum { __HAVE_GENERIC_SELECTION = 1 };
/* #define __attr_access (x) __attribute__ ((__access__ x)) ### define is not number */
/* #define __fortified_attr_access (a,o,s) __attr_access ((a, o, s)) ### define is not number */
/* #define __attr_access_none (argno) __attribute__ ((__access__ (__none__, argno))) ### define is not number */
/* #define __attr_dealloc (dealloc,argno) __attribute__ ((__malloc__ (dealloc, argno))) ### define is not number */
/* #define __attr_dealloc_free __attr_dealloc (__builtin_free, 1) ### define is not number */
/* #define __attribute_returns_twice__ __attribute__ ((__returns_twice__)) ### define is not number */
/* #define __attribute_struct_may_alias__ __attribute__ ((__may_alias__)) ### define is not number */
enum { __stub___compat_bdflush = 1 };
enum { __stub_chflags = 1 };
enum { __stub_fchflags = 1 };
enum { __stub_gtty = 1 };
enum { __stub_revoke = 1 };
enum { __stub_setlogin = 1 };
enum { __stub_sigreturn = 1 };
enum { __stub_stty = 1 };
/* + END <features.h> /usr/include/features.h */
]]
