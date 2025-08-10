local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <Python.h> /usr/include/python3.13/Python.h */
/* ++ BEGIN "patchlevel.h" /usr/include/python3.13/patchlevel.h */
/* ++ END "patchlevel.h" /usr/include/python3.13/patchlevel.h */
/* ++ BEGIN "pyconfig.h" /usr/include/python3.13/pyconfig.h */
/* +++ BEGIN <x86_64-linux-gnu/python3.13/pyconfig.h> /usr/include/x86_64-linux-gnu/python3.13/pyconfig.h */
/* +++ END <x86_64-linux-gnu/python3.13/pyconfig.h> /usr/include/x86_64-linux-gnu/python3.13/pyconfig.h */
/* ++ END "pyconfig.h" /usr/include/python3.13/pyconfig.h */
/* ++ BEGIN "pymacconfig.h" /usr/include/python3.13/pymacconfig.h */
/* ++ END "pymacconfig.h" /usr/include/python3.13/pymacconfig.h */
/* ++ BEGIN <assert.h> /usr/include/assert.h */
/* ++ END <assert.h> /usr/include/assert.h */
/* ++ BEGIN <inttypes.h> /usr/include/inttypes.h */
]] require 'ffi.req' 'c.inttypes' ffi.cdef[[
/* ++ END <inttypes.h> /usr/include/inttypes.h */
/* ++ BEGIN <limits.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/limits.h */
]] require 'ffi.req' 'c.limits' ffi.cdef[[
/* ++ END <limits.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/limits.h */
/* ++ BEGIN <math.h> /usr/include/math.h */
]] require 'ffi.req' 'c.math' ffi.cdef[[
/* ++ END <math.h> /usr/include/math.h */
/* ++ BEGIN <stdarg.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stdarg.h */
]] require 'ffi.req' 'c.stdarg' ffi.cdef[[
/* ++ END <stdarg.h> /usr/lib/gcc/x86_64-linux-gnu/14/include/stdarg.h */
/* ++ BEGIN <wchar.h> /usr/include/wchar.h */
]] require 'ffi.req' 'c.wchar' ffi.cdef[[
/* ++ END <wchar.h> /usr/include/wchar.h */
/* ++ BEGIN <sys/types.h> /usr/include/x86_64-linux-gnu/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> /usr/include/x86_64-linux-gnu/sys/types.h */
/* ++ BEGIN <errno.h> /usr/include/errno.h */
]] require 'ffi.req' 'c.errno' ffi.cdef[[
/* ++ END <errno.h> /usr/include/errno.h */
/* ++ BEGIN <stdio.h> /usr/include/stdio.h */
]] require 'ffi.req' 'c.stdio' ffi.cdef[[
/* ++ END <stdio.h> /usr/include/stdio.h */
/* ++ BEGIN <stdlib.h> /usr/include/stdlib.h */
]] require 'ffi.req' 'c.stdlib' ffi.cdef[[
/* ++ END <stdlib.h> /usr/include/stdlib.h */
/* ++ BEGIN <string.h> /usr/include/string.h */
]] require 'ffi.req' 'c.string' ffi.cdef[[
/* ++ END <string.h> /usr/include/string.h */
/* ++ BEGIN <ctype.h> /usr/include/ctype.h */
]] require 'ffi.req' 'c.ctype' ffi.cdef[[
/* ++ END <ctype.h> /usr/include/ctype.h */
/* ++ BEGIN <unistd.h> /usr/include/unistd.h */
]] require 'ffi.req' 'c.unistd' ffi.cdef[[
/* ++ END <unistd.h> /usr/include/unistd.h */
/* ++ BEGIN "pyport.h" /usr/include/python3.13/pyport.h */
typedef uintptr_t Py_uintptr_t;
typedef intptr_t Py_intptr_t;
typedef ssize_t Py_ssize_t;
typedef Py_ssize_t Py_hash_t;
typedef size_t Py_uhash_t;
typedef Py_ssize_t Py_ssize_clean_t;
/* +++ BEGIN "exports.h" /usr/include/python3.13/exports.h */
/* +++ END "exports.h" /usr/include/python3.13/exports.h */
/* ++ END "pyport.h" /usr/include/python3.13/pyport.h */
/* ++ BEGIN "pymacro.h" /usr/include/python3.13/pymacro.h */
/* ++ END "pymacro.h" /usr/include/python3.13/pymacro.h */
/* ++ BEGIN "pymath.h" /usr/include/python3.13/pymath.h */
/* ++ END "pymath.h" /usr/include/python3.13/pymath.h */
/* ++ BEGIN "pymem.h" /usr/include/python3.13/pymem.h */
__attribute__ ((visibility ("default"))) void * PyMem_Malloc(size_t size);
__attribute__ ((visibility ("default"))) void * PyMem_Calloc(size_t nelem, size_t elsize);
__attribute__ ((visibility ("default"))) void * PyMem_Realloc(void *ptr, size_t new_size);
__attribute__ ((visibility ("default"))) void PyMem_Free(void *ptr);
__attribute__ ((visibility ("default"))) void * PyMem_RawMalloc(size_t size);
__attribute__ ((visibility ("default"))) void * PyMem_RawCalloc(size_t nelem, size_t elsize);
__attribute__ ((visibility ("default"))) void * PyMem_RawRealloc(void *ptr, size_t new_size);
__attribute__ ((visibility ("default"))) void PyMem_RawFree(void *ptr);
/* +++ BEGIN "cpython/pymem.h" /usr/include/python3.13/cpython/pymem.h */
typedef enum {
    PYMEM_DOMAIN_RAW,
    PYMEM_DOMAIN_MEM,
    PYMEM_DOMAIN_OBJ
} PyMemAllocatorDomain;
typedef enum {
    PYMEM_ALLOCATOR_NOT_SET = 0,
    PYMEM_ALLOCATOR_DEFAULT = 1,
    PYMEM_ALLOCATOR_DEBUG = 2,
    PYMEM_ALLOCATOR_MALLOC = 3,
    PYMEM_ALLOCATOR_MALLOC_DEBUG = 4,
    PYMEM_ALLOCATOR_PYMALLOC = 5,
    PYMEM_ALLOCATOR_PYMALLOC_DEBUG = 6,
    PYMEM_ALLOCATOR_MIMALLOC = 7,
    PYMEM_ALLOCATOR_MIMALLOC_DEBUG = 8,
} PyMemAllocatorName;
typedef struct {
    void *ctx;
    void* (*malloc) (void *ctx, size_t size);
    void* (*calloc) (void *ctx, size_t nelem, size_t elsize);
    void* (*realloc) (void *ctx, void *ptr, size_t new_size);
    void (*free) (void *ctx, void *ptr);
} PyMemAllocatorEx;
__attribute__ ((visibility ("default"))) void PyMem_GetAllocator(PyMemAllocatorDomain domain,
                                    PyMemAllocatorEx *allocator);
__attribute__ ((visibility ("default"))) void PyMem_SetAllocator(PyMemAllocatorDomain domain,
                                    PyMemAllocatorEx *allocator);
__attribute__ ((visibility ("default"))) void PyMem_SetupDebugHooks(void);
/* +++ END "cpython/pymem.h" /usr/include/python3.13/cpython/pymem.h */
/* ++ END "pymem.h" /usr/include/python3.13/pymem.h */
/* ++ BEGIN "pytypedefs.h" /usr/include/python3.13/pytypedefs.h */
typedef struct PyModuleDef PyModuleDef;
typedef struct PyModuleDef_Slot PyModuleDef_Slot;
typedef struct PyMethodDef PyMethodDef;
typedef struct PyGetSetDef PyGetSetDef;
typedef struct PyMemberDef PyMemberDef;
typedef struct _object PyObject;
typedef struct _longobject PyLongObject;
typedef struct _typeobject PyTypeObject;
typedef struct PyCodeObject PyCodeObject;
typedef struct _frame PyFrameObject;
typedef struct _ts PyThreadState;
typedef struct _is PyInterpreterState;
/* ++ END "pytypedefs.h" /usr/include/python3.13/pytypedefs.h */
/* ++ BEGIN "pybuffer.h" /usr/include/python3.13/pybuffer.h */
typedef struct {
    void *buf;
    PyObject *obj;
    Py_ssize_t len;
    Py_ssize_t itemsize;
    int readonly;
    int ndim;
    char *format;
    Py_ssize_t *shape;
    Py_ssize_t *strides;
    Py_ssize_t *suboffsets;
    void *internal;
} Py_buffer;
typedef int (*getbufferproc)(PyObject *, Py_buffer *, int);
typedef void (*releasebufferproc)(PyObject *, Py_buffer *);
__attribute__ ((visibility ("default"))) int PyObject_CheckBuffer(PyObject *obj);
__attribute__ ((visibility ("default"))) int PyObject_GetBuffer(PyObject *obj, Py_buffer *view,
                                   int flags);
__attribute__ ((visibility ("default"))) void * PyBuffer_GetPointer(const Py_buffer *view, const Py_ssize_t *indices);
__attribute__ ((visibility ("default"))) Py_ssize_t PyBuffer_SizeFromFormat(const char *format);
__attribute__ ((visibility ("default"))) int PyBuffer_ToContiguous(void *buf, const Py_buffer *view,
                                      Py_ssize_t len, char order);
__attribute__ ((visibility ("default"))) int PyBuffer_FromContiguous(const Py_buffer *view, const void *buf,
                                        Py_ssize_t len, char order);
__attribute__ ((visibility ("default"))) int PyObject_CopyData(PyObject *dest, PyObject *src);
__attribute__ ((visibility ("default"))) int PyBuffer_IsContiguous(const Py_buffer *view, char fort);
__attribute__ ((visibility ("default"))) void PyBuffer_FillContiguousStrides(int ndims,
                                               Py_ssize_t *shape,
                                               Py_ssize_t *strides,
                                               int itemsize,
                                               char fort);
__attribute__ ((visibility ("default"))) int PyBuffer_FillInfo(Py_buffer *view, PyObject *o, void *buf,
                                  Py_ssize_t len, int readonly,
                                  int flags);
__attribute__ ((visibility ("default"))) void PyBuffer_Release(Py_buffer *view);
/* ++ END "pybuffer.h" /usr/include/python3.13/pybuffer.h */
/* ++ BEGIN "pystats.h" /usr/include/python3.13/pystats.h */
/* ++ END "pystats.h" /usr/include/python3.13/pystats.h */
/* ++ BEGIN "pyatomic.h" /usr/include/python3.13/pyatomic.h */
/* +++ BEGIN "cpython/pyatomic.h" /usr/include/python3.13/cpython/pyatomic.h */
static inline int
_Py_atomic_add_int(int *obj, int value);
static inline int8_t
_Py_atomic_add_int8(int8_t *obj, int8_t value);
static inline int16_t
_Py_atomic_add_int16(int16_t *obj, int16_t value);
static inline int32_t
_Py_atomic_add_int32(int32_t *obj, int32_t value);
static inline int64_t
_Py_atomic_add_int64(int64_t *obj, int64_t value);
static inline intptr_t
_Py_atomic_add_intptr(intptr_t *obj, intptr_t value);
static inline unsigned int
_Py_atomic_add_uint(unsigned int *obj, unsigned int value);
static inline uint8_t
_Py_atomic_add_uint8(uint8_t *obj, uint8_t value);
static inline uint16_t
_Py_atomic_add_uint16(uint16_t *obj, uint16_t value);
static inline uint32_t
_Py_atomic_add_uint32(uint32_t *obj, uint32_t value);
static inline uint64_t
_Py_atomic_add_uint64(uint64_t *obj, uint64_t value);
static inline uintptr_t
_Py_atomic_add_uintptr(uintptr_t *obj, uintptr_t value);
static inline Py_ssize_t
_Py_atomic_add_ssize(Py_ssize_t *obj, Py_ssize_t value);
static inline int
_Py_atomic_compare_exchange_int(int *obj, int *expected, int desired);
static inline int
_Py_atomic_compare_exchange_int8(int8_t *obj, int8_t *expected, int8_t desired);
static inline int
_Py_atomic_compare_exchange_int16(int16_t *obj, int16_t *expected, int16_t desired);
static inline int
_Py_atomic_compare_exchange_int32(int32_t *obj, int32_t *expected, int32_t desired);
static inline int
_Py_atomic_compare_exchange_int64(int64_t *obj, int64_t *expected, int64_t desired);
static inline int
_Py_atomic_compare_exchange_intptr(intptr_t *obj, intptr_t *expected, intptr_t desired);
static inline int
_Py_atomic_compare_exchange_uint(unsigned int *obj, unsigned int *expected, unsigned int desired);
static inline int
_Py_atomic_compare_exchange_uint8(uint8_t *obj, uint8_t *expected, uint8_t desired);
static inline int
_Py_atomic_compare_exchange_uint16(uint16_t *obj, uint16_t *expected, uint16_t desired);
static inline int
_Py_atomic_compare_exchange_uint32(uint32_t *obj, uint32_t *expected, uint32_t desired);
static inline int
_Py_atomic_compare_exchange_uint64(uint64_t *obj, uint64_t *expected, uint64_t desired);
static inline int
_Py_atomic_compare_exchange_uintptr(uintptr_t *obj, uintptr_t *expected, uintptr_t desired);
static inline int
_Py_atomic_compare_exchange_ssize(Py_ssize_t *obj, Py_ssize_t *expected, Py_ssize_t desired);
static inline int
_Py_atomic_compare_exchange_ptr(void *obj, void *expected, void *value);
static inline int
_Py_atomic_exchange_int(int *obj, int value);
static inline int8_t
_Py_atomic_exchange_int8(int8_t *obj, int8_t value);
static inline int16_t
_Py_atomic_exchange_int16(int16_t *obj, int16_t value);
static inline int32_t
_Py_atomic_exchange_int32(int32_t *obj, int32_t value);
static inline int64_t
_Py_atomic_exchange_int64(int64_t *obj, int64_t value);
static inline intptr_t
_Py_atomic_exchange_intptr(intptr_t *obj, intptr_t value);
static inline unsigned int
_Py_atomic_exchange_uint(unsigned int *obj, unsigned int value);
static inline uint8_t
_Py_atomic_exchange_uint8(uint8_t *obj, uint8_t value);
static inline uint16_t
_Py_atomic_exchange_uint16(uint16_t *obj, uint16_t value);
static inline uint32_t
_Py_atomic_exchange_uint32(uint32_t *obj, uint32_t value);
static inline uint64_t
_Py_atomic_exchange_uint64(uint64_t *obj, uint64_t value);
static inline uintptr_t
_Py_atomic_exchange_uintptr(uintptr_t *obj, uintptr_t value);
static inline Py_ssize_t
_Py_atomic_exchange_ssize(Py_ssize_t *obj, Py_ssize_t value);
static inline void *
_Py_atomic_exchange_ptr(void *obj, void *value);
static inline uint8_t
_Py_atomic_and_uint8(uint8_t *obj, uint8_t value);
static inline uint16_t
_Py_atomic_and_uint16(uint16_t *obj, uint16_t value);
static inline uint32_t
_Py_atomic_and_uint32(uint32_t *obj, uint32_t value);
static inline uint64_t
_Py_atomic_and_uint64(uint64_t *obj, uint64_t value);
static inline uintptr_t
_Py_atomic_and_uintptr(uintptr_t *obj, uintptr_t value);
static inline uint8_t
_Py_atomic_or_uint8(uint8_t *obj, uint8_t value);
static inline uint16_t
_Py_atomic_or_uint16(uint16_t *obj, uint16_t value);
static inline uint32_t
_Py_atomic_or_uint32(uint32_t *obj, uint32_t value);
static inline uint64_t
_Py_atomic_or_uint64(uint64_t *obj, uint64_t value);
static inline uintptr_t
_Py_atomic_or_uintptr(uintptr_t *obj, uintptr_t value);
static inline int
_Py_atomic_load_int(const int *obj);
static inline int8_t
_Py_atomic_load_int8(const int8_t *obj);
static inline int16_t
_Py_atomic_load_int16(const int16_t *obj);
static inline int32_t
_Py_atomic_load_int32(const int32_t *obj);
static inline int64_t
_Py_atomic_load_int64(const int64_t *obj);
static inline intptr_t
_Py_atomic_load_intptr(const intptr_t *obj);
static inline uint8_t
_Py_atomic_load_uint8(const uint8_t *obj);
static inline uint16_t
_Py_atomic_load_uint16(const uint16_t *obj);
static inline uint32_t
_Py_atomic_load_uint32(const uint32_t *obj);
static inline uint64_t
_Py_atomic_load_uint64(const uint64_t *obj);
static inline uintptr_t
_Py_atomic_load_uintptr(const uintptr_t *obj);
static inline unsigned int
_Py_atomic_load_uint(const unsigned int *obj);
static inline Py_ssize_t
_Py_atomic_load_ssize(const Py_ssize_t *obj);
static inline void *
_Py_atomic_load_ptr(const void *obj);
static inline int
_Py_atomic_load_int_relaxed(const int *obj);
static inline int8_t
_Py_atomic_load_int8_relaxed(const int8_t *obj);
static inline int16_t
_Py_atomic_load_int16_relaxed(const int16_t *obj);
static inline int32_t
_Py_atomic_load_int32_relaxed(const int32_t *obj);
static inline int64_t
_Py_atomic_load_int64_relaxed(const int64_t *obj);
static inline intptr_t
_Py_atomic_load_intptr_relaxed(const intptr_t *obj);
static inline uint8_t
_Py_atomic_load_uint8_relaxed(const uint8_t *obj);
static inline uint16_t
_Py_atomic_load_uint16_relaxed(const uint16_t *obj);
static inline uint32_t
_Py_atomic_load_uint32_relaxed(const uint32_t *obj);
static inline uint64_t
_Py_atomic_load_uint64_relaxed(const uint64_t *obj);
static inline uintptr_t
_Py_atomic_load_uintptr_relaxed(const uintptr_t *obj);
static inline unsigned int
_Py_atomic_load_uint_relaxed(const unsigned int *obj);
static inline Py_ssize_t
_Py_atomic_load_ssize_relaxed(const Py_ssize_t *obj);
static inline void *
_Py_atomic_load_ptr_relaxed(const void *obj);
static inline unsigned long long
_Py_atomic_load_ullong_relaxed(const unsigned long long *obj);
static inline void
_Py_atomic_store_int(int *obj, int value);
static inline void
_Py_atomic_store_int8(int8_t *obj, int8_t value);
static inline void
_Py_atomic_store_int16(int16_t *obj, int16_t value);
static inline void
_Py_atomic_store_int32(int32_t *obj, int32_t value);
static inline void
_Py_atomic_store_int64(int64_t *obj, int64_t value);
static inline void
_Py_atomic_store_intptr(intptr_t *obj, intptr_t value);
static inline void
_Py_atomic_store_uint8(uint8_t *obj, uint8_t value);
static inline void
_Py_atomic_store_uint16(uint16_t *obj, uint16_t value);
static inline void
_Py_atomic_store_uint32(uint32_t *obj, uint32_t value);
static inline void
_Py_atomic_store_uint64(uint64_t *obj, uint64_t value);
static inline void
_Py_atomic_store_uintptr(uintptr_t *obj, uintptr_t value);
static inline void
_Py_atomic_store_uint(unsigned int *obj, unsigned int value);
static inline void
_Py_atomic_store_ptr(void *obj, void *value);
static inline void
_Py_atomic_store_ssize(Py_ssize_t* obj, Py_ssize_t value);
static inline void
_Py_atomic_store_int_relaxed(int *obj, int value);
static inline void
_Py_atomic_store_int8_relaxed(int8_t *obj, int8_t value);
static inline void
_Py_atomic_store_int16_relaxed(int16_t *obj, int16_t value);
static inline void
_Py_atomic_store_int32_relaxed(int32_t *obj, int32_t value);
static inline void
_Py_atomic_store_int64_relaxed(int64_t *obj, int64_t value);
static inline void
_Py_atomic_store_intptr_relaxed(intptr_t *obj, intptr_t value);
static inline void
_Py_atomic_store_uint8_relaxed(uint8_t* obj, uint8_t value);
static inline void
_Py_atomic_store_uint16_relaxed(uint16_t *obj, uint16_t value);
static inline void
_Py_atomic_store_uint32_relaxed(uint32_t *obj, uint32_t value);
static inline void
_Py_atomic_store_uint64_relaxed(uint64_t *obj, uint64_t value);
static inline void
_Py_atomic_store_uintptr_relaxed(uintptr_t *obj, uintptr_t value);
static inline void
_Py_atomic_store_uint_relaxed(unsigned int *obj, unsigned int value);
static inline void
_Py_atomic_store_ptr_relaxed(void *obj, void *value);
static inline void
_Py_atomic_store_ssize_relaxed(Py_ssize_t *obj, Py_ssize_t value);
static inline void
_Py_atomic_store_ullong_relaxed(unsigned long long *obj,
                                unsigned long long value);
static inline void *
_Py_atomic_load_ptr_acquire(const void *obj);
static inline uintptr_t
_Py_atomic_load_uintptr_acquire(const uintptr_t *obj);
static inline void
_Py_atomic_store_ptr_release(void *obj, void *value);
static inline void
_Py_atomic_store_uintptr_release(uintptr_t *obj, uintptr_t value);
static inline void
_Py_atomic_store_ssize_release(Py_ssize_t *obj, Py_ssize_t value);
static inline void
_Py_atomic_store_int_release(int *obj, int value);
static inline int
_Py_atomic_load_int_acquire(const int *obj);
static inline void
_Py_atomic_store_uint32_release(uint32_t *obj, uint32_t value);
static inline void
_Py_atomic_store_uint64_release(uint64_t *obj, uint64_t value);
static inline uint64_t
_Py_atomic_load_uint64_acquire(const uint64_t *obj);
static inline uint32_t
_Py_atomic_load_uint32_acquire(const uint32_t *obj);
static inline Py_ssize_t
_Py_atomic_load_ssize_acquire(const Py_ssize_t *obj);
static inline void _Py_atomic_fence_seq_cst(void);
static inline void _Py_atomic_fence_acquire(void);
static inline void _Py_atomic_fence_release(void);
/* ++++ BEGIN "pyatomic_gcc.h" /usr/include/python3.13/cpython/pyatomic_gcc.h */
static inline int
_Py_atomic_add_int(int *obj, int value)
{ return __atomic_fetch_add(obj, value, 5); }
static inline int8_t
_Py_atomic_add_int8(int8_t *obj, int8_t value)
{ return __atomic_fetch_add(obj, value, 5); }
static inline int16_t
_Py_atomic_add_int16(int16_t *obj, int16_t value)
{ return __atomic_fetch_add(obj, value, 5); }
static inline int32_t
_Py_atomic_add_int32(int32_t *obj, int32_t value)
{ return __atomic_fetch_add(obj, value, 5); }
static inline int64_t
_Py_atomic_add_int64(int64_t *obj, int64_t value)
{ return __atomic_fetch_add(obj, value, 5); }
static inline intptr_t
_Py_atomic_add_intptr(intptr_t *obj, intptr_t value)
{ return __atomic_fetch_add(obj, value, 5); }
static inline unsigned int
_Py_atomic_add_uint(unsigned int *obj, unsigned int value)
{ return __atomic_fetch_add(obj, value, 5); }
static inline uint8_t
_Py_atomic_add_uint8(uint8_t *obj, uint8_t value)
{ return __atomic_fetch_add(obj, value, 5); }
static inline uint16_t
_Py_atomic_add_uint16(uint16_t *obj, uint16_t value)
{ return __atomic_fetch_add(obj, value, 5); }
static inline uint32_t
_Py_atomic_add_uint32(uint32_t *obj, uint32_t value)
{ return __atomic_fetch_add(obj, value, 5); }
static inline uint64_t
_Py_atomic_add_uint64(uint64_t *obj, uint64_t value)
{ return __atomic_fetch_add(obj, value, 5); }
static inline uintptr_t
_Py_atomic_add_uintptr(uintptr_t *obj, uintptr_t value)
{ return __atomic_fetch_add(obj, value, 5); }
static inline Py_ssize_t
_Py_atomic_add_ssize(Py_ssize_t *obj, Py_ssize_t value)
{ return __atomic_fetch_add(obj, value, 5); }
static inline int
_Py_atomic_compare_exchange_int(int *obj, int *expected, int desired)
{ return __atomic_compare_exchange_n(obj, expected, desired, 0,
                                     5, 5); }
static inline int
_Py_atomic_compare_exchange_int8(int8_t *obj, int8_t *expected, int8_t desired)
{ return __atomic_compare_exchange_n(obj, expected, desired, 0,
                                     5, 5); }
static inline int
_Py_atomic_compare_exchange_int16(int16_t *obj, int16_t *expected, int16_t desired)
{ return __atomic_compare_exchange_n(obj, expected, desired, 0,
                                     5, 5); }
static inline int
_Py_atomic_compare_exchange_int32(int32_t *obj, int32_t *expected, int32_t desired)
{ return __atomic_compare_exchange_n(obj, expected, desired, 0,
                                     5, 5); }
static inline int
_Py_atomic_compare_exchange_int64(int64_t *obj, int64_t *expected, int64_t desired)
{ return __atomic_compare_exchange_n(obj, expected, desired, 0,
                                     5, 5); }
static inline int
_Py_atomic_compare_exchange_intptr(intptr_t *obj, intptr_t *expected, intptr_t desired)
{ return __atomic_compare_exchange_n(obj, expected, desired, 0,
                                     5, 5); }
static inline int
_Py_atomic_compare_exchange_uint(unsigned int *obj, unsigned int *expected, unsigned int desired)
{ return __atomic_compare_exchange_n(obj, expected, desired, 0,
                                     5, 5); }
static inline int
_Py_atomic_compare_exchange_uint8(uint8_t *obj, uint8_t *expected, uint8_t desired)
{ return __atomic_compare_exchange_n(obj, expected, desired, 0,
                                     5, 5); }
static inline int
_Py_atomic_compare_exchange_uint16(uint16_t *obj, uint16_t *expected, uint16_t desired)
{ return __atomic_compare_exchange_n(obj, expected, desired, 0,
                                     5, 5); }
static inline int
_Py_atomic_compare_exchange_uint32(uint32_t *obj, uint32_t *expected, uint32_t desired)
{ return __atomic_compare_exchange_n(obj, expected, desired, 0,
                                     5, 5); }
static inline int
_Py_atomic_compare_exchange_uint64(uint64_t *obj, uint64_t *expected, uint64_t desired)
{ return __atomic_compare_exchange_n(obj, expected, desired, 0,
                                     5, 5); }
static inline int
_Py_atomic_compare_exchange_uintptr(uintptr_t *obj, uintptr_t *expected, uintptr_t desired)
{ return __atomic_compare_exchange_n(obj, expected, desired, 0,
                                     5, 5); }
static inline int
_Py_atomic_compare_exchange_ssize(Py_ssize_t *obj, Py_ssize_t *expected, Py_ssize_t desired)
{ return __atomic_compare_exchange_n(obj, expected, desired, 0,
                                     5, 5); }
static inline int
_Py_atomic_compare_exchange_ptr(void *obj, void *expected, void *desired)
{ return __atomic_compare_exchange_n((void **)obj, (void **)expected, desired, 0,
                                     5, 5); }
static inline int
_Py_atomic_exchange_int(int *obj, int value)
{ return __atomic_exchange_n(obj, value, 5); }
static inline int8_t
_Py_atomic_exchange_int8(int8_t *obj, int8_t value)
{ return __atomic_exchange_n(obj, value, 5); }
static inline int16_t
_Py_atomic_exchange_int16(int16_t *obj, int16_t value)
{ return __atomic_exchange_n(obj, value, 5); }
static inline int32_t
_Py_atomic_exchange_int32(int32_t *obj, int32_t value)
{ return __atomic_exchange_n(obj, value, 5); }
static inline int64_t
_Py_atomic_exchange_int64(int64_t *obj, int64_t value)
{ return __atomic_exchange_n(obj, value, 5); }
static inline intptr_t
_Py_atomic_exchange_intptr(intptr_t *obj, intptr_t value)
{ return __atomic_exchange_n(obj, value, 5); }
static inline unsigned int
_Py_atomic_exchange_uint(unsigned int *obj, unsigned int value)
{ return __atomic_exchange_n(obj, value, 5); }
static inline uint8_t
_Py_atomic_exchange_uint8(uint8_t *obj, uint8_t value)
{ return __atomic_exchange_n(obj, value, 5); }
static inline uint16_t
_Py_atomic_exchange_uint16(uint16_t *obj, uint16_t value)
{ return __atomic_exchange_n(obj, value, 5); }
static inline uint32_t
_Py_atomic_exchange_uint32(uint32_t *obj, uint32_t value)
{ return __atomic_exchange_n(obj, value, 5); }
static inline uint64_t
_Py_atomic_exchange_uint64(uint64_t *obj, uint64_t value)
{ return __atomic_exchange_n(obj, value, 5); }
static inline uintptr_t
_Py_atomic_exchange_uintptr(uintptr_t *obj, uintptr_t value)
{ return __atomic_exchange_n(obj, value, 5); }
static inline Py_ssize_t
_Py_atomic_exchange_ssize(Py_ssize_t *obj, Py_ssize_t value)
{ return __atomic_exchange_n(obj, value, 5); }
static inline void *
_Py_atomic_exchange_ptr(void *obj, void *value)
{ return __atomic_exchange_n((void **)obj, value, 5); }
static inline uint8_t
_Py_atomic_and_uint8(uint8_t *obj, uint8_t value)
{ return __atomic_fetch_and(obj, value, 5); }
static inline uint16_t
_Py_atomic_and_uint16(uint16_t *obj, uint16_t value)
{ return __atomic_fetch_and(obj, value, 5); }
static inline uint32_t
_Py_atomic_and_uint32(uint32_t *obj, uint32_t value)
{ return __atomic_fetch_and(obj, value, 5); }
static inline uint64_t
_Py_atomic_and_uint64(uint64_t *obj, uint64_t value)
{ return __atomic_fetch_and(obj, value, 5); }
static inline uintptr_t
_Py_atomic_and_uintptr(uintptr_t *obj, uintptr_t value)
{ return __atomic_fetch_and(obj, value, 5); }
static inline uint8_t
_Py_atomic_or_uint8(uint8_t *obj, uint8_t value)
{ return __atomic_fetch_or(obj, value, 5); }
static inline uint16_t
_Py_atomic_or_uint16(uint16_t *obj, uint16_t value)
{ return __atomic_fetch_or(obj, value, 5); }
static inline uint32_t
_Py_atomic_or_uint32(uint32_t *obj, uint32_t value)
{ return __atomic_fetch_or(obj, value, 5); }
static inline uint64_t
_Py_atomic_or_uint64(uint64_t *obj, uint64_t value)
{ return __atomic_fetch_or(obj, value, 5); }
static inline uintptr_t
_Py_atomic_or_uintptr(uintptr_t *obj, uintptr_t value)
{ return __atomic_fetch_or(obj, value, 5); }
static inline int
_Py_atomic_load_int(const int *obj)
{ return __atomic_load_n(obj, 5); }
static inline int8_t
_Py_atomic_load_int8(const int8_t *obj)
{ return __atomic_load_n(obj, 5); }
static inline int16_t
_Py_atomic_load_int16(const int16_t *obj)
{ return __atomic_load_n(obj, 5); }
static inline int32_t
_Py_atomic_load_int32(const int32_t *obj)
{ return __atomic_load_n(obj, 5); }
static inline int64_t
_Py_atomic_load_int64(const int64_t *obj)
{ return __atomic_load_n(obj, 5); }
static inline intptr_t
_Py_atomic_load_intptr(const intptr_t *obj)
{ return __atomic_load_n(obj, 5); }
static inline uint8_t
_Py_atomic_load_uint8(const uint8_t *obj)
{ return __atomic_load_n(obj, 5); }
static inline uint16_t
_Py_atomic_load_uint16(const uint16_t *obj)
{ return __atomic_load_n(obj, 5); }
static inline uint32_t
_Py_atomic_load_uint32(const uint32_t *obj)
{ return __atomic_load_n(obj, 5); }
static inline uint64_t
_Py_atomic_load_uint64(const uint64_t *obj)
{ return __atomic_load_n(obj, 5); }
static inline uintptr_t
_Py_atomic_load_uintptr(const uintptr_t *obj)
{ return __atomic_load_n(obj, 5); }
static inline unsigned int
_Py_atomic_load_uint(const unsigned int *obj)
{ return __atomic_load_n(obj, 5); }
static inline Py_ssize_t
_Py_atomic_load_ssize(const Py_ssize_t *obj)
{ return __atomic_load_n(obj, 5); }
static inline void *
_Py_atomic_load_ptr(const void *obj)
{ return (void *)__atomic_load_n((void * const *)obj, 5); }
static inline int
_Py_atomic_load_int_relaxed(const int *obj)
{ return __atomic_load_n(obj, 0); }
static inline int8_t
_Py_atomic_load_int8_relaxed(const int8_t *obj)
{ return __atomic_load_n(obj, 0); }
static inline int16_t
_Py_atomic_load_int16_relaxed(const int16_t *obj)
{ return __atomic_load_n(obj, 0); }
static inline int32_t
_Py_atomic_load_int32_relaxed(const int32_t *obj)
{ return __atomic_load_n(obj, 0); }
static inline int64_t
_Py_atomic_load_int64_relaxed(const int64_t *obj)
{ return __atomic_load_n(obj, 0); }
static inline intptr_t
_Py_atomic_load_intptr_relaxed(const intptr_t *obj)
{ return __atomic_load_n(obj, 0); }
static inline uint8_t
_Py_atomic_load_uint8_relaxed(const uint8_t *obj)
{ return __atomic_load_n(obj, 0); }
static inline uint16_t
_Py_atomic_load_uint16_relaxed(const uint16_t *obj)
{ return __atomic_load_n(obj, 0); }
static inline uint32_t
_Py_atomic_load_uint32_relaxed(const uint32_t *obj)
{ return __atomic_load_n(obj, 0); }
static inline uint64_t
_Py_atomic_load_uint64_relaxed(const uint64_t *obj)
{ return __atomic_load_n(obj, 0); }
static inline uintptr_t
_Py_atomic_load_uintptr_relaxed(const uintptr_t *obj)
{ return __atomic_load_n(obj, 0); }
static inline unsigned int
_Py_atomic_load_uint_relaxed(const unsigned int *obj)
{ return __atomic_load_n(obj, 0); }
static inline Py_ssize_t
_Py_atomic_load_ssize_relaxed(const Py_ssize_t *obj)
{ return __atomic_load_n(obj, 0); }
static inline void *
_Py_atomic_load_ptr_relaxed(const void *obj)
{ return (void *)__atomic_load_n((void * const *)obj, 0); }
static inline unsigned long long
_Py_atomic_load_ullong_relaxed(const unsigned long long *obj)
{ return __atomic_load_n(obj, 0); }
static inline void
_Py_atomic_store_int(int *obj, int value)
{ __atomic_store_n(obj, value, 5); }
static inline void
_Py_atomic_store_int8(int8_t *obj, int8_t value)
{ __atomic_store_n(obj, value, 5); }
static inline void
_Py_atomic_store_int16(int16_t *obj, int16_t value)
{ __atomic_store_n(obj, value, 5); }
static inline void
_Py_atomic_store_int32(int32_t *obj, int32_t value)
{ __atomic_store_n(obj, value, 5); }
static inline void
_Py_atomic_store_int64(int64_t *obj, int64_t value)
{ __atomic_store_n(obj, value, 5); }
static inline void
_Py_atomic_store_intptr(intptr_t *obj, intptr_t value)
{ __atomic_store_n(obj, value, 5); }
static inline void
_Py_atomic_store_uint8(uint8_t *obj, uint8_t value)
{ __atomic_store_n(obj, value, 5); }
static inline void
_Py_atomic_store_uint16(uint16_t *obj, uint16_t value)
{ __atomic_store_n(obj, value, 5); }
static inline void
_Py_atomic_store_uint32(uint32_t *obj, uint32_t value)
{ __atomic_store_n(obj, value, 5); }
static inline void
_Py_atomic_store_uint64(uint64_t *obj, uint64_t value)
{ __atomic_store_n(obj, value, 5); }
static inline void
_Py_atomic_store_uintptr(uintptr_t *obj, uintptr_t value)
{ __atomic_store_n(obj, value, 5); }
static inline void
_Py_atomic_store_uint(unsigned int *obj, unsigned int value)
{ __atomic_store_n(obj, value, 5); }
static inline void
_Py_atomic_store_ptr(void *obj, void *value)
{ __atomic_store_n((void **)obj, value, 5); }
static inline void
_Py_atomic_store_ssize(Py_ssize_t *obj, Py_ssize_t value)
{ __atomic_store_n(obj, value, 5); }
static inline void
_Py_atomic_store_int_relaxed(int *obj, int value)
{ __atomic_store_n(obj, value, 0); }
static inline void
_Py_atomic_store_int8_relaxed(int8_t *obj, int8_t value)
{ __atomic_store_n(obj, value, 0); }
static inline void
_Py_atomic_store_int16_relaxed(int16_t *obj, int16_t value)
{ __atomic_store_n(obj, value, 0); }
static inline void
_Py_atomic_store_int32_relaxed(int32_t *obj, int32_t value)
{ __atomic_store_n(obj, value, 0); }
static inline void
_Py_atomic_store_int64_relaxed(int64_t *obj, int64_t value)
{ __atomic_store_n(obj, value, 0); }
static inline void
_Py_atomic_store_intptr_relaxed(intptr_t *obj, intptr_t value)
{ __atomic_store_n(obj, value, 0); }
static inline void
_Py_atomic_store_uint8_relaxed(uint8_t *obj, uint8_t value)
{ __atomic_store_n(obj, value, 0); }
static inline void
_Py_atomic_store_uint16_relaxed(uint16_t *obj, uint16_t value)
{ __atomic_store_n(obj, value, 0); }
static inline void
_Py_atomic_store_uint32_relaxed(uint32_t *obj, uint32_t value)
{ __atomic_store_n(obj, value, 0); }
static inline void
_Py_atomic_store_uint64_relaxed(uint64_t *obj, uint64_t value)
{ __atomic_store_n(obj, value, 0); }
static inline void
_Py_atomic_store_uintptr_relaxed(uintptr_t *obj, uintptr_t value)
{ __atomic_store_n(obj, value, 0); }
static inline void
_Py_atomic_store_uint_relaxed(unsigned int *obj, unsigned int value)
{ __atomic_store_n(obj, value, 0); }
static inline void
_Py_atomic_store_ptr_relaxed(void *obj, void *value)
{ __atomic_store_n((void **)obj, value, 0); }
static inline void
_Py_atomic_store_ssize_relaxed(Py_ssize_t *obj, Py_ssize_t value)
{ __atomic_store_n(obj, value, 0); }
static inline void
_Py_atomic_store_ullong_relaxed(unsigned long long *obj,
                                unsigned long long value)
{ __atomic_store_n(obj, value, 0); }
static inline void *
_Py_atomic_load_ptr_acquire(const void *obj)
{ return (void *)__atomic_load_n((void * const *)obj, 2); }
static inline uintptr_t
_Py_atomic_load_uintptr_acquire(const uintptr_t *obj)
{ return (uintptr_t)__atomic_load_n(obj, 2); }
static inline void
_Py_atomic_store_ptr_release(void *obj, void *value)
{ __atomic_store_n((void **)obj, value, 3); }
static inline void
_Py_atomic_store_uintptr_release(uintptr_t *obj, uintptr_t value)
{ __atomic_store_n(obj, value, 3); }
static inline void
_Py_atomic_store_int_release(int *obj, int value)
{ __atomic_store_n(obj, value, 3); }
static inline void
_Py_atomic_store_ssize_release(Py_ssize_t *obj, Py_ssize_t value)
{ __atomic_store_n(obj, value, 3); }
static inline int
_Py_atomic_load_int_acquire(const int *obj)
{ return __atomic_load_n(obj, 2); }
static inline void
_Py_atomic_store_uint32_release(uint32_t *obj, uint32_t value)
{ __atomic_store_n(obj, value, 3); }
static inline void
_Py_atomic_store_uint64_release(uint64_t *obj, uint64_t value)
{ __atomic_store_n(obj, value, 3); }
static inline uint64_t
_Py_atomic_load_uint64_acquire(const uint64_t *obj)
{ return __atomic_load_n(obj, 2); }
static inline uint32_t
_Py_atomic_load_uint32_acquire(const uint32_t *obj)
{ return __atomic_load_n(obj, 2); }
static inline Py_ssize_t
_Py_atomic_load_ssize_acquire(const Py_ssize_t *obj)
{ return __atomic_load_n(obj, 2); }
static inline void
_Py_atomic_fence_seq_cst(void)
{ __atomic_thread_fence(5); }
 static inline void
_Py_atomic_fence_acquire(void)
{ __atomic_thread_fence(2); }
 static inline void
_Py_atomic_fence_release(void)
{ __atomic_thread_fence(3); }
/* ++++ END "pyatomic_gcc.h" /usr/include/python3.13/cpython/pyatomic_gcc.h */
/* +++ END "cpython/pyatomic.h" /usr/include/python3.13/cpython/pyatomic.h */
/* ++ END "pyatomic.h" /usr/include/python3.13/pyatomic.h */
/* ++ BEGIN "lock.h" /usr/include/python3.13/lock.h */
/* +++ BEGIN "cpython/lock.h" /usr/include/python3.13/cpython/lock.h */
typedef struct PyMutex {
    uint8_t _bits;
} PyMutex;
__attribute__ ((visibility ("default"))) void PyMutex_Lock(PyMutex *m);
__attribute__ ((visibility ("default"))) void PyMutex_Unlock(PyMutex *m);
static inline void
_PyMutex_Lock(PyMutex *m)
{
    uint8_t expected = 0;
    if (!_Py_atomic_compare_exchange_uint8(&m->_bits, &expected, 1)) {
        PyMutex_Lock(m);
    }
}
static inline void
_PyMutex_Unlock(PyMutex *m)
{
    uint8_t expected = 1;
    if (!_Py_atomic_compare_exchange_uint8(&m->_bits, &expected, 0)) {
        PyMutex_Unlock(m);
    }
}
/* +++ END "cpython/lock.h" /usr/include/python3.13/cpython/lock.h */
/* ++ END "lock.h" /usr/include/python3.13/lock.h */
/* ++ BEGIN "object.h" /usr/include/python3.13/object.h */
struct _object {
    union {
       Py_ssize_t ob_refcnt;
       uint32_t ob_refcnt_split[2];
    };
    PyTypeObject *ob_type;
};
typedef struct {
    PyObject ob_base;
    Py_ssize_t ob_size;
} PyVarObject;
__attribute__ ((visibility ("default"))) int Py_Is(PyObject *x, PyObject *y);
static inline Py_ssize_t Py_REFCNT(PyObject *ob) {
    return ob->ob_refcnt;
}
static inline PyTypeObject* Py_TYPE(PyObject *ob) {
    return ob->ob_type;
}
extern __attribute__ ((visibility ("default"))) PyTypeObject PyLong_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyBool_Type;
static inline Py_ssize_t Py_SIZE(PyObject *ob) {
    
   ((void) sizeof ((
   ob->ob_type != &PyLong_Type
   ) ? 1 : 0), __extension__ ({ if (
   ob->ob_type != &PyLong_Type
   ) ; else __assert_fail (
   "ob->ob_type != &PyLong_Type"
   , "/usr/include/python3.13/object.h", 347, __extension__ __PRETTY_FUNCTION__); }))
                                      ;
    
   ((void) sizeof ((
   ob->ob_type != &PyBool_Type
   ) ? 1 : 0), __extension__ ({ if (
   ob->ob_type != &PyBool_Type
   ) ; else __assert_fail (
   "ob->ob_type != &PyBool_Type"
   , "/usr/include/python3.13/object.h", 348, __extension__ __PRETTY_FUNCTION__); }))
                                      ;
    return ((PyVarObject*)((ob)))->ob_size;
}
static inline __attribute__((always_inline)) int _Py_IsImmortal(PyObject *op)
{
    return (((int32_t)(op->ob_refcnt)) < 0);
}
static inline int Py_IS_TYPE(PyObject *ob, PyTypeObject *type) {
    return Py_TYPE(((PyObject*)((ob)))) == type;
}
__attribute__ ((visibility ("default"))) void _Py_SetRefcnt(PyObject *ob, Py_ssize_t refcnt);
static inline void Py_SET_REFCNT(PyObject *ob, Py_ssize_t refcnt) {
    if (_Py_IsImmortal(((PyObject*)((ob))))) {
        return;
    }
    ob->ob_refcnt = refcnt;
}
static inline void Py_SET_TYPE(PyObject *ob, PyTypeObject *type) {
    ob->ob_type = type;
}
static inline void Py_SET_SIZE(PyVarObject *ob, Py_ssize_t size) {
    
   ((void) sizeof ((
   ob->ob_base.ob_type != &PyLong_Type
   ) ? 1 : 0), __extension__ ({ if (
   ob->ob_base.ob_type != &PyLong_Type
   ) ; else __assert_fail (
   "ob->ob_base.ob_type != &PyLong_Type"
   , "/usr/include/python3.13/object.h", 433, __extension__ __PRETTY_FUNCTION__); }))
                                              ;
    
   ((void) sizeof ((
   ob->ob_base.ob_type != &PyBool_Type
   ) ? 1 : 0), __extension__ ({ if (
   ob->ob_base.ob_type != &PyBool_Type
   ) ; else __assert_fail (
   "ob->ob_base.ob_type != &PyBool_Type"
   , "/usr/include/python3.13/object.h", 434, __extension__ __PRETTY_FUNCTION__); }))
                                              ;
    ob->ob_size = size;
}
typedef PyObject * (*unaryfunc)(PyObject *);
typedef PyObject * (*binaryfunc)(PyObject *, PyObject *);
typedef PyObject * (*ternaryfunc)(PyObject *, PyObject *, PyObject *);
typedef int (*inquiry)(PyObject *);
typedef Py_ssize_t (*lenfunc)(PyObject *);
typedef PyObject *(*ssizeargfunc)(PyObject *, Py_ssize_t);
typedef PyObject *(*ssizessizeargfunc)(PyObject *, Py_ssize_t, Py_ssize_t);
typedef int(*ssizeobjargproc)(PyObject *, Py_ssize_t, PyObject *);
typedef int(*ssizessizeobjargproc)(PyObject *, Py_ssize_t, Py_ssize_t, PyObject *);
typedef int(*objobjargproc)(PyObject *, PyObject *, PyObject *);
typedef int (*objobjproc)(PyObject *, PyObject *);
typedef int (*visitproc)(PyObject *, void *);
typedef int (*traverseproc)(PyObject *, visitproc, void *);
typedef void (*freefunc)(void *);
typedef void (*destructor)(PyObject *);
typedef PyObject *(*getattrfunc)(PyObject *, char *);
typedef PyObject *(*getattrofunc)(PyObject *, PyObject *);
typedef int (*setattrfunc)(PyObject *, char *, PyObject *);
typedef int (*setattrofunc)(PyObject *, PyObject *, PyObject *);
typedef PyObject *(*reprfunc)(PyObject *);
typedef Py_hash_t (*hashfunc)(PyObject *);
typedef PyObject *(*richcmpfunc) (PyObject *, PyObject *, int);
typedef PyObject *(*getiterfunc) (PyObject *);
typedef PyObject *(*iternextfunc) (PyObject *);
typedef PyObject *(*descrgetfunc) (PyObject *, PyObject *, PyObject *);
typedef int (*descrsetfunc) (PyObject *, PyObject *, PyObject *);
typedef int (*initproc)(PyObject *, PyObject *, PyObject *);
typedef PyObject *(*newfunc)(PyTypeObject *, PyObject *, PyObject *);
typedef PyObject *(*allocfunc)(PyTypeObject *, Py_ssize_t);
typedef PyObject *(*vectorcallfunc)(PyObject *callable, PyObject *const *args,
                                    size_t nargsf, PyObject *kwnames);
typedef struct{
    int slot;
    void *pfunc;
} PyType_Slot;
typedef struct{
    const char* name;
    int basicsize;
    int itemsize;
    unsigned int flags;
    PyType_Slot *slots;
} PyType_Spec;
__attribute__ ((visibility ("default"))) PyObject* PyType_FromSpec(PyType_Spec*);
__attribute__ ((visibility ("default"))) PyObject* PyType_FromSpecWithBases(PyType_Spec*, PyObject*);
__attribute__ ((visibility ("default"))) void* PyType_GetSlot(PyTypeObject*, int);
__attribute__ ((visibility ("default"))) PyObject* PyType_FromModuleAndSpec(PyObject *, PyType_Spec *, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyType_GetModule(PyTypeObject *);
__attribute__ ((visibility ("default"))) void * PyType_GetModuleState(PyTypeObject *);
__attribute__ ((visibility ("default"))) PyObject * PyType_GetName(PyTypeObject *);
__attribute__ ((visibility ("default"))) PyObject * PyType_GetQualName(PyTypeObject *);
__attribute__ ((visibility ("default"))) PyObject * PyType_GetFullyQualifiedName(PyTypeObject *type);
__attribute__ ((visibility ("default"))) PyObject * PyType_GetModuleName(PyTypeObject *type);
__attribute__ ((visibility ("default"))) PyObject * PyType_FromMetaclass(PyTypeObject*, PyObject*, PyType_Spec*, PyObject*);
__attribute__ ((visibility ("default"))) void * PyObject_GetTypeData(PyObject *obj, PyTypeObject *cls);
__attribute__ ((visibility ("default"))) Py_ssize_t PyType_GetTypeDataSize(PyTypeObject *cls);
__attribute__ ((visibility ("default"))) int PyType_IsSubtype(PyTypeObject *, PyTypeObject *);
static inline int PyObject_TypeCheck(PyObject *ob, PyTypeObject *type) {
    return Py_IS_TYPE(((PyObject*)((ob))), (type)) || PyType_IsSubtype(Py_TYPE(((PyObject*)((ob)))), type);
}
extern __attribute__ ((visibility ("default"))) PyTypeObject PyType_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyBaseObject_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PySuper_Type;
__attribute__ ((visibility ("default"))) unsigned long PyType_GetFlags(PyTypeObject*);
__attribute__ ((visibility ("default"))) int PyType_Ready(PyTypeObject *);
__attribute__ ((visibility ("default"))) PyObject * PyType_GenericAlloc(PyTypeObject *, Py_ssize_t);
__attribute__ ((visibility ("default"))) PyObject * PyType_GenericNew(PyTypeObject *,
                                               PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) unsigned int PyType_ClearCache(void);
__attribute__ ((visibility ("default"))) void PyType_Modified(PyTypeObject *);
__attribute__ ((visibility ("default"))) PyObject * PyObject_Repr(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyObject_Str(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyObject_ASCII(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyObject_Bytes(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyObject_RichCompare(PyObject *, PyObject *, int);
__attribute__ ((visibility ("default"))) int PyObject_RichCompareBool(PyObject *, PyObject *, int);
__attribute__ ((visibility ("default"))) PyObject * PyObject_GetAttrString(PyObject *, const char *);
__attribute__ ((visibility ("default"))) int PyObject_SetAttrString(PyObject *, const char *, PyObject *);
__attribute__ ((visibility ("default"))) int PyObject_DelAttrString(PyObject *v, const char *name);
__attribute__ ((visibility ("default"))) int PyObject_HasAttrString(PyObject *, const char *);
__attribute__ ((visibility ("default"))) PyObject * PyObject_GetAttr(PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) int PyObject_GetOptionalAttr(PyObject *, PyObject *, PyObject **);
__attribute__ ((visibility ("default"))) int PyObject_GetOptionalAttrString(PyObject *, const char *, PyObject **);
__attribute__ ((visibility ("default"))) int PyObject_SetAttr(PyObject *, PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) int PyObject_DelAttr(PyObject *v, PyObject *name);
__attribute__ ((visibility ("default"))) int PyObject_HasAttr(PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) int PyObject_HasAttrWithError(PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) int PyObject_HasAttrStringWithError(PyObject *, const char *);
__attribute__ ((visibility ("default"))) PyObject * PyObject_SelfIter(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyObject_GenericGetAttr(PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) int PyObject_GenericSetAttr(PyObject *, PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) int PyObject_GenericSetDict(PyObject *, PyObject *, void *);
__attribute__ ((visibility ("default"))) Py_hash_t PyObject_Hash(PyObject *);
__attribute__ ((visibility ("default"))) Py_hash_t PyObject_HashNotImplemented(PyObject *);
__attribute__ ((visibility ("default"))) int PyObject_IsTrue(PyObject *);
__attribute__ ((visibility ("default"))) int PyObject_Not(PyObject *);
__attribute__ ((visibility ("default"))) int PyCallable_Check(PyObject *);
__attribute__ ((visibility ("default"))) void PyObject_ClearWeakRefs(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyObject_Dir(PyObject *);
__attribute__ ((visibility ("default"))) int Py_ReprEnter(PyObject *);
__attribute__ ((visibility ("default"))) void Py_ReprLeave(PyObject *);
__attribute__ ((visibility ("default"))) void _Py_Dealloc(PyObject *);
__attribute__ ((visibility ("default"))) void Py_IncRef(PyObject *);
__attribute__ ((visibility ("default"))) void Py_DecRef(PyObject *);
__attribute__ ((visibility ("default"))) void _Py_IncRef(PyObject *);
__attribute__ ((visibility ("default"))) void _Py_DecRef(PyObject *);
static inline __attribute__((always_inline)) void Py_INCREF(PyObject *op)
{
    uint32_t cur_refcnt = op->ob_refcnt_split[0];
    uint32_t new_refcnt = cur_refcnt + 1;
    if (new_refcnt == 0) {
        return;
    }
    op->ob_refcnt_split[0] = new_refcnt;
    ((void)0);
}
static inline __attribute__((always_inline)) void Py_DECREF(PyObject *op)
{
    if (_Py_IsImmortal(((PyObject*)((op))))) {
        return;
    }
    ((void)0);
    if (--op->ob_refcnt == 0) {
        _Py_Dealloc(op);
    }
}
static inline void Py_XINCREF(PyObject *op)
{
    if (op != 
             ((void *)0)
                     ) {
        Py_INCREF(((PyObject*)((op))));
    }
}
static inline void Py_XDECREF(PyObject *op)
{
    if (op != 
             ((void *)0)
                     ) {
        Py_DECREF(((PyObject*)((op))));
    }
}
__attribute__ ((visibility ("default"))) PyObject* Py_NewRef(PyObject *obj);
__attribute__ ((visibility ("default"))) PyObject* Py_XNewRef(PyObject *obj);
static inline PyObject* _Py_NewRef(PyObject *obj)
{
    Py_INCREF(((PyObject*)((obj))));
    return obj;
}
static inline PyObject* _Py_XNewRef(PyObject *obj)
{
    Py_XINCREF(((PyObject*)((obj))));
    return obj;
}
__attribute__ ((visibility ("default"))) PyObject* Py_GetConstant(unsigned int constant_id);
__attribute__ ((visibility ("default"))) PyObject* Py_GetConstantBorrowed(unsigned int constant_id);
extern __attribute__ ((visibility ("default"))) PyObject _Py_NoneStruct;
__attribute__ ((visibility ("default"))) int Py_IsNone(PyObject *x);
extern __attribute__ ((visibility ("default"))) PyObject _Py_NotImplementedStruct;
typedef enum {
    PYGEN_RETURN = 0,
    PYGEN_ERROR = -1,
    PYGEN_NEXT = 1,
} PySendResult;
/* +++ BEGIN "cpython/object.h" /usr/include/python3.13/cpython/object.h */
__attribute__ ((visibility ("default"))) void _Py_NewReference(PyObject *op);
__attribute__ ((visibility ("default"))) void _Py_NewReferenceNoTotal(PyObject *op);
__attribute__ ((visibility ("default"))) void _Py_ResurrectReference(PyObject *op);
typedef struct _Py_Identifier {
    const char* string;
    Py_ssize_t index;
    struct {
        uint8_t v;
    } mutex;
} _Py_Identifier;
typedef struct {
    binaryfunc nb_add;
    binaryfunc nb_subtract;
    binaryfunc nb_multiply;
    binaryfunc nb_remainder;
    binaryfunc nb_divmod;
    ternaryfunc nb_power;
    unaryfunc nb_negative;
    unaryfunc nb_positive;
    unaryfunc nb_absolute;
    inquiry nb_bool;
    unaryfunc nb_invert;
    binaryfunc nb_lshift;
    binaryfunc nb_rshift;
    binaryfunc nb_and;
    binaryfunc nb_xor;
    binaryfunc nb_or;
    unaryfunc nb_int;
    void *nb_reserved;
    unaryfunc nb_float;
    binaryfunc nb_inplace_add;
    binaryfunc nb_inplace_subtract;
    binaryfunc nb_inplace_multiply;
    binaryfunc nb_inplace_remainder;
    ternaryfunc nb_inplace_power;
    binaryfunc nb_inplace_lshift;
    binaryfunc nb_inplace_rshift;
    binaryfunc nb_inplace_and;
    binaryfunc nb_inplace_xor;
    binaryfunc nb_inplace_or;
    binaryfunc nb_floor_divide;
    binaryfunc nb_true_divide;
    binaryfunc nb_inplace_floor_divide;
    binaryfunc nb_inplace_true_divide;
    unaryfunc nb_index;
    binaryfunc nb_matrix_multiply;
    binaryfunc nb_inplace_matrix_multiply;
} PyNumberMethods;
typedef struct {
    lenfunc sq_length;
    binaryfunc sq_concat;
    ssizeargfunc sq_repeat;
    ssizeargfunc sq_item;
    void *was_sq_slice;
    ssizeobjargproc sq_ass_item;
    void *was_sq_ass_slice;
    objobjproc sq_contains;
    binaryfunc sq_inplace_concat;
    ssizeargfunc sq_inplace_repeat;
} PySequenceMethods;
typedef struct {
    lenfunc mp_length;
    binaryfunc mp_subscript;
    objobjargproc mp_ass_subscript;
} PyMappingMethods;
typedef PySendResult (*sendfunc)(PyObject *iter, PyObject *value, PyObject **result);
typedef struct {
    unaryfunc am_await;
    unaryfunc am_aiter;
    unaryfunc am_anext;
    sendfunc am_send;
} PyAsyncMethods;
typedef struct {
     getbufferproc bf_getbuffer;
     releasebufferproc bf_releasebuffer;
} PyBufferProcs;
typedef Py_ssize_t printfunc;
struct _typeobject {
    PyVarObject ob_base;
    const char *tp_name;
    Py_ssize_t tp_basicsize, tp_itemsize;
    destructor tp_dealloc;
    Py_ssize_t tp_vectorcall_offset;
    getattrfunc tp_getattr;
    setattrfunc tp_setattr;
    PyAsyncMethods *tp_as_async;
    reprfunc tp_repr;
    PyNumberMethods *tp_as_number;
    PySequenceMethods *tp_as_sequence;
    PyMappingMethods *tp_as_mapping;
    hashfunc tp_hash;
    ternaryfunc tp_call;
    reprfunc tp_str;
    getattrofunc tp_getattro;
    setattrofunc tp_setattro;
    PyBufferProcs *tp_as_buffer;
    unsigned long tp_flags;
    const char *tp_doc;
    traverseproc tp_traverse;
    inquiry tp_clear;
    richcmpfunc tp_richcompare;
    Py_ssize_t tp_weaklistoffset;
    getiterfunc tp_iter;
    iternextfunc tp_iternext;
    PyMethodDef *tp_methods;
    PyMemberDef *tp_members;
    PyGetSetDef *tp_getset;
    PyTypeObject *tp_base;
    PyObject *tp_dict;
    descrgetfunc tp_descr_get;
    descrsetfunc tp_descr_set;
    Py_ssize_t tp_dictoffset;
    initproc tp_init;
    allocfunc tp_alloc;
    newfunc tp_new;
    freefunc tp_free;
    inquiry tp_is_gc;
    PyObject *tp_bases;
    PyObject *tp_mro;
    PyObject *tp_cache;
    void *tp_subclasses;
    PyObject *tp_weaklist;
    destructor tp_del;
    unsigned int tp_version_tag;
    destructor tp_finalize;
    vectorcallfunc tp_vectorcall;
    unsigned char tp_watched;
    uint16_t tp_versions_used;
};
struct _specialization_cache {
    PyObject *getitem;
    uint32_t getitem_version;
    PyObject *init;
};
typedef struct _heaptypeobject {
    PyTypeObject ht_type;
    PyAsyncMethods as_async;
    PyNumberMethods as_number;
    PyMappingMethods as_mapping;
    PySequenceMethods as_sequence;
    PyBufferProcs as_buffer;
    PyObject *ht_name, *ht_slots, *ht_qualname;
    struct _dictkeysobject *ht_cached_keys;
    PyObject *ht_module;
    char *_ht_tpname;
    struct _specialization_cache _spec_cache;
} PyHeapTypeObject;
__attribute__ ((visibility ("default"))) const char * _PyType_Name(PyTypeObject *);
__attribute__ ((visibility ("default"))) PyObject * _PyType_Lookup(PyTypeObject *, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * _PyType_LookupRef(PyTypeObject *, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyType_GetDict(PyTypeObject *);
__attribute__ ((visibility ("default"))) int PyObject_Print(PyObject *, FILE *, int);
__attribute__ ((visibility ("default"))) void _Py_BreakPoint(void);
__attribute__ ((visibility ("default"))) void _PyObject_Dump(PyObject *);
__attribute__ ((visibility ("default"))) PyObject* _PyObject_GetAttrId(PyObject *, _Py_Identifier *);
__attribute__ ((visibility ("default"))) PyObject ** _PyObject_GetDictPtr(PyObject *);
__attribute__ ((visibility ("default"))) void PyObject_CallFinalizer(PyObject *);
__attribute__ ((visibility ("default"))) int PyObject_CallFinalizerFromDealloc(PyObject *);
__attribute__ ((visibility ("default"))) void PyUnstable_Object_ClearWeakRefsNoCallbacks(PyObject *);
__attribute__ ((visibility ("default"))) PyObject *
_PyObject_GenericGetAttrWithDict(PyObject *, PyObject *, PyObject *, int);
__attribute__ ((visibility ("default"))) int
_PyObject_GenericSetAttrWithDict(PyObject *, PyObject *,
                                 PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * _PyObject_FunctionStr(PyObject *);
__attribute__ ((visibility ("default"))) void __attribute__((__noreturn__)) _PyObject_AssertFailed(
    PyObject *obj,
    const char *expr,
    const char *msg,
    const char *file,
    int line,
    const char *function);
__attribute__ ((visibility ("default"))) int _PyTrash_begin(PyThreadState *tstate, PyObject *op);
__attribute__ ((visibility ("default"))) void _PyTrash_end(PyThreadState *tstate);
__attribute__ ((visibility ("default"))) void _PyTrash_thread_deposit_object(PyThreadState *tstate, PyObject *op);
__attribute__ ((visibility ("default"))) void _PyTrash_thread_destroy_chain(PyThreadState *tstate);
__attribute__ ((visibility ("default"))) void * PyObject_GetItemData(PyObject *obj);
__attribute__ ((visibility ("default"))) int PyObject_VisitManagedDict(PyObject *obj, visitproc visit, void *arg);
__attribute__ ((visibility ("default"))) int _PyObject_SetManagedDict(PyObject *obj, PyObject *new_dict);
__attribute__ ((visibility ("default"))) void PyObject_ClearManagedDict(PyObject *obj);
typedef int(*PyType_WatchCallback)(PyTypeObject *);
__attribute__ ((visibility ("default"))) int PyType_AddWatcher(PyType_WatchCallback callback);
__attribute__ ((visibility ("default"))) int PyType_ClearWatcher(int watcher_id);
__attribute__ ((visibility ("default"))) int PyType_Watch(int watcher_id, PyObject *type);
__attribute__ ((visibility ("default"))) int PyType_Unwatch(int watcher_id, PyObject *type);
__attribute__ ((visibility ("default"))) int PyUnstable_Type_AssignVersionTag(PyTypeObject *type);
typedef enum {
    PyRefTracer_CREATE = 0,
    PyRefTracer_DESTROY = 1,
} PyRefTracerEvent;
typedef int (*PyRefTracer)(PyObject *, PyRefTracerEvent event, void *);
__attribute__ ((visibility ("default"))) int PyRefTracer_SetTracer(PyRefTracer tracer, void *data);
__attribute__ ((visibility ("default"))) PyRefTracer PyRefTracer_GetTracer(void**);
/* +++ END "cpython/object.h" /usr/include/python3.13/cpython/object.h */
static inline int
PyType_HasFeature(PyTypeObject *type, unsigned long feature)
{
    unsigned long flags;
        flags = type->tp_flags;
    return ((flags & feature) != 0);
}
static inline int PyType_Check(PyObject *op) {
    return PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 31)));
}
static inline int PyType_CheckExact(PyObject *op) {
    return Py_IS_TYPE(((PyObject*)((op))), (&PyType_Type));
}
__attribute__ ((visibility ("default"))) PyObject * PyType_GetModuleByDef(PyTypeObject *, PyModuleDef *);
/* ++ END "object.h" /usr/include/python3.13/object.h */
/* ++ BEGIN "objimpl.h" /usr/include/python3.13/objimpl.h */
__attribute__ ((visibility ("default"))) void * PyObject_Malloc(size_t size);
__attribute__ ((visibility ("default"))) void * PyObject_Calloc(size_t nelem, size_t elsize);
__attribute__ ((visibility ("default"))) void * PyObject_Realloc(void *ptr, size_t new_size);
__attribute__ ((visibility ("default"))) void PyObject_Free(void *ptr);
__attribute__ ((visibility ("default"))) PyObject * PyObject_Init(PyObject *, PyTypeObject *);
__attribute__ ((visibility ("default"))) PyVarObject * PyObject_InitVar(PyVarObject *,
                                           PyTypeObject *, Py_ssize_t);
__attribute__ ((visibility ("default"))) PyObject * _PyObject_New(PyTypeObject *);
__attribute__ ((visibility ("default"))) PyVarObject * _PyObject_NewVar(PyTypeObject *, Py_ssize_t);
__attribute__ ((visibility ("default"))) Py_ssize_t PyGC_Collect(void);
__attribute__ ((visibility ("default"))) int PyGC_Enable(void);
__attribute__ ((visibility ("default"))) int PyGC_Disable(void);
__attribute__ ((visibility ("default"))) int PyGC_IsEnabled(void);
__attribute__ ((visibility ("default"))) PyVarObject * _PyObject_GC_Resize(PyVarObject *, Py_ssize_t);
__attribute__ ((visibility ("default"))) PyObject * _PyObject_GC_New(PyTypeObject *);
__attribute__ ((visibility ("default"))) PyVarObject * _PyObject_GC_NewVar(PyTypeObject *, Py_ssize_t);
__attribute__ ((visibility ("default"))) void PyObject_GC_Track(void *);
__attribute__ ((visibility ("default"))) void PyObject_GC_UnTrack(void *);
__attribute__ ((visibility ("default"))) void PyObject_GC_Del(void *);
__attribute__ ((visibility ("default"))) int PyObject_GC_IsTracked(PyObject *);
__attribute__ ((visibility ("default"))) int PyObject_GC_IsFinalized(PyObject *);
/* +++ BEGIN "cpython/objimpl.h" /usr/include/python3.13/cpython/objimpl.h */
static inline size_t _PyObject_SIZE(PyTypeObject *type) {
    return ((size_t)(type->tp_basicsize));
}
static inline size_t _PyObject_VAR_SIZE(PyTypeObject *type, Py_ssize_t nitems) {
    size_t size = ((size_t)(type->tp_basicsize));
    size += ((size_t)(nitems)) * ((size_t)(type->tp_itemsize));
    return (((size_t)(size) + (size_t)((
          8
          ) - 1)) & ~(size_t)((
          8
          ) - 1));
}
typedef struct {
    void *ctx;
    void* (*alloc) (void *ctx, size_t size);
    void (*free) (void *ctx, void *ptr, size_t size);
} PyObjectArenaAllocator;
__attribute__ ((visibility ("default"))) void PyObject_GetArenaAllocator(PyObjectArenaAllocator *allocator);
__attribute__ ((visibility ("default"))) void PyObject_SetArenaAllocator(PyObjectArenaAllocator *allocator);
__attribute__ ((visibility ("default"))) int PyObject_IS_GC(PyObject *obj);
__attribute__ ((visibility ("default"))) int PyType_SUPPORTS_WEAKREFS(PyTypeObject *type);
__attribute__ ((visibility ("default"))) PyObject ** PyObject_GET_WEAKREFS_LISTPTR(PyObject *op);
__attribute__ ((visibility ("default"))) PyObject * PyUnstable_Object_GC_NewWithExtraData(PyTypeObject *,
                                                             size_t);
typedef int (*gcvisitobjects_t)(PyObject*, void*);
__attribute__ ((visibility ("default"))) void PyUnstable_GC_VisitObjects(gcvisitobjects_t callback, void* arg);
/* +++ END "cpython/objimpl.h" /usr/include/python3.13/cpython/objimpl.h */
/* ++ END "objimpl.h" /usr/include/python3.13/objimpl.h */
/* ++ BEGIN "typeslots.h" /usr/include/python3.13/typeslots.h */
/* ++ END "typeslots.h" /usr/include/python3.13/typeslots.h */
/* ++ BEGIN "pyhash.h" /usr/include/python3.13/pyhash.h */
/* +++ BEGIN "cpython/pyhash.h" /usr/include/python3.13/cpython/pyhash.h */
__attribute__ ((visibility ("default"))) Py_hash_t _Py_HashDouble(PyObject *, double);
typedef struct {
    Py_hash_t (*const hash)(const void *, Py_ssize_t);
    const char *name;
    const int hash_bits;
    const int seed_bits;
} PyHash_FuncDef;
__attribute__ ((visibility ("default"))) PyHash_FuncDef* PyHash_GetFuncDef(void);
__attribute__ ((visibility ("default"))) Py_hash_t Py_HashPointer(const void *ptr);
__attribute__ ((visibility ("default"))) Py_hash_t PyObject_GenericHash(PyObject *);
/* +++ END "cpython/pyhash.h" /usr/include/python3.13/cpython/pyhash.h */
/* ++ END "pyhash.h" /usr/include/python3.13/pyhash.h */
/* ++ BEGIN "cpython/pydebug.h" /usr/include/python3.13/cpython/pydebug.h */
__attribute__((__deprecated__)) extern __attribute__ ((visibility ("default"))) int Py_DebugFlag;
__attribute__((__deprecated__)) extern __attribute__ ((visibility ("default"))) int Py_VerboseFlag;
__attribute__((__deprecated__)) extern __attribute__ ((visibility ("default"))) int Py_QuietFlag;
__attribute__((__deprecated__)) extern __attribute__ ((visibility ("default"))) int Py_InteractiveFlag;
__attribute__((__deprecated__)) extern __attribute__ ((visibility ("default"))) int Py_InspectFlag;
__attribute__((__deprecated__)) extern __attribute__ ((visibility ("default"))) int Py_OptimizeFlag;
__attribute__((__deprecated__)) extern __attribute__ ((visibility ("default"))) int Py_NoSiteFlag;
__attribute__((__deprecated__)) extern __attribute__ ((visibility ("default"))) int Py_BytesWarningFlag;
__attribute__((__deprecated__)) extern __attribute__ ((visibility ("default"))) int Py_FrozenFlag;
__attribute__((__deprecated__)) extern __attribute__ ((visibility ("default"))) int Py_IgnoreEnvironmentFlag;
__attribute__((__deprecated__)) extern __attribute__ ((visibility ("default"))) int Py_DontWriteBytecodeFlag;
__attribute__((__deprecated__)) extern __attribute__ ((visibility ("default"))) int Py_NoUserSiteDirectory;
__attribute__((__deprecated__)) extern __attribute__ ((visibility ("default"))) int Py_UnbufferedStdioFlag;
__attribute__((__deprecated__)) extern __attribute__ ((visibility ("default"))) int Py_HashRandomizationFlag;
__attribute__((__deprecated__)) extern __attribute__ ((visibility ("default"))) int Py_IsolatedFlag;
__attribute__ ((visibility ("default"))) char* Py_GETENV(const char *name);
/* ++ END "cpython/pydebug.h" /usr/include/python3.13/cpython/pydebug.h */
/* ++ BEGIN "bytearrayobject.h" /usr/include/python3.13/bytearrayobject.h */
extern __attribute__ ((visibility ("default"))) PyTypeObject PyByteArray_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyByteArrayIter_Type;
__attribute__ ((visibility ("default"))) PyObject * PyByteArray_FromObject(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyByteArray_Concat(PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyByteArray_FromStringAndSize(const char *, Py_ssize_t);
__attribute__ ((visibility ("default"))) Py_ssize_t PyByteArray_Size(PyObject *);
__attribute__ ((visibility ("default"))) char * PyByteArray_AsString(PyObject *);
__attribute__ ((visibility ("default"))) int PyByteArray_Resize(PyObject *, Py_ssize_t);
/* +++ BEGIN "cpython/bytearrayobject.h" /usr/include/python3.13/cpython/bytearrayobject.h */
typedef struct {
    PyVarObject ob_base;
    Py_ssize_t ob_alloc;
    char *ob_bytes;
    char *ob_start;
    Py_ssize_t ob_exports;
} PyByteArrayObject;
extern __attribute__ ((visibility ("default"))) char _PyByteArray_empty_string[];
static inline char* PyByteArray_AS_STRING(PyObject *op)
{
    PyByteArrayObject *self = (
                             ((void) sizeof ((
                             PyObject_TypeCheck(((PyObject*)(((op)))), (&PyByteArray_Type))
                             ) ? 1 : 0), __extension__ ({ if (
                             PyObject_TypeCheck(((PyObject*)(((op)))), (&PyByteArray_Type))
                             ) ; else __assert_fail (
                             "PyByteArray_Check(op)"
                             , "/usr/include/python3.13/cpython/bytearrayobject.h", 22, __extension__ __PRETTY_FUNCTION__); }))
                             , ((PyByteArrayObject*)(op)));
    if (Py_SIZE(((PyObject*)((self))))) {
        return self->ob_start;
    }
    return _PyByteArray_empty_string;
}
static inline Py_ssize_t PyByteArray_GET_SIZE(PyObject *op) {
    PyByteArrayObject *self = (
                             ((void) sizeof ((
                             PyObject_TypeCheck(((PyObject*)(((op)))), (&PyByteArray_Type))
                             ) ? 1 : 0), __extension__ ({ if (
                             PyObject_TypeCheck(((PyObject*)(((op)))), (&PyByteArray_Type))
                             ) ; else __assert_fail (
                             "PyByteArray_Check(op)"
                             , "/usr/include/python3.13/cpython/bytearrayobject.h", 31, __extension__ __PRETTY_FUNCTION__); }))
                             , ((PyByteArrayObject*)(op)));
    return Py_SIZE(((PyObject*)((self))));
}
/* +++ END "cpython/bytearrayobject.h" /usr/include/python3.13/cpython/bytearrayobject.h */
/* ++ END "bytearrayobject.h" /usr/include/python3.13/bytearrayobject.h */
/* ++ BEGIN "bytesobject.h" /usr/include/python3.13/bytesobject.h */
extern __attribute__ ((visibility ("default"))) PyTypeObject PyBytes_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyBytesIter_Type;
__attribute__ ((visibility ("default"))) PyObject * PyBytes_FromStringAndSize(const char *, Py_ssize_t);
__attribute__ ((visibility ("default"))) PyObject * PyBytes_FromString(const char *);
__attribute__ ((visibility ("default"))) PyObject * PyBytes_FromObject(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyBytes_FromFormatV(const char*, va_list)
                                __attribute__((format(printf, 1, 0)));
__attribute__ ((visibility ("default"))) PyObject * PyBytes_FromFormat(const char*, ...)
                                __attribute__((format(printf, 1, 2)));
__attribute__ ((visibility ("default"))) Py_ssize_t PyBytes_Size(PyObject *);
__attribute__ ((visibility ("default"))) char * PyBytes_AsString(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyBytes_Repr(PyObject *, int);
__attribute__ ((visibility ("default"))) void PyBytes_Concat(PyObject **, PyObject *);
__attribute__ ((visibility ("default"))) void PyBytes_ConcatAndDel(PyObject **, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyBytes_DecodeEscape(const char *, Py_ssize_t,
                                            const char *, Py_ssize_t,
                                            const char *);
__attribute__ ((visibility ("default"))) int PyBytes_AsStringAndSize(
    PyObject *obj,
    char **s,
    Py_ssize_t *len
    );
/* +++ BEGIN "cpython/bytesobject.h" /usr/include/python3.13/cpython/bytesobject.h */
typedef struct {
    PyVarObject ob_base;
    __attribute__((__deprecated__)) Py_hash_t ob_shash;
    char ob_sval[1];
} PyBytesObject;
__attribute__ ((visibility ("default"))) int _PyBytes_Resize(PyObject **, Py_ssize_t);
static inline char* PyBytes_AS_STRING(PyObject *op)
{
    return (
          ((void) sizeof ((
          PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 27)))
          ) ? 1 : 0), __extension__ ({ if (
          PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 27)))
          ) ; else __assert_fail (
          "PyBytes_Check(op)"
          , "/usr/include/python3.13/cpython/bytesobject.h", 25, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyBytesObject*)(op)))->ob_sval;
}
static inline Py_ssize_t PyBytes_GET_SIZE(PyObject *op) {
    PyBytesObject *self = (
                         ((void) sizeof ((
                         PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 27)))
                         ) ? 1 : 0), __extension__ ({ if (
                         PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 27)))
                         ) ; else __assert_fail (
                         "PyBytes_Check(op)"
                         , "/usr/include/python3.13/cpython/bytesobject.h", 30, __extension__ __PRETTY_FUNCTION__); }))
                         , ((PyBytesObject*)(op)));
    return Py_SIZE(((PyObject*)((self))));
}
__attribute__ ((visibility ("default"))) PyObject* _PyBytes_Join(PyObject *sep, PyObject *x);
/* +++ END "cpython/bytesobject.h" /usr/include/python3.13/cpython/bytesobject.h */
/* ++ END "bytesobject.h" /usr/include/python3.13/bytesobject.h */
/* ++ BEGIN "unicodeobject.h" /usr/include/python3.13/unicodeobject.h */
typedef uint32_t Py_UCS4;
typedef uint16_t Py_UCS2;
typedef uint8_t Py_UCS1;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyUnicode_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyUnicodeIter_Type;
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_FromStringAndSize(
    const char *u,
    Py_ssize_t size
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_FromString(
    const char *u
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_Substring(
    PyObject *str,
    Py_ssize_t start,
    Py_ssize_t end);
__attribute__ ((visibility ("default"))) Py_UCS4* PyUnicode_AsUCS4(
    PyObject *unicode,
    Py_UCS4* buffer,
    Py_ssize_t buflen,
    int copy_null);
__attribute__ ((visibility ("default"))) Py_UCS4* PyUnicode_AsUCS4Copy(PyObject *unicode);
__attribute__ ((visibility ("default"))) Py_ssize_t PyUnicode_GetLength(
    PyObject *unicode
);
__attribute__ ((visibility ("default"))) Py_UCS4 PyUnicode_ReadChar(
    PyObject *unicode,
    Py_ssize_t index
    );
__attribute__ ((visibility ("default"))) int PyUnicode_WriteChar(
    PyObject *unicode,
    Py_ssize_t index,
    Py_UCS4 character
    );
__attribute__ ((visibility ("default"))) int PyUnicode_Resize(
    PyObject **unicode,
    Py_ssize_t length
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_FromEncodedObject(
    PyObject *obj,
    const char *encoding,
    const char *errors
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_FromObject(
    PyObject *obj
    );
__attribute__ ((visibility ("default"))) PyObject * PyUnicode_FromFormatV(
    const char *format,
    va_list vargs
    );
__attribute__ ((visibility ("default"))) PyObject * PyUnicode_FromFormat(
    const char *format,
    ...
    );
__attribute__ ((visibility ("default"))) void PyUnicode_InternInPlace(PyObject **);
__attribute__ ((visibility ("default"))) PyObject * PyUnicode_InternFromString(
    const char *u
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_FromWideChar(
    const wchar_t *w,
    Py_ssize_t size
    );
__attribute__ ((visibility ("default"))) Py_ssize_t PyUnicode_AsWideChar(
    PyObject *unicode,
    wchar_t *w,
    Py_ssize_t size
    );
__attribute__ ((visibility ("default"))) wchar_t* PyUnicode_AsWideCharString(
    PyObject *unicode,
    Py_ssize_t *size
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_FromOrdinal(int ordinal);
__attribute__ ((visibility ("default"))) const char* PyUnicode_GetDefaultEncoding(void);
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_Decode(
    const char *s,
    Py_ssize_t size,
    const char *encoding,
    const char *errors
    );
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) PyObject* PyUnicode_AsDecodedObject(
    PyObject *unicode,
    const char *encoding,
    const char *errors
    );
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) PyObject* PyUnicode_AsDecodedUnicode(
    PyObject *unicode,
    const char *encoding,
    const char *errors
    );
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) PyObject* PyUnicode_AsEncodedObject(
    PyObject *unicode,
    const char *encoding,
    const char *errors
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_AsEncodedString(
    PyObject *unicode,
    const char *encoding,
    const char *errors
    );
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) PyObject* PyUnicode_AsEncodedUnicode(
    PyObject *unicode,
    const char *encoding,
    const char *errors
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_BuildEncodingMap(
    PyObject* string
   );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_DecodeUTF7(
    const char *string,
    Py_ssize_t length,
    const char *errors
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_DecodeUTF7Stateful(
    const char *string,
    Py_ssize_t length,
    const char *errors,
    Py_ssize_t *consumed
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_DecodeUTF8(
    const char *string,
    Py_ssize_t length,
    const char *errors
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_DecodeUTF8Stateful(
    const char *string,
    Py_ssize_t length,
    const char *errors,
    Py_ssize_t *consumed
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_AsUTF8String(
    PyObject *unicode
    );
__attribute__ ((visibility ("default"))) const char * PyUnicode_AsUTF8AndSize(
    PyObject *unicode,
    Py_ssize_t *size);
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_DecodeUTF32(
    const char *string,
    Py_ssize_t length,
    const char *errors,
    int *byteorder
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_DecodeUTF32Stateful(
    const char *string,
    Py_ssize_t length,
    const char *errors,
    int *byteorder,
    Py_ssize_t *consumed
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_AsUTF32String(
    PyObject *unicode
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_DecodeUTF16(
    const char *string,
    Py_ssize_t length,
    const char *errors,
    int *byteorder
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_DecodeUTF16Stateful(
    const char *string,
    Py_ssize_t length,
    const char *errors,
    int *byteorder,
    Py_ssize_t *consumed
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_AsUTF16String(
    PyObject *unicode
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_DecodeUnicodeEscape(
    const char *string,
    Py_ssize_t length,
    const char *errors
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_AsUnicodeEscapeString(
    PyObject *unicode
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_DecodeRawUnicodeEscape(
    const char *string,
    Py_ssize_t length,
    const char *errors
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_AsRawUnicodeEscapeString(
    PyObject *unicode
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_DecodeLatin1(
    const char *string,
    Py_ssize_t length,
    const char *errors
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_AsLatin1String(
    PyObject *unicode
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_DecodeASCII(
    const char *string,
    Py_ssize_t length,
    const char *errors
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_AsASCIIString(
    PyObject *unicode
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_DecodeCharmap(
    const char *string,
    Py_ssize_t length,
    PyObject *mapping,
    const char *errors
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_AsCharmapString(
    PyObject *unicode,
    PyObject *mapping
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_DecodeLocaleAndSize(
    const char *str,
    Py_ssize_t len,
    const char *errors);
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_DecodeLocale(
    const char *str,
    const char *errors);
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_EncodeLocale(
    PyObject *unicode,
    const char *errors
    );
__attribute__ ((visibility ("default"))) int PyUnicode_FSConverter(PyObject*, void*);
__attribute__ ((visibility ("default"))) int PyUnicode_FSDecoder(PyObject*, void*);
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_DecodeFSDefault(
    const char *s
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_DecodeFSDefaultAndSize(
    const char *s,
    Py_ssize_t size
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_EncodeFSDefault(
    PyObject *unicode
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_Concat(
    PyObject *left,
    PyObject *right
    );
__attribute__ ((visibility ("default"))) void PyUnicode_Append(
    PyObject **pleft,
    PyObject *right
    );
__attribute__ ((visibility ("default"))) void PyUnicode_AppendAndDel(
    PyObject **pleft,
    PyObject *right
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_Split(
    PyObject *s,
    PyObject *sep,
    Py_ssize_t maxsplit
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_Splitlines(
    PyObject *s,
    int keepends
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_Partition(
    PyObject *s,
    PyObject *sep
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_RPartition(
    PyObject *s,
    PyObject *sep
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_RSplit(
    PyObject *s,
    PyObject *sep,
    Py_ssize_t maxsplit
    );
__attribute__ ((visibility ("default"))) PyObject * PyUnicode_Translate(
    PyObject *str,
    PyObject *table,
    const char *errors
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_Join(
    PyObject *separator,
    PyObject *seq
    );
__attribute__ ((visibility ("default"))) Py_ssize_t PyUnicode_Tailmatch(
    PyObject *str,
    PyObject *substr,
    Py_ssize_t start,
    Py_ssize_t end,
    int direction
    );
__attribute__ ((visibility ("default"))) Py_ssize_t PyUnicode_Find(
    PyObject *str,
    PyObject *substr,
    Py_ssize_t start,
    Py_ssize_t end,
    int direction
    );
__attribute__ ((visibility ("default"))) Py_ssize_t PyUnicode_FindChar(
    PyObject *str,
    Py_UCS4 ch,
    Py_ssize_t start,
    Py_ssize_t end,
    int direction
    );
__attribute__ ((visibility ("default"))) Py_ssize_t PyUnicode_Count(
    PyObject *str,
    PyObject *substr,
    Py_ssize_t start,
    Py_ssize_t end
    );
__attribute__ ((visibility ("default"))) PyObject * PyUnicode_Replace(
    PyObject *str,
    PyObject *substr,
    PyObject *replstr,
    Py_ssize_t maxcount
    );
__attribute__ ((visibility ("default"))) int PyUnicode_Compare(
    PyObject *left,
    PyObject *right
    );
__attribute__ ((visibility ("default"))) int PyUnicode_CompareWithASCIIString(
    PyObject *left,
    const char *right
    );
__attribute__ ((visibility ("default"))) int PyUnicode_EqualToUTF8(PyObject *, const char *);
__attribute__ ((visibility ("default"))) int PyUnicode_EqualToUTF8AndSize(PyObject *, const char *, Py_ssize_t);
__attribute__ ((visibility ("default"))) PyObject * PyUnicode_RichCompare(
    PyObject *left,
    PyObject *right,
    int op
    );
__attribute__ ((visibility ("default"))) PyObject * PyUnicode_Format(
    PyObject *format,
    PyObject *args
    );
__attribute__ ((visibility ("default"))) int PyUnicode_Contains(
    PyObject *container,
    PyObject *element
    );
__attribute__ ((visibility ("default"))) int PyUnicode_IsIdentifier(PyObject *s);
/* +++ BEGIN "cpython/unicodeobject.h" /usr/include/python3.13/cpython/unicodeobject.h */
__attribute__((__deprecated__)) typedef wchar_t PY_UNICODE_TYPE;
__attribute__((__deprecated__)) typedef wchar_t Py_UNICODE;
static inline int Py_UNICODE_IS_SURROGATE(Py_UCS4 ch) {
    return (0xD800 <= ch && ch <= 0xDFFF);
}
static inline int Py_UNICODE_IS_HIGH_SURROGATE(Py_UCS4 ch) {
    return (0xD800 <= ch && ch <= 0xDBFF);
}
static inline int Py_UNICODE_IS_LOW_SURROGATE(Py_UCS4 ch) {
    return (0xDC00 <= ch && ch <= 0xDFFF);
}
static inline Py_UCS4 Py_UNICODE_JOIN_SURROGATES(Py_UCS4 high, Py_UCS4 low) {
    
   ((void) sizeof ((
   Py_UNICODE_IS_HIGH_SURROGATE(high)
   ) ? 1 : 0), __extension__ ({ if (
   Py_UNICODE_IS_HIGH_SURROGATE(high)
   ) ; else __assert_fail (
   "Py_UNICODE_IS_HIGH_SURROGATE(high)"
   , "/usr/include/python3.13/cpython/unicodeobject.h", 28, __extension__ __PRETTY_FUNCTION__); }))
                                             ;
    
   ((void) sizeof ((
   Py_UNICODE_IS_LOW_SURROGATE(low)
   ) ? 1 : 0), __extension__ ({ if (
   Py_UNICODE_IS_LOW_SURROGATE(low)
   ) ; else __assert_fail (
   "Py_UNICODE_IS_LOW_SURROGATE(low)"
   , "/usr/include/python3.13/cpython/unicodeobject.h", 29, __extension__ __PRETTY_FUNCTION__); }))
                                           ;
    return 0x10000 + (((high & 0x03FF) << 10) | (low & 0x03FF));
}
static inline Py_UCS4 Py_UNICODE_HIGH_SURROGATE(Py_UCS4 ch) {
    
   ((void) sizeof ((
   0x10000 <= ch && ch <= 0x10ffff
   ) ? 1 : 0), __extension__ ({ if (
   0x10000 <= ch && ch <= 0x10ffff
   ) ; else __assert_fail (
   "0x10000 <= ch && ch <= 0x10ffff"
   , "/usr/include/python3.13/cpython/unicodeobject.h", 36, __extension__ __PRETTY_FUNCTION__); }))
                                          ;
    return (0xD800 - (0x10000 >> 10) + (ch >> 10));
}
static inline Py_UCS4 Py_UNICODE_LOW_SURROGATE(Py_UCS4 ch) {
    
   ((void) sizeof ((
   0x10000 <= ch && ch <= 0x10ffff
   ) ? 1 : 0), __extension__ ({ if (
   0x10000 <= ch && ch <= 0x10ffff
   ) ; else __assert_fail (
   "0x10000 <= ch && ch <= 0x10ffff"
   , "/usr/include/python3.13/cpython/unicodeobject.h", 43, __extension__ __PRETTY_FUNCTION__); }))
                                          ;
    return (0xDC00 + (ch & 0x3FF));
}
typedef struct {
    PyObject ob_base;
    Py_ssize_t length;
    Py_hash_t hash;
    struct {
        unsigned int interned:2;
        unsigned int kind:3;
        unsigned int compact:1;
        unsigned int ascii:1;
        unsigned int statically_allocated:1;
        unsigned int :24;
    } state;
} PyASCIIObject;
typedef struct {
    PyASCIIObject _base;
    Py_ssize_t utf8_length;
    char *utf8;
} PyCompactUnicodeObject;
typedef struct {
    PyCompactUnicodeObject _base;
    union {
        void *any;
        Py_UCS1 *latin1;
        Py_UCS2 *ucs2;
        Py_UCS4 *ucs4;
    } data;
} PyUnicodeObject;
static inline unsigned int PyUnicode_CHECK_INTERNED(PyObject *op) {
    return (
          ((void) sizeof ((
          PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 28)))
          ) ? 1 : 0), __extension__ ({ if (
          PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 28)))
          ) ; else __assert_fail (
          "PyUnicode_Check(op)"
          , "/usr/include/python3.13/cpython/unicodeobject.h", 198, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyASCIIObject*)((op))))->state.interned;
}
static inline unsigned int PyUnicode_IS_READY(PyObject* _unused_op __attribute__((unused))) {
    return 1;
}
static inline unsigned int PyUnicode_IS_ASCII(PyObject *op) {
    return (
          ((void) sizeof ((
          PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 28)))
          ) ? 1 : 0), __extension__ ({ if (
          PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 28)))
          ) ; else __assert_fail (
          "PyUnicode_Check(op)"
          , "/usr/include/python3.13/cpython/unicodeobject.h", 212, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyASCIIObject*)((op))))->state.ascii;
}
static inline unsigned int PyUnicode_IS_COMPACT(PyObject *op) {
    return (
          ((void) sizeof ((
          PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 28)))
          ) ? 1 : 0), __extension__ ({ if (
          PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 28)))
          ) ; else __assert_fail (
          "PyUnicode_Check(op)"
          , "/usr/include/python3.13/cpython/unicodeobject.h", 219, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyASCIIObject*)((op))))->state.compact;
}
static inline int PyUnicode_IS_COMPACT_ASCII(PyObject *op) {
    return ((
           ((void) sizeof ((
           PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 28)))
           ) ? 1 : 0), __extension__ ({ if (
           PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 28)))
           ) ; else __assert_fail (
           "PyUnicode_Check(op)"
           , "/usr/include/python3.13/cpython/unicodeobject.h", 226, __extension__ __PRETTY_FUNCTION__); }))
           , ((PyASCIIObject*)((op))))->state.ascii && PyUnicode_IS_COMPACT(((PyObject*)((op)))));
}
enum PyUnicode_Kind {
    PyUnicode_1BYTE_KIND = 1,
    PyUnicode_2BYTE_KIND = 2,
    PyUnicode_4BYTE_KIND = 4
};
static inline void* _PyUnicode_COMPACT_DATA(PyObject *op) {
    if (PyUnicode_IS_ASCII(((PyObject*)((op))))) {
        return ((void*)(((
              ((void) sizeof ((
              PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 28)))
              ) ? 1 : 0), __extension__ ({ if (
              PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 28)))
              ) ; else __assert_fail (
              "PyUnicode_Check(op)"
              , "/usr/include/python3.13/cpython/unicodeobject.h", 248, __extension__ __PRETTY_FUNCTION__); }))
              , ((PyASCIIObject*)((op)))) + 1)));
    }
    return ((void*)(((
          ((void) sizeof ((
          PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 28)))
          ) ? 1 : 0), __extension__ ({ if (
          PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 28)))
          ) ; else __assert_fail (
          "PyUnicode_Check(op)"
          , "/usr/include/python3.13/cpython/unicodeobject.h", 250, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyCompactUnicodeObject*)((op)))) + 1)));
}
static inline void* _PyUnicode_NONCOMPACT_DATA(PyObject *op) {
    void *data;
    
   ((void) sizeof ((
   !PyUnicode_IS_COMPACT(((PyObject*)((op))))
   ) ? 1 : 0), __extension__ ({ if (
   !PyUnicode_IS_COMPACT(((PyObject*)((op))))
   ) ; else __assert_fail (
   "!PyUnicode_IS_COMPACT(op)"
   , "/usr/include/python3.13/cpython/unicodeobject.h", 255, __extension__ __PRETTY_FUNCTION__); }))
                                    ;
    data = (
          ((void) sizeof ((
          PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 28)))
          ) ? 1 : 0), __extension__ ({ if (
          PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 28)))
          ) ; else __assert_fail (
          "PyUnicode_Check(op)"
          , "/usr/include/python3.13/cpython/unicodeobject.h", 256, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyUnicodeObject*)((op))))->data.any;
    
   ((void) sizeof ((
   data != 
   ((void *)0)) ? 1 : 0), __extension__ ({ if (
   data != 
   ((void *)0)) ; else __assert_fail (
   "data != NULL"
   , "/usr/include/python3.13/cpython/unicodeobject.h", 257, __extension__ __PRETTY_FUNCTION__); }))
                       ;
    return data;
}
static inline void* PyUnicode_DATA(PyObject *op) {
    if (PyUnicode_IS_COMPACT(((PyObject*)((op))))) {
        return _PyUnicode_COMPACT_DATA(op);
    }
    return _PyUnicode_NONCOMPACT_DATA(op);
}
static inline Py_ssize_t PyUnicode_GET_LENGTH(PyObject *op) {
    return (
          ((void) sizeof ((
          PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 28)))
          ) ? 1 : 0), __extension__ ({ if (
          PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 28)))
          ) ; else __assert_fail (
          "PyUnicode_Check(op)"
          , "/usr/include/python3.13/cpython/unicodeobject.h", 280, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyASCIIObject*)((op))))->length;
}
static inline void PyUnicode_WRITE(int kind, void *data,
                                   Py_ssize_t index, Py_UCS4 value)
{
    
   ((void) sizeof ((
   index >= 0
   ) ? 1 : 0), __extension__ ({ if (
   index >= 0
   ) ; else __assert_fail (
   "index >= 0"
   , "/usr/include/python3.13/cpython/unicodeobject.h", 292, __extension__ __PRETTY_FUNCTION__); }))
                     ;
    if (kind == PyUnicode_1BYTE_KIND) {
        
       ((void) sizeof ((
       value <= 0xffU
       ) ? 1 : 0), __extension__ ({ if (
       value <= 0xffU
       ) ; else __assert_fail (
       "value <= 0xffU"
       , "/usr/include/python3.13/cpython/unicodeobject.h", 294, __extension__ __PRETTY_FUNCTION__); }))
                             ;
        ((Py_UCS1*)(data))[index] = ((Py_UCS1)(value));
    }
    else if (kind == PyUnicode_2BYTE_KIND) {
        
       ((void) sizeof ((
       value <= 0xffffU
       ) ? 1 : 0), __extension__ ({ if (
       value <= 0xffffU
       ) ; else __assert_fail (
       "value <= 0xffffU"
       , "/usr/include/python3.13/cpython/unicodeobject.h", 298, __extension__ __PRETTY_FUNCTION__); }))
                               ;
        ((Py_UCS2*)(data))[index] = ((Py_UCS2)(value));
    }
    else {
        
       ((void) sizeof ((
       kind == PyUnicode_4BYTE_KIND
       ) ? 1 : 0), __extension__ ({ if (
       kind == PyUnicode_4BYTE_KIND
       ) ; else __assert_fail (
       "kind == PyUnicode_4BYTE_KIND"
       , "/usr/include/python3.13/cpython/unicodeobject.h", 302, __extension__ __PRETTY_FUNCTION__); }))
                                           ;
        
       ((void) sizeof ((
       value <= 0x10ffffU
       ) ? 1 : 0), __extension__ ({ if (
       value <= 0x10ffffU
       ) ; else __assert_fail (
       "value <= 0x10ffffU"
       , "/usr/include/python3.13/cpython/unicodeobject.h", 303, __extension__ __PRETTY_FUNCTION__); }))
                                 ;
        ((Py_UCS4*)(data))[index] = value;
    }
}
static inline Py_UCS4 PyUnicode_READ(int kind,
                                     const void *data, Py_ssize_t index)
{
    
   ((void) sizeof ((
   index >= 0
   ) ? 1 : 0), __extension__ ({ if (
   index >= 0
   ) ; else __assert_fail (
   "index >= 0"
   , "/usr/include/python3.13/cpython/unicodeobject.h", 316, __extension__ __PRETTY_FUNCTION__); }))
                     ;
    if (kind == PyUnicode_1BYTE_KIND) {
        return ((const Py_UCS1*)(data))[index];
    }
    if (kind == PyUnicode_2BYTE_KIND) {
        return ((const Py_UCS2*)(data))[index];
    }
    
   ((void) sizeof ((
   kind == PyUnicode_4BYTE_KIND
   ) ? 1 : 0), __extension__ ({ if (
   kind == PyUnicode_4BYTE_KIND
   ) ; else __assert_fail (
   "kind == PyUnicode_4BYTE_KIND"
   , "/usr/include/python3.13/cpython/unicodeobject.h", 323, __extension__ __PRETTY_FUNCTION__); }))
                                       ;
    return ((const Py_UCS4*)(data))[index];
}
static inline Py_UCS4 PyUnicode_READ_CHAR(PyObject *unicode, Py_ssize_t index)
{
    int kind;
    
   ((void) sizeof ((
   index >= 0
   ) ? 1 : 0), __extension__ ({ if (
   index >= 0
   ) ; else __assert_fail (
   "index >= 0"
   , "/usr/include/python3.13/cpython/unicodeobject.h", 339, __extension__ __PRETTY_FUNCTION__); }))
                     ;
    
   ((void) sizeof ((
   index <= PyUnicode_GET_LENGTH(((PyObject*)((unicode))))
   ) ? 1 : 0), __extension__ ({ if (
   index <= PyUnicode_GET_LENGTH(((PyObject*)((unicode))))
   ) ; else __assert_fail (
   "index <= PyUnicode_GET_LENGTH(unicode)"
   , "/usr/include/python3.13/cpython/unicodeobject.h", 341, __extension__ __PRETTY_FUNCTION__); }))
                                                 ;
    kind = ((void)0, ((
          ((void) sizeof ((
          PyType_HasFeature((Py_TYPE(((PyObject*)((unicode))))), ((1UL << 28)))
          ) ? 1 : 0), __extension__ ({ if (
          PyType_HasFeature((Py_TYPE(((PyObject*)((unicode))))), ((1UL << 28)))
          ) ; else __assert_fail (
          "PyUnicode_Check(unicode)"
          , "/usr/include/python3.13/cpython/unicodeobject.h", 343, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyASCIIObject*)((unicode))))->state.kind));
    if (kind == PyUnicode_1BYTE_KIND) {
        return ((Py_UCS1*)(PyUnicode_DATA(((PyObject*)((unicode))))))[index];
    }
    if (kind == PyUnicode_2BYTE_KIND) {
        return ((Py_UCS2*)(PyUnicode_DATA(((PyObject*)((unicode))))))[index];
    }
    
   ((void) sizeof ((
   kind == PyUnicode_4BYTE_KIND
   ) ? 1 : 0), __extension__ ({ if (
   kind == PyUnicode_4BYTE_KIND
   ) ; else __assert_fail (
   "kind == PyUnicode_4BYTE_KIND"
   , "/usr/include/python3.13/cpython/unicodeobject.h", 350, __extension__ __PRETTY_FUNCTION__); }))
                                       ;
    return ((Py_UCS4*)(PyUnicode_DATA(((PyObject*)((unicode))))))[index];
}
static inline Py_UCS4 PyUnicode_MAX_CHAR_VALUE(PyObject *op)
{
    int kind;
    if (PyUnicode_IS_ASCII(((PyObject*)((op))))) {
        return 0x7fU;
    }
    kind = ((void)0, ((
          ((void) sizeof ((
          PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 28)))
          ) ? 1 : 0), __extension__ ({ if (
          PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 28)))
          ) ; else __assert_fail (
          "PyUnicode_Check(op)"
          , "/usr/include/python3.13/cpython/unicodeobject.h", 367, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyASCIIObject*)((op))))->state.kind));
    if (kind == PyUnicode_1BYTE_KIND) {
       return 0xffU;
    }
    if (kind == PyUnicode_2BYTE_KIND) {
        return 0xffffU;
    }
    
   ((void) sizeof ((
   kind == PyUnicode_4BYTE_KIND
   ) ? 1 : 0), __extension__ ({ if (
   kind == PyUnicode_4BYTE_KIND
   ) ; else __assert_fail (
   "kind == PyUnicode_4BYTE_KIND"
   , "/usr/include/python3.13/cpython/unicodeobject.h", 374, __extension__ __PRETTY_FUNCTION__); }))
                                       ;
    return 0x10ffffU;
}
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_New(
    Py_ssize_t size,
    Py_UCS4 maxchar
    );
