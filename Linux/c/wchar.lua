local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <wchar.h> /usr/include/wchar.h */
/* ++ BEGIN <bits/libc-header-start.h> /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
]] require 'ffi.req' 'c.bits.libc-header-start' ffi.cdef[[
/* ++ END <bits/libc-header-start.h> /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
/* ++ BEGIN <bits/floatn.h> /usr/include/x86_64-linux-gnu/bits/floatn.h */
]] require 'ffi.req' 'c.bits.floatn' ffi.cdef[[
/* ++ END <bits/floatn.h> /usr/include/x86_64-linux-gnu/bits/floatn.h */
/* ++ BEGIN <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
/* ++ BEGIN <stdarg.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stdarg.h */
]] require 'ffi.req' 'c.stdarg' ffi.cdef[[
/* ++ END <stdarg.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stdarg.h */
typedef __gnuc_va_list va_list;
/* ++ BEGIN <bits/wchar.h> /usr/include/x86_64-linux-gnu/bits/wchar.h */
/* ++ END <bits/wchar.h> /usr/include/x86_64-linux-gnu/bits/wchar.h */
/* ++ BEGIN <bits/types/wint_t.h> /usr/include/x86_64-linux-gnu/bits/types/wint_t.h */
typedef unsigned int wint_t;
/* ++ END <bits/types/wint_t.h> /usr/include/x86_64-linux-gnu/bits/types/wint_t.h */
/* ++ BEGIN <bits/types/mbstate_t.h> /usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h */
/* +++ BEGIN <bits/types/__mbstate_t.h> /usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h */
]] require 'ffi.req' 'c.bits.types.__mbstate_t' ffi.cdef[[
/* +++ END <bits/types/__mbstate_t.h> /usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h */
typedef __mbstate_t mbstate_t;
/* ++ END <bits/types/mbstate_t.h> /usr/include/x86_64-linux-gnu/bits/types/mbstate_t.h */
/* ++ BEGIN <bits/types/__FILE.h> /usr/include/x86_64-linux-gnu/bits/types/__FILE.h */
]] require 'ffi.req' 'c.bits.types.__FILE' ffi.cdef[[
/* ++ END <bits/types/__FILE.h> /usr/include/x86_64-linux-gnu/bits/types/__FILE.h */
/* ++ BEGIN <bits/types/FILE.h> /usr/include/x86_64-linux-gnu/bits/types/FILE.h */
]] require 'ffi.req' 'c.bits.types.FILE' ffi.cdef[[
/* ++ END <bits/types/FILE.h> /usr/include/x86_64-linux-gnu/bits/types/FILE.h */
/* ++ BEGIN <bits/types/locale_t.h> /usr/include/x86_64-linux-gnu/bits/types/locale_t.h */
]] require 'ffi.req' 'c.bits.types.locale_t' ffi.cdef[[
/* ++ END <bits/types/locale_t.h> /usr/include/x86_64-linux-gnu/bits/types/locale_t.h */
struct tm;
extern wchar_t *wcscpy (wchar_t *__restrict __dest,
   const wchar_t *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern wchar_t *wcsncpy (wchar_t *__restrict __dest,
    const wchar_t *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern size_t wcslcpy (wchar_t *__restrict __dest,
         const wchar_t *__restrict __src, size_t __n)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__access__ (__write_only__, 1, 3)));
extern size_t wcslcat (wchar_t *__restrict __dest,
         const wchar_t *__restrict __src, size_t __n)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2))) __attribute__ ((__access__ (__read_write__, 1, 3)));
