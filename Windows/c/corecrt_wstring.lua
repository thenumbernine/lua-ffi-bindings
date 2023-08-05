local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wstring.h */
/* ++ BEGIN C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
]] require 'ffi.req' 'c.corecrt' ffi.cdef[[
/* ++ END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt.h */
/* ++ BEGIN C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.36.32532/include/vcruntime_string.h */
]] require 'ffi.req' 'c.vcruntime_string' ffi.cdef[[
/* ++ END   C:/Program Files/Microsoft Visual Studio/2022/Community/VC/Tools/MSVC/14.36.32532/include/vcruntime_string.h */
/* #pragma warning(push) */
/* #pragma warning(disable: _UCRT_DISABLED_WARNINGS) */
wchar_t* __cdecl _wcsdup( wchar_t const* _String );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, wcscat_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscat_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscat_s, ### TO ### wchar_t,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscat_s, wchar_t,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscat_s, wchar_t,        _Destination, ### TO ### _In_z_ wchar_t const*, _Source */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscat_s, wchar_t,        _Destination,  wchar_t const*, _Source */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscat_s, wchar_t,        _Destination,  wchar_t const*, _Source ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, wcscat, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscat, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscat, ### TO ### _Inout_updates_z_(_String_length_(_Destination) + _String_length_(_Source) + 1), wchar_t,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscat,   , wchar_t,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscat,   , wchar_t,        _Destination, ### TO ### _In_z_                                                                           wchar_t const*, _Source */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscat,   , wchar_t,        _Destination,                                                                            wchar_t const*, _Source */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscat,   , wchar_t,        _Destination,                                                                            wchar_t const*, _Source ### TO ### ) */
wchar_t* __cdecl wcscat( wchar_t * _Destination, wchar_t const* _Source );
int __cdecl wcscmp( wchar_t const* _String1, wchar_t const* _String2 );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, wcscpy_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscpy_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscpy_s, ### TO ### wchar_t,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscpy_s, wchar_t,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscpy_s, wchar_t,        _Destination, ### TO ### _In_z_ wchar_t const*, _Source */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscpy_s, wchar_t,        _Destination,  wchar_t const*, _Source */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, wcscpy_s, wchar_t,        _Destination,  wchar_t const*, _Source ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, wcscpy, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscpy, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscpy, ### TO ### _Out_writes_z_(_String_length_(_Source) + 1), wchar_t,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscpy,   , wchar_t,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscpy,   , wchar_t,        _Destination, ### TO ### _In_z_                                        wchar_t const*, _Source */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscpy,   , wchar_t,        _Destination,                                         wchar_t const*, _Source */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1( wchar_t*, __RETURN_POLICY_DST, , wcscpy,   , wchar_t,        _Destination,                                         wchar_t const*, _Source ### TO ### ) */
wchar_t* __cdecl wcscpy( wchar_t * _Destination, wchar_t const* _Source );
size_t __cdecl wcscspn( wchar_t const* _String, wchar_t const* _Control );
size_t __cdecl wcslen( wchar_t const* _String );
/* ### INCOMPLETE ARG MACRO ### _When_ ### IN LINE ### _When_( */
/* ### PREPENDING ### _When_( ### TO ### _MaxCount > _String_length_(_Source), */
/* ### INCOMPLETE ARG MACRO ### _When_ ### IN LINE ### _When_( _MaxCount > _String_length_(_Source), */
/* ### PREPENDING ### _When_( _MaxCount > _String_length_(_Source), ### TO ### _Post_satisfies_(return == _String_length_(_Source)) */
/* ### INCOMPLETE ARG MACRO ### _When_ ### IN LINE ### _When_( _MaxCount > _String_length_(_Source),    */
/* ### PREPENDING ### _When_( _MaxCount > _String_length_(_Source),    ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### _When_ ### IN LINE ### _When_( */
/* ### PREPENDING ### _When_( ### TO ### _MaxCount <= _String_length_(_Source), */
/* ### INCOMPLETE ARG MACRO ### _When_ ### IN LINE ### _When_( _MaxCount <= _String_length_(_Source), */
/* ### PREPENDING ### _When_( _MaxCount <= _String_length_(_Source), ### TO ### _Post_satisfies_(return == _MaxCount) */
/* ### INCOMPLETE ARG MACRO ### _When_ ### IN LINE ### _When_( _MaxCount <= _String_length_(_Source),    */
/* ### PREPENDING ### _When_( _MaxCount <= _String_length_(_Source),    ### TO ### ) */
size_t __cdecl wcsnlen( wchar_t const* _Source, size_t _MaxCount );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( ### TO ### errno_t, wcsncat_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncat_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncat_s, ### TO ### _Prepost_z_             wchar_t,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncat_s,              wchar_t,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncat_s,              wchar_t,        _Destination, ### TO ### _In_reads_or_z_(_Count) wchar_t const*, _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncat_s,              wchar_t,        _Destination,    wchar_t const*, _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncat_s,              wchar_t,        _Destination,    wchar_t const*, _Source, ### TO ### _In_                    size_t,         _Count */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncat_s,              wchar_t,        _Destination,    wchar_t const*, _Source,                     size_t,         _Count */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncat_s,              wchar_t,        _Destination,    wchar_t const*, _Source,                     size_t,         _Count ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, wcsncat, wcsncat_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncat, wcsncat_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncat, wcsncat_s, ### TO ### _Inout_updates_z_(_Size)   wchar_t, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncat, wcsncat_s,      wchar_t, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncat, wcsncat_s,      wchar_t, ### TO ### _Inout_updates_z_(_Count), wchar_t,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncat, wcsncat_s,      wchar_t,   , wchar_t,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncat, wcsncat_s,      wchar_t,   , wchar_t,        _Destination, ### TO ### _In_reads_or_z_(_Count)    wchar_t const*, _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncat, wcsncat_s,      wchar_t,   , wchar_t,        _Destination,       wchar_t const*, _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncat, wcsncat_s,      wchar_t,   , wchar_t,        _Destination,       wchar_t const*, _Source, ### TO ### _In_                       size_t,         _Count */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncat, wcsncat_s,      wchar_t,   , wchar_t,        _Destination,       wchar_t const*, _Source,                        size_t,         _Count */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncat, wcsncat_s,      wchar_t,   , wchar_t,        _Destination,       wchar_t const*, _Source,                        size_t,         _Count ### TO ### ) */
wchar_t* __cdecl wcsncat( wchar_t * _Destination, wchar_t const* _Source, size_t _Count );
int __cdecl wcsncmp( wchar_t const* _String1, wchar_t const* _String2, size_t _MaxCount );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( ### TO ### errno_t, wcsncpy_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncpy_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncpy_s, ### TO ### wchar_t,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncpy_s, wchar_t,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncpy_s, wchar_t,        _Destination, ### TO ### _In_reads_or_z_(_Count) wchar_t const*, _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncpy_s, wchar_t,        _Destination,    wchar_t const*, _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncpy_s, wchar_t,        _Destination,    wchar_t const*, _Source, ### TO ### _In_                    size_t,         _Count */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncpy_s, wchar_t,        _Destination,    wchar_t const*, _Source,                     size_t,         _Count */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, wcsncpy_s, wchar_t,        _Destination,    wchar_t const*, _Source,                     size_t,         _Count ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, wcsncpy, wcsncpy_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncpy, wcsncpy_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncpy, wcsncpy_s, ### TO ### _Pre_notnull_ _Post_maybez_         wchar_t, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncpy, wcsncpy_s,           wchar_t, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncpy, wcsncpy_s,           wchar_t, ### TO ### _Out_writes_(_Count) _Post_maybez_, wchar_t,        _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncpy, wcsncpy_s,           wchar_t,    , wchar_t,        _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncpy, wcsncpy_s,           wchar_t,    , wchar_t,        _Destination, ### TO ### _In_reads_or_z_(_Count)             wchar_t const*, _Source, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncpy, wcsncpy_s,           wchar_t,    , wchar_t,        _Destination,                wchar_t const*, _Source, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncpy, wcsncpy_s,           wchar_t,    , wchar_t,        _Destination,                wchar_t const*, _Source, ### TO ### _In_                                size_t,         _Count */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncpy, wcsncpy_s,           wchar_t,    , wchar_t,        _Destination,                wchar_t const*, _Source,                                 size_t,         _Count */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , wcsncpy, wcsncpy_s,           wchar_t,    , wchar_t,        _Destination,                wchar_t const*, _Source,                                 size_t,         _Count ### TO ### ) */
wchar_t* __cdecl wcsncpy( wchar_t * _Destination, wchar_t const* _Source, size_t _Count );
wchar_t const* __cdecl wcspbrk( wchar_t const* _String, wchar_t const* _Control );
size_t __cdecl wcsspn( wchar_t const* _String, wchar_t const* _Control );
wchar_t* __cdecl wcstok( wchar_t* _String, wchar_t const* _Delimiter, wchar_t** _Context );
/* #define _WCSTOK_DEPRECATED _CRT_DEPRECATE_TEXT(                                            "wcstok has been changed to conform with the ISO C standard, "                     "adding an extra context parameter. To use the legacy Microsoft "                  "wcstok, define _CRT_NON_CONFORMING_WCSTOK.") ### string, not number "_CRT_DEPRECATE_TEXT(                                            \"wcstok has been changed to conform with the ISO C standard, \"                     \"adding an extra context parameter. To use the legacy Microsoft \"                  \"wcstok, define _CRT_NON_CONFORMING_WCSTOK.\")" */
static __inline wchar_t* __cdecl _wcstok( wchar_t* const _String, wchar_t const* const _Delimiter ) {
	return wcstok(_String, _Delimiter, 0);
} wchar_t* __cdecl _wcserror( int _ErrorNumber );
errno_t __cdecl _wcserror_s( wchar_t* _Buffer, size_t _SizeInWords, int _ErrorNumber );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, _wcserror_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcserror_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcserror_s, ### TO ### wchar_t, _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcserror_s, wchar_t, _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcserror_s, wchar_t, _Buffer, ### TO ### _In_ int,     _Error */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcserror_s, wchar_t, _Buffer,  int,     _Error */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcserror_s, wchar_t, _Buffer,  int,     _Error ### TO ### ) */
wchar_t* __cdecl __wcserror( wchar_t const* _String );
errno_t __cdecl __wcserror_s( wchar_t* _Buffer, size_t _SizeInWords, wchar_t const* _ErrorMessage );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, __wcserror_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, __wcserror_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, __wcserror_s, ### TO ### wchar_t,        _Buffer, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, __wcserror_s, wchar_t,        _Buffer, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, __wcserror_s, wchar_t,        _Buffer, ### TO ### _In_z_ wchar_t const*, _ErrorMessage */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, __wcserror_s, wchar_t,        _Buffer,  wchar_t const*, _ErrorMessage */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, __wcserror_s, wchar_t,        _Buffer,  wchar_t const*, _ErrorMessage ### TO ### ) */
int __cdecl _wcsicmp( wchar_t const* _String1, wchar_t const* _String2 );
int __cdecl _wcsicmp_l( wchar_t const* _String1, wchar_t const* _String2, _locale_t _Locale );
int __cdecl _wcsnicmp( wchar_t const* _String1, wchar_t const* _String2, size_t _MaxCount );
int __cdecl _wcsnicmp_l( wchar_t const* _String1, wchar_t const* _String2, size_t _MaxCount, _locale_t _Locale );
errno_t __cdecl _wcsnset_s( wchar_t* _Destination, size_t _SizeInWords, wchar_t _Value, size_t _MaxCount );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( ### TO ### errno_t, _wcsnset_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _wcsnset_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _wcsnset_s, ### TO ### _Prepost_z_ wchar_t, _Destination, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _wcsnset_s,  wchar_t, _Destination, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _wcsnset_s,  wchar_t, _Destination, ### TO ### _In_        wchar_t, _Value, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _wcsnset_s,  wchar_t, _Destination,         wchar_t, _Value, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _wcsnset_s,  wchar_t, _Destination,         wchar_t, _Value, ### TO ### _In_         size_t, _MaxCount */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _wcsnset_s,  wchar_t, _Destination,         wchar_t, _Value,          size_t, _MaxCount */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_2( errno_t, _wcsnset_s,  wchar_t, _Destination,         wchar_t, _Value,          size_t, _MaxCount ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _wcsnset, _wcsnset_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsnset, _wcsnset_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsnset, _wcsnset_s, ### TO ### _Inout_updates_z_(_Size)      wchar_t, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsnset, _wcsnset_s,         wchar_t, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsnset, _wcsnset_s,         wchar_t, ### TO ### _Inout_updates_z_(_MaxCount), wchar_t, _String, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsnset, _wcsnset_s,         wchar_t,   , wchar_t, _String, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsnset, _wcsnset_s,         wchar_t,   , wchar_t, _String, ### TO ### _In_                          wchar_t, _Value, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsnset, _wcsnset_s,         wchar_t,   , wchar_t, _String,                           wchar_t, _Value, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsnset, _wcsnset_s,         wchar_t,   , wchar_t, _String,                           wchar_t, _Value, ### TO ### _In_                          size_t,  _MaxCount */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsnset, _wcsnset_s,         wchar_t,   , wchar_t, _String,                           wchar_t, _Value,                           size_t,  _MaxCount */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_NFUNC_0_2_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsnset, _wcsnset_s,         wchar_t,   , wchar_t, _String,                           wchar_t, _Value,                           size_t,  _MaxCount ### TO ### ) */
wchar_t* __cdecl _wcsnset( wchar_t * _String, wchar_t _Value, size_t _MaxCount );
wchar_t* __cdecl _wcsrev( wchar_t* _String );
errno_t __cdecl _wcsset_s( wchar_t* _Destination, size_t _SizeInWords, wchar_t _Value );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, _wcsset_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsset_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsset_s, ### TO ### _Prepost_z_ wchar_t, _String, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsset_s,  wchar_t, _String, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsset_s,  wchar_t, _String, ### TO ### _In_        wchar_t, _Value */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsset_s,  wchar_t, _String,         wchar_t, _Value */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsset_s,  wchar_t, _String,         wchar_t, _Value ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _wcsset, _wcsset_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsset, _wcsset_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsset, _wcsset_s, ### TO ### _Inout_updates_z_(_Size) wchar_t, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsset, _wcsset_s,    wchar_t, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsset, _wcsset_s,    wchar_t, ### TO ### _Inout_z_,               wchar_t, _String, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsset, _wcsset_s,    wchar_t, ,               wchar_t, _String, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsset, _wcsset_s,    wchar_t, ,               wchar_t, _String, ### TO ### _In_                     wchar_t, _Value */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsset, _wcsset_s,    wchar_t, ,               wchar_t, _String,                      wchar_t, _Value */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsset, _wcsset_s,    wchar_t, ,               wchar_t, _String,                      wchar_t, _Value ### TO ### ) */
wchar_t* __cdecl _wcsset( wchar_t * _String, wchar_t _Value );
errno_t __cdecl _wcslwr_s( wchar_t* _String, size_t _SizeInWords );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( ### TO ### errno_t, _wcslwr_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wcslwr_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wcslwr_s, ### TO ### _Prepost_z_ wchar_t, _String */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wcslwr_s,  wchar_t, _String */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wcslwr_s,  wchar_t, _String ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _wcslwr, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wcslwr, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wcslwr, ### TO ### _Inout_z_, wchar_t, _String */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wcslwr, , wchar_t, _String */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wcslwr, , wchar_t, _String ### TO ### ) */
wchar_t* __cdecl _wcslwr( wchar_t * _String );
errno_t __cdecl _wcslwr_s_l( wchar_t* _String, size_t _SizeInWords, _locale_t _Locale );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, _wcslwr_s_l, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcslwr_s_l, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcslwr_s_l, ### TO ### _Prepost_z_ wchar_t,   _String, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcslwr_s_l,  wchar_t,   _String, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcslwr_s_l,  wchar_t,   _String, ### TO ### _In_opt_    _locale_t, _Locale */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcslwr_s_l,  wchar_t,   _String,     _locale_t, _Locale */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcslwr_s_l,  wchar_t,   _String,     _locale_t, _Locale ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _wcslwr_l, _wcslwr_s_l, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcslwr_l, _wcslwr_s_l, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcslwr_l, _wcslwr_s_l, ### TO ### _Inout_updates_z_(_Size) wchar_t, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcslwr_l, _wcslwr_s_l,    wchar_t, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcslwr_l, _wcslwr_s_l,    wchar_t, ### TO ### _Inout_z_,               wchar_t,   _String, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcslwr_l, _wcslwr_s_l,    wchar_t, ,               wchar_t,   _String, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcslwr_l, _wcslwr_s_l,    wchar_t, ,               wchar_t,   _String, ### TO ### _In_opt_                 _locale_t, _Locale */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcslwr_l, _wcslwr_s_l,    wchar_t, ,               wchar_t,   _String,                  _locale_t, _Locale */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcslwr_l, _wcslwr_s_l,    wchar_t, ,               wchar_t,   _String,                  _locale_t, _Locale ### TO ### ) */
wchar_t* __cdecl _wcslwr_l( wchar_t * _String, _locale_t _Locale );
errno_t __cdecl _wcsupr_s( wchar_t* _String, size_t _Size );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( ### TO ### errno_t, _wcsupr_s, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wcsupr_s, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wcsupr_s, ### TO ### _Prepost_z_ wchar_t, _String */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wcsupr_s,  wchar_t, _String */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_0( errno_t, _wcsupr_s,  wchar_t, _String ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _wcsupr, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wcsupr, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wcsupr, ### TO ### _Inout_z_, wchar_t, _String */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0 ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wcsupr, , wchar_t, _String */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_0( wchar_t*, __RETURN_POLICY_DST, , _wcsupr, , wchar_t, _String ### TO ### ) */
wchar_t* __cdecl _wcsupr( wchar_t * _String );
errno_t __cdecl _wcsupr_s_l( wchar_t* _String, size_t _Size, _locale_t _Locale );
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( ### TO ### errno_t, _wcsupr_s_l, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsupr_s_l, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsupr_s_l, ### TO ### _Prepost_z_ wchar_t,   _String, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsupr_s_l,  wchar_t,   _String, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsupr_s_l,  wchar_t,   _String, ### TO ### _In_opt_    _locale_t, _Locale */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1 ### IN LINE ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsupr_s_l,  wchar_t,   _String,     _locale_t, _Locale */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_SECURE_FUNC_0_1( errno_t, _wcsupr_s_l,  wchar_t,   _String,     _locale_t, _Locale ### TO ### ) */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( ### TO ### wchar_t*, __RETURN_POLICY_DST, _ACRTIMP, _wcsupr_l, _wcsupr_s_l, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsupr_l, _wcsupr_s_l, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsupr_l, _wcsupr_s_l, ### TO ### _Inout_updates_z_(_Size) wchar_t, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsupr_l, _wcsupr_s_l,    wchar_t, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsupr_l, _wcsupr_s_l,    wchar_t, ### TO ### _Inout_z_,               wchar_t,   _String, */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsupr_l, _wcsupr_s_l,    wchar_t, ,               wchar_t,   _String, */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsupr_l, _wcsupr_s_l,    wchar_t, ,               wchar_t,   _String, ### TO ### _In_opt_                 _locale_t, _Locale */
/* ### INCOMPLETE ARG MACRO ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX ### IN LINE ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsupr_l, _wcsupr_s_l,    wchar_t, ,               wchar_t,   _String,                  _locale_t, _Locale */
/* ### PREPENDING ### __DEFINE_CPP_OVERLOAD_STANDARD_FUNC_0_1_EX( wchar_t*, __RETURN_POLICY_DST, , _wcsupr_l, _wcsupr_s_l,    wchar_t, ,               wchar_t,   _String,                  _locale_t, _Locale ### TO ### ) */
wchar_t* __cdecl _wcsupr_l( wchar_t * _String, _locale_t _Locale );
size_t __cdecl wcsxfrm( wchar_t* _Destination, wchar_t const* _Source, size_t _MaxCount );
size_t __cdecl _wcsxfrm_l( wchar_t* _Destination, wchar_t const* _Source, size_t _MaxCount, _locale_t _Locale );
int __cdecl wcscoll( wchar_t const* _String1, wchar_t const* _String2 );
int __cdecl _wcscoll_l( wchar_t const* _String1, wchar_t const* _String2, _locale_t _Locale );
int __cdecl _wcsicoll( wchar_t const* _String1, wchar_t const* _String2 );
int __cdecl _wcsicoll_l( wchar_t const* _String1, wchar_t const* _String2, _locale_t _Locale );
int __cdecl _wcsncoll( wchar_t const* _String1, wchar_t const* _String2, size_t _MaxCount );
int __cdecl _wcsncoll_l( wchar_t const* _String1, wchar_t const* _String2, size_t _MaxCount, _locale_t _Locale );
int __cdecl _wcsnicoll( wchar_t const* _String1, wchar_t const* _String2, size_t _MaxCount );
int __cdecl _wcsnicoll_l( wchar_t const* _String1, wchar_t const* _String2, size_t _MaxCount, _locale_t _Locale );
wchar_t* __cdecl wcsdup( wchar_t const* _String );
enum { wcswcs = 0 };
int __cdecl wcsicmp( wchar_t const* _String1, wchar_t const* _String2 );
int __cdecl wcsnicmp( wchar_t const* _String1, wchar_t const* _String2, size_t _MaxCount );
wchar_t* __cdecl wcsnset( wchar_t* _String, wchar_t _Value, size_t _MaxCount );
wchar_t* __cdecl wcsrev( wchar_t* _String );
wchar_t* __cdecl wcsset( wchar_t* _String, wchar_t _Value );
wchar_t* __cdecl wcslwr( wchar_t* _String );
wchar_t* __cdecl wcsupr( wchar_t* _String );
int __cdecl wcsicoll( wchar_t const* _String1, wchar_t const* _String2 );
/* #pragma warning(pop)  */
/* + END   C:/Program Files (x86)/Windows Kits/10/Include/10.0.19041.0/ucrt/corecrt_wstring.h */
]]
