local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Users/Chris/include/SDL2/SDL.h */
enum { SDL_h_ = 1 };
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_main.h */
enum { SDL_main_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
enum { SDL_stdinc_h_ = 1 };
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_config.h */
enum { SDL_config_h_ = 1 };
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_platform.h */
enum { SDL_platform_h_ = 1 };
enum { HAVE_WINAPIFAMILY_H = 1 };
/* ++++++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/shared/winapifamily.h */
/* ++++++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/shared/winapifamily.h */
enum { WINAPI_FAMILY_WINRT = 0 };
enum { SDL_WINAPI_FAMILY_PHONE = 0 };
/* ++++++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #    define SDL_DEPRECATED __declspec(deprecated) ### string, not number "__declspec(deprecated)" */
enum { SDL_UNUSED = 1 };
enum { DECLSPEC = 1 };
enum { SDLCALL = 0 };
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
enum { SDL_INLINE = 0 };
enum { SDL_FORCE_INLINE = 0 };
/* #define SDL_NORETURN __declspec(noreturn) ### string, not number "__declspec(noreturn)" */
/* #define NULL ((void *)0) ### string, not number "((void *)0)" */
enum { SDL_HAS_FALLTHROUGH = 0 };
/* #define SDL_FALLTHROUGH do {} while (0) ### string, not number "do {} while (0)" */
/* ++++++ END   C:/Users/Chris/include/SDL2/begin_code.h */
extern const char * __cdecl SDL_GetPlatform (void);
/* ++++++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* ++++++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_platform.h */
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_config_windows.h */
enum { SIZEOF_VOIDP = 8 };
enum { HAVE_DDRAW_H = 1 };
enum { HAVE_DINPUT_H = 1 };
enum { HAVE_DSOUND_H = 1 };
enum { HAVE_DXGI_H = 1 };
enum { HAVE_XINPUT_H = 1 };
enum { HAVE_MMDEVICEAPI_H = 1 };
enum { HAVE_AUDIOCLIENT_H = 1 };
enum { HAVE_TPCSHRD_H = 1 };
enum { HAVE_SENSORSAPI_H = 1 };
enum { HAVE_IMMINTRIN_H = 1 };
enum { HAVE_STDARG_H = 1 };
enum { HAVE_STDDEF_H = 1 };
enum { SDL_AUDIO_DRIVER_WASAPI = 1 };
enum { SDL_AUDIO_DRIVER_DSOUND = 1 };
enum { SDL_AUDIO_DRIVER_WINMM = 1 };
enum { SDL_AUDIO_DRIVER_DISK = 1 };
enum { SDL_AUDIO_DRIVER_DUMMY = 1 };
enum { SDL_JOYSTICK_DINPUT = 1 };
enum { SDL_JOYSTICK_HIDAPI = 1 };
enum { SDL_JOYSTICK_RAWINPUT = 1 };
enum { SDL_JOYSTICK_VIRTUAL = 1 };
enum { SDL_JOYSTICK_XINPUT = 1 };
enum { SDL_HAPTIC_DINPUT = 1 };
enum { SDL_HAPTIC_XINPUT = 1 };
enum { SDL_SENSOR_WINDOWS = 1 };
enum { SDL_LOADSO_WINDOWS = 1 };
enum { SDL_THREAD_GENERIC_COND_SUFFIX = 1 };
enum { SDL_THREAD_WINDOWS = 1 };
enum { SDL_TIMER_WINDOWS = 1 };
enum { SDL_VIDEO_DRIVER_DUMMY = 1 };
enum { SDL_VIDEO_DRIVER_WINDOWS = 1 };
enum { SDL_VIDEO_RENDER_D3D = 1 };
enum { SDL_VIDEO_OPENGL = 1 };
enum { SDL_VIDEO_OPENGL_WGL = 1 };
enum { SDL_VIDEO_RENDER_OGL = 1 };
enum { SDL_VIDEO_RENDER_OGL_ES2 = 1 };
enum { SDL_VIDEO_OPENGL_ES2 = 1 };
enum { SDL_VIDEO_OPENGL_EGL = 1 };
enum { SDL_VIDEO_VULKAN = 1 };
enum { SDL_POWER_WINDOWS = 1 };
enum { SDL_FILESYSTEM_WINDOWS = 1 };
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_config_windows.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_config.h */
/* ++++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/stddef.h */
/* ++++ BEGIN C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.41.34120/include/stdarg.h */
]] require 'ffi.req' 'c.stdarg' ffi.cdef[[
/* ++++ END   C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.41.34120/include/stdarg.h */
/* ++++ BEGIN C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.41.34120/include/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* ++++ END   C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.41.34120/include/stdint.h */
/* # define SDL_SIZE_MAX SIZE_MAX ### string, not number "SIZE_MAX" */
typedef enum { SDL_FALSE = 0, SDL_TRUE = 1 } SDL_bool;
/* #define SDL_MAX_SINT8   ((Sint8)0x7F) ### string, not number "((Sint8)0x7F)" */
/* #define SDL_MIN_SINT8   ((Sint8)(~0x7F)) ### string, not number "((Sint8)(~0x7F))" */
typedef int8_t Sint8;
/* #define SDL_MAX_UINT8   ((Uint8)0xFF) ### string, not number "((Uint8)0xFF)" */
/* #define SDL_MIN_UINT8   ((Uint8)0x00) ### string, not number "((Uint8)0x00)" */
typedef uint8_t Uint8;
/* #define SDL_MAX_SINT16  ((Sint16)0x7FFF) ### string, not number "((Sint16)0x7FFF)" */
/* #define SDL_MIN_SINT16  ((Sint16)(~0x7FFF)) ### string, not number "((Sint16)(~0x7FFF))" */
typedef int16_t Sint16;
/* #define SDL_MAX_UINT16  ((Uint16)0xFFFF) ### string, not number "((Uint16)0xFFFF)" */
/* #define SDL_MIN_UINT16  ((Uint16)0x0000) ### string, not number "((Uint16)0x0000)" */
typedef uint16_t Uint16;
/* #define SDL_MAX_SINT32  ((Sint32)0x7FFFFFFF) ### string, not number "((Sint32)0x7FFFFFFF)" */
/* #define SDL_MIN_SINT32  ((Sint32)(~0x7FFFFFFF)) ### string, not number "((Sint32)(~0x7FFFFFFF))" */
typedef int32_t Sint32;
/* #define SDL_MAX_UINT32  ((Uint32)0xFFFFFFFFu) ### string, not number "((Uint32)0xFFFFFFFFu)" */
/* #define SDL_MIN_UINT32  ((Uint32)0x00000000) ### string, not number "((Uint32)0x00000000)" */
typedef uint32_t Uint32;
/* #define SDL_MAX_SINT64  ((Sint64)0x7FFFFFFFFFFFFFFFll) ### string, not number "((Sint64)0x7FFFFFFFFFFFFFFFll)" */
/* #define SDL_MIN_SINT64  ((Sint64)(~0x7FFFFFFFFFFFFFFFll)) ### string, not number "((Sint64)(~0x7FFFFFFFFFFFFFFFll))" */
typedef int64_t Sint64;
/* #define SDL_MAX_UINT64  ((Uint64)0xFFFFFFFFFFFFFFFFull) ### string, not number "((Uint64)0xFFFFFFFFFFFFFFFFull)" */
/* #define SDL_MIN_UINT64  ((Uint64)(0x0000000000000000ull)) ### string, not number "((Uint64)(0x0000000000000000ull))" */
typedef uint64_t Uint64;
/* #define SDL_FLT_EPSILON 1.1920928955078125e-07F ### string, not number "1.1920928955078125e-07F" */
/* #define SDL_PRIs64 "I64d" ### string, not number "\"I64d\"" */
/* #define SDL_PRIu64 "I64u" ### string, not number "\"I64u\"" */
/* #define SDL_PRIx64 "I64x" ### string, not number "\"I64x\"" */
/* #define SDL_PRIX64 "I64X" ### string, not number "\"I64X\"" */
/* #define SDL_PRIs32 "d" ### string, not number "\"d\"" */
/* #define SDL_PRIu32 "u" ### string, not number "\"u\"" */
/* #define SDL_PRIx32 "x" ### string, not number "\"x\"" */
/* #define SDL_PRIX32 "X" ### string, not number "\"X\"" */
enum { SDL_PRINTF_FORMAT_STRING = 0 };
enum { SDL_SCANF_FORMAT_STRING = 0 };
typedef int SDL_compile_time_assert_uint8[( sizeof(Uint8) == 1) * 2 - 1];
typedef int SDL_compile_time_assert_sint8[( sizeof(Sint8) == 1) * 2 - 1];
typedef int SDL_compile_time_assert_uint16[( sizeof(Uint16) == 2) * 2 - 1];
typedef int SDL_compile_time_assert_sint16[( sizeof(Sint16) == 2) * 2 - 1];
typedef int SDL_compile_time_assert_uint32[( sizeof(Uint32) == 4) * 2 - 1];
typedef int SDL_compile_time_assert_sint32[( sizeof(Sint32) == 4) * 2 - 1];
typedef int SDL_compile_time_assert_uint64[( sizeof(Uint64) == 8) * 2 - 1];
typedef int SDL_compile_time_assert_sint64[( sizeof(Sint64) == 8) * 2 - 1];
typedef enum { DUMMY_ENUM_VALUE } SDL_DUMMY_ENUM;
typedef int SDL_compile_time_assert_enum[( sizeof(SDL_DUMMY_ENUM) == sizeof(int)) * 2 - 1];
/* ++++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* ++++ END   C:/Users/Chris/include/SDL2/begin_code.h */
extern void *__cdecl SDL_malloc(size_t size);
extern void *__cdecl SDL_calloc(size_t nmemb, size_t size);
extern void *__cdecl SDL_realloc(void *mem, size_t size);
extern void __cdecl SDL_free(void *mem);
typedef void *(__cdecl *SDL_malloc_func)(size_t size);
typedef void *(__cdecl *SDL_calloc_func)(size_t nmemb, size_t size);
typedef void *(__cdecl *SDL_realloc_func)(void *mem, size_t size);
typedef void (__cdecl *SDL_free_func)(void *mem);
extern void __cdecl SDL_GetOriginalMemoryFunctions(SDL_malloc_func *malloc_func, SDL_calloc_func *calloc_func, SDL_realloc_func *realloc_func, SDL_free_func *free_func);
extern void __cdecl SDL_GetMemoryFunctions(SDL_malloc_func *malloc_func, SDL_calloc_func *calloc_func, SDL_realloc_func *realloc_func, SDL_free_func *free_func);
extern int __cdecl SDL_SetMemoryFunctions(SDL_malloc_func malloc_func, SDL_calloc_func calloc_func, SDL_realloc_func realloc_func, SDL_free_func free_func);
extern int __cdecl SDL_GetNumAllocations(void);
extern char *__cdecl SDL_getenv(const char *name);
extern int __cdecl SDL_setenv(const char *name, const char *value, int overwrite);
extern void __cdecl SDL_qsort(void *base, size_t nmemb, size_t size, int (__cdecl *compare) (const void *, const void *));
extern void * __cdecl SDL_bsearch(const void *key, const void *base, size_t nmemb, size_t size, int (__cdecl *compare) (const void *, const void *));
extern int __cdecl SDL_abs(int x);
extern int __cdecl SDL_isalpha(int x);
extern int __cdecl SDL_isalnum(int x);
extern int __cdecl SDL_isblank(int x);
extern int __cdecl SDL_iscntrl(int x);
extern int __cdecl SDL_isdigit(int x);
extern int __cdecl SDL_isxdigit(int x);
extern int __cdecl SDL_ispunct(int x);
extern int __cdecl SDL_isspace(int x);
extern int __cdecl SDL_isupper(int x);
extern int __cdecl SDL_islower(int x);
extern int __cdecl SDL_isprint(int x);
extern int __cdecl SDL_isgraph(int x);
extern int __cdecl SDL_toupper(int x);
extern int __cdecl SDL_tolower(int x);
extern Uint16 __cdecl SDL_crc16(Uint16 crc, const void *data, size_t len);
extern Uint32 __cdecl SDL_crc32(Uint32 crc, const void *data, size_t len);
extern void *__cdecl SDL_memset( void *dst, int c, size_t len);
extern void *__cdecl SDL_memcpy( void *dst, const void *src, size_t len);
extern void *__cdecl SDL_memmove( void *dst, const void *src, size_t len);
extern int __cdecl SDL_memcmp(const void *s1, const void *s2, size_t len);
extern size_t __cdecl SDL_wcslen(const wchar_t *wstr);
extern size_t __cdecl SDL_wcslcpy( wchar_t *dst, const wchar_t *src, size_t maxlen);
extern size_t __cdecl SDL_wcslcat( wchar_t *dst, const wchar_t *src, size_t maxlen);
extern wchar_t *__cdecl SDL_wcsdup(const wchar_t *wstr);
extern wchar_t *__cdecl SDL_wcsstr(const wchar_t *haystack, const wchar_t *needle);
extern int __cdecl SDL_wcscmp(const wchar_t *str1, const wchar_t *str2);
extern int __cdecl SDL_wcsncmp(const wchar_t *str1, const wchar_t *str2, size_t maxlen);
extern int __cdecl SDL_wcscasecmp(const wchar_t *str1, const wchar_t *str2);
extern int __cdecl SDL_wcsncasecmp(const wchar_t *str1, const wchar_t *str2, size_t len);
extern size_t __cdecl SDL_strlen(const char *str);
extern size_t __cdecl SDL_strlcpy( char *dst, const char *src, size_t maxlen);
extern size_t __cdecl SDL_utf8strlcpy( char *dst, const char *src, size_t dst_bytes);
extern size_t __cdecl SDL_strlcat( char *dst, const char *src, size_t maxlen);
extern char *__cdecl SDL_strdup(const char *str);
extern char *__cdecl SDL_strrev(char *str);
extern char *__cdecl SDL_strupr(char *str);
extern char *__cdecl SDL_strlwr(char *str);
extern char *__cdecl SDL_strchr(const char *str, int c);
extern char *__cdecl SDL_strrchr(const char *str, int c);
extern char *__cdecl SDL_strstr(const char *haystack, const char *needle);
extern char *__cdecl SDL_strcasestr(const char *haystack, const char *needle);
extern char *__cdecl SDL_strtokr(char *s1, const char *s2, char **saveptr);
extern size_t __cdecl SDL_utf8strlen(const char *str);
extern size_t __cdecl SDL_utf8strnlen(const char *str, size_t bytes);
extern char *__cdecl SDL_itoa(int value, char *str, int radix);
extern char *__cdecl SDL_uitoa(unsigned int value, char *str, int radix);
extern char *__cdecl SDL_ltoa(long value, char *str, int radix);
extern char *__cdecl SDL_ultoa(unsigned long value, char *str, int radix);
extern char *__cdecl SDL_lltoa(Sint64 value, char *str, int radix);
extern char *__cdecl SDL_ulltoa(Uint64 value, char *str, int radix);
extern int __cdecl SDL_atoi(const char *str);
extern double __cdecl SDL_atof(const char *str);
extern long __cdecl SDL_strtol(const char *str, char **endp, int base);
extern unsigned long __cdecl SDL_strtoul(const char *str, char **endp, int base);
extern Sint64 __cdecl SDL_strtoll(const char *str, char **endp, int base);
extern Uint64 __cdecl SDL_strtoull(const char *str, char **endp, int base);
extern double __cdecl SDL_strtod(const char *str, char **endp);
extern int __cdecl SDL_strcmp(const char *str1, const char *str2);
extern int __cdecl SDL_strncmp(const char *str1, const char *str2, size_t maxlen);
extern int __cdecl SDL_strcasecmp(const char *str1, const char *str2);
extern int __cdecl SDL_strncasecmp(const char *str1, const char *str2, size_t len);
extern int __cdecl SDL_sscanf(const char *text, const char *fmt, ...);
extern int __cdecl SDL_vsscanf(const char *text, const char *fmt, va_list ap);
extern int __cdecl SDL_snprintf( char *text, size_t maxlen, const char *fmt, ... );
extern int __cdecl SDL_vsnprintf( char *text, size_t maxlen, const char *fmt, va_list ap);
extern int __cdecl SDL_asprintf(char **strp, const char *fmt, ...);
extern int __cdecl SDL_vasprintf(char **strp, const char *fmt, va_list ap);
/* #define M_PI    3.14159265358979323846264338327950288 ### string, not number "3.14159265358979323846264338327950288" */
extern double __cdecl SDL_acos(double x);
extern float __cdecl SDL_acosf(float x);
extern double __cdecl SDL_asin(double x);
extern float __cdecl SDL_asinf(float x);
extern double __cdecl SDL_atan(double x);
extern float __cdecl SDL_atanf(float x);
extern double __cdecl SDL_atan2(double y, double x);
extern float __cdecl SDL_atan2f(float y, float x);
extern double __cdecl SDL_ceil(double x);
extern float __cdecl SDL_ceilf(float x);
extern double __cdecl SDL_copysign(double x, double y);
extern float __cdecl SDL_copysignf(float x, float y);
extern double __cdecl SDL_cos(double x);
extern float __cdecl SDL_cosf(float x);
extern double __cdecl SDL_exp(double x);
extern float __cdecl SDL_expf(float x);
extern double __cdecl SDL_fabs(double x);
extern float __cdecl SDL_fabsf(float x);
extern double __cdecl SDL_floor(double x);
extern float __cdecl SDL_floorf(float x);
extern double __cdecl SDL_trunc(double x);
extern float __cdecl SDL_truncf(float x);
extern double __cdecl SDL_fmod(double x, double y);
extern float __cdecl SDL_fmodf(float x, float y);
extern double __cdecl SDL_log(double x);
extern float __cdecl SDL_logf(float x);
extern double __cdecl SDL_log10(double x);
extern float __cdecl SDL_log10f(float x);
extern double __cdecl SDL_pow(double x, double y);
extern float __cdecl SDL_powf(float x, float y);
extern double __cdecl SDL_round(double x);
extern float __cdecl SDL_roundf(float x);
extern long __cdecl SDL_lround(double x);
extern long __cdecl SDL_lroundf(float x);
extern double __cdecl SDL_scalbn(double x, int n);
extern float __cdecl SDL_scalbnf(float x, int n);
extern double __cdecl SDL_sin(double x);
extern float __cdecl SDL_sinf(float x);
extern double __cdecl SDL_sqrt(double x);
extern float __cdecl SDL_sqrtf(float x);
extern double __cdecl SDL_tan(double x);
extern float __cdecl SDL_tanf(float x);
enum { SDL_ICONV_ERROR = -1 };
enum { SDL_ICONV_E2BIG = -2 };
enum { SDL_ICONV_EILSEQ = -3 };
enum { SDL_ICONV_EINVAL = -4 };
typedef struct _SDL_iconv_t *SDL_iconv_t;
extern SDL_iconv_t __cdecl SDL_iconv_open(const char *tocode, const char *fromcode);
extern int __cdecl SDL_iconv_close(SDL_iconv_t cd);
extern size_t __cdecl SDL_iconv(SDL_iconv_t cd, const char **inbuf, size_t * inbytesleft, char **outbuf, size_t * outbytesleft);
extern char *__cdecl SDL_iconv_string(const char *tocode, const char *fromcode, const char *inbuf, size_t inbytesleft);
/* ++++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* ++++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
enum { SDL_MAIN_AVAILABLE = 1 };
enum { SDLMAIN_DECLSPEC = 1 };
enum { main = 0 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
typedef int (*SDL_main_func)(int argc, char *argv[]);
extern int SDL_main(int argc, char *argv[]);
extern void __cdecl SDL_SetMainReady(void);
extern int __cdecl SDL_RegisterApp(const char *name, Uint32 style, void *hInst);
extern void __cdecl SDL_UnregisterApp(void);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_main.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_assert.h */
enum { SDL_assert_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
enum { SDL_ASSERT_LEVEL = 1 };
extern void __cdecl __debugbreak(void);
enum { SDL_FUNCTION = 0 };
enum { SDL_FILE = 0 };
enum { SDL_LINE = 0 };
/* #define SDL_NULL_WHILE_LOOP_CONDITION (0,0) ### string, not number "(0,0)" */
typedef enum { SDL_ASSERTION_RETRY, SDL_ASSERTION_BREAK, SDL_ASSERTION_ABORT, SDL_ASSERTION_IGNORE, SDL_ASSERTION_ALWAYS_IGNORE } SDL_AssertState;
typedef struct SDL_AssertData {
	int always_ignore;
	unsigned int trigger_count;
	const char *condition;
	const char *filename;
	int linenum;
	const char *function;
	const struct SDL_AssertData *next;
} SDL_AssertData;
extern SDL_AssertState __cdecl SDL_ReportAssertion(SDL_AssertData *, const char *, const char *, int);
typedef SDL_AssertState (__cdecl *SDL_AssertionHandler)( const SDL_AssertData* data, void* userdata);
extern void __cdecl SDL_SetAssertionHandler( SDL_AssertionHandler handler, void *userdata);
extern SDL_AssertionHandler __cdecl SDL_GetDefaultAssertionHandler(void);
extern SDL_AssertionHandler __cdecl SDL_GetAssertionHandler(void **puserdata);
extern const SDL_AssertData * __cdecl SDL_GetAssertionReport(void);
extern void __cdecl SDL_ResetAssertionReport(void);
enum { SDL_assert_state = 0 };
enum { SDL_assert_data = 0 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_assert.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_atomic.h */
enum { SDL_atomic_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_platform.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_platform.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
typedef int SDL_SpinLock;
extern SDL_bool __cdecl SDL_AtomicTryLock(SDL_SpinLock *lock);
extern void __cdecl SDL_AtomicLock(SDL_SpinLock *lock);
extern void __cdecl SDL_AtomicUnlock(SDL_SpinLock *lock);
void _ReadWriteBarrier(void);
/* #pragma intrinsic(_ReadWriteBarrier) */
extern void __cdecl SDL_MemoryBarrierReleaseFunction(void);
extern void __cdecl SDL_MemoryBarrierAcquireFunction(void);
typedef struct { int value; } SDL_atomic_t;
extern SDL_bool __cdecl SDL_AtomicCAS(SDL_atomic_t *a, int oldval, int newval);
extern int __cdecl SDL_AtomicSet(SDL_atomic_t *a, int v);
extern int __cdecl SDL_AtomicGet(SDL_atomic_t *a);
extern int __cdecl SDL_AtomicAdd(SDL_atomic_t *a, int v);
extern SDL_bool __cdecl SDL_AtomicCASPtr(void **a, void *oldval, void *newval);
extern void* __cdecl SDL_AtomicSetPtr(void **a, void* v);
extern void* __cdecl SDL_AtomicGetPtr(void **a);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_atomic.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_audio.h */
enum { SDL_audio_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_error.h */
enum { SDL_error_h_ = 1 };
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* ++++ END   C:/Users/Chris/include/SDL2/begin_code.h */
extern int __cdecl SDL_SetError( const char *fmt, ...);
extern const char *__cdecl SDL_GetError(void);
extern char * __cdecl SDL_GetErrorMsg(char *errstr, int maxlen);
extern void __cdecl SDL_ClearError(void);
typedef enum { SDL_ENOMEM, SDL_EFREAD, SDL_EFWRITE, SDL_EFSEEK, SDL_UNSUPPORTED, SDL_LASTERROR } SDL_errorcode;
extern int __cdecl SDL_Error(SDL_errorcode code);
/* ++++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* ++++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_error.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_endian.h */
enum { SDL_endian_h_ = 1 };
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ BEGIN C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.41.34120/include/intrin.h */
/* ++++ END   C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.41.34120/include/intrin.h */
enum { SDL_LIL_ENDIAN = 1234 };
enum { SDL_BIG_ENDIAN = 4321 };
enum { SDL_BYTEORDER = 1234 };
enum { SDL_FLOATWORDORDER = 1234 };
/* ++++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* ++++ END   C:/Users/Chris/include/SDL2/begin_code.h */
enum { HAS_BUILTIN_BSWAP16 = 0 };
enum { HAS_BUILTIN_BSWAP32 = 0 };
enum { HAS_BUILTIN_BSWAP64 = 0 };
enum { HAS_BROKEN_BSWAP = 0 };
/* #pragma intrinsic(_byteswap_ushort) */
/* #pragma intrinsic(_byteswap_ulong) */
/* #pragma intrinsic(_byteswap_uint64) */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* ++++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_endian.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_mutex.h */
enum { SDL_mutex_h_ = 1 };
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_error.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_error.h */
/* #define SDL_SCOPED_CAPABILITY    SDL_THREAD_ANNOTATION_ATTRIBUTE__(scoped_lockable) ### string, not number "SDL_THREAD_ANNOTATION_ATTRIBUTE__(scoped_lockable)" */
/* #define SDL_NO_THREAD_SAFETY_ANALYSIS    SDL_THREAD_ANNOTATION_ATTRIBUTE__(no_thread_safety_analysis) ### string, not number "SDL_THREAD_ANNOTATION_ATTRIBUTE__(no_thread_safety_analysis)" */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* ++++ END   C:/Users/Chris/include/SDL2/begin_code.h */
enum { SDL_MUTEX_TIMEDOUT = 1 };
/* #define SDL_MUTEX_MAXWAIT   (~(Uint32)0) ### string, not number "(~(Uint32)0)" */
struct SDL_mutex;
typedef struct SDL_mutex SDL_mutex;
extern SDL_mutex *__cdecl SDL_CreateMutex(void);
extern int __cdecl SDL_LockMutex(SDL_mutex * mutex);
extern int __cdecl SDL_TryLockMutex(SDL_mutex * mutex);
extern int __cdecl SDL_UnlockMutex(SDL_mutex * mutex);
extern void __cdecl SDL_DestroyMutex(SDL_mutex * mutex);
struct SDL_semaphore;
typedef struct SDL_semaphore SDL_sem;
extern SDL_sem *__cdecl SDL_CreateSemaphore(Uint32 initial_value);
extern void __cdecl SDL_DestroySemaphore(SDL_sem * sem);
extern int __cdecl SDL_SemWait(SDL_sem * sem);
extern int __cdecl SDL_SemTryWait(SDL_sem * sem);
extern int __cdecl SDL_SemWaitTimeout(SDL_sem *sem, Uint32 timeout);
extern int __cdecl SDL_SemPost(SDL_sem * sem);
extern Uint32 __cdecl SDL_SemValue(SDL_sem * sem);
struct SDL_cond;
typedef struct SDL_cond SDL_cond;
extern SDL_cond *__cdecl SDL_CreateCond(void);
extern void __cdecl SDL_DestroyCond(SDL_cond * cond);
extern int __cdecl SDL_CondSignal(SDL_cond * cond);
extern int __cdecl SDL_CondBroadcast(SDL_cond * cond);
extern int __cdecl SDL_CondWait(SDL_cond * cond, SDL_mutex * mutex);
extern int __cdecl SDL_CondWaitTimeout(SDL_cond * cond, SDL_mutex * mutex, Uint32 ms);
/* ++++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* ++++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_mutex.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_thread.h */
enum { SDL_thread_h_ = 1 };
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_error.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_error.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_atomic.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_atomic.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_mutex.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_mutex.h */
/* ++++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/process.h */
/* +++++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_startup.h */
/* ++++++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/math.h */
/* +++++++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_math.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
struct _exception {
	int type;
	char* name;
	double arg1;
	double arg2;
	double retval;
};
struct _complex {
	double x, y;
};
typedef float float_t;
typedef double double_t;
extern double const _HUGE;
/* #define INFINITY   ((float)(_HUGE_ENUF * _HUGE_ENUF)) ### string, not number "((float)(_HUGE_ENUF * _HUGE_ENUF))" */
/* #define HUGE_VAL   ((double)INFINITY) ### string, not number "((double)INFINITY)" */
/* #define HUGE_VALF  ((float)INFINITY) ### string, not number "((float)INFINITY)" */
/* #define HUGE_VALL  ((long double)INFINITY) ### string, not number "((long double)INFINITY)" */
/* #define NAN        (-(float)(INFINITY * 0.0F)) ### string, not number "(-(float)(INFINITY * 0.0F))" */
enum { FP_INFINITE = 1 };
enum { FP_NAN = 2 };
enum { FP_NORMAL = -1 };
enum { FP_SUBNORMAL = -2 };
enum { FP_ZERO = 0 };
enum { FP_ILOGB0 = -2147483648 };
enum { FP_ILOGBNAN = 2147483647 };
enum { MATH_ERRNO = 1 };
enum { MATH_ERREXCEPT = 2 };
enum { math_errhandling = 3 };
void __cdecl _fperrraise( int _Except);
short __cdecl _dclass( double _X);
short __cdecl _ldclass( long double _X);
short __cdecl _fdclass( float _X);
int __cdecl _dsign( double _X);
int __cdecl _ldsign( long double _X);
int __cdecl _fdsign( float _X);
int __cdecl _dpcomp( double _X, double _Y);
int __cdecl _ldpcomp( long double _X, long double _Y);
int __cdecl _fdpcomp( float _X, float _Y);
short __cdecl _dtest( double* _Px);
short __cdecl _ldtest( long double* _Px);
short __cdecl _fdtest( float* _Px);
short __cdecl _d_int( double* _Px, short _Xexp);
short __cdecl _ld_int( long double* _Px, short _Xexp);
short __cdecl _fd_int( float* _Px, short _Xexp);
short __cdecl _dscale( double* _Px, long _Lexp);
short __cdecl _ldscale( long double* _Px, long _Lexp);
short __cdecl _fdscale( float* _Px, long _Lexp);
short __cdecl _dunscale( short* _Pex, double* _Px);
short __cdecl _ldunscale( short* _Pex, long double* _Px);
short __cdecl _fdunscale( short* _Pex, float* _Px);
short __cdecl _dexp( double* _Px, double _Y, long _Eoff);
short __cdecl _ldexp( long double* _Px, long double _Y, long _Eoff);
short __cdecl _fdexp( float* _Px, float _Y, long _Eoff);
short __cdecl _dnorm( unsigned short* _Ps);
short __cdecl _fdnorm( unsigned short* _Ps);
double __cdecl _dpoly( double _X, double const* _Tab, int _N);
long double __cdecl _ldpoly( long double _X, long double const* _Tab, int _N);
float __cdecl _fdpoly( float _X, float const* _Tab, int _N);
double __cdecl _dlog( double _X, int _Baseflag);
long double __cdecl _ldlog( long double _X, int _Baseflag);
float __cdecl _fdlog( float _X, int _Baseflag);
double __cdecl _dsin( double _X, unsigned int _Qoff);
long double __cdecl _ldsin( long double _X, unsigned int _Qoff);
float __cdecl _fdsin( float _X, unsigned int _Qoff);
typedef union {
	unsigned short _Sh[4];
	double _Val;
} _double_val;
typedef union {
	unsigned short _Sh[2];
	float _Val;
} _float_val;
typedef union {
	unsigned short _Sh[4];
	long double _Val;
} _ldouble_val;
typedef union {
	unsigned short _Word[4];
	float _Float;
	double _Double;
	long double _Long_double;
} _float_const;
extern const _float_const _Denorm_C, _Inf_C, _Nan_C, _Snan_C, _Hugeval_C;
extern const _float_const _FDenorm_C, _FInf_C, _FNan_C, _FSnan_C;
extern const _float_const _LDenorm_C, _LInf_C, _LNan_C, _LSnan_C;
extern const _float_const _Eps_C, _Rteps_C;
extern const _float_const _FEps_C, _FRteps_C;
extern const _float_const _LEps_C, _LRteps_C;
extern const double _Zero_C, _Xbig_C;
extern const float _FZero_C, _FXbig_C;
extern const long double _LZero_C, _LXbig_C;
int __cdecl abs( int _X);
long __cdecl labs( long _X);
long long __cdecl llabs( long long _X);
double __cdecl acos( double _X);
double __cdecl asin( double _X);
double __cdecl atan( double _X);
double __cdecl atan2( double _Y, double _X);
double __cdecl cos( double _X);
double __cdecl cosh( double _X);
double __cdecl exp( double _X);
double __cdecl fabs( double _X);
double __cdecl fmod( double _X, double _Y);
double __cdecl log( double _X);
double __cdecl log10( double _X);
double __cdecl pow( double _X, double _Y);
double __cdecl sin( double _X);
double __cdecl sinh( double _X);
double __cdecl sqrt( double _X);
double __cdecl tan( double _X);
double __cdecl tanh( double _X);
double __cdecl acosh( double _X);
double __cdecl asinh( double _X);
double __cdecl atanh( double _X);
double __cdecl atof( char const* _String);
double __cdecl _atof_l( char const* _String, _locale_t _Locale);
double __cdecl _cabs( struct _complex _Complex_value);
double __cdecl cbrt( double _X);
double __cdecl ceil( double _X);
double __cdecl _chgsign( double _X);
double __cdecl copysign( double _Number, double _Sign);
double __cdecl _copysign( double _Number, double _Sign);
double __cdecl erf( double _X);
double __cdecl erfc( double _X);
double __cdecl exp2( double _X);
double __cdecl expm1( double _X);
double __cdecl fdim( double _X, double _Y);
double __cdecl floor( double _X);
double __cdecl fma( double _X, double _Y, double _Z);
double __cdecl fmax( double _X, double _Y);
double __cdecl fmin( double _X, double _Y);
double __cdecl frexp( double _X, int* _Y);
double __cdecl hypot( double _X, double _Y);
double __cdecl _hypot( double _X, double _Y);
int __cdecl ilogb( double _X);
double __cdecl ldexp( double _X, int _Y);
double __cdecl lgamma( double _X);
long long __cdecl llrint( double _X);
long long __cdecl llround( double _X);
double __cdecl log1p( double _X);
double __cdecl log2( double _X);
double __cdecl logb( double _X);
long __cdecl lrint( double _X);
long __cdecl lround( double _X);
int __cdecl _matherr( struct _exception* _Except);
double __cdecl modf( double _X, double* _Y);
double __cdecl nan( char const* _X);
double __cdecl nearbyint( double _X);
double __cdecl nextafter( double _X, double _Y);
double __cdecl nexttoward( double _X, long double _Y);
double __cdecl remainder( double _X, double _Y);
double __cdecl remquo( double _X, double _Y, int* _Z);
double __cdecl rint( double _X);
double __cdecl round( double _X);
double __cdecl scalbln( double _X, long _Y);
double __cdecl scalbn( double _X, int _Y);
double __cdecl tgamma( double _X);
double __cdecl trunc( double _X);
double __cdecl _j0( double _X );
double __cdecl _j1( double _X );
double __cdecl _jn(int _X, double _Y);
double __cdecl _y0( double _X);
double __cdecl _y1( double _X);
double __cdecl _yn( int _X, double _Y);
float __cdecl acoshf( float _X);
float __cdecl asinhf( float _X);
float __cdecl atanhf( float _X);
float __cdecl cbrtf( float _X);
float __cdecl _chgsignf( float _X);
float __cdecl copysignf( float _Number, float _Sign);
float __cdecl _copysignf( float _Number, float _Sign);
float __cdecl erff( float _X);
float __cdecl erfcf( float _X);
float __cdecl expm1f( float _X);
float __cdecl exp2f( float _X);
float __cdecl fdimf( float _X, float _Y);
float __cdecl fmaf( float _X, float _Y, float _Z);
float __cdecl fmaxf( float _X, float _Y);
float __cdecl fminf( float _X, float _Y);
float __cdecl _hypotf( float _X, float _Y);
int __cdecl ilogbf( float _X);
float __cdecl lgammaf( float _X);
long long __cdecl llrintf( float _X);
long long __cdecl llroundf( float _X);
float __cdecl log1pf( float _X);
float __cdecl log2f( float _X);
float __cdecl logbf( float _X);
long __cdecl lrintf( float _X);
long __cdecl lroundf( float _X);
float __cdecl nanf( char const* _X);
float __cdecl nearbyintf( float _X);
float __cdecl nextafterf( float _X, float _Y);
float __cdecl nexttowardf( float _X, long double _Y);
float __cdecl remainderf( float _X, float _Y);
float __cdecl remquof( float _X, float _Y, int* _Z);
float __cdecl rintf( float _X);
float __cdecl roundf( float _X);
float __cdecl scalblnf( float _X, long _Y);
float __cdecl scalbnf( float _X, int _Y);
float __cdecl tgammaf( float _X);
float __cdecl truncf( float _X);
float __cdecl _logbf( float _X);
float __cdecl _nextafterf( float _X, float _Y);
int __cdecl _finitef( float _X);
int __cdecl _isnanf( float _X);
int __cdecl _fpclassf( float _X);
int __cdecl _set_FMA3_enable( int _Flag);
int __cdecl _get_FMA3_enable(void);
float __cdecl acosf( float _X);
float __cdecl asinf( float _X);
float __cdecl atan2f( float _Y, float _X);
float __cdecl atanf( float _X);
float __cdecl ceilf( float _X);
float __cdecl cosf( float _X);
float __cdecl coshf( float _X);
float __cdecl expf( float _X);
float __cdecl floorf( float _X);
float __cdecl fmodf( float _X, float _Y);
float __cdecl log10f( float _X);
float __cdecl logf( float _X);
float __cdecl modff( float _X, float *_Y);
float __cdecl powf( float _X, float _Y);
float __cdecl sinf( float _X);
float __cdecl sinhf( float _X);
float __cdecl sqrtf( float _X);
float __cdecl tanf( float _X);
float __cdecl tanhf( float _X);
long double __cdecl acoshl( long double _X);
long double __cdecl asinhl( long double _X);
long double __cdecl atanhl( long double _X);
long double __cdecl cbrtl( long double _X);
long double __cdecl copysignl( long double _Number, long double _Sign);
long double __cdecl erfl( long double _X);
long double __cdecl erfcl( long double _X);
long double __cdecl exp2l( long double _X);
long double __cdecl expm1l( long double _X);
long double __cdecl fdiml( long double _X, long double _Y);
long double __cdecl fmal( long double _X, long double _Y, long double _Z);
long double __cdecl fmaxl( long double _X, long double _Y);
long double __cdecl fminl( long double _X, long double _Y);
int __cdecl ilogbl( long double _X);
long double __cdecl lgammal( long double _X);
long long __cdecl llrintl( long double _X);
long long __cdecl llroundl( long double _X);
long double __cdecl log1pl( long double _X);
long double __cdecl log2l( long double _X);
long double __cdecl logbl( long double _X);
long __cdecl lrintl( long double _X);
long __cdecl lroundl( long double _X);
long double __cdecl nanl( char const* _X);
long double __cdecl nearbyintl( long double _X);
long double __cdecl nextafterl( long double _X, long double _Y);
long double __cdecl nexttowardl( long double _X, long double _Y);
long double __cdecl remainderl( long double _X, long double _Y);
long double __cdecl remquol( long double _X, long double _Y, int* _Z);
long double __cdecl rintl( long double _X);
long double __cdecl roundl( long double _X);
long double __cdecl scalblnl( long double _X, long _Y);
long double __cdecl scalbnl( long double _X, int _Y);
long double __cdecl tgammal( long double _X);
long double __cdecl truncl( long double _X);
enum { DOMAIN = 1 };
enum { SING = 2 };
enum { OVERFLOW = 3 };
enum { UNDERFLOW = 4 };
enum { TLOSS = 5 };
enum { PLOSS = 6 };
enum { matherr = 0 };
extern double HUGE;
double __cdecl j0( double _X);
double __cdecl j1( double _X);
double __cdecl jn( int _X, double _Y);
double __cdecl y0( double _X);
double __cdecl y1( double _X);
double __cdecl yn( int _X, double _Y);
/* #pragma warning(pop)  */
/* +++++++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_math.h */
/* ++++++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/math.h */
/* ++++++ BEGIN C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.41.34120/include/vcruntime_startup.h */
/* ++++++ END   C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.41.34120/include/vcruntime_startup.h */
/* +++++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_startup.h */
/* +++++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wprocess.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
intptr_t __cdecl _wexecl( wchar_t const* _FileName, wchar_t const* _ArgList, ...);
intptr_t __cdecl _wexecle( wchar_t const* _FileName, wchar_t const* _ArgList, ...);
intptr_t __cdecl _wexeclp( wchar_t const* _FileName, wchar_t const* _ArgList, ...);
intptr_t __cdecl _wexeclpe( wchar_t const* _FileName, wchar_t const* _ArgList, ...);
intptr_t __cdecl _wexecv( wchar_t const* _FileName, wchar_t const* const* _ArgList );
intptr_t __cdecl _wexecve( wchar_t const* _FileName, wchar_t const* const* _ArgList, wchar_t const* const* _Env );
intptr_t __cdecl _wexecvp( wchar_t const* _FileName, wchar_t const* const* _ArgList );
intptr_t __cdecl _wexecvpe( wchar_t const* _FileName, wchar_t const* const* _ArgList, wchar_t const* const* _Env );
intptr_t __cdecl _wspawnl( int _Mode, wchar_t const* _FileName, wchar_t const* _ArgList, ...);
intptr_t __cdecl _wspawnle( int _Mode, wchar_t const* _FileName, wchar_t const* _ArgList, ...);
intptr_t __cdecl _wspawnlp( int _Mode, wchar_t const* _FileName, wchar_t const* _ArgList, ...);
intptr_t __cdecl _wspawnlpe( int _Mode, wchar_t const* _FileName, wchar_t const* _ArgList, ...);
intptr_t __cdecl _wspawnv( int _Mode, wchar_t const* _FileName, wchar_t const* const* _ArgList );
intptr_t __cdecl _wspawnve( int _Mode, wchar_t const* _FileName, wchar_t const* const* _ArgList, wchar_t const* const* _Env );
intptr_t __cdecl _wspawnvp( int _Mode, wchar_t const* _FileName, wchar_t const* const* _ArgList );
intptr_t __cdecl _wspawnvpe( int _Mode, wchar_t const* _FileName, wchar_t const* const* _ArgList, wchar_t const* const* _Env );
int __cdecl _wsystem( wchar_t const* _Command );
/* #pragma warning(pop)  */
/* +++++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wprocess.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
void __cdecl exit( int _Code);
void __cdecl _exit( int _Code);
void __cdecl _Exit( int _Code);
void __cdecl quick_exit( int _Code);
void __cdecl abort(void);
int __cdecl system( char const* _Command);
void __cdecl _cexit(void);
void __cdecl _c_exit(void);
typedef void (__stdcall *_tls_callback_type)(void *, unsigned long, void *);
void __cdecl _register_thread_local_exe_atexit_callback( _tls_callback_type _Callback);
typedef void (__cdecl* _beginthread_proc_type )(void*);
typedef unsigned (__stdcall* _beginthreadex_proc_type)(void*);
uintptr_t __cdecl _beginthread( _beginthread_proc_type _StartAddress, unsigned _StackSize, void* _ArgList );
void __cdecl _endthread(void);
uintptr_t __cdecl _beginthreadex( void* _Security, unsigned _StackSize, _beginthreadex_proc_type _StartAddress, void* _ArgList, unsigned _InitFlag, unsigned* _ThrdAddr );
void __cdecl _endthreadex( unsigned _ReturnCode );
int __cdecl _getpid(void);
intptr_t __cdecl _cwait( int* _TermStat, intptr_t _ProcHandle, int _Action );
intptr_t __cdecl _execl( char const* _FileName, char const* _Arguments, ...);
intptr_t __cdecl _execle( char const* _FileName, char const* _Arguments, ...);
intptr_t __cdecl _execlp( char const* _FileName, char const* _Arguments, ...);
intptr_t __cdecl _execlpe( char const* _FileName, char const* _Arguments, ...);
intptr_t __cdecl _execv( char const* _FileName, char const* const* _Arguments );
intptr_t __cdecl _execve( char const* _FileName, char const* const* _Arguments, char const* const* _Environment );
intptr_t __cdecl _execvp( char const* _FileName, char const* const* _Arguments );
intptr_t __cdecl _execvpe( char const* _FileName, char const* const* _Arguments, char const* const* _Environment );
intptr_t __cdecl _spawnl( int _Mode, char const* _FileName, char const* _Arguments, ...);
intptr_t __cdecl _spawnle( int _Mode, char const* _FileName, char const* _Arguments, ...);
intptr_t __cdecl _spawnlp( int _Mode, char const* _FileName, char const* _Arguments, ...);
intptr_t __cdecl _spawnlpe( int _Mode, char const* _FileName, char const* _Arguments, ...);
intptr_t __cdecl _spawnv( int _Mode, char const* _FileName, char const* const* _Arguments );
intptr_t __cdecl _spawnve( int _Mode, char const* _FileName, char const* const* _Arguments, char const* const* _Environment );
intptr_t __cdecl _spawnvp( int _Mode, char const* _FileName, char const* const* _Arguments );
intptr_t __cdecl _spawnvpe( int _Mode, char const* _FileName, char const* const* _Arguments, char const* const* _Environment );
intptr_t __cdecl _loaddll( char* _FileName );
int __cdecl _unloaddll( intptr_t _Handle );
typedef int (__cdecl* _GetDllProcAddrProcType)(void);
_GetDllProcAddrProcType __cdecl _getdllprocaddr( intptr_t _Handle, char* _ProcedureName, intptr_t _Ordinal );
enum { P_WAIT = 0 };
enum { P_NOWAIT = 1 };
enum { P_OVERLAY = 2 };
enum { OLD_P_OVERLAY = 2 };
enum { P_NOWAITO = 3 };
enum { P_DETACH = 4 };
enum { WAIT_CHILD = 0 };
enum { WAIT_GRANDCHILD = 1 };
intptr_t __cdecl cwait( int* _TermStat, intptr_t _ProcHandle, int _Action );
intptr_t __cdecl execl( char const* _FileName, char const* _Arguments, ...);
intptr_t __cdecl execle( char const* _FileName, char const* _Arguments, ...);
intptr_t __cdecl execlp( char const* _FileName, char const* _Arguments, ...);
intptr_t __cdecl execlpe( char const* _FileName, char const* _Arguments, ...);
intptr_t __cdecl execv( char const* _FileName, char const* const* _Arguments );
intptr_t __cdecl execve( char const* _FileName, char const* const* _Arguments, char const* const* _Environment );
intptr_t __cdecl execvp( char const* _FileName, char const* const* _Arguments );
intptr_t __cdecl execvpe( char const* _FileName, char const* const* _Arguments, char const* const* _Environment );
intptr_t __cdecl spawnl( int _Mode, char const* _FileName, char const* _Arguments, ...);
intptr_t __cdecl spawnle( int _Mode, char const* _FileName, char const* _Arguments, ...);
intptr_t __cdecl spawnlp( int _Mode, char const* _FileName, char const* _Arguments, ...);
intptr_t __cdecl spawnlpe( int _Mode, char const* _FileName, char const* _Arguments, ...);
intptr_t __cdecl spawnv( int _Mode, char const* _FileName, char const* const* _Arguments);
intptr_t __cdecl spawnve( int _Mode, char const* _FileName, char const* const* _Arguments, char const* const* _Environment );
intptr_t __cdecl spawnvp( int _Mode, char const* _FileName, char const* const* _Arguments );
intptr_t __cdecl spawnvpe( int _Mode, char const* _FileName, char const* const* _Arguments, char const* const* _Environment );
int __cdecl getpid(void);
/* #pragma warning(pop)  */
/* ++++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/process.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* ++++ END   C:/Users/Chris/include/SDL2/begin_code.h */
struct SDL_Thread;
typedef struct SDL_Thread SDL_Thread;
typedef unsigned long SDL_threadID;
typedef unsigned int SDL_TLSID;
typedef enum { SDL_THREAD_PRIORITY_LOW, SDL_THREAD_PRIORITY_NORMAL, SDL_THREAD_PRIORITY_HIGH, SDL_THREAD_PRIORITY_TIME_CRITICAL } SDL_ThreadPriority;
typedef int (__cdecl * SDL_ThreadFunction) (void *data);
enum { SDL_PASSED_BEGINTHREAD_ENDTHREAD = 1 };
typedef uintptr_t (__cdecl * pfnSDL_CurrentBeginThread) (void *, unsigned, unsigned (__stdcall *func)(void *), void * , unsigned, unsigned * );
typedef void (__cdecl * pfnSDL_CurrentEndThread) (unsigned code);
enum { SDL_beginthread = 0 };
enum { SDL_endthread = 0 };
extern SDL_Thread *__cdecl SDL_CreateThread(SDL_ThreadFunction fn, const char *name, void *data, pfnSDL_CurrentBeginThread pfnBeginThread, pfnSDL_CurrentEndThread pfnEndThread);
extern SDL_Thread *__cdecl SDL_CreateThreadWithStackSize(SDL_ThreadFunction fn, const char *name, const size_t stacksize, void *data, pfnSDL_CurrentBeginThread pfnBeginThread, pfnSDL_CurrentEndThread pfnEndThread);
extern const char *__cdecl SDL_GetThreadName(SDL_Thread *thread);
extern SDL_threadID __cdecl SDL_ThreadID(void);
extern SDL_threadID __cdecl SDL_GetThreadID(SDL_Thread * thread);
extern int __cdecl SDL_SetThreadPriority(SDL_ThreadPriority priority);
extern void __cdecl SDL_WaitThread(SDL_Thread * thread, int *status);
extern void __cdecl SDL_DetachThread(SDL_Thread * thread);
extern SDL_TLSID __cdecl SDL_TLSCreate(void);
extern void * __cdecl SDL_TLSGet(SDL_TLSID id);
extern int __cdecl SDL_TLSSet(SDL_TLSID id, const void *value, void (__cdecl *destructor)(void*));
extern void __cdecl SDL_TLSCleanup(void);
/* ++++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* ++++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_thread.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_rwops.h */
enum { SDL_rwops_h_ = 1 };
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_error.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_error.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* ++++ END   C:/Users/Chris/include/SDL2/begin_code.h */
enum { SDL_RWOPS_UNKNOWN = 0 };
enum { SDL_RWOPS_WINFILE = 1 };
enum { SDL_RWOPS_STDFILE = 2 };
enum { SDL_RWOPS_JNIFILE = 3 };
enum { SDL_RWOPS_MEMORY = 4 };
enum { SDL_RWOPS_MEMORY_RO = 5 };
typedef struct SDL_RWops {
	Sint64 (__cdecl * size) (struct SDL_RWops * context);
	Sint64 (__cdecl * seek) (struct SDL_RWops * context, Sint64 offset, int whence);
	size_t (__cdecl * read) (struct SDL_RWops * context, void *ptr, size_t size, size_t maxnum);
	size_t (__cdecl * write) (struct SDL_RWops * context, const void *ptr, size_t size, size_t num);
	int (__cdecl * close) (struct SDL_RWops * context);
	Uint32 type;
	union {
	struct { SDL_bool append;
	void *h;
	struct {
	void *data;
	size_t size;
	size_t left;
} buffer;
} windowsio;
struct {
	Uint8 *base;
	Uint8 *here;
	Uint8 *stop;
} mem;
struct {
	void *data1;
	void *data2;
} unknown;
} hidden;
} SDL_RWops;
extern SDL_RWops *__cdecl SDL_RWFromFile(const char *file, const char *mode);
extern SDL_RWops *__cdecl SDL_RWFromFP(void * fp, SDL_bool autoclose);
extern SDL_RWops *__cdecl SDL_RWFromMem(void *mem, int size);
extern SDL_RWops *__cdecl SDL_RWFromConstMem(const void *mem, int size);
extern SDL_RWops *__cdecl SDL_AllocRW(void);
extern void __cdecl SDL_FreeRW(SDL_RWops * area);
enum { RW_SEEK_SET = 0 };
enum { RW_SEEK_CUR = 1 };
enum { RW_SEEK_END = 2 };
extern Sint64 __cdecl SDL_RWsize(SDL_RWops *context);
extern Sint64 __cdecl SDL_RWseek(SDL_RWops *context, Sint64 offset, int whence);
extern Sint64 __cdecl SDL_RWtell(SDL_RWops *context);
extern size_t __cdecl SDL_RWread(SDL_RWops *context, void *ptr, size_t size, size_t maxnum);
extern size_t __cdecl SDL_RWwrite(SDL_RWops *context, const void *ptr, size_t size, size_t num);
extern int __cdecl SDL_RWclose(SDL_RWops *context);
extern void *__cdecl SDL_LoadFile_RW(SDL_RWops *src, size_t *datasize, int freesrc);
extern void *__cdecl SDL_LoadFile(const char *file, size_t *datasize);
extern Uint8 __cdecl SDL_ReadU8(SDL_RWops * src);
extern Uint16 __cdecl SDL_ReadLE16(SDL_RWops * src);
extern Uint16 __cdecl SDL_ReadBE16(SDL_RWops * src);
extern Uint32 __cdecl SDL_ReadLE32(SDL_RWops * src);
extern Uint32 __cdecl SDL_ReadBE32(SDL_RWops * src);
extern Uint64 __cdecl SDL_ReadLE64(SDL_RWops * src);
extern Uint64 __cdecl SDL_ReadBE64(SDL_RWops * src);
extern size_t __cdecl SDL_WriteU8(SDL_RWops * dst, Uint8 value);
extern size_t __cdecl SDL_WriteLE16(SDL_RWops * dst, Uint16 value);
extern size_t __cdecl SDL_WriteBE16(SDL_RWops * dst, Uint16 value);
extern size_t __cdecl SDL_WriteLE32(SDL_RWops * dst, Uint32 value);
extern size_t __cdecl SDL_WriteBE32(SDL_RWops * dst, Uint32 value);
extern size_t __cdecl SDL_WriteLE64(SDL_RWops * dst, Uint64 value);
extern size_t __cdecl SDL_WriteBE64(SDL_RWops * dst, Uint64 value);
/* ++++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* ++++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_rwops.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
typedef Uint16 SDL_AudioFormat;
enum { SDL_AUDIO_MASK_BITSIZE = 255 };
enum { SDL_AUDIO_MASK_DATATYPE = 256 };
enum { SDL_AUDIO_MASK_ENDIAN = 4096 };
enum { SDL_AUDIO_MASK_SIGNED = 32768 };
enum { AUDIO_U8 = 8 };
enum { AUDIO_S8 = 32776 };
enum { AUDIO_U16LSB = 16 };
enum { AUDIO_S16LSB = 32784 };
enum { AUDIO_U16MSB = 4112 };
enum { AUDIO_S16MSB = 36880 };
enum { AUDIO_U16 = 16 };
enum { AUDIO_S16 = 32784 };
enum { AUDIO_S32LSB = 32800 };
enum { AUDIO_S32MSB = 36896 };
enum { AUDIO_S32 = 32800 };
enum { AUDIO_F32LSB = 33056 };
enum { AUDIO_F32MSB = 37152 };
enum { AUDIO_F32 = 33056 };
enum { AUDIO_U16SYS = 16 };
enum { AUDIO_S16SYS = 32784 };
enum { AUDIO_S32SYS = 32800 };
enum { AUDIO_F32SYS = 33056 };
enum { SDL_AUDIO_ALLOW_FREQUENCY_CHANGE = 1 };
enum { SDL_AUDIO_ALLOW_FORMAT_CHANGE = 2 };
enum { SDL_AUDIO_ALLOW_CHANNELS_CHANGE = 4 };
enum { SDL_AUDIO_ALLOW_SAMPLES_CHANGE = 8 };
enum { SDL_AUDIO_ALLOW_ANY_CHANGE = 15 };
typedef void (__cdecl * SDL_AudioCallback) (void *userdata, Uint8 * stream, int len);
typedef struct SDL_AudioSpec {
	int freq;
	SDL_AudioFormat format;
	Uint8 channels;
	Uint8 silence;
	Uint16 samples;
	Uint16 padding;
	Uint32 size;
	SDL_AudioCallback callback;
	void *userdata;
} SDL_AudioSpec;
struct SDL_AudioCVT;
typedef void (__cdecl * SDL_AudioFilter) (struct SDL_AudioCVT * cvt, SDL_AudioFormat format);
enum { SDL_AUDIOCVT_MAX_FILTERS = 9 };
enum { SDL_AUDIOCVT_PACKED = 1 };
typedef struct SDL_AudioCVT {
	int needed;
	SDL_AudioFormat src_format;
	SDL_AudioFormat dst_format;
	double rate_incr;
	Uint8 *buf;
	int len;
	int len_cvt;
	int len_mult;
	double len_ratio;
	SDL_AudioFilter filters[9 + 1];
	int filter_index;
} SDL_AudioCVT;
extern int __cdecl SDL_GetNumAudioDrivers(void);
extern const char *__cdecl SDL_GetAudioDriver(int index);
extern int __cdecl SDL_AudioInit(const char *driver_name);
extern void __cdecl SDL_AudioQuit(void);
extern const char *__cdecl SDL_GetCurrentAudioDriver(void);
extern int __cdecl SDL_OpenAudio(SDL_AudioSpec * desired, SDL_AudioSpec * obtained);
typedef Uint32 SDL_AudioDeviceID;
extern int __cdecl SDL_GetNumAudioDevices(int iscapture);
extern const char *__cdecl SDL_GetAudioDeviceName(int index, int iscapture);
extern int __cdecl SDL_GetAudioDeviceSpec(int index, int iscapture, SDL_AudioSpec *spec);
extern int __cdecl SDL_GetDefaultAudioInfo(char **name, SDL_AudioSpec *spec, int iscapture);
extern SDL_AudioDeviceID __cdecl SDL_OpenAudioDevice( const char *device, int iscapture, const SDL_AudioSpec *desired, SDL_AudioSpec *obtained, int allowed_changes);
typedef enum { SDL_AUDIO_STOPPED = 0, SDL_AUDIO_PLAYING, SDL_AUDIO_PAUSED } SDL_AudioStatus;
extern SDL_AudioStatus __cdecl SDL_GetAudioStatus(void);
extern SDL_AudioStatus __cdecl SDL_GetAudioDeviceStatus(SDL_AudioDeviceID dev);
extern void __cdecl SDL_PauseAudio(int pause_on);
extern void __cdecl SDL_PauseAudioDevice(SDL_AudioDeviceID dev, int pause_on);
extern SDL_AudioSpec *__cdecl SDL_LoadWAV_RW(SDL_RWops * src, int freesrc, SDL_AudioSpec * spec, Uint8 ** audio_buf, Uint32 * audio_len);
extern void __cdecl SDL_FreeWAV(Uint8 * audio_buf);
extern int __cdecl SDL_BuildAudioCVT(SDL_AudioCVT * cvt, SDL_AudioFormat src_format, Uint8 src_channels, int src_rate, SDL_AudioFormat dst_format, Uint8 dst_channels, int dst_rate);
extern int __cdecl SDL_ConvertAudio(SDL_AudioCVT * cvt);
struct _SDL_AudioStream;
typedef struct _SDL_AudioStream SDL_AudioStream;
extern SDL_AudioStream * __cdecl SDL_NewAudioStream(const SDL_AudioFormat src_format, const Uint8 src_channels, const int src_rate, const SDL_AudioFormat dst_format, const Uint8 dst_channels, const int dst_rate);
extern int __cdecl SDL_AudioStreamPut(SDL_AudioStream *stream, const void *buf, int len);
extern int __cdecl SDL_AudioStreamGet(SDL_AudioStream *stream, void *buf, int len);
extern int __cdecl SDL_AudioStreamAvailable(SDL_AudioStream *stream);
extern int __cdecl SDL_AudioStreamFlush(SDL_AudioStream *stream);
extern void __cdecl SDL_AudioStreamClear(SDL_AudioStream *stream);
extern void __cdecl SDL_FreeAudioStream(SDL_AudioStream *stream);
enum { SDL_MIX_MAXVOLUME = 128 };
extern void __cdecl SDL_MixAudio(Uint8 * dst, const Uint8 * src, Uint32 len, int volume);
extern void __cdecl SDL_MixAudioFormat(Uint8 * dst, const Uint8 * src, SDL_AudioFormat format, Uint32 len, int volume);
extern int __cdecl SDL_QueueAudio(SDL_AudioDeviceID dev, const void *data, Uint32 len);
extern Uint32 __cdecl SDL_DequeueAudio(SDL_AudioDeviceID dev, void *data, Uint32 len);
extern Uint32 __cdecl SDL_GetQueuedAudioSize(SDL_AudioDeviceID dev);
extern void __cdecl SDL_ClearQueuedAudio(SDL_AudioDeviceID dev);
extern void __cdecl SDL_LockAudio(void);
extern void __cdecl SDL_LockAudioDevice(SDL_AudioDeviceID dev);
extern void __cdecl SDL_UnlockAudio(void);
extern void __cdecl SDL_UnlockAudioDevice(SDL_AudioDeviceID dev);
extern void __cdecl SDL_CloseAudio(void);
extern void __cdecl SDL_CloseAudioDevice(SDL_AudioDeviceID dev);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_audio.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_clipboard.h */
enum { SDL_clipboard_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
extern int __cdecl SDL_SetClipboardText(const char *text);
extern char * __cdecl SDL_GetClipboardText(void);
extern SDL_bool __cdecl SDL_HasClipboardText(void);
extern int __cdecl SDL_SetPrimarySelectionText(const char *text);
extern char * __cdecl SDL_GetPrimarySelectionText(void);
extern SDL_bool __cdecl SDL_HasPrimarySelectionText(void);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_clipboard.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_cpuinfo.h */
enum { SDL_cpuinfo_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
enum { SDL_CACHELINE_SIZE = 128 };
extern int __cdecl SDL_GetCPUCount(void);
extern int __cdecl SDL_GetCPUCacheLineSize(void);
extern SDL_bool __cdecl SDL_HasRDTSC(void);
extern SDL_bool __cdecl SDL_HasAltiVec(void);
extern SDL_bool __cdecl SDL_HasMMX(void);
extern SDL_bool __cdecl SDL_Has3DNow(void);
extern SDL_bool __cdecl SDL_HasSSE(void);
extern SDL_bool __cdecl SDL_HasSSE2(void);
extern SDL_bool __cdecl SDL_HasSSE3(void);
extern SDL_bool __cdecl SDL_HasSSE41(void);
extern SDL_bool __cdecl SDL_HasSSE42(void);
extern SDL_bool __cdecl SDL_HasAVX(void);
extern SDL_bool __cdecl SDL_HasAVX2(void);
extern SDL_bool __cdecl SDL_HasAVX512F(void);
extern SDL_bool __cdecl SDL_HasARMSIMD(void);
extern SDL_bool __cdecl SDL_HasNEON(void);
extern SDL_bool __cdecl SDL_HasLSX(void);
extern SDL_bool __cdecl SDL_HasLASX(void);
extern int __cdecl SDL_GetSystemRAM(void);
extern size_t __cdecl SDL_SIMDGetAlignment(void);
extern void * __cdecl SDL_SIMDAlloc(const size_t len);
extern void * __cdecl SDL_SIMDRealloc(void *mem, const size_t len);
extern void __cdecl SDL_SIMDFree(void *ptr);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_cpuinfo.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_endian.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_endian.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_error.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_error.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_events.h */
enum { SDL_events_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_error.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_error.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_video.h */
enum { SDL_video_h_ = 1 };
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_pixels.h */
enum { SDL_pixels_h_ = 1 };
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_endian.h */
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_endian.h */
/* +++++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++++ END   C:/Users/Chris/include/SDL2/begin_code.h */
enum { SDL_ALPHA_OPAQUE = 255 };
enum { SDL_ALPHA_TRANSPARENT = 0 };
typedef enum { SDL_PIXELTYPE_UNKNOWN, SDL_PIXELTYPE_INDEX1, SDL_PIXELTYPE_INDEX4, SDL_PIXELTYPE_INDEX8, SDL_PIXELTYPE_PACKED8, SDL_PIXELTYPE_PACKED16, SDL_PIXELTYPE_PACKED32, SDL_PIXELTYPE_ARRAYU8, SDL_PIXELTYPE_ARRAYU16, SDL_PIXELTYPE_ARRAYU32, SDL_PIXELTYPE_ARRAYF16, SDL_PIXELTYPE_ARRAYF32, SDL_PIXELTYPE_INDEX2 } SDL_PixelType;
typedef enum { SDL_BITMAPORDER_NONE, SDL_BITMAPORDER_4321, SDL_BITMAPORDER_1234 } SDL_BitmapOrder;
typedef enum { SDL_PACKEDORDER_NONE, SDL_PACKEDORDER_XRGB, SDL_PACKEDORDER_RGBX, SDL_PACKEDORDER_ARGB, SDL_PACKEDORDER_RGBA, SDL_PACKEDORDER_XBGR, SDL_PACKEDORDER_BGRX, SDL_PACKEDORDER_ABGR, SDL_PACKEDORDER_BGRA } SDL_PackedOrder;
typedef enum { SDL_ARRAYORDER_NONE, SDL_ARRAYORDER_RGB, SDL_ARRAYORDER_RGBA, SDL_ARRAYORDER_ARGB, SDL_ARRAYORDER_BGR, SDL_ARRAYORDER_BGRA, SDL_ARRAYORDER_ABGR } SDL_ArrayOrder;
typedef enum { SDL_PACKEDLAYOUT_NONE, SDL_PACKEDLAYOUT_332, SDL_PACKEDLAYOUT_4444, SDL_PACKEDLAYOUT_1555, SDL_PACKEDLAYOUT_5551, SDL_PACKEDLAYOUT_565, SDL_PACKEDLAYOUT_8888, SDL_PACKEDLAYOUT_2101010, SDL_PACKEDLAYOUT_1010102 } SDL_PackedLayout;
typedef enum { SDL_PIXELFORMAT_UNKNOWN, SDL_PIXELFORMAT_INDEX1LSB = ((1 << 28) | ((SDL_PIXELTYPE_INDEX1) << 24) | (( SDL_BITMAPORDER_4321) << 20) | (( 0) << 16) | (( 1) << 8) | (( 0) << 0)) , SDL_PIXELFORMAT_INDEX1MSB = ((1 << 28) | ((SDL_PIXELTYPE_INDEX1) << 24) | (( SDL_BITMAPORDER_1234) << 20) | (( 0) << 16) | (( 1) << 8) | (( 0) << 0)) , SDL_PIXELFORMAT_INDEX2LSB = ((1 << 28) | ((SDL_PIXELTYPE_INDEX2) << 24) | (( SDL_BITMAPORDER_4321) << 20) | (( 0) << 16) | (( 2) << 8) | (( 0) << 0)) , SDL_PIXELFORMAT_INDEX2MSB = ((1 << 28) | ((SDL_PIXELTYPE_INDEX2) << 24) | (( SDL_BITMAPORDER_1234) << 20) | (( 0) << 16) | (( 2) << 8) | (( 0) << 0)) , SDL_PIXELFORMAT_INDEX4LSB = ((1 << 28) | ((SDL_PIXELTYPE_INDEX4) << 24) | (( SDL_BITMAPORDER_4321) << 20) | (( 0) << 16) | (( 4) << 8) | (( 0) << 0)) , SDL_PIXELFORMAT_INDEX4MSB = ((1 << 28) | ((SDL_PIXELTYPE_INDEX4) << 24) | (( SDL_BITMAPORDER_1234) << 20) | (( 0) << 16) | (( 4) << 8) | (( 0) << 0)) , SDL_PIXELFORMAT_INDEX8 = ((1 << 28) | ((SDL_PIXELTYPE_INDEX8) << 24) | (( 0) << 20) | (( 0) << 16) | (( 8) << 8) | (( 1) << 0)) , SDL_PIXELFORMAT_RGB332 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED8) << 24) | (( SDL_PACKEDORDER_XRGB) << 20) | (( SDL_PACKEDLAYOUT_332) << 16) | (( 8) << 8) | (( 1) << 0)) , SDL_PIXELFORMAT_XRGB4444 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED16) << 24) | (( SDL_PACKEDORDER_XRGB) << 20) | (( SDL_PACKEDLAYOUT_4444) << 16) | (( 12) << 8) | (( 2) << 0)) , SDL_PIXELFORMAT_RGB444 = SDL_PIXELFORMAT_XRGB4444, SDL_PIXELFORMAT_XBGR4444 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED16) << 24) | (( SDL_PACKEDORDER_XBGR) << 20) | (( SDL_PACKEDLAYOUT_4444) << 16) | (( 12) << 8) | (( 2) << 0)) , SDL_PIXELFORMAT_BGR444 = SDL_PIXELFORMAT_XBGR4444, SDL_PIXELFORMAT_XRGB1555 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED16) << 24) | (( SDL_PACKEDORDER_XRGB) << 20) | (( SDL_PACKEDLAYOUT_1555) << 16) | (( 15) << 8) | (( 2) << 0)) , SDL_PIXELFORMAT_RGB555 = SDL_PIXELFORMAT_XRGB1555, SDL_PIXELFORMAT_XBGR1555 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED16) << 24) | (( SDL_PACKEDORDER_XBGR) << 20) | (( SDL_PACKEDLAYOUT_1555) << 16) | (( 15) << 8) | (( 2) << 0)) , SDL_PIXELFORMAT_BGR555 = SDL_PIXELFORMAT_XBGR1555, SDL_PIXELFORMAT_ARGB4444 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED16) << 24) | (( SDL_PACKEDORDER_ARGB) << 20) | (( SDL_PACKEDLAYOUT_4444) << 16) | (( 16) << 8) | (( 2) << 0)) , SDL_PIXELFORMAT_RGBA4444 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED16) << 24) | (( SDL_PACKEDORDER_RGBA) << 20) | (( SDL_PACKEDLAYOUT_4444) << 16) | (( 16) << 8) | (( 2) << 0)) , SDL_PIXELFORMAT_ABGR4444 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED16) << 24) | (( SDL_PACKEDORDER_ABGR) << 20) | (( SDL_PACKEDLAYOUT_4444) << 16) | (( 16) << 8) | (( 2) << 0)) , SDL_PIXELFORMAT_BGRA4444 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED16) << 24) | (( SDL_PACKEDORDER_BGRA) << 20) | (( SDL_PACKEDLAYOUT_4444) << 16) | (( 16) << 8) | (( 2) << 0)) , SDL_PIXELFORMAT_ARGB1555 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED16) << 24) | (( SDL_PACKEDORDER_ARGB) << 20) | (( SDL_PACKEDLAYOUT_1555) << 16) | (( 16) << 8) | (( 2) << 0)) , SDL_PIXELFORMAT_RGBA5551 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED16) << 24) | (( SDL_PACKEDORDER_RGBA) << 20) | (( SDL_PACKEDLAYOUT_5551) << 16) | (( 16) << 8) | (( 2) << 0)) , SDL_PIXELFORMAT_ABGR1555 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED16) << 24) | (( SDL_PACKEDORDER_ABGR) << 20) | (( SDL_PACKEDLAYOUT_1555) << 16) | (( 16) << 8) | (( 2) << 0)) , SDL_PIXELFORMAT_BGRA5551 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED16) << 24) | (( SDL_PACKEDORDER_BGRA) << 20) | (( SDL_PACKEDLAYOUT_5551) << 16) | (( 16) << 8) | (( 2) << 0)) , SDL_PIXELFORMAT_RGB565 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED16) << 24) | (( SDL_PACKEDORDER_XRGB) << 20) | (( SDL_PACKEDLAYOUT_565) << 16) | (( 16) << 8) | (( 2) << 0)) , SDL_PIXELFORMAT_BGR565 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED16) << 24) | (( SDL_PACKEDORDER_XBGR) << 20) | (( SDL_PACKEDLAYOUT_565) << 16) | (( 16) << 8) | (( 2) << 0)) , SDL_PIXELFORMAT_RGB24 = ((1 << 28) | ((SDL_PIXELTYPE_ARRAYU8) << 24) | (( SDL_ARRAYORDER_RGB) << 20) | (( 0) << 16) | (( 24) << 8) | (( 3) << 0)) , SDL_PIXELFORMAT_BGR24 = ((1 << 28) | ((SDL_PIXELTYPE_ARRAYU8) << 24) | (( SDL_ARRAYORDER_BGR) << 20) | (( 0) << 16) | (( 24) << 8) | (( 3) << 0)) , SDL_PIXELFORMAT_XRGB8888 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED32) << 24) | (( SDL_PACKEDORDER_XRGB) << 20) | (( SDL_PACKEDLAYOUT_8888) << 16) | (( 24) << 8) | (( 4) << 0)) , SDL_PIXELFORMAT_RGB888 = SDL_PIXELFORMAT_XRGB8888, SDL_PIXELFORMAT_RGBX8888 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED32) << 24) | (( SDL_PACKEDORDER_RGBX) << 20) | (( SDL_PACKEDLAYOUT_8888) << 16) | (( 24) << 8) | (( 4) << 0)) , SDL_PIXELFORMAT_XBGR8888 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED32) << 24) | (( SDL_PACKEDORDER_XBGR) << 20) | (( SDL_PACKEDLAYOUT_8888) << 16) | (( 24) << 8) | (( 4) << 0)) , SDL_PIXELFORMAT_BGR888 = SDL_PIXELFORMAT_XBGR8888, SDL_PIXELFORMAT_BGRX8888 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED32) << 24) | (( SDL_PACKEDORDER_BGRX) << 20) | (( SDL_PACKEDLAYOUT_8888) << 16) | (( 24) << 8) | (( 4) << 0)) , SDL_PIXELFORMAT_ARGB8888 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED32) << 24) | (( SDL_PACKEDORDER_ARGB) << 20) | (( SDL_PACKEDLAYOUT_8888) << 16) | (( 32) << 8) | (( 4) << 0)) , SDL_PIXELFORMAT_RGBA8888 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED32) << 24) | (( SDL_PACKEDORDER_RGBA) << 20) | (( SDL_PACKEDLAYOUT_8888) << 16) | (( 32) << 8) | (( 4) << 0)) , SDL_PIXELFORMAT_ABGR8888 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED32) << 24) | (( SDL_PACKEDORDER_ABGR) << 20) | (( SDL_PACKEDLAYOUT_8888) << 16) | (( 32) << 8) | (( 4) << 0)) , SDL_PIXELFORMAT_BGRA8888 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED32) << 24) | (( SDL_PACKEDORDER_BGRA) << 20) | (( SDL_PACKEDLAYOUT_8888) << 16) | (( 32) << 8) | (( 4) << 0)) , SDL_PIXELFORMAT_ARGB2101010 = ((1 << 28) | ((SDL_PIXELTYPE_PACKED32) << 24) | (( SDL_PACKEDORDER_ARGB) << 20) | (( SDL_PACKEDLAYOUT_2101010) << 16) | (( 32) << 8) | (( 4) << 0)) , SDL_PIXELFORMAT_RGBA32 = SDL_PIXELFORMAT_ABGR8888, SDL_PIXELFORMAT_ARGB32 = SDL_PIXELFORMAT_BGRA8888, SDL_PIXELFORMAT_BGRA32 = SDL_PIXELFORMAT_ARGB8888, SDL_PIXELFORMAT_ABGR32 = SDL_PIXELFORMAT_RGBA8888, SDL_PIXELFORMAT_RGBX32 = SDL_PIXELFORMAT_XBGR8888, SDL_PIXELFORMAT_XRGB32 = SDL_PIXELFORMAT_BGRX8888, SDL_PIXELFORMAT_BGRX32 = SDL_PIXELFORMAT_XRGB8888, SDL_PIXELFORMAT_XBGR32 = SDL_PIXELFORMAT_RGBX8888, SDL_PIXELFORMAT_YV12 = (( ((Uint32)( ((Uint8)( ('Y'))) )) << 0) | ( ((Uint32)( ((Uint8)( ( 'V'))) )) << 8) | ( ((Uint32)( ((Uint8)( ( '1'))) )) << 16) | ( ((Uint32)( ((Uint8)( ( '2'))) )) << 24)) , SDL_PIXELFORMAT_IYUV = (( ((Uint32)( ((Uint8)( ('I'))) )) << 0) | ( ((Uint32)( ((Uint8)( ( 'Y'))) )) << 8) | ( ((Uint32)( ((Uint8)( ( 'U'))) )) << 16) | ( ((Uint32)( ((Uint8)( ( 'V'))) )) << 24)) , SDL_PIXELFORMAT_YUY2 = (( ((Uint32)( ((Uint8)( ('Y'))) )) << 0) | ( ((Uint32)( ((Uint8)( ( 'U'))) )) << 8) | ( ((Uint32)( ((Uint8)( ( 'Y'))) )) << 16) | ( ((Uint32)( ((Uint8)( ( '2'))) )) << 24)) , SDL_PIXELFORMAT_UYVY = (( ((Uint32)( ((Uint8)( ('U'))) )) << 0) | ( ((Uint32)( ((Uint8)( ( 'Y'))) )) << 8) | ( ((Uint32)( ((Uint8)( ( 'V'))) )) << 16) | ( ((Uint32)( ((Uint8)( ( 'Y'))) )) << 24)) , SDL_PIXELFORMAT_YVYU = (( ((Uint32)( ((Uint8)( ('Y'))) )) << 0) | ( ((Uint32)( ((Uint8)( ( 'V'))) )) << 8) | ( ((Uint32)( ((Uint8)( ( 'Y'))) )) << 16) | ( ((Uint32)( ((Uint8)( ( 'U'))) )) << 24)) , SDL_PIXELFORMAT_NV12 = (( ((Uint32)( ((Uint8)( ('N'))) )) << 0) | ( ((Uint32)( ((Uint8)( ( 'V'))) )) << 8) | ( ((Uint32)( ((Uint8)( ( '1'))) )) << 16) | ( ((Uint32)( ((Uint8)( ( '2'))) )) << 24)) , SDL_PIXELFORMAT_NV21 = (( ((Uint32)( ((Uint8)( ('N'))) )) << 0) | ( ((Uint32)( ((Uint8)( ( 'V'))) )) << 8) | ( ((Uint32)( ((Uint8)( ( '2'))) )) << 16) | ( ((Uint32)( ((Uint8)( ( '1'))) )) << 24)) , SDL_PIXELFORMAT_EXTERNAL_OES = (( ((Uint32)( ((Uint8)( ('O'))) )) << 0) | ( ((Uint32)( ((Uint8)( ( 'E'))) )) << 8) | ( ((Uint32)( ((Uint8)( ( 'S'))) )) << 16) | ( ((Uint32)( ((Uint8)( ( ' '))) )) << 24)) } SDL_PixelFormatEnum;
typedef struct SDL_Color {
	Uint8 r;
	Uint8 g;
	Uint8 b;
	Uint8 a;
} SDL_Color;
enum { SDL_Colour = 0 };
typedef struct SDL_Palette {
	int ncolors;
	SDL_Color *colors;
	Uint32 version;
	int refcount;
} SDL_Palette;
typedef struct SDL_PixelFormat {
	Uint32 format;
	SDL_Palette *palette;
	Uint8 BitsPerPixel;
	Uint8 BytesPerPixel;
	Uint8 padding[2];
	Uint32 Rmask;
	Uint32 Gmask;
	Uint32 Bmask;
	Uint32 Amask;
	Uint8 Rloss;
	Uint8 Gloss;
	Uint8 Bloss;
	Uint8 Aloss;
	Uint8 Rshift;
	Uint8 Gshift;
	Uint8 Bshift;
	Uint8 Ashift;
	int refcount;
	struct SDL_PixelFormat *next;
} SDL_PixelFormat;
extern const char* __cdecl SDL_GetPixelFormatName(Uint32 format);
extern SDL_bool __cdecl SDL_PixelFormatEnumToMasks(Uint32 format, int *bpp, Uint32 * Rmask, Uint32 * Gmask, Uint32 * Bmask, Uint32 * Amask);
extern Uint32 __cdecl SDL_MasksToPixelFormatEnum(int bpp, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask);
extern SDL_PixelFormat * __cdecl SDL_AllocFormat(Uint32 pixel_format);
extern void __cdecl SDL_FreeFormat(SDL_PixelFormat *format);
extern SDL_Palette *__cdecl SDL_AllocPalette(int ncolors);
extern int __cdecl SDL_SetPixelFormatPalette(SDL_PixelFormat * format, SDL_Palette *palette);
extern int __cdecl SDL_SetPaletteColors(SDL_Palette * palette, const SDL_Color * colors, int firstcolor, int ncolors);
extern void __cdecl SDL_FreePalette(SDL_Palette * palette);
extern Uint32 __cdecl SDL_MapRGB(const SDL_PixelFormat * format, Uint8 r, Uint8 g, Uint8 b);
extern Uint32 __cdecl SDL_MapRGBA(const SDL_PixelFormat * format, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
extern void __cdecl SDL_GetRGB(Uint32 pixel, const SDL_PixelFormat * format, Uint8 * r, Uint8 * g, Uint8 * b);
extern void __cdecl SDL_GetRGBA(Uint32 pixel, const SDL_PixelFormat * format, Uint8 * r, Uint8 * g, Uint8 * b, Uint8 * a);
extern void __cdecl SDL_CalculateGammaRamp(float gamma, Uint16 * ramp);
/* +++++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_pixels.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_rect.h */
enum { SDL_rect_h_ = 1 };
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_error.h */
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_error.h */
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_pixels.h */
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_pixels.h */
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_rwops.h */
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_rwops.h */
/* +++++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++++ END   C:/Users/Chris/include/SDL2/begin_code.h */
typedef struct SDL_Point {
	int x;
	int y;
} SDL_Point;
typedef struct SDL_FPoint {
	float x;
	float y;
} SDL_FPoint;
typedef struct SDL_Rect {
	int x, y;
	int w, h;
} SDL_Rect;
typedef struct SDL_FRect {
	float x;
	float y;
	float w;
	float h;
} SDL_FRect;
extern SDL_bool __cdecl SDL_HasIntersection(const SDL_Rect * A, const SDL_Rect * B);
extern SDL_bool __cdecl SDL_IntersectRect(const SDL_Rect * A, const SDL_Rect * B, SDL_Rect * result);
extern void __cdecl SDL_UnionRect(const SDL_Rect * A, const SDL_Rect * B, SDL_Rect * result);
extern SDL_bool __cdecl SDL_EnclosePoints(const SDL_Point * points, int count, const SDL_Rect * clip, SDL_Rect * result);
extern SDL_bool __cdecl SDL_IntersectRectAndLine(const SDL_Rect * rect, int *X1, int *Y1, int *X2, int *Y2);
extern SDL_bool __cdecl SDL_HasIntersectionF(const SDL_FRect * A, const SDL_FRect * B);
extern SDL_bool __cdecl SDL_IntersectFRect(const SDL_FRect * A, const SDL_FRect * B, SDL_FRect * result);
extern void __cdecl SDL_UnionFRect(const SDL_FRect * A, const SDL_FRect * B, SDL_FRect * result);
extern SDL_bool __cdecl SDL_EncloseFPoints(const SDL_FPoint * points, int count, const SDL_FRect * clip, SDL_FRect * result);
extern SDL_bool __cdecl SDL_IntersectFRectAndLine(const SDL_FRect * rect, float *X1, float *Y1, float *X2, float *Y2);
/* +++++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_rect.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_surface.h */
enum { SDL_surface_h_ = 1 };
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_pixels.h */
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_pixels.h */
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_rect.h */
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_rect.h */
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_blendmode.h */
enum { SDL_blendmode_h_ = 1 };
/* ++++++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* ++++++ END   C:/Users/Chris/include/SDL2/begin_code.h */
typedef enum { SDL_BLENDMODE_NONE = 0x00000000, SDL_BLENDMODE_BLEND = 0x00000001, SDL_BLENDMODE_ADD = 0x00000002, SDL_BLENDMODE_MOD = 0x00000004, SDL_BLENDMODE_MUL = 0x00000008, SDL_BLENDMODE_INVALID = 0x7FFFFFFF } SDL_BlendMode;
typedef enum { SDL_BLENDOPERATION_ADD = 0x1, SDL_BLENDOPERATION_SUBTRACT = 0x2, SDL_BLENDOPERATION_REV_SUBTRACT = 0x3, SDL_BLENDOPERATION_MINIMUM = 0x4, SDL_BLENDOPERATION_MAXIMUM = 0x5 } SDL_BlendOperation;
typedef enum { SDL_BLENDFACTOR_ZERO = 0x1, SDL_BLENDFACTOR_ONE = 0x2, SDL_BLENDFACTOR_SRC_COLOR = 0x3, SDL_BLENDFACTOR_ONE_MINUS_SRC_COLOR = 0x4, SDL_BLENDFACTOR_SRC_ALPHA = 0x5, SDL_BLENDFACTOR_ONE_MINUS_SRC_ALPHA = 0x6, SDL_BLENDFACTOR_DST_COLOR = 0x7, SDL_BLENDFACTOR_ONE_MINUS_DST_COLOR = 0x8, SDL_BLENDFACTOR_DST_ALPHA = 0x9, SDL_BLENDFACTOR_ONE_MINUS_DST_ALPHA = 0xA } SDL_BlendFactor;
extern SDL_BlendMode __cdecl SDL_ComposeCustomBlendMode(SDL_BlendFactor srcColorFactor, SDL_BlendFactor dstColorFactor, SDL_BlendOperation colorOperation, SDL_BlendFactor srcAlphaFactor, SDL_BlendFactor dstAlphaFactor, SDL_BlendOperation alphaOperation);
/* ++++++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* ++++++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_blendmode.h */
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_rwops.h */
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_rwops.h */
/* +++++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++++ END   C:/Users/Chris/include/SDL2/begin_code.h */
enum { SDL_SWSURFACE = 0 };
enum { SDL_PREALLOC = 1 };
enum { SDL_RLEACCEL = 2 };
enum { SDL_DONTFREE = 4 };
enum { SDL_SIMD_ALIGNED = 8 };
typedef struct SDL_BlitMap SDL_BlitMap;
typedef struct SDL_Surface {
	Uint32 flags;
	SDL_PixelFormat *format;
	int w, h;
	int pitch;
	void *pixels;
	void *userdata;
	int locked;
	void *list_blitmap;
	SDL_Rect clip_rect;
	SDL_BlitMap *map;
	int refcount;
} SDL_Surface;
typedef int (__cdecl *SDL_blit) (struct SDL_Surface * src, SDL_Rect * srcrect, struct SDL_Surface * dst, SDL_Rect * dstrect);
typedef enum { SDL_YUV_CONVERSION_JPEG, SDL_YUV_CONVERSION_BT601, SDL_YUV_CONVERSION_BT709, SDL_YUV_CONVERSION_AUTOMATIC } SDL_YUV_CONVERSION_MODE;
extern SDL_Surface *__cdecl SDL_CreateRGBSurface (Uint32 flags, int width, int height, int depth, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask);
extern SDL_Surface *__cdecl SDL_CreateRGBSurfaceWithFormat (Uint32 flags, int width, int height, int depth, Uint32 format);
extern SDL_Surface *__cdecl SDL_CreateRGBSurfaceFrom(void *pixels, int width, int height, int depth, int pitch, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask);
extern SDL_Surface *__cdecl SDL_CreateRGBSurfaceWithFormatFrom (void *pixels, int width, int height, int depth, int pitch, Uint32 format);
extern void __cdecl SDL_FreeSurface(SDL_Surface * surface);
extern int __cdecl SDL_SetSurfacePalette(SDL_Surface * surface, SDL_Palette * palette);
extern int __cdecl SDL_LockSurface(SDL_Surface * surface);
extern void __cdecl SDL_UnlockSurface(SDL_Surface * surface);
extern SDL_Surface *__cdecl SDL_LoadBMP_RW(SDL_RWops * src, int freesrc);
extern int __cdecl SDL_SaveBMP_RW (SDL_Surface * surface, SDL_RWops * dst, int freedst);
extern int __cdecl SDL_SetSurfaceRLE(SDL_Surface * surface, int flag);
extern SDL_bool __cdecl SDL_HasSurfaceRLE(SDL_Surface * surface);
extern int __cdecl SDL_SetColorKey(SDL_Surface * surface, int flag, Uint32 key);
extern SDL_bool __cdecl SDL_HasColorKey(SDL_Surface * surface);
extern int __cdecl SDL_GetColorKey(SDL_Surface * surface, Uint32 * key);
extern int __cdecl SDL_SetSurfaceColorMod(SDL_Surface * surface, Uint8 r, Uint8 g, Uint8 b);
extern int __cdecl SDL_GetSurfaceColorMod(SDL_Surface * surface, Uint8 * r, Uint8 * g, Uint8 * b);
extern int __cdecl SDL_SetSurfaceAlphaMod(SDL_Surface * surface, Uint8 alpha);
extern int __cdecl SDL_GetSurfaceAlphaMod(SDL_Surface * surface, Uint8 * alpha);
extern int __cdecl SDL_SetSurfaceBlendMode(SDL_Surface * surface, SDL_BlendMode blendMode);
extern int __cdecl SDL_GetSurfaceBlendMode(SDL_Surface * surface, SDL_BlendMode *blendMode);
extern SDL_bool __cdecl SDL_SetClipRect(SDL_Surface * surface, const SDL_Rect * rect);
extern void __cdecl SDL_GetClipRect(SDL_Surface * surface, SDL_Rect * rect);
extern SDL_Surface *__cdecl SDL_DuplicateSurface(SDL_Surface * surface);
extern SDL_Surface *__cdecl SDL_ConvertSurface (SDL_Surface * src, const SDL_PixelFormat * fmt, Uint32 flags);
extern SDL_Surface *__cdecl SDL_ConvertSurfaceFormat (SDL_Surface * src, Uint32 pixel_format, Uint32 flags);
extern int __cdecl SDL_ConvertPixels(int width, int height, Uint32 src_format, const void * src, int src_pitch, Uint32 dst_format, void * dst, int dst_pitch);
extern int __cdecl SDL_PremultiplyAlpha(int width, int height, Uint32 src_format, const void * src, int src_pitch, Uint32 dst_format, void * dst, int dst_pitch);
extern int __cdecl SDL_FillRect (SDL_Surface * dst, const SDL_Rect * rect, Uint32 color);
extern int __cdecl SDL_FillRects (SDL_Surface * dst, const SDL_Rect * rects, int count, Uint32 color);
enum { SDL_BlitSurface = 0 };
extern int __cdecl SDL_UpperBlit (SDL_Surface * src, const SDL_Rect * srcrect, SDL_Surface * dst, SDL_Rect * dstrect);
extern int __cdecl SDL_LowerBlit (SDL_Surface * src, SDL_Rect * srcrect, SDL_Surface * dst, SDL_Rect * dstrect);
extern int __cdecl SDL_SoftStretch(SDL_Surface * src, const SDL_Rect * srcrect, SDL_Surface * dst, const SDL_Rect * dstrect);
extern int __cdecl SDL_SoftStretchLinear(SDL_Surface * src, const SDL_Rect * srcrect, SDL_Surface * dst, const SDL_Rect * dstrect);
enum { SDL_BlitScaled = 0 };
extern int __cdecl SDL_UpperBlitScaled (SDL_Surface * src, const SDL_Rect * srcrect, SDL_Surface * dst, SDL_Rect * dstrect);
extern int __cdecl SDL_LowerBlitScaled (SDL_Surface * src, SDL_Rect * srcrect, SDL_Surface * dst, SDL_Rect * dstrect);
extern void __cdecl SDL_SetYUVConversionMode(SDL_YUV_CONVERSION_MODE mode);
extern SDL_YUV_CONVERSION_MODE __cdecl SDL_GetYUVConversionMode(void);
extern SDL_YUV_CONVERSION_MODE __cdecl SDL_GetYUVConversionModeForResolution(int width, int height);
/* +++++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_surface.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* ++++ END   C:/Users/Chris/include/SDL2/begin_code.h */
typedef struct {
	Uint32 format;
	int w;
	int h;
	int refresh_rate;
	void *driverdata;
} SDL_DisplayMode;
typedef struct SDL_Window SDL_Window;
typedef enum { SDL_WINDOW_FULLSCREEN = 0x00000001, SDL_WINDOW_OPENGL = 0x00000002, SDL_WINDOW_SHOWN = 0x00000004, SDL_WINDOW_HIDDEN = 0x00000008, SDL_WINDOW_BORDERLESS = 0x00000010, SDL_WINDOW_RESIZABLE = 0x00000020, SDL_WINDOW_MINIMIZED = 0x00000040, SDL_WINDOW_MAXIMIZED = 0x00000080, SDL_WINDOW_MOUSE_GRABBED = 0x00000100, SDL_WINDOW_INPUT_FOCUS = 0x00000200, SDL_WINDOW_MOUSE_FOCUS = 0x00000400, SDL_WINDOW_FULLSCREEN_DESKTOP = ( SDL_WINDOW_FULLSCREEN | 0x00001000 ), SDL_WINDOW_FOREIGN = 0x00000800, SDL_WINDOW_ALLOW_HIGHDPI = 0x00002000, SDL_WINDOW_MOUSE_CAPTURE = 0x00004000, SDL_WINDOW_ALWAYS_ON_TOP = 0x00008000, SDL_WINDOW_SKIP_TASKBAR = 0x00010000, SDL_WINDOW_UTILITY = 0x00020000, SDL_WINDOW_TOOLTIP = 0x00040000, SDL_WINDOW_POPUP_MENU = 0x00080000, SDL_WINDOW_KEYBOARD_GRABBED = 0x00100000, SDL_WINDOW_VULKAN = 0x10000000, SDL_WINDOW_METAL = 0x20000000, SDL_WINDOW_INPUT_GRABBED = SDL_WINDOW_MOUSE_GRABBED } SDL_WindowFlags;
enum { SDL_WINDOWPOS_UNDEFINED_MASK = 0x1FFF0000u };
/* #define SDL_WINDOWPOS_UNDEFINED         SDL_WINDOWPOS_UNDEFINED_DISPLAY(0) ### string, not number "SDL_WINDOWPOS_UNDEFINED_DISPLAY(0)" */
enum { SDL_WINDOWPOS_CENTERED_MASK = 0x2FFF0000u };
/* #define SDL_WINDOWPOS_CENTERED         SDL_WINDOWPOS_CENTERED_DISPLAY(0) ### string, not number "SDL_WINDOWPOS_CENTERED_DISPLAY(0)" */
typedef enum { SDL_WINDOWEVENT_NONE, SDL_WINDOWEVENT_SHOWN, SDL_WINDOWEVENT_HIDDEN, SDL_WINDOWEVENT_EXPOSED, SDL_WINDOWEVENT_MOVED, SDL_WINDOWEVENT_RESIZED, SDL_WINDOWEVENT_SIZE_CHANGED, SDL_WINDOWEVENT_MINIMIZED, SDL_WINDOWEVENT_MAXIMIZED, SDL_WINDOWEVENT_RESTORED, SDL_WINDOWEVENT_ENTER, SDL_WINDOWEVENT_LEAVE, SDL_WINDOWEVENT_FOCUS_GAINED, SDL_WINDOWEVENT_FOCUS_LOST, SDL_WINDOWEVENT_CLOSE, SDL_WINDOWEVENT_TAKE_FOCUS, SDL_WINDOWEVENT_HIT_TEST, SDL_WINDOWEVENT_ICCPROF_CHANGED, SDL_WINDOWEVENT_DISPLAY_CHANGED } SDL_WindowEventID;
typedef enum { SDL_DISPLAYEVENT_NONE, SDL_DISPLAYEVENT_ORIENTATION, SDL_DISPLAYEVENT_CONNECTED, SDL_DISPLAYEVENT_DISCONNECTED, SDL_DISPLAYEVENT_MOVED } SDL_DisplayEventID;
typedef enum { SDL_ORIENTATION_UNKNOWN, SDL_ORIENTATION_LANDSCAPE, SDL_ORIENTATION_LANDSCAPE_FLIPPED, SDL_ORIENTATION_PORTRAIT, SDL_ORIENTATION_PORTRAIT_FLIPPED } SDL_DisplayOrientation;
typedef enum { SDL_FLASH_CANCEL, SDL_FLASH_BRIEFLY, SDL_FLASH_UNTIL_FOCUSED } SDL_FlashOperation;
typedef void *SDL_GLContext;
typedef enum { SDL_GL_RED_SIZE, SDL_GL_GREEN_SIZE, SDL_GL_BLUE_SIZE, SDL_GL_ALPHA_SIZE, SDL_GL_BUFFER_SIZE, SDL_GL_DOUBLEBUFFER, SDL_GL_DEPTH_SIZE, SDL_GL_STENCIL_SIZE, SDL_GL_ACCUM_RED_SIZE, SDL_GL_ACCUM_GREEN_SIZE, SDL_GL_ACCUM_BLUE_SIZE, SDL_GL_ACCUM_ALPHA_SIZE, SDL_GL_STEREO, SDL_GL_MULTISAMPLEBUFFERS, SDL_GL_MULTISAMPLESAMPLES, SDL_GL_ACCELERATED_VISUAL, SDL_GL_RETAINED_BACKING, SDL_GL_CONTEXT_MAJOR_VERSION, SDL_GL_CONTEXT_MINOR_VERSION, SDL_GL_CONTEXT_EGL, SDL_GL_CONTEXT_FLAGS, SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_SHARE_WITH_CURRENT_CONTEXT, SDL_GL_FRAMEBUFFER_SRGB_CAPABLE, SDL_GL_CONTEXT_RELEASE_BEHAVIOR, SDL_GL_CONTEXT_RESET_NOTIFICATION, SDL_GL_CONTEXT_NO_ERROR, SDL_GL_FLOATBUFFERS } SDL_GLattr;
typedef enum { SDL_GL_CONTEXT_PROFILE_CORE = 0x0001, SDL_GL_CONTEXT_PROFILE_COMPATIBILITY = 0x0002, SDL_GL_CONTEXT_PROFILE_ES = 0x0004 } SDL_GLprofile;
typedef enum { SDL_GL_CONTEXT_DEBUG_FLAG = 0x0001, SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = 0x0002, SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG = 0x0004, SDL_GL_CONTEXT_RESET_ISOLATION_FLAG = 0x0008 } SDL_GLcontextFlag;
typedef enum { SDL_GL_CONTEXT_RELEASE_BEHAVIOR_NONE = 0x0000, SDL_GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = 0x0001 } SDL_GLcontextReleaseFlag;
typedef enum { SDL_GL_CONTEXT_RESET_NO_NOTIFICATION = 0x0000, SDL_GL_CONTEXT_RESET_LOSE_CONTEXT = 0x0001 } SDL_GLContextResetNotification;
extern int __cdecl SDL_GetNumVideoDrivers(void);
extern const char *__cdecl SDL_GetVideoDriver(int index);
extern int __cdecl SDL_VideoInit(const char *driver_name);
extern void __cdecl SDL_VideoQuit(void);
extern const char *__cdecl SDL_GetCurrentVideoDriver(void);
extern int __cdecl SDL_GetNumVideoDisplays(void);
extern const char * __cdecl SDL_GetDisplayName(int displayIndex);
extern int __cdecl SDL_GetDisplayBounds(int displayIndex, SDL_Rect * rect);
extern int __cdecl SDL_GetDisplayUsableBounds(int displayIndex, SDL_Rect * rect);
extern int __cdecl SDL_GetDisplayDPI(int displayIndex, float * ddpi, float * hdpi, float * vdpi);
extern SDL_DisplayOrientation __cdecl SDL_GetDisplayOrientation(int displayIndex);
extern int __cdecl SDL_GetNumDisplayModes(int displayIndex);
extern int __cdecl SDL_GetDisplayMode(int displayIndex, int modeIndex, SDL_DisplayMode * mode);
extern int __cdecl SDL_GetDesktopDisplayMode(int displayIndex, SDL_DisplayMode * mode);
extern int __cdecl SDL_GetCurrentDisplayMode(int displayIndex, SDL_DisplayMode * mode);
extern SDL_DisplayMode * __cdecl SDL_GetClosestDisplayMode(int displayIndex, const SDL_DisplayMode * mode, SDL_DisplayMode * closest);
extern int __cdecl SDL_GetPointDisplayIndex(const SDL_Point * point);
extern int __cdecl SDL_GetRectDisplayIndex(const SDL_Rect * rect);
extern int __cdecl SDL_GetWindowDisplayIndex(SDL_Window * window);
extern int __cdecl SDL_SetWindowDisplayMode(SDL_Window * window, const SDL_DisplayMode * mode);
extern int __cdecl SDL_GetWindowDisplayMode(SDL_Window * window, SDL_DisplayMode * mode);
extern void* __cdecl SDL_GetWindowICCProfile(SDL_Window * window, size_t* size);
extern Uint32 __cdecl SDL_GetWindowPixelFormat(SDL_Window * window);
extern SDL_Window * __cdecl SDL_CreateWindow(const char *title, int x, int y, int w, int h, Uint32 flags);
extern SDL_Window * __cdecl SDL_CreateWindowFrom(const void *data);
extern Uint32 __cdecl SDL_GetWindowID(SDL_Window * window);
extern SDL_Window * __cdecl SDL_GetWindowFromID(Uint32 id);
extern Uint32 __cdecl SDL_GetWindowFlags(SDL_Window * window);
extern void __cdecl SDL_SetWindowTitle(SDL_Window * window, const char *title);
extern const char *__cdecl SDL_GetWindowTitle(SDL_Window * window);
extern void __cdecl SDL_SetWindowIcon(SDL_Window * window, SDL_Surface * icon);
extern void* __cdecl SDL_SetWindowData(SDL_Window * window, const char *name, void *userdata);
extern void *__cdecl SDL_GetWindowData(SDL_Window * window, const char *name);
extern void __cdecl SDL_SetWindowPosition(SDL_Window * window, int x, int y);
extern void __cdecl SDL_GetWindowPosition(SDL_Window * window, int *x, int *y);
extern void __cdecl SDL_SetWindowSize(SDL_Window * window, int w, int h);
extern void __cdecl SDL_GetWindowSize(SDL_Window * window, int *w, int *h);
extern int __cdecl SDL_GetWindowBordersSize(SDL_Window * window, int *top, int *left, int *bottom, int *right);
extern void __cdecl SDL_GetWindowSizeInPixels(SDL_Window * window, int *w, int *h);
extern void __cdecl SDL_SetWindowMinimumSize(SDL_Window * window, int min_w, int min_h);
extern void __cdecl SDL_GetWindowMinimumSize(SDL_Window * window, int *w, int *h);
extern void __cdecl SDL_SetWindowMaximumSize(SDL_Window * window, int max_w, int max_h);
extern void __cdecl SDL_GetWindowMaximumSize(SDL_Window * window, int *w, int *h);
extern void __cdecl SDL_SetWindowBordered(SDL_Window * window, SDL_bool bordered);
extern void __cdecl SDL_SetWindowResizable(SDL_Window * window, SDL_bool resizable);
extern void __cdecl SDL_SetWindowAlwaysOnTop(SDL_Window * window, SDL_bool on_top);
extern void __cdecl SDL_ShowWindow(SDL_Window * window);
extern void __cdecl SDL_HideWindow(SDL_Window * window);
extern void __cdecl SDL_RaiseWindow(SDL_Window * window);
extern void __cdecl SDL_MaximizeWindow(SDL_Window * window);
extern void __cdecl SDL_MinimizeWindow(SDL_Window * window);
extern void __cdecl SDL_RestoreWindow(SDL_Window * window);
extern int __cdecl SDL_SetWindowFullscreen(SDL_Window * window, Uint32 flags);
extern SDL_bool __cdecl SDL_HasWindowSurface(SDL_Window *window);
extern SDL_Surface * __cdecl SDL_GetWindowSurface(SDL_Window * window);
extern int __cdecl SDL_UpdateWindowSurface(SDL_Window * window);
extern int __cdecl SDL_UpdateWindowSurfaceRects(SDL_Window * window, const SDL_Rect * rects, int numrects);
extern int __cdecl SDL_DestroyWindowSurface(SDL_Window *window);
extern void __cdecl SDL_SetWindowGrab(SDL_Window * window, SDL_bool grabbed);
extern void __cdecl SDL_SetWindowKeyboardGrab(SDL_Window * window, SDL_bool grabbed);
extern void __cdecl SDL_SetWindowMouseGrab(SDL_Window * window, SDL_bool grabbed);
extern SDL_bool __cdecl SDL_GetWindowGrab(SDL_Window * window);
extern SDL_bool __cdecl SDL_GetWindowKeyboardGrab(SDL_Window * window);
extern SDL_bool __cdecl SDL_GetWindowMouseGrab(SDL_Window * window);
extern SDL_Window * __cdecl SDL_GetGrabbedWindow(void);
extern int __cdecl SDL_SetWindowMouseRect(SDL_Window * window, const SDL_Rect * rect);
extern const SDL_Rect * __cdecl SDL_GetWindowMouseRect(SDL_Window * window);
extern int __cdecl SDL_SetWindowBrightness(SDL_Window * window, float brightness);
extern float __cdecl SDL_GetWindowBrightness(SDL_Window * window);
extern int __cdecl SDL_SetWindowOpacity(SDL_Window * window, float opacity);
extern int __cdecl SDL_GetWindowOpacity(SDL_Window * window, float * out_opacity);
extern int __cdecl SDL_SetWindowModalFor(SDL_Window * modal_window, SDL_Window * parent_window);
extern int __cdecl SDL_SetWindowInputFocus(SDL_Window * window);
extern int __cdecl SDL_SetWindowGammaRamp(SDL_Window * window, const Uint16 * red, const Uint16 * green, const Uint16 * blue);
extern int __cdecl SDL_GetWindowGammaRamp(SDL_Window * window, Uint16 * red, Uint16 * green, Uint16 * blue);
typedef enum {
	SDL_HITTEST_NORMAL,
	SDL_HITTEST_DRAGGABLE,
	SDL_HITTEST_RESIZE_TOPLEFT,
	SDL_HITTEST_RESIZE_TOP,
	SDL_HITTEST_RESIZE_TOPRIGHT,
	SDL_HITTEST_RESIZE_RIGHT,
	SDL_HITTEST_RESIZE_BOTTOMRIGHT,
	SDL_HITTEST_RESIZE_BOTTOM,
	SDL_HITTEST_RESIZE_BOTTOMLEFT,
	SDL_HITTEST_RESIZE_LEFT
} SDL_HitTestResult;
typedef SDL_HitTestResult (__cdecl *SDL_HitTest)(SDL_Window *win, const SDL_Point *area, void *data);
extern int __cdecl SDL_SetWindowHitTest(SDL_Window * window, SDL_HitTest callback, void *callback_data);
extern int __cdecl SDL_FlashWindow(SDL_Window * window, SDL_FlashOperation operation);
extern void __cdecl SDL_DestroyWindow(SDL_Window * window);
extern SDL_bool __cdecl SDL_IsScreenSaverEnabled(void);
extern void __cdecl SDL_EnableScreenSaver(void);
extern void __cdecl SDL_DisableScreenSaver(void);
extern int __cdecl SDL_GL_LoadLibrary(const char *path);
extern void *__cdecl SDL_GL_GetProcAddress(const char *proc);
extern void __cdecl SDL_GL_UnloadLibrary(void);
extern SDL_bool __cdecl SDL_GL_ExtensionSupported(const char *extension);
extern void __cdecl SDL_GL_ResetAttributes(void);
extern int __cdecl SDL_GL_SetAttribute(SDL_GLattr attr, int value);
extern int __cdecl SDL_GL_GetAttribute(SDL_GLattr attr, int *value);
extern SDL_GLContext __cdecl SDL_GL_CreateContext(SDL_Window * window);
extern int __cdecl SDL_GL_MakeCurrent(SDL_Window * window, SDL_GLContext context);
extern SDL_Window* __cdecl SDL_GL_GetCurrentWindow(void);
extern SDL_GLContext __cdecl SDL_GL_GetCurrentContext(void);
extern void __cdecl SDL_GL_GetDrawableSize(SDL_Window * window, int *w, int *h);
extern int __cdecl SDL_GL_SetSwapInterval(int interval);
extern int __cdecl SDL_GL_GetSwapInterval(void);
extern void __cdecl SDL_GL_SwapWindow(SDL_Window * window);
extern void __cdecl SDL_GL_DeleteContext(SDL_GLContext context);
/* ++++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* ++++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_video.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_keyboard.h */
enum { SDL_keyboard_h_ = 1 };
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_error.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_error.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_keycode.h */
enum { SDL_keycode_h_ = 1 };
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_scancode.h */
enum { SDL_scancode_h_ = 1 };
/* ++++++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
typedef enum {
	SDL_SCANCODE_UNKNOWN = 0,
	SDL_SCANCODE_A = 4,
	SDL_SCANCODE_B = 5,
	SDL_SCANCODE_C = 6,
	SDL_SCANCODE_D = 7,
	SDL_SCANCODE_E = 8,
	SDL_SCANCODE_F = 9,
	SDL_SCANCODE_G = 10,
	SDL_SCANCODE_H = 11,
	SDL_SCANCODE_I = 12,
	SDL_SCANCODE_J = 13,
	SDL_SCANCODE_K = 14,
	SDL_SCANCODE_L = 15,
	SDL_SCANCODE_M = 16,
	SDL_SCANCODE_N = 17,
	SDL_SCANCODE_O = 18,
	SDL_SCANCODE_P = 19,
	SDL_SCANCODE_Q = 20,
	SDL_SCANCODE_R = 21,
	SDL_SCANCODE_S = 22,
	SDL_SCANCODE_T = 23,
	SDL_SCANCODE_U = 24,
	SDL_SCANCODE_V = 25,
	SDL_SCANCODE_W = 26,
	SDL_SCANCODE_X = 27,
	SDL_SCANCODE_Y = 28,
	SDL_SCANCODE_Z = 29,
	SDL_SCANCODE_1 = 30,
	SDL_SCANCODE_2 = 31,
	SDL_SCANCODE_3 = 32,
	SDL_SCANCODE_4 = 33,
	SDL_SCANCODE_5 = 34,
	SDL_SCANCODE_6 = 35,
	SDL_SCANCODE_7 = 36,
	SDL_SCANCODE_8 = 37,
	SDL_SCANCODE_9 = 38,
	SDL_SCANCODE_0 = 39,
	SDL_SCANCODE_RETURN = 40,
	SDL_SCANCODE_ESCAPE = 41,
	SDL_SCANCODE_BACKSPACE = 42,
	SDL_SCANCODE_TAB = 43,
	SDL_SCANCODE_SPACE = 44,
	SDL_SCANCODE_MINUS = 45,
	SDL_SCANCODE_EQUALS = 46,
	SDL_SCANCODE_LEFTBRACKET = 47,
	SDL_SCANCODE_RIGHTBRACKET = 48,
	SDL_SCANCODE_BACKSLASH = 49,
	SDL_SCANCODE_NONUSHASH = 50,
	SDL_SCANCODE_SEMICOLON = 51,
	SDL_SCANCODE_APOSTROPHE = 52,
	SDL_SCANCODE_GRAVE = 53,
	SDL_SCANCODE_COMMA = 54,
	SDL_SCANCODE_PERIOD = 55,
	SDL_SCANCODE_SLASH = 56,
	SDL_SCANCODE_CAPSLOCK = 57,
	SDL_SCANCODE_F1 = 58,
	SDL_SCANCODE_F2 = 59,
	SDL_SCANCODE_F3 = 60,
	SDL_SCANCODE_F4 = 61,
	SDL_SCANCODE_F5 = 62,
	SDL_SCANCODE_F6 = 63,
	SDL_SCANCODE_F7 = 64,
	SDL_SCANCODE_F8 = 65,
	SDL_SCANCODE_F9 = 66,
	SDL_SCANCODE_F10 = 67,
	SDL_SCANCODE_F11 = 68,
	SDL_SCANCODE_F12 = 69,
	SDL_SCANCODE_PRINTSCREEN = 70,
	SDL_SCANCODE_SCROLLLOCK = 71,
	SDL_SCANCODE_PAUSE = 72,
	SDL_SCANCODE_INSERT = 73,
	SDL_SCANCODE_HOME = 74,
	SDL_SCANCODE_PAGEUP = 75,
	SDL_SCANCODE_DELETE = 76,
	SDL_SCANCODE_END = 77,
	SDL_SCANCODE_PAGEDOWN = 78,
	SDL_SCANCODE_RIGHT = 79,
	SDL_SCANCODE_LEFT = 80,
	SDL_SCANCODE_DOWN = 81,
	SDL_SCANCODE_UP = 82,
	SDL_SCANCODE_NUMLOCKCLEAR = 83,
	SDL_SCANCODE_KP_DIVIDE = 84,
	SDL_SCANCODE_KP_MULTIPLY = 85,
	SDL_SCANCODE_KP_MINUS = 86,
	SDL_SCANCODE_KP_PLUS = 87,
	SDL_SCANCODE_KP_ENTER = 88,
	SDL_SCANCODE_KP_1 = 89,
	SDL_SCANCODE_KP_2 = 90,
	SDL_SCANCODE_KP_3 = 91,
	SDL_SCANCODE_KP_4 = 92,
	SDL_SCANCODE_KP_5 = 93,
	SDL_SCANCODE_KP_6 = 94,
	SDL_SCANCODE_KP_7 = 95,
	SDL_SCANCODE_KP_8 = 96,
	SDL_SCANCODE_KP_9 = 97,
	SDL_SCANCODE_KP_0 = 98,
	SDL_SCANCODE_KP_PERIOD = 99,
	SDL_SCANCODE_NONUSBACKSLASH = 100,
	SDL_SCANCODE_APPLICATION = 101,
	SDL_SCANCODE_POWER = 102,
	SDL_SCANCODE_KP_EQUALS = 103,
	SDL_SCANCODE_F13 = 104,
	SDL_SCANCODE_F14 = 105,
	SDL_SCANCODE_F15 = 106,
	SDL_SCANCODE_F16 = 107,
	SDL_SCANCODE_F17 = 108,
	SDL_SCANCODE_F18 = 109,
	SDL_SCANCODE_F19 = 110,
	SDL_SCANCODE_F20 = 111,
	SDL_SCANCODE_F21 = 112,
	SDL_SCANCODE_F22 = 113,
	SDL_SCANCODE_F23 = 114,
	SDL_SCANCODE_F24 = 115,
	SDL_SCANCODE_EXECUTE = 116,
	SDL_SCANCODE_HELP = 117,
	SDL_SCANCODE_MENU = 118,
	SDL_SCANCODE_SELECT = 119,
	SDL_SCANCODE_STOP = 120,
	SDL_SCANCODE_AGAIN = 121,
	SDL_SCANCODE_UNDO = 122,
	SDL_SCANCODE_CUT = 123,
	SDL_SCANCODE_COPY = 124,
	SDL_SCANCODE_PASTE = 125,
	SDL_SCANCODE_FIND = 126,
	SDL_SCANCODE_MUTE = 127,
	SDL_SCANCODE_VOLUMEUP = 128,
	SDL_SCANCODE_VOLUMEDOWN = 129,
	SDL_SCANCODE_KP_COMMA = 133,
	SDL_SCANCODE_KP_EQUALSAS400 = 134,
	SDL_SCANCODE_INTERNATIONAL1 = 135,
	SDL_SCANCODE_INTERNATIONAL2 = 136,
	SDL_SCANCODE_INTERNATIONAL3 = 137,
	SDL_SCANCODE_INTERNATIONAL4 = 138,
	SDL_SCANCODE_INTERNATIONAL5 = 139,
	SDL_SCANCODE_INTERNATIONAL6 = 140,
	SDL_SCANCODE_INTERNATIONAL7 = 141,
	SDL_SCANCODE_INTERNATIONAL8 = 142,
	SDL_SCANCODE_INTERNATIONAL9 = 143,
	SDL_SCANCODE_LANG1 = 144,
	SDL_SCANCODE_LANG2 = 145,
	SDL_SCANCODE_LANG3 = 146,
	SDL_SCANCODE_LANG4 = 147,
	SDL_SCANCODE_LANG5 = 148,
	SDL_SCANCODE_LANG6 = 149,
	SDL_SCANCODE_LANG7 = 150,
	SDL_SCANCODE_LANG8 = 151,
	SDL_SCANCODE_LANG9 = 152,
	SDL_SCANCODE_ALTERASE = 153,
	SDL_SCANCODE_SYSREQ = 154,
	SDL_SCANCODE_CANCEL = 155,
	SDL_SCANCODE_CLEAR = 156,
	SDL_SCANCODE_PRIOR = 157,
	SDL_SCANCODE_RETURN2 = 158,
	SDL_SCANCODE_SEPARATOR = 159,
	SDL_SCANCODE_OUT = 160,
	SDL_SCANCODE_OPER = 161,
	SDL_SCANCODE_CLEARAGAIN = 162,
	SDL_SCANCODE_CRSEL = 163,
	SDL_SCANCODE_EXSEL = 164,
	SDL_SCANCODE_KP_00 = 176,
	SDL_SCANCODE_KP_000 = 177,
	SDL_SCANCODE_THOUSANDSSEPARATOR = 178,
	SDL_SCANCODE_DECIMALSEPARATOR = 179,
	SDL_SCANCODE_CURRENCYUNIT = 180,
	SDL_SCANCODE_CURRENCYSUBUNIT = 181,
	SDL_SCANCODE_KP_LEFTPAREN = 182,
	SDL_SCANCODE_KP_RIGHTPAREN = 183,
	SDL_SCANCODE_KP_LEFTBRACE = 184,
	SDL_SCANCODE_KP_RIGHTBRACE = 185,
	SDL_SCANCODE_KP_TAB = 186,
	SDL_SCANCODE_KP_BACKSPACE = 187,
	SDL_SCANCODE_KP_A = 188,
	SDL_SCANCODE_KP_B = 189,
	SDL_SCANCODE_KP_C = 190,
	SDL_SCANCODE_KP_D = 191,
	SDL_SCANCODE_KP_E = 192,
	SDL_SCANCODE_KP_F = 193,
	SDL_SCANCODE_KP_XOR = 194,
	SDL_SCANCODE_KP_POWER = 195,
	SDL_SCANCODE_KP_PERCENT = 196,
	SDL_SCANCODE_KP_LESS = 197,
	SDL_SCANCODE_KP_GREATER = 198,
	SDL_SCANCODE_KP_AMPERSAND = 199,
	SDL_SCANCODE_KP_DBLAMPERSAND = 200,
	SDL_SCANCODE_KP_VERTICALBAR = 201,
	SDL_SCANCODE_KP_DBLVERTICALBAR = 202,
	SDL_SCANCODE_KP_COLON = 203,
	SDL_SCANCODE_KP_HASH = 204,
	SDL_SCANCODE_KP_SPACE = 205,
	SDL_SCANCODE_KP_AT = 206,
	SDL_SCANCODE_KP_EXCLAM = 207,
	SDL_SCANCODE_KP_MEMSTORE = 208,
	SDL_SCANCODE_KP_MEMRECALL = 209,
	SDL_SCANCODE_KP_MEMCLEAR = 210,
	SDL_SCANCODE_KP_MEMADD = 211,
	SDL_SCANCODE_KP_MEMSUBTRACT = 212,
	SDL_SCANCODE_KP_MEMMULTIPLY = 213,
	SDL_SCANCODE_KP_MEMDIVIDE = 214,
	SDL_SCANCODE_KP_PLUSMINUS = 215,
	SDL_SCANCODE_KP_CLEAR = 216,
	SDL_SCANCODE_KP_CLEARENTRY = 217,
	SDL_SCANCODE_KP_BINARY = 218,
	SDL_SCANCODE_KP_OCTAL = 219,
	SDL_SCANCODE_KP_DECIMAL = 220,
	SDL_SCANCODE_KP_HEXADECIMAL = 221,
	SDL_SCANCODE_LCTRL = 224,
	SDL_SCANCODE_LSHIFT = 225,
	SDL_SCANCODE_LALT = 226,
	SDL_SCANCODE_LGUI = 227,
	SDL_SCANCODE_RCTRL = 228,
	SDL_SCANCODE_RSHIFT = 229,
	SDL_SCANCODE_RALT = 230,
	SDL_SCANCODE_RGUI = 231,
	SDL_SCANCODE_MODE = 257,
	SDL_SCANCODE_AUDIONEXT = 258,
	SDL_SCANCODE_AUDIOPREV = 259,
	SDL_SCANCODE_AUDIOSTOP = 260,
	SDL_SCANCODE_AUDIOPLAY = 261,
	SDL_SCANCODE_AUDIOMUTE = 262,
	SDL_SCANCODE_MEDIASELECT = 263,
	SDL_SCANCODE_WWW = 264,
	SDL_SCANCODE_MAIL = 265,
	SDL_SCANCODE_CALCULATOR = 266,
	SDL_SCANCODE_COMPUTER = 267,
	SDL_SCANCODE_AC_SEARCH = 268,
	SDL_SCANCODE_AC_HOME = 269,
	SDL_SCANCODE_AC_BACK = 270,
	SDL_SCANCODE_AC_FORWARD = 271,
	SDL_SCANCODE_AC_STOP = 272,
	SDL_SCANCODE_AC_REFRESH = 273,
	SDL_SCANCODE_AC_BOOKMARKS = 274,
	SDL_SCANCODE_BRIGHTNESSDOWN = 275,
	SDL_SCANCODE_BRIGHTNESSUP = 276,
	SDL_SCANCODE_DISPLAYSWITCH = 277,
	SDL_SCANCODE_KBDILLUMTOGGLE = 278,
	SDL_SCANCODE_KBDILLUMDOWN = 279,
	SDL_SCANCODE_KBDILLUMUP = 280,
	SDL_SCANCODE_EJECT = 281,
	SDL_SCANCODE_SLEEP = 282,
	SDL_SCANCODE_APP1 = 283,
	SDL_SCANCODE_APP2 = 284,
	SDL_SCANCODE_AUDIOREWIND = 285,
	SDL_SCANCODE_AUDIOFASTFORWARD = 286,
	SDL_SCANCODE_SOFTLEFT = 287,
	SDL_SCANCODE_SOFTRIGHT = 288,
	SDL_SCANCODE_CALL = 289,
	SDL_SCANCODE_ENDCALL = 290,
	SDL_NUM_SCANCODES = 512
} SDL_Scancode;
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_scancode.h */
typedef Sint32 SDL_Keycode;
enum { SDLK_SCANCODE_MASK = 1073741824 };
typedef enum {
	SDLK_UNKNOWN = 0,
	SDLK_RETURN = '\r',
	SDLK_ESCAPE = '\x1B',
	SDLK_BACKSPACE = '\b',
	SDLK_TAB = '\t',
	SDLK_SPACE = ' ',
	SDLK_EXCLAIM = '!',
	SDLK_QUOTEDBL = '"',
	SDLK_HASH = '#',
	SDLK_PERCENT = '%',
	SDLK_DOLLAR = '$',
	SDLK_AMPERSAND = '&',
	SDLK_QUOTE = '\'',
	SDLK_LEFTPAREN = '(',
	SDLK_RIGHTPAREN = ')',
	SDLK_ASTERISK = '*',
	SDLK_PLUS = '+',
	SDLK_COMMA = ',',
	SDLK_MINUS = '-',
	SDLK_PERIOD = '.',
	SDLK_SLASH = '/',
	SDLK_0 = '0',
	SDLK_1 = '1',
	SDLK_2 = '2',
	SDLK_3 = '3',
	SDLK_4 = '4',
	SDLK_5 = '5',
	SDLK_6 = '6',
	SDLK_7 = '7',
	SDLK_8 = '8',
	SDLK_9 = '9',
	SDLK_COLON = ':',
	SDLK_SEMICOLON = ';',
	SDLK_LESS = '<',
	SDLK_EQUALS = '=',
	SDLK_GREATER = '>',
	SDLK_QUESTION = '?',
	SDLK_AT = '@',
	SDLK_LEFTBRACKET = '[',
	SDLK_BACKSLASH = '\\',
	SDLK_RIGHTBRACKET = ']',
	SDLK_CARET = '^',
	SDLK_UNDERSCORE = '_',
	SDLK_BACKQUOTE = '`',
	SDLK_a = 'a',
	SDLK_b = 'b',
	SDLK_c = 'c',
	SDLK_d = 'd',
	SDLK_e = 'e',
	SDLK_f = 'f',
	SDLK_g = 'g',
	SDLK_h = 'h',
	SDLK_i = 'i',
	SDLK_j = 'j',
	SDLK_k = 'k',
	SDLK_l = 'l',
	SDLK_m = 'm',
	SDLK_n = 'n',
	SDLK_o = 'o',
	SDLK_p = 'p',
	SDLK_q = 'q',
	SDLK_r = 'r',
	SDLK_s = 's',
	SDLK_t = 't',
	SDLK_u = 'u',
	SDLK_v = 'v',
	SDLK_w = 'w',
	SDLK_x = 'x',
	SDLK_y = 'y',
	SDLK_z = 'z',
	SDLK_CAPSLOCK = (SDL_SCANCODE_CAPSLOCK | (1<<30)) ,
	SDLK_F1 = (SDL_SCANCODE_F1 | (1<<30)) ,
	SDLK_F2 = (SDL_SCANCODE_F2 | (1<<30)) ,
	SDLK_F3 = (SDL_SCANCODE_F3 | (1<<30)) ,
	SDLK_F4 = (SDL_SCANCODE_F4 | (1<<30)) ,
	SDLK_F5 = (SDL_SCANCODE_F5 | (1<<30)) ,
	SDLK_F6 = (SDL_SCANCODE_F6 | (1<<30)) ,
	SDLK_F7 = (SDL_SCANCODE_F7 | (1<<30)) ,
	SDLK_F8 = (SDL_SCANCODE_F8 | (1<<30)) ,
	SDLK_F9 = (SDL_SCANCODE_F9 | (1<<30)) ,
	SDLK_F10 = (SDL_SCANCODE_F10 | (1<<30)) ,
	SDLK_F11 = (SDL_SCANCODE_F11 | (1<<30)) ,
	SDLK_F12 = (SDL_SCANCODE_F12 | (1<<30)) ,
	SDLK_PRINTSCREEN = (SDL_SCANCODE_PRINTSCREEN | (1<<30)) ,
	SDLK_SCROLLLOCK = (SDL_SCANCODE_SCROLLLOCK | (1<<30)) ,
	SDLK_PAUSE = (SDL_SCANCODE_PAUSE | (1<<30)) ,
	SDLK_INSERT = (SDL_SCANCODE_INSERT | (1<<30)) ,
	SDLK_HOME = (SDL_SCANCODE_HOME | (1<<30)) ,
	SDLK_PAGEUP = (SDL_SCANCODE_PAGEUP | (1<<30)) ,
	SDLK_DELETE = '\x7F',
	SDLK_END = (SDL_SCANCODE_END | (1<<30)) ,
	SDLK_PAGEDOWN = (SDL_SCANCODE_PAGEDOWN | (1<<30)) ,
	SDLK_RIGHT = (SDL_SCANCODE_RIGHT | (1<<30)) ,
	SDLK_LEFT = (SDL_SCANCODE_LEFT | (1<<30)) ,
	SDLK_DOWN = (SDL_SCANCODE_DOWN | (1<<30)) ,
	SDLK_UP = (SDL_SCANCODE_UP | (1<<30)) ,
	SDLK_NUMLOCKCLEAR = (SDL_SCANCODE_NUMLOCKCLEAR | (1<<30)) ,
	SDLK_KP_DIVIDE = (SDL_SCANCODE_KP_DIVIDE | (1<<30)) ,
	SDLK_KP_MULTIPLY = (SDL_SCANCODE_KP_MULTIPLY | (1<<30)) ,
	SDLK_KP_MINUS = (SDL_SCANCODE_KP_MINUS | (1<<30)) ,
	SDLK_KP_PLUS = (SDL_SCANCODE_KP_PLUS | (1<<30)) ,
	SDLK_KP_ENTER = (SDL_SCANCODE_KP_ENTER | (1<<30)) ,
	SDLK_KP_1 = (SDL_SCANCODE_KP_1 | (1<<30)) ,
	SDLK_KP_2 = (SDL_SCANCODE_KP_2 | (1<<30)) ,
	SDLK_KP_3 = (SDL_SCANCODE_KP_3 | (1<<30)) ,
	SDLK_KP_4 = (SDL_SCANCODE_KP_4 | (1<<30)) ,
	SDLK_KP_5 = (SDL_SCANCODE_KP_5 | (1<<30)) ,
	SDLK_KP_6 = (SDL_SCANCODE_KP_6 | (1<<30)) ,
	SDLK_KP_7 = (SDL_SCANCODE_KP_7 | (1<<30)) ,
	SDLK_KP_8 = (SDL_SCANCODE_KP_8 | (1<<30)) ,
	SDLK_KP_9 = (SDL_SCANCODE_KP_9 | (1<<30)) ,
	SDLK_KP_0 = (SDL_SCANCODE_KP_0 | (1<<30)) ,
	SDLK_KP_PERIOD = (SDL_SCANCODE_KP_PERIOD | (1<<30)) ,
	SDLK_APPLICATION = (SDL_SCANCODE_APPLICATION | (1<<30)) ,
	SDLK_POWER = (SDL_SCANCODE_POWER | (1<<30)) ,
	SDLK_KP_EQUALS = (SDL_SCANCODE_KP_EQUALS | (1<<30)) ,
	SDLK_F13 = (SDL_SCANCODE_F13 | (1<<30)) ,
	SDLK_F14 = (SDL_SCANCODE_F14 | (1<<30)) ,
	SDLK_F15 = (SDL_SCANCODE_F15 | (1<<30)) ,
	SDLK_F16 = (SDL_SCANCODE_F16 | (1<<30)) ,
	SDLK_F17 = (SDL_SCANCODE_F17 | (1<<30)) ,
	SDLK_F18 = (SDL_SCANCODE_F18 | (1<<30)) ,
	SDLK_F19 = (SDL_SCANCODE_F19 | (1<<30)) ,
	SDLK_F20 = (SDL_SCANCODE_F20 | (1<<30)) ,
	SDLK_F21 = (SDL_SCANCODE_F21 | (1<<30)) ,
	SDLK_F22 = (SDL_SCANCODE_F22 | (1<<30)) ,
	SDLK_F23 = (SDL_SCANCODE_F23 | (1<<30)) ,
	SDLK_F24 = (SDL_SCANCODE_F24 | (1<<30)) ,
	SDLK_EXECUTE = (SDL_SCANCODE_EXECUTE | (1<<30)) ,
	SDLK_HELP = (SDL_SCANCODE_HELP | (1<<30)) ,
	SDLK_MENU = (SDL_SCANCODE_MENU | (1<<30)) ,
	SDLK_SELECT = (SDL_SCANCODE_SELECT | (1<<30)) ,
	SDLK_STOP = (SDL_SCANCODE_STOP | (1<<30)) ,
	SDLK_AGAIN = (SDL_SCANCODE_AGAIN | (1<<30)) ,
	SDLK_UNDO = (SDL_SCANCODE_UNDO | (1<<30)) ,
	SDLK_CUT = (SDL_SCANCODE_CUT | (1<<30)) ,
	SDLK_COPY = (SDL_SCANCODE_COPY | (1<<30)) ,
	SDLK_PASTE = (SDL_SCANCODE_PASTE | (1<<30)) ,
	SDLK_FIND = (SDL_SCANCODE_FIND | (1<<30)) ,
	SDLK_MUTE = (SDL_SCANCODE_MUTE | (1<<30)) ,
	SDLK_VOLUMEUP = (SDL_SCANCODE_VOLUMEUP | (1<<30)) ,
	SDLK_VOLUMEDOWN = (SDL_SCANCODE_VOLUMEDOWN | (1<<30)) ,
	SDLK_KP_COMMA = (SDL_SCANCODE_KP_COMMA | (1<<30)) ,
	SDLK_KP_EQUALSAS400 = (SDL_SCANCODE_KP_EQUALSAS400 | (1<<30)) ,
	SDLK_ALTERASE = (SDL_SCANCODE_ALTERASE | (1<<30)) ,
	SDLK_SYSREQ = (SDL_SCANCODE_SYSREQ | (1<<30)) ,
	SDLK_CANCEL = (SDL_SCANCODE_CANCEL | (1<<30)) ,
	SDLK_CLEAR = (SDL_SCANCODE_CLEAR | (1<<30)) ,
	SDLK_PRIOR = (SDL_SCANCODE_PRIOR | (1<<30)) ,
	SDLK_RETURN2 = (SDL_SCANCODE_RETURN2 | (1<<30)) ,
	SDLK_SEPARATOR = (SDL_SCANCODE_SEPARATOR | (1<<30)) ,
	SDLK_OUT = (SDL_SCANCODE_OUT | (1<<30)) ,
	SDLK_OPER = (SDL_SCANCODE_OPER | (1<<30)) ,
	SDLK_CLEARAGAIN = (SDL_SCANCODE_CLEARAGAIN | (1<<30)) ,
	SDLK_CRSEL = (SDL_SCANCODE_CRSEL | (1<<30)) ,
	SDLK_EXSEL = (SDL_SCANCODE_EXSEL | (1<<30)) ,
	SDLK_KP_00 = (SDL_SCANCODE_KP_00 | (1<<30)) ,
	SDLK_KP_000 = (SDL_SCANCODE_KP_000 | (1<<30)) ,
	SDLK_THOUSANDSSEPARATOR = (SDL_SCANCODE_THOUSANDSSEPARATOR | (1<<30)) ,
	SDLK_DECIMALSEPARATOR = (SDL_SCANCODE_DECIMALSEPARATOR | (1<<30)) ,
	SDLK_CURRENCYUNIT = (SDL_SCANCODE_CURRENCYUNIT | (1<<30)) ,
	SDLK_CURRENCYSUBUNIT = (SDL_SCANCODE_CURRENCYSUBUNIT | (1<<30)) ,
	SDLK_KP_LEFTPAREN = (SDL_SCANCODE_KP_LEFTPAREN | (1<<30)) ,
	SDLK_KP_RIGHTPAREN = (SDL_SCANCODE_KP_RIGHTPAREN | (1<<30)) ,
	SDLK_KP_LEFTBRACE = (SDL_SCANCODE_KP_LEFTBRACE | (1<<30)) ,
	SDLK_KP_RIGHTBRACE = (SDL_SCANCODE_KP_RIGHTBRACE | (1<<30)) ,
	SDLK_KP_TAB = (SDL_SCANCODE_KP_TAB | (1<<30)) ,
	SDLK_KP_BACKSPACE = (SDL_SCANCODE_KP_BACKSPACE | (1<<30)) ,
	SDLK_KP_A = (SDL_SCANCODE_KP_A | (1<<30)) ,
	SDLK_KP_B = (SDL_SCANCODE_KP_B | (1<<30)) ,
	SDLK_KP_C = (SDL_SCANCODE_KP_C | (1<<30)) ,
	SDLK_KP_D = (SDL_SCANCODE_KP_D | (1<<30)) ,
	SDLK_KP_E = (SDL_SCANCODE_KP_E | (1<<30)) ,
	SDLK_KP_F = (SDL_SCANCODE_KP_F | (1<<30)) ,
	SDLK_KP_XOR = (SDL_SCANCODE_KP_XOR | (1<<30)) ,
	SDLK_KP_POWER = (SDL_SCANCODE_KP_POWER | (1<<30)) ,
	SDLK_KP_PERCENT = (SDL_SCANCODE_KP_PERCENT | (1<<30)) ,
	SDLK_KP_LESS = (SDL_SCANCODE_KP_LESS | (1<<30)) ,
	SDLK_KP_GREATER = (SDL_SCANCODE_KP_GREATER | (1<<30)) ,
	SDLK_KP_AMPERSAND = (SDL_SCANCODE_KP_AMPERSAND | (1<<30)) ,
	SDLK_KP_DBLAMPERSAND = (SDL_SCANCODE_KP_DBLAMPERSAND | (1<<30)) ,
	SDLK_KP_VERTICALBAR = (SDL_SCANCODE_KP_VERTICALBAR | (1<<30)) ,
	SDLK_KP_DBLVERTICALBAR = (SDL_SCANCODE_KP_DBLVERTICALBAR | (1<<30)) ,
	SDLK_KP_COLON = (SDL_SCANCODE_KP_COLON | (1<<30)) ,
	SDLK_KP_HASH = (SDL_SCANCODE_KP_HASH | (1<<30)) ,
	SDLK_KP_SPACE = (SDL_SCANCODE_KP_SPACE | (1<<30)) ,
	SDLK_KP_AT = (SDL_SCANCODE_KP_AT | (1<<30)) ,
	SDLK_KP_EXCLAM = (SDL_SCANCODE_KP_EXCLAM | (1<<30)) ,
	SDLK_KP_MEMSTORE = (SDL_SCANCODE_KP_MEMSTORE | (1<<30)) ,
	SDLK_KP_MEMRECALL = (SDL_SCANCODE_KP_MEMRECALL | (1<<30)) ,
	SDLK_KP_MEMCLEAR = (SDL_SCANCODE_KP_MEMCLEAR | (1<<30)) ,
	SDLK_KP_MEMADD = (SDL_SCANCODE_KP_MEMADD | (1<<30)) ,
	SDLK_KP_MEMSUBTRACT = (SDL_SCANCODE_KP_MEMSUBTRACT | (1<<30)) ,
	SDLK_KP_MEMMULTIPLY = (SDL_SCANCODE_KP_MEMMULTIPLY | (1<<30)) ,
	SDLK_KP_MEMDIVIDE = (SDL_SCANCODE_KP_MEMDIVIDE | (1<<30)) ,
	SDLK_KP_PLUSMINUS = (SDL_SCANCODE_KP_PLUSMINUS | (1<<30)) ,
	SDLK_KP_CLEAR = (SDL_SCANCODE_KP_CLEAR | (1<<30)) ,
	SDLK_KP_CLEARENTRY = (SDL_SCANCODE_KP_CLEARENTRY | (1<<30)) ,
	SDLK_KP_BINARY = (SDL_SCANCODE_KP_BINARY | (1<<30)) ,
	SDLK_KP_OCTAL = (SDL_SCANCODE_KP_OCTAL | (1<<30)) ,
	SDLK_KP_DECIMAL = (SDL_SCANCODE_KP_DECIMAL | (1<<30)) ,
	SDLK_KP_HEXADECIMAL = (SDL_SCANCODE_KP_HEXADECIMAL | (1<<30)) ,
	SDLK_LCTRL = (SDL_SCANCODE_LCTRL | (1<<30)) ,
	SDLK_LSHIFT = (SDL_SCANCODE_LSHIFT | (1<<30)) ,
	SDLK_LALT = (SDL_SCANCODE_LALT | (1<<30)) ,
	SDLK_LGUI = (SDL_SCANCODE_LGUI | (1<<30)) ,
	SDLK_RCTRL = (SDL_SCANCODE_RCTRL | (1<<30)) ,
	SDLK_RSHIFT = (SDL_SCANCODE_RSHIFT | (1<<30)) ,
	SDLK_RALT = (SDL_SCANCODE_RALT | (1<<30)) ,
	SDLK_RGUI = (SDL_SCANCODE_RGUI | (1<<30)) ,
	SDLK_MODE = (SDL_SCANCODE_MODE | (1<<30)) ,
	SDLK_AUDIONEXT = (SDL_SCANCODE_AUDIONEXT | (1<<30)) ,
	SDLK_AUDIOPREV = (SDL_SCANCODE_AUDIOPREV | (1<<30)) ,
	SDLK_AUDIOSTOP = (SDL_SCANCODE_AUDIOSTOP | (1<<30)) ,
	SDLK_AUDIOPLAY = (SDL_SCANCODE_AUDIOPLAY | (1<<30)) ,
	SDLK_AUDIOMUTE = (SDL_SCANCODE_AUDIOMUTE | (1<<30)) ,
	SDLK_MEDIASELECT = (SDL_SCANCODE_MEDIASELECT | (1<<30)) ,
	SDLK_WWW = (SDL_SCANCODE_WWW | (1<<30)) ,
	SDLK_MAIL = (SDL_SCANCODE_MAIL | (1<<30)) ,
	SDLK_CALCULATOR = (SDL_SCANCODE_CALCULATOR | (1<<30)) ,
	SDLK_COMPUTER = (SDL_SCANCODE_COMPUTER | (1<<30)) ,
	SDLK_AC_SEARCH = (SDL_SCANCODE_AC_SEARCH | (1<<30)) ,
	SDLK_AC_HOME = (SDL_SCANCODE_AC_HOME | (1<<30)) ,
	SDLK_AC_BACK = (SDL_SCANCODE_AC_BACK | (1<<30)) ,
	SDLK_AC_FORWARD = (SDL_SCANCODE_AC_FORWARD | (1<<30)) ,
	SDLK_AC_STOP = (SDL_SCANCODE_AC_STOP | (1<<30)) ,
	SDLK_AC_REFRESH = (SDL_SCANCODE_AC_REFRESH | (1<<30)) ,
	SDLK_AC_BOOKMARKS = (SDL_SCANCODE_AC_BOOKMARKS | (1<<30)) ,
	SDLK_BRIGHTNESSDOWN = (SDL_SCANCODE_BRIGHTNESSDOWN | (1<<30)) ,
	SDLK_BRIGHTNESSUP = (SDL_SCANCODE_BRIGHTNESSUP | (1<<30)) ,
	SDLK_DISPLAYSWITCH = (SDL_SCANCODE_DISPLAYSWITCH | (1<<30)) ,
	SDLK_KBDILLUMTOGGLE = (SDL_SCANCODE_KBDILLUMTOGGLE | (1<<30)) ,
	SDLK_KBDILLUMDOWN = (SDL_SCANCODE_KBDILLUMDOWN | (1<<30)) ,
	SDLK_KBDILLUMUP = (SDL_SCANCODE_KBDILLUMUP | (1<<30)) ,
	SDLK_EJECT = (SDL_SCANCODE_EJECT | (1<<30)) ,
	SDLK_SLEEP = (SDL_SCANCODE_SLEEP | (1<<30)) ,
	SDLK_APP1 = (SDL_SCANCODE_APP1 | (1<<30)) ,
	SDLK_APP2 = (SDL_SCANCODE_APP2 | (1<<30)) ,
	SDLK_AUDIOREWIND = (SDL_SCANCODE_AUDIOREWIND | (1<<30)) ,
	SDLK_AUDIOFASTFORWARD = (SDL_SCANCODE_AUDIOFASTFORWARD | (1<<30)) ,
	SDLK_SOFTLEFT = (SDL_SCANCODE_SOFTLEFT | (1<<30)) ,
	SDLK_SOFTRIGHT = (SDL_SCANCODE_SOFTRIGHT | (1<<30)) ,
	SDLK_CALL = (SDL_SCANCODE_CALL | (1<<30)) ,
	SDLK_ENDCALL = (SDL_SCANCODE_ENDCALL | (1<<30))
} SDL_KeyCode;
typedef enum {
	KMOD_NONE = 0x0000,
	KMOD_LSHIFT = 0x0001,
	KMOD_RSHIFT = 0x0002,
	KMOD_LCTRL = 0x0040,
	KMOD_RCTRL = 0x0080,
	KMOD_LALT = 0x0100,
	KMOD_RALT = 0x0200,
	KMOD_LGUI = 0x0400,
	KMOD_RGUI = 0x0800,
	KMOD_NUM = 0x1000,
	KMOD_CAPS = 0x2000,
	KMOD_MODE = 0x4000,
	KMOD_SCROLL = 0x8000,
	KMOD_CTRL = KMOD_LCTRL | KMOD_RCTRL,
	KMOD_SHIFT = KMOD_LSHIFT | KMOD_RSHIFT,
	KMOD_ALT = KMOD_LALT | KMOD_RALT,
	KMOD_GUI = KMOD_LGUI | KMOD_RGUI,
	KMOD_RESERVED = KMOD_SCROLL
} SDL_Keymod;
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_keycode.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_video.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_video.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* ++++ END   C:/Users/Chris/include/SDL2/begin_code.h */
typedef struct SDL_Keysym {
	SDL_Scancode scancode;
	SDL_Keycode sym;
	Uint16 mod;
	Uint32 unused;
} SDL_Keysym;
extern SDL_Window * __cdecl SDL_GetKeyboardFocus(void);
extern const Uint8 *__cdecl SDL_GetKeyboardState(int *numkeys);
extern void __cdecl SDL_ResetKeyboard(void);
extern SDL_Keymod __cdecl SDL_GetModState(void);
extern void __cdecl SDL_SetModState(SDL_Keymod modstate);
extern SDL_Keycode __cdecl SDL_GetKeyFromScancode(SDL_Scancode scancode);
extern SDL_Scancode __cdecl SDL_GetScancodeFromKey(SDL_Keycode key);
extern const char *__cdecl SDL_GetScancodeName(SDL_Scancode scancode);
extern SDL_Scancode __cdecl SDL_GetScancodeFromName(const char *name);
extern const char *__cdecl SDL_GetKeyName(SDL_Keycode key);
extern SDL_Keycode __cdecl SDL_GetKeyFromName(const char *name);
extern void __cdecl SDL_StartTextInput(void);
extern SDL_bool __cdecl SDL_IsTextInputActive(void);
extern void __cdecl SDL_StopTextInput(void);
extern void __cdecl SDL_ClearComposition(void);
extern SDL_bool __cdecl SDL_IsTextInputShown(void);
extern void __cdecl SDL_SetTextInputRect(const SDL_Rect *rect);
extern SDL_bool __cdecl SDL_HasScreenKeyboardSupport(void);
extern SDL_bool __cdecl SDL_IsScreenKeyboardShown(SDL_Window *window);
/* ++++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* ++++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_keyboard.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_mouse.h */
enum { SDL_mouse_h_ = 1 };
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_error.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_error.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_video.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_video.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* ++++ END   C:/Users/Chris/include/SDL2/begin_code.h */
typedef struct SDL_Cursor SDL_Cursor;
typedef enum { SDL_SYSTEM_CURSOR_ARROW, SDL_SYSTEM_CURSOR_IBEAM, SDL_SYSTEM_CURSOR_WAIT, SDL_SYSTEM_CURSOR_CROSSHAIR, SDL_SYSTEM_CURSOR_WAITARROW, SDL_SYSTEM_CURSOR_SIZENWSE, SDL_SYSTEM_CURSOR_SIZENESW, SDL_SYSTEM_CURSOR_SIZEWE, SDL_SYSTEM_CURSOR_SIZENS, SDL_SYSTEM_CURSOR_SIZEALL, SDL_SYSTEM_CURSOR_NO, SDL_SYSTEM_CURSOR_HAND, SDL_NUM_SYSTEM_CURSORS } SDL_SystemCursor;
typedef enum { SDL_MOUSEWHEEL_NORMAL, SDL_MOUSEWHEEL_FLIPPED } SDL_MouseWheelDirection;
extern SDL_Window * __cdecl SDL_GetMouseFocus(void);
extern Uint32 __cdecl SDL_GetMouseState(int *x, int *y);
extern Uint32 __cdecl SDL_GetGlobalMouseState(int *x, int *y);
extern Uint32 __cdecl SDL_GetRelativeMouseState(int *x, int *y);
extern void __cdecl SDL_WarpMouseInWindow(SDL_Window * window, int x, int y);
extern int __cdecl SDL_WarpMouseGlobal(int x, int y);
extern int __cdecl SDL_SetRelativeMouseMode(SDL_bool enabled);
extern int __cdecl SDL_CaptureMouse(SDL_bool enabled);
extern SDL_bool __cdecl SDL_GetRelativeMouseMode(void);
extern SDL_Cursor *__cdecl SDL_CreateCursor(const Uint8 * data, const Uint8 * mask, int w, int h, int hot_x, int hot_y);
extern SDL_Cursor *__cdecl SDL_CreateColorCursor(SDL_Surface *surface, int hot_x, int hot_y);
extern SDL_Cursor *__cdecl SDL_CreateSystemCursor(SDL_SystemCursor id);
extern void __cdecl SDL_SetCursor(SDL_Cursor * cursor);
extern SDL_Cursor *__cdecl SDL_GetCursor(void);
extern SDL_Cursor *__cdecl SDL_GetDefaultCursor(void);
extern void __cdecl SDL_FreeCursor(SDL_Cursor * cursor);
extern int __cdecl SDL_ShowCursor(int toggle);
enum { SDL_BUTTON_LEFT = 1 };
enum { SDL_BUTTON_MIDDLE = 2 };
enum { SDL_BUTTON_RIGHT = 3 };
enum { SDL_BUTTON_X1 = 4 };
enum { SDL_BUTTON_X2 = 5 };
enum { SDL_BUTTON_LMASK = 1 };
enum { SDL_BUTTON_MMASK = 2 };
enum { SDL_BUTTON_RMASK = 4 };
enum { SDL_BUTTON_X1MASK = 8 };
enum { SDL_BUTTON_X2MASK = 16 };
/* ++++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* ++++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_mouse.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_joystick.h */
enum { SDL_joystick_h_ = 1 };
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_error.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_error.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_guid.h */
enum { SDL_guid_h_ = 1 };
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_error.h */
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_error.h */
/* +++++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++++ END   C:/Users/Chris/include/SDL2/begin_code.h */
typedef struct {
	Uint8 data[16];
} SDL_GUID;
extern void __cdecl SDL_GUIDToString(SDL_GUID guid, char *pszGUID, int cbGUID);
extern SDL_GUID __cdecl SDL_GUIDFromString(const char *pchGUID);
/* +++++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_guid.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_mutex.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_mutex.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* ++++ END   C:/Users/Chris/include/SDL2/begin_code.h */
struct _SDL_Joystick;
typedef struct _SDL_Joystick SDL_Joystick;
typedef SDL_GUID SDL_JoystickGUID;
typedef Sint32 SDL_JoystickID;
typedef enum { SDL_JOYSTICK_TYPE_UNKNOWN, SDL_JOYSTICK_TYPE_GAMECONTROLLER, SDL_JOYSTICK_TYPE_WHEEL, SDL_JOYSTICK_TYPE_ARCADE_STICK, SDL_JOYSTICK_TYPE_FLIGHT_STICK, SDL_JOYSTICK_TYPE_DANCE_PAD, SDL_JOYSTICK_TYPE_GUITAR, SDL_JOYSTICK_TYPE_DRUM_KIT, SDL_JOYSTICK_TYPE_ARCADE_PAD, SDL_JOYSTICK_TYPE_THROTTLE } SDL_JoystickType;
typedef enum { SDL_JOYSTICK_POWER_UNKNOWN = -1, SDL_JOYSTICK_POWER_EMPTY, SDL_JOYSTICK_POWER_LOW, SDL_JOYSTICK_POWER_MEDIUM, SDL_JOYSTICK_POWER_FULL, SDL_JOYSTICK_POWER_WIRED, SDL_JOYSTICK_POWER_MAX } SDL_JoystickPowerLevel;
/* #define SDL_IPHONE_MAX_GFORCE 5.0 ### string, number, replaceline "5.0" */
extern void __cdecl SDL_LockJoysticks(void);
extern void __cdecl SDL_UnlockJoysticks(void);
extern int __cdecl SDL_NumJoysticks(void);
extern const char *__cdecl SDL_JoystickNameForIndex(int device_index);
extern const char *__cdecl SDL_JoystickPathForIndex(int device_index);
extern int __cdecl SDL_JoystickGetDevicePlayerIndex(int device_index);
extern SDL_JoystickGUID __cdecl SDL_JoystickGetDeviceGUID(int device_index);
extern Uint16 __cdecl SDL_JoystickGetDeviceVendor(int device_index);
extern Uint16 __cdecl SDL_JoystickGetDeviceProduct(int device_index);
extern Uint16 __cdecl SDL_JoystickGetDeviceProductVersion(int device_index);
extern SDL_JoystickType __cdecl SDL_JoystickGetDeviceType(int device_index);
extern SDL_JoystickID __cdecl SDL_JoystickGetDeviceInstanceID(int device_index);
extern SDL_Joystick *__cdecl SDL_JoystickOpen(int device_index);
extern SDL_Joystick *__cdecl SDL_JoystickFromInstanceID(SDL_JoystickID instance_id);
extern SDL_Joystick *__cdecl SDL_JoystickFromPlayerIndex(int player_index);
extern int __cdecl SDL_JoystickAttachVirtual(SDL_JoystickType type, int naxes, int nbuttons, int nhats);
typedef struct SDL_VirtualJoystickDesc {
	Uint16 version;
	Uint16 type;
	Uint16 naxes;
	Uint16 nbuttons;
	Uint16 nhats;
	Uint16 vendor_id;
	Uint16 product_id;
	Uint16 padding;
	Uint32 button_mask;
	Uint32 axis_mask;
	const char *name;
	void *userdata;
	void (__cdecl *Update)(void *userdata);
	void (__cdecl *SetPlayerIndex)(void *userdata, int player_index);
	int (__cdecl *Rumble)(void *userdata, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble);
	int (__cdecl *RumbleTriggers)(void *userdata, Uint16 left_rumble, Uint16 right_rumble);
	int (__cdecl *SetLED)(void *userdata, Uint8 red, Uint8 green, Uint8 blue);
	int (__cdecl *SendEffect)(void *userdata, const void *data, int size);
} SDL_VirtualJoystickDesc;
enum { SDL_VIRTUAL_JOYSTICK_DESC_VERSION = 1 };
extern int __cdecl SDL_JoystickAttachVirtualEx(const SDL_VirtualJoystickDesc *desc);
extern int __cdecl SDL_JoystickDetachVirtual(int device_index);
extern SDL_bool __cdecl SDL_JoystickIsVirtual(int device_index);
extern int __cdecl SDL_JoystickSetVirtualAxis(SDL_Joystick *joystick, int axis, Sint16 value);
extern int __cdecl SDL_JoystickSetVirtualButton(SDL_Joystick *joystick, int button, Uint8 value);
extern int __cdecl SDL_JoystickSetVirtualHat(SDL_Joystick *joystick, int hat, Uint8 value);
extern const char *__cdecl SDL_JoystickName(SDL_Joystick *joystick);
extern const char *__cdecl SDL_JoystickPath(SDL_Joystick *joystick);
extern int __cdecl SDL_JoystickGetPlayerIndex(SDL_Joystick *joystick);
extern void __cdecl SDL_JoystickSetPlayerIndex(SDL_Joystick *joystick, int player_index);
extern SDL_JoystickGUID __cdecl SDL_JoystickGetGUID(SDL_Joystick *joystick);
extern Uint16 __cdecl SDL_JoystickGetVendor(SDL_Joystick *joystick);
extern Uint16 __cdecl SDL_JoystickGetProduct(SDL_Joystick *joystick);
extern Uint16 __cdecl SDL_JoystickGetProductVersion(SDL_Joystick *joystick);
extern Uint16 __cdecl SDL_JoystickGetFirmwareVersion(SDL_Joystick *joystick);
extern const char * __cdecl SDL_JoystickGetSerial(SDL_Joystick *joystick);
extern SDL_JoystickType __cdecl SDL_JoystickGetType(SDL_Joystick *joystick);
extern void __cdecl SDL_JoystickGetGUIDString(SDL_JoystickGUID guid, char *pszGUID, int cbGUID);
extern SDL_JoystickGUID __cdecl SDL_JoystickGetGUIDFromString(const char *pchGUID);
extern void __cdecl SDL_GetJoystickGUIDInfo(SDL_JoystickGUID guid, Uint16 *vendor, Uint16 *product, Uint16 *version, Uint16 *crc16);
extern SDL_bool __cdecl SDL_JoystickGetAttached(SDL_Joystick *joystick);
extern SDL_JoystickID __cdecl SDL_JoystickInstanceID(SDL_Joystick *joystick);
extern int __cdecl SDL_JoystickNumAxes(SDL_Joystick *joystick);
extern int __cdecl SDL_JoystickNumBalls(SDL_Joystick *joystick);
extern int __cdecl SDL_JoystickNumHats(SDL_Joystick *joystick);
extern int __cdecl SDL_JoystickNumButtons(SDL_Joystick *joystick);
extern void __cdecl SDL_JoystickUpdate(void);
extern int __cdecl SDL_JoystickEventState(int state);
enum { SDL_JOYSTICK_AXIS_MAX = 32767 };
enum { SDL_JOYSTICK_AXIS_MIN = -32768 };
extern Sint16 __cdecl SDL_JoystickGetAxis(SDL_Joystick *joystick, int axis);
extern SDL_bool __cdecl SDL_JoystickGetAxisInitialState(SDL_Joystick *joystick, int axis, Sint16 *state);
enum { SDL_HAT_CENTERED = 0 };
enum { SDL_HAT_UP = 1 };
enum { SDL_HAT_RIGHT = 2 };
enum { SDL_HAT_DOWN = 4 };
enum { SDL_HAT_LEFT = 8 };
enum { SDL_HAT_RIGHTUP = 3 };
enum { SDL_HAT_RIGHTDOWN = 6 };
enum { SDL_HAT_LEFTUP = 9 };
enum { SDL_HAT_LEFTDOWN = 12 };
extern Uint8 __cdecl SDL_JoystickGetHat(SDL_Joystick *joystick, int hat);
extern int __cdecl SDL_JoystickGetBall(SDL_Joystick *joystick, int ball, int *dx, int *dy);
extern Uint8 __cdecl SDL_JoystickGetButton(SDL_Joystick *joystick, int button);
extern int __cdecl SDL_JoystickRumble(SDL_Joystick *joystick, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms);
extern int __cdecl SDL_JoystickRumbleTriggers(SDL_Joystick *joystick, Uint16 left_rumble, Uint16 right_rumble, Uint32 duration_ms);
extern SDL_bool __cdecl SDL_JoystickHasLED(SDL_Joystick *joystick);
extern SDL_bool __cdecl SDL_JoystickHasRumble(SDL_Joystick *joystick);
extern SDL_bool __cdecl SDL_JoystickHasRumbleTriggers(SDL_Joystick *joystick);
extern int __cdecl SDL_JoystickSetLED(SDL_Joystick *joystick, Uint8 red, Uint8 green, Uint8 blue);
extern int __cdecl SDL_JoystickSendEffect(SDL_Joystick *joystick, const void *data, int size);
extern void __cdecl SDL_JoystickClose(SDL_Joystick *joystick);
extern SDL_JoystickPowerLevel __cdecl SDL_JoystickCurrentPowerLevel(SDL_Joystick *joystick);
/* ++++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* ++++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_joystick.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_gamecontroller.h */
enum { SDL_gamecontroller_h_ = 1 };
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_error.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_error.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_rwops.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_rwops.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_sensor.h */
enum { SDL_sensor_h_ = 1 };
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_error.h */
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_error.h */
/* +++++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++++ END   C:/Users/Chris/include/SDL2/begin_code.h */
struct _SDL_Sensor;
typedef struct _SDL_Sensor SDL_Sensor;
typedef Sint32 SDL_SensorID;
typedef enum { SDL_SENSOR_INVALID = -1, SDL_SENSOR_UNKNOWN, SDL_SENSOR_ACCEL, SDL_SENSOR_GYRO, SDL_SENSOR_ACCEL_L, SDL_SENSOR_GYRO_L, SDL_SENSOR_ACCEL_R, SDL_SENSOR_GYRO_R } SDL_SensorType;
/* #define SDL_STANDARD_GRAVITY    9.80665f ### string, not number "9.80665f" */
extern void __cdecl SDL_LockSensors(void);
extern void __cdecl SDL_UnlockSensors(void);
extern int __cdecl SDL_NumSensors(void);
extern const char *__cdecl SDL_SensorGetDeviceName(int device_index);
extern SDL_SensorType __cdecl SDL_SensorGetDeviceType(int device_index);
extern int __cdecl SDL_SensorGetDeviceNonPortableType(int device_index);
extern SDL_SensorID __cdecl SDL_SensorGetDeviceInstanceID(int device_index);
extern SDL_Sensor *__cdecl SDL_SensorOpen(int device_index);
extern SDL_Sensor *__cdecl SDL_SensorFromInstanceID(SDL_SensorID instance_id);
extern const char *__cdecl SDL_SensorGetName(SDL_Sensor *sensor);
extern SDL_SensorType __cdecl SDL_SensorGetType(SDL_Sensor *sensor);
extern int __cdecl SDL_SensorGetNonPortableType(SDL_Sensor *sensor);
extern SDL_SensorID __cdecl SDL_SensorGetInstanceID(SDL_Sensor *sensor);
extern int __cdecl SDL_SensorGetData(SDL_Sensor *sensor, float *data, int num_values);
extern int __cdecl SDL_SensorGetDataWithTimestamp(SDL_Sensor *sensor, Uint64 *timestamp, float *data, int num_values);
extern void __cdecl SDL_SensorClose(SDL_Sensor *sensor);
extern void __cdecl SDL_SensorUpdate(void);
/* +++++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_sensor.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_joystick.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_joystick.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* ++++ END   C:/Users/Chris/include/SDL2/begin_code.h */
struct _SDL_GameController;
typedef struct _SDL_GameController SDL_GameController;
typedef enum { SDL_CONTROLLER_TYPE_UNKNOWN = 0, SDL_CONTROLLER_TYPE_XBOX360, SDL_CONTROLLER_TYPE_XBOXONE, SDL_CONTROLLER_TYPE_PS3, SDL_CONTROLLER_TYPE_PS4, SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_PRO, SDL_CONTROLLER_TYPE_VIRTUAL, SDL_CONTROLLER_TYPE_PS5, SDL_CONTROLLER_TYPE_AMAZON_LUNA, SDL_CONTROLLER_TYPE_GOOGLE_STADIA, SDL_CONTROLLER_TYPE_NVIDIA_SHIELD, SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_LEFT, SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT, SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_PAIR, SDL_CONTROLLER_TYPE_MAX } SDL_GameControllerType;
typedef enum { SDL_CONTROLLER_BINDTYPE_NONE = 0, SDL_CONTROLLER_BINDTYPE_BUTTON, SDL_CONTROLLER_BINDTYPE_AXIS, SDL_CONTROLLER_BINDTYPE_HAT } SDL_GameControllerBindType;
typedef struct SDL_GameControllerButtonBind {
	SDL_GameControllerBindType bindType;
	union {
	int button;
	int axis;
	struct {
	int hat;
	int hat_mask;
} hat;
} value;
} SDL_GameControllerButtonBind;
extern int __cdecl SDL_GameControllerAddMappingsFromRW(SDL_RWops * rw, int freerw);
extern int __cdecl SDL_GameControllerAddMapping(const char* mappingString);
extern int __cdecl SDL_GameControllerNumMappings(void);
extern char * __cdecl SDL_GameControllerMappingForIndex(int mapping_index);
extern char * __cdecl SDL_GameControllerMappingForGUID(SDL_JoystickGUID guid);
extern char * __cdecl SDL_GameControllerMapping(SDL_GameController *gamecontroller);
extern SDL_bool __cdecl SDL_IsGameController(int joystick_index);
extern const char *__cdecl SDL_GameControllerNameForIndex(int joystick_index);
extern const char *__cdecl SDL_GameControllerPathForIndex(int joystick_index);
extern SDL_GameControllerType __cdecl SDL_GameControllerTypeForIndex(int joystick_index);
extern char *__cdecl SDL_GameControllerMappingForDeviceIndex(int joystick_index);
extern SDL_GameController *__cdecl SDL_GameControllerOpen(int joystick_index);
extern SDL_GameController *__cdecl SDL_GameControllerFromInstanceID(SDL_JoystickID joyid);
extern SDL_GameController *__cdecl SDL_GameControllerFromPlayerIndex(int player_index);
extern const char *__cdecl SDL_GameControllerName(SDL_GameController *gamecontroller);
extern const char *__cdecl SDL_GameControllerPath(SDL_GameController *gamecontroller);
extern SDL_GameControllerType __cdecl SDL_GameControllerGetType(SDL_GameController *gamecontroller);
extern int __cdecl SDL_GameControllerGetPlayerIndex(SDL_GameController *gamecontroller);
extern void __cdecl SDL_GameControllerSetPlayerIndex(SDL_GameController *gamecontroller, int player_index);
extern Uint16 __cdecl SDL_GameControllerGetVendor(SDL_GameController *gamecontroller);
extern Uint16 __cdecl SDL_GameControllerGetProduct(SDL_GameController *gamecontroller);
extern Uint16 __cdecl SDL_GameControllerGetProductVersion(SDL_GameController *gamecontroller);
extern Uint16 __cdecl SDL_GameControllerGetFirmwareVersion(SDL_GameController *gamecontroller);
extern const char * __cdecl SDL_GameControllerGetSerial(SDL_GameController *gamecontroller);
extern Uint64 __cdecl SDL_GameControllerGetSteamHandle(SDL_GameController *gamecontroller);
extern SDL_bool __cdecl SDL_GameControllerGetAttached(SDL_GameController *gamecontroller);
extern SDL_Joystick *__cdecl SDL_GameControllerGetJoystick(SDL_GameController *gamecontroller);
extern int __cdecl SDL_GameControllerEventState(int state);
extern void __cdecl SDL_GameControllerUpdate(void);
typedef enum { SDL_CONTROLLER_AXIS_INVALID = -1, SDL_CONTROLLER_AXIS_LEFTX, SDL_CONTROLLER_AXIS_LEFTY, SDL_CONTROLLER_AXIS_RIGHTX, SDL_CONTROLLER_AXIS_RIGHTY, SDL_CONTROLLER_AXIS_TRIGGERLEFT, SDL_CONTROLLER_AXIS_TRIGGERRIGHT, SDL_CONTROLLER_AXIS_MAX } SDL_GameControllerAxis;
extern SDL_GameControllerAxis __cdecl SDL_GameControllerGetAxisFromString(const char *str);
extern const char* __cdecl SDL_GameControllerGetStringForAxis(SDL_GameControllerAxis axis);
extern SDL_GameControllerButtonBind __cdecl SDL_GameControllerGetBindForAxis(SDL_GameController *gamecontroller, SDL_GameControllerAxis axis);
extern SDL_bool __cdecl SDL_GameControllerHasAxis(SDL_GameController *gamecontroller, SDL_GameControllerAxis axis);
extern Sint16 __cdecl SDL_GameControllerGetAxis(SDL_GameController *gamecontroller, SDL_GameControllerAxis axis);
typedef enum { SDL_CONTROLLER_BUTTON_INVALID = -1, SDL_CONTROLLER_BUTTON_A, SDL_CONTROLLER_BUTTON_B, SDL_CONTROLLER_BUTTON_X, SDL_CONTROLLER_BUTTON_Y, SDL_CONTROLLER_BUTTON_BACK, SDL_CONTROLLER_BUTTON_GUIDE, SDL_CONTROLLER_BUTTON_START, SDL_CONTROLLER_BUTTON_LEFTSTICK, SDL_CONTROLLER_BUTTON_RIGHTSTICK, SDL_CONTROLLER_BUTTON_LEFTSHOULDER, SDL_CONTROLLER_BUTTON_RIGHTSHOULDER, SDL_CONTROLLER_BUTTON_DPAD_UP, SDL_CONTROLLER_BUTTON_DPAD_DOWN, SDL_CONTROLLER_BUTTON_DPAD_LEFT, SDL_CONTROLLER_BUTTON_DPAD_RIGHT, SDL_CONTROLLER_BUTTON_MISC1, SDL_CONTROLLER_BUTTON_PADDLE1, SDL_CONTROLLER_BUTTON_PADDLE2, SDL_CONTROLLER_BUTTON_PADDLE3, SDL_CONTROLLER_BUTTON_PADDLE4, SDL_CONTROLLER_BUTTON_TOUCHPAD, SDL_CONTROLLER_BUTTON_MAX } SDL_GameControllerButton;
extern SDL_GameControllerButton __cdecl SDL_GameControllerGetButtonFromString(const char *str);
extern const char* __cdecl SDL_GameControllerGetStringForButton(SDL_GameControllerButton button);
extern SDL_GameControllerButtonBind __cdecl SDL_GameControllerGetBindForButton(SDL_GameController *gamecontroller, SDL_GameControllerButton button);
extern SDL_bool __cdecl SDL_GameControllerHasButton(SDL_GameController *gamecontroller, SDL_GameControllerButton button);
extern Uint8 __cdecl SDL_GameControllerGetButton(SDL_GameController *gamecontroller, SDL_GameControllerButton button);
extern int __cdecl SDL_GameControllerGetNumTouchpads(SDL_GameController *gamecontroller);
extern int __cdecl SDL_GameControllerGetNumTouchpadFingers(SDL_GameController *gamecontroller, int touchpad);
extern int __cdecl SDL_GameControllerGetTouchpadFinger(SDL_GameController *gamecontroller, int touchpad, int finger, Uint8 *state, float *x, float *y, float *pressure);
extern SDL_bool __cdecl SDL_GameControllerHasSensor(SDL_GameController *gamecontroller, SDL_SensorType type);
extern int __cdecl SDL_GameControllerSetSensorEnabled(SDL_GameController *gamecontroller, SDL_SensorType type, SDL_bool enabled);
extern SDL_bool __cdecl SDL_GameControllerIsSensorEnabled(SDL_GameController *gamecontroller, SDL_SensorType type);
extern float __cdecl SDL_GameControllerGetSensorDataRate(SDL_GameController *gamecontroller, SDL_SensorType type);
extern int __cdecl SDL_GameControllerGetSensorData(SDL_GameController *gamecontroller, SDL_SensorType type, float *data, int num_values);
extern int __cdecl SDL_GameControllerGetSensorDataWithTimestamp(SDL_GameController *gamecontroller, SDL_SensorType type, Uint64 *timestamp, float *data, int num_values);
extern int __cdecl SDL_GameControllerRumble(SDL_GameController *gamecontroller, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms);
extern int __cdecl SDL_GameControllerRumbleTriggers(SDL_GameController *gamecontroller, Uint16 left_rumble, Uint16 right_rumble, Uint32 duration_ms);
extern SDL_bool __cdecl SDL_GameControllerHasLED(SDL_GameController *gamecontroller);
extern SDL_bool __cdecl SDL_GameControllerHasRumble(SDL_GameController *gamecontroller);
extern SDL_bool __cdecl SDL_GameControllerHasRumbleTriggers(SDL_GameController *gamecontroller);
extern int __cdecl SDL_GameControllerSetLED(SDL_GameController *gamecontroller, Uint8 red, Uint8 green, Uint8 blue);
extern int __cdecl SDL_GameControllerSendEffect(SDL_GameController *gamecontroller, const void *data, int size);
extern void __cdecl SDL_GameControllerClose(SDL_GameController *gamecontroller);
extern const char* __cdecl SDL_GameControllerGetAppleSFSymbolsNameForButton(SDL_GameController *gamecontroller, SDL_GameControllerButton button);
extern const char* __cdecl SDL_GameControllerGetAppleSFSymbolsNameForAxis(SDL_GameController *gamecontroller, SDL_GameControllerAxis axis);
/* ++++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* ++++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_gamecontroller.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_quit.h */
enum { SDL_quit_h_ = 1 };
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_error.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_error.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_quit.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_gesture.h */
enum { SDL_gesture_h_ = 1 };
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_error.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_error.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_video.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_video.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/SDL_touch.h */
enum { SDL_touch_h_ = 1 };
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_error.h */
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_error.h */
/* +++++ BEGIN C:/Users/Chris/include/SDL2/SDL_video.h */
/* +++++ END   C:/Users/Chris/include/SDL2/SDL_video.h */
/* +++++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++++ END   C:/Users/Chris/include/SDL2/begin_code.h */
typedef Sint64 SDL_TouchID;
typedef Sint64 SDL_FingerID;
typedef enum { SDL_TOUCH_DEVICE_INVALID = -1, SDL_TOUCH_DEVICE_DIRECT, SDL_TOUCH_DEVICE_INDIRECT_ABSOLUTE, SDL_TOUCH_DEVICE_INDIRECT_RELATIVE } SDL_TouchDeviceType;
typedef struct SDL_Finger {
	SDL_FingerID id;
	float x;
	float y;
	float pressure;
} SDL_Finger;
enum { SDL_TOUCH_MOUSEID = -1 };
enum { SDL_MOUSE_TOUCHID = -1 };
extern int __cdecl SDL_GetNumTouchDevices(void);
extern SDL_TouchID __cdecl SDL_GetTouchDevice(int index);
extern const char* __cdecl SDL_GetTouchName(int index);
extern SDL_TouchDeviceType __cdecl SDL_GetTouchDeviceType(SDL_TouchID touchID);
extern int __cdecl SDL_GetNumTouchFingers(SDL_TouchID touchID);
extern SDL_Finger * __cdecl SDL_GetTouchFinger(SDL_TouchID touchID, int index);
/* +++++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++++ END   C:/Users/Chris/include/SDL2/SDL_touch.h */
/* ++++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* ++++ END   C:/Users/Chris/include/SDL2/begin_code.h */
typedef Sint64 SDL_GestureID;
extern int __cdecl SDL_RecordGesture(SDL_TouchID touchId);
extern int __cdecl SDL_SaveAllDollarTemplates(SDL_RWops *dst);
extern int __cdecl SDL_SaveDollarTemplate(SDL_GestureID gestureId,SDL_RWops *dst);
extern int __cdecl SDL_LoadDollarTemplates(SDL_TouchID touchId, SDL_RWops *src);
/* ++++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* ++++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_gesture.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_touch.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_touch.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
enum { SDL_RELEASED = 0 };
enum { SDL_PRESSED = 1 };
typedef enum { SDL_FIRSTEVENT = 0, SDL_QUIT = 0x100, SDL_APP_TERMINATING, SDL_APP_LOWMEMORY, SDL_APP_WILLENTERBACKGROUND, SDL_APP_DIDENTERBACKGROUND, SDL_APP_WILLENTERFOREGROUND, SDL_APP_DIDENTERFOREGROUND, SDL_LOCALECHANGED, SDL_DISPLAYEVENT = 0x150, SDL_WINDOWEVENT = 0x200, SDL_SYSWMEVENT, SDL_KEYDOWN = 0x300, SDL_KEYUP, SDL_TEXTEDITING, SDL_TEXTINPUT, SDL_KEYMAPCHANGED, SDL_TEXTEDITING_EXT, SDL_MOUSEMOTION = 0x400, SDL_MOUSEBUTTONDOWN, SDL_MOUSEBUTTONUP, SDL_MOUSEWHEEL, SDL_JOYAXISMOTION = 0x600, SDL_JOYBALLMOTION, SDL_JOYHATMOTION, SDL_JOYBUTTONDOWN, SDL_JOYBUTTONUP, SDL_JOYDEVICEADDED, SDL_JOYDEVICEREMOVED, SDL_JOYBATTERYUPDATED, SDL_CONTROLLERAXISMOTION = 0x650, SDL_CONTROLLERBUTTONDOWN, SDL_CONTROLLERBUTTONUP, SDL_CONTROLLERDEVICEADDED, SDL_CONTROLLERDEVICEREMOVED, SDL_CONTROLLERDEVICEREMAPPED, SDL_CONTROLLERTOUCHPADDOWN, SDL_CONTROLLERTOUCHPADMOTION, SDL_CONTROLLERTOUCHPADUP, SDL_CONTROLLERSENSORUPDATE, SDL_CONTROLLERUPDATECOMPLETE_RESERVED_FOR_SDL3, SDL_CONTROLLERSTEAMHANDLEUPDATED, SDL_FINGERDOWN = 0x700, SDL_FINGERUP, SDL_FINGERMOTION, SDL_DOLLARGESTURE = 0x800, SDL_DOLLARRECORD, SDL_MULTIGESTURE, SDL_CLIPBOARDUPDATE = 0x900, SDL_DROPFILE = 0x1000, SDL_DROPTEXT, SDL_DROPBEGIN, SDL_DROPCOMPLETE, SDL_AUDIODEVICEADDED = 0x1100, SDL_AUDIODEVICEREMOVED, SDL_SENSORUPDATE = 0x1200, SDL_RENDER_TARGETS_RESET = 0x2000, SDL_RENDER_DEVICE_RESET, SDL_POLLSENTINEL = 0x7F00, SDL_USEREVENT = 0x8000, SDL_LASTEVENT = 0xFFFF } SDL_EventType;
typedef struct SDL_CommonEvent {
	Uint32 type;
	Uint32 timestamp;
} SDL_CommonEvent;
typedef struct SDL_DisplayEvent {
	Uint32 type;
	Uint32 timestamp;
	Uint32 display;
	Uint8 event;
	Uint8 padding1;
	Uint8 padding2;
	Uint8 padding3;
	Sint32 data1;
} SDL_DisplayEvent;
typedef struct SDL_WindowEvent {
	Uint32 type;
	Uint32 timestamp;
	Uint32 windowID;
	Uint8 event;
	Uint8 padding1;
	Uint8 padding2;
	Uint8 padding3;
	Sint32 data1;
	Sint32 data2;
} SDL_WindowEvent;
typedef struct SDL_KeyboardEvent {
	Uint32 type;
	Uint32 timestamp;
	Uint32 windowID;
	Uint8 state;
	Uint8 repeat;
	Uint8 padding2;
	Uint8 padding3;
	SDL_Keysym keysym;
} SDL_KeyboardEvent;
enum { SDL_TEXTEDITINGEVENT_TEXT_SIZE = 32 };
typedef struct SDL_TextEditingEvent {
	Uint32 type;
	Uint32 timestamp;
	Uint32 windowID;
	char text[(32)];
	Sint32 start;
	Sint32 length;
} SDL_TextEditingEvent;
typedef struct SDL_TextEditingExtEvent {
	Uint32 type;
	Uint32 timestamp;
	Uint32 windowID;
	char* text;
	Sint32 start;
	Sint32 length;
} SDL_TextEditingExtEvent;
enum { SDL_TEXTINPUTEVENT_TEXT_SIZE = 32 };
typedef struct SDL_TextInputEvent {
	Uint32 type;
	Uint32 timestamp;
	Uint32 windowID;
	char text[(32)];
} SDL_TextInputEvent;
typedef struct SDL_MouseMotionEvent {
	Uint32 type;
	Uint32 timestamp;
	Uint32 windowID;
	Uint32 which;
	Uint32 state;
	Sint32 x;
	Sint32 y;
	Sint32 xrel;
	Sint32 yrel;
} SDL_MouseMotionEvent;
typedef struct SDL_MouseButtonEvent {
	Uint32 type;
	Uint32 timestamp;
	Uint32 windowID;
	Uint32 which;
	Uint8 button;
	Uint8 state;
	Uint8 clicks;
	Uint8 padding1;
	Sint32 x;
	Sint32 y;
} SDL_MouseButtonEvent;
typedef struct SDL_MouseWheelEvent {
	Uint32 type;
	Uint32 timestamp;
	Uint32 windowID;
	Uint32 which;
	Sint32 x;
	Sint32 y;
	Uint32 direction;
	float preciseX;
	float preciseY;
	Sint32 mouseX;
	Sint32 mouseY;
} SDL_MouseWheelEvent;
typedef struct SDL_JoyAxisEvent {
	Uint32 type;
	Uint32 timestamp;
	SDL_JoystickID which;
	Uint8 axis;
	Uint8 padding1;
	Uint8 padding2;
	Uint8 padding3;
	Sint16 value;
	Uint16 padding4;
} SDL_JoyAxisEvent;
typedef struct SDL_JoyBallEvent {
	Uint32 type;
	Uint32 timestamp;
	SDL_JoystickID which;
	Uint8 ball;
	Uint8 padding1;
	Uint8 padding2;
	Uint8 padding3;
	Sint16 xrel;
	Sint16 yrel;
} SDL_JoyBallEvent;
typedef struct SDL_JoyHatEvent {
	Uint32 type;
	Uint32 timestamp;
	SDL_JoystickID which;
	Uint8 hat;
	Uint8 value;
	Uint8 padding1;
	Uint8 padding2;
} SDL_JoyHatEvent;
typedef struct SDL_JoyButtonEvent {
	Uint32 type;
	Uint32 timestamp;
	SDL_JoystickID which;
	Uint8 button;
	Uint8 state;
	Uint8 padding1;
	Uint8 padding2;
} SDL_JoyButtonEvent;
typedef struct SDL_JoyDeviceEvent {
	Uint32 type;
	Uint32 timestamp;
	Sint32 which;
} SDL_JoyDeviceEvent;
typedef struct SDL_JoyBatteryEvent {
	Uint32 type;
	Uint32 timestamp;
	SDL_JoystickID which;
	SDL_JoystickPowerLevel level;
} SDL_JoyBatteryEvent;
typedef struct SDL_ControllerAxisEvent {
	Uint32 type;
	Uint32 timestamp;
	SDL_JoystickID which;
	Uint8 axis;
	Uint8 padding1;
	Uint8 padding2;
	Uint8 padding3;
	Sint16 value;
	Uint16 padding4;
} SDL_ControllerAxisEvent;
typedef struct SDL_ControllerButtonEvent {
	Uint32 type;
	Uint32 timestamp;
	SDL_JoystickID which;
	Uint8 button;
	Uint8 state;
	Uint8 padding1;
	Uint8 padding2;
} SDL_ControllerButtonEvent;
typedef struct SDL_ControllerDeviceEvent {
	Uint32 type;
	Uint32 timestamp;
	Sint32 which;
} SDL_ControllerDeviceEvent;
typedef struct SDL_ControllerTouchpadEvent {
	Uint32 type;
	Uint32 timestamp;
	SDL_JoystickID which;
	Sint32 touchpad;
	Sint32 finger;
	float x;
	float y;
	float pressure;
} SDL_ControllerTouchpadEvent;
typedef struct SDL_ControllerSensorEvent {
	Uint32 type;
	Uint32 timestamp;
	SDL_JoystickID which;
	Sint32 sensor;
	float data[3];
	Uint64 timestamp_us;
} SDL_ControllerSensorEvent;
typedef struct SDL_AudioDeviceEvent {
	Uint32 type;
	Uint32 timestamp;
	Uint32 which;
	Uint8 iscapture;
	Uint8 padding1;
	Uint8 padding2;
	Uint8 padding3;
} SDL_AudioDeviceEvent;
typedef struct SDL_TouchFingerEvent {
	Uint32 type;
	Uint32 timestamp;
	SDL_TouchID touchId;
	SDL_FingerID fingerId;
	float x;
	float y;
	float dx;
	float dy;
	float pressure;
	Uint32 windowID;
} SDL_TouchFingerEvent;
typedef struct SDL_MultiGestureEvent {
	Uint32 type;
	Uint32 timestamp;
	SDL_TouchID touchId;
	float dTheta;
	float dDist;
	float x;
	float y;
	Uint16 numFingers;
	Uint16 padding;
} SDL_MultiGestureEvent;
typedef struct SDL_DollarGestureEvent {
	Uint32 type;
	Uint32 timestamp;
	SDL_TouchID touchId;
	SDL_GestureID gestureId;
	Uint32 numFingers;
	float error;
	float x;
	float y;
} SDL_DollarGestureEvent;
typedef struct SDL_DropEvent {
	Uint32 type;
	Uint32 timestamp;
	char *file;
	Uint32 windowID;
} SDL_DropEvent;
typedef struct SDL_SensorEvent {
	Uint32 type;
	Uint32 timestamp;
	Sint32 which;
	float data[6];
	Uint64 timestamp_us;
} SDL_SensorEvent;
typedef struct SDL_QuitEvent {
	Uint32 type;
	Uint32 timestamp;
} SDL_QuitEvent;
typedef struct SDL_UserEvent {
	Uint32 type;
	Uint32 timestamp;
	Uint32 windowID;
	Sint32 code;
	void *data1;
	void *data2;
} SDL_UserEvent;
struct SDL_SysWMmsg;
typedef struct SDL_SysWMmsg SDL_SysWMmsg;
typedef struct SDL_SysWMEvent {
	Uint32 type;
	Uint32 timestamp;
	SDL_SysWMmsg *msg;
} SDL_SysWMEvent;
typedef union SDL_Event {
	Uint32 type;
	SDL_CommonEvent common;
	SDL_DisplayEvent display;
	SDL_WindowEvent window;
	SDL_KeyboardEvent key;
	SDL_TextEditingEvent edit;
	SDL_TextEditingExtEvent editExt;
	SDL_TextInputEvent text;
	SDL_MouseMotionEvent motion;
	SDL_MouseButtonEvent button;
	SDL_MouseWheelEvent wheel;
	SDL_JoyAxisEvent jaxis;
	SDL_JoyBallEvent jball;
	SDL_JoyHatEvent jhat;
	SDL_JoyButtonEvent jbutton;
	SDL_JoyDeviceEvent jdevice;
	SDL_JoyBatteryEvent jbattery;
	SDL_ControllerAxisEvent caxis;
	SDL_ControllerButtonEvent cbutton;
	SDL_ControllerDeviceEvent cdevice;
	SDL_ControllerTouchpadEvent ctouchpad;
	SDL_ControllerSensorEvent csensor;
	SDL_AudioDeviceEvent adevice;
	SDL_SensorEvent sensor;
	SDL_QuitEvent quit;
	SDL_UserEvent user;
	SDL_SysWMEvent syswm;
	SDL_TouchFingerEvent tfinger;
	SDL_MultiGestureEvent mgesture;
	SDL_DollarGestureEvent dgesture;
	SDL_DropEvent drop;
	Uint8 padding[sizeof(void *) <= 8 ? 56 : sizeof(void *) == 16 ? 64 : 3 * sizeof(void *)];
} SDL_Event;
typedef int SDL_compile_time_assert_SDL_Event[( sizeof(SDL_Event) == sizeof(((SDL_Event *)((void *)0))->padding)) * 2 - 1];
extern void __cdecl SDL_PumpEvents(void);
typedef enum { SDL_ADDEVENT, SDL_PEEKEVENT, SDL_GETEVENT } SDL_eventaction;
extern int __cdecl SDL_PeepEvents(SDL_Event * events, int numevents, SDL_eventaction action, Uint32 minType, Uint32 maxType);
extern SDL_bool __cdecl SDL_HasEvent(Uint32 type);
extern SDL_bool __cdecl SDL_HasEvents(Uint32 minType, Uint32 maxType);
extern void __cdecl SDL_FlushEvent(Uint32 type);
extern void __cdecl SDL_FlushEvents(Uint32 minType, Uint32 maxType);
extern int __cdecl SDL_PollEvent(SDL_Event * event);
extern int __cdecl SDL_WaitEvent(SDL_Event * event);
extern int __cdecl SDL_WaitEventTimeout(SDL_Event * event, int timeout);
extern int __cdecl SDL_PushEvent(SDL_Event * event);
typedef int (__cdecl * SDL_EventFilter) (void *userdata, SDL_Event * event);
extern void __cdecl SDL_SetEventFilter(SDL_EventFilter filter, void *userdata);
extern SDL_bool __cdecl SDL_GetEventFilter(SDL_EventFilter * filter, void **userdata);
extern void __cdecl SDL_AddEventWatch(SDL_EventFilter filter, void *userdata);
extern void __cdecl SDL_DelEventWatch(SDL_EventFilter filter, void *userdata);
extern void __cdecl SDL_FilterEvents(SDL_EventFilter filter, void *userdata);
enum { SDL_QUERY = -1 };
enum { SDL_IGNORE = 0 };
enum { SDL_DISABLE = 0 };
enum { SDL_ENABLE = 1 };
extern Uint8 __cdecl SDL_EventState(Uint32 type, int state);
extern Uint32 __cdecl SDL_RegisterEvents(int numevents);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_events.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_filesystem.h */
enum { SDL_filesystem_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
extern char *__cdecl SDL_GetBasePath(void);
extern char *__cdecl SDL_GetPrefPath(const char *org, const char *app);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_filesystem.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_gamecontroller.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_gamecontroller.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_guid.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_guid.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_haptic.h */
enum { SDL_haptic_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_error.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_error.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_joystick.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_joystick.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
struct _SDL_Haptic;
typedef struct _SDL_Haptic SDL_Haptic;
/* #define SDL_HAPTIC_CONSTANT   (1u<<0) ### string, not number "(1u<<0)" */
/* #define SDL_HAPTIC_SINE       (1u<<1) ### string, not number "(1u<<1)" */
/* #define SDL_HAPTIC_LEFTRIGHT     (1u<<2) ### string, not number "(1u<<2)" */
/* #define SDL_HAPTIC_TRIANGLE   (1u<<3) ### string, not number "(1u<<3)" */
/* #define SDL_HAPTIC_SAWTOOTHUP (1u<<4) ### string, not number "(1u<<4)" */
/* #define SDL_HAPTIC_SAWTOOTHDOWN (1u<<5) ### string, not number "(1u<<5)" */
/* #define SDL_HAPTIC_RAMP       (1u<<6) ### string, not number "(1u<<6)" */
/* #define SDL_HAPTIC_SPRING     (1u<<7) ### string, not number "(1u<<7)" */
/* #define SDL_HAPTIC_DAMPER     (1u<<8) ### string, not number "(1u<<8)" */
/* #define SDL_HAPTIC_INERTIA    (1u<<9) ### string, not number "(1u<<9)" */
/* #define SDL_HAPTIC_FRICTION   (1u<<10) ### string, not number "(1u<<10)" */
/* #define SDL_HAPTIC_CUSTOM     (1u<<11) ### string, not number "(1u<<11)" */
/* #define SDL_HAPTIC_GAIN       (1u<<12) ### string, not number "(1u<<12)" */
/* #define SDL_HAPTIC_AUTOCENTER (1u<<13) ### string, not number "(1u<<13)" */
/* #define SDL_HAPTIC_STATUS     (1u<<14) ### string, not number "(1u<<14)" */
/* #define SDL_HAPTIC_PAUSE      (1u<<15) ### string, not number "(1u<<15)" */
enum { SDL_HAPTIC_POLAR = 0 };
enum { SDL_HAPTIC_CARTESIAN = 1 };
enum { SDL_HAPTIC_SPHERICAL = 2 };
enum { SDL_HAPTIC_STEERING_AXIS = 3 };
enum { SDL_HAPTIC_INFINITY = 4294967295 };
typedef struct SDL_HapticDirection {
	Uint8 type;
	Sint32 dir[3];
} SDL_HapticDirection;
typedef struct SDL_HapticConstant {
	Uint16 type;
	SDL_HapticDirection direction;
	Uint32 length;
	Uint16 delay;
	Uint16 button;
	Uint16 interval;
	Sint16 level;
	Uint16 attack_length;
	Uint16 attack_level;
	Uint16 fade_length;
	Uint16 fade_level;
} SDL_HapticConstant;
typedef struct SDL_HapticPeriodic {
	Uint16 type;
	SDL_HapticDirection direction;
	Uint32 length;
	Uint16 delay;
	Uint16 button;
	Uint16 interval;
	Uint16 period;
	Sint16 magnitude;
	Sint16 offset;
	Uint16 phase;
	Uint16 attack_length;
	Uint16 attack_level;
	Uint16 fade_length;
	Uint16 fade_level;
} SDL_HapticPeriodic;
typedef struct SDL_HapticCondition {
	Uint16 type;
	SDL_HapticDirection direction;
	Uint32 length;
	Uint16 delay;
	Uint16 button;
	Uint16 interval;
	Uint16 right_sat[3];
	Uint16 left_sat[3];
	Sint16 right_coeff[3];
	Sint16 left_coeff[3];
	Uint16 deadband[3];
	Sint16 center[3];
} SDL_HapticCondition;
typedef struct SDL_HapticRamp {
	Uint16 type;
	SDL_HapticDirection direction;
	Uint32 length;
	Uint16 delay;
	Uint16 button;
	Uint16 interval;
	Sint16 start;
	Sint16 end;
	Uint16 attack_length;
	Uint16 attack_level;
	Uint16 fade_length;
	Uint16 fade_level;
} SDL_HapticRamp;
typedef struct SDL_HapticLeftRight {
	Uint16 type;
	Uint32 length;
	Uint16 large_magnitude;
	Uint16 small_magnitude;
} SDL_HapticLeftRight;
typedef struct SDL_HapticCustom {
	Uint16 type;
	SDL_HapticDirection direction;
	Uint32 length;
	Uint16 delay;
	Uint16 button;
	Uint16 interval;
	Uint8 channels;
	Uint16 period;
	Uint16 samples;
	Uint16 *data;
	Uint16 attack_length;
	Uint16 attack_level;
	Uint16 fade_length;
	Uint16 fade_level;
} SDL_HapticCustom;
typedef union SDL_HapticEffect {
	Uint16 type;
	SDL_HapticConstant constant;
	SDL_HapticPeriodic periodic;
	SDL_HapticCondition condition;
	SDL_HapticRamp ramp;
	SDL_HapticLeftRight leftright;
	SDL_HapticCustom custom;
} SDL_HapticEffect;
extern int __cdecl SDL_NumHaptics(void);
extern const char *__cdecl SDL_HapticName(int device_index);
extern SDL_Haptic *__cdecl SDL_HapticOpen(int device_index);
extern int __cdecl SDL_HapticOpened(int device_index);
extern int __cdecl SDL_HapticIndex(SDL_Haptic * haptic);
extern int __cdecl SDL_MouseIsHaptic(void);
extern SDL_Haptic *__cdecl SDL_HapticOpenFromMouse(void);
extern int __cdecl SDL_JoystickIsHaptic(SDL_Joystick * joystick);
extern SDL_Haptic *__cdecl SDL_HapticOpenFromJoystick(SDL_Joystick * joystick);
extern void __cdecl SDL_HapticClose(SDL_Haptic * haptic);
extern int __cdecl SDL_HapticNumEffects(SDL_Haptic * haptic);
extern int __cdecl SDL_HapticNumEffectsPlaying(SDL_Haptic * haptic);
extern unsigned int __cdecl SDL_HapticQuery(SDL_Haptic * haptic);
extern int __cdecl SDL_HapticNumAxes(SDL_Haptic * haptic);
extern int __cdecl SDL_HapticEffectSupported(SDL_Haptic * haptic, SDL_HapticEffect * effect);
extern int __cdecl SDL_HapticNewEffect(SDL_Haptic * haptic, SDL_HapticEffect * effect);
extern int __cdecl SDL_HapticUpdateEffect(SDL_Haptic * haptic, int effect, SDL_HapticEffect * data);
extern int __cdecl SDL_HapticRunEffect(SDL_Haptic * haptic, int effect, Uint32 iterations);
extern int __cdecl SDL_HapticStopEffect(SDL_Haptic * haptic, int effect);
extern void __cdecl SDL_HapticDestroyEffect(SDL_Haptic * haptic, int effect);
extern int __cdecl SDL_HapticGetEffectStatus(SDL_Haptic * haptic, int effect);
extern int __cdecl SDL_HapticSetGain(SDL_Haptic * haptic, int gain);
extern int __cdecl SDL_HapticSetAutocenter(SDL_Haptic * haptic, int autocenter);
extern int __cdecl SDL_HapticPause(SDL_Haptic * haptic);
extern int __cdecl SDL_HapticUnpause(SDL_Haptic * haptic);
extern int __cdecl SDL_HapticStopAll(SDL_Haptic * haptic);
extern int __cdecl SDL_HapticRumbleSupported(SDL_Haptic * haptic);
extern int __cdecl SDL_HapticRumbleInit(SDL_Haptic * haptic);
extern int __cdecl SDL_HapticRumblePlay(SDL_Haptic * haptic, float strength, Uint32 length );
extern int __cdecl SDL_HapticRumbleStop(SDL_Haptic * haptic);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_haptic.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_hidapi.h */
enum { SDL_hidapi_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
struct SDL_hid_device_;
typedef struct SDL_hid_device_ SDL_hid_device;
typedef struct SDL_hid_device_info {
	char *path;
	unsigned short vendor_id;
	unsigned short product_id;
	wchar_t *serial_number;
	unsigned short release_number;
	wchar_t *manufacturer_string;
	wchar_t *product_string;
	unsigned short usage_page;
	unsigned short usage;
	int interface_number;
	int interface_class;
	int interface_subclass;
	int interface_protocol;
	struct SDL_hid_device_info *next;
} SDL_hid_device_info;
extern int __cdecl SDL_hid_init(void);
extern int __cdecl SDL_hid_exit(void);
extern Uint32 __cdecl SDL_hid_device_change_count(void);
extern SDL_hid_device_info * __cdecl SDL_hid_enumerate(unsigned short vendor_id, unsigned short product_id);
extern void __cdecl SDL_hid_free_enumeration(SDL_hid_device_info *devs);
extern SDL_hid_device * __cdecl SDL_hid_open(unsigned short vendor_id, unsigned short product_id, const wchar_t *serial_number);
extern SDL_hid_device * __cdecl SDL_hid_open_path(const char *path, int bExclusive );
extern int __cdecl SDL_hid_write(SDL_hid_device *dev, const unsigned char *data, size_t length);
extern int __cdecl SDL_hid_read_timeout(SDL_hid_device *dev, unsigned char *data, size_t length, int milliseconds);
extern int __cdecl SDL_hid_read(SDL_hid_device *dev, unsigned char *data, size_t length);
extern int __cdecl SDL_hid_set_nonblocking(SDL_hid_device *dev, int nonblock);
extern int __cdecl SDL_hid_send_feature_report(SDL_hid_device *dev, const unsigned char *data, size_t length);
extern int __cdecl SDL_hid_get_feature_report(SDL_hid_device *dev, unsigned char *data, size_t length);
extern void __cdecl SDL_hid_close(SDL_hid_device *dev);
extern int __cdecl SDL_hid_get_manufacturer_string(SDL_hid_device *dev, wchar_t *string, size_t maxlen);
extern int __cdecl SDL_hid_get_product_string(SDL_hid_device *dev, wchar_t *string, size_t maxlen);
extern int __cdecl SDL_hid_get_serial_number_string(SDL_hid_device *dev, wchar_t *string, size_t maxlen);
extern int __cdecl SDL_hid_get_indexed_string(SDL_hid_device *dev, int string_index, wchar_t *string, size_t maxlen);
extern void __cdecl SDL_hid_ble_scan(SDL_bool active);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_hidapi.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_hints.h */
enum { SDL_hints_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
/* #define SDL_HINT_ACCELEROMETER_AS_JOYSTICK "SDL_ACCELEROMETER_AS_JOYSTICK" ### string, not number "\"SDL_ACCELEROMETER_AS_JOYSTICK\"" */
/* #define SDL_HINT_ALLOW_ALT_TAB_WHILE_GRABBED "SDL_ALLOW_ALT_TAB_WHILE_GRABBED" ### string, not number "\"SDL_ALLOW_ALT_TAB_WHILE_GRABBED\"" */
/* #define SDL_HINT_ALLOW_TOPMOST "SDL_ALLOW_TOPMOST" ### string, not number "\"SDL_ALLOW_TOPMOST\"" */
/* #define SDL_HINT_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION "SDL_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION" ### string, not number "\"SDL_ANDROID_APK_EXPANSION_MAIN_FILE_VERSION\"" */
/* #define SDL_HINT_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION "SDL_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION" ### string, not number "\"SDL_ANDROID_APK_EXPANSION_PATCH_FILE_VERSION\"" */
/* #define SDL_HINT_ANDROID_BLOCK_ON_PAUSE "SDL_ANDROID_BLOCK_ON_PAUSE" ### string, not number "\"SDL_ANDROID_BLOCK_ON_PAUSE\"" */
/* #define SDL_HINT_ANDROID_BLOCK_ON_PAUSE_PAUSEAUDIO "SDL_ANDROID_BLOCK_ON_PAUSE_PAUSEAUDIO" ### string, not number "\"SDL_ANDROID_BLOCK_ON_PAUSE_PAUSEAUDIO\"" */
/* #define SDL_HINT_ANDROID_TRAP_BACK_BUTTON "SDL_ANDROID_TRAP_BACK_BUTTON" ### string, not number "\"SDL_ANDROID_TRAP_BACK_BUTTON\"" */
/* #define SDL_HINT_APP_NAME "SDL_APP_NAME" ### string, not number "\"SDL_APP_NAME\"" */
/* #define SDL_HINT_APPLE_TV_CONTROLLER_UI_EVENTS "SDL_APPLE_TV_CONTROLLER_UI_EVENTS" ### string, not number "\"SDL_APPLE_TV_CONTROLLER_UI_EVENTS\"" */
/* #define SDL_HINT_APPLE_TV_REMOTE_ALLOW_ROTATION "SDL_APPLE_TV_REMOTE_ALLOW_ROTATION" ### string, not number "\"SDL_APPLE_TV_REMOTE_ALLOW_ROTATION\"" */
/* #define SDL_HINT_AUDIO_CATEGORY   "SDL_AUDIO_CATEGORY" ### string, not number "\"SDL_AUDIO_CATEGORY\"" */
/* #define SDL_HINT_AUDIO_DEVICE_APP_NAME "SDL_AUDIO_DEVICE_APP_NAME" ### string, not number "\"SDL_AUDIO_DEVICE_APP_NAME\"" */
/* #define SDL_HINT_AUDIO_DEVICE_STREAM_NAME "SDL_AUDIO_DEVICE_STREAM_NAME" ### string, not number "\"SDL_AUDIO_DEVICE_STREAM_NAME\"" */
/* #define SDL_HINT_AUDIO_DEVICE_STREAM_ROLE "SDL_AUDIO_DEVICE_STREAM_ROLE" ### string, not number "\"SDL_AUDIO_DEVICE_STREAM_ROLE\"" */
/* #define SDL_HINT_AUDIO_RESAMPLING_MODE   "SDL_AUDIO_RESAMPLING_MODE" ### string, not number "\"SDL_AUDIO_RESAMPLING_MODE\"" */
/* #define SDL_HINT_AUTO_UPDATE_JOYSTICKS  "SDL_AUTO_UPDATE_JOYSTICKS" ### string, not number "\"SDL_AUTO_UPDATE_JOYSTICKS\"" */
/* #define SDL_HINT_AUTO_UPDATE_SENSORS    "SDL_AUTO_UPDATE_SENSORS" ### string, not number "\"SDL_AUTO_UPDATE_SENSORS\"" */
/* #define SDL_HINT_BMP_SAVE_LEGACY_FORMAT "SDL_BMP_SAVE_LEGACY_FORMAT" ### string, not number "\"SDL_BMP_SAVE_LEGACY_FORMAT\"" */
/* #define SDL_HINT_DISPLAY_USABLE_BOUNDS "SDL_DISPLAY_USABLE_BOUNDS" ### string, not number "\"SDL_DISPLAY_USABLE_BOUNDS\"" */
/* #define SDL_HINT_EMSCRIPTEN_ASYNCIFY   "SDL_EMSCRIPTEN_ASYNCIFY" ### string, not number "\"SDL_EMSCRIPTEN_ASYNCIFY\"" */
/* #define SDL_HINT_EMSCRIPTEN_KEYBOARD_ELEMENT   "SDL_EMSCRIPTEN_KEYBOARD_ELEMENT" ### string, not number "\"SDL_EMSCRIPTEN_KEYBOARD_ELEMENT\"" */
/* #define SDL_HINT_ENABLE_SCREEN_KEYBOARD "SDL_ENABLE_SCREEN_KEYBOARD" ### string, not number "\"SDL_ENABLE_SCREEN_KEYBOARD\"" */
/* #define SDL_HINT_ENABLE_STEAM_CONTROLLERS "SDL_ENABLE_STEAM_CONTROLLERS" ### string, not number "\"SDL_ENABLE_STEAM_CONTROLLERS\"" */
/* #define SDL_HINT_EVENT_LOGGING   "SDL_EVENT_LOGGING" ### string, not number "\"SDL_EVENT_LOGGING\"" */
/* #define SDL_HINT_FORCE_RAISEWINDOW    "SDL_HINT_FORCE_RAISEWINDOW" ### string, not number "\"SDL_HINT_FORCE_RAISEWINDOW\"" */
/* #define SDL_HINT_FRAMEBUFFER_ACCELERATION   "SDL_FRAMEBUFFER_ACCELERATION" ### string, not number "\"SDL_FRAMEBUFFER_ACCELERATION\"" */
/* #define SDL_HINT_GAMECONTROLLERCONFIG "SDL_GAMECONTROLLERCONFIG" ### string, not number "\"SDL_GAMECONTROLLERCONFIG\"" */
/* #define SDL_HINT_GAMECONTROLLERCONFIG_FILE "SDL_GAMECONTROLLERCONFIG_FILE" ### string, not number "\"SDL_GAMECONTROLLERCONFIG_FILE\"" */
/* #define SDL_HINT_GAMECONTROLLERTYPE "SDL_GAMECONTROLLERTYPE" ### string, not number "\"SDL_GAMECONTROLLERTYPE\"" */
/* #define SDL_HINT_GAMECONTROLLER_IGNORE_DEVICES "SDL_GAMECONTROLLER_IGNORE_DEVICES" ### string, not number "\"SDL_GAMECONTROLLER_IGNORE_DEVICES\"" */
/* #define SDL_HINT_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT "SDL_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT" ### string, not number "\"SDL_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT\"" */
/* #define SDL_HINT_GAMECONTROLLER_USE_BUTTON_LABELS "SDL_GAMECONTROLLER_USE_BUTTON_LABELS" ### string, not number "\"SDL_GAMECONTROLLER_USE_BUTTON_LABELS\"" */
/* #define SDL_HINT_GRAB_KEYBOARD              "SDL_GRAB_KEYBOARD" ### string, not number "\"SDL_GRAB_KEYBOARD\"" */
/* #define SDL_HINT_HIDAPI_IGNORE_DEVICES "SDL_HIDAPI_IGNORE_DEVICES" ### string, not number "\"SDL_HIDAPI_IGNORE_DEVICES\"" */
/* #define SDL_HINT_IDLE_TIMER_DISABLED "SDL_IOS_IDLE_TIMER_DISABLED" ### string, not number "\"SDL_IOS_IDLE_TIMER_DISABLED\"" */
/* #define SDL_HINT_IME_INTERNAL_EDITING "SDL_IME_INTERNAL_EDITING" ### string, not number "\"SDL_IME_INTERNAL_EDITING\"" */
/* #define SDL_HINT_IME_SHOW_UI "SDL_IME_SHOW_UI" ### string, not number "\"SDL_IME_SHOW_UI\"" */
/* #define SDL_HINT_IME_SUPPORT_EXTENDED_TEXT "SDL_IME_SUPPORT_EXTENDED_TEXT" ### string, not number "\"SDL_IME_SUPPORT_EXTENDED_TEXT\"" */
/* #define SDL_HINT_IOS_HIDE_HOME_INDICATOR "SDL_IOS_HIDE_HOME_INDICATOR" ### string, not number "\"SDL_IOS_HIDE_HOME_INDICATOR\"" */
/* #define SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS "SDL_JOYSTICK_ALLOW_BACKGROUND_EVENTS" ### string, not number "\"SDL_JOYSTICK_ALLOW_BACKGROUND_EVENTS\"" */
/* #define SDL_HINT_JOYSTICK_ARCADESTICK_DEVICES "SDL_JOYSTICK_ARCADESTICK_DEVICES" ### string, not number "\"SDL_JOYSTICK_ARCADESTICK_DEVICES\"" */
/* #define SDL_HINT_JOYSTICK_ARCADESTICK_DEVICES_EXCLUDED "SDL_JOYSTICK_ARCADESTICK_DEVICES_EXCLUDED" ### string, not number "\"SDL_JOYSTICK_ARCADESTICK_DEVICES_EXCLUDED\"" */
/* #define SDL_HINT_JOYSTICK_BLACKLIST_DEVICES "SDL_JOYSTICK_BLACKLIST_DEVICES" ### string, not number "\"SDL_JOYSTICK_BLACKLIST_DEVICES\"" */
/* #define SDL_HINT_JOYSTICK_BLACKLIST_DEVICES_EXCLUDED "SDL_JOYSTICK_BLACKLIST_DEVICES_EXCLUDED" ### string, not number "\"SDL_JOYSTICK_BLACKLIST_DEVICES_EXCLUDED\"" */
/* #define SDL_HINT_JOYSTICK_FLIGHTSTICK_DEVICES "SDL_JOYSTICK_FLIGHTSTICK_DEVICES" ### string, not number "\"SDL_JOYSTICK_FLIGHTSTICK_DEVICES\"" */
/* #define SDL_HINT_JOYSTICK_FLIGHTSTICK_DEVICES_EXCLUDED "SDL_JOYSTICK_FLIGHTSTICK_DEVICES_EXCLUDED" ### string, not number "\"SDL_JOYSTICK_FLIGHTSTICK_DEVICES_EXCLUDED\"" */
/* #define SDL_HINT_JOYSTICK_GAMECUBE_DEVICES "SDL_JOYSTICK_GAMECUBE_DEVICES" ### string, not number "\"SDL_JOYSTICK_GAMECUBE_DEVICES\"" */
/* #define SDL_HINT_JOYSTICK_GAMECUBE_DEVICES_EXCLUDED "SDL_JOYSTICK_GAMECUBE_DEVICES_EXCLUDED" ### string, not number "\"SDL_JOYSTICK_GAMECUBE_DEVICES_EXCLUDED\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI "SDL_JOYSTICK_HIDAPI" ### string, not number "\"SDL_JOYSTICK_HIDAPI\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_GAMECUBE "SDL_JOYSTICK_HIDAPI_GAMECUBE" ### string, not number "\"SDL_JOYSTICK_HIDAPI_GAMECUBE\"" */
/* #define SDL_HINT_JOYSTICK_GAMECUBE_RUMBLE_BRAKE "SDL_JOYSTICK_GAMECUBE_RUMBLE_BRAKE" ### string, not number "\"SDL_JOYSTICK_GAMECUBE_RUMBLE_BRAKE\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_JOY_CONS "SDL_JOYSTICK_HIDAPI_JOY_CONS" ### string, not number "\"SDL_JOYSTICK_HIDAPI_JOY_CONS\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_COMBINE_JOY_CONS "SDL_JOYSTICK_HIDAPI_COMBINE_JOY_CONS" ### string, not number "\"SDL_JOYSTICK_HIDAPI_COMBINE_JOY_CONS\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_VERTICAL_JOY_CONS "SDL_JOYSTICK_HIDAPI_VERTICAL_JOY_CONS" ### string, not number "\"SDL_JOYSTICK_HIDAPI_VERTICAL_JOY_CONS\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_LUNA "SDL_JOYSTICK_HIDAPI_LUNA" ### string, not number "\"SDL_JOYSTICK_HIDAPI_LUNA\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_NINTENDO_CLASSIC "SDL_JOYSTICK_HIDAPI_NINTENDO_CLASSIC" ### string, not number "\"SDL_JOYSTICK_HIDAPI_NINTENDO_CLASSIC\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_SHIELD "SDL_JOYSTICK_HIDAPI_SHIELD" ### string, not number "\"SDL_JOYSTICK_HIDAPI_SHIELD\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_PS3 "SDL_JOYSTICK_HIDAPI_PS3" ### string, not number "\"SDL_JOYSTICK_HIDAPI_PS3\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_PS4 "SDL_JOYSTICK_HIDAPI_PS4" ### string, not number "\"SDL_JOYSTICK_HIDAPI_PS4\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_PS4_RUMBLE "SDL_JOYSTICK_HIDAPI_PS4_RUMBLE" ### string, not number "\"SDL_JOYSTICK_HIDAPI_PS4_RUMBLE\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_PS5 "SDL_JOYSTICK_HIDAPI_PS5" ### string, not number "\"SDL_JOYSTICK_HIDAPI_PS5\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_PS5_PLAYER_LED "SDL_JOYSTICK_HIDAPI_PS5_PLAYER_LED" ### string, not number "\"SDL_JOYSTICK_HIDAPI_PS5_PLAYER_LED\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_PS5_RUMBLE "SDL_JOYSTICK_HIDAPI_PS5_RUMBLE" ### string, not number "\"SDL_JOYSTICK_HIDAPI_PS5_RUMBLE\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_STADIA "SDL_JOYSTICK_HIDAPI_STADIA" ### string, not number "\"SDL_JOYSTICK_HIDAPI_STADIA\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_STEAM "SDL_JOYSTICK_HIDAPI_STEAM" ### string, not number "\"SDL_JOYSTICK_HIDAPI_STEAM\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_STEAMDECK "SDL_JOYSTICK_HIDAPI_STEAMDECK" ### string, not number "\"SDL_JOYSTICK_HIDAPI_STEAMDECK\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_SWITCH "SDL_JOYSTICK_HIDAPI_SWITCH" ### string, not number "\"SDL_JOYSTICK_HIDAPI_SWITCH\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_SWITCH_HOME_LED "SDL_JOYSTICK_HIDAPI_SWITCH_HOME_LED" ### string, not number "\"SDL_JOYSTICK_HIDAPI_SWITCH_HOME_LED\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_JOYCON_HOME_LED "SDL_JOYSTICK_HIDAPI_JOYCON_HOME_LED" ### string, not number "\"SDL_JOYSTICK_HIDAPI_JOYCON_HOME_LED\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED "SDL_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED" ### string, not number "\"SDL_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_WII "SDL_JOYSTICK_HIDAPI_WII" ### string, not number "\"SDL_JOYSTICK_HIDAPI_WII\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_WII_PLAYER_LED "SDL_JOYSTICK_HIDAPI_WII_PLAYER_LED" ### string, not number "\"SDL_JOYSTICK_HIDAPI_WII_PLAYER_LED\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_XBOX   "SDL_JOYSTICK_HIDAPI_XBOX" ### string, not number "\"SDL_JOYSTICK_HIDAPI_XBOX\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_XBOX_360   "SDL_JOYSTICK_HIDAPI_XBOX_360" ### string, not number "\"SDL_JOYSTICK_HIDAPI_XBOX_360\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED "SDL_JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED" ### string, not number "\"SDL_JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_XBOX_360_WIRELESS   "SDL_JOYSTICK_HIDAPI_XBOX_360_WIRELESS" ### string, not number "\"SDL_JOYSTICK_HIDAPI_XBOX_360_WIRELESS\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_XBOX_ONE   "SDL_JOYSTICK_HIDAPI_XBOX_ONE" ### string, not number "\"SDL_JOYSTICK_HIDAPI_XBOX_ONE\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED "SDL_JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED" ### string, not number "\"SDL_JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED\"" */
/* #define SDL_HINT_JOYSTICK_IOKIT "SDL_JOYSTICK_IOKIT" ### string, not number "\"SDL_JOYSTICK_IOKIT\"" */
/* #define SDL_HINT_JOYSTICK_MFI "SDL_JOYSTICK_MFI" ### string, not number "\"SDL_JOYSTICK_MFI\"" */
/* #define SDL_HINT_JOYSTICK_RAWINPUT "SDL_JOYSTICK_RAWINPUT" ### string, not number "\"SDL_JOYSTICK_RAWINPUT\"" */
/* #define SDL_HINT_JOYSTICK_RAWINPUT_CORRELATE_XINPUT   "SDL_JOYSTICK_RAWINPUT_CORRELATE_XINPUT" ### string, not number "\"SDL_JOYSTICK_RAWINPUT_CORRELATE_XINPUT\"" */
/* #define SDL_HINT_JOYSTICK_ROG_CHAKRAM "SDL_JOYSTICK_ROG_CHAKRAM" ### string, not number "\"SDL_JOYSTICK_ROG_CHAKRAM\"" */
/* #define SDL_HINT_JOYSTICK_THREAD "SDL_JOYSTICK_THREAD" ### string, not number "\"SDL_JOYSTICK_THREAD\"" */
/* #define SDL_HINT_JOYSTICK_THROTTLE_DEVICES "SDL_JOYSTICK_THROTTLE_DEVICES" ### string, not number "\"SDL_JOYSTICK_THROTTLE_DEVICES\"" */
/* #define SDL_HINT_JOYSTICK_THROTTLE_DEVICES_EXCLUDED "SDL_JOYSTICK_THROTTLE_DEVICES_EXCLUDED" ### string, not number "\"SDL_JOYSTICK_THROTTLE_DEVICES_EXCLUDED\"" */
/* #define SDL_HINT_JOYSTICK_WGI "SDL_JOYSTICK_WGI" ### string, not number "\"SDL_JOYSTICK_WGI\"" */
/* #define SDL_HINT_JOYSTICK_WHEEL_DEVICES "SDL_JOYSTICK_WHEEL_DEVICES" ### string, not number "\"SDL_JOYSTICK_WHEEL_DEVICES\"" */
/* #define SDL_HINT_JOYSTICK_WHEEL_DEVICES_EXCLUDED "SDL_JOYSTICK_WHEEL_DEVICES_EXCLUDED" ### string, not number "\"SDL_JOYSTICK_WHEEL_DEVICES_EXCLUDED\"" */
/* #define SDL_HINT_JOYSTICK_ZERO_CENTERED_DEVICES "SDL_JOYSTICK_ZERO_CENTERED_DEVICES" ### string, not number "\"SDL_JOYSTICK_ZERO_CENTERED_DEVICES\"" */
/* #define SDL_HINT_KMSDRM_REQUIRE_DRM_MASTER      "SDL_KMSDRM_REQUIRE_DRM_MASTER" ### string, not number "\"SDL_KMSDRM_REQUIRE_DRM_MASTER\"" */
/* #define SDL_HINT_JOYSTICK_DEVICE "SDL_JOYSTICK_DEVICE" ### string, not number "\"SDL_JOYSTICK_DEVICE\"" */
/* #define SDL_HINT_LINUX_DIGITAL_HATS "SDL_LINUX_DIGITAL_HATS" ### string, not number "\"SDL_LINUX_DIGITAL_HATS\"" */
/* #define SDL_HINT_LINUX_HAT_DEADZONES "SDL_LINUX_HAT_DEADZONES" ### string, not number "\"SDL_LINUX_HAT_DEADZONES\"" */
/* #define SDL_HINT_LINUX_JOYSTICK_CLASSIC "SDL_LINUX_JOYSTICK_CLASSIC" ### string, not number "\"SDL_LINUX_JOYSTICK_CLASSIC\"" */
/* #define SDL_HINT_LINUX_JOYSTICK_DEADZONES "SDL_LINUX_JOYSTICK_DEADZONES" ### string, not number "\"SDL_LINUX_JOYSTICK_DEADZONES\"" */
/* #define SDL_HINT_LOGGING   "SDL_LOGGING" ### string, not number "\"SDL_LOGGING\"" */
/* #define SDL_HINT_MAC_BACKGROUND_APP    "SDL_MAC_BACKGROUND_APP" ### string, not number "\"SDL_MAC_BACKGROUND_APP\"" */
/* #define SDL_HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK "SDL_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK" ### string, not number "\"SDL_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK\"" */
/* #define SDL_HINT_MAC_OPENGL_ASYNC_DISPATCH "SDL_MAC_OPENGL_ASYNC_DISPATCH" ### string, not number "\"SDL_MAC_OPENGL_ASYNC_DISPATCH\"" */
/* #define SDL_HINT_MOUSE_DOUBLE_CLICK_RADIUS    "SDL_MOUSE_DOUBLE_CLICK_RADIUS" ### string, not number "\"SDL_MOUSE_DOUBLE_CLICK_RADIUS\"" */
/* #define SDL_HINT_MOUSE_DOUBLE_CLICK_TIME    "SDL_MOUSE_DOUBLE_CLICK_TIME" ### string, not number "\"SDL_MOUSE_DOUBLE_CLICK_TIME\"" */
/* #define SDL_HINT_MOUSE_FOCUS_CLICKTHROUGH "SDL_MOUSE_FOCUS_CLICKTHROUGH" ### string, not number "\"SDL_MOUSE_FOCUS_CLICKTHROUGH\"" */
/* #define SDL_HINT_MOUSE_NORMAL_SPEED_SCALE    "SDL_MOUSE_NORMAL_SPEED_SCALE" ### string, not number "\"SDL_MOUSE_NORMAL_SPEED_SCALE\"" */
/* #define SDL_HINT_MOUSE_RELATIVE_MODE_CENTER    "SDL_MOUSE_RELATIVE_MODE_CENTER" ### string, not number "\"SDL_MOUSE_RELATIVE_MODE_CENTER\"" */
/* #define SDL_HINT_MOUSE_RELATIVE_MODE_WARP    "SDL_MOUSE_RELATIVE_MODE_WARP" ### string, not number "\"SDL_MOUSE_RELATIVE_MODE_WARP\"" */
/* #define SDL_HINT_MOUSE_RELATIVE_SCALING "SDL_MOUSE_RELATIVE_SCALING" ### string, not number "\"SDL_MOUSE_RELATIVE_SCALING\"" */
/* #define SDL_HINT_MOUSE_RELATIVE_SPEED_SCALE    "SDL_MOUSE_RELATIVE_SPEED_SCALE" ### string, not number "\"SDL_MOUSE_RELATIVE_SPEED_SCALE\"" */
/* #define SDL_HINT_MOUSE_RELATIVE_SYSTEM_SCALE    "SDL_MOUSE_RELATIVE_SYSTEM_SCALE" ### string, not number "\"SDL_MOUSE_RELATIVE_SYSTEM_SCALE\"" */
/* #define SDL_HINT_MOUSE_RELATIVE_WARP_MOTION  "SDL_MOUSE_RELATIVE_WARP_MOTION" ### string, not number "\"SDL_MOUSE_RELATIVE_WARP_MOTION\"" */
/* #define SDL_HINT_MOUSE_RELATIVE_CURSOR_VISIBLE  "SDL_MOUSE_RELATIVE_CURSOR_VISIBLE" ### string, not number "\"SDL_MOUSE_RELATIVE_CURSOR_VISIBLE\"" */
/* #define SDL_HINT_MOUSE_TOUCH_EVENTS    "SDL_MOUSE_TOUCH_EVENTS" ### string, not number "\"SDL_MOUSE_TOUCH_EVENTS\"" */
/* #define SDL_HINT_MOUSE_AUTO_CAPTURE    "SDL_MOUSE_AUTO_CAPTURE" ### string, not number "\"SDL_MOUSE_AUTO_CAPTURE\"" */
/* #define SDL_HINT_NO_SIGNAL_HANDLERS   "SDL_NO_SIGNAL_HANDLERS" ### string, not number "\"SDL_NO_SIGNAL_HANDLERS\"" */
/* #define SDL_HINT_OPENGL_ES_DRIVER   "SDL_OPENGL_ES_DRIVER" ### string, not number "\"SDL_OPENGL_ES_DRIVER\"" */
/* #define SDL_HINT_ORIENTATIONS "SDL_IOS_ORIENTATIONS" ### string, not number "\"SDL_IOS_ORIENTATIONS\"" */
/* #define SDL_HINT_POLL_SENTINEL "SDL_POLL_SENTINEL" ### string, not number "\"SDL_POLL_SENTINEL\"" */
/* #define SDL_HINT_PREFERRED_LOCALES "SDL_PREFERRED_LOCALES" ### string, not number "\"SDL_PREFERRED_LOCALES\"" */
/* #define SDL_HINT_QTWAYLAND_CONTENT_ORIENTATION "SDL_QTWAYLAND_CONTENT_ORIENTATION" ### string, not number "\"SDL_QTWAYLAND_CONTENT_ORIENTATION\"" */
/* #define SDL_HINT_QTWAYLAND_WINDOW_FLAGS "SDL_QTWAYLAND_WINDOW_FLAGS" ### string, not number "\"SDL_QTWAYLAND_WINDOW_FLAGS\"" */
/* #define SDL_HINT_RENDER_BATCHING  "SDL_RENDER_BATCHING" ### string, not number "\"SDL_RENDER_BATCHING\"" */
/* #define SDL_HINT_RENDER_LINE_METHOD "SDL_RENDER_LINE_METHOD" ### string, not number "\"SDL_RENDER_LINE_METHOD\"" */
/* #define SDL_HINT_RENDER_DIRECT3D11_DEBUG    "SDL_RENDER_DIRECT3D11_DEBUG" ### string, not number "\"SDL_RENDER_DIRECT3D11_DEBUG\"" */
/* #define SDL_HINT_RENDER_DIRECT3D_THREADSAFE "SDL_RENDER_DIRECT3D_THREADSAFE" ### string, not number "\"SDL_RENDER_DIRECT3D_THREADSAFE\"" */
/* #define SDL_HINT_RENDER_DRIVER              "SDL_RENDER_DRIVER" ### string, not number "\"SDL_RENDER_DRIVER\"" */
/* #define SDL_HINT_RENDER_LOGICAL_SIZE_MODE       "SDL_RENDER_LOGICAL_SIZE_MODE" ### string, not number "\"SDL_RENDER_LOGICAL_SIZE_MODE\"" */
/* #define SDL_HINT_RENDER_OPENGL_SHADERS      "SDL_RENDER_OPENGL_SHADERS" ### string, not number "\"SDL_RENDER_OPENGL_SHADERS\"" */
/* #define SDL_HINT_RENDER_SCALE_QUALITY       "SDL_RENDER_SCALE_QUALITY" ### string, not number "\"SDL_RENDER_SCALE_QUALITY\"" */
/* #define SDL_HINT_RENDER_VSYNC               "SDL_RENDER_VSYNC" ### string, not number "\"SDL_RENDER_VSYNC\"" */
/* #define SDL_HINT_RENDER_METAL_PREFER_LOW_POWER_DEVICE "SDL_RENDER_METAL_PREFER_LOW_POWER_DEVICE" ### string, not number "\"SDL_RENDER_METAL_PREFER_LOW_POWER_DEVICE\"" */
/* #define SDL_HINT_ROG_GAMEPAD_MICE "SDL_ROG_GAMEPAD_MICE" ### string, not number "\"SDL_ROG_GAMEPAD_MICE\"" */
/* #define SDL_HINT_ROG_GAMEPAD_MICE_EXCLUDED "SDL_ROG_GAMEPAD_MICE_EXCLUDED" ### string, not number "\"SDL_ROG_GAMEPAD_MICE_EXCLUDED\"" */
/* #define SDL_HINT_PS2_DYNAMIC_VSYNC    "SDL_PS2_DYNAMIC_VSYNC" ### string, not number "\"SDL_PS2_DYNAMIC_VSYNC\"" */
/* #define SDL_HINT_RETURN_KEY_HIDES_IME "SDL_RETURN_KEY_HIDES_IME" ### string, not number "\"SDL_RETURN_KEY_HIDES_IME\"" */
/* #define SDL_HINT_RPI_VIDEO_LAYER           "SDL_RPI_VIDEO_LAYER" ### string, not number "\"SDL_RPI_VIDEO_LAYER\"" */
/* #define SDL_HINT_SCREENSAVER_INHIBIT_ACTIVITY_NAME "SDL_SCREENSAVER_INHIBIT_ACTIVITY_NAME" ### string, not number "\"SDL_SCREENSAVER_INHIBIT_ACTIVITY_NAME\"" */
/* #define SDL_HINT_THREAD_FORCE_REALTIME_TIME_CRITICAL "SDL_THREAD_FORCE_REALTIME_TIME_CRITICAL" ### string, not number "\"SDL_THREAD_FORCE_REALTIME_TIME_CRITICAL\"" */
/* #define SDL_HINT_THREAD_PRIORITY_POLICY         "SDL_THREAD_PRIORITY_POLICY" ### string, not number "\"SDL_THREAD_PRIORITY_POLICY\"" */
/* #define SDL_HINT_THREAD_STACK_SIZE              "SDL_THREAD_STACK_SIZE" ### string, not number "\"SDL_THREAD_STACK_SIZE\"" */
/* #define SDL_HINT_TIMER_RESOLUTION "SDL_TIMER_RESOLUTION" ### string, not number "\"SDL_TIMER_RESOLUTION\"" */
/* #define SDL_HINT_TOUCH_MOUSE_EVENTS    "SDL_TOUCH_MOUSE_EVENTS" ### string, not number "\"SDL_TOUCH_MOUSE_EVENTS\"" */
/* #define SDL_HINT_VITA_TOUCH_MOUSE_DEVICE    "SDL_HINT_VITA_TOUCH_MOUSE_DEVICE" ### string, not number "\"SDL_HINT_VITA_TOUCH_MOUSE_DEVICE\"" */
/* #define SDL_HINT_TV_REMOTE_AS_JOYSTICK "SDL_TV_REMOTE_AS_JOYSTICK" ### string, not number "\"SDL_TV_REMOTE_AS_JOYSTICK\"" */
/* #define SDL_HINT_VIDEO_ALLOW_SCREENSAVER    "SDL_VIDEO_ALLOW_SCREENSAVER" ### string, not number "\"SDL_VIDEO_ALLOW_SCREENSAVER\"" */
/* #define SDL_HINT_VIDEO_DOUBLE_BUFFER      "SDL_VIDEO_DOUBLE_BUFFER" ### string, not number "\"SDL_VIDEO_DOUBLE_BUFFER\"" */
/* #define SDL_HINT_VIDEO_EGL_ALLOW_TRANSPARENCY "SDL_VIDEO_EGL_ALLOW_TRANSPARENCY" ### string, not number "\"SDL_VIDEO_EGL_ALLOW_TRANSPARENCY\"" */
/* #define SDL_HINT_VIDEO_EXTERNAL_CONTEXT    "SDL_VIDEO_EXTERNAL_CONTEXT" ### string, not number "\"SDL_VIDEO_EXTERNAL_CONTEXT\"" */
/* #define SDL_HINT_VIDEO_HIGHDPI_DISABLED "SDL_VIDEO_HIGHDPI_DISABLED" ### string, not number "\"SDL_VIDEO_HIGHDPI_DISABLED\"" */
/* #define SDL_HINT_VIDEO_MAC_FULLSCREEN_SPACES    "SDL_VIDEO_MAC_FULLSCREEN_SPACES" ### string, not number "\"SDL_VIDEO_MAC_FULLSCREEN_SPACES\"" */
/* #define SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS   "SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS" ### string, not number "\"SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS\"" */
/* #define SDL_HINT_VIDEO_WAYLAND_ALLOW_LIBDECOR "SDL_VIDEO_WAYLAND_ALLOW_LIBDECOR" ### string, not number "\"SDL_VIDEO_WAYLAND_ALLOW_LIBDECOR\"" */
/* #define SDL_HINT_VIDEO_WAYLAND_PREFER_LIBDECOR "SDL_VIDEO_WAYLAND_PREFER_LIBDECOR" ### string, not number "\"SDL_VIDEO_WAYLAND_PREFER_LIBDECOR\"" */
/* #define SDL_HINT_VIDEO_WAYLAND_MODE_EMULATION "SDL_VIDEO_WAYLAND_MODE_EMULATION" ### string, not number "\"SDL_VIDEO_WAYLAND_MODE_EMULATION\"" */
/* #define SDL_HINT_VIDEO_WAYLAND_EMULATE_MOUSE_WARP "SDL_VIDEO_WAYLAND_EMULATE_MOUSE_WARP" ### string, not number "\"SDL_VIDEO_WAYLAND_EMULATE_MOUSE_WARP\"" */
/* #define SDL_HINT_VIDEO_WINDOW_SHARE_PIXEL_FORMAT    "SDL_VIDEO_WINDOW_SHARE_PIXEL_FORMAT" ### string, not number "\"SDL_VIDEO_WINDOW_SHARE_PIXEL_FORMAT\"" */
/* #define SDL_HINT_VIDEO_FOREIGN_WINDOW_OPENGL "SDL_VIDEO_FOREIGN_WINDOW_OPENGL" ### string, not number "\"SDL_VIDEO_FOREIGN_WINDOW_OPENGL\"" */
/* #define SDL_HINT_VIDEO_FOREIGN_WINDOW_VULKAN "SDL_VIDEO_FOREIGN_WINDOW_VULKAN" ### string, not number "\"SDL_VIDEO_FOREIGN_WINDOW_VULKAN\"" */
/* #define SDL_HINT_VIDEO_WIN_D3DCOMPILER              "SDL_VIDEO_WIN_D3DCOMPILER" ### string, not number "\"SDL_VIDEO_WIN_D3DCOMPILER\"" */
/* #define SDL_HINT_VIDEO_X11_FORCE_EGL "SDL_VIDEO_X11_FORCE_EGL" ### string, not number "\"SDL_VIDEO_X11_FORCE_EGL\"" */
/* #define SDL_HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR "SDL_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR" ### string, not number "\"SDL_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR\"" */
/* #define SDL_HINT_VIDEO_X11_NET_WM_PING      "SDL_VIDEO_X11_NET_WM_PING" ### string, not number "\"SDL_VIDEO_X11_NET_WM_PING\"" */
/* #define SDL_HINT_VIDEO_X11_WINDOW_VISUALID      "SDL_VIDEO_X11_WINDOW_VISUALID" ### string, not number "\"SDL_VIDEO_X11_WINDOW_VISUALID\"" */
/* #define SDL_HINT_VIDEO_X11_XINERAMA         "SDL_VIDEO_X11_XINERAMA" ### string, not number "\"SDL_VIDEO_X11_XINERAMA\"" */
/* #define SDL_HINT_VIDEO_X11_XRANDR           "SDL_VIDEO_X11_XRANDR" ### string, not number "\"SDL_VIDEO_X11_XRANDR\"" */
/* #define SDL_HINT_VIDEO_X11_XVIDMODE         "SDL_VIDEO_X11_XVIDMODE" ### string, not number "\"SDL_VIDEO_X11_XVIDMODE\"" */
/* #define SDL_HINT_WAVE_FACT_CHUNK   "SDL_WAVE_FACT_CHUNK" ### string, not number "\"SDL_WAVE_FACT_CHUNK\"" */
/* #define SDL_HINT_WAVE_RIFF_CHUNK_SIZE   "SDL_WAVE_RIFF_CHUNK_SIZE" ### string, not number "\"SDL_WAVE_RIFF_CHUNK_SIZE\"" */
/* #define SDL_HINT_WAVE_TRUNCATION   "SDL_WAVE_TRUNCATION" ### string, not number "\"SDL_WAVE_TRUNCATION\"" */
/* #define SDL_HINT_WINDOWS_DISABLE_THREAD_NAMING "SDL_WINDOWS_DISABLE_THREAD_NAMING" ### string, not number "\"SDL_WINDOWS_DISABLE_THREAD_NAMING\"" */
/* #define SDL_HINT_WINDOWS_ENABLE_MENU_MNEMONICS "SDL_WINDOWS_ENABLE_MENU_MNEMONICS" ### string, not number "\"SDL_WINDOWS_ENABLE_MENU_MNEMONICS\"" */
/* #define SDL_HINT_WINDOWS_ENABLE_MESSAGELOOP "SDL_WINDOWS_ENABLE_MESSAGELOOP" ### string, not number "\"SDL_WINDOWS_ENABLE_MESSAGELOOP\"" */
/* #define SDL_HINT_WINDOWS_FORCE_MUTEX_CRITICAL_SECTIONS "SDL_WINDOWS_FORCE_MUTEX_CRITICAL_SECTIONS" ### string, not number "\"SDL_WINDOWS_FORCE_MUTEX_CRITICAL_SECTIONS\"" */
/* #define SDL_HINT_WINDOWS_FORCE_SEMAPHORE_KERNEL "SDL_WINDOWS_FORCE_SEMAPHORE_KERNEL" ### string, not number "\"SDL_WINDOWS_FORCE_SEMAPHORE_KERNEL\"" */
/* #define SDL_HINT_WINDOWS_INTRESOURCE_ICON       "SDL_WINDOWS_INTRESOURCE_ICON" ### string, not number "\"SDL_WINDOWS_INTRESOURCE_ICON\"" */
/* #define SDL_HINT_WINDOWS_INTRESOURCE_ICON_SMALL "SDL_WINDOWS_INTRESOURCE_ICON_SMALL" ### string, not number "\"SDL_WINDOWS_INTRESOURCE_ICON_SMALL\"" */
/* #define SDL_HINT_WINDOWS_NO_CLOSE_ON_ALT_F4 "SDL_WINDOWS_NO_CLOSE_ON_ALT_F4" ### string, not number "\"SDL_WINDOWS_NO_CLOSE_ON_ALT_F4\"" */
/* #define SDL_HINT_WINDOWS_USE_D3D9EX "SDL_WINDOWS_USE_D3D9EX" ### string, not number "\"SDL_WINDOWS_USE_D3D9EX\"" */
/* #define SDL_HINT_WINDOWS_DPI_AWARENESS "SDL_WINDOWS_DPI_AWARENESS" ### string, not number "\"SDL_WINDOWS_DPI_AWARENESS\"" */
/* #define SDL_HINT_WINDOWS_DPI_SCALING "SDL_WINDOWS_DPI_SCALING" ### string, not number "\"SDL_WINDOWS_DPI_SCALING\"" */
/* #define SDL_HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN    "SDL_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN" ### string, not number "\"SDL_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN\"" */
/* #define SDL_HINT_WINDOW_NO_ACTIVATION_WHEN_SHOWN    "SDL_WINDOW_NO_ACTIVATION_WHEN_SHOWN" ### string, not number "\"SDL_WINDOW_NO_ACTIVATION_WHEN_SHOWN\"" */
/* #define SDL_HINT_WINRT_HANDLE_BACK_BUTTON "SDL_WINRT_HANDLE_BACK_BUTTON" ### string, not number "\"SDL_WINRT_HANDLE_BACK_BUTTON\"" */
/* #define SDL_HINT_WINRT_PRIVACY_POLICY_LABEL "SDL_WINRT_PRIVACY_POLICY_LABEL" ### string, not number "\"SDL_WINRT_PRIVACY_POLICY_LABEL\"" */
/* #define SDL_HINT_WINRT_PRIVACY_POLICY_URL "SDL_WINRT_PRIVACY_POLICY_URL" ### string, not number "\"SDL_WINRT_PRIVACY_POLICY_URL\"" */
/* #define SDL_HINT_X11_FORCE_OVERRIDE_REDIRECT "SDL_X11_FORCE_OVERRIDE_REDIRECT" ### string, not number "\"SDL_X11_FORCE_OVERRIDE_REDIRECT\"" */
/* #define SDL_HINT_XINPUT_ENABLED "SDL_XINPUT_ENABLED" ### string, not number "\"SDL_XINPUT_ENABLED\"" */
/* #define SDL_HINT_DIRECTINPUT_ENABLED "SDL_DIRECTINPUT_ENABLED" ### string, not number "\"SDL_DIRECTINPUT_ENABLED\"" */
/* #define SDL_HINT_XINPUT_USE_OLD_JOYSTICK_MAPPING "SDL_XINPUT_USE_OLD_JOYSTICK_MAPPING" ### string, not number "\"SDL_XINPUT_USE_OLD_JOYSTICK_MAPPING\"" */
/* #define SDL_HINT_AUDIO_INCLUDE_MONITORS "SDL_AUDIO_INCLUDE_MONITORS" ### string, not number "\"SDL_AUDIO_INCLUDE_MONITORS\"" */
/* #define SDL_HINT_X11_WINDOW_TYPE "SDL_X11_WINDOW_TYPE" ### string, not number "\"SDL_X11_WINDOW_TYPE\"" */
/* #define SDL_HINT_QUIT_ON_LAST_WINDOW_CLOSE "SDL_QUIT_ON_LAST_WINDOW_CLOSE" ### string, not number "\"SDL_QUIT_ON_LAST_WINDOW_CLOSE\"" */
/* #define SDL_HINT_VIDEODRIVER "SDL_VIDEODRIVER" ### string, not number "\"SDL_VIDEODRIVER\"" */
/* #define SDL_HINT_AUDIODRIVER "SDL_AUDIODRIVER" ### string, not number "\"SDL_AUDIODRIVER\"" */
/* #define SDL_HINT_KMSDRM_DEVICE_INDEX "SDL_KMSDRM_DEVICE_INDEX" ### string, not number "\"SDL_KMSDRM_DEVICE_INDEX\"" */
/* #define SDL_HINT_TRACKPAD_IS_TOUCH_ONLY "SDL_TRACKPAD_IS_TOUCH_ONLY" ### string, not number "\"SDL_TRACKPAD_IS_TOUCH_ONLY\"" */
/* #define SDL_HINT_SHUTDOWN_DBUS_ON_QUIT "SDL_SHUTDOWN_DBUS_ON_QUIT" ### string, not number "\"SDL_SHUTDOWN_DBUS_ON_QUIT\"" */
typedef enum { SDL_HINT_DEFAULT, SDL_HINT_NORMAL, SDL_HINT_OVERRIDE } SDL_HintPriority;
extern SDL_bool __cdecl SDL_SetHintWithPriority(const char *name, const char *value, SDL_HintPriority priority);
extern SDL_bool __cdecl SDL_SetHint(const char *name, const char *value);
extern SDL_bool __cdecl SDL_ResetHint(const char *name);
extern void __cdecl SDL_ResetHints(void);
extern const char * __cdecl SDL_GetHint(const char *name);
extern SDL_bool __cdecl SDL_GetHintBoolean(const char *name, SDL_bool default_value);
typedef void (__cdecl *SDL_HintCallback)(void *userdata, const char *name, const char *oldValue, const char *newValue);
extern void __cdecl SDL_AddHintCallback(const char *name, SDL_HintCallback callback, void *userdata);
extern void __cdecl SDL_DelHintCallback(const char *name, SDL_HintCallback callback, void *userdata);
extern void __cdecl SDL_ClearHints(void);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_hints.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_joystick.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_joystick.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_loadso.h */
enum { SDL_loadso_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_error.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_error.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
extern void *__cdecl SDL_LoadObject(const char *sofile);
extern void *__cdecl SDL_LoadFunction(void *handle, const char *name);
extern void __cdecl SDL_UnloadObject(void *handle);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_loadso.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_log.h */
enum { SDL_log_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
enum { SDL_MAX_LOG_MESSAGE = 4096 };
typedef enum { SDL_LOG_CATEGORY_APPLICATION, SDL_LOG_CATEGORY_ERROR, SDL_LOG_CATEGORY_ASSERT, SDL_LOG_CATEGORY_SYSTEM, SDL_LOG_CATEGORY_AUDIO, SDL_LOG_CATEGORY_VIDEO, SDL_LOG_CATEGORY_RENDER, SDL_LOG_CATEGORY_INPUT, SDL_LOG_CATEGORY_TEST, SDL_LOG_CATEGORY_RESERVED1, SDL_LOG_CATEGORY_RESERVED2, SDL_LOG_CATEGORY_RESERVED3, SDL_LOG_CATEGORY_RESERVED4, SDL_LOG_CATEGORY_RESERVED5, SDL_LOG_CATEGORY_RESERVED6, SDL_LOG_CATEGORY_RESERVED7, SDL_LOG_CATEGORY_RESERVED8, SDL_LOG_CATEGORY_RESERVED9, SDL_LOG_CATEGORY_RESERVED10, SDL_LOG_CATEGORY_CUSTOM } SDL_LogCategory;
typedef enum { SDL_LOG_PRIORITY_VERBOSE = 1, SDL_LOG_PRIORITY_DEBUG, SDL_LOG_PRIORITY_INFO, SDL_LOG_PRIORITY_WARN, SDL_LOG_PRIORITY_ERROR, SDL_LOG_PRIORITY_CRITICAL, SDL_NUM_LOG_PRIORITIES } SDL_LogPriority;
extern void __cdecl SDL_LogSetAllPriority(SDL_LogPriority priority);
extern void __cdecl SDL_LogSetPriority(int category, SDL_LogPriority priority);
extern SDL_LogPriority __cdecl SDL_LogGetPriority(int category);
extern void __cdecl SDL_LogResetPriorities(void);
extern void __cdecl SDL_Log( const char *fmt, ...);
extern void __cdecl SDL_LogVerbose(int category, const char *fmt, ...);
extern void __cdecl SDL_LogDebug(int category, const char *fmt, ...);
extern void __cdecl SDL_LogInfo(int category, const char *fmt, ...);
extern void __cdecl SDL_LogWarn(int category, const char *fmt, ...);
extern void __cdecl SDL_LogError(int category, const char *fmt, ...);
extern void __cdecl SDL_LogCritical(int category, const char *fmt, ...);
extern void __cdecl SDL_LogMessage(int category, SDL_LogPriority priority, const char *fmt, ...);
extern void __cdecl SDL_LogMessageV(int category, SDL_LogPriority priority, const char *fmt, va_list ap);
typedef void (__cdecl *SDL_LogOutputFunction)(void *userdata, int category, SDL_LogPriority priority, const char *message);
extern void __cdecl SDL_LogGetOutputFunction(SDL_LogOutputFunction *callback, void **userdata);
extern void __cdecl SDL_LogSetOutputFunction(SDL_LogOutputFunction callback, void *userdata);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_log.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_messagebox.h */
enum { SDL_messagebox_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_video.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_video.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
typedef enum { SDL_MESSAGEBOX_ERROR = 0x00000010, SDL_MESSAGEBOX_WARNING = 0x00000020, SDL_MESSAGEBOX_INFORMATION = 0x00000040, SDL_MESSAGEBOX_BUTTONS_LEFT_TO_RIGHT = 0x00000080, SDL_MESSAGEBOX_BUTTONS_RIGHT_TO_LEFT = 0x00000100 } SDL_MessageBoxFlags;
typedef enum { SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT = 0x00000001, SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT = 0x00000002 } SDL_MessageBoxButtonFlags;
typedef struct {
	Uint32 flags;
	int buttonid;
	const char * text;
} SDL_MessageBoxButtonData;
typedef struct {
	Uint8 r, g, b;
} SDL_MessageBoxColor;
typedef enum { SDL_MESSAGEBOX_COLOR_BACKGROUND, SDL_MESSAGEBOX_COLOR_TEXT, SDL_MESSAGEBOX_COLOR_BUTTON_BORDER, SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND, SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED, SDL_MESSAGEBOX_COLOR_MAX } SDL_MessageBoxColorType;
typedef struct {
	SDL_MessageBoxColor colors[SDL_MESSAGEBOX_COLOR_MAX];
} SDL_MessageBoxColorScheme;
typedef struct {
	Uint32 flags;
	SDL_Window *window;
	const char *title;
	const char *message;
	int numbuttons;
	const SDL_MessageBoxButtonData *buttons;
	const SDL_MessageBoxColorScheme *colorScheme;
} SDL_MessageBoxData;
extern int __cdecl SDL_ShowMessageBox(const SDL_MessageBoxData *messageboxdata, int *buttonid);
extern int __cdecl SDL_ShowSimpleMessageBox(Uint32 flags, const char *title, const char *message, SDL_Window *window);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_messagebox.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_metal.h */
enum { SDL_metal_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_video.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_video.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
typedef void *SDL_MetalView;
extern SDL_MetalView __cdecl SDL_Metal_CreateView(SDL_Window * window);
extern void __cdecl SDL_Metal_DestroyView(SDL_MetalView view);
extern void *__cdecl SDL_Metal_GetLayer(SDL_MetalView view);
extern void __cdecl SDL_Metal_GetDrawableSize(SDL_Window* window, int *w, int *h);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_metal.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_mutex.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_mutex.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_power.h */
enum { SDL_power_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
typedef enum { SDL_POWERSTATE_UNKNOWN, SDL_POWERSTATE_ON_BATTERY, SDL_POWERSTATE_NO_BATTERY, SDL_POWERSTATE_CHARGING, SDL_POWERSTATE_CHARGED } SDL_PowerState;
extern SDL_PowerState __cdecl SDL_GetPowerInfo(int *seconds, int *percent);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_power.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_render.h */
enum { SDL_render_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_rect.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_rect.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_video.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_video.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
typedef enum { SDL_RENDERER_SOFTWARE = 0x00000001, SDL_RENDERER_ACCELERATED = 0x00000002, SDL_RENDERER_PRESENTVSYNC = 0x00000004, SDL_RENDERER_TARGETTEXTURE = 0x00000008 } SDL_RendererFlags;
typedef struct SDL_RendererInfo {
	const char *name;
	Uint32 flags;
	Uint32 num_texture_formats;
	Uint32 texture_formats[16];
	int max_texture_width;
	int max_texture_height;
} SDL_RendererInfo;
typedef struct SDL_Vertex {
	SDL_FPoint position;
	SDL_Color color;
	SDL_FPoint tex_coord;
} SDL_Vertex;
typedef enum { SDL_ScaleModeNearest, SDL_ScaleModeLinear, SDL_ScaleModeBest } SDL_ScaleMode;
typedef enum { SDL_TEXTUREACCESS_STATIC, SDL_TEXTUREACCESS_STREAMING, SDL_TEXTUREACCESS_TARGET } SDL_TextureAccess;
typedef enum { SDL_TEXTUREMODULATE_NONE = 0x00000000, SDL_TEXTUREMODULATE_COLOR = 0x00000001, SDL_TEXTUREMODULATE_ALPHA = 0x00000002 } SDL_TextureModulate;
typedef enum { SDL_FLIP_NONE = 0x00000000, SDL_FLIP_HORIZONTAL = 0x00000001, SDL_FLIP_VERTICAL = 0x00000002 } SDL_RendererFlip;
struct SDL_Renderer;
typedef struct SDL_Renderer SDL_Renderer;
struct SDL_Texture;
typedef struct SDL_Texture SDL_Texture;
extern int __cdecl SDL_GetNumRenderDrivers(void);
extern int __cdecl SDL_GetRenderDriverInfo(int index, SDL_RendererInfo * info);
extern int __cdecl SDL_CreateWindowAndRenderer( int width, int height, Uint32 window_flags, SDL_Window **window, SDL_Renderer **renderer);
extern SDL_Renderer * __cdecl SDL_CreateRenderer(SDL_Window * window, int index, Uint32 flags);
extern SDL_Renderer * __cdecl SDL_CreateSoftwareRenderer(SDL_Surface * surface);
extern SDL_Renderer * __cdecl SDL_GetRenderer(SDL_Window * window);
extern SDL_Window * __cdecl SDL_RenderGetWindow(SDL_Renderer *renderer);
extern int __cdecl SDL_GetRendererInfo(SDL_Renderer * renderer, SDL_RendererInfo * info);
extern int __cdecl SDL_GetRendererOutputSize(SDL_Renderer * renderer, int *w, int *h);
extern SDL_Texture * __cdecl SDL_CreateTexture(SDL_Renderer * renderer, Uint32 format, int access, int w, int h);
extern SDL_Texture * __cdecl SDL_CreateTextureFromSurface(SDL_Renderer * renderer, SDL_Surface * surface);
extern int __cdecl SDL_QueryTexture(SDL_Texture * texture, Uint32 * format, int *access, int *w, int *h);
extern int __cdecl SDL_SetTextureColorMod(SDL_Texture * texture, Uint8 r, Uint8 g, Uint8 b);
extern int __cdecl SDL_GetTextureColorMod(SDL_Texture * texture, Uint8 * r, Uint8 * g, Uint8 * b);
extern int __cdecl SDL_SetTextureAlphaMod(SDL_Texture * texture, Uint8 alpha);
extern int __cdecl SDL_GetTextureAlphaMod(SDL_Texture * texture, Uint8 * alpha);
extern int __cdecl SDL_SetTextureBlendMode(SDL_Texture * texture, SDL_BlendMode blendMode);
extern int __cdecl SDL_GetTextureBlendMode(SDL_Texture * texture, SDL_BlendMode *blendMode);
extern int __cdecl SDL_SetTextureScaleMode(SDL_Texture * texture, SDL_ScaleMode scaleMode);
extern int __cdecl SDL_GetTextureScaleMode(SDL_Texture * texture, SDL_ScaleMode *scaleMode);
extern int __cdecl SDL_SetTextureUserData(SDL_Texture * texture, void *userdata);
extern void * __cdecl SDL_GetTextureUserData(SDL_Texture * texture);
extern int __cdecl SDL_UpdateTexture(SDL_Texture * texture, const SDL_Rect * rect, const void *pixels, int pitch);
extern int __cdecl SDL_UpdateYUVTexture(SDL_Texture * texture, const SDL_Rect * rect, const Uint8 *Yplane, int Ypitch, const Uint8 *Uplane, int Upitch, const Uint8 *Vplane, int Vpitch);
extern int __cdecl SDL_UpdateNVTexture(SDL_Texture * texture, const SDL_Rect * rect, const Uint8 *Yplane, int Ypitch, const Uint8 *UVplane, int UVpitch);
extern int __cdecl SDL_LockTexture(SDL_Texture * texture, const SDL_Rect * rect, void **pixels, int *pitch);
extern int __cdecl SDL_LockTextureToSurface(SDL_Texture *texture, const SDL_Rect *rect, SDL_Surface **surface);
extern void __cdecl SDL_UnlockTexture(SDL_Texture * texture);
extern SDL_bool __cdecl SDL_RenderTargetSupported(SDL_Renderer *renderer);
extern int __cdecl SDL_SetRenderTarget(SDL_Renderer *renderer, SDL_Texture *texture);
extern SDL_Texture * __cdecl SDL_GetRenderTarget(SDL_Renderer *renderer);
extern int __cdecl SDL_RenderSetLogicalSize(SDL_Renderer * renderer, int w, int h);
extern void __cdecl SDL_RenderGetLogicalSize(SDL_Renderer * renderer, int *w, int *h);
extern int __cdecl SDL_RenderSetIntegerScale(SDL_Renderer * renderer, SDL_bool enable);
extern SDL_bool __cdecl SDL_RenderGetIntegerScale(SDL_Renderer * renderer);
extern int __cdecl SDL_RenderSetViewport(SDL_Renderer * renderer, const SDL_Rect * rect);
extern void __cdecl SDL_RenderGetViewport(SDL_Renderer * renderer, SDL_Rect * rect);
extern int __cdecl SDL_RenderSetClipRect(SDL_Renderer * renderer, const SDL_Rect * rect);
extern void __cdecl SDL_RenderGetClipRect(SDL_Renderer * renderer, SDL_Rect * rect);
extern SDL_bool __cdecl SDL_RenderIsClipEnabled(SDL_Renderer * renderer);
extern int __cdecl SDL_RenderSetScale(SDL_Renderer * renderer, float scaleX, float scaleY);
extern void __cdecl SDL_RenderGetScale(SDL_Renderer * renderer, float *scaleX, float *scaleY);
extern void __cdecl SDL_RenderWindowToLogical(SDL_Renderer * renderer, int windowX, int windowY, float *logicalX, float *logicalY);
extern void __cdecl SDL_RenderLogicalToWindow(SDL_Renderer * renderer, float logicalX, float logicalY, int *windowX, int *windowY);
extern int __cdecl SDL_SetRenderDrawColor(SDL_Renderer * renderer, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
extern int __cdecl SDL_GetRenderDrawColor(SDL_Renderer * renderer, Uint8 * r, Uint8 * g, Uint8 * b, Uint8 * a);
extern int __cdecl SDL_SetRenderDrawBlendMode(SDL_Renderer * renderer, SDL_BlendMode blendMode);
extern int __cdecl SDL_GetRenderDrawBlendMode(SDL_Renderer * renderer, SDL_BlendMode *blendMode);
extern int __cdecl SDL_RenderClear(SDL_Renderer * renderer);
extern int __cdecl SDL_RenderDrawPoint(SDL_Renderer * renderer, int x, int y);
extern int __cdecl SDL_RenderDrawPoints(SDL_Renderer * renderer, const SDL_Point * points, int count);
extern int __cdecl SDL_RenderDrawLine(SDL_Renderer * renderer, int x1, int y1, int x2, int y2);
extern int __cdecl SDL_RenderDrawLines(SDL_Renderer * renderer, const SDL_Point * points, int count);
extern int __cdecl SDL_RenderDrawRect(SDL_Renderer * renderer, const SDL_Rect * rect);
extern int __cdecl SDL_RenderDrawRects(SDL_Renderer * renderer, const SDL_Rect * rects, int count);
extern int __cdecl SDL_RenderFillRect(SDL_Renderer * renderer, const SDL_Rect * rect);
extern int __cdecl SDL_RenderFillRects(SDL_Renderer * renderer, const SDL_Rect * rects, int count);
extern int __cdecl SDL_RenderCopy(SDL_Renderer * renderer, SDL_Texture * texture, const SDL_Rect * srcrect, const SDL_Rect * dstrect);
extern int __cdecl SDL_RenderCopyEx(SDL_Renderer * renderer, SDL_Texture * texture, const SDL_Rect * srcrect, const SDL_Rect * dstrect, const double angle, const SDL_Point *center, const SDL_RendererFlip flip);
extern int __cdecl SDL_RenderDrawPointF(SDL_Renderer * renderer, float x, float y);
extern int __cdecl SDL_RenderDrawPointsF(SDL_Renderer * renderer, const SDL_FPoint * points, int count);
extern int __cdecl SDL_RenderDrawLineF(SDL_Renderer * renderer, float x1, float y1, float x2, float y2);
extern int __cdecl SDL_RenderDrawLinesF(SDL_Renderer * renderer, const SDL_FPoint * points, int count);
extern int __cdecl SDL_RenderDrawRectF(SDL_Renderer * renderer, const SDL_FRect * rect);
extern int __cdecl SDL_RenderDrawRectsF(SDL_Renderer * renderer, const SDL_FRect * rects, int count);
extern int __cdecl SDL_RenderFillRectF(SDL_Renderer * renderer, const SDL_FRect * rect);
extern int __cdecl SDL_RenderFillRectsF(SDL_Renderer * renderer, const SDL_FRect * rects, int count);
extern int __cdecl SDL_RenderCopyF(SDL_Renderer * renderer, SDL_Texture * texture, const SDL_Rect * srcrect, const SDL_FRect * dstrect);
extern int __cdecl SDL_RenderCopyExF(SDL_Renderer * renderer, SDL_Texture * texture, const SDL_Rect * srcrect, const SDL_FRect * dstrect, const double angle, const SDL_FPoint *center, const SDL_RendererFlip flip);
extern int __cdecl SDL_RenderGeometry(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_Vertex *vertices, int num_vertices, const int *indices, int num_indices);
extern int __cdecl SDL_RenderGeometryRaw(SDL_Renderer *renderer, SDL_Texture *texture, const float *xy, int xy_stride, const SDL_Color *color, int color_stride, const float *uv, int uv_stride, int num_vertices, const void *indices, int num_indices, int size_indices);
extern int __cdecl SDL_RenderReadPixels(SDL_Renderer * renderer, const SDL_Rect * rect, Uint32 format, void *pixels, int pitch);
extern void __cdecl SDL_RenderPresent(SDL_Renderer * renderer);
extern void __cdecl SDL_DestroyTexture(SDL_Texture * texture);
extern void __cdecl SDL_DestroyRenderer(SDL_Renderer * renderer);
extern int __cdecl SDL_RenderFlush(SDL_Renderer * renderer);
extern int __cdecl SDL_GL_BindTexture(SDL_Texture *texture, float *texw, float *texh);
extern int __cdecl SDL_GL_UnbindTexture(SDL_Texture *texture);
extern void *__cdecl SDL_RenderGetMetalLayer(SDL_Renderer * renderer);
extern void *__cdecl SDL_RenderGetMetalCommandEncoder(SDL_Renderer * renderer);
extern int __cdecl SDL_RenderSetVSync(SDL_Renderer* renderer, int vsync);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_render.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_rwops.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_rwops.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_sensor.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_sensor.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_shape.h */
enum { SDL_shape_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_pixels.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_pixels.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_rect.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_rect.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_surface.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_surface.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_video.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_video.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
enum { SDL_NONSHAPEABLE_WINDOW = -1 };
enum { SDL_INVALID_SHAPE_ARGUMENT = -2 };
enum { SDL_WINDOW_LACKS_SHAPE = -3 };
extern SDL_Window * __cdecl SDL_CreateShapedWindow(const char *title,unsigned int x,unsigned int y,unsigned int w,unsigned int h,Uint32 flags);
extern SDL_bool __cdecl SDL_IsShapedWindow(const SDL_Window *window);
typedef enum { ShapeModeDefault, ShapeModeBinarizeAlpha, ShapeModeReverseBinarizeAlpha, ShapeModeColorKey } WindowShapeMode;
typedef union {
	Uint8 binarizationCutoff;
	SDL_Color colorKey;
} SDL_WindowShapeParams;
typedef struct SDL_WindowShapeMode {
	WindowShapeMode mode;
	SDL_WindowShapeParams parameters;
} SDL_WindowShapeMode;
extern int __cdecl SDL_SetWindowShape(SDL_Window *window,SDL_Surface *shape,SDL_WindowShapeMode *shape_mode);
extern int __cdecl SDL_GetShapedWindowMode(SDL_Window *window,SDL_WindowShapeMode *shape_mode);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_shape.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_system.h */
enum { SDL_system_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_keyboard.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_keyboard.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_render.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_render.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_video.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_video.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
typedef void (__cdecl * SDL_WindowsMessageHook)(void *userdata, void *hWnd, unsigned int message, Uint64 wParam, Sint64 lParam);
extern void __cdecl SDL_SetWindowsMessageHook(SDL_WindowsMessageHook callback, void *userdata);
extern int __cdecl SDL_Direct3D9GetAdapterIndex( int displayIndex );
typedef struct IDirect3DDevice9 IDirect3DDevice9;
extern IDirect3DDevice9* __cdecl SDL_RenderGetD3D9Device(SDL_Renderer * renderer);
typedef struct ID3D11Device ID3D11Device;
extern ID3D11Device* __cdecl SDL_RenderGetD3D11Device(SDL_Renderer * renderer);
typedef struct ID3D12Device ID3D12Device;
extern ID3D12Device* __cdecl SDL_RenderGetD3D12Device(SDL_Renderer* renderer);
extern SDL_bool __cdecl SDL_DXGIGetOutputInfo( int displayIndex, int *adapterIndex, int *outputIndex );
extern SDL_bool __cdecl SDL_IsTablet(void);
extern void __cdecl SDL_OnApplicationWillTerminate(void);
extern void __cdecl SDL_OnApplicationDidReceiveMemoryWarning(void);
extern void __cdecl SDL_OnApplicationWillResignActive(void);
extern void __cdecl SDL_OnApplicationDidEnterBackground(void);
extern void __cdecl SDL_OnApplicationWillEnterForeground(void);
extern void __cdecl SDL_OnApplicationDidBecomeActive(void);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_system.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_thread.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_thread.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_timer.h */
enum { SDL_timer_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_error.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_error.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
extern Uint32 __cdecl SDL_GetTicks(void);
extern Uint64 __cdecl SDL_GetTicks64(void);
extern Uint64 __cdecl SDL_GetPerformanceCounter(void);
extern Uint64 __cdecl SDL_GetPerformanceFrequency(void);
extern void __cdecl SDL_Delay(Uint32 ms);
typedef Uint32 (__cdecl * SDL_TimerCallback) (Uint32 interval, void *param);
typedef int SDL_TimerID;
extern SDL_TimerID __cdecl SDL_AddTimer(Uint32 interval, SDL_TimerCallback callback, void *param);
extern SDL_bool __cdecl SDL_RemoveTimer(SDL_TimerID id);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_timer.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_version.h */
enum { SDL_version_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
typedef struct SDL_version {
	Uint8 major;
	Uint8 minor;
	Uint8 patch;
} SDL_version;
enum { SDL_MAJOR_VERSION = 2 };
enum { SDL_MINOR_VERSION = 30 };
enum { SDL_PATCHLEVEL = 8 };
enum { SDL_COMPILEDVERSION = 5008 };
extern void __cdecl SDL_GetVersion(SDL_version * ver);
extern const char *__cdecl SDL_GetRevision(void);
extern int __cdecl SDL_GetRevisionNumber(void);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_version.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_video.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_video.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_locale.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_error.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_error.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
typedef struct SDL_Locale {
	const char *language;
	const char *country;
} SDL_Locale;
extern SDL_Locale * __cdecl SDL_GetPreferredLocales(void);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_locale.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/SDL_misc.h */
enum { SDL_misc_h_ = 1 };
/* +++ BEGIN C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ END   C:/Users/Chris/include/SDL2/SDL_stdinc.h */
/* +++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* +++ END   C:/Users/Chris/include/SDL2/begin_code.h */
extern int __cdecl SDL_OpenURL(const char *url);
/* +++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* +++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* ++ END   C:/Users/Chris/include/SDL2/SDL_misc.h */
/* ++ BEGIN C:/Users/Chris/include/SDL2/begin_code.h */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #pragma warning(disable: 4103) */
/* #pragma pack(push,8) */
/* ++ END   C:/Users/Chris/include/SDL2/begin_code.h */
enum { SDL_INIT_TIMER = 0x00000001u };
enum { SDL_INIT_AUDIO = 0x00000010u };
enum { SDL_INIT_VIDEO = 0x00000020u };
enum { SDL_INIT_JOYSTICK = 0x00000200u };
enum { SDL_INIT_HAPTIC = 0x00001000u };
enum { SDL_INIT_GAMECONTROLLER = 0x00002000u };
enum { SDL_INIT_EVENTS = 0x00004000u };
enum { SDL_INIT_SENSOR = 0x00008000u };
enum { SDL_INIT_NOPARACHUTE = 0x00100000u };
/* #define SDL_INIT_EVERYTHING (                  SDL_INIT_TIMER | SDL_INIT_AUDIO | SDL_INIT_VIDEO | SDL_INIT_EVENTS |                  SDL_INIT_JOYSTICK | SDL_INIT_HAPTIC | SDL_INIT_GAMECONTROLLER | SDL_INIT_SENSOR              ) ### string, not number "(                  SDL_INIT_TIMER | SDL_INIT_AUDIO | SDL_INIT_VIDEO | SDL_INIT_EVENTS |                  SDL_INIT_JOYSTICK | SDL_INIT_HAPTIC | SDL_INIT_GAMECONTROLLER | SDL_INIT_SENSOR              )" */
extern int __cdecl SDL_Init(Uint32 flags);
extern int __cdecl SDL_InitSubSystem(Uint32 flags);
extern void __cdecl SDL_QuitSubSystem(Uint32 flags);
extern Uint32 __cdecl SDL_WasInit(Uint32 flags);
extern void __cdecl SDL_Quit(void);
/* ++ BEGIN C:/Users/Chris/include/SDL2/close_code.h */
/* #pragma pack(pop) */
/* ++ END   C:/Users/Chris/include/SDL2/close_code.h */
/* + END   C:/Users/Chris/include/SDL2/SDL.h */
]]
ffi.cdef[[
// these aren't being generated correctly so here they are:
enum { SDL_WINDOWPOS_UNDEFINED = 0x1FFF0000u };
enum { SDL_WINDOWPOS_CENTERED = 0x2FFF0000u };
]]
return require 'ffi.load' 'SDL2'
