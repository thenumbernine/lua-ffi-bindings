local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
/* ++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_symbol_aliasing.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* +++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_posix_availability.h */
/* ++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/cdefs.h */
struct __darwin_pthread_handler_rec {
	void (*__routine)(void *);
	void *__arg;
	struct __darwin_pthread_handler_rec *__next;
};
struct _opaque_pthread_attr_t {
	long __sig;
	char __opaque[56];
};
struct _opaque_pthread_cond_t {
	long __sig;
	char __opaque[40];
};
struct _opaque_pthread_condattr_t {
	long __sig;
	char __opaque[8];
};
struct _opaque_pthread_mutex_t {
	long __sig;
	char __opaque[56];
};
struct _opaque_pthread_mutexattr_t {
	long __sig;
	char __opaque[8];
};
struct _opaque_pthread_once_t {
	long __sig;
	char __opaque[8];
};
struct _opaque_pthread_rwlock_t {
	long __sig;
	char __opaque[192];
};
struct _opaque_pthread_rwlockattr_t {
	long __sig;
	char __opaque[16];
};
struct _opaque_pthread_t {
	long __sig;
	struct __darwin_pthread_handler_rec *__cleanup_stack;
	char __opaque[8176];
};
typedef struct _opaque_pthread_attr_t __darwin_pthread_attr_t;
typedef struct _opaque_pthread_cond_t __darwin_pthread_cond_t;
typedef struct _opaque_pthread_condattr_t __darwin_pthread_condattr_t;
typedef unsigned long __darwin_pthread_key_t;
typedef struct _opaque_pthread_mutex_t __darwin_pthread_mutex_t;
typedef struct _opaque_pthread_mutexattr_t __darwin_pthread_mutexattr_t;
typedef struct _opaque_pthread_once_t __darwin_pthread_once_t;
typedef struct _opaque_pthread_rwlock_t __darwin_pthread_rwlock_t;
typedef struct _opaque_pthread_rwlockattr_t __darwin_pthread_rwlockattr_t;
typedef struct _opaque_pthread_t *__darwin_pthread_t;
/* + END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/sys/_pthread/_pthread_types.h */
]]
