local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/complex.h */
enum { __COMPLEX_H__ = 1 };
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
enum { _CDEFS_H_ = 1 };
/* manually commented out: enum { __BEGIN_DECLS = 1 }; */
/* manually commented out: enum { __END_DECLS = 1 }; */
/* manually commented out: enum { __const = 0 }; */
/* manually commented out: enum { __signed = 0 }; */
/* manually commented out: enum { __volatile = 0 }; */
/* #define __dead2         __attribute__((__noreturn__)) ### string, not number "__attribute__((__noreturn__))" */
/* #define __pure2         __attribute__((__const__)) ### string, not number "__attribute__((__const__))" */
/* #define __stateful_pure __attribute__((__pure__)) ### string, not number "__attribute__((__pure__))" */
/* #define __unused        __attribute__((__unused__)) ### string, not number "__attribute__((__unused__))" */
/* #define __used          __attribute__((__used__)) ### string, not number "__attribute__((__used__))" */
enum { __cold = 1 };
enum { __returns_nonnull = 1 };
/* #define __exported      __attribute__((__visibility__("default"))) ### string, not number "__attribute__((__visibility__(\"default\")))" */
/* #define __exported_push _Pragma("GCC visibility push(default)") ### string, not number "_Pragma(\"GCC visibility push(default)\")" */
/* #define __exported_pop  _Pragma("GCC visibility pop") ### string, not number "_Pragma(\"GCC visibility pop\")" */
/* #define __deprecated    __attribute__((__deprecated__)) ### string, not number "__attribute__((__deprecated__))" */
enum { __unavailable = 1 };
enum { __kpi_unavailable = 1 };
enum { __kpi_deprecated_arm64_macos_unavailable = 1 };
enum { __dead = 1 };
enum { __pure = 1 };
/* manually commented out: enum { __restrict = 0 }; */
enum { _Nullable = 1 };
enum { _Nonnull = 1 };
enum { _Null_unspecified = 1 };
enum { __disable_tail_calls = 1 };
enum { __not_tail_called = 1 };
enum { __result_use_check = 1 };
/* #define __abortlike __dead2 __cold __not_tail_called ### string, not number "__dead2 __cold __not_tail_called" */
enum { __header_inline = 0 };
/* # define __header_always_inline    __header_inline __attribute__ ((__always_inline__)) ### string, not number "__header_inline __attribute__ ((__always_inline__))" */
/* # define __unreachable_ok_push  	 _Pragma("clang diagnostic push")  	 _Pragma("clang diagnostic ignored \"-Wunreachable-code\"") ### string, not number "_Pragma(\"clang diagnostic push\")  \9 _Pragma(\"clang diagnostic ignored \\\"-Wunreachable-code\\\"\")" */
/* # define __unreachable_ok_pop  	 _Pragma("clang diagnostic pop") ### string, not number "_Pragma(\"clang diagnostic pop\")" */
enum { __has_safe_buffers = 0 };
enum { __unsafe_buffer_usage = 1 };
enum { __unsafe_buffer_usage_begin = 1 };
enum { __unsafe_buffer_usage_end = 1 };
enum { __DARWIN_ONLY_64_BIT_INO_T = 0 };
enum { __DARWIN_ONLY_UNIX_CONFORMANCE = 1 };
enum { __DARWIN_ONLY_VERS_1050 = 0 };
enum { __DARWIN_UNIX03 = 1 };
enum { __DARWIN_64_BIT_INO_T = 1 };
enum { __DARWIN_VERS_1050 = 1 };
enum { __DARWIN_NON_CANCELABLE = 0 };
enum { __DARWIN_SUF_UNIX03 = 1 };
/* #      define __DARWIN_SUF_64_BIT_INO_T "$INODE64" ### string, not number "\"$INODE64\"" */
/* #      define __DARWIN_SUF_1050         "$1050" ### string, not number "\"$1050\"" */
enum { __DARWIN_SUF_NON_CANCELABLE = 1 };
/* #define __DARWIN_SUF_EXTSN              "$DARWIN_EXTSN" ### string, not number "\"$DARWIN_EXTSN\"" */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
enum { ___POSIX_C_DEPRECATED_STARTING_198808L = 1 };
enum { ___POSIX_C_DEPRECATED_STARTING_199009L = 1 };
enum { ___POSIX_C_DEPRECATED_STARTING_199209L = 1 };
enum { ___POSIX_C_DEPRECATED_STARTING_199309L = 1 };
enum { ___POSIX_C_DEPRECATED_STARTING_199506L = 1 };
enum { ___POSIX_C_DEPRECATED_STARTING_200112L = 1 };
enum { ___POSIX_C_DEPRECATED_STARTING_200809L = 1 };
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
enum { __DARWIN_C_ANSI = 4096 };
enum { __DARWIN_C_FULL = 900000 };
enum { __DARWIN_C_LEVEL = 900000 };
enum { __STDC_WANT_LIB_EXT1__ = 1 };
enum { __DARWIN_NO_LONG_LONG = 0 };
enum { _DARWIN_FEATURE_64_BIT_INODE = 1 };
enum { _DARWIN_FEATURE_ONLY_UNIX_CONFORMANCE = 1 };
enum { _DARWIN_FEATURE_UNIX_CONFORMANCE = 3 };
/* #define __XNU_PRIVATE_EXTERN __attribute__((visibility("hidden"))) ### string, not number "__attribute__((visibility(\"hidden\")))" */
enum { __has_ptrcheck = 0 };
enum { __single = 1 };
enum { __unsafe_indexable = 1 };
enum { __null_terminated = 1 };
enum { __array_decay_dicards_count_in_parameters = 1 };
enum { __unsafe_late_const = 1 };
enum { __ptrcheck_unavailable = 1 };
/* #define __ASSUME_PTR_ABI_SINGLE_BEGIN       __ptrcheck_abi_assume_single() ### string, not number "__ptrcheck_abi_assume_single()" */
/* #define __ASSUME_PTR_ABI_SINGLE_END         __ptrcheck_abi_assume_unsafe_indexable() ### string, not number "__ptrcheck_abi_assume_unsafe_indexable()" */
enum { __header_indexable = 1 };
enum { __header_bidi_indexable = 1 };
enum { __enum_open = 1 };
enum { __enum_closed = 1 };
enum { __enum_options = 1 };
enum { __kernel_ptr_semantics = 1 };
enum { __kernel_data_semantics = 1 };
enum { __kernel_dual_semantics = 1 };
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* manually commented out: enum { complex = 0 }; */
/* #define _Complex_I (__extension__ 1.0iF) ### string, not number "(__extension__ 1.0iF)" */
/* #define I _Complex_I ### string, not number "_Complex_I" */
extern float _Complex cacosf(float _Complex);
extern double _Complex cacos(double _Complex);
extern long double _Complex cacosl(long double _Complex);
extern float _Complex casinf(float _Complex);
extern double _Complex casin(double _Complex);
extern long double _Complex casinl(long double _Complex);
extern float _Complex catanf(float _Complex);
extern double _Complex catan(double _Complex);
extern long double _Complex catanl(long double _Complex);
extern float _Complex ccosf(float _Complex);
extern double _Complex ccos(double _Complex);
extern long double _Complex ccosl(long double _Complex);
extern float _Complex csinf(float _Complex);
extern double _Complex csin(double _Complex);
extern long double _Complex csinl(long double _Complex);
extern float _Complex ctanf(float _Complex);
extern double _Complex ctan(double _Complex);
extern long double _Complex ctanl(long double _Complex);
extern float _Complex cacoshf(float _Complex);
extern double _Complex cacosh(double _Complex);
extern long double _Complex cacoshl(long double _Complex);
extern float _Complex casinhf(float _Complex);
extern double _Complex casinh(double _Complex);
extern long double _Complex casinhl(long double _Complex);
extern float _Complex catanhf(float _Complex);
extern double _Complex catanh(double _Complex);
extern long double _Complex catanhl(long double _Complex);
extern float _Complex ccoshf(float _Complex);
extern double _Complex ccosh(double _Complex);
extern long double _Complex ccoshl(long double _Complex);
extern float _Complex csinhf(float _Complex);
extern double _Complex csinh(double _Complex);
extern long double _Complex csinhl(long double _Complex);
extern float _Complex ctanhf(float _Complex);
extern double _Complex ctanh(double _Complex);
extern long double _Complex ctanhl(long double _Complex);
extern float _Complex cexpf(float _Complex);
extern double _Complex cexp(double _Complex);
extern long double _Complex cexpl(long double _Complex);
extern float _Complex clogf(float _Complex);
extern double _Complex clog(double _Complex);
extern long double _Complex clogl(long double _Complex);
extern float cabsf(float _Complex);
extern double cabs(double _Complex);
extern long double cabsl(long double _Complex);
extern float _Complex cpowf(float _Complex, float _Complex);
extern double _Complex cpow(double _Complex, double _Complex);
extern long double _Complex cpowl(long double _Complex, long double _Complex);
extern float _Complex csqrtf(float _Complex);
extern double _Complex csqrt(double _Complex);
extern long double _Complex csqrtl(long double _Complex);
extern float cargf(float _Complex);
extern double carg(double _Complex);
extern long double cargl(long double _Complex);
extern float cimagf(float _Complex);
extern double cimag(double _Complex);
extern long double cimagl(long double _Complex);
extern float _Complex conjf(float _Complex);
extern double _Complex conj(double _Complex);
extern long double _Complex conjl(long double _Complex);
extern float _Complex cprojf(float _Complex);
extern double _Complex cproj(double _Complex);
extern long double _Complex cprojl(long double _Complex);
extern float crealf(float _Complex);
extern double creal(double _Complex);
extern long double creall(long double _Complex);
/* + END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/complex.h */
]]
