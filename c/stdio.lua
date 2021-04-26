local ffi = require 'ffi'
ffi.cdef[[

enum {
	SEEK_SET = 0,
	SEEK_CUR = 1,
	SEEK_END = 2,
};

typedef void FILE;

int fclose(FILE *stream);
int feof(FILE *stream);
int fflush(FILE *stream);
FILE *fopen(const char *filename, const char *mode);
size_t fread(void *ptr, size_t size, size_t nitems, FILE *stream);
int fseek(FILE *stream, long offset, int whence);
long ftell(FILE *stream);
size_t fwrite(const void *ptr, size_t size, size_t nitems, FILE *stream);
int printf(const char *fmt, ...);
int sprintf(char *s, const char*fmt, ...);
int remove(const char *path);
void rewind(FILE *stream);

]]
