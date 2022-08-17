-- ok this technically isn't a ffi port of a C header
-- but I want it and it's luajit-ffi based
-- so meh I'm lazy and put it here
-- I'm sure someone else has done this
-- luajit port of luafilesystem

local ffi = require 'ffi'
local bit = require 'bit'
local table = require 'ext.table'
require 'ffi.c.string'	-- strerror
require 'ffi.c.sys.stat'	-- stat
local errno = require 'ffi.c.errno'


local chdir_error 
if NO_CHDIR then
	chdir_error = function () return "Function 'chdir' not provided by system" end
else
	chdir_error = function() return ffi.C.strerror(errno.errno()) end
end


if not LFS_MAXPATHLEN then
	--require 'ffi.c.sys.param'
	LFS_MAXPATHLEN = ffi.C.MAXPATHLEN
end
if not LFS_MAXPATHLEN then
	require 'ffi.c.limits'
	LFS_MAXPATHLEN = ffi.C._POSIX_PATH_MAX
end
if not LFS_MAXPATHLEN then
	-- where do we get it from?
	LFS_MAXPATHLEN = ffi.C.MAX_PATH
end


local lfs = {}

local isWindows = ffi.os == 'Windows'

local toInteger = tonumber

local STAT_FUNC
local STAT_STRUCT 
local STAT_atime
local STAT_mtime
local STAT_ctime
if isWindows then
	STAT_FUNC = function(...) return ffi.C._stati64(...) end
	STAT_STRUCT = 'struct _stati64' 	-- TODO if __BORLANDC__ then no underscore ... would that show up in a preproc/include generation?
	STAT_atime = function(info) return toInteger(info[0].st_atime) end
	STAT_mtime = function(info) return toInteger(info[0].st_mtime) end
	STAT_ctime = function(info) return toInteger(info[0].st_ctime) end
else
	STAT_FUNC = function(...) return ffi.C.stat(...) end
	STAT_STRUCT = 'struct stat'
	--#define st_atime st_atim.tv_sec
	--#define st_mtime st_mtim.tv_sec
	--#define st_ctime st_ctim.tv_sec
	STAT_atime = function(info) return toInteger(info[0].st_atim.tv_sec) end
	STAT_mtime = function(info) return toInteger(info[0].st_mtim.tv_sec) end
	STAT_ctime = function(info) return toInteger(info[0].st_ctim.tv_sec) end
end


-- info is of type STAT_STRUCT

-- from ubuntu #include <sys/stat.h>
local function __S_ISTYPE(mode, mask) return bit.band(mode, ffi.C.__S_IFMT) == mask end
local function S_ISREG(mode) return __S_ISTYPE(mode, ffi.C.__S_IFREG) end
local function S_ISDIR(mode) return __S_ISTYPE(mode, ffi.C.__S_IFDIR) end
local function S_ISLNK(mode) return __S_ISTYPE(mode, ffi.C.__S_IFLNK) end
local function S_ISSOCK(mode) return __S_ISTYPE(mode, ffi.C.__S_IFSOCK) end
local function S_ISIFO(mode) return __S_ISTYPE(mode, ffi.C.__S_IFIFO) end
local function S_ISCHR(mode) return __S_ISTYPE(mode, ffi.C.__S_IFCHR) end
local function S_ISBLK(mode) return __S_ISTYPE(mode, ffi.C.__S_IFBLK) end

-- in windows, mode is unsigned short
-- in linux, mode is mode_t = __mode_t = unsigned int
local mode2string
mode2string = function(mode)
	if S_ISREG(mode) then return "file" end
	if S_ISDIR(mode) then return "directory" end
	if S_ISLNK(mode) then return "link" end
	if S_ISSOCK(mode) then return "socket" end
	if S_ISIFO(mode) then return "named pipe" end
	if S_ISCHR(mode) then return "char device" end
	if S_ISBLK(mode) then return "block device" end
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
	dev = function(info) return toInteger(info[0].st_dev) end,
	ino = function(info) return toInteger(info[0].st_ino) end,
	nlink = function(info) return toInteger(info[0].st_nlink) end,
	uid = function(info) return toInteger(info[0].st_uid) end,
	gid = function(info) return toInteger(info[0].st_gid) end,
	rdev = function(info) return toInteger(info[0].st_rdev) end,
	access = function(info) return STAT_atime(info) end,
	modification = function(info) return STAT_mtime(info) end,
	change = function(info) return STAT_mtime(info) end,
	size = function(info) return toInteger(info[0].st_size) end,
	permissions = function(info) return perm2string(info[0].st_mode) end,
}
if ffi.os ~= 'Windows' then
	members.blocks = function(info) return toInteger(info[0].st_blocks) end
	members.blksize = function(info) return toInteger(info[0].st_blksize) end
end

local function _file_info_(st, file, member)
	assert(type(file) == 'string', "expected string")
	local info = ffi.new(STAT_STRUCT..'[1]')
	if st(file, info) ~= 0 then
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

function lfs.attributes(file, member)
	return _file_info_(STAT_FUNC, file, member)
end

function lfs.chdir(path)
	assert(type(path) == 'string', "expected string")
	if ffi.C.chdir(path) ~= 0 then
		return nil, "Unable to change working directory to '"..path.."'\n"..chdir_error().."\n"
	end
	return true
end

function lfs.currentdir() 
	if NO_GETCWD then
		return nil, "Function 'getcwd' not provided by system"
	else
		local path = ffi.new('char*[1]')
		path[0] = nil
		local size = LFS_MAXPATHLEN
		local result
		while true do
			local path2 = ffi.C.realloc(path, size)
			if not path2 then
				result = table.pack(nil, "get_dir realloc() failed")
				break
			end
			path[0] = path2
			if ffi.C.getcwd(path, size) ~= nil then
				result = table.pack(path)
				break
			end
			if errno.errno() ~= ffi.C.ERANGE then
				result = table.pack(nil, "get_dir getcwd() failed")
				break
			end
			size = size * 2
		end
		ffi.C.free(path[0])
		return result:unpack()
	end
end

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

-- should I use _G or _ENV or what? or nothing?
_G.lfs = lfs

return lfs
