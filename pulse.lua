local ffi = require 'ffi'
ffi.cdef[[
/* WARNING: redefining SIGIO from 0 to 29 (originally SIGPOLL) */
/* WARNING: redefining SIGCLD from 0 to 17 (originally SIGCHLD) */
/* + BEGIN /usr/include/pulse/pulseaudio.h */
enum { foopulseaudiohfoo = 1 };
/* ++ BEGIN /usr/include/pulse/direction.h */
enum { foodirectionhfoo = 1 };
/* +++ BEGIN /usr/include/pulse/def.h */
enum { foodefhfoo = 1 };
/* ++++ BEGIN /usr/include/inttypes.h */
]] require 'ffi.req' 'c.inttypes' ffi.cdef[[
/* ++++ END   /usr/include/inttypes.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/sys/time.h */
]] require 'ffi.req' 'c.sys.time' ffi.cdef[[
/* ++++ END   /usr/include/x86_64-linux-gnu/sys/time.h */
/* ++++ BEGIN /usr/include/pulse/cdecl.h */
enum { foopulsecdeclhfoo = 1 };
enum { PA_C_DECL_BEGIN = 1 };
enum { PA_C_DECL_END = 1 };
/* ++++ END   /usr/include/pulse/cdecl.h */
/* ++++ BEGIN /usr/include/pulse/sample.h */
enum { foosamplehfoo = 1 };
/* +++++ BEGIN /usr/include/inttypes.h */
]] require 'ffi.req' 'c.inttypes' ffi.cdef[[
/* +++++ END   /usr/include/inttypes.h */
/* +++++ BEGIN /usr/include/x86_64-linux-gnu/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* +++++ END   /usr/include/x86_64-linux-gnu/sys/types.h */
/* +++++ BEGIN /usr/include/x86_64-linux-gnu/sys/param.h */
]] require 'ffi.req' 'c.sys.param' ffi.cdef[[
/* +++++ END   /usr/include/x86_64-linux-gnu/sys/param.h */
/* +++++ BEGIN /usr/include/pulse/gccmacro.h */
enum { foopulsegccmacrohfoo = 1 };
/* #define PA_GCC_SENTINEL __attribute__ ((sentinel)) ### string, not number "__attribute__ ((sentinel))" */
/* #define PA_GCC_NORETURN __attribute__((noreturn)) ### string, not number "__attribute__((noreturn))" */
/* #define PA_GCC_UNUSED __attribute__ ((unused)) ### string, not number "__attribute__ ((unused))" */
/* #define PA_GCC_DESTRUCTOR __attribute__ ((destructor)) ### string, not number "__attribute__ ((destructor))" */
/* #define PA_GCC_PURE __attribute__ ((pure)) ### string, not number "__attribute__ ((pure))" */
/* #define PA_GCC_CONST __attribute__ ((const)) ### string, not number "__attribute__ ((const))" */
/* #define PA_GCC_DEPRECATED __attribute__ ((deprecated)) ### string, not number "__attribute__ ((deprecated))" */
/* #define PA_GCC_PACKED __attribute__ ((packed)) ### string, not number "__attribute__ ((packed))" */
/* #define PA_GCC_MALLOC __attribute__ ((malloc)) ### string, not number "__attribute__ ((malloc))" */
/* +++++ END   /usr/include/pulse/gccmacro.h */
/* +++++ BEGIN /usr/include/pulse/cdecl.h */
/* +++++ END   /usr/include/pulse/cdecl.h */
/* +++++ BEGIN /usr/include/pulse/version.h */
enum { fooversionhfoo = 1 };
/* ++++++ BEGIN /usr/include/pulse/cdecl.h */
/* ++++++ END   /usr/include/pulse/cdecl.h */
const char* pa_get_library_version(void);
enum { PA_API_VERSION = 12 };
enum { PA_PROTOCOL_VERSION = 35 };
enum { PA_MAJOR = 16 };
enum { PA_MINOR = 1 };
enum { PA_MICRO = 0 };
/* +++++ END   /usr/include/pulse/version.h */
enum { PA_CHANNELS_MAX = 32 };
enum { PA_RATE_MAX = 384000 };
typedef enum pa_sample_format { PA_SAMPLE_U8, PA_SAMPLE_ALAW, PA_SAMPLE_ULAW, PA_SAMPLE_S16LE, PA_SAMPLE_S16BE, PA_SAMPLE_FLOAT32LE, PA_SAMPLE_FLOAT32BE, PA_SAMPLE_S32LE, PA_SAMPLE_S32BE, PA_SAMPLE_S24LE, PA_SAMPLE_S24BE, PA_SAMPLE_S24_32LE, PA_SAMPLE_S24_32BE, PA_SAMPLE_MAX, PA_SAMPLE_INVALID = -1 } pa_sample_format_t;
enum { PA_SAMPLE_S16NE = 0 };
enum { PA_SAMPLE_FLOAT32NE = 0 };
enum { PA_SAMPLE_S32NE = 0 };
enum { PA_SAMPLE_S24NE = 0 };
enum { PA_SAMPLE_S24_32NE = 0 };
enum { PA_SAMPLE_S16RE = 0 };
enum { PA_SAMPLE_FLOAT32RE = 0 };
enum { PA_SAMPLE_S32RE = 0 };
enum { PA_SAMPLE_S24RE = 0 };
enum { PA_SAMPLE_S24_32RE = 0 };
enum { PA_SAMPLE_FLOAT32 = 0 };













typedef struct pa_sample_spec {
	pa_sample_format_t format;
	uint32_t rate;
	uint8_t channels;
} pa_sample_spec;
typedef uint64_t pa_usec_t;
size_t pa_bytes_per_second(const pa_sample_spec *spec) __attribute__ ((pure));
size_t pa_frame_size(const pa_sample_spec *spec) __attribute__ ((pure));
size_t pa_sample_size(const pa_sample_spec *spec) __attribute__ ((pure));
size_t pa_sample_size_of_format(pa_sample_format_t f) __attribute__ ((pure));
pa_usec_t pa_bytes_to_usec(uint64_t length, const pa_sample_spec *spec) __attribute__ ((pure));
size_t pa_usec_to_bytes(pa_usec_t t, const pa_sample_spec *spec) __attribute__ ((pure));
pa_sample_spec* pa_sample_spec_init(pa_sample_spec *spec);
int pa_sample_format_valid(unsigned format) __attribute__ ((pure));
int pa_sample_rate_valid(uint32_t rate) __attribute__ ((pure));
int pa_channels_valid(uint8_t channels) __attribute__ ((pure));
int pa_sample_spec_valid(const pa_sample_spec *spec) __attribute__ ((pure));
int pa_sample_spec_equal(const pa_sample_spec*a, const pa_sample_spec*b) __attribute__ ((pure));
const char *pa_sample_format_to_string(pa_sample_format_t f) __attribute__ ((pure));
pa_sample_format_t pa_parse_sample_format(const char *format) __attribute__ ((pure));
enum { PA_SAMPLE_SPEC_SNPRINT_MAX = 32 };
char* pa_sample_spec_snprint(char *s, size_t l, const pa_sample_spec *spec);
enum { PA_BYTES_SNPRINT_MAX = 11 };
char* pa_bytes_snprint(char *s, size_t l, unsigned v);
int pa_sample_format_is_le(pa_sample_format_t f) __attribute__ ((pure));
int pa_sample_format_is_be(pa_sample_format_t f) __attribute__ ((pure));
/* ++++ END   /usr/include/pulse/sample.h */
/* ++++ BEGIN /usr/include/pulse/version.h */
/* ++++ END   /usr/include/pulse/version.h */
typedef enum pa_context_state { PA_CONTEXT_UNCONNECTED, PA_CONTEXT_CONNECTING, PA_CONTEXT_AUTHORIZING, PA_CONTEXT_SETTING_NAME, PA_CONTEXT_READY, PA_CONTEXT_FAILED, PA_CONTEXT_TERMINATED } pa_context_state_t;
 







typedef enum pa_stream_state { PA_STREAM_UNCONNECTED, PA_STREAM_CREATING, PA_STREAM_READY, PA_STREAM_FAILED, PA_STREAM_TERMINATED } pa_stream_state_t;
 





typedef enum pa_operation_state { PA_OPERATION_RUNNING, PA_OPERATION_DONE, PA_OPERATION_CANCELLED } pa_operation_state_t;


enum { PA_OPERATION_CANCELED = 0 };

enum { PA_INVALID_INDEX = -1 };
typedef enum pa_context_flags { PA_CONTEXT_NOFLAGS = 0x0000U, PA_CONTEXT_NOAUTOSPAWN = 0x0001U, PA_CONTEXT_NOFAIL = 0x0002U } pa_context_flags_t;


typedef enum pa_direction { PA_DIRECTION_OUTPUT = 0x0001U, PA_DIRECTION_INPUT = 0x0002U } pa_direction_t;


typedef enum pa_device_type { PA_DEVICE_TYPE_SINK, PA_DEVICE_TYPE_SOURCE } pa_device_type_t;


typedef enum pa_stream_direction { PA_STREAM_NODIRECTION, PA_STREAM_PLAYBACK, PA_STREAM_RECORD, PA_STREAM_UPLOAD } pa_stream_direction_t;




typedef enum pa_stream_flags { PA_STREAM_NOFLAGS = 0x0000U, PA_STREAM_START_CORKED = 0x0001U, PA_STREAM_INTERPOLATE_TIMING = 0x0002U, PA_STREAM_NOT_MONOTONIC = 0x0004U, PA_STREAM_AUTO_TIMING_UPDATE = 0x0008U, PA_STREAM_NO_REMAP_CHANNELS = 0x0010U, PA_STREAM_NO_REMIX_CHANNELS = 0x0020U, PA_STREAM_FIX_FORMAT = 0x0040U, PA_STREAM_FIX_RATE = 0x0080U, PA_STREAM_FIX_CHANNELS = 0x0100, PA_STREAM_DONT_MOVE = 0x0200U, PA_STREAM_VARIABLE_RATE = 0x0400U, PA_STREAM_PEAK_DETECT = 0x0800U, PA_STREAM_START_MUTED = 0x1000U, PA_STREAM_ADJUST_LATENCY = 0x2000U, PA_STREAM_EARLY_REQUESTS = 0x4000U, PA_STREAM_DONT_INHIBIT_AUTO_SUSPEND = 0x8000U, PA_STREAM_START_UNMUTED = 0x10000U, PA_STREAM_FAIL_ON_SUSPEND = 0x20000U, PA_STREAM_RELATIVE_VOLUME = 0x40000U, PA_STREAM_PASSTHROUGH = 0x80000U } pa_stream_flags_t;
enum { PA_STREAM_NOT_MONOTONOUS = 0 };




















typedef struct pa_buffer_attr {
	uint32_t maxlength;
	uint32_t tlength;
	uint32_t prebuf;
	uint32_t minreq;
	uint32_t fragsize;
} pa_buffer_attr;
typedef enum pa_error_code { PA_OK = 0, PA_ERR_ACCESS, PA_ERR_COMMAND, PA_ERR_INVALID, PA_ERR_EXIST, PA_ERR_NOENTITY, PA_ERR_CONNECTIONREFUSED, PA_ERR_PROTOCOL, PA_ERR_TIMEOUT, PA_ERR_AUTHKEY, PA_ERR_INTERNAL, PA_ERR_CONNECTIONTERMINATED, PA_ERR_KILLED, PA_ERR_INVALIDSERVER, PA_ERR_MODINITFAILED, PA_ERR_BADSTATE, PA_ERR_NODATA, PA_ERR_VERSION, PA_ERR_TOOLARGE, PA_ERR_NOTSUPPORTED, PA_ERR_UNKNOWN, PA_ERR_NOEXTENSION, PA_ERR_OBSOLETE, PA_ERR_NOTIMPLEMENTED, PA_ERR_FORKED, PA_ERR_IO, PA_ERR_BUSY, PA_ERR_MAX } pa_error_code_t;


























typedef enum pa_subscription_mask { PA_SUBSCRIPTION_MASK_NULL = 0x0000U, PA_SUBSCRIPTION_MASK_SINK = 0x0001U, PA_SUBSCRIPTION_MASK_SOURCE = 0x0002U, PA_SUBSCRIPTION_MASK_SINK_INPUT = 0x0004U, PA_SUBSCRIPTION_MASK_SOURCE_OUTPUT = 0x0008U, PA_SUBSCRIPTION_MASK_MODULE = 0x0010U, PA_SUBSCRIPTION_MASK_CLIENT = 0x0020U, PA_SUBSCRIPTION_MASK_SAMPLE_CACHE = 0x0040U, PA_SUBSCRIPTION_MASK_SERVER = 0x0080U, PA_SUBSCRIPTION_MASK_AUTOLOAD = 0x0100U, PA_SUBSCRIPTION_MASK_CARD = 0x0200U, PA_SUBSCRIPTION_MASK_ALL = 0x02ffU } pa_subscription_mask_t;
typedef enum pa_subscription_event_type { PA_SUBSCRIPTION_EVENT_SINK = 0x0000U, PA_SUBSCRIPTION_EVENT_SOURCE = 0x0001U, PA_SUBSCRIPTION_EVENT_SINK_INPUT = 0x0002U, PA_SUBSCRIPTION_EVENT_SOURCE_OUTPUT = 0x0003U, PA_SUBSCRIPTION_EVENT_MODULE = 0x0004U, PA_SUBSCRIPTION_EVENT_CLIENT = 0x0005U, PA_SUBSCRIPTION_EVENT_SAMPLE_CACHE = 0x0006U, PA_SUBSCRIPTION_EVENT_SERVER = 0x0007U, PA_SUBSCRIPTION_EVENT_AUTOLOAD = 0x0008U, PA_SUBSCRIPTION_EVENT_CARD = 0x0009U, PA_SUBSCRIPTION_EVENT_FACILITY_MASK = 0x000FU, PA_SUBSCRIPTION_EVENT_NEW = 0x0000U, PA_SUBSCRIPTION_EVENT_CHANGE = 0x0010U, PA_SUBSCRIPTION_EVENT_REMOVE = 0x0020U, PA_SUBSCRIPTION_EVENT_TYPE_MASK = 0x0030U } pa_subscription_event_type_t;



























typedef struct pa_timing_info {
	struct timeval timestamp;
	int synchronized_clocks;
	pa_usec_t sink_usec;
	pa_usec_t source_usec;
	pa_usec_t transport_usec;
	int playing;
	int write_index_corrupt;
	int64_t write_index;
	int read_index_corrupt;
	int64_t read_index;
	pa_usec_t configured_sink_usec;
	pa_usec_t configured_source_usec;
	int64_t since_underrun;
} pa_timing_info;
typedef struct pa_spawn_api {
	void (*prefork)(void);
	void (*postfork)(void);
	void (*atfork)(void);
} pa_spawn_api;
typedef enum pa_seek_mode { PA_SEEK_RELATIVE = 0, PA_SEEK_ABSOLUTE = 1, PA_SEEK_RELATIVE_ON_READ = 2, PA_SEEK_RELATIVE_END = 3 } pa_seek_mode_t;




typedef enum pa_sink_flags { PA_SINK_NOFLAGS = 0x0000U, PA_SINK_HW_VOLUME_CTRL = 0x0001U, PA_SINK_LATENCY = 0x0002U, PA_SINK_HARDWARE = 0x0004U, PA_SINK_NETWORK = 0x0008U, PA_SINK_HW_MUTE_CTRL = 0x0010U, PA_SINK_DECIBEL_VOLUME = 0x0020U, PA_SINK_FLAT_VOLUME = 0x0040U, PA_SINK_DYNAMIC_LATENCY = 0x0080U, PA_SINK_SET_FORMATS = 0x0100U, } pa_sink_flags_t;









typedef enum pa_sink_state { PA_SINK_INVALID_STATE = -1, PA_SINK_RUNNING = 0, PA_SINK_IDLE = 1, PA_SINK_SUSPENDED = 2, PA_SINK_INIT = -2, PA_SINK_UNLINKED = -3 } pa_sink_state_t;
  






typedef enum pa_source_flags { PA_SOURCE_NOFLAGS = 0x0000U, PA_SOURCE_HW_VOLUME_CTRL = 0x0001U, PA_SOURCE_LATENCY = 0x0002U, PA_SOURCE_HARDWARE = 0x0004U, PA_SOURCE_NETWORK = 0x0008U, PA_SOURCE_HW_MUTE_CTRL = 0x0010U, PA_SOURCE_DECIBEL_VOLUME = 0x0020U, PA_SOURCE_DYNAMIC_LATENCY = 0x0040U, PA_SOURCE_FLAT_VOLUME = 0x0080U, } pa_source_flags_t;








typedef enum pa_source_state { PA_SOURCE_INVALID_STATE = -1, PA_SOURCE_RUNNING = 0, PA_SOURCE_IDLE = 1, PA_SOURCE_SUSPENDED = 2, PA_SOURCE_INIT = -2, PA_SOURCE_UNLINKED = -3 } pa_source_state_t;
  






typedef void (*pa_free_cb_t)(void *p);
/* #define PA_STREAM_EVENT_REQUEST_CORK "request-cork" ### string, not number "\"request-cork\"" */
/* #define PA_STREAM_EVENT_REQUEST_UNCORK "request-uncork" ### string, not number "\"request-uncork\"" */
/* #define PA_STREAM_EVENT_FORMAT_LOST "format-lost" ### string, not number "\"format-lost\"" */
typedef enum pa_port_available { PA_PORT_AVAILABLE_UNKNOWN = 0, PA_PORT_AVAILABLE_NO = 1, PA_PORT_AVAILABLE_YES = 2, } pa_port_available_t;



typedef enum pa_device_port_type { PA_DEVICE_PORT_TYPE_UNKNOWN = 0, PA_DEVICE_PORT_TYPE_AUX = 1, PA_DEVICE_PORT_TYPE_SPEAKER = 2, PA_DEVICE_PORT_TYPE_HEADPHONES = 3, PA_DEVICE_PORT_TYPE_LINE = 4, PA_DEVICE_PORT_TYPE_MIC = 5, PA_DEVICE_PORT_TYPE_HEADSET = 6, PA_DEVICE_PORT_TYPE_HANDSET = 7, PA_DEVICE_PORT_TYPE_EARPIECE = 8, PA_DEVICE_PORT_TYPE_SPDIF = 9, PA_DEVICE_PORT_TYPE_HDMI = 10, PA_DEVICE_PORT_TYPE_TV = 11, PA_DEVICE_PORT_TYPE_RADIO = 12, PA_DEVICE_PORT_TYPE_VIDEO = 13, PA_DEVICE_PORT_TYPE_USB = 14, PA_DEVICE_PORT_TYPE_BLUETOOTH = 15, PA_DEVICE_PORT_TYPE_PORTABLE = 16, PA_DEVICE_PORT_TYPE_HANDSFREE = 17, PA_DEVICE_PORT_TYPE_CAR = 18, PA_DEVICE_PORT_TYPE_HIFI = 19, PA_DEVICE_PORT_TYPE_PHONE = 20, PA_DEVICE_PORT_TYPE_NETWORK = 21, PA_DEVICE_PORT_TYPE_ANALOG = 22, } pa_device_port_type_t;
/* +++ END   /usr/include/pulse/def.h */
int pa_direction_valid(pa_direction_t direction) __attribute__ ((const));
const char *pa_direction_to_string(pa_direction_t direction);
/* ++ END   /usr/include/pulse/direction.h */
/* ++ BEGIN /usr/include/pulse/mainloop-api.h */
enum { foomainloopapihfoo = 1 };
/* +++ BEGIN /usr/include/x86_64-linux-gnu/sys/time.h */
]] require 'ffi.req' 'c.sys.time' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/sys/time.h */
/* +++ BEGIN /usr/include/pulse/cdecl.h */
/* +++ END   /usr/include/pulse/cdecl.h */
/* +++ BEGIN /usr/include/pulse/version.h */
/* +++ END   /usr/include/pulse/version.h */
typedef struct pa_mainloop_api pa_mainloop_api;
typedef enum pa_io_event_flags { PA_IO_EVENT_NULL = 0, PA_IO_EVENT_INPUT = 1, PA_IO_EVENT_OUTPUT = 2, PA_IO_EVENT_HANGUP = 4, PA_IO_EVENT_ERROR = 8 } pa_io_event_flags_t;
typedef struct pa_io_event pa_io_event;
typedef void (*pa_io_event_cb_t)(pa_mainloop_api*ea, pa_io_event* e, int fd, pa_io_event_flags_t events, void *userdata);
typedef void (*pa_io_event_destroy_cb_t)(pa_mainloop_api*a, pa_io_event *e, void *userdata);
typedef struct pa_time_event pa_time_event;
typedef void (*pa_time_event_cb_t)(pa_mainloop_api*a, pa_time_event* e, const struct timeval *tv, void *userdata);
typedef void (*pa_time_event_destroy_cb_t)(pa_mainloop_api*a, pa_time_event *e, void *userdata);
typedef struct pa_defer_event pa_defer_event;
typedef void (*pa_defer_event_cb_t)(pa_mainloop_api*a, pa_defer_event* e, void *userdata);
typedef void (*pa_defer_event_destroy_cb_t)(pa_mainloop_api*a, pa_defer_event *e, void *userdata);
struct pa_mainloop_api {
	void *userdata;
	pa_io_event* (*io_new)(pa_mainloop_api*a, int fd, pa_io_event_flags_t events, pa_io_event_cb_t cb, void *userdata);
	void (*io_enable)(pa_io_event* e, pa_io_event_flags_t events);
	void (*io_free)(pa_io_event* e);
	void (*io_set_destroy)(pa_io_event *e, pa_io_event_destroy_cb_t cb);
	pa_time_event* (*time_new)(pa_mainloop_api*a, const struct timeval *tv, pa_time_event_cb_t cb, void *userdata);
	void (*time_restart)(pa_time_event* e, const struct timeval *tv);
	void (*time_free)(pa_time_event* e);
	void (*time_set_destroy)(pa_time_event *e, pa_time_event_destroy_cb_t cb);
	pa_defer_event* (*defer_new)(pa_mainloop_api*a, pa_defer_event_cb_t cb, void *userdata);
	void (*defer_enable)(pa_defer_event* e, int b);
	void (*defer_free)(pa_defer_event* e);
	void (*defer_set_destroy)(pa_defer_event *e, pa_defer_event_destroy_cb_t cb);
	void (*quit)(pa_mainloop_api*a, int retval);
};
void pa_mainloop_api_once(pa_mainloop_api*m, void (*callback)(pa_mainloop_api*m, void *userdata), void *userdata);
/* ++ END   /usr/include/pulse/mainloop-api.h */
/* ++ BEGIN /usr/include/pulse/sample.h */
/* ++ END   /usr/include/pulse/sample.h */
/* ++ BEGIN /usr/include/pulse/format.h */
enum { fooformathfoo = 1 };
/* +++ BEGIN /usr/include/pulse/cdecl.h */
/* +++ END   /usr/include/pulse/cdecl.h */
/* +++ BEGIN /usr/include/pulse/gccmacro.h */
/* +++ END   /usr/include/pulse/gccmacro.h */
/* +++ BEGIN /usr/include/pulse/proplist.h */
enum { foopulseproplisthfoo = 1 };
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++++ END   /usr/include/x86_64-linux-gnu/sys/types.h */
/* ++++ BEGIN /usr/include/pulse/cdecl.h */
/* ++++ END   /usr/include/pulse/cdecl.h */
/* ++++ BEGIN /usr/include/pulse/gccmacro.h */
/* ++++ END   /usr/include/pulse/gccmacro.h */
/* ++++ BEGIN /usr/include/pulse/version.h */
/* ++++ END   /usr/include/pulse/version.h */
/* #define PA_PROP_MEDIA_NAME                     "media.name" ### string, not number "\"media.name\"" */
/* #define PA_PROP_MEDIA_TITLE                    "media.title" ### string, not number "\"media.title\"" */
/* #define PA_PROP_MEDIA_ARTIST                   "media.artist" ### string, not number "\"media.artist\"" */
/* #define PA_PROP_MEDIA_COPYRIGHT                "media.copyright" ### string, not number "\"media.copyright\"" */
/* #define PA_PROP_MEDIA_SOFTWARE                 "media.software" ### string, not number "\"media.software\"" */
/* #define PA_PROP_MEDIA_LANGUAGE                 "media.language" ### string, not number "\"media.language\"" */
/* #define PA_PROP_MEDIA_FILENAME                 "media.filename" ### string, not number "\"media.filename\"" */
/* #define PA_PROP_MEDIA_ICON                     "media.icon" ### string, not number "\"media.icon\"" */
/* #define PA_PROP_MEDIA_ICON_NAME                "media.icon_name" ### string, not number "\"media.icon_name\"" */
/* #define PA_PROP_MEDIA_ROLE                     "media.role" ### string, not number "\"media.role\"" */
/* #define PA_PROP_FILTER_WANT                    "filter.want" ### string, not number "\"filter.want\"" */
/* #define PA_PROP_FILTER_APPLY                   "filter.apply" ### string, not number "\"filter.apply\"" */
/* #define PA_PROP_FILTER_SUPPRESS                "filter.suppress" ### string, not number "\"filter.suppress\"" */
/* #define PA_PROP_EVENT_ID                       "event.id" ### string, not number "\"event.id\"" */
/* #define PA_PROP_EVENT_DESCRIPTION              "event.description" ### string, not number "\"event.description\"" */
/* #define PA_PROP_EVENT_MOUSE_X                  "event.mouse.x" ### string, not number "\"event.mouse.x\"" */
/* #define PA_PROP_EVENT_MOUSE_Y                  "event.mouse.y" ### string, not number "\"event.mouse.y\"" */
/* #define PA_PROP_EVENT_MOUSE_HPOS               "event.mouse.hpos" ### string, not number "\"event.mouse.hpos\"" */
/* #define PA_PROP_EVENT_MOUSE_VPOS               "event.mouse.vpos" ### string, not number "\"event.mouse.vpos\"" */
/* #define PA_PROP_EVENT_MOUSE_BUTTON             "event.mouse.button" ### string, not number "\"event.mouse.button\"" */
/* #define PA_PROP_WINDOW_NAME                    "window.name" ### string, not number "\"window.name\"" */
/* #define PA_PROP_WINDOW_ID                      "window.id" ### string, not number "\"window.id\"" */
/* #define PA_PROP_WINDOW_ICON                    "window.icon" ### string, not number "\"window.icon\"" */
/* #define PA_PROP_WINDOW_ICON_NAME               "window.icon_name" ### string, not number "\"window.icon_name\"" */
/* #define PA_PROP_WINDOW_X                       "window.x" ### string, not number "\"window.x\"" */
/* #define PA_PROP_WINDOW_Y                       "window.y" ### string, not number "\"window.y\"" */
/* #define PA_PROP_WINDOW_WIDTH                   "window.width" ### string, not number "\"window.width\"" */
/* #define PA_PROP_WINDOW_HEIGHT                  "window.height" ### string, not number "\"window.height\"" */
/* #define PA_PROP_WINDOW_HPOS                    "window.hpos" ### string, not number "\"window.hpos\"" */
/* #define PA_PROP_WINDOW_VPOS                    "window.vpos" ### string, not number "\"window.vpos\"" */
/* #define PA_PROP_WINDOW_DESKTOP                 "window.desktop" ### string, not number "\"window.desktop\"" */
/* #define PA_PROP_WINDOW_X11_DISPLAY             "window.x11.display" ### string, not number "\"window.x11.display\"" */
/* #define PA_PROP_WINDOW_X11_SCREEN              "window.x11.screen" ### string, not number "\"window.x11.screen\"" */
/* #define PA_PROP_WINDOW_X11_MONITOR             "window.x11.monitor" ### string, not number "\"window.x11.monitor\"" */
/* #define PA_PROP_WINDOW_X11_XID                 "window.x11.xid" ### string, not number "\"window.x11.xid\"" */
/* #define PA_PROP_APPLICATION_NAME               "application.name" ### string, not number "\"application.name\"" */
/* #define PA_PROP_APPLICATION_ID                 "application.id" ### string, not number "\"application.id\"" */
/* #define PA_PROP_APPLICATION_VERSION            "application.version" ### string, not number "\"application.version\"" */
/* #define PA_PROP_APPLICATION_ICON               "application.icon" ### string, not number "\"application.icon\"" */
/* #define PA_PROP_APPLICATION_ICON_NAME          "application.icon_name" ### string, not number "\"application.icon_name\"" */
/* #define PA_PROP_APPLICATION_LANGUAGE           "application.language" ### string, not number "\"application.language\"" */
/* #define PA_PROP_APPLICATION_PROCESS_ID         "application.process.id" ### string, not number "\"application.process.id\"" */
/* #define PA_PROP_APPLICATION_PROCESS_BINARY     "application.process.binary" ### string, not number "\"application.process.binary\"" */
/* #define PA_PROP_APPLICATION_PROCESS_USER       "application.process.user" ### string, not number "\"application.process.user\"" */
/* #define PA_PROP_APPLICATION_PROCESS_HOST       "application.process.host" ### string, not number "\"application.process.host\"" */
/* #define PA_PROP_APPLICATION_PROCESS_MACHINE_ID "application.process.machine_id" ### string, not number "\"application.process.machine_id\"" */
/* #define PA_PROP_APPLICATION_PROCESS_SESSION_ID "application.process.session_id" ### string, not number "\"application.process.session_id\"" */
/* #define PA_PROP_DEVICE_STRING                  "device.string" ### string, not number "\"device.string\"" */
/* #define PA_PROP_DEVICE_API                     "device.api" ### string, not number "\"device.api\"" */
/* #define PA_PROP_DEVICE_DESCRIPTION             "device.description" ### string, not number "\"device.description\"" */
/* #define PA_PROP_DEVICE_BUS_PATH                "device.bus_path" ### string, not number "\"device.bus_path\"" */
/* #define PA_PROP_DEVICE_SERIAL                  "device.serial" ### string, not number "\"device.serial\"" */
/* #define PA_PROP_DEVICE_VENDOR_ID               "device.vendor.id" ### string, not number "\"device.vendor.id\"" */
/* #define PA_PROP_DEVICE_VENDOR_NAME             "device.vendor.name" ### string, not number "\"device.vendor.name\"" */
/* #define PA_PROP_DEVICE_PRODUCT_ID              "device.product.id" ### string, not number "\"device.product.id\"" */
/* #define PA_PROP_DEVICE_PRODUCT_NAME            "device.product.name" ### string, not number "\"device.product.name\"" */
/* #define PA_PROP_DEVICE_CLASS                   "device.class" ### string, not number "\"device.class\"" */
/* #define PA_PROP_DEVICE_FORM_FACTOR             "device.form_factor" ### string, not number "\"device.form_factor\"" */
/* #define PA_PROP_DEVICE_BUS                     "device.bus" ### string, not number "\"device.bus\"" */
/* #define PA_PROP_DEVICE_ICON                    "device.icon" ### string, not number "\"device.icon\"" */
/* #define PA_PROP_DEVICE_ICON_NAME               "device.icon_name" ### string, not number "\"device.icon_name\"" */
/* #define PA_PROP_DEVICE_ACCESS_MODE             "device.access_mode" ### string, not number "\"device.access_mode\"" */
/* #define PA_PROP_DEVICE_MASTER_DEVICE           "device.master_device" ### string, not number "\"device.master_device\"" */
/* #define PA_PROP_DEVICE_BUFFERING_BUFFER_SIZE   "device.buffering.buffer_size" ### string, not number "\"device.buffering.buffer_size\"" */
/* #define PA_PROP_DEVICE_BUFFERING_FRAGMENT_SIZE "device.buffering.fragment_size" ### string, not number "\"device.buffering.fragment_size\"" */
/* #define PA_PROP_DEVICE_PROFILE_NAME            "device.profile.name" ### string, not number "\"device.profile.name\"" */
/* #define PA_PROP_DEVICE_INTENDED_ROLES          "device.intended_roles" ### string, not number "\"device.intended_roles\"" */
/* #define PA_PROP_DEVICE_PROFILE_DESCRIPTION     "device.profile.description" ### string, not number "\"device.profile.description\"" */
/* #define PA_PROP_MODULE_AUTHOR                  "module.author" ### string, not number "\"module.author\"" */
/* #define PA_PROP_MODULE_DESCRIPTION             "module.description" ### string, not number "\"module.description\"" */
/* #define PA_PROP_MODULE_USAGE                   "module.usage" ### string, not number "\"module.usage\"" */
/* #define PA_PROP_MODULE_VERSION                 "module.version" ### string, not number "\"module.version\"" */
/* #define PA_PROP_FORMAT_SAMPLE_FORMAT           "format.sample_format" ### string, not number "\"format.sample_format\"" */
/* #define PA_PROP_FORMAT_RATE                    "format.rate" ### string, not number "\"format.rate\"" */
/* #define PA_PROP_FORMAT_CHANNELS                "format.channels" ### string, not number "\"format.channels\"" */
/* #define PA_PROP_FORMAT_CHANNEL_MAP             "format.channel_map" ### string, not number "\"format.channel_map\"" */
/* #define PA_PROP_CONTEXT_FORCE_DISABLE_SHM      "context.force.disable.shm" ### string, not number "\"context.force.disable.shm\"" */
/* #define PA_PROP_BLUETOOTH_CODEC                "bluetooth.codec" ### string, not number "\"bluetooth.codec\"" */
typedef struct pa_proplist pa_proplist;
pa_proplist* pa_proplist_new(void);
void pa_proplist_free(pa_proplist* p);
int pa_proplist_key_valid(const char *key);
int pa_proplist_sets(pa_proplist *p, const char *key, const char *value);
int pa_proplist_setp(pa_proplist *p, const char *pair);
int pa_proplist_setf(pa_proplist *p, const char *key, const char *format, ...) __attribute__ ((format (printf, 3, 4)));
int pa_proplist_set(pa_proplist *p, const char *key, const void *data, size_t nbytes);
const char *pa_proplist_gets(const pa_proplist *p, const char *key);
int pa_proplist_get(const pa_proplist *p, const char *key, const void **data, size_t *nbytes);
typedef enum pa_update_mode { PA_UPDATE_SET , PA_UPDATE_MERGE , PA_UPDATE_REPLACE } pa_update_mode_t;



