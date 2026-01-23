local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <locale.h> /usr/include/locale.h */
/* ++ BEGIN <features.h> /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /usr/include/features.h */
/* ++ BEGIN <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END <stddef.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stddef.h */
/* ++ BEGIN <bits/locale.h> /usr/include/x86_64-linux-gnu/bits/locale.h */
/* ++ END <bits/locale.h> /usr/include/x86_64-linux-gnu/bits/locale.h */
struct lconv
{
  char *decimal_point;
  char *thousands_sep;
  char *grouping;
  char *int_curr_symbol;
  char *currency_symbol;
  char *mon_decimal_point;
  char *mon_thousands_sep;
  char *mon_grouping;
  char *positive_sign;
  char *negative_sign;
  char int_frac_digits;
  char frac_digits;
  char p_cs_precedes;
  char p_sep_by_space;
  char n_cs_precedes;
  char n_sep_by_space;
  char p_sign_posn;
  char n_sign_posn;
  char int_p_cs_precedes;
  char int_p_sep_by_space;
  char int_n_cs_precedes;
  char int_n_sep_by_space;
  char int_p_sign_posn;
  char int_n_sign_posn;
};
extern char *setlocale (int __category, const char *__locale) __attribute__ ((__nothrow__ , __leaf__));
extern struct lconv *localeconv (void) __attribute__ ((__nothrow__ , __leaf__));
/* ++ BEGIN <bits/types/locale_t.h> /usr/include/x86_64-linux-gnu/bits/types/locale_t.h */
]] require 'ffi.req' 'c.bits.types.locale_t' ffi.cdef[[
/* ++ END <bits/types/locale_t.h> /usr/include/x86_64-linux-gnu/bits/types/locale_t.h */
extern locale_t newlocale (int __category_mask, const char *__locale,
      locale_t __base) __attribute__ ((__nothrow__ , __leaf__));
extern locale_t duplocale (locale_t __dataset) __attribute__ ((__nothrow__ , __leaf__));
extern void freelocale (locale_t __dataset) __attribute__ ((__nothrow__ , __leaf__));
extern locale_t uselocale (locale_t __dataset) __attribute__ ((__nothrow__ , __leaf__));
enum { __LC_CTYPE = 0 };
enum { __LC_NUMERIC = 1 };
enum { __LC_TIME = 2 };
enum { __LC_COLLATE = 3 };
enum { __LC_MONETARY = 4 };
enum { __LC_MESSAGES = 5 };
enum { __LC_ALL = 6 };
enum { __LC_PAPER = 7 };
enum { __LC_NAME = 8 };
enum { __LC_ADDRESS = 9 };
enum { __LC_TELEPHONE = 10 };
enum { __LC_MEASUREMENT = 11 };
enum { __LC_IDENTIFICATION = 12 };
enum { LC_CTYPE = 0 };
enum { LC_NUMERIC = 1 };
enum { LC_TIME = 2 };
enum { LC_COLLATE = 3 };
enum { LC_MONETARY = 4 };
enum { LC_MESSAGES = 5 };
enum { LC_ALL = 6 };
enum { LC_PAPER = 7 };
enum { LC_NAME = 8 };
enum { LC_ADDRESS = 9 };
enum { LC_TELEPHONE = 10 };
enum { LC_MEASUREMENT = 11 };
enum { LC_IDENTIFICATION = 12 };
/* #define LC_CTYPE_MASK (1 << __LC_CTYPE) ### define is not number */
/* #define LC_NUMERIC_MASK (1 << __LC_NUMERIC) ### define is not number */
/* #define LC_TIME_MASK (1 << __LC_TIME) ### define is not number */
/* #define LC_COLLATE_MASK (1 << __LC_COLLATE) ### define is not number */
/* #define LC_MONETARY_MASK (1 << __LC_MONETARY) ### define is not number */
/* #define LC_MESSAGES_MASK (1 << __LC_MESSAGES) ### define is not number */
/* #define LC_PAPER_MASK (1 << __LC_PAPER) ### define is not number */
/* #define LC_NAME_MASK (1 << __LC_NAME) ### define is not number */
/* #define LC_ADDRESS_MASK (1 << __LC_ADDRESS) ### define is not number */
/* #define LC_TELEPHONE_MASK (1 << __LC_TELEPHONE) ### define is not number */
/* #define LC_MEASUREMENT_MASK (1 << __LC_MEASUREMENT) ### define is not number */
/* #define LC_IDENTIFICATION_MASK (1 << __LC_IDENTIFICATION) ### define is not number */
/* #define LC_ALL_MASK (LC_CTYPE_MASK | LC_NUMERIC_MASK | LC_TIME_MASK | LC_COLLATE_MASK | LC_MONETARY_MASK | LC_MESSAGES_MASK | LC_PAPER_MASK | LC_NAME_MASK | LC_ADDRESS_MASK | LC_TELEPHONE_MASK | LC_MEASUREMENT_MASK | LC_IDENTIFICATION_MASK ) ### define is not number */
/* #define LC_GLOBAL_LOCALE ((locale_t) -1L) ### define is not number */
/* + END <locale.h> /usr/include/locale.h */
]]