static inline int PyUnicode_READY(PyObject* _unused_op __attribute__((unused)))
{
    return 0;
}
__attribute__ ((visibility ("default"))) Py_ssize_t PyUnicode_CopyCharacters(
    PyObject *to,
    Py_ssize_t to_start,
    PyObject *from,
    Py_ssize_t from_start,
    Py_ssize_t how_many
    );
__attribute__ ((visibility ("default"))) Py_ssize_t PyUnicode_Fill(
    PyObject *unicode,
    Py_ssize_t start,
    Py_ssize_t length,
    Py_UCS4 fill_char
    );
__attribute__ ((visibility ("default"))) PyObject* PyUnicode_FromKindAndData(
    int kind,
    const void *buffer,
    Py_ssize_t size);
typedef struct {
    PyObject *buffer;
    void *data;
    int kind;
    Py_UCS4 maxchar;
    Py_ssize_t size;
    Py_ssize_t pos;
    Py_ssize_t min_length;
    Py_UCS4 min_char;
    unsigned char overallocate;
    unsigned char readonly;
} _PyUnicodeWriter ;
__attribute__ ((visibility ("default"))) void
_PyUnicodeWriter_Init(_PyUnicodeWriter *writer);
__attribute__ ((visibility ("default"))) int
_PyUnicodeWriter_PrepareInternal(_PyUnicodeWriter *writer,
                                 Py_ssize_t length, Py_UCS4 maxchar);
