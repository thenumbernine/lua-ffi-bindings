local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/wchar.h */
/* ++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_wchar.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
]] require 'ffi.req' 'c._types' ffi.cdef[[
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_null.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* #define NULL  __DARWIN_NULL ### string, not number "__DARWIN_NULL" */
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_null.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* redefining matching value: #define USE_CLANG_STDDEF 0 */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
]] require 'ffi.req' 'c.machine._types' ffi.cdef[[
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
typedef __darwin_size_t size_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mbstate_t.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/types.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
]] require 'ffi.req' 'c.i386._types' ffi.cdef[[
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h */
typedef signed char int8_t;
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h */
typedef short int16_t;
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h */
typedef int int32_t;
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h */
typedef long long int64_t;
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int8_t.h */
typedef unsigned char u_int8_t;
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int8_t.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int16_t.h */
typedef unsigned short u_int16_t;
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int16_t.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int32_t.h */
typedef unsigned int u_int32_t;
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int32_t.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int64_t.h */
typedef unsigned long long u_int64_t;
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int64_t.h */
typedef int64_t register_t;
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
/* +++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
]] require 'ffi.req' 'c.machine._types' ffi.cdef[[
/* +++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
typedef __darwin_intptr_t intptr_t;
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h */
typedef unsigned long uintptr_t;
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h */
typedef u_int64_t user_addr_t;
typedef u_int64_t user_size_t;
typedef int64_t user_ssize_t;
typedef int64_t user_long_t;
typedef u_int64_t user_ulong_t;
typedef int64_t user_time_t;
typedef int64_t user_off_t;
/* #define USER_ADDR_NULL  ((user_addr_t) 0) ### string, not number "((user_addr_t) 0)" */
typedef u_int64_t syscall_arg_t;
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/i386/types.h */
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/types.h */
typedef __darwin_mbstate_t mbstate_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_mbstate_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ct_rune_t.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
]] require 'ffi.req' 'c.machine._types' ffi.cdef[[
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
typedef __darwin_ct_rune_t ct_rune_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ct_rune_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_rune_t.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
]] require 'ffi.req' 'c.machine._types' ffi.cdef[[
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
typedef __darwin_rune_t rune_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_rune_t.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wchar_t.h */
/* redefining matching value: #define USE_CLANG_STDDEF 0 */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
]] require 'ffi.req' 'c.machine._types' ffi.cdef[[
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
typedef __darwin_wchar_t wchar_t;
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wchar_t.h */
/* manually commented out: enum { WCHAR_MIN = -2147483648 }; */
/* manually commented out: enum { WCHAR_MAX = 2147483647 }; */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdarg.h */
]] require 'ffi.req' 'c.stdarg' ffi.cdef[[
/* +++ END   /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdarg.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h */
]] require 'ffi.req' 'c.stdio' ffi.cdef[[
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdio.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/time.h */
]] require 'ffi.req' 'c.time' ffi.cdef[[
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/time.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/__wctype.h */
/* ++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/___wctype.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
]] require 'ffi.req' 'c._types' ffi.cdef[[
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wint_t.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
]] require 'ffi.req' 'c.machine._types' ffi.cdef[[
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
typedef __darwin_wint_t wint_t;
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wint_t.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_wctype_t.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
]] require 'ffi.req' 'c._types' ffi.cdef[[
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
typedef __darwin_wctype_t wctype_t;
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types/_wctype_t.h */
enum { WEOF = -1 };
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/ctype.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_ctype.h */
/* +++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/runetype.h */
/* ++++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
]] require 'ffi.req' 'c._types' ffi.cdef[[
/* ++++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
/* ++++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* redefining matching value: #define USE_CLANG_STDDEF 0 */
/* ++++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* ++++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ct_rune_t.h */
/* ++++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ct_rune_t.h */
/* ++++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_rune_t.h */
/* ++++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_rune_t.h */
/* ++++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wchar_t.h */
/* redefining matching value: #define USE_CLANG_STDDEF 0 */
/* ++++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wchar_t.h */
/* ++++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wint_t.h */
/* ++++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wint_t.h */
typedef struct {
	__darwin_rune_t __min;
	__darwin_rune_t __max;
	__darwin_rune_t __map;
	__uint32_t *__types;
} _RuneEntry;
typedef struct {
	int __nranges;
	_RuneEntry *__ranges;
} _RuneRange;
typedef struct {
	char __name[14];
	__uint32_t __mask;
} _RuneCharClass;
typedef struct {
	char __magic[8];
	char __encoding[32];
	__darwin_rune_t (*__sgetrune)(const char *, __darwin_size_t, char const **);
	int (*__sputrune)(__darwin_rune_t, char *, __darwin_size_t, char **);
	__darwin_rune_t __invalid_rune;
	__uint32_t __runetype[(1 <<8 )];
	__darwin_rune_t __maplower[(1 <<8 )];
	__darwin_rune_t __mapupper[(1 <<8 )];
	_RuneRange __runetype_ext;
	_RuneRange __maplower_ext;
	_RuneRange __mapupper_ext;
	void *__variable;
	int __variable_len;
	int __ncharclasses;
	_RuneCharClass *__charclasses;
} _RuneLocale;
extern _RuneLocale _DefaultRuneLocale;
extern _RuneLocale *_CurrentRuneLocale;
/* +++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/runetype.h */
unsigned long ___runetype(__darwin_ct_rune_t);
__darwin_ct_rune_t ___tolower(__darwin_ct_rune_t);
__darwin_ct_rune_t ___toupper(__darwin_ct_rune_t);
inline int isascii(int _c) {
	return ((_c & ~0x7F) == 0);
} int __maskrune(__darwin_ct_rune_t, unsigned long);
inline int __istype(__darwin_ct_rune_t _c, unsigned long _f) {
	return (isascii(_c) ? !!(_DefaultRuneLocale.__runetype[_c] & _f) : !!__maskrune(_c, _f));
} inline __darwin_ct_rune_t __isctype(__darwin_ct_rune_t _c, unsigned long _f) {
	return (_c < 0 || _c >= (1 <<8 )) ? 0 : !!(_DefaultRuneLocale.__runetype[_c] & _f);
} __darwin_ct_rune_t __toupper(__darwin_ct_rune_t);
__darwin_ct_rune_t __tolower(__darwin_ct_rune_t);
inline int __wcwidth(__darwin_ct_rune_t _c) {
	unsigned int _x;
	if (_c == 0) return (0);
	_x = (unsigned int)__maskrune(_c, 0xe0000000L|0x00040000L);
	if ((_x & 0xe0000000L) != 0) return ((_x & 0xe0000000L) >> 30);
	return ((_x & 0x00040000L) != 0 ? 1 : -1);
} inline int isalnum(int _c) {
	return (__istype(_c, 0x00000100L|0x00000400L));
} inline int isalpha(int _c) {
	return (__istype(_c, 0x00000100L));
} inline int isblank(int _c) {
	return (__istype(_c, 0x00020000L));
} inline int iscntrl(int _c) {
	return (__istype(_c, 0x00000200L));
} inline int isdigit(int _c) {
	return (__isctype(_c, 0x00000400L));
} inline int isgraph(int _c) {
	return (__istype(_c, 0x00000800L));
} inline int islower(int _c) {
	return (__istype(_c, 0x00001000L));
} inline int isprint(int _c) {
	return (__istype(_c, 0x00040000L));
} inline int ispunct(int _c) {
	return (__istype(_c, 0x00002000L));
} inline int isspace(int _c) {
	return (__istype(_c, 0x00004000L));
} inline int isupper(int _c) {
	return (__istype(_c, 0x00008000L));
} inline int isxdigit(int _c) {
	return (__isctype(_c, 0x00010000L));
} inline int toascii(int _c) {
	return (_c & 0x7F);
} inline int tolower(int _c) {
	return (__tolower(_c));
} inline int toupper(int _c) {
	return (__toupper(_c));
} inline int digittoint(int _c) {
	return (__maskrune(_c, 0x0F));
} inline int ishexnumber(int _c) {
	return (__istype(_c, 0x00010000L));
} inline int isideogram(int _c) {
	return (__istype(_c, 0x00080000L));
} inline int isnumber(int _c) {
	return (__istype(_c, 0x00000400L));
} inline int isphonogram(int _c) {
	return (__istype(_c, 0x00200000L));
} inline int isrune(int _c) {
	return (__istype(_c, 0xFFFFFFF0L));
} inline int isspecial(int _c) {
	return (__istype(_c, 0x00100000L));
}
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_ctype.h */
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/ctype.h */
inline int iswalnum(wint_t _wc) {
	return (__istype(_wc, 0x00000100L|0x00000400L));
} inline int iswalpha(wint_t _wc) {
	return (__istype(_wc, 0x00000100L));
} inline int iswcntrl(wint_t _wc) {
	return (__istype(_wc, 0x00000200L));
} inline int iswctype(wint_t _wc, wctype_t _charclass) {
	return (__istype(_wc, _charclass));
} inline int iswdigit(wint_t _wc) {
	return (__isctype(_wc, 0x00000400L));
} inline int iswgraph(wint_t _wc) {
	return (__istype(_wc, 0x00000800L));
} inline int iswlower(wint_t _wc) {
	return (__istype(_wc, 0x00001000L));
} inline int iswprint(wint_t _wc) {
	return (__istype(_wc, 0x00040000L));
} inline int iswpunct(wint_t _wc) {
	return (__istype(_wc, 0x00002000L));
} inline int iswspace(wint_t _wc) {
	return (__istype(_wc, 0x00004000L));
} inline int iswupper(wint_t _wc) {
	return (__istype(_wc, 0x00008000L));
} inline int iswxdigit(wint_t _wc) {
	return (__isctype(_wc, 0x00010000L));
} inline wint_t towlower(wint_t _wc) {
	return (__tolower(_wc));
} inline wint_t towupper(wint_t _wc) {
	return (__toupper(_wc));
} wctype_t wctype(const char *);
/* ++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/___wctype.h */
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/__wctype.h */
wint_t btowc(int);
wint_t fgetwc(FILE *);
wchar_t *fgetws(wchar_t * restrict, int, FILE * restrict);
wint_t fputwc(wchar_t, FILE *);
int fputws(const wchar_t * restrict, FILE * restrict);
int fwide(FILE *, int);
int fwprintf(FILE * restrict, const wchar_t * restrict, ...);
int fwscanf(FILE * restrict, const wchar_t * restrict, ...);
wint_t getwc(FILE *);
wint_t getwchar(void);
size_t mbrlen(const char * restrict, size_t, mbstate_t * restrict);
size_t mbrtowc(wchar_t * restrict, const char * restrict, size_t, mbstate_t * restrict);
int mbsinit(const mbstate_t *);
size_t mbsrtowcs(wchar_t * restrict, const char ** restrict, size_t, mbstate_t * restrict);
wint_t putwc(wchar_t, FILE *);
wint_t putwchar(wchar_t);
int swprintf(wchar_t * restrict, size_t, const wchar_t * restrict, ...);
int swscanf(const wchar_t * restrict, const wchar_t * restrict, ...);
wint_t ungetwc(wint_t, FILE *);
int vfwprintf(FILE * restrict, const wchar_t * restrict, __darwin_va_list);
int vswprintf(wchar_t * restrict, size_t, const wchar_t * restrict, __darwin_va_list);
int vwprintf(const wchar_t * restrict, __darwin_va_list);
size_t wcrtomb(char * restrict, wchar_t, mbstate_t * restrict);
wchar_t *wcscat(wchar_t * restrict, const wchar_t * restrict);
wchar_t *wcschr(const wchar_t *, wchar_t);
int wcscmp(const wchar_t *, const wchar_t *);
int wcscoll(const wchar_t *, const wchar_t *);
wchar_t *wcscpy(wchar_t * restrict, const wchar_t * restrict);
size_t wcscspn(const wchar_t *, const wchar_t *);
size_t wcsftime(wchar_t * restrict, size_t, const wchar_t * restrict, const struct tm * restrict) __asm("wcsftime");
size_t wcslen(const wchar_t *);
wchar_t *wcsncat(wchar_t * restrict, const wchar_t * restrict, size_t);
int wcsncmp(const wchar_t *, const wchar_t *, size_t);
wchar_t *wcsncpy(wchar_t * restrict , const wchar_t * restrict, size_t);
wchar_t *wcspbrk(const wchar_t *, const wchar_t *);
wchar_t *wcsrchr(const wchar_t *, wchar_t);
size_t wcsrtombs(char * restrict, const wchar_t ** restrict, size_t, mbstate_t * restrict);
size_t wcsspn(const wchar_t *, const wchar_t *);
wchar_t *wcsstr(const wchar_t * restrict, const wchar_t * restrict);
size_t wcsxfrm(wchar_t * restrict, const wchar_t * restrict, size_t);
int wctob(wint_t);
double wcstod(const wchar_t * restrict, wchar_t ** restrict);
wchar_t *wcstok(wchar_t * restrict, const wchar_t * restrict, wchar_t ** restrict);
long wcstol(const wchar_t * restrict, wchar_t ** restrict, int);
unsigned long wcstoul(const wchar_t * restrict, wchar_t ** restrict, int);
wchar_t *wmemchr(const wchar_t *, wchar_t, size_t);
int wmemcmp(const wchar_t *, const wchar_t *, size_t);
wchar_t *wmemcpy(wchar_t * restrict, const wchar_t * restrict, size_t);
wchar_t *wmemmove(wchar_t *, const wchar_t *, size_t);
wchar_t *wmemset(wchar_t *, wchar_t, size_t);
int wprintf(const wchar_t * restrict, ...);
int wscanf(const wchar_t * restrict, ...);
int wcswidth(const wchar_t *, size_t);
int wcwidth(wchar_t);
int vfwscanf(FILE * restrict, const wchar_t * restrict, __darwin_va_list);
int vswscanf(const wchar_t * restrict, const wchar_t * restrict, __darwin_va_list);
int vwscanf(const wchar_t * restrict, __darwin_va_list);
float wcstof(const wchar_t * restrict, wchar_t ** restrict);
long double wcstold(const wchar_t * restrict, wchar_t ** restrict);
long long wcstoll(const wchar_t * restrict, wchar_t ** restrict, int);
unsigned long long wcstoull(const wchar_t * restrict, wchar_t ** restrict, int);
size_t mbsnrtowcs(wchar_t * restrict, const char ** restrict, size_t, size_t, mbstate_t * restrict);
wchar_t *wcpcpy(wchar_t * restrict, const wchar_t * restrict);
wchar_t *wcpncpy(wchar_t * restrict, const wchar_t * restrict, size_t);
wchar_t *wcsdup(const wchar_t *);
int wcscasecmp(const wchar_t *, const wchar_t *);
int wcsncasecmp(const wchar_t *, const wchar_t *, size_t n);
size_t wcsnlen(const wchar_t *, size_t);
size_t wcsnrtombs(char * restrict, const wchar_t ** restrict, size_t, size_t, mbstate_t * restrict);
FILE *open_wmemstream(wchar_t ** __bufp, size_t * __sizep);
wchar_t *fgetwln(FILE * restrict, size_t *);
size_t wcslcat(wchar_t *, const wchar_t *, size_t);
size_t wcslcpy(wchar_t *, const wchar_t *, size_t);
/* ++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_wchar.h */
/* + END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/wchar.h */
]]
