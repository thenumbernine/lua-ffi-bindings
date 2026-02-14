local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <semaphore.h> /boot/system/develop/headers/posix/semaphore.h */
/* ++ BEGIN <fcntl.h> /boot/system/develop/headers/posix/fcntl.h */
]] require 'ffi.req' 'c.fcntl' ffi.cdef[[
/* ++ END <fcntl.h> /boot/system/develop/headers/posix/fcntl.h */
/* ++ BEGIN <sys/cdefs.h> /boot/system/develop/headers/bsd/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /boot/system/develop/headers/bsd/sys/cdefs.h */
typedef struct _sem_t {
 int32_t type;
 union {
  int32_t named_sem_id;
  int32_t unnamed_sem;
 } u;
 int32_t padding[2];
} sem_t;
sem_t* sem_open(const char* name, int openFlags,...);
int sem_close(sem_t* semaphore);
int sem_unlink(const char* name);
int sem_init(sem_t* semaphore, int shared, unsigned value);
int sem_destroy(sem_t* semaphore);
int sem_post(sem_t* semaphore);
int sem_clockwait(sem_t* semaphore, clockid_t clock_id,
   const struct timespec* abstime);
int sem_timedwait(sem_t* semaphore, const struct timespec* abstime);
int sem_trywait(sem_t* semaphore);
int sem_wait(sem_t* semaphore);
int sem_getvalue(sem_t* semaphore, int* value);
enum { _SEMAPHORE_H_ = 1 };
/* #define SEM_FAILED ((sem_t*)(long)-1) ### define is not number */
/* #define SEM_VALUE_MAX INT_MAX ### define is not number */
/* + END <semaphore.h> /boot/system/develop/headers/posix/semaphore.h */
]]
return ffi.C
