local ffi = require 'ffi'
if ffi.os == 'Windows' then
	return require 'ffi.Windows.OpenGL'
else
	return require 'ffi.Linux.OpenGL'
end
