local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
typedef _Bool __crt_bool;
/* #define NULL ((void *)0) ### string, not number "((void *)0)" */
void __cdecl _invalid_parameter_noinfo(void);
void __cdecl _invalid_parameter_noinfo_noreturn(void);
void __cdecl _invoke_watson( wchar_t const* _Expression, wchar_t const* _FunctionName, wchar_t const* _FileName, unsigned int _LineNo, uintptr_t _Reserved);
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
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt.h */
]]
