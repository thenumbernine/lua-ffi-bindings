local ffi = require 'ffi'
require 'ffi.Windows.c.direct'  -- _chdir, _getcwd, _rmdir
require 'ffi.Windows.c.stdlib'	-- _sleep
local lib = ffi.C

local M = {
	_SC_NPROCESSORS_ONLN = 1,

	chdir = lib._chdir,
	getcwd = lib._getcwd,
	rmdir = lib._rmdir,
	sleep = lib._sleep,
}

-- https://learn.microsoft.com/en-us/windows/win32/api/sysinfoapi/nf-sysinfoapi-getsysteminfo 
ffi.cdef[[
typedef struct _SYSTEM_INFO {
  union {
    uint32_t dwOemId;
    struct {
      uint16_t wProcessorArchitecture;
      uint16_t wReserved;
    } DUMMYSTRUCTNAME;
  } DUMMYUNIONNAME;
  uint32_t     dwPageSize;
  void*    lpMinimumApplicationAddress;
  void*    lpMaximumApplicationAddress;
  uint32_t* dwActiveProcessorMask;
  uint32_t     dwNumberOfProcessors;
  uint32_t     dwProcessorType;
  uint32_t     dwAllocationGranularity;
  uint16_t      wProcessorLevel;
  uint16_t      wProcessorRevision;
} SYSTEM_INFO;
void GetSystemInfo(SYSTEM_INFO *lpSystemInfo);
]]

-- is there no Windows POSIX implementation of sysconf?
function M.sysconf(i)
	if i == M._SC_NPROCESSORS_ONLN then
		local sys_info = ffi.new'SYSTEM_INFO'
		ffi.C.GetSystemInfo(sys_info)
		return sys_info.dwNumberOfProcessors
	end
end

-- TODO I see the orig name prototypes in direct.h ...
-- ... so do I even need the Lua alias anymore?
return setmetatable(M, {
	__index = lib,
})
