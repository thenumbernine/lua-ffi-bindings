local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
/* ++ BEGIN <AvailabilityVersions.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityVersions.h */
/* ++ END <AvailabilityVersions.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityVersions.h */
/* ++ BEGIN <AvailabilityInternal.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h */
/* ++ END <AvailabilityInternal.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternal.h */
/* ++ BEGIN <AvailabilityInternalLegacy.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h */
/* ++ END <AvailabilityInternalLegacy.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/AvailabilityInternalLegacy.h */
/* + END <Availability.h> /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/Availability.h */
enum { __AVAILABILITY__ = 1 };
enum { __API_TO_BE_DEPRECATED = 100000 };
enum { __API_TO_BE_DEPRECATED_MACOS = 100000 };
enum { __API_TO_BE_DEPRECATED_IOS = 100000 };
enum { __API_TO_BE_DEPRECATED_MACCATALYST = 100000 };
enum { __API_TO_BE_DEPRECATED_WATCHOS = 100000 };
enum { __API_TO_BE_DEPRECATED_TVOS = 100000 };
enum { __API_TO_BE_DEPRECATED_DRIVERKIT = 100000 };
enum { __API_TO_BE_DEPRECATED_VISIONOS = 100000 };
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
]]
