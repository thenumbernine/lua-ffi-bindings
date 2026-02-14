local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <string.h> /boot/system/develop/headers/bsd/string.h */
/* ++ BEGIN <string.h> /boot/system/develop/headers/posix/string.h */
/* +++ BEGIN <locale_t.h> /boot/system/develop/headers/posix/locale_t.h */
]] require 'ffi.req' 'c.locale_t' ffi.cdef[[
/* +++ END <locale_t.h> /boot/system/develop/headers/posix/locale_t.h */
/* +++ BEGIN <sys/types.h> ./Haiku/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* +++ END <sys/types.h> ./Haiku/sys/types.h */
extern void *memchr(const void *source, int value, size_t length);
extern int memcmp(const void *buffer1, const void *buffer2, size_t length);
extern void *memcpy(void *dest, const void *source, size_t length);
extern void *memccpy(void *dest, const void *source, int stopByte, size_t length);
extern void *memmove(void *dest, const void *source, size_t length);
extern void *memset(void *dest, int value, size_t length);
extern void *memmem(const void *source, size_t sourceLength,
 const void *search, size_t searchLength);
extern char *strcpy(char *dest, const char *source);
extern char *strncpy(char *dest, const char *source, size_t length);
extern char *strcat(char *dest, const char *source);
extern char *strncat(char *dest, const char *source, size_t length);
extern size_t strlen(const char *string);
extern int strcmp(const char *string1, const char *string2);
extern int strncmp(const char *string1, const char *string2, size_t length);
extern char *strchr(const char *string, int character);
extern char *strrchr(const char *string, int character);
extern char *strstr(const char *string, const char *searchString);
extern char *strpbrk(const char *string, const char *set);
extern char *strtok(char *string, const char *set);
extern char *strtok_r(char *string, const char *set, char **savePointer);
extern size_t strspn(const char *string, const char *set);
extern size_t strcspn(const char *string, const char *set);
extern int strcoll(const char *string1, const char *string2);
extern size_t strxfrm(char *string1, const char *string2, size_t length);
extern char *strerror(int errorCode);
extern int strerror_r(int errorCode, char *buffer, size_t bufferSize);
extern char *strcasestr(const char *string, const char *searchString);
extern char *strdup(const char *string);
extern char *strndup(const char* string, size_t size);
extern char *stpcpy(char *dest, const char *source);
extern char *stpncpy(char *dest, const char *source, size_t size);
extern size_t strlcat(char *dest, const char *source, size_t length);
extern size_t strlcpy(char *dest, const char *source, size_t length);
extern size_t strnlen(const char *string, size_t count);
extern char *strlwr(char *string);
extern char *strupr(char *string);
extern const char *strsignal(int signum);
extern int strcoll_l(const char *string1, const char *string2, locale_t locale);
extern char *strerror_l(int errorCode, locale_t locale);
extern size_t strxfrm_l(char *string1, const char *string2, size_t length, locale_t locale);
/* +++ BEGIN <strings.h> /boot/system/develop/headers/posix/strings.h */
extern int ffs(int i);
extern int ffsl(long i);
extern int ffsll(long long i);
extern int strcasecmp(const char *string1, const char *string2);
extern int strncasecmp(const char *string1, const char *string2,
 size_t length);
extern int strcasecmp_l(const char *string1, const char *string2, locale_t locale);
extern int strncasecmp_l(const char *string1, const char *string2,
 size_t length, locale_t locale);
extern char *index(const char *s, int c);
extern char *rindex(char const *s, int c);
/* +++ END <strings.h> /boot/system/develop/headers/posix/strings.h */
/* ++ END <string.h> /boot/system/develop/headers/posix/string.h */
/* ++ BEGIN <features.h> /boot/system/develop/headers/bsd/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /boot/system/develop/headers/bsd/features.h */
char* strsep(char** string, const char* delimiters);
void explicit_bzero(void *buf, size_t len);
enum { _BSD_STRING_H_ = 1 };
enum { _STRING_H_ = 1 };
enum { _STRINGS_H_ = 1 };
/* #define bcmp (a,b,length) memcmp((a), (b), (length)) ### define is not number */
/* #define bcopy (source,dest,length) memmove((dest), (source), (length)) ### define is not number */
/* #define bzero (buffer,length) memset((buffer), 0, (length)) ### define is not number */
/* + END <string.h> /boot/system/develop/headers/bsd/string.h */
]]
