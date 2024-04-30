local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/stdlib.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_malloc.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
void* __cdecl _calloc_base( size_t _Count, size_t _Size );
void* __cdecl calloc( size_t _Count, size_t _Size );
int __cdecl _callnewh( size_t _Size );
void* __cdecl _expand( void* _Block, size_t _Size );
void __cdecl _free_base( void* _Block );
void __cdecl free( void* _Block );
void* __cdecl _malloc_base( size_t _Size );
void* __cdecl malloc( size_t _Size );
size_t __cdecl _msize_base( void* _Block );
size_t __cdecl _msize( void* _Block );
void* __cdecl _realloc_base( void* _Block, size_t _Size );
void* __cdecl realloc( void* _Block, size_t _Size );
void* __cdecl _recalloc_base( void* _Block, size_t _Count, size_t _Size );
void* __cdecl _recalloc( void* _Block, size_t _Count, size_t _Size );
void __cdecl _aligned_free( void* _Block );
void* __cdecl _aligned_malloc( size_t _Size, size_t _Alignment );
void* __cdecl _aligned_offset_malloc( size_t _Size, size_t _Alignment, size_t _Offset );
size_t __cdecl _aligned_msize( void* _Block, size_t _Alignment, size_t _Offset );
void* __cdecl _aligned_offset_realloc( void* _Block, size_t _Size, size_t _Alignment, size_t _Offset );
void* __cdecl _aligned_offset_recalloc( void* _Block, size_t _Count, size_t _Size, size_t _Alignment, size_t _Offset );
void* __cdecl _aligned_realloc( void* _Block, size_t _Size, size_t _Alignment );
void* __cdecl _aligned_recalloc( void* _Block, size_t _Count, size_t _Size, size_t _Alignment );
/* #pragma warning(pop)  */
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_malloc.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_search.h */
/* +++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* +++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/stddef.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
typedef int (__cdecl* _CoreCrtSecureSearchSortCompareFunction)(void*, void const*, void const*);
typedef int (__cdecl* _CoreCrtNonSecureSearchSortCompareFunction)(void const*, void const*);
void* __cdecl bsearch( void const* _Key, void const* _Base, size_t _NumOfElements, size_t _SizeOfElements, _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction );
void __cdecl qsort( void* _Base, size_t _NumOfElements, size_t _SizeOfElements, _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction );
void* __cdecl _lfind_s( void const* _Key, void const* _Base, unsigned int* _NumOfElements, size_t _SizeOfElements, _CoreCrtSecureSearchSortCompareFunction _CompareFunction, void* _Context );
void* __cdecl _lfind( void const* _Key, void const* _Base, unsigned int* _NumOfElements, unsigned int _SizeOfElements, _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction );
void* __cdecl _lsearch_s( void const* _Key, void* _Base, unsigned int* _NumOfElements, size_t _SizeOfElements, _CoreCrtSecureSearchSortCompareFunction _CompareFunction, void* _Context );
void* __cdecl _lsearch( void const* _Key, void* _Base, unsigned int* _NumOfElements, unsigned int _SizeOfElements, _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction );
void* __cdecl lfind( void const* _Key, void const* _Base, unsigned int* _NumOfElements, unsigned int _SizeOfElements, _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction );
void* __cdecl lsearch( void const* _Key, void* _Base, unsigned int* _NumOfElements, unsigned int _SizeOfElements, _CoreCrtNonSecureSearchSortCompareFunction _CompareFunction );
/* #pragma warning(pop)  */
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_search.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wstdlib.h */
]] require 'ffi.req' 'c.corecrt_wstdlib' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wstdlib.h */
/* ++ BEGIN C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.39.33519/include/limits.h */
]] require 'ffi.req' 'c.limits' ffi.cdef[[
/* ++ END   C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.39.33519/include/limits.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
void __cdecl _swab( char* _Buf1, char* _Buf2, int _SizeInBytes );
enum { EXIT_SUCCESS = 0 };
enum { EXIT_FAILURE = 1 };
void __cdecl exit( int _Code);
void __cdecl _exit( int _Code);
void __cdecl _Exit( int _Code);
void __cdecl quick_exit( int _Code);
void __cdecl abort(void);
unsigned int __cdecl _set_abort_behavior( unsigned int _Flags, unsigned int _Mask );
typedef int (__cdecl* _onexit_t)(void);
enum { onexit_t = 0 };
int __cdecl atexit(void (__cdecl*)(void));
_onexit_t __cdecl _onexit( _onexit_t _Func);
int __cdecl at_quick_exit(void (__cdecl*)(void));
typedef void (__cdecl* _purecall_handler)(void);
typedef void (__cdecl* _invalid_parameter_handler)( wchar_t const*, wchar_t const*, wchar_t const*, unsigned int, uintptr_t );
_purecall_handler __cdecl _set_purecall_handler( _purecall_handler _Handler );
_purecall_handler __cdecl _get_purecall_handler(void);
_invalid_parameter_handler __cdecl _set_invalid_parameter_handler( _invalid_parameter_handler _Handler );
_invalid_parameter_handler __cdecl _get_invalid_parameter_handler(void);
_invalid_parameter_handler __cdecl _set_thread_local_invalid_parameter_handler( _invalid_parameter_handler _Handler );
_invalid_parameter_handler __cdecl _get_thread_local_invalid_parameter_handler(void);
int __cdecl _set_error_mode( int _Mode);
int* __cdecl _errno(void);
/* #define errno (*_errno()) ### string, not number "(*_errno())" */
errno_t __cdecl _set_errno( int _Value);
errno_t __cdecl _get_errno( int* _Value);
unsigned long* __cdecl __doserrno(void);
errno_t __cdecl _set_doserrno( unsigned long _Value);
errno_t __cdecl _get_doserrno( unsigned long * _Value);
char** __cdecl __sys_errlist(void);
int * __cdecl __sys_nerr(void);
void __cdecl perror( char const* _ErrMsg);
char** __cdecl __p__pgmptr (void);
wchar_t** __cdecl __p__wpgmptr(void);
int* __cdecl __p__fmode (void);
errno_t __cdecl _get_pgmptr ( char** _Value);
errno_t __cdecl _get_wpgmptr( wchar_t** _Value);
errno_t __cdecl _set_fmode ( int _Mode );
errno_t __cdecl _get_fmode ( int* _PMode);
typedef struct _div_t {
	int quot;
	int rem;
} div_t;
typedef struct _ldiv_t {
	long quot;
	long rem;
} ldiv_t;
typedef struct _lldiv_t {
	long long quot;
	long long rem;
} lldiv_t;
int __cdecl abs ( int _Number);
long __cdecl labs ( long _Number);
long long __cdecl llabs ( long long _Number);
__int64 __cdecl _abs64( __int64 _Number);
unsigned short __cdecl _byteswap_ushort( unsigned short _Number);
unsigned long __cdecl _byteswap_ulong ( unsigned long _Number);
unsigned __int64 __cdecl _byteswap_uint64( unsigned __int64 _Number);
div_t __cdecl div ( int _Numerator, int _Denominator);
ldiv_t __cdecl ldiv ( long _Numerator, long _Denominator);
lldiv_t __cdecl lldiv( long long _Numerator, long long _Denominator);
/* #pragma warning(push) */
/* #pragma warning(disable: 6540) */
unsigned int __cdecl _rotl( unsigned int _Value, int _Shift );
unsigned long __cdecl _lrotl( unsigned long _Value, int _Shift );
unsigned __int64 __cdecl _rotl64( unsigned __int64 _Value, int _Shift );
unsigned int __cdecl _rotr( unsigned int _Value, int _Shift );
unsigned long __cdecl _lrotr( unsigned long _Value, int _Shift );
unsigned __int64 __cdecl _rotr64( unsigned __int64 _Value, int _Shift );
/* #pragma warning(pop) */
enum { RAND_MAX = 32767 };
void __cdecl srand( unsigned int _Seed);
int __cdecl rand(void);
/*     #pragma pack(push, 4) */
typedef struct {
	unsigned char ld[10];
} _LDOUBLE;
/*     #pragma pack(pop) */
typedef struct {
	double x;
} _CRT_DOUBLE;
typedef struct {
	float f;
} _CRT_FLOAT;
/* #pragma push_macro("long") */
typedef struct {
	long double x;
} _LONGDOUBLE;
/* #pragma pop_macro("long") */
/* #pragma pack(push, 4) */
typedef struct {
	unsigned char ld12[12];
} _LDBL12;
/* #pragma pack(pop) */
double __cdecl atof ( char const* _String);
int __cdecl atoi ( char const* _String);
long __cdecl atol ( char const* _String);
long long __cdecl atoll ( char const* _String);
__int64 __cdecl _atoi64( char const* _String);
double __cdecl _atof_l ( char const* _String, _locale_t _Locale);
int __cdecl _atoi_l ( char const* _String, _locale_t _Locale);
long __cdecl _atol_l ( char const* _String, _locale_t _Locale);
long long __cdecl _atoll_l ( char const* _String, _locale_t _Locale);
__int64 __cdecl _atoi64_l( char const* _String, _locale_t _Locale);
int __cdecl _atoflt ( _CRT_FLOAT* _Result, char const* _String);
int __cdecl _atodbl ( _CRT_DOUBLE* _Result, char* _String);
int __cdecl _atoldbl( _LDOUBLE* _Result, char* _String);
int __cdecl _atoflt_l( _CRT_FLOAT* _Result, char const* _String, _locale_t _Locale );
int __cdecl _atodbl_l( _CRT_DOUBLE* _Result, char* _String, _locale_t _Locale );
int __cdecl _atoldbl_l( _LDOUBLE* _Result, char* _String, _locale_t _Locale );
float __cdecl strtof( char const* _String, char** _EndPtr );
float __cdecl _strtof_l( char const* _String, char** _EndPtr, _locale_t _Locale );
double __cdecl strtod( char const* _String, char** _EndPtr );
double __cdecl _strtod_l( char const* _String, char** _EndPtr, _locale_t _Locale );
long double __cdecl strtold( char const* _String, char** _EndPtr );
long double __cdecl _strtold_l( char const* _String, char** _EndPtr, _locale_t _Locale );
long __cdecl strtol( char const* _String, char** _EndPtr, int _Radix );
long __cdecl _strtol_l( char const* _String, char** _EndPtr, int _Radix, _locale_t _Locale );
long long __cdecl strtoll( char const* _String, char** _EndPtr, int _Radix );
long long __cdecl _strtoll_l( char const* _String, char** _EndPtr, int _Radix, _locale_t _Locale );
unsigned long __cdecl strtoul( char const* _String, char** _EndPtr, int _Radix );
unsigned long __cdecl _strtoul_l( char const* _String, char** _EndPtr, int _Radix, _locale_t _Locale );
unsigned long long __cdecl strtoull( char const* _String, char** _EndPtr, int _Radix );
unsigned long long __cdecl _strtoull_l( char const* _String, char** _EndPtr, int _Radix, _locale_t _Locale );
__int64 __cdecl _strtoi64( char const* _String, char** _EndPtr, int _Radix );
__int64 __cdecl _strtoi64_l( char const* _String, char** _EndPtr, int _Radix, _locale_t _Locale );
unsigned __int64 __cdecl _strtoui64( char const* _String, char** _EndPtr, int _Radix );
unsigned __int64 __cdecl _strtoui64_l( char const* _String, char** _EndPtr, int _Radix, _locale_t _Locale );
errno_t __cdecl _itoa_s( int _Value, char* _Buffer, size_t _BufferCount, int _Radix );
char* __cdecl _itoa( int _Value, char * _Buffer, int _Radix );
errno_t __cdecl _ltoa_s( long _Value, char* _Buffer, size_t _BufferCount, int _Radix );
char* __cdecl _ltoa( long _Value, char * _Buffer, int _Radix );
errno_t __cdecl _ultoa_s( unsigned long _Value, char* _Buffer, size_t _BufferCount, int _Radix );
char* __cdecl _ultoa( unsigned long _Value, char * _Buffer, int _Radix );
errno_t __cdecl _i64toa_s( __int64 _Value, char* _Buffer, size_t _BufferCount, int _Radix );
char* __cdecl _i64toa( __int64 _Value, char* _Buffer, int _Radix );
errno_t __cdecl _ui64toa_s( unsigned __int64 _Value, char* _Buffer, size_t _BufferCount, int _Radix );
char* __cdecl _ui64toa( unsigned __int64 _Value, char* _Buffer, int _Radix );
errno_t __cdecl _ecvt_s( char* _Buffer, size_t _BufferCount, double _Value, int _DigitCount, int* _PtDec, int* _PtSign );
char* __cdecl _ecvt( double _Value, int _DigitCount, int* _PtDec, int* _PtSign );
errno_t __cdecl _fcvt_s( char* _Buffer, size_t _BufferCount, double _Value, int _FractionalDigitCount, int* _PtDec, int* _PtSign );
char* __cdecl _fcvt( double _Value, int _FractionalDigitCount, int* _PtDec, int* _PtSign );
errno_t __cdecl _gcvt_s( char* _Buffer, size_t _BufferCount, double _Value, int _DigitCount );
char* __cdecl _gcvt( double _Value, int _DigitCount, char* _Buffer );
/* #define MB_CUR_MAX ___mb_cur_max_func() ### string, not number "___mb_cur_max_func()" */
int __cdecl ___mb_cur_max_func(void);
int __cdecl ___mb_cur_max_l_func(_locale_t _Locale);
int __cdecl mblen( char const* _Ch, size_t _MaxCount );
int __cdecl _mblen_l( char const* _Ch, size_t _MaxCount, _locale_t _Locale );
size_t __cdecl _mbstrlen( char const* _String );
size_t __cdecl _mbstrlen_l( char const* _String, _locale_t _Locale );
size_t __cdecl _mbstrnlen( char const* _String, size_t _MaxCount );
size_t __cdecl _mbstrnlen_l( char const* _String, size_t _MaxCount, _locale_t _Locale );
int __cdecl mbtowc( wchar_t* _DstCh, char const* _SrcCh, size_t _SrcSizeInBytes );
int __cdecl _mbtowc_l( wchar_t* _DstCh, char const* _SrcCh, size_t _SrcSizeInBytes, _locale_t _Locale );
errno_t __cdecl mbstowcs_s( size_t* _PtNumOfCharConverted, wchar_t* _DstBuf, size_t _SizeInWords, char const* _SrcBuf, size_t _MaxCount );
size_t __cdecl mbstowcs( wchar_t * _Dest, char const* _Source, size_t _MaxCount );
errno_t __cdecl _mbstowcs_s_l( size_t* _PtNumOfCharConverted, wchar_t* _DstBuf, size_t _SizeInWords, char const* _SrcBuf, size_t _MaxCount, _locale_t _Locale );
size_t __cdecl _mbstowcs_l( wchar_t * _Dest, char const* _Source, size_t _MaxCount, _locale_t _Locale );
int __cdecl wctomb( char* _MbCh, wchar_t _WCh );
int __cdecl _wctomb_l( char* _MbCh, wchar_t _WCh, _locale_t _Locale );
errno_t __cdecl _wctomb_s_l( int* _SizeConverted, char* _MbCh, size_t _SizeInBytes, wchar_t _WCh, _locale_t _Locale);
errno_t __cdecl wcstombs_s( size_t* _PtNumOfCharConverted, char* _Dst, size_t _DstSizeInBytes, wchar_t const* _Src, size_t _MaxCountInBytes );
size_t __cdecl wcstombs( char * _Dest, wchar_t const* _Source, size_t _MaxCount );
errno_t __cdecl _wcstombs_s_l( size_t* _PtNumOfCharConverted, char* _Dst, size_t _DstSizeInBytes, wchar_t const* _Src, size_t _MaxCountInBytes, _locale_t _Locale );
size_t __cdecl _wcstombs_l( char * _Dest, wchar_t const* _Source, size_t _MaxCount, _locale_t _Locale );
/* #pragma push_macro("_fullpath") */
char* __cdecl _fullpath( char* _Buffer, char const* _Path, size_t _BufferCount );
/* #pragma pop_macro("_fullpath") */
errno_t __cdecl _makepath_s( char* _Buffer, size_t _BufferCount, char const* _Drive, char const* _Dir, char const* _Filename, char const* _Ext );
void __cdecl _makepath( char * _Buffer, char const* _Drive, char const* _Dir, char const* _Filename, char const* _Ext );
void __cdecl _splitpath( char const* _FullPath, char* _Drive, char* _Dir, char* _Filename, char* _Ext );
errno_t __cdecl _splitpath_s( char const* _FullPath, char* _Drive, size_t _DriveCount, char* _Dir, size_t _DirCount, char* _Filename, size_t _FilenameCount, char* _Ext, size_t _ExtCount );
int* __cdecl __p___argc (void);
char*** __cdecl __p___argv (void);
wchar_t*** __cdecl __p___wargv(void);
char*** __cdecl __p__environ (void);
wchar_t*** __cdecl __p__wenviron(void);
char* __cdecl getenv( char const* _VarName );
errno_t __cdecl _dupenv_s( char** _Buffer, size_t* _BufferCount, char const* _VarName );
int __cdecl system( char const* _Command );
/*     #pragma warning(push) */
/*     #pragma warning(disable: 6540) */
int __cdecl _putenv( char const* _EnvString );
errno_t __cdecl _putenv_s( char const* _Name, char const* _Value );
/*     #pragma warning(pop) */
errno_t __cdecl _searchenv_s( char const* _Filename, char const* _VarName, char* _Buffer, size_t _BufferCount );
void __cdecl _searchenv( char const* _Filename, char const* _VarName, char * _Buffer );
void __cdecl _seterrormode( int _Mode );
void __cdecl _beep( unsigned _Frequency, unsigned _Duration );
void __cdecl _sleep( unsigned long _Duration );
/* #define sys_errlist _sys_errlist ### string, not number "_sys_errlist" */
/* #define sys_nerr    _sys_nerr ### string, not number "_sys_nerr" */
/*     #pragma warning(push) */
/*     #pragma warning(disable: 4141)  */
char* __cdecl ecvt( double _Value, int _DigitCount, int* _PtDec, int* _PtSign );
char* __cdecl fcvt( double _Value, int _FractionalDigitCount, int* _PtDec, int* _PtSign );
char* __cdecl gcvt( double _Value, int _DigitCount, char* _DstBuf );
char* __cdecl itoa( int _Value, char* _Buffer, int _Radix );
char* __cdecl ltoa( long _Value, char* _Buffer, int _Radix );
void __cdecl swab( char* _Buf1, char* _Buf2, int _SizeInBytes );
char* __cdecl ultoa( unsigned long _Value, char* _Buffer, int _Radix );
/* #define environ _environ ### string, not number "_environ" */
int __cdecl putenv( char const* _EnvString );
/*     #pragma warning(pop) */
_onexit_t __cdecl onexit( _onexit_t _Func);
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/stdlib.h */
]]
