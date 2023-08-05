local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
enum { _UCRT_DISABLED_WARNING_4412 = 1 };
enum { _UCRT_EXTRA_DISABLED_WARNINGS = 1 };
/* #define _UCRT_DISABLED_WARNINGS 4324 _UCRT_DISABLED_WARNING_4412 4514 4574 4710 4793 4820 4995 4996 28719 28726 28727 _UCRT_EXTRA_DISABLED_WARNINGS ### string, not number "4324 _UCRT_DISABLED_WARNING_4412 4514 4574 4710 4793 4820 4995 4996 28719 28726 28727 _UCRT_EXTRA_DISABLED_WARNINGS" */
enum { _UCRT_DISABLE_CLANG_WARNINGS = 1 };
enum { _UCRT_RESTORE_CLANG_WARNINGS = 1 };
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
enum { _ACRTIMP = 1 };
/* #define _ACRTIMP_ALT _ACRTIMP ### string, not number "_ACRTIMP" */
enum { _DCRTIMP = 1 };
/* #define _CRTRESTRICT __declspec(restrict) ### string, not number "__declspec(restrict)" */
/* #define _CRTALLOCATOR __declspec(allocator) ### string, not number "__declspec(allocator)" */
enum { _CRT_JIT_INTRINSIC = 1 };
enum { _CRT_GUARDOVERFLOW = 1 };
enum { _CRT_HYBRIDPATCHABLE = 1 };
enum { _CRT_INLINE_PURE_SECURITYCRITICAL_ATTRIBUTE = 1 };
enum { _CONST_RETURN = 1 };
/* #define _WConst_return _CONST_RETURN ### string, not number "_CONST_RETURN" */
enum { _Check_return_opt_ = 1 };
enum { _Check_return_wat_ = 1 };
typedef _Bool __crt_bool;
enum { _ARGMAX = 100 };
enum { _TRUNCATE = -1 };
enum { _CRT_INT_MAX = 2147483647 };
enum { _CRT_SIZE_MAX = -1 };
/* #define __FILEW__     _CRT_WIDE(__FILE__) ### string, not number "_CRT_WIDE(__FILE__)" */
/* #define __FUNCTIONW__ _CRT_WIDE(__FUNCTION__) ### string, not number "_CRT_WIDE(__FUNCTION__)" */
/* #define NULL ((void *)0) ### string, not number "((void *)0)" */
enum { _CRT_FUNCTIONS_REQUIRED = 1 };
enum { _CRT_HAS_CXX17 = 0 };
enum { _CRT_USE_WINAPI_FAMILY_DESKTOP_APP = 1 };
enum { _ARM_WINAPI_PARTITION_DESKTOP_SDK_AVAILABLE = 1 };
enum { _CRT_BUILD_DESKTOP_APP = 1 };
void __cdecl _invalid_parameter_noinfo(void);
void __cdecl _invalid_parameter_noinfo_noreturn(void);
void __cdecl _invoke_watson( wchar_t const* _Expression, wchar_t const* _FunctionName, wchar_t const* _FileName, unsigned int _LineNo, uintptr_t _Reserved);
enum { _CRT_INTERNAL_NONSTDC_NAMES = 1 };
enum { _PGLOBAL = 1 };
enum { _AGLOBAL = 1 };
enum { __STDC_SECURE_LIB__ = 200411 };
enum { __GOT_SECURE_LIB__ = 200411 };
enum { _SECURECRT_FILL_BUFFER_PATTERN = 254 };
enum { _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES = 0 };
enum { _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_COUNT = 0 };
enum { _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES = 0 };
enum { _CRT_SECURE_CPP_OVERLOAD_STANDARD_NAMES_MEMORY = 0 };
enum { _CRT_SECURE_CPP_OVERLOAD_SECURE_NAMES_MEMORY = 0 };
/* #define _CRT_SECURE_CPP_NOTHROW throw() ### string, not number "throw()" */
typedef int errno_t;
typedef unsigned short wint_t;
typedef unsigned short wctype_t;
typedef long __time32_t;
typedef __int64 __time64_t;
typedef struct __crt_locale_data_public {
	unsigned short const* _locale_pctype;
	int _locale_mb_cur_max;
	unsigned int _locale_lc_codepage;
} __crt_locale_data_public;
typedef struct __crt_locale_pointers {
	struct __crt_locale_data* locinfo;
	struct __crt_multibyte_data* mbcinfo;
} __crt_locale_pointers;
typedef __crt_locale_pointers* _locale_t;
typedef struct _Mbstatet {
	unsigned long _Wchar;
	unsigned short _Byte, _State;
} _Mbstatet;
typedef _Mbstatet mbstate_t;
typedef __time64_t time_t;
enum { _TIME_T_DEFINED = 1 };
enum { __EMPTY_DECLSPEC = 1 };
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]]
