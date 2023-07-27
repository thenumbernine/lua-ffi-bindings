-- TODO any easy way to automatically override files per-os and per-arch?
-- kinda like I'm doing in the ffi.load table ...
local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.c.stddef'
else
	return require 'ffi.Linux.c.stddef'
end