void pa_proplist_update(pa_proplist *p, pa_update_mode_t mode, const pa_proplist *other);
int pa_proplist_unset(pa_proplist *p, const char *key);
int pa_proplist_unset_many(pa_proplist *p, const char * const keys[]);
const char *pa_proplist_iterate(const pa_proplist *p, void **state);
char *pa_proplist_to_string(const pa_proplist *p);
char *pa_proplist_to_string_sep(const pa_proplist *p, const char *sep);
pa_proplist *pa_proplist_from_string(const char *str);
int pa_proplist_contains(const pa_proplist *p, const char *key);
void pa_proplist_clear(pa_proplist *p);
pa_proplist* pa_proplist_copy(const pa_proplist *p);
unsigned pa_proplist_size(const pa_proplist *p);
int pa_proplist_isempty(const pa_proplist *p);
int pa_proplist_equal(const pa_proplist *a, const pa_proplist *b);
/* +++ END   /usr/include/pulse/proplist.h */
/* +++ BEGIN /usr/include/pulse/sample.h */
/* +++ END   /usr/include/pulse/sample.h */
/* +++ BEGIN /usr/include/pulse/channelmap.h */
enum { foochannelmaphfoo = 1 };
/* ++++ BEGIN /usr/include/pulse/sample.h */
/* ++++ END   /usr/include/pulse/sample.h */
/* ++++ BEGIN /usr/include/pulse/cdecl.h */
/* ++++ END   /usr/include/pulse/cdecl.h */
/* ++++ BEGIN /usr/include/pulse/gccmacro.h */
/* ++++ END   /usr/include/pulse/gccmacro.h */
/* ++++ BEGIN /usr/include/pulse/version.h */
/* ++++ END   /usr/include/pulse/version.h */
typedef enum pa_channel_position { PA_CHANNEL_POSITION_INVALID = -1, PA_CHANNEL_POSITION_MONO = 0, PA_CHANNEL_POSITION_FRONT_LEFT, PA_CHANNEL_POSITION_FRONT_RIGHT, PA_CHANNEL_POSITION_FRONT_CENTER, PA_CHANNEL_POSITION_LEFT = PA_CHANNEL_POSITION_FRONT_LEFT, PA_CHANNEL_POSITION_RIGHT = PA_CHANNEL_POSITION_FRONT_RIGHT, PA_CHANNEL_POSITION_CENTER = PA_CHANNEL_POSITION_FRONT_CENTER, PA_CHANNEL_POSITION_REAR_CENTER, PA_CHANNEL_POSITION_REAR_LEFT, PA_CHANNEL_POSITION_REAR_RIGHT, PA_CHANNEL_POSITION_LFE, PA_CHANNEL_POSITION_SUBWOOFER = PA_CHANNEL_POSITION_LFE, PA_CHANNEL_POSITION_FRONT_LEFT_OF_CENTER, PA_CHANNEL_POSITION_FRONT_RIGHT_OF_CENTER, PA_CHANNEL_POSITION_SIDE_LEFT, PA_CHANNEL_POSITION_SIDE_RIGHT, PA_CHANNEL_POSITION_AUX0, PA_CHANNEL_POSITION_AUX1, PA_CHANNEL_POSITION_AUX2, PA_CHANNEL_POSITION_AUX3, PA_CHANNEL_POSITION_AUX4, PA_CHANNEL_POSITION_AUX5, PA_CHANNEL_POSITION_AUX6, PA_CHANNEL_POSITION_AUX7, PA_CHANNEL_POSITION_AUX8, PA_CHANNEL_POSITION_AUX9, PA_CHANNEL_POSITION_AUX10, PA_CHANNEL_POSITION_AUX11, PA_CHANNEL_POSITION_AUX12, PA_CHANNEL_POSITION_AUX13, PA_CHANNEL_POSITION_AUX14, PA_CHANNEL_POSITION_AUX15, PA_CHANNEL_POSITION_AUX16, PA_CHANNEL_POSITION_AUX17, PA_CHANNEL_POSITION_AUX18, PA_CHANNEL_POSITION_AUX19, PA_CHANNEL_POSITION_AUX20, PA_CHANNEL_POSITION_AUX21, PA_CHANNEL_POSITION_AUX22, PA_CHANNEL_POSITION_AUX23, PA_CHANNEL_POSITION_AUX24, PA_CHANNEL_POSITION_AUX25, PA_CHANNEL_POSITION_AUX26, PA_CHANNEL_POSITION_AUX27, PA_CHANNEL_POSITION_AUX28, PA_CHANNEL_POSITION_AUX29, PA_CHANNEL_POSITION_AUX30, PA_CHANNEL_POSITION_AUX31, PA_CHANNEL_POSITION_TOP_CENTER, PA_CHANNEL_POSITION_TOP_FRONT_LEFT, PA_CHANNEL_POSITION_TOP_FRONT_RIGHT, PA_CHANNEL_POSITION_TOP_FRONT_CENTER, PA_CHANNEL_POSITION_TOP_REAR_LEFT, PA_CHANNEL_POSITION_TOP_REAR_RIGHT, PA_CHANNEL_POSITION_TOP_REAR_CENTER, PA_CHANNEL_POSITION_MAX } pa_channel_position_t;

























































