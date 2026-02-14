local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <errno.h> /boot/system/develop/headers/bsd/errno.h */
/* ++ BEGIN <errno.h> /boot/system/develop/headers/posix/errno.h */
/* +++ BEGIN <Errors.h> /boot/system/develop/headers/os/support/Errors.h */
/* ++++ BEGIN <limits.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/limits.h */
]] require 'ffi.req' 'c.limits' ffi.cdef[[
/* ++++ END <limits.h> /boot/system/develop/tools/lib/gcc/x86_64-unknown-haiku/13.3.0/include/limits.h */
int _to_positive_error(int error);
int _to_negative_error(int error);
/* +++ END <Errors.h> /boot/system/develop/headers/os/support/Errors.h */
extern int *_errnop(void);
/* ++ END <errno.h> /boot/system/develop/headers/posix/errno.h */
/* ++ BEGIN <features.h> /boot/system/develop/headers/bsd/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++ END <features.h> /boot/system/develop/headers/bsd/features.h */
enum { _BSD_ERRNO_H_ = 1 };
enum { _POSIX_ERRNO_H = 1 };
enum { _ERRORS_H = 1 };
/* #define B_GENERAL_ERROR_BASE (-INT_MAX - 1) ### define is not number */
/* #define B_OS_ERROR_BASE (B_GENERAL_ERROR_BASE + 0x1000) ### define is not number */
/* #define B_APP_ERROR_BASE (B_GENERAL_ERROR_BASE + 0x2000) ### define is not number */
/* #define B_INTERFACE_ERROR_BASE (B_GENERAL_ERROR_BASE + 0x3000) ### define is not number */
/* #define B_MEDIA_ERROR_BASE (B_GENERAL_ERROR_BASE + 0x4000) ### define is not number */
/* #define B_TRANSLATION_ERROR_BASE (B_GENERAL_ERROR_BASE + 0x4800) ### define is not number */
/* #define B_MIDI_ERROR_BASE (B_GENERAL_ERROR_BASE + 0x5000) ### define is not number */
/* #define B_STORAGE_ERROR_BASE (B_GENERAL_ERROR_BASE + 0x6000) ### define is not number */
/* #define B_POSIX_ERROR_BASE (B_GENERAL_ERROR_BASE + 0x7000) ### define is not number */
/* #define B_MAIL_ERROR_BASE (B_GENERAL_ERROR_BASE + 0x8000) ### define is not number */
/* #define B_PRINT_ERROR_BASE (B_GENERAL_ERROR_BASE + 0x9000) ### define is not number */
/* #define B_DEVICE_ERROR_BASE (B_GENERAL_ERROR_BASE + 0xa000) ### define is not number */
/* #define B_ERRORS_END (B_GENERAL_ERROR_BASE + 0xffff) ### define is not number */
/* #define B_NO_MEMORY (B_GENERAL_ERROR_BASE + 0) ### define is not number */
/* #define B_IO_ERROR (B_GENERAL_ERROR_BASE + 1) ### define is not number */
/* #define B_PERMISSION_DENIED (B_GENERAL_ERROR_BASE + 2) ### define is not number */
/* #define B_BAD_INDEX (B_GENERAL_ERROR_BASE + 3) ### define is not number */
/* #define B_BAD_TYPE (B_GENERAL_ERROR_BASE + 4) ### define is not number */
/* #define B_BAD_VALUE (B_GENERAL_ERROR_BASE + 5) ### define is not number */
/* #define B_MISMATCHED_VALUES (B_GENERAL_ERROR_BASE + 6) ### define is not number */
/* #define B_NAME_NOT_FOUND (B_GENERAL_ERROR_BASE + 7) ### define is not number */
/* #define B_NAME_IN_USE (B_GENERAL_ERROR_BASE + 8) ### define is not number */
/* #define B_TIMED_OUT (B_GENERAL_ERROR_BASE + 9) ### define is not number */
/* #define B_INTERRUPTED (B_GENERAL_ERROR_BASE + 10) ### define is not number */
/* #define B_WOULD_BLOCK (B_GENERAL_ERROR_BASE + 11) ### define is not number */
/* #define B_CANCELED (B_GENERAL_ERROR_BASE + 12) ### define is not number */
/* #define B_NO_INIT (B_GENERAL_ERROR_BASE + 13) ### define is not number */
/* #define B_NOT_INITIALIZED (B_GENERAL_ERROR_BASE + 13) ### define is not number */
/* #define B_BUSY (B_GENERAL_ERROR_BASE + 14) ### define is not number */
/* #define B_NOT_ALLOWED (B_GENERAL_ERROR_BASE + 15) ### define is not number */
/* #define B_BAD_DATA (B_GENERAL_ERROR_BASE + 16) ### define is not number */
/* #define B_DONT_DO_THAT (B_GENERAL_ERROR_BASE + 17) ### define is not number */
/* #define B_ERROR (-1) ### define is not number */
/* #define B_OK ((int)0) ### define is not number */
/* #define B_NO_ERROR ((int)0) ### define is not number */
/* #define B_BAD_SEM_ID (B_OS_ERROR_BASE + 0) ### define is not number */
/* #define B_NO_MORE_SEMS (B_OS_ERROR_BASE + 1) ### define is not number */
/* #define B_BAD_THREAD_ID (B_OS_ERROR_BASE + 0x100) ### define is not number */
/* #define B_NO_MORE_THREADS (B_OS_ERROR_BASE + 0x101) ### define is not number */
/* #define B_BAD_THREAD_STATE (B_OS_ERROR_BASE + 0x102) ### define is not number */
/* #define B_BAD_TEAM_ID (B_OS_ERROR_BASE + 0x103) ### define is not number */
/* #define B_NO_MORE_TEAMS (B_OS_ERROR_BASE + 0x104) ### define is not number */
/* #define B_BAD_PORT_ID (B_OS_ERROR_BASE + 0x200) ### define is not number */
/* #define B_NO_MORE_PORTS (B_OS_ERROR_BASE + 0x201) ### define is not number */
/* #define B_BAD_IMAGE_ID (B_OS_ERROR_BASE + 0x300) ### define is not number */
/* #define B_BAD_ADDRESS (B_OS_ERROR_BASE + 0x301) ### define is not number */
/* #define B_NOT_AN_EXECUTABLE (B_OS_ERROR_BASE + 0x302) ### define is not number */
/* #define B_MISSING_LIBRARY (B_OS_ERROR_BASE + 0x303) ### define is not number */
/* #define B_MISSING_SYMBOL (B_OS_ERROR_BASE + 0x304) ### define is not number */
/* #define B_UNKNOWN_EXECUTABLE (B_OS_ERROR_BASE + 0x305) ### define is not number */
/* #define B_LEGACY_EXECUTABLE (B_OS_ERROR_BASE + 0x306) ### define is not number */
/* #define B_DEBUGGER_ALREADY_INSTALLED (B_OS_ERROR_BASE + 0x400) ### define is not number */
/* #define B_BAD_REPLY (B_APP_ERROR_BASE + 0) ### define is not number */
/* #define B_DUPLICATE_REPLY (B_APP_ERROR_BASE + 1) ### define is not number */
/* #define B_MESSAGE_TO_SELF (B_APP_ERROR_BASE + 2) ### define is not number */
/* #define B_BAD_HANDLER (B_APP_ERROR_BASE + 3) ### define is not number */
/* #define B_ALREADY_RUNNING (B_APP_ERROR_BASE + 4) ### define is not number */
/* #define B_LAUNCH_FAILED (B_APP_ERROR_BASE + 5) ### define is not number */
/* #define B_AMBIGUOUS_APP_LAUNCH (B_APP_ERROR_BASE + 6) ### define is not number */
/* #define B_UNKNOWN_MIME_TYPE (B_APP_ERROR_BASE + 7) ### define is not number */
/* #define B_BAD_SCRIPT_SYNTAX (B_APP_ERROR_BASE + 8) ### define is not number */
/* #define B_LAUNCH_FAILED_NO_RESOLVE_LINK (B_APP_ERROR_BASE + 9) ### define is not number */
/* #define B_LAUNCH_FAILED_EXECUTABLE (B_APP_ERROR_BASE + 10) ### define is not number */
/* #define B_LAUNCH_FAILED_APP_NOT_FOUND (B_APP_ERROR_BASE + 11) ### define is not number */
/* #define B_LAUNCH_FAILED_APP_IN_TRASH (B_APP_ERROR_BASE + 12) ### define is not number */
/* #define B_LAUNCH_FAILED_NO_PREFERRED_APP (B_APP_ERROR_BASE + 13) ### define is not number */
/* #define B_LAUNCH_FAILED_FILES_APP_NOT_FOUND (B_APP_ERROR_BASE + 14) ### define is not number */
/* #define B_BAD_MIME_SNIFFER_RULE (B_APP_ERROR_BASE + 15) ### define is not number */
/* #define B_NOT_A_MESSAGE (B_APP_ERROR_BASE + 16) ### define is not number */
/* #define B_SHUTDOWN_CANCELLED (B_APP_ERROR_BASE + 17) ### define is not number */
/* #define B_SHUTTING_DOWN (B_APP_ERROR_BASE + 18) ### define is not number */
/* #define B_FILE_ERROR (B_STORAGE_ERROR_BASE + 0) ### define is not number */
/* #define B_FILE_EXISTS (B_STORAGE_ERROR_BASE + 2) ### define is not number */
/* #define B_ENTRY_NOT_FOUND (B_STORAGE_ERROR_BASE + 3) ### define is not number */
/* #define B_NAME_TOO_LONG (B_STORAGE_ERROR_BASE + 4) ### define is not number */
/* #define B_NOT_A_DIRECTORY (B_STORAGE_ERROR_BASE + 5) ### define is not number */
/* #define B_DIRECTORY_NOT_EMPTY (B_STORAGE_ERROR_BASE + 6) ### define is not number */
/* #define B_DEVICE_FULL (B_STORAGE_ERROR_BASE + 7) ### define is not number */
/* #define B_READ_ONLY_DEVICE (B_STORAGE_ERROR_BASE + 8) ### define is not number */
/* #define B_IS_A_DIRECTORY (B_STORAGE_ERROR_BASE + 9) ### define is not number */
/* #define B_NO_MORE_FDS (B_STORAGE_ERROR_BASE + 10) ### define is not number */
/* #define B_CROSS_DEVICE_LINK (B_STORAGE_ERROR_BASE + 11) ### define is not number */
/* #define B_LINK_LIMIT (B_STORAGE_ERROR_BASE + 12) ### define is not number */
/* #define B_BUSTED_PIPE (B_STORAGE_ERROR_BASE + 13) ### define is not number */
/* #define B_UNSUPPORTED (B_STORAGE_ERROR_BASE + 14) ### define is not number */
/* #define B_PARTITION_TOO_SMALL (B_STORAGE_ERROR_BASE + 15) ### define is not number */
/* #define B_PARTIAL_READ (B_STORAGE_ERROR_BASE + 16) ### define is not number */
/* #define B_PARTIAL_WRITE (B_STORAGE_ERROR_BASE + 17) ### define is not number */
/* #define B_TO_POSIX_ERROR (error) (error) ### define is not number */
/* #define B_FROM_POSIX_ERROR (error) (error) ### define is not number */
/* #define B_POSIX_ENOMEM B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 0) ### define is not number */
/* #define E2BIG B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 1) ### define is not number */
/* #define ECHILD B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 2) ### define is not number */
/* #define EDEADLK B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 3) ### define is not number */
/* #define EFBIG B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 4) ### define is not number */
/* #define EMLINK B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 5) ### define is not number */
/* #define ENFILE B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 6) ### define is not number */
/* #define ENODEV B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 7) ### define is not number */
/* #define ENOLCK B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 8) ### define is not number */
/* #define ENOSYS B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 9) ### define is not number */
/* #define ENOTTY B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 10) ### define is not number */
/* #define ENXIO B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 11) ### define is not number */
/* #define ESPIPE B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 12) ### define is not number */
/* #define ESRCH B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 13) ### define is not number */
/* #define EFPOS B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 14) ### define is not number */
/* #define ESIGPARM B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 15) ### define is not number */
/* #define EDOM B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 16) ### define is not number */
/* #define ERANGE B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 17) ### define is not number */
/* #define EPROTOTYPE B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 18) ### define is not number */
/* #define EPROTONOSUPPORT B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 19) ### define is not number */
/* #define EPFNOSUPPORT B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 20) ### define is not number */
/* #define EAFNOSUPPORT B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 21) ### define is not number */
/* #define EADDRINUSE B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 22) ### define is not number */
/* #define EADDRNOTAVAIL B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 23) ### define is not number */
/* #define ENETDOWN B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 24) ### define is not number */
/* #define ENETUNREACH B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 25) ### define is not number */
/* #define ENETRESET B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 26) ### define is not number */
/* #define ECONNABORTED B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 27) ### define is not number */
/* #define ECONNRESET B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 28) ### define is not number */
/* #define EISCONN B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 29) ### define is not number */
/* #define ENOTCONN B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 30) ### define is not number */
/* #define ESHUTDOWN B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 31) ### define is not number */
/* #define ECONNREFUSED B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 32) ### define is not number */
/* #define EHOSTUNREACH B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 33) ### define is not number */
/* #define ENOPROTOOPT B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 34) ### define is not number */
/* #define ENOBUFS B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 35) ### define is not number */
/* #define EINPROGRESS B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 36) ### define is not number */
/* #define EALREADY B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 37) ### define is not number */
/* #define EILSEQ B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 38) ### define is not number */
/* #define ENOMSG B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 39) ### define is not number */
/* #define ESTALE B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 40) ### define is not number */
/* #define EOVERFLOW B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 41) ### define is not number */
/* #define EMSGSIZE B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 42) ### define is not number */
/* #define EOPNOTSUPP B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 43) ### define is not number */
/* #define ENOTSOCK B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 44) ### define is not number */
/* #define EHOSTDOWN B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 45) ### define is not number */
/* #define EBADMSG B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 46) ### define is not number */
/* #define ECANCELED B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 47) ### define is not number */
/* #define EDESTADDRREQ B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 48) ### define is not number */
/* #define EDQUOT B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 49) ### define is not number */
/* #define EIDRM B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 50) ### define is not number */
/* #define EMULTIHOP B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 51) ### define is not number */
/* #define ENODATA B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 52) ### define is not number */
/* #define ENOLINK B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 53) ### define is not number */
/* #define ENOSR B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 54) ### define is not number */
/* #define ENOSTR B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 55) ### define is not number */
/* #define ENOTSUP B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 56) ### define is not number */
/* #define EPROTO B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 57) ### define is not number */
/* #define ETIME B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 58) ### define is not number */
/* #define ETXTBSY B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 59) ### define is not number */
/* #define ENOATTR B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 60) ### define is not number */
/* #define ENOTRECOVERABLE B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 61) ### define is not number */
/* #define EOWNERDEAD B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 62) ### define is not number */
/* #define ESOCKTNOSUPPORT B_TO_POSIX_ERROR(B_POSIX_ERROR_BASE + 63) ### define is not number */
/* #define ENOMEM (B_GENERAL_ERROR_BASE + 0) ### define is not number */
/* #define EACCES B_TO_POSIX_ERROR(B_PERMISSION_DENIED) ### define is not number */
/* #define EINTR B_TO_POSIX_ERROR(B_INTERRUPTED) ### define is not number */
/* #define EIO B_TO_POSIX_ERROR(B_IO_ERROR) ### define is not number */
/* #define EBUSY B_TO_POSIX_ERROR(B_BUSY) ### define is not number */
/* #define EFAULT B_TO_POSIX_ERROR(B_BAD_ADDRESS) ### define is not number */
/* #define ETIMEDOUT B_TO_POSIX_ERROR(B_TIMED_OUT) ### define is not number */
/* #define EAGAIN B_TO_POSIX_ERROR(B_WOULD_BLOCK) ### define is not number */
/* #define EWOULDBLOCK B_TO_POSIX_ERROR(B_WOULD_BLOCK) ### define is not number */
/* #define EBADF B_TO_POSIX_ERROR(B_FILE_ERROR) ### define is not number */
/* #define EEXIST B_TO_POSIX_ERROR(B_FILE_EXISTS) ### define is not number */
/* #define EINVAL B_TO_POSIX_ERROR(B_BAD_VALUE) ### define is not number */
/* #define ENAMETOOLONG B_TO_POSIX_ERROR(B_NAME_TOO_LONG) ### define is not number */
/* #define ENOENT B_TO_POSIX_ERROR(B_ENTRY_NOT_FOUND) ### define is not number */
/* #define EPERM B_TO_POSIX_ERROR(B_NOT_ALLOWED) ### define is not number */
/* #define ENOTDIR B_TO_POSIX_ERROR(B_NOT_A_DIRECTORY) ### define is not number */
/* #define EISDIR B_TO_POSIX_ERROR(B_IS_A_DIRECTORY) ### define is not number */
/* #define ENOTEMPTY B_TO_POSIX_ERROR(B_DIRECTORY_NOT_EMPTY) ### define is not number */
/* #define ENOSPC B_TO_POSIX_ERROR(B_DEVICE_FULL) ### define is not number */
/* #define EROFS B_TO_POSIX_ERROR(B_READ_ONLY_DEVICE) ### define is not number */
/* #define EMFILE B_TO_POSIX_ERROR(B_NO_MORE_FDS) ### define is not number */
/* #define EXDEV B_TO_POSIX_ERROR(B_CROSS_DEVICE_LINK) ### define is not number */
/* #define ELOOP B_TO_POSIX_ERROR(B_LINK_LIMIT) ### define is not number */
/* #define ENOEXEC B_TO_POSIX_ERROR(B_NOT_AN_EXECUTABLE) ### define is not number */
/* #define EPIPE B_TO_POSIX_ERROR(B_BUSTED_PIPE) ### define is not number */
/* #define B_BUFFER_OVERFLOW B_FROM_POSIX_ERROR(EOVERFLOW) ### define is not number */
/* #define B_TOO_MANY_ARGS B_FROM_POSIX_ERROR(E2BIG) ### define is not number */
/* #define B_FILE_TOO_LARGE B_FROM_POSIX_ERROR(EFBIG) ### define is not number */
/* #define B_RESULT_NOT_REPRESENTABLE B_FROM_POSIX_ERROR(ERANGE) ### define is not number */
/* #define B_DEVICE_NOT_FOUND B_FROM_POSIX_ERROR(ENODEV) ### define is not number */
/* #define B_NOT_SUPPORTED B_FROM_POSIX_ERROR(EOPNOTSUPP) ### define is not number */
/* #define B_STREAM_NOT_FOUND (B_MEDIA_ERROR_BASE + 0) ### define is not number */
/* #define B_SERVER_NOT_FOUND (B_MEDIA_ERROR_BASE + 1) ### define is not number */
/* #define B_RESOURCE_NOT_FOUND (B_MEDIA_ERROR_BASE + 2) ### define is not number */
/* #define B_RESOURCE_UNAVAILABLE (B_MEDIA_ERROR_BASE + 3) ### define is not number */
/* #define B_BAD_SUBSCRIBER (B_MEDIA_ERROR_BASE + 4) ### define is not number */
/* #define B_SUBSCRIBER_NOT_ENTERED (B_MEDIA_ERROR_BASE + 5) ### define is not number */
/* #define B_BUFFER_NOT_AVAILABLE (B_MEDIA_ERROR_BASE + 6) ### define is not number */
/* #define B_LAST_BUFFER_ERROR (B_MEDIA_ERROR_BASE + 7) ### define is not number */
/* #define B_MEDIA_SYSTEM_FAILURE (B_MEDIA_ERROR_BASE + 100) ### define is not number */
/* #define B_MEDIA_BAD_NODE (B_MEDIA_ERROR_BASE + 101) ### define is not number */
/* #define B_MEDIA_NODE_BUSY (B_MEDIA_ERROR_BASE + 102) ### define is not number */
/* #define B_MEDIA_BAD_FORMAT (B_MEDIA_ERROR_BASE + 103) ### define is not number */
/* #define B_MEDIA_BAD_BUFFER (B_MEDIA_ERROR_BASE + 104) ### define is not number */
/* #define B_MEDIA_TOO_MANY_NODES (B_MEDIA_ERROR_BASE + 105) ### define is not number */
/* #define B_MEDIA_TOO_MANY_BUFFERS (B_MEDIA_ERROR_BASE + 106) ### define is not number */
/* #define B_MEDIA_NODE_ALREADY_EXISTS (B_MEDIA_ERROR_BASE + 107) ### define is not number */
/* #define B_MEDIA_BUFFER_ALREADY_EXISTS (B_MEDIA_ERROR_BASE + 108) ### define is not number */
/* #define B_MEDIA_CANNOT_SEEK (B_MEDIA_ERROR_BASE + 109) ### define is not number */
/* #define B_MEDIA_CANNOT_CHANGE_RUN_MODE (B_MEDIA_ERROR_BASE + 110) ### define is not number */
/* #define B_MEDIA_APP_ALREADY_REGISTERED (B_MEDIA_ERROR_BASE + 111) ### define is not number */
/* #define B_MEDIA_APP_NOT_REGISTERED (B_MEDIA_ERROR_BASE + 112) ### define is not number */
/* #define B_MEDIA_CANNOT_RECLAIM_BUFFERS (B_MEDIA_ERROR_BASE + 113) ### define is not number */
/* #define B_MEDIA_BUFFERS_NOT_RECLAIMED (B_MEDIA_ERROR_BASE + 114) ### define is not number */
/* #define B_MEDIA_TIME_SOURCE_STOPPED (B_MEDIA_ERROR_BASE + 115) ### define is not number */
/* #define B_MEDIA_TIME_SOURCE_BUSY (B_MEDIA_ERROR_BASE + 116) ### define is not number */
/* #define B_MEDIA_BAD_SOURCE (B_MEDIA_ERROR_BASE + 117) ### define is not number */
/* #define B_MEDIA_BAD_DESTINATION (B_MEDIA_ERROR_BASE + 118) ### define is not number */
/* #define B_MEDIA_ALREADY_CONNECTED (B_MEDIA_ERROR_BASE + 119) ### define is not number */
/* #define B_MEDIA_NOT_CONNECTED (B_MEDIA_ERROR_BASE + 120) ### define is not number */
/* #define B_MEDIA_BAD_CLIP_FORMAT (B_MEDIA_ERROR_BASE + 121) ### define is not number */
/* #define B_MEDIA_ADDON_FAILED (B_MEDIA_ERROR_BASE + 122) ### define is not number */
/* #define B_MEDIA_ADDON_DISABLED (B_MEDIA_ERROR_BASE + 123) ### define is not number */
/* #define B_MEDIA_CHANGE_IN_PROGRESS (B_MEDIA_ERROR_BASE + 124) ### define is not number */
/* #define B_MEDIA_STALE_CHANGE_COUNT (B_MEDIA_ERROR_BASE + 125) ### define is not number */
/* #define B_MEDIA_ADDON_RESTRICTED (B_MEDIA_ERROR_BASE + 126) ### define is not number */
/* #define B_MEDIA_NO_HANDLER (B_MEDIA_ERROR_BASE + 127) ### define is not number */
/* #define B_MEDIA_DUPLICATE_FORMAT (B_MEDIA_ERROR_BASE + 128) ### define is not number */
/* #define B_MEDIA_REALTIME_DISABLED (B_MEDIA_ERROR_BASE + 129) ### define is not number */
/* #define B_MEDIA_REALTIME_UNAVAILABLE (B_MEDIA_ERROR_BASE + 130) ### define is not number */
/* #define B_MAIL_NO_DAEMON (B_MAIL_ERROR_BASE + 0) ### define is not number */
/* #define B_MAIL_UNKNOWN_USER (B_MAIL_ERROR_BASE + 1) ### define is not number */
/* #define B_MAIL_WRONG_PASSWORD (B_MAIL_ERROR_BASE + 2) ### define is not number */
/* #define B_MAIL_UNKNOWN_HOST (B_MAIL_ERROR_BASE + 3) ### define is not number */
/* #define B_MAIL_ACCESS_ERROR (B_MAIL_ERROR_BASE + 4) ### define is not number */
/* #define B_MAIL_UNKNOWN_FIELD (B_MAIL_ERROR_BASE + 5) ### define is not number */
/* #define B_MAIL_NO_RECIPIENT (B_MAIL_ERROR_BASE + 6) ### define is not number */
/* #define B_MAIL_INVALID_MAIL (B_MAIL_ERROR_BASE + 7) ### define is not number */
/* #define B_NO_PRINT_SERVER (B_PRINT_ERROR_BASE + 0) ### define is not number */
/* #define B_DEV_INVALID_IOCTL (B_DEVICE_ERROR_BASE + 0) ### define is not number */
/* #define B_DEV_NO_MEMORY (B_DEVICE_ERROR_BASE + 1) ### define is not number */
/* #define B_DEV_BAD_DRIVE_NUM (B_DEVICE_ERROR_BASE + 2) ### define is not number */
/* #define B_DEV_NO_MEDIA (B_DEVICE_ERROR_BASE + 3) ### define is not number */
/* #define B_DEV_UNREADABLE (B_DEVICE_ERROR_BASE + 4) ### define is not number */
/* #define B_DEV_FORMAT_ERROR (B_DEVICE_ERROR_BASE + 5) ### define is not number */
/* #define B_DEV_TIMEOUT (B_DEVICE_ERROR_BASE + 6) ### define is not number */
/* #define B_DEV_RECALIBRATE_ERROR (B_DEVICE_ERROR_BASE + 7) ### define is not number */
/* #define B_DEV_SEEK_ERROR (B_DEVICE_ERROR_BASE + 8) ### define is not number */
/* #define B_DEV_ID_ERROR (B_DEVICE_ERROR_BASE + 9) ### define is not number */
/* #define B_DEV_READ_ERROR (B_DEVICE_ERROR_BASE + 10) ### define is not number */
/* #define B_DEV_WRITE_ERROR (B_DEVICE_ERROR_BASE + 11) ### define is not number */
/* #define B_DEV_NOT_READY (B_DEVICE_ERROR_BASE + 12) ### define is not number */
/* #define B_DEV_MEDIA_CHANGED (B_DEVICE_ERROR_BASE + 13) ### define is not number */
/* #define B_DEV_MEDIA_CHANGE_REQUESTED (B_DEVICE_ERROR_BASE + 14) ### define is not number */
/* #define B_DEV_RESOURCE_CONFLICT (B_DEVICE_ERROR_BASE + 15) ### define is not number */
/* #define B_DEV_CONFIGURATION_ERROR (B_DEVICE_ERROR_BASE + 16) ### define is not number */
/* #define B_DEV_DISABLED_BY_USER (B_DEVICE_ERROR_BASE + 17) ### define is not number */
/* #define B_DEV_DOOR_OPEN (B_DEVICE_ERROR_BASE + 18) ### define is not number */
/* #define B_DEV_INVALID_PIPE (B_DEVICE_ERROR_BASE + 19) ### define is not number */
/* #define B_DEV_CRC_ERROR (B_DEVICE_ERROR_BASE + 20) ### define is not number */
/* #define B_DEV_STALLED (B_DEVICE_ERROR_BASE + 21) ### define is not number */
/* #define B_DEV_BAD_PID (B_DEVICE_ERROR_BASE + 22) ### define is not number */
/* #define B_DEV_UNEXPECTED_PID (B_DEVICE_ERROR_BASE + 23) ### define is not number */
/* #define B_DEV_DATA_OVERRUN (B_DEVICE_ERROR_BASE + 24) ### define is not number */
/* #define B_DEV_DATA_UNDERRUN (B_DEVICE_ERROR_BASE + 25) ### define is not number */
/* #define B_DEV_FIFO_OVERRUN (B_DEVICE_ERROR_BASE + 26) ### define is not number */
/* #define B_DEV_FIFO_UNDERRUN (B_DEVICE_ERROR_BASE + 27) ### define is not number */
/* #define B_DEV_PENDING (B_DEVICE_ERROR_BASE + 28) ### define is not number */
/* #define B_DEV_MULTIPLE_ERRORS (B_DEVICE_ERROR_BASE + 29) ### define is not number */
/* #define B_DEV_TOO_LATE (B_DEVICE_ERROR_BASE + 30) ### define is not number */
/* #define B_TRANSLATION_BASE_ERROR (B_TRANSLATION_ERROR_BASE + 0) ### define is not number */
/* #define B_NO_TRANSLATOR (B_TRANSLATION_ERROR_BASE + 1) ### define is not number */
/* #define B_ILLEGAL_DATA (B_TRANSLATION_ERROR_BASE + 2) ### define is not number */
/* #define B_TO_POSITIVE_ERROR (error) _to_positive_error(error) ### define is not number */
/* #define B_TO_NEGATIVE_ERROR (error) _to_negative_error(error) ### define is not number */
enum { ENOERR = 0 };
enum { EOK = 0 };
/* #define errno (*(_errnop())) ### define is not number */
/* #define EDOOFUS B_TO_POSIX_ERROR(B_BAD_VALUE) ### define is not number */
/* + END <errno.h> /boot/system/develop/headers/bsd/errno.h */
]]
local wrapper
wrapper = setmetatable({
	errno = function()
		return ffi.C.__errno()[0]
	end,
	str = function()
		require 'ffi.req' 'c.string'	-- strerror
		local sp = ffi.C.strerror(wrapper.errno())
		if sp == nil then return '(null)' end
		return ffi.string(sp)
	end,
}, {
	__index = ffi.C,
})
return wrapper
