local ffi = require 'ffi'
local sdl = require 'ffi.req' 'sdl'
ffi.cdef[[
typedef uint8_t Uint8;
typedef uint16_t Uint16;
typedef uint32_t Uint32;
typedef int8_t Sint8;
typedef int16_t Sint16;
typedef int32_t Sint32;


// SDL_audio.h


typedef Uint16 SDL_AudioFormat;

enum {
	SDL_AUDIO_MASK_BITSIZE       = (0xFF),
	SDL_AUDIO_MASK_DATATYPE      = (1<<8),
	SDL_AUDIO_MASK_ENDIAN        = (1<<12),
	SDL_AUDIO_MASK_SIGNED        = (1<<15),
/*
#define SDL_AUDIO_BITSIZE(x)         (x & SDL_AUDIO_MASK_BITSIZE)
#define SDL_AUDIO_ISFLOAT(x)         (x & SDL_AUDIO_MASK_DATATYPE)
#define SDL_AUDIO_ISBIGENDIAN(x)     (x & SDL_AUDIO_MASK_ENDIAN)
#define SDL_AUDIO_ISSIGNED(x)        (x & SDL_AUDIO_MASK_SIGNED)
#define SDL_AUDIO_ISINT(x)           (!SDL_AUDIO_ISFLOAT(x))
#define SDL_AUDIO_ISLITTLEENDIAN(x)  (!SDL_AUDIO_ISBIGENDIAN(x))
#define SDL_AUDIO_ISUNSIGNED(x)      (!SDL_AUDIO_ISSIGNED(x))
*/
	AUDIO_U8	= 0x0008,  /**< Unsigned 8-bit samples */
	AUDIO_S8	= 0x8008,  /**< Signed 8-bit samples */
	AUDIO_U16LSB	= 0x0010,  /**< Unsigned 16-bit samples */
	AUDIO_S16LSB	= 0x8010,  /**< Signed 16-bit samples */
	AUDIO_U16MSB	= 0x1010,  /**< As above, but big-endian byte order */
	AUDIO_S16MSB	= 0x9010,  /**< As above, but big-endian byte order */
	AUDIO_U16	= 0x0010,	//AUDIO_U16LSB
	AUDIO_S16	= 0x8010,	//AUDIO_S16LSB
	AUDIO_S32LSB	= 0x8020,  /**< 32-bit integer samples */
	AUDIO_S32MSB	= 0x9020,  /**< As above, but big-endian byte order */
	AUDIO_S32	= 0x8020,	//AUDIO_S32LSB
	AUDIO_F32LSB	= 0x8120,  /**< 32-bit floating point samples */
	AUDIO_F32MSB	= 0x9120,  /**< As above, but big-endian byte order */
	AUDIO_F32	= 0x8120,	//AUDIO_F32LSB
/*
#if SDL_BYTEORDER == SDL_LIL_ENDIAN
#define AUDIO_U16SYS	AUDIO_U16LSB
#define AUDIO_S16SYS	AUDIO_S16LSB
#define AUDIO_S32SYS	AUDIO_S32LSB
#define AUDIO_F32SYS	AUDIO_F32LSB
#else
#define AUDIO_U16SYS	AUDIO_U16MSB
#define AUDIO_S16SYS	AUDIO_S16MSB
#define AUDIO_S32SYS	AUDIO_S32MSB
#define AUDIO_F32SYS	AUDIO_F32MSB
#endif
*/
	SDL_AUDIO_ALLOW_FREQUENCY_CHANGE    = 0x00000001,
	SDL_AUDIO_ALLOW_FORMAT_CHANGE       = 0x00000002,
	SDL_AUDIO_ALLOW_CHANNELS_CHANGE     = 0x00000004,	
};
enum {
	SDL_AUDIO_ALLOW_ANY_CHANGE          = (SDL_AUDIO_ALLOW_FREQUENCY_CHANGE|SDL_AUDIO_ALLOW_FORMAT_CHANGE|SDL_AUDIO_ALLOW_CHANNELS_CHANGE)
};

typedef void (* SDL_AudioCallback) (void *userdata, Uint8 * stream, int len);

typedef struct 
{
    int freq;                   /**< DSP frequency -- samples per second */
    SDL_AudioFormat format;     /**< Audio data format */
    Uint8 channels;             /**< Number of channels: 1 mono, 2 stereo */
    Uint8 silence;              /**< Audio buffer silence value (calculated) */
    Uint16 samples;             /**< Audio buffer size in samples (power of 2) */
    Uint16 padding;             /**< Necessary for some compile environments */
    Uint32 size;                /**< Audio buffer size in bytes (calculated) */
    SDL_AudioCallback callback;
    void *userdata;
} SDL_AudioSpec;

typedef void (* SDL_AudioFilter) (struct SDL_AudioCVT * cvt, SDL_AudioFormat format);

typedef struct
{
    int needed;                 /**< Set to 1 if conversion possible */
    SDL_AudioFormat src_format; /**< Source audio format */
    SDL_AudioFormat dst_format; /**< Target audio format */
    double rate_incr;           /**< Rate conversion increment */
    Uint8 *buf;                 /**< Buffer to hold entire audio data */
    int len;                    /**< Length of original audio buffer */
    int len_cvt;                /**< Length of converted audio buffer */
    int len_mult;               /**< buffer must be len*len_mult big */
    double len_ratio;           /**< Given len, final size is len*len_ratio */
    SDL_AudioFilter filters[10];        /**< Filter list */
    int filter_index;           /**< Current audio conversion function */
} SDL_AudioCVT;

int SDL_GetNumAudioDrivers(void);
const char *SDL_GetAudioDriver(int index);

int SDL_AudioInit(const char *driver_name);
void SDL_AudioQuit(void);
const char *SDL_GetCurrentAudioDriver(void);
int SDL_OpenAudio(SDL_AudioSpec * desired, SDL_AudioSpec * obtained);

typedef Uint32 SDL_AudioDeviceID;

int SDL_GetNumAudioDevices(int iscapture);
const char *SDL_GetAudioDeviceName(int index, int iscapture);
SDL_AudioDeviceID SDL_OpenAudioDevice(const char *device, int iscapture, const SDL_AudioSpec * desired, SDL_AudioSpec * obtained, int allowed_changes);

SDL_AudioStatus SDL_GetAudioStatus(void);

SDL_AudioStatus SDL_GetAudioDeviceStatus(SDL_AudioDeviceID dev);

void SDL_PauseAudio(int pause_on);
void SDL_PauseAudioDevice(SDL_AudioDeviceID dev, int pause_on);
SDL_AudioSpec *SDL_LoadWAV_RW(SDL_RWops * src, int freesrc, SDL_AudioSpec * spec, Uint8 ** audio_buf, Uint32 * audio_len);

//#define SDL_LoadWAV(file, spec, audio_buf, audio_len) SDL_LoadWAV_RW(SDL_RWFromFile(file, "rb"),1, spec,audio_buf,audio_len)

void SDL_FreeWAV(Uint8 * audio_buf);
int SDL_BuildAudioCVT(SDL_AudioCVT * cvt, SDL_AudioFormat src_format, Uint8 src_channels, int src_rate, SDL_AudioFormat dst_format, Uint8 dst_channels, int dst_rate);
int SDL_ConvertAudio(SDL_AudioCVT * cvt);

enum {
	SDL_MIX_MAXVOLUME = 128,
};

void SDL_MixAudio(Uint8 * dst, const Uint8 * src, Uint32 len, int volume);
void SDL_MixAudioFormat(Uint8 * dst, const Uint8 * src, SDL_AudioFormat format, Uint32 len, int volume);
void SDL_LockAudio(void);
void SDL_LockAudioDevice(SDL_AudioDeviceID dev);
void SDL_UnlockAudio(void);
void SDL_UnlockAudioDevice(SDL_AudioDeviceID dev);
void SDL_CloseAudio(void);
void SDL_CloseAudioDevice(SDL_AudioDeviceID dev);
int SDL_AudioDeviceConnected(SDL_AudioDeviceID dev);

// SDL_mixer.h


enum {
	SDL_MIXER_MAJOR_VERSION	= 1,
	SDL_MIXER_MINOR_VERSION	= 2,
	SDL_MIXER_PATCHLEVEL    = 11,
	MIX_CHANNELS = 8,
	MIX_DEFAULT_FREQUENCY = 22050,
//	MIX_DEFAULT_FORMAT = ,
	MIX_DEFAULT_CHANNELS = 2,
	MIX_MAX_VOLUME = 128,
	MIX_CHANNEL_POST = -2,
};

const SDL_version * Mix_Linked_Version(void);

typedef enum {
    MIX_INIT_FLAC = 0x00000001,
    MIX_INIT_MOD  = 0x00000002,
    MIX_INIT_MP3  = 0x00000004,
    MIX_INIT_OGG  = 0x00000008
} MIX_InitFlags;

int Mix_Init(int flags);
void Mix_Quit(void);

typedef struct Mix_Chunk {
	int allocated;
	Uint8 *abuf;
	Uint32 alen;
	Uint8 volume;
} Mix_Chunk;

typedef enum {
	MIX_NO_FADING,
	MIX_FADING_OUT,
	MIX_FADING_IN
} Mix_Fading;

typedef enum {
	MUS_NONE,
	MUS_CMD,
	MUS_WAV,
	MUS_MOD,
	MUS_MID,
	MUS_OGG,
	MUS_MP3,
	MUS_MP3_MAD,
	MUS_FLAC,
	MUS_MODPLUG
} Mix_MusicType;

typedef struct _Mix_Music Mix_Music;
int Mix_OpenAudio(int frequency, Uint16 format, int channels, int chunksize);
int Mix_AllocateChannels(int numchans);
int Mix_QuerySpec(int *frequency,Uint16 *format,int *channels);
Mix_Chunk * Mix_LoadWAV_RW(SDL_RWops *src, int freesrc);
//#define Mix_LoadWAV(file)	Mix_LoadWAV_RW(SDL_RWFromFile(file, "rb"), 1)
Mix_Music * Mix_LoadMUS(const char *file);
Mix_Music * Mix_LoadMUS_RW(SDL_RWops *rw);
Mix_Chunk * Mix_QuickLoad_WAV(Uint8 *mem);
Mix_Chunk * Mix_QuickLoad_RAW(Uint8 *mem, Uint32 len);
void Mix_FreeChunk(Mix_Chunk *chunk);
void Mix_FreeMusic(Mix_Music *music);
int Mix_GetNumChunkDecoders(void);
const char * Mix_GetChunkDecoder(int index);
int Mix_GetNumMusicDecoders(void);
const char * Mix_GetMusicDecoder(int index);
Mix_MusicType Mix_GetMusicType(const Mix_Music *music);
void Mix_SetPostMix(void (*mix_func)(void *udata, Uint8 *stream, int len), void *arg);
void Mix_HookMusic(void (*mix_func)(void *udata, Uint8 *stream, int len), void *arg);
void Mix_HookMusicFinished(void (*music_finished)(void));
void * Mix_GetMusicHookData(void);
void Mix_ChannelFinished(void (*channel_finished)(int channel));
typedef void (*Mix_EffectFunc_t)(int chan, void *stream, int len, void *udata);
typedef void (*Mix_EffectDone_t)(int chan, void *udata);
int Mix_RegisterEffect(int chan, Mix_EffectFunc_t f, Mix_EffectDone_t d, void *arg);
int Mix_UnregisterEffect(int channel, Mix_EffectFunc_t f);
int Mix_UnregisterAllEffects(int channel);
//#define MIX_EFFECTSMAXSPEED  "MIX_EFFECTSMAXSPEED"
int Mix_SetPanning(int channel, Uint8 left, Uint8 right);
int Mix_SetPosition(int channel, Sint16 angle, Uint8 distance);
int Mix_SetDistance(int channel, Uint8 distance);
int Mix_SetReverseStereo(int channel, int flip);
int Mix_ReserveChannels(int num);
int Mix_GroupChannel(int which, int tag);
int Mix_GroupChannels(int from, int to, int tag);
int Mix_GroupAvailable(int tag);
int Mix_GroupCount(int tag);
int Mix_GroupOldest(int tag);
int Mix_GroupNewer(int tag);
//#define Mix_PlayChannel(channel,chunk,loops) Mix_PlayChannelTimed(channel,chunk,loops,-1)
int Mix_PlayChannelTimed(int channel, Mix_Chunk *chunk, int loops, int ticks);
int Mix_PlayMusic(Mix_Music *music, int loops);
int Mix_FadeInMusic(Mix_Music *music, int loops, int ms);
int Mix_FadeInMusicPos(Mix_Music *music, int loops, int ms, double position);
//#define Mix_FadeInChannel(channel,chunk,loops,ms) Mix_FadeInChannelTimed(channel,chunk,loops,ms,-1)
int Mix_FadeInChannelTimed(int channel, Mix_Chunk *chunk, int loops, int ms, int ticks);
int Mix_Volume(int channel, int volume);
int Mix_VolumeChunk(Mix_Chunk *chunk, int volume);
int Mix_VolumeMusic(int volume);
int Mix_HaltChannel(int channel);
int Mix_HaltGroup(int tag);
int Mix_HaltMusic(void);
int Mix_ExpireChannel(int channel, int ticks);
int Mix_FadeOutChannel(int which, int ms);
int Mix_FadeOutGroup(int tag, int ms);
int Mix_FadeOutMusic(int ms);
Mix_Fading Mix_FadingMusic(void);
Mix_Fading Mix_FadingChannel(int which);
void Mix_Pause(int channel);
void Mix_Resume(int channel);
int Mix_Paused(int channel);
void Mix_PauseMusic(void);
void Mix_ResumeMusic(void);
void Mix_RewindMusic(void);
int Mix_PausedMusic(void);
int Mix_SetMusicPosition(double position);
int Mix_Playing(int channel);
int Mix_PlayingMusic(void);
int Mix_SetMusicCMD(const char *command);
int Mix_SetSynchroValue(int value);
int Mix_GetSynchroValue(void);
Mix_Chunk * Mix_GetChunk(int channel);
void Mix_CloseAudio(void);
//#define Mix_SetError	SDL_SetError
//#define Mix_GetError	SDL_GetError
]]
return require 'ffi.load' 'SDL_mixer'
