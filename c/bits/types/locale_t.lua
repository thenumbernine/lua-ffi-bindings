local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/locale_t.h */
enum { _BITS_TYPES_LOCALE_T_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/__locale_t.h */
enum { _BITS_TYPES___LOCALE_T_H = 1 };
struct __locale_struct { struct __locale_data *__locales[13];
const unsigned short int *__ctype_b;
const int *__ctype_tolower;
const int *__ctype_toupper;
const char *__names[13];
};
typedef struct __locale_struct *__locale_t;
/* END /usr/include/x86_64-1-gnu/bits/types/__locale_t.h */
typedef __locale_t locale_t;
/* END /usr/include/x86_64-1-gnu/bits/types/locale_t.h */
]]
