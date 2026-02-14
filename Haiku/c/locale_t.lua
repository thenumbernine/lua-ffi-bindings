local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <locale_t.h> /boot/system/develop/headers/posix/locale_t.h */
typedef void* locale_t;
enum { _LOCALE_T_H_ = 1 };
/* + END <locale_t.h> /boot/system/develop/headers/posix/locale_t.h */
]]