typedef uint64_t pa_channel_position_mask_t;
typedef enum pa_channel_map_def { PA_CHANNEL_MAP_AIFF, PA_CHANNEL_MAP_ALSA, PA_CHANNEL_MAP_AUX, PA_CHANNEL_MAP_WAVEEX, PA_CHANNEL_MAP_OSS, PA_CHANNEL_MAP_DEF_MAX, PA_CHANNEL_MAP_DEFAULT = PA_CHANNEL_MAP_AIFF } pa_channel_map_def_t;







typedef struct pa_channel_map {
	uint8_t channels;
	pa_channel_position_t map[32U];
} pa_channel_map;
pa_channel_map* pa_channel_map_init(pa_channel_map *m);
pa_channel_map* pa_channel_map_init_mono(pa_channel_map *m);
pa_channel_map* pa_channel_map_init_stereo(pa_channel_map *m);
pa_channel_map* pa_channel_map_init_auto(pa_channel_map *m, unsigned channels, pa_channel_map_def_t def);
pa_channel_map* pa_channel_map_init_extend(pa_channel_map *m, unsigned channels, pa_channel_map_def_t def);
const char* pa_channel_position_to_string(pa_channel_position_t pos) __attribute__ ((pure));
pa_channel_position_t pa_channel_position_from_string(const char *s) __attribute__ ((pure));
const char* pa_channel_position_to_pretty_string(pa_channel_position_t pos);
enum { PA_CHANNEL_MAP_SNPRINT_MAX = 336 };
char* pa_channel_map_snprint(char *s, size_t l, const pa_channel_map *map);
pa_channel_map *pa_channel_map_parse(pa_channel_map *map, const char *s);
int pa_channel_map_equal(const pa_channel_map *a, const pa_channel_map *b) __attribute__ ((pure));
int pa_channel_map_valid(const pa_channel_map *map) __attribute__ ((pure));
int pa_channel_map_compatible(const pa_channel_map *map, const pa_sample_spec *ss) __attribute__ ((pure));
int pa_channel_map_superset(const pa_channel_map *a, const pa_channel_map *b) __attribute__ ((pure));
int pa_channel_map_can_balance(const pa_channel_map *map) __attribute__ ((pure));
int pa_channel_map_can_fade(const pa_channel_map *map) __attribute__ ((pure));
int pa_channel_map_can_lfe_balance(const pa_channel_map *map) __attribute__ ((pure));
const char* pa_channel_map_to_name(const pa_channel_map *map) __attribute__ ((pure));
const char* pa_channel_map_to_pretty_name(const pa_channel_map *map) __attribute__ ((pure));
int pa_channel_map_has_position(const pa_channel_map *map, pa_channel_position_t p) __attribute__ ((pure));
pa_channel_position_mask_t pa_channel_map_mask(const pa_channel_map *map) __attribute__ ((pure));
/* +++ END   /usr/include/pulse/channelmap.h */
typedef enum pa_encoding { PA_ENCODING_ANY, PA_ENCODING_PCM, PA_ENCODING_AC3_IEC61937, PA_ENCODING_EAC3_IEC61937, PA_ENCODING_MPEG_IEC61937, PA_ENCODING_DTS_IEC61937, PA_ENCODING_MPEG2_AAC_IEC61937, PA_ENCODING_TRUEHD_IEC61937, PA_ENCODING_DTSHD_IEC61937, PA_ENCODING_MAX, PA_ENCODING_INVALID = -1, } pa_encoding_t;