__attribute__ ((visibility ("default"))) int
_PyUnicodeWriter_PrepareKindInternal(_PyUnicodeWriter *writer,
                                     int kind);
__attribute__ ((visibility ("default"))) int
_PyUnicodeWriter_WriteChar(_PyUnicodeWriter *writer,
    Py_UCS4 ch
    );
__attribute__ ((visibility ("default"))) int
_PyUnicodeWriter_WriteStr(_PyUnicodeWriter *writer,
    PyObject *str
    );
__attribute__ ((visibility ("default"))) int
_PyUnicodeWriter_WriteSubstring(_PyUnicodeWriter *writer,
    PyObject *str,
    Py_ssize_t start,
    Py_ssize_t end
    );
__attribute__ ((visibility ("default"))) int
_PyUnicodeWriter_WriteASCIIString(_PyUnicodeWriter *writer,
    const char *str,
    Py_ssize_t len
    );
__attribute__ ((visibility ("default"))) int
_PyUnicodeWriter_WriteLatin1String(_PyUnicodeWriter *writer,
    const char *str,
    Py_ssize_t len
    );
__attribute__ ((visibility ("default"))) PyObject *
_PyUnicodeWriter_Finish(_PyUnicodeWriter *writer);
__attribute__ ((visibility ("default"))) void
_PyUnicodeWriter_Dealloc(_PyUnicodeWriter *writer);
__attribute__ ((visibility ("default"))) const char * PyUnicode_AsUTF8(PyObject *unicode);
__attribute__ ((visibility ("default"))) int _PyUnicode_IsLowercase(
    Py_UCS4 ch
    );
