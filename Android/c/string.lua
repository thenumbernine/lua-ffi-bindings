local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <string.h> /data/data/com.termux/files/usr/bin/../../usr/include/string.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
/* ++ BEGIN <xlocale.h> /data/data/com.termux/files/usr/bin/../../usr/include/xlocale.h */
]] require 'ffi.req' 'c.xlocale' ffi.cdef[[
/* ++ END <xlocale.h> /data/data/com.termux/files/usr/bin/../../usr/include/xlocale.h */
/* ++ BEGIN <bits/strcasecmp.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/strcasecmp.h */
/* +++ BEGIN <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* +++ END <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
int strcasecmp(const char*  __s1, const char*  __s2) __attribute__((__pure__));
int strcasecmp_l(const char*  __s1, const char*  __s2, locale_t  __l) __attribute__((__pure__)) __attribute__((__availability__(android,strict,introduced=23 )));
int strncasecmp(const char*  __s1, const char*  __s2, size_t __n) __attribute__((__pure__));
int strncasecmp_l(const char*  __s1, const char*  __s2, size_t __n, locale_t  __l) __attribute__((__pure__)) __attribute__((__availability__(android,strict,introduced=23 )));
/* ++ END <bits/strcasecmp.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/strcasecmp.h */
void*  memccpy(void*  __dst, const void*  __src, int __stop_char, size_t __n);
void*  memchr(const void*  __s, int __ch, size_t __n) __attribute__((__pure__));
void*  memrchr(const void*  __s, int __ch, size_t __n) __attribute__((__pure__));
int memcmp(const void*  __lhs, const void*  __rhs, size_t __n) __attribute__((__pure__));
void*  memcpy(void* , const void* , size_t);
void*  memmove(void*  __dst, const void*  __src, size_t __n);
void*  memset(void*  __dst, int __ch, size_t __n);
void*  memmem(const void*  __haystack, size_t __haystack_size, const void*  __needle, size_t __needle_size) __attribute__((__pure__));
char*  strchr(const char*  __s, int __ch) __attribute__((__pure__));
char*  __strchr_chk(const char*  __s, int __ch, size_t __n);
char*  strrchr(const char*  __s, int __ch) __attribute__((__pure__));
char*  __strrchr_chk(const char*  __s, int __ch, size_t __n);
size_t strlen(const char*  __s) __attribute__((__pure__));
size_t __strlen_chk(const char*  __s, size_t __n);
int strcmp(const char*  __lhs, const char*  __rhs) __attribute__((__pure__));
char*  stpcpy(char*  __dst, const char*  __src);
char*  strcpy(char*  __dst, const char*  __src);
char*  strcat(char*  __dst, const char*  __src);
char*  strdup(const char*  __s);
char*  strstr(const char*  __haystack, const char*  __needle) __attribute__((__pure__));
char*  strcasestr(const char*  __haystack, const char*  __needle) __attribute__((__pure__));
char*  strtok(char*  __s, const char*  __delimiter);
char*  strtok_r(char*  __s, const char*  __delimiter, char*  *  __pos_ptr);
char*  strerror(int __errno_value);
char*  strerror_l(int __errno_value, locale_t  __l) __asm__("strerror");
int strerror_r(int __errno_value, char*  __buf, size_t __n);
size_t strnlen(const char*  __s, size_t __n) __attribute__((__pure__));
char*  strncat(char*  __dst, const char*  __src, size_t __n);
char*  strndup(const char*  __s, size_t __n);
int strncmp(const char*  __lhs, const char*  __rhs, size_t __n) __attribute__((__pure__));
char*  stpncpy(char*  __dst, const char*  __src, size_t __n);
char*  strncpy(char*  __dst, const char*  __src, size_t __n);
size_t strlcat(char*  __dst, const char*  __src, size_t __n);
size_t strlcpy(char*  __dst, const char*  __src, size_t __n);
size_t strcspn(const char*  __s, const char*  __reject) __attribute__((__pure__));
char*  strpbrk(const char*  __s, const char*  __accept) __attribute__((__pure__));
char*  strsep(char*  *  __s_ptr, const char*  __delimiter);
size_t strspn(const char*  __s, const char*  __accept);
char*  strsignal(int __signal);
int strcoll(const char*  __lhs, const char*  __rhs) __attribute__((__pure__));
size_t strxfrm(char*  __dst, const char*  __src, size_t __n);
int strcoll_l(const char*  __lhs, const char*  __rhs, locale_t  __l) __attribute__((__pure__));
size_t strxfrm_l(char*  __dst, const char*  __src, size_t __n, locale_t  __l);
enum { _STRING_H = 1 };
/* + END <string.h> /data/data/com.termux/files/usr/bin/../../usr/include/string.h */
]]
