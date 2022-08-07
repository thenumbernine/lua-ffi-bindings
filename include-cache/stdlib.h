/* BEGIN /usr/include/c++/9/stdlib.h */
/* BEGIN /usr/include/stdlib.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* END /usr/include/x86_64-1-gnu/bits/libc-header-start.h */
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h */
typedef int wchar_t;
/* END /usr/lib/gcc/x86_64-1-gnu/9/include/stddef.h */
enum { _STDLIB_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/floatn.h */
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
enum { __HAVE_FLOAT128 = 1 };
enum { __HAVE_DISTINCT_FLOAT128 = 1 };
enum { __HAVE_FLOAT64X = 1 };
enum { __HAVE_FLOAT64X_LONG_DOUBLE = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/floatn-common.h */
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/long-double.h */
/* END /usr/include/x86_64-1-gnu/bits/long-double.h */
enum { __HAVE_FLOAT16 = 0 };
enum { __HAVE_FLOAT32 = 1 };
enum { __HAVE_FLOAT64 = 1 };
enum { __HAVE_FLOAT32X = 1 };
enum { __HAVE_FLOAT128X = 0 };
enum { __HAVE_DISTINCT_FLOAT16 = 0 };
enum { __HAVE_DISTINCT_FLOAT32 = 0 };
enum { __HAVE_DISTINCT_FLOAT64 = 0 };
enum { __HAVE_DISTINCT_FLOAT32X = 0 };
enum { __HAVE_DISTINCT_FLOAT64X = 0 };
enum { __HAVE_DISTINCT_FLOAT128X = 0 };
enum { __HAVE_FLOATN_NOT_TYPEDEF = 1 };
/* END /usr/include/x86_64-1-gnu/bits/floatn-common.h */
/* END /usr/include/x86_64-1-gnu/bits/floatn.h */
typedef struct { int quot;
int rem;
} div_t;
typedef struct { long int quot;
long int rem;
} ldiv_t;
enum { __ldiv_t_defined = 1 };
enum { RAND_MAX = 2147483647 };
enum { EXIT_FAILURE = 1 };
enum { EXIT_SUCCESS = 0 };
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) ;
extern double atof (const char *__nptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__))  __attribute__ ((__nonnull__ (1)))  ;
extern int atoi (const char *__nptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__))  __attribute__ ((__nonnull__ (1)))  ;
extern long int atol (const char *__nptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__))  __attribute__ ((__nonnull__ (1)))  ;
extern double strtod (const char * __nptr, char ** __endptr) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern long int strtol (const char * __nptr, char ** __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern unsigned long int strtoul (const char * __nptr, char ** __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));
extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));
extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (1)))  ;
extern void *calloc (size_t __nmemb, size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__))  __attribute__ ((__alloc_size__ (1, 2)))  ;
extern void *realloc (void *__ptr, size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__))  __attribute__ ((__alloc_size__ (2))) ;
extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));
extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1))) ;
extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__))  __attribute__ ((__nonnull__ (1)))  ;
extern int system (const char *__command) ;
typedef int (*__compar_fn_t) (const void *, const void *);
extern void *bsearch (const void *__key, const void *__base, size_t __nmemb, size_t __size, __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 2, 5)))  ;
extern void qsort (void *__base, size_t __nmemb, size_t __size, __compar_fn_t __compar)  __attribute__ ((__nonnull__ (1, 4))) ;
extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern div_t div (int __numer, int __denom) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
extern int mbtowc (wchar_t * __pwc, const char * __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));
extern size_t mbstowcs (wchar_t *  __pwcs, const char * __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
extern size_t wcstombs (char * __s, const wchar_t * __pwcs, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
/* BEGIN /usr/include/x86_64-linux-gnu/bits/stdlib-float.h */
/* END /usr/include/x86_64-1-gnu/bits/stdlib-float.h */
/* END /usr/include/stdlib.h */
/* END /usr/include/c++/9/stdlib.h */