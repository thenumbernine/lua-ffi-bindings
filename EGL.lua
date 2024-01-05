local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/EGL/egl.h */
/* ++ BEGIN /usr/include/EGL/eglplatform.h */
/* +++ BEGIN /usr/include/KHR/khrplatform.h */
]] require 'ffi.req' 'KHR.khrplatform' ffi.cdef[[
/* +++ END   /usr/include/KHR/khrplatform.h */
/* #define EGLAPI KHRONOS_APICALL ### string, not number "KHRONOS_APICALL" */
/* #define EGLAPIENTRY  KHRONOS_APIENTRY ### string, not number "KHRONOS_APIENTRY" */
/* #define EGLAPIENTRYP EGLAPIENTRY* ### string, not number "EGLAPIENTRY*" */
typedef void *EGLNativeDisplayType;
typedef khronos_uintptr_t EGLNativePixmapType;
typedef khronos_uintptr_t EGLNativeWindowType;
typedef EGLNativeDisplayType NativeDisplayType;
typedef EGLNativePixmapType NativePixmapType;
typedef EGLNativeWindowType NativeWindowType;
typedef khronos_int32_t EGLint;
/* ++ END   /usr/include/EGL/eglplatform.h */
enum { EGL_EGL_PROTOTYPES = 1 };
enum { EGL_VERSION_1_0 = 1 };
typedef unsigned int EGLBoolean;
typedef void *EGLDisplay;
/* ++ BEGIN /usr/include/KHR/khrplatform.h */
]] require 'ffi.req' 'KHR.khrplatform' ffi.cdef[[
/* ++ END   /usr/include/KHR/khrplatform.h */
/* ++ BEGIN /usr/include/EGL/eglplatform.h */
/* ++ END   /usr/include/EGL/eglplatform.h */
typedef void *EGLConfig;
typedef void *EGLSurface;
typedef void *EGLContext;
typedef void (*__eglMustCastToProperFunctionPointerType)(void);
enum { EGL_ALPHA_SIZE = 12321 };
enum { EGL_BAD_ACCESS = 12290 };
enum { EGL_BAD_ALLOC = 12291 };
enum { EGL_BAD_ATTRIBUTE = 12292 };
enum { EGL_BAD_CONFIG = 12293 };
enum { EGL_BAD_CONTEXT = 12294 };
enum { EGL_BAD_CURRENT_SURFACE = 12295 };
enum { EGL_BAD_DISPLAY = 12296 };
enum { EGL_BAD_MATCH = 12297 };
enum { EGL_BAD_NATIVE_PIXMAP = 12298 };
enum { EGL_BAD_NATIVE_WINDOW = 12299 };
enum { EGL_BAD_PARAMETER = 12300 };
enum { EGL_BAD_SURFACE = 12301 };
enum { EGL_BLUE_SIZE = 12322 };
enum { EGL_BUFFER_SIZE = 12320 };
enum { EGL_CONFIG_CAVEAT = 12327 };
enum { EGL_CONFIG_ID = 12328 };
enum { EGL_CORE_NATIVE_ENGINE = 12379 };
enum { EGL_DEPTH_SIZE = 12325 };
/* #define EGL_DONT_CARE                     EGL_CAST(EGLint,-1) ### string, not number "EGL_CAST(EGLint,-1)" */
enum { EGL_DRAW = 12377 };
enum { EGL_EXTENSIONS = 12373 };
enum { EGL_FALSE = 0 };
enum { EGL_GREEN_SIZE = 12323 };
enum { EGL_HEIGHT = 12374 };
enum { EGL_LARGEST_PBUFFER = 12376 };
enum { EGL_LEVEL = 12329 };
enum { EGL_MAX_PBUFFER_HEIGHT = 12330 };
enum { EGL_MAX_PBUFFER_PIXELS = 12331 };
enum { EGL_MAX_PBUFFER_WIDTH = 12332 };
enum { EGL_NATIVE_RENDERABLE = 12333 };
enum { EGL_NATIVE_VISUAL_ID = 12334 };
enum { EGL_NATIVE_VISUAL_TYPE = 12335 };
enum { EGL_NONE = 12344 };
enum { EGL_NON_CONFORMANT_CONFIG = 12369 };
enum { EGL_NOT_INITIALIZED = 12289 };
/* #define EGL_NO_CONTEXT                    EGL_CAST(EGLContext,0) ### string, not number "EGL_CAST(EGLContext,0)" */
/* #define EGL_NO_DISPLAY                    EGL_CAST(EGLDisplay,0) ### string, not number "EGL_CAST(EGLDisplay,0)" */
/* #define EGL_NO_SURFACE                    EGL_CAST(EGLSurface,0) ### string, not number "EGL_CAST(EGLSurface,0)" */
enum { EGL_PBUFFER_BIT = 1 };
enum { EGL_PIXMAP_BIT = 2 };
enum { EGL_READ = 12378 };
enum { EGL_RED_SIZE = 12324 };
enum { EGL_SAMPLES = 12337 };
enum { EGL_SAMPLE_BUFFERS = 12338 };
enum { EGL_SLOW_CONFIG = 12368 };
enum { EGL_STENCIL_SIZE = 12326 };
enum { EGL_SUCCESS = 12288 };
enum { EGL_SURFACE_TYPE = 12339 };
enum { EGL_TRANSPARENT_BLUE_VALUE = 12341 };
enum { EGL_TRANSPARENT_GREEN_VALUE = 12342 };
enum { EGL_TRANSPARENT_RED_VALUE = 12343 };
enum { EGL_TRANSPARENT_RGB = 12370 };
enum { EGL_TRANSPARENT_TYPE = 12340 };
enum { EGL_TRUE = 1 };
enum { EGL_VENDOR = 12371 };
enum { EGL_VERSION = 12372 };
enum { EGL_WIDTH = 12375 };
enum { EGL_WINDOW_BIT = 4 };
typedef EGLBoolean (* PFNEGLCHOOSECONFIGPROC) (EGLDisplay dpy, const EGLint *attrib_list, EGLConfig *configs, EGLint config_size, EGLint *num_config);
typedef EGLBoolean (* PFNEGLCOPYBUFFERSPROC) (EGLDisplay dpy, EGLSurface surface, EGLNativePixmapType target);
typedef EGLContext (* PFNEGLCREATECONTEXTPROC) (EGLDisplay dpy, EGLConfig config, EGLContext share_context, const EGLint *attrib_list);
typedef EGLSurface (* PFNEGLCREATEPBUFFERSURFACEPROC) (EGLDisplay dpy, EGLConfig config, const EGLint *attrib_list);
typedef EGLSurface (* PFNEGLCREATEPIXMAPSURFACEPROC) (EGLDisplay dpy, EGLConfig config, EGLNativePixmapType pixmap, const EGLint *attrib_list);
typedef EGLSurface (* PFNEGLCREATEWINDOWSURFACEPROC) (EGLDisplay dpy, EGLConfig config, EGLNativeWindowType win, const EGLint *attrib_list);
typedef EGLBoolean (* PFNEGLDESTROYCONTEXTPROC) (EGLDisplay dpy, EGLContext ctx);
typedef EGLBoolean (* PFNEGLDESTROYSURFACEPROC) (EGLDisplay dpy, EGLSurface surface);
typedef EGLBoolean (* PFNEGLGETCONFIGATTRIBPROC) (EGLDisplay dpy, EGLConfig config, EGLint attribute, EGLint *value);
typedef EGLBoolean (* PFNEGLGETCONFIGSPROC) (EGLDisplay dpy, EGLConfig *configs, EGLint config_size, EGLint *num_config);
typedef EGLDisplay (* PFNEGLGETCURRENTDISPLAYPROC) (void);
typedef EGLSurface (* PFNEGLGETCURRENTSURFACEPROC) (EGLint readdraw);
typedef EGLDisplay (* PFNEGLGETDISPLAYPROC) (EGLNativeDisplayType display_id);
typedef EGLint (* PFNEGLGETERRORPROC) (void);
typedef __eglMustCastToProperFunctionPointerType (* PFNEGLGETPROCADDRESSPROC) (const char *procname);
typedef EGLBoolean (* PFNEGLINITIALIZEPROC) (EGLDisplay dpy, EGLint *major, EGLint *minor);
typedef EGLBoolean (* PFNEGLMAKECURRENTPROC) (EGLDisplay dpy, EGLSurface draw, EGLSurface read, EGLContext ctx);
typedef EGLBoolean (* PFNEGLQUERYCONTEXTPROC) (EGLDisplay dpy, EGLContext ctx, EGLint attribute, EGLint *value);
typedef const char *(* PFNEGLQUERYSTRINGPROC) (EGLDisplay dpy, EGLint name);
typedef EGLBoolean (* PFNEGLQUERYSURFACEPROC) (EGLDisplay dpy, EGLSurface surface, EGLint attribute, EGLint *value);
typedef EGLBoolean (* PFNEGLSWAPBUFFERSPROC) (EGLDisplay dpy, EGLSurface surface);
typedef EGLBoolean (* PFNEGLTERMINATEPROC) (EGLDisplay dpy);
typedef EGLBoolean (* PFNEGLWAITGLPROC) (void);
typedef EGLBoolean (* PFNEGLWAITNATIVEPROC) (EGLint engine);
EGLBoolean eglChooseConfig (EGLDisplay dpy, const EGLint *attrib_list, EGLConfig *configs, EGLint config_size, EGLint *num_config);
EGLBoolean eglCopyBuffers (EGLDisplay dpy, EGLSurface surface, EGLNativePixmapType target);
EGLContext eglCreateContext (EGLDisplay dpy, EGLConfig config, EGLContext share_context, const EGLint *attrib_list);
EGLSurface eglCreatePbufferSurface (EGLDisplay dpy, EGLConfig config, const EGLint *attrib_list);
EGLSurface eglCreatePixmapSurface (EGLDisplay dpy, EGLConfig config, EGLNativePixmapType pixmap, const EGLint *attrib_list);
EGLSurface eglCreateWindowSurface (EGLDisplay dpy, EGLConfig config, EGLNativeWindowType win, const EGLint *attrib_list);
EGLBoolean eglDestroyContext (EGLDisplay dpy, EGLContext ctx);
EGLBoolean eglDestroySurface (EGLDisplay dpy, EGLSurface surface);
EGLBoolean eglGetConfigAttrib (EGLDisplay dpy, EGLConfig config, EGLint attribute, EGLint *value);
EGLBoolean eglGetConfigs (EGLDisplay dpy, EGLConfig *configs, EGLint config_size, EGLint *num_config);
EGLDisplay eglGetCurrentDisplay (void);
EGLSurface eglGetCurrentSurface (EGLint readdraw);
EGLDisplay eglGetDisplay (EGLNativeDisplayType display_id);
EGLint eglGetError (void);
__eglMustCastToProperFunctionPointerType eglGetProcAddress (const char *procname);
EGLBoolean eglInitialize (EGLDisplay dpy, EGLint *major, EGLint *minor);
EGLBoolean eglMakeCurrent (EGLDisplay dpy, EGLSurface draw, EGLSurface read, EGLContext ctx);
EGLBoolean eglQueryContext (EGLDisplay dpy, EGLContext ctx, EGLint attribute, EGLint *value);
const char * eglQueryString (EGLDisplay dpy, EGLint name);
EGLBoolean eglQuerySurface (EGLDisplay dpy, EGLSurface surface, EGLint attribute, EGLint *value);
EGLBoolean eglSwapBuffers (EGLDisplay dpy, EGLSurface surface);
EGLBoolean eglTerminate (EGLDisplay dpy);
EGLBoolean eglWaitGL (void);
EGLBoolean eglWaitNative (EGLint engine);
enum { EGL_VERSION_1_1 = 1 };
enum { EGL_BACK_BUFFER = 12420 };
enum { EGL_BIND_TO_TEXTURE_RGB = 12345 };
enum { EGL_BIND_TO_TEXTURE_RGBA = 12346 };
enum { EGL_CONTEXT_LOST = 12302 };
enum { EGL_MIN_SWAP_INTERVAL = 12347 };
enum { EGL_MAX_SWAP_INTERVAL = 12348 };
enum { EGL_MIPMAP_TEXTURE = 12418 };
enum { EGL_MIPMAP_LEVEL = 12419 };
enum { EGL_NO_TEXTURE = 12380 };
enum { EGL_TEXTURE_2D = 12383 };
enum { EGL_TEXTURE_FORMAT = 12416 };
enum { EGL_TEXTURE_RGB = 12381 };
enum { EGL_TEXTURE_RGBA = 12382 };
enum { EGL_TEXTURE_TARGET = 12417 };
typedef EGLBoolean (* PFNEGLBINDTEXIMAGEPROC) (EGLDisplay dpy, EGLSurface surface, EGLint buffer);
typedef EGLBoolean (* PFNEGLRELEASETEXIMAGEPROC) (EGLDisplay dpy, EGLSurface surface, EGLint buffer);
typedef EGLBoolean (* PFNEGLSURFACEATTRIBPROC) (EGLDisplay dpy, EGLSurface surface, EGLint attribute, EGLint value);
typedef EGLBoolean (* PFNEGLSWAPINTERVALPROC) (EGLDisplay dpy, EGLint interval);
EGLBoolean eglBindTexImage (EGLDisplay dpy, EGLSurface surface, EGLint buffer);
EGLBoolean eglReleaseTexImage (EGLDisplay dpy, EGLSurface surface, EGLint buffer);
EGLBoolean eglSurfaceAttrib (EGLDisplay dpy, EGLSurface surface, EGLint attribute, EGLint value);
EGLBoolean eglSwapInterval (EGLDisplay dpy, EGLint interval);
enum { EGL_VERSION_1_2 = 1 };
typedef unsigned int EGLenum;
typedef void *EGLClientBuffer;
enum { EGL_ALPHA_FORMAT = 12424 };
enum { EGL_ALPHA_FORMAT_NONPRE = 12427 };
enum { EGL_ALPHA_FORMAT_PRE = 12428 };
enum { EGL_ALPHA_MASK_SIZE = 12350 };
enum { EGL_BUFFER_PRESERVED = 12436 };
enum { EGL_BUFFER_DESTROYED = 12437 };
enum { EGL_CLIENT_APIS = 12429 };
enum { EGL_COLORSPACE = 12423 };
enum { EGL_COLORSPACE_sRGB = 12425 };
enum { EGL_COLORSPACE_LINEAR = 12426 };
enum { EGL_COLOR_BUFFER_TYPE = 12351 };
enum { EGL_CONTEXT_CLIENT_TYPE = 12439 };
enum { EGL_DISPLAY_SCALING = 10000 };
enum { EGL_HORIZONTAL_RESOLUTION = 12432 };
enum { EGL_LUMINANCE_BUFFER = 12431 };
enum { EGL_LUMINANCE_SIZE = 12349 };
enum { EGL_OPENGL_ES_BIT = 1 };
enum { EGL_OPENVG_BIT = 2 };
enum { EGL_OPENGL_ES_API = 12448 };
enum { EGL_OPENVG_API = 12449 };
enum { EGL_OPENVG_IMAGE = 12438 };
enum { EGL_PIXEL_ASPECT_RATIO = 12434 };
enum { EGL_RENDERABLE_TYPE = 12352 };
enum { EGL_RENDER_BUFFER = 12422 };
enum { EGL_RGB_BUFFER = 12430 };
enum { EGL_SINGLE_BUFFER = 12421 };
enum { EGL_SWAP_BEHAVIOR = 12435 };
/* #define EGL_UNKNOWN                       EGL_CAST(EGLint,-1) ### string, not number "EGL_CAST(EGLint,-1)" */
enum { EGL_VERTICAL_RESOLUTION = 12433 };
typedef EGLBoolean (* PFNEGLBINDAPIPROC) (EGLenum api);
typedef EGLenum (* PFNEGLQUERYAPIPROC) (void);
typedef EGLSurface (* PFNEGLCREATEPBUFFERFROMCLIENTBUFFERPROC) (EGLDisplay dpy, EGLenum buftype, EGLClientBuffer buffer, EGLConfig config, const EGLint *attrib_list);
typedef EGLBoolean (* PFNEGLRELEASETHREADPROC) (void);
typedef EGLBoolean (* PFNEGLWAITCLIENTPROC) (void);
EGLBoolean eglBindAPI (EGLenum api);
EGLenum eglQueryAPI (void);
EGLSurface eglCreatePbufferFromClientBuffer (EGLDisplay dpy, EGLenum buftype, EGLClientBuffer buffer, EGLConfig config, const EGLint *attrib_list);
EGLBoolean eglReleaseThread (void);
EGLBoolean eglWaitClient (void);
enum { EGL_VERSION_1_3 = 1 };
enum { EGL_CONFORMANT = 12354 };
enum { EGL_CONTEXT_CLIENT_VERSION = 12440 };
enum { EGL_MATCH_NATIVE_PIXMAP = 12353 };
enum { EGL_OPENGL_ES2_BIT = 4 };
enum { EGL_VG_ALPHA_FORMAT = 12424 };
enum { EGL_VG_ALPHA_FORMAT_NONPRE = 12427 };
enum { EGL_VG_ALPHA_FORMAT_PRE = 12428 };
enum { EGL_VG_ALPHA_FORMAT_PRE_BIT = 64 };
enum { EGL_VG_COLORSPACE = 12423 };
enum { EGL_VG_COLORSPACE_sRGB = 12425 };
enum { EGL_VG_COLORSPACE_LINEAR = 12426 };
enum { EGL_VG_COLORSPACE_LINEAR_BIT = 32 };
enum { EGL_VERSION_1_4 = 1 };
/* #define EGL_DEFAULT_DISPLAY               EGL_CAST(EGLNativeDisplayType,0) ### string, not number "EGL_CAST(EGLNativeDisplayType,0)" */
enum { EGL_MULTISAMPLE_RESOLVE_BOX_BIT = 512 };
enum { EGL_MULTISAMPLE_RESOLVE = 12441 };
enum { EGL_MULTISAMPLE_RESOLVE_DEFAULT = 12442 };
enum { EGL_MULTISAMPLE_RESOLVE_BOX = 12443 };
enum { EGL_OPENGL_API = 12450 };
enum { EGL_OPENGL_BIT = 8 };
enum { EGL_SWAP_BEHAVIOR_PRESERVED_BIT = 1024 };
typedef EGLContext (* PFNEGLGETCURRENTCONTEXTPROC) (void);
EGLContext eglGetCurrentContext (void);
enum { EGL_VERSION_1_5 = 1 };
typedef void *EGLSync;
typedef intptr_t EGLAttrib;
typedef khronos_utime_nanoseconds_t EGLTime;
typedef void *EGLImage;
enum { EGL_CONTEXT_MAJOR_VERSION = 12440 };
enum { EGL_CONTEXT_MINOR_VERSION = 12539 };
enum { EGL_CONTEXT_OPENGL_PROFILE_MASK = 12541 };
enum { EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY = 12733 };
enum { EGL_NO_RESET_NOTIFICATION = 12734 };
enum { EGL_LOSE_CONTEXT_ON_RESET = 12735 };
enum { EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT = 1 };
enum { EGL_CONTEXT_OPENGL_COMPATIBILITY_PROFILE_BIT = 2 };
enum { EGL_CONTEXT_OPENGL_DEBUG = 12720 };
enum { EGL_CONTEXT_OPENGL_FORWARD_COMPATIBLE = 12721 };
enum { EGL_CONTEXT_OPENGL_ROBUST_ACCESS = 12722 };
enum { EGL_OPENGL_ES3_BIT = 64 };
enum { EGL_CL_EVENT_HANDLE = 12444 };
enum { EGL_SYNC_CL_EVENT = 12542 };
enum { EGL_SYNC_CL_EVENT_COMPLETE = 12543 };
enum { EGL_SYNC_PRIOR_COMMANDS_COMPLETE = 12528 };
enum { EGL_SYNC_TYPE = 12535 };
enum { EGL_SYNC_STATUS = 12529 };
enum { EGL_SYNC_CONDITION = 12536 };
enum { EGL_SIGNALED = 12530 };
enum { EGL_UNSIGNALED = 12531 };
enum { EGL_SYNC_FLUSH_COMMANDS_BIT = 1 };
/* #define EGL_FOREVER                       0xFFFFFFFFFFFFFFFFull ### string, not number "0xFFFFFFFFFFFFFFFFull" */
enum { EGL_TIMEOUT_EXPIRED = 12533 };
enum { EGL_CONDITION_SATISFIED = 12534 };
/* #define EGL_NO_SYNC                       EGL_CAST(EGLSync,0) ### string, not number "EGL_CAST(EGLSync,0)" */
enum { EGL_SYNC_FENCE = 12537 };
enum { EGL_GL_COLORSPACE = 12445 };
enum { EGL_GL_COLORSPACE_SRGB = 12425 };
enum { EGL_GL_COLORSPACE_LINEAR = 12426 };
enum { EGL_GL_RENDERBUFFER = 12473 };
enum { EGL_GL_TEXTURE_2D = 12465 };
enum { EGL_GL_TEXTURE_LEVEL = 12476 };
enum { EGL_GL_TEXTURE_3D = 12466 };
enum { EGL_GL_TEXTURE_ZOFFSET = 12477 };
enum { EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_X = 12467 };
enum { EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_X = 12468 };
enum { EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_Y = 12469 };
enum { EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = 12470 };
enum { EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_Z = 12471 };
enum { EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = 12472 };
enum { EGL_IMAGE_PRESERVED = 12498 };
/* #define EGL_NO_IMAGE                      EGL_CAST(EGLImage,0) ### string, not number "EGL_CAST(EGLImage,0)" */
typedef EGLSync (* PFNEGLCREATESYNCPROC) (EGLDisplay dpy, EGLenum type, const EGLAttrib *attrib_list);
typedef EGLBoolean (* PFNEGLDESTROYSYNCPROC) (EGLDisplay dpy, EGLSync sync);
typedef EGLint (* PFNEGLCLIENTWAITSYNCPROC) (EGLDisplay dpy, EGLSync sync, EGLint flags, EGLTime timeout);
typedef EGLBoolean (* PFNEGLGETSYNCATTRIBPROC) (EGLDisplay dpy, EGLSync sync, EGLint attribute, EGLAttrib *value);
typedef EGLImage (* PFNEGLCREATEIMAGEPROC) (EGLDisplay dpy, EGLContext ctx, EGLenum target, EGLClientBuffer buffer, const EGLAttrib *attrib_list);
typedef EGLBoolean (* PFNEGLDESTROYIMAGEPROC) (EGLDisplay dpy, EGLImage image);
typedef EGLDisplay (* PFNEGLGETPLATFORMDISPLAYPROC) (EGLenum platform, void *native_display, const EGLAttrib *attrib_list);
typedef EGLSurface (* PFNEGLCREATEPLATFORMWINDOWSURFACEPROC) (EGLDisplay dpy, EGLConfig config, void *native_window, const EGLAttrib *attrib_list);
typedef EGLSurface (* PFNEGLCREATEPLATFORMPIXMAPSURFACEPROC) (EGLDisplay dpy, EGLConfig config, void *native_pixmap, const EGLAttrib *attrib_list);
typedef EGLBoolean (* PFNEGLWAITSYNCPROC) (EGLDisplay dpy, EGLSync sync, EGLint flags);
EGLSync eglCreateSync (EGLDisplay dpy, EGLenum type, const EGLAttrib *attrib_list);
EGLBoolean eglDestroySync (EGLDisplay dpy, EGLSync sync);
EGLint eglClientWaitSync (EGLDisplay dpy, EGLSync sync, EGLint flags, EGLTime timeout);
EGLBoolean eglGetSyncAttrib (EGLDisplay dpy, EGLSync sync, EGLint attribute, EGLAttrib *value);
EGLImage eglCreateImage (EGLDisplay dpy, EGLContext ctx, EGLenum target, EGLClientBuffer buffer, const EGLAttrib *attrib_list);
EGLBoolean eglDestroyImage (EGLDisplay dpy, EGLImage image);
EGLDisplay eglGetPlatformDisplay (EGLenum platform, void *native_display, const EGLAttrib *attrib_list);
EGLSurface eglCreatePlatformWindowSurface (EGLDisplay dpy, EGLConfig config, void *native_window, const EGLAttrib *attrib_list);
EGLSurface eglCreatePlatformPixmapSurface (EGLDisplay dpy, EGLConfig config, void *native_pixmap, const EGLAttrib *attrib_list);
EGLBoolean eglWaitSync (EGLDisplay dpy, EGLSync sync, EGLint flags);
/* + END   /usr/include/EGL/egl.h */
]]
return setmetatable({
	EGL_DONT_CARE = ffi.cast('EGLint', -1),
	EGL_NO_CONTEXT = ffi.cast('EGLDisplay',0),
	EGL_NO_DISPLAY = ffi.cast('EGLDisplay',0),
	EGL_NO_SURFACE = ffi.cast('EGLSurface',0),
	EGL_UNKNOWN = ffi.cast('EGLint',-1),
	EGL_DEFAULT_DISPLAY = ffi.cast('EGLNativeDisplayType',0),
	EGL_NO_SYNC = ffi.cast('EGLSync',0),
	EGL_NO_IMAGE = ffi.cast('EGLImage',0),
}, {
	__index = require 'ffi.load' 'EGL',
})
