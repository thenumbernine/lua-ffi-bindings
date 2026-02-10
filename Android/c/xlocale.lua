local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <xlocale.h> /data/data/com.termux/files/usr/bin/../../usr/include/xlocale.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* +++ BEGIN <android/versioning.h> /data/data/com.termux/files/usr/bin/../../usr/include/android/versioning.h */
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wc23-extensions"
#pragma clang diagnostic pop
/* +++ END <android/versioning.h> /data/data/com.termux/files/usr/bin/../../usr/include/android/versioning.h */
/* +++ BEGIN <android/api-level.h> /data/data/com.termux/files/usr/bin/../../usr/include/android/api-level.h */
int android_get_application_target_sdk_version() __attribute__((__availability__(android,strict,introduced=24 )));
int android_get_device_api_level() __attribute__((__availability__(android,strict,introduced=29 )));
/* +++ END <android/api-level.h> /data/data/com.termux/files/usr/bin/../../usr/include/android/api-level.h */
/* +++ BEGIN <android/ndk-version.h> /data/data/com.termux/files/usr/bin/../../usr/include/android/ndk-version.h */
/* +++ END <android/ndk-version.h> /data/data/com.termux/files/usr/bin/../../usr/include/android/ndk-version.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
struct __locale_t;
typedef struct __locale_t* locale_t;
enum { __BIONIC__ = 1 };
enum { __BEGIN_DECLS = 1 };
enum { __END_DECLS = 1 };
/* #define __strong_alias (alias,sym) __asm__(".global " #alias "\n" #alias " = " #sym); ### define is not number */
/* #define __BIONIC_CAST (_k,_t,_v) ((_t) (_v)) ### define is not number */
/* #define __BIONIC_ALIGN (__value,__alignment) (((__value) + (__alignment)-1) & ~((__alignment)-1)) ### define is not number */
/* #define __BIONIC_COMPLICATED_NULLNESS  ### define is not number */
/* #define __P (protos) protos ### define is not number */
/* #define __CONCAT1 (x,y) x ## y ### define is not number */
/* #define __CONCAT (x,y) __CONCAT1(x,y) ### define is not number */
/* #define ___CONCAT (x,y) __CONCAT(x,y) ### define is not number */
/* #define __STRING (x) #x ### define is not number */
/* #define ___STRING (x) __STRING(x) ### define is not number */
/* #define __inline __inline__ ### define is not number */
/* #define __always_inline __attribute__((__always_inline__)) ### define is not number */
/* #define __attribute_const__ __attribute__((__const__)) ### define is not number */
/* #define __attribute_pure__ __attribute__((__pure__)) ### define is not number */
/* #define __dead __attribute__((__noreturn__)) ### define is not number */
/* #define __noreturn __attribute__((__noreturn__)) ### define is not number */
/* #define __mallocfunc __attribute__((__malloc__)) ### define is not number */
/* #define __packed __attribute__((__packed__)) ### define is not number */
/* #define __returns_twice __attribute__((__returns_twice__)) ### define is not number */
/* #define __unused __attribute__((__unused__)) ### define is not number */
/* #define __used __attribute__((__used__)) ### define is not number */
/* #define __printflike (x,y) __attribute__((__format__(printf, x, y))) ### define is not number */
/* #define __scanflike (x,y) __attribute__((__format__(scanf, x, y))) ### define is not number */
/* #define __strftimelike (x) __attribute__((__format__(strftime, x, 0))) ### define is not number */
/* #define __predict_true (exp) __builtin_expect((exp) != 0, 1) ### define is not number */
/* #define __predict_false (exp) __builtin_expect((exp) != 0, 0) ### define is not number */
/* #define __nodiscard __attribute__((__warn_unused_result__)) ### define is not number */
/* #define __wur __attribute__((__warn_unused_result__)) ### define is not number */
/* #define __errorattr (msg) __attribute__((__unavailable__(msg))) ### define is not number */
/* #define __warnattr (msg) __attribute__((__deprecated__(msg))) ### define is not number */
/* #define __warnattr_real (msg) __attribute__((__deprecated__(msg))) ### define is not number */
/* #define __enable_if (cond,msg) __attribute__((__enable_if__(cond, msg))) ### define is not number */
/* #define __clang_error_if (cond,msg) __attribute__((__diagnose_if__(cond, msg, "error"))) ### define is not number */
/* #define __clang_warning_if (cond,msg) __attribute__((__diagnose_if__(cond, msg, "warning"))) ### define is not number */
/* #define __warnattr_strict (msg)  ### define is not number */
/* #define __IDSTRING (_prefix,_s)  ### define is not number */
/* #define __COPYRIGHT (_s)  ### define is not number */
/* #define __FBSDID (_s)  ### define is not number */
/* #define __RCSID (_s)  ### define is not number */
/* #define __SCCSID (_s)  ### define is not number */
/* #define __RENAME_IF_FILE_OFFSET64 (func)  ### define is not number */
enum { __WORDSIZE = 32 };
/* #define __BIONIC_FORTIFY_UNKNOWN_SIZE ((size_t) -1) ### define is not number */
enum { __bos_level = 0 };
/* #define __bosn (s,n) __builtin_object_size((s), (n)) ### define is not number */
/* #define __bos (s) __bosn((s), __bos_level) ### define is not number */
/* #define __pass_object_size_n (n)  ### define is not number */
/* #define __pass_object_size __pass_object_size_n(__bos_level) ### define is not number */
/* #define __pass_object_size0 __pass_object_size_n(0) ### define is not number */
/* #define __bos_unevaluated_lt (bos_val,val) ((bos_val) != __BIONIC_FORTIFY_UNKNOWN_SIZE && (bos_val) < (val)) ### define is not number */
/* #define __bos_unevaluated_le (bos_val,val) ((bos_val) != __BIONIC_FORTIFY_UNKNOWN_SIZE && (bos_val) <= (val)) ### define is not number */
/* #define __bos_dynamic_check_impl_and (bos_val,op,index,cond) ((bos_val) == __BIONIC_FORTIFY_UNKNOWN_SIZE || (__builtin_constant_p(index) && bos_val op index && (cond))) ### define is not number */
/* #define __bos_dynamic_check_impl (bos_val,op,index) __bos_dynamic_check_impl_and(bos_val, op, index, 1) ### define is not number */
/* #define __bos_trivially_ge (bos_val,index) __bos_dynamic_check_impl((bos_val), >=, (index)) ### define is not number */
/* #define __bos_trivially_gt (bos_val,index) __bos_dynamic_check_impl((bos_val), >, (index)) ### define is not number */
/* #define __overloadable __attribute__((__overloadable__)) ### define is not number */
/* #define __diagnose_as_builtin (...) __attribute__((__diagnose_as_builtin__(__VA_ARGS__))) ### define is not number */
/* #define __LIBC_HIDDEN__ __attribute__((__visibility__("hidden"))) ### define is not number */
/* #define __LIBC32_LEGACY_PUBLIC__ __attribute__((__visibility__("default"))) ### define is not number */
/* #define __RENAME (x) __asm__(#x) ### define is not number */
/* #define __unsafe_check_mul_overflow (x,y) ((__SIZE_TYPE__)-1 / (x) < (y)) ### define is not number */
/* #define __BIONIC_AVAILABILITY (__what,...) __attribute__((__availability__(android,strict,__what __VA_OPT__(,) __VA_ARGS__))) ### define is not number */
/* #define __BIONIC_AVAILABILITY_GUARD (api_level) (__ANDROID_MIN_SDK_VERSION__ >= (api_level)) ### define is not number */
/* #define __INTRODUCED_IN (api_level) __BIONIC_AVAILABILITY(introduced=api_level) ### define is not number */
/* #define __DEPRECATED_IN (api_level,msg) __BIONIC_AVAILABILITY(deprecated=api_level, message=msg) ### define is not number */
/* #define __REMOVED_IN (api_level,msg) __BIONIC_AVAILABILITY(obsoleted=api_level, message=msg) ### define is not number */
/* #define __INTRODUCED_IN_32 (api_level) __BIONIC_AVAILABILITY(introduced=api_level) ### define is not number */
/* #define __INTRODUCED_IN_64 (api_level)  ### define is not number */
enum { __ANDROID_API_FUTURE__ = 10000 };
enum { __ANDROID_API_G__ = 9 };
enum { __ANDROID_API_I__ = 14 };
enum { __ANDROID_API_J__ = 16 };
enum { __ANDROID_API_J_MR1__ = 17 };
enum { __ANDROID_API_J_MR2__ = 18 };
enum { __ANDROID_API_K__ = 19 };
enum { __ANDROID_API_L__ = 21 };
enum { __ANDROID_API_L_MR1__ = 22 };
enum { __ANDROID_API_M__ = 23 };
enum { __ANDROID_API_N__ = 24 };
enum { __ANDROID_API_N_MR1__ = 25 };
enum { __ANDROID_API_O__ = 26 };
enum { __ANDROID_API_O_MR1__ = 27 };
enum { __ANDROID_API_P__ = 28 };
enum { __ANDROID_API_Q__ = 29 };
enum { __ANDROID_API_R__ = 30 };
enum { __ANDROID_API_S__ = 31 };
enum { __ANDROID_API_T__ = 33 };
enum { __ANDROID_API_U__ = 34 };
enum { __ANDROID_API_V__ = 35 };
enum { __ANDROID_NDK__ = 1 };
enum { __NDK_MAJOR__ = 29 };
enum { __NDK_MINOR__ = 0 };
enum { __NDK_BETA__ = 0 };
enum { __NDK_BUILD__ = 14206865 };
enum { __NDK_CANARY__ = 0 };
enum { __TERMUX__ = 1 };
/* #define __TERMUX_PREFIX__ "/data/data/com.termux/files/usr" ### define is not number */
/* + END <xlocale.h> /data/data/com.termux/files/usr/bin/../../usr/include/xlocale.h */
]]
