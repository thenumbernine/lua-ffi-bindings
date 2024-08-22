local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/string.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h */
]] require 'ffi.req' 'c._types' ffi.cdef[[
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
typedef __darwin_size_t size_t;
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_null.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types.h */
/* #define NULL  __DARWIN_NULL ### string, not number "__DARWIN_NULL" */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_null.h */
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
char *strerror(int __errnum);
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
char *stpncpy(char *__dst, const char *__src, size_t __n);
char *strndup(const char *__s1, size_t __n);
size_t strnlen(const char *__s1, size_t __n);
char *strsignal(int __sig);
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_rsize_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/_types.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h */
typedef signed char int8_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int8_t.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h */
typedef short int16_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int16_t.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h */
typedef int int32_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int32_t.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h */
typedef long long int64_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_int64_t.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int8_t.h */
typedef unsigned char u_int8_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int8_t.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int16_t.h */
typedef unsigned short u_int16_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int16_t.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int32_t.h */
typedef unsigned int u_int32_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int32_t.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int64_t.h */
typedef unsigned long long u_int64_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_u_int64_t.h */
typedef int64_t register_t;
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
/* ++++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* ++++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
typedef __darwin_intptr_t intptr_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_intptr_t.h */
/* +++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h */
typedef unsigned long uintptr_t;
/* +++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_uintptr_t.h */
typedef u_int64_t user_addr_t;
typedef u_int64_t user_size_t;
typedef int64_t user_ssize_t;
typedef int64_t user_long_t;
typedef u_int64_t user_ulong_t;
typedef int64_t user_time_t;
typedef int64_t user_off_t;
/* #define USER_ADDR_NULL  ((user_addr_t) 0) ### string, not number "((user_addr_t) 0)" */
typedef u_int64_t syscall_arg_t;
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/i386/types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
typedef __darwin_size_t rsize_t;
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_rsize_t.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_errno_t.h */
typedef int errno_t;
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_errno_t.h */
errno_t memset_s(void *__s, rsize_t __smax, int __c, rsize_t __n);
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_ssize_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/types.h */
typedef __darwin_ssize_t ssize_t;
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_ssize_t.h */
void *memmem(const void *__big, size_t __big_len, const void *__little, size_t __little_len);
void memset_pattern4(void *__b, const void *__pattern4, size_t __len);
void memset_pattern8(void *__b, const void *__pattern8, size_t __len);
void memset_pattern16(void *__b, const void *__pattern16, size_t __len);
char *strcasestr(const char *__big, const char *__little);
char *strnstr(const char *__big, const char *__little, size_t __len);
size_t strlcat(char *__dst, const char *__source, size_t __size);
size_t strlcpy(char *__dst, const char *__source, size_t __size);
void strmode(int __mode, char *__bp);
char *strsep(char **__stringp, const char *__delim);
void swab(const void * restrict, void * restrict, ssize_t);
int timingsafe_bcmp(const void *__b1, const void *__b2, size_t __len);
int strsignal_r(int __sig, char *__strsignalbuf, size_t __buflen);
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/strings.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h */
]] require 'ffi.req' 'c._types' ffi.cdef[[
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_size_t.h */
int bcmp(const void *, const void *, size_t);
void bcopy(const void *, void *, size_t);
void bzero(void *, size_t);
char *index(const char *, int);
char *rindex(const char *, int);
int ffs(int);
int strcasecmp(const char *, const char *);
int strncasecmp(const char *, const char *, size_t);
int ffsl(long);
int ffsll(long long);
int fls(int);
int flsl(long);
int flsll(long long);
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/string.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/string.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_strings.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_common.h */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_common.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_strings.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/strings.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_string.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_common.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_common.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/secure/_string.h */
/* + END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/string.h */
]]
