local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <locale.h> /boot/system/develop/headers/posix/locale.h */
/* ++ BEGIN <locale_t.h> /boot/system/develop/headers/posix/locale_t.h */
]] require 'ffi.req' 'c.locale_t' ffi.cdef[[
/* ++ END <locale_t.h> /boot/system/develop/headers/posix/locale_t.h */
/* ++ BEGIN <null.h> /boot/system/develop/headers/posix/null.h */
]] require 'ffi.req' 'c.null' ffi.cdef[[
/* ++ END <null.h> /boot/system/develop/headers/posix/null.h */
struct lconv {
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
extern char *setlocale(int category, const char *locale);
extern struct lconv *localeconv(void);
extern locale_t duplocale(locale_t);
extern void freelocale(locale_t);
extern locale_t newlocale(int, const char *, locale_t);
extern locale_t uselocale(locale_t);
const char *getlocalename_l(int category, locale_t locobj);
enum { _LOCALE_H_ = 1 };
enum { LC_ALL = 0 };
enum { LC_COLLATE = 1 };
enum { LC_CTYPE = 2 };
enum { LC_MONETARY = 3 };
enum { LC_NUMERIC = 4 };
enum { LC_TIME = 5 };
enum { LC_MESSAGES = 6 };
enum { LC_LAST = 6 };
/* #define LC_COLLATE_MASK (1 << (LC_COLLATE - 1)) ### define is not number */
/* #define LC_CTYPE_MASK (1 << (LC_CTYPE - 1)) ### define is not number */
/* #define LC_MONETARY_MASK (1 << (LC_MONETARY - 1)) ### define is not number */
/* #define LC_NUMERIC_MASK (1 << (LC_NUMERIC - 1)) ### define is not number */
/* #define LC_TIME_MASK (1 << (LC_TIME - 1)) ### define is not number */
/* #define LC_MESSAGES_MASK (1 << (LC_MESSAGES - 1)) ### define is not number */
/* #define LC_ALL_MASK (LC_COLLATE_MASK | LC_CTYPE_MASK | LC_MONETARY_MASK | LC_NUMERIC_MASK | LC_TIME_MASK | LC_MESSAGES_MASK) ### define is not number */
/* #define LC_GLOBAL_LOCALE ((locale_t)-1) ### define is not number */
/* + END <locale.h> /boot/system/develop/headers/posix/locale.h */
]]
