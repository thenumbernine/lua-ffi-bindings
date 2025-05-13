local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <string.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/string.h */
/* ++ BEGIN <_string.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_string.h */
/* +++ BEGIN <_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
]] require 'ffi.req' 'c._types' ffi.cdef[[
/* +++ END <_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
/* +++ BEGIN <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* +++ END <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* +++ BEGIN <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
]] require 'ffi.req' 'c.sys._types._size_t' ffi.cdef[[
/* +++ END <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* +++ BEGIN <sys/_types/_null.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_null.h */
/* +++ END <sys/_types/_null.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_null.h */
void *memchr(const void *__s, int __c, size_t __n);
int memcmp(const void *__s1, const void *__s2, size_t __n);
void *memcpy(void *__dst, const void *__src, size_t __n);
void *memmove(void *__dst, const void *__src, size_t __len);
void *memset(void *__b, int __c, size_t __len);
char *strcat(char *__s1, const char *__s2);
char *strchr(const char *__s, int __c);
int strcmp(const char *__s1, const char *__s2);
int strcoll(const char *__s1, const char *__s2);
char *strcpy(char *__dst, const char *__src);
size_t strcspn(const char *__s, const char *__charset);
char *strerror(int __errnum) __asm("_strerror" );
size_t strlen(const char *__s);
char *strncat(char *__s1, const char *__s2, size_t __n);
int strncmp(const char *__s1, const char *__s2, size_t __n);
char *strncpy(char *__dst, const char *__src, size_t __n);
char *strpbrk(const char *__s, const char *__charset);
char *strrchr(const char *__s, int __c);
size_t strspn(const char *__s, const char *__charset);
char *strstr(const char *__big, const char *__little);
char *strtok(char *__str, const char *__sep);
size_t strxfrm(char *__s1, const char *__s2, size_t __n);
char *strtok_r(char *__str, const char *__sep, char **__lasts);
int strerror_r(int __errnum, char *__strerrbuf, size_t __buflen);
char *strdup(const char *__s1);
void *memccpy(void *__dst, const void *__src, int __c, size_t __n);
char *stpcpy(char *__dst, const char *__src);
char *stpncpy(char *__dst, const char *__src, size_t __n) __attribute__((availability(macosx,introduced=10.7)));
char *strndup(const char *__s1, size_t __n) __attribute__((availability(macosx,introduced=10.7)));
size_t strnlen(const char *__s1, size_t __n) __attribute__((availability(macosx,introduced=10.7)));
char *strsignal(int __sig);
/* +++ BEGIN <sys/_types/_rsize_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_rsize_t.h */
]] require 'ffi.req' 'c.sys._types._rsize_t' ffi.cdef[[
/* +++ END <sys/_types/_rsize_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_rsize_t.h */
/* +++ BEGIN <sys/_types/_errno_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_errno_t.h */
]] require 'ffi.req' 'c.sys._types._errno_t' ffi.cdef[[
/* +++ END <sys/_types/_errno_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_errno_t.h */
errno_t memset_s(void *__s, rsize_t __smax, int __c, rsize_t __n) __attribute__((availability(macosx,introduced=10.9)));
/* +++ BEGIN <sys/_types/_ssize_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ssize_t.h */
]] require 'ffi.req' 'c.sys._types._ssize_t' ffi.cdef[[
/* +++ END <sys/_types/_ssize_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_ssize_t.h */
void *memmem(const void *__big, size_t __big_len, const void *__little, size_t __little_len) __attribute__((availability(macosx,introduced=10.7)));
void memset_pattern4(void *__b, const void *__pattern4, size_t __len) __attribute__((availability(macosx,introduced=10.5)));
void memset_pattern8(void *__b, const void *__pattern8, size_t __len) __attribute__((availability(macosx,introduced=10.5)));
void memset_pattern16(void *__b, const void *__pattern16, size_t __len) __attribute__((availability(macosx,introduced=10.5)));
char *strcasestr(const char *__big, const char *__little);
char *strnstr(const char *__big, const char *__little, size_t __len);
size_t strlcat(char *__dst, const char *__source, size_t __size);
size_t strlcpy(char *__dst, const char *__source, size_t __size);
void strmode(int __mode, char *__bp);
char *strsep(char **__stringp, const char *__delim);
void swab(const void * restrict, void * restrict, ssize_t);
__attribute__((availability(macosx,introduced=10.12.1))) __attribute__((availability(ios,introduced=10.1)))
__attribute__((availability(tvos,introduced=10.0.1))) __attribute__((availability(watchos,introduced=3.1)))
int timingsafe_bcmp(const void *__b1, const void *__b2, size_t __len);
__attribute__((availability(macosx,introduced=11.0))) __attribute__((availability(ios,introduced=14.0)))
__attribute__((availability(tvos,introduced=14.0))) __attribute__((availability(watchos,introduced=7.0)))
int strsignal_r(int __sig, char *__strsignalbuf, size_t __buflen);
/* +++ BEGIN <_strings.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_strings.h */
/* ++++ BEGIN <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
]] require 'ffi.req' 'c.sys._types._size_t' ffi.cdef[[
/* ++++ END <sys/_types/_size_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
int bcmp(const void *, const void *, size_t) ;
void bcopy(const void *, void *, size_t) ;
void bzero(void *, size_t) ;
char *index(const char *, int) ;
char *rindex(const char *, int) ;
int ffs(int);
int strcasecmp(const char *, const char *);
int strncasecmp(const char *, const char *, size_t);
int ffsl(long) __attribute__((availability(macosx,introduced=10.5)));
int ffsll(long long) __attribute__((availability(macosx,introduced=10.9)));
int fls(int) __attribute__((availability(macosx,introduced=10.5)));
int flsl(long) __attribute__((availability(macosx,introduced=10.5)));
int flsll(long long) __attribute__((availability(macosx,introduced=10.9)));
/* ++++ BEGIN <secure/_strings.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/secure/_strings.h */
/* +++++ BEGIN <secure/_common.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/secure/_common.h */
/* +++++ END <secure/_common.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/secure/_common.h */
/* ++++ END <secure/_strings.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/secure/_strings.h */
/* +++ END <_strings.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_strings.h */
/* +++ BEGIN <secure/_string.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/secure/_string.h */
/* +++ END <secure/_string.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/secure/_string.h */
/* ++ END <_string.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_string.h */
/* #define NULL ((void *)0) ### define is not number */
/* #define __darwin_obsz0 (object) __builtin_object_size (object, 0) ### define is not number */
/* #define __darwin_obsz (object) __builtin_object_size (object, _USE_FORTIFY_LEVEL > 1 ? 1 : 0) ### define is not number */
/* #define bcopy (src,dest,...) __builtin___memmove_chk (dest, src, __VA_ARGS__, __darwin_obsz0 (dest)) ### define is not number */
/* #define bzero (dest,...) __builtin___memset_chk (dest, 0, __VA_ARGS__, __darwin_obsz0 (dest)) ### define is not number */
/* #define memccpy (dest,...) __builtin___memccpy_chk (dest, __VA_ARGS__, __darwin_obsz0 (dest)) ### define is not number */
/* #define memcpy (dest,...) __builtin___memcpy_chk (dest, __VA_ARGS__, __darwin_obsz0 (dest)) ### define is not number */
/* #define memmove (dest,...) __builtin___memmove_chk (dest, __VA_ARGS__, __darwin_obsz0 (dest)) ### define is not number */
/* #define memset (dest,...) __builtin___memset_chk (dest, __VA_ARGS__, __darwin_obsz0 (dest)) ### define is not number */
/* #define strcpy (dest,...) __builtin___strcpy_chk (dest, __VA_ARGS__, __darwin_obsz (dest)) ### define is not number */
/* #define stpcpy (dest,...) __builtin___stpcpy_chk (dest, __VA_ARGS__, __darwin_obsz (dest)) ### define is not number */
/* #define stpncpy (dest,...) __builtin___stpncpy_chk (dest, __VA_ARGS__, __darwin_obsz (dest)) ### define is not number */
/* #define strlcpy (dest,...) __builtin___strlcpy_chk (dest, __VA_ARGS__, __darwin_obsz (dest)) ### define is not number */
/* #define strlcat (dest,...) __builtin___strlcat_chk (dest, __VA_ARGS__, __darwin_obsz (dest)) ### define is not number */
/* #define strncpy (dest,...) __builtin___strncpy_chk (dest, __VA_ARGS__, __darwin_obsz (dest)) ### define is not number */
/* #define strcat (dest,...) __builtin___strcat_chk (dest, __VA_ARGS__, __darwin_obsz (dest)) ### define is not number */
/* #define strncat (dest,...) __builtin___strncat_chk (dest, __VA_ARGS__, __darwin_obsz (dest)) ### define is not number */
/* + END <string.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/string.h */
]]
