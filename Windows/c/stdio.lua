local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/stdio.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wstdio.h */
]] require 'ffi.req' 'c.corecrt_wstdio' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/corecrt_wstdio.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
enum { BUFSIZ = 512 };
enum { EOF = -1 };
enum { L_tmpnam = 260 };
enum { SEEK_CUR = 1 };
enum { SEEK_END = 2 };
enum { SEEK_SET = 0 };
enum { FILENAME_MAX = 260 };
enum { FOPEN_MAX = 20 };
enum { TMP_MAX = 2147483647 };
typedef __int64 fpos_t;
/* errno_t __cdecl _get_stream_buffer_pointers( FILE* _Stream, char*** _Base, char*** _Pointer, int** _Count ); */
void __cdecl clearerr( FILE* _Stream );
int __cdecl fclose( FILE* _Stream );
/* int __cdecl _fcloseall(void); */
/* FILE* __cdecl _fdopen( int _FileHandle, char const* _Mode ); */
int __cdecl feof( FILE* _Stream );
int __cdecl ferror( FILE* _Stream );
int __cdecl fflush( FILE* _Stream );
int __cdecl fgetc( FILE* _Stream );
/* int __cdecl _fgetchar(void); */
int __cdecl fgetpos( FILE* _Stream, fpos_t* _Position );
char* __cdecl fgets( char* _Buffer, int _MaxCount, FILE* _Stream );
int __cdecl _fileno( FILE* _Stream );
/* int __cdecl _flushall(void); */
FILE* __cdecl fopen( char const* _FileName, char const* _Mode );
int __cdecl fputc( int _Character, FILE* _Stream );
/* int __cdecl _fputchar( int _Character ); */
int __cdecl fputs( char const* _Buffer, FILE* _Stream );
size_t __cdecl fread( void* _Buffer, size_t _ElementSize, size_t _ElementCount, FILE* _Stream );
FILE* __cdecl freopen( char const* _FileName, char const* _Mode, FILE* _Stream );
/* FILE* __cdecl _fsopen( char const* _FileName, char const* _Mode, int _ShFlag ); */
int __cdecl fsetpos( FILE* _Stream, fpos_t const* _Position );
int __cdecl fseek( FILE* _Stream, long _Offset, int _Origin );
/* int __cdecl _fseeki64( FILE* _Stream, __int64 _Offset, int _Origin ); */
long __cdecl ftell( FILE* _Stream );
/* __int64 __cdecl _ftelli64( FILE* _Stream ); */
size_t __cdecl fwrite( void const* _Buffer, size_t _ElementSize, size_t _ElementCount, FILE* _Stream );
int __cdecl getc( FILE* _Stream );
int __cdecl getchar(void);
/* int __cdecl _getmaxstdio(void); */
/* int __cdecl _getw( FILE* _Stream ); */
void __cdecl perror( char const* _ErrorMessage );
/* int __cdecl _pclose( FILE* _Stream ); */
/* FILE* __cdecl _popen( char const* _Command, char const* _Mode ); */
int __cdecl putc( int _Character, FILE* _Stream );
int __cdecl putchar( int _Character );
int __cdecl puts( char const* _Buffer );
/* int __cdecl _putw( int _Word, FILE* _Stream ); */
int __cdecl remove( char const* _FileName );
int __cdecl rename( char const* _OldFileName, char const* _NewFileName );
/* int __cdecl _unlink( char const* _FileName ); */
int __cdecl unlink( char const* _FileName );
void __cdecl rewind( FILE* _Stream );
/* int __cdecl _rmtmp(void); */
void __cdecl setbuf( FILE* _Stream, char* _Buffer );
/* int __cdecl _setmaxstdio( int _Maximum ); */
int __cdecl setvbuf( FILE* _Stream, char* _Buffer, int _Mode, size_t _Size );
/* char* __cdecl _tempnam( char const* _DirectoryName, char const* _FilePrefix ); */
FILE* __cdecl tmpfile(void);
char* __cdecl tmpnam( char * _Buffer );
int __cdecl ungetc( int _Character, FILE* _Stream );
/* void __cdecl _lock_file( FILE* _Stream ); */
/* void __cdecl _unlock_file( FILE* _Stream ); */
/* int __cdecl _fclose_nolock( FILE* _Stream ); */
/* int __cdecl _fflush_nolock( FILE* _Stream ); */
/* int __cdecl _fgetc_nolock( FILE* _Stream ); */
/* int __cdecl _fputc_nolock( int _Character, FILE* _Stream ); */
/* size_t __cdecl _fread_nolock( void* _Buffer, size_t _ElementSize, size_t _ElementCount, FILE* _Stream ); */
/* size_t __cdecl _fread_nolock_s( void* _Buffer, size_t _BufferSize, size_t _ElementSize, size_t _ElementCount, FILE* _Stream ); */
/* int __cdecl _fseek_nolock( FILE* _Stream, long _Offset, int _Origin ); */
/* int __cdecl _fseeki64_nolock( FILE* _Stream, __int64 _Offset, int _Origin ); */
/* long __cdecl _ftell_nolock( FILE* _Stream ); */
/* __int64 __cdecl _ftelli64_nolock( FILE* _Stream ); */
/* size_t __cdecl _fwrite_nolock( void const* _Buffer, size_t _ElementSize, size_t _ElementCount, FILE* _Stream ); */
/* int __cdecl _getc_nolock( FILE* _Stream ); */
/* int __cdecl _putc_nolock( int _Character, FILE* _Stream ); */
/* int __cdecl _ungetc_nolock( int _Character, FILE* _Stream ); */
/* int* __cdecl __p__commode(void); */
/* int __cdecl __stdio_common_vfprintf( unsigned __int64 _Options, FILE* _Stream, char const* _Format, _locale_t _Locale, va_list _ArgList ); */
/* int __cdecl __stdio_common_vfprintf_s( unsigned __int64 _Options, FILE* _Stream, char const* _Format, _locale_t _Locale, va_list _ArgList ); */
/* int __cdecl __stdio_common_vfprintf_p( unsigned __int64 _Options, FILE* _Stream, char const* _Format, _locale_t _Locale, va_list _ArgList ); */
/* int __cdecl _vfprintf_l( FILE* const _Stream, char const* const _Format, _locale_t const _Locale, va_list _ArgList ); */
int __cdecl vfprintf( FILE* const _Stream, char const* const _Format, va_list _ArgList );
/* int __cdecl _vfprintf_s_l( FILE* const _Stream, char const* const _Format, _locale_t const _Locale, va_list _ArgList ); */
/* int __cdecl _vfprintf_p_l( FILE* const _Stream, char const* const _Format, _locale_t const _Locale, va_list _ArgList ); */
/* int __cdecl _vfprintf_p( FILE* const _Stream, char const* const _Format, va_list _ArgList ); */
/* int __cdecl _vprintf_l( char const* const _Format, _locale_t const _Locale, va_list _ArgList ); */
int __cdecl vprintf( char const* const _Format, va_list _ArgList );
/* int __cdecl _vprintf_s_l( char const* const _Format, _locale_t const _Locale, va_list _ArgList ); */
/* int __cdecl _vprintf_p_l( char const* const _Format, _locale_t const _Locale, va_list _ArgList ); */
/* int __cdecl _vprintf_p( char const* const _Format, va_list _ArgList ); */
/* int __cdecl _fprintf_l( FILE* const _Stream, char const* const _Format, _locale_t const _Locale, ...); */
int __cdecl fprintf( FILE* const _Stream, char const* const _Format, ...);
/* int __cdecl _set_printf_count_output( int _Value ); */
/* int __cdecl _get_printf_count_output(void); */
/* int __cdecl _fprintf_s_l( FILE* const _Stream, char const* const _Format, _locale_t const _Locale, ...); */
/* int __cdecl _fprintf_p_l( FILE* const _Stream, char const* const _Format, _locale_t const _Locale, ...); */
/* int __cdecl _fprintf_p( FILE* const _Stream, char const* const _Format, ...); */
/* int __cdecl _printf_l( char const* const _Format, _locale_t const _Locale, ...); */
int __cdecl printf( char const* const _Format, ...);
/* int __cdecl _printf_s_l( char const* const _Format, _locale_t const _Locale, ...); */
/* int __cdecl _printf_p_l( char const* const _Format, _locale_t const _Locale, ...); */
/* int __cdecl _printf_p( char const* const _Format, ...); */
/* int __cdecl __stdio_common_vfscanf( unsigned __int64 _Options, FILE* _Stream, char const* _Format, _locale_t _Locale, va_list _Arglist ); */
/* int __cdecl _vfscanf_l( FILE* const _Stream, char const* const _Format, _locale_t const _Locale, va_list _ArgList ); */
int __cdecl vfscanf( FILE* const _Stream, char const* const _Format, va_list _ArgList );
/* int __cdecl _vfscanf_s_l( FILE* const _Stream, char const* const _Format, _locale_t const _Locale, va_list _ArgList ); */
/* int __cdecl _vscanf_l( char const* const _Format, _locale_t const _Locale, va_list _ArgList ); */
int __cdecl vscanf( char const* const _Format, va_list _ArgList );
/* int __cdecl _vscanf_s_l( char const* const _Format, _locale_t const _Locale, va_list _ArgList ); */
/* int __cdecl _fscanf_l( FILE* const _Stream, char const* const _Format, _locale_t const _Locale, ...); */
int __cdecl fscanf( FILE* const _Stream, char const* const _Format, ...);
/* int __cdecl _fscanf_s_l( FILE* const _Stream, char const* const _Format, _locale_t const _Locale, ...); */
/* int __cdecl _scanf_l( char const* const _Format, _locale_t const _Locale, ...); */
int __cdecl scanf( char const* const _Format, ...);
/* int __cdecl _scanf_s_l( char const* const _Format, _locale_t const _Locale, ...); */
/* int __cdecl __stdio_common_vsprintf( unsigned __int64 _Options, char* _Buffer, size_t _BufferCount, char const* _Format, _locale_t _Locale, va_list _ArgList ); */
/* int __cdecl __stdio_common_vsprintf_s( unsigned __int64 _Options, char* _Buffer, size_t _BufferCount, char const* _Format, _locale_t _Locale, va_list _ArgList ); */
/* int __cdecl __stdio_common_vsnprintf_s( unsigned __int64 _Options, char* _Buffer, size_t _BufferCount, size_t _MaxCount, char const* _Format, _locale_t _Locale, va_list _ArgList ); */
/* int __cdecl __stdio_common_vsprintf_p( unsigned __int64 _Options, char* _Buffer, size_t _BufferCount, char const* _Format, _locale_t _Locale, va_list _ArgList ); */
/* int __cdecl _vsnprintf_l( char* const _Buffer, size_t const _BufferCount, char const* const _Format, _locale_t const _Locale, va_list _ArgList ); */
/* int __cdecl _vsnprintf( char* const _Buffer, size_t const _BufferCount, char const* const _Format, va_list _ArgList ); */
int __cdecl vsnprintf( char* const _Buffer, size_t const _BufferCount, char const* const _Format, va_list _ArgList );
/* int __cdecl _vsprintf_l( char* const _Buffer, char const* const _Format, _locale_t const _Locale, va_list _ArgList ); */
int __cdecl vsprintf( char* const _Buffer, char const* const _Format, va_list _ArgList );
/* int __cdecl _vsprintf_s_l( char* const _Buffer, size_t const _BufferCount, char const* const _Format, _locale_t const _Locale, va_list _ArgList ); */
/* int __cdecl _vsprintf_p_l( char* const _Buffer, size_t const _BufferCount, char const* const _Format, _locale_t const _Locale, va_list _ArgList ); */
/* int __cdecl _vsprintf_p( char* const _Buffer, size_t const _BufferCount, char const* const _Format, va_list _ArgList ); */
/* int __cdecl _vsnprintf_s_l( char* const _Buffer, size_t const _BufferCount, size_t const _MaxCount, char const* const _Format, _locale_t const _Locale, va_list _ArgList ); */
/* int __cdecl _vsnprintf_s( char* const _Buffer, size_t const _BufferCount, size_t const _MaxCount, char const* const _Format, va_list _ArgList ); */
/* int __cdecl _vscprintf_l( char const* const _Format, _locale_t const _Locale, va_list _ArgList ); */
/* int __cdecl _vscprintf( char const* const _Format, va_list _ArgList ); */
/* int __cdecl _vscprintf_p_l( char const* const _Format, _locale_t const _Locale, va_list _ArgList ); */
/* int __cdecl _vscprintf_p( char const* const _Format, va_list _ArgList ); */
/* int __cdecl _vsnprintf_c_l( char* const _Buffer, size_t const _BufferCount, char const* const _Format, _locale_t const _Locale, va_list _ArgList ); */
/* int __cdecl _vsnprintf_c( char* const _Buffer, size_t const _BufferCount, char const* const _Format, va_list _ArgList ); */
/* int __cdecl _sprintf_l( char* const _Buffer, char const* const _Format, _locale_t const _Locale, ...); */
int __cdecl sprintf( char* const _Buffer, char const* const _Format, ...);
int __cdecl sprintf( char * _Buffer, char const* _Format , ...); int __cdecl vsprintf( char * _Buffer, char const* _Format , va_list _Args);
/* int __cdecl _sprintf_s_l( char* const _Buffer, size_t const _BufferCount, char const* const _Format, _locale_t const _Locale, ...); */
/* int __cdecl _sprintf_p_l( char* const _Buffer, size_t const _BufferCount, char const* const _Format, _locale_t const _Locale, ...); */
/* int __cdecl _sprintf_p( char* const _Buffer, size_t const _BufferCount, char const* const _Format, ...); */
/* int __cdecl _snprintf_l( char* const _Buffer, size_t const _BufferCount, char const* const _Format, _locale_t const _Locale, ...); */
int __cdecl snprintf( char* const _Buffer, size_t const _BufferCount, char const* const _Format, ...);
/* int __cdecl _snprintf( char* const _Buffer, size_t const _BufferCount, char const* const _Format, ...); */
/* int __cdecl _snprintf( char * _Buffer, size_t _BufferCount, char const* _Format , ...); int __cdecl _vsnprintf( char * _Buffer, size_t _BufferCount, char const* _Format , va_list _Args); */
/* int __cdecl _snprintf_c_l( char* const _Buffer, size_t const _BufferCount, char const* const _Format, _locale_t const _Locale, ...); */
/* int __cdecl _snprintf_c( char* const _Buffer, size_t const _BufferCount, char const* const _Format, ...); */
/* int __cdecl _snprintf_s_l( char* const _Buffer, size_t const _BufferCount, size_t const _MaxCount, char const* const _Format, _locale_t const _Locale, ...); */
/* int __cdecl _snprintf_s( char* const _Buffer, size_t const _BufferCount, size_t const _MaxCount, char const* const _Format, ...); */
/* int __cdecl _scprintf_l( char const* const _Format, _locale_t const _Locale, ...); */
/* int __cdecl _scprintf( char const* const _Format, ...); */
/* int __cdecl _scprintf_p_l( char const* const _Format, _locale_t const _Locale, ...); */
/* int __cdecl _scprintf_p( char const* const _Format, ...); */
/* int __cdecl __stdio_common_vsscanf( unsigned __int64 _Options, char const* _Buffer, size_t _BufferCount, char const* _Format, _locale_t _Locale, va_list _ArgList ); */
/* int __cdecl _vsscanf_l( char const* const _Buffer, char const* const _Format, _locale_t const _Locale, va_list _ArgList ); */
int __cdecl vsscanf( char const* const _Buffer, char const* const _Format, va_list _ArgList );
/* int __cdecl _vsscanf_s_l( char const* const _Buffer, char const* const _Format, _locale_t const _Locale, va_list _ArgList ); */
/* int __cdecl _sscanf_l( char const* const _Buffer, char const* const _Format, _locale_t const _Locale, ...); */
int __cdecl sscanf( char const* const _Buffer, char const* const _Format, ...);
/* int __cdecl _sscanf_s_l( char const* const _Buffer, char const* const _Format, _locale_t const _Locale, ...); */
/*     #pragma warning(push) */
/*     #pragma warning(disable: 6530)  */
/* int __cdecl _snscanf_l( char const* const _Buffer, size_t const _BufferCount, char const* const _Format, _locale_t const _Locale, ...); */
/* int __cdecl _snscanf( char const* const _Buffer, size_t const _BufferCount, char const* const _Format, ...); */
/* int __cdecl _snscanf_s_l( char const* const _Buffer, size_t const _BufferCount, char const* const _Format, _locale_t const _Locale, ...); */
/* int __cdecl _snscanf_s( char const* const _Buffer, size_t const _BufferCount, char const* const _Format, ...); */
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
/* + END   C:/Program Files (x86)/Windows Kits/10/include/10.0.22621.0/ucrt/stdio.h */
]]
local lib = ffi.C
return setmetatable({
	fileno = lib._fileno,
}, {
	__index = lib,
})
