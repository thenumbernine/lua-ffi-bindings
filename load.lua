--[[
This file will be a master list of where all ffi.load()'s will go.
This way they can be overridden in one easy place ... right?
The bad side? This is harder to automatically generate?

key = identifier that the ffi/abc.lua header will use for requesting the library.
value = a string, for loading the library name in any OS subject to builtin luajit resolution (prepend lib, append extension, where to search, etc)

call operator = returns the approprate ffi.load of the requested key.

A calling ffi.abc.lua header file would put this at the end:
	return require 'ffi.load' 'libname'

Platform-specific overrides can work as follows:
	require 'ffi.load'.libname = 'your favorite override library location'

Values in the table can be either a string or a table, key'd by [os] or [os][arch]

If no value exists then the key will be used as the default name to search for the library.

All $names will be resolved as environment variables.
--]]
local ffi = require 'ffi'
return setmetatable({
	GL = {
		Windows = 'OpenGL32',
	},
	GLU = {
		Windows = 'GLU32',
	},
	-- can ffi.load"serial/hdf5" work? hmm...
	hdf5 = {Linux = '/usr/lib/x86_64-linux-gnu/hdf5/serial/libhdf5.so'},
	jpeg = {
		-- For Windows msvc turbojpeg 2.0.3 cmake wouldn't build, so i used 2.0.4 instead
		-- I wonder if this is the reason for the few subtle differences
		-- TODO rebuild linux with 2.0.4 and see if they go away?
		Windows = 'jpeg8',
		-- for Linux, libturbojpeg 2.1.2 (which is not libjpeg-turbo *smh* who named this)
		-- the header generated matches libturbojpeg 2.0.3 for Ubuntu ... except the version macros
	},
	openal = {
		Windows = 'OpenAL32',
	},
}, {
	__call = function(self, reqname)
		assert(type(reqname) == 'string', "expected string")
		local v = self[reqname]
		if type(v) == 'table' then
			-- if it's a table then assume it is in [os] or [os][arch] nesting
			v = v[ffi.os]
			if type(v) == 'table' then
				v = v[ffi.arch]
			end
		elseif type(v) == 'function' then
			-- if it's a function then call?
			v = v(reqname)
		end
		if v == nil then
			-- if it's not here ... just use the key as-is
			v = reqname
		end
		if type(v) ~= 'string' then
			error("require'ffi.load'("..tostring(reqname).." was not a string: "..tostring(v))
		end
		v = v:gsub('%$([_%w]+)', os.getenv)
		return ffi.load(v)
	end,
})
