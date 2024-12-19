local ffi = require 'ffi'

-- comments

--[[
/* #define EGLAPIENTRYP EGLAPIENTRY* ### string, not number "EGLAPIENTRY*" */
/* #define EGL_DONT_CARE                     EGL_CAST(EGLint,-1) ### string, not number "EGL_CAST(EGLint,-1)" */
/* #define EGL_NO_CONTEXT                    EGL_CAST(EGLContext,0) ### string, not number "EGL_CAST(EGLContext,0)" */
/* #define EGL_NO_DISPLAY                    EGL_CAST(EGLDisplay,0) ### string, not number "EGL_CAST(EGLDisplay,0)" */
/* #define EGL_NO_SURFACE                    EGL_CAST(EGLSurface,0) ### string, not number "EGL_CAST(EGLSurface,0)" */
/* #define EGL_UNKNOWN                       EGL_CAST(EGLint,-1) ### string, not number "EGL_CAST(EGLint,-1)" */
/* #define EGL_DEFAULT_DISPLAY               EGL_CAST(EGLNativeDisplayType,0) ### string, not number "EGL_CAST(EGLNativeDisplayType,0)" */
/* #define EGL_FOREVER                       0xFFFFFFFFFFFFFFFFull ### string, not number "0xFFFFFFFFFFFFFFFFull" */
/* #define EGL_NO_SYNC                       EGL_CAST(EGLSync,0) ### string, not number "EGL_CAST(EGLSync,0)" */
/* #define EGL_NO_IMAGE                      EGL_CAST(EGLImage,0) ### string, not number "EGL_CAST(EGLImage,0)" */
--]]

-- typedefs

-- enums

-- functions

require 'ffi.req' 'KHR.khrplatform'

-- I'm guessing this is a difference of OS's and not a difference of EGL versions because the header version says it is the same, but the Linux build did void* while the OSX build did int ...
if ffi.os == 'OSX' then
	ffi.cdef[[
typedef int EGLNativeDisplayType;
typedef void *EGLNativePixmapType;
typedef void *EGLNativeWindowType;
]]
else
	ffi.cdef[[
typedef void *EGLNativeDisplayType;
typedef khronos_uintptr_t EGLNativePixmapType;
typedef khronos_uintptr_t EGLNativeWindowType;
]]
end

