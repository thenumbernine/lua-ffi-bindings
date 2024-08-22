local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/syslimits.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++ BEGIN /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* +++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* ++ END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
enum { ARG_MAX = 1048576 };
enum { CHILD_MAX = 266 };
enum { GID_MAX = 2147483647 };
enum { LINK_MAX = 32767 };
enum { MAX_CANON = 1024 };
enum { MAX_INPUT = 1024 };
enum { NAME_MAX = 255 };
enum { NGROUPS_MAX = 16 };
enum { UID_MAX = 2147483647 };
enum { OPEN_MAX = 10240 };
enum { PATH_MAX = 1024 };
enum { PIPE_BUF = 512 };
enum { BC_BASE_MAX = 99 };
enum { BC_DIM_MAX = 2048 };
enum { BC_SCALE_MAX = 99 };
enum { BC_STRING_MAX = 1000 };
enum { CHARCLASS_NAME_MAX = 14 };
enum { COLL_WEIGHTS_MAX = 2 };
enum { EQUIV_CLASS_MAX = 2 };
enum { EXPR_NEST_MAX = 32 };
enum { LINE_MAX = 2048 };
enum { RE_DUP_MAX = 255 };
enum { NZERO = 20 };
/* + END   /Library/Developer/CommandLineTools/SDKs/MacOSX.sdk/usr/include/sys/syslimits.h */
]]
