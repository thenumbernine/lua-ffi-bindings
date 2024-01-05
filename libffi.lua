-- WARNING, this is libffi, not luajit ffi
-- will that make my stupid ?/?.lua LUA_PATH rule screw things up?  if so then move this file ... or rename it to libffi.lua or something
local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/x86_64-linux-gnu/ffi.h */
enum { LIBFFI_H = 1 };
enum { X86_64 = 1 };
enum { FFI_TYPE_VOID = 0 };
enum { FFI_TYPE_INT = 1 };
enum { FFI_TYPE_FLOAT = 2 };
enum { FFI_TYPE_DOUBLE = 3 };
enum { FFI_TYPE_LONGDOUBLE = 4 };
enum { FFI_TYPE_UINT8 = 5 };
enum { FFI_TYPE_SINT8 = 6 };
enum { FFI_TYPE_UINT16 = 7 };
enum { FFI_TYPE_SINT16 = 8 };
enum { FFI_TYPE_UINT32 = 9 };
enum { FFI_TYPE_SINT32 = 10 };
enum { FFI_TYPE_UINT64 = 11 };
enum { FFI_TYPE_SINT64 = 12 };
enum { FFI_TYPE_STRUCT = 13 };
enum { FFI_TYPE_POINTER = 14 };
enum { FFI_TYPE_COMPLEX = 15 };
enum { FFI_TYPE_LAST = 15 };
/* ++ BEGIN /usr/include/x86_64-linux-gnu/ffitarget.h */
enum { LIBFFI_TARGET_H = 1 };
enum { X86_ANY = 1 };
enum { FFI_TARGET_SPECIFIC_STACK_SPACE_ALLOCATION = 1 };
enum { FFI_TARGET_HAS_COMPLEX_TYPE = 1 };
typedef unsigned long ffi_arg;
typedef signed long ffi_sarg;
typedef enum ffi_abi { FFI_FIRST_ABI = 1, FFI_UNIX64, FFI_WIN64, FFI_EFI64 = FFI_WIN64, FFI_GNUW64, FFI_LAST_ABI, FFI_DEFAULT_ABI = FFI_UNIX64 } ffi_abi;
enum { FFI_CLOSURES = 1 };
enum { FFI_GO_CLOSURES = 1 };
enum { FFI_TYPE_SMALL_STRUCT_1B = 16 };
enum { FFI_TYPE_SMALL_STRUCT_2B = 17 };
enum { FFI_TYPE_SMALL_STRUCT_4B = 18 };
enum { FFI_TYPE_MS_STRUCT = 19 };
enum { FFI_TRAMPOLINE_SIZE = 32 };
enum { FFI_NATIVE_RAW_API = 0 };
/* +++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/cet.h */
/* +++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/cet.h */
enum { ENDBR_PRESENT = 1 };
/* ++ END   /usr/include/x86_64-linux-gnu/ffitarget.h */
/* ++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
/* ++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/limits.h */
]] require 'ffi.req' 'c.limits' ffi.cdef[[
/* ++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/limits.h */
/* #define FFI_64_BIT_MAX 9223372036854775807 ### string, not number "9.2233720368548e+18" */
/* #  define FFI_LONG_LONG_MAX LLONG_MAX ### string, not number "9.2233720368548e+18" */
typedef struct _ffi_type {
	size_t size;
	unsigned short alignment;
	unsigned short type;
	struct _ffi_type **elements;
} ffi_type;
enum { FFI_API = 1 };
enum { FFI_EXTERN = 0 };
enum { ffi_type_uchar = 0 };
enum { ffi_type_schar = 0 };
enum { ffi_type_ushort = 0 };
enum { ffi_type_sshort = 0 };
enum { ffi_type_uint = 0 };
enum { ffi_type_sint = 0 };
enum { ffi_type_ulong = 0 };
enum { ffi_type_slong = 0 };
extern ffi_type ffi_type_void;
extern ffi_type ffi_type_uint8;
extern ffi_type ffi_type_sint8;
extern ffi_type ffi_type_uint16;
extern ffi_type ffi_type_sint16;
extern ffi_type ffi_type_uint32;
extern ffi_type ffi_type_sint32;
extern ffi_type ffi_type_uint64;
extern ffi_type ffi_type_sint64;
extern ffi_type ffi_type_float;
extern ffi_type ffi_type_double;
extern ffi_type ffi_type_pointer;
extern ffi_type ffi_type_longdouble;
extern ffi_type ffi_type_complex_float;
extern ffi_type ffi_type_complex_double;
extern ffi_type ffi_type_complex_longdouble;
typedef enum { FFI_OK = 0, FFI_BAD_TYPEDEF, FFI_BAD_ABI, FFI_BAD_ARGTYPE } ffi_status;
typedef struct {
	ffi_abi abi;
	unsigned nargs;
	ffi_type **arg_types;
	ffi_type *rtype;
	unsigned bytes;
	unsigned flags;
} ffi_cif;
enum { FFI_SIZEOF_ARG = 8 };
enum { FFI_SIZEOF_JAVA_RAW = 8 };
typedef union {
	ffi_sarg sint;
	ffi_arg uint;
	float flt;
	char data[8];
	void* ptr;
} ffi_raw;
typedef ffi_raw ffi_java_raw;
void ffi_raw_call (ffi_cif *cif, void (*fn)(void), void *rvalue, ffi_raw *avalue);
void ffi_ptrarray_to_raw (ffi_cif *cif, void **args, ffi_raw *raw);
void ffi_raw_to_ptrarray (ffi_cif *cif, ffi_raw *raw, void **args);
size_t ffi_raw_size (ffi_cif *cif);
void ffi_java_raw_call (ffi_cif *cif, void (*fn)(void), void *rvalue, ffi_java_raw *avalue) __attribute__((deprecated));
void ffi_java_ptrarray_to_raw (ffi_cif *cif, void **args, ffi_java_raw *raw) __attribute__((deprecated));
void ffi_java_raw_to_ptrarray (ffi_cif *cif, ffi_java_raw *raw, void **args) __attribute__((deprecated));
size_t ffi_java_raw_size (ffi_cif *cif) __attribute__((deprecated));
typedef struct {
	union { char tramp[32];
	void *ftramp;
};
ffi_cif *cif;
void (*fun)(ffi_cif*,void*,void**,void*);
void *user_data;
} ffi_closure __attribute__((aligned (8)));
void *ffi_closure_alloc (size_t size, void **code);
void ffi_closure_free (void *);
ffi_status ffi_prep_closure (ffi_closure*, ffi_cif *, void (*fun)(ffi_cif*,void*,void**,void*), void *user_data) __attribute__((deprecated ("use ffi_prep_closure_loc instead")));
ffi_status ffi_prep_closure_loc (ffi_closure*, ffi_cif *, void (*fun)(ffi_cif*,void*,void**,void*), void *user_data, void *codeloc);
typedef struct {
	char tramp[32];
	ffi_cif *cif;
	void (*translate_args)(ffi_cif*,void*,void**,void*);
	void *this_closure;
	void (*fun)(ffi_cif*,void*,ffi_raw*,void*);
	void *user_data;
} ffi_raw_closure;
typedef struct {
	char tramp[32];
	ffi_cif *cif;
	void (*translate_args)(ffi_cif*,void*,void**,void*);
	void *this_closure;
	void (*fun)(ffi_cif*,void*,ffi_java_raw*,void*);
	void *user_data;
} ffi_java_raw_closure;
ffi_status ffi_prep_raw_closure (ffi_raw_closure*, ffi_cif *cif, void (*fun)(ffi_cif*,void*,ffi_raw*,void*), void *user_data);
ffi_status ffi_prep_raw_closure_loc (ffi_raw_closure*, ffi_cif *cif, void (*fun)(ffi_cif*,void*,ffi_raw*,void*), void *user_data, void *codeloc);
ffi_status ffi_prep_java_raw_closure (ffi_java_raw_closure*, ffi_cif *cif, void (*fun)(ffi_cif*,void*,ffi_java_raw*,void*), void *user_data) __attribute__((deprecated));
ffi_status ffi_prep_java_raw_closure_loc (ffi_java_raw_closure*, ffi_cif *cif, void (*fun)(ffi_cif*,void*,ffi_java_raw*,void*), void *user_data, void *codeloc) __attribute__((deprecated));
typedef struct {
	void *tramp;
	ffi_cif *cif;
	void (*fun)(ffi_cif*,void*,void**,void*);
} ffi_go_closure;
ffi_status ffi_prep_go_closure (ffi_go_closure*, ffi_cif *, void (*fun)(ffi_cif*,void*,void**,void*));
void ffi_call_go (ffi_cif *cif, void (*fn)(void), void *rvalue, void **avalue, void *closure);
ffi_status ffi_prep_cif(ffi_cif *cif, ffi_abi abi, unsigned int nargs, ffi_type *rtype, ffi_type **atypes);
ffi_status ffi_prep_cif_var(ffi_cif *cif, ffi_abi abi, unsigned int nfixedargs, unsigned int ntotalargs, ffi_type *rtype, ffi_type **atypes);
void ffi_call(ffi_cif *cif, void (*fn)(void), void *rvalue, void **avalue);
ffi_status ffi_get_struct_offsets (ffi_abi abi, ffi_type *struct_type, size_t *offsets);
/* + END   /usr/include/x86_64-linux-gnu/ffi.h */
]]
return require 'ffi.load' 'ffi'
