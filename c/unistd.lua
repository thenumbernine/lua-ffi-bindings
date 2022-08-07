require 'ffi.c.sys.time'
local code, lib = require 'include' '<unistd.h>'

-- I can't change ffi.C.getcwd to ffi.C._getcwd in the case of Windows
-- but I can at least return a table that changes names depending on the OS:
if ffi.os == 'Windows' then
	lib = setmetatable(lib, {
		__index = {
			chdir = lib._chdir,
			getcwd = lib._getcwd,
		},
	})
end

return lib
