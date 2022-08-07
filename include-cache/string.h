enum { _STRING_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* END /usr/include/x86_64-1-gnu/bits/libc-header-start.h */
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h */
/* END /usr/lib/gcc/x86_64-1-gnu/9/include/stddef.h */
extern void *memcpy (void * __dest, const void * __src, size_t __n) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern void *memmove (void *__dest, const void *__src, size_t __n) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int memcmp (const void *__s1, const void *__s2, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern void *memchr (const void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__))  __attribute__ ((__nonnull__ (1))) ;
extern char *strcpy (char * __dest, const char * __src) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern char *strncpy (char * __dest, const char * __src, size_t __n) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern char *strcat (char * __dest, const char * __src) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern char *strncat (char * __dest, const char * __src, size_t __n) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern int strcmp (const char *__s1, const char *__s2) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern int strncmp (const char *__s1, const char *__s2, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern int strcoll (const char *__s1, const char *__s2) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern size_t strxfrm (char * __dest, const char * __src, size_t __n) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (2))) ;
extern char *strchr (const char *__s, int __c) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__))  __attribute__ ((__nonnull__ (1))) ;
extern char *strrchr (const char *__s, int __c) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__))  __attribute__ ((__nonnull__ (1))) ;
extern size_t strcspn (const char *__s, const char *__reject) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern size_t strspn (const char *__s, const char *__accept) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern char *strpbrk (const char *__s, const char *__accept) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern char *strstr (const char *__haystack, const char *__needle) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__))  __attribute__ ((__nonnull__ (1, 2))) ;
extern char *strtok (char * __s, const char * __delim) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (2))) ;
extern char *__strtok_r (char * __s, const char * __delim, char ** __save_ptr) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (2, 3))) ;
extern size_t strlen (const char *__s) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__))  __attribute__ ((__nonnull__ (1))) ;
extern char *strerror (int __errnum) __attribute__ ((__nothrow__ , __leaf__));