__attribute__ ((visibility ("default"))) int _PyUnicode_IsUppercase(
    Py_UCS4 ch
    );
__attribute__ ((visibility ("default"))) int _PyUnicode_IsTitlecase(
    Py_UCS4 ch
    );
__attribute__ ((visibility ("default"))) int _PyUnicode_IsWhitespace(
    const Py_UCS4 ch
    );
__attribute__ ((visibility ("default"))) int _PyUnicode_IsLinebreak(
    const Py_UCS4 ch
    );
__attribute__ ((visibility ("default"))) Py_UCS4 _PyUnicode_ToLowercase(
    Py_UCS4 ch
    );
__attribute__ ((visibility ("default"))) Py_UCS4 _PyUnicode_ToUppercase(
    Py_UCS4 ch
    );
__attribute__ ((visibility ("default"))) Py_UCS4 _PyUnicode_ToTitlecase(
    Py_UCS4 ch
    );
__attribute__ ((visibility ("default"))) int _PyUnicode_ToDecimalDigit(
    Py_UCS4 ch
    );
__attribute__ ((visibility ("default"))) int _PyUnicode_ToDigit(
    Py_UCS4 ch
    );
__attribute__ ((visibility ("default"))) double _PyUnicode_ToNumeric(
    Py_UCS4 ch
    );
__attribute__ ((visibility ("default"))) int _PyUnicode_IsDecimalDigit(
    Py_UCS4 ch
    );
__attribute__ ((visibility ("default"))) int _PyUnicode_IsDigit(
    Py_UCS4 ch
    );
__attribute__ ((visibility ("default"))) int _PyUnicode_IsNumeric(
    Py_UCS4 ch
    );
__attribute__ ((visibility ("default"))) int _PyUnicode_IsPrintable(
    Py_UCS4 ch
    );
__attribute__ ((visibility ("default"))) int _PyUnicode_IsAlpha(
    Py_UCS4 ch
    );
extern __attribute__ ((visibility ("default"))) const unsigned char _Py_ascii_whitespace[];
static inline int Py_UNICODE_ISSPACE(Py_UCS4 ch) {
    if (ch < 128) {
        return _Py_ascii_whitespace[ch];
    }
    return _PyUnicode_IsWhitespace(ch);
}
static inline int Py_UNICODE_ISALNUM(Py_UCS4 ch) {
   return (_PyUnicode_IsAlpha(ch)
           || _PyUnicode_IsDecimalDigit(ch)
           || _PyUnicode_IsDigit(ch)
           || _PyUnicode_IsNumeric(ch));
}
__attribute__ ((visibility ("default"))) PyObject* _PyUnicode_FromId(_Py_Identifier*);
/* +++ END "cpython/unicodeobject.h" /usr/include/python3.13/cpython/unicodeobject.h */
/* ++ END "unicodeobject.h" /usr/include/python3.13/unicodeobject.h */
/* ++ BEGIN "pyerrors.h" /usr/include/python3.13/pyerrors.h */
__attribute__ ((visibility ("default"))) void PyErr_SetNone(PyObject *);
__attribute__ ((visibility ("default"))) void PyErr_SetObject(PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) void PyErr_SetString(
    PyObject *exception,
    const char *string
    );
