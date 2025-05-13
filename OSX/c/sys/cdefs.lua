local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++ BEGIN <sys/_symbol_aliasing.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* ++ END <sys/_symbol_aliasing.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* ++ BEGIN <sys/_posix_availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* ++ END <sys/_posix_availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
enum { __BEGIN_DECLS = 1 };
enum { __END_DECLS = 1 };
/* #define __has_cpp_attribute (x) 0 ### define is not number */
/* #define __P (protos) protos ### define is not number */
/* #define __CONCAT (x,y) x ## y ### define is not number */
/* #define __STRING (x) #x ### define is not number */
/* #define __const const ### define is not number */
/* #define __signed signed ### define is not number */
/* #define __volatile volatile ### define is not number */
/* #define __dead2 __attribute__((__noreturn__)) ### define is not number */
/* #define __pure2 __attribute__((__const__)) ### define is not number */
/* #define __stateful_pure __attribute__((__pure__)) ### define is not number */
/* #define __unused __attribute__((__unused__)) ### define is not number */
/* #define __used __attribute__((__used__)) ### define is not number */
/* #define __cold __attribute__((__cold__)) ### define is not number */
/* #define __returns_nonnull __attribute((returns_nonnull)) ### define is not number */
/* #define __exported __attribute__((__visibility__("default"))) ### define is not number */
/* #define __exported_push _Pragma("GCC visibility push(default)") ### define is not number */
/* #define __exported_pop _Pragma("GCC visibility pop") ### define is not number */
/* #define __deprecated __attribute__((__deprecated__)) ### define is not number */
/* #define __deprecated_msg (_msg) __attribute__((__deprecated__(_msg))) ### define is not number */
/* #define __deprecated_enum_msg (_msg) __deprecated_msg(_msg) ### define is not number */
/* #define __kpi_deprecated (_msg)  ### define is not number */
/* #define __unavailable __attribute__((__unavailable__)) ### define is not number */
enum { __kpi_unavailable = 1 };
enum { __kpi_deprecated_arm64_macos_unavailable = 1 };
enum { __dead = 1 };
enum { __pure = 1 };
/* #define __restrict restrict ### define is not number */
/* #define __disable_tail_calls __attribute__((__disable_tail_calls__)) ### define is not number */
/* #define __not_tail_called __attribute__((__not_tail_called__)) ### define is not number */
/* #define __result_use_check __attribute__((__warn_unused_result__)) ### define is not number */
/* #define __swift_unavailable (_msg) __attribute__((__availability__(swift, unavailable, message=_msg))) ### define is not number */
/* #define __swift_unavailable_from_async (_msg) __attribute__((__swift_attr__("@_unavailableFromAsync(message: \"" _msg "\")"))) ### define is not number */
/* #define __swift_nonisolated __attribute__((__swift_attr__("nonisolated"))) ### define is not number */
/* #define __swift_nonisolated_unsafe __attribute__((__swift_attr__("nonisolated(unsafe)"))) ### define is not number */
/* #define __abortlike __dead2 __cold __not_tail_called ### define is not number */
/* #define __header_inline inline ### define is not number */
/* #define __header_always_inline __header_inline __attribute__ ((__always_inline__)) ### define is not number */
/* #define __unreachable_ok_push _Pragma("clang diagnostic push") _Pragma("clang diagnostic ignored \"-Wunreachable-code\"") ### define is not number */
/* #define __unreachable_ok_pop _Pragma("clang diagnostic pop") ### define is not number */
/* #define __printflike (fmtarg,firstvararg) __attribute__((__format__ (__printf__, fmtarg, firstvararg))) ### define is not number */
/* #define __printf0like (fmtarg,firstvararg) __attribute__((__format__ (__printf0__, fmtarg, firstvararg))) ### define is not number */
/* #define __scanflike (fmtarg,firstvararg) __attribute__((__format__ (__scanf__, fmtarg, firstvararg))) ### define is not number */
/* #define __osloglike (fmtarg,firstvararg) __attribute__((__format__ (__os_log__, fmtarg, firstvararg))) ### define is not number */
/* #define __IDSTRING (name,string) static const char name[] __used = string ### define is not number */
/* #define __COPYRIGHT (s) __IDSTRING(copyright,s) ### define is not number */
/* #define __RCSID (s) __IDSTRING(rcsid,s) ### define is not number */
/* #define __SCCSID (s) __IDSTRING(sccsid,s) ### define is not number */
/* #define __PROJECT_VERSION (s) __IDSTRING(project_version,s) ### define is not number */
/* #define __FBSDID (s)  ### define is not number */
/* #define __DECONST (type,var) __CAST_AWAY_QUALIFIER(var, const, type) ### define is not number */
/* #define __DEVOLATILE (type,var) __CAST_AWAY_QUALIFIER(var, volatile, type) ### define is not number */
/* #define __DEQUALIFY (type,var) __CAST_AWAY_QUALIFIER(var, const volatile, type) ### define is not number */
/* #define __alloc_align (n) __attribute__((alloc_align(n))) ### define is not number */
/* #define __alloc_size (...) __attribute__((alloc_size(__VA_ARGS__))) ### define is not number */
/* #define __unsafe_buffer_usage __attribute__((__unsafe_buffer_usage__)) ### define is not number */
/* #define __unsafe_buffer_usage_begin _Pragma("clang unsafe_buffer_usage begin") ### define is not number */
/* #define __unsafe_buffer_usage_end _Pragma("clang unsafe_buffer_usage end") ### define is not number */
enum { __DARWIN_ONLY_64_BIT_INO_T = 0 };
enum { __DARWIN_ONLY_UNIX_CONFORMANCE = 1 };
enum { __DARWIN_ONLY_VERS_1050 = 0 };
enum { __DARWIN_UNIX03 = 1 };
enum { __DARWIN_VERS_1050 = 1 };
enum { __DARWIN_NON_CANCELABLE = 0 };
enum { __DARWIN_SUF_UNIX03 = 1 };
/* #define __DARWIN_SUF_64_BIT_INO_T "$INODE64" ### define is not number */
/* #define __DARWIN_SUF_1050 "$1050" ### define is not number */
enum { __DARWIN_SUF_NON_CANCELABLE = 1 };
/* #define __DARWIN_SUF_EXTSN "$DARWIN_EXTSN" ### define is not number */
/* #define __DARWIN_ALIAS (sym) __asm("_" __STRING(sym) __DARWIN_SUF_UNIX03) ### define is not number */
/* #define __DARWIN_ALIAS_C (sym) __asm("_" __STRING(sym) __DARWIN_SUF_NON_CANCELABLE __DARWIN_SUF_UNIX03) ### define is not number */
/* #define __DARWIN_ALIAS_I (sym) __asm("_" __STRING(sym) __DARWIN_SUF_64_BIT_INO_T __DARWIN_SUF_UNIX03) ### define is not number */
/* #define __DARWIN_NOCANCEL (sym) __asm("_" __STRING(sym) __DARWIN_SUF_NON_CANCELABLE) ### define is not number */
/* #define __DARWIN_INODE64 (sym) __asm("_" __STRING(sym) __DARWIN_SUF_64_BIT_INO_T) ### define is not number */
/* #define __DARWIN_1050 (sym) __asm("_" __STRING(sym) __DARWIN_SUF_1050) ### define is not number */
/* #define __DARWIN_1050ALIAS (sym) __asm("_" __STRING(sym) __DARWIN_SUF_1050 __DARWIN_SUF_UNIX03) ### define is not number */
/* #define __DARWIN_1050ALIAS_C (sym) __asm("_" __STRING(sym) __DARWIN_SUF_1050 __DARWIN_SUF_NON_CANCELABLE __DARWIN_SUF_UNIX03) ### define is not number */
/* #define __DARWIN_1050ALIAS_I (sym) __asm("_" __STRING(sym) __DARWIN_SUF_1050 __DARWIN_SUF_64_BIT_INO_T __DARWIN_SUF_UNIX03) ### define is not number */
/* #define __DARWIN_1050INODE64 (sym) __asm("_" __STRING(sym) __DARWIN_SUF_1050 __DARWIN_SUF_64_BIT_INO_T) ### define is not number */
/* #define __DARWIN_EXTSN (sym) __asm("_" __STRING(sym) __DARWIN_SUF_EXTSN) ### define is not number */
/* #define __DARWIN_EXTSN_C (sym) __asm("_" __STRING(sym) __DARWIN_SUF_EXTSN __DARWIN_SUF_NON_CANCELABLE) ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_0 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_1 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_2_2 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_0 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_1 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_3_2 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_0 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_1 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_2 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_4_3 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_0 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_5_1 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_0 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_6_1 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_0 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_7_1 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_0 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_1 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_2 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_3 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_8_4 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_0 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_1 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_2 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_9_3 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_0 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_1 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_2 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_10_3 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_0 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_1 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_2 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_3 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_11_4 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_0 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_1 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_2 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_3 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_12_4 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_0 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_1 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_2 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_3 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_4 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_5 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_6 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_13_7 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_0 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_1 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_2 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_3 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_4 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_5 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_6 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_7 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_14_8 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_0 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_1 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_2 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_3 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_4 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_5 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_6 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_7 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_15_8 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_0 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_1 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_2 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_3 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_4 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_5 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_6 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_16_7 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_0 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_1 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_2 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_3 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_4 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_17_5 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_0 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_1 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_IPHONE___IPHONE_18_2 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_0 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_1 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_2 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_3 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_4 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_5 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_6 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_7 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_8 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_9 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_10 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_2 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_10_3 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_11 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_2 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_3 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_11_4 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_12 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_1 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_2 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_12_4 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_13 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_1 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_2 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_13_4 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_14 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_1 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_4 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_5 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_14_6 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_15 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_1 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_15_4 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_10_16 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_11_0 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_11_1 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_11_3 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_11_4 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_11_5 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_11_6 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_12_0 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_12_1 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_12_2 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_12_3 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_12_4 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_12_5 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_12_6 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_12_7 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_13_0 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_13_1 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_13_2 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_13_3 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_13_4 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_13_5 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_13_6 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_14_0 (x) x ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_14_1 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_14_2 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_14_3 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_14_4 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_14_5 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_15_0 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_15_1 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING_MAC___MAC_15_2 (x)  ### define is not number */
/* #define __DARWIN_ALIAS_STARTING (_mac,_iphone,x) __DARWIN_ALIAS_STARTING_MAC_##_mac(x) ### define is not number */
enum { ___POSIX_C_DEPRECATED_STARTING_198808L = 1 };
enum { ___POSIX_C_DEPRECATED_STARTING_199009L = 1 };
enum { ___POSIX_C_DEPRECATED_STARTING_199209L = 1 };
enum { ___POSIX_C_DEPRECATED_STARTING_199309L = 1 };
enum { ___POSIX_C_DEPRECATED_STARTING_199506L = 1 };
enum { ___POSIX_C_DEPRECATED_STARTING_200112L = 1 };
enum { ___POSIX_C_DEPRECATED_STARTING_200809L = 1 };
/* #define __POSIX_C_DEPRECATED (ver) ___POSIX_C_DEPRECATED_STARTING_##ver ### define is not number */
enum { __DARWIN_C_ANSI = 010000 };
enum { __DARWIN_C_FULL = 900000 };
enum { __DARWIN_C_LEVEL = 900000 };
enum { __STDC_WANT_LIB_EXT1__ = 1 };
enum { __DARWIN_NO_LONG_LONG = 0 };
enum { _DARWIN_FEATURE_64_BIT_INODE = 1 };
enum { _DARWIN_FEATURE_ONLY_UNIX_CONFORMANCE = 1 };
enum { _DARWIN_FEATURE_UNIX_CONFORMANCE = 3 };
/* #define __CAST_AWAY_QUALIFIER (variable,qualifier,type) _Pragma("GCC diagnostic push") _Pragma("GCC diagnostic ignored \"-Wcast-qual\"") _Pragma("GCC diagnostic ignored \"-Wcast-align\"") _Pragma("GCC diagnostic ignored \"-Waddress-of-packed-member\"") ((type)(variable)) _Pragma("GCC diagnostic pop") ### define is not number */
/* #define __XNU_PRIVATE_EXTERN __attribute__((visibility("hidden"))) ### define is not number */
/* #define __counted_by (N)  ### define is not number */
/* #define __counted_by_or_null (N)  ### define is not number */
/* #define __sized_by (N)  ### define is not number */
/* #define __sized_by_or_null (N)  ### define is not number */
/* #define __ended_by (E)  ### define is not number */
/* #define __terminated_by (T)  ### define is not number */
/* #define __ptrcheck_abi_assume_single ()  ### define is not number */
/* #define __ptrcheck_abi_assume_unsafe_indexable ()  ### define is not number */
/* #define __unsafe_forge_bidi_indexable (T,P,S) ((T)(P)) ### define is not number */
/* #define __unsafe_forge_single (T,P) ((T)(P)) ### define is not number */
/* #define __unsafe_forge_terminated_by (T,P,E) ((T)(P)) ### define is not number */
/* #define __unsafe_forge_null_terminated (T,P) ((T)(P)) ### define is not number */
/* #define __terminated_by_to_indexable (P) (P) ### define is not number */
/* #define __unsafe_terminated_by_to_indexable (P) (P) ### define is not number */
/* #define __null_terminated_to_indexable (P) (P) ### define is not number */
/* #define __unsafe_null_terminated_to_indexable (P) (P) ### define is not number */
/* #define __unsafe_terminated_by_from_indexable (T,P,...) (P) ### define is not number */
/* #define __unsafe_null_terminated_from_indexable (P,...) (P) ### define is not number */
enum { __array_decay_dicards_count_in_parameters = 1 };
enum { __unsafe_late_const = 1 };
enum { __ptrcheck_unavailable = 1 };
/* #define __ptrcheck_unavailable_r (REPLACEMENT)  ### define is not number */
/* #define __ASSUME_PTR_ABI_SINGLE_BEGIN __ptrcheck_abi_assume_single() ### define is not number */
/* #define __ASSUME_PTR_ABI_SINGLE_END __ptrcheck_abi_assume_unsafe_indexable() ### define is not number */
enum { __header_indexable = 1 };
enum { __header_bidi_indexable = 1 };
/* #define __compiler_barrier () __asm__ __volatile__("" ::: "memory") ### define is not number */
/* #define __enum_open __attribute__((__enum_extensibility__(open))) ### define is not number */
/* #define __enum_closed __attribute__((__enum_extensibility__(closed))) ### define is not number */
/* #define __enum_options __attribute__((__flag_enum__)) ### define is not number */
/* #define __enum_decl (_name,_type,...) typedef enum : _type __VA_ARGS__ __enum_open _name ### define is not number */
/* #define __enum_closed_decl (_name,_type,...) typedef enum : _type __VA_ARGS__ __enum_closed _name ### define is not number */
/* #define __options_decl (_name,_type,...) typedef enum : _type __VA_ARGS__ __enum_open __enum_options _name ### define is not number */
/* #define __options_closed_decl (_name,_type,...) typedef enum : _type __VA_ARGS__ __enum_closed __enum_options _name ### define is not number */
enum { __kernel_ptr_semantics = 1 };
enum { __kernel_data_semantics = 1 };
enum { __kernel_dual_semantics = 1 };
enum { __xnu_data_size = 1 };
enum { __xnu_returns_data_pointer = 1 };
/* + END <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
]]
