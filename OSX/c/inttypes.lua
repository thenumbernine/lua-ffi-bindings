local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Library/Developer/CommandLineTools/usr/lib/clang/15.0.0/include/inttypes.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/inttypes.h */
/* #  define PRId8         __PRI_8_LENGTH_MODIFIER__ "d" ### string, not number "__PRI_8_LENGTH_MODIFIER__ \"d\"" */
/* #  define PRIi8         __PRI_8_LENGTH_MODIFIER__ "i" ### string, not number "__PRI_8_LENGTH_MODIFIER__ \"i\"" */
/* #  define PRIo8         __PRI_8_LENGTH_MODIFIER__ "o" ### string, not number "__PRI_8_LENGTH_MODIFIER__ \"o\"" */
/* #  define PRIu8         __PRI_8_LENGTH_MODIFIER__ "u" ### string, not number "__PRI_8_LENGTH_MODIFIER__ \"u\"" */
/* #  define PRIx8         __PRI_8_LENGTH_MODIFIER__ "x" ### string, not number "__PRI_8_LENGTH_MODIFIER__ \"x\"" */
/* #  define PRIX8         __PRI_8_LENGTH_MODIFIER__ "X" ### string, not number "__PRI_8_LENGTH_MODIFIER__ \"X\"" */
/* #  define PRId16        "hd" ### string, not number "\"hd\"" */
/* #  define PRIi16        "hi" ### string, not number "\"hi\"" */
/* #  define PRIo16        "ho" ### string, not number "\"ho\"" */
/* #  define PRIu16        "hu" ### string, not number "\"hu\"" */
/* #  define PRIx16        "hx" ### string, not number "\"hx\"" */
/* #  define PRIX16        "hX" ### string, not number "\"hX\"" */
/* #  define PRId32        "d" ### string, not number "\"d\"" */
/* #  define PRIi32        "i" ### string, not number "\"i\"" */
/* #  define PRIo32        "o" ### string, not number "\"o\"" */
/* #  define PRIu32        "u" ### string, not number "\"u\"" */
/* #  define PRIx32        "x" ### string, not number "\"x\"" */
/* #  define PRIX32        "X" ### string, not number "\"X\"" */
/* #  define PRId64        __PRI_64_LENGTH_MODIFIER__ "d" ### string, not number "__PRI_64_LENGTH_MODIFIER__ \"d\"" */
/* #  define PRIi64        __PRI_64_LENGTH_MODIFIER__ "i" ### string, not number "__PRI_64_LENGTH_MODIFIER__ \"i\"" */
/* #  define PRIo64        __PRI_64_LENGTH_MODIFIER__ "o" ### string, not number "__PRI_64_LENGTH_MODIFIER__ \"o\"" */
/* #  define PRIu64        __PRI_64_LENGTH_MODIFIER__ "u" ### string, not number "__PRI_64_LENGTH_MODIFIER__ \"u\"" */
/* #  define PRIx64        __PRI_64_LENGTH_MODIFIER__ "x" ### string, not number "__PRI_64_LENGTH_MODIFIER__ \"x\"" */
/* #  define PRIX64        __PRI_64_LENGTH_MODIFIER__ "X" ### string, not number "__PRI_64_LENGTH_MODIFIER__ \"X\"" */
/* #  define PRIdLEAST8    PRId8 ### string, not number "PRId8" */
/* #  define PRIiLEAST8    PRIi8 ### string, not number "PRIi8" */
/* #  define PRIoLEAST8    PRIo8 ### string, not number "PRIo8" */
/* #  define PRIuLEAST8    PRIu8 ### string, not number "PRIu8" */
/* #  define PRIxLEAST8    PRIx8 ### string, not number "PRIx8" */
/* #  define PRIXLEAST8    PRIX8 ### string, not number "PRIX8" */
/* #  define PRIdLEAST16   PRId16 ### string, not number "PRId16" */
/* #  define PRIiLEAST16   PRIi16 ### string, not number "PRIi16" */
/* #  define PRIoLEAST16   PRIo16 ### string, not number "PRIo16" */
/* #  define PRIuLEAST16   PRIu16 ### string, not number "PRIu16" */
/* #  define PRIxLEAST16   PRIx16 ### string, not number "PRIx16" */
/* #  define PRIXLEAST16   PRIX16 ### string, not number "PRIX16" */
/* #  define PRIdLEAST32   PRId32 ### string, not number "PRId32" */
/* #  define PRIiLEAST32   PRIi32 ### string, not number "PRIi32" */
/* #  define PRIoLEAST32   PRIo32 ### string, not number "PRIo32" */
/* #  define PRIuLEAST32   PRIu32 ### string, not number "PRIu32" */
/* #  define PRIxLEAST32   PRIx32 ### string, not number "PRIx32" */
/* #  define PRIXLEAST32   PRIX32 ### string, not number "PRIX32" */
/* #  define PRIdLEAST64   PRId64 ### string, not number "PRId64" */
/* #  define PRIiLEAST64   PRIi64 ### string, not number "PRIi64" */
/* #  define PRIoLEAST64   PRIo64 ### string, not number "PRIo64" */
/* #  define PRIuLEAST64   PRIu64 ### string, not number "PRIu64" */
/* #  define PRIxLEAST64   PRIx64 ### string, not number "PRIx64" */
/* #  define PRIXLEAST64   PRIX64 ### string, not number "PRIX64" */
/* #  define PRIdFAST8     PRId8 ### string, not number "PRId8" */
/* #  define PRIiFAST8     PRIi8 ### string, not number "PRIi8" */
/* #  define PRIoFAST8     PRIo8 ### string, not number "PRIo8" */
/* #  define PRIuFAST8     PRIu8 ### string, not number "PRIu8" */
/* #  define PRIxFAST8     PRIx8 ### string, not number "PRIx8" */
/* #  define PRIXFAST8     PRIX8 ### string, not number "PRIX8" */
/* #  define PRIdFAST16    PRId16 ### string, not number "PRId16" */
/* #  define PRIiFAST16    PRIi16 ### string, not number "PRIi16" */
/* #  define PRIoFAST16    PRIo16 ### string, not number "PRIo16" */
/* #  define PRIuFAST16    PRIu16 ### string, not number "PRIu16" */
/* #  define PRIxFAST16    PRIx16 ### string, not number "PRIx16" */
/* #  define PRIXFAST16    PRIX16 ### string, not number "PRIX16" */
/* #  define PRIdFAST32    PRId32 ### string, not number "PRId32" */
/* #  define PRIiFAST32    PRIi32 ### string, not number "PRIi32" */
/* #  define PRIoFAST32    PRIo32 ### string, not number "PRIo32" */
/* #  define PRIuFAST32    PRIu32 ### string, not number "PRIu32" */
/* #  define PRIxFAST32    PRIx32 ### string, not number "PRIx32" */
/* #  define PRIXFAST32    PRIX32 ### string, not number "PRIX32" */
/* #  define PRIdFAST64    PRId64 ### string, not number "PRId64" */
/* #  define PRIiFAST64    PRIi64 ### string, not number "PRIi64" */
/* #  define PRIoFAST64    PRIo64 ### string, not number "PRIo64" */
/* #  define PRIuFAST64    PRIu64 ### string, not number "PRIu64" */
/* #  define PRIxFAST64    PRIx64 ### string, not number "PRIx64" */
/* #  define PRIXFAST64    PRIX64 ### string, not number "PRIX64" */
/* #  define PRIdPTR       "ld" ### string, not number "\"ld\"" */
/* #  define PRIiPTR       "li" ### string, not number "\"li\"" */
/* #  define PRIoPTR       "lo" ### string, not number "\"lo\"" */
/* #  define PRIuPTR       "lu" ### string, not number "\"lu\"" */
/* #  define PRIxPTR       "lx" ### string, not number "\"lx\"" */
/* #  define PRIXPTR       "lX" ### string, not number "\"lX\"" */
/* #  define PRIdMAX        __PRI_MAX_LENGTH_MODIFIER__ "d" ### string, not number "__PRI_MAX_LENGTH_MODIFIER__ \"d\"" */
/* #  define PRIiMAX        __PRI_MAX_LENGTH_MODIFIER__ "i" ### string, not number "__PRI_MAX_LENGTH_MODIFIER__ \"i\"" */
/* #  define PRIoMAX        __PRI_MAX_LENGTH_MODIFIER__ "o" ### string, not number "__PRI_MAX_LENGTH_MODIFIER__ \"o\"" */
/* #  define PRIuMAX        __PRI_MAX_LENGTH_MODIFIER__ "u" ### string, not number "__PRI_MAX_LENGTH_MODIFIER__ \"u\"" */
/* #  define PRIxMAX        __PRI_MAX_LENGTH_MODIFIER__ "x" ### string, not number "__PRI_MAX_LENGTH_MODIFIER__ \"x\"" */
/* #  define PRIXMAX        __PRI_MAX_LENGTH_MODIFIER__ "X" ### string, not number "__PRI_MAX_LENGTH_MODIFIER__ \"X\"" */
/* #  define SCNd8         __PRI_8_LENGTH_MODIFIER__ "d" ### string, not number "__PRI_8_LENGTH_MODIFIER__ \"d\"" */
/* #  define SCNi8         __PRI_8_LENGTH_MODIFIER__ "i" ### string, not number "__PRI_8_LENGTH_MODIFIER__ \"i\"" */
/* #  define SCNo8         __PRI_8_LENGTH_MODIFIER__ "o" ### string, not number "__PRI_8_LENGTH_MODIFIER__ \"o\"" */
/* #  define SCNu8         __PRI_8_LENGTH_MODIFIER__ "u" ### string, not number "__PRI_8_LENGTH_MODIFIER__ \"u\"" */
/* #  define SCNx8         __PRI_8_LENGTH_MODIFIER__ "x" ### string, not number "__PRI_8_LENGTH_MODIFIER__ \"x\"" */
/* #  define SCNd16        "hd" ### string, not number "\"hd\"" */
/* #  define SCNi16        "hi" ### string, not number "\"hi\"" */
/* #  define SCNo16        "ho" ### string, not number "\"ho\"" */
/* #  define SCNu16        "hu" ### string, not number "\"hu\"" */
/* #  define SCNx16        "hx" ### string, not number "\"hx\"" */
/* #  define SCNd32        "d" ### string, not number "\"d\"" */
/* #  define SCNi32        "i" ### string, not number "\"i\"" */
/* #  define SCNo32        "o" ### string, not number "\"o\"" */
/* #  define SCNu32        "u" ### string, not number "\"u\"" */
/* #  define SCNx32        "x" ### string, not number "\"x\"" */
/* #  define SCNd64        __SCN_64_LENGTH_MODIFIER__ "d" ### string, not number "__SCN_64_LENGTH_MODIFIER__ \"d\"" */
/* #  define SCNi64        __SCN_64_LENGTH_MODIFIER__ "i" ### string, not number "__SCN_64_LENGTH_MODIFIER__ \"i\"" */
/* #  define SCNo64        __SCN_64_LENGTH_MODIFIER__ "o" ### string, not number "__SCN_64_LENGTH_MODIFIER__ \"o\"" */
/* #  define SCNu64        __SCN_64_LENGTH_MODIFIER__ "u" ### string, not number "__SCN_64_LENGTH_MODIFIER__ \"u\"" */
/* #  define SCNx64        __SCN_64_LENGTH_MODIFIER__ "x" ### string, not number "__SCN_64_LENGTH_MODIFIER__ \"x\"" */
/* #  define SCNdLEAST8    SCNd8 ### string, not number "SCNd8" */
/* #  define SCNiLEAST8    SCNi8 ### string, not number "SCNi8" */
/* #  define SCNoLEAST8    SCNo8 ### string, not number "SCNo8" */
/* #  define SCNuLEAST8    SCNu8 ### string, not number "SCNu8" */
/* #  define SCNxLEAST8    SCNx8 ### string, not number "SCNx8" */
/* #  define SCNdLEAST16   SCNd16 ### string, not number "SCNd16" */
/* #  define SCNiLEAST16   SCNi16 ### string, not number "SCNi16" */
/* #  define SCNoLEAST16   SCNo16 ### string, not number "SCNo16" */
/* #  define SCNuLEAST16   SCNu16 ### string, not number "SCNu16" */
/* #  define SCNxLEAST16   SCNx16 ### string, not number "SCNx16" */
/* #  define SCNdLEAST32   SCNd32 ### string, not number "SCNd32" */
/* #  define SCNiLEAST32   SCNi32 ### string, not number "SCNi32" */
/* #  define SCNoLEAST32   SCNo32 ### string, not number "SCNo32" */
/* #  define SCNuLEAST32   SCNu32 ### string, not number "SCNu32" */
/* #  define SCNxLEAST32   SCNx32 ### string, not number "SCNx32" */
/* #  define SCNdLEAST64   SCNd64 ### string, not number "SCNd64" */
/* #  define SCNiLEAST64   SCNi64 ### string, not number "SCNi64" */
/* #  define SCNoLEAST64   SCNo64 ### string, not number "SCNo64" */
/* #  define SCNuLEAST64   SCNu64 ### string, not number "SCNu64" */
/* #  define SCNxLEAST64   SCNx64 ### string, not number "SCNx64" */
/* #  define SCNdFAST8     SCNd8 ### string, not number "SCNd8" */
/* #  define SCNiFAST8     SCNi8 ### string, not number "SCNi8" */
/* #  define SCNoFAST8     SCNo8 ### string, not number "SCNo8" */
/* #  define SCNuFAST8     SCNu8 ### string, not number "SCNu8" */
/* #  define SCNxFAST8     SCNx8 ### string, not number "SCNx8" */
/* #  define SCNdFAST16    SCNd16 ### string, not number "SCNd16" */
/* #  define SCNiFAST16    SCNi16 ### string, not number "SCNi16" */
/* #  define SCNoFAST16    SCNo16 ### string, not number "SCNo16" */
/* #  define SCNuFAST16    SCNu16 ### string, not number "SCNu16" */
/* #  define SCNxFAST16    SCNx16 ### string, not number "SCNx16" */
/* #  define SCNdFAST32    SCNd32 ### string, not number "SCNd32" */
/* #  define SCNiFAST32    SCNi32 ### string, not number "SCNi32" */
/* #  define SCNoFAST32    SCNo32 ### string, not number "SCNo32" */
/* #  define SCNuFAST32    SCNu32 ### string, not number "SCNu32" */
/* #  define SCNxFAST32    SCNx32 ### string, not number "SCNx32" */
/* #  define SCNdFAST64    SCNd64 ### string, not number "SCNd64" */
/* #  define SCNiFAST64    SCNi64 ### string, not number "SCNi64" */
/* #  define SCNoFAST64    SCNo64 ### string, not number "SCNo64" */
/* #  define SCNuFAST64    SCNu64 ### string, not number "SCNu64" */
/* #  define SCNxFAST64    SCNx64 ### string, not number "SCNx64" */
/* #  define SCNdPTR       "ld" ### string, not number "\"ld\"" */
/* #  define SCNiPTR       "li" ### string, not number "\"li\"" */
/* #  define SCNoPTR       "lo" ### string, not number "\"lo\"" */
/* #  define SCNuPTR       "lu" ### string, not number "\"lu\"" */
/* #  define SCNxPTR       "lx" ### string, not number "\"lx\"" */
/* #  define SCNdMAX       __SCN_MAX_LENGTH_MODIFIER__ "d" ### string, not number "__SCN_MAX_LENGTH_MODIFIER__ \"d\"" */
/* #  define SCNiMAX       __SCN_MAX_LENGTH_MODIFIER__ "i" ### string, not number "__SCN_MAX_LENGTH_MODIFIER__ \"i\"" */
/* #  define SCNoMAX       __SCN_MAX_LENGTH_MODIFIER__ "o" ### string, not number "__SCN_MAX_LENGTH_MODIFIER__ \"o\"" */
/* #  define SCNuMAX       __SCN_MAX_LENGTH_MODIFIER__ "u" ### string, not number "__SCN_MAX_LENGTH_MODIFIER__ \"u\"" */
/* #  define SCNxMAX       __SCN_MAX_LENGTH_MODIFIER__ "x" ### string, not number "__SCN_MAX_LENGTH_MODIFIER__ \"x\"" */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h */
]] require 'ffi.req' 'c._types' ffi.cdef[[
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/_types.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_wchar_t.h */
/* ++++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
]] require 'ffi.req' 'c.machine._types' ffi.cdef[[
/* ++++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/machine/_types.h */
typedef __darwin_wchar_t wchar_t;
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_types/_wchar_t.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/usr/lib/clang/15.0.0/include/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* +++ END   /Library/Developer/CommandLineTools/usr/lib/clang/15.0.0/include/stdint.h */
extern intmax_t imaxabs(intmax_t j);
typedef struct {
	intmax_t quot;
	intmax_t rem;
} imaxdiv_t;
extern imaxdiv_t imaxdiv(intmax_t __numer, intmax_t __denom);
extern intmax_t strtoimax(const char * restrict __nptr, char ** restrict __endptr, int __base);
extern uintmax_t strtoumax(const char * restrict __nptr, char ** restrict __endptr, int __base);
extern intmax_t wcstoimax(const wchar_t * restrict __nptr, wchar_t ** restrict __endptr, int __base);
extern uintmax_t wcstoumax(const wchar_t * restrict __nptr, wchar_t ** restrict __endptr, int __base);
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/inttypes.h */
/* + END   /Library/Developer/CommandLineTools/usr/lib/clang/15.0.0/include/inttypes.h */
]]
