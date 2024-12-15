local ffi = require 'ffi'

-- typedefs

if ffi.os ~= 'Windows' then
	require 'ffi.req' 'c.stdint'
	ffi.cdef[[
typedef int32_t khronos_int32_t;
typedef uint32_t khronos_uint32_t;
typedef int64_t khronos_int64_t;
typedef uint64_t khronos_uint64_t;
typedef signed long int khronos_intptr_t;
typedef unsigned long int khronos_uintptr_t;
typedef signed long int khronos_ssize_t;
typedef unsigned long int khronos_usize_t;
]]
else
	ffi.cdef[[
typedef __int32 khronos_int32_t;
typedef unsigned __int32 khronos_uint32_t;
typedef __int64 khronos_int64_t;
typedef unsigned __int64 khronos_uint64_t;
typedef signed long long int khronos_intptr_t;
typedef unsigned long long int khronos_uintptr_t;
typedef signed long long int khronos_ssize_t;
typedef unsigned long long int khronos_usize_t;
]]
end

ffi.cdef[[
typedef signed char khronos_int8_t;
typedef unsigned char khronos_uint8_t;
typedef signed short int khronos_int16_t;
typedef unsigned short int khronos_uint16_t;
typedef float khronos_float_t;
typedef khronos_uint64_t khronos_utime_nanoseconds_t;
typedef khronos_int64_t khronos_stime_nanoseconds_t;
typedef enum {
	KHRONOS_FALSE = 0,
	KHRONOS_TRUE = 1,
	KHRONOS_BOOLEAN_ENUM_FORCE_SIZE = 0x7FFFFFFF
} khronos_boolean_enum_t;
]]

local wrapper
wrapper = require 'ffi.libwrapper'{
	defs = {

		-- enums

		KHRONOS_APIATTRIBUTES = 1,
		KHRONOS_SUPPORT_INT64 = 1,
		KHRONOS_SUPPORT_FLOAT = 1,
		KHRONOS_MAX_ENUM = 2147483647,
	},
}
return wrapper
