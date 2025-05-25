local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <ctype.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/ctype.h */
/* ++ BEGIN <_ctype.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_ctype.h */
/* +++ BEGIN <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
]] require 'ffi.req' 'c.sys.cdefs' ffi.cdef[[
/* +++ END <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN <runetype.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/runetype.h */
/* ++++ BEGIN <_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
]] require 'ffi.req' 'c._types' ffi.cdef[[
/* ++++ END <_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
/* ++++ BEGIN <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
]] require 'ffi.req' 'c.sys._types._size_t' ffi.cdef[[
/* ++++ END <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* ++++ BEGIN <sys/_types/_ct_rune_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ct_rune_t.h */
]] require 'ffi.req' 'c.sys._types._ct_rune_t' ffi.cdef[[
/* ++++ END <sys/_types/_ct_rune_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ct_rune_t.h */
/* ++++ BEGIN <sys/_types/_rune_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_rune_t.h */
]] require 'ffi.req' 'c.sys._types._rune_t' ffi.cdef[[
/* ++++ END <sys/_types/_rune_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_rune_t.h */
/* ++++ BEGIN <sys/_types/_wchar_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wchar_t.h */
]] require 'ffi.req' 'c.sys._types._wchar_t' ffi.cdef[[
/* ++++ END <sys/_types/_wchar_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wchar_t.h */
/* ++++ BEGIN <sys/_types/_wint_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wint_t.h */
]] require 'ffi.req' 'c.sys._types._wint_t' ffi.cdef[[
/* ++++ END <sys/_types/_wint_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wint_t.h */
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
/* +++ END <runetype.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/runetype.h */
int isalnum(int);
int isalpha(int);
int isblank(int);
int iscntrl(int);
int isdigit(int);
int isgraph(int);
int islower(int);
int isprint(int);
int ispunct(int);
int isspace(int);
int isupper(int);
int isxdigit(int);
int tolower(int);
int toupper(int);
int isascii(int);
int toascii(int);
int _tolower(int);
int _toupper(int);
int digittoint(int);
int ishexnumber(int);
int isideogram(int);
int isnumber(int);
int isphonogram(int);
int isrune(int);
int isspecial(int);
/* ++ END <_ctype.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_ctype.h */
/* #define _CACHED_RUNES (1 <<8 ) ### define is not number */
/* #define _CRMASK (~(_CACHED_RUNES - 1)) ### define is not number */
/* #define _RUNE_MAGIC_A "RuneMagA" ### define is not number */
enum { _CTYPE_A = 0x00000100 };
enum { _CTYPE_C = 0x00000200 };
enum { _CTYPE_D = 0x00000400 };
enum { _CTYPE_G = 0x00000800 };
enum { _CTYPE_L = 0x00001000 };
enum { _CTYPE_P = 0x00002000 };
enum { _CTYPE_S = 0x00004000 };
enum { _CTYPE_U = 0x00008000 };
enum { _CTYPE_X = 0x00010000 };
enum { _CTYPE_B = 0x00020000 };
enum { _CTYPE_R = 0x00040000 };
enum { _CTYPE_I = 0x00080000 };
enum { _CTYPE_T = 0x00100000 };
enum { _CTYPE_Q = 0x00200000 };
enum { _CTYPE_SW0 = 0x20000000 };
enum { _CTYPE_SW1 = 0x40000000 };
enum { _CTYPE_SW2 = 0x80000000 };
enum { _CTYPE_SW3 = 0xc0000000 };
enum { _CTYPE_SWM = 0xe0000000 };
enum { _CTYPE_SWS = 30 };
/* #define __DARWIN_CTYPE_inline inline ### define is not number */
/* #define __DARWIN_CTYPE_TOP_inline inline ### define is not number */
/* + END <ctype.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/ctype.h */
]]