const char *pa_encoding_to_string(pa_encoding_t e) __attribute__ ((const));
pa_encoding_t pa_encoding_from_string(const char *encoding);
typedef struct pa_format_info {
	pa_encoding_t encoding;
	pa_proplist *plist;
} pa_format_info;
pa_format_info* pa_format_info_new(void);
pa_format_info* pa_format_info_copy(const pa_format_info *src);
void pa_format_info_free(pa_format_info *f);
int pa_format_info_valid(const pa_format_info *f);
int pa_format_info_is_pcm(const pa_format_info *f);
int pa_format_info_is_compatible(const pa_format_info *first, const pa_format_info *second);
enum { PA_FORMAT_INFO_SNPRINT_MAX = 256 };
char *pa_format_info_snprint(char *s, size_t l, const pa_format_info *f);
pa_format_info* pa_format_info_from_string(const char *str);
pa_format_info* pa_format_info_from_sample_spec(const pa_sample_spec *ss, const pa_channel_map *map);
int pa_format_info_to_sample_spec(const pa_format_info *f, pa_sample_spec *ss, pa_channel_map *map);
typedef enum pa_prop_type_t { PA_PROP_TYPE_INT, PA_PROP_TYPE_INT_RANGE, PA_PROP_TYPE_INT_ARRAY, PA_PROP_TYPE_STRING, PA_PROP_TYPE_STRING_ARRAY, PA_PROP_TYPE_INVALID = -1, } pa_prop_type_t;