__attribute__ ((visibility ("default"))) PyObject * PyErr_Occurred(void);
__attribute__ ((visibility ("default"))) void PyErr_Clear(void);
__attribute__ ((visibility ("default"))) void PyErr_Fetch(PyObject **, PyObject **, PyObject **);
__attribute__ ((visibility ("default"))) void PyErr_Restore(PyObject *, PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyErr_GetRaisedException(void);
__attribute__ ((visibility ("default"))) void PyErr_SetRaisedException(PyObject *);
__attribute__ ((visibility ("default"))) PyObject* PyErr_GetHandledException(void);
__attribute__ ((visibility ("default"))) void PyErr_SetHandledException(PyObject *);
__attribute__ ((visibility ("default"))) void PyErr_GetExcInfo(PyObject **, PyObject **, PyObject **);
__attribute__ ((visibility ("default"))) void PyErr_SetExcInfo(PyObject *, PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) void __attribute__((__noreturn__)) Py_FatalError(const char *message);
__attribute__ ((visibility ("default"))) int PyErr_GivenExceptionMatches(PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) int PyErr_ExceptionMatches(PyObject *);
__attribute__ ((visibility ("default"))) void PyErr_NormalizeException(PyObject**, PyObject**, PyObject**);
__attribute__ ((visibility ("default"))) int PyException_SetTraceback(PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyException_GetTraceback(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyException_GetCause(PyObject *);
__attribute__ ((visibility ("default"))) void PyException_SetCause(PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyException_GetContext(PyObject *);
__attribute__ ((visibility ("default"))) void PyException_SetContext(PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyException_GetArgs(PyObject *);
__attribute__ ((visibility ("default"))) void PyException_SetArgs(PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) const char * PyExceptionClass_Name(PyObject *);
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_BaseException;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_Exception;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_BaseExceptionGroup;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_StopAsyncIteration;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_StopIteration;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_GeneratorExit;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_ArithmeticError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_LookupError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_AssertionError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_AttributeError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_BufferError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_EOFError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_FloatingPointError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_OSError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_ImportError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_ModuleNotFoundError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_IndexError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_KeyError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_KeyboardInterrupt;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_MemoryError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_NameError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_OverflowError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_RuntimeError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_RecursionError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_NotImplementedError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_SyntaxError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_IndentationError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_TabError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_ReferenceError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_SystemError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_SystemExit;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_TypeError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_UnboundLocalError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_UnicodeError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_UnicodeEncodeError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_UnicodeDecodeError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_UnicodeTranslateError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_ValueError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_ZeroDivisionError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_BlockingIOError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_BrokenPipeError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_ChildProcessError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_ConnectionError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_ConnectionAbortedError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_ConnectionRefusedError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_ConnectionResetError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_FileExistsError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_FileNotFoundError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_InterruptedError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_IsADirectoryError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_NotADirectoryError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_PermissionError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_ProcessLookupError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_TimeoutError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_EnvironmentError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_IOError;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_Warning;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_UserWarning;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_DeprecationWarning;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_PendingDeprecationWarning;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_SyntaxWarning;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_RuntimeWarning;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_FutureWarning;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_ImportWarning;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_UnicodeWarning;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_BytesWarning;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_EncodingWarning;
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_ResourceWarning;
__attribute__ ((visibility ("default"))) int PyErr_BadArgument(void);
__attribute__ ((visibility ("default"))) PyObject * PyErr_NoMemory(void);
__attribute__ ((visibility ("default"))) PyObject * PyErr_SetFromErrno(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyErr_SetFromErrnoWithFilenameObject(
    PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyErr_SetFromErrnoWithFilenameObjects(
    PyObject *, PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyErr_SetFromErrnoWithFilename(
    PyObject *exc,
    const char *filename
    );
__attribute__ ((visibility ("default"))) PyObject * PyErr_Format(
    PyObject *exception,
    const char *format,
    ...
    );
__attribute__ ((visibility ("default"))) PyObject * PyErr_FormatV(
    PyObject *exception,
    const char *format,
    va_list vargs);
__attribute__ ((visibility ("default"))) PyObject * PyErr_SetImportErrorSubclass(PyObject *, PyObject *,
    PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyErr_SetImportError(PyObject *, PyObject *,
    PyObject *);
__attribute__ ((visibility ("default"))) void PyErr_BadInternalCall(void);
__attribute__ ((visibility ("default"))) void _PyErr_BadInternalCall(const char *filename, int lineno);
__attribute__ ((visibility ("default"))) PyObject * PyErr_NewException(
    const char *name, PyObject *base, PyObject *dict);
__attribute__ ((visibility ("default"))) PyObject * PyErr_NewExceptionWithDoc(
    const char *name, const char *doc, PyObject *base, PyObject *dict);
__attribute__ ((visibility ("default"))) void PyErr_WriteUnraisable(PyObject *);
__attribute__ ((visibility ("default"))) int PyErr_CheckSignals(void);
__attribute__ ((visibility ("default"))) void PyErr_SetInterrupt(void);
__attribute__ ((visibility ("default"))) int PyErr_SetInterruptEx(int signum);
__attribute__ ((visibility ("default"))) void PyErr_SyntaxLocation(
    const char *filename,
    int lineno);
__attribute__ ((visibility ("default"))) void PyErr_SyntaxLocationEx(
    const char *filename,
    int lineno,
    int col_offset);
__attribute__ ((visibility ("default"))) PyObject * PyErr_ProgramText(
    const char *filename,
    int lineno);
__attribute__ ((visibility ("default"))) PyObject * PyUnicodeDecodeError_Create(
    const char *encoding,
    const char *object,
    Py_ssize_t length,
    Py_ssize_t start,
    Py_ssize_t end,
    const char *reason
    );
__attribute__ ((visibility ("default"))) PyObject * PyUnicodeEncodeError_GetEncoding(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyUnicodeDecodeError_GetEncoding(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyUnicodeEncodeError_GetObject(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyUnicodeDecodeError_GetObject(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyUnicodeTranslateError_GetObject(PyObject *);
__attribute__ ((visibility ("default"))) int PyUnicodeEncodeError_GetStart(PyObject *, Py_ssize_t *);
__attribute__ ((visibility ("default"))) int PyUnicodeDecodeError_GetStart(PyObject *, Py_ssize_t *);
__attribute__ ((visibility ("default"))) int PyUnicodeTranslateError_GetStart(PyObject *, Py_ssize_t *);
__attribute__ ((visibility ("default"))) int PyUnicodeEncodeError_SetStart(PyObject *, Py_ssize_t);
__attribute__ ((visibility ("default"))) int PyUnicodeDecodeError_SetStart(PyObject *, Py_ssize_t);
__attribute__ ((visibility ("default"))) int PyUnicodeTranslateError_SetStart(PyObject *, Py_ssize_t);
__attribute__ ((visibility ("default"))) int PyUnicodeEncodeError_GetEnd(PyObject *, Py_ssize_t *);
__attribute__ ((visibility ("default"))) int PyUnicodeDecodeError_GetEnd(PyObject *, Py_ssize_t *);
__attribute__ ((visibility ("default"))) int PyUnicodeTranslateError_GetEnd(PyObject *, Py_ssize_t *);
__attribute__ ((visibility ("default"))) int PyUnicodeEncodeError_SetEnd(PyObject *, Py_ssize_t);
__attribute__ ((visibility ("default"))) int PyUnicodeDecodeError_SetEnd(PyObject *, Py_ssize_t);
__attribute__ ((visibility ("default"))) int PyUnicodeTranslateError_SetEnd(PyObject *, Py_ssize_t);
__attribute__ ((visibility ("default"))) PyObject * PyUnicodeEncodeError_GetReason(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyUnicodeDecodeError_GetReason(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyUnicodeTranslateError_GetReason(PyObject *);
__attribute__ ((visibility ("default"))) int PyUnicodeEncodeError_SetReason(
    PyObject *exc,
    const char *reason
    );
__attribute__ ((visibility ("default"))) int PyUnicodeDecodeError_SetReason(
    PyObject *exc,
    const char *reason
    );
__attribute__ ((visibility ("default"))) int PyUnicodeTranslateError_SetReason(
    PyObject *exc,
    const char *reason
    );
__attribute__ ((visibility ("default"))) int PyOS_snprintf(char *str, size_t size, const char *format, ...)
                        __attribute__((format(printf, 3, 4)));
__attribute__ ((visibility ("default"))) int PyOS_vsnprintf(char *str, size_t size, const char *format, va_list va)
                        __attribute__((format(printf, 3, 0)));
/* +++ BEGIN "cpython/pyerrors.h" /usr/include/python3.13/cpython/pyerrors.h */
typedef struct {
    PyObject ob_base; PyObject *dict; PyObject *args; PyObject *notes; PyObject *traceback; PyObject *context; PyObject *cause; char suppress_context;
} PyBaseExceptionObject;
typedef struct {
    PyObject ob_base; PyObject *dict; PyObject *args; PyObject *notes; PyObject *traceback; PyObject *context; PyObject *cause; char suppress_context;
    PyObject *msg;
    PyObject *excs;
} PyBaseExceptionGroupObject;
typedef struct {
    PyObject ob_base; PyObject *dict; PyObject *args; PyObject *notes; PyObject *traceback; PyObject *context; PyObject *cause; char suppress_context;
    PyObject *msg;
    PyObject *filename;
    PyObject *lineno;
    PyObject *offset;
    PyObject *end_lineno;
    PyObject *end_offset;
    PyObject *text;
    PyObject *print_file_and_line;
} PySyntaxErrorObject;
typedef struct {
    PyObject ob_base; PyObject *dict; PyObject *args; PyObject *notes; PyObject *traceback; PyObject *context; PyObject *cause; char suppress_context;
    PyObject *msg;
    PyObject *name;
    PyObject *path;
    PyObject *name_from;
} PyImportErrorObject;
typedef struct {
    PyObject ob_base; PyObject *dict; PyObject *args; PyObject *notes; PyObject *traceback; PyObject *context; PyObject *cause; char suppress_context;
    PyObject *encoding;
    PyObject *object;
    Py_ssize_t start;
    Py_ssize_t end;
    PyObject *reason;
} PyUnicodeErrorObject;
typedef struct {
    PyObject ob_base; PyObject *dict; PyObject *args; PyObject *notes; PyObject *traceback; PyObject *context; PyObject *cause; char suppress_context;
    PyObject *code;
} PySystemExitObject;
typedef struct {
    PyObject ob_base; PyObject *dict; PyObject *args; PyObject *notes; PyObject *traceback; PyObject *context; PyObject *cause; char suppress_context;
    PyObject *myerrno;
    PyObject *strerror;
    PyObject *filename;
    PyObject *filename2;
    Py_ssize_t written;
} PyOSErrorObject;
typedef struct {
    PyObject ob_base; PyObject *dict; PyObject *args; PyObject *notes; PyObject *traceback; PyObject *context; PyObject *cause; char suppress_context;
    PyObject *value;
} PyStopIterationObject;
typedef struct {
    PyObject ob_base; PyObject *dict; PyObject *args; PyObject *notes; PyObject *traceback; PyObject *context; PyObject *cause; char suppress_context;
    PyObject *name;
} PyNameErrorObject;
typedef struct {
    PyObject ob_base; PyObject *dict; PyObject *args; PyObject *notes; PyObject *traceback; PyObject *context; PyObject *cause; char suppress_context;
    PyObject *obj;
    PyObject *name;
} PyAttributeErrorObject;
typedef PyOSErrorObject PyEnvironmentErrorObject;
__attribute__ ((visibility ("default"))) void _PyErr_ChainExceptions1(PyObject *);
__attribute__ ((visibility ("default"))) PyObject* PyUnstable_Exc_PrepReraiseStar(
     PyObject *orig,
     PyObject *excs);
__attribute__ ((visibility ("default"))) int PySignal_SetWakeupFd(int fd);
__attribute__ ((visibility ("default"))) void PyErr_SyntaxLocationObject(
    PyObject *filename,
    int lineno,
    int col_offset);
__attribute__ ((visibility ("default"))) void PyErr_RangedSyntaxLocationObject(
    PyObject *filename,
    int lineno,
    int col_offset,
    int end_lineno,
    int end_col_offset);
__attribute__ ((visibility ("default"))) PyObject * PyErr_ProgramTextObject(
    PyObject *filename,
    int lineno);
__attribute__ ((visibility ("default"))) void __attribute__((__noreturn__)) _Py_FatalErrorFunc(
    const char *func,
    const char *message);
__attribute__ ((visibility ("default"))) void PyErr_FormatUnraisable(const char *, ...);
extern __attribute__ ((visibility ("default"))) PyObject * PyExc_PythonFinalizationError;
/* +++ END "cpython/pyerrors.h" /usr/include/python3.13/cpython/pyerrors.h */
/* ++ END "pyerrors.h" /usr/include/python3.13/pyerrors.h */
/* ++ BEGIN "longobject.h" /usr/include/python3.13/longobject.h */
__attribute__ ((visibility ("default"))) PyObject * PyLong_FromLong(long);
__attribute__ ((visibility ("default"))) PyObject * PyLong_FromUnsignedLong(unsigned long);
__attribute__ ((visibility ("default"))) PyObject * PyLong_FromSize_t(size_t);
__attribute__ ((visibility ("default"))) PyObject * PyLong_FromSsize_t(Py_ssize_t);
__attribute__ ((visibility ("default"))) PyObject * PyLong_FromDouble(double);
__attribute__ ((visibility ("default"))) long PyLong_AsLong(PyObject *);
__attribute__ ((visibility ("default"))) long PyLong_AsLongAndOverflow(PyObject *, int *);
__attribute__ ((visibility ("default"))) Py_ssize_t PyLong_AsSsize_t(PyObject *);
__attribute__ ((visibility ("default"))) size_t PyLong_AsSize_t(PyObject *);
__attribute__ ((visibility ("default"))) unsigned long PyLong_AsUnsignedLong(PyObject *);
__attribute__ ((visibility ("default"))) unsigned long PyLong_AsUnsignedLongMask(PyObject *);
__attribute__ ((visibility ("default"))) int PyLong_AsInt(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyLong_GetInfo(void);
__attribute__ ((visibility ("default"))) double PyLong_AsDouble(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyLong_FromVoidPtr(void *);
__attribute__ ((visibility ("default"))) void * PyLong_AsVoidPtr(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyLong_FromLongLong(long long);
__attribute__ ((visibility ("default"))) PyObject * PyLong_FromUnsignedLongLong(unsigned long long);
__attribute__ ((visibility ("default"))) long long PyLong_AsLongLong(PyObject *);
__attribute__ ((visibility ("default"))) unsigned long long PyLong_AsUnsignedLongLong(PyObject *);
__attribute__ ((visibility ("default"))) unsigned long long PyLong_AsUnsignedLongLongMask(PyObject *);
__attribute__ ((visibility ("default"))) long long PyLong_AsLongLongAndOverflow(PyObject *, int *);
__attribute__ ((visibility ("default"))) PyObject * PyLong_FromString(const char *, char **, int);
__attribute__ ((visibility ("default"))) unsigned long PyOS_strtoul(const char *, char **, int);
__attribute__ ((visibility ("default"))) long PyOS_strtol(const char *, char **, int);
/* +++ BEGIN "cpython/longobject.h" /usr/include/python3.13/cpython/longobject.h */
__attribute__ ((visibility ("default"))) PyObject* PyLong_FromUnicodeObject(PyObject *u, int base);
__attribute__ ((visibility ("default"))) Py_ssize_t PyLong_AsNativeBytes(PyObject* v, void* buffer,
    Py_ssize_t n_bytes, int flags);
__attribute__ ((visibility ("default"))) PyObject* PyLong_FromNativeBytes(const void* buffer, size_t n_bytes,
    int flags);
__attribute__ ((visibility ("default"))) PyObject* PyLong_FromUnsignedNativeBytes(const void* buffer,
    size_t n_bytes, int flags);
__attribute__ ((visibility ("default"))) int PyUnstable_Long_IsCompact(const PyLongObject* op);
__attribute__ ((visibility ("default"))) Py_ssize_t PyUnstable_Long_CompactValue(const PyLongObject* op);
__attribute__ ((visibility ("default"))) int _PyLong_Sign(PyObject *v);
__attribute__ ((visibility ("default"))) size_t _PyLong_NumBits(PyObject *v);
__attribute__ ((visibility ("default"))) PyObject * _PyLong_FromByteArray(
    const unsigned char* bytes, size_t n,
    int little_endian, int is_signed);
__attribute__ ((visibility ("default"))) int _PyLong_AsByteArray(PyLongObject* v,
    unsigned char* bytes, size_t n,
    int little_endian, int is_signed, int with_exceptions);
__attribute__ ((visibility ("default"))) PyObject * _PyLong_GCD(PyObject *, PyObject *);
/* +++ END "cpython/longobject.h" /usr/include/python3.13/cpython/longobject.h */
/* ++ END "longobject.h" /usr/include/python3.13/longobject.h */
/* ++ BEGIN "cpython/longintrepr.h" /usr/include/python3.13/cpython/longintrepr.h */
typedef uint32_t digit;
typedef int32_t sdigit;
typedef uint64_t twodigits;
typedef int64_t stwodigits;
typedef struct _PyLongValue {
    uintptr_t lv_tag;
    digit ob_digit[1];
} _PyLongValue;
struct _longobject {
    PyObject ob_base;
    _PyLongValue long_value;
};
__attribute__ ((visibility ("default"))) PyLongObject* _PyLong_New(Py_ssize_t);
__attribute__ ((visibility ("default"))) PyObject* _PyLong_Copy(PyLongObject *src);
__attribute__ ((visibility ("default"))) PyLongObject* _PyLong_FromDigits(
    int negative,
    Py_ssize_t digit_count,
    digit *digits);
static inline int
_PyLong_IsCompact(const PyLongObject* op) {
    
   ((void) sizeof ((
   PyType_HasFeature((op)->ob_base.ob_type, (1UL << 24))
   ) ? 1 : 0), __extension__ ({ if (
   PyType_HasFeature((op)->ob_base.ob_type, (1UL << 24))
   ) ; else __assert_fail (
   "PyType_HasFeature((op)->ob_base.ob_type, Py_TPFLAGS_LONG_SUBCLASS)"
   , "/usr/include/python3.13/cpython/longintrepr.h", 123, __extension__ __PRETTY_FUNCTION__); }))
                                                                             ;
    return op->long_value.lv_tag < (2 << 3);
}
static inline Py_ssize_t
_PyLong_CompactValue(const PyLongObject *op)
{
    Py_ssize_t sign;
    
   ((void) sizeof ((
   PyType_HasFeature((op)->ob_base.ob_type, (1UL << 24))
   ) ? 1 : 0), __extension__ ({ if (
   PyType_HasFeature((op)->ob_base.ob_type, (1UL << 24))
   ) ; else __assert_fail (
   "PyType_HasFeature((op)->ob_base.ob_type, Py_TPFLAGS_LONG_SUBCLASS)"
   , "/usr/include/python3.13/cpython/longintrepr.h", 133, __extension__ __PRETTY_FUNCTION__); }))
                                                                             ;
    
   ((void) sizeof ((
   _PyLong_IsCompact(op)
   ) ? 1 : 0), __extension__ ({ if (
   _PyLong_IsCompact(op)
   ) ; else __assert_fail (
   "PyUnstable_Long_IsCompact(op)"
   , "/usr/include/python3.13/cpython/longintrepr.h", 134, __extension__ __PRETTY_FUNCTION__); }))
                                        ;
    sign = 1 - (op->long_value.lv_tag & 3);
    return sign * (Py_ssize_t)op->long_value.ob_digit[0];
}
/* ++ END "cpython/longintrepr.h" /usr/include/python3.13/cpython/longintrepr.h */
/* ++ BEGIN "boolobject.h" /usr/include/python3.13/boolobject.h */
extern __attribute__ ((visibility ("default"))) PyLongObject _Py_FalseStruct;
extern __attribute__ ((visibility ("default"))) PyLongObject _Py_TrueStruct;
__attribute__ ((visibility ("default"))) int Py_IsTrue(PyObject *x);
__attribute__ ((visibility ("default"))) int Py_IsFalse(PyObject *x);
__attribute__ ((visibility ("default"))) PyObject * PyBool_FromLong(long);
/* ++ END "boolobject.h" /usr/include/python3.13/boolobject.h */
/* ++ BEGIN "floatobject.h" /usr/include/python3.13/floatobject.h */
extern __attribute__ ((visibility ("default"))) PyTypeObject PyFloat_Type;
__attribute__ ((visibility ("default"))) double PyFloat_GetMax(void);
__attribute__ ((visibility ("default"))) double PyFloat_GetMin(void);
__attribute__ ((visibility ("default"))) PyObject* PyFloat_GetInfo(void);
__attribute__ ((visibility ("default"))) PyObject* PyFloat_FromString(PyObject*);
__attribute__ ((visibility ("default"))) PyObject* PyFloat_FromDouble(double);
__attribute__ ((visibility ("default"))) double PyFloat_AsDouble(PyObject*);
/* +++ BEGIN "cpython/floatobject.h" /usr/include/python3.13/cpython/floatobject.h */
typedef struct {
    PyObject ob_base;
    double ob_fval;
} PyFloatObject;
static inline double PyFloat_AS_DOUBLE(PyObject *op) {
    return (
          ((void) sizeof ((
          PyObject_TypeCheck(((PyObject*)((op))), (&PyFloat_Type))
          ) ? 1 : 0), __extension__ ({ if (
          PyObject_TypeCheck(((PyObject*)((op))), (&PyFloat_Type))
          ) ; else __assert_fail (
          "PyFloat_Check(op)"
          , "/usr/include/python3.13/cpython/floatobject.h", 16, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyFloatObject*)(op)))->ob_fval;
}
__attribute__ ((visibility ("default"))) int PyFloat_Pack2(double x, char *p, int le);
__attribute__ ((visibility ("default"))) int PyFloat_Pack4(double x, char *p, int le);
__attribute__ ((visibility ("default"))) int PyFloat_Pack8(double x, char *p, int le);
__attribute__ ((visibility ("default"))) double PyFloat_Unpack2(const char *p, int le);
__attribute__ ((visibility ("default"))) double PyFloat_Unpack4(const char *p, int le);
__attribute__ ((visibility ("default"))) double PyFloat_Unpack8(const char *p, int le);
/* +++ END "cpython/floatobject.h" /usr/include/python3.13/cpython/floatobject.h */
/* ++ END "floatobject.h" /usr/include/python3.13/floatobject.h */
/* ++ BEGIN "complexobject.h" /usr/include/python3.13/complexobject.h */
extern __attribute__ ((visibility ("default"))) PyTypeObject PyComplex_Type;
__attribute__ ((visibility ("default"))) PyObject * PyComplex_FromDoubles(double real, double imag);
__attribute__ ((visibility ("default"))) double PyComplex_RealAsDouble(PyObject *op);
__attribute__ ((visibility ("default"))) double PyComplex_ImagAsDouble(PyObject *op);
/* +++ BEGIN "cpython/complexobject.h" /usr/include/python3.13/cpython/complexobject.h */
typedef struct {
    double real;
    double imag;
} Py_complex;
__attribute__ ((visibility ("default"))) Py_complex _Py_c_sum(Py_complex, Py_complex);
__attribute__ ((visibility ("default"))) Py_complex _Py_c_diff(Py_complex, Py_complex);
__attribute__ ((visibility ("default"))) Py_complex _Py_c_neg(Py_complex);
__attribute__ ((visibility ("default"))) Py_complex _Py_c_prod(Py_complex, Py_complex);
__attribute__ ((visibility ("default"))) Py_complex _Py_c_quot(Py_complex, Py_complex);
__attribute__ ((visibility ("default"))) Py_complex _Py_c_pow(Py_complex, Py_complex);
__attribute__ ((visibility ("default"))) double _Py_c_abs(Py_complex);
typedef struct {
    PyObject ob_base;
    Py_complex cval;
} PyComplexObject;
__attribute__ ((visibility ("default"))) PyObject * PyComplex_FromCComplex(Py_complex);
__attribute__ ((visibility ("default"))) Py_complex PyComplex_AsCComplex(PyObject *op);
/* +++ END "cpython/complexobject.h" /usr/include/python3.13/cpython/complexobject.h */
/* ++ END "complexobject.h" /usr/include/python3.13/complexobject.h */
/* ++ BEGIN "rangeobject.h" /usr/include/python3.13/rangeobject.h */
extern __attribute__ ((visibility ("default"))) PyTypeObject PyRange_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyRangeIter_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyLongRangeIter_Type;
/* ++ END "rangeobject.h" /usr/include/python3.13/rangeobject.h */
/* ++ BEGIN "memoryobject.h" /usr/include/python3.13/memoryobject.h */
extern __attribute__ ((visibility ("default"))) PyTypeObject PyMemoryView_Type;
__attribute__ ((visibility ("default"))) PyObject * PyMemoryView_FromObject(PyObject *base);
__attribute__ ((visibility ("default"))) PyObject * PyMemoryView_FromMemory(char *mem, Py_ssize_t size,
                                               int flags);
__attribute__ ((visibility ("default"))) PyObject * PyMemoryView_FromBuffer(const Py_buffer *info);
__attribute__ ((visibility ("default"))) PyObject * PyMemoryView_GetContiguous(PyObject *base,
                                                  int buffertype,
                                                  char order);
/* +++ BEGIN "cpython/memoryobject.h" /usr/include/python3.13/cpython/memoryobject.h */
typedef struct {
    PyObject ob_base;
    int flags;
    Py_ssize_t exports;
    Py_buffer master;
} _PyManagedBufferObject;
typedef struct {
    PyVarObject ob_base;
    _PyManagedBufferObject *mbuf;
    Py_hash_t hash;
    int flags;
    Py_ssize_t exports;
    Py_buffer view;
    PyObject *weakreflist;
    Py_ssize_t ob_array[1];
} PyMemoryViewObject;
static inline Py_buffer* PyMemoryView_GET_BUFFER(PyObject *op) {
    return (&((PyMemoryViewObject*)(op))->view);
}
static inline PyObject* PyMemoryView_GET_BASE(PyObject *op) {
    return ((PyMemoryViewObject*)(op))->view.obj;
}
/* +++ END "cpython/memoryobject.h" /usr/include/python3.13/cpython/memoryobject.h */
/* ++ END "memoryobject.h" /usr/include/python3.13/memoryobject.h */
/* ++ BEGIN "tupleobject.h" /usr/include/python3.13/tupleobject.h */
extern __attribute__ ((visibility ("default"))) PyTypeObject PyTuple_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyTupleIter_Type;
__attribute__ ((visibility ("default"))) PyObject * PyTuple_New(Py_ssize_t size);
__attribute__ ((visibility ("default"))) Py_ssize_t PyTuple_Size(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyTuple_GetItem(PyObject *, Py_ssize_t);
__attribute__ ((visibility ("default"))) int PyTuple_SetItem(PyObject *, Py_ssize_t, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyTuple_GetSlice(PyObject *, Py_ssize_t, Py_ssize_t);
__attribute__ ((visibility ("default"))) PyObject * PyTuple_Pack(Py_ssize_t, ...);
/* +++ BEGIN "cpython/tupleobject.h" /usr/include/python3.13/cpython/tupleobject.h */
typedef struct {
    PyVarObject ob_base;
    PyObject *ob_item[1];
} PyTupleObject;
__attribute__ ((visibility ("default"))) int _PyTuple_Resize(PyObject **, Py_ssize_t);
static inline Py_ssize_t PyTuple_GET_SIZE(PyObject *op) {
    PyTupleObject *tuple = (
                          ((void) sizeof ((
                          PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 26)))
                          ) ? 1 : 0), __extension__ ({ if (
                          PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 26)))
                          ) ; else __assert_fail (
                          "PyTuple_Check(op)"
                          , "/usr/include/python3.13/cpython/tupleobject.h", 22, __extension__ __PRETTY_FUNCTION__); }))
                          , ((PyTupleObject*)((op))));
    return Py_SIZE(((PyObject*)((tuple))));
}
static inline void
PyTuple_SET_ITEM(PyObject *op, Py_ssize_t index, PyObject *value) {
    PyTupleObject *tuple = (
                          ((void) sizeof ((
                          PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 26)))
                          ) ? 1 : 0), __extension__ ({ if (
                          PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 26)))
                          ) ; else __assert_fail (
                          "PyTuple_Check(op)"
                          , "/usr/include/python3.13/cpython/tupleobject.h", 32, __extension__ __PRETTY_FUNCTION__); }))
                          , ((PyTupleObject*)((op))));
    
   ((void) sizeof ((
   0 <= index
   ) ? 1 : 0), __extension__ ({ if (
   0 <= index
   ) ; else __assert_fail (
   "0 <= index"
   , "/usr/include/python3.13/cpython/tupleobject.h", 33, __extension__ __PRETTY_FUNCTION__); }))
                     ;
    
   ((void) sizeof ((
   index < Py_SIZE(((PyObject*)((tuple))))
   ) ? 1 : 0), __extension__ ({ if (
   index < Py_SIZE(((PyObject*)((tuple))))
   ) ; else __assert_fail (
   "index < Py_SIZE(tuple)"
   , "/usr/include/python3.13/cpython/tupleobject.h", 34, __extension__ __PRETTY_FUNCTION__); }))
                                 ;
    tuple->ob_item[index] = value;
}
/* +++ END "cpython/tupleobject.h" /usr/include/python3.13/cpython/tupleobject.h */
/* ++ END "tupleobject.h" /usr/include/python3.13/tupleobject.h */
/* ++ BEGIN "listobject.h" /usr/include/python3.13/listobject.h */
extern __attribute__ ((visibility ("default"))) PyTypeObject PyList_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyListIter_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyListRevIter_Type;
__attribute__ ((visibility ("default"))) PyObject * PyList_New(Py_ssize_t size);
__attribute__ ((visibility ("default"))) Py_ssize_t PyList_Size(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyList_GetItem(PyObject *, Py_ssize_t);
__attribute__ ((visibility ("default"))) PyObject * PyList_GetItemRef(PyObject *, Py_ssize_t);
__attribute__ ((visibility ("default"))) int PyList_SetItem(PyObject *, Py_ssize_t, PyObject *);
__attribute__ ((visibility ("default"))) int PyList_Insert(PyObject *, Py_ssize_t, PyObject *);
__attribute__ ((visibility ("default"))) int PyList_Append(PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyList_GetSlice(PyObject *, Py_ssize_t, Py_ssize_t);
__attribute__ ((visibility ("default"))) int PyList_SetSlice(PyObject *, Py_ssize_t, Py_ssize_t, PyObject *);
__attribute__ ((visibility ("default"))) int PyList_Sort(PyObject *);
__attribute__ ((visibility ("default"))) int PyList_Reverse(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyList_AsTuple(PyObject *);
/* +++ BEGIN "cpython/listobject.h" /usr/include/python3.13/cpython/listobject.h */
typedef struct {
    PyVarObject ob_base;
    PyObject **ob_item;
    Py_ssize_t allocated;
} PyListObject;
static inline Py_ssize_t PyList_GET_SIZE(PyObject *op) {
    PyListObject *list = (
                        ((void) sizeof ((
                        PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 25)))
                        ) ? 1 : 0), __extension__ ({ if (
                        PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 25)))
                        ) ; else __assert_fail (
                        "PyList_Check(op)"
                        , "/usr/include/python3.13/cpython/listobject.h", 31, __extension__ __PRETTY_FUNCTION__); }))
                        , ((PyListObject*)((op))));
    return Py_SIZE(((PyObject*)((list))));
}
static inline void
PyList_SET_ITEM(PyObject *op, Py_ssize_t index, PyObject *value) {
    PyListObject *list = (
                        ((void) sizeof ((
                        PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 25)))
                        ) ? 1 : 0), __extension__ ({ if (
                        PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 25)))
                        ) ; else __assert_fail (
                        "PyList_Check(op)"
                        , "/usr/include/python3.13/cpython/listobject.h", 44, __extension__ __PRETTY_FUNCTION__); }))
                        , ((PyListObject*)((op))));
    
   ((void) sizeof ((
   0 <= index
   ) ? 1 : 0), __extension__ ({ if (
   0 <= index
   ) ; else __assert_fail (
   "0 <= index"
   , "/usr/include/python3.13/cpython/listobject.h", 45, __extension__ __PRETTY_FUNCTION__); }))
                     ;
    
   ((void) sizeof ((
   index < list->allocated
   ) ? 1 : 0), __extension__ ({ if (
   index < list->allocated
   ) ; else __assert_fail (
   "index < list->allocated"
   , "/usr/include/python3.13/cpython/listobject.h", 46, __extension__ __PRETTY_FUNCTION__); }))
                                  ;
    list->ob_item[index] = value;
}
__attribute__ ((visibility ("default"))) int PyList_Extend(PyObject *self, PyObject *iterable);
__attribute__ ((visibility ("default"))) int PyList_Clear(PyObject *self);
/* +++ END "cpython/listobject.h" /usr/include/python3.13/cpython/listobject.h */
/* ++ END "listobject.h" /usr/include/python3.13/listobject.h */
/* ++ BEGIN "dictobject.h" /usr/include/python3.13/dictobject.h */
extern __attribute__ ((visibility ("default"))) PyTypeObject PyDict_Type;
__attribute__ ((visibility ("default"))) PyObject * PyDict_New(void);
__attribute__ ((visibility ("default"))) PyObject * PyDict_GetItem(PyObject *mp, PyObject *key);
__attribute__ ((visibility ("default"))) PyObject * PyDict_GetItemWithError(PyObject *mp, PyObject *key);
__attribute__ ((visibility ("default"))) int PyDict_SetItem(PyObject *mp, PyObject *key, PyObject *item);
__attribute__ ((visibility ("default"))) int PyDict_DelItem(PyObject *mp, PyObject *key);
__attribute__ ((visibility ("default"))) void PyDict_Clear(PyObject *mp);
__attribute__ ((visibility ("default"))) int PyDict_Next(
    PyObject *mp, Py_ssize_t *pos, PyObject **key, PyObject **value);
__attribute__ ((visibility ("default"))) PyObject * PyDict_Keys(PyObject *mp);
__attribute__ ((visibility ("default"))) PyObject * PyDict_Values(PyObject *mp);
__attribute__ ((visibility ("default"))) PyObject * PyDict_Items(PyObject *mp);
__attribute__ ((visibility ("default"))) Py_ssize_t PyDict_Size(PyObject *mp);
__attribute__ ((visibility ("default"))) PyObject * PyDict_Copy(PyObject *mp);
__attribute__ ((visibility ("default"))) int PyDict_Contains(PyObject *mp, PyObject *key);
__attribute__ ((visibility ("default"))) int PyDict_Update(PyObject *mp, PyObject *other);
__attribute__ ((visibility ("default"))) int PyDict_Merge(PyObject *mp,
                             PyObject *other,
                             int override);
__attribute__ ((visibility ("default"))) int PyDict_MergeFromSeq2(PyObject *d,
                                     PyObject *seq2,
                                     int override);
__attribute__ ((visibility ("default"))) PyObject * PyDict_GetItemString(PyObject *dp, const char *key);
__attribute__ ((visibility ("default"))) int PyDict_SetItemString(PyObject *dp, const char *key, PyObject *item);
__attribute__ ((visibility ("default"))) int PyDict_DelItemString(PyObject *dp, const char *key);
__attribute__ ((visibility ("default"))) int PyDict_GetItemRef(PyObject *mp, PyObject *key, PyObject **result);
__attribute__ ((visibility ("default"))) int PyDict_GetItemStringRef(PyObject *mp, const char *key, PyObject **result);
__attribute__ ((visibility ("default"))) PyObject * PyObject_GenericGetDict(PyObject *, void *);
extern __attribute__ ((visibility ("default"))) PyTypeObject PyDictKeys_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyDictValues_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyDictItems_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyDictIterKey_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyDictIterValue_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyDictIterItem_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyDictRevIterKey_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyDictRevIterItem_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyDictRevIterValue_Type;
/* +++ BEGIN "cpython/dictobject.h" /usr/include/python3.13/cpython/dictobject.h */
typedef struct _dictkeysobject PyDictKeysObject;
typedef struct _dictvalues PyDictValues;
typedef struct {
    PyObject ob_base;
    Py_ssize_t ma_used;
    __attribute__((__deprecated__)) uint64_t ma_version_tag;
    PyDictKeysObject *ma_keys;
    PyDictValues *ma_values;
} PyDictObject;
__attribute__ ((visibility ("default"))) PyObject * _PyDict_GetItem_KnownHash(PyObject *mp, PyObject *key,
                                                 Py_hash_t hash);
__attribute__ ((visibility ("default"))) PyObject * _PyDict_GetItemStringWithError(PyObject *, const char *);
__attribute__ ((visibility ("default"))) PyObject * PyDict_SetDefault(
    PyObject *mp, PyObject *key, PyObject *defaultobj);
__attribute__ ((visibility ("default"))) int PyDict_SetDefaultRef(PyObject *mp, PyObject *key, PyObject *default_value, PyObject **result);
static inline Py_ssize_t PyDict_GET_SIZE(PyObject *op) {
    PyDictObject *mp;
    
   ((void) sizeof ((
   PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 29)))
   ) ? 1 : 0), __extension__ ({ if (
   PyType_HasFeature((Py_TYPE(((PyObject*)((op))))), ((1UL << 29)))
   ) ; else __assert_fail (
   "PyDict_Check(op)"
   , "/usr/include/python3.13/cpython/dictobject.h", 57, __extension__ __PRETTY_FUNCTION__); }))
                           ;
    mp = ((PyDictObject*)(op));
    return mp->ma_used;
}
__attribute__ ((visibility ("default"))) int PyDict_ContainsString(PyObject *mp, const char *key);
__attribute__ ((visibility ("default"))) PyObject * _PyDict_NewPresized(Py_ssize_t minused);
__attribute__ ((visibility ("default"))) int PyDict_Pop(PyObject *dict, PyObject *key, PyObject **result);
__attribute__ ((visibility ("default"))) int PyDict_PopString(PyObject *dict, const char *key, PyObject **result);
__attribute__ ((visibility ("default"))) PyObject * _PyDict_Pop(PyObject *dict, PyObject *key, PyObject *default_value);
typedef enum {
    PyDict_EVENT_ADDED, PyDict_EVENT_MODIFIED, PyDict_EVENT_DELETED, PyDict_EVENT_CLONED, PyDict_EVENT_CLEARED, PyDict_EVENT_DEALLOCATED,
} PyDict_WatchEvent;
typedef int(*PyDict_WatchCallback)(PyDict_WatchEvent event, PyObject* dict, PyObject* key, PyObject* new_value);
__attribute__ ((visibility ("default"))) int PyDict_AddWatcher(PyDict_WatchCallback callback);
__attribute__ ((visibility ("default"))) int PyDict_ClearWatcher(int watcher_id);
__attribute__ ((visibility ("default"))) int PyDict_Watch(int watcher_id, PyObject* dict);
__attribute__ ((visibility ("default"))) int PyDict_Unwatch(int watcher_id, PyObject* dict);
/* +++ END "cpython/dictobject.h" /usr/include/python3.13/cpython/dictobject.h */
/* ++ END "dictobject.h" /usr/include/python3.13/dictobject.h */
/* ++ BEGIN "cpython/odictobject.h" /usr/include/python3.13/cpython/odictobject.h */
typedef struct _odictobject PyODictObject;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyODict_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyODictIter_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyODictKeys_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyODictItems_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyODictValues_Type;
__attribute__ ((visibility ("default"))) PyObject * PyODict_New(void);
__attribute__ ((visibility ("default"))) int PyODict_SetItem(PyObject *od, PyObject *key, PyObject *item);
__attribute__ ((visibility ("default"))) int PyODict_DelItem(PyObject *od, PyObject *key);
/* ++ END "cpython/odictobject.h" /usr/include/python3.13/cpython/odictobject.h */
/* ++ BEGIN "enumobject.h" /usr/include/python3.13/enumobject.h */
extern __attribute__ ((visibility ("default"))) PyTypeObject PyEnum_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyReversed_Type;
/* ++ END "enumobject.h" /usr/include/python3.13/enumobject.h */
/* ++ BEGIN "setobject.h" /usr/include/python3.13/setobject.h */
extern __attribute__ ((visibility ("default"))) PyTypeObject PySet_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyFrozenSet_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PySetIter_Type;
__attribute__ ((visibility ("default"))) PyObject * PySet_New(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyFrozenSet_New(PyObject *);
__attribute__ ((visibility ("default"))) int PySet_Add(PyObject *set, PyObject *key);
__attribute__ ((visibility ("default"))) int PySet_Clear(PyObject *set);
__attribute__ ((visibility ("default"))) int PySet_Contains(PyObject *anyset, PyObject *key);
__attribute__ ((visibility ("default"))) int PySet_Discard(PyObject *set, PyObject *key);
__attribute__ ((visibility ("default"))) PyObject * PySet_Pop(PyObject *set);
__attribute__ ((visibility ("default"))) Py_ssize_t PySet_Size(PyObject *anyset);
/* +++ BEGIN "cpython/setobject.h" /usr/include/python3.13/cpython/setobject.h */
typedef struct {
    PyObject *key;
    Py_hash_t hash;
} setentry;
typedef struct {
    PyObject ob_base;
    Py_ssize_t fill;
    Py_ssize_t used;
    Py_ssize_t mask;
    setentry *table;
    Py_hash_t hash;
    Py_ssize_t finger;
    setentry smalltable[8];
    PyObject *weakreflist;
} PySetObject;
static inline Py_ssize_t PySet_GET_SIZE(PyObject *so) {
    return (
          ((void) sizeof ((
          (Py_IS_TYPE(((PyObject*)(((so)))), (&PySet_Type)) || Py_IS_TYPE(((PyObject*)(((so)))), (&PyFrozenSet_Type)) || PyType_IsSubtype(Py_TYPE(((PyObject*)((so)))), &PySet_Type) || PyType_IsSubtype(Py_TYPE(((PyObject*)((so)))), &PyFrozenSet_Type))
          ) ? 1 : 0), __extension__ ({ if (
          (Py_IS_TYPE(((PyObject*)(((so)))), (&PySet_Type)) || Py_IS_TYPE(((PyObject*)(((so)))), (&PyFrozenSet_Type)) || PyType_IsSubtype(Py_TYPE(((PyObject*)((so)))), &PySet_Type) || PyType_IsSubtype(Py_TYPE(((PyObject*)((so)))), &PyFrozenSet_Type))
          ) ; else __assert_fail (
          "PyAnySet_Check(so)"
          , "/usr/include/python3.13/cpython/setobject.h", 68, __extension__ __PRETTY_FUNCTION__); }))
          , ((PySetObject*)(so)))->used;
}
/* +++ END "cpython/setobject.h" /usr/include/python3.13/cpython/setobject.h */
/* ++ END "setobject.h" /usr/include/python3.13/setobject.h */
/* ++ BEGIN "methodobject.h" /usr/include/python3.13/methodobject.h */
extern __attribute__ ((visibility ("default"))) PyTypeObject PyCFunction_Type;
typedef PyObject *(*PyCFunction)(PyObject *, PyObject *);
typedef PyObject *(*PyCFunctionFast) (PyObject *, PyObject *const *, Py_ssize_t);
typedef PyObject *(*PyCFunctionWithKeywords)(PyObject *, PyObject *,
                                             PyObject *);
typedef PyObject *(*PyCFunctionFastWithKeywords) (PyObject *,
                                                  PyObject *const *, Py_ssize_t,
                                                  PyObject *);
typedef PyObject *(*PyCMethod)(PyObject *, PyTypeObject *, PyObject *const *,
                               size_t, PyObject *);
typedef PyCFunctionFast _PyCFunctionFast;
typedef PyCFunctionFastWithKeywords _PyCFunctionFastWithKeywords;
__attribute__ ((visibility ("default"))) PyCFunction PyCFunction_GetFunction(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyCFunction_GetSelf(PyObject *);
__attribute__ ((visibility ("default"))) int PyCFunction_GetFlags(PyObject *);
struct PyMethodDef {
    const char *ml_name;
    PyCFunction ml_meth;
    int ml_flags;
    const char *ml_doc;
};
__attribute__ ((visibility ("default"))) PyObject * PyCFunction_New(PyMethodDef *, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyCFunction_NewEx(PyMethodDef *, PyObject *,
                                         PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyCMethod_New(PyMethodDef *, PyObject *,
                                     PyObject *, PyTypeObject *);
/* +++ BEGIN "cpython/methodobject.h" /usr/include/python3.13/cpython/methodobject.h */
typedef struct {
    PyObject ob_base;
    PyMethodDef *m_ml;
    PyObject *m_self;
    PyObject *m_module;
    PyObject *m_weakreflist;
    vectorcallfunc vectorcall;
} PyCFunctionObject;
typedef struct {
    PyCFunctionObject func;
    PyTypeObject *mm_class;
} PyCMethodObject;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyCMethod_Type;
static inline PyCFunction PyCFunction_GET_FUNCTION(PyObject *func) {
    return (
          ((void) sizeof ((
          PyObject_TypeCheck(((PyObject*)(((func)))), (&PyCFunction_Type))
          ) ? 1 : 0), __extension__ ({ if (
          PyObject_TypeCheck(((PyObject*)(((func)))), (&PyCFunction_Type))
          ) ; else __assert_fail (
          "PyCFunction_Check(func)"
          , "/usr/include/python3.13/cpython/methodobject.h", 41, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyCFunctionObject*)((func))))->m_ml->ml_meth;
}
static inline PyObject* PyCFunction_GET_SELF(PyObject *func_obj) {
    PyCFunctionObject *func = (
                             ((void) sizeof ((
                             PyObject_TypeCheck(((PyObject*)(((func_obj)))), (&PyCFunction_Type))
                             ) ? 1 : 0), __extension__ ({ if (
                             PyObject_TypeCheck(((PyObject*)(((func_obj)))), (&PyCFunction_Type))
                             ) ; else __assert_fail (
                             "PyCFunction_Check(func_obj)"
                             , "/usr/include/python3.13/cpython/methodobject.h", 46, __extension__ __PRETTY_FUNCTION__); }))
                             , ((PyCFunctionObject*)((func_obj))));
    if (func->m_ml->ml_flags & 0x0020) {
        return 
              ((void *)0)
                      ;
    }
    return func->m_self;
}
static inline int PyCFunction_GET_FLAGS(PyObject *func) {
    return (
          ((void) sizeof ((
          PyObject_TypeCheck(((PyObject*)(((func)))), (&PyCFunction_Type))
          ) ? 1 : 0), __extension__ ({ if (
          PyObject_TypeCheck(((PyObject*)(((func)))), (&PyCFunction_Type))
          ) ; else __assert_fail (
          "PyCFunction_Check(func)"
          , "/usr/include/python3.13/cpython/methodobject.h", 55, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyCFunctionObject*)((func))))->m_ml->ml_flags;
}
static inline PyTypeObject* PyCFunction_GET_CLASS(PyObject *func_obj) {
    PyCFunctionObject *func = (
                             ((void) sizeof ((
                             PyObject_TypeCheck(((PyObject*)(((func_obj)))), (&PyCFunction_Type))
                             ) ? 1 : 0), __extension__ ({ if (
                             PyObject_TypeCheck(((PyObject*)(((func_obj)))), (&PyCFunction_Type))
                             ) ; else __assert_fail (
                             "PyCFunction_Check(func_obj)"
                             , "/usr/include/python3.13/cpython/methodobject.h", 60, __extension__ __PRETTY_FUNCTION__); }))
                             , ((PyCFunctionObject*)((func_obj))));
    if (func->m_ml->ml_flags & 0x0200) {
        return (
              ((void) sizeof ((
              PyObject_TypeCheck(((PyObject*)(((func)))), (&PyCMethod_Type))
              ) ? 1 : 0), __extension__ ({ if (
              PyObject_TypeCheck(((PyObject*)(((func)))), (&PyCMethod_Type))
              ) ; else __assert_fail (
              "PyCMethod_Check(func)"
              , "/usr/include/python3.13/cpython/methodobject.h", 62, __extension__ __PRETTY_FUNCTION__); }))
              , ((PyCMethodObject*)((func))))->mm_class;
    }
    return 
          ((void *)0)
                  ;
}
/* +++ END "cpython/methodobject.h" /usr/include/python3.13/cpython/methodobject.h */
/* ++ END "methodobject.h" /usr/include/python3.13/methodobject.h */
/* ++ BEGIN "moduleobject.h" /usr/include/python3.13/moduleobject.h */
extern __attribute__ ((visibility ("default"))) PyTypeObject PyModule_Type;
__attribute__ ((visibility ("default"))) PyObject * PyModule_NewObject(
    PyObject *name
    );
__attribute__ ((visibility ("default"))) PyObject * PyModule_New(
    const char *name
    );
__attribute__ ((visibility ("default"))) PyObject * PyModule_GetDict(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyModule_GetNameObject(PyObject *);
__attribute__ ((visibility ("default"))) const char * PyModule_GetName(PyObject *);
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) const char * PyModule_GetFilename(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyModule_GetFilenameObject(PyObject *);
__attribute__ ((visibility ("default"))) PyModuleDef* PyModule_GetDef(PyObject*);
__attribute__ ((visibility ("default"))) void* PyModule_GetState(PyObject*);
__attribute__ ((visibility ("default"))) PyObject * PyModuleDef_Init(PyModuleDef*);
extern __attribute__ ((visibility ("default"))) PyTypeObject PyModuleDef_Type;
typedef struct PyModuleDef_Base {
  PyObject ob_base;
  PyObject* (*m_init)(void);
  Py_ssize_t m_index;
  PyObject* m_copy;
} PyModuleDef_Base;
struct PyModuleDef_Slot {
    int slot;
    void *value;
};
struct PyModuleDef {
  PyModuleDef_Base m_base;
  const char* m_name;
  const char* m_doc;
  Py_ssize_t m_size;
  PyMethodDef *m_methods;
  PyModuleDef_Slot *m_slots;
  traverseproc m_traverse;
  inquiry m_clear;
  freefunc m_free;
};
/* ++ END "moduleobject.h" /usr/include/python3.13/moduleobject.h */
/* ++ BEGIN "monitoring.h" /usr/include/python3.13/monitoring.h */
/* +++ BEGIN "cpython/monitoring.h" /usr/include/python3.13/cpython/monitoring.h */
typedef struct _PyMonitoringState {
    uint8_t active;
    uint8_t opaque;
} PyMonitoringState;
__attribute__ ((visibility ("default"))) int
PyMonitoring_EnterScope(PyMonitoringState *state_array, uint64_t *version,
                         const uint8_t *event_types, Py_ssize_t length);
__attribute__ ((visibility ("default"))) int
PyMonitoring_ExitScope(void);
__attribute__ ((visibility ("default"))) int
_PyMonitoring_FirePyStartEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset);
__attribute__ ((visibility ("default"))) int
_PyMonitoring_FirePyResumeEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset);
__attribute__ ((visibility ("default"))) int
_PyMonitoring_FirePyReturnEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset,
                                PyObject *retval);
__attribute__ ((visibility ("default"))) int
_PyMonitoring_FirePyYieldEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset,
                               PyObject *retval);
__attribute__ ((visibility ("default"))) int
_PyMonitoring_FireCallEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset,
                            PyObject* callable, PyObject *arg0);
__attribute__ ((visibility ("default"))) int
_PyMonitoring_FireLineEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset,
                            int lineno);
__attribute__ ((visibility ("default"))) int
_PyMonitoring_FireJumpEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset,
                            PyObject *target_offset);
__attribute__ ((visibility ("default"))) int
_PyMonitoring_FireBranchEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset,
                              PyObject *target_offset);
__attribute__ ((visibility ("default"))) int
_PyMonitoring_FireCReturnEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset,
                               PyObject *retval);
