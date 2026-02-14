local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <ctype.h> /boot/system/develop/headers/posix/ctype.h */
/* ++ BEGIN <locale_t.h> /boot/system/develop/headers/posix/locale_t.h */
]] require 'ffi.req' 'c.locale_t' ffi.cdef[[
/* ++ END <locale_t.h> /boot/system/develop/headers/posix/locale_t.h */
int isalnum(int);
int isalpha(int);
int isascii(int);
int isblank(int);
int iscntrl(int);
int isdigit(int);
int isgraph(int);
int islower(int);
int isprint(int);
int ispunct(int);
int isspace(int);
int isupper(int);
int isxdigit(int);
int toascii(int);
int tolower(int);
int toupper(int);
int isalnum_l(int, locale_t);
int isalpha_l(int, locale_t);
int isblank_l(int, locale_t);
int iscntrl_l(int, locale_t);
int isdigit_l(int, locale_t);
int isgraph_l(int, locale_t);
int islower_l(int, locale_t);
int isprint_l(int, locale_t);
int ispunct_l(int, locale_t);
int isspace_l(int, locale_t);
int isupper_l(int, locale_t);
int isxdigit_l(int, locale_t);
int tolower_l(int, locale_t);
int toupper_l(int, locale_t);
enum {
 _ISblank = 0x0001,
 _IScntrl = 0x0002,
 _ISpunct = 0x0004,
 _ISalnum = 0x0008,
 _ISupper = 0x0100,
 _ISlower = 0x0200,
 _ISalpha = 0x0400,
 _ISdigit = 0x0800,
 _ISxdigit = 0x1000,
 _ISspace = 0x2000,
 _ISprint = 0x4000,
 _ISgraph = 0x8000
};
extern const unsigned short int *const *const __ctype_b_loc();
extern const int *const *const __ctype_tolower_loc();
extern const int *const *const __ctype_toupper_loc();
enum { _CTYPE_H = 1 };
/* #define __isctype (c,type) ((*__ctype_b_loc())[(int)(c)] & (unsigned short int)type) ### define is not number */
/* #define tolower (c) ((int)(*__ctype_tolower_loc())[(int)(c)]) ### define is not number */
/* #define toupper (c) ((int)(*__ctype_toupper_loc())[(int)(c)]) ### define is not number */
/* #define isascii (c) (((c) & ~0x7f) == 0) ### define is not number */
/* #define toascii (c) ((c) & 0x7f) ### define is not number */
/* #define _tolower (c) tolower(c) ### define is not number */
/* #define _toupper (c) toupper(c) ### define is not number */
/* #define isalnum (c) __isctype((c), _ISalnum) ### define is not number */
/* #define isalpha (c) __isctype((c), _ISalpha) ### define is not number */
/* #define isblank (c) __isctype((c), _ISblank) ### define is not number */
/* #define iscntrl (c) __isctype((c), _IScntrl) ### define is not number */
/* #define isdigit (c) __isctype((c), _ISdigit) ### define is not number */
/* #define islower (c) __isctype((c), _ISlower) ### define is not number */
/* #define isgraph (c) __isctype((c), _ISgraph) ### define is not number */
/* #define isprint (c) __isctype((c), _ISprint) ### define is not number */
/* #define ispunct (c) __isctype((c), _ISpunct) ### define is not number */
/* #define isspace (c) __isctype((c), _ISspace) ### define is not number */
/* #define isupper (c) __isctype((c), _ISupper) ### define is not number */
/* #define isxdigit (c) __isctype((c), _ISxdigit) ### define is not number */
/* + END <ctype.h> /boot/system/develop/headers/posix/ctype.h */
]]
