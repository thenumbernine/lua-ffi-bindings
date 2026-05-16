local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <semaphore.h> /data/data/com.termux/files/usr/bin/../../usr/include/semaphore.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
struct timespec;
typedef struct {
  unsigned int count;
} sem_t;
int sem_clockwait(sem_t*  __sem, clockid_t __clock, const struct timespec*  __ts) __attribute__((__availability__(android,strict,introduced=30 )));
int sem_destroy(sem_t*  __sem);
int sem_getvalue(sem_t*  __sem, int*  __value);
int sem_init(sem_t*  __sem, int __shared, unsigned int __value);
int sem_post(sem_t*  __sem);
int sem_timedwait(sem_t*  __sem, const struct timespec*  __ts);
int sem_timedwait_monotonic_np(sem_t*  __sem, const struct timespec*  __ts) __attribute__((__availability__(android,strict,introduced=28 )));
int sem_trywait(sem_t*  __sem);
int sem_wait(sem_t*  __sem);
sem_t*  libandroid_sem_open(const char*  __name, int _flags, ...);
int libandroid_sem_close(sem_t*  __sem);
int libandroid_sem_unlink(const char*  __name);
enum { _SEMAPHORE_H = 1 };
/* #define SEM_FAILED __BIONIC_CAST(reinterpret_cast, sem_t*, 0) ### define is not number */
/* #define sem_open libandroid_sem_open ### define is not number */
/* #define sem_close libandroid_sem_close ### define is not number */
/* #define sem_unlink libandroid_sem_unlink ### define is not number */
/* + END <semaphore.h> /data/data/com.termux/files/usr/bin/../../usr/include/semaphore.h */
]]
return ffi.C
