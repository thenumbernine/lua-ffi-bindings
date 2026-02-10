local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <wchar.h> /data/data/com.termux/files/usr/bin/../../usr/include/wchar.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <stdio.h> /data/data/com.termux/files/usr/bin/../../usr/include/stdio.h */
]] require 'ffi.req' 'c.stdio' ffi.cdef[[
/* ++ END <stdio.h> /data/data/com.termux/files/usr/bin/../../usr/include/stdio.h */
/* ++ BEGIN <stdarg.h> /data/data/com.termux/files/usr/lib/clang/21/include/stdarg.h */
]] require 'ffi.req' 'c.stdarg' ffi.cdef[[
/* ++ END <stdarg.h> /data/data/com.termux/files/usr/lib/clang/21/include/stdarg.h */
/* ++ BEGIN <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
/* ++ BEGIN <time.h> /data/data/com.termux/files/usr/bin/../../usr/include/time.h */
]] require 'ffi.req' 'c.time' ffi.cdef[[
/* ++ END <time.h> /data/data/com.termux/files/usr/bin/../../usr/include/time.h */
/* ++ BEGIN <bits/bionic_multibyte_result.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/bionic_multibyte_result.h */
/* +++ BEGIN <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* +++ END <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
enum {
  BIONIC_MULTIBYTE_RESULT_ILLEGAL_SEQUENCE = -1UL,
  BIONIC_MULTIBYTE_RESULT_INCOMPLETE_SEQUENCE = -2UL,
  BIONIC_MULTIBYTE_RESULT_NO_BYTES_CONSUMED = -3UL,
};
/* ++ END <bits/bionic_multibyte_result.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/bionic_multibyte_result.h */
/* ++ BEGIN <bits/mbstate_t.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/mbstate_t.h */
typedef struct {
  unsigned char __seq[4];
} mbstate_t;
/* ++ END <bits/mbstate_t.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/mbstate_t.h */
/* ++ BEGIN <bits/wctype.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/wctype.h */
typedef unsigned int wint_t;
int iswalnum(wint_t __wc);
int iswalpha(wint_t __wc);
int iswblank(wint_t __wc);
int iswcntrl(wint_t __wc);
int iswdigit(wint_t __wc);
int iswgraph(wint_t __wc);
int iswlower(wint_t __wc);
int iswprint(wint_t __wc);
int iswpunct(wint_t __wc);
int iswspace(wint_t __wc);
int iswupper(wint_t __wc);
int iswxdigit(wint_t __wc);
wint_t towlower(wint_t __wc);
wint_t towupper(wint_t __wc);
typedef long wctype_t;
wctype_t wctype(const char*  __name);
int iswctype(wint_t __wc, wctype_t __type);
typedef const void* wctrans_t;
wint_t towctrans(wint_t __wc, wctrans_t  __transform) __attribute__((__availability__(android,strict,introduced=26 )));
wctrans_t  wctrans(const char*  __name) __attribute__((__availability__(android,strict,introduced=26 )));
/* ++ END <bits/wctype.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/wctype.h */
wint_t btowc(int __ch);
int fwprintf(FILE*  __fp, const wchar_t*  __fmt, ...);
int fwscanf(FILE*  __fp, const wchar_t*  __fmt, ...);
wint_t fgetwc(FILE*  __fp);
wchar_t*  fgetws(wchar_t*  __buf, int __size, FILE*  __fp);
wint_t fputwc(wchar_t __wc, FILE*  __fp);
int fputws(const wchar_t*  __s, FILE*  __fp);
int fwide(FILE*  __fp, int __mode);
wint_t getwc(FILE*  __fp);
wint_t getwchar(void);
int mbsinit(const mbstate_t*  __ps);
size_t mbrlen(const char*  __s, size_t __n, mbstate_t*  __ps);
size_t mbrtowc(wchar_t*  __buf, const char*  __s, size_t __n, mbstate_t*  __ps);
size_t mbsrtowcs(wchar_t*  __dst, const char*  *  __src, size_t __dst_n, mbstate_t*  __ps);
size_t mbsrtowcs_l(wchar_t*  __dst, const char*  *  __src, size_t __dst_n, mbstate_t*  __ps, locale_t  __l) __asm__("mbsrtowcs");
size_t mbsnrtowcs(wchar_t*  __dst, const char*  *  __src, size_t __src_n, size_t __dst_n, mbstate_t*  __ps);
wint_t putwc(wchar_t __wc, FILE*  __fp);
wint_t putwchar(wchar_t __wc);
int swprintf(wchar_t*  __buf, size_t __n, const wchar_t*  __fmt, ...);
int swscanf(const wchar_t*  __s, const wchar_t*  __fmt, ...);
wint_t ungetwc(wint_t __wc, FILE*  __fp);
int vfwprintf(FILE*  __fp, const wchar_t*  __fmt, va_list __args);
int vfwscanf(FILE*  __fp, const wchar_t*  __fmt, va_list __args);
int vswprintf(wchar_t*  __buf, size_t __n, const wchar_t*  __fmt, va_list __args);
int vswscanf(const wchar_t*  __s, const wchar_t*  __fmt, va_list __args);
int vwprintf(const wchar_t*  __fmt, va_list __args);
int vwscanf(const wchar_t*  __fmt, va_list __args);
wchar_t*  wcpcpy(wchar_t*  __dst, const wchar_t*  __src);
wchar_t*  wcpncpy(wchar_t*  __dst, const wchar_t*  __src, size_t __n);
size_t wcrtomb(char*  __buf, wchar_t __wc, mbstate_t*  __ps);
int wcscasecmp(const wchar_t*  __lhs, const wchar_t*  __rhs);
int wcscasecmp_l(const wchar_t*  __lhs, const wchar_t*  __rhs, locale_t  __l) __attribute__((__availability__(android,strict,introduced=23 )));
wchar_t*  wcscat(wchar_t*  __dst, const wchar_t*  __src);
wchar_t*  wcschr(const wchar_t *  __s, wchar_t __wc);
int wcscmp(const wchar_t*  __lhs, const wchar_t*  __rhs);
int wcscoll(const wchar_t*  __lhs, const wchar_t*  __rhs);
wchar_t*  wcscpy(wchar_t*  __dst, const wchar_t*  __src);
size_t wcscspn(const wchar_t*  __s, const wchar_t*  __accept);
size_t wcsftime(wchar_t*  __buf, size_t __n, const wchar_t*  __fmt, const struct tm*  __tm);
size_t wcsftime_l(wchar_t*  __buf, size_t __n, const wchar_t*  __fmt, const struct tm*  __tm, locale_t  __l) __attribute__((__availability__(android,strict,introduced=28 )));
size_t wcslen(const wchar_t*  __s);
int wcsncasecmp(const wchar_t*  __lhs, const wchar_t*  __rhs, size_t __n);
int wcsncasecmp_l(const wchar_t*  __lhs, const wchar_t*  __rhs, size_t __n, locale_t  __l) __attribute__((__availability__(android,strict,introduced=23 )));
wchar_t*  wcsncat(wchar_t*  __dst, const wchar_t*  __src, size_t __n);
int wcsncmp(const wchar_t*  __lhs, const wchar_t*  __rhs, size_t __n);
wchar_t*  wcsncpy(wchar_t*  __dst, const wchar_t*  __src, size_t __n);
size_t wcsnrtombs(char*  __dst, const wchar_t*  *  __src, size_t __src_n, size_t __dst_n, mbstate_t*  __ps);
wchar_t*  wcspbrk(const wchar_t*  __s, const wchar_t*  __accept);
wchar_t*  wcsrchr(const wchar_t*  __s, wchar_t __wc);
size_t wcsrtombs(char*  __dst, const wchar_t*  *  __src, size_t __dst_n, mbstate_t*  __ps);
size_t wcsrtombs_l(char*  __dst, const wchar_t*  *  __src, size_t __dst_n, mbstate_t*  __ps, locale_t  __l) __asm__("wcsrtombs");
size_t wcsspn(const wchar_t*  __s, const wchar_t*  __accept);
wchar_t*  wcsstr(const wchar_t*  __haystack, const wchar_t*  __needle);
double wcstod(const wchar_t*  __s, wchar_t*  *  __end_ptr);
double wcstod_l(const wchar_t*  __s, wchar_t*  *  __end_ptr, locale_t  __l) __asm__("wcstod");
float wcstof(const wchar_t*  __s, wchar_t*  *  __end_ptr);
float wcstof_l(const wchar_t*  __s, wchar_t*  *  __end_ptr, locale_t  __l) __asm__("wcstof");
wchar_t*  wcstok(wchar_t*  __s, const wchar_t*  __delimiter, wchar_t*  *  __ptr);
long wcstol(const wchar_t*  __s, wchar_t*  *  __end_ptr, int __base);
long wcstol_l(const wchar_t*  __s, wchar_t*  *  __end_ptr, int __base, locale_t  __l) __asm__("wcstol");
long long wcstoll(const wchar_t*  __s, wchar_t*  *  __end_ptr, int __base);
long double wcstold(const wchar_t*  __s, wchar_t*  *  __end_ptr);
unsigned long wcstoul(const wchar_t*  __s, wchar_t*  *  __end_ptr, int __base);
unsigned long wcstoul_l(const wchar_t*  __s, wchar_t*  *  __end_ptr, int __base, locale_t  __l) __asm__("wcstoul");
unsigned long long wcstoull(const wchar_t*  __s, wchar_t*  *  __end_ptr, int __base);
int wcswidth(const wchar_t*  __s, size_t __n);
size_t wcsxfrm(wchar_t*  __dst, const wchar_t*  __src, size_t __n);
int wctob(wint_t __wc);
int wcwidth(wchar_t __wc);
wchar_t*  wmemchr(const wchar_t*  __src, wchar_t __wc, size_t __n);
int wmemcmp(const wchar_t*  __lhs, const wchar_t*  __rhs, size_t __n);
wchar_t*  wmemcpy(wchar_t*  __dst, const wchar_t*  __src, size_t __n);
wchar_t*  wmemmove(wchar_t*  __dst, const wchar_t*  __src, size_t __n);
wchar_t*  wmemset(wchar_t*  __dst, wchar_t __wc, size_t __n);
int wprintf(const wchar_t*  __fmt, ...);
int wscanf(const wchar_t*  __fmt, ...);
long long wcstoll_l(const wchar_t*  __s, wchar_t*  *  __end_ptr, int __base, locale_t  __l);
unsigned long long wcstoull_l(const wchar_t*  __s, wchar_t*  *  __end_ptr, int __base, locale_t  __l);
long double wcstold_l(const wchar_t*  __s, wchar_t*  *  __end_ptr, locale_t  __l);
int wcscoll_l(const wchar_t*  __lhs, const wchar_t*  __rhs, locale_t  __l) __attribute__((__pure__));
size_t wcsxfrm_l(wchar_t*  __dst, const wchar_t*  __src, size_t __n, locale_t  __l);
size_t wcslcat(wchar_t*  __dst, const wchar_t*  __src, size_t __n);
size_t wcslcpy(wchar_t*  __dst, const wchar_t*  __src, size_t __n);
FILE*  open_wmemstream(wchar_t*  *  __ptr, size_t*  __size_ptr) __attribute__((__availability__(android,strict,introduced=23 )));
wchar_t*  wcsdup(const wchar_t*  __s);
size_t wcsnlen(const wchar_t*  __s, size_t __n);
enum { _WCHAR_H_ = 1 };
/* #define BIONIC_MULTIBYTE_RESULT_ILLEGAL_SEQUENCE BIONIC_MULTIBYTE_RESULT_ILLEGAL_SEQUENCE ### define is not number */
/* #define BIONIC_MULTIBYTE_RESULT_INCOMPLETE_SEQUENCE BIONIC_MULTIBYTE_RESULT_INCOMPLETE_SEQUENCE ### define is not number */
/* #define BIONIC_MULTIBYTE_RESULT_NO_BYTES_CONSUMED BIONIC_MULTIBYTE_RESULT_NO_BYTES_CONSUMED ### define is not number */
enum { _BITS_WCTYPE_H_ = 1 };
/* #define WEOF __BIONIC_CAST(static_cast, wint_t, -1) ### define is not number */
/* + END <wchar.h> /data/data/com.termux/files/usr/bin/../../usr/include/wchar.h */
]]
