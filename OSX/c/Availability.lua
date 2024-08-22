local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityVersions.h */
enum { MAC_OS_X_VERSION_10_0 = 1000 };
enum { MAC_OS_X_VERSION_10_1 = 1010 };
enum { MAC_OS_X_VERSION_10_2 = 1020 };
enum { MAC_OS_X_VERSION_10_3 = 1030 };
enum { MAC_OS_X_VERSION_10_4 = 1040 };
enum { MAC_OS_X_VERSION_10_5 = 1050 };
enum { MAC_OS_X_VERSION_10_6 = 1060 };
enum { MAC_OS_X_VERSION_10_7 = 1070 };
enum { MAC_OS_X_VERSION_10_8 = 1080 };
enum { MAC_OS_X_VERSION_10_9 = 1090 };
enum { MAC_OS_X_VERSION_10_10 = 101000 };
enum { MAC_OS_X_VERSION_10_10_2 = 101002 };
enum { MAC_OS_X_VERSION_10_10_3 = 101003 };
enum { MAC_OS_X_VERSION_10_11 = 101100 };
enum { MAC_OS_X_VERSION_10_11_2 = 101102 };
enum { MAC_OS_X_VERSION_10_11_3 = 101103 };
enum { MAC_OS_X_VERSION_10_11_4 = 101104 };
enum { MAC_OS_X_VERSION_10_12 = 101200 };
enum { MAC_OS_X_VERSION_10_12_1 = 101201 };
enum { MAC_OS_X_VERSION_10_12_2 = 101202 };
enum { MAC_OS_X_VERSION_10_12_4 = 101204 };
enum { MAC_OS_X_VERSION_10_13 = 101300 };
enum { MAC_OS_X_VERSION_10_13_1 = 101301 };
enum { MAC_OS_X_VERSION_10_13_2 = 101302 };
enum { MAC_OS_X_VERSION_10_13_4 = 101304 };
enum { MAC_OS_X_VERSION_10_14 = 101400 };
enum { MAC_OS_X_VERSION_10_14_1 = 101401 };
enum { MAC_OS_X_VERSION_10_14_4 = 101404 };
enum { MAC_OS_X_VERSION_10_14_5 = 101405 };
enum { MAC_OS_X_VERSION_10_14_6 = 101406 };
enum { MAC_OS_X_VERSION_10_15 = 101500 };
enum { MAC_OS_X_VERSION_10_15_1 = 101501 };
enum { MAC_OS_X_VERSION_10_15_4 = 101504 };
enum { MAC_OS_X_VERSION_10_16 = 101600 };
enum { MAC_OS_VERSION_11_0 = 110000 };
enum { MAC_OS_VERSION_11_1 = 110100 };
enum { MAC_OS_VERSION_11_3 = 110300 };
enum { MAC_OS_VERSION_11_4 = 110400 };
enum { MAC_OS_VERSION_11_5 = 110500 };
enum { MAC_OS_VERSION_11_6 = 110600 };
enum { MAC_OS_VERSION_12_0 = 120000 };
enum { MAC_OS_VERSION_12_1 = 120100 };
enum { MAC_OS_VERSION_12_2 = 120200 };
enum { MAC_OS_VERSION_12_3 = 120300 };
enum { MAC_OS_VERSION_12_4 = 120400 };
enum { MAC_OS_VERSION_12_5 = 120500 };
enum { MAC_OS_VERSION_12_6 = 120600 };
enum { MAC_OS_VERSION_12_7 = 120700 };
enum { MAC_OS_VERSION_13_0 = 130000 };
enum { MAC_OS_VERSION_13_1 = 130100 };
/* redefining matching value: #define  MAC_OS_VERSION_13_1                             __MAC_13_1 */
enum { MAC_OS_VERSION_13_2 = 130200 };
enum { MAC_OS_VERSION_13_3 = 130300 };
enum { MAC_OS_VERSION_13_4 = 130400 };
enum { MAC_OS_VERSION_13_5 = 130500 };
enum { MAC_OS_VERSION_13_6 = 130600 };
enum { MAC_OS_VERSION_14_0 = 140000 };
enum { MAC_OS_VERSION_14_1 = 140100 };
enum { MAC_OS_VERSION_14_2 = 140200 };
enum { MAC_OS_VERSION_14_3 = 140300 };
enum { MAC_OS_VERSION_14_4 = 140400 };
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityVersions.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h */
/* + END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/Availability.h */
]]
