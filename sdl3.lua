local ffi = require 'ffi'

-- comments

--[[
/* # define SDL_SIZE_MAX SIZE_MAX ### string, not number "1.844674407371e+19" */
/* #define SDL_MAX_SINT8   ((Sint8)0x7F) ### string, not number "((Sint8)0x7F)" */
/* #define SDL_MIN_SINT8   ((Sint8)(~0x7F)) ### string, not number "((Sint8)(~0x7F))" */
/* #define SDL_MAX_UINT8   ((Uint8)0xFF) ### string, not number "((Uint8)0xFF)" */
/* #define SDL_MIN_UINT8   ((Uint8)0x00) ### string, not number "((Uint8)0x00)" */
/* #define SDL_MAX_SINT16  ((Sint16)0x7FFF) ### string, not number "((Sint16)0x7FFF)" */
/* #define SDL_MIN_SINT16  ((Sint16)(~0x7FFF)) ### string, not number "((Sint16)(~0x7FFF))" */
/* #define SDL_MAX_UINT16  ((Uint16)0xFFFF) ### string, not number "((Uint16)0xFFFF)" */
/* #define SDL_MIN_UINT16  ((Uint16)0x0000) ### string, not number "((Uint16)0x0000)" */
/* #define SDL_MAX_SINT32  ((Sint32)0x7FFFFFFF) ### string, not number "((Sint32)0x7FFFFFFF)" */
/* #define SDL_MIN_SINT32  ((Sint32)(~0x7FFFFFFF)) ### string, not number "((Sint32)(~0x7FFFFFFF))" */
/* #define SDL_MAX_UINT32  ((Uint32)0xFFFFFFFFu) ### string, not number "((Uint32)0xFFFFFFFFu)" */
/* #define SDL_MIN_UINT32  ((Uint32)0x00000000) ### string, not number "((Uint32)0x00000000)" */
/* #define SDL_MAX_SINT64  SDL_SINT64_C(0x7FFFFFFFFFFFFFFF) ### string, not number "9.2233720368548e+18" */
/* #define SDL_MAX_UINT64  SDL_UINT64_C(0xFFFFFFFFFFFFFFFF) ### string, not number "SDL_UINT64_C(0xFFFFFFFFFFFFFFFF)" */
/* #define SDL_MIN_UINT64  SDL_UINT64_C(0x0000000000000000) ### string, not number "SDL_UINT64_C(0x0000000000000000)" */
/* #define SDL_MAX_TIME SDL_MAX_SINT64 ### string, not number "9.2233720368548e+18" */
/* #define SDL_FLT_EPSILON 1.1920928955078125e-07F ### string, not number "1.1920928955078125e-07F" */
/* #define SDL_PRIs64 PRId64 ### string, not number "PRId64" */
/* #define SDL_PRIu64 PRIu64 ### string, not number "PRIu64" */
/* #define SDL_PRIx64 PRIx64 ### string, not number "PRIx64" */
/* #define SDL_PRIX64 PRIX64 ### string, not number "PRIX64" */
/* #define SDL_PRIs32 PRId32 ### string, not number "PRId32" */
/* #define SDL_PRIu32 PRIu32 ### string, not number "PRIu32" */
/* #define SDL_PRIx32 PRIx32 ### string, not number "PRIx32" */
/* #define SDL_PRIX32 PRIX32 ### string, not number "PRIX32" */
/* #define SDL_PRILL_PREFIX "ll" ### string, not number "\"ll\"" */
/* #define SDL_PRILLd SDL_PRILL_PREFIX "d" ### string, not number "SDL_PRILL_PREFIX \"d\"" */
/* #define SDL_PRILLu SDL_PRILL_PREFIX "u" ### string, not number "SDL_PRILL_PREFIX \"u\"" */
/* #define SDL_PRILLx SDL_PRILL_PREFIX "x" ### string, not number "SDL_PRILL_PREFIX \"x\"" */
/* #define SDL_PRILLX SDL_PRILL_PREFIX "X" ### string, not number "SDL_PRILL_PREFIX \"X\"" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #    define SDL_DEPRECATED __attribute__((deprecated)) ### string, not number "__attribute__((deprecated))" */
/* #    define SDL_UNUSED __attribute__((unused)) ### string, not number "__attribute__((unused))" */
/* #   define SDL_DECLSPEC __attribute__ ((visibility("default"))) ### string, not number "__attribute__ ((visibility(\"default\")))" */
/* #define SDL_FORCE_INLINE __attribute__((always_inline)) static __inline__ ### string, not number "__attribute__((always_inline)) static __inline__" */
/* #define SDL_NORETURN __attribute__((noreturn)) ### string, not number "__attribute__((noreturn))" */
/* #define SDL_FALLTHROUGH do {} while (0) ### string, not number "do {} while (0)" */
/* #define SDL_NODISCARD __attribute__((warn_unused_result)) ### string, not number "__attribute__((warn_unused_result))" */
/* #define SDL_MALLOC __attribute__((malloc)) ### string, not number "__attribute__((malloc))" */
/* #define SDL_PI_D   3.141592653589793238462643383279502884 ### string, not number "3.141592653589793238462643383279502884" */
/* #define SDL_PI_F   3.141592653589793238462643383279502884F ### string, not number "3.141592653589793238462643383279502884F" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #    define SDL_BeginThreadFunction NULL ### string, not number "NULL" */
/* #    define SDL_EndThreadFunction NULL ### string, not number "NULL" */
/* #define SDL_PROP_THREAD_CREATE_ENTRY_FUNCTION_POINTER                  "SDL.thread.create.entry_function" ### string, not number "\"SDL.thread.create.entry_function\"" */
/* #define SDL_PROP_THREAD_CREATE_NAME_STRING                             "SDL.thread.create.name" ### string, not number "\"SDL.thread.create.name\"" */
/* #define SDL_PROP_THREAD_CREATE_USERDATA_POINTER                        "SDL.thread.create.userdata" ### string, not number "\"SDL.thread.create.userdata\"" */
/* #define SDL_PROP_THREAD_CREATE_STACKSIZE_NUMBER                        "SDL.thread.create.stacksize" ### string, not number "\"SDL.thread.create.stacksize\"" */
/* #define SDL_SCOPED_CAPABILITY    SDL_THREAD_ANNOTATION_ATTRIBUTE__(scoped_lockable) ### string, not number "SDL_THREAD_ANNOTATION_ATTRIBUTE__(scoped_lockable)" */
/* #define SDL_NO_THREAD_SAFETY_ANALYSIS    SDL_THREAD_ANNOTATION_ATTRIBUTE__(no_thread_safety_analysis) ### string, not number "SDL_THREAD_ANNOTATION_ATTRIBUTE__(no_thread_safety_analysis)" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #define SDL_PROP_IOSTREAM_WINDOWS_HANDLE_POINTER    "SDL.iostream.windows.handle" ### string, not number "\"SDL.iostream.windows.handle\"" */
/* #define SDL_PROP_IOSTREAM_STDIO_FILE_POINTER        "SDL.iostream.stdio.file" ### string, not number "\"SDL.iostream.stdio.file\"" */
/* #define SDL_PROP_IOSTREAM_FILE_DESCRIPTOR_NUMBER    "SDL.iostream.file_descriptor" ### string, not number "\"SDL.iostream.file_descriptor\"" */
/* #define SDL_PROP_IOSTREAM_ANDROID_AASSET_POINTER    "SDL.iostream.android.aasset" ### string, not number "\"SDL.iostream.android.aasset\"" */
/* #define SDL_PROP_IOSTREAM_MEMORY_POINTER "SDL.iostream.memory.base" ### string, not number "\"SDL.iostream.memory.base\"" */
/* #define SDL_PROP_IOSTREAM_MEMORY_SIZE_NUMBER  "SDL.iostream.memory.size" ### string, not number "\"SDL.iostream.memory.size\"" */
/* #define SDL_PROP_IOSTREAM_DYNAMIC_MEMORY_POINTER    "SDL.iostream.dynamic.memory" ### string, not number "\"SDL.iostream.dynamic.memory\"" */
/* #define SDL_PROP_IOSTREAM_DYNAMIC_CHUNKSIZE_NUMBER  "SDL.iostream.dynamic.chunksize" ### string, not number "\"SDL.iostream.dynamic.chunksize\"" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #define SDL_AUDIO_MASK_BITSIZE       (0xFFu) ### string, not number "(0xFFu)" */
/* #define SDL_AUDIO_MASK_FLOAT         (1u<<8) ### string, not number "(1u<<8)" */
/* #define SDL_AUDIO_MASK_BIG_ENDIAN    (1u<<12) ### string, not number "(1u<<12)" */
/* #define SDL_AUDIO_MASK_SIGNED        (1u<<15) ### string, not number "(1u<<15)" */
/* #define SDL_AUDIO_DEVICE_DEFAULT_PLAYBACK ((SDL_AudioDeviceID) 0xFFFFFFFFu) ### string, not number "((SDL_AudioDeviceID) 0xFFFFFFFFu)" */
/* #define SDL_AUDIO_DEVICE_DEFAULT_RECORDING ((SDL_AudioDeviceID) 0xFFFFFFFEu) ### string, not number "((SDL_AudioDeviceID) 0xFFFFFFFEu)" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #define SDL_ALPHA_OPAQUE_FLOAT 1.0f ### string, not number "1.0f" */
/* #define SDL_ALPHA_TRANSPARENT_FLOAT 0.0f ### string, not number "0.0f" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #define SDL_PROP_SURFACE_SDR_WHITE_POINT_FLOAT              "SDL.surface.SDR_white_point" ### string, not number "\"SDL.surface.SDR_white_point\"" */
/* #define SDL_PROP_SURFACE_HDR_HEADROOM_FLOAT                 "SDL.surface.HDR_headroom" ### string, not number "\"SDL.surface.HDR_headroom\"" */
/* #define SDL_PROP_SURFACE_TONEMAP_OPERATOR_STRING            "SDL.surface.tonemap" ### string, not number "\"SDL.surface.tonemap\"" */
/* #define SDL_PROP_SURFACE_HOTSPOT_X_NUMBER                   "SDL.surface.hotspot.x" ### string, not number "\"SDL.surface.hotspot.x\"" */
/* #define SDL_PROP_SURFACE_HOTSPOT_Y_NUMBER                   "SDL.surface.hotspot.y" ### string, not number "\"SDL.surface.hotspot.y\"" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #define SDL_PROP_GLOBAL_VIDEO_WAYLAND_WL_DISPLAY_POINTER "SDL.video.wayland.wl_display" ### string, not number "\"SDL.video.wayland.wl_display\"" */
/* #define SDL_WINDOW_FULLSCREEN           SDL_UINT64_C(0x0000000000000001) ### string, not number "SDL_UINT64_C(0x0000000000000001)" */
/* #define SDL_WINDOW_OPENGL               SDL_UINT64_C(0x0000000000000002) ### string, not number "SDL_UINT64_C(0x0000000000000002)" */
/* #define SDL_WINDOW_OCCLUDED             SDL_UINT64_C(0x0000000000000004) ### string, not number "SDL_UINT64_C(0x0000000000000004)" */
/* #define SDL_WINDOW_HIDDEN               SDL_UINT64_C(0x0000000000000008) ### string, not number "SDL_UINT64_C(0x0000000000000008)" */
/* #define SDL_WINDOW_BORDERLESS           SDL_UINT64_C(0x0000000000000010) ### string, not number "SDL_UINT64_C(0x0000000000000010)" */
/* #define SDL_WINDOW_RESIZABLE            SDL_UINT64_C(0x0000000000000020) ### string, not number "SDL_UINT64_C(0x0000000000000020)" */
/* #define SDL_WINDOW_MINIMIZED            SDL_UINT64_C(0x0000000000000040) ### string, not number "SDL_UINT64_C(0x0000000000000040)" */
/* #define SDL_WINDOW_MAXIMIZED            SDL_UINT64_C(0x0000000000000080) ### string, not number "SDL_UINT64_C(0x0000000000000080)" */
/* #define SDL_WINDOW_MOUSE_GRABBED        SDL_UINT64_C(0x0000000000000100) ### string, not number "SDL_UINT64_C(0x0000000000000100)" */
/* #define SDL_WINDOW_INPUT_FOCUS          SDL_UINT64_C(0x0000000000000200) ### string, not number "SDL_UINT64_C(0x0000000000000200)" */
/* #define SDL_WINDOW_MOUSE_FOCUS          SDL_UINT64_C(0x0000000000000400) ### string, not number "SDL_UINT64_C(0x0000000000000400)" */
/* #define SDL_WINDOW_EXTERNAL             SDL_UINT64_C(0x0000000000000800) ### string, not number "SDL_UINT64_C(0x0000000000000800)" */
/* #define SDL_WINDOW_MODAL                SDL_UINT64_C(0x0000000000001000) ### string, not number "SDL_UINT64_C(0x0000000000001000)" */
/* #define SDL_WINDOW_HIGH_PIXEL_DENSITY   SDL_UINT64_C(0x0000000000002000) ### string, not number "SDL_UINT64_C(0x0000000000002000)" */
/* #define SDL_WINDOW_MOUSE_CAPTURE        SDL_UINT64_C(0x0000000000004000) ### string, not number "SDL_UINT64_C(0x0000000000004000)" */
/* #define SDL_WINDOW_MOUSE_RELATIVE_MODE  SDL_UINT64_C(0x0000000000008000) ### string, not number "SDL_UINT64_C(0x0000000000008000)" */
/* #define SDL_WINDOW_ALWAYS_ON_TOP        SDL_UINT64_C(0x0000000000010000) ### string, not number "SDL_UINT64_C(0x0000000000010000)" */
/* #define SDL_WINDOW_UTILITY              SDL_UINT64_C(0x0000000000020000) ### string, not number "SDL_UINT64_C(0x0000000000020000)" */
/* #define SDL_WINDOW_TOOLTIP              SDL_UINT64_C(0x0000000000040000) ### string, not number "SDL_UINT64_C(0x0000000000040000)" */
/* #define SDL_WINDOW_POPUP_MENU           SDL_UINT64_C(0x0000000000080000) ### string, not number "SDL_UINT64_C(0x0000000000080000)" */
/* #define SDL_WINDOW_KEYBOARD_GRABBED     SDL_UINT64_C(0x0000000000100000) ### string, not number "SDL_UINT64_C(0x0000000000100000)" */
/* #define SDL_WINDOW_VULKAN               SDL_UINT64_C(0x0000000010000000) ### string, not number "SDL_UINT64_C(0x0000000010000000)" */
/* #define SDL_WINDOW_METAL                SDL_UINT64_C(0x0000000020000000) ### string, not number "SDL_UINT64_C(0x0000000020000000)" */
/* #define SDL_WINDOW_TRANSPARENT          SDL_UINT64_C(0x0000000040000000) ### string, not number "SDL_UINT64_C(0x0000000040000000)" */
/* #define SDL_WINDOW_NOT_FOCUSABLE        SDL_UINT64_C(0x0000000080000000) ### string, not number "SDL_UINT64_C(0x0000000080000000)" */
/* #define SDL_WINDOWPOS_UNDEFINED         SDL_WINDOWPOS_UNDEFINED_DISPLAY(0) ### string, not number "SDL_WINDOWPOS_UNDEFINED_DISPLAY(0)" */
/* #define SDL_WINDOWPOS_CENTERED         SDL_WINDOWPOS_CENTERED_DISPLAY(0) ### string, not number "SDL_WINDOWPOS_CENTERED_DISPLAY(0)" */
/* #define SDL_PROP_DISPLAY_HDR_ENABLED_BOOLEAN             "SDL.display.HDR_enabled" ### string, not number "\"SDL.display.HDR_enabled\"" */
/* #define SDL_PROP_DISPLAY_KMSDRM_PANEL_ORIENTATION_NUMBER "SDL.display.KMSDRM.panel_orientation" ### string, not number "\"SDL.display.KMSDRM.panel_orientation\"" */
/* #define SDL_PROP_WINDOW_CREATE_ALWAYS_ON_TOP_BOOLEAN               "SDL.window.create.always_on_top" ### string, not number "\"SDL.window.create.always_on_top\"" */
/* #define SDL_PROP_WINDOW_CREATE_BORDERLESS_BOOLEAN                  "SDL.window.create.borderless" ### string, not number "\"SDL.window.create.borderless\"" */
/* #define SDL_PROP_WINDOW_CREATE_FOCUSABLE_BOOLEAN                   "SDL.window.create.focusable" ### string, not number "\"SDL.window.create.focusable\"" */
/* #define SDL_PROP_WINDOW_CREATE_EXTERNAL_GRAPHICS_CONTEXT_BOOLEAN   "SDL.window.create.external_graphics_context" ### string, not number "\"SDL.window.create.external_graphics_context\"" */
/* #define SDL_PROP_WINDOW_CREATE_FLAGS_NUMBER                        "SDL.window.create.flags" ### string, not number "\"SDL.window.create.flags\"" */
/* #define SDL_PROP_WINDOW_CREATE_FULLSCREEN_BOOLEAN                  "SDL.window.create.fullscreen" ### string, not number "\"SDL.window.create.fullscreen\"" */
/* #define SDL_PROP_WINDOW_CREATE_HEIGHT_NUMBER                       "SDL.window.create.height" ### string, not number "\"SDL.window.create.height\"" */
/* #define SDL_PROP_WINDOW_CREATE_HIDDEN_BOOLEAN                      "SDL.window.create.hidden" ### string, not number "\"SDL.window.create.hidden\"" */
/* #define SDL_PROP_WINDOW_CREATE_HIGH_PIXEL_DENSITY_BOOLEAN          "SDL.window.create.high_pixel_density" ### string, not number "\"SDL.window.create.high_pixel_density\"" */
/* #define SDL_PROP_WINDOW_CREATE_MAXIMIZED_BOOLEAN                   "SDL.window.create.maximized" ### string, not number "\"SDL.window.create.maximized\"" */
/* #define SDL_PROP_WINDOW_CREATE_MENU_BOOLEAN                        "SDL.window.create.menu" ### string, not number "\"SDL.window.create.menu\"" */
/* #define SDL_PROP_WINDOW_CREATE_METAL_BOOLEAN                       "SDL.window.create.metal" ### string, not number "\"SDL.window.create.metal\"" */
/* #define SDL_PROP_WINDOW_CREATE_MINIMIZED_BOOLEAN                   "SDL.window.create.minimized" ### string, not number "\"SDL.window.create.minimized\"" */
/* #define SDL_PROP_WINDOW_CREATE_MODAL_BOOLEAN                       "SDL.window.create.modal" ### string, not number "\"SDL.window.create.modal\"" */
/* #define SDL_PROP_WINDOW_CREATE_MOUSE_GRABBED_BOOLEAN               "SDL.window.create.mouse_grabbed" ### string, not number "\"SDL.window.create.mouse_grabbed\"" */
/* #define SDL_PROP_WINDOW_CREATE_OPENGL_BOOLEAN                      "SDL.window.create.opengl" ### string, not number "\"SDL.window.create.opengl\"" */
/* #define SDL_PROP_WINDOW_CREATE_PARENT_POINTER                      "SDL.window.create.parent" ### string, not number "\"SDL.window.create.parent\"" */
/* #define SDL_PROP_WINDOW_CREATE_RESIZABLE_BOOLEAN                   "SDL.window.create.resizable" ### string, not number "\"SDL.window.create.resizable\"" */
/* #define SDL_PROP_WINDOW_CREATE_TITLE_STRING                        "SDL.window.create.title" ### string, not number "\"SDL.window.create.title\"" */
/* #define SDL_PROP_WINDOW_CREATE_TRANSPARENT_BOOLEAN                 "SDL.window.create.transparent" ### string, not number "\"SDL.window.create.transparent\"" */
/* #define SDL_PROP_WINDOW_CREATE_TOOLTIP_BOOLEAN                     "SDL.window.create.tooltip" ### string, not number "\"SDL.window.create.tooltip\"" */
/* #define SDL_PROP_WINDOW_CREATE_UTILITY_BOOLEAN                     "SDL.window.create.utility" ### string, not number "\"SDL.window.create.utility\"" */
/* #define SDL_PROP_WINDOW_CREATE_VULKAN_BOOLEAN                      "SDL.window.create.vulkan" ### string, not number "\"SDL.window.create.vulkan\"" */
/* #define SDL_PROP_WINDOW_CREATE_WIDTH_NUMBER                        "SDL.window.create.width" ### string, not number "\"SDL.window.create.width\"" */
/* #define SDL_PROP_WINDOW_CREATE_X_NUMBER                            "SDL.window.create.x" ### string, not number "\"SDL.window.create.x\"" */
/* #define SDL_PROP_WINDOW_CREATE_Y_NUMBER                            "SDL.window.create.y" ### string, not number "\"SDL.window.create.y\"" */
/* #define SDL_PROP_WINDOW_CREATE_COCOA_WINDOW_POINTER                "SDL.window.create.cocoa.window" ### string, not number "\"SDL.window.create.cocoa.window\"" */
/* #define SDL_PROP_WINDOW_CREATE_COCOA_VIEW_POINTER                  "SDL.window.create.cocoa.view" ### string, not number "\"SDL.window.create.cocoa.view\"" */
/* #define SDL_PROP_WINDOW_CREATE_WAYLAND_SURFACE_ROLE_CUSTOM_BOOLEAN "SDL.window.create.wayland.surface_role_custom" ### string, not number "\"SDL.window.create.wayland.surface_role_custom\"" */
/* #define SDL_PROP_WINDOW_CREATE_WAYLAND_CREATE_EGL_WINDOW_BOOLEAN   "SDL.window.create.wayland.create_egl_window" ### string, not number "\"SDL.window.create.wayland.create_egl_window\"" */
/* #define SDL_PROP_WINDOW_CREATE_WAYLAND_WL_SURFACE_POINTER          "SDL.window.create.wayland.wl_surface" ### string, not number "\"SDL.window.create.wayland.wl_surface\"" */
/* #define SDL_PROP_WINDOW_CREATE_WIN32_HWND_POINTER                  "SDL.window.create.win32.hwnd" ### string, not number "\"SDL.window.create.win32.hwnd\"" */
/* #define SDL_PROP_WINDOW_CREATE_WIN32_PIXEL_FORMAT_HWND_POINTER     "SDL.window.create.win32.pixel_format_hwnd" ### string, not number "\"SDL.window.create.win32.pixel_format_hwnd\"" */
/* #define SDL_PROP_WINDOW_CREATE_X11_WINDOW_NUMBER                   "SDL.window.create.x11.window" ### string, not number "\"SDL.window.create.x11.window\"" */
/* #define SDL_PROP_WINDOW_SHAPE_POINTER                               "SDL.window.shape" ### string, not number "\"SDL.window.shape\"" */
/* #define SDL_PROP_WINDOW_HDR_ENABLED_BOOLEAN                         "SDL.window.HDR_enabled" ### string, not number "\"SDL.window.HDR_enabled\"" */
/* #define SDL_PROP_WINDOW_SDR_WHITE_LEVEL_FLOAT                       "SDL.window.SDR_white_level" ### string, not number "\"SDL.window.SDR_white_level\"" */
/* #define SDL_PROP_WINDOW_HDR_HEADROOM_FLOAT                          "SDL.window.HDR_headroom" ### string, not number "\"SDL.window.HDR_headroom\"" */
/* #define SDL_PROP_WINDOW_ANDROID_WINDOW_POINTER                      "SDL.window.android.window" ### string, not number "\"SDL.window.android.window\"" */
/* #define SDL_PROP_WINDOW_ANDROID_SURFACE_POINTER                     "SDL.window.android.surface" ### string, not number "\"SDL.window.android.surface\"" */
/* #define SDL_PROP_WINDOW_UIKIT_WINDOW_POINTER                        "SDL.window.uikit.window" ### string, not number "\"SDL.window.uikit.window\"" */
/* #define SDL_PROP_WINDOW_UIKIT_METAL_VIEW_TAG_NUMBER                 "SDL.window.uikit.metal_view_tag" ### string, not number "\"SDL.window.uikit.metal_view_tag\"" */
/* #define SDL_PROP_WINDOW_UIKIT_OPENGL_FRAMEBUFFER_NUMBER             "SDL.window.uikit.opengl.framebuffer" ### string, not number "\"SDL.window.uikit.opengl.framebuffer\"" */
/* #define SDL_PROP_WINDOW_UIKIT_OPENGL_RENDERBUFFER_NUMBER            "SDL.window.uikit.opengl.renderbuffer" ### string, not number "\"SDL.window.uikit.opengl.renderbuffer\"" */
/* #define SDL_PROP_WINDOW_UIKIT_OPENGL_RESOLVE_FRAMEBUFFER_NUMBER     "SDL.window.uikit.opengl.resolve_framebuffer" ### string, not number "\"SDL.window.uikit.opengl.resolve_framebuffer\"" */
/* #define SDL_PROP_WINDOW_KMSDRM_DEVICE_INDEX_NUMBER                  "SDL.window.kmsdrm.dev_index" ### string, not number "\"SDL.window.kmsdrm.dev_index\"" */
/* #define SDL_PROP_WINDOW_KMSDRM_DRM_FD_NUMBER                        "SDL.window.kmsdrm.drm_fd" ### string, not number "\"SDL.window.kmsdrm.drm_fd\"" */
/* #define SDL_PROP_WINDOW_KMSDRM_GBM_DEVICE_POINTER                   "SDL.window.kmsdrm.gbm_dev" ### string, not number "\"SDL.window.kmsdrm.gbm_dev\"" */
/* #define SDL_PROP_WINDOW_COCOA_WINDOW_POINTER                        "SDL.window.cocoa.window" ### string, not number "\"SDL.window.cocoa.window\"" */
/* #define SDL_PROP_WINDOW_COCOA_METAL_VIEW_TAG_NUMBER                 "SDL.window.cocoa.metal_view_tag" ### string, not number "\"SDL.window.cocoa.metal_view_tag\"" */
/* #define SDL_PROP_WINDOW_OPENVR_OVERLAY_ID                           "SDL.window.openvr.overlay_id" ### string, not number "\"SDL.window.openvr.overlay_id\"" */
/* #define SDL_PROP_WINDOW_VIVANTE_DISPLAY_POINTER                     "SDL.window.vivante.display" ### string, not number "\"SDL.window.vivante.display\"" */
/* #define SDL_PROP_WINDOW_VIVANTE_WINDOW_POINTER                      "SDL.window.vivante.window" ### string, not number "\"SDL.window.vivante.window\"" */
/* #define SDL_PROP_WINDOW_VIVANTE_SURFACE_POINTER                     "SDL.window.vivante.surface" ### string, not number "\"SDL.window.vivante.surface\"" */
/* #define SDL_PROP_WINDOW_WIN32_HWND_POINTER                          "SDL.window.win32.hwnd" ### string, not number "\"SDL.window.win32.hwnd\"" */
/* #define SDL_PROP_WINDOW_WIN32_HDC_POINTER                           "SDL.window.win32.hdc" ### string, not number "\"SDL.window.win32.hdc\"" */
/* #define SDL_PROP_WINDOW_WIN32_INSTANCE_POINTER                      "SDL.window.win32.instance" ### string, not number "\"SDL.window.win32.instance\"" */
/* #define SDL_PROP_WINDOW_WAYLAND_DISPLAY_POINTER                     "SDL.window.wayland.display" ### string, not number "\"SDL.window.wayland.display\"" */
/* #define SDL_PROP_WINDOW_WAYLAND_SURFACE_POINTER                     "SDL.window.wayland.surface" ### string, not number "\"SDL.window.wayland.surface\"" */
/* #define SDL_PROP_WINDOW_WAYLAND_VIEWPORT_POINTER                    "SDL.window.wayland.viewport" ### string, not number "\"SDL.window.wayland.viewport\"" */
/* #define SDL_PROP_WINDOW_WAYLAND_EGL_WINDOW_POINTER                  "SDL.window.wayland.egl_window" ### string, not number "\"SDL.window.wayland.egl_window\"" */
/* #define SDL_PROP_WINDOW_WAYLAND_XDG_SURFACE_POINTER                 "SDL.window.wayland.xdg_surface" ### string, not number "\"SDL.window.wayland.xdg_surface\"" */
/* #define SDL_PROP_WINDOW_WAYLAND_XDG_TOPLEVEL_POINTER                "SDL.window.wayland.xdg_toplevel" ### string, not number "\"SDL.window.wayland.xdg_toplevel\"" */
/* #define SDL_PROP_WINDOW_WAYLAND_XDG_TOPLEVEL_EXPORT_HANDLE_STRING   "SDL.window.wayland.xdg_toplevel_export_handle" ### string, not number "\"SDL.window.wayland.xdg_toplevel_export_handle\"" */
/* #define SDL_PROP_WINDOW_WAYLAND_XDG_POPUP_POINTER                   "SDL.window.wayland.xdg_popup" ### string, not number "\"SDL.window.wayland.xdg_popup\"" */
/* #define SDL_PROP_WINDOW_WAYLAND_XDG_POSITIONER_POINTER              "SDL.window.wayland.xdg_positioner" ### string, not number "\"SDL.window.wayland.xdg_positioner\"" */
/* #define SDL_PROP_WINDOW_X11_DISPLAY_POINTER                         "SDL.window.x11.display" ### string, not number "\"SDL.window.x11.display\"" */
/* #define SDL_PROP_WINDOW_X11_SCREEN_NUMBER                           "SDL.window.x11.screen" ### string, not number "\"SDL.window.x11.screen\"" */
/* #define SDL_PROP_WINDOW_X11_WINDOW_NUMBER                           "SDL.window.x11.window" ### string, not number "\"SDL.window.x11.window\"" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #define SDL_PROP_FILE_DIALOG_FILTERS_POINTER     "SDL.filedialog.filters" ### string, not number "\"SDL.filedialog.filters\"" */
/* #define SDL_PROP_FILE_DIALOG_NFILTERS_NUMBER     "SDL.filedialog.nfilters" ### string, not number "\"SDL.filedialog.nfilters\"" */
/* #define SDL_PROP_FILE_DIALOG_WINDOW_POINTER      "SDL.filedialog.window" ### string, not number "\"SDL.filedialog.window\"" */
/* #define SDL_PROP_FILE_DIALOG_LOCATION_STRING     "SDL.filedialog.location" ### string, not number "\"SDL.filedialog.location\"" */
/* #define SDL_PROP_FILE_DIALOG_MANY_BOOLEAN        "SDL.filedialog.many" ### string, not number "\"SDL.filedialog.many\"" */
/* #define SDL_PROP_FILE_DIALOG_TITLE_STRING        "SDL.filedialog.title" ### string, not number "\"SDL.filedialog.title\"" */
/* #define SDL_PROP_FILE_DIALOG_ACCEPT_STRING       "SDL.filedialog.accept" ### string, not number "\"SDL.filedialog.accept\"" */
/* #define SDL_PROP_FILE_DIALOG_CANCEL_STRING       "SDL.filedialog.cancel" ### string, not number "\"SDL.filedialog.cancel\"" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #define SDL_STANDARD_GRAVITY    9.80665f ### string, not number "9.80665f" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #define SDL_PROP_JOYSTICK_CAP_MONO_LED_BOOLEAN          "SDL.joystick.cap.mono_led" ### string, not number "\"SDL.joystick.cap.mono_led\"" */
/* #define SDL_PROP_JOYSTICK_CAP_RGB_LED_BOOLEAN           "SDL.joystick.cap.rgb_led" ### string, not number "\"SDL.joystick.cap.rgb_led\"" */
/* #define SDL_PROP_JOYSTICK_CAP_PLAYER_LED_BOOLEAN        "SDL.joystick.cap.player_led" ### string, not number "\"SDL.joystick.cap.player_led\"" */
/* #define SDL_PROP_JOYSTICK_CAP_RUMBLE_BOOLEAN            "SDL.joystick.cap.rumble" ### string, not number "\"SDL.joystick.cap.rumble\"" */
/* #define SDL_PROP_JOYSTICK_CAP_TRIGGER_RUMBLE_BOOLEAN    "SDL.joystick.cap.trigger_rumble" ### string, not number "\"SDL.joystick.cap.trigger_rumble\"" */
/* #define SDL_HAT_RIGHTUP     (SDL_HAT_RIGHT|SDL_HAT_UP) ### string, not number "(SDL_HAT_RIGHT|SDL_HAT_UP)" */
/* #define SDL_HAT_RIGHTDOWN   (SDL_HAT_RIGHT|SDL_HAT_DOWN) ### string, not number "(SDL_HAT_RIGHT|SDL_HAT_DOWN)" */
/* #define SDL_HAT_LEFTUP      (SDL_HAT_LEFT|SDL_HAT_UP) ### string, not number "(SDL_HAT_LEFT|SDL_HAT_UP)" */
/* #define SDL_HAT_LEFTDOWN    (SDL_HAT_LEFT|SDL_HAT_DOWN) ### string, not number "(SDL_HAT_LEFT|SDL_HAT_DOWN)" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #define SDL_PROP_GAMEPAD_CAP_MONO_LED_BOOLEAN       SDL_PROP_JOYSTICK_CAP_MONO_LED_BOOLEAN ### string, not number "SDL_PROP_JOYSTICK_CAP_MONO_LED_BOOLEAN" */
/* #define SDL_PROP_GAMEPAD_CAP_RGB_LED_BOOLEAN        SDL_PROP_JOYSTICK_CAP_RGB_LED_BOOLEAN ### string, not number "SDL_PROP_JOYSTICK_CAP_RGB_LED_BOOLEAN" */
/* #define SDL_PROP_GAMEPAD_CAP_PLAYER_LED_BOOLEAN     SDL_PROP_JOYSTICK_CAP_PLAYER_LED_BOOLEAN ### string, not number "SDL_PROP_JOYSTICK_CAP_PLAYER_LED_BOOLEAN" */
/* #define SDL_PROP_GAMEPAD_CAP_RUMBLE_BOOLEAN         SDL_PROP_JOYSTICK_CAP_RUMBLE_BOOLEAN ### string, not number "SDL_PROP_JOYSTICK_CAP_RUMBLE_BOOLEAN" */
/* #define SDL_PROP_GAMEPAD_CAP_TRIGGER_RUMBLE_BOOLEAN SDL_PROP_JOYSTICK_CAP_TRIGGER_RUMBLE_BOOLEAN ### string, not number "SDL_PROP_JOYSTICK_CAP_TRIGGER_RUMBLE_BOOLEAN" */
/* #define SDLK_EXTENDED_MASK          (1u << 29) ### string, not number "(1u << 29)" */
/* #define SDLK_SCANCODE_MASK          (1u << 30) ### string, not number "(1u << 30)" */
/* #define SDL_KMOD_CTRL   (SDL_KMOD_LCTRL | SDL_KMOD_RCTRL) ### string, not number "(SDL_KMOD_LCTRL | SDL_KMOD_RCTRL)" */
/* #define SDL_KMOD_SHIFT  (SDL_KMOD_LSHIFT | SDL_KMOD_RSHIFT) ### string, not number "(SDL_KMOD_LSHIFT | SDL_KMOD_RSHIFT)" */
/* #define SDL_KMOD_ALT    (SDL_KMOD_LALT | SDL_KMOD_RALT) ### string, not number "(SDL_KMOD_LALT | SDL_KMOD_RALT)" */
/* #define SDL_KMOD_GUI    (SDL_KMOD_LGUI | SDL_KMOD_RGUI) ### string, not number "(SDL_KMOD_LGUI | SDL_KMOD_RGUI)" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #define SDL_PROP_TEXTINPUT_TYPE_NUMBER                  "SDL.textinput.type" ### string, not number "\"SDL.textinput.type\"" */
/* #define SDL_PROP_TEXTINPUT_CAPITALIZATION_NUMBER        "SDL.textinput.capitalization" ### string, not number "\"SDL.textinput.capitalization\"" */
/* #define SDL_PROP_TEXTINPUT_AUTOCORRECT_BOOLEAN          "SDL.textinput.autocorrect" ### string, not number "\"SDL.textinput.autocorrect\"" */
/* #define SDL_PROP_TEXTINPUT_MULTILINE_BOOLEAN            "SDL.textinput.multiline" ### string, not number "\"SDL.textinput.multiline\"" */
/* #define SDL_PROP_TEXTINPUT_ANDROID_INPUTTYPE_NUMBER     "SDL.textinput.android.inputtype" ### string, not number "\"SDL.textinput.android.inputtype\"" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #define SDL_BUTTON_LMASK    SDL_BUTTON_MASK(SDL_BUTTON_LEFT) ### string, not number "SDL_BUTTON_MASK(SDL_BUTTON_LEFT)" */
/* #define SDL_BUTTON_MMASK    SDL_BUTTON_MASK(SDL_BUTTON_MIDDLE) ### string, not number "SDL_BUTTON_MASK(SDL_BUTTON_MIDDLE)" */
/* #define SDL_BUTTON_RMASK    SDL_BUTTON_MASK(SDL_BUTTON_RIGHT) ### string, not number "SDL_BUTTON_MASK(SDL_BUTTON_RIGHT)" */
/* #define SDL_BUTTON_X1MASK   SDL_BUTTON_MASK(SDL_BUTTON_X1) ### string, not number "SDL_BUTTON_MASK(SDL_BUTTON_X1)" */
/* #define SDL_BUTTON_X2MASK   SDL_BUTTON_MASK(SDL_BUTTON_X2) ### string, not number "SDL_BUTTON_MASK(SDL_BUTTON_X2)" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #define SDL_PEN_INPUT_DOWN       (1u << 0) ### string, not number "(1u << 0)" */
/* #define SDL_PEN_INPUT_BUTTON_1   (1u << 1) ### string, not number "(1u << 1)" */
/* #define SDL_PEN_INPUT_BUTTON_2   (1u << 2) ### string, not number "(1u << 2)" */
/* #define SDL_PEN_INPUT_BUTTON_3   (1u << 3) ### string, not number "(1u << 3)" */
/* #define SDL_PEN_INPUT_BUTTON_4   (1u << 4) ### string, not number "(1u << 4)" */
/* #define SDL_PEN_INPUT_BUTTON_5   (1u << 5) ### string, not number "(1u << 5)" */
/* #define SDL_PEN_INPUT_ERASER_TIP (1u << 30) ### string, not number "(1u << 30)" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #define SDL_GLOB_CASEINSENSITIVE (1u << 0) ### string, not number "(1u << 0)" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #define SDL_GPU_TEXTUREUSAGE_SAMPLER                                 (1u << 0) ### string, not number "(1u << 0)" */
/* #define SDL_GPU_TEXTUREUSAGE_COLOR_TARGET                            (1u << 1) ### string, not number "(1u << 1)" */
/* #define SDL_GPU_TEXTUREUSAGE_DEPTH_STENCIL_TARGET                    (1u << 2) ### string, not number "(1u << 2)" */
/* #define SDL_GPU_TEXTUREUSAGE_GRAPHICS_STORAGE_READ                   (1u << 3) ### string, not number "(1u << 3)" */
/* #define SDL_GPU_TEXTUREUSAGE_COMPUTE_STORAGE_READ                    (1u << 4) ### string, not number "(1u << 4)" */
/* #define SDL_GPU_TEXTUREUSAGE_COMPUTE_STORAGE_WRITE                   (1u << 5) ### string, not number "(1u << 5)" */
/* #define SDL_GPU_TEXTUREUSAGE_COMPUTE_STORAGE_SIMULTANEOUS_READ_WRITE (1u << 6) ### string, not number "(1u << 6)" */
/* #define SDL_GPU_BUFFERUSAGE_VERTEX                                  (1u << 0) ### string, not number "(1u << 0)" */
/* #define SDL_GPU_BUFFERUSAGE_INDEX                                   (1u << 1) ### string, not number "(1u << 1)" */
/* #define SDL_GPU_BUFFERUSAGE_INDIRECT                                (1u << 2) ### string, not number "(1u << 2)" */
/* #define SDL_GPU_BUFFERUSAGE_GRAPHICS_STORAGE_READ                   (1u << 3) ### string, not number "(1u << 3)" */
/* #define SDL_GPU_BUFFERUSAGE_COMPUTE_STORAGE_READ                    (1u << 4) ### string, not number "(1u << 4)" */
/* #define SDL_GPU_BUFFERUSAGE_COMPUTE_STORAGE_WRITE                   (1u << 5) ### string, not number "(1u << 5)" */
/* #define SDL_GPU_SHADERFORMAT_PRIVATE  (1u << 0) ### string, not number "(1u << 0)" */
/* #define SDL_GPU_SHADERFORMAT_SPIRV    (1u << 1) ### string, not number "(1u << 1)" */
/* #define SDL_GPU_SHADERFORMAT_DXBC     (1u << 2) ### string, not number "(1u << 2)" */
/* #define SDL_GPU_SHADERFORMAT_DXIL     (1u << 3) ### string, not number "(1u << 3)" */
/* #define SDL_GPU_SHADERFORMAT_MSL      (1u << 4) ### string, not number "(1u << 4)" */
/* #define SDL_GPU_SHADERFORMAT_METALLIB (1u << 5) ### string, not number "(1u << 5)" */
/* #define SDL_GPU_COLORCOMPONENT_R (1u << 0) ### string, not number "(1u << 0)" */
/* #define SDL_GPU_COLORCOMPONENT_G (1u << 1) ### string, not number "(1u << 1)" */
/* #define SDL_GPU_COLORCOMPONENT_B (1u << 2) ### string, not number "(1u << 2)" */
/* #define SDL_GPU_COLORCOMPONENT_A (1u << 3) ### string, not number "(1u << 3)" */
/* #define SDL_PROP_GPU_DEVICE_CREATE_DEBUGMODE_BOOLEAN          "SDL.gpu.device.create.debugmode" ### string, not number "\"SDL.gpu.device.create.debugmode\"" */
/* #define SDL_PROP_GPU_DEVICE_CREATE_PREFERLOWPOWER_BOOLEAN     "SDL.gpu.device.create.preferlowpower" ### string, not number "\"SDL.gpu.device.create.preferlowpower\"" */
/* #define SDL_PROP_GPU_DEVICE_CREATE_NAME_STRING                "SDL.gpu.device.create.name" ### string, not number "\"SDL.gpu.device.create.name\"" */
/* #define SDL_PROP_GPU_DEVICE_CREATE_SHADERS_PRIVATE_BOOLEAN    "SDL.gpu.device.create.shaders.private" ### string, not number "\"SDL.gpu.device.create.shaders.private\"" */
/* #define SDL_PROP_GPU_DEVICE_CREATE_SHADERS_SPIRV_BOOLEAN      "SDL.gpu.device.create.shaders.spirv" ### string, not number "\"SDL.gpu.device.create.shaders.spirv\"" */
/* #define SDL_PROP_GPU_DEVICE_CREATE_SHADERS_DXBC_BOOLEAN       "SDL.gpu.device.create.shaders.dxbc" ### string, not number "\"SDL.gpu.device.create.shaders.dxbc\"" */
/* #define SDL_PROP_GPU_DEVICE_CREATE_SHADERS_DXIL_BOOLEAN       "SDL.gpu.device.create.shaders.dxil" ### string, not number "\"SDL.gpu.device.create.shaders.dxil\"" */
/* #define SDL_PROP_GPU_DEVICE_CREATE_SHADERS_MSL_BOOLEAN        "SDL.gpu.device.create.shaders.msl" ### string, not number "\"SDL.gpu.device.create.shaders.msl\"" */
/* #define SDL_PROP_GPU_DEVICE_CREATE_SHADERS_METALLIB_BOOLEAN   "SDL.gpu.device.create.shaders.metallib" ### string, not number "\"SDL.gpu.device.create.shaders.metallib\"" */
/* #define SDL_PROP_GPU_DEVICE_CREATE_D3D12_SEMANTIC_NAME_STRING "SDL.gpu.device.create.d3d12.semantic" ### string, not number "\"SDL.gpu.device.create.d3d12.semantic\"" */
/* #define SDL_PROP_GPU_COMPUTEPIPELINE_CREATE_NAME_STRING "SDL.gpu.computepipeline.create.name" ### string, not number "\"SDL.gpu.computepipeline.create.name\"" */
/* #define SDL_PROP_GPU_GRAPHICSPIPELINE_CREATE_NAME_STRING "SDL.gpu.graphicspipeline.create.name" ### string, not number "\"SDL.gpu.graphicspipeline.create.name\"" */
/* #define SDL_PROP_GPU_SAMPLER_CREATE_NAME_STRING "SDL.gpu.sampler.create.name" ### string, not number "\"SDL.gpu.sampler.create.name\"" */
/* #define SDL_PROP_GPU_SHADER_CREATE_NAME_STRING "SDL.gpu.shader.create.name" ### string, not number "\"SDL.gpu.shader.create.name\"" */
/* #define SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_R_FLOAT       "SDL.gpu.texture.create.d3d12.clear.r" ### string, not number "\"SDL.gpu.texture.create.d3d12.clear.r\"" */
/* #define SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_G_FLOAT       "SDL.gpu.texture.create.d3d12.clear.g" ### string, not number "\"SDL.gpu.texture.create.d3d12.clear.g\"" */
/* #define SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_B_FLOAT       "SDL.gpu.texture.create.d3d12.clear.b" ### string, not number "\"SDL.gpu.texture.create.d3d12.clear.b\"" */
/* #define SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_A_FLOAT       "SDL.gpu.texture.create.d3d12.clear.a" ### string, not number "\"SDL.gpu.texture.create.d3d12.clear.a\"" */
/* #define SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_DEPTH_FLOAT   "SDL.gpu.texture.create.d3d12.clear.depth" ### string, not number "\"SDL.gpu.texture.create.d3d12.clear.depth\"" */
/* #define SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_STENCIL_UINT8 "SDL.gpu.texture.create.d3d12.clear.stencil" ### string, not number "\"SDL.gpu.texture.create.d3d12.clear.stencil\"" */
/* #define SDL_PROP_GPU_TEXTURE_CREATE_NAME_STRING               "SDL.gpu.texture.create.name" ### string, not number "\"SDL.gpu.texture.create.name\"" */
/* #define SDL_PROP_GPU_BUFFER_CREATE_NAME_STRING "SDL.gpu.buffer.create.name" ### string, not number "\"SDL.gpu.buffer.create.name\"" */
/* #define SDL_PROP_GPU_TRANSFERBUFFER_CREATE_NAME_STRING "SDL.gpu.transferbuffer.create.name" ### string, not number "\"SDL.gpu.transferbuffer.create.name\"" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #define SDL_HAPTIC_CONSTANT     (1u<<0) ### string, not number "(1u<<0)" */
/* #define SDL_HAPTIC_SINE         (1u<<1) ### string, not number "(1u<<1)" */
/* #define SDL_HAPTIC_SQUARE       (1u<<2) ### string, not number "(1u<<2)" */
/* #define SDL_HAPTIC_TRIANGLE     (1u<<3) ### string, not number "(1u<<3)" */
/* #define SDL_HAPTIC_SAWTOOTHUP   (1u<<4) ### string, not number "(1u<<4)" */
/* #define SDL_HAPTIC_SAWTOOTHDOWN (1u<<5) ### string, not number "(1u<<5)" */
/* #define SDL_HAPTIC_RAMP         (1u<<6) ### string, not number "(1u<<6)" */
/* #define SDL_HAPTIC_SPRING       (1u<<7) ### string, not number "(1u<<7)" */
/* #define SDL_HAPTIC_DAMPER       (1u<<8) ### string, not number "(1u<<8)" */
/* #define SDL_HAPTIC_INERTIA      (1u<<9) ### string, not number "(1u<<9)" */
/* #define SDL_HAPTIC_FRICTION     (1u<<10) ### string, not number "(1u<<10)" */
/* #define SDL_HAPTIC_LEFTRIGHT    (1u<<11) ### string, not number "(1u<<11)" */
/* #define SDL_HAPTIC_RESERVED1    (1u<<12) ### string, not number "(1u<<12)" */
/* #define SDL_HAPTIC_RESERVED2    (1u<<13) ### string, not number "(1u<<13)" */
/* #define SDL_HAPTIC_RESERVED3    (1u<<14) ### string, not number "(1u<<14)" */
/* #define SDL_HAPTIC_CUSTOM       (1u<<15) ### string, not number "(1u<<15)" */
/* #define SDL_HAPTIC_GAIN       (1u<<16) ### string, not number "(1u<<16)" */
/* #define SDL_HAPTIC_AUTOCENTER (1u<<17) ### string, not number "(1u<<17)" */
/* #define SDL_HAPTIC_STATUS     (1u<<18) ### string, not number "(1u<<18)" */
/* #define SDL_HAPTIC_PAUSE      (1u<<19) ### string, not number "(1u<<19)" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #define SDL_HINT_ALLOW_ALT_TAB_WHILE_GRABBED "SDL_ALLOW_ALT_TAB_WHILE_GRABBED" ### string, not number "\"SDL_ALLOW_ALT_TAB_WHILE_GRABBED\"" */
/* #define SDL_HINT_ANDROID_ALLOW_RECREATE_ACTIVITY "SDL_ANDROID_ALLOW_RECREATE_ACTIVITY" ### string, not number "\"SDL_ANDROID_ALLOW_RECREATE_ACTIVITY\"" */
/* #define SDL_HINT_ANDROID_BLOCK_ON_PAUSE "SDL_ANDROID_BLOCK_ON_PAUSE" ### string, not number "\"SDL_ANDROID_BLOCK_ON_PAUSE\"" */
/* #define SDL_HINT_ANDROID_LOW_LATENCY_AUDIO "SDL_ANDROID_LOW_LATENCY_AUDIO" ### string, not number "\"SDL_ANDROID_LOW_LATENCY_AUDIO\"" */
/* #define SDL_HINT_ANDROID_TRAP_BACK_BUTTON "SDL_ANDROID_TRAP_BACK_BUTTON" ### string, not number "\"SDL_ANDROID_TRAP_BACK_BUTTON\"" */
/* #define SDL_HINT_APP_ID "SDL_APP_ID" ### string, not number "\"SDL_APP_ID\"" */
/* #define SDL_HINT_APP_NAME "SDL_APP_NAME" ### string, not number "\"SDL_APP_NAME\"" */
/* #define SDL_HINT_APPLE_TV_CONTROLLER_UI_EVENTS "SDL_APPLE_TV_CONTROLLER_UI_EVENTS" ### string, not number "\"SDL_APPLE_TV_CONTROLLER_UI_EVENTS\"" */
/* #define SDL_HINT_APPLE_TV_REMOTE_ALLOW_ROTATION "SDL_APPLE_TV_REMOTE_ALLOW_ROTATION" ### string, not number "\"SDL_APPLE_TV_REMOTE_ALLOW_ROTATION\"" */
/* #define SDL_HINT_AUDIO_ALSA_DEFAULT_DEVICE "SDL_AUDIO_ALSA_DEFAULT_DEVICE" ### string, not number "\"SDL_AUDIO_ALSA_DEFAULT_DEVICE\"" */
/* #define SDL_HINT_AUDIO_ALSA_DEFAULT_PLAYBACK_DEVICE "SDL_AUDIO_ALSA_DEFAULT_PLAYBACK_DEVICE" ### string, not number "\"SDL_AUDIO_ALSA_DEFAULT_PLAYBACK_DEVICE\"" */
/* #define SDL_HINT_AUDIO_ALSA_DEFAULT_RECORDING_DEVICE "SDL_AUDIO_ALSA_DEFAULT_RECORDING_DEVICE" ### string, not number "\"SDL_AUDIO_ALSA_DEFAULT_RECORDING_DEVICE\"" */
/* #define SDL_HINT_AUDIO_CATEGORY "SDL_AUDIO_CATEGORY" ### string, not number "\"SDL_AUDIO_CATEGORY\"" */
/* #define SDL_HINT_AUDIO_CHANNELS "SDL_AUDIO_CHANNELS" ### string, not number "\"SDL_AUDIO_CHANNELS\"" */
/* #define SDL_HINT_AUDIO_DEVICE_APP_ICON_NAME "SDL_AUDIO_DEVICE_APP_ICON_NAME" ### string, not number "\"SDL_AUDIO_DEVICE_APP_ICON_NAME\"" */
/* #define SDL_HINT_AUDIO_DEVICE_SAMPLE_FRAMES "SDL_AUDIO_DEVICE_SAMPLE_FRAMES" ### string, not number "\"SDL_AUDIO_DEVICE_SAMPLE_FRAMES\"" */
/* #define SDL_HINT_AUDIO_DEVICE_STREAM_NAME "SDL_AUDIO_DEVICE_STREAM_NAME" ### string, not number "\"SDL_AUDIO_DEVICE_STREAM_NAME\"" */
/* #define SDL_HINT_AUDIO_DEVICE_STREAM_ROLE "SDL_AUDIO_DEVICE_STREAM_ROLE" ### string, not number "\"SDL_AUDIO_DEVICE_STREAM_ROLE\"" */
/* #define SDL_HINT_AUDIO_DISK_INPUT_FILE "SDL_AUDIO_DISK_INPUT_FILE" ### string, not number "\"SDL_AUDIO_DISK_INPUT_FILE\"" */
/* #define SDL_HINT_AUDIO_DISK_OUTPUT_FILE "SDL_AUDIO_DISK_OUTPUT_FILE" ### string, not number "\"SDL_AUDIO_DISK_OUTPUT_FILE\"" */
/* #define SDL_HINT_AUDIO_DISK_TIMESCALE "SDL_AUDIO_DISK_TIMESCALE" ### string, not number "\"SDL_AUDIO_DISK_TIMESCALE\"" */
/* #define SDL_HINT_AUDIO_DRIVER "SDL_AUDIO_DRIVER" ### string, not number "\"SDL_AUDIO_DRIVER\"" */
/* #define SDL_HINT_AUDIO_DUMMY_TIMESCALE "SDL_AUDIO_DUMMY_TIMESCALE" ### string, not number "\"SDL_AUDIO_DUMMY_TIMESCALE\"" */
/* #define SDL_HINT_AUDIO_FORMAT "SDL_AUDIO_FORMAT" ### string, not number "\"SDL_AUDIO_FORMAT\"" */
/* #define SDL_HINT_AUDIO_FREQUENCY "SDL_AUDIO_FREQUENCY" ### string, not number "\"SDL_AUDIO_FREQUENCY\"" */
/* #define SDL_HINT_AUDIO_INCLUDE_MONITORS "SDL_AUDIO_INCLUDE_MONITORS" ### string, not number "\"SDL_AUDIO_INCLUDE_MONITORS\"" */
/* #define SDL_HINT_AUTO_UPDATE_JOYSTICKS "SDL_AUTO_UPDATE_JOYSTICKS" ### string, not number "\"SDL_AUTO_UPDATE_JOYSTICKS\"" */
/* #define SDL_HINT_AUTO_UPDATE_SENSORS "SDL_AUTO_UPDATE_SENSORS" ### string, not number "\"SDL_AUTO_UPDATE_SENSORS\"" */
/* #define SDL_HINT_BMP_SAVE_LEGACY_FORMAT "SDL_BMP_SAVE_LEGACY_FORMAT" ### string, not number "\"SDL_BMP_SAVE_LEGACY_FORMAT\"" */
/* #define SDL_HINT_CAMERA_DRIVER "SDL_CAMERA_DRIVER" ### string, not number "\"SDL_CAMERA_DRIVER\"" */
/* #define SDL_HINT_CPU_FEATURE_MASK "SDL_CPU_FEATURE_MASK" ### string, not number "\"SDL_CPU_FEATURE_MASK\"" */
/* #define SDL_HINT_JOYSTICK_DIRECTINPUT "SDL_JOYSTICK_DIRECTINPUT" ### string, not number "\"SDL_JOYSTICK_DIRECTINPUT\"" */
/* #define SDL_HINT_FILE_DIALOG_DRIVER "SDL_FILE_DIALOG_DRIVER" ### string, not number "\"SDL_FILE_DIALOG_DRIVER\"" */
/* #define SDL_HINT_DISPLAY_USABLE_BOUNDS "SDL_DISPLAY_USABLE_BOUNDS" ### string, not number "\"SDL_DISPLAY_USABLE_BOUNDS\"" */
/* #define SDL_HINT_EMSCRIPTEN_ASYNCIFY "SDL_EMSCRIPTEN_ASYNCIFY" ### string, not number "\"SDL_EMSCRIPTEN_ASYNCIFY\"" */
/* #define SDL_HINT_EMSCRIPTEN_CANVAS_SELECTOR "SDL_EMSCRIPTEN_CANVAS_SELECTOR" ### string, not number "\"SDL_EMSCRIPTEN_CANVAS_SELECTOR\"" */
/* #define SDL_HINT_EMSCRIPTEN_KEYBOARD_ELEMENT "SDL_EMSCRIPTEN_KEYBOARD_ELEMENT" ### string, not number "\"SDL_EMSCRIPTEN_KEYBOARD_ELEMENT\"" */
/* #define SDL_HINT_ENABLE_SCREEN_KEYBOARD "SDL_ENABLE_SCREEN_KEYBOARD" ### string, not number "\"SDL_ENABLE_SCREEN_KEYBOARD\"" */
/* #define SDL_HINT_EVDEV_DEVICES "SDL_EVDEV_DEVICES" ### string, not number "\"SDL_EVDEV_DEVICES\"" */
/* #define SDL_HINT_EVENT_LOGGING "SDL_EVENT_LOGGING" ### string, not number "\"SDL_EVENT_LOGGING\"" */
/* #define SDL_HINT_FORCE_RAISEWINDOW "SDL_FORCE_RAISEWINDOW" ### string, not number "\"SDL_FORCE_RAISEWINDOW\"" */
/* #define SDL_HINT_FRAMEBUFFER_ACCELERATION "SDL_FRAMEBUFFER_ACCELERATION" ### string, not number "\"SDL_FRAMEBUFFER_ACCELERATION\"" */
/* #define SDL_HINT_GAMECONTROLLERCONFIG "SDL_GAMECONTROLLERCONFIG" ### string, not number "\"SDL_GAMECONTROLLERCONFIG\"" */
/* #define SDL_HINT_GAMECONTROLLERCONFIG_FILE "SDL_GAMECONTROLLERCONFIG_FILE" ### string, not number "\"SDL_GAMECONTROLLERCONFIG_FILE\"" */
/* #define SDL_HINT_GAMECONTROLLERTYPE "SDL_GAMECONTROLLERTYPE" ### string, not number "\"SDL_GAMECONTROLLERTYPE\"" */
/* #define SDL_HINT_GAMECONTROLLER_IGNORE_DEVICES "SDL_GAMECONTROLLER_IGNORE_DEVICES" ### string, not number "\"SDL_GAMECONTROLLER_IGNORE_DEVICES\"" */
/* #define SDL_HINT_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT "SDL_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT" ### string, not number "\"SDL_GAMECONTROLLER_IGNORE_DEVICES_EXCEPT\"" */
/* #define SDL_HINT_GAMECONTROLLER_SENSOR_FUSION "SDL_GAMECONTROLLER_SENSOR_FUSION" ### string, not number "\"SDL_GAMECONTROLLER_SENSOR_FUSION\"" */
/* #define SDL_HINT_GDK_TEXTINPUT_DEFAULT_TEXT "SDL_GDK_TEXTINPUT_DEFAULT_TEXT" ### string, not number "\"SDL_GDK_TEXTINPUT_DEFAULT_TEXT\"" */
/* #define SDL_HINT_GDK_TEXTINPUT_DESCRIPTION "SDL_GDK_TEXTINPUT_DESCRIPTION" ### string, not number "\"SDL_GDK_TEXTINPUT_DESCRIPTION\"" */
/* #define SDL_HINT_GDK_TEXTINPUT_MAX_LENGTH "SDL_GDK_TEXTINPUT_MAX_LENGTH" ### string, not number "\"SDL_GDK_TEXTINPUT_MAX_LENGTH\"" */
/* #define SDL_HINT_GDK_TEXTINPUT_SCOPE "SDL_GDK_TEXTINPUT_SCOPE" ### string, not number "\"SDL_GDK_TEXTINPUT_SCOPE\"" */
/* #define SDL_HINT_GDK_TEXTINPUT_TITLE "SDL_GDK_TEXTINPUT_TITLE" ### string, not number "\"SDL_GDK_TEXTINPUT_TITLE\"" */
/* #define SDL_HINT_HIDAPI_LIBUSB "SDL_HIDAPI_LIBUSB" ### string, not number "\"SDL_HIDAPI_LIBUSB\"" */
/* #define SDL_HINT_HIDAPI_LIBUSB_WHITELIST "SDL_HIDAPI_LIBUSB_WHITELIST" ### string, not number "\"SDL_HIDAPI_LIBUSB_WHITELIST\"" */
/* #define SDL_HINT_HIDAPI_UDEV "SDL_HIDAPI_UDEV" ### string, not number "\"SDL_HIDAPI_UDEV\"" */
/* #define SDL_HINT_GPU_DRIVER "SDL_GPU_DRIVER" ### string, not number "\"SDL_GPU_DRIVER\"" */
/* #define SDL_HINT_HIDAPI_ENUMERATE_ONLY_CONTROLLERS "SDL_HIDAPI_ENUMERATE_ONLY_CONTROLLERS" ### string, not number "\"SDL_HIDAPI_ENUMERATE_ONLY_CONTROLLERS\"" */
/* #define SDL_HINT_HIDAPI_IGNORE_DEVICES "SDL_HIDAPI_IGNORE_DEVICES" ### string, not number "\"SDL_HIDAPI_IGNORE_DEVICES\"" */
/* #define SDL_HINT_IME_IMPLEMENTED_UI "SDL_IME_IMPLEMENTED_UI" ### string, not number "\"SDL_IME_IMPLEMENTED_UI\"" */
/* #define SDL_HINT_IOS_HIDE_HOME_INDICATOR "SDL_IOS_HIDE_HOME_INDICATOR" ### string, not number "\"SDL_IOS_HIDE_HOME_INDICATOR\"" */
/* #define SDL_HINT_JOYSTICK_ALLOW_BACKGROUND_EVENTS "SDL_JOYSTICK_ALLOW_BACKGROUND_EVENTS" ### string, not number "\"SDL_JOYSTICK_ALLOW_BACKGROUND_EVENTS\"" */
/* #define SDL_HINT_JOYSTICK_ARCADESTICK_DEVICES "SDL_JOYSTICK_ARCADESTICK_DEVICES" ### string, not number "\"SDL_JOYSTICK_ARCADESTICK_DEVICES\"" */
/* #define SDL_HINT_JOYSTICK_ARCADESTICK_DEVICES_EXCLUDED "SDL_JOYSTICK_ARCADESTICK_DEVICES_EXCLUDED" ### string, not number "\"SDL_JOYSTICK_ARCADESTICK_DEVICES_EXCLUDED\"" */
/* #define SDL_HINT_JOYSTICK_BLACKLIST_DEVICES "SDL_JOYSTICK_BLACKLIST_DEVICES" ### string, not number "\"SDL_JOYSTICK_BLACKLIST_DEVICES\"" */
/* #define SDL_HINT_JOYSTICK_BLACKLIST_DEVICES_EXCLUDED "SDL_JOYSTICK_BLACKLIST_DEVICES_EXCLUDED" ### string, not number "\"SDL_JOYSTICK_BLACKLIST_DEVICES_EXCLUDED\"" */
/* #define SDL_HINT_JOYSTICK_DEVICE "SDL_JOYSTICK_DEVICE" ### string, not number "\"SDL_JOYSTICK_DEVICE\"" */
/* #define SDL_HINT_JOYSTICK_ENHANCED_REPORTS "SDL_JOYSTICK_ENHANCED_REPORTS" ### string, not number "\"SDL_JOYSTICK_ENHANCED_REPORTS\"" */
/* #define SDL_HINT_JOYSTICK_FLIGHTSTICK_DEVICES "SDL_JOYSTICK_FLIGHTSTICK_DEVICES" ### string, not number "\"SDL_JOYSTICK_FLIGHTSTICK_DEVICES\"" */
/* #define SDL_HINT_JOYSTICK_FLIGHTSTICK_DEVICES_EXCLUDED "SDL_JOYSTICK_FLIGHTSTICK_DEVICES_EXCLUDED" ### string, not number "\"SDL_JOYSTICK_FLIGHTSTICK_DEVICES_EXCLUDED\"" */
/* #define SDL_HINT_JOYSTICK_GAMEINPUT "SDL_JOYSTICK_GAMEINPUT" ### string, not number "\"SDL_JOYSTICK_GAMEINPUT\"" */
/* #define SDL_HINT_JOYSTICK_GAMECUBE_DEVICES "SDL_JOYSTICK_GAMECUBE_DEVICES" ### string, not number "\"SDL_JOYSTICK_GAMECUBE_DEVICES\"" */
/* #define SDL_HINT_JOYSTICK_GAMECUBE_DEVICES_EXCLUDED "SDL_JOYSTICK_GAMECUBE_DEVICES_EXCLUDED" ### string, not number "\"SDL_JOYSTICK_GAMECUBE_DEVICES_EXCLUDED\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI "SDL_JOYSTICK_HIDAPI" ### string, not number "\"SDL_JOYSTICK_HIDAPI\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_COMBINE_JOY_CONS "SDL_JOYSTICK_HIDAPI_COMBINE_JOY_CONS" ### string, not number "\"SDL_JOYSTICK_HIDAPI_COMBINE_JOY_CONS\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_GAMECUBE "SDL_JOYSTICK_HIDAPI_GAMECUBE" ### string, not number "\"SDL_JOYSTICK_HIDAPI_GAMECUBE\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_GAMECUBE_RUMBLE_BRAKE "SDL_JOYSTICK_HIDAPI_GAMECUBE_RUMBLE_BRAKE" ### string, not number "\"SDL_JOYSTICK_HIDAPI_GAMECUBE_RUMBLE_BRAKE\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_JOY_CONS "SDL_JOYSTICK_HIDAPI_JOY_CONS" ### string, not number "\"SDL_JOYSTICK_HIDAPI_JOY_CONS\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_JOYCON_HOME_LED "SDL_JOYSTICK_HIDAPI_JOYCON_HOME_LED" ### string, not number "\"SDL_JOYSTICK_HIDAPI_JOYCON_HOME_LED\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_LUNA "SDL_JOYSTICK_HIDAPI_LUNA" ### string, not number "\"SDL_JOYSTICK_HIDAPI_LUNA\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_NINTENDO_CLASSIC "SDL_JOYSTICK_HIDAPI_NINTENDO_CLASSIC" ### string, not number "\"SDL_JOYSTICK_HIDAPI_NINTENDO_CLASSIC\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_PS3 "SDL_JOYSTICK_HIDAPI_PS3" ### string, not number "\"SDL_JOYSTICK_HIDAPI_PS3\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_PS3_SIXAXIS_DRIVER "SDL_JOYSTICK_HIDAPI_PS3_SIXAXIS_DRIVER" ### string, not number "\"SDL_JOYSTICK_HIDAPI_PS3_SIXAXIS_DRIVER\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_PS4 "SDL_JOYSTICK_HIDAPI_PS4" ### string, not number "\"SDL_JOYSTICK_HIDAPI_PS4\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_PS4_REPORT_INTERVAL "SDL_JOYSTICK_HIDAPI_PS4_REPORT_INTERVAL" ### string, not number "\"SDL_JOYSTICK_HIDAPI_PS4_REPORT_INTERVAL\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_PS5 "SDL_JOYSTICK_HIDAPI_PS5" ### string, not number "\"SDL_JOYSTICK_HIDAPI_PS5\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_PS5_PLAYER_LED "SDL_JOYSTICK_HIDAPI_PS5_PLAYER_LED" ### string, not number "\"SDL_JOYSTICK_HIDAPI_PS5_PLAYER_LED\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_SHIELD "SDL_JOYSTICK_HIDAPI_SHIELD" ### string, not number "\"SDL_JOYSTICK_HIDAPI_SHIELD\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_STADIA "SDL_JOYSTICK_HIDAPI_STADIA" ### string, not number "\"SDL_JOYSTICK_HIDAPI_STADIA\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_STEAM "SDL_JOYSTICK_HIDAPI_STEAM" ### string, not number "\"SDL_JOYSTICK_HIDAPI_STEAM\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_STEAM_HOME_LED "SDL_JOYSTICK_HIDAPI_STEAM_HOME_LED" ### string, not number "\"SDL_JOYSTICK_HIDAPI_STEAM_HOME_LED\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_STEAMDECK "SDL_JOYSTICK_HIDAPI_STEAMDECK" ### string, not number "\"SDL_JOYSTICK_HIDAPI_STEAMDECK\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_STEAM_HORI "SDL_JOYSTICK_HIDAPI_STEAM_HORI" ### string, not number "\"SDL_JOYSTICK_HIDAPI_STEAM_HORI\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_SWITCH "SDL_JOYSTICK_HIDAPI_SWITCH" ### string, not number "\"SDL_JOYSTICK_HIDAPI_SWITCH\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_SWITCH_HOME_LED "SDL_JOYSTICK_HIDAPI_SWITCH_HOME_LED" ### string, not number "\"SDL_JOYSTICK_HIDAPI_SWITCH_HOME_LED\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED "SDL_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED" ### string, not number "\"SDL_JOYSTICK_HIDAPI_SWITCH_PLAYER_LED\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_VERTICAL_JOY_CONS "SDL_JOYSTICK_HIDAPI_VERTICAL_JOY_CONS" ### string, not number "\"SDL_JOYSTICK_HIDAPI_VERTICAL_JOY_CONS\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_WII "SDL_JOYSTICK_HIDAPI_WII" ### string, not number "\"SDL_JOYSTICK_HIDAPI_WII\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_WII_PLAYER_LED "SDL_JOYSTICK_HIDAPI_WII_PLAYER_LED" ### string, not number "\"SDL_JOYSTICK_HIDAPI_WII_PLAYER_LED\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_XBOX "SDL_JOYSTICK_HIDAPI_XBOX" ### string, not number "\"SDL_JOYSTICK_HIDAPI_XBOX\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_XBOX_360 "SDL_JOYSTICK_HIDAPI_XBOX_360" ### string, not number "\"SDL_JOYSTICK_HIDAPI_XBOX_360\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED "SDL_JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED" ### string, not number "\"SDL_JOYSTICK_HIDAPI_XBOX_360_PLAYER_LED\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_XBOX_360_WIRELESS "SDL_JOYSTICK_HIDAPI_XBOX_360_WIRELESS" ### string, not number "\"SDL_JOYSTICK_HIDAPI_XBOX_360_WIRELESS\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_XBOX_ONE "SDL_JOYSTICK_HIDAPI_XBOX_ONE" ### string, not number "\"SDL_JOYSTICK_HIDAPI_XBOX_ONE\"" */
/* #define SDL_HINT_JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED "SDL_JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED" ### string, not number "\"SDL_JOYSTICK_HIDAPI_XBOX_ONE_HOME_LED\"" */
/* #define SDL_HINT_JOYSTICK_IOKIT "SDL_JOYSTICK_IOKIT" ### string, not number "\"SDL_JOYSTICK_IOKIT\"" */
/* #define SDL_HINT_JOYSTICK_LINUX_CLASSIC "SDL_JOYSTICK_LINUX_CLASSIC" ### string, not number "\"SDL_JOYSTICK_LINUX_CLASSIC\"" */
/* #define SDL_HINT_JOYSTICK_LINUX_DEADZONES "SDL_JOYSTICK_LINUX_DEADZONES" ### string, not number "\"SDL_JOYSTICK_LINUX_DEADZONES\"" */
/* #define SDL_HINT_JOYSTICK_LINUX_DIGITAL_HATS "SDL_JOYSTICK_LINUX_DIGITAL_HATS" ### string, not number "\"SDL_JOYSTICK_LINUX_DIGITAL_HATS\"" */
/* #define SDL_HINT_JOYSTICK_LINUX_HAT_DEADZONES "SDL_JOYSTICK_LINUX_HAT_DEADZONES" ### string, not number "\"SDL_JOYSTICK_LINUX_HAT_DEADZONES\"" */
/* #define SDL_HINT_JOYSTICK_MFI "SDL_JOYSTICK_MFI" ### string, not number "\"SDL_JOYSTICK_MFI\"" */
/* #define SDL_HINT_JOYSTICK_RAWINPUT "SDL_JOYSTICK_RAWINPUT" ### string, not number "\"SDL_JOYSTICK_RAWINPUT\"" */
/* #define SDL_HINT_JOYSTICK_RAWINPUT_CORRELATE_XINPUT "SDL_JOYSTICK_RAWINPUT_CORRELATE_XINPUT" ### string, not number "\"SDL_JOYSTICK_RAWINPUT_CORRELATE_XINPUT\"" */
/* #define SDL_HINT_JOYSTICK_ROG_CHAKRAM "SDL_JOYSTICK_ROG_CHAKRAM" ### string, not number "\"SDL_JOYSTICK_ROG_CHAKRAM\"" */
/* #define SDL_HINT_JOYSTICK_THREAD "SDL_JOYSTICK_THREAD" ### string, not number "\"SDL_JOYSTICK_THREAD\"" */
/* #define SDL_HINT_JOYSTICK_THROTTLE_DEVICES "SDL_JOYSTICK_THROTTLE_DEVICES" ### string, not number "\"SDL_JOYSTICK_THROTTLE_DEVICES\"" */
/* #define SDL_HINT_JOYSTICK_THROTTLE_DEVICES_EXCLUDED "SDL_JOYSTICK_THROTTLE_DEVICES_EXCLUDED" ### string, not number "\"SDL_JOYSTICK_THROTTLE_DEVICES_EXCLUDED\"" */
/* #define SDL_HINT_JOYSTICK_WGI "SDL_JOYSTICK_WGI" ### string, not number "\"SDL_JOYSTICK_WGI\"" */
/* #define SDL_HINT_JOYSTICK_WHEEL_DEVICES "SDL_JOYSTICK_WHEEL_DEVICES" ### string, not number "\"SDL_JOYSTICK_WHEEL_DEVICES\"" */
/* #define SDL_HINT_JOYSTICK_WHEEL_DEVICES_EXCLUDED "SDL_JOYSTICK_WHEEL_DEVICES_EXCLUDED" ### string, not number "\"SDL_JOYSTICK_WHEEL_DEVICES_EXCLUDED\"" */
/* #define SDL_HINT_JOYSTICK_ZERO_CENTERED_DEVICES "SDL_JOYSTICK_ZERO_CENTERED_DEVICES" ### string, not number "\"SDL_JOYSTICK_ZERO_CENTERED_DEVICES\"" */
/* #define SDL_HINT_JOYSTICK_HAPTIC_AXES "SDL_JOYSTICK_HAPTIC_AXES" ### string, not number "\"SDL_JOYSTICK_HAPTIC_AXES\"" */
/* #define SDL_HINT_KEYCODE_OPTIONS "SDL_KEYCODE_OPTIONS" ### string, not number "\"SDL_KEYCODE_OPTIONS\"" */
/* #define SDL_HINT_KMSDRM_DEVICE_INDEX "SDL_KMSDRM_DEVICE_INDEX" ### string, not number "\"SDL_KMSDRM_DEVICE_INDEX\"" */
/* #define SDL_HINT_KMSDRM_REQUIRE_DRM_MASTER "SDL_KMSDRM_REQUIRE_DRM_MASTER" ### string, not number "\"SDL_KMSDRM_REQUIRE_DRM_MASTER\"" */
/* #define SDL_HINT_LOGGING "SDL_LOGGING" ### string, not number "\"SDL_LOGGING\"" */
/* #define SDL_HINT_MAC_BACKGROUND_APP "SDL_MAC_BACKGROUND_APP" ### string, not number "\"SDL_MAC_BACKGROUND_APP\"" */
/* #define SDL_HINT_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK "SDL_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK" ### string, not number "\"SDL_MAC_CTRL_CLICK_EMULATE_RIGHT_CLICK\"" */
/* #define SDL_HINT_MAC_OPENGL_ASYNC_DISPATCH "SDL_MAC_OPENGL_ASYNC_DISPATCH" ### string, not number "\"SDL_MAC_OPENGL_ASYNC_DISPATCH\"" */
/* #define SDL_HINT_MAC_OPTION_AS_ALT "SDL_MAC_OPTION_AS_ALT" ### string, not number "\"SDL_MAC_OPTION_AS_ALT\"" */
/* #define SDL_HINT_MAC_SCROLL_MOMENTUM "SDL_MAC_SCROLL_MOMENTUM" ### string, not number "\"SDL_MAC_SCROLL_MOMENTUM\"" */
/* #define SDL_HINT_MAIN_CALLBACK_RATE "SDL_MAIN_CALLBACK_RATE" ### string, not number "\"SDL_MAIN_CALLBACK_RATE\"" */
/* #define SDL_HINT_MOUSE_AUTO_CAPTURE "SDL_MOUSE_AUTO_CAPTURE" ### string, not number "\"SDL_MOUSE_AUTO_CAPTURE\"" */
/* #define SDL_HINT_MOUSE_DOUBLE_CLICK_RADIUS "SDL_MOUSE_DOUBLE_CLICK_RADIUS" ### string, not number "\"SDL_MOUSE_DOUBLE_CLICK_RADIUS\"" */
/* #define SDL_HINT_MOUSE_DOUBLE_CLICK_TIME "SDL_MOUSE_DOUBLE_CLICK_TIME" ### string, not number "\"SDL_MOUSE_DOUBLE_CLICK_TIME\"" */
/* #define SDL_HINT_MOUSE_DEFAULT_SYSTEM_CURSOR "SDL_MOUSE_DEFAULT_SYSTEM_CURSOR" ### string, not number "\"SDL_MOUSE_DEFAULT_SYSTEM_CURSOR\"" */
/* #define SDL_HINT_MOUSE_EMULATE_WARP_WITH_RELATIVE "SDL_MOUSE_EMULATE_WARP_WITH_RELATIVE" ### string, not number "\"SDL_MOUSE_EMULATE_WARP_WITH_RELATIVE\"" */
/* #define SDL_HINT_MOUSE_FOCUS_CLICKTHROUGH "SDL_MOUSE_FOCUS_CLICKTHROUGH" ### string, not number "\"SDL_MOUSE_FOCUS_CLICKTHROUGH\"" */
/* #define SDL_HINT_MOUSE_NORMAL_SPEED_SCALE "SDL_MOUSE_NORMAL_SPEED_SCALE" ### string, not number "\"SDL_MOUSE_NORMAL_SPEED_SCALE\"" */
/* #define SDL_HINT_MOUSE_RELATIVE_MODE_CENTER "SDL_MOUSE_RELATIVE_MODE_CENTER" ### string, not number "\"SDL_MOUSE_RELATIVE_MODE_CENTER\"" */
/* #define SDL_HINT_MOUSE_RELATIVE_SPEED_SCALE "SDL_MOUSE_RELATIVE_SPEED_SCALE" ### string, not number "\"SDL_MOUSE_RELATIVE_SPEED_SCALE\"" */
/* #define SDL_HINT_MOUSE_RELATIVE_SYSTEM_SCALE "SDL_MOUSE_RELATIVE_SYSTEM_SCALE" ### string, not number "\"SDL_MOUSE_RELATIVE_SYSTEM_SCALE\"" */
/* #define SDL_HINT_MOUSE_RELATIVE_WARP_MOTION "SDL_MOUSE_RELATIVE_WARP_MOTION" ### string, not number "\"SDL_MOUSE_RELATIVE_WARP_MOTION\"" */
/* #define SDL_HINT_MOUSE_RELATIVE_CURSOR_VISIBLE "SDL_MOUSE_RELATIVE_CURSOR_VISIBLE" ### string, not number "\"SDL_MOUSE_RELATIVE_CURSOR_VISIBLE\"" */
/* #define SDL_HINT_MOUSE_TOUCH_EVENTS "SDL_MOUSE_TOUCH_EVENTS" ### string, not number "\"SDL_MOUSE_TOUCH_EVENTS\"" */
/* #define SDL_HINT_MUTE_CONSOLE_KEYBOARD "SDL_MUTE_CONSOLE_KEYBOARD" ### string, not number "\"SDL_MUTE_CONSOLE_KEYBOARD\"" */
/* #define SDL_HINT_NO_SIGNAL_HANDLERS "SDL_NO_SIGNAL_HANDLERS" ### string, not number "\"SDL_NO_SIGNAL_HANDLERS\"" */
/* #define SDL_HINT_OPENGL_LIBRARY "SDL_OPENGL_LIBRARY" ### string, not number "\"SDL_OPENGL_LIBRARY\"" */
/* #define SDL_HINT_EGL_LIBRARY "SDL_EGL_LIBRARY" ### string, not number "\"SDL_EGL_LIBRARY\"" */
/* #define SDL_HINT_OPENGL_ES_DRIVER "SDL_OPENGL_ES_DRIVER" ### string, not number "\"SDL_OPENGL_ES_DRIVER\"" */
/* #define SDL_HINT_OPENVR_LIBRARY              "SDL_OPENVR_LIBRARY" ### string, not number "\"SDL_OPENVR_LIBRARY\"" */
/* #define SDL_HINT_ORIENTATIONS "SDL_ORIENTATIONS" ### string, not number "\"SDL_ORIENTATIONS\"" */
/* #define SDL_HINT_POLL_SENTINEL "SDL_POLL_SENTINEL" ### string, not number "\"SDL_POLL_SENTINEL\"" */
/* #define SDL_HINT_PREFERRED_LOCALES "SDL_PREFERRED_LOCALES" ### string, not number "\"SDL_PREFERRED_LOCALES\"" */
/* #define SDL_HINT_QUIT_ON_LAST_WINDOW_CLOSE "SDL_QUIT_ON_LAST_WINDOW_CLOSE" ### string, not number "\"SDL_QUIT_ON_LAST_WINDOW_CLOSE\"" */
/* #define SDL_HINT_RENDER_DIRECT3D_THREADSAFE "SDL_RENDER_DIRECT3D_THREADSAFE" ### string, not number "\"SDL_RENDER_DIRECT3D_THREADSAFE\"" */
/* #define SDL_HINT_RENDER_DIRECT3D11_DEBUG "SDL_RENDER_DIRECT3D11_DEBUG" ### string, not number "\"SDL_RENDER_DIRECT3D11_DEBUG\"" */
/* #define SDL_HINT_RENDER_VULKAN_DEBUG "SDL_RENDER_VULKAN_DEBUG" ### string, not number "\"SDL_RENDER_VULKAN_DEBUG\"" */
/* #define SDL_HINT_RENDER_GPU_DEBUG "SDL_RENDER_GPU_DEBUG" ### string, not number "\"SDL_RENDER_GPU_DEBUG\"" */
/* #define SDL_HINT_RENDER_GPU_LOW_POWER "SDL_RENDER_GPU_LOW_POWER" ### string, not number "\"SDL_RENDER_GPU_LOW_POWER\"" */
/* #define SDL_HINT_RENDER_DRIVER "SDL_RENDER_DRIVER" ### string, not number "\"SDL_RENDER_DRIVER\"" */
/* #define SDL_HINT_RENDER_LINE_METHOD "SDL_RENDER_LINE_METHOD" ### string, not number "\"SDL_RENDER_LINE_METHOD\"" */
/* #define SDL_HINT_RENDER_METAL_PREFER_LOW_POWER_DEVICE "SDL_RENDER_METAL_PREFER_LOW_POWER_DEVICE" ### string, not number "\"SDL_RENDER_METAL_PREFER_LOW_POWER_DEVICE\"" */
/* #define SDL_HINT_RENDER_VSYNC "SDL_RENDER_VSYNC" ### string, not number "\"SDL_RENDER_VSYNC\"" */
/* #define SDL_HINT_RETURN_KEY_HIDES_IME "SDL_RETURN_KEY_HIDES_IME" ### string, not number "\"SDL_RETURN_KEY_HIDES_IME\"" */
/* #define SDL_HINT_ROG_GAMEPAD_MICE "SDL_ROG_GAMEPAD_MICE" ### string, not number "\"SDL_ROG_GAMEPAD_MICE\"" */
/* #define SDL_HINT_ROG_GAMEPAD_MICE_EXCLUDED "SDL_ROG_GAMEPAD_MICE_EXCLUDED" ### string, not number "\"SDL_ROG_GAMEPAD_MICE_EXCLUDED\"" */
/* #define SDL_HINT_RPI_VIDEO_LAYER "SDL_RPI_VIDEO_LAYER" ### string, not number "\"SDL_RPI_VIDEO_LAYER\"" */
/* #define SDL_HINT_SCREENSAVER_INHIBIT_ACTIVITY_NAME "SDL_SCREENSAVER_INHIBIT_ACTIVITY_NAME" ### string, not number "\"SDL_SCREENSAVER_INHIBIT_ACTIVITY_NAME\"" */
/* #define SDL_HINT_SHUTDOWN_DBUS_ON_QUIT "SDL_SHUTDOWN_DBUS_ON_QUIT" ### string, not number "\"SDL_SHUTDOWN_DBUS_ON_QUIT\"" */
/* #define SDL_HINT_STORAGE_TITLE_DRIVER "SDL_STORAGE_TITLE_DRIVER" ### string, not number "\"SDL_STORAGE_TITLE_DRIVER\"" */
/* #define SDL_HINT_STORAGE_USER_DRIVER "SDL_STORAGE_USER_DRIVER" ### string, not number "\"SDL_STORAGE_USER_DRIVER\"" */
/* #define SDL_HINT_THREAD_FORCE_REALTIME_TIME_CRITICAL "SDL_THREAD_FORCE_REALTIME_TIME_CRITICAL" ### string, not number "\"SDL_THREAD_FORCE_REALTIME_TIME_CRITICAL\"" */
/* #define SDL_HINT_THREAD_PRIORITY_POLICY "SDL_THREAD_PRIORITY_POLICY" ### string, not number "\"SDL_THREAD_PRIORITY_POLICY\"" */
/* #define SDL_HINT_TIMER_RESOLUTION "SDL_TIMER_RESOLUTION" ### string, not number "\"SDL_TIMER_RESOLUTION\"" */
/* #define SDL_HINT_TOUCH_MOUSE_EVENTS "SDL_TOUCH_MOUSE_EVENTS" ### string, not number "\"SDL_TOUCH_MOUSE_EVENTS\"" */
/* #define SDL_HINT_TRACKPAD_IS_TOUCH_ONLY "SDL_TRACKPAD_IS_TOUCH_ONLY" ### string, not number "\"SDL_TRACKPAD_IS_TOUCH_ONLY\"" */
/* #define SDL_HINT_TV_REMOTE_AS_JOYSTICK "SDL_TV_REMOTE_AS_JOYSTICK" ### string, not number "\"SDL_TV_REMOTE_AS_JOYSTICK\"" */
/* #define SDL_HINT_VIDEO_ALLOW_SCREENSAVER "SDL_VIDEO_ALLOW_SCREENSAVER" ### string, not number "\"SDL_VIDEO_ALLOW_SCREENSAVER\"" */
/* #define SDL_HINT_VIDEO_DISPLAY_PRIORITY "SDL_VIDEO_DISPLAY_PRIORITY" ### string, not number "\"SDL_VIDEO_DISPLAY_PRIORITY\"" */
/* #define SDL_HINT_VIDEO_DOUBLE_BUFFER "SDL_VIDEO_DOUBLE_BUFFER" ### string, not number "\"SDL_VIDEO_DOUBLE_BUFFER\"" */
/* #define SDL_HINT_VIDEO_DRIVER "SDL_VIDEO_DRIVER" ### string, not number "\"SDL_VIDEO_DRIVER\"" */
/* #define SDL_HINT_VIDEO_DUMMY_SAVE_FRAMES "SDL_VIDEO_DUMMY_SAVE_FRAMES" ### string, not number "\"SDL_VIDEO_DUMMY_SAVE_FRAMES\"" */
/* #define SDL_HINT_VIDEO_EGL_ALLOW_GETDISPLAY_FALLBACK "SDL_VIDEO_EGL_ALLOW_GETDISPLAY_FALLBACK" ### string, not number "\"SDL_VIDEO_EGL_ALLOW_GETDISPLAY_FALLBACK\"" */
/* #define SDL_HINT_VIDEO_FORCE_EGL "SDL_VIDEO_FORCE_EGL" ### string, not number "\"SDL_VIDEO_FORCE_EGL\"" */
/* #define SDL_HINT_VIDEO_MAC_FULLSCREEN_SPACES "SDL_VIDEO_MAC_FULLSCREEN_SPACES" ### string, not number "\"SDL_VIDEO_MAC_FULLSCREEN_SPACES\"" */
/* #define SDL_HINT_VIDEO_MAC_FULLSCREEN_MENU_VISIBILITY "SDL_VIDEO_MAC_FULLSCREEN_MENU_VISIBILITY" ### string, not number "\"SDL_VIDEO_MAC_FULLSCREEN_MENU_VISIBILITY\"" */
/* #define SDL_HINT_VIDEO_MINIMIZE_ON_FOCUS_LOSS "SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS" ### string, not number "\"SDL_VIDEO_MINIMIZE_ON_FOCUS_LOSS\"" */
/* #define SDL_HINT_VIDEO_OFFSCREEN_SAVE_FRAMES "SDL_VIDEO_OFFSCREEN_SAVE_FRAMES" ### string, not number "\"SDL_VIDEO_OFFSCREEN_SAVE_FRAMES\"" */
/* #define SDL_HINT_VIDEO_SYNC_WINDOW_OPERATIONS "SDL_VIDEO_SYNC_WINDOW_OPERATIONS" ### string, not number "\"SDL_VIDEO_SYNC_WINDOW_OPERATIONS\"" */
/* #define SDL_HINT_VIDEO_WAYLAND_ALLOW_LIBDECOR "SDL_VIDEO_WAYLAND_ALLOW_LIBDECOR" ### string, not number "\"SDL_VIDEO_WAYLAND_ALLOW_LIBDECOR\"" */
/* #define SDL_HINT_VIDEO_WAYLAND_MODE_EMULATION "SDL_VIDEO_WAYLAND_MODE_EMULATION" ### string, not number "\"SDL_VIDEO_WAYLAND_MODE_EMULATION\"" */
/* #define SDL_HINT_VIDEO_WAYLAND_MODE_SCALING "SDL_VIDEO_WAYLAND_MODE_SCALING" ### string, not number "\"SDL_VIDEO_WAYLAND_MODE_SCALING\"" */
/* #define SDL_HINT_VIDEO_WAYLAND_PREFER_LIBDECOR "SDL_VIDEO_WAYLAND_PREFER_LIBDECOR" ### string, not number "\"SDL_VIDEO_WAYLAND_PREFER_LIBDECOR\"" */
/* #define SDL_HINT_VIDEO_WAYLAND_SCALE_TO_DISPLAY "SDL_VIDEO_WAYLAND_SCALE_TO_DISPLAY" ### string, not number "\"SDL_VIDEO_WAYLAND_SCALE_TO_DISPLAY\"" */
/* #define SDL_HINT_VIDEO_WIN_D3DCOMPILER "SDL_VIDEO_WIN_D3DCOMPILER" ### string, not number "\"SDL_VIDEO_WIN_D3DCOMPILER\"" */
/* #define SDL_HINT_VIDEO_X11_EXTERNAL_WINDOW_INPUT "SDL_VIDEO_X11_EXTERNAL_WINDOW_INPUT" ### string, not number "\"SDL_VIDEO_X11_EXTERNAL_WINDOW_INPUT\"" */
/* #define SDL_HINT_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR "SDL_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR" ### string, not number "\"SDL_VIDEO_X11_NET_WM_BYPASS_COMPOSITOR\"" */
/* #define SDL_HINT_VIDEO_X11_NET_WM_PING "SDL_VIDEO_X11_NET_WM_PING" ### string, not number "\"SDL_VIDEO_X11_NET_WM_PING\"" */
/* #define SDL_HINT_VIDEO_X11_NODIRECTCOLOR "SDL_VIDEO_X11_NODIRECTCOLOR" ### string, not number "\"SDL_VIDEO_X11_NODIRECTCOLOR\"" */
/* #define SDL_HINT_VIDEO_X11_SCALING_FACTOR "SDL_VIDEO_X11_SCALING_FACTOR" ### string, not number "\"SDL_VIDEO_X11_SCALING_FACTOR\"" */
/* #define SDL_HINT_VIDEO_X11_VISUALID "SDL_VIDEO_X11_VISUALID" ### string, not number "\"SDL_VIDEO_X11_VISUALID\"" */
/* #define SDL_HINT_VIDEO_X11_WINDOW_VISUALID "SDL_VIDEO_X11_WINDOW_VISUALID" ### string, not number "\"SDL_VIDEO_X11_WINDOW_VISUALID\"" */
/* #define SDL_HINT_VIDEO_X11_XRANDR "SDL_VIDEO_X11_XRANDR" ### string, not number "\"SDL_VIDEO_X11_XRANDR\"" */
/* #define SDL_HINT_VITA_ENABLE_BACK_TOUCH "SDL_VITA_ENABLE_BACK_TOUCH" ### string, not number "\"SDL_VITA_ENABLE_BACK_TOUCH\"" */
/* #define SDL_HINT_VITA_ENABLE_FRONT_TOUCH "SDL_VITA_ENABLE_FRONT_TOUCH" ### string, not number "\"SDL_VITA_ENABLE_FRONT_TOUCH\"" */
/* #define SDL_HINT_VITA_MODULE_PATH "SDL_VITA_MODULE_PATH" ### string, not number "\"SDL_VITA_MODULE_PATH\"" */
/* #define SDL_HINT_VITA_PVR_INIT "SDL_VITA_PVR_INIT" ### string, not number "\"SDL_VITA_PVR_INIT\"" */
/* #define SDL_HINT_VITA_RESOLUTION "SDL_VITA_RESOLUTION" ### string, not number "\"SDL_VITA_RESOLUTION\"" */
/* #define SDL_HINT_VITA_PVR_OPENGL "SDL_VITA_PVR_OPENGL" ### string, not number "\"SDL_VITA_PVR_OPENGL\"" */
/* #define SDL_HINT_VITA_TOUCH_MOUSE_DEVICE "SDL_VITA_TOUCH_MOUSE_DEVICE" ### string, not number "\"SDL_VITA_TOUCH_MOUSE_DEVICE\"" */
/* #define SDL_HINT_VULKAN_DISPLAY "SDL_VULKAN_DISPLAY" ### string, not number "\"SDL_VULKAN_DISPLAY\"" */
/* #define SDL_HINT_VULKAN_LIBRARY "SDL_VULKAN_LIBRARY" ### string, not number "\"SDL_VULKAN_LIBRARY\"" */
/* #define SDL_HINT_WAVE_FACT_CHUNK "SDL_WAVE_FACT_CHUNK" ### string, not number "\"SDL_WAVE_FACT_CHUNK\"" */
/* #define SDL_HINT_WAVE_CHUNK_LIMIT "SDL_WAVE_CHUNK_LIMIT" ### string, not number "\"SDL_WAVE_CHUNK_LIMIT\"" */
/* #define SDL_HINT_WAVE_RIFF_CHUNK_SIZE "SDL_WAVE_RIFF_CHUNK_SIZE" ### string, not number "\"SDL_WAVE_RIFF_CHUNK_SIZE\"" */
/* #define SDL_HINT_WAVE_TRUNCATION "SDL_WAVE_TRUNCATION" ### string, not number "\"SDL_WAVE_TRUNCATION\"" */
/* #define SDL_HINT_WINDOW_ACTIVATE_WHEN_RAISED "SDL_WINDOW_ACTIVATE_WHEN_RAISED" ### string, not number "\"SDL_WINDOW_ACTIVATE_WHEN_RAISED\"" */
/* #define SDL_HINT_WINDOW_ACTIVATE_WHEN_SHOWN "SDL_WINDOW_ACTIVATE_WHEN_SHOWN" ### string, not number "\"SDL_WINDOW_ACTIVATE_WHEN_SHOWN\"" */
/* #define SDL_HINT_WINDOW_ALLOW_TOPMOST "SDL_WINDOW_ALLOW_TOPMOST" ### string, not number "\"SDL_WINDOW_ALLOW_TOPMOST\"" */
/* #define SDL_HINT_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN "SDL_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN" ### string, not number "\"SDL_WINDOW_FRAME_USABLE_WHILE_CURSOR_HIDDEN\"" */
/* #define SDL_HINT_WINDOWS_CLOSE_ON_ALT_F4 "SDL_WINDOWS_CLOSE_ON_ALT_F4" ### string, not number "\"SDL_WINDOWS_CLOSE_ON_ALT_F4\"" */
/* #define SDL_HINT_WINDOWS_ENABLE_MENU_MNEMONICS "SDL_WINDOWS_ENABLE_MENU_MNEMONICS" ### string, not number "\"SDL_WINDOWS_ENABLE_MENU_MNEMONICS\"" */
/* #define SDL_HINT_WINDOWS_ENABLE_MESSAGELOOP "SDL_WINDOWS_ENABLE_MESSAGELOOP" ### string, not number "\"SDL_WINDOWS_ENABLE_MESSAGELOOP\"" */
/* #define SDL_HINT_WINDOWS_GAMEINPUT   "SDL_WINDOWS_GAMEINPUT" ### string, not number "\"SDL_WINDOWS_GAMEINPUT\"" */
/* #define SDL_HINT_WINDOWS_RAW_KEYBOARD "SDL_WINDOWS_RAW_KEYBOARD" ### string, not number "\"SDL_WINDOWS_RAW_KEYBOARD\"" */
/* #define SDL_HINT_WINDOWS_FORCE_SEMAPHORE_KERNEL "SDL_WINDOWS_FORCE_SEMAPHORE_KERNEL" ### string, not number "\"SDL_WINDOWS_FORCE_SEMAPHORE_KERNEL\"" */
/* #define SDL_HINT_WINDOWS_INTRESOURCE_ICON       "SDL_WINDOWS_INTRESOURCE_ICON" ### string, not number "\"SDL_WINDOWS_INTRESOURCE_ICON\"" */
/* #define SDL_HINT_WINDOWS_INTRESOURCE_ICON_SMALL "SDL_WINDOWS_INTRESOURCE_ICON_SMALL" ### string, not number "\"SDL_WINDOWS_INTRESOURCE_ICON_SMALL\"" */
/* #define SDL_HINT_WINDOWS_USE_D3D9EX "SDL_WINDOWS_USE_D3D9EX" ### string, not number "\"SDL_WINDOWS_USE_D3D9EX\"" */
/* #define SDL_HINT_WINDOWS_ERASE_BACKGROUND_MODE "SDL_WINDOWS_ERASE_BACKGROUND_MODE" ### string, not number "\"SDL_WINDOWS_ERASE_BACKGROUND_MODE\"" */
/* #define SDL_HINT_X11_FORCE_OVERRIDE_REDIRECT "SDL_X11_FORCE_OVERRIDE_REDIRECT" ### string, not number "\"SDL_X11_FORCE_OVERRIDE_REDIRECT\"" */
/* #define SDL_HINT_X11_WINDOW_TYPE "SDL_X11_WINDOW_TYPE" ### string, not number "\"SDL_X11_WINDOW_TYPE\"" */
/* #define SDL_HINT_X11_XCB_LIBRARY "SDL_X11_XCB_LIBRARY" ### string, not number "\"SDL_X11_XCB_LIBRARY\"" */
/* #define SDL_HINT_XINPUT_ENABLED "SDL_XINPUT_ENABLED" ### string, not number "\"SDL_XINPUT_ENABLED\"" */
/* #define SDL_HINT_ASSERT "SDL_ASSERT" ### string, not number "\"SDL_ASSERT\"" */
/* #define SDL_HINT_PEN_MOUSE_EVENTS "SDL_PEN_MOUSE_EVENTS" ### string, not number "\"SDL_PEN_MOUSE_EVENTS\"" */
/* #define SDL_HINT_PEN_TOUCH_EVENTS "SDL_PEN_TOUCH_EVENTS" ### string, not number "\"SDL_PEN_TOUCH_EVENTS\"" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #define SDL_PROP_APP_METADATA_NAME_STRING         "SDL.app.metadata.name" ### string, not number "\"SDL.app.metadata.name\"" */
/* #define SDL_PROP_APP_METADATA_VERSION_STRING      "SDL.app.metadata.version" ### string, not number "\"SDL.app.metadata.version\"" */
/* #define SDL_PROP_APP_METADATA_IDENTIFIER_STRING   "SDL.app.metadata.identifier" ### string, not number "\"SDL.app.metadata.identifier\"" */
/* #define SDL_PROP_APP_METADATA_CREATOR_STRING      "SDL.app.metadata.creator" ### string, not number "\"SDL.app.metadata.creator\"" */
/* #define SDL_PROP_APP_METADATA_COPYRIGHT_STRING    "SDL.app.metadata.copyright" ### string, not number "\"SDL.app.metadata.copyright\"" */
/* #define SDL_PROP_APP_METADATA_URL_STRING          "SDL.app.metadata.url" ### string, not number "\"SDL.app.metadata.url\"" */
/* #define SDL_PROP_APP_METADATA_TYPE_STRING         "SDL.app.metadata.type" ### string, not number "\"SDL.app.metadata.type\"" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #define SDL_PROP_PROCESS_CREATE_ARGS_POINTER                "SDL.process.create.args" ### string, not number "\"SDL.process.create.args\"" */
/* #define SDL_PROP_PROCESS_CREATE_ENVIRONMENT_POINTER         "SDL.process.create.environment" ### string, not number "\"SDL.process.create.environment\"" */
/* #define SDL_PROP_PROCESS_CREATE_STDIN_NUMBER                "SDL.process.create.stdin_option" ### string, not number "\"SDL.process.create.stdin_option\"" */
/* #define SDL_PROP_PROCESS_CREATE_STDIN_POINTER               "SDL.process.create.stdin_source" ### string, not number "\"SDL.process.create.stdin_source\"" */
/* #define SDL_PROP_PROCESS_CREATE_STDOUT_NUMBER               "SDL.process.create.stdout_option" ### string, not number "\"SDL.process.create.stdout_option\"" */
/* #define SDL_PROP_PROCESS_CREATE_STDOUT_POINTER              "SDL.process.create.stdout_source" ### string, not number "\"SDL.process.create.stdout_source\"" */
/* #define SDL_PROP_PROCESS_CREATE_STDERR_NUMBER               "SDL.process.create.stderr_option" ### string, not number "\"SDL.process.create.stderr_option\"" */
/* #define SDL_PROP_PROCESS_CREATE_STDERR_POINTER              "SDL.process.create.stderr_source" ### string, not number "\"SDL.process.create.stderr_source\"" */
/* #define SDL_PROP_PROCESS_CREATE_STDERR_TO_STDOUT_BOOLEAN    "SDL.process.create.stderr_to_stdout" ### string, not number "\"SDL.process.create.stderr_to_stdout\"" */
/* #define SDL_PROP_PROCESS_CREATE_BACKGROUND_BOOLEAN          "SDL.process.create.background" ### string, not number "\"SDL.process.create.background\"" */
/* #define SDL_PROP_PROCESS_PID_NUMBER         "SDL.process.pid" ### string, not number "\"SDL.process.pid\"" */
/* #define SDL_PROP_PROCESS_STDIN_POINTER      "SDL.process.stdin" ### string, not number "\"SDL.process.stdin\"" */
/* #define SDL_PROP_PROCESS_STDOUT_POINTER     "SDL.process.stdout" ### string, not number "\"SDL.process.stdout\"" */
/* #define SDL_PROP_PROCESS_STDERR_POINTER     "SDL.process.stderr" ### string, not number "\"SDL.process.stderr\"" */
/* #define SDL_PROP_PROCESS_BACKGROUND_BOOLEAN "SDL.process.background" ### string, not number "\"SDL.process.background\"" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* #define SDL_SOFTWARE_RENDERER   "software" ### string, not number "\"software\"" */
/* #define SDL_PROP_RENDERER_CREATE_NAME_STRING                                "SDL.renderer.create.name" ### string, not number "\"SDL.renderer.create.name\"" */
/* #define SDL_PROP_RENDERER_CREATE_WINDOW_POINTER                             "SDL.renderer.create.window" ### string, not number "\"SDL.renderer.create.window\"" */
/* #define SDL_PROP_RENDERER_CREATE_SURFACE_POINTER                            "SDL.renderer.create.surface" ### string, not number "\"SDL.renderer.create.surface\"" */
/* #define SDL_PROP_RENDERER_CREATE_OUTPUT_COLORSPACE_NUMBER                   "SDL.renderer.create.output_colorspace" ### string, not number "\"SDL.renderer.create.output_colorspace\"" */
/* #define SDL_PROP_RENDERER_CREATE_PRESENT_VSYNC_NUMBER                       "SDL.renderer.create.present_vsync" ### string, not number "\"SDL.renderer.create.present_vsync\"" */
/* #define SDL_PROP_RENDERER_CREATE_VULKAN_INSTANCE_POINTER                    "SDL.renderer.create.vulkan.instance" ### string, not number "\"SDL.renderer.create.vulkan.instance\"" */
/* #define SDL_PROP_RENDERER_CREATE_VULKAN_SURFACE_NUMBER                      "SDL.renderer.create.vulkan.surface" ### string, not number "\"SDL.renderer.create.vulkan.surface\"" */
/* #define SDL_PROP_RENDERER_CREATE_VULKAN_PHYSICAL_DEVICE_POINTER             "SDL.renderer.create.vulkan.physical_device" ### string, not number "\"SDL.renderer.create.vulkan.physical_device\"" */
/* #define SDL_PROP_RENDERER_CREATE_VULKAN_DEVICE_POINTER                      "SDL.renderer.create.vulkan.device" ### string, not number "\"SDL.renderer.create.vulkan.device\"" */
/* #define SDL_PROP_RENDERER_CREATE_VULKAN_GRAPHICS_QUEUE_FAMILY_INDEX_NUMBER  "SDL.renderer.create.vulkan.graphics_queue_family_index" ### string, not number "\"SDL.renderer.create.vulkan.graphics_queue_family_index\"" */
/* #define SDL_PROP_RENDERER_CREATE_VULKAN_PRESENT_QUEUE_FAMILY_INDEX_NUMBER   "SDL.renderer.create.vulkan.present_queue_family_index" ### string, not number "\"SDL.renderer.create.vulkan.present_queue_family_index\"" */
/* #define SDL_PROP_RENDERER_NAME_STRING                               "SDL.renderer.name" ### string, not number "\"SDL.renderer.name\"" */
/* #define SDL_PROP_RENDERER_WINDOW_POINTER                            "SDL.renderer.window" ### string, not number "\"SDL.renderer.window\"" */
/* #define SDL_PROP_RENDERER_SURFACE_POINTER                           "SDL.renderer.surface" ### string, not number "\"SDL.renderer.surface\"" */
/* #define SDL_PROP_RENDERER_VSYNC_NUMBER                              "SDL.renderer.vsync" ### string, not number "\"SDL.renderer.vsync\"" */
/* #define SDL_PROP_RENDERER_MAX_TEXTURE_SIZE_NUMBER                   "SDL.renderer.max_texture_size" ### string, not number "\"SDL.renderer.max_texture_size\"" */
/* #define SDL_PROP_RENDERER_TEXTURE_FORMATS_POINTER                   "SDL.renderer.texture_formats" ### string, not number "\"SDL.renderer.texture_formats\"" */
/* #define SDL_PROP_RENDERER_OUTPUT_COLORSPACE_NUMBER                  "SDL.renderer.output_colorspace" ### string, not number "\"SDL.renderer.output_colorspace\"" */
/* #define SDL_PROP_RENDERER_HDR_ENABLED_BOOLEAN                       "SDL.renderer.HDR_enabled" ### string, not number "\"SDL.renderer.HDR_enabled\"" */
/* #define SDL_PROP_RENDERER_SDR_WHITE_POINT_FLOAT                     "SDL.renderer.SDR_white_point" ### string, not number "\"SDL.renderer.SDR_white_point\"" */
/* #define SDL_PROP_RENDERER_HDR_HEADROOM_FLOAT                        "SDL.renderer.HDR_headroom" ### string, not number "\"SDL.renderer.HDR_headroom\"" */
/* #define SDL_PROP_RENDERER_D3D9_DEVICE_POINTER                       "SDL.renderer.d3d9.device" ### string, not number "\"SDL.renderer.d3d9.device\"" */
/* #define SDL_PROP_RENDERER_D3D11_DEVICE_POINTER                      "SDL.renderer.d3d11.device" ### string, not number "\"SDL.renderer.d3d11.device\"" */
/* #define SDL_PROP_RENDERER_D3D11_SWAPCHAIN_POINTER                   "SDL.renderer.d3d11.swap_chain" ### string, not number "\"SDL.renderer.d3d11.swap_chain\"" */
/* #define SDL_PROP_RENDERER_D3D12_DEVICE_POINTER                      "SDL.renderer.d3d12.device" ### string, not number "\"SDL.renderer.d3d12.device\"" */
/* #define SDL_PROP_RENDERER_D3D12_SWAPCHAIN_POINTER                   "SDL.renderer.d3d12.swap_chain" ### string, not number "\"SDL.renderer.d3d12.swap_chain\"" */
/* #define SDL_PROP_RENDERER_D3D12_COMMAND_QUEUE_POINTER               "SDL.renderer.d3d12.command_queue" ### string, not number "\"SDL.renderer.d3d12.command_queue\"" */
/* #define SDL_PROP_RENDERER_VULKAN_INSTANCE_POINTER                   "SDL.renderer.vulkan.instance" ### string, not number "\"SDL.renderer.vulkan.instance\"" */
/* #define SDL_PROP_RENDERER_VULKAN_SURFACE_NUMBER                     "SDL.renderer.vulkan.surface" ### string, not number "\"SDL.renderer.vulkan.surface\"" */
/* #define SDL_PROP_RENDERER_VULKAN_PHYSICAL_DEVICE_POINTER            "SDL.renderer.vulkan.physical_device" ### string, not number "\"SDL.renderer.vulkan.physical_device\"" */
/* #define SDL_PROP_RENDERER_VULKAN_DEVICE_POINTER                     "SDL.renderer.vulkan.device" ### string, not number "\"SDL.renderer.vulkan.device\"" */
/* #define SDL_PROP_RENDERER_VULKAN_GRAPHICS_QUEUE_FAMILY_INDEX_NUMBER "SDL.renderer.vulkan.graphics_queue_family_index" ### string, not number "\"SDL.renderer.vulkan.graphics_queue_family_index\"" */
/* #define SDL_PROP_RENDERER_VULKAN_PRESENT_QUEUE_FAMILY_INDEX_NUMBER  "SDL.renderer.vulkan.present_queue_family_index" ### string, not number "\"SDL.renderer.vulkan.present_queue_family_index\"" */
/* #define SDL_PROP_RENDERER_VULKAN_SWAPCHAIN_IMAGE_COUNT_NUMBER       "SDL.renderer.vulkan.swapchain_image_count" ### string, not number "\"SDL.renderer.vulkan.swapchain_image_count\"" */
/* #define SDL_PROP_RENDERER_GPU_DEVICE_POINTER                        "SDL.renderer.gpu.device" ### string, not number "\"SDL.renderer.gpu.device\"" */
/* #define SDL_PROP_TEXTURE_CREATE_COLORSPACE_NUMBER           "SDL.texture.create.colorspace" ### string, not number "\"SDL.texture.create.colorspace\"" */
/* #define SDL_PROP_TEXTURE_CREATE_FORMAT_NUMBER               "SDL.texture.create.format" ### string, not number "\"SDL.texture.create.format\"" */
/* #define SDL_PROP_TEXTURE_CREATE_ACCESS_NUMBER               "SDL.texture.create.access" ### string, not number "\"SDL.texture.create.access\"" */
/* #define SDL_PROP_TEXTURE_CREATE_WIDTH_NUMBER                "SDL.texture.create.width" ### string, not number "\"SDL.texture.create.width\"" */
/* #define SDL_PROP_TEXTURE_CREATE_HEIGHT_NUMBER               "SDL.texture.create.height" ### string, not number "\"SDL.texture.create.height\"" */
/* #define SDL_PROP_TEXTURE_CREATE_SDR_WHITE_POINT_FLOAT       "SDL.texture.create.SDR_white_point" ### string, not number "\"SDL.texture.create.SDR_white_point\"" */
/* #define SDL_PROP_TEXTURE_CREATE_HDR_HEADROOM_FLOAT          "SDL.texture.create.HDR_headroom" ### string, not number "\"SDL.texture.create.HDR_headroom\"" */
/* #define SDL_PROP_TEXTURE_CREATE_D3D11_TEXTURE_POINTER       "SDL.texture.create.d3d11.texture" ### string, not number "\"SDL.texture.create.d3d11.texture\"" */
/* #define SDL_PROP_TEXTURE_CREATE_D3D11_TEXTURE_U_POINTER     "SDL.texture.create.d3d11.texture_u" ### string, not number "\"SDL.texture.create.d3d11.texture_u\"" */
/* #define SDL_PROP_TEXTURE_CREATE_D3D11_TEXTURE_V_POINTER     "SDL.texture.create.d3d11.texture_v" ### string, not number "\"SDL.texture.create.d3d11.texture_v\"" */
/* #define SDL_PROP_TEXTURE_CREATE_D3D12_TEXTURE_POINTER       "SDL.texture.create.d3d12.texture" ### string, not number "\"SDL.texture.create.d3d12.texture\"" */
/* #define SDL_PROP_TEXTURE_CREATE_D3D12_TEXTURE_U_POINTER     "SDL.texture.create.d3d12.texture_u" ### string, not number "\"SDL.texture.create.d3d12.texture_u\"" */
/* #define SDL_PROP_TEXTURE_CREATE_D3D12_TEXTURE_V_POINTER     "SDL.texture.create.d3d12.texture_v" ### string, not number "\"SDL.texture.create.d3d12.texture_v\"" */
/* #define SDL_PROP_TEXTURE_CREATE_METAL_PIXELBUFFER_POINTER   "SDL.texture.create.metal.pixelbuffer" ### string, not number "\"SDL.texture.create.metal.pixelbuffer\"" */
/* #define SDL_PROP_TEXTURE_CREATE_OPENGL_TEXTURE_NUMBER       "SDL.texture.create.opengl.texture" ### string, not number "\"SDL.texture.create.opengl.texture\"" */
/* #define SDL_PROP_TEXTURE_CREATE_OPENGL_TEXTURE_UV_NUMBER    "SDL.texture.create.opengl.texture_uv" ### string, not number "\"SDL.texture.create.opengl.texture_uv\"" */
/* #define SDL_PROP_TEXTURE_CREATE_OPENGL_TEXTURE_U_NUMBER     "SDL.texture.create.opengl.texture_u" ### string, not number "\"SDL.texture.create.opengl.texture_u\"" */
/* #define SDL_PROP_TEXTURE_CREATE_OPENGL_TEXTURE_V_NUMBER     "SDL.texture.create.opengl.texture_v" ### string, not number "\"SDL.texture.create.opengl.texture_v\"" */
/* #define SDL_PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_NUMBER    "SDL.texture.create.opengles2.texture" ### string, not number "\"SDL.texture.create.opengles2.texture\"" */
/* #define SDL_PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_UV_NUMBER "SDL.texture.create.opengles2.texture_uv" ### string, not number "\"SDL.texture.create.opengles2.texture_uv\"" */
/* #define SDL_PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_U_NUMBER  "SDL.texture.create.opengles2.texture_u" ### string, not number "\"SDL.texture.create.opengles2.texture_u\"" */
/* #define SDL_PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_V_NUMBER  "SDL.texture.create.opengles2.texture_v" ### string, not number "\"SDL.texture.create.opengles2.texture_v\"" */
/* #define SDL_PROP_TEXTURE_CREATE_VULKAN_TEXTURE_NUMBER       "SDL.texture.create.vulkan.texture" ### string, not number "\"SDL.texture.create.vulkan.texture\"" */
/* #define SDL_PROP_TEXTURE_COLORSPACE_NUMBER                  "SDL.texture.colorspace" ### string, not number "\"SDL.texture.colorspace\"" */
/* #define SDL_PROP_TEXTURE_FORMAT_NUMBER                      "SDL.texture.format" ### string, not number "\"SDL.texture.format\"" */
/* #define SDL_PROP_TEXTURE_ACCESS_NUMBER                      "SDL.texture.access" ### string, not number "\"SDL.texture.access\"" */
/* #define SDL_PROP_TEXTURE_WIDTH_NUMBER                       "SDL.texture.width" ### string, not number "\"SDL.texture.width\"" */
/* #define SDL_PROP_TEXTURE_HEIGHT_NUMBER                      "SDL.texture.height" ### string, not number "\"SDL.texture.height\"" */
/* #define SDL_PROP_TEXTURE_SDR_WHITE_POINT_FLOAT              "SDL.texture.SDR_white_point" ### string, not number "\"SDL.texture.SDR_white_point\"" */
/* #define SDL_PROP_TEXTURE_HDR_HEADROOM_FLOAT                 "SDL.texture.HDR_headroom" ### string, not number "\"SDL.texture.HDR_headroom\"" */
/* #define SDL_PROP_TEXTURE_D3D11_TEXTURE_POINTER              "SDL.texture.d3d11.texture" ### string, not number "\"SDL.texture.d3d11.texture\"" */
/* #define SDL_PROP_TEXTURE_D3D11_TEXTURE_U_POINTER            "SDL.texture.d3d11.texture_u" ### string, not number "\"SDL.texture.d3d11.texture_u\"" */
/* #define SDL_PROP_TEXTURE_D3D11_TEXTURE_V_POINTER            "SDL.texture.d3d11.texture_v" ### string, not number "\"SDL.texture.d3d11.texture_v\"" */
/* #define SDL_PROP_TEXTURE_D3D12_TEXTURE_POINTER              "SDL.texture.d3d12.texture" ### string, not number "\"SDL.texture.d3d12.texture\"" */
/* #define SDL_PROP_TEXTURE_D3D12_TEXTURE_U_POINTER            "SDL.texture.d3d12.texture_u" ### string, not number "\"SDL.texture.d3d12.texture_u\"" */
/* #define SDL_PROP_TEXTURE_D3D12_TEXTURE_V_POINTER            "SDL.texture.d3d12.texture_v" ### string, not number "\"SDL.texture.d3d12.texture_v\"" */
/* #define SDL_PROP_TEXTURE_OPENGL_TEXTURE_NUMBER              "SDL.texture.opengl.texture" ### string, not number "\"SDL.texture.opengl.texture\"" */
/* #define SDL_PROP_TEXTURE_OPENGL_TEXTURE_UV_NUMBER           "SDL.texture.opengl.texture_uv" ### string, not number "\"SDL.texture.opengl.texture_uv\"" */
/* #define SDL_PROP_TEXTURE_OPENGL_TEXTURE_U_NUMBER            "SDL.texture.opengl.texture_u" ### string, not number "\"SDL.texture.opengl.texture_u\"" */
/* #define SDL_PROP_TEXTURE_OPENGL_TEXTURE_V_NUMBER            "SDL.texture.opengl.texture_v" ### string, not number "\"SDL.texture.opengl.texture_v\"" */
/* #define SDL_PROP_TEXTURE_OPENGL_TEXTURE_TARGET_NUMBER       "SDL.texture.opengl.target" ### string, not number "\"SDL.texture.opengl.target\"" */
/* #define SDL_PROP_TEXTURE_OPENGL_TEX_W_FLOAT                 "SDL.texture.opengl.tex_w" ### string, not number "\"SDL.texture.opengl.tex_w\"" */
/* #define SDL_PROP_TEXTURE_OPENGL_TEX_H_FLOAT                 "SDL.texture.opengl.tex_h" ### string, not number "\"SDL.texture.opengl.tex_h\"" */
/* #define SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_NUMBER           "SDL.texture.opengles2.texture" ### string, not number "\"SDL.texture.opengles2.texture\"" */
/* #define SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_UV_NUMBER        "SDL.texture.opengles2.texture_uv" ### string, not number "\"SDL.texture.opengles2.texture_uv\"" */
/* #define SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_U_NUMBER         "SDL.texture.opengles2.texture_u" ### string, not number "\"SDL.texture.opengles2.texture_u\"" */
/* #define SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_V_NUMBER         "SDL.texture.opengles2.texture_v" ### string, not number "\"SDL.texture.opengles2.texture_v\"" */
/* #define SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_TARGET_NUMBER    "SDL.texture.opengles2.target" ### string, not number "\"SDL.texture.opengles2.target\"" */
/* #define SDL_PROP_TEXTURE_VULKAN_TEXTURE_NUMBER              "SDL.texture.vulkan.texture" ### string, not number "\"SDL.texture.vulkan.texture\"" */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
/* manually commented out: enum { SDL_begin_code_h = 1 }; */
--]]

-- typedefs

if ffi.os == 'OSX' then
	require 'ffi.req' 'c.AvailabilityMacros'
	require 'ffi.req' 'c.stdarg'
	require 'ffi.req' 'c.stdint'
	require 'ffi.req' 'c.string'
	require 'ffi.req' 'c.wchar'
	require 'ffi.req' 'c.inttypes'
	require 'ffi.req' 'c.stdbool'
end

ffi.cdef[[
typedef int8_t Sint8;
typedef uint8_t Uint8;
typedef int16_t Sint16;
typedef uint16_t Uint16;
typedef int32_t Sint32;
typedef uint32_t Uint32;
typedef int64_t Sint64;
]]

-- typedef enums

ffi.cdef[[
typedef enum SDL_DUMMY_ENUM { DUMMY_ENUM_VALUE } SDL_DUMMY_ENUM;
typedef enum SDL_AssertState { SDL_ASSERTION_RETRY, SDL_ASSERTION_BREAK, SDL_ASSERTION_ABORT, SDL_ASSERTION_IGNORE, SDL_ASSERTION_ALWAYS_IGNORE } SDL_AssertState;
typedef enum SDL_AsyncIOTaskType { SDL_ASYNCIO_TASK_READ, SDL_ASYNCIO_TASK_WRITE, SDL_ASYNCIO_TASK_CLOSE } SDL_AsyncIOTaskType;
typedef enum SDL_AsyncIOResult { SDL_ASYNCIO_COMPLETE, SDL_ASYNCIO_FAILURE, SDL_ASYNCIO_CANCELED } SDL_AsyncIOResult;
typedef enum SDL_PropertyType { SDL_PROPERTY_TYPE_INVALID, SDL_PROPERTY_TYPE_POINTER, SDL_PROPERTY_TYPE_STRING, SDL_PROPERTY_TYPE_NUMBER, SDL_PROPERTY_TYPE_FLOAT, SDL_PROPERTY_TYPE_BOOLEAN } SDL_PropertyType;
typedef enum SDL_ThreadPriority { SDL_THREAD_PRIORITY_LOW, SDL_THREAD_PRIORITY_NORMAL, SDL_THREAD_PRIORITY_HIGH, SDL_THREAD_PRIORITY_TIME_CRITICAL } SDL_ThreadPriority;
typedef enum SDL_ThreadState { SDL_THREAD_UNKNOWN, SDL_THREAD_ALIVE, SDL_THREAD_DETACHED, SDL_THREAD_COMPLETE } SDL_ThreadState;
typedef enum SDL_InitStatus { SDL_INIT_STATUS_UNINITIALIZED, SDL_INIT_STATUS_INITIALIZING, SDL_INIT_STATUS_INITIALIZED, SDL_INIT_STATUS_UNINITIALIZING } SDL_InitStatus;
typedef enum SDL_IOStatus { SDL_IO_STATUS_READY, SDL_IO_STATUS_ERROR, SDL_IO_STATUS_EOF, SDL_IO_STATUS_NOT_READY, SDL_IO_STATUS_READONLY, SDL_IO_STATUS_WRITEONLY } SDL_IOStatus;
typedef enum SDL_IOWhence { SDL_IO_SEEK_SET, SDL_IO_SEEK_CUR, SDL_IO_SEEK_END } SDL_IOWhence;
typedef enum SDL_AudioFormat { SDL_AUDIO_UNKNOWN = 0x0000u, SDL_AUDIO_U8 = 0x0008u, SDL_AUDIO_S8 = 0x8008u, SDL_AUDIO_S16LE = 0x8010u, SDL_AUDIO_S16BE = 0x9010u, SDL_AUDIO_S32LE = 0x8020u, SDL_AUDIO_S32BE = 0x9020u, SDL_AUDIO_F32LE = 0x8120u, SDL_AUDIO_F32BE = 0x9120u, SDL_AUDIO_S16 = SDL_AUDIO_S16LE, SDL_AUDIO_S32 = SDL_AUDIO_S32LE, SDL_AUDIO_F32 = SDL_AUDIO_F32LE } SDL_AudioFormat;
typedef enum SDL_BlendOperation { SDL_BLENDOPERATION_ADD = 0x1, SDL_BLENDOPERATION_SUBTRACT = 0x2, SDL_BLENDOPERATION_REV_SUBTRACT = 0x3, SDL_BLENDOPERATION_MINIMUM = 0x4, SDL_BLENDOPERATION_MAXIMUM = 0x5 } SDL_BlendOperation;
typedef enum SDL_BlendFactor { SDL_BLENDFACTOR_ZERO = 0x1, SDL_BLENDFACTOR_ONE = 0x2, SDL_BLENDFACTOR_SRC_COLOR = 0x3, SDL_BLENDFACTOR_ONE_MINUS_SRC_COLOR = 0x4, SDL_BLENDFACTOR_SRC_ALPHA = 0x5, SDL_BLENDFACTOR_ONE_MINUS_SRC_ALPHA = 0x6, SDL_BLENDFACTOR_DST_COLOR = 0x7, SDL_BLENDFACTOR_ONE_MINUS_DST_COLOR = 0x8, SDL_BLENDFACTOR_DST_ALPHA = 0x9, SDL_BLENDFACTOR_ONE_MINUS_DST_ALPHA = 0xA } SDL_BlendFactor;
typedef enum SDL_PixelType { SDL_PIXELTYPE_UNKNOWN, SDL_PIXELTYPE_INDEX1, SDL_PIXELTYPE_INDEX4, SDL_PIXELTYPE_INDEX8, SDL_PIXELTYPE_PACKED8, SDL_PIXELTYPE_PACKED16, SDL_PIXELTYPE_PACKED32, SDL_PIXELTYPE_ARRAYU8, SDL_PIXELTYPE_ARRAYU16, SDL_PIXELTYPE_ARRAYU32, SDL_PIXELTYPE_ARRAYF16, SDL_PIXELTYPE_ARRAYF32, SDL_PIXELTYPE_INDEX2 } SDL_PixelType;
typedef enum SDL_BitmapOrder { SDL_BITMAPORDER_NONE, SDL_BITMAPORDER_4321, SDL_BITMAPORDER_1234 } SDL_BitmapOrder;
typedef enum SDL_PackedOrder { SDL_PACKEDORDER_NONE, SDL_PACKEDORDER_XRGB, SDL_PACKEDORDER_RGBX, SDL_PACKEDORDER_ARGB, SDL_PACKEDORDER_RGBA, SDL_PACKEDORDER_XBGR, SDL_PACKEDORDER_BGRX, SDL_PACKEDORDER_ABGR, SDL_PACKEDORDER_BGRA } SDL_PackedOrder;
typedef enum SDL_ArrayOrder { SDL_ARRAYORDER_NONE, SDL_ARRAYORDER_RGB, SDL_ARRAYORDER_RGBA, SDL_ARRAYORDER_ARGB, SDL_ARRAYORDER_BGR, SDL_ARRAYORDER_BGRA, SDL_ARRAYORDER_ABGR } SDL_ArrayOrder;
typedef enum SDL_PackedLayout { SDL_PACKEDLAYOUT_NONE, SDL_PACKEDLAYOUT_332, SDL_PACKEDLAYOUT_4444, SDL_PACKEDLAYOUT_1555, SDL_PACKEDLAYOUT_5551, SDL_PACKEDLAYOUT_565, SDL_PACKEDLAYOUT_8888, SDL_PACKEDLAYOUT_2101010, SDL_PACKEDLAYOUT_1010102 } SDL_PackedLayout;
typedef enum SDL_PixelFormat { SDL_PIXELFORMAT_UNKNOWN = 0, SDL_PIXELFORMAT_INDEX1LSB = 0x11100100u, SDL_PIXELFORMAT_INDEX1MSB = 0x11200100u, SDL_PIXELFORMAT_INDEX2LSB = 0x1c100200u, SDL_PIXELFORMAT_INDEX2MSB = 0x1c200200u, SDL_PIXELFORMAT_INDEX4LSB = 0x12100400u, SDL_PIXELFORMAT_INDEX4MSB = 0x12200400u, SDL_PIXELFORMAT_INDEX8 = 0x13000801u, SDL_PIXELFORMAT_RGB332 = 0x14110801u, SDL_PIXELFORMAT_XRGB4444 = 0x15120c02u, SDL_PIXELFORMAT_XBGR4444 = 0x15520c02u, SDL_PIXELFORMAT_XRGB1555 = 0x15130f02u, SDL_PIXELFORMAT_XBGR1555 = 0x15530f02u, SDL_PIXELFORMAT_ARGB4444 = 0x15321002u, SDL_PIXELFORMAT_RGBA4444 = 0x15421002u, SDL_PIXELFORMAT_ABGR4444 = 0x15721002u, SDL_PIXELFORMAT_BGRA4444 = 0x15821002u, SDL_PIXELFORMAT_ARGB1555 = 0x15331002u, SDL_PIXELFORMAT_RGBA5551 = 0x15441002u, SDL_PIXELFORMAT_ABGR1555 = 0x15731002u, SDL_PIXELFORMAT_BGRA5551 = 0x15841002u, SDL_PIXELFORMAT_RGB565 = 0x15151002u, SDL_PIXELFORMAT_BGR565 = 0x15551002u, SDL_PIXELFORMAT_RGB24 = 0x17101803u, SDL_PIXELFORMAT_BGR24 = 0x17401803u, SDL_PIXELFORMAT_XRGB8888 = 0x16161804u, SDL_PIXELFORMAT_RGBX8888 = 0x16261804u, SDL_PIXELFORMAT_XBGR8888 = 0x16561804u, SDL_PIXELFORMAT_BGRX8888 = 0x16661804u, SDL_PIXELFORMAT_ARGB8888 = 0x16362004u, SDL_PIXELFORMAT_RGBA8888 = 0x16462004u, SDL_PIXELFORMAT_ABGR8888 = 0x16762004u, SDL_PIXELFORMAT_BGRA8888 = 0x16862004u, SDL_PIXELFORMAT_XRGB2101010 = 0x16172004u, SDL_PIXELFORMAT_XBGR2101010 = 0x16572004u, SDL_PIXELFORMAT_ARGB2101010 = 0x16372004u, SDL_PIXELFORMAT_ABGR2101010 = 0x16772004u, SDL_PIXELFORMAT_RGB48 = 0x18103006u, SDL_PIXELFORMAT_BGR48 = 0x18403006u, SDL_PIXELFORMAT_RGBA64 = 0x18204008u, SDL_PIXELFORMAT_ARGB64 = 0x18304008u, SDL_PIXELFORMAT_BGRA64 = 0x18504008u, SDL_PIXELFORMAT_ABGR64 = 0x18604008u, SDL_PIXELFORMAT_RGB48_FLOAT = 0x1a103006u, SDL_PIXELFORMAT_BGR48_FLOAT = 0x1a403006u, SDL_PIXELFORMAT_RGBA64_FLOAT = 0x1a204008u, SDL_PIXELFORMAT_ARGB64_FLOAT = 0x1a304008u, SDL_PIXELFORMAT_BGRA64_FLOAT = 0x1a504008u, SDL_PIXELFORMAT_ABGR64_FLOAT = 0x1a604008u, SDL_PIXELFORMAT_RGB96_FLOAT = 0x1b10600cu, SDL_PIXELFORMAT_BGR96_FLOAT = 0x1b40600cu, SDL_PIXELFORMAT_RGBA128_FLOAT = 0x1b208010u, SDL_PIXELFORMAT_ARGB128_FLOAT = 0x1b308010u, SDL_PIXELFORMAT_BGRA128_FLOAT = 0x1b508010u, SDL_PIXELFORMAT_ABGR128_FLOAT = 0x1b608010u, SDL_PIXELFORMAT_YV12 = 0x32315659u, SDL_PIXELFORMAT_IYUV = 0x56555949u, SDL_PIXELFORMAT_YUY2 = 0x32595559u, SDL_PIXELFORMAT_UYVY = 0x59565955u, SDL_PIXELFORMAT_YVYU = 0x55595659u, SDL_PIXELFORMAT_NV12 = 0x3231564eu, SDL_PIXELFORMAT_NV21 = 0x3132564eu, SDL_PIXELFORMAT_P010 = 0x30313050u, SDL_PIXELFORMAT_EXTERNAL_OES = 0x2053454fu, SDL_PIXELFORMAT_MJPG = 0x47504a4du, SDL_PIXELFORMAT_RGBA32 = SDL_PIXELFORMAT_ABGR8888, SDL_PIXELFORMAT_ARGB32 = SDL_PIXELFORMAT_BGRA8888, SDL_PIXELFORMAT_BGRA32 = SDL_PIXELFORMAT_ARGB8888, SDL_PIXELFORMAT_ABGR32 = SDL_PIXELFORMAT_RGBA8888, SDL_PIXELFORMAT_RGBX32 = SDL_PIXELFORMAT_XBGR8888, SDL_PIXELFORMAT_XRGB32 = SDL_PIXELFORMAT_BGRX8888, SDL_PIXELFORMAT_BGRX32 = SDL_PIXELFORMAT_XRGB8888, SDL_PIXELFORMAT_XBGR32 = SDL_PIXELFORMAT_RGBX8888 } SDL_PixelFormat;
typedef enum SDL_ColorType { SDL_COLOR_TYPE_UNKNOWN = 0, SDL_COLOR_TYPE_RGB = 1, SDL_COLOR_TYPE_YCBCR = 2 } SDL_ColorType;
typedef enum SDL_ColorRange { SDL_COLOR_RANGE_UNKNOWN = 0, SDL_COLOR_RANGE_LIMITED = 1, SDL_COLOR_RANGE_FULL = 2 } SDL_ColorRange;
typedef enum SDL_ColorPrimaries { SDL_COLOR_PRIMARIES_UNKNOWN = 0, SDL_COLOR_PRIMARIES_BT709 = 1, SDL_COLOR_PRIMARIES_UNSPECIFIED = 2, SDL_COLOR_PRIMARIES_BT470M = 4, SDL_COLOR_PRIMARIES_BT470BG = 5, SDL_COLOR_PRIMARIES_BT601 = 6, SDL_COLOR_PRIMARIES_SMPTE240 = 7, SDL_COLOR_PRIMARIES_GENERIC_FILM = 8, SDL_COLOR_PRIMARIES_BT2020 = 9, SDL_COLOR_PRIMARIES_XYZ = 10, SDL_COLOR_PRIMARIES_SMPTE431 = 11, SDL_COLOR_PRIMARIES_SMPTE432 = 12, SDL_COLOR_PRIMARIES_EBU3213 = 22, SDL_COLOR_PRIMARIES_CUSTOM = 31 } SDL_ColorPrimaries;
typedef enum SDL_TransferCharacteristics { SDL_TRANSFER_CHARACTERISTICS_UNKNOWN = 0, SDL_TRANSFER_CHARACTERISTICS_BT709 = 1, SDL_TRANSFER_CHARACTERISTICS_UNSPECIFIED = 2, SDL_TRANSFER_CHARACTERISTICS_GAMMA22 = 4, SDL_TRANSFER_CHARACTERISTICS_GAMMA28 = 5, SDL_TRANSFER_CHARACTERISTICS_BT601 = 6, SDL_TRANSFER_CHARACTERISTICS_SMPTE240 = 7, SDL_TRANSFER_CHARACTERISTICS_LINEAR = 8, SDL_TRANSFER_CHARACTERISTICS_LOG100 = 9, SDL_TRANSFER_CHARACTERISTICS_LOG100_SQRT10 = 10, SDL_TRANSFER_CHARACTERISTICS_IEC61966 = 11, SDL_TRANSFER_CHARACTERISTICS_BT1361 = 12, SDL_TRANSFER_CHARACTERISTICS_SRGB = 13, SDL_TRANSFER_CHARACTERISTICS_BT2020_10BIT = 14, SDL_TRANSFER_CHARACTERISTICS_BT2020_12BIT = 15, SDL_TRANSFER_CHARACTERISTICS_PQ = 16, SDL_TRANSFER_CHARACTERISTICS_SMPTE428 = 17, SDL_TRANSFER_CHARACTERISTICS_HLG = 18, SDL_TRANSFER_CHARACTERISTICS_CUSTOM = 31 } SDL_TransferCharacteristics;
typedef enum SDL_MatrixCoefficients { SDL_MATRIX_COEFFICIENTS_IDENTITY = 0, SDL_MATRIX_COEFFICIENTS_BT709 = 1, SDL_MATRIX_COEFFICIENTS_UNSPECIFIED = 2, SDL_MATRIX_COEFFICIENTS_FCC = 4, SDL_MATRIX_COEFFICIENTS_BT470BG = 5, SDL_MATRIX_COEFFICIENTS_BT601 = 6, SDL_MATRIX_COEFFICIENTS_SMPTE240 = 7, SDL_MATRIX_COEFFICIENTS_YCGCO = 8, SDL_MATRIX_COEFFICIENTS_BT2020_NCL = 9, SDL_MATRIX_COEFFICIENTS_BT2020_CL = 10, SDL_MATRIX_COEFFICIENTS_SMPTE2085 = 11, SDL_MATRIX_COEFFICIENTS_CHROMA_DERIVED_NCL = 12, SDL_MATRIX_COEFFICIENTS_CHROMA_DERIVED_CL = 13, SDL_MATRIX_COEFFICIENTS_ICTCP = 14, SDL_MATRIX_COEFFICIENTS_CUSTOM = 31 } SDL_MatrixCoefficients;
typedef enum SDL_ChromaLocation { SDL_CHROMA_LOCATION_NONE = 0, SDL_CHROMA_LOCATION_LEFT = 1, SDL_CHROMA_LOCATION_CENTER = 2, SDL_CHROMA_LOCATION_TOPLEFT = 3 } SDL_ChromaLocation;
typedef enum SDL_Colorspace { SDL_COLORSPACE_UNKNOWN = 0, SDL_COLORSPACE_SRGB = 0x120005a0u, SDL_COLORSPACE_SRGB_LINEAR = 0x12000500u, SDL_COLORSPACE_HDR10 = 0x12002600u, SDL_COLORSPACE_JPEG = 0x220004c6u, SDL_COLORSPACE_BT601_LIMITED = 0x211018c6u, SDL_COLORSPACE_BT601_FULL = 0x221018c6u, SDL_COLORSPACE_BT709_LIMITED = 0x21100421u, SDL_COLORSPACE_BT709_FULL = 0x22100421u, SDL_COLORSPACE_BT2020_LIMITED = 0x21102609u, SDL_COLORSPACE_BT2020_FULL = 0x22102609u, SDL_COLORSPACE_RGB_DEFAULT = SDL_COLORSPACE_SRGB, SDL_COLORSPACE_YUV_DEFAULT = SDL_COLORSPACE_JPEG } SDL_Colorspace;
typedef enum SDL_ScaleMode { SDL_SCALEMODE_INVALID = -1, SDL_SCALEMODE_NEAREST, SDL_SCALEMODE_LINEAR } SDL_ScaleMode;
typedef enum SDL_FlipMode { SDL_FLIP_NONE, SDL_FLIP_HORIZONTAL, SDL_FLIP_VERTICAL } SDL_FlipMode;
typedef enum SDL_CameraPosition { SDL_CAMERA_POSITION_UNKNOWN, SDL_CAMERA_POSITION_FRONT_FACING, SDL_CAMERA_POSITION_BACK_FACING } SDL_CameraPosition;
typedef enum SDL_SystemTheme { SDL_SYSTEM_THEME_UNKNOWN, SDL_SYSTEM_THEME_LIGHT, SDL_SYSTEM_THEME_DARK } SDL_SystemTheme;
typedef enum SDL_DisplayOrientation { SDL_ORIENTATION_UNKNOWN, SDL_ORIENTATION_LANDSCAPE, SDL_ORIENTATION_LANDSCAPE_FLIPPED, SDL_ORIENTATION_PORTRAIT, SDL_ORIENTATION_PORTRAIT_FLIPPED } SDL_DisplayOrientation;
typedef enum SDL_FlashOperation { SDL_FLASH_CANCEL, SDL_FLASH_BRIEFLY, SDL_FLASH_UNTIL_FOCUSED } SDL_FlashOperation;
typedef enum SDL_GLAttr { SDL_GL_RED_SIZE, SDL_GL_GREEN_SIZE, SDL_GL_BLUE_SIZE, SDL_GL_ALPHA_SIZE, SDL_GL_BUFFER_SIZE, SDL_GL_DOUBLEBUFFER, SDL_GL_DEPTH_SIZE, SDL_GL_STENCIL_SIZE, SDL_GL_ACCUM_RED_SIZE, SDL_GL_ACCUM_GREEN_SIZE, SDL_GL_ACCUM_BLUE_SIZE, SDL_GL_ACCUM_ALPHA_SIZE, SDL_GL_STEREO, SDL_GL_MULTISAMPLEBUFFERS, SDL_GL_MULTISAMPLESAMPLES, SDL_GL_ACCELERATED_VISUAL, SDL_GL_RETAINED_BACKING, SDL_GL_CONTEXT_MAJOR_VERSION, SDL_GL_CONTEXT_MINOR_VERSION, SDL_GL_CONTEXT_FLAGS, SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_SHARE_WITH_CURRENT_CONTEXT, SDL_GL_FRAMEBUFFER_SRGB_CAPABLE, SDL_GL_CONTEXT_RELEASE_BEHAVIOR, SDL_GL_CONTEXT_RESET_NOTIFICATION, SDL_GL_CONTEXT_NO_ERROR, SDL_GL_FLOATBUFFERS, SDL_GL_EGL_PLATFORM } SDL_GLAttr;
typedef enum SDL_HitTestResult { SDL_HITTEST_NORMAL, SDL_HITTEST_DRAGGABLE, SDL_HITTEST_RESIZE_TOPLEFT, SDL_HITTEST_RESIZE_TOP, SDL_HITTEST_RESIZE_TOPRIGHT, SDL_HITTEST_RESIZE_RIGHT, SDL_HITTEST_RESIZE_BOTTOMRIGHT, SDL_HITTEST_RESIZE_BOTTOM, SDL_HITTEST_RESIZE_BOTTOMLEFT, SDL_HITTEST_RESIZE_LEFT } SDL_HitTestResult;
typedef enum SDL_FileDialogType { SDL_FILEDIALOG_OPENFILE, SDL_FILEDIALOG_SAVEFILE, SDL_FILEDIALOG_OPENFOLDER } SDL_FileDialogType;
typedef enum SDL_PowerState { SDL_POWERSTATE_ERROR = -1, SDL_POWERSTATE_UNKNOWN, SDL_POWERSTATE_ON_BATTERY, SDL_POWERSTATE_NO_BATTERY, SDL_POWERSTATE_CHARGING, SDL_POWERSTATE_CHARGED } SDL_PowerState;
typedef enum SDL_SensorType { SDL_SENSOR_INVALID = -1, SDL_SENSOR_UNKNOWN, SDL_SENSOR_ACCEL, SDL_SENSOR_GYRO, SDL_SENSOR_ACCEL_L, SDL_SENSOR_GYRO_L, SDL_SENSOR_ACCEL_R, SDL_SENSOR_GYRO_R } SDL_SensorType;
typedef enum SDL_JoystickType { SDL_JOYSTICK_TYPE_UNKNOWN, SDL_JOYSTICK_TYPE_GAMEPAD, SDL_JOYSTICK_TYPE_WHEEL, SDL_JOYSTICK_TYPE_ARCADE_STICK, SDL_JOYSTICK_TYPE_FLIGHT_STICK, SDL_JOYSTICK_TYPE_DANCE_PAD, SDL_JOYSTICK_TYPE_GUITAR, SDL_JOYSTICK_TYPE_DRUM_KIT, SDL_JOYSTICK_TYPE_ARCADE_PAD, SDL_JOYSTICK_TYPE_THROTTLE, SDL_JOYSTICK_TYPE_COUNT } SDL_JoystickType;
typedef enum SDL_JoystickConnectionState { SDL_JOYSTICK_CONNECTION_INVALID = -1, SDL_JOYSTICK_CONNECTION_UNKNOWN, SDL_JOYSTICK_CONNECTION_WIRED, SDL_JOYSTICK_CONNECTION_WIRELESS } SDL_JoystickConnectionState;
typedef enum SDL_GamepadType { SDL_GAMEPAD_TYPE_UNKNOWN = 0, SDL_GAMEPAD_TYPE_STANDARD, SDL_GAMEPAD_TYPE_XBOX360, SDL_GAMEPAD_TYPE_XBOXONE, SDL_GAMEPAD_TYPE_PS3, SDL_GAMEPAD_TYPE_PS4, SDL_GAMEPAD_TYPE_PS5, SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_PRO, SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_LEFT, SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT, SDL_GAMEPAD_TYPE_NINTENDO_SWITCH_JOYCON_PAIR, SDL_GAMEPAD_TYPE_COUNT } SDL_GamepadType;
typedef enum SDL_GamepadButton { SDL_GAMEPAD_BUTTON_INVALID = -1, SDL_GAMEPAD_BUTTON_SOUTH, SDL_GAMEPAD_BUTTON_EAST, SDL_GAMEPAD_BUTTON_WEST, SDL_GAMEPAD_BUTTON_NORTH, SDL_GAMEPAD_BUTTON_BACK, SDL_GAMEPAD_BUTTON_GUIDE, SDL_GAMEPAD_BUTTON_START, SDL_GAMEPAD_BUTTON_LEFT_STICK, SDL_GAMEPAD_BUTTON_RIGHT_STICK, SDL_GAMEPAD_BUTTON_LEFT_SHOULDER, SDL_GAMEPAD_BUTTON_RIGHT_SHOULDER, SDL_GAMEPAD_BUTTON_DPAD_UP, SDL_GAMEPAD_BUTTON_DPAD_DOWN, SDL_GAMEPAD_BUTTON_DPAD_LEFT, SDL_GAMEPAD_BUTTON_DPAD_RIGHT, SDL_GAMEPAD_BUTTON_MISC1, SDL_GAMEPAD_BUTTON_RIGHT_PADDLE1, SDL_GAMEPAD_BUTTON_LEFT_PADDLE1, SDL_GAMEPAD_BUTTON_RIGHT_PADDLE2, SDL_GAMEPAD_BUTTON_LEFT_PADDLE2, SDL_GAMEPAD_BUTTON_TOUCHPAD, SDL_GAMEPAD_BUTTON_MISC2, SDL_GAMEPAD_BUTTON_MISC3, SDL_GAMEPAD_BUTTON_MISC4, SDL_GAMEPAD_BUTTON_MISC5, SDL_GAMEPAD_BUTTON_MISC6, SDL_GAMEPAD_BUTTON_COUNT } SDL_GamepadButton;
typedef enum SDL_GamepadButtonLabel { SDL_GAMEPAD_BUTTON_LABEL_UNKNOWN, SDL_GAMEPAD_BUTTON_LABEL_A, SDL_GAMEPAD_BUTTON_LABEL_B, SDL_GAMEPAD_BUTTON_LABEL_X, SDL_GAMEPAD_BUTTON_LABEL_Y, SDL_GAMEPAD_BUTTON_LABEL_CROSS, SDL_GAMEPAD_BUTTON_LABEL_CIRCLE, SDL_GAMEPAD_BUTTON_LABEL_SQUARE, SDL_GAMEPAD_BUTTON_LABEL_TRIANGLE } SDL_GamepadButtonLabel;
typedef enum SDL_GamepadAxis { SDL_GAMEPAD_AXIS_INVALID = -1, SDL_GAMEPAD_AXIS_LEFTX, SDL_GAMEPAD_AXIS_LEFTY, SDL_GAMEPAD_AXIS_RIGHTX, SDL_GAMEPAD_AXIS_RIGHTY, SDL_GAMEPAD_AXIS_LEFT_TRIGGER, SDL_GAMEPAD_AXIS_RIGHT_TRIGGER, SDL_GAMEPAD_AXIS_COUNT } SDL_GamepadAxis;
typedef enum SDL_GamepadBindingType { SDL_GAMEPAD_BINDTYPE_NONE = 0, SDL_GAMEPAD_BINDTYPE_BUTTON, SDL_GAMEPAD_BINDTYPE_AXIS, SDL_GAMEPAD_BINDTYPE_HAT } SDL_GamepadBindingType;
typedef enum SDL_Scancode { SDL_SCANCODE_UNKNOWN = 0, SDL_SCANCODE_A = 4, SDL_SCANCODE_B = 5, SDL_SCANCODE_C = 6, SDL_SCANCODE_D = 7, SDL_SCANCODE_E = 8, SDL_SCANCODE_F = 9, SDL_SCANCODE_G = 10, SDL_SCANCODE_H = 11, SDL_SCANCODE_I = 12, SDL_SCANCODE_J = 13, SDL_SCANCODE_K = 14, SDL_SCANCODE_L = 15, SDL_SCANCODE_M = 16, SDL_SCANCODE_N = 17, SDL_SCANCODE_O = 18, SDL_SCANCODE_P = 19, SDL_SCANCODE_Q = 20, SDL_SCANCODE_R = 21, SDL_SCANCODE_S = 22, SDL_SCANCODE_T = 23, SDL_SCANCODE_U = 24, SDL_SCANCODE_V = 25, SDL_SCANCODE_W = 26, SDL_SCANCODE_X = 27, SDL_SCANCODE_Y = 28, SDL_SCANCODE_Z = 29, SDL_SCANCODE_1 = 30, SDL_SCANCODE_2 = 31, SDL_SCANCODE_3 = 32, SDL_SCANCODE_4 = 33, SDL_SCANCODE_5 = 34, SDL_SCANCODE_6 = 35, SDL_SCANCODE_7 = 36, SDL_SCANCODE_8 = 37, SDL_SCANCODE_9 = 38, SDL_SCANCODE_0 = 39, SDL_SCANCODE_RETURN = 40, SDL_SCANCODE_ESCAPE = 41, SDL_SCANCODE_BACKSPACE = 42, SDL_SCANCODE_TAB = 43, SDL_SCANCODE_SPACE = 44, SDL_SCANCODE_MINUS = 45, SDL_SCANCODE_EQUALS = 46, SDL_SCANCODE_LEFTBRACKET = 47, SDL_SCANCODE_RIGHTBRACKET = 48, SDL_SCANCODE_BACKSLASH = 49, SDL_SCANCODE_NONUSHASH = 50, SDL_SCANCODE_SEMICOLON = 51, SDL_SCANCODE_APOSTROPHE = 52, SDL_SCANCODE_GRAVE = 53, SDL_SCANCODE_COMMA = 54, SDL_SCANCODE_PERIOD = 55, SDL_SCANCODE_SLASH = 56, SDL_SCANCODE_CAPSLOCK = 57, SDL_SCANCODE_F1 = 58, SDL_SCANCODE_F2 = 59, SDL_SCANCODE_F3 = 60, SDL_SCANCODE_F4 = 61, SDL_SCANCODE_F5 = 62, SDL_SCANCODE_F6 = 63, SDL_SCANCODE_F7 = 64, SDL_SCANCODE_F8 = 65, SDL_SCANCODE_F9 = 66, SDL_SCANCODE_F10 = 67, SDL_SCANCODE_F11 = 68, SDL_SCANCODE_F12 = 69, SDL_SCANCODE_PRINTSCREEN = 70, SDL_SCANCODE_SCROLLLOCK = 71, SDL_SCANCODE_PAUSE = 72, SDL_SCANCODE_INSERT = 73, SDL_SCANCODE_HOME = 74, SDL_SCANCODE_PAGEUP = 75, SDL_SCANCODE_DELETE = 76, SDL_SCANCODE_END = 77, SDL_SCANCODE_PAGEDOWN = 78, SDL_SCANCODE_RIGHT = 79, SDL_SCANCODE_LEFT = 80, SDL_SCANCODE_DOWN = 81, SDL_SCANCODE_UP = 82, SDL_SCANCODE_NUMLOCKCLEAR = 83, SDL_SCANCODE_KP_DIVIDE = 84, SDL_SCANCODE_KP_MULTIPLY = 85, SDL_SCANCODE_KP_MINUS = 86, SDL_SCANCODE_KP_PLUS = 87, SDL_SCANCODE_KP_ENTER = 88, SDL_SCANCODE_KP_1 = 89, SDL_SCANCODE_KP_2 = 90, SDL_SCANCODE_KP_3 = 91, SDL_SCANCODE_KP_4 = 92, SDL_SCANCODE_KP_5 = 93, SDL_SCANCODE_KP_6 = 94, SDL_SCANCODE_KP_7 = 95, SDL_SCANCODE_KP_8 = 96, SDL_SCANCODE_KP_9 = 97, SDL_SCANCODE_KP_0 = 98, SDL_SCANCODE_KP_PERIOD = 99, SDL_SCANCODE_NONUSBACKSLASH = 100, SDL_SCANCODE_APPLICATION = 101, SDL_SCANCODE_POWER = 102, SDL_SCANCODE_KP_EQUALS = 103, SDL_SCANCODE_F13 = 104, SDL_SCANCODE_F14 = 105, SDL_SCANCODE_F15 = 106, SDL_SCANCODE_F16 = 107, SDL_SCANCODE_F17 = 108, SDL_SCANCODE_F18 = 109, SDL_SCANCODE_F19 = 110, SDL_SCANCODE_F20 = 111, SDL_SCANCODE_F21 = 112, SDL_SCANCODE_F22 = 113, SDL_SCANCODE_F23 = 114, SDL_SCANCODE_F24 = 115, SDL_SCANCODE_EXECUTE = 116, SDL_SCANCODE_HELP = 117, SDL_SCANCODE_MENU = 118, SDL_SCANCODE_SELECT = 119, SDL_SCANCODE_STOP = 120, SDL_SCANCODE_AGAIN = 121, SDL_SCANCODE_UNDO = 122, SDL_SCANCODE_CUT = 123, SDL_SCANCODE_COPY = 124, SDL_SCANCODE_PASTE = 125, SDL_SCANCODE_FIND = 126, SDL_SCANCODE_MUTE = 127, SDL_SCANCODE_VOLUMEUP = 128, SDL_SCANCODE_VOLUMEDOWN = 129, SDL_SCANCODE_KP_COMMA = 133, SDL_SCANCODE_KP_EQUALSAS400 = 134, SDL_SCANCODE_INTERNATIONAL1 = 135, SDL_SCANCODE_INTERNATIONAL2 = 136, SDL_SCANCODE_INTERNATIONAL3 = 137, SDL_SCANCODE_INTERNATIONAL4 = 138, SDL_SCANCODE_INTERNATIONAL5 = 139, SDL_SCANCODE_INTERNATIONAL6 = 140, SDL_SCANCODE_INTERNATIONAL7 = 141, SDL_SCANCODE_INTERNATIONAL8 = 142, SDL_SCANCODE_INTERNATIONAL9 = 143, SDL_SCANCODE_LANG1 = 144, SDL_SCANCODE_LANG2 = 145, SDL_SCANCODE_LANG3 = 146, SDL_SCANCODE_LANG4 = 147, SDL_SCANCODE_LANG5 = 148, SDL_SCANCODE_LANG6 = 149, SDL_SCANCODE_LANG7 = 150, SDL_SCANCODE_LANG8 = 151, SDL_SCANCODE_LANG9 = 152, SDL_SCANCODE_ALTERASE = 153, SDL_SCANCODE_SYSREQ = 154, SDL_SCANCODE_CANCEL = 155, SDL_SCANCODE_CLEAR = 156, SDL_SCANCODE_PRIOR = 157, SDL_SCANCODE_RETURN2 = 158, SDL_SCANCODE_SEPARATOR = 159, SDL_SCANCODE_OUT = 160, SDL_SCANCODE_OPER = 161, SDL_SCANCODE_CLEARAGAIN = 162, SDL_SCANCODE_CRSEL = 163, SDL_SCANCODE_EXSEL = 164, SDL_SCANCODE_KP_00 = 176, SDL_SCANCODE_KP_000 = 177, SDL_SCANCODE_THOUSANDSSEPARATOR = 178, SDL_SCANCODE_DECIMALSEPARATOR = 179, SDL_SCANCODE_CURRENCYUNIT = 180, SDL_SCANCODE_CURRENCYSUBUNIT = 181, SDL_SCANCODE_KP_LEFTPAREN = 182, SDL_SCANCODE_KP_RIGHTPAREN = 183, SDL_SCANCODE_KP_LEFTBRACE = 184, SDL_SCANCODE_KP_RIGHTBRACE = 185, SDL_SCANCODE_KP_TAB = 186, SDL_SCANCODE_KP_BACKSPACE = 187, SDL_SCANCODE_KP_A = 188, SDL_SCANCODE_KP_B = 189, SDL_SCANCODE_KP_C = 190, SDL_SCANCODE_KP_D = 191, SDL_SCANCODE_KP_E = 192, SDL_SCANCODE_KP_F = 193, SDL_SCANCODE_KP_XOR = 194, SDL_SCANCODE_KP_POWER = 195, SDL_SCANCODE_KP_PERCENT = 196, SDL_SCANCODE_KP_LESS = 197, SDL_SCANCODE_KP_GREATER = 198, SDL_SCANCODE_KP_AMPERSAND = 199, SDL_SCANCODE_KP_DBLAMPERSAND = 200, SDL_SCANCODE_KP_VERTICALBAR = 201, SDL_SCANCODE_KP_DBLVERTICALBAR = 202, SDL_SCANCODE_KP_COLON = 203, SDL_SCANCODE_KP_HASH = 204, SDL_SCANCODE_KP_SPACE = 205, SDL_SCANCODE_KP_AT = 206, SDL_SCANCODE_KP_EXCLAM = 207, SDL_SCANCODE_KP_MEMSTORE = 208, SDL_SCANCODE_KP_MEMRECALL = 209, SDL_SCANCODE_KP_MEMCLEAR = 210, SDL_SCANCODE_KP_MEMADD = 211, SDL_SCANCODE_KP_MEMSUBTRACT = 212, SDL_SCANCODE_KP_MEMMULTIPLY = 213, SDL_SCANCODE_KP_MEMDIVIDE = 214, SDL_SCANCODE_KP_PLUSMINUS = 215, SDL_SCANCODE_KP_CLEAR = 216, SDL_SCANCODE_KP_CLEARENTRY = 217, SDL_SCANCODE_KP_BINARY = 218, SDL_SCANCODE_KP_OCTAL = 219, SDL_SCANCODE_KP_DECIMAL = 220, SDL_SCANCODE_KP_HEXADECIMAL = 221, SDL_SCANCODE_LCTRL = 224, SDL_SCANCODE_LSHIFT = 225, SDL_SCANCODE_LALT = 226, SDL_SCANCODE_LGUI = 227, SDL_SCANCODE_RCTRL = 228, SDL_SCANCODE_RSHIFT = 229, SDL_SCANCODE_RALT = 230, SDL_SCANCODE_RGUI = 231, SDL_SCANCODE_MODE = 257, SDL_SCANCODE_SLEEP = 258, SDL_SCANCODE_WAKE = 259, SDL_SCANCODE_CHANNEL_INCREMENT = 260, SDL_SCANCODE_CHANNEL_DECREMENT = 261, SDL_SCANCODE_MEDIA_PLAY = 262, SDL_SCANCODE_MEDIA_PAUSE = 263, SDL_SCANCODE_MEDIA_RECORD = 264, SDL_SCANCODE_MEDIA_FAST_FORWARD = 265, SDL_SCANCODE_MEDIA_REWIND = 266, SDL_SCANCODE_MEDIA_NEXT_TRACK = 267, SDL_SCANCODE_MEDIA_PREVIOUS_TRACK = 268, SDL_SCANCODE_MEDIA_STOP = 269, SDL_SCANCODE_MEDIA_EJECT = 270, SDL_SCANCODE_MEDIA_PLAY_PAUSE = 271, SDL_SCANCODE_MEDIA_SELECT = 272, SDL_SCANCODE_AC_NEW = 273, SDL_SCANCODE_AC_OPEN = 274, SDL_SCANCODE_AC_CLOSE = 275, SDL_SCANCODE_AC_EXIT = 276, SDL_SCANCODE_AC_SAVE = 277, SDL_SCANCODE_AC_PRINT = 278, SDL_SCANCODE_AC_PROPERTIES = 279, SDL_SCANCODE_AC_SEARCH = 280, SDL_SCANCODE_AC_HOME = 281, SDL_SCANCODE_AC_BACK = 282, SDL_SCANCODE_AC_FORWARD = 283, SDL_SCANCODE_AC_STOP = 284, SDL_SCANCODE_AC_REFRESH = 285, SDL_SCANCODE_AC_BOOKMARKS = 286, SDL_SCANCODE_SOFTLEFT = 287, SDL_SCANCODE_SOFTRIGHT = 288, SDL_SCANCODE_CALL = 289, SDL_SCANCODE_ENDCALL = 290, SDL_SCANCODE_RESERVED = 400, SDL_SCANCODE_COUNT = 512 } SDL_Scancode;
typedef enum SDL_TextInputType { SDL_TEXTINPUT_TYPE_TEXT, SDL_TEXTINPUT_TYPE_TEXT_NAME, SDL_TEXTINPUT_TYPE_TEXT_EMAIL, SDL_TEXTINPUT_TYPE_TEXT_USERNAME, SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_HIDDEN, SDL_TEXTINPUT_TYPE_TEXT_PASSWORD_VISIBLE, SDL_TEXTINPUT_TYPE_NUMBER, SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_HIDDEN, SDL_TEXTINPUT_TYPE_NUMBER_PASSWORD_VISIBLE } SDL_TextInputType;
typedef enum SDL_Capitalization { SDL_CAPITALIZE_NONE, SDL_CAPITALIZE_SENTENCES, SDL_CAPITALIZE_WORDS, SDL_CAPITALIZE_LETTERS } SDL_Capitalization;
typedef enum SDL_SystemCursor { SDL_SYSTEM_CURSOR_DEFAULT, SDL_SYSTEM_CURSOR_TEXT, SDL_SYSTEM_CURSOR_WAIT, SDL_SYSTEM_CURSOR_CROSSHAIR, SDL_SYSTEM_CURSOR_PROGRESS, SDL_SYSTEM_CURSOR_NWSE_RESIZE, SDL_SYSTEM_CURSOR_NESW_RESIZE, SDL_SYSTEM_CURSOR_EW_RESIZE, SDL_SYSTEM_CURSOR_NS_RESIZE, SDL_SYSTEM_CURSOR_MOVE, SDL_SYSTEM_CURSOR_NOT_ALLOWED, SDL_SYSTEM_CURSOR_POINTER, SDL_SYSTEM_CURSOR_NW_RESIZE, SDL_SYSTEM_CURSOR_N_RESIZE, SDL_SYSTEM_CURSOR_NE_RESIZE, SDL_SYSTEM_CURSOR_E_RESIZE, SDL_SYSTEM_CURSOR_SE_RESIZE, SDL_SYSTEM_CURSOR_S_RESIZE, SDL_SYSTEM_CURSOR_SW_RESIZE, SDL_SYSTEM_CURSOR_W_RESIZE, SDL_SYSTEM_CURSOR_COUNT } SDL_SystemCursor;
typedef enum SDL_MouseWheelDirection { SDL_MOUSEWHEEL_NORMAL, SDL_MOUSEWHEEL_FLIPPED } SDL_MouseWheelDirection;
typedef enum SDL_TouchDeviceType { SDL_TOUCH_DEVICE_INVALID = -1, SDL_TOUCH_DEVICE_DIRECT, SDL_TOUCH_DEVICE_INDIRECT_ABSOLUTE, SDL_TOUCH_DEVICE_INDIRECT_RELATIVE } SDL_TouchDeviceType;
typedef enum SDL_PenAxis { SDL_PEN_AXIS_PRESSURE, SDL_PEN_AXIS_XTILT, SDL_PEN_AXIS_YTILT, SDL_PEN_AXIS_DISTANCE, SDL_PEN_AXIS_ROTATION, SDL_PEN_AXIS_SLIDER, SDL_PEN_AXIS_TANGENTIAL_PRESSURE, SDL_PEN_AXIS_COUNT } SDL_PenAxis;
typedef enum SDL_EventType { SDL_EVENT_FIRST = 0, SDL_EVENT_QUIT = 0x100, SDL_EVENT_TERMINATING, SDL_EVENT_LOW_MEMORY, SDL_EVENT_WILL_ENTER_BACKGROUND, SDL_EVENT_DID_ENTER_BACKGROUND, SDL_EVENT_WILL_ENTER_FOREGROUND, SDL_EVENT_DID_ENTER_FOREGROUND, SDL_EVENT_LOCALE_CHANGED, SDL_EVENT_SYSTEM_THEME_CHANGED, SDL_EVENT_DISPLAY_ORIENTATION = 0x151, SDL_EVENT_DISPLAY_ADDED, SDL_EVENT_DISPLAY_REMOVED, SDL_EVENT_DISPLAY_MOVED, SDL_EVENT_DISPLAY_DESKTOP_MODE_CHANGED, SDL_EVENT_DISPLAY_CURRENT_MODE_CHANGED, SDL_EVENT_DISPLAY_CONTENT_SCALE_CHANGED, SDL_EVENT_DISPLAY_FIRST = SDL_EVENT_DISPLAY_ORIENTATION, SDL_EVENT_DISPLAY_LAST = SDL_EVENT_DISPLAY_CONTENT_SCALE_CHANGED, SDL_EVENT_WINDOW_SHOWN = 0x202, SDL_EVENT_WINDOW_HIDDEN, SDL_EVENT_WINDOW_EXPOSED, SDL_EVENT_WINDOW_MOVED, SDL_EVENT_WINDOW_RESIZED, SDL_EVENT_WINDOW_PIXEL_SIZE_CHANGED, SDL_EVENT_WINDOW_METAL_VIEW_RESIZED, SDL_EVENT_WINDOW_MINIMIZED, SDL_EVENT_WINDOW_MAXIMIZED, SDL_EVENT_WINDOW_RESTORED, SDL_EVENT_WINDOW_MOUSE_ENTER, SDL_EVENT_WINDOW_MOUSE_LEAVE, SDL_EVENT_WINDOW_FOCUS_GAINED, SDL_EVENT_WINDOW_FOCUS_LOST, SDL_EVENT_WINDOW_CLOSE_REQUESTED, SDL_EVENT_WINDOW_HIT_TEST, SDL_EVENT_WINDOW_ICCPROF_CHANGED, SDL_EVENT_WINDOW_DISPLAY_CHANGED, SDL_EVENT_WINDOW_DISPLAY_SCALE_CHANGED, SDL_EVENT_WINDOW_SAFE_AREA_CHANGED, SDL_EVENT_WINDOW_OCCLUDED, SDL_EVENT_WINDOW_ENTER_FULLSCREEN, SDL_EVENT_WINDOW_LEAVE_FULLSCREEN, SDL_EVENT_WINDOW_DESTROYED, SDL_EVENT_WINDOW_HDR_STATE_CHANGED, SDL_EVENT_WINDOW_FIRST = SDL_EVENT_WINDOW_SHOWN, SDL_EVENT_WINDOW_LAST = SDL_EVENT_WINDOW_HDR_STATE_CHANGED, SDL_EVENT_KEY_DOWN = 0x300, SDL_EVENT_KEY_UP, SDL_EVENT_TEXT_EDITING, SDL_EVENT_TEXT_INPUT, SDL_EVENT_KEYMAP_CHANGED, SDL_EVENT_KEYBOARD_ADDED, SDL_EVENT_KEYBOARD_REMOVED, SDL_EVENT_TEXT_EDITING_CANDIDATES, SDL_EVENT_MOUSE_MOTION = 0x400, SDL_EVENT_MOUSE_BUTTON_DOWN, SDL_EVENT_MOUSE_BUTTON_UP, SDL_EVENT_MOUSE_WHEEL, SDL_EVENT_MOUSE_ADDED, SDL_EVENT_MOUSE_REMOVED, SDL_EVENT_JOYSTICK_AXIS_MOTION = 0x600, SDL_EVENT_JOYSTICK_BALL_MOTION, SDL_EVENT_JOYSTICK_HAT_MOTION, SDL_EVENT_JOYSTICK_BUTTON_DOWN, SDL_EVENT_JOYSTICK_BUTTON_UP, SDL_EVENT_JOYSTICK_ADDED, SDL_EVENT_JOYSTICK_REMOVED, SDL_EVENT_JOYSTICK_BATTERY_UPDATED, SDL_EVENT_JOYSTICK_UPDATE_COMPLETE, SDL_EVENT_GAMEPAD_AXIS_MOTION = 0x650, SDL_EVENT_GAMEPAD_BUTTON_DOWN, SDL_EVENT_GAMEPAD_BUTTON_UP, SDL_EVENT_GAMEPAD_ADDED, SDL_EVENT_GAMEPAD_REMOVED, SDL_EVENT_GAMEPAD_REMAPPED, SDL_EVENT_GAMEPAD_TOUCHPAD_DOWN, SDL_EVENT_GAMEPAD_TOUCHPAD_MOTION, SDL_EVENT_GAMEPAD_TOUCHPAD_UP, SDL_EVENT_GAMEPAD_SENSOR_UPDATE, SDL_EVENT_GAMEPAD_UPDATE_COMPLETE, SDL_EVENT_GAMEPAD_STEAM_HANDLE_UPDATED, SDL_EVENT_FINGER_DOWN = 0x700, SDL_EVENT_FINGER_UP, SDL_EVENT_FINGER_MOTION, SDL_EVENT_FINGER_CANCELED, SDL_EVENT_CLIPBOARD_UPDATE = 0x900, SDL_EVENT_DROP_FILE = 0x1000, SDL_EVENT_DROP_TEXT, SDL_EVENT_DROP_BEGIN, SDL_EVENT_DROP_COMPLETE, SDL_EVENT_DROP_POSITION, SDL_EVENT_AUDIO_DEVICE_ADDED = 0x1100, SDL_EVENT_AUDIO_DEVICE_REMOVED, SDL_EVENT_AUDIO_DEVICE_FORMAT_CHANGED, SDL_EVENT_SENSOR_UPDATE = 0x1200, SDL_EVENT_PEN_PROXIMITY_IN = 0x1300, SDL_EVENT_PEN_PROXIMITY_OUT, SDL_EVENT_PEN_DOWN, SDL_EVENT_PEN_UP, SDL_EVENT_PEN_BUTTON_DOWN, SDL_EVENT_PEN_BUTTON_UP, SDL_EVENT_PEN_MOTION, SDL_EVENT_PEN_AXIS, SDL_EVENT_CAMERA_DEVICE_ADDED = 0x1400, SDL_EVENT_CAMERA_DEVICE_REMOVED, SDL_EVENT_CAMERA_DEVICE_APPROVED, SDL_EVENT_CAMERA_DEVICE_DENIED, SDL_EVENT_RENDER_TARGETS_RESET = 0x2000, SDL_EVENT_RENDER_DEVICE_RESET, SDL_EVENT_RENDER_DEVICE_LOST, SDL_EVENT_PRIVATE0 = 0x4000, SDL_EVENT_PRIVATE1, SDL_EVENT_PRIVATE2, SDL_EVENT_PRIVATE3, SDL_EVENT_POLL_SENTINEL = 0x7F00, SDL_EVENT_USER = 0x8000, SDL_EVENT_LAST = 0xFFFF, SDL_EVENT_ENUM_PADDING = 0x7FFFFFFF } SDL_EventType;
typedef enum SDL_EventAction { SDL_ADDEVENT, SDL_PEEKEVENT, SDL_GETEVENT } SDL_EventAction;
typedef enum SDL_Folder { SDL_FOLDER_HOME, SDL_FOLDER_DESKTOP, SDL_FOLDER_DOCUMENTS, SDL_FOLDER_DOWNLOADS, SDL_FOLDER_MUSIC, SDL_FOLDER_PICTURES, SDL_FOLDER_PUBLICSHARE, SDL_FOLDER_SAVEDGAMES, SDL_FOLDER_SCREENSHOTS, SDL_FOLDER_TEMPLATES, SDL_FOLDER_VIDEOS, SDL_FOLDER_COUNT } SDL_Folder;
typedef enum SDL_PathType { SDL_PATHTYPE_NONE, SDL_PATHTYPE_FILE, SDL_PATHTYPE_DIRECTORY, SDL_PATHTYPE_OTHER } SDL_PathType;
typedef enum SDL_EnumerationResult { SDL_ENUM_CONTINUE, SDL_ENUM_SUCCESS, SDL_ENUM_FAILURE } SDL_EnumerationResult;
typedef enum SDL_GPUPrimitiveType { SDL_GPU_PRIMITIVETYPE_TRIANGLELIST, SDL_GPU_PRIMITIVETYPE_TRIANGLESTRIP, SDL_GPU_PRIMITIVETYPE_LINELIST, SDL_GPU_PRIMITIVETYPE_LINESTRIP, SDL_GPU_PRIMITIVETYPE_POINTLIST } SDL_GPUPrimitiveType;
typedef enum SDL_GPULoadOp { SDL_GPU_LOADOP_LOAD, SDL_GPU_LOADOP_CLEAR, SDL_GPU_LOADOP_DONT_CARE } SDL_GPULoadOp;
typedef enum SDL_GPUStoreOp { SDL_GPU_STOREOP_STORE, SDL_GPU_STOREOP_DONT_CARE, SDL_GPU_STOREOP_RESOLVE, SDL_GPU_STOREOP_RESOLVE_AND_STORE } SDL_GPUStoreOp;
typedef enum SDL_GPUIndexElementSize { SDL_GPU_INDEXELEMENTSIZE_16BIT, SDL_GPU_INDEXELEMENTSIZE_32BIT } SDL_GPUIndexElementSize;
typedef enum SDL_GPUTextureFormat { SDL_GPU_TEXTUREFORMAT_INVALID, SDL_GPU_TEXTUREFORMAT_A8_UNORM, SDL_GPU_TEXTUREFORMAT_R8_UNORM, SDL_GPU_TEXTUREFORMAT_R8G8_UNORM, SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM, SDL_GPU_TEXTUREFORMAT_R16_UNORM, SDL_GPU_TEXTUREFORMAT_R16G16_UNORM, SDL_GPU_TEXTUREFORMAT_R16G16B16A16_UNORM, SDL_GPU_TEXTUREFORMAT_R10G10B10A2_UNORM, SDL_GPU_TEXTUREFORMAT_B5G6R5_UNORM, SDL_GPU_TEXTUREFORMAT_B5G5R5A1_UNORM, SDL_GPU_TEXTUREFORMAT_B4G4R4A4_UNORM, SDL_GPU_TEXTUREFORMAT_B8G8R8A8_UNORM, SDL_GPU_TEXTUREFORMAT_BC1_RGBA_UNORM, SDL_GPU_TEXTUREFORMAT_BC2_RGBA_UNORM, SDL_GPU_TEXTUREFORMAT_BC3_RGBA_UNORM, SDL_GPU_TEXTUREFORMAT_BC4_R_UNORM, SDL_GPU_TEXTUREFORMAT_BC5_RG_UNORM, SDL_GPU_TEXTUREFORMAT_BC7_RGBA_UNORM, SDL_GPU_TEXTUREFORMAT_BC6H_RGB_FLOAT, SDL_GPU_TEXTUREFORMAT_BC6H_RGB_UFLOAT, SDL_GPU_TEXTUREFORMAT_R8_SNORM, SDL_GPU_TEXTUREFORMAT_R8G8_SNORM, SDL_GPU_TEXTUREFORMAT_R8G8B8A8_SNORM, SDL_GPU_TEXTUREFORMAT_R16_SNORM, SDL_GPU_TEXTUREFORMAT_R16G16_SNORM, SDL_GPU_TEXTUREFORMAT_R16G16B16A16_SNORM, SDL_GPU_TEXTUREFORMAT_R16_FLOAT, SDL_GPU_TEXTUREFORMAT_R16G16_FLOAT, SDL_GPU_TEXTUREFORMAT_R16G16B16A16_FLOAT, SDL_GPU_TEXTUREFORMAT_R32_FLOAT, SDL_GPU_TEXTUREFORMAT_R32G32_FLOAT, SDL_GPU_TEXTUREFORMAT_R32G32B32A32_FLOAT, SDL_GPU_TEXTUREFORMAT_R11G11B10_UFLOAT, SDL_GPU_TEXTUREFORMAT_R8_UINT, SDL_GPU_TEXTUREFORMAT_R8G8_UINT, SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UINT, SDL_GPU_TEXTUREFORMAT_R16_UINT, SDL_GPU_TEXTUREFORMAT_R16G16_UINT, SDL_GPU_TEXTUREFORMAT_R16G16B16A16_UINT, SDL_GPU_TEXTUREFORMAT_R32_UINT, SDL_GPU_TEXTUREFORMAT_R32G32_UINT, SDL_GPU_TEXTUREFORMAT_R32G32B32A32_UINT, SDL_GPU_TEXTUREFORMAT_R8_INT, SDL_GPU_TEXTUREFORMAT_R8G8_INT, SDL_GPU_TEXTUREFORMAT_R8G8B8A8_INT, SDL_GPU_TEXTUREFORMAT_R16_INT, SDL_GPU_TEXTUREFORMAT_R16G16_INT, SDL_GPU_TEXTUREFORMAT_R16G16B16A16_INT, SDL_GPU_TEXTUREFORMAT_R32_INT, SDL_GPU_TEXTUREFORMAT_R32G32_INT, SDL_GPU_TEXTUREFORMAT_R32G32B32A32_INT, SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM_SRGB, SDL_GPU_TEXTUREFORMAT_B8G8R8A8_UNORM_SRGB, SDL_GPU_TEXTUREFORMAT_BC1_RGBA_UNORM_SRGB, SDL_GPU_TEXTUREFORMAT_BC2_RGBA_UNORM_SRGB, SDL_GPU_TEXTUREFORMAT_BC3_RGBA_UNORM_SRGB, SDL_GPU_TEXTUREFORMAT_BC7_RGBA_UNORM_SRGB, SDL_GPU_TEXTUREFORMAT_D16_UNORM, SDL_GPU_TEXTUREFORMAT_D24_UNORM, SDL_GPU_TEXTUREFORMAT_D32_FLOAT, SDL_GPU_TEXTUREFORMAT_D24_UNORM_S8_UINT, SDL_GPU_TEXTUREFORMAT_D32_FLOAT_S8_UINT, SDL_GPU_TEXTUREFORMAT_ASTC_4x4_UNORM, SDL_GPU_TEXTUREFORMAT_ASTC_5x4_UNORM, SDL_GPU_TEXTUREFORMAT_ASTC_5x5_UNORM, SDL_GPU_TEXTUREFORMAT_ASTC_6x5_UNORM, SDL_GPU_TEXTUREFORMAT_ASTC_6x6_UNORM, SDL_GPU_TEXTUREFORMAT_ASTC_8x5_UNORM, SDL_GPU_TEXTUREFORMAT_ASTC_8x6_UNORM, SDL_GPU_TEXTUREFORMAT_ASTC_8x8_UNORM, SDL_GPU_TEXTUREFORMAT_ASTC_10x5_UNORM, SDL_GPU_TEXTUREFORMAT_ASTC_10x6_UNORM, SDL_GPU_TEXTUREFORMAT_ASTC_10x8_UNORM, SDL_GPU_TEXTUREFORMAT_ASTC_10x10_UNORM, SDL_GPU_TEXTUREFORMAT_ASTC_12x10_UNORM, SDL_GPU_TEXTUREFORMAT_ASTC_12x12_UNORM, SDL_GPU_TEXTUREFORMAT_ASTC_4x4_UNORM_SRGB, SDL_GPU_TEXTUREFORMAT_ASTC_5x4_UNORM_SRGB, SDL_GPU_TEXTUREFORMAT_ASTC_5x5_UNORM_SRGB, SDL_GPU_TEXTUREFORMAT_ASTC_6x5_UNORM_SRGB, SDL_GPU_TEXTUREFORMAT_ASTC_6x6_UNORM_SRGB, SDL_GPU_TEXTUREFORMAT_ASTC_8x5_UNORM_SRGB, SDL_GPU_TEXTUREFORMAT_ASTC_8x6_UNORM_SRGB, SDL_GPU_TEXTUREFORMAT_ASTC_8x8_UNORM_SRGB, SDL_GPU_TEXTUREFORMAT_ASTC_10x5_UNORM_SRGB, SDL_GPU_TEXTUREFORMAT_ASTC_10x6_UNORM_SRGB, SDL_GPU_TEXTUREFORMAT_ASTC_10x8_UNORM_SRGB, SDL_GPU_TEXTUREFORMAT_ASTC_10x10_UNORM_SRGB, SDL_GPU_TEXTUREFORMAT_ASTC_12x10_UNORM_SRGB, SDL_GPU_TEXTUREFORMAT_ASTC_12x12_UNORM_SRGB, SDL_GPU_TEXTUREFORMAT_ASTC_4x4_FLOAT, SDL_GPU_TEXTUREFORMAT_ASTC_5x4_FLOAT, SDL_GPU_TEXTUREFORMAT_ASTC_5x5_FLOAT, SDL_GPU_TEXTUREFORMAT_ASTC_6x5_FLOAT, SDL_GPU_TEXTUREFORMAT_ASTC_6x6_FLOAT, SDL_GPU_TEXTUREFORMAT_ASTC_8x5_FLOAT, SDL_GPU_TEXTUREFORMAT_ASTC_8x6_FLOAT, SDL_GPU_TEXTUREFORMAT_ASTC_8x8_FLOAT, SDL_GPU_TEXTUREFORMAT_ASTC_10x5_FLOAT, SDL_GPU_TEXTUREFORMAT_ASTC_10x6_FLOAT, SDL_GPU_TEXTUREFORMAT_ASTC_10x8_FLOAT, SDL_GPU_TEXTUREFORMAT_ASTC_10x10_FLOAT, SDL_GPU_TEXTUREFORMAT_ASTC_12x10_FLOAT, SDL_GPU_TEXTUREFORMAT_ASTC_12x12_FLOAT } SDL_GPUTextureFormat;
typedef enum SDL_GPUTextureType { SDL_GPU_TEXTURETYPE_2D, SDL_GPU_TEXTURETYPE_2D_ARRAY, SDL_GPU_TEXTURETYPE_3D, SDL_GPU_TEXTURETYPE_CUBE, SDL_GPU_TEXTURETYPE_CUBE_ARRAY } SDL_GPUTextureType;
typedef enum SDL_GPUSampleCount { SDL_GPU_SAMPLECOUNT_1, SDL_GPU_SAMPLECOUNT_2, SDL_GPU_SAMPLECOUNT_4, SDL_GPU_SAMPLECOUNT_8 } SDL_GPUSampleCount;
typedef enum SDL_GPUCubeMapFace { SDL_GPU_CUBEMAPFACE_POSITIVEX, SDL_GPU_CUBEMAPFACE_NEGATIVEX, SDL_GPU_CUBEMAPFACE_POSITIVEY, SDL_GPU_CUBEMAPFACE_NEGATIVEY, SDL_GPU_CUBEMAPFACE_POSITIVEZ, SDL_GPU_CUBEMAPFACE_NEGATIVEZ } SDL_GPUCubeMapFace;
typedef enum SDL_GPUTransferBufferUsage { SDL_GPU_TRANSFERBUFFERUSAGE_UPLOAD, SDL_GPU_TRANSFERBUFFERUSAGE_DOWNLOAD } SDL_GPUTransferBufferUsage;
typedef enum SDL_GPUShaderStage { SDL_GPU_SHADERSTAGE_VERTEX, SDL_GPU_SHADERSTAGE_FRAGMENT } SDL_GPUShaderStage;
typedef enum SDL_GPUVertexElementFormat { SDL_GPU_VERTEXELEMENTFORMAT_INVALID, SDL_GPU_VERTEXELEMENTFORMAT_INT, SDL_GPU_VERTEXELEMENTFORMAT_INT2, SDL_GPU_VERTEXELEMENTFORMAT_INT3, SDL_GPU_VERTEXELEMENTFORMAT_INT4, SDL_GPU_VERTEXELEMENTFORMAT_UINT, SDL_GPU_VERTEXELEMENTFORMAT_UINT2, SDL_GPU_VERTEXELEMENTFORMAT_UINT3, SDL_GPU_VERTEXELEMENTFORMAT_UINT4, SDL_GPU_VERTEXELEMENTFORMAT_FLOAT, SDL_GPU_VERTEXELEMENTFORMAT_FLOAT2, SDL_GPU_VERTEXELEMENTFORMAT_FLOAT3, SDL_GPU_VERTEXELEMENTFORMAT_FLOAT4, SDL_GPU_VERTEXELEMENTFORMAT_BYTE2, SDL_GPU_VERTEXELEMENTFORMAT_BYTE4, SDL_GPU_VERTEXELEMENTFORMAT_UBYTE2, SDL_GPU_VERTEXELEMENTFORMAT_UBYTE4, SDL_GPU_VERTEXELEMENTFORMAT_BYTE2_NORM, SDL_GPU_VERTEXELEMENTFORMAT_BYTE4_NORM, SDL_GPU_VERTEXELEMENTFORMAT_UBYTE2_NORM, SDL_GPU_VERTEXELEMENTFORMAT_UBYTE4_NORM, SDL_GPU_VERTEXELEMENTFORMAT_SHORT2, SDL_GPU_VERTEXELEMENTFORMAT_SHORT4, SDL_GPU_VERTEXELEMENTFORMAT_USHORT2, SDL_GPU_VERTEXELEMENTFORMAT_USHORT4, SDL_GPU_VERTEXELEMENTFORMAT_SHORT2_NORM, SDL_GPU_VERTEXELEMENTFORMAT_SHORT4_NORM, SDL_GPU_VERTEXELEMENTFORMAT_USHORT2_NORM, SDL_GPU_VERTEXELEMENTFORMAT_USHORT4_NORM, SDL_GPU_VERTEXELEMENTFORMAT_HALF2, SDL_GPU_VERTEXELEMENTFORMAT_HALF4 } SDL_GPUVertexElementFormat;
typedef enum SDL_GPUVertexInputRate { SDL_GPU_VERTEXINPUTRATE_VERTEX, SDL_GPU_VERTEXINPUTRATE_INSTANCE } SDL_GPUVertexInputRate;
typedef enum SDL_GPUFillMode { SDL_GPU_FILLMODE_FILL, SDL_GPU_FILLMODE_LINE } SDL_GPUFillMode;
typedef enum SDL_GPUCullMode { SDL_GPU_CULLMODE_NONE, SDL_GPU_CULLMODE_FRONT, SDL_GPU_CULLMODE_BACK } SDL_GPUCullMode;
typedef enum SDL_GPUFrontFace { SDL_GPU_FRONTFACE_COUNTER_CLOCKWISE, SDL_GPU_FRONTFACE_CLOCKWISE } SDL_GPUFrontFace;
typedef enum SDL_GPUCompareOp { SDL_GPU_COMPAREOP_INVALID, SDL_GPU_COMPAREOP_NEVER, SDL_GPU_COMPAREOP_LESS, SDL_GPU_COMPAREOP_EQUAL, SDL_GPU_COMPAREOP_LESS_OR_EQUAL, SDL_GPU_COMPAREOP_GREATER, SDL_GPU_COMPAREOP_NOT_EQUAL, SDL_GPU_COMPAREOP_GREATER_OR_EQUAL, SDL_GPU_COMPAREOP_ALWAYS } SDL_GPUCompareOp;
typedef enum SDL_GPUStencilOp { SDL_GPU_STENCILOP_INVALID, SDL_GPU_STENCILOP_KEEP, SDL_GPU_STENCILOP_ZERO, SDL_GPU_STENCILOP_REPLACE, SDL_GPU_STENCILOP_INCREMENT_AND_CLAMP, SDL_GPU_STENCILOP_DECREMENT_AND_CLAMP, SDL_GPU_STENCILOP_INVERT, SDL_GPU_STENCILOP_INCREMENT_AND_WRAP, SDL_GPU_STENCILOP_DECREMENT_AND_WRAP } SDL_GPUStencilOp;
typedef enum SDL_GPUBlendOp { SDL_GPU_BLENDOP_INVALID, SDL_GPU_BLENDOP_ADD, SDL_GPU_BLENDOP_SUBTRACT, SDL_GPU_BLENDOP_REVERSE_SUBTRACT, SDL_GPU_BLENDOP_MIN, SDL_GPU_BLENDOP_MAX } SDL_GPUBlendOp;
typedef enum SDL_GPUBlendFactor { SDL_GPU_BLENDFACTOR_INVALID, SDL_GPU_BLENDFACTOR_ZERO, SDL_GPU_BLENDFACTOR_ONE, SDL_GPU_BLENDFACTOR_SRC_COLOR, SDL_GPU_BLENDFACTOR_ONE_MINUS_SRC_COLOR, SDL_GPU_BLENDFACTOR_DST_COLOR, SDL_GPU_BLENDFACTOR_ONE_MINUS_DST_COLOR, SDL_GPU_BLENDFACTOR_SRC_ALPHA, SDL_GPU_BLENDFACTOR_ONE_MINUS_SRC_ALPHA, SDL_GPU_BLENDFACTOR_DST_ALPHA, SDL_GPU_BLENDFACTOR_ONE_MINUS_DST_ALPHA, SDL_GPU_BLENDFACTOR_CONSTANT_COLOR, SDL_GPU_BLENDFACTOR_ONE_MINUS_CONSTANT_COLOR, SDL_GPU_BLENDFACTOR_SRC_ALPHA_SATURATE } SDL_GPUBlendFactor;
typedef enum SDL_GPUFilter { SDL_GPU_FILTER_NEAREST, SDL_GPU_FILTER_LINEAR } SDL_GPUFilter;
typedef enum SDL_GPUSamplerMipmapMode { SDL_GPU_SAMPLERMIPMAPMODE_NEAREST, SDL_GPU_SAMPLERMIPMAPMODE_LINEAR } SDL_GPUSamplerMipmapMode;
typedef enum SDL_GPUSamplerAddressMode { SDL_GPU_SAMPLERADDRESSMODE_REPEAT, SDL_GPU_SAMPLERADDRESSMODE_MIRRORED_REPEAT, SDL_GPU_SAMPLERADDRESSMODE_CLAMP_TO_EDGE } SDL_GPUSamplerAddressMode;
typedef enum SDL_GPUPresentMode { SDL_GPU_PRESENTMODE_VSYNC, SDL_GPU_PRESENTMODE_IMMEDIATE, SDL_GPU_PRESENTMODE_MAILBOX } SDL_GPUPresentMode;
typedef enum SDL_GPUSwapchainComposition { SDL_GPU_SWAPCHAINCOMPOSITION_SDR, SDL_GPU_SWAPCHAINCOMPOSITION_SDR_LINEAR, SDL_GPU_SWAPCHAINCOMPOSITION_HDR_EXTENDED_LINEAR, SDL_GPU_SWAPCHAINCOMPOSITION_HDR10_ST2084 } SDL_GPUSwapchainComposition;
typedef enum SDL_hid_bus_type { SDL_HID_API_BUS_UNKNOWN = 0x00, SDL_HID_API_BUS_USB = 0x01, SDL_HID_API_BUS_BLUETOOTH = 0x02, SDL_HID_API_BUS_I2C = 0x03, SDL_HID_API_BUS_SPI = 0x04 } SDL_hid_bus_type;
typedef enum SDL_HintPriority { SDL_HINT_DEFAULT, SDL_HINT_NORMAL, SDL_HINT_OVERRIDE } SDL_HintPriority;
typedef enum SDL_AppResult { SDL_APP_CONTINUE, SDL_APP_SUCCESS, SDL_APP_FAILURE } SDL_AppResult;
typedef enum SDL_LogCategory { SDL_LOG_CATEGORY_APPLICATION, SDL_LOG_CATEGORY_ERROR, SDL_LOG_CATEGORY_ASSERT, SDL_LOG_CATEGORY_SYSTEM, SDL_LOG_CATEGORY_AUDIO, SDL_LOG_CATEGORY_VIDEO, SDL_LOG_CATEGORY_RENDER, SDL_LOG_CATEGORY_INPUT, SDL_LOG_CATEGORY_TEST, SDL_LOG_CATEGORY_GPU, SDL_LOG_CATEGORY_RESERVED2, SDL_LOG_CATEGORY_RESERVED3, SDL_LOG_CATEGORY_RESERVED4, SDL_LOG_CATEGORY_RESERVED5, SDL_LOG_CATEGORY_RESERVED6, SDL_LOG_CATEGORY_RESERVED7, SDL_LOG_CATEGORY_RESERVED8, SDL_LOG_CATEGORY_RESERVED9, SDL_LOG_CATEGORY_RESERVED10, SDL_LOG_CATEGORY_CUSTOM } SDL_LogCategory;
typedef enum SDL_LogPriority { SDL_LOG_PRIORITY_INVALID, SDL_LOG_PRIORITY_TRACE, SDL_LOG_PRIORITY_VERBOSE, SDL_LOG_PRIORITY_DEBUG, SDL_LOG_PRIORITY_INFO, SDL_LOG_PRIORITY_WARN, SDL_LOG_PRIORITY_ERROR, SDL_LOG_PRIORITY_CRITICAL, SDL_LOG_PRIORITY_COUNT } SDL_LogPriority;
typedef enum SDL_MessageBoxColorType { SDL_MESSAGEBOX_COLOR_BACKGROUND, SDL_MESSAGEBOX_COLOR_TEXT, SDL_MESSAGEBOX_COLOR_BUTTON_BORDER, SDL_MESSAGEBOX_COLOR_BUTTON_BACKGROUND, SDL_MESSAGEBOX_COLOR_BUTTON_SELECTED, SDL_MESSAGEBOX_COLOR_COUNT } SDL_MessageBoxColorType;
typedef enum SDL_ProcessIO { SDL_PROCESS_STDIO_INHERITED, SDL_PROCESS_STDIO_NULL, SDL_PROCESS_STDIO_APP, SDL_PROCESS_STDIO_REDIRECT } SDL_ProcessIO;
typedef enum SDL_TextureAccess { SDL_TEXTUREACCESS_STATIC, SDL_TEXTUREACCESS_STREAMING, SDL_TEXTUREACCESS_TARGET } SDL_TextureAccess;
typedef enum SDL_RendererLogicalPresentation { SDL_LOGICAL_PRESENTATION_DISABLED, SDL_LOGICAL_PRESENTATION_STRETCH, SDL_LOGICAL_PRESENTATION_LETTERBOX, SDL_LOGICAL_PRESENTATION_OVERSCAN, SDL_LOGICAL_PRESENTATION_INTEGER_SCALE } SDL_RendererLogicalPresentation;
typedef enum SDL_Sandbox { SDL_SANDBOX_NONE = 0, SDL_SANDBOX_UNKNOWN_CONTAINER, SDL_SANDBOX_FLATPAK, SDL_SANDBOX_SNAP, SDL_SANDBOX_MACOS } SDL_Sandbox;
typedef enum SDL_DateFormat { SDL_DATE_FORMAT_YYYYMMDD = 0, SDL_DATE_FORMAT_DDMMYYYY = 1, SDL_DATE_FORMAT_MMDDYYYY = 2 } SDL_DateFormat;
typedef enum SDL_TimeFormat { SDL_TIME_FORMAT_24HR = 0, SDL_TIME_FORMAT_12HR = 1 } SDL_TimeFormat;
]]

-- other typedefs

ffi.cdef[[
typedef uint64_t Uint64;
typedef Sint64 SDL_Time;
typedef struct SDL_alignment_test {
	Uint8 a;
	void *b;
} SDL_alignment_test;
typedef void *( *SDL_malloc_func)(size_t size);
typedef void *( *SDL_calloc_func)(size_t nmemb, size_t size);
typedef void *( *SDL_realloc_func)(void *mem, size_t size);
typedef void ( *SDL_free_func)(void *mem);
typedef struct SDL_Environment SDL_Environment;
typedef int ( *SDL_CompareCallback)(const void *a, const void *b);
typedef int ( *SDL_CompareCallback_r)(void *userdata, const void *a, const void *b);
typedef struct SDL_iconv_data_t *SDL_iconv_t;
typedef void (*SDL_FunctionPointer)(void);
typedef struct SDL_AssertData {
	_Bool always_ignore;
	unsigned int trigger_count;
	const char *condition;
	const char *filename;
	int linenum;
	const char *function;
	const struct SDL_AssertData *next;
} SDL_AssertData;
typedef SDL_AssertState ( *SDL_AssertionHandler)( const SDL_AssertData *data, void *userdata);
typedef struct SDL_AsyncIO SDL_AsyncIO;
typedef struct SDL_AsyncIOOutcome {
	SDL_AsyncIO *asyncio;
	SDL_AsyncIOTaskType type;
	SDL_AsyncIOResult result;
	void *buffer;
	Uint64 offset;
	Uint64 bytes_requested;
	Uint64 bytes_transferred;
	void *userdata;
} SDL_AsyncIOOutcome;
typedef struct SDL_AsyncIOQueue SDL_AsyncIOQueue;
typedef int SDL_SpinLock;
typedef struct SDL_AtomicInt { int value; } SDL_AtomicInt;
typedef struct SDL_AtomicU32 { Uint32 value; } SDL_AtomicU32;
typedef Uint32 SDL_PropertiesID;
typedef void ( *SDL_CleanupPropertyCallback)(void *userdata, void *value);
typedef void ( *SDL_EnumeratePropertiesCallback)(void *userdata, SDL_PropertiesID props, const char *name);
typedef struct SDL_Thread SDL_Thread;
typedef Uint64 SDL_ThreadID;
typedef SDL_AtomicInt SDL_TLSID;
typedef int ( *SDL_ThreadFunction) (void *data);
typedef void ( *SDL_TLSDestructorCallback)(void *value);
typedef struct SDL_Mutex SDL_Mutex;
typedef struct SDL_RWLock SDL_RWLock;
typedef struct SDL_Semaphore SDL_Semaphore;
typedef struct SDL_Condition SDL_Condition;
typedef struct SDL_InitState {
	SDL_AtomicInt status;
	SDL_ThreadID thread;
	void *reserved;
} SDL_InitState;
typedef struct SDL_IOStreamInterface {
	Uint32 version;
	Sint64 ( *size)(void *userdata);
	Sint64 ( *seek)(void *userdata, Sint64 offset, SDL_IOWhence whence);
	size_t ( *read)(void *userdata, void *ptr, size_t size, SDL_IOStatus *status);
	size_t ( *write)(void *userdata, const void *ptr, size_t size, SDL_IOStatus *status);
	_Bool ( *flush)(void *userdata, SDL_IOStatus *status);
	_Bool ( *close)(void *userdata);
} SDL_IOStreamInterface;
typedef struct SDL_IOStream SDL_IOStream;
typedef Uint32 SDL_AudioDeviceID;
typedef struct SDL_AudioSpec {
	SDL_AudioFormat format;
	int channels;
	int freq;
} SDL_AudioSpec;
typedef struct SDL_AudioStream SDL_AudioStream;
typedef void ( *SDL_AudioStreamCallback)(void *userdata, SDL_AudioStream *stream, int additional_amount, int total_amount);
typedef void ( *SDL_AudioPostmixCallback)(void *userdata, const SDL_AudioSpec *spec, float *buffer, int buflen);
typedef Uint32 SDL_BlendMode;
typedef struct SDL_Color {
	Uint8 r;
	Uint8 g;
	Uint8 b;
	Uint8 a;
} SDL_Color;
typedef struct SDL_FColor {
	float r;
	float g;
	float b;
	float a;
} SDL_FColor;
typedef struct SDL_Palette {
	int ncolors;
	SDL_Color *colors;
	Uint32 version;
	int refcount;
} SDL_Palette;
typedef struct SDL_PixelFormatDetails {
	SDL_PixelFormat format;
	Uint8 bits_per_pixel;
	Uint8 bytes_per_pixel;
	Uint8 padding[2];
	Uint32 Rmask;
	Uint32 Gmask;
	Uint32 Bmask;
	Uint32 Amask;
	Uint8 Rbits;
	Uint8 Gbits;
	Uint8 Bbits;
	Uint8 Abits;
	Uint8 Rshift;
	Uint8 Gshift;
	Uint8 Bshift;
	Uint8 Ashift;
} SDL_PixelFormatDetails;
typedef struct SDL_Point {
	int x;
	int y;
} SDL_Point;
typedef struct SDL_FPoint {
	float x;
	float y;
} SDL_FPoint;
typedef struct SDL_Rect {
	int x, y;
	int w, h;
} SDL_Rect;
typedef struct SDL_FRect {
	float x;
	float y;
	float w;
	float h;
} SDL_FRect;
typedef Uint32 SDL_SurfaceFlags;
struct SDL_Surface {
	SDL_SurfaceFlags flags;
	SDL_PixelFormat format;
	int w;
	int h;
	int pitch;
	void *pixels;
	int refcount;
	void *reserved;
};
typedef struct SDL_Surface SDL_Surface;
typedef Uint32 SDL_CameraID;
typedef struct SDL_Camera SDL_Camera;
typedef struct SDL_CameraSpec {
	SDL_PixelFormat format;
	SDL_Colorspace colorspace;
	int width;
	int height;
	int framerate_numerator;
	int framerate_denominator;
} SDL_CameraSpec;
typedef const void *( *SDL_ClipboardDataCallback)(void *userdata, const char *mime_type, size_t *size);
typedef void ( *SDL_ClipboardCleanupCallback)(void *userdata);
typedef Uint32 SDL_DisplayID;
typedef Uint32 SDL_WindowID;
typedef struct SDL_DisplayModeData SDL_DisplayModeData;
typedef struct SDL_DisplayMode {
	SDL_DisplayID displayID;
	SDL_PixelFormat format;
	int w;
	int h;
	float pixel_density;
	float refresh_rate;
	int refresh_rate_numerator;
	int refresh_rate_denominator;
	SDL_DisplayModeData *internal;
} SDL_DisplayMode;
typedef struct SDL_Window SDL_Window;
typedef Uint64 SDL_WindowFlags;
typedef struct SDL_GLContextState *SDL_GLContext;
typedef void *SDL_EGLDisplay;
typedef void *SDL_EGLConfig;
typedef void *SDL_EGLSurface;
typedef intptr_t SDL_EGLAttrib;
typedef int SDL_EGLint;
typedef SDL_EGLAttrib *( *SDL_EGLAttribArrayCallback)(void *userdata);
typedef SDL_EGLint *( *SDL_EGLIntArrayCallback)(void *userdata, SDL_EGLDisplay display, SDL_EGLConfig config);
typedef Uint32 SDL_GLProfile;
typedef Uint32 SDL_GLContextFlag;
typedef Uint32 SDL_GLContextReleaseFlag;
typedef Uint32 SDL_GLContextResetNotification;
typedef SDL_HitTestResult ( *SDL_HitTest)(SDL_Window *win, const SDL_Point *area, void *data);
typedef struct SDL_DialogFileFilter {
	const char *name;
	const char *pattern;
} SDL_DialogFileFilter;
typedef void ( *SDL_DialogFileCallback)(void *userdata, const char * const *filelist, int filter);
typedef struct SDL_GUID {
	Uint8 data[16];
} SDL_GUID;
typedef struct SDL_Sensor SDL_Sensor;
typedef Uint32 SDL_SensorID;
typedef struct SDL_Joystick SDL_Joystick;
typedef Uint32 SDL_JoystickID;
typedef struct SDL_VirtualJoystickTouchpadDesc {
	Uint16 nfingers;
	Uint16 padding[3];
} SDL_VirtualJoystickTouchpadDesc;
typedef struct SDL_VirtualJoystickSensorDesc {
	SDL_SensorType type;
	float rate;
} SDL_VirtualJoystickSensorDesc;
typedef struct SDL_VirtualJoystickDesc {
	Uint32 version;
	Uint16 type;
	Uint16 padding;
	Uint16 vendor_id;
	Uint16 product_id;
	Uint16 naxes;
	Uint16 nbuttons;
	Uint16 nballs;
	Uint16 nhats;
	Uint16 ntouchpads;
	Uint16 nsensors;
	Uint16 padding2[2];
	Uint32 button_mask;
	Uint32 axis_mask;
	const char *name;
	const SDL_VirtualJoystickTouchpadDesc *touchpads;
	const SDL_VirtualJoystickSensorDesc *sensors;
	void *userdata;
	void ( *Update)(void *userdata);
	void ( *SetPlayerIndex)(void *userdata, int player_index);
	_Bool ( *Rumble)(void *userdata, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble);
	_Bool ( *RumbleTriggers)(void *userdata, Uint16 left_rumble, Uint16 right_rumble);
	_Bool ( *SetLED)(void *userdata, Uint8 red, Uint8 green, Uint8 blue);
	_Bool ( *SendEffect)(void *userdata, const void *data, int size);
	_Bool ( *SetSensorsEnabled)(void *userdata, _Bool enabled);
	void ( *Cleanup)(void *userdata);
} SDL_VirtualJoystickDesc;
typedef struct SDL_Gamepad SDL_Gamepad;
typedef struct SDL_GamepadBinding {
	SDL_GamepadBindingType input_type;
	union {
		int button;
		struct {
			int axis;
			int axis_min;
			int axis_max;
		} axis;
		struct {
			int hat;
			int hat_mask;
		} hat;
	} input;
	SDL_GamepadBindingType output_type;
	union {
		SDL_GamepadButton button;
		struct {
			SDL_GamepadAxis axis;
			int axis_min;
			int axis_max;
		} axis;
	} output;
} SDL_GamepadBinding;
typedef Uint32 SDL_Keycode;
typedef Uint16 SDL_Keymod;
typedef Uint32 SDL_KeyboardID;
typedef Uint32 SDL_MouseID;
typedef struct SDL_Cursor SDL_Cursor;
typedef Uint32 SDL_MouseButtonFlags;
typedef Uint64 SDL_TouchID;
typedef Uint64 SDL_FingerID;
typedef struct SDL_Finger {
	SDL_FingerID id;
	float x;
	float y;
	float pressure;
} SDL_Finger;
typedef Uint32 SDL_PenID;
typedef Uint32 SDL_PenInputFlags;
typedef struct SDL_CommonEvent {
	Uint32 type;
	Uint32 reserved;
	Uint64 timestamp;
} SDL_CommonEvent;
typedef struct SDL_DisplayEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_DisplayID displayID;
	Sint32 data1;
	Sint32 data2;
} SDL_DisplayEvent;
typedef struct SDL_WindowEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_WindowID windowID;
	Sint32 data1;
	Sint32 data2;
} SDL_WindowEvent;
typedef struct SDL_KeyboardDeviceEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_KeyboardID which;
} SDL_KeyboardDeviceEvent;
typedef struct SDL_KeyboardEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_WindowID windowID;
	SDL_KeyboardID which;
	SDL_Scancode scancode;
	SDL_Keycode key;
	SDL_Keymod mod;
	Uint16 raw;
	_Bool down;
	_Bool repeat;
} SDL_KeyboardEvent;
typedef struct SDL_TextEditingEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_WindowID windowID;
	const char *text;
	Sint32 start;
	Sint32 length;
} SDL_TextEditingEvent;
typedef struct SDL_TextEditingCandidatesEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_WindowID windowID;
	const char * const *candidates;
	Sint32 num_candidates;
	Sint32 selected_candidate;
	_Bool horizontal;
	Uint8 padding1;
	Uint8 padding2;
	Uint8 padding3;
} SDL_TextEditingCandidatesEvent;
typedef struct SDL_TextInputEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_WindowID windowID;
	const char *text;
} SDL_TextInputEvent;
typedef struct SDL_MouseDeviceEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_MouseID which;
} SDL_MouseDeviceEvent;
typedef struct SDL_MouseMotionEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_WindowID windowID;
	SDL_MouseID which;
	SDL_MouseButtonFlags state;
	float x;
	float y;
	float xrel;
	float yrel;
} SDL_MouseMotionEvent;
typedef struct SDL_MouseButtonEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_WindowID windowID;
	SDL_MouseID which;
	Uint8 button;
	_Bool down;
	Uint8 clicks;
	Uint8 padding;
	float x;
	float y;
} SDL_MouseButtonEvent;
typedef struct SDL_MouseWheelEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_WindowID windowID;
	SDL_MouseID which;
	float x;
	float y;
	SDL_MouseWheelDirection direction;
	float mouse_x;
	float mouse_y;
} SDL_MouseWheelEvent;
typedef struct SDL_JoyAxisEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_JoystickID which;
	Uint8 axis;
	Uint8 padding1;
	Uint8 padding2;
	Uint8 padding3;
	Sint16 value;
	Uint16 padding4;
} SDL_JoyAxisEvent;
typedef struct SDL_JoyBallEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_JoystickID which;
	Uint8 ball;
	Uint8 padding1;
	Uint8 padding2;
	Uint8 padding3;
	Sint16 xrel;
	Sint16 yrel;
} SDL_JoyBallEvent;
typedef struct SDL_JoyHatEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_JoystickID which;
	Uint8 hat;
	Uint8 value;
	Uint8 padding1;
	Uint8 padding2;
} SDL_JoyHatEvent;
typedef struct SDL_JoyButtonEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_JoystickID which;
	Uint8 button;
	_Bool down;
	Uint8 padding1;
	Uint8 padding2;
} SDL_JoyButtonEvent;
typedef struct SDL_JoyDeviceEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_JoystickID which;
} SDL_JoyDeviceEvent;
typedef struct SDL_JoyBatteryEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_JoystickID which;
	SDL_PowerState state;
	int percent;
} SDL_JoyBatteryEvent;
typedef struct SDL_GamepadAxisEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_JoystickID which;
	Uint8 axis;
	Uint8 padding1;
	Uint8 padding2;
	Uint8 padding3;
	Sint16 value;
	Uint16 padding4;
} SDL_GamepadAxisEvent;
typedef struct SDL_GamepadButtonEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_JoystickID which;
	Uint8 button;
	_Bool down;
	Uint8 padding1;
	Uint8 padding2;
} SDL_GamepadButtonEvent;
typedef struct SDL_GamepadDeviceEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_JoystickID which;
} SDL_GamepadDeviceEvent;
typedef struct SDL_GamepadTouchpadEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_JoystickID which;
	Sint32 touchpad;
	Sint32 finger;
	float x;
	float y;
	float pressure;
} SDL_GamepadTouchpadEvent;
typedef struct SDL_GamepadSensorEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_JoystickID which;
	Sint32 sensor;
	float data[3];
	Uint64 sensor_timestamp;
} SDL_GamepadSensorEvent;
typedef struct SDL_AudioDeviceEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_AudioDeviceID which;
	_Bool recording;
	Uint8 padding1;
	Uint8 padding2;
	Uint8 padding3;
} SDL_AudioDeviceEvent;
typedef struct SDL_CameraDeviceEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_CameraID which;
} SDL_CameraDeviceEvent;
typedef struct SDL_RenderEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_WindowID windowID;
} SDL_RenderEvent;
typedef struct SDL_TouchFingerEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_TouchID touchID;
	SDL_FingerID fingerID;
	float x;
	float y;
	float dx;
	float dy;
	float pressure;
	SDL_WindowID windowID;
} SDL_TouchFingerEvent;
typedef struct SDL_PenProximityEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_WindowID windowID;
	SDL_PenID which;
} SDL_PenProximityEvent;
typedef struct SDL_PenMotionEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_WindowID windowID;
	SDL_PenID which;
	SDL_PenInputFlags pen_state;
	float x;
	float y;
} SDL_PenMotionEvent;
typedef struct SDL_PenTouchEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_WindowID windowID;
	SDL_PenID which;
	SDL_PenInputFlags pen_state;
	float x;
	float y;
	_Bool eraser;
	_Bool down;
} SDL_PenTouchEvent;
typedef struct SDL_PenButtonEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_WindowID windowID;
	SDL_PenID which;
	SDL_PenInputFlags pen_state;
	float x;
	float y;
	Uint8 button;
	_Bool down;
} SDL_PenButtonEvent;
typedef struct SDL_PenAxisEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_WindowID windowID;
	SDL_PenID which;
	SDL_PenInputFlags pen_state;
	float x;
	float y;
	SDL_PenAxis axis;
	float value;
} SDL_PenAxisEvent;
typedef struct SDL_DropEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_WindowID windowID;
	float x;
	float y;
	const char *source;
	const char *data;
} SDL_DropEvent;
typedef struct SDL_ClipboardEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	_Bool owner;
	Sint32 num_mime_types;
	const char **mime_types;
} SDL_ClipboardEvent;
typedef struct SDL_SensorEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_SensorID which;
	float data[6];
	Uint64 sensor_timestamp;
} SDL_SensorEvent;
typedef struct SDL_QuitEvent {
	SDL_EventType type;
	Uint32 reserved;
	Uint64 timestamp;
} SDL_QuitEvent;
typedef struct SDL_UserEvent {
	Uint32 type;
	Uint32 reserved;
	Uint64 timestamp;
	SDL_WindowID windowID;
	Sint32 code;
	void *data1;
	void *data2;
} SDL_UserEvent;
typedef union SDL_Event {
	Uint32 type;
	SDL_CommonEvent common;
	SDL_DisplayEvent display;
	SDL_WindowEvent window;
	SDL_KeyboardDeviceEvent kdevice;
	SDL_KeyboardEvent key;
	SDL_TextEditingEvent edit;
	SDL_TextEditingCandidatesEvent edit_candidates;
	SDL_TextInputEvent text;
	SDL_MouseDeviceEvent mdevice;
	SDL_MouseMotionEvent motion;
	SDL_MouseButtonEvent button;
	SDL_MouseWheelEvent wheel;
	SDL_JoyDeviceEvent jdevice;
	SDL_JoyAxisEvent jaxis;
	SDL_JoyBallEvent jball;
	SDL_JoyHatEvent jhat;
	SDL_JoyButtonEvent jbutton;
	SDL_JoyBatteryEvent jbattery;
	SDL_GamepadDeviceEvent gdevice;
	SDL_GamepadAxisEvent gaxis;
	SDL_GamepadButtonEvent gbutton;
	SDL_GamepadTouchpadEvent gtouchpad;
	SDL_GamepadSensorEvent gsensor;
	SDL_AudioDeviceEvent adevice;
	SDL_CameraDeviceEvent cdevice;
	SDL_SensorEvent sensor;
	SDL_QuitEvent quit;
	SDL_UserEvent user;
	SDL_TouchFingerEvent tfinger;
	SDL_PenProximityEvent pproximity;
	SDL_PenTouchEvent ptouch;
	SDL_PenMotionEvent pmotion;
	SDL_PenButtonEvent pbutton;
	SDL_PenAxisEvent paxis;
	SDL_RenderEvent render;
	SDL_DropEvent drop;
	SDL_ClipboardEvent clipboard;
	Uint8 padding[128];
} SDL_Event;
typedef _Bool ( *SDL_EventFilter)(void *userdata, SDL_Event *event);
typedef struct SDL_PathInfo {
	SDL_PathType type;
	Uint64 size;
	SDL_Time create_time;
	SDL_Time modify_time;
	SDL_Time access_time;
} SDL_PathInfo;
typedef Uint32 SDL_GlobFlags;
typedef SDL_EnumerationResult ( *SDL_EnumerateDirectoryCallback)(void *userdata, const char *dirname, const char *fname);
typedef struct SDL_GPUDevice SDL_GPUDevice;
typedef struct SDL_GPUBuffer SDL_GPUBuffer;
typedef struct SDL_GPUTransferBuffer SDL_GPUTransferBuffer;
typedef struct SDL_GPUTexture SDL_GPUTexture;
typedef struct SDL_GPUSampler SDL_GPUSampler;
typedef struct SDL_GPUShader SDL_GPUShader;
typedef struct SDL_GPUComputePipeline SDL_GPUComputePipeline;
typedef struct SDL_GPUGraphicsPipeline SDL_GPUGraphicsPipeline;
typedef struct SDL_GPUCommandBuffer SDL_GPUCommandBuffer;
typedef struct SDL_GPURenderPass SDL_GPURenderPass;
typedef struct SDL_GPUComputePass SDL_GPUComputePass;
typedef struct SDL_GPUCopyPass SDL_GPUCopyPass;
typedef struct SDL_GPUFence SDL_GPUFence;
typedef Uint32 SDL_GPUTextureUsageFlags;
typedef Uint32 SDL_GPUBufferUsageFlags;
typedef Uint32 SDL_GPUShaderFormat;
typedef Uint8 SDL_GPUColorComponentFlags;
typedef struct SDL_GPUViewport {
	float x;
	float y;
	float w;
	float h;
	float min_depth;
	float max_depth;
} SDL_GPUViewport;
typedef struct SDL_GPUTextureTransferInfo {
	SDL_GPUTransferBuffer *transfer_buffer;
	Uint32 offset;
	Uint32 pixels_per_row;
	Uint32 rows_per_layer;
} SDL_GPUTextureTransferInfo;
typedef struct SDL_GPUTransferBufferLocation {
	SDL_GPUTransferBuffer *transfer_buffer;
	Uint32 offset;
} SDL_GPUTransferBufferLocation;
typedef struct SDL_GPUTextureLocation {
	SDL_GPUTexture *texture;
	Uint32 mip_level;
	Uint32 layer;
	Uint32 x;
	Uint32 y;
	Uint32 z;
} SDL_GPUTextureLocation;
typedef struct SDL_GPUTextureRegion {
	SDL_GPUTexture *texture;
	Uint32 mip_level;
	Uint32 layer;
	Uint32 x;
	Uint32 y;
	Uint32 z;
	Uint32 w;
	Uint32 h;
	Uint32 d;
} SDL_GPUTextureRegion;
typedef struct SDL_GPUBlitRegion {
	SDL_GPUTexture *texture;
	Uint32 mip_level;
	Uint32 layer_or_depth_plane;
	Uint32 x;
	Uint32 y;
	Uint32 w;
	Uint32 h;
} SDL_GPUBlitRegion;
typedef struct SDL_GPUBufferLocation {
	SDL_GPUBuffer *buffer;
	Uint32 offset;
} SDL_GPUBufferLocation;
typedef struct SDL_GPUBufferRegion {
	SDL_GPUBuffer *buffer;
	Uint32 offset;
	Uint32 size;
} SDL_GPUBufferRegion;
typedef struct SDL_GPUIndirectDrawCommand {
	Uint32 num_vertices;
	Uint32 num_instances;
	Uint32 first_vertex;
	Uint32 first_instance;
} SDL_GPUIndirectDrawCommand;
typedef struct SDL_GPUIndexedIndirectDrawCommand {
	Uint32 num_indices;
	Uint32 num_instances;
	Uint32 first_index;
	Sint32 vertex_offset;
	Uint32 first_instance;
} SDL_GPUIndexedIndirectDrawCommand;
typedef struct SDL_GPUIndirectDispatchCommand {
	Uint32 groupcount_x;
	Uint32 groupcount_y;
	Uint32 groupcount_z;
} SDL_GPUIndirectDispatchCommand;
typedef struct SDL_GPUSamplerCreateInfo {
	SDL_GPUFilter min_filter;
	SDL_GPUFilter mag_filter;
	SDL_GPUSamplerMipmapMode mipmap_mode;
	SDL_GPUSamplerAddressMode address_mode_u;
	SDL_GPUSamplerAddressMode address_mode_v;
	SDL_GPUSamplerAddressMode address_mode_w;
	float mip_lod_bias;
	float max_anisotropy;
	SDL_GPUCompareOp compare_op;
	float min_lod;
	float max_lod;
	_Bool enable_anisotropy;
	_Bool enable_compare;
	Uint8 padding1;
	Uint8 padding2;
	SDL_PropertiesID props;
} SDL_GPUSamplerCreateInfo;
typedef struct SDL_GPUVertexBufferDescription {
	Uint32 slot;
	Uint32 pitch;
	SDL_GPUVertexInputRate input_rate;
	Uint32 instance_step_rate;
} SDL_GPUVertexBufferDescription;
typedef struct SDL_GPUVertexAttribute {
	Uint32 location;
	Uint32 buffer_slot;
	SDL_GPUVertexElementFormat format;
	Uint32 offset;
} SDL_GPUVertexAttribute;
typedef struct SDL_GPUVertexInputState {
	const SDL_GPUVertexBufferDescription *vertex_buffer_descriptions;
	Uint32 num_vertex_buffers;
	const SDL_GPUVertexAttribute *vertex_attributes;
	Uint32 num_vertex_attributes;
} SDL_GPUVertexInputState;
typedef struct SDL_GPUStencilOpState {
	SDL_GPUStencilOp fail_op;
	SDL_GPUStencilOp pass_op;
	SDL_GPUStencilOp depth_fail_op;
	SDL_GPUCompareOp compare_op;
} SDL_GPUStencilOpState;
typedef struct SDL_GPUColorTargetBlendState {
	SDL_GPUBlendFactor src_color_blendfactor;
	SDL_GPUBlendFactor dst_color_blendfactor;
	SDL_GPUBlendOp color_blend_op;
	SDL_GPUBlendFactor src_alpha_blendfactor;
	SDL_GPUBlendFactor dst_alpha_blendfactor;
	SDL_GPUBlendOp alpha_blend_op;
	SDL_GPUColorComponentFlags color_write_mask;
	_Bool enable_blend;
	_Bool enable_color_write_mask;
	Uint8 padding1;
	Uint8 padding2;
} SDL_GPUColorTargetBlendState;
typedef struct SDL_GPUShaderCreateInfo {
	size_t code_size;
	const Uint8 *code;
	const char *entrypoint;
	SDL_GPUShaderFormat format;
	SDL_GPUShaderStage stage;
	Uint32 num_samplers;
	Uint32 num_storage_textures;
	Uint32 num_storage_buffers;
	Uint32 num_uniform_buffers;
	SDL_PropertiesID props;
} SDL_GPUShaderCreateInfo;
typedef struct SDL_GPUTextureCreateInfo {
	SDL_GPUTextureType type;
	SDL_GPUTextureFormat format;
	SDL_GPUTextureUsageFlags usage;
	Uint32 width;
	Uint32 height;
	Uint32 layer_count_or_depth;
	Uint32 num_levels;
	SDL_GPUSampleCount sample_count;
	SDL_PropertiesID props;
} SDL_GPUTextureCreateInfo;
typedef struct SDL_GPUBufferCreateInfo {
	SDL_GPUBufferUsageFlags usage;
	Uint32 size;
	SDL_PropertiesID props;
} SDL_GPUBufferCreateInfo;
typedef struct SDL_GPUTransferBufferCreateInfo {
	SDL_GPUTransferBufferUsage usage;
	Uint32 size;
	SDL_PropertiesID props;
} SDL_GPUTransferBufferCreateInfo;
typedef struct SDL_GPURasterizerState {
	SDL_GPUFillMode fill_mode;
	SDL_GPUCullMode cull_mode;
	SDL_GPUFrontFace front_face;
	float depth_bias_constant_factor;
	float depth_bias_clamp;
	float depth_bias_slope_factor;
	_Bool enable_depth_bias;
	_Bool enable_depth_clip;
	Uint8 padding1;
	Uint8 padding2;
} SDL_GPURasterizerState;
typedef struct SDL_GPUMultisampleState {
	SDL_GPUSampleCount sample_count;
	Uint32 sample_mask;
	_Bool enable_mask;
	Uint8 padding1;
	Uint8 padding2;
	Uint8 padding3;
} SDL_GPUMultisampleState;
typedef struct SDL_GPUDepthStencilState {
	SDL_GPUCompareOp compare_op;
	SDL_GPUStencilOpState back_stencil_state;
	SDL_GPUStencilOpState front_stencil_state;
	Uint8 compare_mask;
	Uint8 write_mask;
	_Bool enable_depth_test;
	_Bool enable_depth_write;
	_Bool enable_stencil_test;
	Uint8 padding1;
	Uint8 padding2;
	Uint8 padding3;
} SDL_GPUDepthStencilState;
typedef struct SDL_GPUColorTargetDescription {
	SDL_GPUTextureFormat format;
	SDL_GPUColorTargetBlendState blend_state;
} SDL_GPUColorTargetDescription;
typedef struct SDL_GPUGraphicsPipelineTargetInfo {
	const SDL_GPUColorTargetDescription *color_target_descriptions;
	Uint32 num_color_targets;
	SDL_GPUTextureFormat depth_stencil_format;
	_Bool has_depth_stencil_target;
	Uint8 padding1;
	Uint8 padding2;
	Uint8 padding3;
} SDL_GPUGraphicsPipelineTargetInfo;
typedef struct SDL_GPUGraphicsPipelineCreateInfo {
	SDL_GPUShader *vertex_shader;
	SDL_GPUShader *fragment_shader;
	SDL_GPUVertexInputState vertex_input_state;
	SDL_GPUPrimitiveType primitive_type;
	SDL_GPURasterizerState rasterizer_state;
	SDL_GPUMultisampleState multisample_state;
	SDL_GPUDepthStencilState depth_stencil_state;
	SDL_GPUGraphicsPipelineTargetInfo target_info;
	SDL_PropertiesID props;
} SDL_GPUGraphicsPipelineCreateInfo;
typedef struct SDL_GPUComputePipelineCreateInfo {
	size_t code_size;
	const Uint8 *code;
	const char *entrypoint;
	SDL_GPUShaderFormat format;
	Uint32 num_samplers;
	Uint32 num_readonly_storage_textures;
	Uint32 num_readonly_storage_buffers;
	Uint32 num_readwrite_storage_textures;
	Uint32 num_readwrite_storage_buffers;
	Uint32 num_uniform_buffers;
	Uint32 threadcount_x;
	Uint32 threadcount_y;
	Uint32 threadcount_z;
	SDL_PropertiesID props;
} SDL_GPUComputePipelineCreateInfo;
typedef struct SDL_GPUColorTargetInfo {
	SDL_GPUTexture *texture;
	Uint32 mip_level;
	Uint32 layer_or_depth_plane;
	SDL_FColor clear_color;
	SDL_GPULoadOp load_op;
	SDL_GPUStoreOp store_op;
	SDL_GPUTexture *resolve_texture;
	Uint32 resolve_mip_level;
	Uint32 resolve_layer;
	_Bool cycle;
	_Bool cycle_resolve_texture;
	Uint8 padding1;
	Uint8 padding2;
} SDL_GPUColorTargetInfo;
typedef struct SDL_GPUDepthStencilTargetInfo {
	SDL_GPUTexture *texture;
	float clear_depth;
	SDL_GPULoadOp load_op;
	SDL_GPUStoreOp store_op;
	SDL_GPULoadOp stencil_load_op;
	SDL_GPUStoreOp stencil_store_op;
	_Bool cycle;
	Uint8 clear_stencil;
	Uint8 padding1;
	Uint8 padding2;
} SDL_GPUDepthStencilTargetInfo;
typedef struct SDL_GPUBlitInfo {
	SDL_GPUBlitRegion source;
	SDL_GPUBlitRegion destination;
	SDL_GPULoadOp load_op;
	SDL_FColor clear_color;
	SDL_FlipMode flip_mode;
	SDL_GPUFilter filter;
	_Bool cycle;
	Uint8 padding1;
	Uint8 padding2;
	Uint8 padding3;
} SDL_GPUBlitInfo;
typedef struct SDL_GPUBufferBinding {
	SDL_GPUBuffer *buffer;
	Uint32 offset;
} SDL_GPUBufferBinding;
typedef struct SDL_GPUTextureSamplerBinding {
	SDL_GPUTexture *texture;
	SDL_GPUSampler *sampler;
} SDL_GPUTextureSamplerBinding;
typedef struct SDL_GPUStorageBufferReadWriteBinding {
	SDL_GPUBuffer *buffer;
	_Bool cycle;
	Uint8 padding1;
	Uint8 padding2;
	Uint8 padding3;
} SDL_GPUStorageBufferReadWriteBinding;
typedef struct SDL_GPUStorageTextureReadWriteBinding {
	SDL_GPUTexture *texture;
	Uint32 mip_level;
	Uint32 layer;
	_Bool cycle;
	Uint8 padding1;
	Uint8 padding2;
	Uint8 padding3;
} SDL_GPUStorageTextureReadWriteBinding;
typedef struct SDL_Haptic SDL_Haptic;
typedef struct SDL_HapticDirection {
	Uint8 type;
	Sint32 dir[3];
} SDL_HapticDirection;
typedef struct SDL_HapticConstant {
	Uint16 type;
	SDL_HapticDirection direction;
	Uint32 length;
	Uint16 delay;
	Uint16 button;
	Uint16 interval;
	Sint16 level;
	Uint16 attack_length;
	Uint16 attack_level;
	Uint16 fade_length;
	Uint16 fade_level;
} SDL_HapticConstant;
typedef struct SDL_HapticPeriodic {
	Uint16 type;
	SDL_HapticDirection direction;
	Uint32 length;
	Uint16 delay;
	Uint16 button;
	Uint16 interval;
	Uint16 period;
	Sint16 magnitude;
	Sint16 offset;
	Uint16 phase;
	Uint16 attack_length;
	Uint16 attack_level;
	Uint16 fade_length;
	Uint16 fade_level;
} SDL_HapticPeriodic;
typedef struct SDL_HapticCondition {
	Uint16 type;
	SDL_HapticDirection direction;
	Uint32 length;
	Uint16 delay;
	Uint16 button;
	Uint16 interval;
	Uint16 right_sat[3];
	Uint16 left_sat[3];
	Sint16 right_coeff[3];
	Sint16 left_coeff[3];
	Uint16 deadband[3];
	Sint16 center[3];
} SDL_HapticCondition;
typedef struct SDL_HapticRamp {
	Uint16 type;
	SDL_HapticDirection direction;
	Uint32 length;
	Uint16 delay;
	Uint16 button;
	Uint16 interval;
	Sint16 start;
	Sint16 end;
	Uint16 attack_length;
	Uint16 attack_level;
	Uint16 fade_length;
	Uint16 fade_level;
} SDL_HapticRamp;
typedef struct SDL_HapticLeftRight {
	Uint16 type;
	Uint32 length;
	Uint16 large_magnitude;
	Uint16 small_magnitude;
} SDL_HapticLeftRight;
typedef struct SDL_HapticCustom {
	Uint16 type;
	SDL_HapticDirection direction;
	Uint32 length;
	Uint16 delay;
	Uint16 button;
	Uint16 interval;
	Uint8 channels;
	Uint16 period;
	Uint16 samples;
	Uint16 *data;
	Uint16 attack_length;
	Uint16 attack_level;
	Uint16 fade_length;
	Uint16 fade_level;
} SDL_HapticCustom;
typedef union SDL_HapticEffect {
	Uint16 type;
	SDL_HapticConstant constant;
	SDL_HapticPeriodic periodic;
	SDL_HapticCondition condition;
	SDL_HapticRamp ramp;
	SDL_HapticLeftRight leftright;
	SDL_HapticCustom custom;
} SDL_HapticEffect;
typedef Uint32 SDL_HapticID;
typedef struct SDL_hid_device SDL_hid_device;
typedef struct SDL_hid_device_info {
	char *path;
	unsigned short vendor_id;
	unsigned short product_id;
	wchar_t *serial_number;
	unsigned short release_number;
	wchar_t *manufacturer_string;
	wchar_t *product_string;
	unsigned short usage_page;
	unsigned short usage;
	int interface_number;
	int interface_class;
	int interface_subclass;
	int interface_protocol;
	SDL_hid_bus_type bus_type;
	struct SDL_hid_device_info *next;
} SDL_hid_device_info;
typedef void( *SDL_HintCallback)(void *userdata, const char *name, const char *oldValue, const char *newValue);
typedef Uint32 SDL_InitFlags;
typedef SDL_AppResult ( *SDL_AppInit_func)(void **appstate, int argc, char *argv[]);
typedef SDL_AppResult ( *SDL_AppIterate_func)(void *appstate);
typedef SDL_AppResult ( *SDL_AppEvent_func)(void *appstate, SDL_Event *event);
typedef void ( *SDL_AppQuit_func)(void *appstate, SDL_AppResult result);
typedef void ( *SDL_MainThreadCallback)(void *userdata);
typedef struct SDL_SharedObject SDL_SharedObject;
typedef struct SDL_Locale {
	const char *language;
	const char *country;
} SDL_Locale;
typedef void ( *SDL_LogOutputFunction)(void *userdata, int category, SDL_LogPriority priority, const char *message);
typedef Uint32 SDL_MessageBoxFlags;
typedef Uint32 SDL_MessageBoxButtonFlags;
typedef struct SDL_MessageBoxButtonData {
	SDL_MessageBoxButtonFlags flags;
	int buttonID;
	const char *text;
} SDL_MessageBoxButtonData;
typedef struct SDL_MessageBoxColor {
	Uint8 r, g, b;
} SDL_MessageBoxColor;
typedef struct SDL_MessageBoxColorScheme {
	SDL_MessageBoxColor colors[SDL_MESSAGEBOX_COLOR_COUNT];
} SDL_MessageBoxColorScheme;
typedef struct SDL_MessageBoxData {
	SDL_MessageBoxFlags flags;
	SDL_Window *window;
	const char *title;
	const char *message;
	int numbuttons;
	const SDL_MessageBoxButtonData *buttons;
	const SDL_MessageBoxColorScheme *colorScheme;
} SDL_MessageBoxData;
typedef void *SDL_MetalView;
typedef struct SDL_Process SDL_Process;
typedef struct SDL_Vertex {
	SDL_FPoint position;
	SDL_FColor color;
	SDL_FPoint tex_coord;
} SDL_Vertex;
typedef struct SDL_Renderer SDL_Renderer;
struct SDL_Texture {
	SDL_PixelFormat format;
	int w;
	int h;
	int refcount;
};
typedef struct SDL_Texture SDL_Texture;
typedef struct SDL_StorageInterface {
	Uint32 version;
	_Bool ( *close)(void *userdata);
	_Bool ( *ready)(void *userdata);
	_Bool ( *enumerate)(void *userdata, const char *path, SDL_EnumerateDirectoryCallback callback, void *callback_userdata);
	_Bool ( *info)(void *userdata, const char *path, SDL_PathInfo *info);
	_Bool ( *read_file)(void *userdata, const char *path, void *destination, Uint64 length);
	_Bool ( *write_file)(void *userdata, const char *path, const void *source, Uint64 length);
	_Bool ( *mkdir)(void *userdata, const char *path);
	_Bool ( *remove)(void *userdata, const char *path);
	_Bool ( *rename)(void *userdata, const char *oldpath, const char *newpath);
	_Bool ( *copy)(void *userdata, const char *oldpath, const char *newpath);
	Uint64 ( *space_remaining)(void *userdata);
} SDL_StorageInterface;
typedef struct SDL_Storage SDL_Storage;
typedef union _XEvent XEvent;
typedef _Bool ( *SDL_X11EventHook)(void *userdata, XEvent *xevent);
typedef struct SDL_DateTime {
	int year;
	int month;
	int day;
	int hour;
	int minute;
	int second;
	int nanosecond;
	int day_of_week;
	int utc_offset;
} SDL_DateTime;
typedef Uint32 SDL_TimerID;
typedef Uint32 ( *SDL_TimerCallback)(void *userdata, SDL_TimerID timerID, Uint32 interval);
typedef Uint64 ( *SDL_NSTimerCallback)(void *userdata, SDL_TimerID timerID, Uint64 interval);
typedef struct SDL_Tray SDL_Tray;
typedef struct SDL_TrayMenu SDL_TrayMenu;
typedef struct SDL_TrayEntry SDL_TrayEntry;
typedef Uint32 SDL_TrayEntryFlags;
typedef void ( *SDL_TrayCallback)(void *userdata, SDL_TrayEntry *entry);
]]

-- enums

ffi.cdef[[
enum { SDL_h_ = 1 };
enum { SDL_stdinc_h_ = 1 };
enum { SDL_platform_defines_h_ = 1 };
enum { SDL_PLATFORM_APPLE = 1 };
enum { SDL_PLATFORM_MACOS = 1 };
enum { SDL_INCLUDE_STDBOOL_H = 1 };
enum { alloca = 0 };
enum { SDL_MIN_SINT64 = -1 };
enum { SDL_MIN_TIME = -1 };
enum { SDL_PRINTF_FORMAT_STRING = 1 };
enum { SDL_SCANF_FORMAT_STRING = 1 };
enum { SDLCALL = 1 };
enum { SDL_INLINE = 0 };
enum { SDL_ANALYZER_NORETURN = 1 };
enum { SDL_HAS_FALLTHROUGH = 0 };
enum { SDL_INVALID_UNICODE_CODEPOINT = 65533 };
enum { SDL_ICONV_ERROR = -1 };
enum { SDL_ICONV_E2BIG = -2 };
enum { SDL_ICONV_EILSEQ = -3 };
enum { SDL_ICONV_EINVAL = -4 };
enum { SDL_assert_h_ = 1 };
enum { SDL_ASSERT_LEVEL = 2 };
enum { SDL_FUNCTION = 0 };
enum { SDL_FILE = 0 };
enum { SDL_LINE = 0 };
enum { SDL_NULL_WHILE_LOOP_CONDITION = 0 };
enum { SDL_asyncio_h_ = 1 };
enum { SDL_atomic_h_ = 1 };
enum { SDL_audio_h_ = 1 };
enum { SDL_endian_h_ = 1 };
enum { SDL_LIL_ENDIAN = 1234 };
enum { SDL_BIG_ENDIAN = 4321 };
enum { SDL_BYTEORDER = 1234 };
enum { SDL_FLOATWORDORDER = 1234 };
enum { HAS_BUILTIN_BSWAP16 = 0 };
enum { HAS_BUILTIN_BSWAP32 = 0 };
enum { HAS_BUILTIN_BSWAP64 = 0 };
enum { HAS_BROKEN_BSWAP = 0 };
enum { SDL_error_h_ = 1 };
enum { SDL_mutex_h_ = 1 };
enum { SDL_thread_h_ = 1 };
enum { SDL_properties_h_ = 1 };
enum { SDL_iostream_h_ = 1 };
enum { SDL_bits_h_ = 1 };
enum { SDL_blendmode_h_ = 1 };
enum { SDL_BLENDMODE_NONE = 0x00000000u };
enum { SDL_BLENDMODE_BLEND = 0x00000001u };
enum { SDL_BLENDMODE_BLEND_PREMULTIPLIED = 0x00000010u };
enum { SDL_BLENDMODE_ADD = 0x00000002u };
enum { SDL_BLENDMODE_ADD_PREMULTIPLIED = 0x00000020u };
enum { SDL_BLENDMODE_MOD = 0x00000004u };
enum { SDL_BLENDMODE_MUL = 0x00000008u };
enum { SDL_BLENDMODE_INVALID = 0x7FFFFFFFu };
enum { SDL_camera_h_ = 1 };
enum { SDL_pixels_h_ = 1 };
enum { SDL_ALPHA_OPAQUE = 255 };
enum { SDL_ALPHA_TRANSPARENT = 0 };
enum { SDL_surface_h_ = 1 };
enum { SDL_rect_h_ = 1 };
enum { SDL_SURFACE_PREALLOCATED = 0x00000001u };
enum { SDL_SURFACE_LOCK_NEEDED = 0x00000002u };
enum { SDL_SURFACE_LOCKED = 0x00000004u };
enum { SDL_SURFACE_SIMD_ALIGNED = 0x00000008u };
enum { SDL_clipboard_h_ = 1 };
enum { SDL_cpuinfo_h_ = 1 };
enum { SDL_CACHELINE_SIZE = 128 };
enum { SDL_dialog_h_ = 1 };
enum { SDL_video_h_ = 1 };
enum { SDL_WINDOWPOS_UNDEFINED_MASK = 0x1FFF0000u };
enum { SDL_WINDOWPOS_CENTERED_MASK = 0x2FFF0000u };
enum { SDL_GL_CONTEXT_PROFILE_CORE = 1 };
enum { SDL_GL_CONTEXT_PROFILE_COMPATIBILITY = 2 };
enum { SDL_GL_CONTEXT_PROFILE_ES = 4 };
enum { SDL_GL_CONTEXT_DEBUG_FLAG = 1 };
enum { SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = 2 };
enum { SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG = 4 };
enum { SDL_GL_CONTEXT_RESET_ISOLATION_FLAG = 8 };
enum { SDL_GL_CONTEXT_RELEASE_BEHAVIOR_NONE = 0 };
enum { SDL_GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH = 1 };
enum { SDL_GL_CONTEXT_RESET_NO_NOTIFICATION = 0 };
enum { SDL_GL_CONTEXT_RESET_LOSE_CONTEXT = 1 };
enum { SDL_WINDOW_SURFACE_VSYNC_DISABLED = 0 };
enum { SDL_WINDOW_SURFACE_VSYNC_ADAPTIVE = -1 };
enum { SDL_events_h_ = 1 };
enum { SDL_gamepad_h_ = 1 };
enum { SDL_guid_h_ = 1 };
enum { SDL_joystick_h_ = 1 };
enum { SDL_power_h_ = 1 };
enum { SDL_sensor_h_ = 1 };
enum { SDL_JOYSTICK_AXIS_MAX = 32767 };
enum { SDL_JOYSTICK_AXIS_MIN = -32768 };
enum { SDL_HAT_CENTERED = 0x00u };
enum { SDL_HAT_UP = 0x01u };
enum { SDL_HAT_RIGHT = 0x02u };
enum { SDL_HAT_DOWN = 0x04u };
enum { SDL_HAT_LEFT = 0x08u };
enum { SDL_keyboard_h_ = 1 };
enum { SDL_keycode_h_ = 1 };
enum { SDL_scancode_h_ = 1 };
enum { SDLK_UNKNOWN = 0x00000000u };
enum { SDLK_RETURN = 0x0000000du };
enum { SDLK_ESCAPE = 0x0000001bu };
enum { SDLK_BACKSPACE = 0x00000008u };
enum { SDLK_TAB = 0x00000009u };
enum { SDLK_SPACE = 0x00000020u };
enum { SDLK_EXCLAIM = 0x00000021u };
enum { SDLK_DBLAPOSTROPHE = 0x00000022u };
enum { SDLK_HASH = 0x00000023u };
enum { SDLK_DOLLAR = 0x00000024u };
enum { SDLK_PERCENT = 0x00000025u };
enum { SDLK_AMPERSAND = 0x00000026u };
enum { SDLK_APOSTROPHE = 0x00000027u };
enum { SDLK_LEFTPAREN = 0x00000028u };
enum { SDLK_RIGHTPAREN = 0x00000029u };
enum { SDLK_ASTERISK = 0x0000002au };
enum { SDLK_PLUS = 0x0000002bu };
enum { SDLK_COMMA = 0x0000002cu };
enum { SDLK_MINUS = 0x0000002du };
enum { SDLK_PERIOD = 0x0000002eu };
enum { SDLK_SLASH = 0x0000002fu };
enum { SDLK_0 = 0x00000030u };
enum { SDLK_1 = 0x00000031u };
enum { SDLK_2 = 0x00000032u };
enum { SDLK_3 = 0x00000033u };
enum { SDLK_4 = 0x00000034u };
enum { SDLK_5 = 0x00000035u };
enum { SDLK_6 = 0x00000036u };
enum { SDLK_7 = 0x00000037u };
enum { SDLK_8 = 0x00000038u };
enum { SDLK_9 = 0x00000039u };
enum { SDLK_COLON = 0x0000003au };
enum { SDLK_SEMICOLON = 0x0000003bu };
enum { SDLK_LESS = 0x0000003cu };
enum { SDLK_EQUALS = 0x0000003du };
enum { SDLK_GREATER = 0x0000003eu };
enum { SDLK_QUESTION = 0x0000003fu };
enum { SDLK_AT = 0x00000040u };
enum { SDLK_LEFTBRACKET = 0x0000005bu };
enum { SDLK_BACKSLASH = 0x0000005cu };
enum { SDLK_RIGHTBRACKET = 0x0000005du };
enum { SDLK_CARET = 0x0000005eu };
enum { SDLK_UNDERSCORE = 0x0000005fu };
enum { SDLK_GRAVE = 0x00000060u };
enum { SDLK_A = 0x00000061u };
enum { SDLK_B = 0x00000062u };
enum { SDLK_C = 0x00000063u };
enum { SDLK_D = 0x00000064u };
enum { SDLK_E = 0x00000065u };
enum { SDLK_F = 0x00000066u };
enum { SDLK_G = 0x00000067u };
enum { SDLK_H = 0x00000068u };
enum { SDLK_I = 0x00000069u };
enum { SDLK_J = 0x0000006au };
enum { SDLK_K = 0x0000006bu };
enum { SDLK_L = 0x0000006cu };
enum { SDLK_M = 0x0000006du };
enum { SDLK_N = 0x0000006eu };
enum { SDLK_O = 0x0000006fu };
enum { SDLK_P = 0x00000070u };
enum { SDLK_Q = 0x00000071u };
enum { SDLK_R = 0x00000072u };
enum { SDLK_S = 0x00000073u };
enum { SDLK_T = 0x00000074u };
enum { SDLK_U = 0x00000075u };
enum { SDLK_V = 0x00000076u };
enum { SDLK_W = 0x00000077u };
enum { SDLK_X = 0x00000078u };
enum { SDLK_Y = 0x00000079u };
enum { SDLK_Z = 0x0000007au };
enum { SDLK_LEFTBRACE = 0x0000007bu };
enum { SDLK_PIPE = 0x0000007cu };
enum { SDLK_RIGHTBRACE = 0x0000007du };
enum { SDLK_TILDE = 0x0000007eu };
enum { SDLK_DELETE = 0x0000007fu };
enum { SDLK_PLUSMINUS = 0x000000b1u };
enum { SDLK_CAPSLOCK = 0x40000039u };
enum { SDLK_F1 = 0x4000003au };
enum { SDLK_F2 = 0x4000003bu };
enum { SDLK_F3 = 0x4000003cu };
enum { SDLK_F4 = 0x4000003du };
enum { SDLK_F5 = 0x4000003eu };
enum { SDLK_F6 = 0x4000003fu };
enum { SDLK_F7 = 0x40000040u };
enum { SDLK_F8 = 0x40000041u };
enum { SDLK_F9 = 0x40000042u };
enum { SDLK_F10 = 0x40000043u };
enum { SDLK_F11 = 0x40000044u };
enum { SDLK_F12 = 0x40000045u };
enum { SDLK_PRINTSCREEN = 0x40000046u };
enum { SDLK_SCROLLLOCK = 0x40000047u };
enum { SDLK_PAUSE = 0x40000048u };
enum { SDLK_INSERT = 0x40000049u };
enum { SDLK_HOME = 0x4000004au };
enum { SDLK_PAGEUP = 0x4000004bu };
enum { SDLK_END = 0x4000004du };
enum { SDLK_PAGEDOWN = 0x4000004eu };
enum { SDLK_RIGHT = 0x4000004fu };
enum { SDLK_LEFT = 0x40000050u };
enum { SDLK_DOWN = 0x40000051u };
enum { SDLK_UP = 0x40000052u };
enum { SDLK_NUMLOCKCLEAR = 0x40000053u };
enum { SDLK_KP_DIVIDE = 0x40000054u };
enum { SDLK_KP_MULTIPLY = 0x40000055u };
enum { SDLK_KP_MINUS = 0x40000056u };
enum { SDLK_KP_PLUS = 0x40000057u };
enum { SDLK_KP_ENTER = 0x40000058u };
enum { SDLK_KP_1 = 0x40000059u };
enum { SDLK_KP_2 = 0x4000005au };
enum { SDLK_KP_3 = 0x4000005bu };
enum { SDLK_KP_4 = 0x4000005cu };
enum { SDLK_KP_5 = 0x4000005du };
enum { SDLK_KP_6 = 0x4000005eu };
enum { SDLK_KP_7 = 0x4000005fu };
enum { SDLK_KP_8 = 0x40000060u };
enum { SDLK_KP_9 = 0x40000061u };
enum { SDLK_KP_0 = 0x40000062u };
enum { SDLK_KP_PERIOD = 0x40000063u };
enum { SDLK_APPLICATION = 0x40000065u };
enum { SDLK_POWER = 0x40000066u };
enum { SDLK_KP_EQUALS = 0x40000067u };
enum { SDLK_F13 = 0x40000068u };
enum { SDLK_F14 = 0x40000069u };
enum { SDLK_F15 = 0x4000006au };
enum { SDLK_F16 = 0x4000006bu };
enum { SDLK_F17 = 0x4000006cu };
enum { SDLK_F18 = 0x4000006du };
enum { SDLK_F19 = 0x4000006eu };
enum { SDLK_F20 = 0x4000006fu };
enum { SDLK_F21 = 0x40000070u };
enum { SDLK_F22 = 0x40000071u };
enum { SDLK_F23 = 0x40000072u };
enum { SDLK_F24 = 0x40000073u };
enum { SDLK_EXECUTE = 0x40000074u };
enum { SDLK_HELP = 0x40000075u };
enum { SDLK_MENU = 0x40000076u };
enum { SDLK_SELECT = 0x40000077u };
enum { SDLK_STOP = 0x40000078u };
enum { SDLK_AGAIN = 0x40000079u };
enum { SDLK_UNDO = 0x4000007au };
enum { SDLK_CUT = 0x4000007bu };
enum { SDLK_COPY = 0x4000007cu };
enum { SDLK_PASTE = 0x4000007du };
enum { SDLK_FIND = 0x4000007eu };
enum { SDLK_MUTE = 0x4000007fu };
enum { SDLK_VOLUMEUP = 0x40000080u };
enum { SDLK_VOLUMEDOWN = 0x40000081u };
enum { SDLK_KP_COMMA = 0x40000085u };
enum { SDLK_KP_EQUALSAS400 = 0x40000086u };
enum { SDLK_ALTERASE = 0x40000099u };
enum { SDLK_SYSREQ = 0x4000009au };
enum { SDLK_CANCEL = 0x4000009bu };
enum { SDLK_CLEAR = 0x4000009cu };
enum { SDLK_PRIOR = 0x4000009du };
enum { SDLK_RETURN2 = 0x4000009eu };
enum { SDLK_SEPARATOR = 0x4000009fu };
enum { SDLK_OUT = 0x400000a0u };
enum { SDLK_OPER = 0x400000a1u };
enum { SDLK_CLEARAGAIN = 0x400000a2u };
enum { SDLK_CRSEL = 0x400000a3u };
enum { SDLK_EXSEL = 0x400000a4u };
enum { SDLK_KP_00 = 0x400000b0u };
enum { SDLK_KP_000 = 0x400000b1u };
enum { SDLK_THOUSANDSSEPARATOR = 0x400000b2u };
enum { SDLK_DECIMALSEPARATOR = 0x400000b3u };
enum { SDLK_CURRENCYUNIT = 0x400000b4u };
enum { SDLK_CURRENCYSUBUNIT = 0x400000b5u };
enum { SDLK_KP_LEFTPAREN = 0x400000b6u };
enum { SDLK_KP_RIGHTPAREN = 0x400000b7u };
enum { SDLK_KP_LEFTBRACE = 0x400000b8u };
enum { SDLK_KP_RIGHTBRACE = 0x400000b9u };
enum { SDLK_KP_TAB = 0x400000bau };
enum { SDLK_KP_BACKSPACE = 0x400000bbu };
enum { SDLK_KP_A = 0x400000bcu };
enum { SDLK_KP_B = 0x400000bdu };
enum { SDLK_KP_C = 0x400000beu };
enum { SDLK_KP_D = 0x400000bfu };
enum { SDLK_KP_E = 0x400000c0u };
enum { SDLK_KP_F = 0x400000c1u };
enum { SDLK_KP_XOR = 0x400000c2u };
enum { SDLK_KP_POWER = 0x400000c3u };
enum { SDLK_KP_PERCENT = 0x400000c4u };
enum { SDLK_KP_LESS = 0x400000c5u };
enum { SDLK_KP_GREATER = 0x400000c6u };
enum { SDLK_KP_AMPERSAND = 0x400000c7u };
enum { SDLK_KP_DBLAMPERSAND = 0x400000c8u };
enum { SDLK_KP_VERTICALBAR = 0x400000c9u };
enum { SDLK_KP_DBLVERTICALBAR = 0x400000cau };
enum { SDLK_KP_COLON = 0x400000cbu };
enum { SDLK_KP_HASH = 0x400000ccu };
enum { SDLK_KP_SPACE = 0x400000cdu };
enum { SDLK_KP_AT = 0x400000ceu };
enum { SDLK_KP_EXCLAM = 0x400000cfu };
enum { SDLK_KP_MEMSTORE = 0x400000d0u };
enum { SDLK_KP_MEMRECALL = 0x400000d1u };
enum { SDLK_KP_MEMCLEAR = 0x400000d2u };
enum { SDLK_KP_MEMADD = 0x400000d3u };
enum { SDLK_KP_MEMSUBTRACT = 0x400000d4u };
enum { SDLK_KP_MEMMULTIPLY = 0x400000d5u };
enum { SDLK_KP_MEMDIVIDE = 0x400000d6u };
enum { SDLK_KP_PLUSMINUS = 0x400000d7u };
enum { SDLK_KP_CLEAR = 0x400000d8u };
enum { SDLK_KP_CLEARENTRY = 0x400000d9u };
enum { SDLK_KP_BINARY = 0x400000dau };
enum { SDLK_KP_OCTAL = 0x400000dbu };
enum { SDLK_KP_DECIMAL = 0x400000dcu };
enum { SDLK_KP_HEXADECIMAL = 0x400000ddu };
enum { SDLK_LCTRL = 0x400000e0u };
enum { SDLK_LSHIFT = 0x400000e1u };
enum { SDLK_LALT = 0x400000e2u };
enum { SDLK_LGUI = 0x400000e3u };
enum { SDLK_RCTRL = 0x400000e4u };
enum { SDLK_RSHIFT = 0x400000e5u };
enum { SDLK_RALT = 0x400000e6u };
enum { SDLK_RGUI = 0x400000e7u };
enum { SDLK_MODE = 0x40000101u };
enum { SDLK_SLEEP = 0x40000102u };
enum { SDLK_WAKE = 0x40000103u };
enum { SDLK_CHANNEL_INCREMENT = 0x40000104u };
enum { SDLK_CHANNEL_DECREMENT = 0x40000105u };
enum { SDLK_MEDIA_PLAY = 0x40000106u };
enum { SDLK_MEDIA_PAUSE = 0x40000107u };
enum { SDLK_MEDIA_RECORD = 0x40000108u };
enum { SDLK_MEDIA_FAST_FORWARD = 0x40000109u };
enum { SDLK_MEDIA_REWIND = 0x4000010au };
enum { SDLK_MEDIA_NEXT_TRACK = 0x4000010bu };
enum { SDLK_MEDIA_PREVIOUS_TRACK = 0x4000010cu };
enum { SDLK_MEDIA_STOP = 0x4000010du };
enum { SDLK_MEDIA_EJECT = 0x4000010eu };
enum { SDLK_MEDIA_PLAY_PAUSE = 0x4000010fu };
enum { SDLK_MEDIA_SELECT = 0x40000110u };
enum { SDLK_AC_NEW = 0x40000111u };
enum { SDLK_AC_OPEN = 0x40000112u };
enum { SDLK_AC_CLOSE = 0x40000113u };
enum { SDLK_AC_EXIT = 0x40000114u };
enum { SDLK_AC_SAVE = 0x40000115u };
enum { SDLK_AC_PRINT = 0x40000116u };
enum { SDLK_AC_PROPERTIES = 0x40000117u };
enum { SDLK_AC_SEARCH = 0x40000118u };
enum { SDLK_AC_HOME = 0x40000119u };
enum { SDLK_AC_BACK = 0x4000011au };
enum { SDLK_AC_FORWARD = 0x4000011bu };
enum { SDLK_AC_STOP = 0x4000011cu };
enum { SDLK_AC_REFRESH = 0x4000011du };
enum { SDLK_AC_BOOKMARKS = 0x4000011eu };
enum { SDLK_SOFTLEFT = 0x4000011fu };
enum { SDLK_SOFTRIGHT = 0x40000120u };
enum { SDLK_CALL = 0x40000121u };
enum { SDLK_ENDCALL = 0x40000122u };
enum { SDLK_LEFT_TAB = 0x20000001u };
enum { SDLK_LEVEL5_SHIFT = 0x20000002u };
enum { SDLK_MULTI_KEY_COMPOSE = 0x20000003u };
enum { SDLK_LMETA = 0x20000004u };
enum { SDLK_RMETA = 0x20000005u };
enum { SDLK_LHYPER = 0x20000006u };
enum { SDLK_RHYPER = 0x20000007u };
enum { SDL_KMOD_NONE = 0x0000u };
enum { SDL_KMOD_LSHIFT = 0x0001u };
enum { SDL_KMOD_RSHIFT = 0x0002u };
enum { SDL_KMOD_LEVEL5 = 0x0004u };
enum { SDL_KMOD_LCTRL = 0x0040u };
enum { SDL_KMOD_RCTRL = 0x0080u };
enum { SDL_KMOD_LALT = 0x0100u };
enum { SDL_KMOD_RALT = 0x0200u };
enum { SDL_KMOD_LGUI = 0x0400u };
enum { SDL_KMOD_RGUI = 0x0800u };
enum { SDL_KMOD_NUM = 0x1000u };
enum { SDL_KMOD_CAPS = 0x2000u };
enum { SDL_KMOD_MODE = 0x4000u };
enum { SDL_KMOD_SCROLL = 0x8000u };
enum { SDL_mouse_h_ = 1 };
enum { SDL_BUTTON_LEFT = 1 };
enum { SDL_BUTTON_MIDDLE = 2 };
enum { SDL_BUTTON_RIGHT = 3 };
enum { SDL_BUTTON_X1 = 4 };
enum { SDL_BUTTON_X2 = 5 };
enum { SDL_pen_h_ = 1 };
enum { SDL_touch_h_ = 1 };
enum { SDL_TOUCH_MOUSEID = -1 };
enum { SDL_MOUSE_TOUCHID = -1 };
enum { SDL_PEN_MOUSEID = -2 };
enum { SDL_PEN_TOUCHID = -2 };
enum { SDL_filesystem_h_ = 1 };
enum { SDL_gpu_h_ = 1 };
enum { SDL_GPU_SHADERFORMAT_INVALID = 0 };
enum { SDL_haptic_h_ = 1 };
enum { SDL_HAPTIC_POLAR = 0 };
enum { SDL_HAPTIC_CARTESIAN = 1 };
enum { SDL_HAPTIC_SPHERICAL = 2 };
enum { SDL_HAPTIC_STEERING_AXIS = 3 };
enum { SDL_HAPTIC_INFINITY = 4294967295 };
enum { SDL_hidapi_h_ = 1 };
enum { SDL_hints_h_ = 1 };
enum { SDL_init_h_ = 1 };
enum { SDL_INIT_AUDIO = 0x00000010u };
enum { SDL_INIT_VIDEO = 0x00000020u };
enum { SDL_INIT_JOYSTICK = 0x00000200u };
enum { SDL_INIT_HAPTIC = 0x00001000u };
enum { SDL_INIT_GAMEPAD = 0x00002000u };
enum { SDL_INIT_EVENTS = 0x00004000u };
enum { SDL_INIT_SENSOR = 0x00008000u };
enum { SDL_INIT_CAMERA = 0x00010000u };
enum { SDL_loadso_h_ = 1 };
enum { SDL_locale_h = 1 };
enum { SDL_log_h_ = 1 };
enum { SDL_messagebox_h_ = 1 };
enum { SDL_MESSAGEBOX_ERROR = 0x00000010u };
enum { SDL_MESSAGEBOX_WARNING = 0x00000020u };
enum { SDL_MESSAGEBOX_INFORMATION = 0x00000040u };
enum { SDL_MESSAGEBOX_BUTTONS_LEFT_TO_RIGHT = 0x00000080u };
enum { SDL_MESSAGEBOX_BUTTONS_RIGHT_TO_LEFT = 0x00000100u };
enum { SDL_MESSAGEBOX_BUTTON_RETURNKEY_DEFAULT = 0x00000001u };
enum { SDL_MESSAGEBOX_BUTTON_ESCAPEKEY_DEFAULT = 0x00000002u };
enum { SDL_metal_h_ = 1 };
enum { SDL_misc_h_ = 1 };
enum { SDL_platform_h_ = 1 };
enum { SDL_process_h_ = 1 };
enum { SDL_render_h_ = 1 };
enum { SDL_RENDERER_VSYNC_DISABLED = 0 };
enum { SDL_RENDERER_VSYNC_ADAPTIVE = -1 };
enum { SDL_DEBUG_TEXT_FONT_CHARACTER_SIZE = 8 };
enum { SDL_storage_h_ = 1 };
enum { SDL_system_h_ = 1 };
enum { SDL_time_h_ = 1 };
enum { SDL_timer_h_ = 1 };
enum { SDL_MS_PER_SECOND = 1000 };
enum { SDL_US_PER_SECOND = 1000000 };
enum { SDL_NS_PER_SECOND = 1000000000 };
enum { SDL_NS_PER_MS = 1000000 };
enum { SDL_NS_PER_US = 1000 };
enum { SDL_tray_h_ = 1 };
enum { SDL_TRAYENTRY_BUTTON = 0x00000001u };
enum { SDL_TRAYENTRY_CHECKBOX = 0x00000002u };
enum { SDL_TRAYENTRY_SUBMENU = 0x00000004u };
enum { SDL_TRAYENTRY_DISABLED = 0x80000000u };
enum { SDL_TRAYENTRY_CHECKED = 0x40000000u };
enum { SDL_version_h_ = 1 };
enum { SDL_MAJOR_VERSION = 3 };
enum { SDL_MINOR_VERSION = 2 };
enum { SDL_MICRO_VERSION = 10 };
enum { SDL_VERSION = 3002010 };
enum { SDL_oldnames_h_ = 1 };
enum { SDL_AtomicAdd = 0 };
enum { SDL_AtomicCAS = 0 };
enum { SDL_AtomicCASPtr = 0 };
enum { SDL_AtomicGet = 0 };
enum { SDL_AtomicGetPtr = 0 };
enum { SDL_AtomicLock = 0 };
enum { SDL_AtomicSet = 0 };
enum { SDL_AtomicSetPtr = 0 };
enum { SDL_AtomicTryLock = 0 };
enum { SDL_AtomicUnlock = 0 };
enum { SDL_atomic_t = 0 };
enum { AUDIO_F32 = 0 };
enum { AUDIO_F32LSB = 0 };
enum { AUDIO_F32MSB = 0 };
enum { AUDIO_F32SYS = 0 };
enum { AUDIO_S16 = 0 };
enum { AUDIO_S16LSB = 0 };
enum { AUDIO_S16MSB = 0 };
enum { AUDIO_S16SYS = 0 };
enum { AUDIO_S32 = 0 };
enum { AUDIO_S32LSB = 0 };
enum { AUDIO_S32MSB = 0 };
enum { AUDIO_S32SYS = 0 };
enum { AUDIO_S8 = 0 };
enum { AUDIO_U8 = 0 };
enum { SDL_AudioStreamAvailable = 0 };
enum { SDL_AudioStreamClear = 0 };
enum { SDL_AudioStreamFlush = 0 };
enum { SDL_AudioStreamGet = 0 };
enum { SDL_AudioStreamPut = 0 };
enum { SDL_FreeAudioStream = 0 };
enum { SDL_FreeWAV = 0 };
enum { SDL_LoadWAV_RW = 0 };
enum { SDL_MixAudioFormat = 0 };
enum { SDL_NewAudioStream = 0 };
enum { SDL_GetCPUCount = 0 };
enum { SDL_SIMDGetAlignment = 0 };
enum { SDL_SwapBE16 = 0 };
enum { SDL_SwapBE32 = 0 };
enum { SDL_SwapBE64 = 0 };
enum { SDL_SwapLE16 = 0 };
enum { SDL_SwapLE32 = 0 };
enum { SDL_SwapLE64 = 0 };
enum { SDL_APP_DIDENTERBACKGROUND = 0 };
enum { SDL_APP_DIDENTERFOREGROUND = 0 };
enum { SDL_APP_LOWMEMORY = 0 };
enum { SDL_APP_TERMINATING = 0 };
enum { SDL_APP_WILLENTERBACKGROUND = 0 };
enum { SDL_APP_WILLENTERFOREGROUND = 0 };
enum { SDL_AUDIODEVICEADDED = 0 };
enum { SDL_AUDIODEVICEREMOVED = 0 };
enum { SDL_CLIPBOARDUPDATE = 0 };
enum { SDL_CONTROLLERAXISMOTION = 0 };
enum { SDL_CONTROLLERBUTTONDOWN = 0 };
enum { SDL_CONTROLLERBUTTONUP = 0 };
enum { SDL_CONTROLLERDEVICEADDED = 0 };
enum { SDL_CONTROLLERDEVICEREMAPPED = 0 };
enum { SDL_CONTROLLERDEVICEREMOVED = 0 };
enum { SDL_CONTROLLERSENSORUPDATE = 0 };
enum { SDL_CONTROLLERSTEAMHANDLEUPDATED = 0 };
enum { SDL_CONTROLLERTOUCHPADDOWN = 0 };
enum { SDL_CONTROLLERTOUCHPADMOTION = 0 };
enum { SDL_CONTROLLERTOUCHPADUP = 0 };
enum { SDL_ControllerAxisEvent = 0 };
enum { SDL_ControllerButtonEvent = 0 };
enum { SDL_ControllerDeviceEvent = 0 };
enum { SDL_ControllerSensorEvent = 0 };
enum { SDL_ControllerTouchpadEvent = 0 };
enum { SDL_DISPLAYEVENT_CONNECTED = 0 };
enum { SDL_DISPLAYEVENT_DISCONNECTED = 0 };
enum { SDL_DISPLAYEVENT_MOVED = 0 };
enum { SDL_DISPLAYEVENT_ORIENTATION = 0 };
enum { SDL_DROPBEGIN = 0 };
enum { SDL_DROPCOMPLETE = 0 };
enum { SDL_DROPFILE = 0 };
enum { SDL_DROPTEXT = 0 };
enum { SDL_DelEventWatch = 0 };
enum { SDL_FINGERDOWN = 0 };
enum { SDL_FINGERMOTION = 0 };
enum { SDL_FINGERUP = 0 };
enum { SDL_FIRSTEVENT = 0 };
enum { SDL_JOYAXISMOTION = 0 };
enum { SDL_JOYBATTERYUPDATED = 0 };
enum { SDL_JOYBUTTONDOWN = 0 };
enum { SDL_JOYBUTTONUP = 0 };
enum { SDL_JOYDEVICEADDED = 0 };
enum { SDL_JOYDEVICEREMOVED = 0 };
enum { SDL_JOYBALLMOTION = 0 };
enum { SDL_JOYHATMOTION = 0 };
enum { SDL_KEYDOWN = 0 };
enum { SDL_KEYMAPCHANGED = 0 };
enum { SDL_KEYUP = 0 };
enum { SDL_LASTEVENT = 0 };
enum { SDL_LOCALECHANGED = 0 };
enum { SDL_MOUSEBUTTONDOWN = 0 };
enum { SDL_MOUSEBUTTONUP = 0 };
enum { SDL_MOUSEMOTION = 0 };
enum { SDL_MOUSEWHEEL = 0 };
enum { SDL_POLLSENTINEL = 0 };
enum { SDL_QUIT = 0 };
enum { SDL_RENDER_DEVICE_RESET = 0 };
enum { SDL_RENDER_TARGETS_RESET = 0 };
enum { SDL_SENSORUPDATE = 0 };
enum { SDL_TEXTEDITING = 0 };
enum { SDL_TEXTEDITING_EXT = 0 };
enum { SDL_TEXTINPUT = 0 };
enum { SDL_USEREVENT = 0 };
enum { SDL_WINDOWEVENT_CLOSE = 0 };
enum { SDL_WINDOWEVENT_DISPLAY_CHANGED = 0 };
enum { SDL_WINDOWEVENT_ENTER = 0 };
enum { SDL_WINDOWEVENT_EXPOSED = 0 };
enum { SDL_WINDOWEVENT_FOCUS_GAINED = 0 };
enum { SDL_WINDOWEVENT_FOCUS_LOST = 0 };
enum { SDL_WINDOWEVENT_HIDDEN = 0 };
enum { SDL_WINDOWEVENT_HIT_TEST = 0 };
enum { SDL_WINDOWEVENT_ICCPROF_CHANGED = 0 };
enum { SDL_WINDOWEVENT_LEAVE = 0 };
enum { SDL_WINDOWEVENT_MAXIMIZED = 0 };
enum { SDL_WINDOWEVENT_MINIMIZED = 0 };
enum { SDL_WINDOWEVENT_MOVED = 0 };
enum { SDL_WINDOWEVENT_RESIZED = 0 };
enum { SDL_WINDOWEVENT_RESTORED = 0 };
enum { SDL_WINDOWEVENT_SHOWN = 0 };
enum { SDL_WINDOWEVENT_SIZE_CHANGED = 0 };
enum { SDL_eventaction = 0 };
enum { SDL_CONTROLLER_AXIS_INVALID = 0 };
enum { SDL_CONTROLLER_AXIS_LEFTX = 0 };
enum { SDL_CONTROLLER_AXIS_LEFTY = 0 };
enum { SDL_CONTROLLER_AXIS_MAX = 0 };
enum { SDL_CONTROLLER_AXIS_RIGHTX = 0 };
enum { SDL_CONTROLLER_AXIS_RIGHTY = 0 };
enum { SDL_CONTROLLER_AXIS_TRIGGERLEFT = 0 };
enum { SDL_CONTROLLER_AXIS_TRIGGERRIGHT = 0 };
enum { SDL_CONTROLLER_BINDTYPE_AXIS = 0 };
enum { SDL_CONTROLLER_BINDTYPE_BUTTON = 0 };
enum { SDL_CONTROLLER_BINDTYPE_HAT = 0 };
enum { SDL_CONTROLLER_BINDTYPE_NONE = 0 };
enum { SDL_CONTROLLER_BUTTON_A = 0 };
enum { SDL_CONTROLLER_BUTTON_B = 0 };
enum { SDL_CONTROLLER_BUTTON_BACK = 0 };
enum { SDL_CONTROLLER_BUTTON_DPAD_DOWN = 0 };
enum { SDL_CONTROLLER_BUTTON_DPAD_LEFT = 0 };
enum { SDL_CONTROLLER_BUTTON_DPAD_RIGHT = 0 };
enum { SDL_CONTROLLER_BUTTON_DPAD_UP = 0 };
enum { SDL_CONTROLLER_BUTTON_GUIDE = 0 };
enum { SDL_CONTROLLER_BUTTON_INVALID = 0 };
enum { SDL_CONTROLLER_BUTTON_LEFTSHOULDER = 0 };
enum { SDL_CONTROLLER_BUTTON_LEFTSTICK = 0 };
enum { SDL_CONTROLLER_BUTTON_MAX = 0 };
enum { SDL_CONTROLLER_BUTTON_MISC1 = 0 };
enum { SDL_CONTROLLER_BUTTON_PADDLE1 = 0 };
enum { SDL_CONTROLLER_BUTTON_PADDLE2 = 0 };
enum { SDL_CONTROLLER_BUTTON_PADDLE3 = 0 };
enum { SDL_CONTROLLER_BUTTON_PADDLE4 = 0 };
enum { SDL_CONTROLLER_BUTTON_RIGHTSHOULDER = 0 };
enum { SDL_CONTROLLER_BUTTON_RIGHTSTICK = 0 };
enum { SDL_CONTROLLER_BUTTON_START = 0 };
enum { SDL_CONTROLLER_BUTTON_TOUCHPAD = 0 };
enum { SDL_CONTROLLER_BUTTON_X = 0 };
enum { SDL_CONTROLLER_BUTTON_Y = 0 };
enum { SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_LEFT = 0 };
enum { SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_PAIR = 0 };
enum { SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_JOYCON_RIGHT = 0 };
enum { SDL_CONTROLLER_TYPE_NINTENDO_SWITCH_PRO = 0 };
enum { SDL_CONTROLLER_TYPE_PS3 = 0 };
enum { SDL_CONTROLLER_TYPE_PS4 = 0 };
enum { SDL_CONTROLLER_TYPE_PS5 = 0 };
enum { SDL_CONTROLLER_TYPE_UNKNOWN = 0 };
enum { SDL_CONTROLLER_TYPE_VIRTUAL = 0 };
enum { SDL_CONTROLLER_TYPE_XBOX360 = 0 };
enum { SDL_CONTROLLER_TYPE_XBOXONE = 0 };
enum { SDL_GameController = 0 };
enum { SDL_GameControllerAddMapping = 0 };
enum { SDL_GameControllerAddMappingsFromFile = 0 };
enum { SDL_GameControllerAddMappingsFromRW = 0 };
enum { SDL_GameControllerAxis = 0 };
enum { SDL_GameControllerBindType = 0 };
enum { SDL_GameControllerButton = 0 };
enum { SDL_GameControllerClose = 0 };
enum { SDL_GameControllerFromInstanceID = 0 };
enum { SDL_GameControllerFromPlayerIndex = 0 };
enum { SDL_GameControllerGetAppleSFSymbolsNameForAxis = 0 };
enum { SDL_GameControllerGetAppleSFSymbolsNameForButton = 0 };
enum { SDL_GameControllerGetAttached = 0 };
enum { SDL_GameControllerGetAxis = 0 };
enum { SDL_GameControllerGetAxisFromString = 0 };
enum { SDL_GameControllerGetButton = 0 };
enum { SDL_GameControllerGetButtonFromString = 0 };
enum { SDL_GameControllerGetFirmwareVersion = 0 };
enum { SDL_GameControllerGetJoystick = 0 };
enum { SDL_GameControllerGetNumTouchpadFingers = 0 };
enum { SDL_GameControllerGetNumTouchpads = 0 };
enum { SDL_GameControllerGetPlayerIndex = 0 };
enum { SDL_GameControllerGetProduct = 0 };
enum { SDL_GameControllerGetProductVersion = 0 };
enum { SDL_GameControllerGetSensorData = 0 };
enum { SDL_GameControllerGetSensorDataRate = 0 };
enum { SDL_GameControllerGetSerial = 0 };
enum { SDL_GameControllerGetSteamHandle = 0 };
enum { SDL_GameControllerGetStringForAxis = 0 };
enum { SDL_GameControllerGetStringForButton = 0 };
enum { SDL_GameControllerGetTouchpadFinger = 0 };
enum { SDL_GameControllerGetType = 0 };
enum { SDL_GameControllerGetVendor = 0 };
enum { SDL_GameControllerHasAxis = 0 };
enum { SDL_GameControllerHasButton = 0 };
enum { SDL_GameControllerHasSensor = 0 };
enum { SDL_GameControllerIsSensorEnabled = 0 };
enum { SDL_GameControllerMapping = 0 };
enum { SDL_GameControllerMappingForDeviceIndex = 0 };
enum { SDL_GameControllerMappingForGUID = 0 };
enum { SDL_GameControllerName = 0 };
enum { SDL_GameControllerOpen = 0 };
enum { SDL_GameControllerPath = 0 };
enum { SDL_GameControllerRumble = 0 };
enum { SDL_GameControllerRumbleTriggers = 0 };
enum { SDL_GameControllerSendEffect = 0 };
enum { SDL_GameControllerSetLED = 0 };
enum { SDL_GameControllerSetPlayerIndex = 0 };
enum { SDL_GameControllerSetSensorEnabled = 0 };
enum { SDL_GameControllerType = 0 };
enum { SDL_GameControllerUpdate = 0 };
enum { SDL_INIT_GAMECONTROLLER = 0 };
enum { SDL_IsGameController = 0 };
enum { SDL_GUIDFromString = 0 };
enum { SDL_HapticClose = 0 };
enum { SDL_HapticDestroyEffect = 0 };
enum { SDL_HapticGetEffectStatus = 0 };
enum { SDL_HapticNewEffect = 0 };
enum { SDL_HapticNumAxes = 0 };
enum { SDL_HapticNumEffects = 0 };
enum { SDL_HapticNumEffectsPlaying = 0 };
enum { SDL_HapticOpen = 0 };
enum { SDL_HapticOpenFromJoystick = 0 };
enum { SDL_HapticOpenFromMouse = 0 };
enum { SDL_HapticPause = 0 };
enum { SDL_HapticQuery = 0 };
enum { SDL_HapticRumbleInit = 0 };
enum { SDL_HapticRumblePlay = 0 };
enum { SDL_HapticRumbleStop = 0 };
enum { SDL_HapticRunEffect = 0 };
enum { SDL_HapticSetAutocenter = 0 };
enum { SDL_HapticSetGain = 0 };
enum { SDL_HapticStopAll = 0 };
enum { SDL_HapticStopEffect = 0 };
enum { SDL_HapticUnpause = 0 };
enum { SDL_HapticUpdateEffect = 0 };
enum { SDL_JoystickIsHaptic = 0 };
enum { SDL_MouseIsHaptic = 0 };
enum { SDL_DelHintCallback = 0 };
enum { SDL_HINT_ALLOW_TOPMOST = 0 };
enum { SDL_HINT_DIRECTINPUT_ENABLED = 0 };
enum { SDL_HINT_GDK_TEXTINPUT_DEFAULT = 0 };
enum { SDL_HINT_JOYSTICK_GAMECUBE_RUMBLE_BRAKE = 0 };
enum { SDL_HINT_JOYSTICK_HIDAPI_PS4_RUMBLE = 0 };
enum { SDL_HINT_JOYSTICK_HIDAPI_PS5_RUMBLE = 0 };
enum { SDL_HINT_LINUX_DIGITAL_HATS = 0 };
enum { SDL_HINT_LINUX_HAT_DEADZONES = 0 };
enum { SDL_HINT_LINUX_JOYSTICK_CLASSIC = 0 };
enum { SDL_HINT_LINUX_JOYSTICK_DEADZONES = 0 };
enum { SDL_JOYSTICK_TYPE_GAMECONTROLLER = 0 };
enum { SDL_JoystickAttachVirtualEx = 0 };
enum { SDL_JoystickClose = 0 };
enum { SDL_JoystickDetachVirtual = 0 };
enum { SDL_JoystickFromInstanceID = 0 };
enum { SDL_JoystickFromPlayerIndex = 0 };
enum { SDL_JoystickGUID = 0 };
enum { SDL_JoystickGetAttached = 0 };
enum { SDL_JoystickGetAxis = 0 };
enum { SDL_JoystickGetAxisInitialState = 0 };
enum { SDL_JoystickGetBall = 0 };
enum { SDL_JoystickGetButton = 0 };
enum { SDL_JoystickGetFirmwareVersion = 0 };
enum { SDL_JoystickGetGUID = 0 };
enum { SDL_JoystickGetGUIDFromString = 0 };
enum { SDL_JoystickGetHat = 0 };
enum { SDL_JoystickGetPlayerIndex = 0 };
enum { SDL_JoystickGetProduct = 0 };
enum { SDL_JoystickGetProductVersion = 0 };
enum { SDL_JoystickGetSerial = 0 };
enum { SDL_JoystickGetType = 0 };
enum { SDL_JoystickGetVendor = 0 };
enum { SDL_JoystickInstanceID = 0 };
enum { SDL_JoystickIsVirtual = 0 };
enum { SDL_JoystickName = 0 };
enum { SDL_JoystickNumAxes = 0 };
enum { SDL_JoystickNumBalls = 0 };
enum { SDL_JoystickNumButtons = 0 };
enum { SDL_JoystickNumHats = 0 };
enum { SDL_JoystickOpen = 0 };
enum { SDL_JoystickPath = 0 };
enum { SDL_JoystickRumble = 0 };
enum { SDL_JoystickRumbleTriggers = 0 };
enum { SDL_JoystickSendEffect = 0 };
enum { SDL_JoystickSetLED = 0 };
enum { SDL_JoystickSetPlayerIndex = 0 };
enum { SDL_JoystickSetVirtualAxis = 0 };
enum { SDL_JoystickSetVirtualButton = 0 };
enum { SDL_JoystickSetVirtualHat = 0 };
enum { SDL_JoystickUpdate = 0 };
enum { SDL_IsScreenKeyboardShown = 0 };
enum { SDL_IsTextInputActive = 0 };
enum { KMOD_ALT = 0 };
enum { KMOD_CAPS = 0 };
enum { KMOD_CTRL = 0 };
enum { KMOD_GUI = 0 };
enum { KMOD_LALT = 0 };
enum { KMOD_LCTRL = 0 };
enum { KMOD_LGUI = 0 };
enum { KMOD_LSHIFT = 0 };
enum { KMOD_MODE = 0 };
enum { KMOD_NONE = 0 };
enum { KMOD_NUM = 0 };
enum { KMOD_RALT = 0 };
enum { KMOD_RCTRL = 0 };
enum { KMOD_RGUI = 0 };
enum { KMOD_RSHIFT = 0 };
enum { KMOD_SCROLL = 0 };
enum { KMOD_SHIFT = 0 };
enum { SDLK_AUDIOFASTFORWARD = 0 };
enum { SDLK_AUDIOMUTE = 0 };
enum { SDLK_AUDIONEXT = 0 };
enum { SDLK_AUDIOPLAY = 0 };
enum { SDLK_AUDIOPREV = 0 };
enum { SDLK_AUDIOREWIND = 0 };
enum { SDLK_AUDIOSTOP = 0 };
enum { SDLK_BACKQUOTE = 0 };
enum { SDLK_EJECT = 0 };
enum { SDLK_MEDIASELECT = 0 };
enum { SDLK_QUOTE = 0 };
enum { SDLK_QUOTEDBL = 0 };
enum { SDLK_a = 0 };
enum { SDLK_b = 0 };
enum { SDLK_c = 0 };
enum { SDLK_d = 0 };
enum { SDLK_e = 0 };
enum { SDLK_f = 0 };
enum { SDLK_g = 0 };
enum { SDLK_h = 0 };
enum { SDLK_i = 0 };
enum { SDLK_j = 0 };
enum { SDLK_k = 0 };
enum { SDLK_l = 0 };
enum { SDLK_m = 0 };
enum { SDLK_n = 0 };
enum { SDLK_o = 0 };
enum { SDLK_p = 0 };
enum { SDLK_q = 0 };
enum { SDLK_r = 0 };
enum { SDLK_s = 0 };
enum { SDLK_t = 0 };
enum { SDLK_u = 0 };
enum { SDLK_v = 0 };
enum { SDLK_w = 0 };
enum { SDLK_x = 0 };
enum { SDLK_y = 0 };
enum { SDLK_z = 0 };
enum { SDL_LogGetOutputFunction = 0 };
enum { SDL_LogGetPriority = 0 };
enum { SDL_LogResetPriorities = 0 };
enum { SDL_LogSetAllPriority = 0 };
enum { SDL_LogSetOutputFunction = 0 };
enum { SDL_LogSetPriority = 0 };
enum { SDL_NUM_LOG_PRIORITIES = 0 };
enum { SDL_MESSAGEBOX_COLOR_MAX = 0 };
enum { SDL_BUTTON = 0 };
enum { SDL_FreeCursor = 0 };
enum { SDL_NUM_SYSTEM_CURSORS = 0 };
enum { SDL_SYSTEM_CURSOR_ARROW = 0 };
enum { SDL_SYSTEM_CURSOR_HAND = 0 };
enum { SDL_SYSTEM_CURSOR_IBEAM = 0 };
enum { SDL_SYSTEM_CURSOR_NO = 0 };
enum { SDL_SYSTEM_CURSOR_SIZEALL = 0 };
enum { SDL_SYSTEM_CURSOR_SIZENESW = 0 };
enum { SDL_SYSTEM_CURSOR_SIZENS = 0 };
enum { SDL_SYSTEM_CURSOR_SIZENWSE = 0 };
enum { SDL_SYSTEM_CURSOR_SIZEWE = 0 };
enum { SDL_SYSTEM_CURSOR_WAITARROW = 0 };
enum { SDL_SYSTEM_CURSOR_WINDOW_BOTTOM = 0 };
enum { SDL_SYSTEM_CURSOR_WINDOW_BOTTOMLEFT = 0 };
enum { SDL_SYSTEM_CURSOR_WINDOW_BOTTOMRIGHT = 0 };
enum { SDL_SYSTEM_CURSOR_WINDOW_LEFT = 0 };
enum { SDL_SYSTEM_CURSOR_WINDOW_RIGHT = 0 };
enum { SDL_SYSTEM_CURSOR_WINDOW_TOP = 0 };
enum { SDL_SYSTEM_CURSOR_WINDOW_TOPLEFT = 0 };
enum { SDL_SYSTEM_CURSOR_WINDOW_TOPRIGHT = 0 };
enum { SDL_CondBroadcast = 0 };
enum { SDL_CondSignal = 0 };
enum { SDL_CondWait = 0 };
enum { SDL_CondWaitTimeout = 0 };
enum { SDL_CreateCond = 0 };
enum { SDL_DestroyCond = 0 };
enum { SDL_SemPost = 0 };
enum { SDL_SemTryWait = 0 };
enum { SDL_SemValue = 0 };
enum { SDL_SemWait = 0 };
enum { SDL_SemWaitTimeout = 0 };
enum { SDL_cond = 0 };
enum { SDL_mutex = 0 };
enum { SDL_sem = 0 };
enum { SDL_AllocFormat = 0 };
enum { SDL_AllocPalette = 0 };
enum { SDL_Colour = 0 };
enum { SDL_FreePalette = 0 };
enum { SDL_MasksToPixelFormatEnum = 0 };
enum { SDL_PIXELFORMAT_BGR444 = 0 };
enum { SDL_PIXELFORMAT_BGR555 = 0 };
enum { SDL_PIXELFORMAT_BGR888 = 0 };
enum { SDL_PIXELFORMAT_RGB444 = 0 };
enum { SDL_PIXELFORMAT_RGB555 = 0 };
enum { SDL_PIXELFORMAT_RGB888 = 0 };
enum { SDL_PixelFormatEnumToMasks = 0 };
enum { SDL_EncloseFPoints = 0 };
enum { SDL_EnclosePoints = 0 };
enum { SDL_FRectEmpty = 0 };
enum { SDL_FRectEquals = 0 };
enum { SDL_FRectEqualsEpsilon = 0 };
enum { SDL_HasIntersection = 0 };
enum { SDL_HasIntersectionF = 0 };
enum { SDL_IntersectFRect = 0 };
enum { SDL_IntersectFRectAndLine = 0 };
enum { SDL_IntersectRect = 0 };
enum { SDL_IntersectRectAndLine = 0 };
enum { SDL_PointInFRect = 0 };
enum { SDL_RectEquals = 0 };
enum { SDL_UnionFRect = 0 };
enum { SDL_UnionRect = 0 };
enum { SDL_GetRendererOutputSize = 0 };
enum { SDL_RenderCopy = 0 };
enum { SDL_RenderCopyEx = 0 };
enum { SDL_RenderCopyExF = 0 };
enum { SDL_RenderCopyF = 0 };
enum { SDL_RenderDrawLine = 0 };
enum { SDL_RenderDrawLineF = 0 };
enum { SDL_RenderDrawLines = 0 };
enum { SDL_RenderDrawLinesF = 0 };
enum { SDL_RenderDrawPoint = 0 };
enum { SDL_RenderDrawPointF = 0 };
enum { SDL_RenderDrawPoints = 0 };
enum { SDL_RenderDrawPointsF = 0 };
enum { SDL_RenderDrawRect = 0 };
enum { SDL_RenderDrawRectF = 0 };
enum { SDL_RenderDrawRects = 0 };
enum { SDL_RenderDrawRectsF = 0 };
enum { SDL_RenderFillRectF = 0 };
enum { SDL_RenderFillRectsF = 0 };
enum { SDL_RendererFlip = 0 };
enum { SDL_RenderFlush = 0 };
enum { SDL_RenderGetClipRect = 0 };
enum { SDL_RenderGetLogicalSize = 0 };
enum { SDL_RenderGetMetalCommandEncoder = 0 };
enum { SDL_RenderGetMetalLayer = 0 };
enum { SDL_RenderGetScale = 0 };
enum { SDL_RenderGetViewport = 0 };
enum { SDL_RenderGetWindow = 0 };
enum { SDL_RenderIsClipEnabled = 0 };
enum { SDL_RenderLogicalToWindow = 0 };
enum { SDL_RenderSetClipRect = 0 };
enum { SDL_RenderSetLogicalSize = 0 };
enum { SDL_RenderSetScale = 0 };
enum { SDL_RenderSetVSync = 0 };
enum { SDL_RenderSetViewport = 0 };
enum { SDL_RenderWindowToLogical = 0 };
enum { SDL_ScaleModeLinear = 0 };
enum { SDL_ScaleModeNearest = 0 };
enum { RW_SEEK_CUR = 0 };
enum { RW_SEEK_END = 0 };
enum { RW_SEEK_SET = 0 };
enum { SDL_RWFromConstMem = 0 };
enum { SDL_RWFromFile = 0 };
enum { SDL_RWFromMem = 0 };
enum { SDL_RWclose = 0 };
enum { SDL_RWops = 0 };
enum { SDL_RWread = 0 };
enum { SDL_RWseek = 0 };
enum { SDL_RWsize = 0 };
enum { SDL_RWtell = 0 };
enum { SDL_RWwrite = 0 };
enum { SDL_ReadBE16 = 0 };
enum { SDL_ReadBE32 = 0 };
enum { SDL_ReadBE64 = 0 };
enum { SDL_ReadLE16 = 0 };
enum { SDL_ReadLE32 = 0 };
enum { SDL_ReadLE64 = 0 };
enum { SDL_WriteBE16 = 0 };
enum { SDL_WriteBE32 = 0 };
enum { SDL_WriteBE64 = 0 };
enum { SDL_WriteLE16 = 0 };
enum { SDL_WriteLE32 = 0 };
enum { SDL_WriteLE64 = 0 };
enum { SDL_NUM_SCANCODES = 0 };
enum { SDL_SCANCODE_AUDIOFASTFORWARD = 0 };
enum { SDL_SCANCODE_AUDIOMUTE = 0 };
enum { SDL_SCANCODE_AUDIONEXT = 0 };
enum { SDL_SCANCODE_AUDIOPLAY = 0 };
enum { SDL_SCANCODE_AUDIOPREV = 0 };
enum { SDL_SCANCODE_AUDIOREWIND = 0 };
enum { SDL_SCANCODE_AUDIOSTOP = 0 };
enum { SDL_SCANCODE_EJECT = 0 };
enum { SDL_SCANCODE_MEDIASELECT = 0 };
enum { SDL_SensorClose = 0 };
enum { SDL_SensorFromInstanceID = 0 };
enum { SDL_SensorGetData = 0 };
enum { SDL_SensorGetInstanceID = 0 };
enum { SDL_SensorGetName = 0 };
enum { SDL_SensorGetNonPortableType = 0 };
enum { SDL_SensorGetType = 0 };
enum { SDL_SensorOpen = 0 };
enum { SDL_SensorUpdate = 0 };
enum { SDL_FALSE = 0 };
enum { SDL_TABLESIZE = 0 };
enum { SDL_TRUE = 0 };
enum { SDL_bool = 0 };
enum { SDL_size_add_overflow = 0 };
enum { SDL_size_mul_overflow = 0 };
enum { SDL_strtokr = 0 };
enum { SDL_BlitScaled = 0 };
enum { SDL_ConvertSurfaceFormat = 0 };
enum { SDL_FillRect = 0 };
enum { SDL_FillRects = 0 };
enum { SDL_FreeSurface = 0 };
enum { SDL_GetClipRect = 0 };
enum { SDL_GetColorKey = 0 };
enum { SDL_HasColorKey = 0 };
enum { SDL_HasSurfaceRLE = 0 };
enum { SDL_LoadBMP_RW = 0 };
enum { SDL_LowerBlit = 0 };
enum { SDL_LowerBlitScaled = 0 };
enum { SDL_PREALLOC = 0 };
enum { SDL_SIMD_ALIGNED = 0 };
enum { SDL_SaveBMP_RW = 0 };
enum { SDL_SetClipRect = 0 };
enum { SDL_SetColorKey = 0 };
enum { SDL_UpperBlit = 0 };
enum { SDL_UpperBlitScaled = 0 };
enum { SDL_AndroidBackButton = 0 };
enum { SDL_AndroidGetActivity = 0 };
enum { SDL_AndroidGetExternalStoragePath = 0 };
enum { SDL_AndroidGetExternalStorageState = 0 };
enum { SDL_AndroidGetInternalStoragePath = 0 };
enum { SDL_AndroidGetJNIEnv = 0 };
enum { SDL_AndroidRequestPermission = 0 };
enum { SDL_AndroidRequestPermissionCallback = 0 };
enum { SDL_AndroidSendMessage = 0 };
enum { SDL_AndroidShowToast = 0 };
enum { SDL_DXGIGetOutputInfo = 0 };
enum { SDL_Direct3D9GetAdapterIndex = 0 };
enum { SDL_GDKGetDefaultUser = 0 };
enum { SDL_GDKGetTaskQueue = 0 };
enum { SDL_LinuxSetThreadPriority = 0 };
enum { SDL_LinuxSetThreadPriorityAndPolicy = 0 };
enum { SDL_OnApplicationDidBecomeActive = 0 };
enum { SDL_OnApplicationWillResignActive = 0 };
enum { SDL_iOSSetAnimationCallback = 0 };
enum { SDL_iOSSetEventPump = 0 };
enum { SDL_iPhoneSetAnimationCallback = 0 };
enum { SDL_iPhoneSetEventPump = 0 };
enum { SDL_SetThreadPriority = 0 };
enum { SDL_TLSCleanup = 0 };
enum { SDL_TLSGet = 0 };
enum { SDL_TLSSet = 0 };
enum { SDL_threadID = 0 };
enum { SDL_GetTicks64 = 0 };
enum { SDL_COMPILEDVERSION = 0 };
enum { SDL_PATCHLEVEL = 0 };
enum { SDL_GL_DeleteContext = 0 };
enum { SDL_GLattr = 0 };
enum { SDL_GLcontextFlag = 0 };
enum { SDL_GLcontextReleaseFlag = 0 };
enum { SDL_GLprofile = 0 };
enum { SDL_GetClosestDisplayMode = 0 };
enum { SDL_GetDisplayOrientation = 0 };
enum { SDL_GetPointDisplayIndex = 0 };
enum { SDL_GetRectDisplayIndex = 0 };
enum { SDL_GetWindowDisplayIndex = 0 };
enum { SDL_GetWindowDisplayMode = 0 };
enum { SDL_HasWindowSurface = 0 };
enum { SDL_IsScreenSaverEnabled = 0 };
enum { SDL_SetWindowDisplayMode = 0 };
enum { SDL_WINDOW_ALLOW_HIGHDPI = 0 };
enum { SDL_WINDOW_INPUT_GRABBED = 0 };
enum { SDL_WINDOW_SKIP_TASKBAR = 0 };

/* these aren't being generated correctly so here they are: */
enum { SDL_WINDOWPOS_UNDEFINED = 0x1FFF0000u };
enum { SDL_WINDOWPOS_CENTERED = 0x2FFF0000u };
]]

-- functions

ffi.cdef[[
extern __attribute__ ((visibility("default"))) __attribute__((malloc)) void * SDL_malloc(size_t size);
extern __attribute__ ((visibility("default"))) __attribute__((malloc)) __attribute__((alloc_size(1, 2))) void * SDL_calloc(size_t nmemb, size_t size);
extern __attribute__ ((visibility("default"))) __attribute__((alloc_size(2))) void * SDL_realloc(void *mem, size_t size);
extern __attribute__ ((visibility("default"))) void SDL_free(void *mem);
extern __attribute__ ((visibility("default"))) void SDL_GetOriginalMemoryFunctions(SDL_malloc_func *malloc_func, SDL_calloc_func *calloc_func, SDL_realloc_func *realloc_func, SDL_free_func *free_func);
extern __attribute__ ((visibility("default"))) void SDL_GetMemoryFunctions(SDL_malloc_func *malloc_func, SDL_calloc_func *calloc_func, SDL_realloc_func *realloc_func, SDL_free_func *free_func);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetMemoryFunctions(SDL_malloc_func malloc_func, SDL_calloc_func calloc_func, SDL_realloc_func realloc_func, SDL_free_func free_func);
extern __attribute__ ((visibility("default"))) __attribute__((malloc)) void * SDL_aligned_alloc(size_t alignment, size_t size);
extern __attribute__ ((visibility("default"))) void SDL_aligned_free(void *mem);
extern __attribute__ ((visibility("default"))) int SDL_GetNumAllocations(void);
extern __attribute__ ((visibility("default"))) SDL_Environment * SDL_GetEnvironment(void);
extern __attribute__ ((visibility("default"))) SDL_Environment * SDL_CreateEnvironment(_Bool populated);
extern __attribute__ ((visibility("default"))) const char * SDL_GetEnvironmentVariable(SDL_Environment *env, const char *name);
extern __attribute__ ((visibility("default"))) char ** SDL_GetEnvironmentVariables(SDL_Environment *env);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetEnvironmentVariable(SDL_Environment *env, const char *name, const char *value, _Bool overwrite);
extern __attribute__ ((visibility("default"))) _Bool SDL_UnsetEnvironmentVariable(SDL_Environment *env, const char *name);
extern __attribute__ ((visibility("default"))) void SDL_DestroyEnvironment(SDL_Environment *env);
extern __attribute__ ((visibility("default"))) const char * SDL_getenv(const char *name);
extern __attribute__ ((visibility("default"))) const char * SDL_getenv_unsafe(const char *name);
extern __attribute__ ((visibility("default"))) int SDL_setenv_unsafe(const char *name, const char *value, int overwrite);
extern __attribute__ ((visibility("default"))) int SDL_unsetenv_unsafe(const char *name);
extern __attribute__ ((visibility("default"))) void SDL_qsort(void *base, size_t nmemb, size_t size, SDL_CompareCallback compare);
extern __attribute__ ((visibility("default"))) void * SDL_bsearch(const void *key, const void *base, size_t nmemb, size_t size, SDL_CompareCallback compare);
extern __attribute__ ((visibility("default"))) void SDL_qsort_r(void *base, size_t nmemb, size_t size, SDL_CompareCallback_r compare, void *userdata);
extern __attribute__ ((visibility("default"))) void * SDL_bsearch_r(const void *key, const void *base, size_t nmemb, size_t size, SDL_CompareCallback_r compare, void *userdata);
extern __attribute__ ((visibility("default"))) int SDL_abs(int x);
extern __attribute__ ((visibility("default"))) int SDL_isalpha(int x);
extern __attribute__ ((visibility("default"))) int SDL_isalnum(int x);
extern __attribute__ ((visibility("default"))) int SDL_isblank(int x);
extern __attribute__ ((visibility("default"))) int SDL_iscntrl(int x);
extern __attribute__ ((visibility("default"))) int SDL_isdigit(int x);
extern __attribute__ ((visibility("default"))) int SDL_isxdigit(int x);
extern __attribute__ ((visibility("default"))) int SDL_ispunct(int x);
extern __attribute__ ((visibility("default"))) int SDL_isspace(int x);
extern __attribute__ ((visibility("default"))) int SDL_isupper(int x);
extern __attribute__ ((visibility("default"))) int SDL_islower(int x);
extern __attribute__ ((visibility("default"))) int SDL_isprint(int x);
extern __attribute__ ((visibility("default"))) int SDL_isgraph(int x);
extern __attribute__ ((visibility("default"))) int SDL_toupper(int x);
extern __attribute__ ((visibility("default"))) int SDL_tolower(int x);
extern __attribute__ ((visibility("default"))) Uint16 SDL_crc16(Uint16 crc, const void *data, size_t len);
extern __attribute__ ((visibility("default"))) Uint32 SDL_crc32(Uint32 crc, const void *data, size_t len);
extern __attribute__ ((visibility("default"))) Uint32 SDL_murmur3_32(const void *data, size_t len, Uint32 seed);
extern __attribute__ ((visibility("default"))) void * SDL_memcpy( void *dst, const void *src, size_t len);
extern __attribute__ ((visibility("default"))) void * SDL_memmove( void *dst, const void *src, size_t len);
extern __attribute__ ((visibility("default"))) void * SDL_memset( void *dst, int c, size_t len);
extern __attribute__ ((visibility("default"))) void * SDL_memset4(void *dst, Uint32 val, size_t dwords);
extern __attribute__ ((visibility("default"))) int SDL_memcmp(const void *s1, const void *s2, size_t len);
extern __attribute__ ((visibility("default"))) size_t SDL_wcslen(const wchar_t *wstr);
extern __attribute__ ((visibility("default"))) size_t SDL_wcsnlen(const wchar_t *wstr, size_t maxlen);
extern __attribute__ ((visibility("default"))) size_t SDL_wcslcpy( wchar_t *dst, const wchar_t *src, size_t maxlen);
extern __attribute__ ((visibility("default"))) size_t SDL_wcslcat( wchar_t *dst, const wchar_t *src, size_t maxlen);
extern __attribute__ ((visibility("default"))) wchar_t * SDL_wcsdup(const wchar_t *wstr);
extern __attribute__ ((visibility("default"))) wchar_t * SDL_wcsstr(const wchar_t *haystack, const wchar_t *needle);
extern __attribute__ ((visibility("default"))) wchar_t * SDL_wcsnstr(const wchar_t *haystack, const wchar_t *needle, size_t maxlen);
extern __attribute__ ((visibility("default"))) int SDL_wcscmp(const wchar_t *str1, const wchar_t *str2);
extern __attribute__ ((visibility("default"))) int SDL_wcsncmp(const wchar_t *str1, const wchar_t *str2, size_t maxlen);
extern __attribute__ ((visibility("default"))) int SDL_wcscasecmp(const wchar_t *str1, const wchar_t *str2);
extern __attribute__ ((visibility("default"))) int SDL_wcsncasecmp(const wchar_t *str1, const wchar_t *str2, size_t maxlen);
extern __attribute__ ((visibility("default"))) long SDL_wcstol(const wchar_t *str, wchar_t **endp, int base);
extern __attribute__ ((visibility("default"))) size_t SDL_strlen(const char *str);
extern __attribute__ ((visibility("default"))) size_t SDL_strnlen(const char *str, size_t maxlen);
extern __attribute__ ((visibility("default"))) size_t SDL_strlcpy( char *dst, const char *src, size_t maxlen);
extern __attribute__ ((visibility("default"))) size_t SDL_utf8strlcpy( char *dst, const char *src, size_t dst_bytes);
extern __attribute__ ((visibility("default"))) size_t SDL_strlcat( char *dst, const char *src, size_t maxlen);
extern __attribute__ ((visibility("default"))) __attribute__((malloc)) char * SDL_strdup(const char *str);
extern __attribute__ ((visibility("default"))) __attribute__((malloc)) char * SDL_strndup(const char *str, size_t maxlen);
extern __attribute__ ((visibility("default"))) char * SDL_strrev(char *str);
extern __attribute__ ((visibility("default"))) char * SDL_strupr(char *str);
extern __attribute__ ((visibility("default"))) char * SDL_strlwr(char *str);
extern __attribute__ ((visibility("default"))) char * SDL_strchr(const char *str, int c);
extern __attribute__ ((visibility("default"))) char * SDL_strrchr(const char *str, int c);
extern __attribute__ ((visibility("default"))) char * SDL_strstr(const char *haystack, const char *needle);
extern __attribute__ ((visibility("default"))) char * SDL_strnstr(const char *haystack, const char *needle, size_t maxlen);
extern __attribute__ ((visibility("default"))) char * SDL_strcasestr(const char *haystack, const char *needle);
extern __attribute__ ((visibility("default"))) char * SDL_strtok_r(char *str, const char *delim, char **saveptr);
extern __attribute__ ((visibility("default"))) size_t SDL_utf8strlen(const char *str);
extern __attribute__ ((visibility("default"))) size_t SDL_utf8strnlen(const char *str, size_t bytes);
extern __attribute__ ((visibility("default"))) char * SDL_itoa(int value, char *str, int radix);
extern __attribute__ ((visibility("default"))) char * SDL_uitoa(unsigned int value, char *str, int radix);
extern __attribute__ ((visibility("default"))) char * SDL_ltoa(long value, char *str, int radix);
extern __attribute__ ((visibility("default"))) char * SDL_ultoa(unsigned long value, char *str, int radix);
extern __attribute__ ((visibility("default"))) char * SDL_lltoa(long long value, char *str, int radix);
extern __attribute__ ((visibility("default"))) char * SDL_ulltoa(unsigned long long value, char *str, int radix);
extern __attribute__ ((visibility("default"))) int SDL_atoi(const char *str);
extern __attribute__ ((visibility("default"))) double SDL_atof(const char *str);
extern __attribute__ ((visibility("default"))) long SDL_strtol(const char *str, char **endp, int base);
extern __attribute__ ((visibility("default"))) unsigned long SDL_strtoul(const char *str, char **endp, int base);
extern __attribute__ ((visibility("default"))) long long SDL_strtoll(const char *str, char **endp, int base);
extern __attribute__ ((visibility("default"))) unsigned long long SDL_strtoull(const char *str, char **endp, int base);
extern __attribute__ ((visibility("default"))) double SDL_strtod(const char *str, char **endp);
extern __attribute__ ((visibility("default"))) int SDL_strcmp(const char *str1, const char *str2);
extern __attribute__ ((visibility("default"))) int SDL_strncmp(const char *str1, const char *str2, size_t maxlen);
extern __attribute__ ((visibility("default"))) int SDL_strcasecmp(const char *str1, const char *str2);
extern __attribute__ ((visibility("default"))) int SDL_strncasecmp(const char *str1, const char *str2, size_t maxlen);
extern __attribute__ ((visibility("default"))) char * SDL_strpbrk(const char *str, const char *breakset);
extern __attribute__ ((visibility("default"))) Uint32 SDL_StepUTF8(const char **pstr, size_t *pslen);
extern __attribute__ ((visibility("default"))) Uint32 SDL_StepBackUTF8(const char *start, const char **pstr);
extern __attribute__ ((visibility("default"))) char * SDL_UCS4ToUTF8(Uint32 codepoint, char *dst);
extern __attribute__ ((visibility("default"))) int SDL_sscanf(const char *text, const char *fmt, ...) __attribute__ (( format( __scanf__, 2, 2+1 )));
extern __attribute__ ((visibility("default"))) int SDL_vsscanf(const char *text, const char *fmt, va_list ap) __attribute__(( format( __scanf__, 2, 0 )));
extern __attribute__ ((visibility("default"))) int SDL_snprintf( char *text, size_t maxlen, const char *fmt, ...) __attribute__ (( format( __printf__, 3, 3+1 )));
extern __attribute__ ((visibility("default"))) int SDL_swprintf( wchar_t *text, size_t maxlen, const wchar_t *fmt, ...);
extern __attribute__ ((visibility("default"))) int SDL_vsnprintf( char *text, size_t maxlen, const char *fmt, va_list ap) __attribute__(( format( __printf__, 3, 0 )));
extern __attribute__ ((visibility("default"))) int SDL_vswprintf( wchar_t *text, size_t maxlen, const wchar_t *fmt, va_list ap);
extern __attribute__ ((visibility("default"))) int SDL_asprintf(char **strp, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2+1 )));
extern __attribute__ ((visibility("default"))) int SDL_vasprintf(char **strp, const char *fmt, va_list ap) __attribute__(( format( __printf__, 2, 0 )));
extern __attribute__ ((visibility("default"))) void SDL_srand(Uint64 seed);
extern __attribute__ ((visibility("default"))) Sint32 SDL_rand(Sint32 n);
extern __attribute__ ((visibility("default"))) float SDL_randf(void);
extern __attribute__ ((visibility("default"))) Uint32 SDL_rand_bits(void);
extern __attribute__ ((visibility("default"))) Sint32 SDL_rand_r(Uint64 *state, Sint32 n);
extern __attribute__ ((visibility("default"))) float SDL_randf_r(Uint64 *state);
extern __attribute__ ((visibility("default"))) Uint32 SDL_rand_bits_r(Uint64 *state);
extern __attribute__ ((visibility("default"))) double SDL_acos(double x);
extern __attribute__ ((visibility("default"))) float SDL_acosf(float x);
extern __attribute__ ((visibility("default"))) double SDL_asin(double x);
extern __attribute__ ((visibility("default"))) float SDL_asinf(float x);
extern __attribute__ ((visibility("default"))) double SDL_atan(double x);
extern __attribute__ ((visibility("default"))) float SDL_atanf(float x);
extern __attribute__ ((visibility("default"))) double SDL_atan2(double y, double x);
extern __attribute__ ((visibility("default"))) float SDL_atan2f(float y, float x);
extern __attribute__ ((visibility("default"))) double SDL_ceil(double x);
extern __attribute__ ((visibility("default"))) float SDL_ceilf(float x);
extern __attribute__ ((visibility("default"))) double SDL_copysign(double x, double y);
extern __attribute__ ((visibility("default"))) float SDL_copysignf(float x, float y);
extern __attribute__ ((visibility("default"))) double SDL_cos(double x);
extern __attribute__ ((visibility("default"))) float SDL_cosf(float x);
extern __attribute__ ((visibility("default"))) double SDL_exp(double x);
extern __attribute__ ((visibility("default"))) float SDL_expf(float x);
extern __attribute__ ((visibility("default"))) double SDL_fabs(double x);
extern __attribute__ ((visibility("default"))) float SDL_fabsf(float x);
extern __attribute__ ((visibility("default"))) double SDL_floor(double x);
extern __attribute__ ((visibility("default"))) float SDL_floorf(float x);
extern __attribute__ ((visibility("default"))) double SDL_trunc(double x);
extern __attribute__ ((visibility("default"))) float SDL_truncf(float x);
extern __attribute__ ((visibility("default"))) double SDL_fmod(double x, double y);
extern __attribute__ ((visibility("default"))) float SDL_fmodf(float x, float y);
extern __attribute__ ((visibility("default"))) int SDL_isinf(double x);
extern __attribute__ ((visibility("default"))) int SDL_isinff(float x);
extern __attribute__ ((visibility("default"))) int SDL_isnan(double x);
extern __attribute__ ((visibility("default"))) int SDL_isnanf(float x);
extern __attribute__ ((visibility("default"))) double SDL_log(double x);
extern __attribute__ ((visibility("default"))) float SDL_logf(float x);
extern __attribute__ ((visibility("default"))) double SDL_log10(double x);
extern __attribute__ ((visibility("default"))) float SDL_log10f(float x);
extern __attribute__ ((visibility("default"))) double SDL_modf(double x, double *y);
extern __attribute__ ((visibility("default"))) float SDL_modff(float x, float *y);
extern __attribute__ ((visibility("default"))) double SDL_pow(double x, double y);
extern __attribute__ ((visibility("default"))) float SDL_powf(float x, float y);
extern __attribute__ ((visibility("default"))) double SDL_round(double x);
extern __attribute__ ((visibility("default"))) float SDL_roundf(float x);
extern __attribute__ ((visibility("default"))) long SDL_lround(double x);
extern __attribute__ ((visibility("default"))) long SDL_lroundf(float x);
extern __attribute__ ((visibility("default"))) double SDL_scalbn(double x, int n);
extern __attribute__ ((visibility("default"))) float SDL_scalbnf(float x, int n);
extern __attribute__ ((visibility("default"))) double SDL_sin(double x);
extern __attribute__ ((visibility("default"))) float SDL_sinf(float x);
extern __attribute__ ((visibility("default"))) double SDL_sqrt(double x);
extern __attribute__ ((visibility("default"))) float SDL_sqrtf(float x);
extern __attribute__ ((visibility("default"))) double SDL_tan(double x);
extern __attribute__ ((visibility("default"))) float SDL_tanf(float x);
extern __attribute__ ((visibility("default"))) SDL_iconv_t SDL_iconv_open(const char *tocode, const char *fromcode);
extern __attribute__ ((visibility("default"))) int SDL_iconv_close(SDL_iconv_t cd);
extern __attribute__ ((visibility("default"))) size_t SDL_iconv(SDL_iconv_t cd, const char **inbuf, size_t *inbytesleft, char **outbuf, size_t *outbytesleft);
extern __attribute__ ((visibility("default"))) char * SDL_iconv_string(const char *tocode, const char *fromcode, const char *inbuf, size_t inbytesleft);
extern __attribute__ ((visibility("default"))) SDL_AssertState SDL_ReportAssertion(SDL_AssertData *data, const char *func, const char *file, int line);
extern __attribute__ ((visibility("default"))) void SDL_SetAssertionHandler( SDL_AssertionHandler handler, void *userdata);
extern __attribute__ ((visibility("default"))) SDL_AssertionHandler SDL_GetDefaultAssertionHandler(void);
extern __attribute__ ((visibility("default"))) SDL_AssertionHandler SDL_GetAssertionHandler(void **puserdata);
extern __attribute__ ((visibility("default"))) const SDL_AssertData * SDL_GetAssertionReport(void);
extern __attribute__ ((visibility("default"))) void SDL_ResetAssertionReport(void);
extern __attribute__ ((visibility("default"))) SDL_AsyncIO * SDL_AsyncIOFromFile(const char *file, const char *mode);
extern __attribute__ ((visibility("default"))) Sint64 SDL_GetAsyncIOSize(SDL_AsyncIO *asyncio);
extern __attribute__ ((visibility("default"))) _Bool SDL_ReadAsyncIO(SDL_AsyncIO *asyncio, void *ptr, Uint64 offset, Uint64 size, SDL_AsyncIOQueue *queue, void *userdata);
extern __attribute__ ((visibility("default"))) _Bool SDL_WriteAsyncIO(SDL_AsyncIO *asyncio, void *ptr, Uint64 offset, Uint64 size, SDL_AsyncIOQueue *queue, void *userdata);
extern __attribute__ ((visibility("default"))) _Bool SDL_CloseAsyncIO(SDL_AsyncIO *asyncio, _Bool flush, SDL_AsyncIOQueue *queue, void *userdata);
extern __attribute__ ((visibility("default"))) SDL_AsyncIOQueue * SDL_CreateAsyncIOQueue(void);
extern __attribute__ ((visibility("default"))) void SDL_DestroyAsyncIOQueue(SDL_AsyncIOQueue *queue);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetAsyncIOResult(SDL_AsyncIOQueue *queue, SDL_AsyncIOOutcome *outcome);
extern __attribute__ ((visibility("default"))) _Bool SDL_WaitAsyncIOResult(SDL_AsyncIOQueue *queue, SDL_AsyncIOOutcome *outcome, Sint32 timeoutMS);
extern __attribute__ ((visibility("default"))) void SDL_SignalAsyncIOQueue(SDL_AsyncIOQueue *queue);
extern __attribute__ ((visibility("default"))) _Bool SDL_LoadFileAsync(const char *file, SDL_AsyncIOQueue *queue, void *userdata);
extern __attribute__ ((visibility("default"))) _Bool SDL_TryLockSpinlock(SDL_SpinLock *lock);
extern __attribute__ ((visibility("default"))) void SDL_LockSpinlock(SDL_SpinLock *lock);
extern __attribute__ ((visibility("default"))) void SDL_UnlockSpinlock(SDL_SpinLock *lock);
extern __attribute__ ((visibility("default"))) void SDL_MemoryBarrierReleaseFunction(void);
extern __attribute__ ((visibility("default"))) void SDL_MemoryBarrierAcquireFunction(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_CompareAndSwapAtomicInt(SDL_AtomicInt *a, int oldval, int newval);
extern __attribute__ ((visibility("default"))) int SDL_SetAtomicInt(SDL_AtomicInt *a, int v);
extern __attribute__ ((visibility("default"))) int SDL_GetAtomicInt(SDL_AtomicInt *a);
extern __attribute__ ((visibility("default"))) int SDL_AddAtomicInt(SDL_AtomicInt *a, int v);
extern __attribute__ ((visibility("default"))) _Bool SDL_CompareAndSwapAtomicU32(SDL_AtomicU32 *a, Uint32 oldval, Uint32 newval);
extern __attribute__ ((visibility("default"))) Uint32 SDL_SetAtomicU32(SDL_AtomicU32 *a, Uint32 v);
extern __attribute__ ((visibility("default"))) Uint32 SDL_GetAtomicU32(SDL_AtomicU32 *a);
extern __attribute__ ((visibility("default"))) _Bool SDL_CompareAndSwapAtomicPointer(void **a, void *oldval, void *newval);
extern __attribute__ ((visibility("default"))) void * SDL_SetAtomicPointer(void **a, void *v);
extern __attribute__ ((visibility("default"))) void * SDL_GetAtomicPointer(void **a);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetError( const char *fmt, ...) __attribute__ (( format( __printf__, 1, 1+1 )));
extern __attribute__ ((visibility("default"))) _Bool SDL_SetErrorV( const char *fmt, va_list ap) __attribute__(( format( __printf__, 1, 0 )));
extern __attribute__ ((visibility("default"))) _Bool SDL_OutOfMemory(void);
extern __attribute__ ((visibility("default"))) const char * SDL_GetError(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_ClearError(void);
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetGlobalProperties(void);
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_CreateProperties(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_CopyProperties(SDL_PropertiesID src, SDL_PropertiesID dst);
extern __attribute__ ((visibility("default"))) _Bool SDL_LockProperties(SDL_PropertiesID props);
extern __attribute__ ((visibility("default"))) void SDL_UnlockProperties(SDL_PropertiesID props);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetPointerPropertyWithCleanup(SDL_PropertiesID props, const char *name, void *value, SDL_CleanupPropertyCallback cleanup, void *userdata);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetPointerProperty(SDL_PropertiesID props, const char *name, void *value);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetStringProperty(SDL_PropertiesID props, const char *name, const char *value);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetNumberProperty(SDL_PropertiesID props, const char *name, Sint64 value);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetFloatProperty(SDL_PropertiesID props, const char *name, float value);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetBooleanProperty(SDL_PropertiesID props, const char *name, _Bool value);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasProperty(SDL_PropertiesID props, const char *name);
extern __attribute__ ((visibility("default"))) SDL_PropertyType SDL_GetPropertyType(SDL_PropertiesID props, const char *name);
extern __attribute__ ((visibility("default"))) void * SDL_GetPointerProperty(SDL_PropertiesID props, const char *name, void *default_value);
extern __attribute__ ((visibility("default"))) const char * SDL_GetStringProperty(SDL_PropertiesID props, const char *name, const char *default_value);
extern __attribute__ ((visibility("default"))) Sint64 SDL_GetNumberProperty(SDL_PropertiesID props, const char *name, Sint64 default_value);
extern __attribute__ ((visibility("default"))) float SDL_GetFloatProperty(SDL_PropertiesID props, const char *name, float default_value);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetBooleanProperty(SDL_PropertiesID props, const char *name, _Bool default_value);
extern __attribute__ ((visibility("default"))) _Bool SDL_ClearProperty(SDL_PropertiesID props, const char *name);
extern __attribute__ ((visibility("default"))) _Bool SDL_EnumerateProperties(SDL_PropertiesID props, SDL_EnumeratePropertiesCallback callback, void *userdata);
extern __attribute__ ((visibility("default"))) void SDL_DestroyProperties(SDL_PropertiesID props);
extern __attribute__ ((visibility("default"))) SDL_Thread * SDL_CreateThreadRuntime(SDL_ThreadFunction fn, const char *name, void *data, SDL_FunctionPointer pfnBeginThread, SDL_FunctionPointer pfnEndThread);
extern __attribute__ ((visibility("default"))) SDL_Thread * SDL_CreateThreadWithPropertiesRuntime(SDL_PropertiesID props, SDL_FunctionPointer pfnBeginThread, SDL_FunctionPointer pfnEndThread);
extern __attribute__ ((visibility("default"))) const char * SDL_GetThreadName(SDL_Thread *thread);
extern __attribute__ ((visibility("default"))) SDL_ThreadID SDL_GetCurrentThreadID(void);
extern __attribute__ ((visibility("default"))) SDL_ThreadID SDL_GetThreadID(SDL_Thread *thread);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetCurrentThreadPriority(SDL_ThreadPriority priority);
extern __attribute__ ((visibility("default"))) void SDL_WaitThread(SDL_Thread *thread, int *status);
extern __attribute__ ((visibility("default"))) SDL_ThreadState SDL_GetThreadState(SDL_Thread *thread);
extern __attribute__ ((visibility("default"))) void SDL_DetachThread(SDL_Thread *thread);
extern __attribute__ ((visibility("default"))) void * SDL_GetTLS(SDL_TLSID *id);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetTLS(SDL_TLSID *id, const void *value, SDL_TLSDestructorCallback destructor);
extern __attribute__ ((visibility("default"))) void SDL_CleanupTLS(void);
extern __attribute__ ((visibility("default"))) SDL_Mutex * SDL_CreateMutex(void);
extern __attribute__ ((visibility("default"))) void SDL_LockMutex(SDL_Mutex *mutex);
extern __attribute__ ((visibility("default"))) _Bool SDL_TryLockMutex(SDL_Mutex *mutex);
extern __attribute__ ((visibility("default"))) void SDL_UnlockMutex(SDL_Mutex *mutex);
extern __attribute__ ((visibility("default"))) void SDL_DestroyMutex(SDL_Mutex *mutex);
extern __attribute__ ((visibility("default"))) SDL_RWLock * SDL_CreateRWLock(void);
extern __attribute__ ((visibility("default"))) void SDL_LockRWLockForReading(SDL_RWLock *rwlock);
extern __attribute__ ((visibility("default"))) void SDL_LockRWLockForWriting(SDL_RWLock *rwlock);
extern __attribute__ ((visibility("default"))) _Bool SDL_TryLockRWLockForReading(SDL_RWLock *rwlock);
extern __attribute__ ((visibility("default"))) _Bool SDL_TryLockRWLockForWriting(SDL_RWLock *rwlock);
extern __attribute__ ((visibility("default"))) void SDL_UnlockRWLock(SDL_RWLock *rwlock);
extern __attribute__ ((visibility("default"))) void SDL_DestroyRWLock(SDL_RWLock *rwlock);
extern __attribute__ ((visibility("default"))) SDL_Semaphore * SDL_CreateSemaphore(Uint32 initial_value);
extern __attribute__ ((visibility("default"))) void SDL_DestroySemaphore(SDL_Semaphore *sem);
extern __attribute__ ((visibility("default"))) void SDL_WaitSemaphore(SDL_Semaphore *sem);
extern __attribute__ ((visibility("default"))) _Bool SDL_TryWaitSemaphore(SDL_Semaphore *sem);
extern __attribute__ ((visibility("default"))) _Bool SDL_WaitSemaphoreTimeout(SDL_Semaphore *sem, Sint32 timeoutMS);
extern __attribute__ ((visibility("default"))) void SDL_SignalSemaphore(SDL_Semaphore *sem);
extern __attribute__ ((visibility("default"))) Uint32 SDL_GetSemaphoreValue(SDL_Semaphore *sem);
extern __attribute__ ((visibility("default"))) SDL_Condition * SDL_CreateCondition(void);
extern __attribute__ ((visibility("default"))) void SDL_DestroyCondition(SDL_Condition *cond);
extern __attribute__ ((visibility("default"))) void SDL_SignalCondition(SDL_Condition *cond);
extern __attribute__ ((visibility("default"))) void SDL_BroadcastCondition(SDL_Condition *cond);
extern __attribute__ ((visibility("default"))) void SDL_WaitCondition(SDL_Condition *cond, SDL_Mutex *mutex);
extern __attribute__ ((visibility("default"))) _Bool SDL_WaitConditionTimeout(SDL_Condition *cond, SDL_Mutex *mutex, Sint32 timeoutMS);
extern __attribute__ ((visibility("default"))) _Bool SDL_ShouldInit(SDL_InitState *state);
extern __attribute__ ((visibility("default"))) _Bool SDL_ShouldQuit(SDL_InitState *state);
extern __attribute__ ((visibility("default"))) void SDL_SetInitialized(SDL_InitState *state, _Bool initialized);
extern __attribute__ ((visibility("default"))) SDL_IOStream * SDL_IOFromFile(const char *file, const char *mode);
extern __attribute__ ((visibility("default"))) SDL_IOStream * SDL_IOFromMem(void *mem, size_t size);
extern __attribute__ ((visibility("default"))) SDL_IOStream * SDL_IOFromConstMem(const void *mem, size_t size);
extern __attribute__ ((visibility("default"))) SDL_IOStream * SDL_IOFromDynamicMem(void);
extern __attribute__ ((visibility("default"))) SDL_IOStream * SDL_OpenIO(const SDL_IOStreamInterface *iface, void *userdata);
extern __attribute__ ((visibility("default"))) _Bool SDL_CloseIO(SDL_IOStream *context);
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetIOProperties(SDL_IOStream *context);
extern __attribute__ ((visibility("default"))) SDL_IOStatus SDL_GetIOStatus(SDL_IOStream *context);
extern __attribute__ ((visibility("default"))) Sint64 SDL_GetIOSize(SDL_IOStream *context);
extern __attribute__ ((visibility("default"))) Sint64 SDL_SeekIO(SDL_IOStream *context, Sint64 offset, SDL_IOWhence whence);
extern __attribute__ ((visibility("default"))) Sint64 SDL_TellIO(SDL_IOStream *context);
extern __attribute__ ((visibility("default"))) size_t SDL_ReadIO(SDL_IOStream *context, void *ptr, size_t size);
extern __attribute__ ((visibility("default"))) size_t SDL_WriteIO(SDL_IOStream *context, const void *ptr, size_t size);
extern __attribute__ ((visibility("default"))) size_t SDL_IOprintf(SDL_IOStream *context, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2+1 )));
extern __attribute__ ((visibility("default"))) size_t SDL_IOvprintf(SDL_IOStream *context, const char *fmt, va_list ap) __attribute__(( format( __printf__, 2, 0 )));
extern __attribute__ ((visibility("default"))) _Bool SDL_FlushIO(SDL_IOStream *context);
extern __attribute__ ((visibility("default"))) void * SDL_LoadFile_IO(SDL_IOStream *src, size_t *datasize, _Bool closeio);
extern __attribute__ ((visibility("default"))) void * SDL_LoadFile(const char *file, size_t *datasize);
extern __attribute__ ((visibility("default"))) _Bool SDL_SaveFile_IO(SDL_IOStream *src, const void *data, size_t datasize, _Bool closeio);
extern __attribute__ ((visibility("default"))) _Bool SDL_SaveFile(const char *file, const void *data, size_t datasize);
extern __attribute__ ((visibility("default"))) _Bool SDL_ReadU8(SDL_IOStream *src, Uint8 *value);
extern __attribute__ ((visibility("default"))) _Bool SDL_ReadS8(SDL_IOStream *src, Sint8 *value);
extern __attribute__ ((visibility("default"))) _Bool SDL_ReadU16LE(SDL_IOStream *src, Uint16 *value);
extern __attribute__ ((visibility("default"))) _Bool SDL_ReadS16LE(SDL_IOStream *src, Sint16 *value);
extern __attribute__ ((visibility("default"))) _Bool SDL_ReadU16BE(SDL_IOStream *src, Uint16 *value);
extern __attribute__ ((visibility("default"))) _Bool SDL_ReadS16BE(SDL_IOStream *src, Sint16 *value);
extern __attribute__ ((visibility("default"))) _Bool SDL_ReadU32LE(SDL_IOStream *src, Uint32 *value);
extern __attribute__ ((visibility("default"))) _Bool SDL_ReadS32LE(SDL_IOStream *src, Sint32 *value);
extern __attribute__ ((visibility("default"))) _Bool SDL_ReadU32BE(SDL_IOStream *src, Uint32 *value);
extern __attribute__ ((visibility("default"))) _Bool SDL_ReadS32BE(SDL_IOStream *src, Sint32 *value);
extern __attribute__ ((visibility("default"))) _Bool SDL_ReadU64LE(SDL_IOStream *src, Uint64 *value);
extern __attribute__ ((visibility("default"))) _Bool SDL_ReadS64LE(SDL_IOStream *src, Sint64 *value);
extern __attribute__ ((visibility("default"))) _Bool SDL_ReadU64BE(SDL_IOStream *src, Uint64 *value);
extern __attribute__ ((visibility("default"))) _Bool SDL_ReadS64BE(SDL_IOStream *src, Sint64 *value);
extern __attribute__ ((visibility("default"))) _Bool SDL_WriteU8(SDL_IOStream *dst, Uint8 value);
extern __attribute__ ((visibility("default"))) _Bool SDL_WriteS8(SDL_IOStream *dst, Sint8 value);
extern __attribute__ ((visibility("default"))) _Bool SDL_WriteU16LE(SDL_IOStream *dst, Uint16 value);
extern __attribute__ ((visibility("default"))) _Bool SDL_WriteS16LE(SDL_IOStream *dst, Sint16 value);
extern __attribute__ ((visibility("default"))) _Bool SDL_WriteU16BE(SDL_IOStream *dst, Uint16 value);
extern __attribute__ ((visibility("default"))) _Bool SDL_WriteS16BE(SDL_IOStream *dst, Sint16 value);
extern __attribute__ ((visibility("default"))) _Bool SDL_WriteU32LE(SDL_IOStream *dst, Uint32 value);
extern __attribute__ ((visibility("default"))) _Bool SDL_WriteS32LE(SDL_IOStream *dst, Sint32 value);
extern __attribute__ ((visibility("default"))) _Bool SDL_WriteU32BE(SDL_IOStream *dst, Uint32 value);
extern __attribute__ ((visibility("default"))) _Bool SDL_WriteS32BE(SDL_IOStream *dst, Sint32 value);
extern __attribute__ ((visibility("default"))) _Bool SDL_WriteU64LE(SDL_IOStream *dst, Uint64 value);
extern __attribute__ ((visibility("default"))) _Bool SDL_WriteS64LE(SDL_IOStream *dst, Sint64 value);
extern __attribute__ ((visibility("default"))) _Bool SDL_WriteU64BE(SDL_IOStream *dst, Uint64 value);
extern __attribute__ ((visibility("default"))) _Bool SDL_WriteS64BE(SDL_IOStream *dst, Sint64 value);
extern __attribute__ ((visibility("default"))) int SDL_GetNumAudioDrivers(void);
extern __attribute__ ((visibility("default"))) const char * SDL_GetAudioDriver(int index);
extern __attribute__ ((visibility("default"))) const char * SDL_GetCurrentAudioDriver(void);
extern __attribute__ ((visibility("default"))) SDL_AudioDeviceID * SDL_GetAudioPlaybackDevices(int *count);
extern __attribute__ ((visibility("default"))) SDL_AudioDeviceID * SDL_GetAudioRecordingDevices(int *count);
extern __attribute__ ((visibility("default"))) const char * SDL_GetAudioDeviceName(SDL_AudioDeviceID devid);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetAudioDeviceFormat(SDL_AudioDeviceID devid, SDL_AudioSpec *spec, int *sample_frames);
extern __attribute__ ((visibility("default"))) int * SDL_GetAudioDeviceChannelMap(SDL_AudioDeviceID devid, int *count);
extern __attribute__ ((visibility("default"))) SDL_AudioDeviceID SDL_OpenAudioDevice(SDL_AudioDeviceID devid, const SDL_AudioSpec *spec);
extern __attribute__ ((visibility("default"))) _Bool SDL_IsAudioDevicePhysical(SDL_AudioDeviceID devid);
extern __attribute__ ((visibility("default"))) _Bool SDL_IsAudioDevicePlayback(SDL_AudioDeviceID devid);
extern __attribute__ ((visibility("default"))) _Bool SDL_PauseAudioDevice(SDL_AudioDeviceID devid);
extern __attribute__ ((visibility("default"))) _Bool SDL_ResumeAudioDevice(SDL_AudioDeviceID devid);
extern __attribute__ ((visibility("default"))) _Bool SDL_AudioDevicePaused(SDL_AudioDeviceID devid);
extern __attribute__ ((visibility("default"))) float SDL_GetAudioDeviceGain(SDL_AudioDeviceID devid);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetAudioDeviceGain(SDL_AudioDeviceID devid, float gain);
extern __attribute__ ((visibility("default"))) void SDL_CloseAudioDevice(SDL_AudioDeviceID devid);
extern __attribute__ ((visibility("default"))) _Bool SDL_BindAudioStreams(SDL_AudioDeviceID devid, SDL_AudioStream * const *streams, int num_streams);
extern __attribute__ ((visibility("default"))) _Bool SDL_BindAudioStream(SDL_AudioDeviceID devid, SDL_AudioStream *stream);
extern __attribute__ ((visibility("default"))) void SDL_UnbindAudioStreams(SDL_AudioStream * const *streams, int num_streams);
extern __attribute__ ((visibility("default"))) void SDL_UnbindAudioStream(SDL_AudioStream *stream);
extern __attribute__ ((visibility("default"))) SDL_AudioDeviceID SDL_GetAudioStreamDevice(SDL_AudioStream *stream);
extern __attribute__ ((visibility("default"))) SDL_AudioStream * SDL_CreateAudioStream(const SDL_AudioSpec *src_spec, const SDL_AudioSpec *dst_spec);
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetAudioStreamProperties(SDL_AudioStream *stream);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetAudioStreamFormat(SDL_AudioStream *stream, SDL_AudioSpec *src_spec, SDL_AudioSpec *dst_spec);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetAudioStreamFormat(SDL_AudioStream *stream, const SDL_AudioSpec *src_spec, const SDL_AudioSpec *dst_spec);
extern __attribute__ ((visibility("default"))) float SDL_GetAudioStreamFrequencyRatio(SDL_AudioStream *stream);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetAudioStreamFrequencyRatio(SDL_AudioStream *stream, float ratio);
extern __attribute__ ((visibility("default"))) float SDL_GetAudioStreamGain(SDL_AudioStream *stream);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetAudioStreamGain(SDL_AudioStream *stream, float gain);
extern __attribute__ ((visibility("default"))) int * SDL_GetAudioStreamInputChannelMap(SDL_AudioStream *stream, int *count);
extern __attribute__ ((visibility("default"))) int * SDL_GetAudioStreamOutputChannelMap(SDL_AudioStream *stream, int *count);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetAudioStreamInputChannelMap(SDL_AudioStream *stream, const int *chmap, int count);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetAudioStreamOutputChannelMap(SDL_AudioStream *stream, const int *chmap, int count);
extern __attribute__ ((visibility("default"))) _Bool SDL_PutAudioStreamData(SDL_AudioStream *stream, const void *buf, int len);
extern __attribute__ ((visibility("default"))) int SDL_GetAudioStreamData(SDL_AudioStream *stream, void *buf, int len);
extern __attribute__ ((visibility("default"))) int SDL_GetAudioStreamAvailable(SDL_AudioStream *stream);
extern __attribute__ ((visibility("default"))) int SDL_GetAudioStreamQueued(SDL_AudioStream *stream);
extern __attribute__ ((visibility("default"))) _Bool SDL_FlushAudioStream(SDL_AudioStream *stream);
extern __attribute__ ((visibility("default"))) _Bool SDL_ClearAudioStream(SDL_AudioStream *stream);
extern __attribute__ ((visibility("default"))) _Bool SDL_PauseAudioStreamDevice(SDL_AudioStream *stream);
extern __attribute__ ((visibility("default"))) _Bool SDL_ResumeAudioStreamDevice(SDL_AudioStream *stream);
extern __attribute__ ((visibility("default"))) _Bool SDL_AudioStreamDevicePaused(SDL_AudioStream *stream);
extern __attribute__ ((visibility("default"))) _Bool SDL_LockAudioStream(SDL_AudioStream *stream);
extern __attribute__ ((visibility("default"))) _Bool SDL_UnlockAudioStream(SDL_AudioStream *stream);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetAudioStreamGetCallback(SDL_AudioStream *stream, SDL_AudioStreamCallback callback, void *userdata);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetAudioStreamPutCallback(SDL_AudioStream *stream, SDL_AudioStreamCallback callback, void *userdata);
extern __attribute__ ((visibility("default"))) void SDL_DestroyAudioStream(SDL_AudioStream *stream);
extern __attribute__ ((visibility("default"))) SDL_AudioStream * SDL_OpenAudioDeviceStream(SDL_AudioDeviceID devid, const SDL_AudioSpec *spec, SDL_AudioStreamCallback callback, void *userdata);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetAudioPostmixCallback(SDL_AudioDeviceID devid, SDL_AudioPostmixCallback callback, void *userdata);
extern __attribute__ ((visibility("default"))) _Bool SDL_LoadWAV_IO(SDL_IOStream *src, _Bool closeio, SDL_AudioSpec *spec, Uint8 **audio_buf, Uint32 *audio_len);
extern __attribute__ ((visibility("default"))) _Bool SDL_LoadWAV(const char *path, SDL_AudioSpec *spec, Uint8 **audio_buf, Uint32 *audio_len);
extern __attribute__ ((visibility("default"))) _Bool SDL_MixAudio(Uint8 *dst, const Uint8 *src, SDL_AudioFormat format, Uint32 len, float volume);
extern __attribute__ ((visibility("default"))) _Bool SDL_ConvertAudioSamples(const SDL_AudioSpec *src_spec, const Uint8 *src_data, int src_len, const SDL_AudioSpec *dst_spec, Uint8 **dst_data, int *dst_len);
extern __attribute__ ((visibility("default"))) const char * SDL_GetAudioFormatName(SDL_AudioFormat format);
extern __attribute__ ((visibility("default"))) int SDL_GetSilenceValueForFormat(SDL_AudioFormat format);
extern __attribute__ ((visibility("default"))) SDL_BlendMode SDL_ComposeCustomBlendMode(SDL_BlendFactor srcColorFactor, SDL_BlendFactor dstColorFactor, SDL_BlendOperation colorOperation, SDL_BlendFactor srcAlphaFactor, SDL_BlendFactor dstAlphaFactor, SDL_BlendOperation alphaOperation);
extern __attribute__ ((visibility("default"))) const char * SDL_GetPixelFormatName(SDL_PixelFormat format);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetMasksForPixelFormat(SDL_PixelFormat format, int *bpp, Uint32 *Rmask, Uint32 *Gmask, Uint32 *Bmask, Uint32 *Amask);
extern __attribute__ ((visibility("default"))) SDL_PixelFormat SDL_GetPixelFormatForMasks(int bpp, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask);
extern __attribute__ ((visibility("default"))) const SDL_PixelFormatDetails * SDL_GetPixelFormatDetails(SDL_PixelFormat format);
extern __attribute__ ((visibility("default"))) SDL_Palette * SDL_CreatePalette(int ncolors);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetPaletteColors(SDL_Palette *palette, const SDL_Color *colors, int firstcolor, int ncolors);
extern __attribute__ ((visibility("default"))) void SDL_DestroyPalette(SDL_Palette *palette);
extern __attribute__ ((visibility("default"))) Uint32 SDL_MapRGB(const SDL_PixelFormatDetails *format, const SDL_Palette *palette, Uint8 r, Uint8 g, Uint8 b);
extern __attribute__ ((visibility("default"))) Uint32 SDL_MapRGBA(const SDL_PixelFormatDetails *format, const SDL_Palette *palette, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
extern __attribute__ ((visibility("default"))) void SDL_GetRGB(Uint32 pixel, const SDL_PixelFormatDetails *format, const SDL_Palette *palette, Uint8 *r, Uint8 *g, Uint8 *b);
extern __attribute__ ((visibility("default"))) void SDL_GetRGBA(Uint32 pixel, const SDL_PixelFormatDetails *format, const SDL_Palette *palette, Uint8 *r, Uint8 *g, Uint8 *b, Uint8 *a);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasRectIntersection(const SDL_Rect *A, const SDL_Rect *B);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetRectIntersection(const SDL_Rect *A, const SDL_Rect *B, SDL_Rect *result);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetRectUnion(const SDL_Rect *A, const SDL_Rect *B, SDL_Rect *result);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetRectEnclosingPoints(const SDL_Point *points, int count, const SDL_Rect *clip, SDL_Rect *result);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetRectAndLineIntersection(const SDL_Rect *rect, int *X1, int *Y1, int *X2, int *Y2);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasRectIntersectionFloat(const SDL_FRect *A, const SDL_FRect *B);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetRectIntersectionFloat(const SDL_FRect *A, const SDL_FRect *B, SDL_FRect *result);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetRectUnionFloat(const SDL_FRect *A, const SDL_FRect *B, SDL_FRect *result);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetRectEnclosingPointsFloat(const SDL_FPoint *points, int count, const SDL_FRect *clip, SDL_FRect *result);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetRectAndLineIntersectionFloat(const SDL_FRect *rect, float *X1, float *Y1, float *X2, float *Y2);
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_CreateSurface(int width, int height, SDL_PixelFormat format);
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_CreateSurfaceFrom(int width, int height, SDL_PixelFormat format, void *pixels, int pitch);
extern __attribute__ ((visibility("default"))) void SDL_DestroySurface(SDL_Surface *surface);
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetSurfaceProperties(SDL_Surface *surface);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetSurfaceColorspace(SDL_Surface *surface, SDL_Colorspace colorspace);
extern __attribute__ ((visibility("default"))) SDL_Colorspace SDL_GetSurfaceColorspace(SDL_Surface *surface);
extern __attribute__ ((visibility("default"))) SDL_Palette * SDL_CreateSurfacePalette(SDL_Surface *surface);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetSurfacePalette(SDL_Surface *surface, SDL_Palette *palette);
extern __attribute__ ((visibility("default"))) SDL_Palette * SDL_GetSurfacePalette(SDL_Surface *surface);
extern __attribute__ ((visibility("default"))) _Bool SDL_AddSurfaceAlternateImage(SDL_Surface *surface, SDL_Surface *image);
extern __attribute__ ((visibility("default"))) _Bool SDL_SurfaceHasAlternateImages(SDL_Surface *surface);
extern __attribute__ ((visibility("default"))) SDL_Surface ** SDL_GetSurfaceImages(SDL_Surface *surface, int *count);
extern __attribute__ ((visibility("default"))) void SDL_RemoveSurfaceAlternateImages(SDL_Surface *surface);
extern __attribute__ ((visibility("default"))) _Bool SDL_LockSurface(SDL_Surface *surface);
extern __attribute__ ((visibility("default"))) void SDL_UnlockSurface(SDL_Surface *surface);
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_LoadBMP_IO(SDL_IOStream *src, _Bool closeio);
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_LoadBMP(const char *file);
extern __attribute__ ((visibility("default"))) _Bool SDL_SaveBMP_IO(SDL_Surface *surface, SDL_IOStream *dst, _Bool closeio);
extern __attribute__ ((visibility("default"))) _Bool SDL_SaveBMP(SDL_Surface *surface, const char *file);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetSurfaceRLE(SDL_Surface *surface, _Bool enabled);
extern __attribute__ ((visibility("default"))) _Bool SDL_SurfaceHasRLE(SDL_Surface *surface);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetSurfaceColorKey(SDL_Surface *surface, _Bool enabled, Uint32 key);
extern __attribute__ ((visibility("default"))) _Bool SDL_SurfaceHasColorKey(SDL_Surface *surface);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetSurfaceColorKey(SDL_Surface *surface, Uint32 *key);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetSurfaceColorMod(SDL_Surface *surface, Uint8 r, Uint8 g, Uint8 b);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetSurfaceColorMod(SDL_Surface *surface, Uint8 *r, Uint8 *g, Uint8 *b);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetSurfaceAlphaMod(SDL_Surface *surface, Uint8 alpha);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetSurfaceAlphaMod(SDL_Surface *surface, Uint8 *alpha);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetSurfaceBlendMode(SDL_Surface *surface, SDL_BlendMode blendMode);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetSurfaceBlendMode(SDL_Surface *surface, SDL_BlendMode *blendMode);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetSurfaceClipRect(SDL_Surface *surface, const SDL_Rect *rect);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetSurfaceClipRect(SDL_Surface *surface, SDL_Rect *rect);
extern __attribute__ ((visibility("default"))) _Bool SDL_FlipSurface(SDL_Surface *surface, SDL_FlipMode flip);
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_DuplicateSurface(SDL_Surface *surface);
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_ScaleSurface(SDL_Surface *surface, int width, int height, SDL_ScaleMode scaleMode);
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_ConvertSurface(SDL_Surface *surface, SDL_PixelFormat format);
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_ConvertSurfaceAndColorspace(SDL_Surface *surface, SDL_PixelFormat format, SDL_Palette *palette, SDL_Colorspace colorspace, SDL_PropertiesID props);
extern __attribute__ ((visibility("default"))) _Bool SDL_ConvertPixels(int width, int height, SDL_PixelFormat src_format, const void *src, int src_pitch, SDL_PixelFormat dst_format, void *dst, int dst_pitch);
extern __attribute__ ((visibility("default"))) _Bool SDL_ConvertPixelsAndColorspace(int width, int height, SDL_PixelFormat src_format, SDL_Colorspace src_colorspace, SDL_PropertiesID src_properties, const void *src, int src_pitch, SDL_PixelFormat dst_format, SDL_Colorspace dst_colorspace, SDL_PropertiesID dst_properties, void *dst, int dst_pitch);
extern __attribute__ ((visibility("default"))) _Bool SDL_PremultiplyAlpha(int width, int height, SDL_PixelFormat src_format, const void *src, int src_pitch, SDL_PixelFormat dst_format, void *dst, int dst_pitch, _Bool linear);
extern __attribute__ ((visibility("default"))) _Bool SDL_PremultiplySurfaceAlpha(SDL_Surface *surface, _Bool linear);
extern __attribute__ ((visibility("default"))) _Bool SDL_ClearSurface(SDL_Surface *surface, float r, float g, float b, float a);
extern __attribute__ ((visibility("default"))) _Bool SDL_FillSurfaceRect(SDL_Surface *dst, const SDL_Rect *rect, Uint32 color);
extern __attribute__ ((visibility("default"))) _Bool SDL_FillSurfaceRects(SDL_Surface *dst, const SDL_Rect *rects, int count, Uint32 color);
extern __attribute__ ((visibility("default"))) _Bool SDL_BlitSurface(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect);
extern __attribute__ ((visibility("default"))) _Bool SDL_BlitSurfaceUnchecked(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect);
extern __attribute__ ((visibility("default"))) _Bool SDL_BlitSurfaceScaled(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect, SDL_ScaleMode scaleMode);
extern __attribute__ ((visibility("default"))) _Bool SDL_BlitSurfaceUncheckedScaled(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect, SDL_ScaleMode scaleMode);
extern __attribute__ ((visibility("default"))) _Bool SDL_StretchSurface(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect, SDL_ScaleMode scaleMode);
extern __attribute__ ((visibility("default"))) _Bool SDL_BlitSurfaceTiled(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect);
extern __attribute__ ((visibility("default"))) _Bool SDL_BlitSurfaceTiledWithScale(SDL_Surface *src, const SDL_Rect *srcrect, float scale, SDL_ScaleMode scaleMode, SDL_Surface *dst, const SDL_Rect *dstrect);
extern __attribute__ ((visibility("default"))) _Bool SDL_BlitSurface9Grid(SDL_Surface *src, const SDL_Rect *srcrect, int left_width, int right_width, int top_height, int bottom_height, float scale, SDL_ScaleMode scaleMode, SDL_Surface *dst, const SDL_Rect *dstrect);
extern __attribute__ ((visibility("default"))) Uint32 SDL_MapSurfaceRGB(SDL_Surface *surface, Uint8 r, Uint8 g, Uint8 b);
extern __attribute__ ((visibility("default"))) Uint32 SDL_MapSurfaceRGBA(SDL_Surface *surface, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
extern __attribute__ ((visibility("default"))) _Bool SDL_ReadSurfacePixel(SDL_Surface *surface, int x, int y, Uint8 *r, Uint8 *g, Uint8 *b, Uint8 *a);
extern __attribute__ ((visibility("default"))) _Bool SDL_ReadSurfacePixelFloat(SDL_Surface *surface, int x, int y, float *r, float *g, float *b, float *a);
extern __attribute__ ((visibility("default"))) _Bool SDL_WriteSurfacePixel(SDL_Surface *surface, int x, int y, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
extern __attribute__ ((visibility("default"))) _Bool SDL_WriteSurfacePixelFloat(SDL_Surface *surface, int x, int y, float r, float g, float b, float a);
extern __attribute__ ((visibility("default"))) int SDL_GetNumCameraDrivers(void);
extern __attribute__ ((visibility("default"))) const char * SDL_GetCameraDriver(int index);
extern __attribute__ ((visibility("default"))) const char * SDL_GetCurrentCameraDriver(void);
extern __attribute__ ((visibility("default"))) SDL_CameraID * SDL_GetCameras(int *count);
extern __attribute__ ((visibility("default"))) SDL_CameraSpec ** SDL_GetCameraSupportedFormats(SDL_CameraID instance_id, int *count);
extern __attribute__ ((visibility("default"))) const char * SDL_GetCameraName(SDL_CameraID instance_id);
extern __attribute__ ((visibility("default"))) SDL_CameraPosition SDL_GetCameraPosition(SDL_CameraID instance_id);
extern __attribute__ ((visibility("default"))) SDL_Camera * SDL_OpenCamera(SDL_CameraID instance_id, const SDL_CameraSpec *spec);
extern __attribute__ ((visibility("default"))) int SDL_GetCameraPermissionState(SDL_Camera *camera);
extern __attribute__ ((visibility("default"))) SDL_CameraID SDL_GetCameraID(SDL_Camera *camera);
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetCameraProperties(SDL_Camera *camera);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetCameraFormat(SDL_Camera *camera, SDL_CameraSpec *spec);
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_AcquireCameraFrame(SDL_Camera *camera, Uint64 *timestampNS);
extern __attribute__ ((visibility("default"))) void SDL_ReleaseCameraFrame(SDL_Camera *camera, SDL_Surface *frame);
extern __attribute__ ((visibility("default"))) void SDL_CloseCamera(SDL_Camera *camera);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetClipboardText(const char *text);
extern __attribute__ ((visibility("default"))) char * SDL_GetClipboardText(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasClipboardText(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetPrimarySelectionText(const char *text);
extern __attribute__ ((visibility("default"))) char * SDL_GetPrimarySelectionText(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasPrimarySelectionText(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetClipboardData(SDL_ClipboardDataCallback callback, SDL_ClipboardCleanupCallback cleanup, void *userdata, const char **mime_types, size_t num_mime_types);
extern __attribute__ ((visibility("default"))) _Bool SDL_ClearClipboardData(void);
extern __attribute__ ((visibility("default"))) void * SDL_GetClipboardData(const char *mime_type, size_t *size);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasClipboardData(const char *mime_type);
extern __attribute__ ((visibility("default"))) char ** SDL_GetClipboardMimeTypes(size_t *num_mime_types);
extern __attribute__ ((visibility("default"))) int SDL_GetNumLogicalCPUCores(void);
extern __attribute__ ((visibility("default"))) int SDL_GetCPUCacheLineSize(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasAltiVec(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasMMX(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasSSE(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasSSE2(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasSSE3(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasSSE41(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasSSE42(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasAVX(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasAVX2(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasAVX512F(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasARMSIMD(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasNEON(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasLSX(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasLASX(void);
extern __attribute__ ((visibility("default"))) int SDL_GetSystemRAM(void);
extern __attribute__ ((visibility("default"))) size_t SDL_GetSIMDAlignment(void);
extern __attribute__ ((visibility("default"))) int SDL_GetNumVideoDrivers(void);
extern __attribute__ ((visibility("default"))) const char * SDL_GetVideoDriver(int index);
extern __attribute__ ((visibility("default"))) const char * SDL_GetCurrentVideoDriver(void);
extern __attribute__ ((visibility("default"))) SDL_SystemTheme SDL_GetSystemTheme(void);
extern __attribute__ ((visibility("default"))) SDL_DisplayID * SDL_GetDisplays(int *count);
extern __attribute__ ((visibility("default"))) SDL_DisplayID SDL_GetPrimaryDisplay(void);
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetDisplayProperties(SDL_DisplayID displayID);
extern __attribute__ ((visibility("default"))) const char * SDL_GetDisplayName(SDL_DisplayID displayID);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetDisplayBounds(SDL_DisplayID displayID, SDL_Rect *rect);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetDisplayUsableBounds(SDL_DisplayID displayID, SDL_Rect *rect);
extern __attribute__ ((visibility("default"))) SDL_DisplayOrientation SDL_GetNaturalDisplayOrientation(SDL_DisplayID displayID);
extern __attribute__ ((visibility("default"))) SDL_DisplayOrientation SDL_GetCurrentDisplayOrientation(SDL_DisplayID displayID);
extern __attribute__ ((visibility("default"))) float SDL_GetDisplayContentScale(SDL_DisplayID displayID);
extern __attribute__ ((visibility("default"))) SDL_DisplayMode ** SDL_GetFullscreenDisplayModes(SDL_DisplayID displayID, int *count);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetClosestFullscreenDisplayMode(SDL_DisplayID displayID, int w, int h, float refresh_rate, _Bool include_high_density_modes, SDL_DisplayMode *closest);
extern __attribute__ ((visibility("default"))) const SDL_DisplayMode * SDL_GetDesktopDisplayMode(SDL_DisplayID displayID);
extern __attribute__ ((visibility("default"))) const SDL_DisplayMode * SDL_GetCurrentDisplayMode(SDL_DisplayID displayID);
extern __attribute__ ((visibility("default"))) SDL_DisplayID SDL_GetDisplayForPoint(const SDL_Point *point);
extern __attribute__ ((visibility("default"))) SDL_DisplayID SDL_GetDisplayForRect(const SDL_Rect *rect);
extern __attribute__ ((visibility("default"))) SDL_DisplayID SDL_GetDisplayForWindow(SDL_Window *window);
extern __attribute__ ((visibility("default"))) float SDL_GetWindowPixelDensity(SDL_Window *window);
extern __attribute__ ((visibility("default"))) float SDL_GetWindowDisplayScale(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowFullscreenMode(SDL_Window *window, const SDL_DisplayMode *mode);
extern __attribute__ ((visibility("default"))) const SDL_DisplayMode * SDL_GetWindowFullscreenMode(SDL_Window *window);
extern __attribute__ ((visibility("default"))) void * SDL_GetWindowICCProfile(SDL_Window *window, size_t *size);
extern __attribute__ ((visibility("default"))) SDL_PixelFormat SDL_GetWindowPixelFormat(SDL_Window *window);
extern __attribute__ ((visibility("default"))) SDL_Window ** SDL_GetWindows(int *count);
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_CreateWindow(const char *title, int w, int h, SDL_WindowFlags flags);
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_CreatePopupWindow(SDL_Window *parent, int offset_x, int offset_y, int w, int h, SDL_WindowFlags flags);
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_CreateWindowWithProperties(SDL_PropertiesID props);
extern __attribute__ ((visibility("default"))) SDL_WindowID SDL_GetWindowID(SDL_Window *window);
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_GetWindowFromID(SDL_WindowID id);
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_GetWindowParent(SDL_Window *window);
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetWindowProperties(SDL_Window *window);
extern __attribute__ ((visibility("default"))) SDL_WindowFlags SDL_GetWindowFlags(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowTitle(SDL_Window *window, const char *title);
extern __attribute__ ((visibility("default"))) const char * SDL_GetWindowTitle(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowIcon(SDL_Window *window, SDL_Surface *icon);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowPosition(SDL_Window *window, int x, int y);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetWindowPosition(SDL_Window *window, int *x, int *y);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowSize(SDL_Window *window, int w, int h);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetWindowSize(SDL_Window *window, int *w, int *h);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetWindowSafeArea(SDL_Window *window, SDL_Rect *rect);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowAspectRatio(SDL_Window *window, float min_aspect, float max_aspect);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetWindowAspectRatio(SDL_Window *window, float *min_aspect, float *max_aspect);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetWindowBordersSize(SDL_Window *window, int *top, int *left, int *bottom, int *right);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetWindowSizeInPixels(SDL_Window *window, int *w, int *h);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowMinimumSize(SDL_Window *window, int min_w, int min_h);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetWindowMinimumSize(SDL_Window *window, int *w, int *h);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowMaximumSize(SDL_Window *window, int max_w, int max_h);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetWindowMaximumSize(SDL_Window *window, int *w, int *h);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowBordered(SDL_Window *window, _Bool bordered);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowResizable(SDL_Window *window, _Bool resizable);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowAlwaysOnTop(SDL_Window *window, _Bool on_top);
extern __attribute__ ((visibility("default"))) _Bool SDL_ShowWindow(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_HideWindow(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_RaiseWindow(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_MaximizeWindow(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_MinimizeWindow(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_RestoreWindow(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowFullscreen(SDL_Window *window, _Bool fullscreen);
extern __attribute__ ((visibility("default"))) _Bool SDL_SyncWindow(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_WindowHasSurface(SDL_Window *window);
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_GetWindowSurface(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowSurfaceVSync(SDL_Window *window, int vsync);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetWindowSurfaceVSync(SDL_Window *window, int *vsync);
extern __attribute__ ((visibility("default"))) _Bool SDL_UpdateWindowSurface(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_UpdateWindowSurfaceRects(SDL_Window *window, const SDL_Rect *rects, int numrects);
extern __attribute__ ((visibility("default"))) _Bool SDL_DestroyWindowSurface(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowKeyboardGrab(SDL_Window *window, _Bool grabbed);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowMouseGrab(SDL_Window *window, _Bool grabbed);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetWindowKeyboardGrab(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetWindowMouseGrab(SDL_Window *window);
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_GetGrabbedWindow(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowMouseRect(SDL_Window *window, const SDL_Rect *rect);
extern __attribute__ ((visibility("default"))) const SDL_Rect * SDL_GetWindowMouseRect(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowOpacity(SDL_Window *window, float opacity);
extern __attribute__ ((visibility("default"))) float SDL_GetWindowOpacity(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowParent(SDL_Window *window, SDL_Window *parent);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowModal(SDL_Window *window, _Bool modal);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowFocusable(SDL_Window *window, _Bool focusable);
extern __attribute__ ((visibility("default"))) _Bool SDL_ShowWindowSystemMenu(SDL_Window *window, int x, int y);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowHitTest(SDL_Window *window, SDL_HitTest callback, void *callback_data);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowShape(SDL_Window *window, SDL_Surface *shape);
extern __attribute__ ((visibility("default"))) _Bool SDL_FlashWindow(SDL_Window *window, SDL_FlashOperation operation);
extern __attribute__ ((visibility("default"))) void SDL_DestroyWindow(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_ScreenSaverEnabled(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_EnableScreenSaver(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_DisableScreenSaver(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_GL_LoadLibrary(const char *path);
extern __attribute__ ((visibility("default"))) SDL_FunctionPointer SDL_GL_GetProcAddress(const char *proc);
extern __attribute__ ((visibility("default"))) SDL_FunctionPointer SDL_EGL_GetProcAddress(const char *proc);
extern __attribute__ ((visibility("default"))) void SDL_GL_UnloadLibrary(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_GL_ExtensionSupported(const char *extension);
extern __attribute__ ((visibility("default"))) void SDL_GL_ResetAttributes(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_GL_SetAttribute(SDL_GLAttr attr, int value);
extern __attribute__ ((visibility("default"))) _Bool SDL_GL_GetAttribute(SDL_GLAttr attr, int *value);
extern __attribute__ ((visibility("default"))) SDL_GLContext SDL_GL_CreateContext(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_GL_MakeCurrent(SDL_Window *window, SDL_GLContext context);
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_GL_GetCurrentWindow(void);
extern __attribute__ ((visibility("default"))) SDL_GLContext SDL_GL_GetCurrentContext(void);
extern __attribute__ ((visibility("default"))) SDL_EGLDisplay SDL_EGL_GetCurrentDisplay(void);
extern __attribute__ ((visibility("default"))) SDL_EGLConfig SDL_EGL_GetCurrentConfig(void);
extern __attribute__ ((visibility("default"))) SDL_EGLSurface SDL_EGL_GetWindowSurface(SDL_Window *window);
extern __attribute__ ((visibility("default"))) void SDL_EGL_SetAttributeCallbacks(SDL_EGLAttribArrayCallback platformAttribCallback, SDL_EGLIntArrayCallback surfaceAttribCallback, SDL_EGLIntArrayCallback contextAttribCallback, void *userdata);
extern __attribute__ ((visibility("default"))) _Bool SDL_GL_SetSwapInterval(int interval);
extern __attribute__ ((visibility("default"))) _Bool SDL_GL_GetSwapInterval(int *interval);
extern __attribute__ ((visibility("default"))) _Bool SDL_GL_SwapWindow(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_GL_DestroyContext(SDL_GLContext context);
extern __attribute__ ((visibility("default"))) void SDL_ShowOpenFileDialog(SDL_DialogFileCallback callback, void *userdata, SDL_Window *window, const SDL_DialogFileFilter *filters, int nfilters, const char *default_location, _Bool allow_many);
extern __attribute__ ((visibility("default"))) void SDL_ShowSaveFileDialog(SDL_DialogFileCallback callback, void *userdata, SDL_Window *window, const SDL_DialogFileFilter *filters, int nfilters, const char *default_location);
extern __attribute__ ((visibility("default"))) void SDL_ShowOpenFolderDialog(SDL_DialogFileCallback callback, void *userdata, SDL_Window *window, const char *default_location, _Bool allow_many);
extern __attribute__ ((visibility("default"))) void SDL_ShowFileDialogWithProperties(SDL_FileDialogType type, SDL_DialogFileCallback callback, void *userdata, SDL_PropertiesID props);
extern __attribute__ ((visibility("default"))) void SDL_GUIDToString(SDL_GUID guid, char *pszGUID, int cbGUID);
extern __attribute__ ((visibility("default"))) SDL_GUID SDL_StringToGUID(const char *pchGUID);
extern __attribute__ ((visibility("default"))) SDL_PowerState SDL_GetPowerInfo(int *seconds, int *percent);
extern __attribute__ ((visibility("default"))) SDL_SensorID * SDL_GetSensors(int *count);
extern __attribute__ ((visibility("default"))) const char * SDL_GetSensorNameForID(SDL_SensorID instance_id);
extern __attribute__ ((visibility("default"))) SDL_SensorType SDL_GetSensorTypeForID(SDL_SensorID instance_id);
extern __attribute__ ((visibility("default"))) int SDL_GetSensorNonPortableTypeForID(SDL_SensorID instance_id);
extern __attribute__ ((visibility("default"))) SDL_Sensor * SDL_OpenSensor(SDL_SensorID instance_id);
extern __attribute__ ((visibility("default"))) SDL_Sensor * SDL_GetSensorFromID(SDL_SensorID instance_id);
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetSensorProperties(SDL_Sensor *sensor);
extern __attribute__ ((visibility("default"))) const char * SDL_GetSensorName(SDL_Sensor *sensor);
extern __attribute__ ((visibility("default"))) SDL_SensorType SDL_GetSensorType(SDL_Sensor *sensor);
extern __attribute__ ((visibility("default"))) int SDL_GetSensorNonPortableType(SDL_Sensor *sensor);
extern __attribute__ ((visibility("default"))) SDL_SensorID SDL_GetSensorID(SDL_Sensor *sensor);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetSensorData(SDL_Sensor *sensor, float *data, int num_values);
extern __attribute__ ((visibility("default"))) void SDL_CloseSensor(SDL_Sensor *sensor);
extern __attribute__ ((visibility("default"))) void SDL_UpdateSensors(void);
extern __attribute__ ((visibility("default"))) void SDL_LockJoysticks(void);
extern __attribute__ ((visibility("default"))) void SDL_UnlockJoysticks(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasJoystick(void);
extern __attribute__ ((visibility("default"))) SDL_JoystickID * SDL_GetJoysticks(int *count);
extern __attribute__ ((visibility("default"))) const char * SDL_GetJoystickNameForID(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) const char * SDL_GetJoystickPathForID(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) int SDL_GetJoystickPlayerIndexForID(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) SDL_GUID SDL_GetJoystickGUIDForID(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetJoystickVendorForID(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetJoystickProductForID(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetJoystickProductVersionForID(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) SDL_JoystickType SDL_GetJoystickTypeForID(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) SDL_Joystick * SDL_OpenJoystick(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) SDL_Joystick * SDL_GetJoystickFromID(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) SDL_Joystick * SDL_GetJoystickFromPlayerIndex(int player_index);
extern __attribute__ ((visibility("default"))) SDL_JoystickID SDL_AttachVirtualJoystick(const SDL_VirtualJoystickDesc *desc);
extern __attribute__ ((visibility("default"))) _Bool SDL_DetachVirtualJoystick(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) _Bool SDL_IsJoystickVirtual(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetJoystickVirtualAxis(SDL_Joystick *joystick, int axis, Sint16 value);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetJoystickVirtualBall(SDL_Joystick *joystick, int ball, Sint16 xrel, Sint16 yrel);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetJoystickVirtualButton(SDL_Joystick *joystick, int button, _Bool down);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetJoystickVirtualHat(SDL_Joystick *joystick, int hat, Uint8 value);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetJoystickVirtualTouchpad(SDL_Joystick *joystick, int touchpad, int finger, _Bool down, float x, float y, float pressure);
extern __attribute__ ((visibility("default"))) _Bool SDL_SendJoystickVirtualSensorData(SDL_Joystick *joystick, SDL_SensorType type, Uint64 sensor_timestamp, const float *data, int num_values);
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetJoystickProperties(SDL_Joystick *joystick);
extern __attribute__ ((visibility("default"))) const char * SDL_GetJoystickName(SDL_Joystick *joystick);
extern __attribute__ ((visibility("default"))) const char * SDL_GetJoystickPath(SDL_Joystick *joystick);
extern __attribute__ ((visibility("default"))) int SDL_GetJoystickPlayerIndex(SDL_Joystick *joystick);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetJoystickPlayerIndex(SDL_Joystick *joystick, int player_index);
extern __attribute__ ((visibility("default"))) SDL_GUID SDL_GetJoystickGUID(SDL_Joystick *joystick);
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetJoystickVendor(SDL_Joystick *joystick);
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetJoystickProduct(SDL_Joystick *joystick);
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetJoystickProductVersion(SDL_Joystick *joystick);
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetJoystickFirmwareVersion(SDL_Joystick *joystick);
extern __attribute__ ((visibility("default"))) const char * SDL_GetJoystickSerial(SDL_Joystick *joystick);
extern __attribute__ ((visibility("default"))) SDL_JoystickType SDL_GetJoystickType(SDL_Joystick *joystick);
extern __attribute__ ((visibility("default"))) void SDL_GetJoystickGUIDInfo(SDL_GUID guid, Uint16 *vendor, Uint16 *product, Uint16 *version, Uint16 *crc16);
extern __attribute__ ((visibility("default"))) _Bool SDL_JoystickConnected(SDL_Joystick *joystick);
extern __attribute__ ((visibility("default"))) SDL_JoystickID SDL_GetJoystickID(SDL_Joystick *joystick);
extern __attribute__ ((visibility("default"))) int SDL_GetNumJoystickAxes(SDL_Joystick *joystick);
extern __attribute__ ((visibility("default"))) int SDL_GetNumJoystickBalls(SDL_Joystick *joystick);
extern __attribute__ ((visibility("default"))) int SDL_GetNumJoystickHats(SDL_Joystick *joystick);
extern __attribute__ ((visibility("default"))) int SDL_GetNumJoystickButtons(SDL_Joystick *joystick);
extern __attribute__ ((visibility("default"))) void SDL_SetJoystickEventsEnabled(_Bool enabled);
extern __attribute__ ((visibility("default"))) _Bool SDL_JoystickEventsEnabled(void);
extern __attribute__ ((visibility("default"))) void SDL_UpdateJoysticks(void);
extern __attribute__ ((visibility("default"))) Sint16 SDL_GetJoystickAxis(SDL_Joystick *joystick, int axis);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetJoystickAxisInitialState(SDL_Joystick *joystick, int axis, Sint16 *state);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetJoystickBall(SDL_Joystick *joystick, int ball, int *dx, int *dy);
extern __attribute__ ((visibility("default"))) Uint8 SDL_GetJoystickHat(SDL_Joystick *joystick, int hat);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetJoystickButton(SDL_Joystick *joystick, int button);
extern __attribute__ ((visibility("default"))) _Bool SDL_RumbleJoystick(SDL_Joystick *joystick, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms);
extern __attribute__ ((visibility("default"))) _Bool SDL_RumbleJoystickTriggers(SDL_Joystick *joystick, Uint16 left_rumble, Uint16 right_rumble, Uint32 duration_ms);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetJoystickLED(SDL_Joystick *joystick, Uint8 red, Uint8 green, Uint8 blue);
extern __attribute__ ((visibility("default"))) _Bool SDL_SendJoystickEffect(SDL_Joystick *joystick, const void *data, int size);
extern __attribute__ ((visibility("default"))) void SDL_CloseJoystick(SDL_Joystick *joystick);
extern __attribute__ ((visibility("default"))) SDL_JoystickConnectionState SDL_GetJoystickConnectionState(SDL_Joystick *joystick);
extern __attribute__ ((visibility("default"))) SDL_PowerState SDL_GetJoystickPowerInfo(SDL_Joystick *joystick, int *percent);
extern __attribute__ ((visibility("default"))) int SDL_AddGamepadMapping(const char *mapping);
extern __attribute__ ((visibility("default"))) int SDL_AddGamepadMappingsFromIO(SDL_IOStream *src, _Bool closeio);
extern __attribute__ ((visibility("default"))) int SDL_AddGamepadMappingsFromFile(const char *file);
extern __attribute__ ((visibility("default"))) _Bool SDL_ReloadGamepadMappings(void);
extern __attribute__ ((visibility("default"))) char ** SDL_GetGamepadMappings(int *count);
extern __attribute__ ((visibility("default"))) char * SDL_GetGamepadMappingForGUID(SDL_GUID guid);
extern __attribute__ ((visibility("default"))) char * SDL_GetGamepadMapping(SDL_Gamepad *gamepad);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetGamepadMapping(SDL_JoystickID instance_id, const char *mapping);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasGamepad(void);
extern __attribute__ ((visibility("default"))) SDL_JoystickID * SDL_GetGamepads(int *count);
extern __attribute__ ((visibility("default"))) _Bool SDL_IsGamepad(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) const char * SDL_GetGamepadNameForID(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) const char * SDL_GetGamepadPathForID(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) int SDL_GetGamepadPlayerIndexForID(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) SDL_GUID SDL_GetGamepadGUIDForID(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetGamepadVendorForID(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetGamepadProductForID(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetGamepadProductVersionForID(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) SDL_GamepadType SDL_GetGamepadTypeForID(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) SDL_GamepadType SDL_GetRealGamepadTypeForID(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) char * SDL_GetGamepadMappingForID(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) SDL_Gamepad * SDL_OpenGamepad(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) SDL_Gamepad * SDL_GetGamepadFromID(SDL_JoystickID instance_id);
extern __attribute__ ((visibility("default"))) SDL_Gamepad * SDL_GetGamepadFromPlayerIndex(int player_index);
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetGamepadProperties(SDL_Gamepad *gamepad);
extern __attribute__ ((visibility("default"))) SDL_JoystickID SDL_GetGamepadID(SDL_Gamepad *gamepad);
extern __attribute__ ((visibility("default"))) const char * SDL_GetGamepadName(SDL_Gamepad *gamepad);
extern __attribute__ ((visibility("default"))) const char * SDL_GetGamepadPath(SDL_Gamepad *gamepad);
extern __attribute__ ((visibility("default"))) SDL_GamepadType SDL_GetGamepadType(SDL_Gamepad *gamepad);
extern __attribute__ ((visibility("default"))) SDL_GamepadType SDL_GetRealGamepadType(SDL_Gamepad *gamepad);
extern __attribute__ ((visibility("default"))) int SDL_GetGamepadPlayerIndex(SDL_Gamepad *gamepad);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetGamepadPlayerIndex(SDL_Gamepad *gamepad, int player_index);
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetGamepadVendor(SDL_Gamepad *gamepad);
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetGamepadProduct(SDL_Gamepad *gamepad);
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetGamepadProductVersion(SDL_Gamepad *gamepad);
extern __attribute__ ((visibility("default"))) Uint16 SDL_GetGamepadFirmwareVersion(SDL_Gamepad *gamepad);
extern __attribute__ ((visibility("default"))) const char * SDL_GetGamepadSerial(SDL_Gamepad *gamepad);
extern __attribute__ ((visibility("default"))) Uint64 SDL_GetGamepadSteamHandle(SDL_Gamepad *gamepad);
extern __attribute__ ((visibility("default"))) SDL_JoystickConnectionState SDL_GetGamepadConnectionState(SDL_Gamepad *gamepad);
extern __attribute__ ((visibility("default"))) SDL_PowerState SDL_GetGamepadPowerInfo(SDL_Gamepad *gamepad, int *percent);
extern __attribute__ ((visibility("default"))) _Bool SDL_GamepadConnected(SDL_Gamepad *gamepad);
extern __attribute__ ((visibility("default"))) SDL_Joystick * SDL_GetGamepadJoystick(SDL_Gamepad *gamepad);
extern __attribute__ ((visibility("default"))) void SDL_SetGamepadEventsEnabled(_Bool enabled);
extern __attribute__ ((visibility("default"))) _Bool SDL_GamepadEventsEnabled(void);
extern __attribute__ ((visibility("default"))) SDL_GamepadBinding ** SDL_GetGamepadBindings(SDL_Gamepad *gamepad, int *count);
extern __attribute__ ((visibility("default"))) void SDL_UpdateGamepads(void);
extern __attribute__ ((visibility("default"))) SDL_GamepadType SDL_GetGamepadTypeFromString(const char *str);
extern __attribute__ ((visibility("default"))) const char * SDL_GetGamepadStringForType(SDL_GamepadType type);
extern __attribute__ ((visibility("default"))) SDL_GamepadAxis SDL_GetGamepadAxisFromString(const char *str);
extern __attribute__ ((visibility("default"))) const char * SDL_GetGamepadStringForAxis(SDL_GamepadAxis axis);
extern __attribute__ ((visibility("default"))) _Bool SDL_GamepadHasAxis(SDL_Gamepad *gamepad, SDL_GamepadAxis axis);
extern __attribute__ ((visibility("default"))) Sint16 SDL_GetGamepadAxis(SDL_Gamepad *gamepad, SDL_GamepadAxis axis);
extern __attribute__ ((visibility("default"))) SDL_GamepadButton SDL_GetGamepadButtonFromString(const char *str);
extern __attribute__ ((visibility("default"))) const char * SDL_GetGamepadStringForButton(SDL_GamepadButton button);
extern __attribute__ ((visibility("default"))) _Bool SDL_GamepadHasButton(SDL_Gamepad *gamepad, SDL_GamepadButton button);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetGamepadButton(SDL_Gamepad *gamepad, SDL_GamepadButton button);
extern __attribute__ ((visibility("default"))) SDL_GamepadButtonLabel SDL_GetGamepadButtonLabelForType(SDL_GamepadType type, SDL_GamepadButton button);
extern __attribute__ ((visibility("default"))) SDL_GamepadButtonLabel SDL_GetGamepadButtonLabel(SDL_Gamepad *gamepad, SDL_GamepadButton button);
extern __attribute__ ((visibility("default"))) int SDL_GetNumGamepadTouchpads(SDL_Gamepad *gamepad);
extern __attribute__ ((visibility("default"))) int SDL_GetNumGamepadTouchpadFingers(SDL_Gamepad *gamepad, int touchpad);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetGamepadTouchpadFinger(SDL_Gamepad *gamepad, int touchpad, int finger, _Bool *down, float *x, float *y, float *pressure);
extern __attribute__ ((visibility("default"))) _Bool SDL_GamepadHasSensor(SDL_Gamepad *gamepad, SDL_SensorType type);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetGamepadSensorEnabled(SDL_Gamepad *gamepad, SDL_SensorType type, _Bool enabled);
extern __attribute__ ((visibility("default"))) _Bool SDL_GamepadSensorEnabled(SDL_Gamepad *gamepad, SDL_SensorType type);
extern __attribute__ ((visibility("default"))) float SDL_GetGamepadSensorDataRate(SDL_Gamepad *gamepad, SDL_SensorType type);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetGamepadSensorData(SDL_Gamepad *gamepad, SDL_SensorType type, float *data, int num_values);
extern __attribute__ ((visibility("default"))) _Bool SDL_RumbleGamepad(SDL_Gamepad *gamepad, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms);
extern __attribute__ ((visibility("default"))) _Bool SDL_RumbleGamepadTriggers(SDL_Gamepad *gamepad, Uint16 left_rumble, Uint16 right_rumble, Uint32 duration_ms);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetGamepadLED(SDL_Gamepad *gamepad, Uint8 red, Uint8 green, Uint8 blue);
extern __attribute__ ((visibility("default"))) _Bool SDL_SendGamepadEffect(SDL_Gamepad *gamepad, const void *data, int size);
extern __attribute__ ((visibility("default"))) void SDL_CloseGamepad(SDL_Gamepad *gamepad);
extern __attribute__ ((visibility("default"))) const char * SDL_GetGamepadAppleSFSymbolsNameForButton(SDL_Gamepad *gamepad, SDL_GamepadButton button);
extern __attribute__ ((visibility("default"))) const char * SDL_GetGamepadAppleSFSymbolsNameForAxis(SDL_Gamepad *gamepad, SDL_GamepadAxis axis);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasKeyboard(void);
extern __attribute__ ((visibility("default"))) SDL_KeyboardID * SDL_GetKeyboards(int *count);
extern __attribute__ ((visibility("default"))) const char * SDL_GetKeyboardNameForID(SDL_KeyboardID instance_id);
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_GetKeyboardFocus(void);
extern __attribute__ ((visibility("default"))) const _Bool * SDL_GetKeyboardState(int *numkeys);
extern __attribute__ ((visibility("default"))) void SDL_ResetKeyboard(void);
extern __attribute__ ((visibility("default"))) SDL_Keymod SDL_GetModState(void);
extern __attribute__ ((visibility("default"))) void SDL_SetModState(SDL_Keymod modstate);
extern __attribute__ ((visibility("default"))) SDL_Keycode SDL_GetKeyFromScancode(SDL_Scancode scancode, SDL_Keymod modstate, _Bool key_event);
extern __attribute__ ((visibility("default"))) SDL_Scancode SDL_GetScancodeFromKey(SDL_Keycode key, SDL_Keymod *modstate);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetScancodeName(SDL_Scancode scancode, const char *name);
extern __attribute__ ((visibility("default"))) const char * SDL_GetScancodeName(SDL_Scancode scancode);
extern __attribute__ ((visibility("default"))) SDL_Scancode SDL_GetScancodeFromName(const char *name);
extern __attribute__ ((visibility("default"))) const char * SDL_GetKeyName(SDL_Keycode key);
extern __attribute__ ((visibility("default"))) SDL_Keycode SDL_GetKeyFromName(const char *name);
extern __attribute__ ((visibility("default"))) _Bool SDL_StartTextInput(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_StartTextInputWithProperties(SDL_Window *window, SDL_PropertiesID props);
extern __attribute__ ((visibility("default"))) _Bool SDL_TextInputActive(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_StopTextInput(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_ClearComposition(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetTextInputArea(SDL_Window *window, const SDL_Rect *rect, int cursor);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetTextInputArea(SDL_Window *window, SDL_Rect *rect, int *cursor);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasScreenKeyboardSupport(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_ScreenKeyboardShown(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasMouse(void);
extern __attribute__ ((visibility("default"))) SDL_MouseID * SDL_GetMice(int *count);
extern __attribute__ ((visibility("default"))) const char * SDL_GetMouseNameForID(SDL_MouseID instance_id);
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_GetMouseFocus(void);
extern __attribute__ ((visibility("default"))) SDL_MouseButtonFlags SDL_GetMouseState(float *x, float *y);
extern __attribute__ ((visibility("default"))) SDL_MouseButtonFlags SDL_GetGlobalMouseState(float *x, float *y);
extern __attribute__ ((visibility("default"))) SDL_MouseButtonFlags SDL_GetRelativeMouseState(float *x, float *y);
extern __attribute__ ((visibility("default"))) void SDL_WarpMouseInWindow(SDL_Window *window, float x, float y);
extern __attribute__ ((visibility("default"))) _Bool SDL_WarpMouseGlobal(float x, float y);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetWindowRelativeMouseMode(SDL_Window *window, _Bool enabled);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetWindowRelativeMouseMode(SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_CaptureMouse(_Bool enabled);
extern __attribute__ ((visibility("default"))) SDL_Cursor * SDL_CreateCursor(const Uint8 *data, const Uint8 *mask, int w, int h, int hot_x, int hot_y);
extern __attribute__ ((visibility("default"))) SDL_Cursor * SDL_CreateColorCursor(SDL_Surface *surface, int hot_x, int hot_y);
extern __attribute__ ((visibility("default"))) SDL_Cursor * SDL_CreateSystemCursor(SDL_SystemCursor id);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetCursor(SDL_Cursor *cursor);
extern __attribute__ ((visibility("default"))) SDL_Cursor * SDL_GetCursor(void);
extern __attribute__ ((visibility("default"))) SDL_Cursor * SDL_GetDefaultCursor(void);
extern __attribute__ ((visibility("default"))) void SDL_DestroyCursor(SDL_Cursor *cursor);
extern __attribute__ ((visibility("default"))) _Bool SDL_ShowCursor(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_HideCursor(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_CursorVisible(void);
extern __attribute__ ((visibility("default"))) SDL_TouchID * SDL_GetTouchDevices(int *count);
extern __attribute__ ((visibility("default"))) const char * SDL_GetTouchDeviceName(SDL_TouchID touchID);
extern __attribute__ ((visibility("default"))) SDL_TouchDeviceType SDL_GetTouchDeviceType(SDL_TouchID touchID);
extern __attribute__ ((visibility("default"))) SDL_Finger ** SDL_GetTouchFingers(SDL_TouchID touchID, int *count);
extern __attribute__ ((visibility("default"))) void SDL_PumpEvents(void);
extern __attribute__ ((visibility("default"))) int SDL_PeepEvents(SDL_Event *events, int numevents, SDL_EventAction action, Uint32 minType, Uint32 maxType);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasEvent(Uint32 type);
extern __attribute__ ((visibility("default"))) _Bool SDL_HasEvents(Uint32 minType, Uint32 maxType);
extern __attribute__ ((visibility("default"))) void SDL_FlushEvent(Uint32 type);
extern __attribute__ ((visibility("default"))) void SDL_FlushEvents(Uint32 minType, Uint32 maxType);
extern __attribute__ ((visibility("default"))) _Bool SDL_PollEvent(SDL_Event *event);
extern __attribute__ ((visibility("default"))) _Bool SDL_WaitEvent(SDL_Event *event);
extern __attribute__ ((visibility("default"))) _Bool SDL_WaitEventTimeout(SDL_Event *event, Sint32 timeoutMS);
extern __attribute__ ((visibility("default"))) _Bool SDL_PushEvent(SDL_Event *event);
extern __attribute__ ((visibility("default"))) void SDL_SetEventFilter(SDL_EventFilter filter, void *userdata);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetEventFilter(SDL_EventFilter *filter, void **userdata);
extern __attribute__ ((visibility("default"))) _Bool SDL_AddEventWatch(SDL_EventFilter filter, void *userdata);
extern __attribute__ ((visibility("default"))) void SDL_RemoveEventWatch(SDL_EventFilter filter, void *userdata);
extern __attribute__ ((visibility("default"))) void SDL_FilterEvents(SDL_EventFilter filter, void *userdata);
extern __attribute__ ((visibility("default"))) void SDL_SetEventEnabled(Uint32 type, _Bool enabled);
extern __attribute__ ((visibility("default"))) _Bool SDL_EventEnabled(Uint32 type);
extern __attribute__ ((visibility("default"))) Uint32 SDL_RegisterEvents(int numevents);
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_GetWindowFromEvent(const SDL_Event *event);
extern __attribute__ ((visibility("default"))) const char * SDL_GetBasePath(void);
extern __attribute__ ((visibility("default"))) char * SDL_GetPrefPath(const char *org, const char *app);
extern __attribute__ ((visibility("default"))) const char * SDL_GetUserFolder(SDL_Folder folder);
extern __attribute__ ((visibility("default"))) _Bool SDL_CreateDirectory(const char *path);
extern __attribute__ ((visibility("default"))) _Bool SDL_EnumerateDirectory(const char *path, SDL_EnumerateDirectoryCallback callback, void *userdata);
extern __attribute__ ((visibility("default"))) _Bool SDL_RemovePath(const char *path);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenamePath(const char *oldpath, const char *newpath);
extern __attribute__ ((visibility("default"))) _Bool SDL_CopyFile(const char *oldpath, const char *newpath);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetPathInfo(const char *path, SDL_PathInfo *info);
extern __attribute__ ((visibility("default"))) char ** SDL_GlobDirectory(const char *path, const char *pattern, SDL_GlobFlags flags, int *count);
extern __attribute__ ((visibility("default"))) char * SDL_GetCurrentDirectory(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_GPUSupportsShaderFormats( SDL_GPUShaderFormat format_flags, const char *name);
extern __attribute__ ((visibility("default"))) _Bool SDL_GPUSupportsProperties( SDL_PropertiesID props);
extern __attribute__ ((visibility("default"))) SDL_GPUDevice * SDL_CreateGPUDevice( SDL_GPUShaderFormat format_flags, _Bool debug_mode, const char *name);
extern __attribute__ ((visibility("default"))) SDL_GPUDevice * SDL_CreateGPUDeviceWithProperties( SDL_PropertiesID props);
extern __attribute__ ((visibility("default"))) void SDL_DestroyGPUDevice(SDL_GPUDevice *device);
extern __attribute__ ((visibility("default"))) int SDL_GetNumGPUDrivers(void);
extern __attribute__ ((visibility("default"))) const char * SDL_GetGPUDriver(int index);
extern __attribute__ ((visibility("default"))) const char * SDL_GetGPUDeviceDriver(SDL_GPUDevice *device);
extern __attribute__ ((visibility("default"))) SDL_GPUShaderFormat SDL_GetGPUShaderFormats(SDL_GPUDevice *device);
extern __attribute__ ((visibility("default"))) SDL_GPUComputePipeline * SDL_CreateGPUComputePipeline( SDL_GPUDevice *device, const SDL_GPUComputePipelineCreateInfo *createinfo);
extern __attribute__ ((visibility("default"))) SDL_GPUGraphicsPipeline * SDL_CreateGPUGraphicsPipeline( SDL_GPUDevice *device, const SDL_GPUGraphicsPipelineCreateInfo *createinfo);
extern __attribute__ ((visibility("default"))) SDL_GPUSampler * SDL_CreateGPUSampler( SDL_GPUDevice *device, const SDL_GPUSamplerCreateInfo *createinfo);
extern __attribute__ ((visibility("default"))) SDL_GPUShader * SDL_CreateGPUShader( SDL_GPUDevice *device, const SDL_GPUShaderCreateInfo *createinfo);
extern __attribute__ ((visibility("default"))) SDL_GPUTexture * SDL_CreateGPUTexture( SDL_GPUDevice *device, const SDL_GPUTextureCreateInfo *createinfo);
extern __attribute__ ((visibility("default"))) SDL_GPUBuffer * SDL_CreateGPUBuffer( SDL_GPUDevice *device, const SDL_GPUBufferCreateInfo *createinfo);
extern __attribute__ ((visibility("default"))) SDL_GPUTransferBuffer * SDL_CreateGPUTransferBuffer( SDL_GPUDevice *device, const SDL_GPUTransferBufferCreateInfo *createinfo);
extern __attribute__ ((visibility("default"))) void SDL_SetGPUBufferName( SDL_GPUDevice *device, SDL_GPUBuffer *buffer, const char *text);
extern __attribute__ ((visibility("default"))) void SDL_SetGPUTextureName( SDL_GPUDevice *device, SDL_GPUTexture *texture, const char *text);
extern __attribute__ ((visibility("default"))) void SDL_InsertGPUDebugLabel( SDL_GPUCommandBuffer *command_buffer, const char *text);
extern __attribute__ ((visibility("default"))) void SDL_PushGPUDebugGroup( SDL_GPUCommandBuffer *command_buffer, const char *name);
extern __attribute__ ((visibility("default"))) void SDL_PopGPUDebugGroup( SDL_GPUCommandBuffer *command_buffer);
extern __attribute__ ((visibility("default"))) void SDL_ReleaseGPUTexture( SDL_GPUDevice *device, SDL_GPUTexture *texture);
extern __attribute__ ((visibility("default"))) void SDL_ReleaseGPUSampler( SDL_GPUDevice *device, SDL_GPUSampler *sampler);
extern __attribute__ ((visibility("default"))) void SDL_ReleaseGPUBuffer( SDL_GPUDevice *device, SDL_GPUBuffer *buffer);
extern __attribute__ ((visibility("default"))) void SDL_ReleaseGPUTransferBuffer( SDL_GPUDevice *device, SDL_GPUTransferBuffer *transfer_buffer);
extern __attribute__ ((visibility("default"))) void SDL_ReleaseGPUComputePipeline( SDL_GPUDevice *device, SDL_GPUComputePipeline *compute_pipeline);
extern __attribute__ ((visibility("default"))) void SDL_ReleaseGPUShader( SDL_GPUDevice *device, SDL_GPUShader *shader);
extern __attribute__ ((visibility("default"))) void SDL_ReleaseGPUGraphicsPipeline( SDL_GPUDevice *device, SDL_GPUGraphicsPipeline *graphics_pipeline);
extern __attribute__ ((visibility("default"))) SDL_GPUCommandBuffer * SDL_AcquireGPUCommandBuffer( SDL_GPUDevice *device);
extern __attribute__ ((visibility("default"))) void SDL_PushGPUVertexUniformData( SDL_GPUCommandBuffer *command_buffer, Uint32 slot_index, const void *data, Uint32 length);
extern __attribute__ ((visibility("default"))) void SDL_PushGPUFragmentUniformData( SDL_GPUCommandBuffer *command_buffer, Uint32 slot_index, const void *data, Uint32 length);
extern __attribute__ ((visibility("default"))) void SDL_PushGPUComputeUniformData( SDL_GPUCommandBuffer *command_buffer, Uint32 slot_index, const void *data, Uint32 length);
extern __attribute__ ((visibility("default"))) SDL_GPURenderPass * SDL_BeginGPURenderPass( SDL_GPUCommandBuffer *command_buffer, const SDL_GPUColorTargetInfo *color_target_infos, Uint32 num_color_targets, const SDL_GPUDepthStencilTargetInfo *depth_stencil_target_info);
extern __attribute__ ((visibility("default"))) void SDL_BindGPUGraphicsPipeline( SDL_GPURenderPass *render_pass, SDL_GPUGraphicsPipeline *graphics_pipeline);
extern __attribute__ ((visibility("default"))) void SDL_SetGPUViewport( SDL_GPURenderPass *render_pass, const SDL_GPUViewport *viewport);
extern __attribute__ ((visibility("default"))) void SDL_SetGPUScissor( SDL_GPURenderPass *render_pass, const SDL_Rect *scissor);
extern __attribute__ ((visibility("default"))) void SDL_SetGPUBlendConstants( SDL_GPURenderPass *render_pass, SDL_FColor blend_constants);
extern __attribute__ ((visibility("default"))) void SDL_SetGPUStencilReference( SDL_GPURenderPass *render_pass, Uint8 reference);
extern __attribute__ ((visibility("default"))) void SDL_BindGPUVertexBuffers( SDL_GPURenderPass *render_pass, Uint32 first_slot, const SDL_GPUBufferBinding *bindings, Uint32 num_bindings);
extern __attribute__ ((visibility("default"))) void SDL_BindGPUIndexBuffer( SDL_GPURenderPass *render_pass, const SDL_GPUBufferBinding *binding, SDL_GPUIndexElementSize index_element_size);
extern __attribute__ ((visibility("default"))) void SDL_BindGPUVertexSamplers( SDL_GPURenderPass *render_pass, Uint32 first_slot, const SDL_GPUTextureSamplerBinding *texture_sampler_bindings, Uint32 num_bindings);
extern __attribute__ ((visibility("default"))) void SDL_BindGPUVertexStorageTextures( SDL_GPURenderPass *render_pass, Uint32 first_slot, SDL_GPUTexture *const *storage_textures, Uint32 num_bindings);
extern __attribute__ ((visibility("default"))) void SDL_BindGPUVertexStorageBuffers( SDL_GPURenderPass *render_pass, Uint32 first_slot, SDL_GPUBuffer *const *storage_buffers, Uint32 num_bindings);
extern __attribute__ ((visibility("default"))) void SDL_BindGPUFragmentSamplers( SDL_GPURenderPass *render_pass, Uint32 first_slot, const SDL_GPUTextureSamplerBinding *texture_sampler_bindings, Uint32 num_bindings);
extern __attribute__ ((visibility("default"))) void SDL_BindGPUFragmentStorageTextures( SDL_GPURenderPass *render_pass, Uint32 first_slot, SDL_GPUTexture *const *storage_textures, Uint32 num_bindings);
extern __attribute__ ((visibility("default"))) void SDL_BindGPUFragmentStorageBuffers( SDL_GPURenderPass *render_pass, Uint32 first_slot, SDL_GPUBuffer *const *storage_buffers, Uint32 num_bindings);
extern __attribute__ ((visibility("default"))) void SDL_DrawGPUIndexedPrimitives( SDL_GPURenderPass *render_pass, Uint32 num_indices, Uint32 num_instances, Uint32 first_index, Sint32 vertex_offset, Uint32 first_instance);
extern __attribute__ ((visibility("default"))) void SDL_DrawGPUPrimitives( SDL_GPURenderPass *render_pass, Uint32 num_vertices, Uint32 num_instances, Uint32 first_vertex, Uint32 first_instance);
extern __attribute__ ((visibility("default"))) void SDL_DrawGPUPrimitivesIndirect( SDL_GPURenderPass *render_pass, SDL_GPUBuffer *buffer, Uint32 offset, Uint32 draw_count);
extern __attribute__ ((visibility("default"))) void SDL_DrawGPUIndexedPrimitivesIndirect( SDL_GPURenderPass *render_pass, SDL_GPUBuffer *buffer, Uint32 offset, Uint32 draw_count);
extern __attribute__ ((visibility("default"))) void SDL_EndGPURenderPass( SDL_GPURenderPass *render_pass);
extern __attribute__ ((visibility("default"))) SDL_GPUComputePass * SDL_BeginGPUComputePass( SDL_GPUCommandBuffer *command_buffer, const SDL_GPUStorageTextureReadWriteBinding *storage_texture_bindings, Uint32 num_storage_texture_bindings, const SDL_GPUStorageBufferReadWriteBinding *storage_buffer_bindings, Uint32 num_storage_buffer_bindings);
extern __attribute__ ((visibility("default"))) void SDL_BindGPUComputePipeline( SDL_GPUComputePass *compute_pass, SDL_GPUComputePipeline *compute_pipeline);
extern __attribute__ ((visibility("default"))) void SDL_BindGPUComputeSamplers( SDL_GPUComputePass *compute_pass, Uint32 first_slot, const SDL_GPUTextureSamplerBinding *texture_sampler_bindings, Uint32 num_bindings);
extern __attribute__ ((visibility("default"))) void SDL_BindGPUComputeStorageTextures( SDL_GPUComputePass *compute_pass, Uint32 first_slot, SDL_GPUTexture *const *storage_textures, Uint32 num_bindings);
extern __attribute__ ((visibility("default"))) void SDL_BindGPUComputeStorageBuffers( SDL_GPUComputePass *compute_pass, Uint32 first_slot, SDL_GPUBuffer *const *storage_buffers, Uint32 num_bindings);
extern __attribute__ ((visibility("default"))) void SDL_DispatchGPUCompute( SDL_GPUComputePass *compute_pass, Uint32 groupcount_x, Uint32 groupcount_y, Uint32 groupcount_z);
extern __attribute__ ((visibility("default"))) void SDL_DispatchGPUComputeIndirect( SDL_GPUComputePass *compute_pass, SDL_GPUBuffer *buffer, Uint32 offset);
extern __attribute__ ((visibility("default"))) void SDL_EndGPUComputePass( SDL_GPUComputePass *compute_pass);
extern __attribute__ ((visibility("default"))) void * SDL_MapGPUTransferBuffer( SDL_GPUDevice *device, SDL_GPUTransferBuffer *transfer_buffer, _Bool cycle);
extern __attribute__ ((visibility("default"))) void SDL_UnmapGPUTransferBuffer( SDL_GPUDevice *device, SDL_GPUTransferBuffer *transfer_buffer);
extern __attribute__ ((visibility("default"))) SDL_GPUCopyPass * SDL_BeginGPUCopyPass( SDL_GPUCommandBuffer *command_buffer);
extern __attribute__ ((visibility("default"))) void SDL_UploadToGPUTexture( SDL_GPUCopyPass *copy_pass, const SDL_GPUTextureTransferInfo *source, const SDL_GPUTextureRegion *destination, _Bool cycle);
extern __attribute__ ((visibility("default"))) void SDL_UploadToGPUBuffer( SDL_GPUCopyPass *copy_pass, const SDL_GPUTransferBufferLocation *source, const SDL_GPUBufferRegion *destination, _Bool cycle);
extern __attribute__ ((visibility("default"))) void SDL_CopyGPUTextureToTexture( SDL_GPUCopyPass *copy_pass, const SDL_GPUTextureLocation *source, const SDL_GPUTextureLocation *destination, Uint32 w, Uint32 h, Uint32 d, _Bool cycle);
extern __attribute__ ((visibility("default"))) void SDL_CopyGPUBufferToBuffer( SDL_GPUCopyPass *copy_pass, const SDL_GPUBufferLocation *source, const SDL_GPUBufferLocation *destination, Uint32 size, _Bool cycle);
extern __attribute__ ((visibility("default"))) void SDL_DownloadFromGPUTexture( SDL_GPUCopyPass *copy_pass, const SDL_GPUTextureRegion *source, const SDL_GPUTextureTransferInfo *destination);
extern __attribute__ ((visibility("default"))) void SDL_DownloadFromGPUBuffer( SDL_GPUCopyPass *copy_pass, const SDL_GPUBufferRegion *source, const SDL_GPUTransferBufferLocation *destination);
extern __attribute__ ((visibility("default"))) void SDL_EndGPUCopyPass( SDL_GPUCopyPass *copy_pass);
extern __attribute__ ((visibility("default"))) void SDL_GenerateMipmapsForGPUTexture( SDL_GPUCommandBuffer *command_buffer, SDL_GPUTexture *texture);
extern __attribute__ ((visibility("default"))) void SDL_BlitGPUTexture( SDL_GPUCommandBuffer *command_buffer, const SDL_GPUBlitInfo *info);
extern __attribute__ ((visibility("default"))) _Bool SDL_WindowSupportsGPUSwapchainComposition( SDL_GPUDevice *device, SDL_Window *window, SDL_GPUSwapchainComposition swapchain_composition);
extern __attribute__ ((visibility("default"))) _Bool SDL_WindowSupportsGPUPresentMode( SDL_GPUDevice *device, SDL_Window *window, SDL_GPUPresentMode present_mode);
extern __attribute__ ((visibility("default"))) _Bool SDL_ClaimWindowForGPUDevice( SDL_GPUDevice *device, SDL_Window *window);
extern __attribute__ ((visibility("default"))) void SDL_ReleaseWindowFromGPUDevice( SDL_GPUDevice *device, SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetGPUSwapchainParameters( SDL_GPUDevice *device, SDL_Window *window, SDL_GPUSwapchainComposition swapchain_composition, SDL_GPUPresentMode present_mode);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetGPUAllowedFramesInFlight( SDL_GPUDevice *device, Uint32 allowed_frames_in_flight);
extern __attribute__ ((visibility("default"))) SDL_GPUTextureFormat SDL_GetGPUSwapchainTextureFormat( SDL_GPUDevice *device, SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_AcquireGPUSwapchainTexture( SDL_GPUCommandBuffer *command_buffer, SDL_Window *window, SDL_GPUTexture **swapchain_texture, Uint32 *swapchain_texture_width, Uint32 *swapchain_texture_height);
extern __attribute__ ((visibility("default"))) _Bool SDL_WaitForGPUSwapchain( SDL_GPUDevice *device, SDL_Window *window);
extern __attribute__ ((visibility("default"))) _Bool SDL_WaitAndAcquireGPUSwapchainTexture( SDL_GPUCommandBuffer *command_buffer, SDL_Window *window, SDL_GPUTexture **swapchain_texture, Uint32 *swapchain_texture_width, Uint32 *swapchain_texture_height);
extern __attribute__ ((visibility("default"))) _Bool SDL_SubmitGPUCommandBuffer( SDL_GPUCommandBuffer *command_buffer);
extern __attribute__ ((visibility("default"))) SDL_GPUFence * SDL_SubmitGPUCommandBufferAndAcquireFence( SDL_GPUCommandBuffer *command_buffer);
extern __attribute__ ((visibility("default"))) _Bool SDL_CancelGPUCommandBuffer( SDL_GPUCommandBuffer *command_buffer);
extern __attribute__ ((visibility("default"))) _Bool SDL_WaitForGPUIdle( SDL_GPUDevice *device);
extern __attribute__ ((visibility("default"))) _Bool SDL_WaitForGPUFences( SDL_GPUDevice *device, _Bool wait_all, SDL_GPUFence *const *fences, Uint32 num_fences);
extern __attribute__ ((visibility("default"))) _Bool SDL_QueryGPUFence( SDL_GPUDevice *device, SDL_GPUFence *fence);
extern __attribute__ ((visibility("default"))) void SDL_ReleaseGPUFence( SDL_GPUDevice *device, SDL_GPUFence *fence);
extern __attribute__ ((visibility("default"))) Uint32 SDL_GPUTextureFormatTexelBlockSize( SDL_GPUTextureFormat format);
extern __attribute__ ((visibility("default"))) _Bool SDL_GPUTextureSupportsFormat( SDL_GPUDevice *device, SDL_GPUTextureFormat format, SDL_GPUTextureType type, SDL_GPUTextureUsageFlags usage);
extern __attribute__ ((visibility("default"))) _Bool SDL_GPUTextureSupportsSampleCount( SDL_GPUDevice *device, SDL_GPUTextureFormat format, SDL_GPUSampleCount sample_count);
extern __attribute__ ((visibility("default"))) Uint32 SDL_CalculateGPUTextureFormatSize( SDL_GPUTextureFormat format, Uint32 width, Uint32 height, Uint32 depth_or_layer_count);
extern __attribute__ ((visibility("default"))) SDL_HapticID * SDL_GetHaptics(int *count);
extern __attribute__ ((visibility("default"))) const char * SDL_GetHapticNameForID(SDL_HapticID instance_id);
extern __attribute__ ((visibility("default"))) SDL_Haptic * SDL_OpenHaptic(SDL_HapticID instance_id);
extern __attribute__ ((visibility("default"))) SDL_Haptic * SDL_GetHapticFromID(SDL_HapticID instance_id);
extern __attribute__ ((visibility("default"))) SDL_HapticID SDL_GetHapticID(SDL_Haptic *haptic);
extern __attribute__ ((visibility("default"))) const char * SDL_GetHapticName(SDL_Haptic *haptic);
extern __attribute__ ((visibility("default"))) _Bool SDL_IsMouseHaptic(void);
extern __attribute__ ((visibility("default"))) SDL_Haptic * SDL_OpenHapticFromMouse(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_IsJoystickHaptic(SDL_Joystick *joystick);
extern __attribute__ ((visibility("default"))) SDL_Haptic * SDL_OpenHapticFromJoystick(SDL_Joystick *joystick);
extern __attribute__ ((visibility("default"))) void SDL_CloseHaptic(SDL_Haptic *haptic);
extern __attribute__ ((visibility("default"))) int SDL_GetMaxHapticEffects(SDL_Haptic *haptic);
extern __attribute__ ((visibility("default"))) int SDL_GetMaxHapticEffectsPlaying(SDL_Haptic *haptic);
extern __attribute__ ((visibility("default"))) Uint32 SDL_GetHapticFeatures(SDL_Haptic *haptic);
extern __attribute__ ((visibility("default"))) int SDL_GetNumHapticAxes(SDL_Haptic *haptic);
extern __attribute__ ((visibility("default"))) _Bool SDL_HapticEffectSupported(SDL_Haptic *haptic, const SDL_HapticEffect *effect);
extern __attribute__ ((visibility("default"))) int SDL_CreateHapticEffect(SDL_Haptic *haptic, const SDL_HapticEffect *effect);
extern __attribute__ ((visibility("default"))) _Bool SDL_UpdateHapticEffect(SDL_Haptic *haptic, int effect, const SDL_HapticEffect *data);
extern __attribute__ ((visibility("default"))) _Bool SDL_RunHapticEffect(SDL_Haptic *haptic, int effect, Uint32 iterations);
extern __attribute__ ((visibility("default"))) _Bool SDL_StopHapticEffect(SDL_Haptic *haptic, int effect);
extern __attribute__ ((visibility("default"))) void SDL_DestroyHapticEffect(SDL_Haptic *haptic, int effect);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetHapticEffectStatus(SDL_Haptic *haptic, int effect);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetHapticGain(SDL_Haptic *haptic, int gain);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetHapticAutocenter(SDL_Haptic *haptic, int autocenter);
extern __attribute__ ((visibility("default"))) _Bool SDL_PauseHaptic(SDL_Haptic *haptic);
extern __attribute__ ((visibility("default"))) _Bool SDL_ResumeHaptic(SDL_Haptic *haptic);
extern __attribute__ ((visibility("default"))) _Bool SDL_StopHapticEffects(SDL_Haptic *haptic);
extern __attribute__ ((visibility("default"))) _Bool SDL_HapticRumbleSupported(SDL_Haptic *haptic);
extern __attribute__ ((visibility("default"))) _Bool SDL_InitHapticRumble(SDL_Haptic *haptic);
extern __attribute__ ((visibility("default"))) _Bool SDL_PlayHapticRumble(SDL_Haptic *haptic, float strength, Uint32 length);
extern __attribute__ ((visibility("default"))) _Bool SDL_StopHapticRumble(SDL_Haptic *haptic);
extern __attribute__ ((visibility("default"))) int SDL_hid_init(void);
extern __attribute__ ((visibility("default"))) int SDL_hid_exit(void);
extern __attribute__ ((visibility("default"))) Uint32 SDL_hid_device_change_count(void);
extern __attribute__ ((visibility("default"))) SDL_hid_device_info * SDL_hid_enumerate(unsigned short vendor_id, unsigned short product_id);
extern __attribute__ ((visibility("default"))) void SDL_hid_free_enumeration(SDL_hid_device_info *devs);
extern __attribute__ ((visibility("default"))) SDL_hid_device * SDL_hid_open(unsigned short vendor_id, unsigned short product_id, const wchar_t *serial_number);
extern __attribute__ ((visibility("default"))) SDL_hid_device * SDL_hid_open_path(const char *path);
extern __attribute__ ((visibility("default"))) int SDL_hid_write(SDL_hid_device *dev, const unsigned char *data, size_t length);
extern __attribute__ ((visibility("default"))) int SDL_hid_read_timeout(SDL_hid_device *dev, unsigned char *data, size_t length, int milliseconds);
extern __attribute__ ((visibility("default"))) int SDL_hid_read(SDL_hid_device *dev, unsigned char *data, size_t length);
extern __attribute__ ((visibility("default"))) int SDL_hid_set_nonblocking(SDL_hid_device *dev, int nonblock);
extern __attribute__ ((visibility("default"))) int SDL_hid_send_feature_report(SDL_hid_device *dev, const unsigned char *data, size_t length);
extern __attribute__ ((visibility("default"))) int SDL_hid_get_feature_report(SDL_hid_device *dev, unsigned char *data, size_t length);
extern __attribute__ ((visibility("default"))) int SDL_hid_get_input_report(SDL_hid_device *dev, unsigned char *data, size_t length);
extern __attribute__ ((visibility("default"))) int SDL_hid_close(SDL_hid_device *dev);
extern __attribute__ ((visibility("default"))) int SDL_hid_get_manufacturer_string(SDL_hid_device *dev, wchar_t *string, size_t maxlen);
extern __attribute__ ((visibility("default"))) int SDL_hid_get_product_string(SDL_hid_device *dev, wchar_t *string, size_t maxlen);
extern __attribute__ ((visibility("default"))) int SDL_hid_get_serial_number_string(SDL_hid_device *dev, wchar_t *string, size_t maxlen);
extern __attribute__ ((visibility("default"))) int SDL_hid_get_indexed_string(SDL_hid_device *dev, int string_index, wchar_t *string, size_t maxlen);
extern __attribute__ ((visibility("default"))) SDL_hid_device_info * SDL_hid_get_device_info(SDL_hid_device *dev);
extern __attribute__ ((visibility("default"))) int SDL_hid_get_report_descriptor(SDL_hid_device *dev, unsigned char *buf, size_t buf_size);
extern __attribute__ ((visibility("default"))) void SDL_hid_ble_scan(_Bool active);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetHintWithPriority(const char *name, const char *value, SDL_HintPriority priority);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetHint(const char *name, const char *value);
extern __attribute__ ((visibility("default"))) _Bool SDL_ResetHint(const char *name);
extern __attribute__ ((visibility("default"))) void SDL_ResetHints(void);
extern __attribute__ ((visibility("default"))) const char * SDL_GetHint(const char *name);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetHintBoolean(const char *name, _Bool default_value);
extern __attribute__ ((visibility("default"))) _Bool SDL_AddHintCallback(const char *name, SDL_HintCallback callback, void *userdata);
extern __attribute__ ((visibility("default"))) void SDL_RemoveHintCallback(const char *name, SDL_HintCallback callback, void *userdata);
extern __attribute__ ((visibility("default"))) _Bool SDL_Init(SDL_InitFlags flags);
extern __attribute__ ((visibility("default"))) _Bool SDL_InitSubSystem(SDL_InitFlags flags);
extern __attribute__ ((visibility("default"))) void SDL_QuitSubSystem(SDL_InitFlags flags);
extern __attribute__ ((visibility("default"))) SDL_InitFlags SDL_WasInit(SDL_InitFlags flags);
extern __attribute__ ((visibility("default"))) void SDL_Quit(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_IsMainThread(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_RunOnMainThread(SDL_MainThreadCallback callback, void *userdata, _Bool wait_complete);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetAppMetadata(const char *appname, const char *appversion, const char *appidentifier);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetAppMetadataProperty(const char *name, const char *value);
extern __attribute__ ((visibility("default"))) const char * SDL_GetAppMetadataProperty(const char *name);
extern __attribute__ ((visibility("default"))) SDL_SharedObject * SDL_LoadObject(const char *sofile);
extern __attribute__ ((visibility("default"))) SDL_FunctionPointer SDL_LoadFunction(SDL_SharedObject *handle, const char *name);
extern __attribute__ ((visibility("default"))) void SDL_UnloadObject(SDL_SharedObject *handle);
extern __attribute__ ((visibility("default"))) SDL_Locale ** SDL_GetPreferredLocales(int *count);
extern __attribute__ ((visibility("default"))) void SDL_SetLogPriorities(SDL_LogPriority priority);
extern __attribute__ ((visibility("default"))) void SDL_SetLogPriority(int category, SDL_LogPriority priority);
extern __attribute__ ((visibility("default"))) SDL_LogPriority SDL_GetLogPriority(int category);
extern __attribute__ ((visibility("default"))) void SDL_ResetLogPriorities(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetLogPriorityPrefix(SDL_LogPriority priority, const char *prefix);
extern __attribute__ ((visibility("default"))) void SDL_Log( const char *fmt, ...) __attribute__ (( format( __printf__, 1, 1+1 )));
extern __attribute__ ((visibility("default"))) void SDL_LogTrace(int category, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2+1 )));
extern __attribute__ ((visibility("default"))) void SDL_LogVerbose(int category, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2+1 )));
extern __attribute__ ((visibility("default"))) void SDL_LogDebug(int category, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2+1 )));
extern __attribute__ ((visibility("default"))) void SDL_LogInfo(int category, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2+1 )));
extern __attribute__ ((visibility("default"))) void SDL_LogWarn(int category, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2+1 )));
extern __attribute__ ((visibility("default"))) void SDL_LogError(int category, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2+1 )));
extern __attribute__ ((visibility("default"))) void SDL_LogCritical(int category, const char *fmt, ...) __attribute__ (( format( __printf__, 2, 2+1 )));
extern __attribute__ ((visibility("default"))) void SDL_LogMessage(int category, SDL_LogPriority priority, const char *fmt, ...) __attribute__ (( format( __printf__, 3, 3+1 )));
extern __attribute__ ((visibility("default"))) void SDL_LogMessageV(int category, SDL_LogPriority priority, const char *fmt, va_list ap) __attribute__(( format( __printf__, 3, 0 )));
extern __attribute__ ((visibility("default"))) SDL_LogOutputFunction SDL_GetDefaultLogOutputFunction(void);
extern __attribute__ ((visibility("default"))) void SDL_GetLogOutputFunction(SDL_LogOutputFunction *callback, void **userdata);
extern __attribute__ ((visibility("default"))) void SDL_SetLogOutputFunction(SDL_LogOutputFunction callback, void *userdata);
extern __attribute__ ((visibility("default"))) _Bool SDL_ShowMessageBox(const SDL_MessageBoxData *messageboxdata, int *buttonid);
extern __attribute__ ((visibility("default"))) _Bool SDL_ShowSimpleMessageBox(SDL_MessageBoxFlags flags, const char *title, const char *message, SDL_Window *window);
extern __attribute__ ((visibility("default"))) SDL_MetalView SDL_Metal_CreateView(SDL_Window *window);
extern __attribute__ ((visibility("default"))) void SDL_Metal_DestroyView(SDL_MetalView view);
extern __attribute__ ((visibility("default"))) void * SDL_Metal_GetLayer(SDL_MetalView view);
extern __attribute__ ((visibility("default"))) _Bool SDL_OpenURL(const char *url);
extern __attribute__ ((visibility("default"))) const char * SDL_GetPlatform(void);
extern __attribute__ ((visibility("default"))) SDL_Process * SDL_CreateProcess(const char * const *args, _Bool pipe_stdio);
extern __attribute__ ((visibility("default"))) SDL_Process * SDL_CreateProcessWithProperties(SDL_PropertiesID props);
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetProcessProperties(SDL_Process *process);
extern __attribute__ ((visibility("default"))) void * SDL_ReadProcess(SDL_Process *process, size_t *datasize, int *exitcode);
extern __attribute__ ((visibility("default"))) SDL_IOStream * SDL_GetProcessInput(SDL_Process *process);
extern __attribute__ ((visibility("default"))) SDL_IOStream * SDL_GetProcessOutput(SDL_Process *process);
extern __attribute__ ((visibility("default"))) _Bool SDL_KillProcess(SDL_Process *process, _Bool force);
extern __attribute__ ((visibility("default"))) _Bool SDL_WaitProcess(SDL_Process *process, _Bool block, int *exitcode);
extern __attribute__ ((visibility("default"))) void SDL_DestroyProcess(SDL_Process *process);
extern __attribute__ ((visibility("default"))) int SDL_GetNumRenderDrivers(void);
extern __attribute__ ((visibility("default"))) const char * SDL_GetRenderDriver(int index);
extern __attribute__ ((visibility("default"))) _Bool SDL_CreateWindowAndRenderer(const char *title, int width, int height, SDL_WindowFlags window_flags, SDL_Window **window, SDL_Renderer **renderer);
extern __attribute__ ((visibility("default"))) SDL_Renderer * SDL_CreateRenderer(SDL_Window *window, const char *name);
extern __attribute__ ((visibility("default"))) SDL_Renderer * SDL_CreateRendererWithProperties(SDL_PropertiesID props);
extern __attribute__ ((visibility("default"))) SDL_Renderer * SDL_CreateSoftwareRenderer(SDL_Surface *surface);
extern __attribute__ ((visibility("default"))) SDL_Renderer * SDL_GetRenderer(SDL_Window *window);
extern __attribute__ ((visibility("default"))) SDL_Window * SDL_GetRenderWindow(SDL_Renderer *renderer);
extern __attribute__ ((visibility("default"))) const char * SDL_GetRendererName(SDL_Renderer *renderer);
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetRendererProperties(SDL_Renderer *renderer);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetRenderOutputSize(SDL_Renderer *renderer, int *w, int *h);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetCurrentRenderOutputSize(SDL_Renderer *renderer, int *w, int *h);
extern __attribute__ ((visibility("default"))) SDL_Texture * SDL_CreateTexture(SDL_Renderer *renderer, SDL_PixelFormat format, SDL_TextureAccess access, int w, int h);
extern __attribute__ ((visibility("default"))) SDL_Texture * SDL_CreateTextureFromSurface(SDL_Renderer *renderer, SDL_Surface *surface);
extern __attribute__ ((visibility("default"))) SDL_Texture * SDL_CreateTextureWithProperties(SDL_Renderer *renderer, SDL_PropertiesID props);
extern __attribute__ ((visibility("default"))) SDL_PropertiesID SDL_GetTextureProperties(SDL_Texture *texture);
extern __attribute__ ((visibility("default"))) SDL_Renderer * SDL_GetRendererFromTexture(SDL_Texture *texture);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetTextureSize(SDL_Texture *texture, float *w, float *h);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetTextureColorMod(SDL_Texture *texture, Uint8 r, Uint8 g, Uint8 b);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetTextureColorModFloat(SDL_Texture *texture, float r, float g, float b);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetTextureColorMod(SDL_Texture *texture, Uint8 *r, Uint8 *g, Uint8 *b);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetTextureColorModFloat(SDL_Texture *texture, float *r, float *g, float *b);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetTextureAlphaMod(SDL_Texture *texture, Uint8 alpha);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetTextureAlphaModFloat(SDL_Texture *texture, float alpha);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetTextureAlphaMod(SDL_Texture *texture, Uint8 *alpha);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetTextureAlphaModFloat(SDL_Texture *texture, float *alpha);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetTextureBlendMode(SDL_Texture *texture, SDL_BlendMode blendMode);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetTextureBlendMode(SDL_Texture *texture, SDL_BlendMode *blendMode);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetTextureScaleMode(SDL_Texture *texture, SDL_ScaleMode scaleMode);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetTextureScaleMode(SDL_Texture *texture, SDL_ScaleMode *scaleMode);
extern __attribute__ ((visibility("default"))) _Bool SDL_UpdateTexture(SDL_Texture *texture, const SDL_Rect *rect, const void *pixels, int pitch);
extern __attribute__ ((visibility("default"))) _Bool SDL_UpdateYUVTexture(SDL_Texture *texture, const SDL_Rect *rect, const Uint8 *Yplane, int Ypitch, const Uint8 *Uplane, int Upitch, const Uint8 *Vplane, int Vpitch);
extern __attribute__ ((visibility("default"))) _Bool SDL_UpdateNVTexture(SDL_Texture *texture, const SDL_Rect *rect, const Uint8 *Yplane, int Ypitch, const Uint8 *UVplane, int UVpitch);
extern __attribute__ ((visibility("default"))) _Bool SDL_LockTexture(SDL_Texture *texture, const SDL_Rect *rect, void **pixels, int *pitch);
extern __attribute__ ((visibility("default"))) _Bool SDL_LockTextureToSurface(SDL_Texture *texture, const SDL_Rect *rect, SDL_Surface **surface);
extern __attribute__ ((visibility("default"))) void SDL_UnlockTexture(SDL_Texture *texture);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetRenderTarget(SDL_Renderer *renderer, SDL_Texture *texture);
extern __attribute__ ((visibility("default"))) SDL_Texture * SDL_GetRenderTarget(SDL_Renderer *renderer);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetRenderLogicalPresentation(SDL_Renderer *renderer, int w, int h, SDL_RendererLogicalPresentation mode);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetRenderLogicalPresentation(SDL_Renderer *renderer, int *w, int *h, SDL_RendererLogicalPresentation *mode);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetRenderLogicalPresentationRect(SDL_Renderer *renderer, SDL_FRect *rect);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderCoordinatesFromWindow(SDL_Renderer *renderer, float window_x, float window_y, float *x, float *y);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderCoordinatesToWindow(SDL_Renderer *renderer, float x, float y, float *window_x, float *window_y);
extern __attribute__ ((visibility("default"))) _Bool SDL_ConvertEventToRenderCoordinates(SDL_Renderer *renderer, SDL_Event *event);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetRenderViewport(SDL_Renderer *renderer, const SDL_Rect *rect);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetRenderViewport(SDL_Renderer *renderer, SDL_Rect *rect);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderViewportSet(SDL_Renderer *renderer);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetRenderSafeArea(SDL_Renderer *renderer, SDL_Rect *rect);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetRenderClipRect(SDL_Renderer *renderer, const SDL_Rect *rect);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetRenderClipRect(SDL_Renderer *renderer, SDL_Rect *rect);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderClipEnabled(SDL_Renderer *renderer);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetRenderScale(SDL_Renderer *renderer, float scaleX, float scaleY);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetRenderScale(SDL_Renderer *renderer, float *scaleX, float *scaleY);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetRenderDrawColor(SDL_Renderer *renderer, Uint8 r, Uint8 g, Uint8 b, Uint8 a);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetRenderDrawColorFloat(SDL_Renderer *renderer, float r, float g, float b, float a);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetRenderDrawColor(SDL_Renderer *renderer, Uint8 *r, Uint8 *g, Uint8 *b, Uint8 *a);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetRenderDrawColorFloat(SDL_Renderer *renderer, float *r, float *g, float *b, float *a);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetRenderColorScale(SDL_Renderer *renderer, float scale);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetRenderColorScale(SDL_Renderer *renderer, float *scale);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetRenderDrawBlendMode(SDL_Renderer *renderer, SDL_BlendMode blendMode);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetRenderDrawBlendMode(SDL_Renderer *renderer, SDL_BlendMode *blendMode);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderClear(SDL_Renderer *renderer);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderPoint(SDL_Renderer *renderer, float x, float y);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderPoints(SDL_Renderer *renderer, const SDL_FPoint *points, int count);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderLine(SDL_Renderer *renderer, float x1, float y1, float x2, float y2);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderLines(SDL_Renderer *renderer, const SDL_FPoint *points, int count);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderRect(SDL_Renderer *renderer, const SDL_FRect *rect);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderRects(SDL_Renderer *renderer, const SDL_FRect *rects, int count);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderFillRect(SDL_Renderer *renderer, const SDL_FRect *rect);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderFillRects(SDL_Renderer *renderer, const SDL_FRect *rects, int count);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderTexture(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, const SDL_FRect *dstrect);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderTextureRotated(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, const SDL_FRect *dstrect, double angle, const SDL_FPoint *center, SDL_FlipMode flip);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderTextureAffine(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, const SDL_FPoint *origin, const SDL_FPoint *right, const SDL_FPoint *down);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderTextureTiled(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, float scale, const SDL_FRect *dstrect);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderTexture9Grid(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, float left_width, float right_width, float top_height, float bottom_height, float scale, const SDL_FRect *dstrect);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderGeometry(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_Vertex *vertices, int num_vertices, const int *indices, int num_indices);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderGeometryRaw(SDL_Renderer *renderer, SDL_Texture *texture, const float *xy, int xy_stride, const SDL_FColor *color, int color_stride, const float *uv, int uv_stride, int num_vertices, const void *indices, int num_indices, int size_indices);
extern __attribute__ ((visibility("default"))) SDL_Surface * SDL_RenderReadPixels(SDL_Renderer *renderer, const SDL_Rect *rect);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderPresent(SDL_Renderer *renderer);
extern __attribute__ ((visibility("default"))) void SDL_DestroyTexture(SDL_Texture *texture);
extern __attribute__ ((visibility("default"))) void SDL_DestroyRenderer(SDL_Renderer *renderer);
extern __attribute__ ((visibility("default"))) _Bool SDL_FlushRenderer(SDL_Renderer *renderer);
extern __attribute__ ((visibility("default"))) void * SDL_GetRenderMetalLayer(SDL_Renderer *renderer);
extern __attribute__ ((visibility("default"))) void * SDL_GetRenderMetalCommandEncoder(SDL_Renderer *renderer);
extern __attribute__ ((visibility("default"))) _Bool SDL_AddVulkanRenderSemaphores(SDL_Renderer *renderer, Uint32 wait_stage_mask, Sint64 wait_semaphore, Sint64 signal_semaphore);
extern __attribute__ ((visibility("default"))) _Bool SDL_SetRenderVSync(SDL_Renderer *renderer, int vsync);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetRenderVSync(SDL_Renderer *renderer, int *vsync);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderDebugText(SDL_Renderer *renderer, float x, float y, const char *str);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenderDebugTextFormat(SDL_Renderer *renderer, float x, float y, const char *fmt, ...) __attribute__ (( format( __printf__, 4, 4+1 )));
extern __attribute__ ((visibility("default"))) SDL_Storage * SDL_OpenTitleStorage(const char *override, SDL_PropertiesID props);
extern __attribute__ ((visibility("default"))) SDL_Storage * SDL_OpenUserStorage(const char *org, const char *app, SDL_PropertiesID props);
extern __attribute__ ((visibility("default"))) SDL_Storage * SDL_OpenFileStorage(const char *path);
extern __attribute__ ((visibility("default"))) SDL_Storage * SDL_OpenStorage(const SDL_StorageInterface *iface, void *userdata);
extern __attribute__ ((visibility("default"))) _Bool SDL_CloseStorage(SDL_Storage *storage);
extern __attribute__ ((visibility("default"))) _Bool SDL_StorageReady(SDL_Storage *storage);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetStorageFileSize(SDL_Storage *storage, const char *path, Uint64 *length);
extern __attribute__ ((visibility("default"))) _Bool SDL_ReadStorageFile(SDL_Storage *storage, const char *path, void *destination, Uint64 length);
extern __attribute__ ((visibility("default"))) _Bool SDL_WriteStorageFile(SDL_Storage *storage, const char *path, const void *source, Uint64 length);
extern __attribute__ ((visibility("default"))) _Bool SDL_CreateStorageDirectory(SDL_Storage *storage, const char *path);
extern __attribute__ ((visibility("default"))) _Bool SDL_EnumerateStorageDirectory(SDL_Storage *storage, const char *path, SDL_EnumerateDirectoryCallback callback, void *userdata);
extern __attribute__ ((visibility("default"))) _Bool SDL_RemoveStoragePath(SDL_Storage *storage, const char *path);
extern __attribute__ ((visibility("default"))) _Bool SDL_RenameStoragePath(SDL_Storage *storage, const char *oldpath, const char *newpath);
extern __attribute__ ((visibility("default"))) _Bool SDL_CopyStorageFile(SDL_Storage *storage, const char *oldpath, const char *newpath);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetStoragePathInfo(SDL_Storage *storage, const char *path, SDL_PathInfo *info);
extern __attribute__ ((visibility("default"))) Uint64 SDL_GetStorageSpaceRemaining(SDL_Storage *storage);
extern __attribute__ ((visibility("default"))) char ** SDL_GlobStorageDirectory(SDL_Storage *storage, const char *path, const char *pattern, SDL_GlobFlags flags, int *count);
extern __attribute__ ((visibility("default"))) void SDL_SetX11EventHook(SDL_X11EventHook callback, void *userdata);
extern __attribute__ ((visibility("default"))) _Bool SDL_IsTablet(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_IsTV(void);
extern __attribute__ ((visibility("default"))) SDL_Sandbox SDL_GetSandbox(void);
extern __attribute__ ((visibility("default"))) void SDL_OnApplicationWillTerminate(void);
extern __attribute__ ((visibility("default"))) void SDL_OnApplicationDidReceiveMemoryWarning(void);
extern __attribute__ ((visibility("default"))) void SDL_OnApplicationWillEnterBackground(void);
extern __attribute__ ((visibility("default"))) void SDL_OnApplicationDidEnterBackground(void);
extern __attribute__ ((visibility("default"))) void SDL_OnApplicationWillEnterForeground(void);
extern __attribute__ ((visibility("default"))) void SDL_OnApplicationDidEnterForeground(void);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetDateTimeLocalePreferences(SDL_DateFormat *dateFormat, SDL_TimeFormat *timeFormat);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetCurrentTime(SDL_Time *ticks);
extern __attribute__ ((visibility("default"))) _Bool SDL_TimeToDateTime(SDL_Time ticks, SDL_DateTime *dt, _Bool localTime);
extern __attribute__ ((visibility("default"))) _Bool SDL_DateTimeToTime(const SDL_DateTime *dt, SDL_Time *ticks);
extern __attribute__ ((visibility("default"))) void SDL_TimeToWindows(SDL_Time ticks, Uint32 *dwLowDateTime, Uint32 *dwHighDateTime);
extern __attribute__ ((visibility("default"))) SDL_Time SDL_TimeFromWindows(Uint32 dwLowDateTime, Uint32 dwHighDateTime);
extern __attribute__ ((visibility("default"))) int SDL_GetDaysInMonth(int year, int month);
extern __attribute__ ((visibility("default"))) int SDL_GetDayOfYear(int year, int month, int day);
extern __attribute__ ((visibility("default"))) int SDL_GetDayOfWeek(int year, int month, int day);
extern __attribute__ ((visibility("default"))) Uint64 SDL_GetTicks(void);
extern __attribute__ ((visibility("default"))) Uint64 SDL_GetTicksNS(void);
extern __attribute__ ((visibility("default"))) Uint64 SDL_GetPerformanceCounter(void);
extern __attribute__ ((visibility("default"))) Uint64 SDL_GetPerformanceFrequency(void);
extern __attribute__ ((visibility("default"))) void SDL_Delay(Uint32 ms);
extern __attribute__ ((visibility("default"))) void SDL_DelayNS(Uint64 ns);
extern __attribute__ ((visibility("default"))) void SDL_DelayPrecise(Uint64 ns);
extern __attribute__ ((visibility("default"))) SDL_TimerID SDL_AddTimer(Uint32 interval, SDL_TimerCallback callback, void *userdata);
extern __attribute__ ((visibility("default"))) SDL_TimerID SDL_AddTimerNS(Uint64 interval, SDL_NSTimerCallback callback, void *userdata);
extern __attribute__ ((visibility("default"))) _Bool SDL_RemoveTimer(SDL_TimerID id);
extern __attribute__ ((visibility("default"))) SDL_Tray * SDL_CreateTray(SDL_Surface *icon, const char *tooltip);
extern __attribute__ ((visibility("default"))) void SDL_SetTrayIcon(SDL_Tray *tray, SDL_Surface *icon);
extern __attribute__ ((visibility("default"))) void SDL_SetTrayTooltip(SDL_Tray *tray, const char *tooltip);
extern __attribute__ ((visibility("default"))) SDL_TrayMenu * SDL_CreateTrayMenu(SDL_Tray *tray);
extern __attribute__ ((visibility("default"))) SDL_TrayMenu * SDL_CreateTraySubmenu(SDL_TrayEntry *entry);
extern __attribute__ ((visibility("default"))) SDL_TrayMenu * SDL_GetTrayMenu(SDL_Tray *tray);
extern __attribute__ ((visibility("default"))) SDL_TrayMenu * SDL_GetTraySubmenu(SDL_TrayEntry *entry);
extern __attribute__ ((visibility("default"))) const SDL_TrayEntry ** SDL_GetTrayEntries(SDL_TrayMenu *menu, int *count);
extern __attribute__ ((visibility("default"))) void SDL_RemoveTrayEntry(SDL_TrayEntry *entry);
extern __attribute__ ((visibility("default"))) SDL_TrayEntry * SDL_InsertTrayEntryAt(SDL_TrayMenu *menu, int pos, const char *label, SDL_TrayEntryFlags flags);
extern __attribute__ ((visibility("default"))) void SDL_SetTrayEntryLabel(SDL_TrayEntry *entry, const char *label);
extern __attribute__ ((visibility("default"))) const char * SDL_GetTrayEntryLabel(SDL_TrayEntry *entry);
extern __attribute__ ((visibility("default"))) void SDL_SetTrayEntryChecked(SDL_TrayEntry *entry, _Bool checked);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetTrayEntryChecked(SDL_TrayEntry *entry);
extern __attribute__ ((visibility("default"))) void SDL_SetTrayEntryEnabled(SDL_TrayEntry *entry, _Bool enabled);
extern __attribute__ ((visibility("default"))) _Bool SDL_GetTrayEntryEnabled(SDL_TrayEntry *entry);
extern __attribute__ ((visibility("default"))) void SDL_SetTrayEntryCallback(SDL_TrayEntry *entry, SDL_TrayCallback callback, void *userdata);
extern __attribute__ ((visibility("default"))) void SDL_ClickTrayEntry(SDL_TrayEntry *entry);
extern __attribute__ ((visibility("default"))) void SDL_DestroyTray(SDL_Tray *tray);
extern __attribute__ ((visibility("default"))) SDL_TrayMenu * SDL_GetTrayEntryParent(SDL_TrayEntry *entry);
extern __attribute__ ((visibility("default"))) SDL_TrayEntry * SDL_GetTrayMenuParentEntry(SDL_TrayMenu *menu);
extern __attribute__ ((visibility("default"))) SDL_Tray * SDL_GetTrayMenuParentTray(SDL_TrayMenu *menu);
extern __attribute__ ((visibility("default"))) void SDL_UpdateTrays(void);
extern __attribute__ ((visibility("default"))) int SDL_GetVersion(void);
extern __attribute__ ((visibility("default"))) const char * SDL_GetRevision(void);
]]

return require 'ffi.load' 'SDL3'
