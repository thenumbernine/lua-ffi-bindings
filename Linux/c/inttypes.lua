local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <inttypes.h> /usr/include/inttypes.h */
/* ++ BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /usr/include/features.h */
/* ++ BEGIN <stdint.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* ++ END <stdint.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stdint.h */
typedef int __gwchar_t;
typedef struct
  {
    long int quot;
    long int rem;
  } imaxdiv_t;
extern intmax_t imaxabs (intmax_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern imaxdiv_t imaxdiv (intmax_t __numer, intmax_t __denom)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern intmax_t strtoimax (const char *__restrict __nptr,
      char **__restrict __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__));
extern uintmax_t strtoumax (const char *__restrict __nptr,
       char ** __restrict __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__));
extern intmax_t wcstoimax (const __gwchar_t *__restrict __nptr,
      __gwchar_t **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__));
extern uintmax_t wcstoumax (const __gwchar_t *__restrict __nptr,
       __gwchar_t ** __restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__));
/* #define __PRI64_PREFIX "l" ### define is not number */
/* #define __PRIPTR_PREFIX "l" ### define is not number */
/* #define PRId8 "d" ### define is not number */
/* #define PRId16 "d" ### define is not number */
/* #define PRId32 "d" ### define is not number */
/* #define PRId64 __PRI64_PREFIX "d" ### define is not number */
/* #define PRIdLEAST8 "d" ### define is not number */
/* #define PRIdLEAST16 "d" ### define is not number */
/* #define PRIdLEAST32 "d" ### define is not number */
/* #define PRIdLEAST64 __PRI64_PREFIX "d" ### define is not number */
/* #define PRIdFAST8 "d" ### define is not number */
/* #define PRIdFAST16 __PRIPTR_PREFIX "d" ### define is not number */
/* #define PRIdFAST32 __PRIPTR_PREFIX "d" ### define is not number */
/* #define PRIdFAST64 __PRI64_PREFIX "d" ### define is not number */
/* #define PRIi8 "i" ### define is not number */
/* #define PRIi16 "i" ### define is not number */
/* #define PRIi32 "i" ### define is not number */
/* #define PRIi64 __PRI64_PREFIX "i" ### define is not number */
/* #define PRIiLEAST8 "i" ### define is not number */
/* #define PRIiLEAST16 "i" ### define is not number */
/* #define PRIiLEAST32 "i" ### define is not number */
/* #define PRIiLEAST64 __PRI64_PREFIX "i" ### define is not number */
/* #define PRIiFAST8 "i" ### define is not number */
/* #define PRIiFAST16 __PRIPTR_PREFIX "i" ### define is not number */
/* #define PRIiFAST32 __PRIPTR_PREFIX "i" ### define is not number */
/* #define PRIiFAST64 __PRI64_PREFIX "i" ### define is not number */
/* #define PRIo8 "o" ### define is not number */
/* #define PRIo16 "o" ### define is not number */
/* #define PRIo32 "o" ### define is not number */
/* #define PRIo64 __PRI64_PREFIX "o" ### define is not number */
/* #define PRIoLEAST8 "o" ### define is not number */
/* #define PRIoLEAST16 "o" ### define is not number */
/* #define PRIoLEAST32 "o" ### define is not number */
/* #define PRIoLEAST64 __PRI64_PREFIX "o" ### define is not number */
/* #define PRIoFAST8 "o" ### define is not number */
/* #define PRIoFAST16 __PRIPTR_PREFIX "o" ### define is not number */
/* #define PRIoFAST32 __PRIPTR_PREFIX "o" ### define is not number */
/* #define PRIoFAST64 __PRI64_PREFIX "o" ### define is not number */
/* #define PRIu8 "u" ### define is not number */
/* #define PRIu16 "u" ### define is not number */
/* #define PRIu32 "u" ### define is not number */
/* #define PRIu64 __PRI64_PREFIX "u" ### define is not number */
/* #define PRIuLEAST8 "u" ### define is not number */
/* #define PRIuLEAST16 "u" ### define is not number */
/* #define PRIuLEAST32 "u" ### define is not number */
/* #define PRIuLEAST64 __PRI64_PREFIX "u" ### define is not number */
/* #define PRIuFAST8 "u" ### define is not number */
/* #define PRIuFAST16 __PRIPTR_PREFIX "u" ### define is not number */
/* #define PRIuFAST32 __PRIPTR_PREFIX "u" ### define is not number */
/* #define PRIuFAST64 __PRI64_PREFIX "u" ### define is not number */
/* #define PRIx8 "x" ### define is not number */
/* #define PRIx16 "x" ### define is not number */
/* #define PRIx32 "x" ### define is not number */
/* #define PRIx64 __PRI64_PREFIX "x" ### define is not number */
/* #define PRIxLEAST8 "x" ### define is not number */
/* #define PRIxLEAST16 "x" ### define is not number */
/* #define PRIxLEAST32 "x" ### define is not number */
/* #define PRIxLEAST64 __PRI64_PREFIX "x" ### define is not number */
/* #define PRIxFAST8 "x" ### define is not number */
/* #define PRIxFAST16 __PRIPTR_PREFIX "x" ### define is not number */
/* #define PRIxFAST32 __PRIPTR_PREFIX "x" ### define is not number */
/* #define PRIxFAST64 __PRI64_PREFIX "x" ### define is not number */
/* #define PRIX8 "X" ### define is not number */
/* #define PRIX16 "X" ### define is not number */
/* #define PRIX32 "X" ### define is not number */
/* #define PRIX64 __PRI64_PREFIX "X" ### define is not number */
/* #define PRIXLEAST8 "X" ### define is not number */
/* #define PRIXLEAST16 "X" ### define is not number */
/* #define PRIXLEAST32 "X" ### define is not number */
/* #define PRIXLEAST64 __PRI64_PREFIX "X" ### define is not number */
/* #define PRIXFAST8 "X" ### define is not number */
/* #define PRIXFAST16 __PRIPTR_PREFIX "X" ### define is not number */
/* #define PRIXFAST32 __PRIPTR_PREFIX "X" ### define is not number */
/* #define PRIXFAST64 __PRI64_PREFIX "X" ### define is not number */
/* #define PRIdMAX __PRI64_PREFIX "d" ### define is not number */
/* #define PRIiMAX __PRI64_PREFIX "i" ### define is not number */
/* #define PRIoMAX __PRI64_PREFIX "o" ### define is not number */
/* #define PRIuMAX __PRI64_PREFIX "u" ### define is not number */
/* #define PRIxMAX __PRI64_PREFIX "x" ### define is not number */
/* #define PRIXMAX __PRI64_PREFIX "X" ### define is not number */
/* #define PRIdPTR __PRIPTR_PREFIX "d" ### define is not number */
/* #define PRIiPTR __PRIPTR_PREFIX "i" ### define is not number */
/* #define PRIoPTR __PRIPTR_PREFIX "o" ### define is not number */
/* #define PRIuPTR __PRIPTR_PREFIX "u" ### define is not number */
/* #define PRIxPTR __PRIPTR_PREFIX "x" ### define is not number */
/* #define PRIXPTR __PRIPTR_PREFIX "X" ### define is not number */
/* #define SCNd8 "hhd" ### define is not number */
/* #define SCNd16 "hd" ### define is not number */
/* #define SCNd32 "d" ### define is not number */
/* #define SCNd64 __PRI64_PREFIX "d" ### define is not number */
/* #define SCNdLEAST8 "hhd" ### define is not number */
/* #define SCNdLEAST16 "hd" ### define is not number */
/* #define SCNdLEAST32 "d" ### define is not number */
/* #define SCNdLEAST64 __PRI64_PREFIX "d" ### define is not number */
/* #define SCNdFAST8 "hhd" ### define is not number */
/* #define SCNdFAST16 __PRIPTR_PREFIX "d" ### define is not number */
/* #define SCNdFAST32 __PRIPTR_PREFIX "d" ### define is not number */
/* #define SCNdFAST64 __PRI64_PREFIX "d" ### define is not number */
/* #define SCNi8 "hhi" ### define is not number */
/* #define SCNi16 "hi" ### define is not number */
/* #define SCNi32 "i" ### define is not number */
/* #define SCNi64 __PRI64_PREFIX "i" ### define is not number */
/* #define SCNiLEAST8 "hhi" ### define is not number */
/* #define SCNiLEAST16 "hi" ### define is not number */
/* #define SCNiLEAST32 "i" ### define is not number */
/* #define SCNiLEAST64 __PRI64_PREFIX "i" ### define is not number */
/* #define SCNiFAST8 "hhi" ### define is not number */
/* #define SCNiFAST16 __PRIPTR_PREFIX "i" ### define is not number */
/* #define SCNiFAST32 __PRIPTR_PREFIX "i" ### define is not number */
/* #define SCNiFAST64 __PRI64_PREFIX "i" ### define is not number */
/* #define SCNu8 "hhu" ### define is not number */
/* #define SCNu16 "hu" ### define is not number */
/* #define SCNu32 "u" ### define is not number */
/* #define SCNu64 __PRI64_PREFIX "u" ### define is not number */
/* #define SCNuLEAST8 "hhu" ### define is not number */
/* #define SCNuLEAST16 "hu" ### define is not number */
/* #define SCNuLEAST32 "u" ### define is not number */
/* #define SCNuLEAST64 __PRI64_PREFIX "u" ### define is not number */
/* #define SCNuFAST8 "hhu" ### define is not number */
/* #define SCNuFAST16 __PRIPTR_PREFIX "u" ### define is not number */
/* #define SCNuFAST32 __PRIPTR_PREFIX "u" ### define is not number */
/* #define SCNuFAST64 __PRI64_PREFIX "u" ### define is not number */
/* #define SCNo8 "hho" ### define is not number */
/* #define SCNo16 "ho" ### define is not number */
/* #define SCNo32 "o" ### define is not number */
/* #define SCNo64 __PRI64_PREFIX "o" ### define is not number */
/* #define SCNoLEAST8 "hho" ### define is not number */
/* #define SCNoLEAST16 "ho" ### define is not number */
/* #define SCNoLEAST32 "o" ### define is not number */
/* #define SCNoLEAST64 __PRI64_PREFIX "o" ### define is not number */
/* #define SCNoFAST8 "hho" ### define is not number */
/* #define SCNoFAST16 __PRIPTR_PREFIX "o" ### define is not number */
/* #define SCNoFAST32 __PRIPTR_PREFIX "o" ### define is not number */
/* #define SCNoFAST64 __PRI64_PREFIX "o" ### define is not number */
/* #define SCNx8 "hhx" ### define is not number */
/* #define SCNx16 "hx" ### define is not number */
/* #define SCNx32 "x" ### define is not number */
/* #define SCNx64 __PRI64_PREFIX "x" ### define is not number */
/* #define SCNxLEAST8 "hhx" ### define is not number */
/* #define SCNxLEAST16 "hx" ### define is not number */
/* #define SCNxLEAST32 "x" ### define is not number */
/* #define SCNxLEAST64 __PRI64_PREFIX "x" ### define is not number */
/* #define SCNxFAST8 "hhx" ### define is not number */
/* #define SCNxFAST16 __PRIPTR_PREFIX "x" ### define is not number */
/* #define SCNxFAST32 __PRIPTR_PREFIX "x" ### define is not number */
/* #define SCNxFAST64 __PRI64_PREFIX "x" ### define is not number */
/* #define SCNdMAX __PRI64_PREFIX "d" ### define is not number */
/* #define SCNiMAX __PRI64_PREFIX "i" ### define is not number */
/* #define SCNoMAX __PRI64_PREFIX "o" ### define is not number */
/* #define SCNuMAX __PRI64_PREFIX "u" ### define is not number */
/* #define SCNxMAX __PRI64_PREFIX "x" ### define is not number */
/* #define SCNdPTR __PRIPTR_PREFIX "d" ### define is not number */
/* #define SCNiPTR __PRIPTR_PREFIX "i" ### define is not number */
/* #define SCNoPTR __PRIPTR_PREFIX "o" ### define is not number */
/* #define SCNuPTR __PRIPTR_PREFIX "u" ### define is not number */
/* #define SCNxPTR __PRIPTR_PREFIX "x" ### define is not number */
/* + END <inttypes.h> /usr/include/inttypes.h */
]]
