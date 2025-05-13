local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <ctype.h> /usr/include/ctype.h */
/* ++ BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /usr/include/features.h */
/* ++ BEGIN <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END <bits/types.h> /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++ BEGIN <bits/endian.h> /usr/include/x86_64-linux-gnu/bits/endian.h */
]] require 'ffi.req' 'c.bits.endian' ffi.cdef[[
/* ++ END <bits/endian.h> /usr/include/x86_64-linux-gnu/bits/endian.h */
enum
{
  _ISupper = ((0) < 8 ? ((1 << (0)) << 8) : ((1 << (0)) >> 8)),
  _ISlower = ((1) < 8 ? ((1 << (1)) << 8) : ((1 << (1)) >> 8)),
  _ISalpha = ((2) < 8 ? ((1 << (2)) << 8) : ((1 << (2)) >> 8)),
  _ISdigit = ((3) < 8 ? ((1 << (3)) << 8) : ((1 << (3)) >> 8)),
  _ISxdigit = ((4) < 8 ? ((1 << (4)) << 8) : ((1 << (4)) >> 8)),
  _ISspace = ((5) < 8 ? ((1 << (5)) << 8) : ((1 << (5)) >> 8)),
  _ISprint = ((6) < 8 ? ((1 << (6)) << 8) : ((1 << (6)) >> 8)),
  _ISgraph = ((7) < 8 ? ((1 << (7)) << 8) : ((1 << (7)) >> 8)),
  _ISblank = ((8) < 8 ? ((1 << (8)) << 8) : ((1 << (8)) >> 8)),
  _IScntrl = ((9) < 8 ? ((1 << (9)) << 8) : ((1 << (9)) >> 8)),
  _ISpunct = ((10) < 8 ? ((1 << (10)) << 8) : ((1 << (10)) >> 8)),
  _ISalnum = ((11) < 8 ? ((1 << (11)) << 8) : ((1 << (11)) >> 8))
};
extern const unsigned short int **__ctype_b_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern const __int32_t **__ctype_tolower_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
extern const __int32_t **__ctype_toupper_loc (void)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
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
/* ++ BEGIN <bits/types/locale_t.h> /usr/include/x86_64-linux-gnu/bits/types/locale_t.h */
]] require 'ffi.req' 'c.bits.types.locale_t' ffi.cdef[[
/* ++ END <bits/types/locale_t.h> /usr/include/x86_64-linux-gnu/bits/types/locale_t.h */
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
/* #define _ISbit (bit) ((bit) < 8 ? ((1 << (bit)) << 8) : ((1 << (bit)) >> 8)) ### define is not number */
/* #define __isctype (c,type) ((*__ctype_b_loc ())[(int) (c)] & (unsigned short int) type) ### define is not number */
/* #define __isascii (c) (((c) & ~0x7f) == 0) ### define is not number */
/* #define __toascii (c) ((c) & 0x7f) ### define is not number */
/* #define __exctype (name) extern int name (int) __THROW ### define is not number */
/* #define __tobody (c,f,a,args) (__extension__ ({ int __res; if (sizeof (c) > 1) { if (__builtin_constant_p (c)) { int __c = (c); __res = __c < -128 || __c > 255 ? __c : (a)[__c]; } else __res = f args; } else __res = (a)[(int) (c)]; __res; })) ### define is not number */
/* #define isalnum (c) __isctype((c), _ISalnum) ### define is not number */
/* #define isalpha (c) __isctype((c), _ISalpha) ### define is not number */
/* #define iscntrl (c) __isctype((c), _IScntrl) ### define is not number */
/* #define isdigit (c) __isctype((c), _ISdigit) ### define is not number */
/* #define islower (c) __isctype((c), _ISlower) ### define is not number */
/* #define isgraph (c) __isctype((c), _ISgraph) ### define is not number */
/* #define isprint (c) __isctype((c), _ISprint) ### define is not number */
/* #define ispunct (c) __isctype((c), _ISpunct) ### define is not number */
/* #define isspace (c) __isctype((c), _ISspace) ### define is not number */
/* #define isupper (c) __isctype((c), _ISupper) ### define is not number */
/* #define isxdigit (c) __isctype((c), _ISxdigit) ### define is not number */
/* #define isblank (c) __isctype((c), _ISblank) ### define is not number */
/* #define isascii (c) __isascii (c) ### define is not number */
/* #define toascii (c) __toascii (c) ### define is not number */
/* #define _tolower (c) ((int) (*__ctype_tolower_loc ())[(int) (c)]) ### define is not number */
/* #define _toupper (c) ((int) (*__ctype_toupper_loc ())[(int) (c)]) ### define is not number */
/* #define __isctype_l (c,type,locale) ((locale)->__ctype_b[(int) (c)] & (unsigned short int) type) ### define is not number */
/* #define __exctype_l (name) extern int name (int, locale_t) __THROW ### define is not number */
/* #define __isalnum_l (c,l) __isctype_l((c), _ISalnum, (l)) ### define is not number */
/* #define __isalpha_l (c,l) __isctype_l((c), _ISalpha, (l)) ### define is not number */
/* #define __iscntrl_l (c,l) __isctype_l((c), _IScntrl, (l)) ### define is not number */
/* #define __isdigit_l (c,l) __isctype_l((c), _ISdigit, (l)) ### define is not number */
/* #define __islower_l (c,l) __isctype_l((c), _ISlower, (l)) ### define is not number */
/* #define __isgraph_l (c,l) __isctype_l((c), _ISgraph, (l)) ### define is not number */
/* #define __isprint_l (c,l) __isctype_l((c), _ISprint, (l)) ### define is not number */
/* #define __ispunct_l (c,l) __isctype_l((c), _ISpunct, (l)) ### define is not number */
/* #define __isspace_l (c,l) __isctype_l((c), _ISspace, (l)) ### define is not number */
/* #define __isupper_l (c,l) __isctype_l((c), _ISupper, (l)) ### define is not number */
/* #define __isxdigit_l (c,l) __isctype_l((c), _ISxdigit, (l)) ### define is not number */
/* #define __isblank_l (c,l) __isctype_l((c), _ISblank, (l)) ### define is not number */
/* #define __isascii_l (c,l) ((l), __isascii (c)) ### define is not number */
/* #define __toascii_l (c,l) ((l), __toascii (c)) ### define is not number */
/* #define isalnum_l (c,l) __isalnum_l ((c), (l)) ### define is not number */
/* #define isalpha_l (c,l) __isalpha_l ((c), (l)) ### define is not number */
/* #define iscntrl_l (c,l) __iscntrl_l ((c), (l)) ### define is not number */
/* #define isdigit_l (c,l) __isdigit_l ((c), (l)) ### define is not number */
/* #define islower_l (c,l) __islower_l ((c), (l)) ### define is not number */
/* #define isgraph_l (c,l) __isgraph_l ((c), (l)) ### define is not number */
/* #define isprint_l (c,l) __isprint_l ((c), (l)) ### define is not number */
/* #define ispunct_l (c,l) __ispunct_l ((c), (l)) ### define is not number */
/* #define isspace_l (c,l) __isspace_l ((c), (l)) ### define is not number */
/* #define isupper_l (c,l) __isupper_l ((c), (l)) ### define is not number */
/* #define isxdigit_l (c,l) __isxdigit_l ((c), (l)) ### define is not number */
/* #define isblank_l (c,l) __isblank_l ((c), (l)) ### define is not number */
/* #define isascii_l (c,l) __isascii_l ((c), (l)) ### define is not number */
/* #define toascii_l (c,l) __toascii_l ((c), (l)) ### define is not number */
/* + END <ctype.h> /usr/include/ctype.h */
]]
