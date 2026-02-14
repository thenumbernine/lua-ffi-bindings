local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <stdlib.h> /boot/system/develop/headers/bsd/stdlib.h */
/* ++ BEGIN <stdlib.h> /boot/system/develop/headers/posix/stdlib.h */
/* +++ BEGIN <alloca.h> /boot/system/develop/headers/posix/alloca.h */
/* ++++ BEGIN <sys/types.h> ./Haiku/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++++ END <sys/types.h> ./Haiku/sys/types.h */
extern void * __alloca (size_t __size);
extern void * alloca (size_t __size);
/* +++ END <alloca.h> /boot/system/develop/headers/posix/alloca.h */
/* +++ BEGIN <div_t.h> /boot/system/develop/headers/posix/div_t.h */
typedef struct {
 int quot;
 int rem;
} div_t;
typedef struct {
 long quot;
 long rem;
} ldiv_t;
typedef struct {
 long long quot;
 long long rem;
} lldiv_t;
/* +++ END <div_t.h> /boot/system/develop/headers/posix/div_t.h */
/* +++ BEGIN <limits.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/limits.h */
]] require 'ffi.req' 'c.limits' ffi.cdef[[
/* +++ END <limits.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/limits.h */
/* +++ BEGIN <stddef.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* +++ END <stddef.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/stddef.h */
/* +++ BEGIN <sys/wait.h> /boot/system/develop/headers/bsd/sys/wait.h */
]] require 'ffi.req' 'c.sys.wait' ffi.cdef[[
/* +++ END <sys/wait.h> /boot/system/develop/headers/bsd/sys/wait.h */
/* +++ BEGIN <wchar_t.h> /boot/system/develop/headers/posix/wchar_t.h */
/* ++++ BEGIN <stddef.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++++ END <stddef.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/stddef.h */
/* +++ END <wchar_t.h> /boot/system/develop/headers/posix/wchar_t.h */
struct random_data {
    int *fptr;
    int *rptr;
    int *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int *end_ptr;
};
extern void *calloc(size_t numElements, size_t size);
extern void free(void *pointer);
extern void *malloc(size_t size);
extern int posix_memalign(void **_pointer, size_t alignment, size_t size);
extern void *aligned_alloc(size_t alignment, size_t size) __attribute__((alloc_align(1)));
extern void *realloc(void *oldPointer, size_t newSize);
extern void *reallocarray(void *ptr, size_t nelem, size_t elsize);
extern void abort(void) __attribute__((noreturn));
extern int atexit(void (*func)(void));
extern int atfork(void (*func)(void));
extern void exit(int) __attribute__((noreturn));
extern void _Exit(int) __attribute__((noreturn));
extern char *realpath(const char *path, char *resolved);
extern int system(const char *command);
extern char *mktemp(char *name);
extern char *mkdtemp(char *templat);
extern int mkstemp(char *templat);
extern int mkostemp(char *templat, int oflags);
extern char *ecvt(double value, int digits, int *_decimalPoint, int *_sign);
extern char *fcvt(double value, int precision, int *_decimalPoint,
     int *_sign);
extern char *gcvt(double value, int digits, char *buffer);
extern char *l64a(long n);
extern long a64l(const char *string);
extern char **environ;
extern int clearenv(void);
extern char *getenv(const char *name);
extern int putenv(char *string);
extern int setenv(char const *name, char const *value, int rewrite);
extern int unsetenv(const char *name);
extern double atof(const char *string);
extern int atoi(const char *string);
extern long atol(const char *string);
extern long long int atoll(const char *string);
extern unsigned int atoui(const char *string);
extern unsigned long atoul(const char *string);
extern double strtod(const char *string, char **end);
extern long double strtold(const char *string, char **end);
extern float strtof(const char *string, char **end);
extern long strtol(const char *string, char **end, int base);
extern unsigned long strtoul(const char *string, char **end, int base);
extern long long strtoll(const char *string, char **end, int base);
extern unsigned long long strtoull(const char *string, char **end, int base);
extern void srand(unsigned int seed);
extern int rand(void);
extern int random(void);
extern void srandom(unsigned int seed);
extern int rand_r(unsigned int *seed);
extern int random_r(struct random_data *data, int *result);
extern int srandom_r(unsigned int seed, struct random_data *data);
extern char *initstate(unsigned int seed, char *state, size_t size);
extern char *setstate(char *state);
extern int initstate_r(unsigned int seed, void *stateBuffer,
     size_t stateLength, struct random_data *data);
extern int setstate_r(void *stateBuffer, struct random_data *data);
extern double drand48(void);
extern double erand48(unsigned short int xsubi[3]);
extern long lrand48(void);
extern long nrand48(unsigned short int xsubi[3]);
extern long mrand48(void);
extern long jrand48(unsigned short int xsubi[3]);
extern void srand48(long int seed);
extern unsigned short *seed48(unsigned short int seed16v[3]);
extern void lcong48(unsigned short int param[7]);
typedef int (*_compare_function)(const void *, const void *);
typedef int (*_compare_function_qsort_r)(const void*, const void*, void*);
extern void *bsearch(const void *key, const void *base, size_t numElements,
     size_t sizeOfElement, _compare_function);
extern void qsort(void *base, size_t numElements, size_t sizeOfElement,
     _compare_function);
extern void qsort_r(void* base, size_t numElements, size_t sizeOfElement,
     _compare_function_qsort_r, void* cookie);
extern int heapsort(void *base, size_t numElements, size_t sizeOfElement,
     _compare_function);
extern int mergesort(void *base, size_t numElements, size_t sizeOfElement,
     _compare_function);
extern int radixsort(u_char const **base, int numElements,
     u_char const *table, u_int endByte);
extern int sradixsort(u_char const **base, int numElements,
     u_char const *table, u_int endByte);
extern int abs(int number);
extern long labs(long number);
extern long long llabs(long long number);
extern div_t div(int numerator, int denominator);
extern ldiv_t ldiv(long numerator, long denominator);
extern lldiv_t lldiv(long long numerator, long long denominator);
extern int mblen(const char *string, size_t maxSize);
extern int mbtowc(wchar_t *pwc, const char *string, size_t maxSize);
extern int wctomb(char *string, wchar_t wchar);
extern size_t mbstowcs(wchar_t *pwcs, const char *string, size_t maxSize);
extern size_t wcstombs(char *string, const wchar_t *pwcs, size_t maxSize);
extern void setkey(const char *key);
extern int getsubopt(char **optionp, char * const *keylistp,
     char **valuep);
extern int posix_openpt(int openFlags);
extern int grantpt(int masterFD);
extern char* ptsname(int masterFD);
extern int ptsname_r(int masterFD, char *path, size_t maxSize);
extern int unlockpt(int masterFD);
extern unsigned short __ctype_get_mb_cur_max(void);
/* ++ END <stdlib.h> /boot/system/develop/headers/posix/stdlib.h */
/* ++ BEGIN <stdint.h> /boot/system/develop/headers/posix/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* ++ END <stdint.h> /boot/system/develop/headers/posix/stdint.h */
int daemon(int noChangeDir, int noClose);
const char *getprogname(void);
void setprogname(const char *programName);
uint32_t arc4random(void);
void arc4random_buf(void *buf, size_t nbytes);
uint32_t arc4random_uniform(uint32_t upper_bound);
int mkstemps(char *templat, int slen);
long long strtonum(const char *numstr, long long minval,
    long long maxval, const char **errstrp);
int getloadavg(double array[], int size);
enum { _BSD_STDLIB_H_ = 1 };
enum { _STDLIB_H_ = 1 };
enum { _ALLOCA_H = 1 };
/* #define __alloca (size) __builtin_alloca (size) ### define is not number */
/* #define alloca (size) __alloca (size) ### define is not number */
enum { _DIV_T_H_ = 1 };
enum { RAND_MAX = 0x7fffffff };
/* #define MB_CUR_MAX (__ctype_get_mb_cur_max()) ### define is not number */
enum { EXIT_SUCCESS = 0 };
enum { EXIT_FAILURE = 1 };
/* + END <stdlib.h> /boot/system/develop/headers/bsd/stdlib.h */
]]
