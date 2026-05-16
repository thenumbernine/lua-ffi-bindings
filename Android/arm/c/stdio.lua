local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <stdio.h> /data/data/com.termux/files/usr/bin/../../usr/include/stdio.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
/* ++ BEGIN <stdarg.h> /data/data/com.termux/files/usr/lib/clang/21/include/stdarg.h */
]] require 'ffi.req' 'c.stdarg' ffi.cdef[[
/* ++ END <stdarg.h> /data/data/com.termux/files/usr/lib/clang/21/include/stdarg.h */
/* ++ BEGIN <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END <stddef.h> /data/data/com.termux/files/usr/lib/clang/21/include/stddef.h */
/* ++ BEGIN <string.h> /data/data/com.termux/files/usr/bin/../../usr/include/string.h */
]] require 'ffi.req' 'c.string' ffi.cdef[[
/* ++ END <string.h> /data/data/com.termux/files/usr/bin/../../usr/include/string.h */
/* ++ BEGIN <asm/fcntl.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/fcntl.h */
/* +++ BEGIN <asm-generic/fcntl.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/fcntl.h */
/* ++++ BEGIN <bits/flock64.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/flock64.h */
/* ++++ END <bits/flock64.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/flock64.h */
/* ++++ BEGIN <bits/flock.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/flock.h */
struct flock { short l_type; short l_whence; off_t l_start; off_t l_len; pid_t l_pid; };
struct flock64 { short l_type; short l_whence; off64_t l_start; off64_t l_len; pid_t l_pid; };
/* ++++ END <bits/flock.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/flock.h */
struct f_owner_ex {
  int type;
  __kernel_pid_t pid;
};
/* +++ END <asm-generic/fcntl.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/fcntl.h */
/* ++ END <asm/fcntl.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/fcntl.h */
/* ++ BEGIN <bits/seek_constants.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/seek_constants.h */
/* ++ END <bits/seek_constants.h> /data/data/com.termux/files/usr/bin/../../usr/include/bits/seek_constants.h */
typedef off_t fpos_t;
typedef off64_t fpos64_t;
struct __sFILE;
typedef struct __sFILE FILE;
extern FILE*  stdin __attribute__((__availability__(android,strict,introduced=23 )));
extern FILE*  stdout __attribute__((__availability__(android,strict,introduced=23 )));
extern FILE*  stderr __attribute__((__availability__(android,strict,introduced=23 )));
void clearerr(FILE*  __fp);
int fclose(FILE*  __fp);
__attribute__((__warn_unused_result__)) int feof(FILE*  __fp);
__attribute__((__warn_unused_result__)) int ferror(FILE*  __fp);
int fflush(FILE*  __fp);
__attribute__((__warn_unused_result__)) int fgetc(FILE*  __fp);
char*  fgets(char*  __buf, int __size, FILE*  __fp);
int fprintf(FILE*  __fp , const char*  __fmt, ...) __attribute__((__format__(printf, 2, 3)));
int fputc(int __ch, FILE*  __fp);
int fputs(const char*  __s, FILE*  __fp);
size_t fread(void*  __buf, size_t __size, size_t __count, FILE*  __fp);
int fscanf(FILE*  __fp, const char*  __fmt, ...) __attribute__((__format__(scanf, 2, 3)));
size_t fwrite(const void*  __buf, size_t __size, size_t __count, FILE*  __fp);
__attribute__((__warn_unused_result__)) int getc(FILE*  __fp);
__attribute__((__warn_unused_result__)) int getchar(void);
ssize_t getdelim(char*  *  __line_ptr, size_t*  __line_length_ptr, int __delimiter, FILE*  __fp);
ssize_t getline(char*  *  __line_ptr, size_t*  __line_length_ptr, FILE*  __fp);
void perror(const char*  __msg);
int printf(const char*  __fmt, ...) __attribute__((__format__(printf, 1, 2)));
int putc(int __ch, FILE*  __fp);
int putchar(int __ch);
int puts(const char*  __s);
int remove(const char*  __path);
void rewind(FILE*  __fp);
int scanf(const char*  __fmt, ...) __attribute__((__format__(scanf, 1, 2)));
void setbuf(FILE*  __fp, char*  __buf);
int setvbuf(FILE*  __fp, char*  __buf, int __mode, size_t __size);
int sscanf(const char*  __s, const char*  __fmt, ...) __attribute__((__format__(scanf, 2, 3)));
int ungetc(int __ch, FILE*  __fp);
int vfprintf(FILE*  __fp, const char*  __fmt, va_list __args) __attribute__((__format__(printf, 2, 0)));
int vprintf(const char*  __fp, va_list __args) __attribute__((__format__(printf, 1, 0)));
int dprintf(int __fd, const char*  __fmt, ...) __attribute__((__format__(printf, 2, 3)));
int vdprintf(int __fd, const char*  __fmt, va_list __args) __attribute__((__format__(printf, 2, 0)));
int sprintf(char*  __s, const char*  __fmt, ...)
    __attribute__((__format__(printf, 2, 3))) ;
int vsprintf(char*  __s, const char*  __fmt, va_list __args)
    __attribute__((__format__(printf, 2, 0))) ;
char*  tmpnam(char*  __s)
    __attribute__((__deprecated__("tmpnam is unsafe, use mkstemp or tmpfile instead")));
char*  tempnam(const char*  __dir, const char*  __prefix)
    __attribute__((__deprecated__("tempnam is unsafe, use mkstemp or tmpfile instead")));
int rename(const char*  __old_path, const char*  __new_path);
int renameat(int __old_dir_fd, const char*  __old_path, int __new_dir_fd, const char*  __new_path);
int fseek(FILE*  __fp, long __offset, int __whence);
__attribute__((__warn_unused_result__)) long ftell(FILE*  __fp);
int fgetpos(FILE*  __fp, fpos_t*  __pos);
int fsetpos(FILE*  __fp, const fpos_t*  __pos);
int fseeko(FILE*  __fp, off_t __offset, int __whence);
__attribute__((__warn_unused_result__)) off_t ftello(FILE*  __fp);
int fgetpos64(FILE*  __fp, fpos64_t*  __pos) __attribute__((__availability__(android,strict,introduced=24 )));
int fsetpos64(FILE*  __fp, const fpos64_t*  __pos) __attribute__((__availability__(android,strict,introduced=24 )));
int fseeko64(FILE*  __fp, off64_t __offset, int __whence) __attribute__((__availability__(android,strict,introduced=24 )));
__attribute__((__warn_unused_result__)) off64_t ftello64(FILE*  __fp) __attribute__((__availability__(android,strict,introduced=24 )));
__attribute__((__warn_unused_result__)) FILE*  fopen(const char*  __path, const char*  __mode);
__attribute__((__warn_unused_result__)) FILE*  fopen64(const char*  __path, const char*  __mode) __attribute__((__availability__(android,strict,introduced=24 )));
FILE*  freopen(const char*  __path, const char*  __mode, FILE*  __fp);
FILE*  freopen64(const char*  __path, const char*  __mode, FILE*  __fp) __attribute__((__availability__(android,strict,introduced=24 )));
__attribute__((__warn_unused_result__)) FILE*  tmpfile64(void) __attribute__((__availability__(android,strict,introduced=24 )));
int snprintf(char*  __buf, size_t __size, const char*  __fmt, ...) __attribute__((__format__(printf, 3, 4)));
int vfscanf(FILE*  __fp, const char*  __fmt, va_list __args) __attribute__((__format__(scanf, 2, 0)));
int vscanf(const char*  __fmt , va_list __args) __attribute__((__format__(scanf, 1, 0)));
int vsnprintf(char*  __buf, size_t __size, const char*  __fmt, va_list __args) __attribute__((__format__(printf, 3, 0)));
int vsscanf(const char*  __s, const char*  __fmt, va_list __args) __attribute__((__format__(scanf, 2, 0)));
char*  ctermid(char*  __buf) __attribute__((__availability__(android,strict,introduced=26 )));
__attribute__((__warn_unused_result__)) FILE*  fdopen(int __fd, const char*  __mode);
__attribute__((__warn_unused_result__)) int fileno(FILE*  __fp);
int pclose(FILE*  __fp);
__attribute__((__warn_unused_result__)) FILE*  popen(const char*  __command, const char*  __mode);
void flockfile(FILE*  __fp);
int ftrylockfile(FILE*  __fp);
void funlockfile(FILE*  __fp);
__attribute__((__warn_unused_result__)) int getc_unlocked(FILE*  __fp);
__attribute__((__warn_unused_result__)) int getchar_unlocked(void);
int putc_unlocked(int __ch, FILE*  __fp);
int putchar_unlocked(int __ch);
__attribute__((__warn_unused_result__)) FILE*  fmemopen(void*  __buf, size_t __size, const char*  __mode) __attribute__((__availability__(android,strict,introduced=23 )));
__attribute__((__warn_unused_result__)) FILE*  open_memstream(char*  *  __ptr, size_t*  __size_ptr) __attribute__((__availability__(android,strict,introduced=23 )));
int asprintf(char*  *  __s_ptr, const char*  __fmt, ...) __attribute__((__format__(printf, 2, 3)));
char*  fgetln(FILE*  __fp, size_t*  __length_ptr);
int fpurge(FILE*  __fp);
void setbuffer(FILE*  __fp, char*  __buf, int __size);
int setlinebuf(FILE*  __fp);
int vasprintf(char*  *  __s_ptr, const char*  __fmt, va_list __args) __attribute__((__format__(printf, 2, 0)));
void clearerr_unlocked(FILE*  __fp) __attribute__((__availability__(android,strict,introduced=23 )));
__attribute__((__warn_unused_result__)) int feof_unlocked(FILE*  __fp) __attribute__((__availability__(android,strict,introduced=23 )));
__attribute__((__warn_unused_result__)) int ferror_unlocked(FILE*  __fp) __attribute__((__availability__(android,strict,introduced=23 )));
__attribute__((__warn_unused_result__)) int fileno_unlocked(FILE*  __fp) __attribute__((__availability__(android,strict,introduced=24 )));
int open(const char*, int, ...);
extern pid_t getpid();
extern int unlink(const char*);
void free(void* p);
uint32_t arc4random(void);
static __inline__ FILE*  tmpfile() {
 int p = getpid();
 char* path;
 int i;
 for (i = 0; i < 100; i++) {
  unsigned int r = arc4random();
  if (asprintf(&path, "/data/data/com.termux/files/usr/tmp/tmpfile.%d-%u", p, r) == -1) return ((void*)0);
  int fd = open(path, 00000002 | 00000100 | 00000200 | 0400000, 0600);
  if (fd >= 0) {
   FILE* result = fdopen(fd, "w+");
   unlink(path);
   free(path);
   return result;
  }
  free(path);
 }
 return ((void*)0);
}
enum { _STDIO_H_ = 1 };
enum { _ARM_FCNTL_H = 1 };
enum { O_DIRECTORY = 040000 };
enum { O_NOFOLLOW = 0100000 };
enum { O_DIRECT = 0200000 };
enum { O_LARGEFILE = 0400000 };
enum { _ASM_GENERIC_FCNTL_H = 1 };
enum { O_ACCMODE = 00000003 };
enum { O_RDONLY = 00000000 };
enum { O_WRONLY = 00000001 };
enum { O_RDWR = 00000002 };
enum { O_CREAT = 00000100 };
enum { O_EXCL = 00000200 };
enum { O_NOCTTY = 00000400 };
enum { O_TRUNC = 00001000 };
enum { O_APPEND = 00002000 };
enum { O_NONBLOCK = 00004000 };
enum { O_DSYNC = 00010000 };
enum { FASYNC = 00020000 };
enum { O_NOATIME = 01000000 };
enum { O_CLOEXEC = 02000000 };
enum { __O_SYNC = 04000000 };
/* #define O_SYNC (__O_SYNC | O_DSYNC) ### define is not number */
enum { O_PATH = 010000000 };
enum { __O_TMPFILE = 020000000 };
/* #define O_TMPFILE (__O_TMPFILE | O_DIRECTORY) ### define is not number */
enum { O_NDELAY = 00004000 };
enum { F_DUPFD = 0 };
enum { F_GETFD = 1 };
enum { F_SETFD = 2 };
enum { F_GETFL = 3 };
enum { F_SETFL = 4 };
enum { F_GETLK = 5 };
enum { F_SETLK = 6 };
enum { F_SETLKW = 7 };
enum { F_SETOWN = 8 };
enum { F_GETOWN = 9 };
enum { F_SETSIG = 10 };
enum { F_GETSIG = 11 };
enum { F_GETLK64 = 12 };
enum { F_SETLK64 = 13 };
enum { F_SETLKW64 = 14 };
enum { F_SETOWN_EX = 15 };
enum { F_GETOWN_EX = 16 };
enum { F_GETOWNER_UIDS = 17 };
enum { F_OFD_GETLK = 36 };
enum { F_OFD_SETLK = 37 };
enum { F_OFD_SETLKW = 38 };
enum { F_OWNER_TID = 0 };
enum { F_OWNER_PID = 1 };
enum { F_OWNER_PGRP = 2 };
enum { FD_CLOEXEC = 1 };
enum { F_RDLCK = 0 };
enum { F_WRLCK = 1 };
enum { F_UNLCK = 2 };
enum { F_EXLCK = 4 };
enum { F_SHLCK = 8 };
enum { LOCK_SH = 1 };
enum { LOCK_EX = 2 };
enum { LOCK_NB = 4 };
enum { LOCK_UN = 8 };
enum { LOCK_MAND = 32 };
enum { LOCK_READ = 64 };
enum { LOCK_WRITE = 128 };
enum { LOCK_RW = 192 };
enum { F_LINUX_SPECIFIC_BASE = 1024 };
]] require 'ffi.req' 'c.SEEK' ffi.cdef[[
/* #define stdin stdin ### define is not number */
/* #define stdout stdout ### define is not number */
/* #define stderr stderr ### define is not number */
enum { _IOFBF = 0 };
enum { _IOLBF = 1 };
enum { _IONBF = 2 };
enum { BUFSIZ = 1024 };
/* #define EOF (-1) ### define is not number */
enum { FOPEN_MAX = 20 };
enum { FILENAME_MAX = 4096 };
enum { L_tmpnam = 4096 };
enum { TMP_MAX = 308915776 };
/* #define P_tmpdir "/data/data/com.termux/files/usr/tmp/" ### define is not number */
enum { L_ctermid = 1024 };
/* #define fropen (cookie,fn) funopen(cookie, fn, 0, 0, 0) ### define is not number */
/* #define fwopen (cookie,fn) funopen(cookie, 0, fn, 0, 0) ### define is not number */
/* + END <stdio.h> /data/data/com.termux/files/usr/bin/../../usr/include/stdio.h */
]]
-- special case since in the browser app where I'm capturing fopen for remote requests and caching
-- feel free to not use the returend table and just use ffi.C for faster access
-- but know you'll be losing compatability with browser
return setmetatable({}, {
	__index = ffi.C,
})
