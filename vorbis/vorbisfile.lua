local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/vorbis/vorbisfile.h */
/* ++ BEGIN /usr/include/stdio.h */
]] require 'ffi.req' 'c.stdio' ffi.cdef[[
/* ++ END   /usr/include/stdio.h */
/* ++ BEGIN /usr/include/vorbis/codec.h */
/* +++ BEGIN /usr/include/ogg/ogg.h */
]] require 'ffi.req' 'ogg' ffi.cdef[[
/* +++ END   /usr/include/ogg/ogg.h */
typedef struct vorbis_info{
	int version;
	int channels;
	long rate;
	long bitrate_upper;
	long bitrate_nominal;
	long bitrate_lower;
	long bitrate_window;
	void *codec_setup;
} vorbis_info;
typedef struct vorbis_dsp_state{
	int analysisp;
	vorbis_info *vi;
	float **pcm;
	float **pcmret;
	int pcm_storage;
	int pcm_current;
	int pcm_returned;
	int preextrapolate;
	int eofflag;
	long lW;
	long W;
	long nW;
	long centerW;
	ogg_int64_t granulepos;
	ogg_int64_t sequence;
	ogg_int64_t glue_bits;
	ogg_int64_t time_bits;
	ogg_int64_t floor_bits;
	ogg_int64_t res_bits;
	void *backend_state;
} vorbis_dsp_state;
typedef struct vorbis_block{
	float **pcm;
	oggpack_buffer opb;
	long lW;
	long W;
	long nW;
	int pcmend;
	int mode;
	int eofflag;
	ogg_int64_t granulepos;
	ogg_int64_t sequence;
	vorbis_dsp_state *vd;
	void *localstore;
	long localtop;
	long localalloc;
	long totaluse;
	struct alloc_chain *reap;
	long glue_bits;
	long time_bits;
	long floor_bits;
	long res_bits;
	void *internal;
} vorbis_block;
struct alloc_chain{
	void *ptr;
	struct alloc_chain *next;
};
typedef struct vorbis_comment{
	char **user_comments;
	int *comment_lengths;
	int comments;
	char *vendor;
} vorbis_comment;
extern void vorbis_info_init(vorbis_info *vi);
extern void vorbis_info_clear(vorbis_info *vi);
extern int vorbis_info_blocksize(vorbis_info *vi,int zo);
extern void vorbis_comment_init(vorbis_comment *vc);
extern void vorbis_comment_add(vorbis_comment *vc, const char *comment);
extern void vorbis_comment_add_tag(vorbis_comment *vc, const char *tag, const char *contents);
extern char *vorbis_comment_query(vorbis_comment *vc, const char *tag, int count);
extern int vorbis_comment_query_count(vorbis_comment *vc, const char *tag);
extern void vorbis_comment_clear(vorbis_comment *vc);
extern int vorbis_block_init(vorbis_dsp_state *v, vorbis_block *vb);
extern int vorbis_block_clear(vorbis_block *vb);
extern void vorbis_dsp_clear(vorbis_dsp_state *v);
extern double vorbis_granule_time(vorbis_dsp_state *v, ogg_int64_t granulepos);
extern const char *vorbis_version_string(void);
extern int vorbis_analysis_init(vorbis_dsp_state *v,vorbis_info *vi);
extern int vorbis_commentheader_out(vorbis_comment *vc, ogg_packet *op);
extern int vorbis_analysis_headerout(vorbis_dsp_state *v, vorbis_comment *vc, ogg_packet *op, ogg_packet *op_comm, ogg_packet *op_code);
extern float **vorbis_analysis_buffer(vorbis_dsp_state *v,int vals);
extern int vorbis_analysis_wrote(vorbis_dsp_state *v,int vals);
extern int vorbis_analysis_blockout(vorbis_dsp_state *v,vorbis_block *vb);
extern int vorbis_analysis(vorbis_block *vb,ogg_packet *op);
extern int vorbis_bitrate_addblock(vorbis_block *vb);
extern int vorbis_bitrate_flushpacket(vorbis_dsp_state *vd, ogg_packet *op);
extern int vorbis_synthesis_idheader(ogg_packet *op);
extern int vorbis_synthesis_headerin(vorbis_info *vi,vorbis_comment *vc, ogg_packet *op);
extern int vorbis_synthesis_init(vorbis_dsp_state *v,vorbis_info *vi);
extern int vorbis_synthesis_restart(vorbis_dsp_state *v);
extern int vorbis_synthesis(vorbis_block *vb,ogg_packet *op);
extern int vorbis_synthesis_trackonly(vorbis_block *vb,ogg_packet *op);
extern int vorbis_synthesis_blockin(vorbis_dsp_state *v,vorbis_block *vb);
extern int vorbis_synthesis_pcmout(vorbis_dsp_state *v,float ***pcm);
extern int vorbis_synthesis_lapout(vorbis_dsp_state *v,float ***pcm);
extern int vorbis_synthesis_read(vorbis_dsp_state *v,int samples);
extern long vorbis_packet_blocksize(vorbis_info *vi,ogg_packet *op);
extern int vorbis_synthesis_halfrate(vorbis_info *v,int flag);
extern int vorbis_synthesis_halfrate_p(vorbis_info *v);
enum { OV_FALSE = -1 };
enum { OV_EOF = -2 };
enum { OV_HOLE = -3 };
enum { OV_EREAD = -128 };
enum { OV_EFAULT = -129 };
enum { OV_EIMPL = -130 };
enum { OV_EINVAL = -131 };
enum { OV_ENOTVORBIS = -132 };
enum { OV_EBADHEADER = -133 };
enum { OV_EVERSION = -134 };
enum { OV_ENOTAUDIO = -135 };
enum { OV_EBADPACKET = -136 };
enum { OV_EBADLINK = -137 };
enum { OV_ENOSEEK = -138 };
/* ++ END   /usr/include/vorbis/codec.h */
typedef struct {
	size_t (*read_func) (void *ptr, size_t size, size_t nmemb, void *datasource);
	int (*seek_func) (void *datasource, ogg_int64_t offset, int whence);
	int (*close_func) (void *datasource);
	long (*tell_func) (void *datasource);
} ov_callbacks;
 



enum { NOTOPEN = 0 };
enum { PARTOPEN = 1 };
enum { OPENED = 2 };
enum { STREAMSET = 3 };
enum { INITSET = 4 };
typedef struct OggVorbis_File {
	void *datasource;
	int seekable;
	ogg_int64_t offset;
	ogg_int64_t end;
	ogg_sync_state oy;
	int links;
	ogg_int64_t *offsets;
	ogg_int64_t *dataoffsets;
	long *serialnos;
	ogg_int64_t *pcmlengths;
	vorbis_info *vi;
	vorbis_comment *vc;
	ogg_int64_t pcm_offset;
	int ready_state;
	long current_serialno;
	int current_link;
	double bittrack;
	double samptrack;
	ogg_stream_state os;
	vorbis_dsp_state vd;
	vorbis_block vb;
	ov_callbacks callbacks;
} OggVorbis_File;
extern int ov_clear(OggVorbis_File *vf);
extern int ov_fopen(const char *path,OggVorbis_File *vf);
extern int ov_open(FILE *f,OggVorbis_File *vf,const char *initial,long ibytes);
extern int ov_open_callbacks(void *datasource, OggVorbis_File *vf, const char *initial, long ibytes, ov_callbacks callbacks);
extern int ov_test(FILE *f,OggVorbis_File *vf,const char *initial,long ibytes);
extern int ov_test_callbacks(void *datasource, OggVorbis_File *vf, const char *initial, long ibytes, ov_callbacks callbacks);
extern int ov_test_open(OggVorbis_File *vf);
extern long ov_bitrate(OggVorbis_File *vf,int i);
extern long ov_bitrate_instant(OggVorbis_File *vf);
extern long ov_streams(OggVorbis_File *vf);
extern long ov_seekable(OggVorbis_File *vf);
extern long ov_serialnumber(OggVorbis_File *vf,int i);
extern ogg_int64_t ov_raw_total(OggVorbis_File *vf,int i);
extern ogg_int64_t ov_pcm_total(OggVorbis_File *vf,int i);
extern double ov_time_total(OggVorbis_File *vf,int i);
extern int ov_raw_seek(OggVorbis_File *vf,ogg_int64_t pos);
extern int ov_pcm_seek(OggVorbis_File *vf,ogg_int64_t pos);
extern int ov_pcm_seek_page(OggVorbis_File *vf,ogg_int64_t pos);
extern int ov_time_seek(OggVorbis_File *vf,double pos);
extern int ov_time_seek_page(OggVorbis_File *vf,double pos);
extern int ov_raw_seek_lap(OggVorbis_File *vf,ogg_int64_t pos);
extern int ov_pcm_seek_lap(OggVorbis_File *vf,ogg_int64_t pos);
extern int ov_pcm_seek_page_lap(OggVorbis_File *vf,ogg_int64_t pos);
extern int ov_time_seek_lap(OggVorbis_File *vf,double pos);
extern int ov_time_seek_page_lap(OggVorbis_File *vf,double pos);
extern ogg_int64_t ov_raw_tell(OggVorbis_File *vf);
extern ogg_int64_t ov_pcm_tell(OggVorbis_File *vf);
extern double ov_time_tell(OggVorbis_File *vf);
extern vorbis_info *ov_info(OggVorbis_File *vf,int link);
extern vorbis_comment *ov_comment(OggVorbis_File *vf,int link);
extern long ov_read_float(OggVorbis_File *vf,float ***pcm_channels,int samples, int *bitstream);
extern long ov_read_filter(OggVorbis_File *vf,char *buffer,int length, int bigendianp,int word,int sgned,int *bitstream, void (*filter)(float **pcm,long channels,long samples,void *filter_param),void *filter_param);
extern long ov_read(OggVorbis_File *vf,char *buffer,int length, int bigendianp,int word,int sgned,int *bitstream);
extern int ov_crosslap(OggVorbis_File *vf1,OggVorbis_File *vf2);
extern int ov_halfrate(OggVorbis_File *vf,int flag);
extern int ov_halfrate_p(OggVorbis_File *vf);
/* + END   /usr/include/vorbis/vorbisfile.h */
]]
local lib = require 'ffi.load' 'vorbisfile'

