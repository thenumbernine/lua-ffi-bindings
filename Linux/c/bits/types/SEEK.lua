local ffi = require 'ffi'
ffi.cdef[[
enum { SEEK_SET = 0 };
enum { SEEK_CUR = 1 };
enum { SEEK_END = 2 };
enum { R_OK = 4 };
enum { W_OK = 2 };
enum { X_OK = 1 };
enum { F_OK = 0 };
enum { F_ULOCK = 0 };
enum { F_LOCK = 1 };
enum { F_TLOCK = 2 };
enum { F_TEST = 3 };
]]
