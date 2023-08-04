local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/stdio.h */
enum { _INC_STDIO = 1 };
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wstdio.h */
]] require 'ffi.req' 'c.corecrt_wstdio' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wstdio.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
enum { BUFSIZ = 512 };
enum { _NFILE = 0 };
enum { _NSTREAM_ = 512 };
enum { _IOB_ENTRIES = 3 };
enum { EOF = -1 };
enum { _IOFBF = 0 };
enum { _IOLBF = 64 };
enum { _IONBF = 4 };
enum { L_tmpnam = 260 };
enum { SEEK_CUR = 1 };
enum { SEEK_END = 2 };
enum { SEEK_SET = 0 };
enum { FILENAME_MAX = 260 };
enum { FOPEN_MAX = 20 };
enum { _SYS_OPEN = 20 };
enum { TMP_MAX = 2147483647 };
typedef __int64 fpos_t;
errno_t __cdecl _get_stream_buffer_pointers( FILE* _Stream, char*** _Base, char*** _Pointer, int** _Count );
void __cdecl clearerr( FILE* _Stream );
int __cdecl fclose( FILE* _Stream );
int __cdecl _fcloseall(void);
FILE* __cdecl _fdopen( int _FileHandle, char const* _Mode );
int __cdecl feof( FILE* _Stream );
int __cdecl ferror( FILE* _Stream );
int __cdecl fflush( FILE* _Stream );
int __cdecl fgetc( FILE* _Stream );
int __cdecl _fgetchar(void);
int __cdecl fgetpos( FILE* _Stream, fpos_t* _Position );
char* __cdecl fgets( char* _Buffer, int _MaxCount, FILE* _Stream );
int __cdecl _fileno( FILE* _Stream );
int __cdecl _flushall(void);
FILE* __cdecl fopen( char const* _FileName, char const* _Mode );
int __cdecl fputc( int _Character, FILE* _Stream );
int __cdecl _fputchar( int _Character );
int __cdecl fputs( char const* _Buffer, FILE* _Stream );
size_t __cdecl fread( void* _Buffer, size_t _ElementSize, size_t _ElementCount, FILE* _Stream );
FILE* __cdecl freopen( char const* _FileName, char const* _Mode, FILE* _Stream );
FILE* __cdecl _fsopen( char const* _FileName, char const* _Mode, int _ShFlag );
int __cdecl fsetpos( FILE* _Stream, fpos_t const* _Position );
int __cdecl fseek( FILE* _Stream, long _Offset, int _Origin );
int __cdecl _fseeki64( FILE* _Stream, __int64 _Offset, int _Origin );
long __cdecl ftell( FILE* _Stream );
__int64 __cdecl _ftelli64( FILE* _Stream );
size_t __cdecl fwrite( void const* _Buffer, size_t _ElementSize, size_t _ElementCount, FILE* _Stream );
int __cdecl getc( FILE* _Stream );
int __cdecl getchar(void);
int __cdecl _getmaxstdio(void);
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( ### TO ### char*, gets_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( char*, gets_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( char*, gets_s, ### TO ### char, _Buffer) */
int __cdecl _getw( FILE* _Stream );
void __cdecl perror( char const* _ErrorMessage );
int __cdecl _pclose( FILE* _Stream );
FILE* __cdecl _popen( char const* _Command, char const* _Mode );
int __cdecl putc( int _Character, FILE* _Stream );
int __cdecl putchar( int _Character );
int __cdecl puts( char const* _Buffer );
int __cdecl _putw( int _Word, FILE* _Stream );
int __cdecl remove( char const* _FileName );
int __cdecl rename( char const* _OldFileName, char const* _NewFileName );
int __cdecl _unlink( char const* _FileName );
int __cdecl unlink( char const* _FileName );
void __cdecl rewind( FILE* _Stream );
int __cdecl _rmtmp(void);
void __cdecl setbuf( FILE* _Stream, char* _Buffer );
int __cdecl _setmaxstdio( int _Maximum );
int __cdecl setvbuf( FILE* _Stream, char* _Buffer, int _Mode, size_t _Size );
char* __cdecl _tempnam( char const* _DirectoryName, char const* _FilePrefix );
FILE* __cdecl tmpfile(void);
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( ### TO ### _Success_(return == 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(    ### TO ### errno_t, tmpnam_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(    errno_t, tmpnam_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(    errno_t, tmpnam_s, ### TO ### _Always_(_Post_z_) char, _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(    errno_t, tmpnam_s,    char, _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0(    errno_t, tmpnam_s,    char, _Buffer ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( ### TO ### _Success_(return != 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(    ### TO ### char*, __RETURN_POLICY_DST, _ACRTIMP, tmpnam, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(    char*, __RETURN_POLICY_DST, , tmpnam, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(    char*, __RETURN_POLICY_DST, , tmpnam, ### TO ### _Pre_maybenull_ _Always_(_Post_z_), char, _Buffer */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(    char*, __RETURN_POLICY_DST, , tmpnam,    , char, _Buffer */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0(    char*, __RETURN_POLICY_DST, , tmpnam,    , char, _Buffer ### TO ### ) */
char* __cdecl tmpnam( char * _Buffer );
int __cdecl ungetc( int _Character, FILE* _Stream );
void __cdecl _lock_file( FILE* _Stream );
void __cdecl _unlock_file( FILE* _Stream );
int __cdecl _fclose_nolock( FILE* _Stream );
int __cdecl _fflush_nolock( FILE* _Stream );
int __cdecl _fgetc_nolock( FILE* _Stream );
int __cdecl _fputc_nolock( int _Character, FILE* _Stream );
size_t __cdecl _fread_nolock( void* _Buffer, size_t _ElementSize, size_t _ElementCount, FILE* _Stream );
size_t __cdecl _fread_nolock_s( void* _Buffer, size_t _BufferSize, size_t _ElementSize, size_t _ElementCount, FILE* _Stream );
int __cdecl _fseek_nolock( FILE* _Stream, long _Offset, int _Origin );
int __cdecl _fseeki64_nolock( FILE* _Stream, __int64 _Offset, int _Origin );
long __cdecl _ftell_nolock( FILE* _Stream );
__int64 __cdecl _ftelli64_nolock( FILE* _Stream );
size_t __cdecl _fwrite_nolock( void const* _Buffer, size_t _ElementSize, size_t _ElementCount, FILE* _Stream );
int __cdecl _getc_nolock( FILE* _Stream );
int __cdecl _putc_nolock( int _Character, FILE* _Stream );
int __cdecl _ungetc_nolock( int _Character, FILE* _Stream );
int* __cdecl __p__commode(void);
/* #define _commode (*__p__commode()) ### string, not number "(*__p__commode())" */
int __cdecl __stdio_common_vfprintf( unsigned __int64 _Options, FILE* _Stream, char const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl __stdio_common_vfprintf_s( unsigned __int64 _Options, FILE* _Stream, char const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl __stdio_common_vfprintf_p( unsigned __int64 _Options, FILE* _Stream, char const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl _vfprintf_l( FILE* const _Stream, char const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl vfprintf( FILE* const _Stream, char const* const _Format, va_list _ArgList );
int __cdecl _vfprintf_s_l( FILE* const _Stream, char const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vfprintf_p_l( FILE* const _Stream, char const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vfprintf_p( FILE* const _Stream, char const* const _Format, va_list _ArgList );
int __cdecl _vprintf_l( char const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl vprintf( char const* const _Format, va_list _ArgList );
int __cdecl _vprintf_s_l( char const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vprintf_p_l( char const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vprintf_p( char const* const _Format, va_list _ArgList );
int __cdecl _fprintf_l( FILE* const _Stream, char const* const _Format, _locale_t const _Locale, ...);
int __cdecl fprintf( FILE* const _Stream, char const* const _Format, ...);
int __cdecl _set_printf_count_output( int _Value );
int __cdecl _get_printf_count_output(void);
int __cdecl _fprintf_s_l( FILE* const _Stream, char const* const _Format, _locale_t const _Locale, ...);
int __cdecl _fprintf_p_l( FILE* const _Stream, char const* const _Format, _locale_t const _Locale, ...);
int __cdecl _fprintf_p( FILE* const _Stream, char const* const _Format, ...);
int __cdecl _printf_l( char const* const _Format, _locale_t const _Locale, ...);
int __cdecl printf( char const* const _Format, ...);
int __cdecl _printf_s_l( char const* const _Format, _locale_t const _Locale, ...);
int __cdecl _printf_p_l( char const* const _Format, _locale_t const _Locale, ...);
int __cdecl _printf_p( char const* const _Format, ...);
int __cdecl __stdio_common_vfscanf( unsigned __int64 _Options, FILE* _Stream, char const* _Format, _locale_t _Locale, va_list _Arglist );
int __cdecl _vfscanf_l( FILE* const _Stream, char const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl vfscanf( FILE* const _Stream, char const* const _Format, va_list _ArgList );
int __cdecl _vfscanf_s_l( FILE* const _Stream, char const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vscanf_l( char const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl vscanf( char const* const _Format, va_list _ArgList );
int __cdecl _vscanf_s_l( char const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _fscanf_l( FILE* const _Stream, char const* const _Format, _locale_t const _Locale, ...);
int __cdecl fscanf( FILE* const _Stream, char const* const _Format, ...);
int __cdecl _fscanf_s_l( FILE* const _Stream, char const* const _Format, _locale_t const _Locale, ...);
int __cdecl _scanf_l( char const* const _Format, _locale_t const _Locale, ...);
int __cdecl scanf( char const* const _Format, ...);
int __cdecl _scanf_s_l( char const* const _Format, _locale_t const _Locale, ...);
int __cdecl __stdio_common_vsprintf( unsigned __int64 _Options, char* _Buffer, size_t _BufferCount, char const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl __stdio_common_vsprintf_s( unsigned __int64 _Options, char* _Buffer, size_t _BufferCount, char const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl __stdio_common_vsnprintf_s( unsigned __int64 _Options, char* _Buffer, size_t _BufferCount, size_t _MaxCount, char const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl __stdio_common_vsprintf_p( unsigned __int64 _Options, char* _Buffer, size_t _BufferCount, char const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl _vsnprintf_l( char* const _Buffer, size_t const _BufferCount, char const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vsnprintf( char* const _Buffer, size_t const _BufferCount, char const* const _Format, va_list _ArgList );
int __cdecl vsnprintf( char* const _Buffer, size_t const _BufferCount, char const* const _Format, va_list _ArgList );
int __cdecl _vsprintf_l( char* const _Buffer, char const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl vsprintf( char* const _Buffer, char const* const _Format, va_list _ArgList );
int __cdecl _vsprintf_s_l( char* const _Buffer, size_t const _BufferCount, char const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vsprintf_p_l( char* const _Buffer, size_t const _BufferCount, char const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vsprintf_p( char* const _Buffer, size_t const _BufferCount, char const* const _Format, va_list _ArgList );
int __cdecl _vsnprintf_s_l( char* const _Buffer, size_t const _BufferCount, size_t const _MaxCount, char const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vsnprintf_s( char* const _Buffer, size_t const _BufferCount, size_t const _MaxCount, char const* const _Format, va_list _ArgList );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3( ### TO ### _Success_(return >= 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    ### TO ### int, _vsnprintf_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    int, _vsnprintf_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    int, _vsnprintf_s, ### TO ### _Always_(_Post_z_)            char,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    int, _vsnprintf_s,               char,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    int, _vsnprintf_s,               char,        _Buffer, ### TO ### _In_                          size_t,      _BufferCount, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    int, _vsnprintf_s,               char,        _Buffer,                           size_t,      _BufferCount, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    int, _vsnprintf_s,               char,        _Buffer,                           size_t,      _BufferCount, ### TO ### _In_z_ _Printf_format_string_ char const*, _Format, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    int, _vsnprintf_s,               char,        _Buffer,                           size_t,      _BufferCount,   char const*, _Format, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    int, _vsnprintf_s,               char,        _Buffer,                           size_t,      _BufferCount,   char const*, _Format, ### TO ### va_list,     _ArgList */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    int, _vsnprintf_s,               char,        _Buffer,                           size_t,      _BufferCount,   char const*, _Format, va_list,     _ArgList */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_3(    int, _vsnprintf_s,               char,        _Buffer,                           size_t,      _BufferCount,   char const*, _Format, va_list,     _ArgList ### TO ### ) */
int __cdecl _vscprintf_l( char const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vscprintf( char const* const _Format, va_list _ArgList );
int __cdecl _vscprintf_p_l( char const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vscprintf_p( char const* const _Format, va_list _ArgList );
int __cdecl _vsnprintf_c_l( char* const _Buffer, size_t const _BufferCount, char const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _vsnprintf_c( char* const _Buffer, size_t const _BufferCount, char const* const _Format, va_list _ArgList );
int __cdecl _sprintf_l( char* const _Buffer, char const* const _Format, _locale_t const _Locale, ...);
int __cdecl sprintf( char* const _Buffer, char const* const _Format, ...);
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST( ### TO ### _Success_(return >= 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST(    ### TO ### int, __RETURN_POLICY_SAME, __EMPTY_DECLSPEC, __CRTDECL, sprintf, vsprintf, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST(    int, __RETURN_POLICY_SAME, , __cdecl, sprintf, vsprintf, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST(    int, __RETURN_POLICY_SAME, , __cdecl, sprintf, vsprintf, ### TO ### _Pre_notnull_ _Always_(_Post_z_), char,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST(    int, __RETURN_POLICY_SAME, , __cdecl, sprintf, vsprintf,    , char,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST(    int, __RETURN_POLICY_SAME, , __cdecl, sprintf, vsprintf,    , char,        _Buffer, ### TO ### _In_z_ _Printf_format_string_     char const*, _Format */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST(    int, __RETURN_POLICY_SAME, , __cdecl, sprintf, vsprintf,    , char,        _Buffer,       char const*, _Format */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_ARGLIST(    int, __RETURN_POLICY_SAME, , __cdecl, sprintf, vsprintf,    , char,        _Buffer,       char const*, _Format ### TO ### ) */
int __cdecl sprintf( char * _Buffer, char const* _Format , ...); int __cdecl vsprintf( char * _Buffer, char const* _Format , va_list _Args);
int __cdecl _sprintf_s_l( char* const _Buffer, size_t const _BufferCount, char const* const _Format, _locale_t const _Locale, ...);
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST( ### TO ### _Success_(return >= 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(    ### TO ### int, sprintf_s, vsprintf_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(    int, sprintf_s, vsprintf_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(    int, sprintf_s, vsprintf_s, ### TO ### _Always_(_Post_z_)            char,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(    int, sprintf_s, vsprintf_s,               char,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(    int, sprintf_s, vsprintf_s,               char,        _Buffer, ### TO ### _In_z_ _Printf_format_string_ char const*, _Format */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(    int, sprintf_s, vsprintf_s,               char,        _Buffer,   char const*, _Format */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1_ARGLIST(    int, sprintf_s, vsprintf_s,               char,        _Buffer,   char const*, _Format ### TO ### ) */
int __cdecl _sprintf_p_l( char* const _Buffer, size_t const _BufferCount, char const* const _Format, _locale_t const _Locale, ...);
int __cdecl _sprintf_p( char* const _Buffer, size_t const _BufferCount, char const* const _Format, ...);
int __cdecl _snprintf_l( char* const _Buffer, size_t const _BufferCount, char const* const _Format, _locale_t const _Locale, ...);
int __cdecl snprintf( char* const _Buffer, size_t const _BufferCount, char const* const _Format, ...);
int __cdecl _snprintf( char* const _Buffer, size_t const _BufferCount, char const* const _Format, ...);
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX( ### TO ### _Success_(return >= 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    ### TO ### int, __RETURN_POLICY_SAME, __EMPTY_DECLSPEC, __CRTDECL, _snprintf, _vsnprintf, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _snprintf, _vsnprintf, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _snprintf, _vsnprintf, ### TO ### _Pre_notnull_ _Post_maybez_                   char, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _snprintf, _vsnprintf,                     char, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _snprintf, _vsnprintf,                     char, ### TO ### _Out_writes_opt_(_BufferCount) _Post_maybez_, char,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _snprintf, _vsnprintf,                     char,    , char,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _snprintf, _vsnprintf,                     char,    , char,        _Buffer, ### TO ### _In_                                          size_t,      _BufferCount, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _snprintf, _vsnprintf,                     char,    , char,        _Buffer,                                           size_t,      _BufferCount, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _snprintf, _vsnprintf,                     char,    , char,        _Buffer,                                           size_t,      _BufferCount, ### TO ### _In_z_ _Printf_format_string_                 char const*, _Format */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _snprintf, _vsnprintf,                     char,    , char,        _Buffer,                                           size_t,      _BufferCount,                   char const*, _Format */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_ARGLIST_EX(    int, __RETURN_POLICY_SAME, , __cdecl, _snprintf, _vsnprintf,                     char,    , char,        _Buffer,                                           size_t,      _BufferCount,                   char const*, _Format ### TO ### ) */
int __cdecl _snprintf( char * _Buffer, size_t _BufferCount, char const* _Format , ...); int __cdecl _vsnprintf( char * _Buffer, size_t _BufferCount, char const* _Format , va_list _Args);
int __cdecl _snprintf_c_l( char* const _Buffer, size_t const _BufferCount, char const* const _Format, _locale_t const _Locale, ...);
int __cdecl _snprintf_c( char* const _Buffer, size_t const _BufferCount, char const* const _Format, ...);
int __cdecl _snprintf_s_l( char* const _Buffer, size_t const _BufferCount, size_t const _MaxCount, char const* const _Format, _locale_t const _Locale, ...);
int __cdecl _snprintf_s( char* const _Buffer, size_t const _BufferCount, size_t const _MaxCount, char const* const _Format, ...);
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST( ### TO ### _Success_(return >= 0) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(    */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(    ### TO ### int, _snprintf_s, _vsnprintf_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(    int, _snprintf_s, _vsnprintf_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(    int, _snprintf_s, _vsnprintf_s, ### TO ### _Always_(_Post_z_)            char,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(    int, _snprintf_s, _vsnprintf_s,               char,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(    int, _snprintf_s, _vsnprintf_s,               char,        _Buffer, ### TO ### _In_                          size_t,      _BufferCount, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(    int, _snprintf_s, _vsnprintf_s,               char,        _Buffer,                           size_t,      _BufferCount, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(    int, _snprintf_s, _vsnprintf_s,               char,        _Buffer,                           size_t,      _BufferCount, ### TO ### _In_z_ _Printf_format_string_ char const*, _Format */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(    int, _snprintf_s, _vsnprintf_s,               char,        _Buffer,                           size_t,      _BufferCount,   char const*, _Format */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2_ARGLIST(    int, _snprintf_s, _vsnprintf_s,               char,        _Buffer,                           size_t,      _BufferCount,   char const*, _Format ### TO ### ) */
int __cdecl _scprintf_l( char const* const _Format, _locale_t const _Locale, ...);
int __cdecl _scprintf( char const* const _Format, ...);
int __cdecl _scprintf_p_l( char const* const _Format, _locale_t const _Locale, ...);
int __cdecl _scprintf_p( char const* const _Format, ...);
int __cdecl __stdio_common_vsscanf( unsigned __int64 _Options, char const* _Buffer, size_t _BufferCount, char const* _Format, _locale_t _Locale, va_list _ArgList );
int __cdecl _vsscanf_l( char const* const _Buffer, char const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl vsscanf( char const* const _Buffer, char const* const _Format, va_list _ArgList );
int __cdecl _vsscanf_s_l( char const* const _Buffer, char const* const _Format, _locale_t const _Locale, va_list _ArgList );
int __cdecl _sscanf_l( char const* const _Buffer, char const* const _Format, _locale_t const _Locale, ...);
int __cdecl sscanf( char const* const _Buffer, char const* const _Format, ...);
int __cdecl _sscanf_s_l( char const* const _Buffer, char const* const _Format, _locale_t const _Locale, ...);
/*     #pragma warning(push) */
/*     #pragma warning(disable: 6530)  */
int __cdecl _snscanf_l( char const* const _Buffer, size_t const _BufferCount, char const* const _Format, _locale_t const _Locale, ...);
int __cdecl _snscanf( char const* const _Buffer, size_t const _BufferCount, char const* const _Format, ...);
int __cdecl _snscanf_s_l( char const* const _Buffer, size_t const _BufferCount, char const* const _Format, _locale_t const _Locale, ...);
int __cdecl _snscanf_s( char const* const _Buffer, size_t const _BufferCount, char const* const _Format, ...);
/*     #pragma warning(pop) */
enum { SYS_OPEN = 20 };
char* __cdecl tempnam( char const* _Directory, char const* _FilePrefix );
int __cdecl fcloseall(void);
FILE* __cdecl fdopen( int _FileHandle, char const* _Format);
int __cdecl fgetchar(void);
int __cdecl fileno( FILE* _Stream);
int __cdecl flushall(void);
int __cdecl fputchar( int _Ch);
int __cdecl getw( FILE* _Stream);
int __cdecl putw( int _Ch, FILE* _Stream);
int __cdecl rmtmp(void);
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/stdio.h */
]]
local lib = ffi.C
return setmetatable({
	fileno = lib._fileno,
}, {
	__index = ffi.C,
})
