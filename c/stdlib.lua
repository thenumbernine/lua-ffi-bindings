local ffi = require 'ffi'

ffi.cdef[[
int rand();
void srand(unsigned int seed);

void *malloc(size_t size);
void free(void *ptr);
void *calloc(size_t nmemb, size_t size);
void *realloc(void *ptr, size_t size);

typedef int (*comparison_fn_t)(const void*, const void*, void*);
void qsort(void* base, size_t nmemb, size_t size, comparison_fn_t compar); 

int setenv(const char* name, const char* value, int overwrite);
int unsetenv(const char *name);
char *getenv(const char *name);
char *secure_getenv(const char *name);
int clearenv();
int putenv(char *string);
extern char **environ;
]]
