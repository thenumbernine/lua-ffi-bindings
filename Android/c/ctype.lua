local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <ctype.h> /data/data/com.termux/files/usr/bin/../../usr/include/ctype.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <xlocale.h> /data/data/com.termux/files/usr/bin/../../usr/include/xlocale.h */
]] require 'ffi.req' 'c.xlocale' ffi.cdef[[
/* ++ END <xlocale.h> /data/data/com.termux/files/usr/bin/../../usr/include/xlocale.h */
extern const char* _ctype_;
static __inline__ int _tolower(int __ch) {
  return __ch | 0x20;
}
static __inline__ int _toupper(int __ch) {
  return __ch ^ 0x20;
}
__attribute__((__no_sanitize__("unsigned-integer-overflow")))
static __inline__ int __bionic_ctype_in_range(unsigned __lo, int __ch, unsigned __hi) {
  return (((unsigned) (__ch)) - __lo) < (__hi - __lo + 1);
}
static __inline__ int isalpha(int __ch) {
  return __bionic_ctype_in_range('a', _tolower(__ch), 'z');
}
static __inline__ int isblank(int __ch) {
  return __ch == ' ' || __ch == '\t';
}
static __inline__ int iscntrl(int __ch) {
  return (((unsigned) (__ch)) < ' ') || __ch == 0x7f;
}
static __inline__ int isdigit(int __ch) {
  return __bionic_ctype_in_range('0', __ch, '9');
}
static __inline__ int isgraph(int __ch) {
  return __bionic_ctype_in_range('!', __ch, '~');
}
static __inline__ int islower(int __ch) {
  return __bionic_ctype_in_range('a', __ch, 'z');
}
static __inline__ int isprint(int __ch) {
  return __bionic_ctype_in_range(' ', __ch, '~');
}
static __inline__ int isspace(int __ch) {
  return __ch == ' ' || __bionic_ctype_in_range('\t', __ch, '\r');
}
static __inline__ int isupper(int __ch) {
  return __bionic_ctype_in_range('A', __ch, 'Z');
}
static __inline__ int isxdigit(int __ch) {
  return isdigit(__ch) || __bionic_ctype_in_range('a', _tolower(__ch), 'f') ;
}
static __inline__ int isalnum(int __ch) {
  return isalpha(__ch) || isdigit(__ch);
}
static __inline__ int ispunct(int __ch) {
  return isgraph(__ch) && !isalnum(__ch);
}
static __inline__ int tolower(int __ch) {
  return (__bionic_ctype_in_range('A', __ch, 'Z')) ? _tolower(__ch) : __ch;
}
static __inline__ int toupper(int __ch) {
  return (__bionic_ctype_in_range('a', __ch, 'z')) ? _toupper(__ch) : __ch;
}
static __inline__ int isascii(int __ch) {
  return ((unsigned) (__ch)) < 0x80;
}
static __inline__ int toascii(int __ch) {
  return __ch & 0x7f;
}
static __inline__ int isalnum_l(int __ch, locale_t __l) {
  return isalnum(__ch);
}
static __inline__ int isalpha_l(int __ch, locale_t __l) {
  return isalpha(__ch);
}
static __inline__ int isblank_l(int __ch, locale_t __l) {
  return isblank(__ch);
}
static __inline__ int iscntrl_l(int __ch, locale_t __l) {
  return iscntrl(__ch);
}
static __inline__ int isdigit_l(int __ch, locale_t __l) {
  return isdigit(__ch);
}
static __inline__ int isgraph_l(int __ch, locale_t __l) {
  return isgraph(__ch);
}
static __inline__ int islower_l(int __ch, locale_t __l) {
  return islower(__ch);
}
static __inline__ int isprint_l(int __ch, locale_t __l) {
  return isprint(__ch);
}
static __inline__ int ispunct_l(int __ch, locale_t __l) {
  return ispunct(__ch);
}
static __inline__ int isspace_l(int __ch, locale_t __l) {
  return isspace(__ch);
}
static __inline__ int isupper_l(int __ch, locale_t __l) {
  return isupper(__ch);
}
static __inline__ int isxdigit_l(int __ch, locale_t __l) {
  return isxdigit(__ch);
}
static __inline__ int tolower_l(int __ch, locale_t __l) {
  return tolower(__ch);
}
static __inline__ int toupper_l(int __ch, locale_t __l) {
  return toupper(__ch);
}
/* #define __BIONIC_CTYPE_INLINE static __inline ### define is not number */
enum { _CTYPE_U = 0x01 };
enum { _CTYPE_L = 0x02 };
enum { _CTYPE_D = 0x04 };
enum { _CTYPE_S = 0x08 };
enum { _CTYPE_P = 0x10 };
enum { _CTYPE_C = 0x20 };
enum { _CTYPE_X = 0x40 };
enum { _CTYPE_B = 0x80 };
/* #define _CTYPE_R (_CTYPE_P|_CTYPE_U|_CTYPE_L|_CTYPE_D|_CTYPE_B) ### define is not number */
/* #define _CTYPE_A (_CTYPE_L|_CTYPE_U) ### define is not number */
enum { _CTYPE_N = 0x04 };
/* + END <ctype.h> /data/data/com.termux/files/usr/bin/../../usr/include/ctype.h */
]]
