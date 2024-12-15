local ffi = require 'ffi'

ffi.cdef[[
/* ++++ BEGIN /usr/include/ctype.h */
/* +++++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* +++++ END   /usr/include/features.h */
/* +++++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* +++++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
/* +++++ BEGIN /usr/include/x86_64-linux-gnu/bits/endian.h */
]] require 'ffi.req' 'c.bits.endian' ffi.cdef[[
/* +++++ END   /usr/include/x86_64-linux-gnu/bits/endian.h */
/* enum { _ISupper = ((0) < 8 ? ((1 << (0)) << 8) : ((1 << (0)) >> 8)) ,
	_ISlower = ((1) < 8 ? ((1 << (1)) << 8) : ((1 << (1)) >> 8)) ,
	_ISalpha = ((2) < 8 ? ((1 << (2)) << 8) : ((1 << (2)) >> 8)) ,
	_ISdigit = ((3) < 8 ? ((1 << (3)) << 8) : ((1 << (3)) >> 8)) ,
	_ISxdigit = ((4) < 8 ? ((1 << (4)) << 8) : ((1 << (4)) >> 8)) ,
	_ISspace = ((5) < 8 ? ((1 << (5)) << 8) : ((1 << (5)) >> 8)) ,
	_ISprint = ((6) < 8 ? ((1 << (6)) << 8) : ((1 << (6)) >> 8)) ,
	_ISgraph = ((7) < 8 ? ((1 << (7)) << 8) : ((1 << (7)) >> 8)) ,
	_ISblank = ((8) < 8 ? ((1 << (8)) << 8) : ((1 << (8)) >> 8)) ,
	_IScntrl = ((9) < 8 ? ((1 << (9)) << 8) : ((1 << (9)) >> 8)) ,
	_ISpunct = ((10) < 8 ? ((1 << (10)) << 8) : ((1 << (10)) >> 8)) ,
	_ISalnum = ((11) < 8 ? ((1 << (11)) << 8) : ((1 << (11)) >> 8)) }; */
extern const unsigned short int **__ctype_b_loc (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern const __int32_t **__ctype_tolower_loc (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern const __int32_t **__ctype_toupper_loc (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern int isalnum (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isalpha (int) __attribute__ ((__nothrow__ , __leaf__));
extern int iscntrl (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isdigit (int) __attribute__ ((__nothrow__ , __leaf__));
extern int islower (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isgraph (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isprint (int) __attribute__ ((__nothrow__ , __leaf__));
extern int ispunct (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isspace (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isupper (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isxdigit (int) __attribute__ ((__nothrow__ , __leaf__));
extern int tolower (int __c) __attribute__ ((__nothrow__ , __leaf__));
extern int toupper (int __c) __attribute__ ((__nothrow__ , __leaf__));
extern int isblank (int) __attribute__ ((__nothrow__ , __leaf__));
extern int isascii (int __c) __attribute__ ((__nothrow__ , __leaf__));
extern int toascii (int __c) __attribute__ ((__nothrow__ , __leaf__));
extern int _toupper (int) __attribute__ ((__nothrow__ , __leaf__));
extern int _tolower (int) __attribute__ ((__nothrow__ , __leaf__));
/* +++++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/locale_t.h */
]] require 'ffi.req' 'c.bits.types.locale_t' ffi.cdef[[
/* +++++ END   /usr/include/x86_64-linux-gnu/bits/types/locale_t.h */
extern int isalnum_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isalpha_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int iscntrl_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isdigit_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int islower_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isgraph_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isprint_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int ispunct_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isspace_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isupper_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isxdigit_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int isblank_l (int, locale_t) __attribute__ ((__nothrow__ , __leaf__));
extern int __tolower_l (int __c, locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
extern int tolower_l (int __c, locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
extern int __toupper_l (int __c, locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
extern int toupper_l (int __c, locale_t __l) __attribute__ ((__nothrow__ , __leaf__));
/* ++++ END   /usr/include/ctype.h */
]]
