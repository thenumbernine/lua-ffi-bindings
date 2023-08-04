local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_stdio_config.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
enum { _CRT_STDIO_INLINE = 1 };
/* #define _CRT_INTERNAL_STDIO_SYMBOL_PREFIX "" ### string, not number "\"\"" */
 
/* #define _CRT_INTERNAL_LOCAL_PRINTF_OPTIONS (*__local_stdio_printf_options()) ### string, not number "(*__local_stdio_printf_options())" */
/* #define _CRT_INTERNAL_LOCAL_SCANF_OPTIONS  (*__local_stdio_scanf_options ()) ### string, not number "(*__local_stdio_scanf_options ())" */
/* #define _CRT_INTERNAL_PRINTF_LEGACY_VSPRINTF_NULL_TERMINATION (1ULL << 0) ### string, not number "(1ULL << 0)" */
/* #define _CRT_INTERNAL_PRINTF_STANDARD_SNPRINTF_BEHAVIOR       (1ULL << 1) ### string, not number "(1ULL << 1)" */
/* #define _CRT_INTERNAL_PRINTF_LEGACY_WIDE_SPECIFIERS           (1ULL << 2) ### string, not number "(1ULL << 2)" */
/* #define _CRT_INTERNAL_PRINTF_LEGACY_MSVCRT_COMPATIBILITY      (1ULL << 3) ### string, not number "(1ULL << 3)" */
/* #define _CRT_INTERNAL_PRINTF_LEGACY_THREE_DIGIT_EXPONENTS     (1ULL << 4) ### string, not number "(1ULL << 4)" */
/* #define _CRT_INTERNAL_PRINTF_STANDARD_ROUNDING                (1ULL << 5) ### string, not number "(1ULL << 5)" */
/* #define _CRT_INTERNAL_SCANF_SECURECRT                   (1ULL << 0) ### string, not number "(1ULL << 0)" */
/* #define _CRT_INTERNAL_SCANF_LEGACY_WIDE_SPECIFIERS      (1ULL << 1) ### string, not number "(1ULL << 1)" */
/* #define _CRT_INTERNAL_SCANF_LEGACY_MSVCRT_COMPATIBILITY (1ULL << 2) ### string, not number "(1ULL << 2)" */
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_stdio_config.h */
]]
