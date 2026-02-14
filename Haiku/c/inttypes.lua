local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <inttypes.h> /boot/system/develop/headers/posix/inttypes.h */
/* ++ BEGIN <stdint.h> /boot/system/develop/headers/posix/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* ++ END <stdint.h> /boot/system/develop/headers/posix/stdint.h */
typedef struct {
 intmax_t quot;
 intmax_t rem;
} imaxdiv_t;
extern intmax_t imaxabs(intmax_t num);
extern imaxdiv_t imaxdiv(intmax_t numer, intmax_t denom);
extern intmax_t strtoimax(const char *string, char **_end, int base);
extern uintmax_t strtoumax(const char *string, char **_end, int base);
enum { _INTTYPES_H_ = 1 };
/* #define PRId8 "d" ### define is not number */
/* #define PRIdLEAST8 "d" ### define is not number */
/* #define PRIdFAST8 "d" ### define is not number */
/* #define PRIi8 "i" ### define is not number */
/* #define PRIiLEAST8 "i" ### define is not number */
/* #define PRIiFAST8 "i" ### define is not number */
/* #define PRId16 "d" ### define is not number */
/* #define PRIdLEAST16 "d" ### define is not number */
/* #define PRIdFAST16 "d" ### define is not number */
/* #define PRIi16 "i" ### define is not number */
/* #define PRIiLEAST16 "i" ### define is not number */
/* #define PRIiFAST16 "i" ### define is not number */
/* #define PRId32 __HAIKU_STD_PRI_PREFIX_32 "d" ### define is not number */
/* #define PRIdLEAST32 __HAIKU_STD_PRI_PREFIX_32 "d" ### define is not number */
/* #define PRIdFAST32 __HAIKU_STD_PRI_PREFIX_32 "d" ### define is not number */
/* #define PRIi32 __HAIKU_STD_PRI_PREFIX_32 "i" ### define is not number */
/* #define PRIiLEAST32 __HAIKU_STD_PRI_PREFIX_32 "i" ### define is not number */
/* #define PRIiFAST32 __HAIKU_STD_PRI_PREFIX_32 "i" ### define is not number */
/* #define PRId64 __HAIKU_STD_PRI_PREFIX_64 "d" ### define is not number */
/* #define PRIdLEAST64 __HAIKU_STD_PRI_PREFIX_64 "d" ### define is not number */
/* #define PRIdFAST64 __HAIKU_STD_PRI_PREFIX_64 "d" ### define is not number */
/* #define PRIi64 __HAIKU_STD_PRI_PREFIX_64 "i" ### define is not number */
/* #define PRIiLEAST64 __HAIKU_STD_PRI_PREFIX_64 "i" ### define is not number */
/* #define PRIiFAST64 __HAIKU_STD_PRI_PREFIX_64 "i" ### define is not number */
/* #define PRIdMAX __HAIKU_STD_PRI_PREFIX_64 "d" ### define is not number */
/* #define PRIdPTR __HAIKU_PRI_PREFIX_ADDR "d" ### define is not number */
/* #define PRIiMAX __HAIKU_STD_PRI_PREFIX_64 "i" ### define is not number */
/* #define PRIiPTR __HAIKU_PRI_PREFIX_ADDR "i" ### define is not number */
/* #define PRIu8 "u" ### define is not number */
/* #define PRIuLEAST8 "u" ### define is not number */
/* #define PRIuFAST8 "u" ### define is not number */
/* #define PRIo8 "o" ### define is not number */
/* #define PRIoLEAST8 "o" ### define is not number */
/* #define PRIoFAST8 "o" ### define is not number */
/* #define PRIx8 "x" ### define is not number */
/* #define PRIxLEAST8 "x" ### define is not number */
/* #define PRIxFAST8 "x" ### define is not number */
/* #define PRIX8 "X" ### define is not number */
/* #define PRIXLEAST8 "X" ### define is not number */
/* #define PRIXFAST8 "X" ### define is not number */
/* #define PRIu16 "u" ### define is not number */
/* #define PRIuLEAST16 "u" ### define is not number */
/* #define PRIuFAST16 "u" ### define is not number */
/* #define PRIo16 "o" ### define is not number */
/* #define PRIoLEAST16 "o" ### define is not number */
/* #define PRIoFAST16 "o" ### define is not number */
/* #define PRIx16 "x" ### define is not number */
/* #define PRIxLEAST16 "x" ### define is not number */
/* #define PRIxFAST16 "x" ### define is not number */
/* #define PRIX16 "X" ### define is not number */
/* #define PRIXLEAST16 "X" ### define is not number */
/* #define PRIXFAST16 "X" ### define is not number */
/* #define PRIu32 __HAIKU_STD_PRI_PREFIX_32 "u" ### define is not number */
/* #define PRIuLEAST32 __HAIKU_STD_PRI_PREFIX_32 "u" ### define is not number */
/* #define PRIuFAST32 __HAIKU_STD_PRI_PREFIX_32 "u" ### define is not number */
/* #define PRIo32 __HAIKU_STD_PRI_PREFIX_32 "o" ### define is not number */
/* #define PRIoLEAST32 __HAIKU_STD_PRI_PREFIX_32 "o" ### define is not number */
/* #define PRIoFAST32 __HAIKU_STD_PRI_PREFIX_32 "o" ### define is not number */
/* #define PRIx32 __HAIKU_STD_PRI_PREFIX_32 "x" ### define is not number */
/* #define PRIxLEAST32 __HAIKU_STD_PRI_PREFIX_32 "x" ### define is not number */
/* #define PRIxFAST32 __HAIKU_STD_PRI_PREFIX_32 "x" ### define is not number */
/* #define PRIX32 __HAIKU_STD_PRI_PREFIX_32 "X" ### define is not number */
/* #define PRIXLEAST32 __HAIKU_STD_PRI_PREFIX_32 "X" ### define is not number */
/* #define PRIXFAST32 __HAIKU_STD_PRI_PREFIX_32 "X" ### define is not number */
/* #define PRIu64 __HAIKU_STD_PRI_PREFIX_64 "u" ### define is not number */
/* #define PRIuLEAST64 __HAIKU_STD_PRI_PREFIX_64 "u" ### define is not number */
/* #define PRIuFAST64 __HAIKU_STD_PRI_PREFIX_64 "u" ### define is not number */
/* #define PRIo64 __HAIKU_STD_PRI_PREFIX_64 "o" ### define is not number */
/* #define PRIoLEAST64 __HAIKU_STD_PRI_PREFIX_64 "o" ### define is not number */
/* #define PRIoFAST64 __HAIKU_STD_PRI_PREFIX_64 "o" ### define is not number */
/* #define PRIx64 __HAIKU_STD_PRI_PREFIX_64 "x" ### define is not number */
/* #define PRIxLEAST64 __HAIKU_STD_PRI_PREFIX_64 "x" ### define is not number */
/* #define PRIxFAST64 __HAIKU_STD_PRI_PREFIX_64 "x" ### define is not number */
/* #define PRIX64 __HAIKU_STD_PRI_PREFIX_64 "X" ### define is not number */
/* #define PRIXLEAST64 __HAIKU_STD_PRI_PREFIX_64 "X" ### define is not number */
/* #define PRIXFAST64 __HAIKU_STD_PRI_PREFIX_64 "X" ### define is not number */
/* #define PRIuMAX __HAIKU_STD_PRI_PREFIX_64 "u" ### define is not number */
/* #define PRIuPTR __HAIKU_PRI_PREFIX_ADDR "u" ### define is not number */
/* #define PRIoMAX __HAIKU_STD_PRI_PREFIX_64 "o" ### define is not number */
/* #define PRIoPTR __HAIKU_PRI_PREFIX_ADDR "o" ### define is not number */
/* #define PRIxMAX __HAIKU_STD_PRI_PREFIX_64 "x" ### define is not number */
/* #define PRIxPTR __HAIKU_PRI_PREFIX_ADDR "x" ### define is not number */
/* #define PRIXMAX __HAIKU_STD_PRI_PREFIX_64 "X" ### define is not number */
/* #define PRIXPTR __HAIKU_PRI_PREFIX_ADDR "X" ### define is not number */
/* #define SCNd8 "hhd" ### define is not number */
/* #define SCNdLEAST8 "hhd" ### define is not number */
/* #define SCNdFAST8 "d" ### define is not number */
/* #define SCNi8 "hhi" ### define is not number */
/* #define SCNiLEAST8 "hhi" ### define is not number */
/* #define SCNiFAST8 "i" ### define is not number */
/* #define SCNd16 "hd" ### define is not number */
/* #define SCNdLEAST16 "hd" ### define is not number */
/* #define SCNdFAST16 "d" ### define is not number */
/* #define SCNi16 "hi" ### define is not number */
/* #define SCNiLEAST16 "hi" ### define is not number */
/* #define SCNiFAST16 "i" ### define is not number */
/* #define SCNd32 __HAIKU_STD_PRI_PREFIX_32 "d" ### define is not number */
/* #define SCNdLEAST32 __HAIKU_STD_PRI_PREFIX_32 "d" ### define is not number */
/* #define SCNdFAST32 __HAIKU_STD_PRI_PREFIX_32 "d" ### define is not number */
/* #define SCNi32 __HAIKU_STD_PRI_PREFIX_32 "i" ### define is not number */
/* #define SCNiLEAST32 __HAIKU_STD_PRI_PREFIX_32 "i" ### define is not number */
/* #define SCNiFAST32 __HAIKU_STD_PRI_PREFIX_32 "i" ### define is not number */
/* #define SCNd64 __HAIKU_STD_PRI_PREFIX_64 "d" ### define is not number */
/* #define SCNdLEAST64 __HAIKU_STD_PRI_PREFIX_64 "d" ### define is not number */
/* #define SCNdFAST64 __HAIKU_STD_PRI_PREFIX_64 "d" ### define is not number */
/* #define SCNi64 __HAIKU_STD_PRI_PREFIX_64 "i" ### define is not number */
/* #define SCNiLEAST64 __HAIKU_STD_PRI_PREFIX_64 "i" ### define is not number */
/* #define SCNiFAST64 __HAIKU_STD_PRI_PREFIX_64 "i" ### define is not number */
/* #define SCNdMAX __HAIKU_STD_PRI_PREFIX_64 "d" ### define is not number */
/* #define SCNdPTR __HAIKU_PRI_PREFIX_ADDR "d" ### define is not number */
/* #define SCNiMAX __HAIKU_STD_PRI_PREFIX_64 "i" ### define is not number */
/* #define SCNiPTR __HAIKU_PRI_PREFIX_ADDR "i" ### define is not number */
/* #define SCNu8 "hhu" ### define is not number */
/* #define SCNuLEAST8 "hhu" ### define is not number */
/* #define SCNuFAST8 "u" ### define is not number */
/* #define SCNo8 "hho" ### define is not number */
/* #define SCNoLEAST8 "hho" ### define is not number */
/* #define SCNoFAST8 "o" ### define is not number */
/* #define SCNx8 "hhx" ### define is not number */
/* #define SCNxLEAST8 "hhx" ### define is not number */
/* #define SCNxFAST8 "x" ### define is not number */
/* #define SCNu16 "hu" ### define is not number */
/* #define SCNuLEAST16 "hu" ### define is not number */
/* #define SCNuFAST16 "u" ### define is not number */
/* #define SCNo16 "ho" ### define is not number */
/* #define SCNoLEAST16 "ho" ### define is not number */
/* #define SCNoFAST16 "o" ### define is not number */
/* #define SCNx16 "hx" ### define is not number */
/* #define SCNxLEAST16 "hx" ### define is not number */
/* #define SCNxFAST16 "x" ### define is not number */
/* #define SCNu32 __HAIKU_STD_PRI_PREFIX_32 "u" ### define is not number */
/* #define SCNuLEAST32 __HAIKU_STD_PRI_PREFIX_32 "u" ### define is not number */
/* #define SCNuFAST32 __HAIKU_STD_PRI_PREFIX_32 "u" ### define is not number */
/* #define SCNo32 __HAIKU_STD_PRI_PREFIX_32 "o" ### define is not number */
/* #define SCNoLEAST32 __HAIKU_STD_PRI_PREFIX_32 "o" ### define is not number */
/* #define SCNoFAST32 __HAIKU_STD_PRI_PREFIX_32 "o" ### define is not number */
/* #define SCNx32 __HAIKU_STD_PRI_PREFIX_32 "x" ### define is not number */
/* #define SCNxLEAST32 __HAIKU_STD_PRI_PREFIX_32 "x" ### define is not number */
/* #define SCNxFAST32 __HAIKU_STD_PRI_PREFIX_32 "x" ### define is not number */
/* #define SCNu64 __HAIKU_STD_PRI_PREFIX_64 "u" ### define is not number */
/* #define SCNuLEAST64 __HAIKU_STD_PRI_PREFIX_64 "u" ### define is not number */
/* #define SCNuFAST64 __HAIKU_STD_PRI_PREFIX_64 "u" ### define is not number */
/* #define SCNo64 __HAIKU_STD_PRI_PREFIX_64 "o" ### define is not number */
/* #define SCNoLEAST64 __HAIKU_STD_PRI_PREFIX_64 "o" ### define is not number */
/* #define SCNoFAST64 __HAIKU_STD_PRI_PREFIX_64 "o" ### define is not number */
/* #define SCNx64 __HAIKU_STD_PRI_PREFIX_64 "x" ### define is not number */
/* #define SCNxLEAST64 __HAIKU_STD_PRI_PREFIX_64 "x" ### define is not number */
/* #define SCNxFAST64 __HAIKU_STD_PRI_PREFIX_64 "x" ### define is not number */
/* #define SCNuMAX __HAIKU_STD_PRI_PREFIX_64 "u" ### define is not number */
/* #define SCNuPTR __HAIKU_PRI_PREFIX_ADDR "u" ### define is not number */
/* #define SCNoMAX __HAIKU_STD_PRI_PREFIX_64 "o" ### define is not number */
/* #define SCNoPTR __HAIKU_PRI_PREFIX_ADDR "o" ### define is not number */
/* #define SCNxMAX __HAIKU_STD_PRI_PREFIX_64 "x" ### define is not number */
/* #define SCNxPTR __HAIKU_PRI_PREFIX_ADDR "x" ### define is not number */
/* + END <inttypes.h> /boot/system/develop/headers/posix/inttypes.h */
]]