__attribute__ ((visibility ("default"))) int
_PyMonitoring_FirePyThrowEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset);
__attribute__ ((visibility ("default"))) int
_PyMonitoring_FireRaiseEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset);
__attribute__ ((visibility ("default"))) int
_PyMonitoring_FireReraiseEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset);
__attribute__ ((visibility ("default"))) int
_PyMonitoring_FireExceptionHandledEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset);
__attribute__ ((visibility ("default"))) int
_PyMonitoring_FireCRaiseEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset);
__attribute__ ((visibility ("default"))) int
_PyMonitoring_FirePyUnwindEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset);
__attribute__ ((visibility ("default"))) int
_PyMonitoring_FireStopIterationEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset, PyObject *value);
static inline int
PyMonitoring_FirePyStartEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset)
{
    if ((state)->active) { return (_PyMonitoring_FirePyStartEvent(state, codelike, offset)); } else { return 0; }
                                                                ;
}
static inline int
PyMonitoring_FirePyResumeEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset)
{
    if ((state)->active) { return (_PyMonitoring_FirePyResumeEvent(state, codelike, offset)); } else { return 0; }
                                                                 ;
}
static inline int
PyMonitoring_FirePyReturnEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset,
                               PyObject *retval)
{
    if ((state)->active) { return (_PyMonitoring_FirePyReturnEvent(state, codelike, offset, retval)); } else { return 0; }
                                                                         ;
}
static inline int
PyMonitoring_FirePyYieldEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset,
                              PyObject *retval)
{
    if ((state)->active) { return (_PyMonitoring_FirePyYieldEvent(state, codelike, offset, retval)); } else { return 0; }
                                                                        ;
}
static inline int
PyMonitoring_FireCallEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset,
                           PyObject* callable, PyObject *arg0)
{
    if ((state)->active) { return (_PyMonitoring_FireCallEvent(state, codelike, offset, callable, arg0)); } else { return 0; }
                                                                             ;
}
static inline int
PyMonitoring_FireLineEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset,
                           int lineno)
{
    if ((state)->active) { return (_PyMonitoring_FireLineEvent(state, codelike, offset, lineno)); } else { return 0; }
                                                                     ;
}
static inline int
PyMonitoring_FireJumpEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset,
                           PyObject *target_offset)
{
    if ((state)->active) { return (_PyMonitoring_FireJumpEvent(state, codelike, offset, target_offset)); } else { return 0; }
                                                                            ;
}
static inline int
PyMonitoring_FireBranchEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset,
                             PyObject *target_offset)
{
    if ((state)->active) { return (_PyMonitoring_FireBranchEvent(state, codelike, offset, target_offset)); } else { return 0; }
                                                                              ;
}
static inline int
PyMonitoring_FireCReturnEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset,
                              PyObject *retval)
{
    if ((state)->active) { return (_PyMonitoring_FireCReturnEvent(state, codelike, offset, retval)); } else { return 0; }
                                                                        ;
}
static inline int
PyMonitoring_FirePyThrowEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset)
{
    if ((state)->active) { return (_PyMonitoring_FirePyThrowEvent(state, codelike, offset)); } else { return 0; }
                                                                ;
}
static inline int
PyMonitoring_FireRaiseEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset)
{
    if ((state)->active) { return (_PyMonitoring_FireRaiseEvent(state, codelike, offset)); } else { return 0; }
                                                              ;
}
static inline int
PyMonitoring_FireReraiseEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset)
{
    if ((state)->active) { return (_PyMonitoring_FireReraiseEvent(state, codelike, offset)); } else { return 0; }
                                                                ;
}
static inline int
PyMonitoring_FireExceptionHandledEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset)
{
    if ((state)->active) { return (_PyMonitoring_FireExceptionHandledEvent(state, codelike, offset)); } else { return 0; }
                                                                         ;
}
static inline int
PyMonitoring_FireCRaiseEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset)
{
    if ((state)->active) { return (_PyMonitoring_FireCRaiseEvent(state, codelike, offset)); } else { return 0; }
                                                               ;
}
static inline int
PyMonitoring_FirePyUnwindEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset)
{
    if ((state)->active) { return (_PyMonitoring_FirePyUnwindEvent(state, codelike, offset)); } else { return 0; }
                                                                 ;
}
static inline int
PyMonitoring_FireStopIterationEvent(PyMonitoringState *state, PyObject *codelike, int32_t offset, PyObject *value)
{
    if ((state)->active) { return (_PyMonitoring_FireStopIterationEvent(state, codelike, offset, value)); } else { return 0; }
                                                                             ;
}
/* +++ END "cpython/monitoring.h" /usr/include/python3.13/cpython/monitoring.h */
/* ++ END "monitoring.h" /usr/include/python3.13/monitoring.h */
/* ++ BEGIN "cpython/funcobject.h" /usr/include/python3.13/cpython/funcobject.h */
typedef struct {
    PyObject *fc_globals; PyObject *fc_builtins; PyObject *fc_name; PyObject *fc_qualname; PyObject *fc_code; PyObject *fc_defaults; PyObject *fc_kwdefaults; PyObject *fc_closure;
} PyFrameConstructor;
typedef struct {
    PyObject ob_base;
    PyObject *func_globals; PyObject *func_builtins; PyObject *func_name; PyObject *func_qualname; PyObject *func_code; PyObject *func_defaults; PyObject *func_kwdefaults; PyObject *func_closure;
    PyObject *func_doc;
    PyObject *func_dict;
    PyObject *func_weakreflist;
    PyObject *func_module;
    PyObject *func_annotations;
    PyObject *func_typeparams;
    vectorcallfunc vectorcall;
    uint32_t func_version;
} PyFunctionObject;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyFunction_Type;
__attribute__ ((visibility ("default"))) PyObject * PyFunction_New(PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyFunction_NewWithQualName(PyObject *, PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyFunction_GetCode(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyFunction_GetGlobals(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyFunction_GetModule(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyFunction_GetDefaults(PyObject *);
__attribute__ ((visibility ("default"))) int PyFunction_SetDefaults(PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) void PyFunction_SetVectorcall(PyFunctionObject *, vectorcallfunc);
__attribute__ ((visibility ("default"))) PyObject * PyFunction_GetKwDefaults(PyObject *);
__attribute__ ((visibility ("default"))) int PyFunction_SetKwDefaults(PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyFunction_GetClosure(PyObject *);
__attribute__ ((visibility ("default"))) int PyFunction_SetClosure(PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyFunction_GetAnnotations(PyObject *);
__attribute__ ((visibility ("default"))) int PyFunction_SetAnnotations(PyObject *, PyObject *);
static inline PyObject* PyFunction_GET_CODE(PyObject *func) {
    return (
          ((void) sizeof ((
          Py_IS_TYPE(((PyObject*)(((func)))), (&PyFunction_Type))
          ) ? 1 : 0), __extension__ ({ if (
          Py_IS_TYPE(((PyObject*)(((func)))), (&PyFunction_Type))
          ) ; else __assert_fail (
          "PyFunction_Check(func)"
          , "/usr/include/python3.13/cpython/funcobject.h", 90, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyFunctionObject*)(func)))->func_code;
}
static inline PyObject* PyFunction_GET_GLOBALS(PyObject *func) {
    return (
          ((void) sizeof ((
          Py_IS_TYPE(((PyObject*)(((func)))), (&PyFunction_Type))
          ) ? 1 : 0), __extension__ ({ if (
          Py_IS_TYPE(((PyObject*)(((func)))), (&PyFunction_Type))
          ) ; else __assert_fail (
          "PyFunction_Check(func)"
          , "/usr/include/python3.13/cpython/funcobject.h", 95, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyFunctionObject*)(func)))->func_globals;
}
static inline PyObject* PyFunction_GET_MODULE(PyObject *func) {
    return (
          ((void) sizeof ((
          Py_IS_TYPE(((PyObject*)(((func)))), (&PyFunction_Type))
          ) ? 1 : 0), __extension__ ({ if (
          Py_IS_TYPE(((PyObject*)(((func)))), (&PyFunction_Type))
          ) ; else __assert_fail (
          "PyFunction_Check(func)"
          , "/usr/include/python3.13/cpython/funcobject.h", 100, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyFunctionObject*)(func)))->func_module;
}
static inline PyObject* PyFunction_GET_DEFAULTS(PyObject *func) {
    return (
          ((void) sizeof ((
          Py_IS_TYPE(((PyObject*)(((func)))), (&PyFunction_Type))
          ) ? 1 : 0), __extension__ ({ if (
          Py_IS_TYPE(((PyObject*)(((func)))), (&PyFunction_Type))
          ) ; else __assert_fail (
          "PyFunction_Check(func)"
          , "/usr/include/python3.13/cpython/funcobject.h", 105, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyFunctionObject*)(func)))->func_defaults;
}
static inline PyObject* PyFunction_GET_KW_DEFAULTS(PyObject *func) {
    return (
          ((void) sizeof ((
          Py_IS_TYPE(((PyObject*)(((func)))), (&PyFunction_Type))
          ) ? 1 : 0), __extension__ ({ if (
          Py_IS_TYPE(((PyObject*)(((func)))), (&PyFunction_Type))
          ) ; else __assert_fail (
          "PyFunction_Check(func)"
          , "/usr/include/python3.13/cpython/funcobject.h", 110, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyFunctionObject*)(func)))->func_kwdefaults;
}
static inline PyObject* PyFunction_GET_CLOSURE(PyObject *func) {
    return (
          ((void) sizeof ((
          Py_IS_TYPE(((PyObject*)(((func)))), (&PyFunction_Type))
          ) ? 1 : 0), __extension__ ({ if (
          Py_IS_TYPE(((PyObject*)(((func)))), (&PyFunction_Type))
          ) ; else __assert_fail (
          "PyFunction_Check(func)"
          , "/usr/include/python3.13/cpython/funcobject.h", 115, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyFunctionObject*)(func)))->func_closure;
}
static inline PyObject* PyFunction_GET_ANNOTATIONS(PyObject *func) {
    return (
          ((void) sizeof ((
          Py_IS_TYPE(((PyObject*)(((func)))), (&PyFunction_Type))
          ) ? 1 : 0), __extension__ ({ if (
          Py_IS_TYPE(((PyObject*)(((func)))), (&PyFunction_Type))
          ) ; else __assert_fail (
          "PyFunction_Check(func)"
          , "/usr/include/python3.13/cpython/funcobject.h", 120, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyFunctionObject*)(func)))->func_annotations;
}
extern __attribute__ ((visibility ("default"))) PyTypeObject PyClassMethod_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyStaticMethod_Type;
__attribute__ ((visibility ("default"))) PyObject * PyClassMethod_New(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyStaticMethod_New(PyObject *);
typedef enum {
    PyFunction_EVENT_CREATE, PyFunction_EVENT_DESTROY, PyFunction_EVENT_MODIFY_CODE, PyFunction_EVENT_MODIFY_DEFAULTS, PyFunction_EVENT_MODIFY_KWDEFAULTS,
} PyFunction_WatchEvent;
typedef int (*PyFunction_WatchCallback)(
  PyFunction_WatchEvent event,
  PyFunctionObject *func,
  PyObject *new_value);
__attribute__ ((visibility ("default"))) int PyFunction_AddWatcher(PyFunction_WatchCallback callback);
__attribute__ ((visibility ("default"))) int PyFunction_ClearWatcher(int watcher_id);
/* ++ END "cpython/funcobject.h" /usr/include/python3.13/cpython/funcobject.h */
/* ++ BEGIN "cpython/classobject.h" /usr/include/python3.13/cpython/classobject.h */
typedef struct {
    PyObject ob_base;
    PyObject *im_func;
    PyObject *im_self;
    PyObject *im_weakreflist;
    vectorcallfunc vectorcall;
} PyMethodObject;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyMethod_Type;
__attribute__ ((visibility ("default"))) PyObject * PyMethod_New(PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyMethod_Function(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyMethod_Self(PyObject *);
static inline PyObject* PyMethod_GET_FUNCTION(PyObject *meth) {
    return (
          ((void) sizeof ((
          Py_IS_TYPE(((PyObject*)(((meth)))), (&PyMethod_Type))
          ) ? 1 : 0), __extension__ ({ if (
          Py_IS_TYPE(((PyObject*)(((meth)))), (&PyMethod_Type))
          ) ; else __assert_fail (
          "PyMethod_Check(meth)"
          , "/usr/include/python3.13/cpython/classobject.h", 35, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyMethodObject*)(meth)))->im_func;
}
static inline PyObject* PyMethod_GET_SELF(PyObject *meth) {
    return (
          ((void) sizeof ((
          Py_IS_TYPE(((PyObject*)(((meth)))), (&PyMethod_Type))
          ) ? 1 : 0), __extension__ ({ if (
          Py_IS_TYPE(((PyObject*)(((meth)))), (&PyMethod_Type))
          ) ; else __assert_fail (
          "PyMethod_Check(meth)"
          , "/usr/include/python3.13/cpython/classobject.h", 40, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyMethodObject*)(meth)))->im_self;
}
typedef struct {
    PyObject ob_base;
    PyObject *func;
} PyInstanceMethodObject;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyInstanceMethod_Type;
__attribute__ ((visibility ("default"))) PyObject * PyInstanceMethod_New(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyInstanceMethod_Function(PyObject *);
static inline PyObject* PyInstanceMethod_GET_FUNCTION(PyObject *meth) {
    return (
          ((void) sizeof ((
          Py_IS_TYPE(((PyObject*)(((meth)))), (&PyInstanceMethod_Type))
          ) ? 1 : 0), __extension__ ({ if (
          Py_IS_TYPE(((PyObject*)(((meth)))), (&PyInstanceMethod_Type))
          ) ; else __assert_fail (
          "PyInstanceMethod_Check(meth)"
          , "/usr/include/python3.13/cpython/classobject.h", 63, __extension__ __PRETTY_FUNCTION__); }))
          , ((PyInstanceMethodObject*)(meth)))->func;
}
/* ++ END "cpython/classobject.h" /usr/include/python3.13/cpython/classobject.h */
/* ++ BEGIN "fileobject.h" /usr/include/python3.13/fileobject.h */
__attribute__ ((visibility ("default"))) PyObject * PyFile_FromFd(int, const char *, const char *, int,
                                     const char *, const char *,
                                     const char *, int);
__attribute__ ((visibility ("default"))) PyObject * PyFile_GetLine(PyObject *, int);
__attribute__ ((visibility ("default"))) int PyFile_WriteObject(PyObject *, PyObject *, int);
__attribute__ ((visibility ("default"))) int PyFile_WriteString(const char *, PyObject *);
__attribute__ ((visibility ("default"))) int PyObject_AsFileDescriptor(PyObject *);
__attribute__((__deprecated__)) extern __attribute__ ((visibility ("default"))) const char * Py_FileSystemDefaultEncoding;
__attribute__((__deprecated__)) extern __attribute__ ((visibility ("default"))) const char * Py_FileSystemDefaultEncodeErrors;
__attribute__((__deprecated__)) extern __attribute__ ((visibility ("default"))) int Py_HasFileSystemDefaultEncoding;
__attribute__((__deprecated__)) extern __attribute__ ((visibility ("default"))) int Py_UTF8Mode;
/* +++ BEGIN "cpython/fileobject.h" /usr/include/python3.13/cpython/fileobject.h */
__attribute__ ((visibility ("default"))) char * Py_UniversalNewlineFgets(char *, int, FILE*, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyFile_NewStdPrinter(int);
extern __attribute__ ((visibility ("default"))) PyTypeObject PyStdPrinter_Type;
typedef PyObject * (*Py_OpenCodeHookFunction)(PyObject *, void *);
__attribute__ ((visibility ("default"))) PyObject * PyFile_OpenCode(const char *utf8path);
__attribute__ ((visibility ("default"))) PyObject * PyFile_OpenCodeObject(PyObject *path);
__attribute__ ((visibility ("default"))) int PyFile_SetOpenCodeHook(Py_OpenCodeHookFunction hook, void *userData);
/* +++ END "cpython/fileobject.h" /usr/include/python3.13/cpython/fileobject.h */
/* ++ END "fileobject.h" /usr/include/python3.13/fileobject.h */
/* ++ BEGIN "pycapsule.h" /usr/include/python3.13/pycapsule.h */
extern __attribute__ ((visibility ("default"))) PyTypeObject PyCapsule_Type;
typedef void (*PyCapsule_Destructor)(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyCapsule_New(
    void *pointer,
    const char *name,
    PyCapsule_Destructor destructor);
__attribute__ ((visibility ("default"))) void * PyCapsule_GetPointer(PyObject *capsule, const char *name);
__attribute__ ((visibility ("default"))) PyCapsule_Destructor PyCapsule_GetDestructor(PyObject *capsule);
__attribute__ ((visibility ("default"))) const char * PyCapsule_GetName(PyObject *capsule);
__attribute__ ((visibility ("default"))) void * PyCapsule_GetContext(PyObject *capsule);
__attribute__ ((visibility ("default"))) int PyCapsule_IsValid(PyObject *capsule, const char *name);
__attribute__ ((visibility ("default"))) int PyCapsule_SetPointer(PyObject *capsule, void *pointer);
__attribute__ ((visibility ("default"))) int PyCapsule_SetDestructor(PyObject *capsule, PyCapsule_Destructor destructor);
__attribute__ ((visibility ("default"))) int PyCapsule_SetName(PyObject *capsule, const char *name);
__attribute__ ((visibility ("default"))) int PyCapsule_SetContext(PyObject *capsule, void *context);
__attribute__ ((visibility ("default"))) void * PyCapsule_Import(
    const char *name,
    int no_block);
/* ++ END "pycapsule.h" /usr/include/python3.13/pycapsule.h */
/* ++ BEGIN "cpython/code.h" /usr/include/python3.13/cpython/code.h */
typedef struct _Py_LocalMonitors {
    uint8_t tools[10];
} _Py_LocalMonitors;
typedef struct _Py_GlobalMonitors {
    uint8_t tools[15];
} _Py_GlobalMonitors;
typedef struct {
    PyObject *_co_code;
    PyObject *_co_varnames;
    PyObject *_co_cellvars;
    PyObject *_co_freevars;
} _PyCoCached;
typedef struct {
    uint8_t bytes_per_entry;
    uint8_t data[1];
} _PyCoLineInstrumentationData;
typedef struct {
    int size;
    int capacity;
    struct _PyExecutorObject *executors[1];
} _PyExecutorArray;
typedef struct {
    _Py_LocalMonitors local_monitors;
    _Py_LocalMonitors active_monitors;
    uint8_t *tools;
    _PyCoLineInstrumentationData *lines;
    uint8_t *line_tools;
    uint8_t *per_instruction_opcodes;
    uint8_t *per_instruction_tools;
} _PyCoMonitoringData;
struct PyCodeObject { PyVarObject ob_base; PyObject *co_consts; PyObject *co_names; PyObject *co_exceptiontable; int co_flags; int co_argcount; int co_posonlyargcount; int co_kwonlyargcount; int co_stacksize; int co_firstlineno; int co_nlocalsplus; int co_framesize; int co_nlocals; int co_ncellvars; int co_nfreevars; uint32_t co_version; PyObject *co_localsplusnames; PyObject *co_localspluskinds; PyObject *co_filename; PyObject *co_name; PyObject *co_qualname; PyObject *co_linetable; PyObject *co_weakreflist; _PyExecutorArray *co_executors; _PyCoCached *_co_cached; uintptr_t _co_instrumentation_version; _PyCoMonitoringData *_co_monitoring; int _co_firsttraceable; void *co_extra; char co_code_adaptive[(1)]; };
extern __attribute__ ((visibility ("default"))) PyTypeObject PyCode_Type;
static inline Py_ssize_t PyCode_GetNumFree(PyCodeObject *op) {
    
   ((void) sizeof ((
   Py_IS_TYPE(((PyObject*)(((op)))), (&PyCode_Type))
   ) ? 1 : 0), __extension__ ({ if (
   Py_IS_TYPE(((PyObject*)(((op)))), (&PyCode_Type))
   ) ; else __assert_fail (
   "PyCode_Check(op)"
   , "/usr/include/python3.13/cpython/code.h", 185, __extension__ __PRETTY_FUNCTION__); }))
                           ;
    return op->co_nfreevars;
}
static inline int PyUnstable_Code_GetFirstFree(PyCodeObject *op) {
    
   ((void) sizeof ((
   Py_IS_TYPE(((PyObject*)(((op)))), (&PyCode_Type))
   ) ? 1 : 0), __extension__ ({ if (
   Py_IS_TYPE(((PyObject*)(((op)))), (&PyCode_Type))
   ) ; else __assert_fail (
   "PyCode_Check(op)"
   , "/usr/include/python3.13/cpython/code.h", 190, __extension__ __PRETTY_FUNCTION__); }))
                           ;
    return op->co_nlocalsplus - op->co_nfreevars;
}
__attribute__((__deprecated__)) static inline int PyCode_GetFirstFree(PyCodeObject *op) {
    return PyUnstable_Code_GetFirstFree(op);
}
__attribute__ ((visibility ("default"))) PyCodeObject * PyUnstable_Code_New(
        int, int, int, int, int, PyObject *, PyObject *,
        PyObject *, PyObject *, PyObject *, PyObject *,
        PyObject *, PyObject *, PyObject *, int, PyObject *,
        PyObject *);
__attribute__ ((visibility ("default"))) PyCodeObject * PyUnstable_Code_NewWithPosOnlyArgs(
        int, int, int, int, int, int, PyObject *, PyObject *,
        PyObject *, PyObject *, PyObject *, PyObject *,
        PyObject *, PyObject *, PyObject *, int, PyObject *,
        PyObject *);
__attribute__((__deprecated__)) static inline PyCodeObject *
PyCode_New(
        int a, int b, int c, int d, int e, PyObject *f, PyObject *g,
        PyObject *h, PyObject *i, PyObject *j, PyObject *k,
        PyObject *l, PyObject *m, PyObject *n, int o, PyObject *p,
        PyObject *q)
{
    return PyUnstable_Code_New(
        a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q);
}
__attribute__((__deprecated__)) static inline PyCodeObject *
PyCode_NewWithPosOnlyArgs(
        int a, int poac, int b, int c, int d, int e, PyObject *f, PyObject *g,
        PyObject *h, PyObject *i, PyObject *j, PyObject *k,
        PyObject *l, PyObject *m, PyObject *n, int o, PyObject *p,
        PyObject *q)
{
    return PyUnstable_Code_NewWithPosOnlyArgs(
        a, poac, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q);
}
__attribute__ ((visibility ("default"))) PyCodeObject *
PyCode_NewEmpty(const char *filename, const char *funcname, int firstlineno);
__attribute__ ((visibility ("default"))) int PyCode_Addr2Line(PyCodeObject *, int);
__attribute__ ((visibility ("default"))) int PyCode_Addr2Location(PyCodeObject *, int, int *, int *, int *, int *);
typedef enum {
    PY_CODE_EVENT_CREATE, PY_CODE_EVENT_DESTROY,
} PyCodeEvent;
typedef int (*PyCode_WatchCallback)(
  PyCodeEvent event,
  PyCodeObject* co);
__attribute__ ((visibility ("default"))) int PyCode_AddWatcher(PyCode_WatchCallback callback);
__attribute__ ((visibility ("default"))) int PyCode_ClearWatcher(int watcher_id);
struct _opaque {
    int computed_line;
    const uint8_t *lo_next;
    const uint8_t *limit;
};
typedef struct _line_offsets {
    int ar_start;
    int ar_end;
    int ar_line;
    struct _opaque opaque;
} PyCodeAddressRange;
__attribute__ ((visibility ("default"))) int _PyCode_CheckLineNumber(int lasti, PyCodeAddressRange *bounds);
__attribute__ ((visibility ("default"))) PyObject* _PyCode_ConstantKey(PyObject *obj);
__attribute__ ((visibility ("default"))) PyObject* PyCode_Optimize(PyObject *code, PyObject* consts,
                                      PyObject *names, PyObject *lnotab);
__attribute__ ((visibility ("default"))) int PyUnstable_Code_GetExtra(
    PyObject *code, Py_ssize_t index, void **extra);
__attribute__ ((visibility ("default"))) int PyUnstable_Code_SetExtra(
    PyObject *code, Py_ssize_t index, void *extra);
__attribute__((__deprecated__)) static inline int
_PyCode_GetExtra(PyObject *code, Py_ssize_t index, void **extra)
{
    return PyUnstable_Code_GetExtra(code, index, extra);
}
__attribute__((__deprecated__)) static inline int
_PyCode_SetExtra(PyObject *code, Py_ssize_t index, void *extra)
{
    return PyUnstable_Code_SetExtra(code, index, extra);
}
__attribute__ ((visibility ("default"))) PyObject * PyCode_GetCode(PyCodeObject *code);
__attribute__ ((visibility ("default"))) PyObject * PyCode_GetVarnames(PyCodeObject *code);
__attribute__ ((visibility ("default"))) PyObject * PyCode_GetCellvars(PyCodeObject *code);
__attribute__ ((visibility ("default"))) PyObject * PyCode_GetFreevars(PyCodeObject *code);
typedef enum _PyCodeLocationInfoKind {
    PY_CODE_LOCATION_INFO_SHORT0 = 0,
    PY_CODE_LOCATION_INFO_ONE_LINE0 = 10,
    PY_CODE_LOCATION_INFO_ONE_LINE1 = 11,
    PY_CODE_LOCATION_INFO_ONE_LINE2 = 12,
    PY_CODE_LOCATION_INFO_NO_COLUMNS = 13,
    PY_CODE_LOCATION_INFO_LONG = 14,
    PY_CODE_LOCATION_INFO_NONE = 15
} _PyCodeLocationInfoKind;
/* ++ END "cpython/code.h" /usr/include/python3.13/cpython/code.h */
/* ++ BEGIN "pyframe.h" /usr/include/python3.13/pyframe.h */
__attribute__ ((visibility ("default"))) int PyFrame_GetLineNumber(PyFrameObject *);
__attribute__ ((visibility ("default"))) PyCodeObject * PyFrame_GetCode(PyFrameObject *frame);
/* +++ BEGIN "cpython/pyframe.h" /usr/include/python3.13/cpython/pyframe.h */
extern __attribute__ ((visibility ("default"))) PyTypeObject PyFrame_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyFrameLocalsProxy_Type;
__attribute__ ((visibility ("default"))) PyFrameObject * PyFrame_GetBack(PyFrameObject *frame);
__attribute__ ((visibility ("default"))) PyObject * PyFrame_GetLocals(PyFrameObject *frame);
__attribute__ ((visibility ("default"))) PyObject * PyFrame_GetGlobals(PyFrameObject *frame);
__attribute__ ((visibility ("default"))) PyObject * PyFrame_GetBuiltins(PyFrameObject *frame);
__attribute__ ((visibility ("default"))) PyObject * PyFrame_GetGenerator(PyFrameObject *frame);
__attribute__ ((visibility ("default"))) int PyFrame_GetLasti(PyFrameObject *frame);
__attribute__ ((visibility ("default"))) PyObject* PyFrame_GetVar(PyFrameObject *frame, PyObject *name);
__attribute__ ((visibility ("default"))) PyObject* PyFrame_GetVarString(PyFrameObject *frame, const char *name);
struct _PyInterpreterFrame;
__attribute__ ((visibility ("default"))) PyObject * PyUnstable_InterpreterFrame_GetCode(struct _PyInterpreterFrame *frame);
__attribute__ ((visibility ("default"))) int PyUnstable_InterpreterFrame_GetLasti(struct _PyInterpreterFrame *frame);
__attribute__ ((visibility ("default"))) int PyUnstable_InterpreterFrame_GetLine(struct _PyInterpreterFrame *frame);
extern __attribute__ ((visibility ("default"))) const PyTypeObject * const PyUnstable_ExecutableKinds[5 +1];
/* +++ END "cpython/pyframe.h" /usr/include/python3.13/cpython/pyframe.h */
/* ++ END "pyframe.h" /usr/include/python3.13/pyframe.h */
/* ++ BEGIN "traceback.h" /usr/include/python3.13/traceback.h */
__attribute__ ((visibility ("default"))) int PyTraceBack_Here(PyFrameObject *);
__attribute__ ((visibility ("default"))) int PyTraceBack_Print(PyObject *, PyObject *);
extern __attribute__ ((visibility ("default"))) PyTypeObject PyTraceBack_Type;
/* +++ BEGIN "cpython/traceback.h" /usr/include/python3.13/cpython/traceback.h */
typedef struct _traceback PyTracebackObject;
struct _traceback {
    PyObject ob_base;
    PyTracebackObject *tb_next;
    PyFrameObject *tb_frame;
    int tb_lasti;
    int tb_lineno;
};
/* +++ END "cpython/traceback.h" /usr/include/python3.13/cpython/traceback.h */
/* ++ END "traceback.h" /usr/include/python3.13/traceback.h */
/* ++ BEGIN "sliceobject.h" /usr/include/python3.13/sliceobject.h */
extern __attribute__ ((visibility ("default"))) PyObject _Py_EllipsisObject;
typedef struct {
    PyObject ob_base;
    PyObject *start, *stop, *step;
} PySliceObject;
extern __attribute__ ((visibility ("default"))) PyTypeObject PySlice_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyEllipsis_Type;
__attribute__ ((visibility ("default"))) PyObject * PySlice_New(PyObject* start, PyObject* stop,
                                  PyObject* step);
__attribute__ ((visibility ("default"))) PyObject * _PySlice_FromIndices(Py_ssize_t start, Py_ssize_t stop);
__attribute__ ((visibility ("default"))) int _PySlice_GetLongIndices(PySliceObject *self, PyObject *length,
                                 PyObject **start_ptr, PyObject **stop_ptr,
                                 PyObject **step_ptr);
__attribute__ ((visibility ("default"))) int PySlice_GetIndices(PyObject *r, Py_ssize_t length,
                                  Py_ssize_t *start, Py_ssize_t *stop, Py_ssize_t *step);
__attribute__((__deprecated__))
__attribute__ ((visibility ("default"))) int PySlice_GetIndicesEx(PyObject *r, Py_ssize_t length,
                                     Py_ssize_t *start, Py_ssize_t *stop,
                                     Py_ssize_t *step,
                                     Py_ssize_t *slicelength);
__attribute__ ((visibility ("default"))) int PySlice_Unpack(PyObject *slice,
                               Py_ssize_t *start, Py_ssize_t *stop, Py_ssize_t *step);
__attribute__ ((visibility ("default"))) Py_ssize_t PySlice_AdjustIndices(Py_ssize_t length,
                                             Py_ssize_t *start, Py_ssize_t *stop,
                                             Py_ssize_t step);
/* ++ END "sliceobject.h" /usr/include/python3.13/sliceobject.h */
/* ++ BEGIN "cpython/cellobject.h" /usr/include/python3.13/cpython/cellobject.h */
typedef struct {
    PyObject ob_base;
    PyObject *ob_ref;
} PyCellObject;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyCell_Type;
__attribute__ ((visibility ("default"))) PyObject * PyCell_New(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyCell_Get(PyObject *);
__attribute__ ((visibility ("default"))) int PyCell_Set(PyObject *, PyObject *);
static inline PyObject* PyCell_GET(PyObject *op) {
    PyCellObject *cell;
    
   ((void) sizeof ((
   Py_IS_TYPE(((PyObject*)(((op)))), (&PyCell_Type))
   ) ? 1 : 0), __extension__ ({ if (
   Py_IS_TYPE(((PyObject*)(((op)))), (&PyCell_Type))
   ) ; else __assert_fail (
   "PyCell_Check(op)"
   , "/usr/include/python3.13/cpython/cellobject.h", 26, __extension__ __PRETTY_FUNCTION__); }))
                           ;
    cell = ((PyCellObject*)(op));
    return cell->ob_ref;
}
static inline void PyCell_SET(PyObject *op, PyObject *value) {
    PyCellObject *cell;
    
   ((void) sizeof ((
   Py_IS_TYPE(((PyObject*)(((op)))), (&PyCell_Type))
   ) ? 1 : 0), __extension__ ({ if (
   Py_IS_TYPE(((PyObject*)(((op)))), (&PyCell_Type))
   ) ; else __assert_fail (
   "PyCell_Check(op)"
   , "/usr/include/python3.13/cpython/cellobject.h", 34, __extension__ __PRETTY_FUNCTION__); }))
                           ;
    cell = ((PyCellObject*)(op));
    cell->ob_ref = value;
}
/* ++ END "cpython/cellobject.h" /usr/include/python3.13/cpython/cellobject.h */
/* ++ BEGIN "iterobject.h" /usr/include/python3.13/iterobject.h */
extern __attribute__ ((visibility ("default"))) PyTypeObject PySeqIter_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyCallIter_Type;
__attribute__ ((visibility ("default"))) PyObject * PySeqIter_New(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyCallIter_New(PyObject *, PyObject *);
/* ++ END "iterobject.h" /usr/include/python3.13/iterobject.h */
/* ++ BEGIN "cpython/initconfig.h" /usr/include/python3.13/cpython/initconfig.h */
typedef struct {
    enum {
        _PyStatus_TYPE_OK=0,
        _PyStatus_TYPE_ERROR=1,
        _PyStatus_TYPE_EXIT=2
    } _type;
    const char *func;
    const char *err_msg;
    int exitcode;
} PyStatus;
__attribute__ ((visibility ("default"))) PyStatus PyStatus_Ok(void);
__attribute__ ((visibility ("default"))) PyStatus PyStatus_Error(const char *err_msg);
__attribute__ ((visibility ("default"))) PyStatus PyStatus_NoMemory(void);
__attribute__ ((visibility ("default"))) PyStatus PyStatus_Exit(int exitcode);
__attribute__ ((visibility ("default"))) int PyStatus_IsError(PyStatus err);
__attribute__ ((visibility ("default"))) int PyStatus_IsExit(PyStatus err);
__attribute__ ((visibility ("default"))) int PyStatus_Exception(PyStatus err);
typedef struct {
    Py_ssize_t length;
    wchar_t **items;
} PyWideStringList;
__attribute__ ((visibility ("default"))) PyStatus PyWideStringList_Append(PyWideStringList *list,
    const wchar_t *item);
__attribute__ ((visibility ("default"))) PyStatus PyWideStringList_Insert(PyWideStringList *list,
    Py_ssize_t index,
    const wchar_t *item);
typedef struct PyPreConfig {
    int _config_init;
    int parse_argv;
    int isolated;
    int use_environment;
    int configure_locale;
    int coerce_c_locale;
    int coerce_c_locale_warn;
    int utf8_mode;
    int dev_mode;
    int allocator;
} PyPreConfig;
__attribute__ ((visibility ("default"))) void PyPreConfig_InitPythonConfig(PyPreConfig *config);
__attribute__ ((visibility ("default"))) void PyPreConfig_InitIsolatedConfig(PyPreConfig *config);
typedef struct PyConfig {
    int _config_init;
    int isolated;
    int use_environment;
    int dev_mode;
    int install_signal_handlers;
    int use_hash_seed;
    unsigned long hash_seed;
    int faulthandler;
    int tracemalloc;
    int perf_profiling;
    int import_time;
    int code_debug_ranges;
    int show_ref_count;
    int dump_refs;
    wchar_t *dump_refs_file;
    int malloc_stats;
    wchar_t *filesystem_encoding;
    wchar_t *filesystem_errors;
    wchar_t *pycache_prefix;
    int parse_argv;
    PyWideStringList orig_argv;
    PyWideStringList argv;
    PyWideStringList xoptions;
    PyWideStringList warnoptions;
    int site_import;
    int bytes_warning;
    int warn_default_encoding;
    int inspect;
    int interactive;
    int optimization_level;
    int parser_debug;
    int write_bytecode;
    int verbose;
    int quiet;
    int user_site_directory;
    int configure_c_stdio;
    int buffered_stdio;
    wchar_t *stdio_encoding;
    wchar_t *stdio_errors;
    wchar_t *check_hash_pycs_mode;
    int use_frozen_modules;
    int safe_path;
    int int_max_str_digits;
    int cpu_count;
    int pathconfig_warnings;
    wchar_t *program_name;
    wchar_t *pythonpath_env;
    wchar_t *home;
    wchar_t *platlibdir;
    int module_search_paths_set;
    PyWideStringList module_search_paths;
    wchar_t *stdlib_dir;
    wchar_t *executable;
    wchar_t *base_executable;
    wchar_t *prefix;
    wchar_t *base_prefix;
    wchar_t *exec_prefix;
    wchar_t *base_exec_prefix;
    int skip_source_first_line;
    wchar_t *run_command;
    wchar_t *run_module;
    wchar_t *run_filename;
    wchar_t *sys_path_0;
    int _install_importlib;
    int _init_main;
    int _is_python_build;
} PyConfig;
__attribute__ ((visibility ("default"))) void PyConfig_InitPythonConfig(PyConfig *config);
__attribute__ ((visibility ("default"))) void PyConfig_InitIsolatedConfig(PyConfig *config);
__attribute__ ((visibility ("default"))) void PyConfig_Clear(PyConfig *);
__attribute__ ((visibility ("default"))) PyStatus PyConfig_SetString(
    PyConfig *config,
    wchar_t **config_str,
    const wchar_t *str);
__attribute__ ((visibility ("default"))) PyStatus PyConfig_SetBytesString(
    PyConfig *config,
    wchar_t **config_str,
    const char *str);
__attribute__ ((visibility ("default"))) PyStatus PyConfig_Read(PyConfig *config);
__attribute__ ((visibility ("default"))) PyStatus PyConfig_SetBytesArgv(
    PyConfig *config,
    Py_ssize_t argc,
    char * const *argv);
__attribute__ ((visibility ("default"))) PyStatus PyConfig_SetArgv(PyConfig *config,
    Py_ssize_t argc,
    wchar_t * const *argv);
__attribute__ ((visibility ("default"))) PyStatus PyConfig_SetWideStringList(PyConfig *config,
    PyWideStringList *list,
    Py_ssize_t length, wchar_t **items);
__attribute__ ((visibility ("default"))) void Py_GetArgcArgv(int *argc, wchar_t ***argv);
/* ++ END "cpython/initconfig.h" /usr/include/python3.13/cpython/initconfig.h */
/* ++ BEGIN "pystate.h" /usr/include/python3.13/pystate.h */
__attribute__ ((visibility ("default"))) PyInterpreterState * PyInterpreterState_New(void);
__attribute__ ((visibility ("default"))) void PyInterpreterState_Clear(PyInterpreterState *);
__attribute__ ((visibility ("default"))) void PyInterpreterState_Delete(PyInterpreterState *);
__attribute__ ((visibility ("default"))) PyInterpreterState * PyInterpreterState_Get(void);
__attribute__ ((visibility ("default"))) PyObject * PyInterpreterState_GetDict(PyInterpreterState *);
__attribute__ ((visibility ("default"))) int64_t PyInterpreterState_GetID(PyInterpreterState *);
__attribute__ ((visibility ("default"))) int PyState_AddModule(PyObject*, PyModuleDef*);
__attribute__ ((visibility ("default"))) int PyState_RemoveModule(PyModuleDef*);
__attribute__ ((visibility ("default"))) PyObject* PyState_FindModule(PyModuleDef*);
__attribute__ ((visibility ("default"))) PyThreadState * PyThreadState_New(PyInterpreterState *);
__attribute__ ((visibility ("default"))) void PyThreadState_Clear(PyThreadState *);
__attribute__ ((visibility ("default"))) void PyThreadState_Delete(PyThreadState *);
__attribute__ ((visibility ("default"))) PyThreadState * PyThreadState_Get(void);
__attribute__ ((visibility ("default"))) PyThreadState * PyThreadState_Swap(PyThreadState *);
__attribute__ ((visibility ("default"))) PyObject * PyThreadState_GetDict(void);
__attribute__ ((visibility ("default"))) int PyThreadState_SetAsyncExc(unsigned long, PyObject *);
__attribute__ ((visibility ("default"))) PyInterpreterState* PyThreadState_GetInterpreter(PyThreadState *tstate);
__attribute__ ((visibility ("default"))) PyFrameObject* PyThreadState_GetFrame(PyThreadState *tstate);
__attribute__ ((visibility ("default"))) uint64_t PyThreadState_GetID(PyThreadState *tstate);
typedef
    enum {PyGILState_LOCKED, PyGILState_UNLOCKED}
        PyGILState_STATE;
__attribute__ ((visibility ("default"))) PyGILState_STATE PyGILState_Ensure(void);
__attribute__ ((visibility ("default"))) void PyGILState_Release(PyGILState_STATE);
__attribute__ ((visibility ("default"))) PyThreadState * PyGILState_GetThisThreadState(void);
/* +++ BEGIN "cpython/pystate.h" /usr/include/python3.13/cpython/pystate.h */
__attribute__ ((visibility ("default"))) int _PyInterpreterState_RequiresIDRef(PyInterpreterState *);
__attribute__ ((visibility ("default"))) void _PyInterpreterState_RequireIDRef(PyInterpreterState *, int);
__attribute__ ((visibility ("default"))) PyObject * PyUnstable_InterpreterState_GetMainModule(PyInterpreterState *);
typedef int (*Py_tracefunc)(PyObject *, PyFrameObject *, int, PyObject *);
typedef struct _err_stackitem {
    PyObject *exc_value;
    struct _err_stackitem *previous_item;
} _PyErr_StackItem;
typedef struct _stack_chunk {
    struct _stack_chunk *previous;
    size_t size;
    size_t top;
    PyObject * data[1];
} _PyStackChunk;
struct _ts {
    PyThreadState *prev;
    PyThreadState *next;
    PyInterpreterState *interp;
    uintptr_t eval_breaker;
    struct {
        unsigned int initialized:1;
        unsigned int bound:1;
        unsigned int unbound:1;
        unsigned int bound_gilstate:1;
        unsigned int active:1;
        unsigned int holds_gil:1;
        unsigned int finalizing:1;
        unsigned int cleared:1;
        unsigned int finalized:1;
        unsigned int :23;
    } _status;
    int _whence;
    int state;
    int py_recursion_remaining;
    int py_recursion_limit;
    int c_recursion_remaining;
    int recursion_headroom;
    int tracing;
    int what_event;
    struct _PyInterpreterFrame *current_frame;
    Py_tracefunc c_profilefunc;
    Py_tracefunc c_tracefunc;
    PyObject *c_profileobj;
    PyObject *c_traceobj;
    PyObject *current_exception;
    _PyErr_StackItem *exc_info;
    PyObject *dict;
    int gilstate_counter;
    PyObject *async_exc;
    unsigned long thread_id;
    unsigned long native_thread_id;
    PyObject *delete_later;
    uintptr_t critical_section;
    int coroutine_origin_tracking_depth;
    PyObject *async_gen_firstiter;
    PyObject *async_gen_finalizer;
    PyObject *context;
    uint64_t context_ver;
    uint64_t id;
    _PyStackChunk *datastack_chunk;
    PyObject **datastack_top;
    PyObject **datastack_limit;
    _PyErr_StackItem exc_state;
    PyObject *previous_executor;
    uint64_t dict_global_version;
    PyObject *threading_local_key;
    PyObject *threading_local_sentinel;
};
__attribute__ ((visibility ("default"))) PyThreadState * PyThreadState_GetUnchecked(void);
__attribute__ ((visibility ("default"))) void PyThreadState_EnterTracing(PyThreadState *tstate);
__attribute__ ((visibility ("default"))) void PyThreadState_LeaveTracing(PyThreadState *tstate);
__attribute__ ((visibility ("default"))) int PyGILState_Check(void);
__attribute__ ((visibility ("default"))) PyObject* _PyThread_CurrentFrames(void);
__attribute__ ((visibility ("default"))) PyInterpreterState * PyInterpreterState_Main(void);
__attribute__ ((visibility ("default"))) PyInterpreterState * PyInterpreterState_Head(void);
__attribute__ ((visibility ("default"))) PyInterpreterState * PyInterpreterState_Next(PyInterpreterState *);
__attribute__ ((visibility ("default"))) PyThreadState * PyInterpreterState_ThreadHead(PyInterpreterState *);
__attribute__ ((visibility ("default"))) PyThreadState * PyThreadState_Next(PyThreadState *);
__attribute__ ((visibility ("default"))) void PyThreadState_DeleteCurrent(void);
typedef PyObject* (*_PyFrameEvalFunction)(PyThreadState *tstate, struct _PyInterpreterFrame *, int);
__attribute__ ((visibility ("default"))) _PyFrameEvalFunction _PyInterpreterState_GetEvalFrameFunc(
    PyInterpreterState *interp);
__attribute__ ((visibility ("default"))) void _PyInterpreterState_SetEvalFrameFunc(
    PyInterpreterState *interp,
    _PyFrameEvalFunction eval_frame);
/* +++ END "cpython/pystate.h" /usr/include/python3.13/cpython/pystate.h */
/* ++ END "pystate.h" /usr/include/python3.13/pystate.h */
/* ++ BEGIN "cpython/genobject.h" /usr/include/python3.13/cpython/genobject.h */
typedef struct {
    PyObject ob_base; PyObject *gi_weakreflist; PyObject *gi_name; PyObject *gi_qualname; _PyErr_StackItem gi_exc_state; PyObject *gi_origin_or_finalizer; char gi_hooks_inited; char gi_closed; char gi_running_async; int8_t gi_frame_state; PyObject *gi_iframe[1];
} PyGenObject;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyGen_Type;
__attribute__ ((visibility ("default"))) PyObject * PyGen_New(PyFrameObject *);
__attribute__ ((visibility ("default"))) PyObject * PyGen_NewWithQualName(PyFrameObject *,
    PyObject *name, PyObject *qualname);
__attribute__ ((visibility ("default"))) PyCodeObject * PyGen_GetCode(PyGenObject *gen);
typedef struct {
    PyObject ob_base; PyObject *cr_weakreflist; PyObject *cr_name; PyObject *cr_qualname; _PyErr_StackItem cr_exc_state; PyObject *cr_origin_or_finalizer; char cr_hooks_inited; char cr_closed; char cr_running_async; int8_t cr_frame_state; PyObject *cr_iframe[1];
} PyCoroObject;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyCoro_Type;
__attribute__ ((visibility ("default"))) PyObject * PyCoro_New(PyFrameObject *,
    PyObject *name, PyObject *qualname);
typedef struct {
    PyObject ob_base; PyObject *ag_weakreflist; PyObject *ag_name; PyObject *ag_qualname; _PyErr_StackItem ag_exc_state; PyObject *ag_origin_or_finalizer; char ag_hooks_inited; char ag_closed; char ag_running_async; int8_t ag_frame_state; PyObject *ag_iframe[1];
} PyAsyncGenObject;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyAsyncGen_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject _PyAsyncGenASend_Type;
__attribute__ ((visibility ("default"))) PyObject * PyAsyncGen_New(PyFrameObject *,
    PyObject *name, PyObject *qualname);
/* ++ END "cpython/genobject.h" /usr/include/python3.13/cpython/genobject.h */
/* ++ BEGIN "descrobject.h" /usr/include/python3.13/descrobject.h */
typedef PyObject *(*getter)(PyObject *, void *);
typedef int (*setter)(PyObject *, PyObject *, void *);
struct PyGetSetDef {
    const char *name;
    getter get;
    setter set;
    const char *doc;
    void *closure;
};
extern __attribute__ ((visibility ("default"))) PyTypeObject PyClassMethodDescr_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyGetSetDescr_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyMemberDescr_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyMethodDescr_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyWrapperDescr_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyDictProxy_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyProperty_Type;
__attribute__ ((visibility ("default"))) PyObject * PyDescr_NewMethod(PyTypeObject *, PyMethodDef *);
__attribute__ ((visibility ("default"))) PyObject * PyDescr_NewClassMethod(PyTypeObject *, PyMethodDef *);
__attribute__ ((visibility ("default"))) PyObject * PyDescr_NewMember(PyTypeObject *, PyMemberDef *);
__attribute__ ((visibility ("default"))) PyObject * PyDescr_NewGetSet(PyTypeObject *, PyGetSetDef *);
__attribute__ ((visibility ("default"))) PyObject * PyDictProxy_New(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyWrapper_New(PyObject *, PyObject *);
struct PyMemberDef {
    const char *name;
    int type;
    Py_ssize_t offset;
    int flags;
    const char *doc;
};
__attribute__ ((visibility ("default"))) PyObject * PyMember_GetOne(const char *, PyMemberDef *);
__attribute__ ((visibility ("default"))) int PyMember_SetOne(char *, PyMemberDef *, PyObject *);
/* +++ BEGIN "cpython/descrobject.h" /usr/include/python3.13/cpython/descrobject.h */
typedef PyObject *(*wrapperfunc)(PyObject *self, PyObject *args,
                                 void *wrapped);
typedef PyObject *(*wrapperfunc_kwds)(PyObject *self, PyObject *args,
                                      void *wrapped, PyObject *kwds);
struct wrapperbase {
    const char *name;
    int offset;
    void *function;
    wrapperfunc wrapper;
    const char *doc;
    int flags;
    PyObject *name_strobj;
};
typedef struct {
    PyObject ob_base;
    PyTypeObject *d_type;
    PyObject *d_name;
    PyObject *d_qualname;
} PyDescrObject;
typedef struct {
    PyDescrObject d_common;
    PyMethodDef *d_method;
    vectorcallfunc vectorcall;
} PyMethodDescrObject;
typedef struct {
    PyDescrObject d_common;
    PyMemberDef *d_member;
} PyMemberDescrObject;
typedef struct {
    PyDescrObject d_common;
    PyGetSetDef *d_getset;
} PyGetSetDescrObject;
typedef struct {
    PyDescrObject d_common;
    struct wrapperbase *d_base;
    void *d_wrapped;
} PyWrapperDescrObject;
__attribute__ ((visibility ("default"))) PyObject * PyDescr_NewWrapper(PyTypeObject *,
                                                struct wrapperbase *, void *);
__attribute__ ((visibility ("default"))) int PyDescr_IsData(PyObject *);
/* +++ END "cpython/descrobject.h" /usr/include/python3.13/cpython/descrobject.h */
/* ++ END "descrobject.h" /usr/include/python3.13/descrobject.h */
/* ++ BEGIN "genericaliasobject.h" /usr/include/python3.13/genericaliasobject.h */
__attribute__ ((visibility ("default"))) PyObject * Py_GenericAlias(PyObject *, PyObject *);
extern __attribute__ ((visibility ("default"))) PyTypeObject Py_GenericAliasType;
/* ++ END "genericaliasobject.h" /usr/include/python3.13/genericaliasobject.h */
/* ++ BEGIN "warnings.h" /usr/include/python3.13/warnings.h */
__attribute__ ((visibility ("default"))) int PyErr_WarnEx(
    PyObject *category,
    const char *message,
    Py_ssize_t stack_level);
__attribute__ ((visibility ("default"))) int PyErr_WarnFormat(
    PyObject *category,
    Py_ssize_t stack_level,
    const char *format,
    ...);
__attribute__ ((visibility ("default"))) int PyErr_ResourceWarning(
    PyObject *source,
    Py_ssize_t stack_level,
    const char *format,
    ...);
__attribute__ ((visibility ("default"))) int PyErr_WarnExplicit(
    PyObject *category,
    const char *message,
    const char *filename,
    int lineno,
    const char *module,
    PyObject *registry);
/* +++ BEGIN "cpython/warnings.h" /usr/include/python3.13/cpython/warnings.h */
__attribute__ ((visibility ("default"))) int PyErr_WarnExplicitObject(
    PyObject *category,
    PyObject *message,
    PyObject *filename,
    int lineno,
    PyObject *module,
    PyObject *registry);
__attribute__ ((visibility ("default"))) int PyErr_WarnExplicitFormat(
    PyObject *category,
    const char *filename, int lineno,
    const char *module, PyObject *registry,
    const char *format, ...);
/* +++ END "cpython/warnings.h" /usr/include/python3.13/cpython/warnings.h */
/* ++ END "warnings.h" /usr/include/python3.13/warnings.h */
/* ++ BEGIN "weakrefobject.h" /usr/include/python3.13/weakrefobject.h */
typedef struct _PyWeakReference PyWeakReference;
extern __attribute__ ((visibility ("default"))) PyTypeObject _PyWeakref_RefType;
extern __attribute__ ((visibility ("default"))) PyTypeObject _PyWeakref_ProxyType;
extern __attribute__ ((visibility ("default"))) PyTypeObject _PyWeakref_CallableProxyType;
__attribute__ ((visibility ("default"))) PyObject * PyWeakref_NewRef(PyObject *ob,
                                        PyObject *callback);
__attribute__ ((visibility ("default"))) PyObject * PyWeakref_NewProxy(PyObject *ob,
                                          PyObject *callback);
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) PyObject * PyWeakref_GetObject(PyObject *ref);
__attribute__ ((visibility ("default"))) int PyWeakref_GetRef(PyObject *ref, PyObject **pobj);
/* +++ BEGIN "cpython/weakrefobject.h" /usr/include/python3.13/cpython/weakrefobject.h */
struct _PyWeakReference {
    PyObject ob_base;
    PyObject *wr_object;
    PyObject *wr_callback;
    Py_hash_t hash;
    PyWeakReference *wr_prev;
    PyWeakReference *wr_next;
    vectorcallfunc vectorcall;
};
__attribute__ ((visibility ("default"))) void _PyWeakref_ClearRef(PyWeakReference *self);
__attribute__((__deprecated__)) static inline PyObject* PyWeakref_GET_OBJECT(PyObject *ref_obj)
{
    PyWeakReference *ref;
    PyObject *obj;
    
   ((void) sizeof ((
   (PyObject_TypeCheck(((PyObject*)(((ref_obj)))), (&_PyWeakref_RefType)) || (Py_IS_TYPE(((PyObject*)(((ref_obj)))), (&_PyWeakref_ProxyType)) || Py_IS_TYPE(((PyObject*)(((ref_obj)))), (&_PyWeakref_CallableProxyType))))
   ) ? 1 : 0), __extension__ ({ if (
   (PyObject_TypeCheck(((PyObject*)(((ref_obj)))), (&_PyWeakref_RefType)) || (Py_IS_TYPE(((PyObject*)(((ref_obj)))), (&_PyWeakref_ProxyType)) || Py_IS_TYPE(((PyObject*)(((ref_obj)))), (&_PyWeakref_CallableProxyType))))
   ) ; else __assert_fail (
   "PyWeakref_Check(ref_obj)"
   , "/usr/include/python3.13/cpython/weakrefobject.h", 49, __extension__ __PRETTY_FUNCTION__); }))
                                   ;
    ref = ((PyWeakReference*)(ref_obj));
    obj = ref->wr_object;
    if (Py_REFCNT(((PyObject*)((obj)))) > 0) {
        return obj;
    }
    return (&_Py_NoneStruct);
}
/* +++ END "cpython/weakrefobject.h" /usr/include/python3.13/cpython/weakrefobject.h */
/* ++ END "weakrefobject.h" /usr/include/python3.13/weakrefobject.h */
/* ++ BEGIN "structseq.h" /usr/include/python3.13/structseq.h */
typedef struct PyStructSequence_Field {
    const char *name;
    const char *doc;
} PyStructSequence_Field;
typedef struct PyStructSequence_Desc {
    const char *name;
    const char *doc;
    PyStructSequence_Field *fields;
    int n_in_sequence;
} PyStructSequence_Desc;
extern __attribute__ ((visibility ("default"))) const char * const PyStructSequence_UnnamedField;
__attribute__ ((visibility ("default"))) void PyStructSequence_InitType(PyTypeObject *type,
                                           PyStructSequence_Desc *desc);
__attribute__ ((visibility ("default"))) int PyStructSequence_InitType2(PyTypeObject *type,
                                           PyStructSequence_Desc *desc);
__attribute__ ((visibility ("default"))) PyTypeObject* PyStructSequence_NewType(PyStructSequence_Desc *desc);
__attribute__ ((visibility ("default"))) PyObject * PyStructSequence_New(PyTypeObject* type);
__attribute__ ((visibility ("default"))) void PyStructSequence_SetItem(PyObject*, Py_ssize_t, PyObject*);
__attribute__ ((visibility ("default"))) PyObject* PyStructSequence_GetItem(PyObject*, Py_ssize_t);
typedef PyTupleObject PyStructSequence;
/* ++ END "structseq.h" /usr/include/python3.13/structseq.h */
/* ++ BEGIN "cpython/picklebufobject.h" /usr/include/python3.13/cpython/picklebufobject.h */
extern __attribute__ ((visibility ("default"))) PyTypeObject PyPickleBuffer_Type;
__attribute__ ((visibility ("default"))) PyObject * PyPickleBuffer_FromObject(PyObject *);
__attribute__ ((visibility ("default"))) const Py_buffer * PyPickleBuffer_GetBuffer(PyObject *);
__attribute__ ((visibility ("default"))) int PyPickleBuffer_Release(PyObject *);
/* ++ END "cpython/picklebufobject.h" /usr/include/python3.13/cpython/picklebufobject.h */
/* ++ BEGIN "cpython/pytime.h" /usr/include/python3.13/cpython/pytime.h */
typedef int64_t PyTime_t;
__attribute__ ((visibility ("default"))) double PyTime_AsSecondsDouble(PyTime_t t);
__attribute__ ((visibility ("default"))) int PyTime_Monotonic(PyTime_t *result);
__attribute__ ((visibility ("default"))) int PyTime_PerfCounter(PyTime_t *result);
__attribute__ ((visibility ("default"))) int PyTime_Time(PyTime_t *result);
__attribute__ ((visibility ("default"))) int PyTime_MonotonicRaw(PyTime_t *result);
__attribute__ ((visibility ("default"))) int PyTime_PerfCounterRaw(PyTime_t *result);
__attribute__ ((visibility ("default"))) int PyTime_TimeRaw(PyTime_t *result);
/* ++ END "cpython/pytime.h" /usr/include/python3.13/cpython/pytime.h */
/* ++ BEGIN "codecs.h" /usr/include/python3.13/codecs.h */
__attribute__ ((visibility ("default"))) int PyCodec_Register(
       PyObject *search_function
       );
__attribute__ ((visibility ("default"))) int PyCodec_Unregister(
       PyObject *search_function
       );
__attribute__ ((visibility ("default"))) int PyCodec_KnownEncoding(
       const char *encoding
       );
__attribute__ ((visibility ("default"))) PyObject * PyCodec_Encode(
       PyObject *object,
       const char *encoding,
       const char *errors
       );
__attribute__ ((visibility ("default"))) PyObject * PyCodec_Decode(
       PyObject *object,
       const char *encoding,
       const char *errors
       );
__attribute__ ((visibility ("default"))) PyObject * PyCodec_Encoder(const char *encoding);
__attribute__ ((visibility ("default"))) PyObject * PyCodec_Decoder(const char *encoding);
__attribute__ ((visibility ("default"))) PyObject * PyCodec_IncrementalEncoder(
   const char *encoding,
   const char *errors);
__attribute__ ((visibility ("default"))) PyObject * PyCodec_IncrementalDecoder(
   const char *encoding,
   const char *errors);
__attribute__ ((visibility ("default"))) PyObject * PyCodec_StreamReader(
   const char *encoding,
   PyObject *stream,
   const char *errors);
__attribute__ ((visibility ("default"))) PyObject * PyCodec_StreamWriter(
   const char *encoding,
   PyObject *stream,
   const char *errors);
__attribute__ ((visibility ("default"))) int PyCodec_RegisterError(const char *name, PyObject *error);
__attribute__ ((visibility ("default"))) PyObject * PyCodec_LookupError(const char *name);
__attribute__ ((visibility ("default"))) PyObject * PyCodec_StrictErrors(PyObject *exc);
__attribute__ ((visibility ("default"))) PyObject * PyCodec_IgnoreErrors(PyObject *exc);
__attribute__ ((visibility ("default"))) PyObject * PyCodec_ReplaceErrors(PyObject *exc);
__attribute__ ((visibility ("default"))) PyObject * PyCodec_XMLCharRefReplaceErrors(PyObject *exc);
__attribute__ ((visibility ("default"))) PyObject * PyCodec_BackslashReplaceErrors(PyObject *exc);
__attribute__ ((visibility ("default"))) PyObject * PyCodec_NameReplaceErrors(PyObject *exc);
extern __attribute__ ((visibility ("default"))) const char * Py_hexdigits;
/* ++ END "codecs.h" /usr/include/python3.13/codecs.h */
/* ++ BEGIN "pythread.h" /usr/include/python3.13/pythread.h */
typedef void *PyThread_type_lock;
typedef enum PyLockStatus {
    PY_LOCK_FAILURE = 0,
    PY_LOCK_ACQUIRED = 1,
    PY_LOCK_INTR
} PyLockStatus;
__attribute__ ((visibility ("default"))) void PyThread_init_thread(void);
__attribute__ ((visibility ("default"))) unsigned long PyThread_start_new_thread(void (*)(void *), void *);
__attribute__ ((visibility ("default"))) void __attribute__((__noreturn__)) PyThread_exit_thread(void);
__attribute__ ((visibility ("default"))) unsigned long PyThread_get_thread_ident(void);
__attribute__ ((visibility ("default"))) unsigned long PyThread_get_thread_native_id(void);
__attribute__ ((visibility ("default"))) PyThread_type_lock PyThread_allocate_lock(void);
__attribute__ ((visibility ("default"))) void PyThread_free_lock(PyThread_type_lock);
__attribute__ ((visibility ("default"))) int PyThread_acquire_lock(PyThread_type_lock, int);
__attribute__ ((visibility ("default"))) PyLockStatus PyThread_acquire_lock_timed(PyThread_type_lock,
                                                     long long microseconds,
                                                     int intr_flag);
__attribute__ ((visibility ("default"))) void PyThread_release_lock(PyThread_type_lock);
__attribute__ ((visibility ("default"))) size_t PyThread_get_stacksize(void);
__attribute__ ((visibility ("default"))) int PyThread_set_stacksize(size_t);
__attribute__ ((visibility ("default"))) PyObject* PyThread_GetInfo(void);
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) int PyThread_create_key(void);
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) void PyThread_delete_key(int key);
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) int PyThread_set_key_value(int key,
                                                          void *value);
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) void * PyThread_get_key_value(int key);
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) void PyThread_delete_key_value(int key);
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) void PyThread_ReInitTLS(void);
typedef struct _Py_tss_t Py_tss_t;
__attribute__ ((visibility ("default"))) Py_tss_t * PyThread_tss_alloc(void);
__attribute__ ((visibility ("default"))) void PyThread_tss_free(Py_tss_t *key);
__attribute__ ((visibility ("default"))) int PyThread_tss_is_created(Py_tss_t *key);
__attribute__ ((visibility ("default"))) int PyThread_tss_create(Py_tss_t *key);
__attribute__ ((visibility ("default"))) void PyThread_tss_delete(Py_tss_t *key);
__attribute__ ((visibility ("default"))) int PyThread_tss_set(Py_tss_t *key, void *value);
__attribute__ ((visibility ("default"))) void * PyThread_tss_get(Py_tss_t *key);
/* +++ BEGIN "cpython/pythread.h" /usr/include/python3.13/cpython/pythread.h */
extern __attribute__ ((visibility ("default"))) const long long PY_TIMEOUT_MAX;
/* ++++ BEGIN <pthread.h> /usr/include/pthread.h */
]] require 'ffi.req' 'c.pthread' ffi.cdef[[
/* ++++ END <pthread.h> /usr/include/pthread.h */
struct _Py_tss_t {
    int _is_initialized;
    pthread_key_t _key;
};
/* +++ END "cpython/pythread.h" /usr/include/python3.13/cpython/pythread.h */
/* ++ END "pythread.h" /usr/include/python3.13/pythread.h */
/* ++ BEGIN "cpython/context.h" /usr/include/python3.13/cpython/context.h */
extern __attribute__ ((visibility ("default"))) PyTypeObject PyContext_Type;
typedef struct _pycontextobject PyContext;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyContextVar_Type;
typedef struct _pycontextvarobject PyContextVar;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyContextToken_Type;
typedef struct _pycontexttokenobject PyContextToken;
__attribute__ ((visibility ("default"))) PyObject * PyContext_New(void);
__attribute__ ((visibility ("default"))) PyObject * PyContext_Copy(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyContext_CopyCurrent(void);
__attribute__ ((visibility ("default"))) int PyContext_Enter(PyObject *);
__attribute__ ((visibility ("default"))) int PyContext_Exit(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyContextVar_New(
    const char *name, PyObject *default_value);
__attribute__ ((visibility ("default"))) int PyContextVar_Get(
    PyObject *var, PyObject *default_value, PyObject **value);
__attribute__ ((visibility ("default"))) PyObject * PyContextVar_Set(PyObject *var, PyObject *value);
__attribute__ ((visibility ("default"))) int PyContextVar_Reset(PyObject *var, PyObject *token);
/* ++ END "cpython/context.h" /usr/include/python3.13/cpython/context.h */
/* ++ BEGIN "modsupport.h" /usr/include/python3.13/modsupport.h */
__attribute__ ((visibility ("default"))) int PyArg_Parse(PyObject *, const char *, ...);
__attribute__ ((visibility ("default"))) int PyArg_ParseTuple(PyObject *, const char *, ...);
__attribute__ ((visibility ("default"))) int PyArg_ParseTupleAndKeywords(PyObject *, PyObject *,
                                            const char *, char * const *, ...);
__attribute__ ((visibility ("default"))) int PyArg_VaParse(PyObject *, const char *, va_list);
__attribute__ ((visibility ("default"))) int PyArg_VaParseTupleAndKeywords(PyObject *, PyObject *,
                                              const char *, char * const *, va_list);
__attribute__ ((visibility ("default"))) int PyArg_ValidateKeywordArguments(PyObject *);
__attribute__ ((visibility ("default"))) int PyArg_UnpackTuple(PyObject *, const char *, Py_ssize_t, Py_ssize_t, ...);
__attribute__ ((visibility ("default"))) PyObject * Py_BuildValue(const char *, ...);
__attribute__ ((visibility ("default"))) PyObject * Py_VaBuildValue(const char *, va_list);
__attribute__ ((visibility ("default"))) int PyModule_AddObjectRef(PyObject *mod, const char *name, PyObject *value);
__attribute__ ((visibility ("default"))) int PyModule_Add(PyObject *mod, const char *name, PyObject *value);
__attribute__ ((visibility ("default"))) int PyModule_AddObject(PyObject *mod, const char *, PyObject *value);
__attribute__ ((visibility ("default"))) int PyModule_AddIntConstant(PyObject *, const char *, long);
__attribute__ ((visibility ("default"))) int PyModule_AddStringConstant(PyObject *, const char *, const char *);
__attribute__ ((visibility ("default"))) int PyModule_AddType(PyObject *module, PyTypeObject *type);
__attribute__ ((visibility ("default"))) int PyModule_SetDocString(PyObject *, const char *);
__attribute__ ((visibility ("default"))) int PyModule_AddFunctions(PyObject *, PyMethodDef *);
__attribute__ ((visibility ("default"))) int PyModule_ExecDef(PyObject *module, PyModuleDef *def);
__attribute__ ((visibility ("default"))) PyObject * PyModule_Create2(PyModuleDef*, int apiver);
__attribute__ ((visibility ("default"))) PyObject * PyModule_FromDefAndSpec2(PyModuleDef *def,
                                                PyObject *spec,
                                                int module_api_version);
/* +++ BEGIN "cpython/modsupport.h" /usr/include/python3.13/cpython/modsupport.h */
typedef struct {
    uint8_t v;
} _PyOnceFlag;
typedef struct _PyArg_Parser {
    const char *format;
    const char * const *keywords;
    const char *fname;
    const char *custom_msg;
    _PyOnceFlag once;
    int is_kwtuple_owned;
    int pos;
    int min;
    int max;
    PyObject *kwtuple;
    struct _PyArg_Parser *next;
} _PyArg_Parser;
__attribute__ ((visibility ("default"))) int _PyArg_ParseTupleAndKeywordsFast(PyObject *, PyObject *,
                                                 struct _PyArg_Parser *, ...);
/* +++ END "cpython/modsupport.h" /usr/include/python3.13/cpython/modsupport.h */
/* ++ END "modsupport.h" /usr/include/python3.13/modsupport.h */
/* ++ BEGIN "compile.h" /usr/include/python3.13/compile.h */
/* +++ BEGIN "cpython/compile.h" /usr/include/python3.13/cpython/compile.h */
typedef struct {
    int cf_flags;
    int cf_feature_version;
} PyCompilerFlags;
__attribute__ ((visibility ("default"))) int PyCompile_OpcodeStackEffect(int opcode, int oparg);
__attribute__ ((visibility ("default"))) int PyCompile_OpcodeStackEffectWithJump(int opcode, int oparg, int jump);
/* +++ END "cpython/compile.h" /usr/include/python3.13/cpython/compile.h */
/* ++ END "compile.h" /usr/include/python3.13/compile.h */
/* ++ BEGIN "pythonrun.h" /usr/include/python3.13/pythonrun.h */
__attribute__ ((visibility ("default"))) PyObject * Py_CompileString(const char *, const char *, int);
__attribute__ ((visibility ("default"))) void PyErr_Print(void);
__attribute__ ((visibility ("default"))) void PyErr_PrintEx(int);
__attribute__ ((visibility ("default"))) void PyErr_Display(PyObject *, PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) void PyErr_DisplayException(PyObject *);
extern __attribute__ ((visibility ("default"))) int (*PyOS_InputHook)(void);
/* +++ BEGIN "cpython/pythonrun.h" /usr/include/python3.13/cpython/pythonrun.h */
__attribute__ ((visibility ("default"))) int PyRun_SimpleStringFlags(const char *, PyCompilerFlags *);
__attribute__ ((visibility ("default"))) int PyRun_AnyFileExFlags(
    FILE *fp,
    const char *filename,
    int closeit,
    PyCompilerFlags *flags);
__attribute__ ((visibility ("default"))) int PyRun_SimpleFileExFlags(
    FILE *fp,
    const char *filename,
    int closeit,
    PyCompilerFlags *flags);
__attribute__ ((visibility ("default"))) int PyRun_InteractiveOneFlags(
    FILE *fp,
    const char *filename,
    PyCompilerFlags *flags);
__attribute__ ((visibility ("default"))) int PyRun_InteractiveOneObject(
    FILE *fp,
    PyObject *filename,
    PyCompilerFlags *flags);
__attribute__ ((visibility ("default"))) int PyRun_InteractiveLoopFlags(
    FILE *fp,
    const char *filename,
    PyCompilerFlags *flags);
__attribute__ ((visibility ("default"))) PyObject * PyRun_StringFlags(const char *, int, PyObject *,
                                         PyObject *, PyCompilerFlags *);
__attribute__ ((visibility ("default"))) PyObject * PyRun_FileExFlags(
    FILE *fp,
    const char *filename,
    int start,
    PyObject *globals,
    PyObject *locals,
    int closeit,
    PyCompilerFlags *flags);
__attribute__ ((visibility ("default"))) PyObject * Py_CompileStringExFlags(
    const char *str,
    const char *filename,
    int start,
    PyCompilerFlags *flags,
    int optimize);
__attribute__ ((visibility ("default"))) PyObject * Py_CompileStringObject(
    const char *str,
    PyObject *filename, int start,
    PyCompilerFlags *flags,
    int optimize);
__attribute__ ((visibility ("default"))) PyObject * PyRun_String(const char *str, int s, PyObject *g, PyObject *l);
__attribute__ ((visibility ("default"))) int PyRun_AnyFile(FILE *fp, const char *name);
__attribute__ ((visibility ("default"))) int PyRun_AnyFileEx(FILE *fp, const char *name, int closeit);
__attribute__ ((visibility ("default"))) int PyRun_AnyFileFlags(FILE *, const char *, PyCompilerFlags *);
__attribute__ ((visibility ("default"))) int PyRun_SimpleString(const char *s);
__attribute__ ((visibility ("default"))) int PyRun_SimpleFile(FILE *f, const char *p);
__attribute__ ((visibility ("default"))) int PyRun_SimpleFileEx(FILE *f, const char *p, int c);
__attribute__ ((visibility ("default"))) int PyRun_InteractiveOne(FILE *f, const char *p);
__attribute__ ((visibility ("default"))) int PyRun_InteractiveLoop(FILE *f, const char *p);
__attribute__ ((visibility ("default"))) PyObject * PyRun_File(FILE *fp, const char *p, int s, PyObject *g, PyObject *l);
__attribute__ ((visibility ("default"))) PyObject * PyRun_FileEx(FILE *fp, const char *p, int s, PyObject *g, PyObject *l, int c);
__attribute__ ((visibility ("default"))) PyObject * PyRun_FileFlags(FILE *fp, const char *p, int s, PyObject *g, PyObject *l, PyCompilerFlags *flags);
__attribute__ ((visibility ("default"))) char * PyOS_Readline(FILE *, FILE *, const char *);
extern __attribute__ ((visibility ("default"))) char *(*PyOS_ReadlineFunctionPointer)(FILE *, FILE *, const char *);
/* +++ END "cpython/pythonrun.h" /usr/include/python3.13/cpython/pythonrun.h */
/* ++ END "pythonrun.h" /usr/include/python3.13/pythonrun.h */
/* ++ BEGIN "pylifecycle.h" /usr/include/python3.13/pylifecycle.h */
__attribute__ ((visibility ("default"))) void Py_Initialize(void);
__attribute__ ((visibility ("default"))) void Py_InitializeEx(int);
__attribute__ ((visibility ("default"))) void Py_Finalize(void);
__attribute__ ((visibility ("default"))) int Py_FinalizeEx(void);
__attribute__ ((visibility ("default"))) int Py_IsInitialized(void);
__attribute__ ((visibility ("default"))) PyThreadState * Py_NewInterpreter(void);
__attribute__ ((visibility ("default"))) void Py_EndInterpreter(PyThreadState *);
__attribute__ ((visibility ("default"))) int Py_AtExit(void (*func)(void));
__attribute__ ((visibility ("default"))) void __attribute__((__noreturn__)) Py_Exit(int);
__attribute__ ((visibility ("default"))) int Py_Main(int argc, wchar_t **argv);
__attribute__ ((visibility ("default"))) int Py_BytesMain(int argc, char **argv);
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) void Py_SetProgramName(const wchar_t *);
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) wchar_t * Py_GetProgramName(void);
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) void Py_SetPythonHome(const wchar_t *);
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) wchar_t * Py_GetPythonHome(void);
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) wchar_t * Py_GetProgramFullPath(void);
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) wchar_t * Py_GetPrefix(void);
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) wchar_t * Py_GetExecPrefix(void);
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) wchar_t * Py_GetPath(void);
__attribute__ ((visibility ("default"))) const char * Py_GetVersion(void);
__attribute__ ((visibility ("default"))) const char * Py_GetPlatform(void);
__attribute__ ((visibility ("default"))) const char * Py_GetCopyright(void);
__attribute__ ((visibility ("default"))) const char * Py_GetCompiler(void);
__attribute__ ((visibility ("default"))) const char * Py_GetBuildInfo(void);
typedef void (*PyOS_sighandler_t)(int);
__attribute__ ((visibility ("default"))) PyOS_sighandler_t PyOS_getsig(int);
__attribute__ ((visibility ("default"))) PyOS_sighandler_t PyOS_setsig(int, PyOS_sighandler_t);
extern __attribute__ ((visibility ("default"))) const unsigned long Py_Version;
__attribute__ ((visibility ("default"))) int Py_IsFinalizing(void);
/* +++ BEGIN "cpython/pylifecycle.h" /usr/include/python3.13/cpython/pylifecycle.h */
__attribute__ ((visibility ("default"))) int Py_FrozenMain(int argc, char **argv);
__attribute__ ((visibility ("default"))) PyStatus Py_PreInitialize(
    const PyPreConfig *src_config);
__attribute__ ((visibility ("default"))) PyStatus Py_PreInitializeFromBytesArgs(
    const PyPreConfig *src_config,
    Py_ssize_t argc,
    char **argv);
__attribute__ ((visibility ("default"))) PyStatus Py_PreInitializeFromArgs(
    const PyPreConfig *src_config,
    Py_ssize_t argc,
    wchar_t **argv);
__attribute__ ((visibility ("default"))) PyStatus Py_InitializeFromConfig(
    const PyConfig *config);
__attribute__ ((visibility ("default"))) PyStatus _Py_InitializeMain(void);
__attribute__ ((visibility ("default"))) int Py_RunMain(void);
__attribute__ ((visibility ("default"))) void __attribute__((__noreturn__)) Py_ExitStatusException(PyStatus err);
__attribute__ ((visibility ("default"))) int Py_FdIsInteractive(FILE *, const char *);
typedef struct {
    int use_main_obmalloc;
    int allow_fork;
    int allow_exec;
    int allow_threads;
    int allow_daemon_threads;
    int check_multi_interp_extensions;
    int gil;
} PyInterpreterConfig;
__attribute__ ((visibility ("default"))) PyStatus Py_NewInterpreterFromConfig(
    PyThreadState **tstate_p,
    const PyInterpreterConfig *config);
typedef void (*atexit_datacallbackfunc)(void *);
__attribute__ ((visibility ("default"))) int PyUnstable_AtExit(
        PyInterpreterState *, atexit_datacallbackfunc, void *);
/* +++ END "cpython/pylifecycle.h" /usr/include/python3.13/cpython/pylifecycle.h */
/* ++ END "pylifecycle.h" /usr/include/python3.13/pylifecycle.h */
/* ++ BEGIN "ceval.h" /usr/include/python3.13/ceval.h */
__attribute__ ((visibility ("default"))) PyObject * PyEval_EvalCode(PyObject *, PyObject *, PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyEval_EvalCodeEx(PyObject *co,
                                         PyObject *globals,
                                         PyObject *locals,
                                         PyObject *const *args, int argc,
                                         PyObject *const *kwds, int kwdc,
                                         PyObject *const *defs, int defc,
                                         PyObject *kwdefs, PyObject *closure);
__attribute__ ((visibility ("default"))) PyObject * PyEval_GetBuiltins(void);
__attribute__ ((visibility ("default"))) PyObject * PyEval_GetGlobals(void);
__attribute__ ((visibility ("default"))) PyObject * PyEval_GetLocals(void);
__attribute__ ((visibility ("default"))) PyFrameObject * PyEval_GetFrame(void);
__attribute__ ((visibility ("default"))) PyObject * PyEval_GetFrameBuiltins(void);
__attribute__ ((visibility ("default"))) PyObject * PyEval_GetFrameGlobals(void);
__attribute__ ((visibility ("default"))) PyObject * PyEval_GetFrameLocals(void);
__attribute__ ((visibility ("default"))) int Py_AddPendingCall(int (*func)(void *), void *arg);
__attribute__ ((visibility ("default"))) int Py_MakePendingCalls(void);
__attribute__ ((visibility ("default"))) void Py_SetRecursionLimit(int);
__attribute__ ((visibility ("default"))) int Py_GetRecursionLimit(void);
__attribute__ ((visibility ("default"))) int Py_EnterRecursiveCall(const char *where);
__attribute__ ((visibility ("default"))) void Py_LeaveRecursiveCall(void);
__attribute__ ((visibility ("default"))) const char * PyEval_GetFuncName(PyObject *);
__attribute__ ((visibility ("default"))) const char * PyEval_GetFuncDesc(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyEval_EvalFrame(PyFrameObject *);
__attribute__ ((visibility ("default"))) PyObject * PyEval_EvalFrameEx(PyFrameObject *f, int exc);
__attribute__ ((visibility ("default"))) PyThreadState * PyEval_SaveThread(void);
__attribute__ ((visibility ("default"))) void PyEval_RestoreThread(PyThreadState *);
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) void PyEval_InitThreads(void);
__attribute__ ((visibility ("default"))) void PyEval_AcquireThread(PyThreadState *tstate);
__attribute__ ((visibility ("default"))) void PyEval_ReleaseThread(PyThreadState *tstate);
/* +++ BEGIN "cpython/ceval.h" /usr/include/python3.13/cpython/ceval.h */
__attribute__ ((visibility ("default"))) void PyEval_SetProfile(Py_tracefunc, PyObject *);
__attribute__ ((visibility ("default"))) void PyEval_SetProfileAllThreads(Py_tracefunc, PyObject *);
__attribute__ ((visibility ("default"))) void PyEval_SetTrace(Py_tracefunc, PyObject *);
__attribute__ ((visibility ("default"))) void PyEval_SetTraceAllThreads(Py_tracefunc, PyObject *);
__attribute__ ((visibility ("default"))) int PyEval_MergeCompilerFlags(PyCompilerFlags *cf);
__attribute__ ((visibility ("default"))) PyObject * _PyEval_EvalFrameDefault(PyThreadState *tstate, struct _PyInterpreterFrame *f, int exc);
__attribute__ ((visibility ("default"))) Py_ssize_t PyUnstable_Eval_RequestCodeExtraIndex(freefunc);
__attribute__((__deprecated__)) static inline Py_ssize_t
_PyEval_RequestCodeExtraIndex(freefunc f) {
    return PyUnstable_Eval_RequestCodeExtraIndex(f);
}
__attribute__ ((visibility ("default"))) int _PyEval_SliceIndex(PyObject *, Py_ssize_t *);
__attribute__ ((visibility ("default"))) int _PyEval_SliceIndexNotNone(PyObject *, Py_ssize_t *);
/* +++ END "cpython/ceval.h" /usr/include/python3.13/cpython/ceval.h */
/* ++ END "ceval.h" /usr/include/python3.13/ceval.h */
/* ++ BEGIN "sysmodule.h" /usr/include/python3.13/sysmodule.h */
__attribute__ ((visibility ("default"))) PyObject * PySys_GetObject(const char *);
__attribute__ ((visibility ("default"))) int PySys_SetObject(const char *, PyObject *);
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) void PySys_SetArgv(int, wchar_t **);
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) void PySys_SetArgvEx(int, wchar_t **, int);
__attribute__ ((visibility ("default"))) void PySys_WriteStdout(const char *format, ...)
                 __attribute__((format(printf, 1, 2)));
__attribute__ ((visibility ("default"))) void PySys_WriteStderr(const char *format, ...)
                 __attribute__((format(printf, 1, 2)));
__attribute__ ((visibility ("default"))) void PySys_FormatStdout(const char *format, ...);
__attribute__ ((visibility ("default"))) void PySys_FormatStderr(const char *format, ...);
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) void PySys_ResetWarnOptions(void);
__attribute__ ((visibility ("default"))) PyObject * PySys_GetXOptions(void);
__attribute__ ((visibility ("default"))) int PySys_Audit(
    const char *event,
    const char *argFormat,
    ...);
__attribute__ ((visibility ("default"))) int PySys_AuditTuple(
    const char *event,
    PyObject *args);
/* +++ BEGIN "cpython/sysmodule.h" /usr/include/python3.13/cpython/sysmodule.h */
typedef int(*Py_AuditHookFunction)(const char *, PyObject *, void *);
__attribute__ ((visibility ("default"))) int PySys_AddAuditHook(Py_AuditHookFunction, void*);
typedef struct {
    FILE* perf_map;
    PyThread_type_lock map_lock;
} PerfMapState;
__attribute__ ((visibility ("default"))) int PyUnstable_PerfMapState_Init(void);
__attribute__ ((visibility ("default"))) int PyUnstable_WritePerfMapEntry(
    const void *code_addr,
    unsigned int code_size,
    const char *entry_name);
__attribute__ ((visibility ("default"))) void PyUnstable_PerfMapState_Fini(void);
__attribute__ ((visibility ("default"))) int PyUnstable_CopyPerfMapFile(const char* parent_filename);
__attribute__ ((visibility ("default"))) int PyUnstable_PerfTrampoline_CompileCode(PyCodeObject *);
__attribute__ ((visibility ("default"))) int PyUnstable_PerfTrampoline_SetPersistAfterFork(int enable);
/* +++ END "cpython/sysmodule.h" /usr/include/python3.13/cpython/sysmodule.h */
/* ++ END "sysmodule.h" /usr/include/python3.13/sysmodule.h */
/* ++ BEGIN "osmodule.h" /usr/include/python3.13/osmodule.h */
__attribute__ ((visibility ("default"))) PyObject * PyOS_FSPath(PyObject *path);
/* ++ END "osmodule.h" /usr/include/python3.13/osmodule.h */
/* ++ BEGIN "intrcheck.h" /usr/include/python3.13/intrcheck.h */
__attribute__ ((visibility ("default"))) int PyOS_InterruptOccurred(void);
__attribute__ ((visibility ("default"))) void PyOS_BeforeFork(void);
__attribute__ ((visibility ("default"))) void PyOS_AfterFork_Parent(void);
__attribute__ ((visibility ("default"))) void PyOS_AfterFork_Child(void);
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) void PyOS_AfterFork(void);
/* ++ END "intrcheck.h" /usr/include/python3.13/intrcheck.h */
/* ++ BEGIN "import.h" /usr/include/python3.13/import.h */
__attribute__ ((visibility ("default"))) long PyImport_GetMagicNumber(void);
__attribute__ ((visibility ("default"))) const char * PyImport_GetMagicTag(void);
__attribute__ ((visibility ("default"))) PyObject * PyImport_ExecCodeModule(
    const char *name,
    PyObject *co
    );
__attribute__ ((visibility ("default"))) PyObject * PyImport_ExecCodeModuleEx(
    const char *name,
    PyObject *co,
    const char *pathname
    );
__attribute__ ((visibility ("default"))) PyObject * PyImport_ExecCodeModuleWithPathnames(
    const char *name,
    PyObject *co,
    const char *pathname,
    const char *cpathname
    );
__attribute__ ((visibility ("default"))) PyObject * PyImport_ExecCodeModuleObject(
    PyObject *name,
    PyObject *co,
    PyObject *pathname,
    PyObject *cpathname
    );
__attribute__ ((visibility ("default"))) PyObject * PyImport_GetModuleDict(void);
__attribute__ ((visibility ("default"))) PyObject * PyImport_GetModule(PyObject *name);
__attribute__ ((visibility ("default"))) PyObject * PyImport_AddModuleObject(
    PyObject *name
    );
__attribute__ ((visibility ("default"))) PyObject * PyImport_AddModule(
    const char *name
    );
__attribute__ ((visibility ("default"))) PyObject * PyImport_AddModuleRef(
    const char *name
    );
__attribute__ ((visibility ("default"))) PyObject * PyImport_ImportModule(
    const char *name
    );
__attribute__((__deprecated__)) __attribute__ ((visibility ("default"))) PyObject * PyImport_ImportModuleNoBlock(
    const char *name
    );
__attribute__ ((visibility ("default"))) PyObject * PyImport_ImportModuleLevel(
    const char *name,
    PyObject *globals,
    PyObject *locals,
    PyObject *fromlist,
    int level
    );
__attribute__ ((visibility ("default"))) PyObject * PyImport_ImportModuleLevelObject(
    PyObject *name,
    PyObject *globals,
    PyObject *locals,
    PyObject *fromlist,
    int level
    );
__attribute__ ((visibility ("default"))) PyObject * PyImport_GetImporter(PyObject *path);
__attribute__ ((visibility ("default"))) PyObject * PyImport_Import(PyObject *name);
__attribute__ ((visibility ("default"))) PyObject * PyImport_ReloadModule(PyObject *m);
__attribute__ ((visibility ("default"))) int PyImport_ImportFrozenModuleObject(
    PyObject *name
    );
__attribute__ ((visibility ("default"))) int PyImport_ImportFrozenModule(
    const char *name
    );
__attribute__ ((visibility ("default"))) int PyImport_AppendInittab(
    const char *name,
    PyObject* (*initfunc)(void)
    );
/* +++ BEGIN "cpython/import.h" /usr/include/python3.13/cpython/import.h */
__attribute__ ((visibility ("default"))) PyObject* PyInit__imp(void);
struct _inittab {
    const char *name;
    PyObject* (*initfunc)(void);
};
extern __attribute__ ((visibility ("default"))) struct _inittab * PyImport_Inittab;
__attribute__ ((visibility ("default"))) int PyImport_ExtendInittab(struct _inittab *newtab);
struct _frozen {
    const char *name;
    const unsigned char *code;
    int size;
    int is_package;
};
extern __attribute__ ((visibility ("default"))) const struct _frozen * PyImport_FrozenModules;
/* +++ END "cpython/import.h" /usr/include/python3.13/cpython/import.h */
/* ++ END "import.h" /usr/include/python3.13/import.h */
/* ++ BEGIN "abstract.h" /usr/include/python3.13/abstract.h */
__attribute__ ((visibility ("default"))) PyObject * PyObject_CallNoArgs(PyObject *func);
__attribute__ ((visibility ("default"))) PyObject * PyObject_Call(PyObject *callable,
                                     PyObject *args, PyObject *kwargs);
__attribute__ ((visibility ("default"))) PyObject * PyObject_CallObject(PyObject *callable,
                                           PyObject *args);
__attribute__ ((visibility ("default"))) PyObject * PyObject_CallFunction(PyObject *callable,
                                             const char *format, ...);
__attribute__ ((visibility ("default"))) PyObject * PyObject_CallMethod(PyObject *obj,
                                           const char *name,
                                           const char *format, ...);
__attribute__ ((visibility ("default"))) PyObject * PyObject_CallFunctionObjArgs(PyObject *callable,
                                                    ...);
__attribute__ ((visibility ("default"))) PyObject * PyObject_CallMethodObjArgs(
    PyObject *obj,
    PyObject *name,
    ...);
__attribute__ ((visibility ("default"))) Py_ssize_t PyVectorcall_NARGS(size_t nargsf);
__attribute__ ((visibility ("default"))) PyObject * PyVectorcall_Call(PyObject *callable, PyObject *tuple, PyObject *dict);
__attribute__ ((visibility ("default"))) PyObject * PyObject_Vectorcall(
    PyObject *callable,
    PyObject *const *args,
    size_t nargsf,
    PyObject *kwnames);
__attribute__ ((visibility ("default"))) PyObject * PyObject_VectorcallMethod(
    PyObject *name, PyObject *const *args,
    size_t nargsf, PyObject *kwnames);
__attribute__ ((visibility ("default"))) PyObject * PyObject_Type(PyObject *o);
__attribute__ ((visibility ("default"))) Py_ssize_t PyObject_Size(PyObject *o);
__attribute__ ((visibility ("default"))) Py_ssize_t PyObject_Length(PyObject *o);
__attribute__ ((visibility ("default"))) PyObject * PyObject_GetItem(PyObject *o, PyObject *key);
__attribute__ ((visibility ("default"))) int PyObject_SetItem(PyObject *o, PyObject *key, PyObject *v);
__attribute__ ((visibility ("default"))) int PyObject_DelItemString(PyObject *o, const char *key);
__attribute__ ((visibility ("default"))) int PyObject_DelItem(PyObject *o, PyObject *key);
__attribute__ ((visibility ("default"))) PyObject * PyObject_Format(PyObject *obj,
                                       PyObject *format_spec);
__attribute__ ((visibility ("default"))) PyObject * PyObject_GetIter(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyObject_GetAIter(PyObject *);
__attribute__ ((visibility ("default"))) int PyIter_Check(PyObject *);
__attribute__ ((visibility ("default"))) int PyAIter_Check(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyIter_Next(PyObject *);
__attribute__ ((visibility ("default"))) PySendResult PyIter_Send(PyObject *, PyObject *, PyObject **);
__attribute__ ((visibility ("default"))) int PyNumber_Check(PyObject *o);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_Add(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_Subtract(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_Multiply(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_MatrixMultiply(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_FloorDivide(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_TrueDivide(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_Remainder(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_Divmod(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_Power(PyObject *o1, PyObject *o2,
                                      PyObject *o3);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_Negative(PyObject *o);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_Positive(PyObject *o);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_Absolute(PyObject *o);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_Invert(PyObject *o);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_Lshift(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_Rshift(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_And(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_Xor(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_Or(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) int PyIndex_Check(PyObject *);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_Index(PyObject *o);
__attribute__ ((visibility ("default"))) Py_ssize_t PyNumber_AsSsize_t(PyObject *o, PyObject *exc);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_Long(PyObject *o);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_Float(PyObject *o);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_InPlaceAdd(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_InPlaceSubtract(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_InPlaceMultiply(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_InPlaceMatrixMultiply(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_InPlaceFloorDivide(PyObject *o1,
                                                   PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_InPlaceTrueDivide(PyObject *o1,
                                                  PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_InPlaceRemainder(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_InPlacePower(PyObject *o1, PyObject *o2,
                                             PyObject *o3);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_InPlaceLshift(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_InPlaceRshift(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_InPlaceAnd(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_InPlaceXor(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_InPlaceOr(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PyNumber_ToBase(PyObject *n, int base);
__attribute__ ((visibility ("default"))) int PySequence_Check(PyObject *o);
__attribute__ ((visibility ("default"))) Py_ssize_t PySequence_Size(PyObject *o);
__attribute__ ((visibility ("default"))) Py_ssize_t PySequence_Length(PyObject *o);
__attribute__ ((visibility ("default"))) PyObject * PySequence_Concat(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PySequence_Repeat(PyObject *o, Py_ssize_t count);
__attribute__ ((visibility ("default"))) PyObject * PySequence_GetItem(PyObject *o, Py_ssize_t i);
__attribute__ ((visibility ("default"))) PyObject * PySequence_GetSlice(PyObject *o, Py_ssize_t i1, Py_ssize_t i2);
__attribute__ ((visibility ("default"))) int PySequence_SetItem(PyObject *o, Py_ssize_t i, PyObject *v);
__attribute__ ((visibility ("default"))) int PySequence_DelItem(PyObject *o, Py_ssize_t i);
__attribute__ ((visibility ("default"))) int PySequence_SetSlice(PyObject *o, Py_ssize_t i1, Py_ssize_t i2,
                                    PyObject *v);
__attribute__ ((visibility ("default"))) int PySequence_DelSlice(PyObject *o, Py_ssize_t i1, Py_ssize_t i2);
__attribute__ ((visibility ("default"))) PyObject * PySequence_Tuple(PyObject *o);
__attribute__ ((visibility ("default"))) PyObject * PySequence_List(PyObject *o);
__attribute__ ((visibility ("default"))) PyObject * PySequence_Fast(PyObject *o, const char* m);
__attribute__ ((visibility ("default"))) Py_ssize_t PySequence_Count(PyObject *o, PyObject *value);
__attribute__ ((visibility ("default"))) int PySequence_Contains(PyObject *seq, PyObject *ob);
__attribute__ ((visibility ("default"))) int PySequence_In(PyObject *o, PyObject *value);
__attribute__ ((visibility ("default"))) Py_ssize_t PySequence_Index(PyObject *o, PyObject *value);
__attribute__ ((visibility ("default"))) PyObject * PySequence_InPlaceConcat(PyObject *o1, PyObject *o2);
__attribute__ ((visibility ("default"))) PyObject * PySequence_InPlaceRepeat(PyObject *o, Py_ssize_t count);
__attribute__ ((visibility ("default"))) int PyMapping_Check(PyObject *o);
__attribute__ ((visibility ("default"))) Py_ssize_t PyMapping_Size(PyObject *o);
__attribute__ ((visibility ("default"))) Py_ssize_t PyMapping_Length(PyObject *o);
__attribute__ ((visibility ("default"))) int PyMapping_HasKeyString(PyObject *o, const char *key);
__attribute__ ((visibility ("default"))) int PyMapping_HasKey(PyObject *o, PyObject *key);
__attribute__ ((visibility ("default"))) int PyMapping_HasKeyWithError(PyObject *o, PyObject *key);
__attribute__ ((visibility ("default"))) int PyMapping_HasKeyStringWithError(PyObject *o, const char *key);
__attribute__ ((visibility ("default"))) PyObject * PyMapping_Keys(PyObject *o);
__attribute__ ((visibility ("default"))) PyObject * PyMapping_Values(PyObject *o);
__attribute__ ((visibility ("default"))) PyObject * PyMapping_Items(PyObject *o);
__attribute__ ((visibility ("default"))) PyObject * PyMapping_GetItemString(PyObject *o,
                                               const char *key);
__attribute__ ((visibility ("default"))) int PyMapping_GetOptionalItem(PyObject *, PyObject *, PyObject **);
__attribute__ ((visibility ("default"))) int PyMapping_GetOptionalItemString(PyObject *, const char *, PyObject **);
__attribute__ ((visibility ("default"))) int PyMapping_SetItemString(PyObject *o, const char *key,
                                        PyObject *value);
__attribute__ ((visibility ("default"))) int PyObject_IsInstance(PyObject *object, PyObject *typeorclass);
__attribute__ ((visibility ("default"))) int PyObject_IsSubclass(PyObject *object, PyObject *typeorclass);
/* +++ BEGIN "cpython/abstract.h" /usr/include/python3.13/cpython/abstract.h */
__attribute__ ((visibility ("default"))) PyObject* _PyObject_CallMethodId(
    PyObject *obj,
    _Py_Identifier *name,
    const char *format, ...);
__attribute__ ((visibility ("default"))) PyObject* _PyStack_AsDict(PyObject *const *values, PyObject *kwnames);
static inline Py_ssize_t
_PyVectorcall_NARGS(size_t n)
{
    return n & ~(((size_t)(1)) << (8 * sizeof(size_t) - 1));
}
__attribute__ ((visibility ("default"))) vectorcallfunc PyVectorcall_Function(PyObject *callable);
__attribute__ ((visibility ("default"))) PyObject * PyObject_VectorcallDict(
    PyObject *callable,
    PyObject *const *args,
    size_t nargsf,
    PyObject *kwargs);
__attribute__ ((visibility ("default"))) PyObject * PyObject_CallOneArg(PyObject *func, PyObject *arg);
static inline PyObject *
PyObject_CallMethodNoArgs(PyObject *self, PyObject *name)
{
    size_t nargsf = 1 | (((size_t)(1)) << (8 * sizeof(size_t) - 1));
    return PyObject_VectorcallMethod(name, &self, nargsf, 
                                                         ((void *)0)
                                                                 );
}
static inline PyObject *
PyObject_CallMethodOneArg(PyObject *self, PyObject *name, PyObject *arg)
{
    PyObject *args[2] = {self, arg};
    size_t nargsf = 2 | (((size_t)(1)) << (8 * sizeof(size_t) - 1));
    
   ((void) sizeof ((
   arg != 
   ((void *)0)) ? 1 : 0), __extension__ ({ if (
   arg != 
   ((void *)0)) ; else __assert_fail (
   "arg != NULL"
   , "/usr/include/python3.13/cpython/abstract.h", 73, __extension__ __PRETTY_FUNCTION__); }))
                      ;
    return PyObject_VectorcallMethod(name, args, nargsf, 
                                                        ((void *)0)
                                                                );
}
__attribute__ ((visibility ("default"))) Py_ssize_t PyObject_LengthHint(PyObject *o, Py_ssize_t);
/* +++ END "cpython/abstract.h" /usr/include/python3.13/cpython/abstract.h */
/* ++ END "abstract.h" /usr/include/python3.13/abstract.h */
/* ++ BEGIN "bltinmodule.h" /usr/include/python3.13/bltinmodule.h */
extern __attribute__ ((visibility ("default"))) PyTypeObject PyFilter_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyMap_Type;
extern __attribute__ ((visibility ("default"))) PyTypeObject PyZip_Type;
/* ++ END "bltinmodule.h" /usr/include/python3.13/bltinmodule.h */
/* ++ BEGIN "critical_section.h" /usr/include/python3.13/critical_section.h */
/* +++ BEGIN "cpython/critical_section.h" /usr/include/python3.13/cpython/critical_section.h */
typedef struct PyCriticalSection PyCriticalSection;
typedef struct PyCriticalSection2 PyCriticalSection2;
__attribute__ ((visibility ("default"))) void
PyCriticalSection_Begin(PyCriticalSection *c, PyObject *op);
__attribute__ ((visibility ("default"))) void
PyCriticalSection_End(PyCriticalSection *c);
__attribute__ ((visibility ("default"))) void
PyCriticalSection2_Begin(PyCriticalSection2 *c, PyObject *a, PyObject *b);
__attribute__ ((visibility ("default"))) void
PyCriticalSection2_End(PyCriticalSection2 *c);
/* +++ END "cpython/critical_section.h" /usr/include/python3.13/cpython/critical_section.h */
/* ++ END "critical_section.h" /usr/include/python3.13/critical_section.h */
/* ++ BEGIN "cpython/pyctype.h" /usr/include/python3.13/cpython/pyctype.h */
extern __attribute__ ((visibility ("default"))) const unsigned int _Py_ctype_table[256];
extern __attribute__ ((visibility ("default"))) const unsigned char _Py_ctype_tolower[256];
extern __attribute__ ((visibility ("default"))) const unsigned char _Py_ctype_toupper[256];
/* ++ END "cpython/pyctype.h" /usr/include/python3.13/cpython/pyctype.h */
/* ++ BEGIN "pystrtod.h" /usr/include/python3.13/pystrtod.h */
__attribute__ ((visibility ("default"))) double PyOS_string_to_double(const char *str,
                                         char **endptr,
                                         PyObject *overflow_exception);
__attribute__ ((visibility ("default"))) char * PyOS_double_to_string(double val,
                                         char format_code,
                                         int precision,
                                         int flags,
                                         int *type);
/* ++ END "pystrtod.h" /usr/include/python3.13/pystrtod.h */
/* ++ BEGIN "pystrcmp.h" /usr/include/python3.13/pystrcmp.h */
__attribute__ ((visibility ("default"))) int PyOS_mystrnicmp(const char *, const char *, Py_ssize_t);
__attribute__ ((visibility ("default"))) int PyOS_mystricmp(const char *, const char *);
/* ++ END "pystrcmp.h" /usr/include/python3.13/pystrcmp.h */
/* ++ BEGIN "fileutils.h" /usr/include/python3.13/fileutils.h */
/* +++ BEGIN <sys/stat.h> /usr/include/x86_64-linux-gnu/sys/stat.h */
]] require 'ffi.req' 'c.sys.stat' ffi.cdef[[
/* +++ END <sys/stat.h> /usr/include/x86_64-linux-gnu/sys/stat.h */
__attribute__ ((visibility ("default"))) wchar_t * Py_DecodeLocale(
    const char *arg,
    size_t *size);
__attribute__ ((visibility ("default"))) char* Py_EncodeLocale(
    const wchar_t *text,
    size_t *error_pos);
/* +++ BEGIN "cpython/fileutils.h" /usr/include/python3.13/cpython/fileutils.h */
__attribute__ ((visibility ("default"))) FILE* _Py_fopen_obj(
    PyObject *path,
    const char *mode);
/* +++ END "cpython/fileutils.h" /usr/include/python3.13/cpython/fileutils.h */
/* ++ END "fileutils.h" /usr/include/python3.13/fileutils.h */
/* ++ BEGIN "cpython/pyfpe.h" /usr/include/python3.13/cpython/pyfpe.h */
/* ++ END "cpython/pyfpe.h" /usr/include/python3.13/cpython/pyfpe.h */
/* ++ BEGIN "cpython/tracemalloc.h" /usr/include/python3.13/cpython/tracemalloc.h */
__attribute__ ((visibility ("default"))) int PyTraceMalloc_Track(
    unsigned int domain,
    uintptr_t ptr,
    size_t size);
__attribute__ ((visibility ("default"))) int PyTraceMalloc_Untrack(
    unsigned int domain,
    uintptr_t ptr);
/* ++ END "cpython/tracemalloc.h" /usr/include/python3.13/cpython/tracemalloc.h */
enum { Py_PYTHON_H = 1 };
/* + END <Python.h> /usr/include/python3.13/Python.h */
]]
