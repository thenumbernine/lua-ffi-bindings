local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/stdio.h */
enum { _STDIO_H = 1 };
/* BEGIN /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
]] require 'ffi.c.bits.libc-header-start' ffi.cdef[[
/* END /usr/include/x86_64-1-gnu/bits/libc-header-start.h */
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h */
]] require 'ffi.c.stddef' ffi.cdef[[
/* END /usr/lib/gcc/x86_64-1-gnu/9/include/stddef.h */
/* BEGIN /usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h */
]] require 'ffi.c.stdarg' ffi.cdef[[
/* END /usr/lib/gcc/x86_64-1-gnu/9/include/stdarg.h */
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
extern FILE *tmpfile (void);
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__));
extern int fclose (FILE *__stream);
extern int fflush (FILE *__stream);
extern FILE *fopen (const char * __filename, const char * __modes);
extern FILE *freopen (const char * __filename, const char * __modes, FILE * __stream);
extern void setbuf (FILE * __stream, char * __buf) __attribute__ ((__nothrow__ , __leaf__));
extern int setvbuf (FILE * __stream, char * __buf, int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));
extern int fprintf (FILE * __stream, const char * __format, ...);
extern int printf (const char * __format, ...);
extern int sprintf (char * __s, const char * __format, ...) __attribute__ ((__nothrow__));
extern int vfprintf (FILE * __s, const char * __format, __gnuc_va_list __arg);
extern int vprintf (const char * __format, __gnuc_va_list __arg);
extern int vsprintf (char * __s, const char * __format, __gnuc_va_list __arg) __attribute__ ((__nothrow__));
extern int fscanf (FILE * __stream, const char * __format, ...);
extern int scanf (const char * __format, ...);
extern int sscanf (const char * __s, const char * __format, ...) __attribute__ ((__nothrow__ , __leaf__));
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
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);
extern int getchar (void);
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);
extern int putchar (int __c);
extern char *fgets (char * __s, int __n, FILE * __stream);
extern int fputs (const char * __s, FILE * __stream);
extern int puts (const char *__s);
extern int ungetc (int __c, FILE *__stream);
extern size_t fread (void * __ptr, size_t __size, size_t __n, FILE * __stream);
extern size_t fwrite (const void * __ptr, size_t __size, size_t __n, FILE * __s);
extern int fseek (FILE *__stream, long int __off, int __whence);
extern long int ftell (FILE *__stream);
extern void rewind (FILE *__stream);
extern int fgetpos (FILE * __stream, fpos_t * __pos);
extern int fsetpos (FILE *__stream, const fpos_t *__pos);
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern void perror (const char *__s);
/* BEGIN /usr/include/x86_64-linux-gnu/bits/sys_errlist.h */
/* END /usr/include/x86_64-1-gnu/bits/sys_errlist.h */
extern int __uflow (FILE *);
extern int __overflow (FILE *, int);
/* END /usr/include/stdio.h */
]]
