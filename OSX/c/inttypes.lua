local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <inttypes.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/inttypes.h */
/* ++ BEGIN <inttypes.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/inttypes.h */
/* +++ BEGIN <_inttypes.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_inttypes.h */
/* ++++ BEGIN <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
]] require 'ffi.req' 'c.sys.cdefs' ffi.cdef[[
/* ++++ END <sys/cdefs.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* ++++ BEGIN <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
]] require 'ffi.req' 'c.Availability' ffi.cdef[[
/* ++++ END <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* ++++ BEGIN <_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
]] require 'ffi.req' 'c._types' ffi.cdef[[
/* ++++ END <_types.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_types.h */
/* ++++ BEGIN <sys/_types/_wchar_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wchar_t.h */
]] require 'ffi.req' 'c.sys._types._wchar_t' ffi.cdef[[
/* ++++ END <sys/_types/_wchar_t.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_types/_wchar_t.h */
/* ++++ BEGIN <stdint.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* ++++ END <stdint.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdint.h */
__attribute__((availability(macosx,introduced=10.4)))
extern intmax_t
imaxabs(intmax_t j);
typedef struct {
 intmax_t quot;
 intmax_t rem;
} imaxdiv_t;
__attribute__((availability(macosx,introduced=10.4)))
extern imaxdiv_t
imaxdiv(intmax_t __numer, intmax_t __denom);
__attribute__((availability(macosx,introduced=10.4)))
extern intmax_t
strtoimax(const char * restrict __nptr,
   char ** restrict __endptr,
   int __base);
__attribute__((availability(macosx,introduced=10.4)))
extern uintmax_t
strtoumax(const char * restrict __nptr,
   char ** restrict __endptr,
   int __base);
__attribute__((availability(macosx,introduced=10.4)))
extern intmax_t
wcstoimax(const wchar_t * restrict __nptr,
   wchar_t ** restrict __endptr,
   int __base);
__attribute__((availability(macosx,introduced=10.4)))
extern uintmax_t
wcstoumax(const wchar_t * restrict __nptr,
   wchar_t ** restrict __endptr,
   int __base);
/* +++ END <_inttypes.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/_inttypes.h */
/* ++ END <inttypes.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/inttypes.h */
/* #define __PRI_8_LENGTH_MODIFIER__ "hh" ### define is not number */
/* #define __PRI_64_LENGTH_MODIFIER__ "ll" ### define is not number */
/* #define __SCN_64_LENGTH_MODIFIER__ "ll" ### define is not number */
/* #define __PRI_MAX_LENGTH_MODIFIER__ "j" ### define is not number */
/* #define __SCN_MAX_LENGTH_MODIFIER__ "j" ### define is not number */
/* #define PRId8 __PRI_8_LENGTH_MODIFIER__ "d" ### define is not number */
/* #define PRIi8 __PRI_8_LENGTH_MODIFIER__ "i" ### define is not number */
/* #define PRIo8 __PRI_8_LENGTH_MODIFIER__ "o" ### define is not number */
/* #define PRIu8 __PRI_8_LENGTH_MODIFIER__ "u" ### define is not number */
/* #define PRIx8 __PRI_8_LENGTH_MODIFIER__ "x" ### define is not number */
/* #define PRIX8 __PRI_8_LENGTH_MODIFIER__ "X" ### define is not number */
/* #define PRId16 "hd" ### define is not number */
/* #define PRIi16 "hi" ### define is not number */
/* #define PRIo16 "ho" ### define is not number */
/* #define PRIu16 "hu" ### define is not number */
/* #define PRIx16 "hx" ### define is not number */
/* #define PRIX16 "hX" ### define is not number */
/* #define PRId32 "d" ### define is not number */
/* #define PRIi32 "i" ### define is not number */
/* #define PRIo32 "o" ### define is not number */
/* #define PRIu32 "u" ### define is not number */
/* #define PRIx32 "x" ### define is not number */
/* #define PRIX32 "X" ### define is not number */
/* #define PRId64 __PRI_64_LENGTH_MODIFIER__ "d" ### define is not number */
/* #define PRIi64 __PRI_64_LENGTH_MODIFIER__ "i" ### define is not number */
/* #define PRIo64 __PRI_64_LENGTH_MODIFIER__ "o" ### define is not number */
/* #define PRIu64 __PRI_64_LENGTH_MODIFIER__ "u" ### define is not number */
/* #define PRIx64 __PRI_64_LENGTH_MODIFIER__ "x" ### define is not number */
/* #define PRIX64 __PRI_64_LENGTH_MODIFIER__ "X" ### define is not number */
/* #define PRIdLEAST8 __PRI_8_LENGTH_MODIFIER__ "d" ### define is not number */
/* #define PRIiLEAST8 __PRI_8_LENGTH_MODIFIER__ "i" ### define is not number */
/* #define PRIoLEAST8 __PRI_8_LENGTH_MODIFIER__ "o" ### define is not number */
/* #define PRIuLEAST8 __PRI_8_LENGTH_MODIFIER__ "u" ### define is not number */
/* #define PRIxLEAST8 __PRI_8_LENGTH_MODIFIER__ "x" ### define is not number */
/* #define PRIXLEAST8 __PRI_8_LENGTH_MODIFIER__ "X" ### define is not number */
/* #define PRIdLEAST16 "hd" ### define is not number */
/* #define PRIiLEAST16 "hi" ### define is not number */
/* #define PRIoLEAST16 "ho" ### define is not number */
/* #define PRIuLEAST16 "hu" ### define is not number */
/* #define PRIxLEAST16 "hx" ### define is not number */
/* #define PRIXLEAST16 "hX" ### define is not number */
/* #define PRIdLEAST32 "d" ### define is not number */
/* #define PRIiLEAST32 "i" ### define is not number */
/* #define PRIoLEAST32 "o" ### define is not number */
/* #define PRIuLEAST32 "u" ### define is not number */
/* #define PRIxLEAST32 "x" ### define is not number */
/* #define PRIXLEAST32 "X" ### define is not number */
/* #define PRIdLEAST64 __PRI_64_LENGTH_MODIFIER__ "d" ### define is not number */
/* #define PRIiLEAST64 __PRI_64_LENGTH_MODIFIER__ "i" ### define is not number */
/* #define PRIoLEAST64 __PRI_64_LENGTH_MODIFIER__ "o" ### define is not number */
/* #define PRIuLEAST64 __PRI_64_LENGTH_MODIFIER__ "u" ### define is not number */
/* #define PRIxLEAST64 __PRI_64_LENGTH_MODIFIER__ "x" ### define is not number */
/* #define PRIXLEAST64 __PRI_64_LENGTH_MODIFIER__ "X" ### define is not number */
/* #define PRIdFAST8 __PRI_8_LENGTH_MODIFIER__ "d" ### define is not number */
/* #define PRIiFAST8 __PRI_8_LENGTH_MODIFIER__ "i" ### define is not number */
/* #define PRIoFAST8 __PRI_8_LENGTH_MODIFIER__ "o" ### define is not number */
/* #define PRIuFAST8 __PRI_8_LENGTH_MODIFIER__ "u" ### define is not number */
/* #define PRIxFAST8 __PRI_8_LENGTH_MODIFIER__ "x" ### define is not number */
/* #define PRIXFAST8 __PRI_8_LENGTH_MODIFIER__ "X" ### define is not number */
/* #define PRIdFAST16 "hd" ### define is not number */
/* #define PRIiFAST16 "hi" ### define is not number */
/* #define PRIoFAST16 "ho" ### define is not number */
/* #define PRIuFAST16 "hu" ### define is not number */
/* #define PRIxFAST16 "hx" ### define is not number */
/* #define PRIXFAST16 "hX" ### define is not number */
/* #define PRIdFAST32 "d" ### define is not number */
/* #define PRIiFAST32 "i" ### define is not number */
/* #define PRIoFAST32 "o" ### define is not number */
/* #define PRIuFAST32 "u" ### define is not number */
/* #define PRIxFAST32 "x" ### define is not number */
/* #define PRIXFAST32 "X" ### define is not number */
/* #define PRIdFAST64 __PRI_64_LENGTH_MODIFIER__ "d" ### define is not number */
/* #define PRIiFAST64 __PRI_64_LENGTH_MODIFIER__ "i" ### define is not number */
/* #define PRIoFAST64 __PRI_64_LENGTH_MODIFIER__ "o" ### define is not number */
/* #define PRIuFAST64 __PRI_64_LENGTH_MODIFIER__ "u" ### define is not number */
/* #define PRIxFAST64 __PRI_64_LENGTH_MODIFIER__ "x" ### define is not number */
/* #define PRIXFAST64 __PRI_64_LENGTH_MODIFIER__ "X" ### define is not number */
/* #define PRIdPTR "ld" ### define is not number */
/* #define PRIiPTR "li" ### define is not number */
/* #define PRIoPTR "lo" ### define is not number */
/* #define PRIuPTR "lu" ### define is not number */
/* #define PRIxPTR "lx" ### define is not number */
/* #define PRIXPTR "lX" ### define is not number */
/* #define PRIdMAX __PRI_MAX_LENGTH_MODIFIER__ "d" ### define is not number */
/* #define PRIiMAX __PRI_MAX_LENGTH_MODIFIER__ "i" ### define is not number */
/* #define PRIoMAX __PRI_MAX_LENGTH_MODIFIER__ "o" ### define is not number */
/* #define PRIuMAX __PRI_MAX_LENGTH_MODIFIER__ "u" ### define is not number */
/* #define PRIxMAX __PRI_MAX_LENGTH_MODIFIER__ "x" ### define is not number */
/* #define PRIXMAX __PRI_MAX_LENGTH_MODIFIER__ "X" ### define is not number */
/* #define SCNd8 __PRI_8_LENGTH_MODIFIER__ "d" ### define is not number */
/* #define SCNi8 __PRI_8_LENGTH_MODIFIER__ "i" ### define is not number */
/* #define SCNo8 __PRI_8_LENGTH_MODIFIER__ "o" ### define is not number */
/* #define SCNu8 __PRI_8_LENGTH_MODIFIER__ "u" ### define is not number */
/* #define SCNx8 __PRI_8_LENGTH_MODIFIER__ "x" ### define is not number */
/* #define SCNd16 "hd" ### define is not number */
/* #define SCNi16 "hi" ### define is not number */
/* #define SCNo16 "ho" ### define is not number */
/* #define SCNu16 "hu" ### define is not number */
/* #define SCNx16 "hx" ### define is not number */
/* #define SCNd32 "d" ### define is not number */
/* #define SCNi32 "i" ### define is not number */
/* #define SCNo32 "o" ### define is not number */
/* #define SCNu32 "u" ### define is not number */
/* #define SCNx32 "x" ### define is not number */
/* #define SCNd64 __SCN_64_LENGTH_MODIFIER__ "d" ### define is not number */
/* #define SCNi64 __SCN_64_LENGTH_MODIFIER__ "i" ### define is not number */
/* #define SCNo64 __SCN_64_LENGTH_MODIFIER__ "o" ### define is not number */
/* #define SCNu64 __SCN_64_LENGTH_MODIFIER__ "u" ### define is not number */
/* #define SCNx64 __SCN_64_LENGTH_MODIFIER__ "x" ### define is not number */
/* #define SCNdLEAST8 __PRI_8_LENGTH_MODIFIER__ "d" ### define is not number */
/* #define SCNiLEAST8 __PRI_8_LENGTH_MODIFIER__ "i" ### define is not number */
/* #define SCNoLEAST8 __PRI_8_LENGTH_MODIFIER__ "o" ### define is not number */
/* #define SCNuLEAST8 __PRI_8_LENGTH_MODIFIER__ "u" ### define is not number */
/* #define SCNxLEAST8 __PRI_8_LENGTH_MODIFIER__ "x" ### define is not number */
/* #define SCNdLEAST16 "hd" ### define is not number */
/* #define SCNiLEAST16 "hi" ### define is not number */
/* #define SCNoLEAST16 "ho" ### define is not number */
/* #define SCNuLEAST16 "hu" ### define is not number */
/* #define SCNxLEAST16 "hx" ### define is not number */
/* #define SCNdLEAST32 "d" ### define is not number */
/* #define SCNiLEAST32 "i" ### define is not number */
/* #define SCNoLEAST32 "o" ### define is not number */
/* #define SCNuLEAST32 "u" ### define is not number */
/* #define SCNxLEAST32 "x" ### define is not number */
/* #define SCNdLEAST64 __SCN_64_LENGTH_MODIFIER__ "d" ### define is not number */
/* #define SCNiLEAST64 __SCN_64_LENGTH_MODIFIER__ "i" ### define is not number */
/* #define SCNoLEAST64 __SCN_64_LENGTH_MODIFIER__ "o" ### define is not number */
/* #define SCNuLEAST64 __SCN_64_LENGTH_MODIFIER__ "u" ### define is not number */
/* #define SCNxLEAST64 __SCN_64_LENGTH_MODIFIER__ "x" ### define is not number */
/* #define SCNdFAST8 __PRI_8_LENGTH_MODIFIER__ "d" ### define is not number */
/* #define SCNiFAST8 __PRI_8_LENGTH_MODIFIER__ "i" ### define is not number */
/* #define SCNoFAST8 __PRI_8_LENGTH_MODIFIER__ "o" ### define is not number */
/* #define SCNuFAST8 __PRI_8_LENGTH_MODIFIER__ "u" ### define is not number */
/* #define SCNxFAST8 __PRI_8_LENGTH_MODIFIER__ "x" ### define is not number */
/* #define SCNdFAST16 "hd" ### define is not number */
/* #define SCNiFAST16 "hi" ### define is not number */
/* #define SCNoFAST16 "ho" ### define is not number */
/* #define SCNuFAST16 "hu" ### define is not number */
/* #define SCNxFAST16 "hx" ### define is not number */
/* #define SCNdFAST32 "d" ### define is not number */
/* #define SCNiFAST32 "i" ### define is not number */
/* #define SCNoFAST32 "o" ### define is not number */
/* #define SCNuFAST32 "u" ### define is not number */
/* #define SCNxFAST32 "x" ### define is not number */
/* #define SCNdFAST64 __SCN_64_LENGTH_MODIFIER__ "d" ### define is not number */
/* #define SCNiFAST64 __SCN_64_LENGTH_MODIFIER__ "i" ### define is not number */
/* #define SCNoFAST64 __SCN_64_LENGTH_MODIFIER__ "o" ### define is not number */
/* #define SCNuFAST64 __SCN_64_LENGTH_MODIFIER__ "u" ### define is not number */
/* #define SCNxFAST64 __SCN_64_LENGTH_MODIFIER__ "x" ### define is not number */
/* #define SCNdPTR "ld" ### define is not number */
/* #define SCNiPTR "li" ### define is not number */
/* #define SCNoPTR "lo" ### define is not number */
/* #define SCNuPTR "lu" ### define is not number */
/* #define SCNxPTR "lx" ### define is not number */
/* #define SCNdMAX __SCN_MAX_LENGTH_MODIFIER__ "d" ### define is not number */
/* #define SCNiMAX __SCN_MAX_LENGTH_MODIFIER__ "i" ### define is not number */
/* #define SCNoMAX __SCN_MAX_LENGTH_MODIFIER__ "o" ### define is not number */
/* #define SCNuMAX __SCN_MAX_LENGTH_MODIFIER__ "u" ### define is not number */
/* #define SCNxMAX __SCN_MAX_LENGTH_MODIFIER__ "x" ### define is not number */
/* + END <inttypes.h> /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/inttypes.h */
]]