pa_prop_type_t pa_format_info_get_prop_type(const pa_format_info *f, const char *key);
int pa_format_info_get_prop_int(const pa_format_info *f, const char *key, int *v);
int pa_format_info_get_prop_int_range(const pa_format_info *f, const char *key, int *min, int *max);
int pa_format_info_get_prop_int_array(const pa_format_info *f, const char *key, int **values, int *n_values);
int pa_format_info_get_prop_string(const pa_format_info *f, const char *key, char **v);
int pa_format_info_get_prop_string_array(const pa_format_info *f, const char *key, char ***values, int *n_values);
void pa_format_info_free_string_array(char **values, int n_values);
int pa_format_info_get_sample_format(const pa_format_info *f, pa_sample_format_t *sf);
int pa_format_info_get_rate(const pa_format_info *f, uint32_t *rate);
int pa_format_info_get_channels(const pa_format_info *f, uint8_t *channels);
int pa_format_info_get_channel_map(const pa_format_info *f, pa_channel_map *map);
void pa_format_info_set_prop_int(pa_format_info *f, const char *key, int value);
void pa_format_info_set_prop_int_array(pa_format_info *f, const char *key, const int *values, int n_values);
void pa_format_info_set_prop_int_range(pa_format_info *f, const char *key, int min, int max);
void pa_format_info_set_prop_string(pa_format_info *f, const char *key, const char *value);
void pa_format_info_set_prop_string_array(pa_format_info *f, const char *key, const char **values, int n_values);
void pa_format_info_set_sample_format(pa_format_info *f, pa_sample_format_t sf);
void pa_format_info_set_rate(pa_format_info *f, int rate);
void pa_format_info_set_channels(pa_format_info *f, int channels);
void pa_format_info_set_channel_map(pa_format_info *f, const pa_channel_map *map);
/* ++ END   /usr/include/pulse/format.h */
/* ++ BEGIN /usr/include/pulse/def.h */
/* ++ END   /usr/include/pulse/def.h */
/* ++ BEGIN /usr/include/pulse/context.h */
enum { foocontexthfoo = 1 };
/* +++ BEGIN /usr/include/pulse/sample.h */
/* +++ END   /usr/include/pulse/sample.h */
/* +++ BEGIN /usr/include/pulse/def.h */
/* +++ END   /usr/include/pulse/def.h */
/* +++ BEGIN /usr/include/pulse/mainloop-api.h */
/* +++ END   /usr/include/pulse/mainloop-api.h */
/* +++ BEGIN /usr/include/pulse/cdecl.h */
/* +++ END   /usr/include/pulse/cdecl.h */
/* +++ BEGIN /usr/include/pulse/operation.h */
enum { foooperationhfoo = 1 };
/* ++++ BEGIN /usr/include/pulse/cdecl.h */
/* ++++ END   /usr/include/pulse/cdecl.h */
/* ++++ BEGIN /usr/include/pulse/def.h */
/* ++++ END   /usr/include/pulse/def.h */
/* ++++ BEGIN /usr/include/pulse/version.h */
/* ++++ END   /usr/include/pulse/version.h */
typedef struct pa_operation pa_operation;
typedef void (*pa_operation_notify_cb_t) (pa_operation *o, void *userdata);
pa_operation *pa_operation_ref(pa_operation *o);
void pa_operation_unref(pa_operation *o);
void pa_operation_cancel(pa_operation *o);
pa_operation_state_t pa_operation_get_state(const pa_operation *o);
void pa_operation_set_state_callback(pa_operation *o, pa_operation_notify_cb_t cb, void *userdata);
/* +++ END   /usr/include/pulse/operation.h */
/* +++ BEGIN /usr/include/pulse/proplist.h */
/* +++ END   /usr/include/pulse/proplist.h */
/* +++ BEGIN /usr/include/pulse/version.h */
/* +++ END   /usr/include/pulse/version.h */
typedef struct pa_context pa_context;
typedef void (*pa_context_notify_cb_t)(pa_context *c, void *userdata);
typedef void (*pa_context_success_cb_t) (pa_context *c, int success, void *userdata);
typedef void (*pa_context_event_cb_t)(pa_context *c, const char *name, pa_proplist *p, void *userdata);
pa_context *pa_context_new(pa_mainloop_api *mainloop, const char *name);
pa_context *pa_context_new_with_proplist(pa_mainloop_api *mainloop, const char *name, const pa_proplist *proplist);
void pa_context_unref(pa_context *c);
pa_context* pa_context_ref(pa_context *c);
void pa_context_set_state_callback(pa_context *c, pa_context_notify_cb_t cb, void *userdata);
void pa_context_set_event_callback(pa_context *p, pa_context_event_cb_t cb, void *userdata);
int pa_context_errno(const pa_context *c);
int pa_context_is_pending(const pa_context *c);
pa_context_state_t pa_context_get_state(const pa_context *c);
int pa_context_connect(pa_context *c, const char *server, pa_context_flags_t flags, const pa_spawn_api *api);
void pa_context_disconnect(pa_context *c);
pa_operation* pa_context_drain(pa_context *c, pa_context_notify_cb_t cb, void *userdata);
pa_operation* pa_context_exit_daemon(pa_context *c, pa_context_success_cb_t cb, void *userdata);
pa_operation* pa_context_set_default_sink(pa_context *c, const char *name, pa_context_success_cb_t cb, void *userdata);
pa_operation* pa_context_set_default_source(pa_context *c, const char *name, pa_context_success_cb_t cb, void *userdata);
int pa_context_is_local(const pa_context *c);
pa_operation* pa_context_set_name(pa_context *c, const char *name, pa_context_success_cb_t cb, void *userdata);
const char* pa_context_get_server(const pa_context *c);
uint32_t pa_context_get_protocol_version(const pa_context *c);
uint32_t pa_context_get_server_protocol_version(const pa_context *c);
pa_operation *pa_context_proplist_update(pa_context *c, pa_update_mode_t mode, const pa_proplist *p, pa_context_success_cb_t cb, void *userdata);
pa_operation *pa_context_proplist_remove(pa_context *c, const char *const keys[], pa_context_success_cb_t cb, void *userdata);
uint32_t pa_context_get_index(const pa_context *s);
pa_time_event* pa_context_rttime_new(const pa_context *c, pa_usec_t usec, pa_time_event_cb_t cb, void *userdata);
void pa_context_rttime_restart(const pa_context *c, pa_time_event *e, pa_usec_t usec);
size_t pa_context_get_tile_size(const pa_context *c, const pa_sample_spec *ss);
int pa_context_load_cookie_from_file(pa_context *c, const char *cookie_file_path);
/* ++ END   /usr/include/pulse/context.h */
/* ++ BEGIN /usr/include/pulse/stream.h */
enum { foostreamhfoo = 1 };
/* +++ BEGIN /usr/include/x86_64-linux-gnu/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/sys/types.h */
/* +++ BEGIN /usr/include/pulse/sample.h */
/* +++ END   /usr/include/pulse/sample.h */
/* +++ BEGIN /usr/include/pulse/format.h */
/* +++ END   /usr/include/pulse/format.h */
/* +++ BEGIN /usr/include/pulse/channelmap.h */
/* +++ END   /usr/include/pulse/channelmap.h */
/* +++ BEGIN /usr/include/pulse/volume.h */
enum { foovolumehfoo = 1 };
/* ++++ BEGIN /usr/include/inttypes.h */
]] require 'ffi.req' 'c.inttypes' ffi.cdef[[
/* ++++ END   /usr/include/inttypes.h */
/* ++++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/limits.h */
]] require 'ffi.req' 'c.limits' ffi.cdef[[
/* ++++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/limits.h */
/* ++++ BEGIN /usr/include/pulse/cdecl.h */
/* ++++ END   /usr/include/pulse/cdecl.h */
/* ++++ BEGIN /usr/include/pulse/gccmacro.h */
/* ++++ END   /usr/include/pulse/gccmacro.h */
/* ++++ BEGIN /usr/include/pulse/sample.h */
/* ++++ END   /usr/include/pulse/sample.h */
/* ++++ BEGIN /usr/include/pulse/channelmap.h */
/* ++++ END   /usr/include/pulse/channelmap.h */
/* ++++ BEGIN /usr/include/pulse/version.h */
/* ++++ END   /usr/include/pulse/version.h */
typedef uint32_t pa_volume_t;
/* #define PA_VOLUME_NORM ((pa_volume_t) 0x10000U) ### string, not number "((pa_volume_t) 0x10000U)" */
/* #define PA_VOLUME_MUTED ((pa_volume_t) 0U) ### string, not number "((pa_volume_t) 0U)" */
/* #define PA_VOLUME_MAX ((pa_volume_t) UINT32_MAX/2) ### string, not number "((pa_volume_t) UINT32_MAX/2)" */
/* #define PA_VOLUME_UI_MAX (pa_sw_volume_from_dB(+11.0)) ### string, not number "(pa_sw_volume_from_dB(+11.0))" */
/* #define PA_VOLUME_INVALID ((pa_volume_t) UINT32_MAX) ### string, not number "((pa_volume_t) UINT32_MAX)" */
typedef struct pa_cvolume {
	uint8_t channels;
	pa_volume_t values[32U];
} pa_cvolume;
int pa_cvolume_equal(const pa_cvolume *a, const pa_cvolume *b) __attribute__ ((pure));
pa_cvolume* pa_cvolume_init(pa_cvolume *a);
pa_cvolume* pa_cvolume_set(pa_cvolume *a, unsigned channels, pa_volume_t v);
enum { PA_CVOLUME_SNPRINT_MAX = 320 };
char *pa_cvolume_snprint(char *s, size_t l, const pa_cvolume *c);
enum { PA_SW_CVOLUME_SNPRINT_DB_MAX = 448 };
char *pa_sw_cvolume_snprint_dB(char *s, size_t l, const pa_cvolume *c);
enum { PA_CVOLUME_SNPRINT_VERBOSE_MAX = 1984 };
char *pa_cvolume_snprint_verbose(char *s, size_t l, const pa_cvolume *c, const pa_channel_map *map, int print_dB);
enum { PA_VOLUME_SNPRINT_MAX = 10 };
char *pa_volume_snprint(char *s, size_t l, pa_volume_t v);
enum { PA_SW_VOLUME_SNPRINT_DB_MAX = 11 };
char *pa_sw_volume_snprint_dB(char *s, size_t l, pa_volume_t v);
enum { PA_VOLUME_SNPRINT_VERBOSE_MAX = 35 };
char *pa_volume_snprint_verbose(char *s, size_t l, pa_volume_t v, int print_dB);
pa_volume_t pa_cvolume_avg(const pa_cvolume *a) __attribute__ ((pure));
pa_volume_t pa_cvolume_avg_mask(const pa_cvolume *a, const pa_channel_map *cm, pa_channel_position_mask_t mask) __attribute__ ((pure));
pa_volume_t pa_cvolume_max(const pa_cvolume *a) __attribute__ ((pure));
pa_volume_t pa_cvolume_max_mask(const pa_cvolume *a, const pa_channel_map *cm, pa_channel_position_mask_t mask) __attribute__ ((pure));
pa_volume_t pa_cvolume_min(const pa_cvolume *a) __attribute__ ((pure));
pa_volume_t pa_cvolume_min_mask(const pa_cvolume *a, const pa_channel_map *cm, pa_channel_position_mask_t mask) __attribute__ ((pure));
int pa_cvolume_valid(const pa_cvolume *v) __attribute__ ((pure));
int pa_cvolume_channels_equal_to(const pa_cvolume *a, pa_volume_t v) __attribute__ ((pure));
pa_volume_t pa_sw_volume_multiply(pa_volume_t a, pa_volume_t b) __attribute__ ((const));
pa_cvolume *pa_sw_cvolume_multiply(pa_cvolume *dest, const pa_cvolume *a, const pa_cvolume *b);
pa_cvolume *pa_sw_cvolume_multiply_scalar(pa_cvolume *dest, const pa_cvolume *a, pa_volume_t b);
pa_volume_t pa_sw_volume_divide(pa_volume_t a, pa_volume_t b) __attribute__ ((const));
pa_cvolume *pa_sw_cvolume_divide(pa_cvolume *dest, const pa_cvolume *a, const pa_cvolume *b);
pa_cvolume *pa_sw_cvolume_divide_scalar(pa_cvolume *dest, const pa_cvolume *a, pa_volume_t b);
pa_volume_t pa_sw_volume_from_dB(double f) __attribute__ ((const));
double pa_sw_volume_to_dB(pa_volume_t v) __attribute__ ((const));
pa_volume_t pa_sw_volume_from_linear(double v) __attribute__ ((const));
double pa_sw_volume_to_linear(pa_volume_t v) __attribute__ ((const));
/* #define PA_DECIBEL_MININFTY ((double) -200.0) ### string, not number "((double) -200.0)" */
pa_cvolume *pa_cvolume_remap(pa_cvolume *v, const pa_channel_map *from, const pa_channel_map *to);
int pa_cvolume_compatible(const pa_cvolume *v, const pa_sample_spec *ss) __attribute__ ((pure));
int pa_cvolume_compatible_with_channel_map(const pa_cvolume *v, const pa_channel_map *cm) __attribute__ ((pure));
float pa_cvolume_get_balance(const pa_cvolume *v, const pa_channel_map *map) __attribute__ ((pure));
pa_cvolume* pa_cvolume_set_balance(pa_cvolume *v, const pa_channel_map *map, float new_balance);
float pa_cvolume_get_fade(const pa_cvolume *v, const pa_channel_map *map) __attribute__ ((pure));
pa_cvolume* pa_cvolume_set_fade(pa_cvolume *v, const pa_channel_map *map, float new_fade);
float pa_cvolume_get_lfe_balance(const pa_cvolume *v, const pa_channel_map *map) __attribute__ ((pure));
pa_cvolume* pa_cvolume_set_lfe_balance(pa_cvolume *v, const pa_channel_map *map, float new_balance);
pa_cvolume* pa_cvolume_scale(pa_cvolume *v, pa_volume_t max);
pa_cvolume* pa_cvolume_scale_mask(pa_cvolume *v, pa_volume_t max, const pa_channel_map *cm, pa_channel_position_mask_t mask);
pa_cvolume* pa_cvolume_set_position(pa_cvolume *cv, const pa_channel_map *map, pa_channel_position_t t, pa_volume_t v);
pa_volume_t pa_cvolume_get_position(const pa_cvolume *cv, const pa_channel_map *map, pa_channel_position_t t) __attribute__ ((pure));
pa_cvolume* pa_cvolume_merge(pa_cvolume *dest, const pa_cvolume *a, const pa_cvolume *b);
pa_cvolume* pa_cvolume_inc_clamp(pa_cvolume *v, pa_volume_t inc, pa_volume_t limit);
pa_cvolume* pa_cvolume_inc(pa_cvolume *v, pa_volume_t inc);
pa_cvolume* pa_cvolume_dec(pa_cvolume *v, pa_volume_t dec);
/* +++ END   /usr/include/pulse/volume.h */
/* +++ BEGIN /usr/include/pulse/def.h */
/* +++ END   /usr/include/pulse/def.h */
/* +++ BEGIN /usr/include/pulse/cdecl.h */
/* +++ END   /usr/include/pulse/cdecl.h */
/* +++ BEGIN /usr/include/pulse/operation.h */
/* +++ END   /usr/include/pulse/operation.h */
/* +++ BEGIN /usr/include/pulse/context.h */
/* +++ END   /usr/include/pulse/context.h */
/* +++ BEGIN /usr/include/pulse/proplist.h */
/* +++ END   /usr/include/pulse/proplist.h */
typedef struct pa_stream pa_stream;
typedef void (*pa_stream_success_cb_t) (pa_stream*s, int success, void *userdata);
typedef void (*pa_stream_request_cb_t)(pa_stream *p, size_t nbytes, void *userdata);
typedef void (*pa_stream_notify_cb_t)(pa_stream *p, void *userdata);
typedef void (*pa_stream_event_cb_t)(pa_stream *p, const char *name, pa_proplist *pl, void *userdata);
pa_stream* pa_stream_new( pa_context *c , const char *name , const pa_sample_spec *ss , const pa_channel_map *map );
pa_stream* pa_stream_new_with_proplist( pa_context *c , const char *name , const pa_sample_spec *ss , const pa_channel_map *map , pa_proplist *p );
pa_stream *pa_stream_new_extended( pa_context *c , const char *name , pa_format_info * const * formats , unsigned int n_formats , pa_proplist *p );
void pa_stream_unref(pa_stream *s);
pa_stream *pa_stream_ref(pa_stream *s);
pa_stream_state_t pa_stream_get_state(const pa_stream *p);
pa_context* pa_stream_get_context(const pa_stream *p);
uint32_t pa_stream_get_index(const pa_stream *s);
uint32_t pa_stream_get_device_index(const pa_stream *s);
const char *pa_stream_get_device_name(const pa_stream *s);
int pa_stream_is_suspended(const pa_stream *s);
int pa_stream_is_corked(const pa_stream *s);
int pa_stream_connect_playback( pa_stream *s , const char *dev , const pa_buffer_attr *attr , pa_stream_flags_t flags , const pa_cvolume *volume , pa_stream *sync_stream );
int pa_stream_connect_record( pa_stream *s , const char *dev , const pa_buffer_attr *attr , pa_stream_flags_t flags );
int pa_stream_disconnect(pa_stream *s);
int pa_stream_begin_write( pa_stream *p, void **data, size_t *nbytes);
int pa_stream_cancel_write( pa_stream *p);
int pa_stream_write( pa_stream *p , const void *data , size_t nbytes , pa_free_cb_t free_cb , int64_t offset , pa_seek_mode_t seek );
int pa_stream_write_ext_free( pa_stream *p , const void *data , size_t nbytes , pa_free_cb_t free_cb , void *free_cb_data , int64_t offset , pa_seek_mode_t seek );
int pa_stream_peek( pa_stream *p , const void **data , size_t *nbytes );
int pa_stream_drop(pa_stream *p);
size_t pa_stream_writable_size(const pa_stream *p);
size_t pa_stream_readable_size(const pa_stream *p);
pa_operation* pa_stream_drain(pa_stream *s, pa_stream_success_cb_t cb, void *userdata);
pa_operation* pa_stream_update_timing_info(pa_stream *p, pa_stream_success_cb_t cb, void *userdata);
void pa_stream_set_state_callback(pa_stream *s, pa_stream_notify_cb_t cb, void *userdata);
void pa_stream_set_write_callback(pa_stream *p, pa_stream_request_cb_t cb, void *userdata);
void pa_stream_set_read_callback(pa_stream *p, pa_stream_request_cb_t cb, void *userdata);
void pa_stream_set_overflow_callback(pa_stream *p, pa_stream_notify_cb_t cb, void *userdata);
int64_t pa_stream_get_underflow_index(const pa_stream *p);
void pa_stream_set_underflow_callback(pa_stream *p, pa_stream_notify_cb_t cb, void *userdata);
void pa_stream_set_started_callback(pa_stream *p, pa_stream_notify_cb_t cb, void *userdata);
void pa_stream_set_latency_update_callback(pa_stream *p, pa_stream_notify_cb_t cb, void *userdata);
void pa_stream_set_moved_callback(pa_stream *p, pa_stream_notify_cb_t cb, void *userdata);
void pa_stream_set_suspended_callback(pa_stream *p, pa_stream_notify_cb_t cb, void *userdata);
void pa_stream_set_event_callback(pa_stream *p, pa_stream_event_cb_t cb, void *userdata);
void pa_stream_set_buffer_attr_callback(pa_stream *p, pa_stream_notify_cb_t cb, void *userdata);
pa_operation* pa_stream_cork(pa_stream *s, int b, pa_stream_success_cb_t cb, void *userdata);
pa_operation* pa_stream_flush(pa_stream *s, pa_stream_success_cb_t cb, void *userdata);
pa_operation* pa_stream_prebuf(pa_stream *s, pa_stream_success_cb_t cb, void *userdata);
pa_operation* pa_stream_trigger(pa_stream *s, pa_stream_success_cb_t cb, void *userdata);
pa_operation* pa_stream_set_name(pa_stream *s, const char *name, pa_stream_success_cb_t cb, void *userdata);
int pa_stream_get_time(pa_stream *s, pa_usec_t *r_usec);
int pa_stream_get_latency(pa_stream *s, pa_usec_t *r_usec, int *negative);
const pa_timing_info* pa_stream_get_timing_info(pa_stream *s);
const pa_sample_spec* pa_stream_get_sample_spec(pa_stream *s);
const pa_channel_map* pa_stream_get_channel_map(pa_stream *s);
const pa_format_info* pa_stream_get_format_info(const pa_stream *s);
const pa_buffer_attr* pa_stream_get_buffer_attr(pa_stream *s);
pa_operation *pa_stream_set_buffer_attr(pa_stream *s, const pa_buffer_attr *attr, pa_stream_success_cb_t cb, void *userdata);
pa_operation *pa_stream_update_sample_rate(pa_stream *s, uint32_t rate, pa_stream_success_cb_t cb, void *userdata);
pa_operation *pa_stream_proplist_update(pa_stream *s, pa_update_mode_t mode, pa_proplist *p, pa_stream_success_cb_t cb, void *userdata);
pa_operation *pa_stream_proplist_remove(pa_stream *s, const char *const keys[], pa_stream_success_cb_t cb, void *userdata);
int pa_stream_set_monitor_stream(pa_stream *s, uint32_t sink_input_idx);
uint32_t pa_stream_get_monitor_stream(const pa_stream *s);
/* ++ END   /usr/include/pulse/stream.h */
/* ++ BEGIN /usr/include/pulse/introspect.h */
enum { foointrospecthfoo = 1 };
/* +++ BEGIN /usr/include/inttypes.h */
]] require 'ffi.req' 'c.inttypes' ffi.cdef[[
/* +++ END   /usr/include/inttypes.h */
/* +++ BEGIN /usr/include/pulse/operation.h */
/* +++ END   /usr/include/pulse/operation.h */
/* +++ BEGIN /usr/include/pulse/context.h */
/* +++ END   /usr/include/pulse/context.h */
/* +++ BEGIN /usr/include/pulse/cdecl.h */
/* +++ END   /usr/include/pulse/cdecl.h */
/* +++ BEGIN /usr/include/pulse/gccmacro.h */
/* +++ END   /usr/include/pulse/gccmacro.h */
/* +++ BEGIN /usr/include/pulse/channelmap.h */
/* +++ END   /usr/include/pulse/channelmap.h */
/* +++ BEGIN /usr/include/pulse/volume.h */
/* +++ END   /usr/include/pulse/volume.h */
/* +++ BEGIN /usr/include/pulse/proplist.h */
/* +++ END   /usr/include/pulse/proplist.h */
/* +++ BEGIN /usr/include/pulse/format.h */
/* +++ END   /usr/include/pulse/format.h */
/* +++ BEGIN /usr/include/pulse/version.h */
/* +++ END   /usr/include/pulse/version.h */
typedef struct pa_sink_port_info {
	const char *name;
	const char *description;
	uint32_t priority;
	int available;
	const char *availability_group;
	uint32_t type;
} pa_sink_port_info;
typedef struct pa_sink_info {
	const char *name;
	uint32_t index;
	const char *description;
	pa_sample_spec sample_spec;
	pa_channel_map channel_map;
	uint32_t owner_module;
	pa_cvolume volume;
	int mute;
	uint32_t monitor_source;
	const char *monitor_source_name;
	pa_usec_t latency;
	const char *driver;
	pa_sink_flags_t flags;
	pa_proplist *proplist;
	pa_usec_t configured_latency;
	pa_volume_t base_volume;
	pa_sink_state_t state;
	uint32_t n_volume_steps;
	uint32_t card;
	uint32_t n_ports;
	pa_sink_port_info** ports;
	pa_sink_port_info* active_port;
	uint8_t n_formats;
	pa_format_info **formats;
} pa_sink_info;
typedef void (*pa_sink_info_cb_t)(pa_context *c, const pa_sink_info *i, int eol, void *userdata);
pa_operation* pa_context_get_sink_info_by_name(pa_context *c, const char *name, pa_sink_info_cb_t cb, void *userdata);
pa_operation* pa_context_get_sink_info_by_index(pa_context *c, uint32_t idx, pa_sink_info_cb_t cb, void *userdata);
pa_operation* pa_context_get_sink_info_list(pa_context *c, pa_sink_info_cb_t cb, void *userdata);
pa_operation* pa_context_set_sink_volume_by_index(pa_context *c, uint32_t idx, const pa_cvolume *volume, pa_context_success_cb_t cb, void *userdata);
pa_operation* pa_context_set_sink_volume_by_name(pa_context *c, const char *name, const pa_cvolume *volume, pa_context_success_cb_t cb, void *userdata);
pa_operation* pa_context_set_sink_mute_by_index(pa_context *c, uint32_t idx, int mute, pa_context_success_cb_t cb, void *userdata);
pa_operation* pa_context_set_sink_mute_by_name(pa_context *c, const char *name, int mute, pa_context_success_cb_t cb, void *userdata);
pa_operation* pa_context_suspend_sink_by_name(pa_context *c, const char *sink_name, int suspend, pa_context_success_cb_t cb, void* userdata);
pa_operation* pa_context_suspend_sink_by_index(pa_context *c, uint32_t idx, int suspend, pa_context_success_cb_t cb, void* userdata);
pa_operation* pa_context_set_sink_port_by_index(pa_context *c, uint32_t idx, const char*port, pa_context_success_cb_t cb, void *userdata);
pa_operation* pa_context_set_sink_port_by_name(pa_context *c, const char*name, const char*port, pa_context_success_cb_t cb, void *userdata);
typedef struct pa_source_port_info {
	const char *name;
	const char *description;
	uint32_t priority;
	int available;
	const char *availability_group;
	uint32_t type;
} pa_source_port_info;
typedef struct pa_source_info {
	const char *name;
	uint32_t index;
	const char *description;
	pa_sample_spec sample_spec;
	pa_channel_map channel_map;
	uint32_t owner_module;
	pa_cvolume volume;
	int mute;
	uint32_t monitor_of_sink;
	const char *monitor_of_sink_name;
	pa_usec_t latency;
	const char *driver;
	pa_source_flags_t flags;
	pa_proplist *proplist;
	pa_usec_t configured_latency;
	pa_volume_t base_volume;
	pa_source_state_t state;
	uint32_t n_volume_steps;
	uint32_t card;
	uint32_t n_ports;
	pa_source_port_info** ports;
	pa_source_port_info* active_port;
	uint8_t n_formats;
	pa_format_info **formats;
} pa_source_info;
typedef void (*pa_source_info_cb_t)(pa_context *c, const pa_source_info *i, int eol, void *userdata);
pa_operation* pa_context_get_source_info_by_name(pa_context *c, const char *name, pa_source_info_cb_t cb, void *userdata);
pa_operation* pa_context_get_source_info_by_index(pa_context *c, uint32_t idx, pa_source_info_cb_t cb, void *userdata);
pa_operation* pa_context_get_source_info_list(pa_context *c, pa_source_info_cb_t cb, void *userdata);
pa_operation* pa_context_set_source_volume_by_index(pa_context *c, uint32_t idx, const pa_cvolume *volume, pa_context_success_cb_t cb, void *userdata);
pa_operation* pa_context_set_source_volume_by_name(pa_context *c, const char *name, const pa_cvolume *volume, pa_context_success_cb_t cb, void *userdata);
pa_operation* pa_context_set_source_mute_by_index(pa_context *c, uint32_t idx, int mute, pa_context_success_cb_t cb, void *userdata);
pa_operation* pa_context_set_source_mute_by_name(pa_context *c, const char *name, int mute, pa_context_success_cb_t cb, void *userdata);
pa_operation* pa_context_suspend_source_by_name(pa_context *c, const char *source_name, int suspend, pa_context_success_cb_t cb, void* userdata);
pa_operation* pa_context_suspend_source_by_index(pa_context *c, uint32_t idx, int suspend, pa_context_success_cb_t cb, void* userdata);
pa_operation* pa_context_set_source_port_by_index(pa_context *c, uint32_t idx, const char*port, pa_context_success_cb_t cb, void *userdata);
pa_operation* pa_context_set_source_port_by_name(pa_context *c, const char*name, const char*port, pa_context_success_cb_t cb, void *userdata);
typedef struct pa_server_info {
	const char *user_name;
	const char *host_name;
	const char *server_version;
	const char *server_name;
	pa_sample_spec sample_spec;
	const char *default_sink_name;
	const char *default_source_name;
	uint32_t cookie;
	pa_channel_map channel_map;
} pa_server_info;
typedef void (*pa_server_info_cb_t) (pa_context *c, const pa_server_info*i, void *userdata);
pa_operation* pa_context_get_server_info(pa_context *c, pa_server_info_cb_t cb, void *userdata);
typedef struct pa_module_info {
	uint32_t index;
	const char*name, *argument;
	uint32_t n_used;
	int auto_unload;
	pa_proplist *proplist;
} pa_module_info;
typedef void (*pa_module_info_cb_t) (pa_context *c, const pa_module_info*i, int eol, void *userdata);
pa_operation* pa_context_get_module_info(pa_context *c, uint32_t idx, pa_module_info_cb_t cb, void *userdata);
pa_operation* pa_context_get_module_info_list(pa_context *c, pa_module_info_cb_t cb, void *userdata);
typedef void (*pa_context_index_cb_t)(pa_context *c, uint32_t idx, void *userdata);
pa_operation* pa_context_load_module(pa_context *c, const char*name, const char *argument, pa_context_index_cb_t cb, void *userdata);
pa_operation* pa_context_unload_module(pa_context *c, uint32_t idx, pa_context_success_cb_t cb, void *userdata);
typedef void (*pa_context_string_cb_t)(pa_context *c, int success, char *response, void *userdata);
pa_operation* pa_context_send_message_to_object(pa_context *c, const char *recipient_name, const char *message, const char *message_parameters, pa_context_string_cb_t cb, void *userdata);
typedef struct pa_client_info {
	uint32_t index;
	const char *name;
	uint32_t owner_module;
	const char *driver;
	pa_proplist *proplist;
} pa_client_info;
typedef void (*pa_client_info_cb_t) (pa_context *c, const pa_client_info*i, int eol, void *userdata);
pa_operation* pa_context_get_client_info(pa_context *c, uint32_t idx, pa_client_info_cb_t cb, void *userdata);
pa_operation* pa_context_get_client_info_list(pa_context *c, pa_client_info_cb_t cb, void *userdata);
pa_operation* pa_context_kill_client(pa_context *c, uint32_t idx, pa_context_success_cb_t cb, void *userdata);
typedef struct pa_card_profile_info {
	const char *name;
	const char *description;
	uint32_t n_sinks;
	uint32_t n_sources;
	uint32_t priority;
} pa_card_profile_info;
typedef struct pa_card_profile_info2 {
	const char *name;
	const char *description;
	uint32_t n_sinks;
	uint32_t n_sources;
	uint32_t priority;
	int available;
} pa_card_profile_info2;
typedef struct pa_card_port_info {
	const char *name;
	const char *description;
	uint32_t priority;
	int available;
	int direction;
	uint32_t n_profiles;
	pa_card_profile_info** profiles;
	pa_proplist *proplist;
	int64_t latency_offset;
	pa_card_profile_info2** profiles2;
	const char *availability_group;
	uint32_t type;
} pa_card_port_info;
typedef struct pa_card_info {
	uint32_t index;
	const char *name;
	uint32_t owner_module;
	const char *driver;
	uint32_t n_profiles;
	pa_card_profile_info* profiles;
	pa_card_profile_info* active_profile;
	pa_proplist *proplist;
	uint32_t n_ports;
	pa_card_port_info **ports;
	pa_card_profile_info2** profiles2;
	pa_card_profile_info2* active_profile2;
} pa_card_info;
typedef void (*pa_card_info_cb_t) (pa_context *c, const pa_card_info*i, int eol, void *userdata);
pa_operation* pa_context_get_card_info_by_index(pa_context *c, uint32_t idx, pa_card_info_cb_t cb, void *userdata);
pa_operation* pa_context_get_card_info_by_name(pa_context *c, const char *name, pa_card_info_cb_t cb, void *userdata);
pa_operation* pa_context_get_card_info_list(pa_context *c, pa_card_info_cb_t cb, void *userdata);
pa_operation* pa_context_set_card_profile_by_index(pa_context *c, uint32_t idx, const char*profile, pa_context_success_cb_t cb, void *userdata);
pa_operation* pa_context_set_card_profile_by_name(pa_context *c, const char*name, const char*profile, pa_context_success_cb_t cb, void *userdata);
pa_operation* pa_context_set_port_latency_offset(pa_context *c, const char *card_name, const char *port_name, int64_t offset, pa_context_success_cb_t cb, void *userdata);
typedef struct pa_sink_input_info {
	uint32_t index;
	const char *name;
	uint32_t owner_module;
	uint32_t client;
	uint32_t sink;
	pa_sample_spec sample_spec;
	pa_channel_map channel_map;
	pa_cvolume volume;
	pa_usec_t buffer_usec;
	pa_usec_t sink_usec;
	const char *resample_method;
	const char *driver;
	int mute;
	pa_proplist *proplist;
	int corked;
	int has_volume;
	int volume_writable;
	pa_format_info *format;
} pa_sink_input_info;
typedef void (*pa_sink_input_info_cb_t) (pa_context *c, const pa_sink_input_info *i, int eol, void *userdata);
pa_operation* pa_context_get_sink_input_info(pa_context *c, uint32_t idx, pa_sink_input_info_cb_t cb, void *userdata);
pa_operation* pa_context_get_sink_input_info_list(pa_context *c, pa_sink_input_info_cb_t cb, void *userdata);
pa_operation* pa_context_move_sink_input_by_name(pa_context *c, uint32_t idx, const char *sink_name, pa_context_success_cb_t cb, void* userdata);
pa_operation* pa_context_move_sink_input_by_index(pa_context *c, uint32_t idx, uint32_t sink_idx, pa_context_success_cb_t cb, void* userdata);
pa_operation* pa_context_set_sink_input_volume(pa_context *c, uint32_t idx, const pa_cvolume *volume, pa_context_success_cb_t cb, void *userdata);
pa_operation* pa_context_set_sink_input_mute(pa_context *c, uint32_t idx, int mute, pa_context_success_cb_t cb, void *userdata);
pa_operation* pa_context_kill_sink_input(pa_context *c, uint32_t idx, pa_context_success_cb_t cb, void *userdata);
typedef struct pa_source_output_info {
	uint32_t index;
	const char *name;
	uint32_t owner_module;
	uint32_t client;
	uint32_t source;
	pa_sample_spec sample_spec;
	pa_channel_map channel_map;
	pa_usec_t buffer_usec;
	pa_usec_t source_usec;
	const char *resample_method;
	const char *driver;
	pa_proplist *proplist;
	int corked;
	pa_cvolume volume;
	int mute;
	int has_volume;
	int volume_writable;
	pa_format_info *format;
} pa_source_output_info;
typedef void (*pa_source_output_info_cb_t) (pa_context *c, const pa_source_output_info *i, int eol, void *userdata);
pa_operation* pa_context_get_source_output_info(pa_context *c, uint32_t idx, pa_source_output_info_cb_t cb, void *userdata);
pa_operation* pa_context_get_source_output_info_list(pa_context *c, pa_source_output_info_cb_t cb, void *userdata);
pa_operation* pa_context_move_source_output_by_name(pa_context *c, uint32_t idx, const char *source_name, pa_context_success_cb_t cb, void* userdata);
pa_operation* pa_context_move_source_output_by_index(pa_context *c, uint32_t idx, uint32_t source_idx, pa_context_success_cb_t cb, void* userdata);
pa_operation* pa_context_set_source_output_volume(pa_context *c, uint32_t idx, const pa_cvolume *volume, pa_context_success_cb_t cb, void *userdata);
pa_operation* pa_context_set_source_output_mute(pa_context *c, uint32_t idx, int mute, pa_context_success_cb_t cb, void *userdata);
pa_operation* pa_context_kill_source_output(pa_context *c, uint32_t idx, pa_context_success_cb_t cb, void *userdata);
typedef struct pa_stat_info {
	uint32_t memblock_total;
	uint32_t memblock_total_size;
	uint32_t memblock_allocated;
	uint32_t memblock_allocated_size;
	uint32_t scache_size;
} pa_stat_info;
typedef void (*pa_stat_info_cb_t) (pa_context *c, const pa_stat_info *i, void *userdata);
pa_operation* pa_context_stat(pa_context *c, pa_stat_info_cb_t cb, void *userdata);
typedef struct pa_sample_info {
	uint32_t index;
	const char *name;
	pa_cvolume volume;
	pa_sample_spec sample_spec;
	pa_channel_map channel_map;
	pa_usec_t duration;
	uint32_t bytes;
	int lazy;
	const char *filename;
	pa_proplist *proplist;
} pa_sample_info;
typedef void (*pa_sample_info_cb_t)(pa_context *c, const pa_sample_info *i, int eol, void *userdata);
pa_operation* pa_context_get_sample_info_by_name(pa_context *c, const char *name, pa_sample_info_cb_t cb, void *userdata);
pa_operation* pa_context_get_sample_info_by_index(pa_context *c, uint32_t idx, pa_sample_info_cb_t cb, void *userdata);
pa_operation* pa_context_get_sample_info_list(pa_context *c, pa_sample_info_cb_t cb, void *userdata);
typedef enum pa_autoload_type { PA_AUTOLOAD_SINK = 0, PA_AUTOLOAD_SOURCE = 1 } pa_autoload_type_t;
typedef struct pa_autoload_info {
	uint32_t index;
	const char *name;
	pa_autoload_type_t type;
	const char *module;
	const char *argument;
} pa_autoload_info;
typedef void (*pa_autoload_info_cb_t)(pa_context *c, const pa_autoload_info *i, int eol, void *userdata);
pa_operation* pa_context_get_autoload_info_by_name(pa_context *c, const char *name, pa_autoload_type_t type, pa_autoload_info_cb_t cb, void *userdata) __attribute__ ((deprecated));
pa_operation* pa_context_get_autoload_info_by_index(pa_context *c, uint32_t idx, pa_autoload_info_cb_t cb, void *userdata) __attribute__ ((deprecated));
pa_operation* pa_context_get_autoload_info_list(pa_context *c, pa_autoload_info_cb_t cb, void *userdata) __attribute__ ((deprecated));
pa_operation* pa_context_add_autoload(pa_context *c, const char *name, pa_autoload_type_t type, const char *module, const char*argument, pa_context_index_cb_t, void* userdata) __attribute__ ((deprecated));
pa_operation* pa_context_remove_autoload_by_name(pa_context *c, const char *name, pa_autoload_type_t type, pa_context_success_cb_t cb, void* userdata) __attribute__ ((deprecated));
pa_operation* pa_context_remove_autoload_by_index(pa_context *c, uint32_t idx, pa_context_success_cb_t cb, void* userdata) __attribute__ ((deprecated));
/* ++ END   /usr/include/pulse/introspect.h */
/* ++ BEGIN /usr/include/pulse/subscribe.h */
enum { foosubscribehfoo = 1 };
/* +++ BEGIN /usr/include/inttypes.h */
]] require 'ffi.req' 'c.inttypes' ffi.cdef[[
/* +++ END   /usr/include/inttypes.h */
/* +++ BEGIN /usr/include/pulse/def.h */
/* +++ END   /usr/include/pulse/def.h */
/* +++ BEGIN /usr/include/pulse/context.h */
/* +++ END   /usr/include/pulse/context.h */
/* +++ BEGIN /usr/include/pulse/cdecl.h */
/* +++ END   /usr/include/pulse/cdecl.h */
/* +++ BEGIN /usr/include/pulse/version.h */
/* +++ END   /usr/include/pulse/version.h */
typedef void (*pa_context_subscribe_cb_t)(pa_context *c, pa_subscription_event_type_t t, uint32_t idx, void *userdata);
pa_operation* pa_context_subscribe(pa_context *c, pa_subscription_mask_t m, pa_context_success_cb_t cb, void *userdata);
void pa_context_set_subscribe_callback(pa_context *c, pa_context_subscribe_cb_t cb, void *userdata);
/* ++ END   /usr/include/pulse/subscribe.h */
/* ++ BEGIN /usr/include/pulse/scache.h */
enum { fooscachehfoo = 1 };
/* +++ BEGIN /usr/include/x86_64-linux-gnu/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/sys/types.h */
/* +++ BEGIN /usr/include/pulse/context.h */
/* +++ END   /usr/include/pulse/context.h */
/* +++ BEGIN /usr/include/pulse/stream.h */
/* +++ END   /usr/include/pulse/stream.h */
/* +++ BEGIN /usr/include/pulse/cdecl.h */
/* +++ END   /usr/include/pulse/cdecl.h */
/* +++ BEGIN /usr/include/pulse/version.h */
/* +++ END   /usr/include/pulse/version.h */
typedef void (*pa_context_play_sample_cb_t)(pa_context *c, uint32_t idx, void *userdata);
int pa_stream_connect_upload(pa_stream *s, size_t length);
int pa_stream_finish_upload(pa_stream *s);
pa_operation* pa_context_remove_sample(pa_context *c, const char *name, pa_context_success_cb_t cb, void *userdata);
pa_operation* pa_context_play_sample( pa_context *c , const char *name , const char *dev , pa_volume_t volume , pa_context_success_cb_t cb , void *userdata );
pa_operation* pa_context_play_sample_with_proplist( pa_context *c , const char *name , const char *dev , pa_volume_t volume , const pa_proplist *proplist , pa_context_play_sample_cb_t cb , void *userdata );
/* ++ END   /usr/include/pulse/scache.h */
/* ++ BEGIN /usr/include/pulse/version.h */
/* ++ END   /usr/include/pulse/version.h */
/* ++ BEGIN /usr/include/pulse/error.h */
enum { fooerrorhfoo = 1 };
/* +++ BEGIN /usr/include/pulse/cdecl.h */
/* +++ END   /usr/include/pulse/cdecl.h */
/* +++ BEGIN /usr/include/pulse/version.h */
/* +++ END   /usr/include/pulse/version.h */
const char* pa_strerror(int error);
/* ++ END   /usr/include/pulse/error.h */
/* ++ BEGIN /usr/include/pulse/operation.h */
/* ++ END   /usr/include/pulse/operation.h */
/* ++ BEGIN /usr/include/pulse/channelmap.h */
/* ++ END   /usr/include/pulse/channelmap.h */
/* ++ BEGIN /usr/include/pulse/volume.h */
/* ++ END   /usr/include/pulse/volume.h */
/* ++ BEGIN /usr/include/pulse/xmalloc.h */
enum { foomemoryhfoo = 1 };
/* +++ BEGIN /usr/include/x86_64-linux-gnu/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* +++ END   /usr/include/x86_64-linux-gnu/sys/types.h */
/* +++ BEGIN /usr/include/stdlib.h */
]] require 'ffi.req' 'c.stdlib' ffi.cdef[[
/* +++ END   /usr/include/stdlib.h */
/* +++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/limits.h */
]] require 'ffi.req' 'c.limits' ffi.cdef[[
/* +++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/limits.h */
/* +++ BEGIN /usr/include/assert.h */
/* ++++ BEGIN /usr/include/features.h */
]] require 'ffi.req' 'c.features' ffi.cdef[[
/* ++++ END   /usr/include/features.h */
extern void __assert_fail (const char *__assertion, const char *__file, unsigned int __line, const char *__function) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert_perror_fail (int __errnum, const char *__file, unsigned int __line, const char *__function) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
extern void __assert (const char *__assertion, const char *__file, int __line) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
enum { static_assert = 0 };
/* +++ END   /usr/include/assert.h */
/* +++ BEGIN /usr/include/pulse/cdecl.h */
/* +++ END   /usr/include/pulse/cdecl.h */
/* +++ BEGIN /usr/include/pulse/gccmacro.h */
/* +++ END   /usr/include/pulse/gccmacro.h */
/* +++ BEGIN /usr/include/pulse/version.h */
/* +++ END   /usr/include/pulse/version.h */
void* pa_xmalloc(size_t l) __attribute__ ((malloc));
void *pa_xmalloc0(size_t l) __attribute__ ((malloc));
void *pa_xrealloc(void *ptr, size_t size);
void pa_xfree(void *p);
char *pa_xstrdup(const char *s) __attribute__ ((malloc));
char *pa_xstrndup(const char *s, size_t l) __attribute__ ((malloc));
void* pa_xmemdup(const void *p, size_t l) __attribute__ ((malloc));
static void* _pa_xnew_internal(size_t n, size_t k) __attribute__ ((malloc));
 static void* _pa_xnew0_internal(size_t n, size_t k) __attribute__ ((malloc));
 static void* _pa_xnewdup_internal(const void *p, size_t n, size_t k) __attribute__ ((malloc));
static inline void* _pa_xnewdup_internal(const void *p, size_t n, size_t k) { ((void) sizeof ((n < 0x7fffffff/k) ? 1 : 0), __extension__ ({ if (n < 0x7fffffff/k) ; else __assert_fail (#n < 0x7fffffff/k, __FILE__, __LINE__, __extension__ __PRETTY_FUNCTION__); }));
return pa_xmemdup(p, n*k);
} static void* _pa_xrenew_internal(void *p, size_t n, size_t k) __attribute__ ((malloc));

/* ++ END   /usr/include/pulse/xmalloc.h */
/* ++ BEGIN /usr/include/pulse/utf8.h */
enum { fooutf8hfoo = 1 };
/* +++ BEGIN /usr/include/pulse/cdecl.h */
/* +++ END   /usr/include/pulse/cdecl.h */
/* +++ BEGIN /usr/include/pulse/gccmacro.h */
/* +++ END   /usr/include/pulse/gccmacro.h */
/* +++ BEGIN /usr/include/pulse/version.h */
/* +++ END   /usr/include/pulse/version.h */
char *pa_utf8_valid(const char *str) __attribute__ ((pure));
char *pa_ascii_valid(const char *str) __attribute__ ((pure));
char *pa_utf8_filter(const char *str);
char *pa_ascii_filter(const char *str);
char* pa_utf8_to_locale (const char *str);
char* pa_locale_to_utf8 (const char *str);
/* ++ END   /usr/include/pulse/utf8.h */
/* ++ BEGIN /usr/include/pulse/thread-mainloop.h */
enum { foothreadmainloophfoo = 1 };
/* +++ BEGIN /usr/include/pulse/mainloop-api.h */
/* +++ END   /usr/include/pulse/mainloop-api.h */
/* +++ BEGIN /usr/include/pulse/cdecl.h */
/* +++ END   /usr/include/pulse/cdecl.h */
/* +++ BEGIN /usr/include/pulse/version.h */
/* +++ END   /usr/include/pulse/version.h */
typedef struct pa_threaded_mainloop pa_threaded_mainloop;
pa_threaded_mainloop *pa_threaded_mainloop_new(void);
void pa_threaded_mainloop_free(pa_threaded_mainloop* m);
int pa_threaded_mainloop_start(pa_threaded_mainloop *m);
void pa_threaded_mainloop_stop(pa_threaded_mainloop *m);
void pa_threaded_mainloop_lock(pa_threaded_mainloop *m);
void pa_threaded_mainloop_unlock(pa_threaded_mainloop *m);
void pa_threaded_mainloop_wait(pa_threaded_mainloop *m);
void pa_threaded_mainloop_signal(pa_threaded_mainloop *m, int wait_for_accept);
void pa_threaded_mainloop_accept(pa_threaded_mainloop *m);
int pa_threaded_mainloop_get_retval(const pa_threaded_mainloop *m);
pa_mainloop_api* pa_threaded_mainloop_get_api(pa_threaded_mainloop*m);
int pa_threaded_mainloop_in_thread(pa_threaded_mainloop *m);
void pa_threaded_mainloop_set_name(pa_threaded_mainloop *m, const char *name);
void pa_threaded_mainloop_once_unlocked(pa_threaded_mainloop *m, void (*callback)(pa_threaded_mainloop *m, void *userdata), void *userdata);
/* ++ END   /usr/include/pulse/thread-mainloop.h */
/* ++ BEGIN /usr/include/pulse/mainloop.h */
enum { foomainloophfoo = 1 };
/* +++ BEGIN /usr/include/pulse/mainloop-api.h */
/* +++ END   /usr/include/pulse/mainloop-api.h */
/* +++ BEGIN /usr/include/pulse/cdecl.h */
/* +++ END   /usr/include/pulse/cdecl.h */
struct pollfd;
typedef struct pa_mainloop pa_mainloop;
pa_mainloop *pa_mainloop_new(void);
void pa_mainloop_free(pa_mainloop* m);
int pa_mainloop_prepare(pa_mainloop *m, int timeout);
int pa_mainloop_poll(pa_mainloop *m);
int pa_mainloop_dispatch(pa_mainloop *m);
int pa_mainloop_get_retval(const pa_mainloop *m);
int pa_mainloop_iterate(pa_mainloop *m, int block, int *retval);
int pa_mainloop_run(pa_mainloop *m, int *retval);
pa_mainloop_api* pa_mainloop_get_api(pa_mainloop*m);
void pa_mainloop_quit(pa_mainloop *m, int retval);
void pa_mainloop_wakeup(pa_mainloop *m);
typedef int (*pa_poll_func)(struct pollfd *ufds, unsigned long nfds, int timeout, void*userdata);
void pa_mainloop_set_poll_func(pa_mainloop *m, pa_poll_func poll_func, void *userdata);
/* ++ END   /usr/include/pulse/mainloop.h */
/* ++ BEGIN /usr/include/pulse/mainloop-signal.h */
enum { foomainloopsignalhfoo = 1 };
/* +++ BEGIN /usr/include/pulse/mainloop-api.h */
/* +++ END   /usr/include/pulse/mainloop-api.h */
/* +++ BEGIN /usr/include/pulse/cdecl.h */
/* +++ END   /usr/include/pulse/cdecl.h */
typedef struct pa_signal_event pa_signal_event;
typedef void (*pa_signal_cb_t) (pa_mainloop_api *api, pa_signal_event*e, int sig, void *userdata);
typedef void (*pa_signal_destroy_cb_t) (pa_mainloop_api *api, pa_signal_event*e, void *userdata);
int pa_signal_init(pa_mainloop_api *api);
void pa_signal_done(void);
pa_signal_event* pa_signal_new(int sig, pa_signal_cb_t callback, void *userdata);
void pa_signal_free(pa_signal_event *e);
void pa_signal_set_destroy(pa_signal_event *e, pa_signal_destroy_cb_t callback);
/* ++ END   /usr/include/pulse/mainloop-signal.h */
/* ++ BEGIN /usr/include/pulse/util.h */
enum { fooutilhfoo = 1 };
/* +++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* +++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
/* +++ BEGIN /usr/include/pulse/cdecl.h */
/* +++ END   /usr/include/pulse/cdecl.h */
/* +++ BEGIN /usr/include/pulse/version.h */
/* +++ END   /usr/include/pulse/version.h */
char *pa_get_user_name(char *s, size_t l);
char *pa_get_host_name(char *s, size_t l);
char *pa_get_fqdn(char *s, size_t l);
char *pa_get_home_dir(char *s, size_t l);
char *pa_get_binary_name(char *s, size_t l);
char *pa_path_get_filename(const char *p);
int pa_msleep(unsigned long t);
int pa_thread_make_realtime(int rtprio);
/* ++ END   /usr/include/pulse/util.h */
/* ++ BEGIN /usr/include/pulse/timeval.h */
enum { footimevalhfoo = 1 };
/* +++ BEGIN /usr/include/pulse/cdecl.h */
/* +++ END   /usr/include/pulse/cdecl.h */
/* +++ BEGIN /usr/include/pulse/gccmacro.h */
/* +++ END   /usr/include/pulse/gccmacro.h */
/* +++ BEGIN /usr/include/pulse/sample.h */
/* +++ END   /usr/include/pulse/sample.h */
/* +++ BEGIN /usr/include/pulse/version.h */
/* +++ END   /usr/include/pulse/version.h */
/* #define PA_MSEC_PER_SEC ((pa_usec_t) 1000ULL) ### string, not number "((pa_usec_t) 1000ULL)" */
/* #define PA_USEC_PER_SEC ((pa_usec_t) 1000000ULL) ### string, not number "((pa_usec_t) 1000000ULL)" */
/* #define PA_NSEC_PER_SEC ((unsigned long long) 1000000000ULL) ### string, not number "((unsigned long long) 1000000000ULL)" */
/* #define PA_USEC_PER_MSEC ((pa_usec_t) 1000ULL) ### string, not number "((pa_usec_t) 1000ULL)" */
/* #define PA_NSEC_PER_MSEC ((unsigned long long) 1000000ULL) ### string, not number "((unsigned long long) 1000000ULL)" */
/* #define PA_NSEC_PER_USEC ((unsigned long long) 1000ULL) ### string, not number "((unsigned long long) 1000ULL)" */
enum { PA_USEC_INVALID = -1 };
enum { PA_USEC_MAX = -2 };
struct timeval;
struct timeval *pa_gettimeofday(struct timeval *tv);
pa_usec_t pa_timeval_diff(const struct timeval *a, const struct timeval *b) __attribute__ ((pure));
int pa_timeval_cmp(const struct timeval *a, const struct timeval *b) __attribute__ ((pure));
pa_usec_t pa_timeval_age(const struct timeval *tv);
struct timeval* pa_timeval_add(struct timeval *tv, pa_usec_t v);
struct timeval* pa_timeval_sub(struct timeval *tv, pa_usec_t v);
struct timeval* pa_timeval_store(struct timeval *tv, pa_usec_t v);
pa_usec_t pa_timeval_load(const struct timeval *tv);
/* ++ END   /usr/include/pulse/timeval.h */
/* ++ BEGIN /usr/include/pulse/proplist.h */
/* ++ END   /usr/include/pulse/proplist.h */
/* ++ BEGIN /usr/include/pulse/rtclock.h */
enum { foortclockfoo = 1 };
/* +++ BEGIN /usr/include/pulse/cdecl.h */
/* +++ END   /usr/include/pulse/cdecl.h */
/* +++ BEGIN /usr/include/pulse/sample.h */
/* +++ END   /usr/include/pulse/sample.h */
pa_usec_t pa_rtclock_now(void);
/* ++ END   /usr/include/pulse/rtclock.h */
/* + END   /usr/include/pulse/pulseaudio.h */
]]
