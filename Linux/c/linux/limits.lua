local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/linux/limits.h */
enum { NR_OPEN = 1024 };
enum { NGROUPS_MAX = 65536 };
enum { ARG_MAX = 131072 };
enum { LINK_MAX = 127 };
enum { MAX_CANON = 255 };
enum { MAX_INPUT = 255 };
enum { NAME_MAX = 255 };
enum { PATH_MAX = 4096 };
enum { PIPE_BUF = 4096 };
enum { XATTR_NAME_MAX = 255 };
enum { XATTR_SIZE_MAX = 65536 };
enum { XATTR_LIST_MAX = 65536 };
enum { RTSIG_MAX = 32 };
/* + END   /usr/include/linux/limits.h */
]]