extern wchar_t *wcscat (wchar_t *__restrict __dest,
   const wchar_t *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern wchar_t *wcsncat (wchar_t *__restrict __dest,
    const wchar_t *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int wcscmp (const wchar_t *__s1, const wchar_t *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int wcsncmp (const wchar_t *__s1, const wchar_t *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
extern int wcscasecmp (const wchar_t *__s1, const wchar_t *__s2) __attribute__ ((__nothrow__ , __leaf__));
extern int wcsncasecmp (const wchar_t *__s1, const wchar_t *__s2,
   size_t __n) __attribute__ ((__nothrow__ , __leaf__));
extern int wcscasecmp_l (const wchar_t *__s1, const wchar_t *__s2,
    locale_t __loc) __attribute__ ((__nothrow__ , __leaf__));
extern int wcsncasecmp_l (const wchar_t *__s1, const wchar_t *__s2,
     size_t __n, locale_t __loc) __attribute__ ((__nothrow__ , __leaf__));
extern int wcscoll (const wchar_t *__s1, const wchar_t *__s2) __attribute__ ((__nothrow__ , __leaf__));
extern size_t wcsxfrm (wchar_t *__restrict __s1,
         const wchar_t *__restrict __s2, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
extern int wcscoll_l (const wchar_t *__s1, const wchar_t *__s2,
        locale_t __loc) __attribute__ ((__nothrow__ , __leaf__));
extern size_t wcsxfrm_l (wchar_t *__s1, const wchar_t *__s2,
    size_t __n, locale_t __loc) __attribute__ ((__nothrow__ , __leaf__));
extern wchar_t *wcsdup (const wchar_t *__s) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (__builtin_free, 1)));
extern wchar_t *wcschr (const wchar_t *__wcs, wchar_t __wc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__));
extern wchar_t *wcsrchr (const wchar_t *__wcs, wchar_t __wc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__));
extern size_t wcscspn (const wchar_t *__wcs, const wchar_t *__reject)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__));
extern size_t wcsspn (const wchar_t *__wcs, const wchar_t *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__));
extern wchar_t *wcspbrk (const wchar_t *__wcs, const wchar_t *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__));
extern wchar_t *wcsstr (const wchar_t *__haystack, const wchar_t *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__));
extern wchar_t *wcstok (wchar_t *__restrict __s,
   const wchar_t *__restrict __delim,
   wchar_t **__restrict __ptr) __attribute__ ((__nothrow__ , __leaf__));
extern size_t wcslen (const wchar_t *__s) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__));
extern size_t wcsnlen (const wchar_t *__s, size_t __maxlen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__));
extern wchar_t *wmemchr (const wchar_t *__s, wchar_t __c, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__));
extern int wmemcmp (const wchar_t *__s1, const wchar_t *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__));
extern wchar_t *wmemcpy (wchar_t *__restrict __s1,
    const wchar_t *__restrict __s2, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
extern wchar_t *wmemmove (wchar_t *__s1, const wchar_t *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__));
extern wchar_t *wmemset (wchar_t *__s, wchar_t __c, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
extern wint_t btowc (int __c) __attribute__ ((__nothrow__ , __leaf__));
extern int wctob (wint_t __c) __attribute__ ((__nothrow__ , __leaf__));
extern int mbsinit (const mbstate_t *__ps) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__));
extern size_t mbrtowc (wchar_t *__restrict __pwc,
         const char *__restrict __s, size_t __n,
         mbstate_t *__restrict __p) __attribute__ ((__nothrow__ , __leaf__));
extern size_t wcrtomb (char *__restrict __s, wchar_t __wc,
         mbstate_t *__restrict __ps) __attribute__ ((__nothrow__ , __leaf__));
extern size_t __mbrlen (const char *__restrict __s, size_t __n,
   mbstate_t *__restrict __ps) __attribute__ ((__nothrow__ , __leaf__));
extern size_t mbrlen (const char *__restrict __s, size_t __n,
        mbstate_t *__restrict __ps) __attribute__ ((__nothrow__ , __leaf__));
extern size_t mbsrtowcs (wchar_t *__restrict __dst,
    const char **__restrict __src, size_t __len,
    mbstate_t *__restrict __ps) __attribute__ ((__nothrow__ , __leaf__));
extern size_t wcsrtombs (char *__restrict __dst,
    const wchar_t **__restrict __src, size_t __len,
    mbstate_t *__restrict __ps) __attribute__ ((__nothrow__ , __leaf__));
extern size_t mbsnrtowcs (wchar_t *__restrict __dst,
     const char **__restrict __src, size_t __nmc,
     size_t __len, mbstate_t *__restrict __ps) __attribute__ ((__nothrow__ , __leaf__));
extern size_t wcsnrtombs (char *__restrict __dst,
     const wchar_t **__restrict __src,
     size_t __nwc, size_t __len,
     mbstate_t *__restrict __ps) __attribute__ ((__nothrow__ , __leaf__));
extern double wcstod (const wchar_t *__restrict __nptr,
        wchar_t **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__));
extern float wcstof (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__));
extern long double wcstold (const wchar_t *__restrict __nptr,
       wchar_t **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__));
