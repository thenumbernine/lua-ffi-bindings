-- TODO what about include dir from pkg-config:
-- `pkg-config --cflags netcdf` produces `-I/usr/include/hdf5/serial`

-- TODO what about netcdf.h including stddef.h and re-includes and ffi cdef enum'ing twice?
require 'include' '<netcdf.h>'

local io = require 'ext.io'
local libflags = io.readproc'pkg-config --libs netcdf'

-- `pkg-config --libs netcdf` produces `-lnetcdf`
-- TODO maybe move this into lua-include ?
local string = require 'ext.string'
local ffi = require 'ffi'
local lib = ffi.C
for _,libflag in ipairs(string.split(string.trim(libflags), '%s+')) do
--print('libflag', libflag)
	local libname = libflag:gsub('%-l', 'lib')
--print('libname', libname)
	lib = ffi.load(libname)
end
return lib