ffi.cdef[[
typedef EGLNativeDisplayType NativeDisplayType;
typedef EGLNativePixmapType NativePixmapType;
typedef EGLNativeWindowType NativeWindowType;
typedef khronos_int32_t EGLint;
typedef unsigned int EGLBoolean;
typedef void *EGLDisplay;
typedef void *EGLConfig;
typedef void *EGLSurface;
typedef void *EGLContext;
typedef void (*__eglMustCastToProperFunctionPointerType)();
typedef EGLBoolean (* PFNEGLCHOOSECONFIGPROC)(EGLDisplay dpy, const EGLint *attrib_list, EGLConfig *configs, EGLint config_size, EGLint *num_config);
typedef EGLBoolean (* PFNEGLCOPYBUFFERSPROC)(EGLDisplay dpy, EGLSurface surface, EGLNativePixmapType target);
typedef EGLContext (* PFNEGLCREATECONTEXTPROC)(EGLDisplay dpy, EGLConfig config, EGLContext share_context, const EGLint *attrib_list);
typedef EGLSurface (* PFNEGLCREATEPBUFFERSURFACEPROC)(EGLDisplay dpy, EGLConfig config, const EGLint *attrib_list);
typedef EGLSurface (* PFNEGLCREATEPIXMAPSURFACEPROC)(EGLDisplay dpy, EGLConfig config, EGLNativePixmapType pixmap, const EGLint *attrib_list);
typedef EGLSurface (* PFNEGLCREATEWINDOWSURFACEPROC)(EGLDisplay dpy, EGLConfig config, EGLNativeWindowType win, const EGLint *attrib_list);
typedef EGLBoolean (* PFNEGLDESTROYCONTEXTPROC)(EGLDisplay dpy, EGLContext ctx);
typedef EGLBoolean (* PFNEGLDESTROYSURFACEPROC)(EGLDisplay dpy, EGLSurface surface);
typedef EGLBoolean (* PFNEGLGETCONFIGATTRIBPROC)(EGLDisplay dpy, EGLConfig config, EGLint attribute, EGLint *value);
typedef EGLBoolean (* PFNEGLGETCONFIGSPROC)(EGLDisplay dpy, EGLConfig *configs, EGLint config_size, EGLint *num_config);
typedef EGLDisplay (* PFNEGLGETCURRENTDISPLAYPROC)();
typedef EGLSurface (* PFNEGLGETCURRENTSURFACEPROC)(EGLint readdraw);
typedef EGLDisplay (* PFNEGLGETDISPLAYPROC)(EGLNativeDisplayType display_id);
typedef EGLint (* PFNEGLGETERRORPROC)();
typedef __eglMustCastToProperFunctionPointerType (* PFNEGLGETPROCADDRESSPROC)(const char *procname);
typedef EGLBoolean (* PFNEGLINITIALIZEPROC)(EGLDisplay dpy, EGLint *major, EGLint *minor);
typedef EGLBoolean (* PFNEGLMAKECURRENTPROC)(EGLDisplay dpy, EGLSurface draw, EGLSurface read, EGLContext ctx);
typedef EGLBoolean (* PFNEGLQUERYCONTEXTPROC)(EGLDisplay dpy, EGLContext ctx, EGLint attribute, EGLint *value);
typedef const char *(* PFNEGLQUERYSTRINGPROC)(EGLDisplay dpy, EGLint name);
typedef EGLBoolean (* PFNEGLQUERYSURFACEPROC)(EGLDisplay dpy, EGLSurface surface, EGLint attribute, EGLint *value);
typedef EGLBoolean (* PFNEGLSWAPBUFFERSPROC)(EGLDisplay dpy, EGLSurface surface);
typedef EGLBoolean (* PFNEGLTERMINATEPROC)(EGLDisplay dpy);
typedef EGLBoolean (* PFNEGLWAITGLPROC)();
typedef EGLBoolean (* PFNEGLWAITNATIVEPROC)(EGLint engine);
typedef EGLBoolean (* PFNEGLBINDTEXIMAGEPROC)(EGLDisplay dpy, EGLSurface surface, EGLint buffer);
typedef EGLBoolean (* PFNEGLRELEASETEXIMAGEPROC)(EGLDisplay dpy, EGLSurface surface, EGLint buffer);
typedef EGLBoolean (* PFNEGLSURFACEATTRIBPROC)(EGLDisplay dpy, EGLSurface surface, EGLint attribute, EGLint value);
typedef EGLBoolean (* PFNEGLSWAPINTERVALPROC)(EGLDisplay dpy, EGLint interval);
typedef unsigned int EGLenum;
typedef void *EGLClientBuffer;
typedef EGLBoolean (* PFNEGLBINDAPIPROC)(EGLenum api);
typedef EGLenum (* PFNEGLQUERYAPIPROC)();
typedef EGLSurface (* PFNEGLCREATEPBUFFERFROMCLIENTBUFFERPROC)(EGLDisplay dpy, EGLenum buftype, EGLClientBuffer buffer, EGLConfig config, const EGLint *attrib_list);
typedef EGLBoolean (* PFNEGLRELEASETHREADPROC)();
typedef EGLBoolean (* PFNEGLWAITCLIENTPROC)();
typedef EGLContext (* PFNEGLGETCURRENTCONTEXTPROC)();
typedef void *EGLSync;
typedef intptr_t EGLAttrib;
typedef khronos_utime_nanoseconds_t EGLTime;
typedef void *EGLImage;
typedef EGLSync (* PFNEGLCREATESYNCPROC)(EGLDisplay dpy, EGLenum type, const EGLAttrib *attrib_list);
typedef EGLBoolean (* PFNEGLDESTROYSYNCPROC)(EGLDisplay dpy, EGLSync sync);
typedef EGLint (* PFNEGLCLIENTWAITSYNCPROC)(EGLDisplay dpy, EGLSync sync, EGLint flags, EGLTime timeout);
typedef EGLBoolean (* PFNEGLGETSYNCATTRIBPROC)(EGLDisplay dpy, EGLSync sync, EGLint attribute, EGLAttrib *value);
typedef EGLImage (* PFNEGLCREATEIMAGEPROC)(EGLDisplay dpy, EGLContext ctx, EGLenum target, EGLClientBuffer buffer, const EGLAttrib *attrib_list);
typedef EGLBoolean (* PFNEGLDESTROYIMAGEPROC)(EGLDisplay dpy, EGLImage image);
typedef EGLDisplay (* PFNEGLGETPLATFORMDISPLAYPROC)(EGLenum platform, void *native_display, const EGLAttrib *attrib_list);
typedef EGLSurface (* PFNEGLCREATEPLATFORMWINDOWSURFACEPROC)(EGLDisplay dpy, EGLConfig config, void *native_window, const EGLAttrib *attrib_list);
typedef EGLSurface (* PFNEGLCREATEPLATFORMPIXMAPSURFACEPROC)(EGLDisplay dpy, EGLConfig config, void *native_pixmap, const EGLAttrib *attrib_list);
typedef EGLBoolean (* PFNEGLWAITSYNCPROC)(EGLDisplay dpy, EGLSync sync, EGLint flags);
]]

