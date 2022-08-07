local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/stdio.h */
enum { _STDIO_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
/* BEGIN /usr/include/features.h */
enum { _FEATURES_H = 1 };
enum { _DEFAULT_SOURCE = 1 };
enum { __GLIBC_USE_ISOC2X = 0 };
enum { __USE_ISOC11 = 1 };
enum { __USE_ISOC99 = 1 };
enum { __USE_ISOC95 = 1 };
enum { __USE_POSIX_IMPLICITLY = 1 };
enum { _POSIX_SOURCE = 1 };
enum { __USE_POSIX = 1 };
enum { __USE_MISC = 1 };
enum { __USE_FORTIFY_LEVEL = 0 };
enum { __GLIBC_USE_DEPRECATED_GETS = 0 };
enum { __GLIBC_USE_DEPRECATED_SCANF = 0 };
/* BEGIN /usr/include/stdc-predef.h */
/* END /usr/include/stdc-predef.h */
enum { __GNU_LIBRARY__ = 6 };
enum { __GLIBC__ = 2 };
enum { __GLIBC_MINOR__ = 33 };
/* BEGIN /usr/include/x86_64-linux-gnu/sys/cdefs.h */
enum { _SYS_CDEFS_H = 1 };
enum { __glibc_c99_flexarr_available = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
enum { __WORDSIZE = 64 };
enum { __WORDSIZE_TIME64_COMPAT32 = 1 };
enum { __SYSCALL_WORDSIZE = 64 };
/* END /usr/include/x86_64-1-gnu/bits/wordsize.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/long-double.h */
enum { __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI = 0 };
/* END /usr/include/x86_64-1-gnu/bits/long-double.h */
enum { __HAVE_GENERIC_SELECTION = 1 };
/* END /usr/include/x86_64-1-gnu/sys/cdefs.h */
/* BEGIN /usr/include/x86_64-linux-gnu/gnu/stubs.h */
/* BEGIN /usr/include/x86_64-linux-gnu/gnu/stubs-64.h */
/* END /usr/include/x86_64-1-gnu/gnu/stubs-64.h */
/* END /usr/include/x86_64-1-gnu/gnu/stubs.h */
/* END /usr/include/features.h */
enum { __GLIBC_USE_LIB_EXT2 = 0 };
enum { __GLIBC_USE_IEC_60559_BFP_EXT = 0 };
enum { __GLIBC_USE_IEC_60559_BFP_EXT_C2X = 0 };
enum { __GLIBC_USE_IEC_60559_FUNCS_EXT = 0 };
enum { __GLIBC_USE_IEC_60559_FUNCS_EXT_C2X = 0 };
enum { __GLIBC_USE_IEC_60559_TYPES_EXT = 0 };
/* END /usr/include/x86_64-1-gnu/bits/libc-header-start.h */
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/10/include/stddef.h */
typedef long unsigned int size_t;
/* END /usr/lib/gcc/x86_64-1-gnu/10/include/stddef.h */
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/10/include/stdarg.h */
typedef __builtin_va_list __gnuc_va_list;
/* END /usr/lib/gcc/x86_64-1-gnu/10/include/stdarg.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
enum { _BITS_TYPES_H = 1 };
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/wordsize.h */
/* END /usr/include/x86_64-1-gnu/bits/wordsize.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/timesize.h */
/* END /usr/include/x86_64-1-gnu/bits/timesize.h */
typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;
typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;
typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;
typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;
typedef long int __quad_t;
typedef unsigned long int __u_quad_t;
typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
/* BEGIN /usr/include/x86_64-linux-gnu/bits/typesizes.h */
enum { _BITS_TYPESIZES_H = 1 };
enum { __OFF_T_MATCHES_OFF64_T = 1 };
enum { __INO_T_MATCHES_INO64_T = 1 };
enum { __RLIM_T_MATCHES_RLIM64_T = 1 };
enum { __STATFS_MATCHES_STATFS64 = 1 };
enum { __KERNEL_OLD_TIMEVAL_MATCHES_TIMEVAL64 = 1 };
enum { __FD_SETSIZE = 1024 };
/* END /usr/include/x86_64-1-gnu/bits/typesizes.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/time64.h */
enum { _BITS_TIME64_H = 1 };
/* END /usr/include/x86_64-1-gnu/bits/time64.h */
typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;
typedef long int __suseconds64_t;
typedef int __daddr_t;
typedef int __key_t;
typedef int __clockid_t;
typedef void * __timer_t;
typedef long int __blksize_t;
typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;
typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;
typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;
typedef long int __fsword_t;
typedef long int __ssize_t;
typedef long int __syscall_slong_t;
typedef unsigned long int __syscall_ulong_t;
typedef __off64_t __loff_t;
typedef char *__caddr_t;
typedef long int __intptr_t;
typedef unsigned int __socklen_t;
typedef int __sig_atomic_t;
/* END /usr/include/x86_64-1-gnu/bits/types.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h */
enum { _____fpos_t_defined = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
/* END /usr/include/x86_64-1-gnu/bits/types.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h */
enum { ____mbstate_t_defined = 1 };
typedef struct { int __count;
union { unsigned int __wch;
char __wchb[4];
} __value;
} __mbstate_t;
/* END /usr/include/x86_64-1-gnu/bits/types/__mbstate_t.h */
typedef struct _G_fpos_t { __off_t __pos;
__mbstate_t __state;
} __fpos_t;
/* END /usr/include/x86_64-1-gnu/bits/types/__fpos_t.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h */
enum { _____fpos64_t_defined = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
/* END /usr/include/x86_64-1-gnu/bits/types.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h */
/* END /usr/include/x86_64-1-gnu/bits/types/__mbstate_t.h */
typedef struct _G_fpos64_t { __off64_t __pos;
__mbstate_t __state;
} __fpos64_t;
/* END /usr/include/x86_64-1-gnu/bits/types/__fpos64_t.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/__FILE.h */
enum { ____FILE_defined = 1 };
struct _IO_FILE;
typedef struct _IO_FILE __FILE;
/* END /usr/include/x86_64-1-gnu/bits/types/__FILE.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/FILE.h */
enum { __FILE_defined = 1 };
struct _IO_FILE;
typedef struct _IO_FILE FILE;
/* END /usr/include/x86_64-1-gnu/bits/types/FILE.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h */
enum { __struct_FILE_defined = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
/* END /usr/include/x86_64-1-gnu/bits/types.h */
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
typedef void _IO_lock_t;
struct _IO_FILE { int _flags;
char *_IO_read_ptr;
char *_IO_read_end;
char *_IO_read_base;
char *_IO_write_base;
char *_IO_write_ptr;
char *_IO_write_end;
char *_IO_buf_base;
char *_IO_buf_end;
char *_IO_save_base;
char *_IO_backup_base;
char *_IO_save_end;
struct _IO_marker *_markers;
struct _IO_FILE *_chain;
int _fileno;
int _flags2;
__off_t _old_offset;
unsigned short _cur_column;
signed char _vtable_offset;
char _shortbuf[1];
_IO_lock_t *_lock;
__off64_t _offset;
struct _IO_codecvt *_codecvt;
struct _IO_wide_data *_wide_data;
struct _IO_FILE *_freeres_list;
void *_freeres_buf;
size_t __pad5;
int _mode;
char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];
};
enum { _IO_EOF_SEEN = 0x0010 };
enum { _IO_ERR_SEEN = 0x0020 };
enum { _IO_USER_LOCK = 0x8000 };
/* END /usr/include/x86_64-1-gnu/bits/types/struct_FILE.h */
typedef __fpos_t fpos_t;
enum { _IOFBF = 0 };
enum { _IOLBF = 1 };
enum { _IONBF = 2 };
enum { BUFSIZ = 8192 };
enum { SEEK_SET = 0 };
enum { SEEK_CUR = 1 };
enum { SEEK_END = 2 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/stdio_lim.h */
enum { _BITS_STDIO_LIM_H = 1 };
enum { L_tmpnam = 20 };
enum { TMP_MAX = 238328 };
enum { FILENAME_MAX = 4096 };
enum { FOPEN_MAX = 16 };
/* END /usr/include/x86_64-1-gnu/bits/stdio_lim.h */
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;
extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));
extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));
extern FILE *tmpfile (void) ;
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int fclose (FILE *__stream);
extern int fflush (FILE *__stream);
extern FILE *fopen (const char * __filename, const char * __modes) ;
extern FILE *freopen (const char * __filename, const char * __modes, FILE * __stream) ;
extern void setbuf (FILE * __stream, char * __buf) __attribute__ ((__nothrow__ , __leaf__));
extern int setvbuf (FILE * __stream, char * __buf, int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
extern int fprintf (FILE * __stream, const char * __format, ...);
extern int printf (const char * __format, ...);
extern int sprintf (char * __s, const char * __format, ...) __attribute__ ((__nothrow__));
extern int vfprintf (FILE * __s, const char * __format, __gnuc_va_list __arg);
extern int vprintf (const char * __format, __gnuc_va_list __arg);
extern int vsprintf (char * __s, const char * __format, __gnuc_va_list __arg) __attribute__ ((__nothrow__));
extern int fscanf (FILE * __stream, const char * __format, ...) ;
extern int scanf (const char * __format, ...) ;
extern int sscanf (const char * __s, const char * __format, ...) __attribute__ ((__nothrow__ , __leaf__));
/* BEGIN /usr/include/x86_64-linux-gnu/bits/floatn.h */
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
enum { __HAVE_FLOAT128 = 1 };
enum { __HAVE_DISTINCT_FLOAT128 = 1 };
enum { __HAVE_FLOAT64X = 1 };
enum { __HAVE_FLOAT64X_LONG_DOUBLE = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/floatn-common.h */
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/long-double.h */
/* END /usr/include/x86_64-1-gnu/bits/long-double.h */
enum { __HAVE_FLOAT16 = 0 };
enum { __HAVE_FLOAT32 = 1 };
enum { __HAVE_FLOAT64 = 1 };
enum { __HAVE_FLOAT32X = 1 };
enum { __HAVE_FLOAT128X = 0 };
enum { __HAVE_DISTINCT_FLOAT32 = 0 };
enum { __HAVE_DISTINCT_FLOAT64 = 0 };
enum { __HAVE_DISTINCT_FLOAT32X = 0 };
enum { __HAVE_DISTINCT_FLOAT64X = 0 };
enum { __HAVE_FLOATN_NOT_TYPEDEF = 1 };
/* END /usr/include/x86_64-1-gnu/bits/floatn-common.h */
/* END /usr/include/x86_64-1-gnu/bits/floatn.h */
extern int fscanf(FILE * __stream, const char * __format, ...);
extern int scanf(const char * __format, ...);
extern int sscanf(const char * __s, const char * __format, ...);
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);
extern int getchar (void);
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);
extern int putchar (int __c);
extern char *fgets (char * __s, int __n, FILE * __stream) __attribute__ ((__access__ (__write_only__, 1, 2))) ;
extern int fputs (const char * __s, FILE * __stream);
extern int puts (const char *__s);
extern int ungetc (int __c, FILE *__stream);
extern size_t fread (void * __ptr, size_t __size, size_t __n, FILE * __stream) ;
extern size_t fwrite (const void * __ptr, size_t __size, size_t __n, FILE * __s);
extern int fseek (FILE *__stream, long int __off, int __whence);
extern long int ftell (FILE *__stream) ;
extern void rewind (FILE *__stream);
extern int fgetpos (FILE * __stream, fpos_t * __pos);
extern int fsetpos (FILE *__stream, const fpos_t *__pos);
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern void perror (const char *__s);
extern int __uflow (FILE *);
extern int __overflow (FILE *, int);
/* BEGIN /usr/include/x86_64-linux-gnu/bits/floatn.h */
/* END /usr/include/x86_64-1-gnu/bits/floatn.h */
/* END /usr/include/stdio.h */
]]
