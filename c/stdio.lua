local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/stdio.h */
enum { _STDIO_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
]] require 'ffi.c.bits.libc-header-start' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/libc-header-start.h */
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/11/include/stddef.h */
]] require 'ffi.c.stddef' ffi.cdef[[
/* END /usr/lib/gcc/x86_64-1-gnu/11/include/stddef.h */
enum { __need___va_list = 1 };
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/11/include/stdarg.h */
]] require 'ffi.c.stdarg' ffi.cdef[[
/* END /usr/lib/gcc/x86_64-1-gnu/11/include/stdarg.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.c.bits.types' ffi.cdef[[
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
enum { _IO_EOF_SEEN = 16 };
enum { _IO_ERR_SEEN = 32 };
enum { _IO_USER_LOCK = 32768 };
/* END /usr/include/x86_64-1-gnu/bits/types/struct_FILE.h */
typedef __gnuc_va_list va_list;
enum { _VA_LIST_DEFINED = 1 };
typedef __off_t off_t;
enum { __off_t_defined = 1 };
typedef __ssize_t ssize_t;
enum { __ssize_t_defined = 1 };
typedef __fpos_t fpos_t;
enum { _IOFBF = 0 };
enum { _IOLBF = 1 };
enum { _IONBF = 2 };
enum { BUFSIZ = 8192 };
enum { EOF = -1 };
enum { SEEK_SET = 0 };
enum { SEEK_CUR = 1 };
enum { SEEK_END = 2 };
/* # define P_tmpdir	"/tmp" ### string, not number "\"/tmp\"" */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/stdio_lim.h */
enum { _BITS_STDIO_LIM_H = 1 };
enum { L_tmpnam = 20 };
enum { TMP_MAX = 238328 };
enum { FILENAME_MAX = 4096 };
enum { L_ctermid = 9 };
enum { FOPEN_MAX = 16 };
/* END /usr/include/x86_64-1-gnu/bits/stdio_lim.h */
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;
enum { stdin = 0 };
enum { stdout = 0 };
enum { stderr = 0 };
extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));
extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));
extern int renameat (int __oldfd, const char *__old, int __newfd, const char *__new) __attribute__ ((__nothrow__ , __leaf__));
extern int fclose (FILE *__stream);
/* #define __attr_dealloc_fclose __attr_dealloc (fclose, 1) ### string, not number "__attr_dealloc (fclose, 1)" */
extern FILE *tmpfile (void) __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1)));
extern char *tmpnam (char[20]) __attribute__ ((__nothrow__ , __leaf__));
extern char *tmpnam_r (char __s[20]) __attribute__ ((__nothrow__ , __leaf__));
extern char *tempnam (const char *__dir, const char *__pfx) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (__builtin_free, 1)));
extern int fflush (FILE *__stream);
extern int fflush_unlocked (FILE *__stream);
extern FILE *fopen (const char * __filename, const char * __modes) __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1)));
extern FILE *freopen (const char * __filename, const char * __modes, FILE * __stream);
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1)));
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1)));
extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1)));
extern void setbuf (FILE * __stream, char * __buf) __attribute__ ((__nothrow__ , __leaf__));
extern int setvbuf (FILE * __stream, char * __buf, int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
extern void setbuffer (FILE * __stream, char * __buf, size_t __size) __attribute__ ((__nothrow__ , __leaf__));
extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int fprintf (FILE * __stream, const char * __format, ...);
extern int printf (const char * __format, ...);
extern int sprintf (char * __s, const char * __format, ...) __attribute__ ((__nothrow__));
extern int vfprintf (FILE * __s, const char * __format, __gnuc_va_list __arg);
extern int vprintf (const char * __format, __gnuc_va_list __arg);
extern int vsprintf (char * __s, const char * __format, __gnuc_va_list __arg) __attribute__ ((__nothrow__));
extern int snprintf (char * __s, size_t __maxlen, const char * __format, ...) __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));
extern int vsnprintf (char * __s, size_t __maxlen, const char * __format, __gnuc_va_list __arg) __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));
extern int vdprintf (int __fd, const char * __fmt, __gnuc_va_list __arg) __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char * __fmt, ...) __attribute__ ((__format__ (__printf__, 2, 3)));
extern int fscanf (FILE * __stream, const char * __format, ...);
extern int scanf (const char * __format, ...);
extern int sscanf (const char * __s, const char * __format, ...) __attribute__ ((__nothrow__ , __leaf__));
/* BEGIN /usr/include/x86_64-linux-gnu/bits/floatn.h */
enum { _BITS_FLOATN_H = 1 };
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
enum { __HAVE_FLOAT128 = 1 };
enum { __HAVE_DISTINCT_FLOAT128 = 1 };
enum { __HAVE_FLOAT64X = 1 };
enum { __HAVE_FLOAT64X_LONG_DOUBLE = 1 };
/* #   define __CFLOAT128 _Complex _Float128 ### string, not number "_Complex _Float128" */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/floatn-common.h */
enum { _BITS_FLOATN_COMMON_H = 1 };
/* BEGIN /usr/include/features.h */
/* END /usr/include/features.h */
/* BEGIN /usr/include/x86_64-linux-gnu/bits/long-double.h */
/* redefining matching value: #define __LDOUBLE_REDIRECTS_TO_FLOAT128_ABI 0 */
/* END /usr/include/x86_64-1-gnu/bits/long-double.h */
enum { __HAVE_FLOAT16 = 0 };
enum { __HAVE_FLOAT32 = 1 };
enum { __HAVE_FLOAT64 = 1 };
enum { __HAVE_FLOAT32X = 1 };
enum { __HAVE_FLOAT128X = 0 };
enum { __HAVE_DISTINCT_FLOAT16 = 0 };
enum { __HAVE_DISTINCT_FLOAT32 = 0 };
enum { __HAVE_DISTINCT_FLOAT64 = 0 };
enum { __HAVE_DISTINCT_FLOAT32X = 0 };
enum { __HAVE_DISTINCT_FLOAT64X = 0 };
enum { __HAVE_DISTINCT_FLOAT128X = 0 };
enum { __HAVE_FLOAT128_UNLIKE_LDBL = 1 };
enum { __HAVE_FLOATN_NOT_TYPEDEF = 1 };
/* #   define __CFLOAT32 _Complex _Float32 ### string, not number "_Complex _Float32" */
/* #   define __CFLOAT64 _Complex _Float64 ### string, not number "_Complex _Float64" */
/* #   define __CFLOAT32X _Complex _Float32x ### string, not number "_Complex _Float32x" */
/* #   define __CFLOAT64X _Complex _Float64x ### string, not number "_Complex _Float64x" */
/* END /usr/include/x86_64-1-gnu/bits/floatn-common.h */
/* END /usr/include/x86_64-1-gnu/bits/floatn.h */
/* ### INCOMPLETE ARG MACRO ### __REDIRECT ### IN LINE ### extern int __REDIRECT (fscanf, (FILE * __stream, */
/* ### PREPENDING ### extern int __REDIRECT (fscanf, (FILE * __stream, ### TO ### const char *__restrict __format, ...), */
/* ### INCOMPLETE ARG MACRO ### __REDIRECT ### IN LINE ### extern int __REDIRECT (fscanf, (FILE * __stream, const char * __format, ...), */
/* ### PREPENDING ### extern int __REDIRECT (fscanf, (FILE * __stream, const char * __format, ...), ### TO ### __isoc99_fscanf) __wur; */
extern int fscanf (FILE * __stream, const char * __format, ...);
/* ### INCOMPLETE ARG MACRO ### __REDIRECT ### IN LINE ### extern int __REDIRECT (scanf, (const char * __format, ...), */
/* ### PREPENDING ### extern int __REDIRECT (scanf, (const char * __format, ...), ### TO ### __isoc99_scanf) __wur; */
extern int scanf (const char * __format, ...);
/* ### INCOMPLETE ARG MACRO ### __REDIRECT_NTH ### IN LINE ### extern int __REDIRECT_NTH (sscanf, (const char * __s, */
/* ### PREPENDING ### extern int __REDIRECT_NTH (sscanf, (const char * __s, ### TO ### const char *__restrict __format, ...), */
/* ### INCOMPLETE ARG MACRO ### __REDIRECT_NTH ### IN LINE ### extern int __REDIRECT_NTH (sscanf, (const char * __s, const char * __format, ...), */
/* ### PREPENDING ### extern int __REDIRECT_NTH (sscanf, (const char * __s, const char * __format, ...), ### TO ### __isoc99_sscanf); */
extern int sscanf (const char * __s, const char * __format, ...) __attribute__ ((__nothrow__ , __leaf__));
extern int vfscanf (FILE * __s, const char * __format, __gnuc_va_list __arg) __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int vscanf (const char * __format, __gnuc_va_list __arg) __attribute__ ((__format__ (__scanf__, 1, 0)));
extern int vsscanf (const char * __s, const char * __format, __gnuc_va_list __arg) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
/* ### INCOMPLETE ARG MACRO ### __REDIRECT ### IN LINE ### extern int __REDIRECT (vfscanf, */
/* ### PREPENDING ### extern int __REDIRECT (vfscanf, ### TO ### (FILE *__restrict __s, */
/* ### INCOMPLETE ARG MACRO ### __REDIRECT ### IN LINE ### extern int __REDIRECT (vfscanf, (FILE * __s, */
/* ### PREPENDING ### extern int __REDIRECT (vfscanf, (FILE * __s, ### TO ### const char *__restrict __format, __gnuc_va_list __arg), */
/* ### INCOMPLETE ARG MACRO ### __REDIRECT ### IN LINE ### extern int __REDIRECT (vfscanf, (FILE * __s, const char * __format, __gnuc_va_list __arg), */
/* ### PREPENDING ### extern int __REDIRECT (vfscanf, (FILE * __s, const char * __format, __gnuc_va_list __arg), ### TO ### __isoc99_vfscanf) */
extern int vfscanf (FILE * __s, const char * __format, __gnuc_va_list __arg) __attribute__ ((__format__ (__scanf__, 2, 0)));
/* ### INCOMPLETE ARG MACRO ### __REDIRECT ### IN LINE ### extern int __REDIRECT (vscanf, (const char * __format, */
/* ### PREPENDING ### extern int __REDIRECT (vscanf, (const char * __format, ### TO ### __gnuc_va_list __arg), __isoc99_vscanf) */
extern int vscanf (const char * __format, __gnuc_va_list __arg) __attribute__ ((__format__ (__scanf__, 1, 0)));
/* ### INCOMPLETE ARG MACRO ### __REDIRECT_NTH ### IN LINE ### extern int __REDIRECT_NTH (vsscanf, */
/* ### PREPENDING ### extern int __REDIRECT_NTH (vsscanf, ### TO ### (const char *__restrict __s, */
/* ### INCOMPLETE ARG MACRO ### __REDIRECT_NTH ### IN LINE ### extern int __REDIRECT_NTH (vsscanf, (const char * __s, */
/* ### PREPENDING ### extern int __REDIRECT_NTH (vsscanf, (const char * __s, ### TO ### const char *__restrict __format, */
/* ### INCOMPLETE ARG MACRO ### __REDIRECT_NTH ### IN LINE ### extern int __REDIRECT_NTH (vsscanf, (const char * __s, const char * __format, */
/* ### PREPENDING ### extern int __REDIRECT_NTH (vsscanf, (const char * __s, const char * __format, ### TO ### __gnuc_va_list __arg), __isoc99_vsscanf) */
extern int vsscanf (const char * __s, const char * __format, __gnuc_va_list __arg) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);
extern int getchar (void);
extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
extern int fgetc_unlocked (FILE *__stream);
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);
extern int putchar (int __c);
extern int fputc_unlocked (int __c, FILE *__stream);
extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);
extern int getw (FILE *__stream);
extern int putw (int __w, FILE *__stream);
extern char *fgets (char * __s, int __n, FILE * __stream) __attribute__ ((__access__ (a, 1, s)));
extern __ssize_t __getdelim (char ** __lineptr, size_t * __n, int __delimiter, FILE * __stream);
extern __ssize_t getdelim (char ** __lineptr, size_t * __n, int __delimiter, FILE * __stream);
extern __ssize_t getline (char ** __lineptr, size_t * __n, FILE * __stream);
extern int fputs (const char * __s, FILE * __stream);
extern int puts (const char *__s);
extern int ungetc (int __c, FILE *__stream);
extern size_t fread (void * __ptr, size_t __size, size_t __n, FILE * __stream);
extern size_t fwrite (const void * __ptr, size_t __size, size_t __n, FILE * __s);
extern size_t fread_unlocked (void * __ptr, size_t __size, size_t __n, FILE * __stream);
extern size_t fwrite_unlocked (const void * __ptr, size_t __size, size_t __n, FILE * __stream);
extern int fseek (FILE *__stream, long int __off, int __whence);
extern long int ftell (FILE *__stream);
extern void rewind (FILE *__stream);
extern int fseeko (FILE *__stream, __off_t __off, int __whence);
extern __off_t ftello (FILE *__stream);
extern int fgetpos (FILE * __stream, fpos_t * __pos);
extern int fsetpos (FILE *__stream, const fpos_t *__pos);
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern void perror (const char *__s);
extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int pclose (FILE *__stream);
extern FILE *popen (const char *__command, const char *__modes) __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (pclose, 1)));
extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__access__ (__write_only__, 1)));
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int __uflow (FILE *);
extern int __overflow (FILE *, int);
/* BEGIN /usr/include/x86_64-linux-gnu/bits/floatn.h */
/* END /usr/include/x86_64-1-gnu/bits/floatn.h */
/* END /usr/include/stdio.h */
]]
