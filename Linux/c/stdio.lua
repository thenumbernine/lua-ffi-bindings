local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/stdio.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
]] require 'ffi.req' 'c.bits.libc-header-start' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/libc-header-start.h */
/* ++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
/* ++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stdarg.h */
]] require 'ffi.req' 'c.stdarg' ffi.cdef[[
/* ++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stdarg.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h */
]] require 'ffi.req' 'c.bits.types.__mbstate_t' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h */
typedef struct _G_fpos_t {
	__off_t __pos;
	__mbstate_t __state;
} __fpos_t;
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h */
]] require 'ffi.req' 'c.bits.types.__mbstate_t' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h */
typedef struct _G_fpos64_t {
	__off64_t __pos;
	__mbstate_t __state;
} __fpos64_t;
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/__FILE.h */
]] require 'ffi.req' 'c.bits.types.__FILE' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/__FILE.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/FILE.h */
]] require 'ffi.req' 'c.bits.types.FILE' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/FILE.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;
typedef void _IO_lock_t;
struct _IO_FILE {
	int _flags;
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
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h */
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/types/cookie_io_functions_t.h */
/* +++ BEGIN /usr/include/x86_64-linux-gnu/bits/types.h */
]] require 'ffi.req' 'c.bits.types' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/bits/types.h */
typedef __ssize_t cookie_read_function_t (void *__cookie, char *__buf, size_t __nbytes);
typedef __ssize_t cookie_write_function_t (void *__cookie, const char *__buf, size_t __nbytes);
typedef int cookie_seek_function_t (void *__cookie, __off64_t *__pos, int __w);
typedef int cookie_close_function_t (void *__cookie);
typedef struct _IO_cookie_io_functions_t {
	cookie_read_function_t *read;
	cookie_write_function_t *write;
	cookie_seek_function_t *seek;
	cookie_close_function_t *close;
} cookie_io_functions_t;
/* ++ END   /usr/include/x86_64-linux-gnu/bits/types/cookie_io_functions_t.h */
]] require 'ffi.req' 'c.va_list' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.off_t' ffi.cdef[[
]] require 'ffi.req' 'c.bits.types.ssize_t' ffi.cdef[[
typedef __fpos_t fpos_t;
enum { BUFSIZ = 8192 };
enum { EOF = -1 };
]] require 'ffi.req' 'c.bits.types.SEEK' ffi.cdef[[
/* # define P_tmpdir	"/tmp" ### string, not number "\"/tmp\"" */
enum { L_tmpnam = 20 };
enum { TMP_MAX = 238328 };
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/stdio_lim.h */
enum { FILENAME_MAX = 4096 };
/* ++ END   /usr/include/x86_64-linux-gnu/bits/stdio_lim.h */
enum { L_ctermid = 9 };
enum { FOPEN_MAX = 16 };
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;
/* manually commented out: enum { stdin = 0 }; */
/* manually commented out: enum { stdout = 0 }; */
/* manually commented out: enum { stderr = 0 }; */
extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));
extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));
extern int renameat (int __oldfd, const char *__old, int __newfd, const char *__new) __attribute__ ((__nothrow__ , __leaf__));
extern int fclose (FILE *__stream) __attribute__ ((__nonnull__ (1)));
extern FILE *tmpfile (void) __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1)));
extern char *tmpnam (char[20]) __attribute__ ((__nothrow__ , __leaf__));
extern char *tmpnam_r (char __s[20]) __attribute__ ((__nothrow__ , __leaf__));
extern char *tempnam (const char *__dir, const char *__pfx) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (__builtin_free, 1)));
extern int fflush (FILE *__stream);
extern int fflush_unlocked (FILE *__stream);
extern FILE *fopen (const char * __filename, const char * __modes) __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1)));
extern FILE *freopen (const char * __filename, const char * __modes, FILE * __stream) __attribute__ ((__nonnull__ (3)));
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1)));
extern FILE *fopencookie (void * __magic_cookie, const char * __modes, cookie_io_functions_t __io_funcs) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__malloc__ (fclose, 1)));
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
extern int vasprintf (char ** __ptr, const char * __f, __gnuc_va_list __arg) __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 0)));
extern int __asprintf (char ** __ptr, const char * __fmt, ...) __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3)));
extern int asprintf (char ** __ptr, const char * __fmt, ...) __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 2, 3)));
extern int vdprintf (int __fd, const char * __fmt, __gnuc_va_list __arg) __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char * __fmt, ...) __attribute__ ((__format__ (__printf__, 2, 3)));
extern int fscanf (FILE * __stream, const char * __format, ...);
extern int scanf (const char * __format, ...);
extern int sscanf (const char * __s, const char * __format, ...) __attribute__ ((__nothrow__ , __leaf__));
/* ++ BEGIN /usr/include/x86_64-linux-gnu/bits/floatn.h */
]] require 'ffi.req' 'c.bits.floatn' ffi.cdef[[
/* ++ END   /usr/include/x86_64-linux-gnu/bits/floatn.h */
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
extern char *fgets (char * __s, int __n, FILE * __stream) __attribute__ ((__access__ (__write_only__, 1, 2)));
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
extern void perror (const char *__s) __attribute__ ((__cold__));
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
/* + END   /usr/include/stdio.h */
]]
-- special case since in the browser app where I'm capturing fopen for remote requests and caching
-- feel free to not use the returend table and just use ffi.C for faster access
-- but know you'll be losing compatability with browser
return setmetatable({}, {
	__index = ffi.C,
})