extern long int wcstol (const wchar_t *__restrict __nptr,
   wchar_t **__restrict __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned long int wcstoul (const wchar_t *__restrict __nptr,
      wchar_t **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern long long int wcstoll (const wchar_t *__restrict __nptr,
         wchar_t **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__));
__extension__
extern unsigned long long int wcstoull (const wchar_t *__restrict __nptr,
     wchar_t **__restrict __endptr,
     int __base) __attribute__ ((__nothrow__ , __leaf__));
extern wchar_t *wcpcpy (wchar_t *__restrict __dest,
   const wchar_t *__restrict __src) __attribute__ ((__nothrow__ , __leaf__));
extern wchar_t *wcpncpy (wchar_t *__restrict __dest,
    const wchar_t *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__));
extern __FILE *open_wmemstream (wchar_t **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__))
  __attribute__ ((__malloc__)) ;
extern int fwide (__FILE *__fp, int __mode) __attribute__ ((__nothrow__ , __leaf__));
extern int fwprintf (__FILE *__restrict __stream,
       const wchar_t *__restrict __format, ...)
                                                           ;
extern int wprintf (const wchar_t *__restrict __format, ...)
                                                           ;
extern int swprintf (wchar_t *__restrict __s, size_t __n,
       const wchar_t *__restrict __format, ...)
     __attribute__ ((__nothrow__ , __leaf__)) ;
extern int vfwprintf (__FILE *__restrict __s,
        const wchar_t *__restrict __format,
        __gnuc_va_list __arg)
                                                           ;
extern int vwprintf (const wchar_t *__restrict __format,
       __gnuc_va_list __arg)
                                                           ;
extern int vswprintf (wchar_t *__restrict __s, size_t __n,
        const wchar_t *__restrict __format,
        __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) ;
extern int fwscanf (__FILE *__restrict __stream,
      const wchar_t *__restrict __format, ...)
                                                          ;
extern int wscanf (const wchar_t *__restrict __format, ...)
                                                          ;
extern int swscanf (const wchar_t *__restrict __s,
      const wchar_t *__restrict __format, ...)
     __attribute__ ((__nothrow__ , __leaf__)) ;
extern int fwscanf (__FILE *__restrict __stream, const wchar_t *__restrict __format, ...) __asm__ ("" "__isoc99_fwscanf")
                                                          ;
extern int wscanf (const wchar_t *__restrict __format, ...) __asm__ ("" "__isoc99_wscanf")
                                                          ;
extern int swscanf (const wchar_t *__restrict __s, const wchar_t *__restrict __format, ...) __asm__ ("" "__isoc99_swscanf") __attribute__ ((__nothrow__ , __leaf__))
                                                          ;
extern int vfwscanf (__FILE *__restrict __s,
       const wchar_t *__restrict __format,
       __gnuc_va_list __arg)
                                                          ;
extern int vwscanf (const wchar_t *__restrict __format,
      __gnuc_va_list __arg)
                                                          ;
extern int vswscanf (const wchar_t *__restrict __s,
       const wchar_t *__restrict __format,
       __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) ;
extern int vfwscanf (__FILE *__restrict __s, const wchar_t *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfwscanf")
                                                          ;
extern int vwscanf (const wchar_t *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vwscanf")
                                                          ;
extern int vswscanf (const wchar_t *__restrict __s, const wchar_t *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vswscanf") __attribute__ ((__nothrow__ , __leaf__))
                                                          ;
extern wint_t fgetwc (__FILE *__stream);
extern wint_t getwc (__FILE *__stream);
extern wint_t getwchar (void);
extern wint_t fputwc (wchar_t __wc, __FILE *__stream);
extern wint_t putwc (wchar_t __wc, __FILE *__stream);
extern wint_t putwchar (wchar_t __wc);
extern wchar_t *fgetws (wchar_t *__restrict __ws, int __n,
   __FILE *__restrict __stream);
extern int fputws (const wchar_t *__restrict __ws,
     __FILE *__restrict __stream);
extern wint_t ungetwc (wint_t __wc, __FILE *__stream);
extern size_t wcsftime (wchar_t *__restrict __s, size_t __maxsize,
   const wchar_t *__restrict __format,
   const struct tm *__restrict __tp) __attribute__ ((__nothrow__ , __leaf__));
/* #define __WCHAR_MIN (-__WCHAR_MAX__ - 1) ### define is not number */
enum { _WINT_T = 1 };
/* #define WCHAR_MIN (-__WCHAR_MAX__ - 1) ### define is not number */
/* #define WEOF (0xffffffffu) ### define is not number */
enum { __attr_dealloc_fclose = 1 };
/* + END <wchar.h> /usr/include/wchar.h */
]]
