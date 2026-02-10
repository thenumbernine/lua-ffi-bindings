local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <inttypes.h> /data/data/com.termux/files/usr/lib/clang/21/include/inttypes.h */
/* ++ BEGIN <inttypes.h> /data/data/com.termux/files/usr/bin/../../usr/include/inttypes.h */
/* +++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* +++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* +++ BEGIN <stdint.h> /data/data/com.termux/files/usr/lib/clang/21/include/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* +++ END <stdint.h> /data/data/com.termux/files/usr/lib/clang/21/include/stdint.h */
typedef struct {
 intmax_t quot;
 intmax_t rem;
} imaxdiv_t;
intmax_t imaxabs(intmax_t __i) __attribute__((__const__));
imaxdiv_t imaxdiv(intmax_t __numerator, intmax_t __denominator) __attribute__((__const__));
intmax_t strtoimax(const char*  __s, char*  *  __end_ptr, int __base);
uintmax_t strtoumax(const char*  __s, char*  *  __end_ptr, int __base);
intmax_t wcstoimax(const wchar_t*  __s, wchar_t*  *  __end_ptr, int __base);
uintmax_t wcstoumax(const wchar_t*  __s, wchar_t*  *  __end_ptr, int __base);
/* ++ END <inttypes.h> /data/data/com.termux/files/usr/bin/../../usr/include/inttypes.h */
enum { __CLANG_INTTYPES_H = 1 };
enum { _INTTYPES_H_ = 1 };
/* #define __PRI_64_prefix "ll" ### define is not number */
enum { __PRI_PTR_prefix = 1 };
enum { __PRI_FAST_prefix = 1 };
/* #define PRId8 "d" ### define is not number */
/* #define PRId16 "d" ### define is not number */
/* #define PRId32 "d" ### define is not number */
/* #define PRId64 __PRI_64_prefix"d" ### define is not number */
/* #define PRIdLEAST8 "d" ### define is not number */
/* #define PRIdLEAST16 "d" ### define is not number */
/* #define PRIdLEAST32 "d" ### define is not number */
/* #define PRIdLEAST64 __PRI_64_prefix"d" ### define is not number */
/* #define PRIdFAST8 "d" ### define is not number */
/* #define PRIdFAST16 __PRI_FAST_prefix"d" ### define is not number */
/* #define PRIdFAST32 __PRI_FAST_prefix"d" ### define is not number */
/* #define PRIdFAST64 __PRI_64_prefix"d" ### define is not number */
/* #define PRIdMAX "jd" ### define is not number */
/* #define PRIdPTR __PRI_PTR_prefix"d" ### define is not number */
/* #define PRIi8 "i" ### define is not number */
/* #define PRIi16 "i" ### define is not number */
/* #define PRIi32 "i" ### define is not number */
/* #define PRIi64 __PRI_64_prefix"i" ### define is not number */
/* #define PRIiLEAST8 "i" ### define is not number */
/* #define PRIiLEAST16 "i" ### define is not number */
/* #define PRIiLEAST32 "i" ### define is not number */
/* #define PRIiLEAST64 __PRI_64_prefix"i" ### define is not number */
/* #define PRIiFAST8 "i" ### define is not number */
/* #define PRIiFAST16 __PRI_FAST_prefix"i" ### define is not number */
/* #define PRIiFAST32 __PRI_FAST_prefix"i" ### define is not number */
/* #define PRIiFAST64 __PRI_64_prefix"i" ### define is not number */
/* #define PRIiMAX "ji" ### define is not number */
/* #define PRIiPTR __PRI_PTR_prefix"i" ### define is not number */
/* #define PRIb8 "b" ### define is not number */
/* #define PRIb16 "b" ### define is not number */
/* #define PRIb32 "b" ### define is not number */
/* #define PRIb64 __PRI_64_prefix"b" ### define is not number */
/* #define PRIbLEAST8 "b" ### define is not number */
/* #define PRIbLEAST16 "b" ### define is not number */
/* #define PRIbLEAST32 "b" ### define is not number */
/* #define PRIbLEAST64 __PRI_64_prefix"b" ### define is not number */
/* #define PRIbFAST8 "b" ### define is not number */
/* #define PRIbFAST16 __PRI_FAST_prefix"b" ### define is not number */
/* #define PRIbFAST32 __PRI_FAST_prefix"b" ### define is not number */
/* #define PRIbFAST64 __PRI_64_prefix"b" ### define is not number */
/* #define PRIbMAX "jb" ### define is not number */
/* #define PRIbPTR __PRI_PTR_prefix"b" ### define is not number */
/* #define PRIB8 "B" ### define is not number */
/* #define PRIB16 "B" ### define is not number */
/* #define PRIB32 "B" ### define is not number */
/* #define PRIB64 __PRI_64_prefix"B" ### define is not number */
/* #define PRIBLEAST8 "B" ### define is not number */
/* #define PRIBLEAST16 "B" ### define is not number */
/* #define PRIBLEAST32 "B" ### define is not number */
/* #define PRIBLEAST64 __PRI_64_prefix"B" ### define is not number */
/* #define PRIBFAST8 "B" ### define is not number */
/* #define PRIBFAST16 __PRI_FAST_prefix"B" ### define is not number */
/* #define PRIBFAST32 __PRI_FAST_prefix"B" ### define is not number */
/* #define PRIBFAST64 __PRI_64_prefix"B" ### define is not number */
/* #define PRIBMAX "jB" ### define is not number */
/* #define PRIBPTR __PRI_PTR_prefix"B" ### define is not number */
/* #define PRIo8 "o" ### define is not number */
/* #define PRIo16 "o" ### define is not number */
/* #define PRIo32 "o" ### define is not number */
/* #define PRIo64 __PRI_64_prefix"o" ### define is not number */
/* #define PRIoLEAST8 "o" ### define is not number */
/* #define PRIoLEAST16 "o" ### define is not number */
/* #define PRIoLEAST32 "o" ### define is not number */
/* #define PRIoLEAST64 __PRI_64_prefix"o" ### define is not number */
/* #define PRIoFAST8 "o" ### define is not number */
/* #define PRIoFAST16 __PRI_FAST_prefix"o" ### define is not number */
/* #define PRIoFAST32 __PRI_FAST_prefix"o" ### define is not number */
/* #define PRIoFAST64 __PRI_64_prefix"o" ### define is not number */
/* #define PRIoMAX "jo" ### define is not number */
/* #define PRIoPTR __PRI_PTR_prefix"o" ### define is not number */
/* #define PRIu8 "u" ### define is not number */
/* #define PRIu16 "u" ### define is not number */
/* #define PRIu32 "u" ### define is not number */
/* #define PRIu64 __PRI_64_prefix"u" ### define is not number */
/* #define PRIuLEAST8 "u" ### define is not number */
/* #define PRIuLEAST16 "u" ### define is not number */
/* #define PRIuLEAST32 "u" ### define is not number */
/* #define PRIuLEAST64 __PRI_64_prefix"u" ### define is not number */
/* #define PRIuFAST8 "u" ### define is not number */
/* #define PRIuFAST16 __PRI_FAST_prefix"u" ### define is not number */
/* #define PRIuFAST32 __PRI_FAST_prefix"u" ### define is not number */
/* #define PRIuFAST64 __PRI_64_prefix"u" ### define is not number */
/* #define PRIuMAX "ju" ### define is not number */
/* #define PRIuPTR __PRI_PTR_prefix"u" ### define is not number */
/* #define PRIx8 "x" ### define is not number */
/* #define PRIx16 "x" ### define is not number */
/* #define PRIx32 "x" ### define is not number */
/* #define PRIx64 __PRI_64_prefix"x" ### define is not number */
/* #define PRIxLEAST8 "x" ### define is not number */
/* #define PRIxLEAST16 "x" ### define is not number */
/* #define PRIxLEAST32 "x" ### define is not number */
/* #define PRIxLEAST64 __PRI_64_prefix"x" ### define is not number */
/* #define PRIxFAST8 "x" ### define is not number */
/* #define PRIxFAST16 __PRI_FAST_prefix"x" ### define is not number */
/* #define PRIxFAST32 __PRI_FAST_prefix"x" ### define is not number */
/* #define PRIxFAST64 __PRI_64_prefix"x" ### define is not number */
/* #define PRIxMAX "jx" ### define is not number */
/* #define PRIxPTR __PRI_PTR_prefix"x" ### define is not number */
/* #define PRIX8 "X" ### define is not number */
/* #define PRIX16 "X" ### define is not number */
/* #define PRIX32 "X" ### define is not number */
/* #define PRIX64 __PRI_64_prefix"X" ### define is not number */
/* #define PRIXLEAST8 "X" ### define is not number */
/* #define PRIXLEAST16 "X" ### define is not number */
/* #define PRIXLEAST32 "X" ### define is not number */
/* #define PRIXLEAST64 __PRI_64_prefix"X" ### define is not number */
/* #define PRIXFAST8 "X" ### define is not number */
/* #define PRIXFAST16 __PRI_FAST_prefix"X" ### define is not number */
/* #define PRIXFAST32 __PRI_FAST_prefix"X" ### define is not number */
/* #define PRIXFAST64 __PRI_64_prefix"X" ### define is not number */
/* #define PRIXMAX "jX" ### define is not number */
/* #define PRIXPTR __PRI_PTR_prefix"X" ### define is not number */
/* #define SCNd8 "hhd" ### define is not number */
/* #define SCNd16 "hd" ### define is not number */
/* #define SCNd32 "d" ### define is not number */
/* #define SCNd64 __PRI_64_prefix"d" ### define is not number */
/* #define SCNdLEAST8 "hhd" ### define is not number */
/* #define SCNdLEAST16 "hd" ### define is not number */
/* #define SCNdLEAST32 "d" ### define is not number */
/* #define SCNdLEAST64 __PRI_64_prefix"d" ### define is not number */
/* #define SCNdFAST8 "hhd" ### define is not number */
/* #define SCNdFAST16 __PRI_FAST_prefix"d" ### define is not number */
/* #define SCNdFAST32 __PRI_FAST_prefix"d" ### define is not number */
/* #define SCNdFAST64 __PRI_64_prefix"d" ### define is not number */
/* #define SCNdMAX "jd" ### define is not number */
/* #define SCNdPTR __PRI_PTR_prefix"d" ### define is not number */
/* #define SCNi8 "hhi" ### define is not number */
/* #define SCNi16 "hi" ### define is not number */
/* #define SCNi32 "i" ### define is not number */
/* #define SCNi64 __PRI_64_prefix"i" ### define is not number */
/* #define SCNiLEAST8 "hhi" ### define is not number */
/* #define SCNiLEAST16 "hi" ### define is not number */
/* #define SCNiLEAST32 "i" ### define is not number */
/* #define SCNiLEAST64 __PRI_64_prefix"i" ### define is not number */
/* #define SCNiFAST8 "hhi" ### define is not number */
/* #define SCNiFAST16 __PRI_FAST_prefix"i" ### define is not number */
/* #define SCNiFAST32 __PRI_FAST_prefix"i" ### define is not number */
/* #define SCNiFAST64 __PRI_64_prefix"i" ### define is not number */
/* #define SCNiMAX "ji" ### define is not number */
/* #define SCNiPTR __PRI_PTR_prefix"i" ### define is not number */
/* #define SCNb8 "hhb" ### define is not number */
/* #define SCNb16 "hb" ### define is not number */
/* #define SCNb32 "b" ### define is not number */
/* #define SCNb64 __PRI_64_prefix"b" ### define is not number */
/* #define SCNbLEAST8 "hhb" ### define is not number */
/* #define SCNbLEAST16 "hb" ### define is not number */
/* #define SCNbLEAST32 "b" ### define is not number */
/* #define SCNbLEAST64 __PRI_64_prefix"b" ### define is not number */
/* #define SCNbFAST8 "hhb" ### define is not number */
/* #define SCNbFAST16 __PRI_FAST_prefix"b" ### define is not number */
/* #define SCNbFAST32 __PRI_FAST_prefix"b" ### define is not number */
/* #define SCNbFAST64 __PRI_64_prefix"b" ### define is not number */
/* #define SCNbMAX "jb" ### define is not number */
/* #define SCNbPTR __PRI_PTR_prefix"b" ### define is not number */
/* #define SCNB8 "hhB" ### define is not number */
/* #define SCNB16 "hB" ### define is not number */
/* #define SCNB32 "B" ### define is not number */
/* #define SCNB64 __PRI_64_prefix"B" ### define is not number */
/* #define SCNBLEAST8 "hhB" ### define is not number */
/* #define SCNBLEAST16 "hB" ### define is not number */
/* #define SCNBLEAST32 "B" ### define is not number */
/* #define SCNBLEAST64 __PRI_64_prefix"B" ### define is not number */
/* #define SCNBFAST8 "hhB" ### define is not number */
/* #define SCNBFAST16 __PRI_FAST_prefix"B" ### define is not number */
/* #define SCNBFAST32 __PRI_FAST_prefix"B" ### define is not number */
/* #define SCNBFAST64 __PRI_64_prefix"B" ### define is not number */
/* #define SCNBMAX "jB" ### define is not number */
/* #define SCNBPTR __PRI_PTR_prefix"B" ### define is not number */
/* #define SCNo8 "hho" ### define is not number */
/* #define SCNo16 "ho" ### define is not number */
/* #define SCNo32 "o" ### define is not number */
/* #define SCNo64 __PRI_64_prefix"o" ### define is not number */
/* #define SCNoLEAST8 "hho" ### define is not number */
/* #define SCNoLEAST16 "ho" ### define is not number */
/* #define SCNoLEAST32 "o" ### define is not number */
/* #define SCNoLEAST64 __PRI_64_prefix"o" ### define is not number */
/* #define SCNoFAST8 "hho" ### define is not number */
/* #define SCNoFAST16 __PRI_FAST_prefix"o" ### define is not number */
/* #define SCNoFAST32 __PRI_FAST_prefix"o" ### define is not number */
/* #define SCNoFAST64 __PRI_64_prefix"o" ### define is not number */
/* #define SCNoMAX "jo" ### define is not number */
/* #define SCNoPTR __PRI_PTR_prefix"o" ### define is not number */
/* #define SCNu8 "hhu" ### define is not number */
/* #define SCNu16 "hu" ### define is not number */
/* #define SCNu32 "u" ### define is not number */
/* #define SCNu64 __PRI_64_prefix"u" ### define is not number */
/* #define SCNuLEAST8 "hhu" ### define is not number */
/* #define SCNuLEAST16 "hu" ### define is not number */
/* #define SCNuLEAST32 "u" ### define is not number */
/* #define SCNuLEAST64 __PRI_64_prefix"u" ### define is not number */
/* #define SCNuFAST8 "hhu" ### define is not number */
/* #define SCNuFAST16 __PRI_FAST_prefix"u" ### define is not number */
/* #define SCNuFAST32 __PRI_FAST_prefix"u" ### define is not number */
/* #define SCNuFAST64 __PRI_64_prefix"u" ### define is not number */
/* #define SCNuMAX "ju" ### define is not number */
/* #define SCNuPTR __PRI_PTR_prefix"u" ### define is not number */
/* #define SCNx8 "hhx" ### define is not number */
/* #define SCNx16 "hx" ### define is not number */
/* #define SCNx32 "x" ### define is not number */
/* #define SCNx64 __PRI_64_prefix"x" ### define is not number */
/* #define SCNxLEAST8 "hhx" ### define is not number */
/* #define SCNxLEAST16 "hx" ### define is not number */
/* #define SCNxLEAST32 "x" ### define is not number */
/* #define SCNxLEAST64 __PRI_64_prefix"x" ### define is not number */
/* #define SCNxFAST8 "hhx" ### define is not number */
/* #define SCNxFAST16 __PRI_FAST_prefix"x" ### define is not number */
/* #define SCNxFAST32 __PRI_FAST_prefix"x" ### define is not number */
/* #define SCNxFAST64 __PRI_64_prefix"x" ### define is not number */
/* #define SCNxMAX "jx" ### define is not number */
/* #define SCNxPTR __PRI_PTR_prefix"x" ### define is not number */
/* + END <inttypes.h> /data/data/com.termux/files/usr/lib/clang/21/include/inttypes.h */
]]
