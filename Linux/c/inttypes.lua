local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/inttypes.h */
/* ++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END   /usr/include/features.h */
/* ++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* ++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stdint.h */
typedef int __gwchar_t;
/* # define PRId8		"d" ### string, not number "\"d\"" */
/* # define PRId16		"d" ### string, not number "\"d\"" */
/* # define PRId32		"d" ### string, not number "\"d\"" */
/* # define PRId64		__PRI64_PREFIX "d" ### string, not number "__PRI64_PREFIX \"d\"" */
/* # define PRIdLEAST8	"d" ### string, not number "\"d\"" */
/* # define PRIdLEAST16	"d" ### string, not number "\"d\"" */
/* # define PRIdLEAST32	"d" ### string, not number "\"d\"" */
/* # define PRIdLEAST64	__PRI64_PREFIX "d" ### string, not number "__PRI64_PREFIX \"d\"" */
/* # define PRIdFAST8	"d" ### string, not number "\"d\"" */
/* # define PRIdFAST16	__PRIPTR_PREFIX "d" ### string, not number "__PRIPTR_PREFIX \"d\"" */
/* # define PRIdFAST32	__PRIPTR_PREFIX "d" ### string, not number "__PRIPTR_PREFIX \"d\"" */
/* # define PRIdFAST64	__PRI64_PREFIX "d" ### string, not number "__PRI64_PREFIX \"d\"" */
/* # define PRIi8		"i" ### string, not number "\"i\"" */
/* # define PRIi16		"i" ### string, not number "\"i\"" */
/* # define PRIi32		"i" ### string, not number "\"i\"" */
/* # define PRIi64		__PRI64_PREFIX "i" ### string, not number "__PRI64_PREFIX \"i\"" */
/* # define PRIiLEAST8	"i" ### string, not number "\"i\"" */
/* # define PRIiLEAST16	"i" ### string, not number "\"i\"" */
/* # define PRIiLEAST32	"i" ### string, not number "\"i\"" */
/* # define PRIiLEAST64	__PRI64_PREFIX "i" ### string, not number "__PRI64_PREFIX \"i\"" */
/* # define PRIiFAST8	"i" ### string, not number "\"i\"" */
/* # define PRIiFAST16	__PRIPTR_PREFIX "i" ### string, not number "__PRIPTR_PREFIX \"i\"" */
/* # define PRIiFAST32	__PRIPTR_PREFIX "i" ### string, not number "__PRIPTR_PREFIX \"i\"" */
/* # define PRIiFAST64	__PRI64_PREFIX "i" ### string, not number "__PRI64_PREFIX \"i\"" */
/* # define PRIo8		"o" ### string, not number "\"o\"" */
/* # define PRIo16		"o" ### string, not number "\"o\"" */
/* # define PRIo32		"o" ### string, not number "\"o\"" */
/* # define PRIo64		__PRI64_PREFIX "o" ### string, not number "__PRI64_PREFIX \"o\"" */
/* # define PRIoLEAST8	"o" ### string, not number "\"o\"" */
/* # define PRIoLEAST16	"o" ### string, not number "\"o\"" */
/* # define PRIoLEAST32	"o" ### string, not number "\"o\"" */
/* # define PRIoLEAST64	__PRI64_PREFIX "o" ### string, not number "__PRI64_PREFIX \"o\"" */
/* # define PRIoFAST8	"o" ### string, not number "\"o\"" */
/* # define PRIoFAST16	__PRIPTR_PREFIX "o" ### string, not number "__PRIPTR_PREFIX \"o\"" */
/* # define PRIoFAST32	__PRIPTR_PREFIX "o" ### string, not number "__PRIPTR_PREFIX \"o\"" */
/* # define PRIoFAST64	__PRI64_PREFIX "o" ### string, not number "__PRI64_PREFIX \"o\"" */
/* # define PRIu8		"u" ### string, not number "\"u\"" */
/* # define PRIu16		"u" ### string, not number "\"u\"" */
/* # define PRIu32		"u" ### string, not number "\"u\"" */
/* # define PRIu64		__PRI64_PREFIX "u" ### string, not number "__PRI64_PREFIX \"u\"" */
/* # define PRIuLEAST8	"u" ### string, not number "\"u\"" */
/* # define PRIuLEAST16	"u" ### string, not number "\"u\"" */
/* # define PRIuLEAST32	"u" ### string, not number "\"u\"" */
/* # define PRIuLEAST64	__PRI64_PREFIX "u" ### string, not number "__PRI64_PREFIX \"u\"" */
/* # define PRIuFAST8	"u" ### string, not number "\"u\"" */
/* # define PRIuFAST16	__PRIPTR_PREFIX "u" ### string, not number "__PRIPTR_PREFIX \"u\"" */
/* # define PRIuFAST32	__PRIPTR_PREFIX "u" ### string, not number "__PRIPTR_PREFIX \"u\"" */
/* # define PRIuFAST64	__PRI64_PREFIX "u" ### string, not number "__PRI64_PREFIX \"u\"" */
/* # define PRIx8		"x" ### string, not number "\"x\"" */
/* # define PRIx16		"x" ### string, not number "\"x\"" */
/* # define PRIx32		"x" ### string, not number "\"x\"" */
/* # define PRIx64		__PRI64_PREFIX "x" ### string, not number "__PRI64_PREFIX \"x\"" */
/* # define PRIxLEAST8	"x" ### string, not number "\"x\"" */
/* # define PRIxLEAST16	"x" ### string, not number "\"x\"" */
/* # define PRIxLEAST32	"x" ### string, not number "\"x\"" */
/* # define PRIxLEAST64	__PRI64_PREFIX "x" ### string, not number "__PRI64_PREFIX \"x\"" */
/* # define PRIxFAST8	"x" ### string, not number "\"x\"" */
/* # define PRIxFAST16	__PRIPTR_PREFIX "x" ### string, not number "__PRIPTR_PREFIX \"x\"" */
/* # define PRIxFAST32	__PRIPTR_PREFIX "x" ### string, not number "__PRIPTR_PREFIX \"x\"" */
/* # define PRIxFAST64	__PRI64_PREFIX "x" ### string, not number "__PRI64_PREFIX \"x\"" */
/* # define PRIX8		"X" ### string, not number "\"X\"" */
/* # define PRIX16		"X" ### string, not number "\"X\"" */
/* # define PRIX32		"X" ### string, not number "\"X\"" */
/* # define PRIX64		__PRI64_PREFIX "X" ### string, not number "__PRI64_PREFIX \"X\"" */
/* # define PRIXLEAST8	"X" ### string, not number "\"X\"" */
/* # define PRIXLEAST16	"X" ### string, not number "\"X\"" */
/* # define PRIXLEAST32	"X" ### string, not number "\"X\"" */
/* # define PRIXLEAST64	__PRI64_PREFIX "X" ### string, not number "__PRI64_PREFIX \"X\"" */
/* # define PRIXFAST8	"X" ### string, not number "\"X\"" */
/* # define PRIXFAST16	__PRIPTR_PREFIX "X" ### string, not number "__PRIPTR_PREFIX \"X\"" */
/* # define PRIXFAST32	__PRIPTR_PREFIX "X" ### string, not number "__PRIPTR_PREFIX \"X\"" */
/* # define PRIXFAST64	__PRI64_PREFIX "X" ### string, not number "__PRI64_PREFIX \"X\"" */
/* # define PRIdMAX	__PRI64_PREFIX "d" ### string, not number "__PRI64_PREFIX \"d\"" */
/* # define PRIiMAX	__PRI64_PREFIX "i" ### string, not number "__PRI64_PREFIX \"i\"" */
/* # define PRIoMAX	__PRI64_PREFIX "o" ### string, not number "__PRI64_PREFIX \"o\"" */
/* # define PRIuMAX	__PRI64_PREFIX "u" ### string, not number "__PRI64_PREFIX \"u\"" */
/* # define PRIxMAX	__PRI64_PREFIX "x" ### string, not number "__PRI64_PREFIX \"x\"" */
/* # define PRIXMAX	__PRI64_PREFIX "X" ### string, not number "__PRI64_PREFIX \"X\"" */
/* # define PRIdPTR	__PRIPTR_PREFIX "d" ### string, not number "__PRIPTR_PREFIX \"d\"" */
/* # define PRIiPTR	__PRIPTR_PREFIX "i" ### string, not number "__PRIPTR_PREFIX \"i\"" */
/* # define PRIoPTR	__PRIPTR_PREFIX "o" ### string, not number "__PRIPTR_PREFIX \"o\"" */
/* # define PRIuPTR	__PRIPTR_PREFIX "u" ### string, not number "__PRIPTR_PREFIX \"u\"" */
/* # define PRIxPTR	__PRIPTR_PREFIX "x" ### string, not number "__PRIPTR_PREFIX \"x\"" */
/* # define PRIXPTR	__PRIPTR_PREFIX "X" ### string, not number "__PRIPTR_PREFIX \"X\"" */
/* # define SCNd8		"hhd" ### string, not number "\"hhd\"" */
/* # define SCNd16		"hd" ### string, not number "\"hd\"" */
/* # define SCNd32		"d" ### string, not number "\"d\"" */
/* # define SCNd64		__PRI64_PREFIX "d" ### string, not number "__PRI64_PREFIX \"d\"" */
/* # define SCNdLEAST8	"hhd" ### string, not number "\"hhd\"" */
/* # define SCNdLEAST16	"hd" ### string, not number "\"hd\"" */
/* # define SCNdLEAST32	"d" ### string, not number "\"d\"" */
/* # define SCNdLEAST64	__PRI64_PREFIX "d" ### string, not number "__PRI64_PREFIX \"d\"" */
/* # define SCNdFAST8	"hhd" ### string, not number "\"hhd\"" */
/* # define SCNdFAST16	__PRIPTR_PREFIX "d" ### string, not number "__PRIPTR_PREFIX \"d\"" */
/* # define SCNdFAST32	__PRIPTR_PREFIX "d" ### string, not number "__PRIPTR_PREFIX \"d\"" */
/* # define SCNdFAST64	__PRI64_PREFIX "d" ### string, not number "__PRI64_PREFIX \"d\"" */
/* # define SCNi8		"hhi" ### string, not number "\"hhi\"" */
/* # define SCNi16		"hi" ### string, not number "\"hi\"" */
/* # define SCNi32		"i" ### string, not number "\"i\"" */
/* # define SCNi64		__PRI64_PREFIX "i" ### string, not number "__PRI64_PREFIX \"i\"" */
/* # define SCNiLEAST8	"hhi" ### string, not number "\"hhi\"" */
/* # define SCNiLEAST16	"hi" ### string, not number "\"hi\"" */
/* # define SCNiLEAST32	"i" ### string, not number "\"i\"" */
/* # define SCNiLEAST64	__PRI64_PREFIX "i" ### string, not number "__PRI64_PREFIX \"i\"" */
/* # define SCNiFAST8	"hhi" ### string, not number "\"hhi\"" */
/* # define SCNiFAST16	__PRIPTR_PREFIX "i" ### string, not number "__PRIPTR_PREFIX \"i\"" */
/* # define SCNiFAST32	__PRIPTR_PREFIX "i" ### string, not number "__PRIPTR_PREFIX \"i\"" */
/* # define SCNiFAST64	__PRI64_PREFIX "i" ### string, not number "__PRI64_PREFIX \"i\"" */
/* # define SCNu8		"hhu" ### string, not number "\"hhu\"" */
/* # define SCNu16		"hu" ### string, not number "\"hu\"" */
/* # define SCNu32		"u" ### string, not number "\"u\"" */
/* # define SCNu64		__PRI64_PREFIX "u" ### string, not number "__PRI64_PREFIX \"u\"" */
/* # define SCNuLEAST8	"hhu" ### string, not number "\"hhu\"" */
/* # define SCNuLEAST16	"hu" ### string, not number "\"hu\"" */
/* # define SCNuLEAST32	"u" ### string, not number "\"u\"" */
/* # define SCNuLEAST64	__PRI64_PREFIX "u" ### string, not number "__PRI64_PREFIX \"u\"" */
/* # define SCNuFAST8	"hhu" ### string, not number "\"hhu\"" */
/* # define SCNuFAST16	__PRIPTR_PREFIX "u" ### string, not number "__PRIPTR_PREFIX \"u\"" */
/* # define SCNuFAST32	__PRIPTR_PREFIX "u" ### string, not number "__PRIPTR_PREFIX \"u\"" */
/* # define SCNuFAST64	__PRI64_PREFIX "u" ### string, not number "__PRI64_PREFIX \"u\"" */
/* # define SCNo8		"hho" ### string, not number "\"hho\"" */
/* # define SCNo16		"ho" ### string, not number "\"ho\"" */
/* # define SCNo32		"o" ### string, not number "\"o\"" */
/* # define SCNo64		__PRI64_PREFIX "o" ### string, not number "__PRI64_PREFIX \"o\"" */
/* # define SCNoLEAST8	"hho" ### string, not number "\"hho\"" */
/* # define SCNoLEAST16	"ho" ### string, not number "\"ho\"" */
/* # define SCNoLEAST32	"o" ### string, not number "\"o\"" */
/* # define SCNoLEAST64	__PRI64_PREFIX "o" ### string, not number "__PRI64_PREFIX \"o\"" */
/* # define SCNoFAST8	"hho" ### string, not number "\"hho\"" */
/* # define SCNoFAST16	__PRIPTR_PREFIX "o" ### string, not number "__PRIPTR_PREFIX \"o\"" */
/* # define SCNoFAST32	__PRIPTR_PREFIX "o" ### string, not number "__PRIPTR_PREFIX \"o\"" */
/* # define SCNoFAST64	__PRI64_PREFIX "o" ### string, not number "__PRI64_PREFIX \"o\"" */
/* # define SCNx8		"hhx" ### string, not number "\"hhx\"" */
/* # define SCNx16		"hx" ### string, not number "\"hx\"" */
/* # define SCNx32		"x" ### string, not number "\"x\"" */
/* # define SCNx64		__PRI64_PREFIX "x" ### string, not number "__PRI64_PREFIX \"x\"" */
/* # define SCNxLEAST8	"hhx" ### string, not number "\"hhx\"" */
/* # define SCNxLEAST16	"hx" ### string, not number "\"hx\"" */
/* # define SCNxLEAST32	"x" ### string, not number "\"x\"" */
/* # define SCNxLEAST64	__PRI64_PREFIX "x" ### string, not number "__PRI64_PREFIX \"x\"" */
/* # define SCNxFAST8	"hhx" ### string, not number "\"hhx\"" */
/* # define SCNxFAST16	__PRIPTR_PREFIX "x" ### string, not number "__PRIPTR_PREFIX \"x\"" */
/* # define SCNxFAST32	__PRIPTR_PREFIX "x" ### string, not number "__PRIPTR_PREFIX \"x\"" */
/* # define SCNxFAST64	__PRI64_PREFIX "x" ### string, not number "__PRI64_PREFIX \"x\"" */
/* # define SCNdMAX	__PRI64_PREFIX "d" ### string, not number "__PRI64_PREFIX \"d\"" */
/* # define SCNiMAX	__PRI64_PREFIX "i" ### string, not number "__PRI64_PREFIX \"i\"" */
/* # define SCNoMAX	__PRI64_PREFIX "o" ### string, not number "__PRI64_PREFIX \"o\"" */
/* # define SCNuMAX	__PRI64_PREFIX "u" ### string, not number "__PRI64_PREFIX \"u\"" */
/* # define SCNxMAX	__PRI64_PREFIX "x" ### string, not number "__PRI64_PREFIX \"x\"" */
/* # define SCNdPTR	__PRIPTR_PREFIX "d" ### string, not number "__PRIPTR_PREFIX \"d\"" */
/* # define SCNiPTR	__PRIPTR_PREFIX "i" ### string, not number "__PRIPTR_PREFIX \"i\"" */
/* # define SCNoPTR	__PRIPTR_PREFIX "o" ### string, not number "__PRIPTR_PREFIX \"o\"" */
/* # define SCNuPTR	__PRIPTR_PREFIX "u" ### string, not number "__PRIPTR_PREFIX \"u\"" */
/* # define SCNxPTR	__PRIPTR_PREFIX "x" ### string, not number "__PRIPTR_PREFIX \"x\"" */
typedef struct {
	long int quot;
	long int rem;
} imaxdiv_t;
extern intmax_t imaxabs (intmax_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern imaxdiv_t imaxdiv (intmax_t __numer, intmax_t __denom) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern intmax_t strtoimax (const char * __nptr, char ** __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__));
extern uintmax_t strtoumax (const char * __nptr, char ** __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__));
extern intmax_t wcstoimax (const __gwchar_t * __nptr, __gwchar_t ** __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__));
extern uintmax_t wcstoumax (const __gwchar_t * __nptr, __gwchar_t ** __endptr, int __base) __attribute__ ((__nothrow__ , __leaf__));
/* + END   /usr/include/inttypes.h */
]]
