local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/local/include/cclip.h */
/* ++ BEGIN /Library/Developer/CommandLineTools/usr/lib/clang/15.0.0/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END   /Library/Developer/CommandLineTools/usr/lib/clang/15.0.0/include/stddef.h */
enum { CLIP_ENABLE_IMAGE = 1 };
typedef size_t ClipFormat;
typedef void ClipLock;
typedef void ClipImage;
typedef struct ClipImageSpec {
	unsigned long width;
	unsigned long height;
	unsigned long bits_per_pixel;
	unsigned long bytes_per_row;
	unsigned long red_mask;
	unsigned long green_mask;
	unsigned long blue_mask;
	unsigned long alpha_mask;
	unsigned long red_shift;
	unsigned long green_shift;
	unsigned long blue_shift;
	unsigned long alpha_shift;
} ClipImageSpec;
ClipLock * clip_lock_new();
ClipLock * clip_lock_new_p(void * native_window_handle);
void clip_lock_free(ClipLock * lock);
bool clip_lock_locked(ClipLock const * lock);
bool clip_lock_clear(ClipLock * lock);
bool clip_lock_is_convertible(ClipLock const * lock, ClipFormat f);
bool clip_lock_set_data(ClipLock * lock, ClipFormat f, char const * buf, size_t len);
bool clip_lock_get_data(ClipLock const * lock, ClipFormat f, char * buf, size_t len);
size_t clip_lock_get_data_length(ClipLock const * lock, ClipFormat f);
bool clip_lock_set_image(ClipLock * lock, ClipImage const * image);
bool clip_lock_get_image(ClipLock const * lock, ClipImage * image);
bool clip_lock_get_image_spec(ClipLock const * lock, ClipImageSpec * spec);
ClipFormat clip_register_format(char const * name, size_t len);
ClipFormat clip_empty_format();
ClipFormat clip_text_format();
ClipFormat clip_image_format();
bool clip_has(ClipFormat f);
bool clip_clear();
typedef enum { Clip_CannotLock, Clip_ImageNotSupported, } Clip_ErrorCode;
typedef void (*ClipErrorHandler)(Clip_ErrorCode code);
void clip_set_error_handler(ClipErrorHandler f);
ClipErrorHandler clip_get_error_handler();
bool clip_set_text(char const * value, size_t len);
bool clip_get_text(char * valuecptr, size_t * len);
ClipImage * clip_image_new();
ClipImage * clip_image_new_p(ClipImageSpec const * spec);
ClipImage * clip_image_new_pp(void const * data, ClipImageSpec const * spec);
ClipImage * clip_image_new_fromImage(ClipImage const * image);
void clip_image_free(ClipImage * image);
char * clip_image_data(ClipImage const * image);
ClipImageSpec const * clip_image_spec(ClipImage const * image);
bool clip_image_is_valid(ClipImage const * image);
void clip_image_reset(ClipImage * image);
bool clip_set_image(ClipImage const * image);
bool clip_get_image(ClipImage * image);
bool clip_get_image_spec(ClipImageSpec * spec);
void clip_set_x11_wait_timeout(int msecs);
int clip_get_x11_wait_timeout();
/* + END   /usr/local/include/cclip.h */
]]

return require 'ffi.load' 'clip'