local wrapper
wrapper = require 'ffi.libwrapper'{
	lib = require 'ffi.load' 'EGL',
	defs = {

		-- enums

		EGL_EGL_PROTOTYPES = 1,
		EGL_VERSION_1_0 = 1,
		EGL_ALPHA_SIZE = 12321,
		EGL_BAD_ACCESS = 12290,
		EGL_BAD_ALLOC = 12291,
		EGL_BAD_ATTRIBUTE = 12292,
		EGL_BAD_CONFIG = 12293,
		EGL_BAD_CONTEXT = 12294,
		EGL_BAD_CURRENT_SURFACE = 12295,
		EGL_BAD_DISPLAY = 12296,
		EGL_BAD_MATCH = 12297,
		EGL_BAD_NATIVE_PIXMAP = 12298,
		EGL_BAD_NATIVE_WINDOW = 12299,
		EGL_BAD_PARAMETER = 12300,
		EGL_BAD_SURFACE = 12301,
		EGL_BLUE_SIZE = 12322,
		EGL_BUFFER_SIZE = 12320,
		EGL_CONFIG_CAVEAT = 12327,
		EGL_CONFIG_ID = 12328,
		EGL_CORE_NATIVE_ENGINE = 12379,
		EGL_DEPTH_SIZE = 12325,
		EGL_DRAW = 12377,
		EGL_EXTENSIONS = 12373,
		EGL_FALSE = 0,
		EGL_GREEN_SIZE = 12323,
		EGL_HEIGHT = 12374,
		EGL_LARGEST_PBUFFER = 12376,
		EGL_LEVEL = 12329,
		EGL_MAX_PBUFFER_HEIGHT = 12330,
		EGL_MAX_PBUFFER_PIXELS = 12331,
		EGL_MAX_PBUFFER_WIDTH = 12332,
		EGL_NATIVE_RENDERABLE = 12333,
		EGL_NATIVE_VISUAL_ID = 12334,
		EGL_NATIVE_VISUAL_TYPE = 12335,
		EGL_NONE = 12344,
		EGL_NON_CONFORMANT_CONFIG = 12369,
		EGL_NOT_INITIALIZED = 12289,
		EGL_PBUFFER_BIT = 1,
		EGL_PIXMAP_BIT = 2,
		EGL_READ = 12378,
		EGL_RED_SIZE = 12324,
		EGL_SAMPLES = 12337,
		EGL_SAMPLE_BUFFERS = 12338,
		EGL_SLOW_CONFIG = 12368,
		EGL_STENCIL_SIZE = 12326,
		EGL_SUCCESS = 12288,
		EGL_SURFACE_TYPE = 12339,
		EGL_TRANSPARENT_BLUE_VALUE = 12341,
		EGL_TRANSPARENT_GREEN_VALUE = 12342,
		EGL_TRANSPARENT_RED_VALUE = 12343,
		EGL_TRANSPARENT_RGB = 12370,
		EGL_TRANSPARENT_TYPE = 12340,
		EGL_TRUE = 1,
		EGL_VENDOR = 12371,
		EGL_VERSION = 12372,
		EGL_WIDTH = 12375,
		EGL_WINDOW_BIT = 4,
		EGL_VERSION_1_1 = 1,
		EGL_BACK_BUFFER = 12420,
		EGL_BIND_TO_TEXTURE_RGB = 12345,
		EGL_BIND_TO_TEXTURE_RGBA = 12346,
		EGL_CONTEXT_LOST = 12302,
		EGL_MIN_SWAP_INTERVAL = 12347,
		EGL_MAX_SWAP_INTERVAL = 12348,
		EGL_MIPMAP_TEXTURE = 12418,
		EGL_MIPMAP_LEVEL = 12419,
		EGL_NO_TEXTURE = 12380,
		EGL_TEXTURE_2D = 12383,
		EGL_TEXTURE_FORMAT = 12416,
		EGL_TEXTURE_RGB = 12381,
		EGL_TEXTURE_RGBA = 12382,
		EGL_TEXTURE_TARGET = 12417,
		EGL_VERSION_1_2 = 1,
		EGL_ALPHA_FORMAT = 12424,
		EGL_ALPHA_FORMAT_NONPRE = 12427,
		EGL_ALPHA_FORMAT_PRE = 12428,
		EGL_ALPHA_MASK_SIZE = 12350,
		EGL_BUFFER_PRESERVED = 12436,
		EGL_BUFFER_DESTROYED = 12437,
		EGL_CLIENT_APIS = 12429,
		EGL_COLORSPACE = 12423,
		EGL_COLORSPACE_sRGB = 12425,
		EGL_COLORSPACE_LINEAR = 12426,
		EGL_COLOR_BUFFER_TYPE = 12351,
		EGL_CONTEXT_CLIENT_TYPE = 12439,
		EGL_DISPLAY_SCALING = 10000,
		EGL_HORIZONTAL_RESOLUTION = 12432,
		EGL_LUMINANCE_BUFFER = 12431,
		EGL_LUMINANCE_SIZE = 12349,
		EGL_OPENGL_ES_BIT = 1,
		EGL_OPENVG_BIT = 2,
		EGL_OPENGL_ES_API = 12448,
		EGL_OPENVG_API = 12449,
		EGL_OPENVG_IMAGE = 12438,
		EGL_PIXEL_ASPECT_RATIO = 12434,
		EGL_RENDERABLE_TYPE = 12352,
		EGL_RENDER_BUFFER = 12422,
		EGL_RGB_BUFFER = 12430,
		EGL_SINGLE_BUFFER = 12421,
		EGL_SWAP_BEHAVIOR = 12435,
		EGL_VERTICAL_RESOLUTION = 12433,
		EGL_VERSION_1_3 = 1,
		EGL_CONFORMANT = 12354,
		EGL_CONTEXT_CLIENT_VERSION = 12440,
		EGL_MATCH_NATIVE_PIXMAP = 12353,
		EGL_OPENGL_ES2_BIT = 4,
		EGL_VG_ALPHA_FORMAT = 12424,
		EGL_VG_ALPHA_FORMAT_NONPRE = 12427,
		EGL_VG_ALPHA_FORMAT_PRE = 12428,
		EGL_VG_ALPHA_FORMAT_PRE_BIT = 64,
		EGL_VG_COLORSPACE = 12423,
		EGL_VG_COLORSPACE_sRGB = 12425,
		EGL_VG_COLORSPACE_LINEAR = 12426,
		EGL_VG_COLORSPACE_LINEAR_BIT = 32,
		EGL_VERSION_1_4 = 1,
		EGL_MULTISAMPLE_RESOLVE_BOX_BIT = 512,
		EGL_MULTISAMPLE_RESOLVE = 12441,
		EGL_MULTISAMPLE_RESOLVE_DEFAULT = 12442,
		EGL_MULTISAMPLE_RESOLVE_BOX = 12443,
		EGL_OPENGL_API = 12450,
		EGL_OPENGL_BIT = 8,
		EGL_SWAP_BEHAVIOR_PRESERVED_BIT = 1024,
		EGL_VERSION_1_5 = 1,
		EGL_CONTEXT_MAJOR_VERSION = 12440,
		EGL_CONTEXT_MINOR_VERSION = 12539,
		EGL_CONTEXT_OPENGL_PROFILE_MASK = 12541,
		EGL_CONTEXT_OPENGL_RESET_NOTIFICATION_STRATEGY = 12733,
		EGL_NO_RESET_NOTIFICATION = 12734,
		EGL_LOSE_CONTEXT_ON_RESET = 12735,
		EGL_CONTEXT_OPENGL_CORE_PROFILE_BIT = 1,
		EGL_CONTEXT_OPENGL_COMPATIBILITY_PROFILE_BIT = 2,
		EGL_CONTEXT_OPENGL_DEBUG = 12720,
		EGL_CONTEXT_OPENGL_FORWARD_COMPATIBLE = 12721,
		EGL_CONTEXT_OPENGL_ROBUST_ACCESS = 12722,
		EGL_OPENGL_ES3_BIT = 64,
		EGL_CL_EVENT_HANDLE = 12444,
		EGL_SYNC_CL_EVENT = 12542,
		EGL_SYNC_CL_EVENT_COMPLETE = 12543,
		EGL_SYNC_PRIOR_COMMANDS_COMPLETE = 12528,
		EGL_SYNC_TYPE = 12535,
		EGL_SYNC_STATUS = 12529,
		EGL_SYNC_CONDITION = 12536,
		EGL_SIGNALED = 12530,
		EGL_UNSIGNALED = 12531,
		EGL_SYNC_FLUSH_COMMANDS_BIT = 1,
		EGL_TIMEOUT_EXPIRED = 12533,
		EGL_CONDITION_SATISFIED = 12534,
		EGL_SYNC_FENCE = 12537,
		EGL_GL_COLORSPACE = 12445,
		EGL_GL_COLORSPACE_SRGB = 12425,
		EGL_GL_COLORSPACE_LINEAR = 12426,
		EGL_GL_RENDERBUFFER = 12473,
		EGL_GL_TEXTURE_2D = 12465,
		EGL_GL_TEXTURE_LEVEL = 12476,
		EGL_GL_TEXTURE_3D = 12466,
		EGL_GL_TEXTURE_ZOFFSET = 12477,
		EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_X = 12467,
		EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_X = 12468,
		EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_Y = 12469,
		EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = 12470,
		EGL_GL_TEXTURE_CUBE_MAP_POSITIVE_Z = 12471,
		EGL_GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = 12472,
		EGL_IMAGE_PRESERVED = 12498,

		-- functions

		eglChooseConfig = [[EGLBoolean eglChooseConfig(EGLDisplay dpy, const EGLint *attrib_list, EGLConfig *configs, EGLint config_size, EGLint *num_config);]],
		eglCopyBuffers = [[EGLBoolean eglCopyBuffers(EGLDisplay dpy, EGLSurface surface, EGLNativePixmapType target);]],
		eglCreateContext = [[EGLContext eglCreateContext(EGLDisplay dpy, EGLConfig config, EGLContext share_context, const EGLint *attrib_list);]],
		eglCreatePbufferSurface = [[EGLSurface eglCreatePbufferSurface(EGLDisplay dpy, EGLConfig config, const EGLint *attrib_list);]],
		eglCreatePixmapSurface = [[EGLSurface eglCreatePixmapSurface(EGLDisplay dpy, EGLConfig config, EGLNativePixmapType pixmap, const EGLint *attrib_list);]],
		eglCreateWindowSurface = [[EGLSurface eglCreateWindowSurface(EGLDisplay dpy, EGLConfig config, EGLNativeWindowType win, const EGLint *attrib_list);]],
		eglDestroyContext = [[EGLBoolean eglDestroyContext(EGLDisplay dpy, EGLContext ctx);]],
		eglDestroySurface = [[EGLBoolean eglDestroySurface(EGLDisplay dpy, EGLSurface surface);]],
		eglGetConfigAttrib = [[EGLBoolean eglGetConfigAttrib(EGLDisplay dpy, EGLConfig config, EGLint attribute, EGLint *value);]],
		eglGetConfigs = [[EGLBoolean eglGetConfigs(EGLDisplay dpy, EGLConfig *configs, EGLint config_size, EGLint *num_config);]],
		eglGetCurrentDisplay = [[EGLDisplay eglGetCurrentDisplay();]],
		eglGetCurrentSurface = [[EGLSurface eglGetCurrentSurface(EGLint readdraw);]],
		eglGetDisplay = [[EGLDisplay eglGetDisplay(EGLNativeDisplayType display_id);]],
		eglGetError = [[EGLint eglGetError();]],
		eglGetProcAddress = [[__eglMustCastToProperFunctionPointerType eglGetProcAddress(const char *procname);]],
		eglInitialize = [[EGLBoolean eglInitialize(EGLDisplay dpy, EGLint *major, EGLint *minor);]],
		eglMakeCurrent = [[EGLBoolean eglMakeCurrent(EGLDisplay dpy, EGLSurface draw, EGLSurface read, EGLContext ctx);]],
		eglQueryContext = [[EGLBoolean eglQueryContext(EGLDisplay dpy, EGLContext ctx, EGLint attribute, EGLint *value);]],
		eglQueryString = [[const char * eglQueryString(EGLDisplay dpy, EGLint name);]],
		eglQuerySurface = [[EGLBoolean eglQuerySurface(EGLDisplay dpy, EGLSurface surface, EGLint attribute, EGLint *value);]],
		eglSwapBuffers = [[EGLBoolean eglSwapBuffers(EGLDisplay dpy, EGLSurface surface);]],
		eglTerminate = [[EGLBoolean eglTerminate(EGLDisplay dpy);]],
		eglWaitGL = [[EGLBoolean eglWaitGL();]],
		eglWaitNative = [[EGLBoolean eglWaitNative(EGLint engine);]],
		eglBindTexImage = [[EGLBoolean eglBindTexImage(EGLDisplay dpy, EGLSurface surface, EGLint buffer);]],
		eglReleaseTexImage = [[EGLBoolean eglReleaseTexImage(EGLDisplay dpy, EGLSurface surface, EGLint buffer);]],
		eglSurfaceAttrib = [[EGLBoolean eglSurfaceAttrib(EGLDisplay dpy, EGLSurface surface, EGLint attribute, EGLint value);]],
		eglSwapInterval = [[EGLBoolean eglSwapInterval(EGLDisplay dpy, EGLint interval);]],
		eglBindAPI = [[EGLBoolean eglBindAPI(EGLenum api);]],
		eglQueryAPI = [[EGLenum eglQueryAPI();]],
		eglCreatePbufferFromClientBuffer = [[EGLSurface eglCreatePbufferFromClientBuffer(EGLDisplay dpy, EGLenum buftype, EGLClientBuffer buffer, EGLConfig config, const EGLint *attrib_list);]],
		eglReleaseThread = [[EGLBoolean eglReleaseThread();]],
		eglWaitClient = [[EGLBoolean eglWaitClient();]],
		eglGetCurrentContext = [[EGLContext eglGetCurrentContext();]],
		eglCreateSync = [[EGLSync eglCreateSync(EGLDisplay dpy, EGLenum type, const EGLAttrib *attrib_list);]],
		eglDestroySync = [[EGLBoolean eglDestroySync(EGLDisplay dpy, EGLSync sync);]],
		eglClientWaitSync = [[EGLint eglClientWaitSync(EGLDisplay dpy, EGLSync sync, EGLint flags, EGLTime timeout);]],
		eglGetSyncAttrib = [[EGLBoolean eglGetSyncAttrib(EGLDisplay dpy, EGLSync sync, EGLint attribute, EGLAttrib *value);]],
		eglCreateImage = [[EGLImage eglCreateImage(EGLDisplay dpy, EGLContext ctx, EGLenum target, EGLClientBuffer buffer, const EGLAttrib *attrib_list);]],
		eglDestroyImage = [[EGLBoolean eglDestroyImage(EGLDisplay dpy, EGLImage image);]],
		eglGetPlatformDisplay = [[EGLDisplay eglGetPlatformDisplay(EGLenum platform, void *native_display, const EGLAttrib *attrib_list);]],
		eglCreatePlatformWindowSurface = [[EGLSurface eglCreatePlatformWindowSurface(EGLDisplay dpy, EGLConfig config, void *native_window, const EGLAttrib *attrib_list);]],
		eglCreatePlatformPixmapSurface = [[EGLSurface eglCreatePlatformPixmapSurface(EGLDisplay dpy, EGLConfig config, void *native_pixmap, const EGLAttrib *attrib_list);]],
		eglWaitSync = [[EGLBoolean eglWaitSync(EGLDisplay dpy, EGLSync sync, EGLint flags);]],
	},
}

wrapper.EGL_DONT_CARE = ffi.cast('EGLint', -1)
wrapper.EGL_NO_CONTEXT = ffi.cast('EGLDisplay', 0)
wrapper.EGL_NO_DISPLAY = ffi.cast('EGLDisplay', 0)
wrapper.EGL_NO_SURFACE = ffi.cast('EGLSurface', 0)
wrapper.EGL_UNKNOWN = ffi.cast('EGLint', -1)
wrapper.EGL_DEFAULT_DISPLAY = ffi.cast('EGLNativeDisplayType', 0)
wrapper.EGL_NO_SYNC = ffi.cast('EGLSync', 0)
wrapper.EGL_NO_IMAGE = ffi.cast('EGLImage', 0)
wrapper.EGL_FOREVER = 0xFFFFFFFFFFFFFFFFULL
wrapper.EGL_NO_SYNC = ffi.cast('EGLSync', 0)
wrapper.EGL_NO_IMAGE = ffi.cast('EGLImage', 0)

return wrapper
