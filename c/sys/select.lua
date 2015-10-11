local ffi = require 'ffi'

-- sys/_structs.h

require 'ffi.c.sys.time'
ffi.cdef[[
typedef	struct fd_set {
	int32_t	fds_bits[32];	//OS-specific
} fd_set;
]]

-- sys/select.h
ffi.cdef[[

int select(int nfds, fd_set *restrict readfds, fd_set *restrict writefds, fd_set *restrict errorfds, struct timeval *restrict timeout);


]]
