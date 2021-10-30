local ffi = require 'ffi'

-- stdio.h
ffi.cdef[[

int memcmp(const void *s1, const void *s2, size_t n);
void *memcpy(void *restrict s1, const void *restrict s2, size_t n);
void *memset(void *b, int c, size_t len);

]]