-- don't use stdio, use ffi.C
-- stdio risks browser shimming open and returning a Lua function
-- but what that means is, for browser to work with vorbisfile,
-- browser will have to shim each of he OV_CALLBACKs
-- ... or browser should/will have to return ffi closures of ffi.open
-- ... then we can use stdio here
local stdio = require 'ffi.req' 'c.stdio'	-- fopen, fseek, fclose, ftell

-- i'd free the closure but meh
-- who puts a function as a static in a header anyways?
local _ov_header_fseek_wrap = ffi.cast('int (*)(void *, ogg_int64_t, int)', function(f,off,whence)
	if f == nil then return -1 end
	return stdio.fseek(f,off,whence)
end)

local OV_CALLBACKS_DEFAULT = ffi.new'ov_callbacks'
OV_CALLBACKS_DEFAULT.read_func = stdio.fread
OV_CALLBACKS_DEFAULT.seek_func = _ov_header_fseek_wrap
OV_CALLBACKS_DEFAULT.close_func = stdio.fclose
OV_CALLBACKS_DEFAULT.tell_func = stdio.ftell

local OV_CALLBACKS_NOCLOSE = ffi.new'ov_callbacks'
OV_CALLBACKS_NOCLOSE.read_func = stdio.fread
OV_CALLBACKS_NOCLOSE.seek_func = _ov_header_fseek_wrap
OV_CALLBACKS_NOCLOSE.close_func = nil
OV_CALLBACKS_NOCLOSE.tell_func = stdio.ftell

