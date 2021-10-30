local ffi  = require 'ffi'

local lib = 'libnetcdf'

local netcdf = ffi.load(lib)

local code = [[
/* BEGIN /usr/include/netcdf.h */
typedef int nc_type;
enum { NC_NAT = 0 };
enum { NC_BYTE = 1 };
enum { NC_CHAR = 2 };
enum { NC_SHORT = 3 };
enum { NC_INT = 4 };
enum { NC_FLOAT = 5 };
enum { NC_DOUBLE = 6 };
enum { NC_UBYTE = 7 };
enum { NC_USHORT = 8 };
enum { NC_UINT = 9 };
enum { NC_INT64 = 10 };
enum { NC_UINT64 = 11 };
enum { NC_STRING = 12 };
enum { NC_VLEN = 13 };
enum { NC_OPAQUE = 14 };
enum { NC_ENUM = 15 };
enum { NC_COMPOUND = 16 };
enum { NC_FIRSTUSERTYPEID = 32 };
enum { NC_MAX_BYTE = 127 };
enum { NC_MAX_CHAR = 255 };
enum { NC_MAX_SHORT = 32767 };
enum { NC_MAX_INT = 2147483647 };
/* enum { NC_MAX_DOUBLE = 1.7976931348623157e+308 }; */
enum { NC_FILL = 0 };
enum { NC_NOFILL = 0x100 };
enum { NC_NOWRITE = 0x0000 };
enum { NC_WRITE = 0x0001 };
enum { NC_CLOBBER = 0x0000 };
enum { NC_NOCLOBBER = 0x0004 };
enum { NC_DISKLESS = 0x0008 };
enum { NC_MMAP = 0x0010 };
enum { NC_64BIT_DATA = 0x0020 };
enum { NC_UDF0 = 0x0040 };
enum { NC_UDF1 = 0x0080 };
enum { NC_CLASSIC_MODEL = 0x0100 };
enum { NC_64BIT_OFFSET = 0x0200 };
enum { NC_LOCK = 0x0400 };
enum { NC_SHARE = 0x0800 };
enum { NC_NETCDF4 = 0x1000 };
enum { NC_MPIIO = 0x2000 };
enum { NC_PERSIST = 0x4000 };
enum { NC_INMEMORY = 0x8000 };
enum { NC_MAX_MAGIC_NUMBER_LEN = 8 };
enum { NC_SIZEHINT_DEFAULT = 0 };
enum { NC_GLOBAL = -1 };
enum { NC_MAX_DIMS = 1024 };
enum { NC_MAX_ATTRS = 8192 };
enum { NC_MAX_VARS = 8192 };
enum { NC_MAX_NAME = 256 };
enum { NC_MAX_VAR_DIMS = 1024 };
enum { NC_ENDIAN_NATIVE = 0 };
enum { NC_ENDIAN_LITTLE = 1 };
enum { NC_ENDIAN_BIG = 2 };
enum { NC_CHUNKED = 0 };
enum { NC_CONTIGUOUS = 1 };
enum { NC_COMPACT = 2 };
enum { NC_NOCHECKSUM = 0 };
enum { NC_FLETCHER32 = 1 };
enum { NC_NOSHUFFLE = 0 };
enum { NC_SHUFFLE = 1 };
enum { NC_MIN_DEFLATE_LEVEL = 0 };
enum { NC_MAX_DEFLATE_LEVEL = 9 };
enum { NC_NOERR = 0 };
enum { NC_HAVE_NEW_CHUNKING_API = 1 };
extern const char * nc_inq_libvers(void);
extern const char * nc_strerror(int ncerr);
typedef struct NC_Dispatch NC_Dispatch;
extern int nc_def_user_format(int mode_flag, NC_Dispatch *dispatch_table, char *magic_number);
extern int nc_inq_user_format(int mode_flag, NC_Dispatch **dispatch_table, char *magic_number);
extern int nc__create(const char *path, int cmode, size_t initialsz, size_t *chunksizehintp, int *ncidp);
extern int nc_create(const char *path, int cmode, int *ncidp);
extern int nc__open(const char *path, int mode, size_t *chunksizehintp, int *ncidp);
extern int nc_open(const char *path, int mode, int *ncidp);
extern int nc_inq_path(int ncid, size_t *pathlen, char *path);
extern int nc_inq_ncid(int ncid, const char *name, int *grp_ncid);
extern int nc_inq_grps(int ncid, int *numgrps, int *ncids);
extern int nc_inq_grpname(int ncid, char *name);
extern int nc_inq_grpname_full(int ncid, size_t *lenp, char *full_name);
extern int nc_inq_grpname_len(int ncid, size_t *lenp);
extern int nc_inq_grp_parent(int ncid, int *parent_ncid);
extern int nc_inq_grp_ncid(int ncid, const char *grp_name, int *grp_ncid);
extern int nc_inq_grp_full_ncid(int ncid, const char *full_name, int *grp_ncid);
extern int nc_inq_varids(int ncid, int *nvars, int *varids);
extern int nc_inq_dimids(int ncid, int *ndims, int *dimids, int include_parents);
extern int nc_inq_typeids(int ncid, int *ntypes, int *typeids);
extern int nc_inq_type_equal(int ncid1, nc_type typeid1, int ncid2, nc_type typeid2, int *equal);
extern int nc_def_grp(int parent_ncid, const char *name, int *new_ncid);
extern int nc_rename_grp(int grpid, const char *name);
extern int nc_def_compound(int ncid, size_t size, const char *name, nc_type *typeidp);
extern int nc_insert_compound(int ncid, nc_type xtype, const char *name, size_t offset, nc_type field_typeid);
extern int nc_insert_array_compound(int ncid, nc_type xtype, const char *name, size_t offset, nc_type field_typeid, int ndims, const int *dim_sizes);
extern int nc_inq_type(int ncid, nc_type xtype, char *name, size_t *size);
extern int nc_inq_typeid(int ncid, const char *name, nc_type *typeidp);
extern int nc_inq_compound(int ncid, nc_type xtype, char *name, size_t *sizep, size_t *nfieldsp);
extern int nc_inq_compound_name(int ncid, nc_type xtype, char *name);
extern int nc_inq_compound_size(int ncid, nc_type xtype, size_t *sizep);
extern int nc_inq_compound_nfields(int ncid, nc_type xtype, size_t *nfieldsp);
extern int nc_inq_compound_field(int ncid, nc_type xtype, int fieldid, char *name, size_t *offsetp, nc_type *field_typeidp, int *ndimsp, int *dim_sizesp);
extern int nc_inq_compound_fieldname(int ncid, nc_type xtype, int fieldid, char *name);
extern int nc_inq_compound_fieldindex(int ncid, nc_type xtype, const char *name, int *fieldidp);
extern int nc_inq_compound_fieldoffset(int ncid, nc_type xtype, int fieldid, size_t *offsetp);
extern int nc_inq_compound_fieldtype(int ncid, nc_type xtype, int fieldid, nc_type *field_typeidp);
extern int nc_inq_compound_fieldndims(int ncid, nc_type xtype, int fieldid, int *ndimsp);
extern int nc_inq_compound_fielddim_sizes(int ncid, nc_type xtype, int fieldid, int *dim_sizes);
typedef struct { size_t len;
void *p;
} nc_vlen_t;
extern int nc_def_vlen(int ncid, const char *name, nc_type base_typeid, nc_type *xtypep);
extern int nc_inq_vlen(int ncid, nc_type xtype, char *name, size_t *datum_sizep, nc_type *base_nc_typep);
extern int nc_free_vlen(nc_vlen_t *vl);
extern int nc_free_vlens(size_t len, nc_vlen_t vlens[]);
extern int nc_put_vlen_element(int ncid, int typeid1, void *vlen_element, size_t len, const void *data);
extern int nc_get_vlen_element(int ncid, int typeid1, const void *vlen_element, size_t *len, void *data);
extern int nc_free_string(size_t len, char **data);
extern int nc_inq_user_type(int ncid, nc_type xtype, char *name, size_t *size, nc_type *base_nc_typep, size_t *nfieldsp, int *classp);
extern int nc_put_att(int ncid, int varid, const char *name, nc_type xtype, size_t len, const void *op);
extern int nc_get_att(int ncid, int varid, const char *name, void *ip);
extern int nc_def_enum(int ncid, nc_type base_typeid, const char *name, nc_type *typeidp);
extern int nc_insert_enum(int ncid, nc_type xtype, const char *name, const void *value);
extern int nc_inq_enum(int ncid, nc_type xtype, char *name, nc_type *base_nc_typep, size_t *base_sizep, size_t *num_membersp);
extern int nc_inq_enum_member(int ncid, nc_type xtype, int idx, char *name, void *value);
extern int nc_inq_enum_ident(int ncid, nc_type xtype, long long value, char *identifier);
extern int nc_def_opaque(int ncid, size_t size, const char *name, nc_type *xtypep);
extern int nc_inq_opaque(int ncid, nc_type xtype, char *name, size_t *sizep);
extern int nc_put_var(int ncid, int varid,  const void *op);
extern int nc_get_var(int ncid, int varid,  void *ip);
extern int nc_put_var1(int ncid, int varid,  const size_t *indexp, const void *op);
extern int nc_get_var1(int ncid, int varid,  const size_t *indexp, void *ip);
extern int nc_put_vara(int ncid, int varid,  const size_t *startp, const size_t *countp, const void *op);
extern int nc_get_vara(int ncid, int varid,  const size_t *startp, const size_t *countp, void *ip);
extern int nc_put_vars(int ncid, int varid,  const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const void *op);
extern int nc_get_vars(int ncid, int varid,  const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, void *ip);
extern int nc_put_varm(int ncid, int varid,  const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t *imapp, const void *op);
extern int nc_get_varm(int ncid, int varid,  const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t *imapp, void *ip);
extern int nc_def_var_deflate(int ncid, int varid, int shuffle, int deflate, int deflate_level);
extern int nc_inq_var_deflate(int ncid, int varid, int *shufflep, int *deflatep, int *deflate_levelp);
extern int nc_def_var_szip(int ncid, int varid, int options_mask, int pixels_per_block);
extern int nc_inq_var_szip(int ncid, int varid, int *options_maskp, int *pixels_per_blockp);
extern int nc_def_var_fletcher32(int ncid, int varid, int fletcher32);
extern int nc_inq_var_fletcher32(int ncid, int varid, int *fletcher32p);
extern int nc_def_var_chunking(int ncid, int varid, int storage, const size_t *chunksizesp);
extern int nc_inq_var_chunking(int ncid, int varid, int *storagep, size_t *chunksizesp);
extern int nc_def_var_fill(int ncid, int varid, int no_fill, const void *fill_value);
extern int nc_inq_var_fill(int ncid, int varid, int *no_fill, void *fill_valuep);
extern int nc_def_var_endian(int ncid, int varid, int endian);
extern int nc_inq_var_endian(int ncid, int varid, int *endianp);
extern int nc_def_var_filter(int ncid, int varid, unsigned int id, size_t nparams, const unsigned int* parms);
extern int nc_inq_var_filter(int ncid, int varid, unsigned int* idp, size_t* nparams, unsigned int* params);
extern int nc_set_fill(int ncid, int fillmode, int *old_modep);
extern int nc_set_default_format(int format, int *old_formatp);
extern int nc_set_chunk_cache(size_t size, size_t nelems, float preemption);
extern int nc_get_chunk_cache(size_t *sizep, size_t *nelemsp, float *preemptionp);
extern int nc_set_var_chunk_cache(int ncid, int varid, size_t size, size_t nelems, float preemption);
extern int nc_get_var_chunk_cache(int ncid, int varid, size_t *sizep, size_t *nelemsp, float *preemptionp);
extern int nc_redef(int ncid);
extern int nc__enddef(int ncid, size_t h_minfree, size_t v_align, size_t v_minfree, size_t r_align);
extern int nc_enddef(int ncid);
extern int nc_sync(int ncid);
extern int nc_abort(int ncid);
extern int nc_close(int ncid);
extern int nc_inq(int ncid, int *ndimsp, int *nvarsp, int *nattsp, int *unlimdimidp);
extern int nc_inq_ndims(int ncid, int *ndimsp);
extern int nc_inq_nvars(int ncid, int *nvarsp);
extern int nc_inq_natts(int ncid, int *nattsp);
extern int nc_inq_unlimdim(int ncid, int *unlimdimidp);
extern int nc_inq_unlimdims(int ncid, int *nunlimdimsp, int *unlimdimidsp);
extern int nc_inq_format(int ncid, int *formatp);
extern int nc_inq_format_extended(int ncid, int *formatp, int* modep);
extern int nc_def_dim(int ncid, const char *name, size_t len, int *idp);
extern int nc_inq_dimid(int ncid, const char *name, int *idp);
extern int nc_inq_dim(int ncid, int dimid, char *name, size_t *lenp);
extern int nc_inq_dimname(int ncid, int dimid, char *name);
extern int nc_inq_dimlen(int ncid, int dimid, size_t *lenp);
extern int nc_rename_dim(int ncid, int dimid, const char *name);
extern int nc_inq_att(int ncid, int varid, const char *name, nc_type *xtypep, size_t *lenp);
extern int nc_inq_attid(int ncid, int varid, const char *name, int *idp);
extern int nc_inq_atttype(int ncid, int varid, const char *name, nc_type *xtypep);
extern int nc_inq_attlen(int ncid, int varid, const char *name, size_t *lenp);
extern int nc_inq_attname(int ncid, int varid, int attnum, char *name);
extern int nc_copy_att(int ncid_in, int varid_in, const char *name, int ncid_out, int varid_out);
extern int nc_rename_att(int ncid, int varid, const char *name, const char *newname);
extern int nc_del_att(int ncid, int varid, const char *name);
extern int nc_put_att_text(int ncid, int varid, const char *name, size_t len, const char *op);
extern int nc_get_att_text(int ncid, int varid, const char *name, char *ip);
extern int nc_put_att_string(int ncid, int varid, const char *name, size_t len, const char **op);
extern int nc_get_att_string(int ncid, int varid, const char *name, char **ip);
extern int nc_put_att_uchar(int ncid, int varid, const char *name, nc_type xtype, size_t len, const unsigned char *op);
extern int nc_get_att_uchar(int ncid, int varid, const char *name, unsigned char *ip);
extern int nc_put_att_schar(int ncid, int varid, const char *name, nc_type xtype, size_t len, const signed char *op);
extern int nc_get_att_schar(int ncid, int varid, const char *name, signed char *ip);
extern int nc_put_att_short(int ncid, int varid, const char *name, nc_type xtype, size_t len, const short *op);
extern int nc_get_att_short(int ncid, int varid, const char *name, short *ip);
extern int nc_put_att_int(int ncid, int varid, const char *name, nc_type xtype, size_t len, const int *op);
extern int nc_get_att_int(int ncid, int varid, const char *name, int *ip);
extern int nc_put_att_long(int ncid, int varid, const char *name, nc_type xtype, size_t len, const long *op);
extern int nc_get_att_long(int ncid, int varid, const char *name, long *ip);
extern int nc_put_att_float(int ncid, int varid, const char *name, nc_type xtype, size_t len, const float *op);
extern int nc_get_att_float(int ncid, int varid, const char *name, float *ip);
extern int nc_put_att_double(int ncid, int varid, const char *name, nc_type xtype, size_t len, const double *op);
extern int nc_get_att_double(int ncid, int varid, const char *name, double *ip);
extern int nc_put_att_ushort(int ncid, int varid, const char *name, nc_type xtype, size_t len, const unsigned short *op);
extern int nc_get_att_ushort(int ncid, int varid, const char *name, unsigned short *ip);
extern int nc_put_att_uint(int ncid, int varid, const char *name, nc_type xtype, size_t len, const unsigned int *op);
extern int nc_get_att_uint(int ncid, int varid, const char *name, unsigned int *ip);
extern int nc_put_att_longlong(int ncid, int varid, const char *name, nc_type xtype, size_t len, const long long *op);
extern int nc_get_att_longlong(int ncid, int varid, const char *name, long long *ip);
extern int nc_put_att_ulonglong(int ncid, int varid, const char *name, nc_type xtype, size_t len, const unsigned long long *op);
extern int nc_get_att_ulonglong(int ncid, int varid, const char *name, unsigned long long *ip);
extern int nc_def_var(int ncid, const char *name, nc_type xtype, int ndims, const int *dimidsp, int *varidp);
extern int nc_inq_var(int ncid, int varid, char *name, nc_type *xtypep, int *ndimsp, int *dimidsp, int *nattsp);
extern int nc_inq_varid(int ncid, const char *name, int *varidp);
extern int nc_inq_varname(int ncid, int varid, char *name);
extern int nc_inq_vartype(int ncid, int varid, nc_type *xtypep);
extern int nc_inq_varndims(int ncid, int varid, int *ndimsp);
extern int nc_inq_vardimid(int ncid, int varid, int *dimidsp);
extern int nc_inq_varnatts(int ncid, int varid, int *nattsp);
extern int nc_rename_var(int ncid, int varid, const char *name);
extern int nc_copy_var(int ncid_in, int varid, int ncid_out);
extern int nc_put_var1_text(int ncid, int varid, const size_t *indexp, const char *op);
extern int nc_get_var1_text(int ncid, int varid, const size_t *indexp, char *ip);
extern int nc_put_var1_uchar(int ncid, int varid, const size_t *indexp, const unsigned char *op);
extern int nc_get_var1_uchar(int ncid, int varid, const size_t *indexp, unsigned char *ip);
extern int nc_put_var1_schar(int ncid, int varid, const size_t *indexp, const signed char *op);
extern int nc_get_var1_schar(int ncid, int varid, const size_t *indexp, signed char *ip);
extern int nc_put_var1_short(int ncid, int varid, const size_t *indexp, const short *op);
extern int nc_get_var1_short(int ncid, int varid, const size_t *indexp, short *ip);
extern int nc_put_var1_int(int ncid, int varid, const size_t *indexp, const int *op);
extern int nc_get_var1_int(int ncid, int varid, const size_t *indexp, int *ip);
extern int nc_put_var1_long(int ncid, int varid, const size_t *indexp, const long *op);
extern int nc_get_var1_long(int ncid, int varid, const size_t *indexp, long *ip);
extern int nc_put_var1_float(int ncid, int varid, const size_t *indexp, const float *op);
extern int nc_get_var1_float(int ncid, int varid, const size_t *indexp, float *ip);
extern int nc_put_var1_double(int ncid, int varid, const size_t *indexp, const double *op);
extern int nc_get_var1_double(int ncid, int varid, const size_t *indexp, double *ip);
extern int nc_put_var1_ushort(int ncid, int varid, const size_t *indexp, const unsigned short *op);
extern int nc_get_var1_ushort(int ncid, int varid, const size_t *indexp, unsigned short *ip);
extern int nc_put_var1_uint(int ncid, int varid, const size_t *indexp, const unsigned int *op);
extern int nc_get_var1_uint(int ncid, int varid, const size_t *indexp, unsigned int *ip);
extern int nc_put_var1_longlong(int ncid, int varid, const size_t *indexp, const long long *op);
extern int nc_get_var1_longlong(int ncid, int varid, const size_t *indexp, long long *ip);
extern int nc_put_var1_ulonglong(int ncid, int varid, const size_t *indexp, const unsigned long long *op);
extern int nc_get_var1_ulonglong(int ncid, int varid, const size_t *indexp, unsigned long long *ip);
extern int nc_put_var1_string(int ncid, int varid, const size_t *indexp, const char **op);
extern int nc_get_var1_string(int ncid, int varid, const size_t *indexp, char **ip);
extern int nc_put_vara_text(int ncid, int varid, const size_t *startp, const size_t *countp, const char *op);
extern int nc_get_vara_text(int ncid, int varid, const size_t *startp, const size_t *countp, char *ip);
extern int nc_put_vara_uchar(int ncid, int varid, const size_t *startp, const size_t *countp, const unsigned char *op);
extern int nc_get_vara_uchar(int ncid, int varid, const size_t *startp, const size_t *countp, unsigned char *ip);
extern int nc_put_vara_schar(int ncid, int varid, const size_t *startp, const size_t *countp, const signed char *op);
extern int nc_get_vara_schar(int ncid, int varid, const size_t *startp, const size_t *countp, signed char *ip);
extern int nc_put_vara_short(int ncid, int varid, const size_t *startp, const size_t *countp, const short *op);
extern int nc_get_vara_short(int ncid, int varid, const size_t *startp, const size_t *countp, short *ip);
extern int nc_put_vara_int(int ncid, int varid, const size_t *startp, const size_t *countp, const int *op);
extern int nc_get_vara_int(int ncid, int varid, const size_t *startp, const size_t *countp, int *ip);
extern int nc_put_vara_long(int ncid, int varid, const size_t *startp, const size_t *countp, const long *op);
extern int nc_get_vara_long(int ncid, int varid, const size_t *startp, const size_t *countp, long *ip);
extern int nc_put_vara_float(int ncid, int varid, const size_t *startp, const size_t *countp, const float *op);
extern int nc_get_vara_float(int ncid, int varid, const size_t *startp, const size_t *countp, float *ip);
extern int nc_put_vara_double(int ncid, int varid, const size_t *startp, const size_t *countp, const double *op);
extern int nc_get_vara_double(int ncid, int varid, const size_t *startp, const size_t *countp, double *ip);
extern int nc_put_vara_ushort(int ncid, int varid, const size_t *startp, const size_t *countp, const unsigned short *op);
extern int nc_get_vara_ushort(int ncid, int varid, const size_t *startp, const size_t *countp, unsigned short *ip);
extern int nc_put_vara_uint(int ncid, int varid, const size_t *startp, const size_t *countp, const unsigned int *op);
extern int nc_get_vara_uint(int ncid, int varid, const size_t *startp, const size_t *countp, unsigned int *ip);
extern int nc_put_vara_longlong(int ncid, int varid, const size_t *startp, const size_t *countp, const long long *op);
extern int nc_get_vara_longlong(int ncid, int varid, const size_t *startp, const size_t *countp, long long *ip);
extern int nc_put_vara_ulonglong(int ncid, int varid, const size_t *startp, const size_t *countp, const unsigned long long *op);
extern int nc_get_vara_ulonglong(int ncid, int varid, const size_t *startp, const size_t *countp, unsigned long long *ip);
extern int nc_put_vara_string(int ncid, int varid, const size_t *startp, const size_t *countp, const char **op);
extern int nc_get_vara_string(int ncid, int varid, const size_t *startp, const size_t *countp, char **ip);
extern int nc_put_vars_text(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const char *op);
extern int nc_get_vars_text(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, char *ip);
extern int nc_put_vars_uchar(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const unsigned char *op);
extern int nc_get_vars_uchar(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, unsigned char *ip);
extern int nc_put_vars_schar(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const signed char *op);
extern int nc_get_vars_schar(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, signed char *ip);
extern int nc_put_vars_short(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const short *op);
extern int nc_get_vars_short(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, short *ip);
extern int nc_put_vars_int(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const int *op);
extern int nc_get_vars_int(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, int *ip);
extern int nc_put_vars_long(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const long *op);
extern int nc_get_vars_long(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, long *ip);
extern int nc_put_vars_float(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const float *op);
extern int nc_get_vars_float(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, float *ip);
extern int nc_put_vars_double(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const double *op);
extern int nc_get_vars_double(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, double *ip);
extern int nc_put_vars_ushort(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const unsigned short *op);
extern int nc_get_vars_ushort(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, unsigned short *ip);
extern int nc_put_vars_uint(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const unsigned int *op);
extern int nc_get_vars_uint(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, unsigned int *ip);
extern int nc_put_vars_longlong(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const long long *op);
extern int nc_get_vars_longlong(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, long long *ip);
extern int nc_put_vars_ulonglong(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const unsigned long long *op);
extern int nc_get_vars_ulonglong(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, unsigned long long *ip);
extern int nc_put_vars_string(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const char **op);
extern int nc_get_vars_string(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, char **ip);
extern int nc_put_varm_text(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t *imapp, const char *op);
extern int nc_get_varm_text(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t *imapp, char *ip);
extern int nc_put_varm_uchar(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t *imapp, const unsigned char *op);
extern int nc_get_varm_uchar(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t *imapp, unsigned char *ip);
extern int nc_put_varm_schar(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t *imapp, const signed char *op);
extern int nc_get_varm_schar(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t *imapp, signed char *ip);
extern int nc_put_varm_short(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t *imapp, const short *op);
extern int nc_get_varm_short(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t *imapp, short *ip);
extern int nc_put_varm_int(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t *imapp, const int *op);
extern int nc_get_varm_int(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t *imapp, int *ip);
extern int nc_put_varm_long(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t *imapp, const long *op);
extern int nc_get_varm_long(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t *imapp, long *ip);
extern int nc_put_varm_float(int ncid, int varid,const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t *imapp, const float *op);
extern int nc_get_varm_float(int ncid, int varid,const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t *imapp, float *ip);
extern int nc_put_varm_double(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t *imapp, const double *op);
extern int nc_get_varm_double(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t * imapp, double *ip);
extern int nc_put_varm_ushort(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t * imapp, const unsigned short *op);
extern int nc_get_varm_ushort(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t * imapp, unsigned short *ip);
extern int nc_put_varm_uint(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t * imapp, const unsigned int *op);
extern int nc_get_varm_uint(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t * imapp, unsigned int *ip);
extern int nc_put_varm_longlong(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t * imapp, const long long *op);
extern int nc_get_varm_longlong(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t * imapp, long long *ip);
extern int nc_put_varm_ulonglong(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t * imapp, const unsigned long long *op);
extern int nc_get_varm_ulonglong(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t * imapp, unsigned long long *ip);
extern int nc_put_varm_string(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t * imapp, const char **op);
extern int nc_get_varm_string(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t * imapp, char **ip);
extern int nc_put_var_text(int ncid, int varid, const char *op);
extern int nc_get_var_text(int ncid, int varid, char *ip);
extern int nc_put_var_uchar(int ncid, int varid, const unsigned char *op);
extern int nc_get_var_uchar(int ncid, int varid, unsigned char *ip);
extern int nc_put_var_schar(int ncid, int varid, const signed char *op);
extern int nc_get_var_schar(int ncid, int varid, signed char *ip);
extern int nc_put_var_short(int ncid, int varid, const short *op);
extern int nc_get_var_short(int ncid, int varid, short *ip);
extern int nc_put_var_int(int ncid, int varid, const int *op);
extern int nc_get_var_int(int ncid, int varid, int *ip);
extern int nc_put_var_long(int ncid, int varid, const long *op);
extern int nc_get_var_long(int ncid, int varid, long *ip);
extern int nc_put_var_float(int ncid, int varid, const float *op);
extern int nc_get_var_float(int ncid, int varid, float *ip);
extern int nc_put_var_double(int ncid, int varid, const double *op);
extern int nc_get_var_double(int ncid, int varid, double *ip);
extern int nc_put_var_ushort(int ncid, int varid, const unsigned short *op);
extern int nc_get_var_ushort(int ncid, int varid, unsigned short *ip);
extern int nc_put_var_uint(int ncid, int varid, const unsigned int *op);
extern int nc_get_var_uint(int ncid, int varid, unsigned int *ip);
extern int nc_put_var_longlong(int ncid, int varid, const long long *op);
extern int nc_get_var_longlong(int ncid, int varid, long long *ip);
extern int nc_put_var_ulonglong(int ncid, int varid, const unsigned long long *op);
extern int nc_get_var_ulonglong(int ncid, int varid, unsigned long long *ip);
extern int nc_put_var_string(int ncid, int varid, const char **op);
extern int nc_get_var_string(int ncid, int varid, char **ip);
extern int nc_put_att_ubyte(int ncid, int varid, const char *name, nc_type xtype, size_t len, const unsigned char *op);
extern int nc_get_att_ubyte(int ncid, int varid, const char *name, unsigned char *ip);
extern int nc_put_var1_ubyte(int ncid, int varid, const size_t *indexp, const unsigned char *op);
extern int nc_get_var1_ubyte(int ncid, int varid, const size_t *indexp, unsigned char *ip);
extern int nc_put_vara_ubyte(int ncid, int varid, const size_t *startp, const size_t *countp, const unsigned char *op);
extern int nc_get_vara_ubyte(int ncid, int varid, const size_t *startp, const size_t *countp, unsigned char *ip);
extern int nc_put_vars_ubyte(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const unsigned char *op);
extern int nc_get_vars_ubyte(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, unsigned char *ip);
extern int nc_put_varm_ubyte(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t * imapp, const unsigned char *op);
extern int nc_get_varm_ubyte(int ncid, int varid, const size_t *startp, const size_t *countp, const ptrdiff_t *stridep, const ptrdiff_t * imapp, unsigned char *ip);
extern int nc_put_var_ubyte(int ncid, int varid, const unsigned char *op);
extern int nc_get_var_ubyte(int ncid, int varid, unsigned char *ip);
extern int nc_set_log_level(int new_level);
extern int nc_show_metadata(int ncid);
extern int nc_delete(const char *path);
extern int nc__create_mp(const char *path, int cmode, size_t initialsz, int basepe, size_t *chunksizehintp, int *ncidp);
extern int nc__open_mp(const char *path, int mode, int basepe, size_t *chunksizehintp, int *ncidp);
extern int nc_delete_mp(const char *path, int basepe);
extern int nc_set_base_pe(int ncid, int pe);
extern int nc_inq_base_pe(int ncid, int *pe);
extern int nctypelen(nc_type datatype);
extern int ncerr;
enum { NC_FATAL = 1 };
enum { NC_VERBOSE = 2 };
extern int ncopts;
extern void nc_advise(const char *cdf_routine_name, int err, const char *fmt,...);
typedef int nclong;
extern int nccreate(const char* path, int cmode);
extern int ncopen(const char* path, int mode);
extern int ncsetfill(int ncid, int fillmode);
extern int ncredef(int ncid);
extern int ncendef(int ncid);
extern int ncsync(int ncid);
extern int ncabort(int ncid);
extern int ncclose(int ncid);
extern int ncinquire(int ncid, int *ndimsp, int *nvarsp, int *nattsp, int *unlimdimp);
extern int ncdimdef(int ncid, const char *name, long len);
extern int ncdimid(int ncid, const char *name);
extern int ncdiminq(int ncid, int dimid, char *name, long *lenp);
extern int ncdimrename(int ncid, int dimid, const char *name);
extern int ncattput(int ncid, int varid, const char *name, nc_type xtype, int len, const void *op);
extern int ncattinq(int ncid, int varid, const char *name, nc_type *xtypep, int *lenp);
extern int ncattget(int ncid, int varid, const char *name, void *ip);
extern int ncattcopy(int ncid_in, int varid_in, const char *name, int ncid_out, int varid_out);
extern int ncattname(int ncid, int varid, int attnum, char *name);
extern int ncattrename(int ncid, int varid, const char *name, const char *newname);
extern int ncattdel(int ncid, int varid, const char *name);
extern int ncvardef(int ncid, const char *name, nc_type xtype, int ndims, const int *dimidsp);
extern int ncvarid(int ncid, const char *name);
extern int ncvarinq(int ncid, int varid, char *name, nc_type *xtypep, int *ndimsp, int *dimidsp, int *nattsp);
extern int ncvarput1(int ncid, int varid, const long *indexp, const void *op);
extern int ncvarget1(int ncid, int varid, const long *indexp, void *ip);
extern int ncvarput(int ncid, int varid, const long *startp, const long *countp, const void *op);
extern int ncvarget(int ncid, int varid, const long *startp, const long *countp, void *ip);
extern int ncvarputs(int ncid, int varid, const long *startp, const long *countp, const long *stridep, const void *op);
extern int ncvargets(int ncid, int varid, const long *startp, const long *countp, const long *stridep, void *ip);
extern int ncvarputg(int ncid, int varid, const long *startp, const long *countp, const long *stridep, const long *imapp, const void *op);
extern int ncvargetg(int ncid, int varid, const long *startp, const long *countp, const long *stridep, const long *imapp, void *ip);
extern int ncvarrename(int ncid, int varid, const char *name);
extern int ncrecinq(int ncid, int *nrecvarsp, int *recvaridsp, long *recsizesp);
extern int ncrecget(int ncid, long recnum, void **datap);
extern int ncrecput(int ncid, long recnum, void *const *datap);
extern int nc_initialize(void);
extern int nc_finalize(void);
/* END /usr/include/netcdf.h */
]]

xpcall(function()
	ffi.cdef(code)	
end, function(err)
	print(require 'template.showcode'(code))
	print(err..debug.traceback())
	os.exit(1)
end)

return netcdf
