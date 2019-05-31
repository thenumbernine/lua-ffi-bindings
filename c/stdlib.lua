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
]]