local OV_CALLBACKS_STREAMONLY = ffi.new'ov_callbacks'
OV_CALLBACKS_STREAMONLY.read_func = stdio.fread
OV_CALLBACKS_STREAMONLY.seek_func = nil
OV_CALLBACKS_STREAMONLY.close_func = stdio.fclose
OV_CALLBACKS_STREAMONLY.tell_func = nil

local OV_CALLBACKS_STREAMONLY_NOCLOSE = ffi.new'ov_callbacks'
OV_CALLBACKS_STREAMONLY_NOCLOSE.read_func = stdio.fread
OV_CALLBACKS_STREAMONLY_NOCLOSE.seek_func = nil
OV_CALLBACKS_STREAMONLY_NOCLOSE.close_func = nil
OV_CALLBACKS_STREAMONLY_NOCLOSE.tell_func = nil

return setmetatable({
	OV_CALLBACKS_DEFAULT = OV_CALLBACKS_DEFAULT,
	OV_CALLBACKS_NOCLOSE = OV_CALLBACKS_NOCLOSE,
	OV_CALLBACKS_STREAMONLY = OV_CALLBACKS_STREAMONLY,
	OV_CALLBACKS_STREAMONLY_NOCLOSE = OV_CALLBACKS_STREAMONLY_NOCLOSE,
}, {
	__index = lib,
})
