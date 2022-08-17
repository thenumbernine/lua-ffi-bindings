-- ok this technically isn't a ffi port of a C header
-- but I want it and it's luajit-ffi based
-- so meh I'm lazy and put it here
-- I'm sure someone else has done this
-- luajit port of luafilesystem

local ffi = require 'ffi'
local bit = require 'bit'
local table = require 'ext.table'
require 'ffi.c.string'	-- strerror
local errno = require 'ffi.c.errno'


local lfs = {}

local isWindows = ffi.os == 'Windows'

local STAT_FUNC = isWindows and ffi.C._stati64 or ffi.C.stat
local STAT_STRUCT = isWindows 
	and 'struct _stati64' 	-- TODO if __BORLANDC__ then no underscore ... would that show up in a preproc/include generation?
	or 'struct stat'

-- info is of type STAT_STRUCT

-- in windows, mode is unsigned short
-- in linux, mode is mode_t = __mode_t = unsigned int
local mode2string
mode2string = function(mode)
	mode = bit.band(mode, ffi.C.S_IFMT)
	if mode == ffi.C.S_IFREG then return "file" end
	if mode == ffi.C.S_IFDIR then return "directory" end
	if mode == ffi.C.S_IFLNK then return "link" end
	if mode == ffi.C.S_IFSOCK then return "socket" end
	if mode == ffi.C.S_IFFIFO then return "named pipe" end
	if mode == ffi.C.S_IFCHR then return "char device" end
	if mode == ffi.C.S_IFBLK then return "block device" end
	return "other"
end

-- in windows, mode is unsigned short
-- in linux, mode is mode_t = __mode_t = unsigned int
local perm2string
if isWindows then
	perm2string = function(mode)
		local perms = table{'-'}:rep(10)
		if bit.band(mode, ffi.C._S_IREAD) ~= 0 then
			perms[1] = 'r'
			perms[4] = 'r'
			perms[7] = 'r'
		end
		if bit.band(mode, ffi.C._S_IWRITE) ~= 0 then
			perms[2] = 'w'
			perms[5] = 'w'
			perms[8] = 'w'
		end
		if bit.band(mode, ffi.C._S_IEXEC) ~= 0 then
			perms[3] = 'x'
			perms[6] = 'x'
			perms[9] = 'x'
		end
		return perms:concat()
	end
else
	perm2string = function(mode)
		local perms = table{'-'}:rep(10)
		if bit.band(mode, ffi.C.S_IRUSR) ~= 0 then perms[1+0] = 'r' end
		if bit.band(mode, ffi.C.S_IWUSR) ~= 0 then perms[1+1] = 'w' end
		if bit.band(mode, ffi.C.S_IXUSR) ~= 0 then perms[1+2] = 'x' end
		if bit.band(mode, ffi.C.S_IRGRP) ~= 0 then perms[1+3] = 'r' end
		if bit.band(mode, ffi.C.S_IWGRP) ~= 0 then perms[1+4] = 'w' end
		if bit.band(mode, ffi.C.S_IXGRP) ~= 0 then perms[1+5] = 'x' end
		if bit.band(mode, ffi.C.S_IROTH) ~= 0 then perms[1+6] = 'r' end
		if bit.band(mode, ffi.C.S_IWOTH) ~= 0 then perms[1+7] = 'w' end
		if bit.band(mode, ffi.C.S_IXOTH) ~= 0 then perms[1+8] = 'x' end
		return perms:concat()
	end
end

local members = {
	mode = function(info) return mode2string(info[0].st_mode) end,
	dev = function(info) return info[0].st_dev end,
	ino = function(info) return info[0].st_ino end,
	nlink = function(info) return info[0].st_nlink end,
	uid = function(info) return info[0].st_uid end,
	gid = function(info) return info[0].st_gid end,
	rdev = function(info) return info[0].st_rdev end,
	access = function(info) return info[0].st_atime end,
	modification = function(info) return info[0].st_mtime end,
	change = function(info) return info[0].st_ctime end,
	size = function(info) return info[0].st_size end,
	permissions = function(info) return perm2string(info[0].st_mode) end,
}
if ffi.os ~= 'Windows' then
	members.blocks = function(info) return info[0].st_blocks end
	members.blksize = function(info) return info[0].st_blksize end
end

function lfs.attributes(file, member)
	assert(type(file) == 'string', "expected string")
	local info = ffi.new(STAT_STRUCT..'[1]')
	if STAT_FUNC(file, info) ~= 0 then
		local errno = errno.errno()	-- yes.
		return false, "cannot obtain information from file '"..file.."': "..ffi.C.strerror(errno), errno
	end
	if type(member) == 'string' then
		local m = members[member]
		if m then return m(info) end
		error("invalid attribute name '"..member.."'")
	end
	return table.map(members, function(f,k)
		return f(info), k
	end):setmetatable(nil)
end

function lfs.chdir() end

function lfs.currentdir() end

function lfs.dir() end

function lfs.link() end

function  lfs.lock() end

function lfs.mkdir() end

function lfs.rmdir() end

function lfs.symlinkattributes() end

function lfs.setmode() end

function lfs.touch() end

function lfs.unlock() end

function lfs.lock_dir() end

return lfs
