-- OpenBLAS 0.3.20
local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/x86_64-linux-gnu/cblas.h */
enum { CBLAS_H = 1 };
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/12/include/stddef.h */
]] require 'ffi.c.stddef' ffi.cdef[[
/* END   /usr/lib/gcc/x86_64-linux-gnu/12/include/stddef.h */
/* BEGIN /usr/include/x86_64-linux-gnu/openblas_config.h */
enum { OPENBLAS_CONFIG_H = 1 };
enum { OPENBLAS_OS_LINUX = 1 };
enum { OPENBLAS_ARCH_X86_64 = 1 };
enum { OPENBLAS_C_GCC = 1 };
enum { OPENBLAS___64BIT__ = 1 };
enum { OPENBLAS_HAVE_C11 = 1 };
enum { OPENBLAS_PTHREAD_CREATE_FUNC = 0 };
enum { OPENBLAS_BUNDERSCORE = 0 };
enum { OPENBLAS_NEEDBUNDERSCORE = 1 };
enum { OPENBLAS_GENERIC = 1 };
enum { OPENBLAS_L1_DATA_SIZE = 32768 };
enum { OPENBLAS_L1_DATA_LINESIZE = 128 };
enum { OPENBLAS_L2_SIZE = 512488 };
enum { OPENBLAS_L2_LINESIZE = 128 };
enum { OPENBLAS_DTB_DEFAULT_ENTRIES = 128 };
enum { OPENBLAS_DTB_SIZE = 4096 };
enum { OPENBLAS_L2_ASSOCIATIVE = 8 };
enum { OPENBLAS_CORE_generic = 1 };
/* #define OPENBLAS_CHAR_CORENAME "generic" ### string, not number "\"generic\"" */
enum { OPENBLAS_SLOCAL_BUFFER_SIZE = 4096 };
enum { OPENBLAS_DLOCAL_BUFFER_SIZE = 4096 };
enum { OPENBLAS_CLOCAL_BUFFER_SIZE = 8192 };
enum { OPENBLAS_ZLOCAL_BUFFER_SIZE = 8192 };
enum { OPENBLAS_GEMM_MULTITHREAD_THRESHOLD = 4 };
/* #define OPENBLAS_VERSION " OpenBLAS 0.3.20 " ### string, not number "\" OpenBLAS 0.3.20 \"" */
enum { xdouble = 0 };
typedef long BLASLONG;
typedef unsigned long BLASULONG;
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/12/include/stdint.h */
]] require 'ffi.c.stdint' ffi.cdef[[
/* END   /usr/lib/gcc/x86_64-linux-gnu/12/include/stdint.h */
typedef uint16_t bfloat16;
typedef int blasint;
enum { FLOATRET = 0 };
/* BEGIN /usr/include/stdio.h */
]] require 'ffi.c.stdio' ffi.cdef[[
/* END   /usr/include/stdio.h */
enum { OPENBLAS_COMPLEX_C99 = 1 };
/* BEGIN /usr/include/complex.h */
]] require 'ffi.c.complex' ffi.cdef[[
/* END   /usr/include/complex.h */
typedef float _Complex openblas_complex_float;
typedef double _Complex openblas_complex_double;
typedef double _Complex openblas_complex_xdouble;
enum { _GNU_SOURCE = 1 };
/* BEGIN /usr/include/sched.h */
]] require 'ffi.c.sched' ffi.cdef[[
/* END   /usr/include/sched.h */
/* END   /usr/include/x86_64-linux-gnu/openblas_config.h */
void openblas_set_num_threads(int num_threads);
void goto_set_num_threads(int num_threads);
int openblas_get_num_threads(void);
int openblas_get_num_procs(void);
char* openblas_get_config(void);
char* openblas_get_corename(void);
int openblas_setaffinity(int thread_idx, size_t cpusetsize, cpu_set_t* cpu_set);
int openblas_get_parallel(void);
enum { OPENBLAS_SEQUENTIAL = 0 };
enum { OPENBLAS_THREAD = 1 };
enum { OPENBLAS_OPENMP = 2 };
enum { OPENBLAS_CONST = 0 };
enum { CBLAS_INDEX = 0 };
typedef enum CBLAS_ORDER {CblasRowMajor=101, CblasColMajor=102} CBLAS_ORDER;
typedef enum CBLAS_TRANSPOSE {CblasNoTrans=111, CblasTrans=112, CblasConjTrans=113, CblasConjNoTrans=114} CBLAS_TRANSPOSE;
typedef enum CBLAS_UPLO {CblasUpper=121, CblasLower=122} CBLAS_UPLO;
typedef enum CBLAS_DIAG {CblasNonUnit=131, CblasUnit=132} CBLAS_DIAG;
typedef enum CBLAS_SIDE {CblasLeft=141, CblasRight=142} CBLAS_SIDE;
typedef CBLAS_ORDER CBLAS_LAYOUT;
float cblas_sdsdot(const blasint n, const float alpha, const float *x, const blasint incx, const float *y, const blasint incy);
double cblas_dsdot (const blasint n, const float *x, const blasint incx, const float *y, const blasint incy);
float cblas_sdot(const blasint n, const float *x, const blasint incx, const float *y, const blasint incy);
double cblas_ddot(const blasint n, const double *x, const blasint incx, const double *y, const blasint incy);
openblas_complex_float cblas_cdotu(const blasint n, const void *x, const blasint incx, const void *y, const blasint incy);
openblas_complex_float cblas_cdotc(const blasint n, const void *x, const blasint incx, const void *y, const blasint incy);
openblas_complex_double cblas_zdotu(const blasint n, const void *x, const blasint incx, const void *y, const blasint incy);
openblas_complex_double cblas_zdotc(const blasint n, const void *x, const blasint incx, const void *y, const blasint incy);
void cblas_cdotu_sub(const blasint n, const void *x, const blasint incx, const void *y, const blasint incy, void *ret);
void cblas_cdotc_sub(const blasint n, const void *x, const blasint incx, const void *y, const blasint incy, void *ret);
void cblas_zdotu_sub(const blasint n, const void *x, const blasint incx, const void *y, const blasint incy, void *ret);
void cblas_zdotc_sub(const blasint n, const void *x, const blasint incx, const void *y, const blasint incy, void *ret);
float cblas_sasum (const blasint n, const float *x, const blasint incx);
double cblas_dasum (const blasint n, const double *x, const blasint incx);
float cblas_scasum(const blasint n, const void *x, const blasint incx);
double cblas_dzasum(const blasint n, const void *x, const blasint incx);
float cblas_ssum (const blasint n, const float *x, const blasint incx);
double cblas_dsum (const blasint n, const double *x, const blasint incx);
float cblas_scsum(const blasint n, const void *x, const blasint incx);
double cblas_dzsum(const blasint n, const void *x, const blasint incx);
float cblas_snrm2 (const blasint N, const float *X, const blasint incX);
double cblas_dnrm2 (const blasint N, const double *X, const blasint incX);
float cblas_scnrm2(const blasint N, const void *X, const blasint incX);
double cblas_dznrm2(const blasint N, const void *X, const blasint incX);
size_t cblas_isamax(const blasint n, const float *x, const blasint incx);
size_t cblas_idamax(const blasint n, const double *x, const blasint incx);
size_t cblas_icamax(const blasint n, const void *x, const blasint incx);
size_t cblas_izamax(const blasint n, const void *x, const blasint incx);
size_t cblas_isamin(const blasint n, const float *x, const blasint incx);
size_t cblas_idamin(const blasint n, const double *x, const blasint incx);
size_t cblas_icamin(const blasint n, const void *x, const blasint incx);
size_t cblas_izamin(const blasint n, const void *x, const blasint incx);
size_t cblas_ismax(const blasint n, const float *x, const blasint incx);
size_t cblas_idmax(const blasint n, const double *x, const blasint incx);
size_t cblas_icmax(const blasint n, const void *x, const blasint incx);
size_t cblas_izmax(const blasint n, const void *x, const blasint incx);
size_t cblas_ismin(const blasint n, const float *x, const blasint incx);
size_t cblas_idmin(const blasint n, const double *x, const blasint incx);
size_t cblas_icmin(const blasint n, const void *x, const blasint incx);
size_t cblas_izmin(const blasint n, const void *x, const blasint incx);
void cblas_saxpy(const blasint n, const float alpha, const float *x, const blasint incx, float *y, const blasint incy);
void cblas_daxpy(const blasint n, const double alpha, const double *x, const blasint incx, double *y, const blasint incy);
void cblas_caxpy(const blasint n, const void *alpha, const void *x, const blasint incx, void *y, const blasint incy);
void cblas_zaxpy(const blasint n, const void *alpha, const void *x, const blasint incx, void *y, const blasint incy);
void cblas_scopy(const blasint n, const float *x, const blasint incx, float *y, const blasint incy);
void cblas_dcopy(const blasint n, const double *x, const blasint incx, double *y, const blasint incy);
void cblas_ccopy(const blasint n, const void *x, const blasint incx, void *y, const blasint incy);
void cblas_zcopy(const blasint n, const void *x, const blasint incx, void *y, const blasint incy);
void cblas_sswap(const blasint n, float *x, const blasint incx, float *y, const blasint incy);
void cblas_dswap(const blasint n, double *x, const blasint incx, double *y, const blasint incy);
void cblas_cswap(const blasint n, void *x, const blasint incx, void *y, const blasint incy);
void cblas_zswap(const blasint n, void *x, const blasint incx, void *y, const blasint incy);
void cblas_srot(const blasint N, float *X, const blasint incX, float *Y, const blasint incY, const float c, const float s);
void cblas_drot(const blasint N, double *X, const blasint incX, double *Y, const blasint incY, const double c, const double s);
void cblas_csrot(const blasint n, const void *x, const blasint incx, void *y, const blasint incY, const float c, const float s);
void cblas_zdrot(const blasint n, const void *x, const blasint incx, void *y, const blasint incY, const double c, const double s);
void cblas_srotg(float *a, float *b, float *c, float *s);
void cblas_drotg(double *a, double *b, double *c, double *s);
void cblas_crotg(void *a, void *b, float *c, void *s);
void cblas_zrotg(void *a, void *b, double *c, void *s);
void cblas_srotm(const blasint N, float *X, const blasint incX, float *Y, const blasint incY, const float *P);
void cblas_drotm(const blasint N, double *X, const blasint incX, double *Y, const blasint incY, const double *P);
void cblas_srotmg(float *d1, float *d2, float *b1, const float b2, float *P);
void cblas_drotmg(double *d1, double *d2, double *b1, const double b2, double *P);
void cblas_sscal(const blasint N, const float alpha, float *X, const blasint incX);
void cblas_dscal(const blasint N, const double alpha, double *X, const blasint incX);
void cblas_cscal(const blasint N, const void *alpha, void *X, const blasint incX);
void cblas_zscal(const blasint N, const void *alpha, void *X, const blasint incX);
void cblas_csscal(const blasint N, const float alpha, void *X, const blasint incX);
void cblas_zdscal(const blasint N, const double alpha, void *X, const blasint incX);
void cblas_sgemv(const enum CBLAS_ORDER order, const enum CBLAS_TRANSPOSE trans, const blasint m, const blasint n, const float alpha, const float *a, const blasint lda, const float *x, const blasint incx, const float beta, float *y, const blasint incy);
void cblas_dgemv(const enum CBLAS_ORDER order, const enum CBLAS_TRANSPOSE trans, const blasint m, const blasint n, const double alpha, const double *a, const blasint lda, const double *x, const blasint incx, const double beta, double *y, const blasint incy);
void cblas_cgemv(const enum CBLAS_ORDER order, const enum CBLAS_TRANSPOSE trans, const blasint m, const blasint n, const void *alpha, const void *a, const blasint lda, const void *x, const blasint incx, const void *beta, void *y, const blasint incy);
void cblas_zgemv(const enum CBLAS_ORDER order, const enum CBLAS_TRANSPOSE trans, const blasint m, const blasint n, const void *alpha, const void *a, const blasint lda, const void *x, const blasint incx, const void *beta, void *y, const blasint incy);
void cblas_sger (const enum CBLAS_ORDER order, const blasint M, const blasint N, const float alpha, const float *X, const blasint incX, const float *Y, const blasint incY, float *A, const blasint lda);
void cblas_dger (const enum CBLAS_ORDER order, const blasint M, const blasint N, const double alpha, const double *X, const blasint incX, const double *Y, const blasint incY, double *A, const blasint lda);
void cblas_cgeru(const enum CBLAS_ORDER order, const blasint M, const blasint N, const void *alpha, const void *X, const blasint incX, const void *Y, const blasint incY, void *A, const blasint lda);
void cblas_cgerc(const enum CBLAS_ORDER order, const blasint M, const blasint N, const void *alpha, const void *X, const blasint incX, const void *Y, const blasint incY, void *A, const blasint lda);
void cblas_zgeru(const enum CBLAS_ORDER order, const blasint M, const blasint N, const void *alpha, const void *X, const blasint incX, const void *Y, const blasint incY, void *A, const blasint lda);
void cblas_zgerc(const enum CBLAS_ORDER order, const blasint M, const blasint N, const void *alpha, const void *X, const blasint incX, const void *Y, const blasint incY, void *A, const blasint lda);
void cblas_strsv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const float *A, const blasint lda, float *X, const blasint incX);
void cblas_dtrsv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const double *A, const blasint lda, double *X, const blasint incX);
void cblas_ctrsv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const void *A, const blasint lda, void *X, const blasint incX);
void cblas_ztrsv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const void *A, const blasint lda, void *X, const blasint incX);
void cblas_strmv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const float *A, const blasint lda, float *X, const blasint incX);
void cblas_dtrmv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const double *A, const blasint lda, double *X, const blasint incX);
void cblas_ctrmv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const void *A, const blasint lda, void *X, const blasint incX);
void cblas_ztrmv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const void *A, const blasint lda, void *X, const blasint incX);
void cblas_ssyr(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const float alpha, const float *X, const blasint incX, float *A, const blasint lda);
void cblas_dsyr(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const double alpha, const double *X, const blasint incX, double *A, const blasint lda);
void cblas_cher(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const float alpha, const void *X, const blasint incX, void *A, const blasint lda);
void cblas_zher(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const double alpha, const void *X, const blasint incX, void *A, const blasint lda);
void cblas_ssyr2(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo,const blasint N, const float alpha, const float *X, const blasint incX, const float *Y, const blasint incY, float *A, const blasint lda);
void cblas_dsyr2(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const double alpha, const double *X, const blasint incX, const double *Y, const blasint incY, double *A, const blasint lda);
void cblas_cher2(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const void *alpha, const void *X, const blasint incX, const void *Y, const blasint incY, void *A, const blasint lda);
void cblas_zher2(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const void *alpha, const void *X, const blasint incX, const void *Y, const blasint incY, void *A, const blasint lda);
void cblas_sgbmv(const enum CBLAS_ORDER order, const enum CBLAS_TRANSPOSE TransA, const blasint M, const blasint N, const blasint KL, const blasint KU, const float alpha, const float *A, const blasint lda, const float *X, const blasint incX, const float beta, float *Y, const blasint incY);
void cblas_dgbmv(const enum CBLAS_ORDER order, const enum CBLAS_TRANSPOSE TransA, const blasint M, const blasint N, const blasint KL, const blasint KU, const double alpha, const double *A, const blasint lda, const double *X, const blasint incX, const double beta, double *Y, const blasint incY);
void cblas_cgbmv(const enum CBLAS_ORDER order, const enum CBLAS_TRANSPOSE TransA, const blasint M, const blasint N, const blasint KL, const blasint KU, const void *alpha, const void *A, const blasint lda, const void *X, const blasint incX, const void *beta, void *Y, const blasint incY);
void cblas_zgbmv(const enum CBLAS_ORDER order, const enum CBLAS_TRANSPOSE TransA, const blasint M, const blasint N, const blasint KL, const blasint KU, const void *alpha, const void *A, const blasint lda, const void *X, const blasint incX, const void *beta, void *Y, const blasint incY);
void cblas_ssbmv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const blasint K, const float alpha, const float *A, const blasint lda, const float *X, const blasint incX, const float beta, float *Y, const blasint incY);
void cblas_dsbmv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const blasint K, const double alpha, const double *A, const blasint lda, const double *X, const blasint incX, const double beta, double *Y, const blasint incY);
void cblas_stbmv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const blasint K, const float *A, const blasint lda, float *X, const blasint incX);
void cblas_dtbmv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const blasint K, const double *A, const blasint lda, double *X, const blasint incX);
void cblas_ctbmv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const blasint K, const void *A, const blasint lda, void *X, const blasint incX);
void cblas_ztbmv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const blasint K, const void *A, const blasint lda, void *X, const blasint incX);
void cblas_stbsv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const blasint K, const float *A, const blasint lda, float *X, const blasint incX);
void cblas_dtbsv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const blasint K, const double *A, const blasint lda, double *X, const blasint incX);
void cblas_ctbsv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const blasint K, const void *A, const blasint lda, void *X, const blasint incX);
void cblas_ztbsv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const blasint K, const void *A, const blasint lda, void *X, const blasint incX);
void cblas_stpmv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const float *Ap, float *X, const blasint incX);
void cblas_dtpmv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const double *Ap, double *X, const blasint incX);
void cblas_ctpmv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const void *Ap, void *X, const blasint incX);
void cblas_ztpmv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const void *Ap, void *X, const blasint incX);
void cblas_stpsv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const float *Ap, float *X, const blasint incX);
void cblas_dtpsv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const double *Ap, double *X, const blasint incX);
void cblas_ctpsv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const void *Ap, void *X, const blasint incX);
void cblas_ztpsv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint N, const void *Ap, void *X, const blasint incX);
void cblas_ssymv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const float alpha, const float *A, const blasint lda, const float *X, const blasint incX, const float beta, float *Y, const blasint incY);
void cblas_dsymv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const double alpha, const double *A, const blasint lda, const double *X, const blasint incX, const double beta, double *Y, const blasint incY);
void cblas_chemv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const void *alpha, const void *A, const blasint lda, const void *X, const blasint incX, const void *beta, void *Y, const blasint incY);
void cblas_zhemv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const void *alpha, const void *A, const blasint lda, const void *X, const blasint incX, const void *beta, void *Y, const blasint incY);
void cblas_sspmv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const float alpha, const float *Ap, const float *X, const blasint incX, const float beta, float *Y, const blasint incY);
void cblas_dspmv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const double alpha, const double *Ap, const double *X, const blasint incX, const double beta, double *Y, const blasint incY);
void cblas_sspr(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const float alpha, const float *X, const blasint incX, float *Ap);
void cblas_dspr(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const double alpha, const double *X, const blasint incX, double *Ap);
void cblas_chpr(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const float alpha, const void *X, const blasint incX, void *A);
void cblas_zhpr(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const double alpha, const void *X,const blasint incX, void *A);
void cblas_sspr2(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const float alpha, const float *X, const blasint incX, const float *Y, const blasint incY, float *A);
void cblas_dspr2(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const double alpha, const double *X, const blasint incX, const double *Y, const blasint incY, double *A);
void cblas_chpr2(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const void *alpha, const void *X, const blasint incX, const void *Y, const blasint incY, void *Ap);
void cblas_zhpr2(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const void *alpha, const void *X, const blasint incX, const void *Y, const blasint incY, void *Ap);
void cblas_chbmv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const blasint K, const void *alpha, const void *A, const blasint lda, const void *X, const blasint incX, const void *beta, void *Y, const blasint incY);
void cblas_zhbmv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const blasint K, const void *alpha, const void *A, const blasint lda, const void *X, const blasint incX, const void *beta, void *Y, const blasint incY);
void cblas_chpmv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const void *alpha, const void *Ap, const void *X, const blasint incX, const void *beta, void *Y, const blasint incY);
void cblas_zhpmv(const enum CBLAS_ORDER order, const enum CBLAS_UPLO Uplo, const blasint N, const void *alpha, const void *Ap, const void *X, const blasint incX, const void *beta, void *Y, const blasint incY);
void cblas_sgemm(const enum CBLAS_ORDER Order, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_TRANSPOSE TransB, const blasint M, const blasint N, const blasint K, const float alpha, const float *A, const blasint lda, const float *B, const blasint ldb, const float beta, float *C, const blasint ldc);
void cblas_dgemm(const enum CBLAS_ORDER Order, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_TRANSPOSE TransB, const blasint M, const blasint N, const blasint K, const double alpha, const double *A, const blasint lda, const double *B, const blasint ldb, const double beta, double *C, const blasint ldc);
void cblas_cgemm(const enum CBLAS_ORDER Order, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_TRANSPOSE TransB, const blasint M, const blasint N, const blasint K, const void *alpha, const void *A, const blasint lda, const void *B, const blasint ldb, const void *beta, void *C, const blasint ldc);
void cblas_cgemm3m(const enum CBLAS_ORDER Order, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_TRANSPOSE TransB, const blasint M, const blasint N, const blasint K, const void *alpha, const void *A, const blasint lda, const void *B, const blasint ldb, const void *beta, void *C, const blasint ldc);
void cblas_zgemm(const enum CBLAS_ORDER Order, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_TRANSPOSE TransB, const blasint M, const blasint N, const blasint K, const void *alpha, const void *A, const blasint lda, const void *B, const blasint ldb, const void *beta, void *C, const blasint ldc);
void cblas_zgemm3m(const enum CBLAS_ORDER Order, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_TRANSPOSE TransB, const blasint M, const blasint N, const blasint K, const void *alpha, const void *A, const blasint lda, const void *B, const blasint ldb, const void *beta, void *C, const blasint ldc);
void cblas_ssymm(const enum CBLAS_ORDER Order, const enum CBLAS_SIDE Side, const enum CBLAS_UPLO Uplo, const blasint M, const blasint N, const float alpha, const float *A, const blasint lda, const float *B, const blasint ldb, const float beta, float *C, const blasint ldc);
void cblas_dsymm(const enum CBLAS_ORDER Order, const enum CBLAS_SIDE Side, const enum CBLAS_UPLO Uplo, const blasint M, const blasint N, const double alpha, const double *A, const blasint lda, const double *B, const blasint ldb, const double beta, double *C, const blasint ldc);
void cblas_csymm(const enum CBLAS_ORDER Order, const enum CBLAS_SIDE Side, const enum CBLAS_UPLO Uplo, const blasint M, const blasint N, const void *alpha, const void *A, const blasint lda, const void *B, const blasint ldb, const void *beta, void *C, const blasint ldc);
void cblas_zsymm(const enum CBLAS_ORDER Order, const enum CBLAS_SIDE Side, const enum CBLAS_UPLO Uplo, const blasint M, const blasint N, const void *alpha, const void *A, const blasint lda, const void *B, const blasint ldb, const void *beta, void *C, const blasint ldc);
void cblas_ssyrk(const enum CBLAS_ORDER Order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const float alpha, const float *A, const blasint lda, const float beta, float *C, const blasint ldc);
void cblas_dsyrk(const enum CBLAS_ORDER Order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const double alpha, const double *A, const blasint lda, const double beta, double *C, const blasint ldc);
void cblas_csyrk(const enum CBLAS_ORDER Order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const void *alpha, const void *A, const blasint lda, const void *beta, void *C, const blasint ldc);
void cblas_zsyrk(const enum CBLAS_ORDER Order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const void *alpha, const void *A, const blasint lda, const void *beta, void *C, const blasint ldc);
void cblas_ssyr2k(const enum CBLAS_ORDER Order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const float alpha, const float *A, const blasint lda, const float *B, const blasint ldb, const float beta, float *C, const blasint ldc);
void cblas_dsyr2k(const enum CBLAS_ORDER Order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const double alpha, const double *A, const blasint lda, const double *B, const blasint ldb, const double beta, double *C, const blasint ldc);
void cblas_csyr2k(const enum CBLAS_ORDER Order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const void *alpha, const void *A, const blasint lda, const void *B, const blasint ldb, const void *beta, void *C, const blasint ldc);
void cblas_zsyr2k(const enum CBLAS_ORDER Order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const void *alpha, const void *A, const blasint lda, const void *B, const blasint ldb, const void *beta, void *C, const blasint ldc);
void cblas_strmm(const enum CBLAS_ORDER Order, const enum CBLAS_SIDE Side, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint M, const blasint N, const float alpha, const float *A, const blasint lda, float *B, const blasint ldb);
void cblas_dtrmm(const enum CBLAS_ORDER Order, const enum CBLAS_SIDE Side, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint M, const blasint N, const double alpha, const double *A, const blasint lda, double *B, const blasint ldb);
void cblas_ctrmm(const enum CBLAS_ORDER Order, const enum CBLAS_SIDE Side, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint M, const blasint N, const void *alpha, const void *A, const blasint lda, void *B, const blasint ldb);
void cblas_ztrmm(const enum CBLAS_ORDER Order, const enum CBLAS_SIDE Side, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint M, const blasint N, const void *alpha, const void *A, const blasint lda, void *B, const blasint ldb);
void cblas_strsm(const enum CBLAS_ORDER Order, const enum CBLAS_SIDE Side, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint M, const blasint N, const float alpha, const float *A, const blasint lda, float *B, const blasint ldb);
void cblas_dtrsm(const enum CBLAS_ORDER Order, const enum CBLAS_SIDE Side, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint M, const blasint N, const double alpha, const double *A, const blasint lda, double *B, const blasint ldb);
void cblas_ctrsm(const enum CBLAS_ORDER Order, const enum CBLAS_SIDE Side, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint M, const blasint N, const void *alpha, const void *A, const blasint lda, void *B, const blasint ldb);
void cblas_ztrsm(const enum CBLAS_ORDER Order, const enum CBLAS_SIDE Side, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_DIAG Diag, const blasint M, const blasint N, const void *alpha, const void *A, const blasint lda, void *B, const blasint ldb);
void cblas_chemm(const enum CBLAS_ORDER Order, const enum CBLAS_SIDE Side, const enum CBLAS_UPLO Uplo, const blasint M, const blasint N, const void *alpha, const void *A, const blasint lda, const void *B, const blasint ldb, const void *beta, void *C, const blasint ldc);
void cblas_zhemm(const enum CBLAS_ORDER Order, const enum CBLAS_SIDE Side, const enum CBLAS_UPLO Uplo, const blasint M, const blasint N, const void *alpha, const void *A, const blasint lda, const void *B, const blasint ldb, const void *beta, void *C, const blasint ldc);
void cblas_cherk(const enum CBLAS_ORDER Order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const float alpha, const void *A, const blasint lda, const float beta, void *C, const blasint ldc);
void cblas_zherk(const enum CBLAS_ORDER Order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const double alpha, const void *A, const blasint lda, const double beta, void *C, const blasint ldc);
void cblas_cher2k(const enum CBLAS_ORDER Order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const void *alpha, const void *A, const blasint lda, const void *B, const blasint ldb, const float beta, void *C, const blasint ldc);
void cblas_zher2k(const enum CBLAS_ORDER Order, const enum CBLAS_UPLO Uplo, const enum CBLAS_TRANSPOSE Trans, const blasint N, const blasint K, const void *alpha, const void *A, const blasint lda, const void *B, const blasint ldb, const double beta, void *C, const blasint ldc);
void cblas_xerbla(blasint p, char *rout, char *form, ...);
void cblas_saxpby(const blasint n, const float alpha, const float *x, const blasint incx,const float beta, float *y, const blasint incy);
void cblas_daxpby(const blasint n, const double alpha, const double *x, const blasint incx,const double beta, double *y, const blasint incy);
void cblas_caxpby(const blasint n, const void *alpha, const void *x, const blasint incx,const void *beta, void *y, const blasint incy);
void cblas_zaxpby(const blasint n, const void *alpha, const void *x, const blasint incx,const void *beta, void *y, const blasint incy);
void cblas_somatcopy(const enum CBLAS_ORDER CORDER, const enum CBLAS_TRANSPOSE CTRANS, const blasint crows, const blasint ccols, const float calpha, const float *a, const blasint clda, float *b, const blasint cldb);
void cblas_domatcopy(const enum CBLAS_ORDER CORDER, const enum CBLAS_TRANSPOSE CTRANS, const blasint crows, const blasint ccols, const double calpha, const double *a, const blasint clda, double *b, const blasint cldb);
void cblas_comatcopy(const enum CBLAS_ORDER CORDER, const enum CBLAS_TRANSPOSE CTRANS, const blasint crows, const blasint ccols, const float* calpha, const float* a, const blasint clda, float*b, const blasint cldb);
void cblas_zomatcopy(const enum CBLAS_ORDER CORDER, const enum CBLAS_TRANSPOSE CTRANS, const blasint crows, const blasint ccols, const double* calpha, const double* a, const blasint clda, double *b, const blasint cldb);
void cblas_simatcopy(const enum CBLAS_ORDER CORDER, const enum CBLAS_TRANSPOSE CTRANS, const blasint crows, const blasint ccols, const float calpha, float *a, const blasint clda, const blasint cldb);
void cblas_dimatcopy(const enum CBLAS_ORDER CORDER, const enum CBLAS_TRANSPOSE CTRANS, const blasint crows, const blasint ccols, const double calpha, double *a, const blasint clda, const blasint cldb);
void cblas_cimatcopy(const enum CBLAS_ORDER CORDER, const enum CBLAS_TRANSPOSE CTRANS, const blasint crows, const blasint ccols, const float* calpha, float* a, const blasint clda, const blasint cldb);
void cblas_zimatcopy(const enum CBLAS_ORDER CORDER, const enum CBLAS_TRANSPOSE CTRANS, const blasint crows, const blasint ccols, const double* calpha, double* a, const blasint clda, const blasint cldb);
void cblas_sgeadd(const enum CBLAS_ORDER CORDER,const blasint crows, const blasint ccols, const float calpha, float *a, const blasint clda, const float cbeta, float *c, const blasint cldc);
void cblas_dgeadd(const enum CBLAS_ORDER CORDER,const blasint crows, const blasint ccols, const double calpha, double *a, const blasint clda, const double cbeta, double *c, const blasint cldc);
void cblas_cgeadd(const enum CBLAS_ORDER CORDER,const blasint crows, const blasint ccols, const float *calpha, float *a, const blasint clda, const float *cbeta, float *c, const blasint cldc);
void cblas_zgeadd(const enum CBLAS_ORDER CORDER,const blasint crows, const blasint ccols, const double *calpha, double *a, const blasint clda, const double *cbeta, double *c, const blasint cldc);
void cblas_sbstobf16(const blasint n, const float *in, const blasint incin, bfloat16 *out, const blasint incout);
void cblas_sbdtobf16(const blasint n, const double *in, const blasint incin, bfloat16 *out, const blasint incout);
void cblas_sbf16tos(const blasint n, const bfloat16 *in, const blasint incin, float *out, const blasint incout);
void cblas_dbf16tod(const blasint n, const bfloat16 *in, const blasint incin, double *out, const blasint incout);
float cblas_sbdot(const blasint n, const bfloat16 *x, const blasint incx, const bfloat16 *y, const blasint incy);
void cblas_sbgemv(const enum CBLAS_ORDER order, const enum CBLAS_TRANSPOSE trans, const blasint m, const blasint n, const float alpha, const bfloat16 *a, const blasint lda, const bfloat16 *x, const blasint incx, const float beta, float *y, const blasint incy);
void cblas_sbgemm(const enum CBLAS_ORDER Order, const enum CBLAS_TRANSPOSE TransA, const enum CBLAS_TRANSPOSE TransB, const blasint M, const blasint N, const blasint K, const float alpha, const bfloat16 *A, const blasint lda, const bfloat16 *B, const blasint ldb, const float beta, float *C, const blasint ldc);
/* END   /usr/include/x86_64-linux-gnu/cblas.h */
]]
local blas = ffi.load'openblas'
return blas
