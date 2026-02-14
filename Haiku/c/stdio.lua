local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <stdio.h> /boot/system/develop/headers/bsd/stdio.h */
/* ++ BEGIN <features.h> /boot/system/develop/headers/bsd/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /boot/system/develop/headers/bsd/features.h */
/* ++ BEGIN <stdio.h> /boot/system/develop/headers/posix/stdio.h */
/* +++ BEGIN <sys/types.h> ./Haiku/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* +++ END <sys/types.h> ./Haiku/sys/types.h */
/* +++ BEGIN <stdarg.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/stdarg.h */
]] require 'ffi.req' 'c.stdarg' ffi.cdef[[
/* +++ END <stdarg.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/stdarg.h */
typedef off_t fpos_t;
typedef struct _IO_FILE FILE;
extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;
extern FILE *fopen(const char *name, const char *mode);
extern FILE *freopen(const char *name, const char *mode, FILE *stream);
extern FILE *fdopen(int fd, const char *mode);
extern int fclose(FILE *stream);
extern int fcloseall(void);
extern int fileno(FILE *stream);
extern int fileno_unlocked(FILE *stream);
extern int ferror(FILE *stream);
extern int ferror_unlocked(FILE *stream);
extern void clearerr(FILE *stream);
extern void clearerr_unlocked(FILE *stream);
extern int feof(FILE *stream);
extern int feof_unlocked(FILE *stream);
extern void flockfile(FILE *stream);
extern void funlockfile(FILE *stream);
extern int ftrylockfile(FILE *stream);
extern int remove(const char *name);
extern int rename(const char *from, const char *to);
extern int renameat(int fromFD, const char *from, int toFD, const char *to);
extern FILE *popen(const char *command, const char *mode);
extern int pclose(FILE *stream);
extern void perror(const char *errorPrefix);
extern FILE *fmemopen(void *buf, size_t size, const char *mode);
extern FILE *open_memstream(char **buf, size_t *size);
typedef ssize_t (*cookie_read_function_t)(void *cookie, char *buf, size_t size);
typedef ssize_t (*cookie_write_function_t)(void *cookie, const char *buf, size_t size);
typedef ssize_t (*cookie_seek_function_t)(void *cookie, off_t *offset, int whence);
typedef ssize_t (*cookie_close_function_t)(void *cookie);
typedef struct {
 cookie_read_function_t *read;
 cookie_write_function_t *write;
 cookie_seek_function_t *seek;
 cookie_close_function_t *close;
} cookie_io_functions_t;
extern FILE *fopencookie(void *cookie, const char *mode, cookie_io_functions_t io_funcs);
extern int fflush(FILE *stream);
extern int fflush_unlocked(FILE *stream);
extern int fgetpos(FILE *stream, fpos_t *position);
extern int fsetpos(FILE *stream, const fpos_t *position);
extern int fseek(FILE *stream, long offset, int seekType);
extern int fseeko(FILE *stream, off_t offset, int seekType);
extern int _fseek(FILE *stream, fpos_t offset, int seekType);
extern long ftell(FILE *stream);
extern off_t ftello(FILE *stream);
extern fpos_t _ftell(FILE *stream);
extern void rewind(FILE *stream);
extern void setbuf (FILE *file, char *buff);
extern int setvbuf(FILE *file, char *buff, int mode, size_t size);
extern int setbuffer(FILE *stream, char *buf, size_t size);
extern int setlinebuf(FILE *stream);
extern size_t fwrite(const void *buffer, size_t size, size_t numItems, FILE *stream);
extern size_t fwrite_unlocked(const void *buffer, size_t size, size_t numItems, FILE *stream);
extern size_t fread(void *buffer, size_t size, size_t numItems, FILE *stream);
extern size_t fread_unlocked(void *buffer, size_t size, size_t numItems, FILE *stream);
extern int putc(int c, FILE *stream);
extern int putchar(int c);
extern int putc_unlocked(int c, FILE *stream);
extern int putchar_unlocked(int c);
extern int fputc(int c, FILE *stream);
extern int fputc_unlocked(int c, FILE *stream);
extern int puts(const char *string);
extern int fputs(const char *string, FILE *stream);
extern int fputs_unlocked(const char *string, FILE *stream);
extern int getc(FILE *stream);
extern int getc_unlocked(FILE *stream);
extern int ungetc(int c, FILE *stream);
extern int getchar(void);
extern int getchar_unlocked(void);
extern int fgetc(FILE *stream);
extern int fgetc_unlocked(FILE *stream);
extern char *gets(char *buffer);
extern char *fgets(char *string, int stringLength, FILE *stream);
extern char *fgets_unlocked(char *string, int stringLength, FILE *stream);
extern ssize_t getdelim(char **_line, size_t *_length, int delimiter,
     FILE *stream);
extern ssize_t getline(char **_line, size_t *_length, FILE *stream);
extern int asprintf(char **ret, char const *format, ...) __attribute__((format(__printf__, 2, 3)));
extern int printf(char const *format, ...) __attribute__((format(__printf__, 1, 2)));
extern int dprintf(int fd, char const *format, ...) __attribute__((format(__printf__, 2, 3)));
extern int fprintf(FILE *stream, char const *format, ...) __attribute__((format(__printf__, 2, 3)));
extern int sprintf(char *string, char const *format, ...) __attribute__((format(__printf__, 2, 3)));
extern int snprintf(char *string, size_t size, char const *format, ...) __attribute__((format(__printf__, 3, 4)));
extern int vasprintf(char **ret, char const *format, va_list ap);
extern int vprintf(char const *format, va_list ap);
extern int vfprintf(FILE *stream, char const *format, va_list ap);
extern int vsprintf(char *string, char const *format, va_list ap);
extern int vsnprintf(char *string, size_t size, char const *format, va_list ap);
extern int scanf(char const *format, ...);
extern int fscanf(FILE *stream, char const *format, ...);
extern int sscanf(char const *str, char const *format, ...);
extern int vscanf(char const *format, va_list ap);
extern int vsscanf(char const *str, char const *format, va_list ap);
extern int vfscanf(FILE *stream, char const *format, va_list ap);
extern char *ctermid(char *controllingTerminal);
extern char *cuserid(char *s);
extern char *tempnam(char const *path, char const *prefix);
extern FILE *tmpfile(void);
extern char *tmpnam(char *nameBuffer);
extern char *tmpnam_r(char *nameBuffer);
/* +++ BEGIN <stdio_post.h> /boot/system/develop/headers/posix/stdio_post.h */
extern char _single_threaded;
/* +++ END <stdio_post.h> /boot/system/develop/headers/posix/stdio_post.h */
/* ++ END <stdio.h> /boot/system/develop/headers/posix/stdio.h */
char *fgetln(FILE *stream, size_t *_length);
enum { _BSD_STDIO_H_ = 1 };
enum { _STDIO_H_ = 1 };
enum { BUFSIZ = 8192 };
enum { _IOFBF = 0 };
enum { _IOLBF = 1 };
enum { _IONBF = 2 };
enum { FOPEN_MAX = 128 };
enum { STREAM_MAX = 128 };
enum { FILENAME_MAX = 256 };
enum { TMP_MAX = 32768 };
enum { L_ctermid = 32 };
enum { L_cuserid = 32 };
enum { L_tmpnam = 512 };
/* #define P_tmpdir "/tmp/" ### define is not number */
/* #define EOF (-1) ### define is not number */
]] require 'ffi.req' 'c.SEEK' ffi.cdef[[
enum { _STDIO_POST_H_ = 1 };
/* #define getc (stream) (_single_threaded ? getc_unlocked(stream) : getc(stream)) ### define is not number */
/* #define putc (c,stream) (_single_threaded ? putc_unlocked(c, stream) : putc(c, stream)) ### define is not number */
/* + END <stdio.h> /boot/system/develop/headers/bsd/stdio.h */
]]
-- special case since in the browser app where I'm capturing fopen for remote requests and caching
-- feel free to not use the returend table and just use ffi.C for faster access
-- but know you'll be losing compatability with browser
return setmetatable({}, {
	__index = ffi.C,
})
