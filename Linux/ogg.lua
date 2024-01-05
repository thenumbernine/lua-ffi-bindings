local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/include/ogg/ogg.h */
/* ++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stddef.h */
/* ++ BEGIN /usr/include/ogg/os_types.h */
/* +++ BEGIN /usr/include/ogg/config_types.h */
enum { INCLUDE_INTTYPES_H = 1 };
enum { INCLUDE_STDINT_H = 1 };
enum { INCLUDE_SYS_TYPES_H = 1 };
/* ++++ BEGIN /usr/include/inttypes.h */
]] require 'ffi.req' 'c.inttypes' ffi.cdef[[
/* ++++ END   /usr/include/inttypes.h */
/* ++++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* ++++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stdint.h */
/* ++++ BEGIN /usr/include/x86_64-linux-gnu/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++++ END   /usr/include/x86_64-linux-gnu/sys/types.h */
typedef int16_t ogg_int16_t;
typedef uint16_t ogg_uint16_t;
typedef int32_t ogg_int32_t;
typedef uint32_t ogg_uint32_t;
typedef int64_t ogg_int64_t;
typedef uint64_t ogg_uint64_t;
/* +++ END   /usr/include/ogg/config_types.h */
/* ++ END   /usr/include/ogg/os_types.h */
typedef struct {
	void *iov_base;
	size_t iov_len;
} ogg_iovec_t;
typedef struct {
	long endbyte;
	int endbit;
	unsigned char *buffer;
	unsigned char *ptr;
	long storage;
} oggpack_buffer;
typedef struct {
	unsigned char *header;
	long header_len;
	unsigned char *body;
	long body_len;
} ogg_page;
typedef struct {
	unsigned char *body_data;
	long body_storage;
	long body_fill;
	long body_returned;
	int *lacing_vals;
	ogg_int64_t *granule_vals;
	long lacing_storage;
	long lacing_fill;
	long lacing_packet;
	long lacing_returned;
	unsigned char header[282];
	int header_fill;
	int e_o_s;
	int b_o_s;
	long serialno;
	long pageno;
	ogg_int64_t packetno;
	ogg_int64_t granulepos;
} ogg_stream_state;
typedef struct {
	unsigned char *packet;
	long bytes;
	long b_o_s;
	long e_o_s;
	ogg_int64_t granulepos;
	ogg_int64_t packetno;
} ogg_packet;
typedef struct {
	unsigned char *data;
	int storage;
	int fill;
	int returned;
	int unsynced;
	int headerbytes;
	int bodybytes;
} ogg_sync_state;
extern void oggpack_writeinit(oggpack_buffer *b);
extern int oggpack_writecheck(oggpack_buffer *b);
extern void oggpack_writetrunc(oggpack_buffer *b,long bits);
extern void oggpack_writealign(oggpack_buffer *b);
extern void oggpack_writecopy(oggpack_buffer *b,void *source,long bits);
extern void oggpack_reset(oggpack_buffer *b);
extern void oggpack_writeclear(oggpack_buffer *b);
extern void oggpack_readinit(oggpack_buffer *b,unsigned char *buf,int bytes);
extern void oggpack_write(oggpack_buffer *b,unsigned long value,int bits);
extern long oggpack_look(oggpack_buffer *b,int bits);
extern long oggpack_look1(oggpack_buffer *b);
extern void oggpack_adv(oggpack_buffer *b,int bits);
extern void oggpack_adv1(oggpack_buffer *b);
extern long oggpack_read(oggpack_buffer *b,int bits);
extern long oggpack_read1(oggpack_buffer *b);
extern long oggpack_bytes(oggpack_buffer *b);
extern long oggpack_bits(oggpack_buffer *b);
extern unsigned char *oggpack_get_buffer(oggpack_buffer *b);
extern void oggpackB_writeinit(oggpack_buffer *b);
extern int oggpackB_writecheck(oggpack_buffer *b);
extern void oggpackB_writetrunc(oggpack_buffer *b,long bits);
extern void oggpackB_writealign(oggpack_buffer *b);
extern void oggpackB_writecopy(oggpack_buffer *b,void *source,long bits);
extern void oggpackB_reset(oggpack_buffer *b);
extern void oggpackB_writeclear(oggpack_buffer *b);
extern void oggpackB_readinit(oggpack_buffer *b,unsigned char *buf,int bytes);
extern void oggpackB_write(oggpack_buffer *b,unsigned long value,int bits);
extern long oggpackB_look(oggpack_buffer *b,int bits);
extern long oggpackB_look1(oggpack_buffer *b);
extern void oggpackB_adv(oggpack_buffer *b,int bits);
extern void oggpackB_adv1(oggpack_buffer *b);
extern long oggpackB_read(oggpack_buffer *b,int bits);
extern long oggpackB_read1(oggpack_buffer *b);
extern long oggpackB_bytes(oggpack_buffer *b);
extern long oggpackB_bits(oggpack_buffer *b);
extern unsigned char *oggpackB_get_buffer(oggpack_buffer *b);
extern int ogg_stream_packetin(ogg_stream_state *os, ogg_packet *op);
extern int ogg_stream_iovecin(ogg_stream_state *os, ogg_iovec_t *iov, int count, long e_o_s, ogg_int64_t granulepos);
extern int ogg_stream_pageout(ogg_stream_state *os, ogg_page *og);
extern int ogg_stream_pageout_fill(ogg_stream_state *os, ogg_page *og, int nfill);
extern int ogg_stream_flush(ogg_stream_state *os, ogg_page *og);
extern int ogg_stream_flush_fill(ogg_stream_state *os, ogg_page *og, int nfill);
extern int ogg_sync_init(ogg_sync_state *oy);
extern int ogg_sync_clear(ogg_sync_state *oy);
extern int ogg_sync_reset(ogg_sync_state *oy);
extern int ogg_sync_destroy(ogg_sync_state *oy);
extern int ogg_sync_check(ogg_sync_state *oy);
extern char *ogg_sync_buffer(ogg_sync_state *oy, long size);
extern int ogg_sync_wrote(ogg_sync_state *oy, long bytes);
extern long ogg_sync_pageseek(ogg_sync_state *oy,ogg_page *og);
extern int ogg_sync_pageout(ogg_sync_state *oy, ogg_page *og);
extern int ogg_stream_pagein(ogg_stream_state *os, ogg_page *og);
extern int ogg_stream_packetout(ogg_stream_state *os,ogg_packet *op);
extern int ogg_stream_packetpeek(ogg_stream_state *os,ogg_packet *op);
extern int ogg_stream_init(ogg_stream_state *os,int serialno);
extern int ogg_stream_clear(ogg_stream_state *os);
extern int ogg_stream_reset(ogg_stream_state *os);
extern int ogg_stream_reset_serialno(ogg_stream_state *os,int serialno);
extern int ogg_stream_destroy(ogg_stream_state *os);
extern int ogg_stream_check(ogg_stream_state *os);
extern int ogg_stream_eos(ogg_stream_state *os);
extern void ogg_page_checksum_set(ogg_page *og);
extern int ogg_page_version(const ogg_page *og);
extern int ogg_page_continued(const ogg_page *og);
extern int ogg_page_bos(const ogg_page *og);
extern int ogg_page_eos(const ogg_page *og);
extern ogg_int64_t ogg_page_granulepos(const ogg_page *og);
extern int ogg_page_serialno(const ogg_page *og);
extern long ogg_page_pageno(const ogg_page *og);
extern int ogg_page_packets(const ogg_page *og);
extern void ogg_packet_clear(ogg_packet *op);
/* + END   /usr/include/ogg/ogg.h */
]]
