local ffi = require 'ffi'
ffi.cdef[[
/* BEGIN /usr/include/AL/al.h */
enum { AL_AL_H = 1 };
enum { AL_API = 0 };
enum { AL_APIENTRY = 1 };
enum { OPENAL = 1 };
enum { ALAPI = 0 };
/* #define ALAPIENTRY                               AL_APIENTRY ### string, not number "AL_APIENTRY" */
enum { AL_INVALID = -1 };
enum { AL_ILLEGAL_ENUM = 0 };
enum { AL_ILLEGAL_COMMAND = 0 };
enum { AL_VERSION_1_0 = 1 };
enum { AL_VERSION_1_1 = 1 };
typedef char ALboolean;
typedef char ALchar;
typedef signed char ALbyte;
typedef unsigned char ALubyte;
typedef short ALshort;
typedef unsigned short ALushort;
typedef int ALint;
typedef unsigned int ALuint;
typedef int ALsizei;
typedef int ALenum;
typedef float ALfloat;
typedef double ALdouble;
typedef void ALvoid;
enum { AL_NONE = 0 };
enum { AL_FALSE = 0 };
enum { AL_TRUE = 1 };
enum { AL_SOURCE_RELATIVE = 514 };
enum { AL_CONE_INNER_ANGLE = 4097 };
enum { AL_CONE_OUTER_ANGLE = 4098 };
enum { AL_PITCH = 4099 };
enum { AL_POSITION = 4100 };
enum { AL_DIRECTION = 4101 };
enum { AL_VELOCITY = 4102 };
enum { AL_LOOPING = 4103 };
enum { AL_BUFFER = 4105 };
enum { AL_GAIN = 4106 };
enum { AL_MIN_GAIN = 4109 };
enum { AL_MAX_GAIN = 4110 };
enum { AL_ORIENTATION = 4111 };
enum { AL_SOURCE_STATE = 4112 };
enum { AL_INITIAL = 4113 };
enum { AL_PLAYING = 4114 };
enum { AL_PAUSED = 4115 };
enum { AL_STOPPED = 4116 };
enum { AL_BUFFERS_QUEUED = 4117 };
enum { AL_BUFFERS_PROCESSED = 4118 };
enum { AL_REFERENCE_DISTANCE = 4128 };
enum { AL_ROLLOFF_FACTOR = 4129 };
enum { AL_CONE_OUTER_GAIN = 4130 };
enum { AL_MAX_DISTANCE = 4131 };
enum { AL_SEC_OFFSET = 4132 };
enum { AL_SAMPLE_OFFSET = 4133 };
enum { AL_BYTE_OFFSET = 4134 };
enum { AL_SOURCE_TYPE = 4135 };
enum { AL_STATIC = 4136 };
enum { AL_STREAMING = 4137 };
enum { AL_UNDETERMINED = 4144 };
enum { AL_FORMAT_MONO8 = 4352 };
enum { AL_FORMAT_MONO16 = 4353 };
enum { AL_FORMAT_STEREO8 = 4354 };
enum { AL_FORMAT_STEREO16 = 4355 };
enum { AL_FREQUENCY = 8193 };
enum { AL_BITS = 8194 };
enum { AL_CHANNELS = 8195 };
enum { AL_SIZE = 8196 };
enum { AL_UNUSED = 8208 };
enum { AL_PENDING = 8209 };
enum { AL_PROCESSED = 8210 };
enum { AL_NO_ERROR = 0 };
enum { AL_INVALID_NAME = 40961 };
enum { AL_INVALID_ENUM = 40962 };
enum { AL_INVALID_VALUE = 40963 };
enum { AL_INVALID_OPERATION = 40964 };
enum { AL_OUT_OF_MEMORY = 40965 };
enum { AL_VENDOR = 45057 };
enum { AL_VERSION = 45058 };
enum { AL_RENDERER = 45059 };
enum { AL_EXTENSIONS = 45060 };
enum { AL_DOPPLER_FACTOR = 49152 };
extern void alDopplerFactor(ALfloat value);
enum { AL_DOPPLER_VELOCITY = 49153 };
extern void alDopplerVelocity(ALfloat value);
enum { AL_SPEED_OF_SOUND = 49155 };
extern void alSpeedOfSound(ALfloat value);
enum { AL_DISTANCE_MODEL = 53248 };
extern void alDistanceModel(ALenum distanceModel);
enum { AL_INVERSE_DISTANCE = 53249 };
enum { AL_INVERSE_DISTANCE_CLAMPED = 53250 };
enum { AL_LINEAR_DISTANCE = 53251 };
enum { AL_LINEAR_DISTANCE_CLAMPED = 53252 };
enum { AL_EXPONENT_DISTANCE = 53253 };
enum { AL_EXPONENT_DISTANCE_CLAMPED = 53254 };
extern void alEnable(ALenum capability);
extern void alDisable(ALenum capability);
extern ALboolean alIsEnabled(ALenum capability);
extern const ALchar* alGetString(ALenum param);
extern void alGetBooleanv(ALenum param, ALboolean *values);
extern void alGetIntegerv(ALenum param, ALint *values);
extern void alGetFloatv(ALenum param, ALfloat *values);
extern void alGetDoublev(ALenum param, ALdouble *values);
extern ALboolean alGetBoolean(ALenum param);
extern ALint alGetInteger(ALenum param);
extern ALfloat alGetFloat(ALenum param);
extern ALdouble alGetDouble(ALenum param);
extern ALenum alGetError(void);
extern ALboolean alIsExtensionPresent(const ALchar *extname);
extern void* alGetProcAddress(const ALchar *fname);
extern ALenum alGetEnumValue(const ALchar *ename);
extern void alListenerf(ALenum param, ALfloat value);
extern void alListener3f(ALenum param, ALfloat value1, ALfloat value2, ALfloat value3);
extern void alListenerfv(ALenum param, const ALfloat *values);
extern void alListeneri(ALenum param, ALint value);
extern void alListener3i(ALenum param, ALint value1, ALint value2, ALint value3);
extern void alListeneriv(ALenum param, const ALint *values);
extern void alGetListenerf(ALenum param, ALfloat *value);
extern void alGetListener3f(ALenum param, ALfloat *value1, ALfloat *value2, ALfloat *value3);
extern void alGetListenerfv(ALenum param, ALfloat *values);
extern void alGetListeneri(ALenum param, ALint *value);
extern void alGetListener3i(ALenum param, ALint *value1, ALint *value2, ALint *value3);
extern void alGetListeneriv(ALenum param, ALint *values);
extern void alGenSources(ALsizei n, ALuint *sources);
extern void alDeleteSources(ALsizei n, const ALuint *sources);
extern ALboolean alIsSource(ALuint source);
extern void alSourcef(ALuint source, ALenum param, ALfloat value);
extern void alSource3f(ALuint source, ALenum param, ALfloat value1, ALfloat value2, ALfloat value3);
extern void alSourcefv(ALuint source, ALenum param, const ALfloat *values);
extern void alSourcei(ALuint source, ALenum param, ALint value);
extern void alSource3i(ALuint source, ALenum param, ALint value1, ALint value2, ALint value3);
extern void alSourceiv(ALuint source, ALenum param, const ALint *values);
extern void alGetSourcef(ALuint source, ALenum param, ALfloat *value);
extern void alGetSource3f(ALuint source, ALenum param, ALfloat *value1, ALfloat *value2, ALfloat *value3);
extern void alGetSourcefv(ALuint source, ALenum param, ALfloat *values);
extern void alGetSourcei(ALuint source, ALenum param, ALint *value);
extern void alGetSource3i(ALuint source, ALenum param, ALint *value1, ALint *value2, ALint *value3);
extern void alGetSourceiv(ALuint source, ALenum param, ALint *values);
extern void alSourcePlayv(ALsizei n, const ALuint *sources);
extern void alSourceStopv(ALsizei n, const ALuint *sources);
extern void alSourceRewindv(ALsizei n, const ALuint *sources);
extern void alSourcePausev(ALsizei n, const ALuint *sources);
extern void alSourcePlay(ALuint source);
extern void alSourceStop(ALuint source);
extern void alSourceRewind(ALuint source);
extern void alSourcePause(ALuint source);
extern void alSourceQueueBuffers(ALuint source, ALsizei nb, const ALuint *buffers);
extern void alSourceUnqueueBuffers(ALuint source, ALsizei nb, ALuint *buffers);
extern void alGenBuffers(ALsizei n, ALuint *buffers);
extern void alDeleteBuffers(ALsizei n, const ALuint *buffers);
extern ALboolean alIsBuffer(ALuint buffer);
extern void alBufferData(ALuint buffer, ALenum format, const ALvoid *data, ALsizei size, ALsizei freq);
extern void alBufferf(ALuint buffer, ALenum param, ALfloat value);
extern void alBuffer3f(ALuint buffer, ALenum param, ALfloat value1, ALfloat value2, ALfloat value3);
extern void alBufferfv(ALuint buffer, ALenum param, const ALfloat *values);
extern void alBufferi(ALuint buffer, ALenum param, ALint value);
extern void alBuffer3i(ALuint buffer, ALenum param, ALint value1, ALint value2, ALint value3);
extern void alBufferiv(ALuint buffer, ALenum param, const ALint *values);
extern void alGetBufferf(ALuint buffer, ALenum param, ALfloat *value);
extern void alGetBuffer3f(ALuint buffer, ALenum param, ALfloat *value1, ALfloat *value2, ALfloat *value3);
extern void alGetBufferfv(ALuint buffer, ALenum param, ALfloat *values);
extern void alGetBufferi(ALuint buffer, ALenum param, ALint *value);
extern void alGetBuffer3i(ALuint buffer, ALenum param, ALint *value1, ALint *value2, ALint *value3);
extern void alGetBufferiv(ALuint buffer, ALenum param, ALint *values);
typedef void ( *LPALENABLE)(ALenum capability);
typedef void ( *LPALDISABLE)(ALenum capability);
typedef ALboolean ( *LPALISENABLED)(ALenum capability);
typedef const ALchar* ( *LPALGETSTRING)(ALenum param);
typedef void ( *LPALGETBOOLEANV)(ALenum param, ALboolean *values);
typedef void ( *LPALGETINTEGERV)(ALenum param, ALint *values);
typedef void ( *LPALGETFLOATV)(ALenum param, ALfloat *values);
typedef void ( *LPALGETDOUBLEV)(ALenum param, ALdouble *values);
typedef ALboolean ( *LPALGETBOOLEAN)(ALenum param);
typedef ALint ( *LPALGETINTEGER)(ALenum param);
typedef ALfloat ( *LPALGETFLOAT)(ALenum param);
typedef ALdouble ( *LPALGETDOUBLE)(ALenum param);
typedef ALenum ( *LPALGETERROR)(void);
typedef ALboolean ( *LPALISEXTENSIONPRESENT)(const ALchar *extname);
typedef void* ( *LPALGETPROCADDRESS)(const ALchar *fname);
typedef ALenum ( *LPALGETENUMVALUE)(const ALchar *ename);
typedef void ( *LPALLISTENERF)(ALenum param, ALfloat value);
typedef void ( *LPALLISTENER3F)(ALenum param, ALfloat value1, ALfloat value2, ALfloat value3);
typedef void ( *LPALLISTENERFV)(ALenum param, const ALfloat *values);
typedef void ( *LPALLISTENERI)(ALenum param, ALint value);
typedef void ( *LPALLISTENER3I)(ALenum param, ALint value1, ALint value2, ALint value3);
typedef void ( *LPALLISTENERIV)(ALenum param, const ALint *values);
typedef void ( *LPALGETLISTENERF)(ALenum param, ALfloat *value);
typedef void ( *LPALGETLISTENER3F)(ALenum param, ALfloat *value1, ALfloat *value2, ALfloat *value3);
typedef void ( *LPALGETLISTENERFV)(ALenum param, ALfloat *values);
typedef void ( *LPALGETLISTENERI)(ALenum param, ALint *value);
typedef void ( *LPALGETLISTENER3I)(ALenum param, ALint *value1, ALint *value2, ALint *value3);
typedef void ( *LPALGETLISTENERIV)(ALenum param, ALint *values);
typedef void ( *LPALGENSOURCES)(ALsizei n, ALuint *sources);
typedef void ( *LPALDELETESOURCES)(ALsizei n, const ALuint *sources);
typedef ALboolean ( *LPALISSOURCE)(ALuint source);
typedef void ( *LPALSOURCEF)(ALuint source, ALenum param, ALfloat value);
typedef void ( *LPALSOURCE3F)(ALuint source, ALenum param, ALfloat value1, ALfloat value2, ALfloat value3);
typedef void ( *LPALSOURCEFV)(ALuint source, ALenum param, const ALfloat *values);
typedef void ( *LPALSOURCEI)(ALuint source, ALenum param, ALint value);
typedef void ( *LPALSOURCE3I)(ALuint source, ALenum param, ALint value1, ALint value2, ALint value3);
typedef void ( *LPALSOURCEIV)(ALuint source, ALenum param, const ALint *values);
typedef void ( *LPALGETSOURCEF)(ALuint source, ALenum param, ALfloat *value);
typedef void ( *LPALGETSOURCE3F)(ALuint source, ALenum param, ALfloat *value1, ALfloat *value2, ALfloat *value3);
typedef void ( *LPALGETSOURCEFV)(ALuint source, ALenum param, ALfloat *values);
typedef void ( *LPALGETSOURCEI)(ALuint source, ALenum param, ALint *value);
typedef void ( *LPALGETSOURCE3I)(ALuint source, ALenum param, ALint *value1, ALint *value2, ALint *value3);
typedef void ( *LPALGETSOURCEIV)(ALuint source, ALenum param, ALint *values);
typedef void ( *LPALSOURCEPLAYV)(ALsizei n, const ALuint *sources);
typedef void ( *LPALSOURCESTOPV)(ALsizei n, const ALuint *sources);
typedef void ( *LPALSOURCEREWINDV)(ALsizei n, const ALuint *sources);
typedef void ( *LPALSOURCEPAUSEV)(ALsizei n, const ALuint *sources);
typedef void ( *LPALSOURCEPLAY)(ALuint source);
typedef void ( *LPALSOURCESTOP)(ALuint source);
typedef void ( *LPALSOURCEREWIND)(ALuint source);
typedef void ( *LPALSOURCEPAUSE)(ALuint source);
typedef void ( *LPALSOURCEQUEUEBUFFERS)(ALuint source, ALsizei nb, const ALuint *buffers);
typedef void ( *LPALSOURCEUNQUEUEBUFFERS)(ALuint source, ALsizei nb, ALuint *buffers);
typedef void ( *LPALGENBUFFERS)(ALsizei n, ALuint *buffers);
typedef void ( *LPALDELETEBUFFERS)(ALsizei n, const ALuint *buffers);
typedef ALboolean ( *LPALISBUFFER)(ALuint buffer);
typedef void ( *LPALBUFFERDATA)(ALuint buffer, ALenum format, const ALvoid *data, ALsizei size, ALsizei freq);
typedef void ( *LPALBUFFERF)(ALuint buffer, ALenum param, ALfloat value);
typedef void ( *LPALBUFFER3F)(ALuint buffer, ALenum param, ALfloat value1, ALfloat value2, ALfloat value3);
typedef void ( *LPALBUFFERFV)(ALuint buffer, ALenum param, const ALfloat *values);
typedef void ( *LPALBUFFERI)(ALuint buffer, ALenum param, ALint value);
typedef void ( *LPALBUFFER3I)(ALuint buffer, ALenum param, ALint value1, ALint value2, ALint value3);
typedef void ( *LPALBUFFERIV)(ALuint buffer, ALenum param, const ALint *values);
typedef void ( *LPALGETBUFFERF)(ALuint buffer, ALenum param, ALfloat *value);
typedef void ( *LPALGETBUFFER3F)(ALuint buffer, ALenum param, ALfloat *value1, ALfloat *value2, ALfloat *value3);
typedef void ( *LPALGETBUFFERFV)(ALuint buffer, ALenum param, ALfloat *values);
typedef void ( *LPALGETBUFFERI)(ALuint buffer, ALenum param, ALint *value);
typedef void ( *LPALGETBUFFER3I)(ALuint buffer, ALenum param, ALint *value1, ALint *value2, ALint *value3);
typedef void ( *LPALGETBUFFERIV)(ALuint buffer, ALenum param, ALint *values);
typedef void ( *LPALDOPPLERFACTOR)(ALfloat value);
typedef void ( *LPALDOPPLERVELOCITY)(ALfloat value);
typedef void ( *LPALSPEEDOFSOUND)(ALfloat value);
typedef void ( *LPALDISTANCEMODEL)(ALenum distanceModel);
/* END   /usr/include/AL/al.h */
/* BEGIN /usr/include/AL/alc.h */
enum { AL_ALC_H = 1 };
enum { ALC_API = 0 };
enum { ALC_APIENTRY = 1 };
enum { ALCAPI = 0 };
/* #define ALCAPIENTRY                              ALC_APIENTRY ### string, not number "ALC_APIENTRY" */
enum { ALC_INVALID = 0 };
enum { ALC_VERSION_0_1 = 1 };
typedef struct ALCdevice_struct ALCdevice;
typedef struct ALCcontext_struct ALCcontext;
typedef char ALCboolean;
typedef char ALCchar;
typedef signed char ALCbyte;
typedef unsigned char ALCubyte;
typedef short ALCshort;
typedef unsigned short ALCushort;
typedef int ALCint;
typedef unsigned int ALCuint;
typedef int ALCsizei;
typedef int ALCenum;
typedef float ALCfloat;
typedef double ALCdouble;
typedef void ALCvoid;
enum { ALC_FALSE = 0 };
enum { ALC_TRUE = 1 };
enum { ALC_FREQUENCY = 4103 };
enum { ALC_REFRESH = 4104 };
enum { ALC_SYNC = 4105 };
enum { ALC_MONO_SOURCES = 4112 };
enum { ALC_STEREO_SOURCES = 4113 };
enum { ALC_NO_ERROR = 0 };
enum { ALC_INVALID_DEVICE = 40961 };
enum { ALC_INVALID_CONTEXT = 40962 };
enum { ALC_INVALID_ENUM = 40963 };
enum { ALC_INVALID_VALUE = 40964 };
enum { ALC_OUT_OF_MEMORY = 40965 };
enum { ALC_MAJOR_VERSION = 4096 };
enum { ALC_MINOR_VERSION = 4097 };
enum { ALC_ATTRIBUTES_SIZE = 4098 };
enum { ALC_ALL_ATTRIBUTES = 4099 };
enum { ALC_DEFAULT_DEVICE_SPECIFIER = 4100 };
enum { ALC_DEVICE_SPECIFIER = 4101 };
enum { ALC_EXTENSIONS = 4102 };
enum { ALC_EXT_CAPTURE = 1 };
enum { ALC_CAPTURE_DEVICE_SPECIFIER = 784 };
enum { ALC_CAPTURE_DEFAULT_DEVICE_SPECIFIER = 785 };
enum { ALC_CAPTURE_SAMPLES = 786 };
enum { ALC_ENUMERATE_ALL_EXT = 1 };
enum { ALC_DEFAULT_ALL_DEVICES_SPECIFIER = 4114 };
enum { ALC_ALL_DEVICES_SPECIFIER = 4115 };
extern ALCcontext* alcCreateContext(ALCdevice *device, const ALCint* attrlist);
extern ALCboolean alcMakeContextCurrent(ALCcontext *context);
extern void alcProcessContext(ALCcontext *context);
extern void alcSuspendContext(ALCcontext *context);
extern void alcDestroyContext(ALCcontext *context);
extern ALCcontext* alcGetCurrentContext(void);
extern ALCdevice* alcGetContextsDevice(ALCcontext *context);
extern ALCdevice* alcOpenDevice(const ALCchar *devicename);
extern ALCboolean alcCloseDevice(ALCdevice *device);
extern ALCenum alcGetError(ALCdevice *device);
extern ALCboolean alcIsExtensionPresent(ALCdevice *device, const ALCchar *extname);
extern void* alcGetProcAddress(ALCdevice *device, const ALCchar *funcname);
extern ALCenum alcGetEnumValue(ALCdevice *device, const ALCchar *enumname);
extern const ALCchar* alcGetString(ALCdevice *device, ALCenum param);
extern void alcGetIntegerv(ALCdevice *device, ALCenum param, ALCsizei size, ALCint *values);
extern ALCdevice* alcCaptureOpenDevice(const ALCchar *devicename, ALCuint frequency, ALCenum format, ALCsizei buffersize);
extern ALCboolean alcCaptureCloseDevice(ALCdevice *device);
extern void alcCaptureStart(ALCdevice *device);
extern void alcCaptureStop(ALCdevice *device);
extern void alcCaptureSamples(ALCdevice *device, ALCvoid *buffer, ALCsizei samples);
typedef ALCcontext* ( *LPALCCREATECONTEXT)(ALCdevice *device, const ALCint *attrlist);
typedef ALCboolean ( *LPALCMAKECONTEXTCURRENT)(ALCcontext *context);
typedef void ( *LPALCPROCESSCONTEXT)(ALCcontext *context);
typedef void ( *LPALCSUSPENDCONTEXT)(ALCcontext *context);
typedef void ( *LPALCDESTROYCONTEXT)(ALCcontext *context);
typedef ALCcontext* ( *LPALCGETCURRENTCONTEXT)(void);
typedef ALCdevice* ( *LPALCGETCONTEXTSDEVICE)(ALCcontext *context);
typedef ALCdevice* ( *LPALCOPENDEVICE)(const ALCchar *devicename);
typedef ALCboolean ( *LPALCCLOSEDEVICE)(ALCdevice *device);
typedef ALCenum ( *LPALCGETERROR)(ALCdevice *device);
typedef ALCboolean ( *LPALCISEXTENSIONPRESENT)(ALCdevice *device, const ALCchar *extname);
typedef void* ( *LPALCGETPROCADDRESS)(ALCdevice *device, const ALCchar *funcname);
typedef ALCenum ( *LPALCGETENUMVALUE)(ALCdevice *device, const ALCchar *enumname);
typedef const ALCchar* ( *LPALCGETSTRING)(ALCdevice *device, ALCenum param);
typedef void ( *LPALCGETINTEGERV)(ALCdevice *device, ALCenum param, ALCsizei size, ALCint *values);
typedef ALCdevice* ( *LPALCCAPTUREOPENDEVICE)(const ALCchar *devicename, ALCuint frequency, ALCenum format, ALCsizei buffersize);
typedef ALCboolean ( *LPALCCAPTURECLOSEDEVICE)(ALCdevice *device);
typedef void ( *LPALCCAPTURESTART)(ALCdevice *device);
typedef void ( *LPALCCAPTURESTOP)(ALCdevice *device);
typedef void ( *LPALCCAPTURESAMPLES)(ALCdevice *device, ALCvoid *buffer, ALCsizei samples);
/* END   /usr/include/AL/alc.h */
]]
return require 'ffi.load' 'openal'
