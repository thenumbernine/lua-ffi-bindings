local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <stdlib.h> /data/data/com.termux/files/usr/bin/../../usr/include/stdlib.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <alloca.h> /data/data/com.termux/files/usr/bin/../../usr/include/alloca.h */
/* ++ END <alloca.h> /data/data/com.termux/files/usr/bin/../../usr/include/alloca.h */
/* ++ BEGIN <bits/wait.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/wait.h */
/* +++ BEGIN <linux/wait.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/wait.h */
/* +++ END <linux/wait.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/wait.h */
/* ++ END <bits/wait.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/wait.h */
/* ++ BEGIN <malloc.h> /data/data/com.termux/files/usr/bin/../../usr/include/malloc.h */
/* +++ BEGIN <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* +++ END <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
/* +++ BEGIN <stdio.h> /data/data/com.termux/files/usr/bin/../../usr/include/stdio.h */
]] require 'ffi.req' 'c.stdio' ffi.cdef[[
/* +++ END <stdio.h> /data/data/com.termux/files/usr/bin/../../usr/include/stdio.h */
__attribute__((__warn_unused_result__)) void*  malloc(size_t __byte_count) __attribute__((__malloc__)) __attribute__((__alloc_size__(1)));
__attribute__((__warn_unused_result__)) void*  calloc(size_t __item_count, size_t __item_size) __attribute__((__malloc__)) __attribute__((__alloc_size__(1,2)));
__attribute__((__warn_unused_result__)) void*  realloc(void*  __ptr, size_t __byte_count) __attribute__((__alloc_size__(2)));
__attribute__((__warn_unused_result__)) void*  reallocarray(void*  __ptr, size_t __item_count, size_t __item_size) __attribute__((__alloc_size__(2, 3))) __attribute__((__availability__(android,strict,introduced=29 )));
void free(void*  __ptr);
__attribute__((__warn_unused_result__)) void*  memalign(size_t __alignment, size_t __byte_count) __attribute__((__malloc__)) __attribute__((__alloc_size__(2)));
__attribute__((__warn_unused_result__)) size_t malloc_usable_size(const void*  __ptr);
struct mallinfo { size_t arena; size_t ordblks; size_t smblks; size_t hblks; size_t hblkhd; size_t usmblks; size_t fsmblks; size_t uordblks; size_t fordblks; size_t keepcost; };
struct mallinfo mallinfo(void);
struct mallinfo2 { size_t arena; size_t ordblks; size_t smblks; size_t hblks; size_t hblkhd; size_t usmblks; size_t fsmblks; size_t uordblks; size_t fordblks; size_t keepcost; };
struct mallinfo2 mallinfo2(void) __asm__("mallinfo");
int malloc_info(int __must_be_zero, FILE*  __fp) __attribute__((__availability__(android,strict,introduced=23 )));
enum HeapTaggingLevel {
  M_HEAP_TAGGING_LEVEL_NONE = 0,
  M_HEAP_TAGGING_LEVEL_TBI = 1,
  M_HEAP_TAGGING_LEVEL_ASYNC = 2,
  M_HEAP_TAGGING_LEVEL_SYNC = 3,
};
int mallopt(int __option, int __value) __attribute__((__availability__(android,strict,introduced=26 )));
extern void*  (*volatile  __malloc_hook)(size_t __byte_count, const void*  __caller) __attribute__((__availability__(android,strict,introduced=28 )));
extern void*  (*volatile  __realloc_hook)(void*  __ptr, size_t __byte_count, const void*  __caller) __attribute__((__availability__(android,strict,introduced=28 )));
extern void (*volatile  __free_hook)(void*  __ptr, const void*  __caller) __attribute__((__availability__(android,strict,introduced=28 )));
extern void*  (*volatile  __memalign_hook)(size_t __alignment, size_t __byte_count, const void*  __caller) __attribute__((__availability__(android,strict,introduced=28 )));
/* ++ END <malloc.h> /data/data/com.termux/files/usr/bin/../../usr/include/malloc.h */
/* ++ BEGIN <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
__attribute__((__noreturn__)) void abort(void) __attribute__((__nomerge__));
__attribute__((__noreturn__)) void exit(int __status);
__attribute__((__noreturn__)) void _Exit(int __status);
int atexit(void (*  __fn)(void));
int at_quick_exit(void (*  __fn)(void));
void quick_exit(int __status) __attribute__((__noreturn__));
char*  getenv(const char*  __name);
int putenv(char*  __assignment);
int setenv(const char*  __name, const char*  __value, int __overwrite);
int unsetenv(const char*  __name);
int clearenv(void);
char*  mkdtemp(char*  __template);
char*  mktemp(char*  __template) __attribute__((__deprecated__("mktemp is unsafe, use mkstemp or tmpfile instead")));
int mkostemp64(char*  __template, int __flags) __attribute__((__availability__(android,strict,introduced=23 )));
int mkostemp(char*  __template, int __flags) __attribute__((__availability__(android,strict,introduced=23 )));
int mkostemps64(char*  __template, int __suffix_length, int __flags) __attribute__((__availability__(android,strict,introduced=23 )));
int mkostemps(char*  __template, int __suffix_length, int __flags) __attribute__((__availability__(android,strict,introduced=23 )));
int mkstemp64(char*  __template);
int mkstemp(char*  __template);
int mkstemps64(char*  __template, int __flags) __attribute__((__availability__(android,strict,introduced=23 )));
int mkstemps(char*  __template, int __flags);
int posix_memalign(void*  *  __memptr, size_t __alignment, size_t __size);
__attribute__((__warn_unused_result__)) void*  aligned_alloc(size_t __alignment, size_t __size) __attribute__((__availability__(android,strict,introduced=28 )));
__attribute__((__warn_unused_result__)) char*  realpath(const char*  __path, char*  __resolved);
int system(const char*  __command);
__attribute__((__warn_unused_result__)) void*  bsearch(const void*  __key, const void*  __base, size_t __nmemb, size_t __size, int (*  __comparator)(const void*  __lhs, const void*  __rhs));
void qsort(void*  __array, size_t __n, size_t __size, int (*  __comparator)(const void*  __lhs, const void*  __rhs));
uint32_t arc4random(void);
uint32_t arc4random_uniform(uint32_t __upper_bound);
void arc4random_buf(void*  __buf, size_t __n);
int rand_r(unsigned int*  __seed_ptr);
double drand48(void);
double erand48(unsigned short __xsubi[ 3]);
long jrand48(unsigned short __xsubi[ 3]);
void lcong48(unsigned short __param[ 7]) __attribute__((__availability__(android,strict,introduced=23 )));
long lrand48(void);
long mrand48(void);
long nrand48(unsigned short __xsubi[ 3]);
unsigned short*  seed48(unsigned short __seed16v[ 3]);
void srand48(long __seed);
char*  initstate(unsigned int __seed, char*  __state, size_t __n);
char*  setstate(char*  __state);
int getpt(void);
int posix_openpt(int __flags);
char*  ptsname(int __fd);
int ptsname_r(int __fd, char*  __buf, size_t __n);
int unlockpt(int __fd);
int getsubopt(char*  *  __option, char*  const*  __tokens, char*  *  __value_ptr) __attribute__((__availability__(android,strict,introduced=26 )));
typedef struct {
  int quot;
  int rem;
} div_t;
div_t div(int __numerator, int __denominator) __attribute__((__const__));
typedef struct {
  long int quot;
  long int rem;
} ldiv_t;
ldiv_t ldiv(long __numerator, long __denominator) __attribute__((__const__));
typedef struct {
  long long int quot;
  long long int rem;
} lldiv_t;
lldiv_t lldiv(long long __numerator, long long __denominator) __attribute__((__const__));
int getloadavg(double __averages[], int __n) __attribute__((__availability__(android,strict,introduced=29 )));
const char*  getprogname(void);
void setprogname(const char*  __name);
int mblen(const char*  __s, size_t __n);
size_t mbstowcs(wchar_t*  __dst, const char*  __src, size_t __n);
int mbtowc(wchar_t*  __wc_ptr, const char*  __s, size_t __n);
int wctomb(char*  __dst, wchar_t __wc);
size_t wcstombs(char*  __dst, const wchar_t*  __src, size_t __n);
int abs(int __x) __attribute__((__const__));
long labs(long __x) __attribute__((__const__));
long long llabs(long long __x) __attribute__((__const__));
int rand(void);
void srand(unsigned int __seed);
long random(void);
void srandom(unsigned int __seed);
int grantpt(int __fd);
double atof(const char*  __s) __attribute__((__pure__));
int atoi(const char*  __s) __attribute__((__pure__));
long atol(const char*  __s) __attribute__((__pure__));
long long atoll(const char*  __s) __attribute__((__pure__));
long strtol(const char*  __s, char*  *  __end_ptr, int __base);
long strtol_l(const char*  __s, char*  *  __end_ptr, int, locale_t  __l) __asm__("strtol");
long long strtoll(const char*  __s, char*  *  __end_ptr, int __base);
long long strtoll_l(const char*  __s, char*  *  __end_ptr, int __base, locale_t  __l);
unsigned long strtoul(const char*  __s, char*  *  __end_ptr, int __base);
unsigned long strtoul_l(const char*  __s, char*  *  __end_ptr, int __base, locale_t  __l) __asm__("strtoul");
unsigned long long strtoull(const char*  __s, char*  *  __end_ptr, int __base);
unsigned long long strtoull_l(const char*  __s, char*  *  __end_ptr, int __base, locale_t  __l);
float strtof(const char*  __s, char*  *  __end_ptr);
double strtod(const char*  __s, char*  *  __end_ptr);
long double strtold(const char*  __s, char*  *  __end_ptr);
long double strtold_l(const char*  __s, char*  *  __end_ptr, locale_t  __l);
double strtod_l(const char*  __s, char*  *  __end_ptr, locale_t  __l) __attribute__((__availability__(android,strict,introduced=26 )));
float strtof_l(const char*  __s, char*  *  __end_ptr, locale_t  __l) __attribute__((__availability__(android,strict,introduced=26 )));
/* ++ BEGIN <android/legacy_stdlib_inlines.h> /data/data/com.termux/files/usr/bin/../../usr/include/android/legacy_stdlib_inlines.h */
/* ++ END <android/legacy_stdlib_inlines.h> /data/data/com.termux/files/usr/bin/../../usr/include/android/legacy_stdlib_inlines.h */
enum { _STDLIB_H = 1 };
/* #define alloca (size) __builtin_alloca(size) ### define is not number */
enum { _UAPI_LINUX_WAIT_H = 1 };
enum { WNOHANG = 0x00000001 };
enum { WUNTRACED = 0x00000002 };
enum { WSTOPPED = 0x00000002 };
enum { WEXITED = 0x00000004 };
enum { WCONTINUED = 0x00000008 };
enum { WNOWAIT = 0x01000000 };
enum { __WNOTHREAD = 0x20000000 };
enum { __WALL = 0x40000000 };
enum { __WCLONE = 0x80000000 };
enum { P_ALL = 0 };
enum { P_PID = 1 };
enum { P_PGID = 2 };
enum { P_PIDFD = 3 };
/* #define WEXITSTATUS (__status) (((__status) & 0xff00) >> 8) ### define is not number */
/* #define WCOREDUMP (__status) ((__status) & 0x80) ### define is not number */
/* #define WTERMSIG (__status) ((__status) & 0x7f) ### define is not number */
/* #define WSTOPSIG (__status) WEXITSTATUS(__status) ### define is not number */
/* #define WIFEXITED (__status) (WTERMSIG(__status) == 0) ### define is not number */
/* #define WIFSTOPPED (__status) (((__status) & 0xff) == 0x7f) ### define is not number */
/* #define WIFSIGNALED (__status) (WTERMSIG((__status)+1) >= 2) ### define is not number */
/* #define WIFCONTINUED (__status) ((__status) == 0xffff) ### define is not number */
/* #define W_EXITCODE (__exit_code,__signal_number) ((__exit_code) << 8 | (__signal_number)) ### define is not number */
/* #define W_STOPCODE (__signal_number) ((__signal_number) << 8 | 0x7f) ### define is not number */
/* #define __BIONIC_ALLOC_SIZE (...) __attribute__((__alloc_size__(__VA_ARGS__))) ### define is not number */
/* #define __MALLINFO_BODY size_t arena; size_t ordblks; size_t smblks; size_t hblks; size_t hblkhd; size_t usmblks; size_t fsmblks; size_t uordblks; size_t fordblks; size_t keepcost; ### define is not number */
enum { STRUCT_MALLINFO_DECLARED = 1 };
/* #define M_DECAY_TIME (-100) ### define is not number */
/* #define M_PURGE (-101) ### define is not number */
/* #define M_PURGE_ALL (-104) ### define is not number */
/* #define M_MEMTAG_TUNING (-102) ### define is not number */
enum { M_MEMTAG_TUNING_BUFFER_OVERFLOW = 0 };
enum { M_MEMTAG_TUNING_UAF = 1 };
/* #define M_THREAD_DISABLE_MEM_INIT (-103) ### define is not number */
/* #define M_CACHE_COUNT_MAX (-200) ### define is not number */
/* #define M_CACHE_SIZE_MAX (-201) ### define is not number */
/* #define M_TSDS_COUNT_MAX (-202) ### define is not number */
/* #define M_BIONIC_ZERO_INIT (-203) ### define is not number */
/* #define M_BIONIC_SET_HEAP_TAGGING_LEVEL (-204) ### define is not number */
/* #define M_HEAP_TAGGING_LEVEL_NONE M_HEAP_TAGGING_LEVEL_NONE ### define is not number */
/* #define M_HEAP_TAGGING_LEVEL_TBI M_HEAP_TAGGING_LEVEL_TBI ### define is not number */
/* #define M_HEAP_TAGGING_LEVEL_ASYNC M_HEAP_TAGGING_LEVEL_ASYNC ### define is not number */
/* #define M_HEAP_TAGGING_LEVEL_SYNC M_HEAP_TAGGING_LEVEL_SYNC ### define is not number */
/* #define M_LOG_STATS (-205) ### define is not number */
enum { EXIT_FAILURE = 1 };
enum { EXIT_SUCCESS = 0 };
enum { RAND_MAX = 0x7fffffff };
enum { MB_CUR_MAX = 4 };
/* + END <stdlib.h> /data/data/com.termux/files/usr/bin/../../usr/include/stdlib.h */
]]
return ffi.C
