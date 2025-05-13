local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* ++ BEGIN <AvailabilityVersions.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityVersions.h */
/* ++ END <AvailabilityVersions.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityVersions.h */
/* ++ BEGIN <AvailabilityInternal.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h */
/* ++ END <AvailabilityInternal.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h */
/* ++ BEGIN <AvailabilityInternalLegacy.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h */
/* ++ END <AvailabilityInternalLegacy.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h */
enum { __AVAILABILITY__ = 1 };
enum { __API_TO_BE_DEPRECATED = 100000 };
enum { __API_TO_BE_DEPRECATED_MACOS = 100000 };
enum { __API_TO_BE_DEPRECATED_IOS = 100000 };
enum { __API_TO_BE_DEPRECATED_MACCATALYST = 100000 };
enum { __API_TO_BE_DEPRECATED_WATCHOS = 100000 };
enum { __API_TO_BE_DEPRECATED_TVOS = 100000 };
enum { __API_TO_BE_DEPRECATED_DRIVERKIT = 100000 };
enum { __API_TO_BE_DEPRECATED_VISIONOS = 100000 };
enum { __AVAILABILITY_VERSIONS__ = 1 };
enum { __MAC_10_0 = 1000 };
enum { __MAC_10_1 = 1010 };
enum { __MAC_10_2 = 1020 };
enum { __MAC_10_3 = 1030 };
enum { __MAC_10_4 = 1040 };
enum { __MAC_10_5 = 1050 };
enum { __MAC_10_6 = 1060 };
enum { __MAC_10_7 = 1070 };
enum { __MAC_10_8 = 1080 };
enum { __MAC_10_9 = 1090 };
enum { __MAC_10_10 = 101000 };
enum { __MAC_10_10_2 = 101002 };
enum { __MAC_10_10_3 = 101003 };
enum { __MAC_10_11 = 101100 };
enum { __MAC_10_11_2 = 101102 };
enum { __MAC_10_11_3 = 101103 };
enum { __MAC_10_11_4 = 101104 };
enum { __MAC_10_12 = 101200 };
enum { __MAC_10_12_1 = 101201 };
enum { __MAC_10_12_2 = 101202 };
enum { __MAC_10_12_4 = 101204 };
enum { __MAC_10_13 = 101300 };
enum { __MAC_10_13_1 = 101301 };
enum { __MAC_10_13_2 = 101302 };
enum { __MAC_10_13_4 = 101304 };
enum { __MAC_10_14 = 101400 };
enum { __MAC_10_14_1 = 101401 };
enum { __MAC_10_14_4 = 101404 };
enum { __MAC_10_14_5 = 101405 };
enum { __MAC_10_14_6 = 101406 };
enum { __MAC_10_15 = 101500 };
enum { __MAC_10_15_1 = 101501 };
enum { __MAC_10_15_4 = 101504 };
enum { __MAC_10_16 = 101600 };
enum { __MAC_11_0 = 110000 };
enum { __MAC_11_1 = 110100 };
enum { __MAC_11_3 = 110300 };
enum { __MAC_11_4 = 110400 };
enum { __MAC_11_5 = 110500 };
enum { __MAC_11_6 = 110600 };
enum { __MAC_12_0 = 120000 };
enum { __MAC_12_1 = 120100 };
enum { __MAC_12_2 = 120200 };
enum { __MAC_12_3 = 120300 };
enum { __MAC_12_4 = 120400 };
enum { __MAC_12_5 = 120500 };
enum { __MAC_12_6 = 120600 };
enum { __MAC_12_7 = 120700 };
enum { __MAC_13_0 = 130000 };
enum { __MAC_13_1 = 130100 };
enum { __MAC_13_2 = 130200 };
enum { __MAC_13_3 = 130300 };
enum { __MAC_13_4 = 130400 };
enum { __MAC_13_5 = 130500 };
enum { __MAC_13_6 = 130600 };
enum { __MAC_14_0 = 140000 };
enum { __MAC_14_1 = 140100 };
enum { __MAC_14_2 = 140200 };
enum { __MAC_14_3 = 140300 };
enum { __MAC_14_4 = 140400 };
enum { __MAC_14_5 = 140500 };
enum { __MAC_15_0 = 150000 };
enum { __MAC_15_1 = 150100 };
enum { __MAC_15_2 = 150200 };
enum { __IPHONE_2_0 = 20000 };
enum { __IPHONE_2_1 = 20100 };
enum { __IPHONE_2_2 = 20200 };
enum { __IPHONE_3_0 = 30000 };
enum { __IPHONE_3_1 = 30100 };
enum { __IPHONE_3_2 = 30200 };
enum { __IPHONE_4_0 = 40000 };
enum { __IPHONE_4_1 = 40100 };
enum { __IPHONE_4_2 = 40200 };
enum { __IPHONE_4_3 = 40300 };
enum { __IPHONE_5_0 = 50000 };
enum { __IPHONE_5_1 = 50100 };
enum { __IPHONE_6_0 = 60000 };
enum { __IPHONE_6_1 = 60100 };
enum { __IPHONE_7_0 = 70000 };
enum { __IPHONE_7_1 = 70100 };
enum { __IPHONE_8_0 = 80000 };
enum { __IPHONE_8_1 = 80100 };
enum { __IPHONE_8_2 = 80200 };
enum { __IPHONE_8_3 = 80300 };
enum { __IPHONE_8_4 = 80400 };
enum { __IPHONE_9_0 = 90000 };
enum { __IPHONE_9_1 = 90100 };
enum { __IPHONE_9_2 = 90200 };
enum { __IPHONE_9_3 = 90300 };
enum { __IPHONE_10_0 = 100000 };
enum { __IPHONE_10_1 = 100100 };
enum { __IPHONE_10_2 = 100200 };
enum { __IPHONE_10_3 = 100300 };
enum { __IPHONE_11_0 = 110000 };
enum { __IPHONE_11_1 = 110100 };
enum { __IPHONE_11_2 = 110200 };
enum { __IPHONE_11_3 = 110300 };
enum { __IPHONE_11_4 = 110400 };
enum { __IPHONE_12_0 = 120000 };
enum { __IPHONE_12_1 = 120100 };
enum { __IPHONE_12_2 = 120200 };
enum { __IPHONE_12_3 = 120300 };
enum { __IPHONE_12_4 = 120400 };
enum { __IPHONE_13_0 = 130000 };
enum { __IPHONE_13_1 = 130100 };
enum { __IPHONE_13_2 = 130200 };
enum { __IPHONE_13_3 = 130300 };
enum { __IPHONE_13_4 = 130400 };
enum { __IPHONE_13_5 = 130500 };
enum { __IPHONE_13_6 = 130600 };
enum { __IPHONE_13_7 = 130700 };
enum { __IPHONE_14_0 = 140000 };
enum { __IPHONE_14_1 = 140100 };
enum { __IPHONE_14_2 = 140200 };
enum { __IPHONE_14_3 = 140300 };
enum { __IPHONE_14_4 = 140400 };
enum { __IPHONE_14_5 = 140500 };
enum { __IPHONE_14_6 = 140600 };
enum { __IPHONE_14_7 = 140700 };
enum { __IPHONE_14_8 = 140800 };
enum { __IPHONE_15_0 = 150000 };
enum { __IPHONE_15_1 = 150100 };
enum { __IPHONE_15_2 = 150200 };
enum { __IPHONE_15_3 = 150300 };
enum { __IPHONE_15_4 = 150400 };
enum { __IPHONE_15_5 = 150500 };
enum { __IPHONE_15_6 = 150600 };
enum { __IPHONE_15_7 = 150700 };
enum { __IPHONE_15_8 = 150800 };
enum { __IPHONE_16_0 = 160000 };
enum { __IPHONE_16_1 = 160100 };
enum { __IPHONE_16_2 = 160200 };
enum { __IPHONE_16_3 = 160300 };
enum { __IPHONE_16_4 = 160400 };
enum { __IPHONE_16_5 = 160500 };
enum { __IPHONE_16_6 = 160600 };
enum { __IPHONE_16_7 = 160700 };
enum { __IPHONE_17_0 = 170000 };
enum { __IPHONE_17_1 = 170100 };
enum { __IPHONE_17_2 = 170200 };
enum { __IPHONE_17_3 = 170300 };
enum { __IPHONE_17_4 = 170400 };
enum { __IPHONE_17_5 = 170500 };
enum { __IPHONE_18_0 = 180000 };
enum { __IPHONE_18_1 = 180100 };
enum { __IPHONE_18_2 = 180200 };
enum { __WATCHOS_1_0 = 10000 };
enum { __WATCHOS_2_0 = 20000 };
enum { __WATCHOS_2_1 = 20100 };
enum { __WATCHOS_2_2 = 20200 };
enum { __WATCHOS_3_0 = 30000 };
enum { __WATCHOS_3_1 = 30100 };
enum { __WATCHOS_3_1_1 = 30101 };
enum { __WATCHOS_3_2 = 30200 };
enum { __WATCHOS_4_0 = 40000 };
enum { __WATCHOS_4_1 = 40100 };
enum { __WATCHOS_4_2 = 40200 };
enum { __WATCHOS_4_3 = 40300 };
enum { __WATCHOS_5_0 = 50000 };
enum { __WATCHOS_5_1 = 50100 };
enum { __WATCHOS_5_2 = 50200 };
enum { __WATCHOS_5_3 = 50300 };
enum { __WATCHOS_6_0 = 60000 };
enum { __WATCHOS_6_1 = 60100 };
enum { __WATCHOS_6_2 = 60200 };
enum { __WATCHOS_7_0 = 70000 };
enum { __WATCHOS_7_1 = 70100 };
enum { __WATCHOS_7_2 = 70200 };
enum { __WATCHOS_7_3 = 70300 };
enum { __WATCHOS_7_4 = 70400 };
enum { __WATCHOS_7_5 = 70500 };
enum { __WATCHOS_7_6 = 70600 };
enum { __WATCHOS_8_0 = 80000 };
enum { __WATCHOS_8_1 = 80100 };
enum { __WATCHOS_8_3 = 80300 };
enum { __WATCHOS_8_4 = 80400 };
enum { __WATCHOS_8_5 = 80500 };
enum { __WATCHOS_8_6 = 80600 };
enum { __WATCHOS_8_7 = 80700 };
enum { __WATCHOS_8_8 = 80800 };
enum { __WATCHOS_9_0 = 90000 };
enum { __WATCHOS_9_1 = 90100 };
enum { __WATCHOS_9_2 = 90200 };
enum { __WATCHOS_9_3 = 90300 };
enum { __WATCHOS_9_4 = 90400 };
enum { __WATCHOS_9_5 = 90500 };
enum { __WATCHOS_9_6 = 90600 };
enum { __WATCHOS_10_0 = 100000 };
enum { __WATCHOS_10_1 = 100100 };
enum { __WATCHOS_10_2 = 100200 };
enum { __WATCHOS_10_3 = 100300 };
enum { __WATCHOS_10_4 = 100400 };
enum { __WATCHOS_10_5 = 100500 };
enum { __WATCHOS_11_0 = 110000 };
enum { __WATCHOS_11_1 = 110100 };
enum { __WATCHOS_11_2 = 110200 };
enum { __TVOS_9_0 = 90000 };
enum { __TVOS_9_1 = 90100 };
enum { __TVOS_9_2 = 90200 };
enum { __TVOS_10_0 = 100000 };
enum { __TVOS_10_0_1 = 100001 };
enum { __TVOS_10_1 = 100100 };
enum { __TVOS_10_2 = 100200 };
enum { __TVOS_11_0 = 110000 };
enum { __TVOS_11_1 = 110100 };
enum { __TVOS_11_2 = 110200 };
enum { __TVOS_11_3 = 110300 };
enum { __TVOS_11_4 = 110400 };
enum { __TVOS_12_0 = 120000 };
enum { __TVOS_12_1 = 120100 };
enum { __TVOS_12_2 = 120200 };
enum { __TVOS_12_3 = 120300 };
enum { __TVOS_12_4 = 120400 };
enum { __TVOS_13_0 = 130000 };
enum { __TVOS_13_2 = 130200 };
enum { __TVOS_13_3 = 130300 };
enum { __TVOS_13_4 = 130400 };
enum { __TVOS_14_0 = 140000 };
enum { __TVOS_14_1 = 140100 };
enum { __TVOS_14_2 = 140200 };
enum { __TVOS_14_3 = 140300 };
enum { __TVOS_14_5 = 140500 };
enum { __TVOS_14_6 = 140600 };
enum { __TVOS_14_7 = 140700 };
enum { __TVOS_15_0 = 150000 };
enum { __TVOS_15_1 = 150100 };
enum { __TVOS_15_2 = 150200 };
enum { __TVOS_15_3 = 150300 };
enum { __TVOS_15_4 = 150400 };
enum { __TVOS_15_5 = 150500 };
enum { __TVOS_15_6 = 150600 };
enum { __TVOS_16_0 = 160000 };
enum { __TVOS_16_1 = 160100 };
enum { __TVOS_16_2 = 160200 };
enum { __TVOS_16_3 = 160300 };
enum { __TVOS_16_4 = 160400 };
enum { __TVOS_16_5 = 160500 };
enum { __TVOS_16_6 = 160600 };
enum { __TVOS_17_0 = 170000 };
enum { __TVOS_17_1 = 170100 };
enum { __TVOS_17_2 = 170200 };
enum { __TVOS_17_3 = 170300 };
enum { __TVOS_17_4 = 170400 };
enum { __TVOS_17_5 = 170500 };
enum { __TVOS_18_0 = 180000 };
enum { __TVOS_18_1 = 180100 };
enum { __TVOS_18_2 = 180200 };
enum { __BRIDGEOS_2_0 = 20000 };
enum { __BRIDGEOS_3_0 = 30000 };
enum { __BRIDGEOS_3_1 = 30100 };
enum { __BRIDGEOS_3_4 = 30400 };
enum { __BRIDGEOS_4_0 = 40000 };
enum { __BRIDGEOS_4_1 = 40100 };
enum { __BRIDGEOS_5_0 = 50000 };
enum { __BRIDGEOS_5_1 = 50100 };
enum { __BRIDGEOS_5_3 = 50300 };
enum { __BRIDGEOS_6_0 = 60000 };
enum { __BRIDGEOS_6_2 = 60200 };
enum { __BRIDGEOS_6_4 = 60400 };
enum { __BRIDGEOS_6_5 = 60500 };
enum { __BRIDGEOS_6_6 = 60600 };
enum { __BRIDGEOS_7_0 = 70000 };
enum { __BRIDGEOS_7_1 = 70100 };
enum { __BRIDGEOS_7_2 = 70200 };
enum { __BRIDGEOS_7_3 = 70300 };
enum { __BRIDGEOS_7_4 = 70400 };
enum { __BRIDGEOS_7_6 = 70600 };
enum { __BRIDGEOS_8_0 = 80000 };
enum { __BRIDGEOS_8_1 = 80100 };
enum { __BRIDGEOS_8_2 = 80200 };
enum { __BRIDGEOS_8_3 = 80300 };
enum { __BRIDGEOS_8_4 = 80400 };
enum { __BRIDGEOS_8_5 = 80500 };
enum { __BRIDGEOS_9_0 = 90000 };
enum { __BRIDGEOS_9_1 = 90100 };
enum { __BRIDGEOS_9_2 = 90200 };
enum { __DRIVERKIT_19_0 = 190000 };
enum { __DRIVERKIT_20_0 = 200000 };
enum { __DRIVERKIT_21_0 = 210000 };
enum { __DRIVERKIT_22_0 = 220000 };
enum { __DRIVERKIT_22_4 = 220400 };
enum { __DRIVERKIT_22_5 = 220500 };
enum { __DRIVERKIT_22_6 = 220600 };
enum { __DRIVERKIT_23_0 = 230000 };
enum { __DRIVERKIT_23_1 = 230100 };
enum { __DRIVERKIT_23_2 = 230200 };
enum { __DRIVERKIT_23_3 = 230300 };
enum { __DRIVERKIT_23_4 = 230400 };
enum { __DRIVERKIT_23_5 = 230500 };
enum { __DRIVERKIT_24_0 = 240000 };
enum { __DRIVERKIT_24_1 = 240100 };
enum { __DRIVERKIT_24_2 = 240200 };
enum { __VISIONOS_1_0 = 10000 };
enum { __VISIONOS_1_1 = 10100 };
enum { __VISIONOS_1_2 = 10200 };
enum { __VISIONOS_2_0 = 20000 };
enum { __VISIONOS_2_1 = 20100 };
enum { __VISIONOS_2_2 = 20200 };
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
enum { MAC_OS_VERSION_14_5 = 140500 };
enum { MAC_OS_VERSION_15_0 = 150000 };
enum { MAC_OS_VERSION_15_1 = 150100 };
enum { MAC_OS_VERSION_15_2 = 150200 };
enum { __AVAILABILITY_INTERNAL__ = 1 };
enum { __MAC_OS_X_VERSION_MIN_REQUIRED = 140000 };
enum { __MAC_OS_X_VERSION_MAX_ALLOWED = 150200 };
/* #define __AVAILABILITY_INTERNAL_DEPRECATED __attribute__((deprecated)) ### define is not number */
/* #define __AVAILABILITY_INTERNAL_DEPRECATED_MSG (_msg) __attribute__((deprecated(_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL_UNAVAILABLE __attribute__((unavailable)) ### define is not number */
/* #define __AVAILABILITY_INTERNAL_WEAK_IMPORT __attribute__((weak_import)) ### define is not number */
enum { __AVAILABILITY_INTERNAL_REGULAR = 1 };
/* #define __API_AVAILABLE_PLATFORM_macos (x) macos,introduced=x ### define is not number */
/* #define __API_DEPRECATED_PLATFORM_macos (x,y) macos,introduced=x,deprecated=y ### define is not number */
/* #define __API_UNAVAILABLE_PLATFORM_macos macos,unavailable ### define is not number */
/* #define __API_AVAILABLE_PLATFORM_macosx (x) macos,introduced=x ### define is not number */
/* #define __API_DEPRECATED_PLATFORM_macosx (x,y) macos,introduced=x,deprecated=y ### define is not number */
/* #define __API_UNAVAILABLE_PLATFORM_macosx macos,unavailable ### define is not number */
/* #define __API_AVAILABLE_PLATFORM_ios (x) ios,introduced=x ### define is not number */
/* #define __API_DEPRECATED_PLATFORM_ios (x,y) ios,introduced=x,deprecated=y ### define is not number */
/* #define __API_UNAVAILABLE_PLATFORM_ios ios,unavailable ### define is not number */
/* #define __API_AVAILABLE_PLATFORM_macCatalyst (x) macCatalyst,introduced=x ### define is not number */
/* #define __API_DEPRECATED_PLATFORM_macCatalyst (x,y) macCatalyst,introduced=x,deprecated=y ### define is not number */
/* #define __API_UNAVAILABLE_PLATFORM_macCatalyst macCatalyst,unavailable ### define is not number */
/* #define __API_AVAILABLE_PLATFORM_watchos (x) watchos,introduced=x ### define is not number */
/* #define __API_DEPRECATED_PLATFORM_watchos (x,y) watchos,introduced=x,deprecated=y ### define is not number */
/* #define __API_UNAVAILABLE_PLATFORM_watchos watchos,unavailable ### define is not number */
/* #define __API_AVAILABLE_PLATFORM_tvos (x) tvos,introduced=x ### define is not number */
/* #define __API_DEPRECATED_PLATFORM_tvos (x,y) tvos,introduced=x,deprecated=y ### define is not number */
/* #define __API_UNAVAILABLE_PLATFORM_tvos tvos,unavailable ### define is not number */
/* #define __API_AVAILABLE_PLATFORM_driverkit (x) driverkit,introduced=x ### define is not number */
/* #define __API_DEPRECATED_PLATFORM_driverkit (x,y) driverkit,introduced=x,deprecated=y ### define is not number */
/* #define __API_UNAVAILABLE_PLATFORM_driverkit driverkit,unavailable ### define is not number */
/* #define __API_AVAILABLE_PLATFORM_visionos (x) visionos,introduced=x ### define is not number */
/* #define __API_DEPRECATED_PLATFORM_visionos (x,y) visionos,introduced=x,deprecated=y ### define is not number */
/* #define __API_UNAVAILABLE_PLATFORM_visionos visionos,unavailable ### define is not number */
/* #define __API_AVAILABLE_PLATFORM_xros (x) visionos,introduced=x ### define is not number */
/* #define __API_DEPRECATED_PLATFORM_xros (x,y) visionos,introduced=x,deprecated=y ### define is not number */
/* #define __API_UNAVAILABLE_PLATFORM_xros visionos,unavailable ### define is not number */
/* #define __API_APPLY_TO any(record, enum, enum_constant, function, objc_method, objc_category, objc_protocol, objc_interface, objc_property, type_alias, variable, field) ### define is not number */
/* #define __API_RANGE_STRINGIFY (x) __API_RANGE_STRINGIFY2(x) ### define is not number */
/* #define __API_RANGE_STRINGIFY2 (x) #x ### define is not number */
/* #define __API_A (x) __attribute__((availability(__API_AVAILABLE_PLATFORM_##x))) ### define is not number */
/* #define __API_AVAILABLE0 (arg0) __API_A(arg0) ### define is not number */
/* #define __API_AVAILABLE1 (arg0,arg1) __API_A(arg0) __API_A(arg1) ### define is not number */
/* #define __API_AVAILABLE2 (arg0,arg1,arg2) __API_A(arg0) __API_A(arg1) __API_A(arg2) ### define is not number */
/* #define __API_AVAILABLE3 (arg0,arg1,arg2,arg3) __API_A(arg0) __API_A(arg1) __API_A(arg2) __API_A(arg3) ### define is not number */
/* #define __API_AVAILABLE4 (arg0,arg1,arg2,arg3,arg4) __API_A(arg0) __API_A(arg1) __API_A(arg2) __API_A(arg3) __API_A(arg4) ### define is not number */
/* #define __API_AVAILABLE5 (arg0,arg1,arg2,arg3,arg4,arg5) __API_A(arg0) __API_A(arg1) __API_A(arg2) __API_A(arg3) __API_A(arg4) __API_A(arg5) ### define is not number */
/* #define __API_AVAILABLE6 (arg0,arg1,arg2,arg3,arg4,arg5,arg6) __API_A(arg0) __API_A(arg1) __API_A(arg2) __API_A(arg3) __API_A(arg4) __API_A(arg5) __API_A(arg6) ### define is not number */
/* #define __API_AVAILABLE7 (arg0,arg1,arg2,arg3,arg4,arg5,arg6,arg7) __API_A(arg0) __API_A(arg1) __API_A(arg2) __API_A(arg3) __API_A(arg4) __API_A(arg5) __API_A(arg6) __API_A(arg7) ### define is not number */
/* #define __API_AVAILABLE8 (arg0,arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8) __API_A(arg0) __API_A(arg1) __API_A(arg2) __API_A(arg3) __API_A(arg4) __API_A(arg5) __API_A(arg6) __API_A(arg7) __API_A(arg8) ### define is not number */
/* #define __API_AVAILABLE_GET_MACRO (_0,_1,_2,_3,_4,_5,_6,_7,_8,NAME,...) NAME ### define is not number */
/* #define __API_A_BEGIN (x) _Pragma(__API_RANGE_STRINGIFY (clang attribute (__attribute__((availability(__API_AVAILABLE_PLATFORM_##x))), apply_to = __API_APPLY_TO))) ### define is not number */
/* #define __API_AVAILABLE_BEGIN0 (arg0) __API_A_BEGIN(arg0) ### define is not number */
/* #define __API_AVAILABLE_BEGIN1 (arg0,arg1) __API_A_BEGIN(arg0) __API_A_BEGIN(arg1) ### define is not number */
/* #define __API_AVAILABLE_BEGIN2 (arg0,arg1,arg2) __API_A_BEGIN(arg0) __API_A_BEGIN(arg1) __API_A_BEGIN(arg2) ### define is not number */
/* #define __API_AVAILABLE_BEGIN3 (arg0,arg1,arg2,arg3) __API_A_BEGIN(arg0) __API_A_BEGIN(arg1) __API_A_BEGIN(arg2) __API_A_BEGIN(arg3) ### define is not number */
/* #define __API_AVAILABLE_BEGIN4 (arg0,arg1,arg2,arg3,arg4) __API_A_BEGIN(arg0) __API_A_BEGIN(arg1) __API_A_BEGIN(arg2) __API_A_BEGIN(arg3) __API_A_BEGIN(arg4) ### define is not number */
/* #define __API_AVAILABLE_BEGIN5 (arg0,arg1,arg2,arg3,arg4,arg5) __API_A_BEGIN(arg0) __API_A_BEGIN(arg1) __API_A_BEGIN(arg2) __API_A_BEGIN(arg3) __API_A_BEGIN(arg4) __API_A_BEGIN(arg5) ### define is not number */
/* #define __API_AVAILABLE_BEGIN6 (arg0,arg1,arg2,arg3,arg4,arg5,arg6) __API_A_BEGIN(arg0) __API_A_BEGIN(arg1) __API_A_BEGIN(arg2) __API_A_BEGIN(arg3) __API_A_BEGIN(arg4) __API_A_BEGIN(arg5) __API_A_BEGIN(arg6) ### define is not number */
/* #define __API_AVAILABLE_BEGIN7 (arg0,arg1,arg2,arg3,arg4,arg5,arg6,arg7) __API_A_BEGIN(arg0) __API_A_BEGIN(arg1) __API_A_BEGIN(arg2) __API_A_BEGIN(arg3) __API_A_BEGIN(arg4) __API_A_BEGIN(arg5) __API_A_BEGIN(arg6) __API_A_BEGIN(arg7) ### define is not number */
/* #define __API_AVAILABLE_BEGIN8 (arg0,arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8) __API_A_BEGIN(arg0) __API_A_BEGIN(arg1) __API_A_BEGIN(arg2) __API_A_BEGIN(arg3) __API_A_BEGIN(arg4) __API_A_BEGIN(arg5) __API_A_BEGIN(arg6) __API_A_BEGIN(arg7) __API_A_BEGIN(arg8) ### define is not number */
/* #define __API_AVAILABLE_BEGIN_GET_MACRO (_0,_1,_2,_3,_4,_5,_6,_7,_8,NAME,...) NAME ### define is not number */
/* #define __API_D (msg,x) __attribute__((availability(__API_DEPRECATED_PLATFORM_##x,message=msg))) ### define is not number */
/* #define __API_DEPRECATED_MSG0 (msg,arg0) __API_D(msg,arg0) ### define is not number */
/* #define __API_DEPRECATED_MSG1 (msg,arg0,arg1) __API_D(msg,arg0) __API_D(msg,arg1) ### define is not number */
/* #define __API_DEPRECATED_MSG2 (msg,arg0,arg1,arg2) __API_D(msg,arg0) __API_D(msg,arg1) __API_D(msg,arg2) ### define is not number */
/* #define __API_DEPRECATED_MSG3 (msg,arg0,arg1,arg2,arg3) __API_D(msg,arg0) __API_D(msg,arg1) __API_D(msg,arg2) __API_D(msg,arg3) ### define is not number */
/* #define __API_DEPRECATED_MSG4 (msg,arg0,arg1,arg2,arg3,arg4) __API_D(msg,arg0) __API_D(msg,arg1) __API_D(msg,arg2) __API_D(msg,arg3) __API_D(msg,arg4) ### define is not number */
/* #define __API_DEPRECATED_MSG5 (msg,arg0,arg1,arg2,arg3,arg4,arg5) __API_D(msg,arg0) __API_D(msg,arg1) __API_D(msg,arg2) __API_D(msg,arg3) __API_D(msg,arg4) __API_D(msg,arg5) ### define is not number */
/* #define __API_DEPRECATED_MSG6 (msg,arg0,arg1,arg2,arg3,arg4,arg5,arg6) __API_D(msg,arg0) __API_D(msg,arg1) __API_D(msg,arg2) __API_D(msg,arg3) __API_D(msg,arg4) __API_D(msg,arg5) __API_D(msg,arg6) ### define is not number */
/* #define __API_DEPRECATED_MSG7 (msg,arg0,arg1,arg2,arg3,arg4,arg5,arg6,arg7) __API_D(msg,arg0) __API_D(msg,arg1) __API_D(msg,arg2) __API_D(msg,arg3) __API_D(msg,arg4) __API_D(msg,arg5) __API_D(msg,arg6) __API_D(msg,arg7) ### define is not number */
/* #define __API_DEPRECATED_MSG8 (msg,arg0,arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8) __API_D(msg,arg0) __API_D(msg,arg1) __API_D(msg,arg2) __API_D(msg,arg3) __API_D(msg,arg4) __API_D(msg,arg5) __API_D(msg,arg6) __API_D(msg,arg7) __API_D(msg,arg8) ### define is not number */
/* #define __API_DEPRECATED_MSG_GET_MACRO (_0,_1,_2,_3,_4,_5,_6,_7,_8,_9,NAME,...) NAME ### define is not number */
/* #define __API_D_BEGIN (msg,x) _Pragma(__API_RANGE_STRINGIFY (clang attribute (__attribute__((availability(__API_DEPRECATED_PLATFORM_##x,message=msg))), apply_to = __API_APPLY_TO))) ### define is not number */
/* #define __API_DEPRECATED_BEGIN0 (msg,arg0) __API_D_BEGIN(msg,arg0) ### define is not number */
/* #define __API_DEPRECATED_BEGIN1 (msg,arg0,arg1) __API_D_BEGIN(msg,arg0) __API_D_BEGIN(msg,arg1) ### define is not number */
/* #define __API_DEPRECATED_BEGIN2 (msg,arg0,arg1,arg2) __API_D_BEGIN(msg,arg0) __API_D_BEGIN(msg,arg1) __API_D_BEGIN(msg,arg2) ### define is not number */
/* #define __API_DEPRECATED_BEGIN3 (msg,arg0,arg1,arg2,arg3) __API_D_BEGIN(msg,arg0) __API_D_BEGIN(msg,arg1) __API_D_BEGIN(msg,arg2) __API_D_BEGIN(msg,arg3) ### define is not number */
/* #define __API_DEPRECATED_BEGIN4 (msg,arg0,arg1,arg2,arg3,arg4) __API_D_BEGIN(msg,arg0) __API_D_BEGIN(msg,arg1) __API_D_BEGIN(msg,arg2) __API_D_BEGIN(msg,arg3) __API_D_BEGIN(msg,arg4) ### define is not number */
/* #define __API_DEPRECATED_BEGIN5 (msg,arg0,arg1,arg2,arg3,arg4,arg5) __API_D_BEGIN(msg,arg0) __API_D_BEGIN(msg,arg1) __API_D_BEGIN(msg,arg2) __API_D_BEGIN(msg,arg3) __API_D_BEGIN(msg,arg4) __API_D_BEGIN(msg,arg5) ### define is not number */
/* #define __API_DEPRECATED_BEGIN6 (msg,arg0,arg1,arg2,arg3,arg4,arg5,arg6) __API_D_BEGIN(msg,arg0) __API_D_BEGIN(msg,arg1) __API_D_BEGIN(msg,arg2) __API_D_BEGIN(msg,arg3) __API_D_BEGIN(msg,arg4) __API_D_BEGIN(msg,arg5) __API_D_BEGIN(msg,arg6) ### define is not number */
/* #define __API_DEPRECATED_BEGIN7 (msg,arg0,arg1,arg2,arg3,arg4,arg5,arg6,arg7) __API_D_BEGIN(msg,arg0) __API_D_BEGIN(msg,arg1) __API_D_BEGIN(msg,arg2) __API_D_BEGIN(msg,arg3) __API_D_BEGIN(msg,arg4) __API_D_BEGIN(msg,arg5) __API_D_BEGIN(msg,arg6) __API_D_BEGIN(msg,arg7) ### define is not number */
/* #define __API_DEPRECATED_BEGIN8 (msg,arg0,arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8) __API_D_BEGIN(msg,arg0) __API_D_BEGIN(msg,arg1) __API_D_BEGIN(msg,arg2) __API_D_BEGIN(msg,arg3) __API_D_BEGIN(msg,arg4) __API_D_BEGIN(msg,arg5) __API_D_BEGIN(msg,arg6) __API_D_BEGIN(msg,arg7) __API_D_BEGIN(msg,arg8) ### define is not number */
/* #define __API_DEPRECATED_BEGIN_GET_MACRO (_0,_1,_2,_3,_4,_5,_6,_7,_8,_9,NAME,...) NAME ### define is not number */
/* #define __API_R (rep,x) __attribute__((availability(__API_DEPRECATED_PLATFORM_##x,replacement=rep))) ### define is not number */
/* #define __API_DEPRECATED_REP0 (msg,arg0) __API_R(msg,arg0) ### define is not number */
/* #define __API_DEPRECATED_REP1 (msg,arg0,arg1) __API_R(msg,arg0) __API_R(msg,arg1) ### define is not number */
/* #define __API_DEPRECATED_REP2 (msg,arg0,arg1,arg2) __API_R(msg,arg0) __API_R(msg,arg1) __API_R(msg,arg2) ### define is not number */
/* #define __API_DEPRECATED_REP3 (msg,arg0,arg1,arg2,arg3) __API_R(msg,arg0) __API_R(msg,arg1) __API_R(msg,arg2) __API_R(msg,arg3) ### define is not number */
/* #define __API_DEPRECATED_REP4 (msg,arg0,arg1,arg2,arg3,arg4) __API_R(msg,arg0) __API_R(msg,arg1) __API_R(msg,arg2) __API_R(msg,arg3) __API_R(msg,arg4) ### define is not number */
/* #define __API_DEPRECATED_REP5 (msg,arg0,arg1,arg2,arg3,arg4,arg5) __API_R(msg,arg0) __API_R(msg,arg1) __API_R(msg,arg2) __API_R(msg,arg3) __API_R(msg,arg4) __API_R(msg,arg5) ### define is not number */
/* #define __API_DEPRECATED_REP6 (msg,arg0,arg1,arg2,arg3,arg4,arg5,arg6) __API_R(msg,arg0) __API_R(msg,arg1) __API_R(msg,arg2) __API_R(msg,arg3) __API_R(msg,arg4) __API_R(msg,arg5) __API_R(msg,arg6) ### define is not number */
/* #define __API_DEPRECATED_REP7 (msg,arg0,arg1,arg2,arg3,arg4,arg5,arg6,arg7) __API_R(msg,arg0) __API_R(msg,arg1) __API_R(msg,arg2) __API_R(msg,arg3) __API_R(msg,arg4) __API_R(msg,arg5) __API_R(msg,arg6) __API_R(msg,arg7) ### define is not number */
/* #define __API_DEPRECATED_REP8 (msg,arg0,arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8) __API_R(msg,arg0) __API_R(msg,arg1) __API_R(msg,arg2) __API_R(msg,arg3) __API_R(msg,arg4) __API_R(msg,arg5) __API_R(msg,arg6) __API_R(msg,arg7) __API_R(msg,arg8) ### define is not number */
/* #define __API_DEPRECATED_REP_GET_MACRO (_0,_1,_2,_3,_4,_5,_6,_7,_8,_9,NAME,...) NAME ### define is not number */
/* #define __API_R_BEGIN (rep,x) _Pragma(__API_RANGE_STRINGIFY (clang attribute (__attribute__((availability(__API_DEPRECATED_PLATFORM_##x,replacement=rep))), apply_to = __API_APPLY_TO))) ### define is not number */
/* #define __API_DEPRECATED_WITH_REPLACEMENT_BEGIN0 (msg,arg0) __API_R_BEGIN(msg,arg0) ### define is not number */
/* #define __API_DEPRECATED_WITH_REPLACEMENT_BEGIN1 (msg,arg0,arg1) __API_R_BEGIN(msg,arg0) __API_R_BEGIN(msg,arg1) ### define is not number */
/* #define __API_DEPRECATED_WITH_REPLACEMENT_BEGIN2 (msg,arg0,arg1,arg2) __API_R_BEGIN(msg,arg0) __API_R_BEGIN(msg,arg1) __API_R_BEGIN(msg,arg2) ### define is not number */
/* #define __API_DEPRECATED_WITH_REPLACEMENT_BEGIN3 (msg,arg0,arg1,arg2,arg3) __API_R_BEGIN(msg,arg0) __API_R_BEGIN(msg,arg1) __API_R_BEGIN(msg,arg2) __API_R_BEGIN(msg,arg3) ### define is not number */
/* #define __API_DEPRECATED_WITH_REPLACEMENT_BEGIN4 (msg,arg0,arg1,arg2,arg3,arg4) __API_R_BEGIN(msg,arg0) __API_R_BEGIN(msg,arg1) __API_R_BEGIN(msg,arg2) __API_R_BEGIN(msg,arg3) __API_R_BEGIN(msg,arg4) ### define is not number */
/* #define __API_DEPRECATED_WITH_REPLACEMENT_BEGIN5 (msg,arg0,arg1,arg2,arg3,arg4,arg5) __API_R_BEGIN(msg,arg0) __API_R_BEGIN(msg,arg1) __API_R_BEGIN(msg,arg2) __API_R_BEGIN(msg,arg3) __API_R_BEGIN(msg,arg4) __API_R_BEGIN(msg,arg5) ### define is not number */
/* #define __API_DEPRECATED_WITH_REPLACEMENT_BEGIN6 (msg,arg0,arg1,arg2,arg3,arg4,arg5,arg6) __API_R_BEGIN(msg,arg0) __API_R_BEGIN(msg,arg1) __API_R_BEGIN(msg,arg2) __API_R_BEGIN(msg,arg3) __API_R_BEGIN(msg,arg4) __API_R_BEGIN(msg,arg5) __API_R_BEGIN(msg,arg6) ### define is not number */
/* #define __API_DEPRECATED_WITH_REPLACEMENT_BEGIN7 (msg,arg0,arg1,arg2,arg3,arg4,arg5,arg6,arg7) __API_R_BEGIN(msg,arg0) __API_R_BEGIN(msg,arg1) __API_R_BEGIN(msg,arg2) __API_R_BEGIN(msg,arg3) __API_R_BEGIN(msg,arg4) __API_R_BEGIN(msg,arg5) __API_R_BEGIN(msg,arg6) __API_R_BEGIN(msg,arg7) ### define is not number */
/* #define __API_DEPRECATED_WITH_REPLACEMENT_BEGIN8 (msg,arg0,arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8) __API_R_BEGIN(msg,arg0) __API_R_BEGIN(msg,arg1) __API_R_BEGIN(msg,arg2) __API_R_BEGIN(msg,arg3) __API_R_BEGIN(msg,arg4) __API_R_BEGIN(msg,arg5) __API_R_BEGIN(msg,arg6) __API_R_BEGIN(msg,arg7) __API_R_BEGIN(msg,arg8) ### define is not number */
/* #define __API_DEPRECATED_WITH_REPLACEMENT_BEGIN_GET_MACRO (_0,_1,_2,_3,_4,_5,_6,_7,_8,_9,NAME,...) NAME ### define is not number */
/* #define __API_U (x) __attribute__((availability(__API_UNAVAILABLE_PLATFORM_##x))) ### define is not number */
/* #define __API_UNAVAILABLE0 (arg0) __API_U(arg0) ### define is not number */
/* #define __API_UNAVAILABLE1 (arg0,arg1) __API_U(arg0) __API_U(arg1) ### define is not number */
/* #define __API_UNAVAILABLE2 (arg0,arg1,arg2) __API_U(arg0) __API_U(arg1) __API_U(arg2) ### define is not number */
/* #define __API_UNAVAILABLE3 (arg0,arg1,arg2,arg3) __API_U(arg0) __API_U(arg1) __API_U(arg2) __API_U(arg3) ### define is not number */
/* #define __API_UNAVAILABLE4 (arg0,arg1,arg2,arg3,arg4) __API_U(arg0) __API_U(arg1) __API_U(arg2) __API_U(arg3) __API_U(arg4) ### define is not number */
/* #define __API_UNAVAILABLE5 (arg0,arg1,arg2,arg3,arg4,arg5) __API_U(arg0) __API_U(arg1) __API_U(arg2) __API_U(arg3) __API_U(arg4) __API_U(arg5) ### define is not number */
/* #define __API_UNAVAILABLE6 (arg0,arg1,arg2,arg3,arg4,arg5,arg6) __API_U(arg0) __API_U(arg1) __API_U(arg2) __API_U(arg3) __API_U(arg4) __API_U(arg5) __API_U(arg6) ### define is not number */
/* #define __API_UNAVAILABLE7 (arg0,arg1,arg2,arg3,arg4,arg5,arg6,arg7) __API_U(arg0) __API_U(arg1) __API_U(arg2) __API_U(arg3) __API_U(arg4) __API_U(arg5) __API_U(arg6) __API_U(arg7) ### define is not number */
/* #define __API_UNAVAILABLE8 (arg0,arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8) __API_U(arg0) __API_U(arg1) __API_U(arg2) __API_U(arg3) __API_U(arg4) __API_U(arg5) __API_U(arg6) __API_U(arg7) __API_U(arg8) ### define is not number */
/* #define __API_UNAVAILABLE_GET_MACRO (_0,_1,_2,_3,_4,_5,_6,_7,_8,NAME,...) NAME ### define is not number */
/* #define __API_U_BEGIN (x) _Pragma(__API_RANGE_STRINGIFY (clang attribute (__attribute__((availability(__API_UNAVAILABLE_PLATFORM_##x))), apply_to = __API_APPLY_TO))) ### define is not number */
/* #define __API_UNAVAILABLE_BEGIN0 (arg0) __API_U_BEGIN(arg0) ### define is not number */
/* #define __API_UNAVAILABLE_BEGIN1 (arg0,arg1) __API_U_BEGIN(arg0) __API_U_BEGIN(arg1) ### define is not number */
/* #define __API_UNAVAILABLE_BEGIN2 (arg0,arg1,arg2) __API_U_BEGIN(arg0) __API_U_BEGIN(arg1) __API_U_BEGIN(arg2) ### define is not number */
/* #define __API_UNAVAILABLE_BEGIN3 (arg0,arg1,arg2,arg3) __API_U_BEGIN(arg0) __API_U_BEGIN(arg1) __API_U_BEGIN(arg2) __API_U_BEGIN(arg3) ### define is not number */
/* #define __API_UNAVAILABLE_BEGIN4 (arg0,arg1,arg2,arg3,arg4) __API_U_BEGIN(arg0) __API_U_BEGIN(arg1) __API_U_BEGIN(arg2) __API_U_BEGIN(arg3) __API_U_BEGIN(arg4) ### define is not number */
/* #define __API_UNAVAILABLE_BEGIN5 (arg0,arg1,arg2,arg3,arg4,arg5) __API_U_BEGIN(arg0) __API_U_BEGIN(arg1) __API_U_BEGIN(arg2) __API_U_BEGIN(arg3) __API_U_BEGIN(arg4) __API_U_BEGIN(arg5) ### define is not number */
/* #define __API_UNAVAILABLE_BEGIN6 (arg0,arg1,arg2,arg3,arg4,arg5,arg6) __API_U_BEGIN(arg0) __API_U_BEGIN(arg1) __API_U_BEGIN(arg2) __API_U_BEGIN(arg3) __API_U_BEGIN(arg4) __API_U_BEGIN(arg5) __API_U_BEGIN(arg6) ### define is not number */
/* #define __API_UNAVAILABLE_BEGIN7 (arg0,arg1,arg2,arg3,arg4,arg5,arg6,arg7) __API_U_BEGIN(arg0) __API_U_BEGIN(arg1) __API_U_BEGIN(arg2) __API_U_BEGIN(arg3) __API_U_BEGIN(arg4) __API_U_BEGIN(arg5) __API_U_BEGIN(arg6) __API_U_BEGIN(arg7) ### define is not number */
/* #define __API_UNAVAILABLE_BEGIN8 (arg0,arg1,arg2,arg3,arg4,arg5,arg6,arg7,arg8) __API_U_BEGIN(arg0) __API_U_BEGIN(arg1) __API_U_BEGIN(arg2) __API_U_BEGIN(arg3) __API_U_BEGIN(arg4) __API_U_BEGIN(arg5) __API_U_BEGIN(arg6) __API_U_BEGIN(arg7) __API_U_BEGIN(arg8) ### define is not number */
/* #define __API_UNAVAILABLE_BEGIN_GET_MACRO (_0,_1,_2,_3,_4,_5,_6,_7,_8,NAME,...) NAME ### define is not number */
/* #define __swift_compiler_version_at_least (...) 1 ### define is not number */
enum { __AVAILABILITY_INTERNAL_LEGACY__ = 1 };
enum { __ENABLE_LEGACY_MAC_AVAILABILITY = 1 };
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_1 __attribute__((availability(macosx,introduced=10.1,deprecated=10.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10 __attribute__((availability(macosx,introduced=10.1,deprecated=10.10))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_2 __attribute__((availability(macosx,introduced=10.1,deprecated=10.10.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.1,deprecated=10.10.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_3 __attribute__((availability(macosx,introduced=10.1,deprecated=10.10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.1,deprecated=10.10.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_10_MSG (_msg) __attribute__((availability(macosx,introduced=10.1,deprecated=10.10,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11 __attribute__((availability(macosx,introduced=10.1,deprecated=10.11))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_2 __attribute__((availability(macosx,introduced=10.1,deprecated=10.11.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.1,deprecated=10.11.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_3 __attribute__((availability(macosx,introduced=10.1,deprecated=10.11.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.1,deprecated=10.11.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_4 __attribute__((availability(macosx,introduced=10.1,deprecated=10.11.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.1,deprecated=10.11.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_11_MSG (_msg) __attribute__((availability(macosx,introduced=10.1,deprecated=10.11,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12 __attribute__((availability(macosx,introduced=10.1,deprecated=10.12))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_1 __attribute__((availability(macosx,introduced=10.1,deprecated=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_1_MSG (_msg) __attribute__((availability(macosx,introduced=10.1,deprecated=10.12.1,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_2 __attribute__((availability(macosx,introduced=10.1,deprecated=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.1,deprecated=10.12.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.1,deprecated=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.1,deprecated=10.12.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_12_MSG (_msg) __attribute__((availability(macosx,introduced=10.1,deprecated=10.12,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_1_MSG (_msg) __attribute__((availability(macosx,introduced=10.1,deprecated=10.1,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_2 __attribute__((availability(macosx,introduced=10.1,deprecated=10.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.1,deprecated=10.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_3 __attribute__((availability(macosx,introduced=10.1,deprecated=10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.1,deprecated=10.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_4 __attribute__((availability(macosx,introduced=10.1,deprecated=10.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.1,deprecated=10.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_5 __attribute__((availability(macosx,introduced=10.1,deprecated=10.5))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_5_MSG (_msg) __attribute__((availability(macosx,introduced=10.1,deprecated=10.5,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_6 __attribute__((availability(macosx,introduced=10.1,deprecated=10.6))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_6_MSG (_msg) __attribute__((availability(macosx,introduced=10.1,deprecated=10.6,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_7 __attribute__((availability(macosx,introduced=10.1,deprecated=10.7))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_7_MSG (_msg) __attribute__((availability(macosx,introduced=10.1,deprecated=10.7,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_8 __attribute__((availability(macosx,introduced=10.1,deprecated=10.8))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_8_MSG (_msg) __attribute__((availability(macosx,introduced=10.1,deprecated=10.8,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_9 __attribute__((availability(macosx,introduced=10.1,deprecated=10.9))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_10_9_MSG (_msg) __attribute__((availability(macosx,introduced=10.1,deprecated=10.9,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_NA __attribute__((availability(macosx,introduced=10.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,introduced=10.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2 __attribute__((availability(macosx,introduced=10.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_1 __attribute__((availability(macosx,introduced=10.2,deprecated=10.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10 __attribute__((availability(macosx,introduced=10.2,deprecated=10.10))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_2 __attribute__((availability(macosx,introduced=10.2,deprecated=10.10.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.2,deprecated=10.10.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_3 __attribute__((availability(macosx,introduced=10.2,deprecated=10.10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.2,deprecated=10.10.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_10_MSG (_msg) __attribute__((availability(macosx,introduced=10.2,deprecated=10.10,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11 __attribute__((availability(macosx,introduced=10.2,deprecated=10.11))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_2 __attribute__((availability(macosx,introduced=10.2,deprecated=10.11.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.2,deprecated=10.11.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_3 __attribute__((availability(macosx,introduced=10.2,deprecated=10.11.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.2,deprecated=10.11.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_4 __attribute__((availability(macosx,introduced=10.2,deprecated=10.11.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.2,deprecated=10.11.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_11_MSG (_msg) __attribute__((availability(macosx,introduced=10.2,deprecated=10.11,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12 __attribute__((availability(macosx,introduced=10.2,deprecated=10.12))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_1 __attribute__((availability(macosx,introduced=10.2,deprecated=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_1_MSG (_msg) __attribute__((availability(macosx,introduced=10.2,deprecated=10.12.1,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_2 __attribute__((availability(macosx,introduced=10.2,deprecated=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.2,deprecated=10.12.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.2,deprecated=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.2,deprecated=10.12.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_12_MSG (_msg) __attribute__((availability(macosx,introduced=10.2,deprecated=10.12,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_13 __attribute__((availability(macosx,introduced=10.2,deprecated=10.13))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_2 __attribute__((availability(macosx,introduced=10.2,deprecated=10.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.2,deprecated=10.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_3 __attribute__((availability(macosx,introduced=10.2,deprecated=10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.2,deprecated=10.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_4 __attribute__((availability(macosx,introduced=10.2,deprecated=10.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.2,deprecated=10.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_5 __attribute__((availability(macosx,introduced=10.2,deprecated=10.5))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_5_MSG (_msg) __attribute__((availability(macosx,introduced=10.2,deprecated=10.5,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_6 __attribute__((availability(macosx,introduced=10.2,deprecated=10.6))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_6_MSG (_msg) __attribute__((availability(macosx,introduced=10.2,deprecated=10.6,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_7 __attribute__((availability(macosx,introduced=10.2,deprecated=10.7))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_7_MSG (_msg) __attribute__((availability(macosx,introduced=10.2,deprecated=10.7,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_8 __attribute__((availability(macosx,introduced=10.2,deprecated=10.8))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_8_MSG (_msg) __attribute__((availability(macosx,introduced=10.2,deprecated=10.8,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_9 __attribute__((availability(macosx,introduced=10.2,deprecated=10.9))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_10_9_MSG (_msg) __attribute__((availability(macosx,introduced=10.2,deprecated=10.9,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_NA __attribute__((availability(macosx,introduced=10.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_2_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,introduced=10.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3 __attribute__((availability(macosx,introduced=10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_1 __attribute__((availability(macosx,introduced=10.3,deprecated=10.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10 __attribute__((availability(macosx,introduced=10.3,deprecated=10.10))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_2 __attribute__((availability(macosx,introduced=10.3,deprecated=10.10.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.3,deprecated=10.10.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_3 __attribute__((availability(macosx,introduced=10.3,deprecated=10.10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.3,deprecated=10.10.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_10_MSG (_msg) __attribute__((availability(macosx,introduced=10.3,deprecated=10.10,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11 __attribute__((availability(macosx,introduced=10.3,deprecated=10.11))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_2 __attribute__((availability(macosx,introduced=10.3,deprecated=10.11.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.3,deprecated=10.11.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_3 __attribute__((availability(macosx,introduced=10.3,deprecated=10.11.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.3,deprecated=10.11.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_4 __attribute__((availability(macosx,introduced=10.3,deprecated=10.11.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.3,deprecated=10.11.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_11_MSG (_msg) __attribute__((availability(macosx,introduced=10.3,deprecated=10.11,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12 __attribute__((availability(macosx,introduced=10.3,deprecated=10.12))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_1 __attribute__((availability(macosx,introduced=10.3,deprecated=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_1_MSG (_msg) __attribute__((availability(macosx,introduced=10.3,deprecated=10.12.1,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_2 __attribute__((availability(macosx,introduced=10.3,deprecated=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.3,deprecated=10.12.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.3,deprecated=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.3,deprecated=10.12.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_12_MSG (_msg) __attribute__((availability(macosx,introduced=10.3,deprecated=10.12,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_13 __attribute__((availability(macosx,introduced=10.3,deprecated=10.13))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_3 __attribute__((availability(macosx,introduced=10.3,deprecated=10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.3,deprecated=10.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_4 __attribute__((availability(macosx,introduced=10.3,deprecated=10.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.3,deprecated=10.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_5 __attribute__((availability(macosx,introduced=10.3,deprecated=10.5))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_5_MSG (_msg) __attribute__((availability(macosx,introduced=10.3,deprecated=10.5,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_6 __attribute__((availability(macosx,introduced=10.3,deprecated=10.6))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_6_MSG (_msg) __attribute__((availability(macosx,introduced=10.3,deprecated=10.6,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_7 __attribute__((availability(macosx,introduced=10.3,deprecated=10.7))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_7_MSG (_msg) __attribute__((availability(macosx,introduced=10.3,deprecated=10.7,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_8 __attribute__((availability(macosx,introduced=10.3,deprecated=10.8))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_8_MSG (_msg) __attribute__((availability(macosx,introduced=10.3,deprecated=10.8,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_9 __attribute__((availability(macosx,introduced=10.3,deprecated=10.9))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_10_9_MSG (_msg) __attribute__((availability(macosx,introduced=10.3,deprecated=10.9,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_NA __attribute__((availability(macosx,introduced=10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_3_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,introduced=10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4 __attribute__((availability(macosx,introduced=10.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_1 __attribute__((availability(macosx,introduced=10.4,deprecated=10.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10 __attribute__((availability(macosx,introduced=10.4,deprecated=10.10))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_2 __attribute__((availability(macosx,introduced=10.4,deprecated=10.10.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.4,deprecated=10.10.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_3 __attribute__((availability(macosx,introduced=10.4,deprecated=10.10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.4,deprecated=10.10.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_10_MSG (_msg) __attribute__((availability(macosx,introduced=10.4,deprecated=10.10,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11 __attribute__((availability(macosx,introduced=10.4,deprecated=10.11))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_2 __attribute__((availability(macosx,introduced=10.4,deprecated=10.11.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.4,deprecated=10.11.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_3 __attribute__((availability(macosx,introduced=10.4,deprecated=10.11.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.4,deprecated=10.11.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_4 __attribute__((availability(macosx,introduced=10.4,deprecated=10.11.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.4,deprecated=10.11.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_11_MSG (_msg) __attribute__((availability(macosx,introduced=10.4,deprecated=10.11,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12 __attribute__((availability(macosx,introduced=10.4,deprecated=10.12))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_1 __attribute__((availability(macosx,introduced=10.4,deprecated=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_1_MSG (_msg) __attribute__((availability(macosx,introduced=10.4,deprecated=10.12.1,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_2 __attribute__((availability(macosx,introduced=10.4,deprecated=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.4,deprecated=10.12.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.4,deprecated=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.4,deprecated=10.12.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_12_MSG (_msg) __attribute__((availability(macosx,introduced=10.4,deprecated=10.12,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_13 __attribute__((availability(macosx,introduced=10.4,deprecated=10.13))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_4 __attribute__((availability(macosx,introduced=10.4,deprecated=10.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.4,deprecated=10.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_5 __attribute__((availability(macosx,introduced=10.4,deprecated=10.5))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_5_MSG (_msg) __attribute__((availability(macosx,introduced=10.4,deprecated=10.5,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_6 __attribute__((availability(macosx,introduced=10.4,deprecated=10.6))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_6_MSG (_msg) __attribute__((availability(macosx,introduced=10.4,deprecated=10.6,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_7 __attribute__((availability(macosx,introduced=10.4,deprecated=10.7))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_7_MSG (_msg) __attribute__((availability(macosx,introduced=10.4,deprecated=10.7,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_8 __attribute__((availability(macosx,introduced=10.4,deprecated=10.8))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_8_MSG (_msg) __attribute__((availability(macosx,introduced=10.4,deprecated=10.8,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_9 __attribute__((availability(macosx,introduced=10.4,deprecated=10.9))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_10_9_MSG (_msg) __attribute__((availability(macosx,introduced=10.4,deprecated=10.9,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_NA __attribute__((availability(macosx,introduced=10.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_4_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,introduced=10.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5 __attribute__((availability(macosx,introduced=10.5))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEPRECATED__MAC_10_7 __attribute__((availability(macosx,introduced=10.5.DEPRECATED..MAC.10.7))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_1 __attribute__((availability(macosx,introduced=10.5,deprecated=10.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10 __attribute__((availability(macosx,introduced=10.5,deprecated=10.10))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_2 __attribute__((availability(macosx,introduced=10.5,deprecated=10.10.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.5,deprecated=10.10.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_3 __attribute__((availability(macosx,introduced=10.5,deprecated=10.10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.5,deprecated=10.10.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_10_MSG (_msg) __attribute__((availability(macosx,introduced=10.5,deprecated=10.10,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11 __attribute__((availability(macosx,introduced=10.5,deprecated=10.11))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_2 __attribute__((availability(macosx,introduced=10.5,deprecated=10.11.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.5,deprecated=10.11.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_3 __attribute__((availability(macosx,introduced=10.5,deprecated=10.11.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.5,deprecated=10.11.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_4 __attribute__((availability(macosx,introduced=10.5,deprecated=10.11.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.5,deprecated=10.11.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_11_MSG (_msg) __attribute__((availability(macosx,introduced=10.5,deprecated=10.11,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12 __attribute__((availability(macosx,introduced=10.5,deprecated=10.12))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_1 __attribute__((availability(macosx,introduced=10.5,deprecated=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_1_MSG (_msg) __attribute__((availability(macosx,introduced=10.5,deprecated=10.12.1,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_2 __attribute__((availability(macosx,introduced=10.5,deprecated=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.5,deprecated=10.12.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.5,deprecated=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.5,deprecated=10.12.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_12_MSG (_msg) __attribute__((availability(macosx,introduced=10.5,deprecated=10.12,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_5 __attribute__((availability(macosx,introduced=10.5,deprecated=10.5))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_5_MSG (_msg) __attribute__((availability(macosx,introduced=10.5,deprecated=10.5,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_6 __attribute__((availability(macosx,introduced=10.5,deprecated=10.6))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_6_MSG (_msg) __attribute__((availability(macosx,introduced=10.5,deprecated=10.6,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_7 __attribute__((availability(macosx,introduced=10.5,deprecated=10.7))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_7_MSG (_msg) __attribute__((availability(macosx,introduced=10.5,deprecated=10.7,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_8 __attribute__((availability(macosx,introduced=10.5,deprecated=10.8))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_8_MSG (_msg) __attribute__((availability(macosx,introduced=10.5,deprecated=10.8,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_9 __attribute__((availability(macosx,introduced=10.5,deprecated=10.9))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_10_9_MSG (_msg) __attribute__((availability(macosx,introduced=10.5,deprecated=10.9,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_NA __attribute__((availability(macosx,introduced=10.5))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_5_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,introduced=10.5))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6 __attribute__((availability(macosx,introduced=10.6))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_1 __attribute__((availability(macosx,introduced=10.6,deprecated=10.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10 __attribute__((availability(macosx,introduced=10.6,deprecated=10.10))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_2 __attribute__((availability(macosx,introduced=10.6,deprecated=10.10.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.6,deprecated=10.10.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_3 __attribute__((availability(macosx,introduced=10.6,deprecated=10.10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.6,deprecated=10.10.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_10_MSG (_msg) __attribute__((availability(macosx,introduced=10.6,deprecated=10.10,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11 __attribute__((availability(macosx,introduced=10.6,deprecated=10.11))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_2 __attribute__((availability(macosx,introduced=10.6,deprecated=10.11.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.6,deprecated=10.11.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_3 __attribute__((availability(macosx,introduced=10.6,deprecated=10.11.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.6,deprecated=10.11.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_4 __attribute__((availability(macosx,introduced=10.6,deprecated=10.11.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.6,deprecated=10.11.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_11_MSG (_msg) __attribute__((availability(macosx,introduced=10.6,deprecated=10.11,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12 __attribute__((availability(macosx,introduced=10.6,deprecated=10.12))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_1 __attribute__((availability(macosx,introduced=10.6,deprecated=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_1_MSG (_msg) __attribute__((availability(macosx,introduced=10.6,deprecated=10.12.1,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_2 __attribute__((availability(macosx,introduced=10.6,deprecated=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.6,deprecated=10.12.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.6,deprecated=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.6,deprecated=10.12.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_12_MSG (_msg) __attribute__((availability(macosx,introduced=10.6,deprecated=10.12,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_13 __attribute__((availability(macosx,introduced=10.6,deprecated=10.13))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_6 __attribute__((availability(macosx,introduced=10.6,deprecated=10.6))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_6_MSG (_msg) __attribute__((availability(macosx,introduced=10.6,deprecated=10.6,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_7 __attribute__((availability(macosx,introduced=10.6,deprecated=10.7))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_7_MSG (_msg) __attribute__((availability(macosx,introduced=10.6,deprecated=10.7,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_8 __attribute__((availability(macosx,introduced=10.6,deprecated=10.8))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_8_MSG (_msg) __attribute__((availability(macosx,introduced=10.6,deprecated=10.8,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_9 __attribute__((availability(macosx,introduced=10.6,deprecated=10.9))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_10_9_MSG (_msg) __attribute__((availability(macosx,introduced=10.6,deprecated=10.9,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_NA __attribute__((availability(macosx,introduced=10.6))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_6_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,introduced=10.6))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7 __attribute__((availability(macosx,introduced=10.7))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_1 __attribute__((availability(macosx,introduced=10.7,deprecated=10.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10 __attribute__((availability(macosx,introduced=10.7,deprecated=10.10))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_2 __attribute__((availability(macosx,introduced=10.7,deprecated=10.10.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.7,deprecated=10.10.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_3 __attribute__((availability(macosx,introduced=10.7,deprecated=10.10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.7,deprecated=10.10.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_10_MSG (_msg) __attribute__((availability(macosx,introduced=10.7,deprecated=10.10,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11 __attribute__((availability(macosx,introduced=10.7,deprecated=10.11))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_2 __attribute__((availability(macosx,introduced=10.7,deprecated=10.11.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.7,deprecated=10.11.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_3 __attribute__((availability(macosx,introduced=10.7,deprecated=10.11.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.7,deprecated=10.11.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_4 __attribute__((availability(macosx,introduced=10.7,deprecated=10.11.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.7,deprecated=10.11.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_11_MSG (_msg) __attribute__((availability(macosx,introduced=10.7,deprecated=10.11,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12 __attribute__((availability(macosx,introduced=10.7,deprecated=10.12))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_1 __attribute__((availability(macosx,introduced=10.7,deprecated=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_1_MSG (_msg) __attribute__((availability(macosx,introduced=10.7,deprecated=10.12.1,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_2 __attribute__((availability(macosx,introduced=10.7,deprecated=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.7,deprecated=10.12.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.7,deprecated=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.7,deprecated=10.12.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_12_MSG (_msg) __attribute__((availability(macosx,introduced=10.7,deprecated=10.12,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_13_2 __attribute__((availability(macosx,introduced=10.7,deprecated=10.13.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_7 __attribute__((availability(macosx,introduced=10.7,deprecated=10.7))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_7_MSG (_msg) __attribute__((availability(macosx,introduced=10.7,deprecated=10.7,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_8 __attribute__((availability(macosx,introduced=10.7,deprecated=10.8))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_8_MSG (_msg) __attribute__((availability(macosx,introduced=10.7,deprecated=10.8,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_9 __attribute__((availability(macosx,introduced=10.7,deprecated=10.9))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_10_9_MSG (_msg) __attribute__((availability(macosx,introduced=10.7,deprecated=10.9,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_NA __attribute__((availability(macosx,introduced=10.7))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_7_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,introduced=10.7))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8 __attribute__((availability(macosx,introduced=10.8))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_1 __attribute__((availability(macosx,introduced=10.8,deprecated=10.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10 __attribute__((availability(macosx,introduced=10.8,deprecated=10.10))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_2 __attribute__((availability(macosx,introduced=10.8,deprecated=10.10.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.8,deprecated=10.10.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_3 __attribute__((availability(macosx,introduced=10.8,deprecated=10.10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.8,deprecated=10.10.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_10_MSG (_msg) __attribute__((availability(macosx,introduced=10.8,deprecated=10.10,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11 __attribute__((availability(macosx,introduced=10.8,deprecated=10.11))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_2 __attribute__((availability(macosx,introduced=10.8,deprecated=10.11.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.8,deprecated=10.11.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_3 __attribute__((availability(macosx,introduced=10.8,deprecated=10.11.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.8,deprecated=10.11.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_4 __attribute__((availability(macosx,introduced=10.8,deprecated=10.11.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.8,deprecated=10.11.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_11_MSG (_msg) __attribute__((availability(macosx,introduced=10.8,deprecated=10.11,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12 __attribute__((availability(macosx,introduced=10.8,deprecated=10.12))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_1 __attribute__((availability(macosx,introduced=10.8,deprecated=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_1_MSG (_msg) __attribute__((availability(macosx,introduced=10.8,deprecated=10.12.1,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_2 __attribute__((availability(macosx,introduced=10.8,deprecated=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.8,deprecated=10.12.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.8,deprecated=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.8,deprecated=10.12.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_12_MSG (_msg) __attribute__((availability(macosx,introduced=10.8,deprecated=10.12,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_13 __attribute__((availability(macosx,introduced=10.8,deprecated=10.13))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_8 __attribute__((availability(macosx,introduced=10.8,deprecated=10.8))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_8_MSG (_msg) __attribute__((availability(macosx,introduced=10.8,deprecated=10.8,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_9 __attribute__((availability(macosx,introduced=10.8,deprecated=10.9))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_10_9_MSG (_msg) __attribute__((availability(macosx,introduced=10.8,deprecated=10.9,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_NA __attribute__((availability(macosx,introduced=10.8))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_8_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,introduced=10.8))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9 __attribute__((availability(macosx,introduced=10.9))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_1 __attribute__((availability(macosx,introduced=10.9,deprecated=10.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10 __attribute__((availability(macosx,introduced=10.9,deprecated=10.10))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_2 __attribute__((availability(macosx,introduced=10.9,deprecated=10.10.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.9,deprecated=10.10.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_3 __attribute__((availability(macosx,introduced=10.9,deprecated=10.10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.9,deprecated=10.10.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_10_MSG (_msg) __attribute__((availability(macosx,introduced=10.9,deprecated=10.10,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11 __attribute__((availability(macosx,introduced=10.9,deprecated=10.11))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_2 __attribute__((availability(macosx,introduced=10.9,deprecated=10.11.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.9,deprecated=10.11.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_3 __attribute__((availability(macosx,introduced=10.9,deprecated=10.11.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.9,deprecated=10.11.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_4 __attribute__((availability(macosx,introduced=10.9,deprecated=10.11.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.9,deprecated=10.11.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_11_MSG (_msg) __attribute__((availability(macosx,introduced=10.9,deprecated=10.11,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12 __attribute__((availability(macosx,introduced=10.9,deprecated=10.12))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_1 __attribute__((availability(macosx,introduced=10.9,deprecated=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_1_MSG (_msg) __attribute__((availability(macosx,introduced=10.9,deprecated=10.12.1,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_2 __attribute__((availability(macosx,introduced=10.9,deprecated=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.9,deprecated=10.12.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.9,deprecated=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.9,deprecated=10.12.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_12_MSG (_msg) __attribute__((availability(macosx,introduced=10.9,deprecated=10.12,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_13 __attribute__((availability(macosx,introduced=10.9,deprecated=10.13))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_14 __attribute__((availability(macosx,introduced=10.9,deprecated=10.14))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_9 __attribute__((availability(macosx,introduced=10.9,deprecated=10.9))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_10_9_MSG (_msg) __attribute__((availability(macosx,introduced=10.9,deprecated=10.9,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_NA __attribute__((availability(macosx,introduced=10.9))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_9_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,introduced=10.9))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0 __attribute__((availability(macosx,introduced=10.0))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_0 __attribute__((availability(macosx,introduced=10.0,deprecated=10.0))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_0_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.0,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_1 __attribute__((availability(macosx,introduced=10.0,deprecated=10.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10 __attribute__((availability(macosx,introduced=10.0,deprecated=10.10))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_2 __attribute__((availability(macosx,introduced=10.0,deprecated=10.10.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.10.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_3 __attribute__((availability(macosx,introduced=10.0,deprecated=10.10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.10.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_10_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.10,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11 __attribute__((availability(macosx,introduced=10.0,deprecated=10.11))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_2 __attribute__((availability(macosx,introduced=10.0,deprecated=10.11.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.11.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_3 __attribute__((availability(macosx,introduced=10.0,deprecated=10.11.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.11.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_4 __attribute__((availability(macosx,introduced=10.0,deprecated=10.11.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.11.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_11_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.11,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12 __attribute__((availability(macosx,introduced=10.0,deprecated=10.12))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_1 __attribute__((availability(macosx,introduced=10.0,deprecated=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_1_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.12.1,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_2 __attribute__((availability(macosx,introduced=10.0,deprecated=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.12.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.0,deprecated=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.12.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_12_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.12,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_13 __attribute__((availability(macosx,introduced=10.0,deprecated=10.13))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_1_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.1,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_2 __attribute__((availability(macosx,introduced=10.0,deprecated=10.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_3 __attribute__((availability(macosx,introduced=10.0,deprecated=10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_4 __attribute__((availability(macosx,introduced=10.0,deprecated=10.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_5 __attribute__((availability(macosx,introduced=10.0,deprecated=10.5))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_5_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.5,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_6 __attribute__((availability(macosx,introduced=10.0,deprecated=10.6))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_6_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.6,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_7 __attribute__((availability(macosx,introduced=10.0,deprecated=10.7))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_7_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.7,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_8 __attribute__((availability(macosx,introduced=10.0,deprecated=10.8))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_8_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.8,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_9 __attribute__((availability(macosx,introduced=10.0,deprecated=10.9))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_9_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.9,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_10_13_MSG (_msg) __attribute__((availability(macosx,introduced=10.0,deprecated=10.13,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_NA __attribute__((availability(macosx,introduced=10.0))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_0_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,introduced=10.0))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_1 __attribute__((availability(macosx,introduced=10.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10 __attribute__((availability(macosx,introduced=10.10))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2 __attribute__((availability(macosx,introduced=10.10.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_2 __attribute__((availability(macosx,introduced=10.10.2,deprecated=10.10.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.10.2,deprecated=10.10.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_3 __attribute__((availability(macosx,introduced=10.10.2,deprecated=10.10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_10_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.10.2,deprecated=10.10.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11 __attribute__((availability(macosx,introduced=10.10.2,deprecated=10.11))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_2 __attribute__((availability(macosx,introduced=10.10.2,deprecated=10.11.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.10.2,deprecated=10.11.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_3 __attribute__((availability(macosx,introduced=10.10.2,deprecated=10.11.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.10.2,deprecated=10.11.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_4 __attribute__((availability(macosx,introduced=10.10.2,deprecated=10.11.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.10.2,deprecated=10.11.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_11_MSG (_msg) __attribute__((availability(macosx,introduced=10.10.2,deprecated=10.11,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12 __attribute__((availability(macosx,introduced=10.10.2,deprecated=10.12))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_1 __attribute__((availability(macosx,introduced=10.10.2,deprecated=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_1_MSG (_msg) __attribute__((availability(macosx,introduced=10.10.2,deprecated=10.12.1,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_2 __attribute__((availability(macosx,introduced=10.10.2,deprecated=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.10.2,deprecated=10.12.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.10.2,deprecated=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.10.2,deprecated=10.12.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_10_12_MSG (_msg) __attribute__((availability(macosx,introduced=10.10.2,deprecated=10.12,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_NA __attribute__((availability(macosx,introduced=10.10.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_2_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,introduced=10.10.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_3 __attribute__((availability(macosx,introduced=10.10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_10_3 __attribute__((availability(macosx,introduced=10.10.3,deprecated=10.10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_10_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.10.3,deprecated=10.10.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11 __attribute__((availability(macosx,introduced=10.10.3,deprecated=10.11))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_2 __attribute__((availability(macosx,introduced=10.10.3,deprecated=10.11.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.10.3,deprecated=10.11.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_3 __attribute__((availability(macosx,introduced=10.10.3,deprecated=10.11.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.10.3,deprecated=10.11.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_4 __attribute__((availability(macosx,introduced=10.10.3,deprecated=10.11.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.10.3,deprecated=10.11.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_11_MSG (_msg) __attribute__((availability(macosx,introduced=10.10.3,deprecated=10.11,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12 __attribute__((availability(macosx,introduced=10.10.3,deprecated=10.12))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_1 __attribute__((availability(macosx,introduced=10.10.3,deprecated=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_1_MSG (_msg) __attribute__((availability(macosx,introduced=10.10.3,deprecated=10.12.1,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_2 __attribute__((availability(macosx,introduced=10.10.3,deprecated=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.10.3,deprecated=10.12.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.10.3,deprecated=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.10.3,deprecated=10.12.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_10_12_MSG (_msg) __attribute__((availability(macosx,introduced=10.10.3,deprecated=10.12,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_NA __attribute__((availability(macosx,introduced=10.10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_3_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,introduced=10.10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_1 __attribute__((availability(macosx,introduced=10.10,deprecated=10.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10 __attribute__((availability(macosx,introduced=10.10,deprecated=10.10))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_2 __attribute__((availability(macosx,introduced=10.10,deprecated=10.10.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.10,deprecated=10.10.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_3 __attribute__((availability(macosx,introduced=10.10,deprecated=10.10.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.10,deprecated=10.10.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_10_MSG (_msg) __attribute__((availability(macosx,introduced=10.10,deprecated=10.10,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11 __attribute__((availability(macosx,introduced=10.10,deprecated=10.11))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_2 __attribute__((availability(macosx,introduced=10.10,deprecated=10.11.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.10,deprecated=10.11.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_3 __attribute__((availability(macosx,introduced=10.10,deprecated=10.11.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.10,deprecated=10.11.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_4 __attribute__((availability(macosx,introduced=10.10,deprecated=10.11.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.10,deprecated=10.11.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_11_MSG (_msg) __attribute__((availability(macosx,introduced=10.10,deprecated=10.11,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12 __attribute__((availability(macosx,introduced=10.10,deprecated=10.12))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_1 __attribute__((availability(macosx,introduced=10.10,deprecated=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_1_MSG (_msg) __attribute__((availability(macosx,introduced=10.10,deprecated=10.12.1,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_2 __attribute__((availability(macosx,introduced=10.10,deprecated=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.10,deprecated=10.12.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.10,deprecated=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.10,deprecated=10.12.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_12_MSG (_msg) __attribute__((availability(macosx,introduced=10.10,deprecated=10.12,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13 __attribute__((availability(macosx,introduced=10.10,deprecated=10.13))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13_MSG (_msg) __attribute__((availability(macosx,introduced=10.10,deprecated=10.13,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_10_13_4 __attribute__((availability(macosx,introduced=10.10,deprecated=10.13.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_NA __attribute__((availability(macosx,introduced=10.10))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_10_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,introduced=10.10))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11 __attribute__((availability(macosx,introduced=10.11))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_2 __attribute__((availability(macosx,introduced=10.11.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_2 __attribute__((availability(macosx,introduced=10.11.2,deprecated=10.11.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.11.2,deprecated=10.11.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_3 __attribute__((availability(macosx,introduced=10.11.2,deprecated=10.11.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.11.2,deprecated=10.11.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_4 __attribute__((availability(macosx,introduced=10.11.2,deprecated=10.11.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_11_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.11.2,deprecated=10.11.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12 __attribute__((availability(macosx,introduced=10.11.2,deprecated=10.12))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_1 __attribute__((availability(macosx,introduced=10.11.2,deprecated=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_1_MSG (_msg) __attribute__((availability(macosx,introduced=10.11.2,deprecated=10.12.1,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_2 __attribute__((availability(macosx,introduced=10.11.2,deprecated=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.11.2,deprecated=10.12.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.11.2,deprecated=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.11.2,deprecated=10.12.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_10_12_MSG (_msg) __attribute__((availability(macosx,introduced=10.11.2,deprecated=10.12,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_NA __attribute__((availability(macosx,introduced=10.11.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_2_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,introduced=10.11.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_3 __attribute__((availability(macosx,introduced=10.11.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_3 __attribute__((availability(macosx,introduced=10.11.3,deprecated=10.11.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.11.3,deprecated=10.11.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_4 __attribute__((availability(macosx,introduced=10.11.3,deprecated=10.11.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_11_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.11.3,deprecated=10.11.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12 __attribute__((availability(macosx,introduced=10.11.3,deprecated=10.12))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_1 __attribute__((availability(macosx,introduced=10.11.3,deprecated=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_1_MSG (_msg) __attribute__((availability(macosx,introduced=10.11.3,deprecated=10.12.1,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_2 __attribute__((availability(macosx,introduced=10.11.3,deprecated=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.11.3,deprecated=10.12.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.11.3,deprecated=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.11.3,deprecated=10.12.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_10_12_MSG (_msg) __attribute__((availability(macosx,introduced=10.11.3,deprecated=10.12,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_NA __attribute__((availability(macosx,introduced=10.11.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_3_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,introduced=10.11.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_4 __attribute__((availability(macosx,introduced=10.11.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_11_4 __attribute__((availability(macosx,introduced=10.11.4,deprecated=10.11.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_11_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.11.4,deprecated=10.11.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12 __attribute__((availability(macosx,introduced=10.11.4,deprecated=10.12))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_1 __attribute__((availability(macosx,introduced=10.11.4,deprecated=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_1_MSG (_msg) __attribute__((availability(macosx,introduced=10.11.4,deprecated=10.12.1,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_2 __attribute__((availability(macosx,introduced=10.11.4,deprecated=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.11.4,deprecated=10.12.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.11.4,deprecated=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.11.4,deprecated=10.12.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_10_12_MSG (_msg) __attribute__((availability(macosx,introduced=10.11.4,deprecated=10.12,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_NA __attribute__((availability(macosx,introduced=10.11.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_4_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,introduced=10.11.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_1 __attribute__((availability(macosx,introduced=10.11,deprecated=10.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11 __attribute__((availability(macosx,introduced=10.11,deprecated=10.11))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_2 __attribute__((availability(macosx,introduced=10.11,deprecated=10.11.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.11,deprecated=10.11.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_3 __attribute__((availability(macosx,introduced=10.11,deprecated=10.11.3))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_3_MSG (_msg) __attribute__((availability(macosx,introduced=10.11,deprecated=10.11.3,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_4 __attribute__((availability(macosx,introduced=10.11,deprecated=10.11.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.11,deprecated=10.11.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_11_MSG (_msg) __attribute__((availability(macosx,introduced=10.11,deprecated=10.11,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12 __attribute__((availability(macosx,introduced=10.11,deprecated=10.12))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_1 __attribute__((availability(macosx,introduced=10.11,deprecated=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_1_MSG (_msg) __attribute__((availability(macosx,introduced=10.11,deprecated=10.12.1,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_2 __attribute__((availability(macosx,introduced=10.11,deprecated=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.11,deprecated=10.12.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.11,deprecated=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.11,deprecated=10.12.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_10_12_MSG (_msg) __attribute__((availability(macosx,introduced=10.11,deprecated=10.12,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_NA __attribute__((availability(macosx,introduced=10.11))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_11_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,introduced=10.11))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12 __attribute__((availability(macosx,introduced=10.12))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_1 __attribute__((availability(macosx,introduced=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_1 __attribute__((availability(macosx,introduced=10.12.1,deprecated=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_1_MSG (_msg) __attribute__((availability(macosx,introduced=10.12.1,deprecated=10.12.1,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_2 __attribute__((availability(macosx,introduced=10.12.1,deprecated=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.12.1,deprecated=10.12.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.12.1,deprecated=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_10_12_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.12.1,deprecated=10.12.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_NA __attribute__((availability(macosx,introduced=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_1_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,introduced=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_2 __attribute__((availability(macosx,introduced=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_2 __attribute__((availability(macosx,introduced=10.12.2,deprecated=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.12.2,deprecated=10.12.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.12.2,deprecated=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_10_12_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.12.2,deprecated=10.12.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_NA __attribute__((availability(macosx,introduced=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_2_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,introduced=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.12.4,deprecated=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_10_12_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.12.4,deprecated=10.12.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_NA __attribute__((availability(macosx,introduced=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_4_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,introduced=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12 __attribute__((availability(macosx,introduced=10.12,deprecated=10.12))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_1 __attribute__((availability(macosx,introduced=10.12,deprecated=10.12.1))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_1_MSG (_msg) __attribute__((availability(macosx,introduced=10.12,deprecated=10.12.1,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_2 __attribute__((availability(macosx,introduced=10.12,deprecated=10.12.2))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_2_MSG (_msg) __attribute__((availability(macosx,introduced=10.12,deprecated=10.12.2,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_4 __attribute__((availability(macosx,introduced=10.12,deprecated=10.12.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_4_MSG (_msg) __attribute__((availability(macosx,introduced=10.12,deprecated=10.12.4,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_12_MSG (_msg) __attribute__((availability(macosx,introduced=10.12,deprecated=10.12,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13 __attribute__((availability(macosx,introduced=10.12,deprecated=10.13))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13_MSG (_msg) __attribute__((availability(macosx,introduced=10.12,deprecated=10.13,message=_msg))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_13_4 __attribute__((availability(macosx,introduced=10.12,deprecated=10.13.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_10_14 __attribute__((availability(macosx,introduced=10.12,deprecated=10.14))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_NA __attribute__((availability(macosx,introduced=10.12))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_12_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,introduced=10.12))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_13 __attribute__((availability(macosx,introduced=10.13))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_13_4 __attribute__((availability(macosx,introduced=10.13.4))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_14 __attribute__((availability(macosx,introduced=10.14))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_14_DEP__MAC_10_14 __attribute__((availability(macosx,introduced=10.14,deprecated=10.14))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_10_15 __attribute__((availability(macosx,introduced=10.15))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_NA __attribute__((availability(macosx,unavailable))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_NA_DEP__MAC_NA __attribute__((availability(macosx,unavailable))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__MAC_NA_DEP__MAC_NA_MSG (_msg) __attribute__((availability(macosx,unavailable))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__IPHONE_NA __attribute__((availability(ios,unavailable))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__IPHONE_NA__IPHONE_NA __attribute__((availability(ios,unavailable))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__IPHONE_NA_DEP__IPHONE_NA __attribute__((availability(ios,unavailable))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__IPHONE_NA_DEP__IPHONE_NA_MSG (_msg) __attribute__((availability(ios,unavailable))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION __attribute__((availability(ios,unavailable))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION_DEP__IPHONE_COMPAT_VERSION __attribute__((availability(ios,unavailable))) ### define is not number */
/* #define __AVAILABILITY_INTERNAL__IPHONE_COMPAT_VERSION_DEP__IPHONE_COMPAT_VERSION_MSG (_msg) __attribute__((availability(ios,unavailable))) ### define is not number */
/* #define __OSX_AVAILABLE_STARTING (_osx,_ios) __AVAILABILITY_INTERNAL##_osx ### define is not number */
/* #define __OSX_AVAILABLE_BUT_DEPRECATED (_osxIntro,_osxDep,_iosIntro,_iosDep) __AVAILABILITY_INTERNAL##_osxIntro##_DEP##_osxDep ### define is not number */
/* #define __OSX_AVAILABLE_BUT_DEPRECATED_MSG (_osxIntro,_osxDep,_iosIntro,_iosDep,_msg) __AVAILABILITY_INTERNAL##_osxIntro##_DEP##_osxDep##_MSG(_msg) ### define is not number */
/* #define __OS_AVAILABILITY (_target,_availability) __attribute__((availability(_target,_availability))) ### define is not number */
/* #define __OS_AVAILABILITY_MSG (_target,_availability,_msg) __attribute__((availability(_target,_availability,message=_msg))) ### define is not number */
/* #define __OSX_EXTENSION_UNAVAILABLE (_msg) __OS_AVAILABILITY_MSG(macosx_app_extension,unavailable,_msg) ### define is not number */
/* #define __IOS_EXTENSION_UNAVAILABLE (_msg) __OS_AVAILABILITY_MSG(ios_app_extension,unavailable,_msg) ### define is not number */
/* #define __OS_EXTENSION_UNAVAILABLE (_msg) __OSX_EXTENSION_UNAVAILABLE(_msg) __IOS_EXTENSION_UNAVAILABLE(_msg) ### define is not number */
/* #define __OSX_UNAVAILABLE __OS_AVAILABILITY(macosx,unavailable) ### define is not number */
/* #define __OSX_AVAILABLE (_vers) __OS_AVAILABILITY(macosx,introduced=_vers) ### define is not number */
/* #define __OSX_DEPRECATED (_start,_dep,_msg) __OSX_AVAILABLE(_start) __OS_AVAILABILITY_MSG(macosx,deprecated=_dep,_msg) ### define is not number */
/* #define __IOS_UNAVAILABLE __OS_AVAILABILITY(ios,unavailable) ### define is not number */
/* #define __IOS_PROHIBITED __OS_AVAILABILITY(ios,unavailable) ### define is not number */
/* #define __IOS_AVAILABLE (_vers) __OS_AVAILABILITY(ios,introduced=_vers) ### define is not number */
/* #define __IOS_DEPRECATED (_start,_dep,_msg) __IOS_AVAILABLE(_start) __OS_AVAILABILITY_MSG(ios,deprecated=_dep,_msg) ### define is not number */
/* #define __TVOS_UNAVAILABLE __OS_AVAILABILITY(tvos,unavailable) ### define is not number */
/* #define __TVOS_PROHIBITED __OS_AVAILABILITY(tvos,unavailable) ### define is not number */
/* #define __TVOS_AVAILABLE (_vers) __OS_AVAILABILITY(tvos,introduced=_vers) ### define is not number */
/* #define __TVOS_DEPRECATED (_start,_dep,_msg) __TVOS_AVAILABLE(_start) __OS_AVAILABILITY_MSG(tvos,deprecated=_dep,_msg) ### define is not number */
/* #define __WATCHOS_UNAVAILABLE __OS_AVAILABILITY(watchos,unavailable) ### define is not number */
/* #define __WATCHOS_PROHIBITED __OS_AVAILABILITY(watchos,unavailable) ### define is not number */
/* #define __WATCHOS_AVAILABLE (_vers) __OS_AVAILABILITY(watchos,introduced=_vers) ### define is not number */
/* #define __WATCHOS_DEPRECATED (_start,_dep,_msg) __WATCHOS_AVAILABLE(_start) __OS_AVAILABILITY_MSG(watchos,deprecated=_dep,_msg) ### define is not number */
/* #define __SWIFT_UNAVAILABLE __OS_AVAILABILITY(swift,unavailable) ### define is not number */
/* #define __SWIFT_UNAVAILABLE_MSG (_msg) __OS_AVAILABILITY_MSG(swift,unavailable,_msg) ### define is not number */
/* #define __API_AVAILABLE (...) __API_AVAILABLE_GET_MACRO(__VA_ARGS__,__API_AVAILABLE8,__API_AVAILABLE7,__API_AVAILABLE6,__API_AVAILABLE5,__API_AVAILABLE4,__API_AVAILABLE3,__API_AVAILABLE2,__API_AVAILABLE1,__API_AVAILABLE0,0)(__VA_ARGS__) ### define is not number */
/* #define __API_AVAILABLE_BEGIN (...) _Pragma("clang attribute push") __API_AVAILABLE_BEGIN_GET_MACRO(__VA_ARGS__,__API_AVAILABLE_BEGIN8,__API_AVAILABLE_BEGIN7,__API_AVAILABLE_BEGIN6,__API_AVAILABLE_BEGIN5,__API_AVAILABLE_BEGIN4,__API_AVAILABLE_BEGIN3,__API_AVAILABLE_BEGIN2,__API_AVAILABLE_BEGIN1,__API_AVAILABLE_BEGIN0,0)(__VA_ARGS__) ### define is not number */
/* #define __API_AVAILABLE_END _Pragma("clang attribute pop") ### define is not number */
/* #define __API_DEPRECATED (...) __API_DEPRECATED_MSG_GET_MACRO(__VA_ARGS__,__API_DEPRECATED_MSG8,__API_DEPRECATED_MSG7,__API_DEPRECATED_MSG6,__API_DEPRECATED_MSG5,__API_DEPRECATED_MSG4,__API_DEPRECATED_MSG3,__API_DEPRECATED_MSG2,__API_DEPRECATED_MSG1,__API_DEPRECATED_MSG0,0,0)(__VA_ARGS__) ### define is not number */
/* #define __API_DEPRECATED_WITH_REPLACEMENT (...) __API_DEPRECATED_REP_GET_MACRO(__VA_ARGS__,__API_DEPRECATED_REP8,__API_DEPRECATED_REP7,__API_DEPRECATED_REP6,__API_DEPRECATED_REP5,__API_DEPRECATED_REP4,__API_DEPRECATED_REP3,__API_DEPRECATED_REP2,__API_DEPRECATED_REP1,__API_DEPRECATED_REP0,0,0)(__VA_ARGS__) ### define is not number */
/* #define __API_DEPRECATED_BEGIN (...) _Pragma("clang attribute push") __API_DEPRECATED_BEGIN_GET_MACRO(__VA_ARGS__,__API_DEPRECATED_BEGIN8,__API_DEPRECATED_BEGIN7,__API_DEPRECATED_BEGIN6,__API_DEPRECATED_BEGIN5,__API_DEPRECATED_BEGIN4,__API_DEPRECATED_BEGIN3,__API_DEPRECATED_BEGIN2,__API_DEPRECATED_BEGIN1,__API_DEPRECATED_BEGIN0,0,0)(__VA_ARGS__) ### define is not number */
/* #define __API_DEPRECATED_END _Pragma("clang attribute pop") ### define is not number */
/* #define __API_DEPRECATED_WITH_REPLACEMENT_BEGIN (...) _Pragma("clang attribute push") __API_DEPRECATED_WITH_REPLACEMENT_BEGIN_GET_MACRO(__VA_ARGS__,__API_DEPRECATED_WITH_REPLACEMENT_BEGIN8,__API_DEPRECATED_WITH_REPLACEMENT_BEGIN7,__API_DEPRECATED_WITH_REPLACEMENT_BEGIN6,__API_DEPRECATED_WITH_REPLACEMENT_BEGIN5,__API_DEPRECATED_WITH_REPLACEMENT_BEGIN4,__API_DEPRECATED_WITH_REPLACEMENT_BEGIN3,__API_DEPRECATED_WITH_REPLACEMENT_BEGIN2,__API_DEPRECATED_WITH_REPLACEMENT_BEGIN1,__API_DEPRECATED_WITH_REPLACEMENT_BEGIN0,0,0)(__VA_ARGS__) ### define is not number */
/* #define __API_DEPRECATED_WITH_REPLACEMENT_END _Pragma("clang attribute pop") ### define is not number */
/* #define __API_UNAVAILABLE (...) __API_UNAVAILABLE_GET_MACRO(__VA_ARGS__,__API_UNAVAILABLE8,__API_UNAVAILABLE7,__API_UNAVAILABLE6,__API_UNAVAILABLE5,__API_UNAVAILABLE4,__API_UNAVAILABLE3,__API_UNAVAILABLE2,__API_UNAVAILABLE1,__API_UNAVAILABLE0,0)(__VA_ARGS__) ### define is not number */
/* #define __API_UNAVAILABLE_BEGIN (...) _Pragma("clang attribute push") __API_UNAVAILABLE_BEGIN_GET_MACRO(__VA_ARGS__,__API_UNAVAILABLE_BEGIN8,__API_UNAVAILABLE_BEGIN7,__API_UNAVAILABLE_BEGIN6,__API_UNAVAILABLE_BEGIN5,__API_UNAVAILABLE_BEGIN4,__API_UNAVAILABLE_BEGIN3,__API_UNAVAILABLE_BEGIN2,__API_UNAVAILABLE_BEGIN1,__API_UNAVAILABLE_BEGIN0,0)(__VA_ARGS__) ### define is not number */
/* #define __API_UNAVAILABLE_END _Pragma("clang attribute pop") ### define is not number */
/* #define __SPI_AVAILABLE (...)  ### define is not number */
/* #define __SPI_AVAILABLE_BEGIN (...)  ### define is not number */
/* #define __SPI_AVAILABLE_END (...)  ### define is not number */
/* #define __SPI_DEPRECATED (...)  ### define is not number */
/* #define __SPI_DEPRECATED_WITH_REPLACEMENT (...)  ### define is not number */
/* + END <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
]]
