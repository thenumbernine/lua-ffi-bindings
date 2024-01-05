local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/jit/jit.h */
/* ++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/appdomain.h */
/* +++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-publib.h */
enum { MONO_BEGIN_DECLS = 1 };
enum { MONO_END_DECLS = 1 };
/* ++++ BEGIN /usr/lib/gcc/x86_64-linux-gnu/13/include/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* ++++ END   /usr/lib/gcc/x86_64-linux-gnu/13/include/stdint.h */
/* #define MONO_API_EXPORT __attribute__ ((__visibility__ ("default"))) ### string, not number "__attribute__ ((__visibility__ (\"default\")))" */
enum { MONO_API_IMPORT = 1 };
/* ++++ BEGIN /usr/include/stdlib.h */
]] require 'ffi.req' 'c.stdlib' ffi.cdef[[
/* ++++ END   /usr/include/stdlib.h */
enum { MONO_EXTERN_C = 1 };
enum { MONO_API_NO_EXTERN_C = 1 };
/* #define MONO_API MONO_EXTERN_C MONO_API_NO_EXTERN_C ### string, not number "MONO_EXTERN_C MONO_API_NO_EXTERN_C" */
enum { MONO_API_DATA = 0 };
typedef int32_t mono_bool;
typedef uint8_t mono_byte;
typedef mono_byte MonoBoolean;
typedef uint16_t mono_unichar2;
typedef uint32_t mono_unichar4;
typedef void (*MonoFunc) (void* data, void* user_data);
typedef void (*MonoHFunc) (void* key, void* value, void* user_data);
void mono_free (void *);
enum { MONO_ALLOCATOR_VTABLE_VERSION = 1 };
typedef struct {
	int version;
	void *(*malloc) (size_t size);
	void *(*realloc) (void *mem, size_t count);
	void (*free) (void *mem);
	void *(*calloc) (size_t count, size_t size);
} MonoAllocatorVTable;
mono_bool mono_set_allocator_vtable (MonoAllocatorVTable* vtable);
enum { MONO_CONST_RETURN = 0 };
enum { MONO_ZERO_LEN_ARRAY = 0 };
enum { MONO_RT_EXTERNAL_ONLY = 1 };
enum { MONO_RT_MANAGED_ATTR = 1 };
/* #define MONO_DEPRECATED MONO_API MONO_RT_EXTERNAL_ONLY _MONO_DEPRECATED ### string, not number "MONO_API MONO_RT_EXTERNAL_ONLY _MONO_DEPRECATED" */
/* +++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-publib.h */
/* +++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-forward.h */
typedef struct _MonoDomain MonoDomain;
typedef struct _MonoJitInfo MonoJitInfo;
/* +++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-forward.h */
/* +++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/object.h */
/* ++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-forward.h */
/* ++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-forward.h */
/* ++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/object-forward.h */
/* +++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-publib.h */
/* +++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-publib.h */
typedef struct _MonoClass MonoClass;
typedef struct _MonoImage MonoImage;
typedef struct _MonoMethod MonoMethod;
typedef struct _MonoObject MonoObject;
typedef struct _MonoException MonoException;
typedef struct _MonoReflectionAssembly MonoReflectionAssembly;
typedef struct _MonoReflectionTypeBuilder MonoReflectionTypeBuilder;
/* ++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/object-forward.h */
/* ++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/class.h */
/* +++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/metadata.h */
/* ++++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-publib.h */
/* ++++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-publib.h */
/* ++++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-forward.h */
/* ++++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-forward.h */
/* ++++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/blob.h */
enum { MONO_TYPE_END = 0x00, MONO_TYPE_VOID = 0x01, MONO_TYPE_BOOLEAN = 0x02, MONO_TYPE_CHAR = 0x03, MONO_TYPE_I1 = 0x04, MONO_TYPE_U1 = 0x05, MONO_TYPE_I2 = 0x06, MONO_TYPE_U2 = 0x07, MONO_TYPE_I4 = 0x08, MONO_TYPE_U4 = 0x09, MONO_TYPE_I8 = 0x0a, MONO_TYPE_U8 = 0x0b, MONO_TYPE_R4 = 0x0c, MONO_TYPE_R8 = 0x0d, MONO_TYPE_STRING = 0x0e, MONO_TYPE_PTR = 0x0f, MONO_TYPE_BYREF = 0x10, MONO_TYPE_VALUETYPE = 0x11, MONO_TYPE_CLASS = 0x12, MONO_TYPE_VAR = 0x13, MONO_TYPE_ARRAY = 0x14, MONO_TYPE_GENERICINST= 0x15, MONO_TYPE_TYPEDBYREF = 0x16, MONO_TYPE_I = 0x18, MONO_TYPE_U = 0x19, MONO_TYPE_FNPTR = 0x1b, MONO_TYPE_OBJECT = 0x1c, MONO_TYPE_SZARRAY = 0x1d, MONO_TYPE_MVAR = 0x1e, MONO_TYPE_CMOD_REQD = 0x1f, MONO_TYPE_CMOD_OPT = 0x20, MONO_TYPE_INTERNAL = 0x21, MONO_TYPE_MODIFIER = 0x40, MONO_TYPE_SENTINEL = 0x41, MONO_TYPE_PINNED = 0x45, MONO_TYPE_ENUM = 0x55 }; typedef int MonoTypeEnum;
enum { MONO_TABLE_MODULE, MONO_TABLE_TYPEREF, MONO_TABLE_TYPEDEF, MONO_TABLE_FIELD_POINTER, MONO_TABLE_FIELD, MONO_TABLE_METHOD_POINTER, MONO_TABLE_METHOD, MONO_TABLE_PARAM_POINTER, MONO_TABLE_PARAM, MONO_TABLE_INTERFACEIMPL, MONO_TABLE_MEMBERREF, MONO_TABLE_CONSTANT, MONO_TABLE_CUSTOMATTRIBUTE, MONO_TABLE_FIELDMARSHAL, MONO_TABLE_DECLSECURITY, MONO_TABLE_CLASSLAYOUT, MONO_TABLE_FIELDLAYOUT, MONO_TABLE_STANDALONESIG, MONO_TABLE_EVENTMAP, MONO_TABLE_EVENT_POINTER, MONO_TABLE_EVENT, MONO_TABLE_PROPERTYMAP, MONO_TABLE_PROPERTY_POINTER, MONO_TABLE_PROPERTY, MONO_TABLE_METHODSEMANTICS, MONO_TABLE_METHODIMPL, MONO_TABLE_MODULEREF, MONO_TABLE_TYPESPEC, MONO_TABLE_IMPLMAP, MONO_TABLE_FIELDRVA, MONO_TABLE_UNUSED6, MONO_TABLE_UNUSED7, MONO_TABLE_ASSEMBLY, MONO_TABLE_ASSEMBLYPROCESSOR, MONO_TABLE_ASSEMBLYOS, MONO_TABLE_ASSEMBLYREF, MONO_TABLE_ASSEMBLYREFPROCESSOR, MONO_TABLE_ASSEMBLYREFOS, MONO_TABLE_FILE, MONO_TABLE_EXPORTEDTYPE, MONO_TABLE_MANIFESTRESOURCE, MONO_TABLE_NESTEDCLASS, MONO_TABLE_GENERICPARAM, MONO_TABLE_METHODSPEC, MONO_TABLE_GENERICPARAMCONSTRAINT, MONO_TABLE_UNUSED8, MONO_TABLE_UNUSED9, MONO_TABLE_UNUSED10, MONO_TABLE_DOCUMENT, MONO_TABLE_METHODBODY, MONO_TABLE_LOCALSCOPE, MONO_TABLE_LOCALVARIABLE, MONO_TABLE_LOCALCONSTANT, MONO_TABLE_IMPORTSCOPE, MONO_TABLE_STATEMACHINEMETHOD, MONO_TABLE_CUSTOMDEBUGINFORMATION  
 
}; typedef int MonoMetaTableEnum;
/* ++++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/blob.h */
/* ++++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/row-indexes.h */
enum { MONO_ASSEMBLY_HASH_ALG, MONO_ASSEMBLY_MAJOR_VERSION, MONO_ASSEMBLY_MINOR_VERSION, MONO_ASSEMBLY_BUILD_NUMBER, MONO_ASSEMBLY_REV_NUMBER, MONO_ASSEMBLY_FLAGS, MONO_ASSEMBLY_PUBLIC_KEY, MONO_ASSEMBLY_NAME, MONO_ASSEMBLY_CULTURE, MONO_ASSEMBLY_SIZE };
enum { MONO_ASSEMBLYOS_PLATFORM, MONO_ASSEMBLYOS_MAJOR_VERSION, MONO_ASSEMBLYOS_MINOR_VERSION, MONO_ASSEMBLYOS_SIZE };
enum { MONO_ASSEMBLY_PROCESSOR, MONO_ASSEMBLY_PROCESSOR_SIZE };
enum { MONO_ASSEMBLYREF_MAJOR_VERSION, MONO_ASSEMBLYREF_MINOR_VERSION, MONO_ASSEMBLYREF_BUILD_NUMBER, MONO_ASSEMBLYREF_REV_NUMBER, MONO_ASSEMBLYREF_FLAGS, MONO_ASSEMBLYREF_PUBLIC_KEY, MONO_ASSEMBLYREF_NAME, MONO_ASSEMBLYREF_CULTURE, MONO_ASSEMBLYREF_HASH_VALUE, MONO_ASSEMBLYREF_SIZE };
enum { MONO_ASSEMBLYREFOS_PLATFORM, MONO_ASSEMBLYREFOS_MAJOR_VERSION, MONO_ASSEMBLYREFOS_MINOR_VERSION, MONO_ASSEMBLYREFOS_ASSEMBLYREF, MONO_ASSEMBLYREFOS_SIZE };
enum { MONO_ASSEMBLYREFPROC_PROCESSOR, MONO_ASSEMBLYREFPROC_ASSEMBLYREF, MONO_ASSEMBLYREFPROC_SIZE };
enum { MONO_CLASS_LAYOUT_PACKING_SIZE, MONO_CLASS_LAYOUT_CLASS_SIZE, MONO_CLASS_LAYOUT_PARENT, MONO_CLASS_LAYOUT_SIZE };
enum { MONO_CONSTANT_TYPE, MONO_CONSTANT_PADDING, MONO_CONSTANT_PARENT, MONO_CONSTANT_VALUE, MONO_CONSTANT_SIZE };
enum { MONO_CUSTOM_ATTR_PARENT, MONO_CUSTOM_ATTR_TYPE, MONO_CUSTOM_ATTR_VALUE, MONO_CUSTOM_ATTR_SIZE };
enum { MONO_DECL_SECURITY_ACTION, MONO_DECL_SECURITY_PARENT, MONO_DECL_SECURITY_PERMISSIONSET, MONO_DECL_SECURITY_SIZE };
enum { MONO_EVENT_MAP_PARENT, MONO_EVENT_MAP_EVENTLIST, MONO_EVENT_MAP_SIZE };
enum { MONO_EVENT_FLAGS, MONO_EVENT_NAME, MONO_EVENT_TYPE, MONO_EVENT_SIZE };
enum { MONO_EVENT_POINTER_EVENT, MONO_EVENT_POINTER_SIZE };
enum { MONO_EXP_TYPE_FLAGS, MONO_EXP_TYPE_TYPEDEF, MONO_EXP_TYPE_NAME, MONO_EXP_TYPE_NAMESPACE, MONO_EXP_TYPE_IMPLEMENTATION, MONO_EXP_TYPE_SIZE };
enum { MONO_FIELD_FLAGS, MONO_FIELD_NAME, MONO_FIELD_SIGNATURE, MONO_FIELD_SIZE };
enum { MONO_FIELD_LAYOUT_OFFSET, MONO_FIELD_LAYOUT_FIELD, MONO_FIELD_LAYOUT_SIZE };
enum { MONO_FIELD_MARSHAL_PARENT, MONO_FIELD_MARSHAL_NATIVE_TYPE, MONO_FIELD_MARSHAL_SIZE };
enum { MONO_FIELD_POINTER_FIELD, MONO_FIELD_POINTER_SIZE };
enum { MONO_FIELD_RVA_RVA, MONO_FIELD_RVA_FIELD, MONO_FIELD_RVA_SIZE };
enum { MONO_FILE_FLAGS, MONO_FILE_NAME, MONO_FILE_HASH_VALUE, MONO_FILE_SIZE };
enum { MONO_IMPLMAP_FLAGS, MONO_IMPLMAP_MEMBER, MONO_IMPLMAP_NAME, MONO_IMPLMAP_SCOPE, MONO_IMPLMAP_SIZE };
enum { MONO_INTERFACEIMPL_CLASS, MONO_INTERFACEIMPL_INTERFACE, MONO_INTERFACEIMPL_SIZE };
enum { MONO_MANIFEST_OFFSET, MONO_MANIFEST_FLAGS, MONO_MANIFEST_NAME, MONO_MANIFEST_IMPLEMENTATION, MONO_MANIFEST_SIZE };
enum { MONO_MEMBERREF_CLASS, MONO_MEMBERREF_NAME, MONO_MEMBERREF_SIGNATURE, MONO_MEMBERREF_SIZE };
enum { MONO_METHOD_RVA, MONO_METHOD_IMPLFLAGS, MONO_METHOD_FLAGS, MONO_METHOD_NAME, MONO_METHOD_SIGNATURE, MONO_METHOD_PARAMLIST, MONO_METHOD_SIZE };
enum { MONO_METHODIMPL_CLASS, MONO_METHODIMPL_BODY, MONO_METHODIMPL_DECLARATION, MONO_METHODIMPL_SIZE };
enum { MONO_METHOD_POINTER_METHOD, MONO_METHOD_POINTER_SIZE };
enum { MONO_METHOD_SEMA_SEMANTICS, MONO_METHOD_SEMA_METHOD, MONO_METHOD_SEMA_ASSOCIATION, MONO_METHOD_SEMA_SIZE };
enum { MONO_MODULE_GENERATION, MONO_MODULE_NAME, MONO_MODULE_MVID, MONO_MODULE_ENC, MONO_MODULE_ENCBASE, MONO_MODULE_SIZE };
enum { MONO_MODULEREF_NAME, MONO_MODULEREF_SIZE };
enum { MONO_NESTED_CLASS_NESTED, MONO_NESTED_CLASS_ENCLOSING, MONO_NESTED_CLASS_SIZE };
enum { MONO_PARAM_FLAGS, MONO_PARAM_SEQUENCE, MONO_PARAM_NAME, MONO_PARAM_SIZE };
enum { MONO_PARAM_POINTER_PARAM, MONO_PARAM_POINTER_SIZE };
enum { MONO_PROPERTY_FLAGS, MONO_PROPERTY_NAME, MONO_PROPERTY_TYPE, MONO_PROPERTY_SIZE };
enum { MONO_PROPERTY_POINTER_PROPERTY, MONO_PROPERTY_POINTER_SIZE };
enum { MONO_PROPERTY_MAP_PARENT, MONO_PROPERTY_MAP_PROPERTY_LIST, MONO_PROPERTY_MAP_SIZE };
enum { MONO_STAND_ALONE_SIGNATURE, MONO_STAND_ALONE_SIGNATURE_SIZE };
enum { MONO_TYPEDEF_FLAGS, MONO_TYPEDEF_NAME, MONO_TYPEDEF_NAMESPACE, MONO_TYPEDEF_EXTENDS, MONO_TYPEDEF_FIELD_LIST, MONO_TYPEDEF_METHOD_LIST, MONO_TYPEDEF_SIZE };
enum { MONO_TYPEREF_SCOPE, MONO_TYPEREF_NAME, MONO_TYPEREF_NAMESPACE, MONO_TYPEREF_SIZE };
enum { MONO_TYPESPEC_SIGNATURE, MONO_TYPESPEC_SIZE };
enum { MONO_GENERICPARAM_NUMBER, MONO_GENERICPARAM_FLAGS, MONO_GENERICPARAM_OWNER, MONO_GENERICPARAM_NAME, MONO_GENERICPARAM_SIZE };
enum { MONO_METHODSPEC_METHOD, MONO_METHODSPEC_SIGNATURE, MONO_METHODSPEC_SIZE };
enum { MONO_GENPARCONSTRAINT_GENERICPAR, MONO_GENPARCONSTRAINT_CONSTRAINT, MONO_GENPARCONSTRAINT_SIZE };
enum { MONO_DOCUMENT_NAME, MONO_DOCUMENT_HASHALG, MONO_DOCUMENT_HASH, MONO_DOCUMENT_LANGUAGE, MONO_DOCUMENT_SIZE };
enum { MONO_METHODBODY_DOCUMENT, MONO_METHODBODY_SEQ_POINTS, MONO_METHODBODY_SIZE };
enum { MONO_LOCALSCOPE_METHOD, MONO_LOCALSCOPE_IMPORTSCOPE, MONO_LOCALSCOPE_VARIABLELIST, MONO_LOCALSCOPE_CONSTANTLIST, MONO_LOCALSCOPE_STARTOFFSET, MONO_LOCALSCOPE_LENGTH, MONO_LOCALSCOPE_SIZE };
enum { MONO_LOCALVARIABLE_ATTRIBUTES, MONO_LOCALVARIABLE_INDEX, MONO_LOCALVARIABLE_NAME, MONO_LOCALVARIABLE_SIZE };
enum { MONO_CUSTOMDEBUGINFORMATION_PARENT, MONO_CUSTOMDEBUGINFORMATION_KIND, MONO_CUSTOMDEBUGINFORMATION_VALUE, MONO_CUSTOMDEBUGINFORMATION_SIZE };
enum { MONO_TYPEDEFORREF_TYPEDEF, MONO_TYPEDEFORREF_TYPEREF, MONO_TYPEDEFORREF_TYPESPEC, MONO_TYPEDEFORREF_BITS = 2, MONO_TYPEDEFORREF_MASK = 3 };
enum { MONO_HASCONSTANT_FIEDDEF, MONO_HASCONSTANT_PARAM, MONO_HASCONSTANT_PROPERTY, MONO_HASCONSTANT_BITS = 2, MONO_HASCONSTANT_MASK = 3 };
enum { MONO_CUSTOM_ATTR_METHODDEF, MONO_CUSTOM_ATTR_FIELDDEF, MONO_CUSTOM_ATTR_TYPEREF, MONO_CUSTOM_ATTR_TYPEDEF, MONO_CUSTOM_ATTR_PARAMDEF, MONO_CUSTOM_ATTR_INTERFACE, MONO_CUSTOM_ATTR_MEMBERREF, MONO_CUSTOM_ATTR_MODULE, MONO_CUSTOM_ATTR_PERMISSION, MONO_CUSTOM_ATTR_PROPERTY, MONO_CUSTOM_ATTR_EVENT, MONO_CUSTOM_ATTR_SIGNATURE, MONO_CUSTOM_ATTR_MODULEREF, MONO_CUSTOM_ATTR_TYPESPEC, MONO_CUSTOM_ATTR_ASSEMBLY, MONO_CUSTOM_ATTR_ASSEMBLYREF, MONO_CUSTOM_ATTR_FILE, MONO_CUSTOM_ATTR_EXP_TYPE, MONO_CUSTOM_ATTR_MANIFEST, MONO_CUSTOM_ATTR_GENERICPAR, MONO_CUSTOM_ATTR_GENERICPARAMCONSTRAINT, MONO_CUSTOM_ATTR_BITS = 5, MONO_CUSTOM_ATTR_MASK = 0x1F };
enum { MONO_HAS_FIELD_MARSHAL_FIELDSREF, MONO_HAS_FIELD_MARSHAL_PARAMDEF, MONO_HAS_FIELD_MARSHAL_BITS = 1, MONO_HAS_FIELD_MARSHAL_MASK = 1 };
enum { MONO_HAS_DECL_SECURITY_TYPEDEF, MONO_HAS_DECL_SECURITY_METHODDEF, MONO_HAS_DECL_SECURITY_ASSEMBLY, MONO_HAS_DECL_SECURITY_BITS = 2, MONO_HAS_DECL_SECURITY_MASK = 3 };
enum { MONO_MEMBERREF_PARENT_TYPEDEF, MONO_MEMBERREF_PARENT_TYPEREF, MONO_MEMBERREF_PARENT_MODULEREF, MONO_MEMBERREF_PARENT_METHODDEF, MONO_MEMBERREF_PARENT_TYPESPEC, MONO_MEMBERREF_PARENT_BITS = 3, MONO_MEMBERREF_PARENT_MASK = 7 };
enum { MONO_HAS_SEMANTICS_EVENT, MONO_HAS_SEMANTICS_PROPERTY, MONO_HAS_SEMANTICS_BITS = 1, MONO_HAS_SEMANTICS_MASK = 1 };
enum { MONO_METHODDEFORREF_METHODDEF, MONO_METHODDEFORREF_METHODREF, MONO_METHODDEFORREF_BITS = 1, MONO_METHODDEFORREF_MASK = 1 };
enum { MONO_MEMBERFORWD_FIELDDEF, MONO_MEMBERFORWD_METHODDEF, MONO_MEMBERFORWD_BITS = 1, MONO_MEMBERFORWD_MASK = 1 };
enum { MONO_IMPLEMENTATION_FILE, MONO_IMPLEMENTATION_ASSEMBLYREF, MONO_IMPLEMENTATION_EXP_TYPE, MONO_IMPLEMENTATION_BITS = 2, MONO_IMPLEMENTATION_MASK = 3 };
enum { MONO_CUSTOM_ATTR_TYPE_TYPEREF, MONO_CUSTOM_ATTR_TYPE_TYPEDEF, MONO_CUSTOM_ATTR_TYPE_METHODDEF, MONO_CUSTOM_ATTR_TYPE_MEMBERREF, MONO_CUSTOM_ATTR_TYPE_STRING, MONO_CUSTOM_ATTR_TYPE_BITS = 3, MONO_CUSTOM_ATTR_TYPE_MASK = 7 };
enum { MONO_RESOLUTION_SCOPE_MODULE, MONO_RESOLUTION_SCOPE_MODULEREF, MONO_RESOLUTION_SCOPE_ASSEMBLYREF, MONO_RESOLUTION_SCOPE_TYPEREF, MONO_RESOLUTION_SCOPE_BITS = 2, MONO_RESOLUTION_SCOPE_MASK = 3 };
enum { MONO_RESOLTION_SCOPE_MODULE, MONO_RESOLTION_SCOPE_MODULEREF, MONO_RESOLTION_SCOPE_ASSEMBLYREF, MONO_RESOLTION_SCOPE_TYPEREF, MONO_RESOLTION_SCOPE_BITS = 2, MONO_RESOLTION_SCOPE_MASK = 3 };
enum { MONO_TYPEORMETHOD_TYPE, MONO_TYPEORMETHOD_METHOD, MONO_TYPEORMETHOD_BITS = 1, MONO_TYPEORMETHOD_MASK = 1 };
/* ++++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/row-indexes.h */
/* ++++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/image.h */
/* +++++++ BEGIN /usr/include/stdio.h */
]] require 'ffi.req' 'c.stdio' ffi.cdef[[
/* +++++++ END   /usr/include/stdio.h */
/* +++++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-publib.h */
/* +++++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-publib.h */
/* +++++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-error.h */
/* ++++++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-publib.h */
/* ++++++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-publib.h */
enum { MONO_ERROR_FREE_STRINGS = 0x0001, MONO_ERROR_INCOMPLETE = 0x0002, MONO_ERROR_MEMPOOL_BOXED = 0x0004 };
enum { MONO_ERROR_NONE = 0, MONO_ERROR_MISSING_METHOD = 1, MONO_ERROR_MISSING_FIELD = 2, MONO_ERROR_TYPE_LOAD = 3, MONO_ERROR_FILE_NOT_FOUND = 4, MONO_ERROR_BAD_IMAGE = 5, MONO_ERROR_OUT_OF_MEMORY = 6, MONO_ERROR_ARGUMENT = 7, MONO_ERROR_ARGUMENT_NULL = 11, MONO_ERROR_ARGUMENT_OUT_OF_RANGE = 14, MONO_ERROR_NOT_VERIFIABLE = 8, MONO_ERROR_INVALID_PROGRAM = 12, MONO_ERROR_MEMBER_ACCESS = 13, MONO_ERROR_GENERIC = 9, MONO_ERROR_EXCEPTION_INSTANCE = 10, MONO_ERROR_CLEANUP_CALLED_SENTINEL = 0xffff };
typedef union _MonoError {
	uint32_t init;
	struct {
	uint16_t error_code;
	uint16_t private_flags;
	void *hidden_1 [12];
};
} MonoErrorExternal;
typedef MonoErrorExternal MonoError;
typedef struct _MonoErrorBoxed MonoErrorBoxed;
void mono_error_init (MonoError *error);
void mono_error_init_flags (MonoError *error, unsigned short flags);
void mono_error_cleanup (MonoError *error);
mono_bool mono_error_ok (MonoError *error);
unsigned short mono_error_get_error_code (MonoError *error);
const char* mono_error_get_message (MonoError *error);
/* +++++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-error.h */
/* +++++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/object-forward.h */
/* +++++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/object-forward.h */
typedef struct _MonoAssembly MonoAssembly;
typedef struct _MonoAssemblyName MonoAssemblyName;
typedef struct _MonoTableInfo MonoTableInfo;
enum { MONO_IMAGE_OK, MONO_IMAGE_ERROR_ERRNO, MONO_IMAGE_MISSING_ASSEMBLYREF, MONO_IMAGE_IMAGE_INVALID }; typedef int MonoImageOpenStatus;
void mono_images_init (void);
void mono_images_cleanup (void);
MonoImage *mono_image_open (const char *fname, MonoImageOpenStatus *status);
MonoImage *mono_image_open_full (const char *fname, MonoImageOpenStatus *status, mono_bool refonly);
MonoImage *mono_pe_file_open (const char *fname, MonoImageOpenStatus *status);
MonoImage *mono_image_open_from_data (char *data, uint32_t data_len, mono_bool need_copy, MonoImageOpenStatus *status);
MonoImage *mono_image_open_from_data_full (char *data, uint32_t data_len, mono_bool need_copy, MonoImageOpenStatus *status, mono_bool refonly);
MonoImage *mono_image_open_from_data_with_name (char *data, uint32_t data_len, mono_bool need_copy, MonoImageOpenStatus *status, mono_bool refonly, const char *name);
void mono_image_fixup_vtable (MonoImage *image);
MonoImage *mono_image_loaded (const char *name);
MonoImage *mono_image_loaded_full (const char *name, mono_bool refonly);
MonoImage *mono_image_loaded_by_guid (const char *guid);
MonoImage *mono_image_loaded_by_guid_full (const char *guid, mono_bool refonly);
void mono_image_init (MonoImage *image);
void mono_image_close (MonoImage *image);
void mono_image_addref (MonoImage *image);
const char *mono_image_strerror (MonoImageOpenStatus status);
int mono_image_ensure_section (MonoImage *image, const char *section);
int mono_image_ensure_section_idx (MonoImage *image, int section);
uint32_t mono_image_get_entry_point (MonoImage *image);
const char *mono_image_get_resource (MonoImage *image, uint32_t offset, uint32_t *size);
MonoImage* mono_image_load_file_for_image (MonoImage *image, int fileidx);
MonoImage* mono_image_load_module (MonoImage *image, int idx);
const char* mono_image_get_name (MonoImage *image);
const char* mono_image_get_filename (MonoImage *image);
const char * mono_image_get_guid (MonoImage *image);
MonoAssembly* mono_image_get_assembly (MonoImage *image);
mono_bool mono_image_is_dynamic (MonoImage *image);
char* mono_image_rva_map (MonoImage *image, uint32_t rva);
const MonoTableInfo *mono_image_get_table_info (MonoImage *image, int table_id);
int mono_image_get_table_rows (MonoImage *image, int table_id);
int mono_table_info_get_rows (const MonoTableInfo *table);
void* mono_image_lookup_resource (MonoImage *image, uint32_t res_id, uint32_t lang_id, mono_unichar2 *name);
const char* mono_image_get_public_key (MonoImage *image, uint32_t *size);
const char* mono_image_get_strong_name (MonoImage *image, uint32_t *size);
uint32_t mono_image_strong_name_position (MonoImage *image, uint32_t *size);
void mono_image_add_to_name_cache (MonoImage *image, const char *nspace, const char *name, uint32_t idx);
mono_bool mono_image_has_authenticode_entry (MonoImage *image);
/* ++++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/image.h */
/* ++++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/object-forward.h */
/* ++++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/object-forward.h */
enum { MONO_EXCEPTION_CLAUSE_NONE, MONO_EXCEPTION_CLAUSE_FILTER, MONO_EXCEPTION_CLAUSE_FINALLY, MONO_EXCEPTION_CLAUSE_FAULT = 4 }; typedef int MonoExceptionEnum;
enum { MONO_CALL_DEFAULT, MONO_CALL_C, MONO_CALL_STDCALL, MONO_CALL_THISCALL, MONO_CALL_FASTCALL, MONO_CALL_VARARG }; typedef int MonoCallConvention;
enum { MONO_NATIVE_BOOLEAN = 0x02, MONO_NATIVE_I1 = 0x03, MONO_NATIVE_U1 = 0x04, MONO_NATIVE_I2 = 0x05, MONO_NATIVE_U2 = 0x06, MONO_NATIVE_I4 = 0x07, MONO_NATIVE_U4 = 0x08, MONO_NATIVE_I8 = 0x09, MONO_NATIVE_U8 = 0x0a, MONO_NATIVE_R4 = 0x0b, MONO_NATIVE_R8 = 0x0c, MONO_NATIVE_CURRENCY = 0x0f, MONO_NATIVE_BSTR = 0x13, MONO_NATIVE_LPSTR = 0x14, MONO_NATIVE_LPWSTR = 0x15, MONO_NATIVE_LPTSTR = 0x16, MONO_NATIVE_BYVALTSTR = 0x17, MONO_NATIVE_IUNKNOWN = 0x19, MONO_NATIVE_IDISPATCH = 0x1a, MONO_NATIVE_STRUCT = 0x1b, MONO_NATIVE_INTERFACE = 0x1c, MONO_NATIVE_SAFEARRAY = 0x1d, MONO_NATIVE_BYVALARRAY = 0x1e, MONO_NATIVE_INT = 0x1f, MONO_NATIVE_UINT = 0x20, MONO_NATIVE_VBBYREFSTR = 0x22, MONO_NATIVE_ANSIBSTR = 0x23, MONO_NATIVE_TBSTR = 0x24, MONO_NATIVE_VARIANTBOOL = 0x25, MONO_NATIVE_FUNC = 0x26, MONO_NATIVE_ASANY = 0x28, MONO_NATIVE_LPARRAY = 0x2a, MONO_NATIVE_LPSTRUCT = 0x2b, MONO_NATIVE_CUSTOM = 0x2c, MONO_NATIVE_ERROR = 0x2d, MONO_NATIVE_UTF8STR = 0x30, MONO_NATIVE_MAX = 0x50 }; typedef int MonoMarshalNative;
enum { MONO_VARIANT_EMPTY = 0x00, MONO_VARIANT_NULL = 0x01, MONO_VARIANT_I2 = 0x02, MONO_VARIANT_I4 = 0x03, MONO_VARIANT_R4 = 0x04, MONO_VARIANT_R8 = 0x05, MONO_VARIANT_CY = 0x06, MONO_VARIANT_DATE = 0x07, MONO_VARIANT_BSTR = 0x08, MONO_VARIANT_DISPATCH = 0x09, MONO_VARIANT_ERROR = 0x0a, MONO_VARIANT_BOOL = 0x0b, MONO_VARIANT_VARIANT = 0x0c, MONO_VARIANT_UNKNOWN = 0x0d, MONO_VARIANT_DECIMAL = 0x0e, MONO_VARIANT_I1 = 0x10, MONO_VARIANT_UI1 = 0x11, MONO_VARIANT_UI2 = 0x12, MONO_VARIANT_UI4 = 0x13, MONO_VARIANT_I8 = 0x14, MONO_VARIANT_UI8 = 0x15, MONO_VARIANT_INT = 0x16, MONO_VARIANT_UINT = 0x17, MONO_VARIANT_VOID = 0x18, MONO_VARIANT_HRESULT = 0x19, MONO_VARIANT_PTR = 0x1a, MONO_VARIANT_SAFEARRAY = 0x1b, MONO_VARIANT_CARRAY = 0x1c, MONO_VARIANT_USERDEFINED = 0x1d, MONO_VARIANT_LPSTR = 0x1e, MONO_VARIANT_LPWSTR = 0x1f, MONO_VARIANT_RECORD = 0x24, MONO_VARIANT_FILETIME = 0x40, MONO_VARIANT_BLOB = 0x41, MONO_VARIANT_STREAM = 0x42, MONO_VARIANT_STORAGE = 0x43, MONO_VARIANT_STREAMED_OBJECT = 0x44, MONO_VARIANT_STORED_OBJECT = 0x45, MONO_VARIANT_BLOB_OBJECT = 0x46, MONO_VARIANT_CF = 0x47, MONO_VARIANT_CLSID = 0x48, MONO_VARIANT_VECTOR = 0x1000, MONO_VARIANT_ARRAY = 0x2000, MONO_VARIANT_BYREF = 0x4000 }; typedef int MonoMarshalVariant;
enum { MONO_MARSHAL_CONV_NONE, MONO_MARSHAL_CONV_BOOL_VARIANTBOOL, MONO_MARSHAL_CONV_BOOL_I4, MONO_MARSHAL_CONV_STR_BSTR, MONO_MARSHAL_CONV_STR_LPSTR, MONO_MARSHAL_CONV_LPSTR_STR, MONO_MARSHAL_CONV_LPTSTR_STR, MONO_MARSHAL_CONV_STR_LPWSTR, MONO_MARSHAL_CONV_LPWSTR_STR, MONO_MARSHAL_CONV_STR_LPTSTR, MONO_MARSHAL_CONV_STR_ANSIBSTR, MONO_MARSHAL_CONV_STR_TBSTR, MONO_MARSHAL_CONV_STR_BYVALSTR, MONO_MARSHAL_CONV_STR_BYVALWSTR, MONO_MARSHAL_CONV_SB_LPSTR, MONO_MARSHAL_CONV_SB_LPTSTR, MONO_MARSHAL_CONV_SB_LPWSTR, MONO_MARSHAL_CONV_LPSTR_SB, MONO_MARSHAL_CONV_LPTSTR_SB, MONO_MARSHAL_CONV_LPWSTR_SB, MONO_MARSHAL_CONV_ARRAY_BYVALARRAY, MONO_MARSHAL_CONV_ARRAY_BYVALCHARARRAY, MONO_MARSHAL_CONV_ARRAY_SAVEARRAY, MONO_MARSHAL_CONV_ARRAY_LPARRAY, MONO_MARSHAL_FREE_LPARRAY, MONO_MARSHAL_CONV_OBJECT_INTERFACE, MONO_MARSHAL_CONV_OBJECT_IDISPATCH, MONO_MARSHAL_CONV_OBJECT_IUNKNOWN, MONO_MARSHAL_CONV_OBJECT_STRUCT, MONO_MARSHAL_CONV_DEL_FTN, MONO_MARSHAL_CONV_FTN_DEL, MONO_MARSHAL_FREE_ARRAY, MONO_MARSHAL_CONV_BSTR_STR, MONO_MARSHAL_CONV_SAFEHANDLE, MONO_MARSHAL_CONV_HANDLEREF, MONO_MARSHAL_CONV_STR_UTF8STR, MONO_MARSHAL_CONV_SB_UTF8STR, MONO_MARSHAL_CONV_UTF8STR_STR, MONO_MARSHAL_CONV_UTF8STR_SB, MONO_MARSHAL_CONV_FIXED_BUFFER }; typedef int MonoMarshalConv;
enum { MONO_MARSHAL_CONV_INVALID = -1 };
typedef struct {
	MonoMarshalNative native;
	union {
	struct { MonoMarshalNative elem_type;
	int32_t num_elem;
	int16_t param_num;
	int16_t elem_mult;
} array_data;
struct {
	char *custom_name;
	char *cookie;
	MonoImage *image;
} custom_data;
struct {
	MonoMarshalVariant elem_type;
	int32_t num_elem;
} safearray_data;
} data;
} MonoMarshalSpec;
void mono_metadata_init (void);
void mono_metadata_decode_row (const MonoTableInfo *t, int idx, uint32_t *res, int res_size);
uint32_t mono_metadata_decode_row_col (const MonoTableInfo *t, int idx, unsigned int col);
int mono_metadata_compute_size (MonoImage *meta, int tableindex, uint32_t *result_bitfield);
const char *mono_metadata_locate (MonoImage *meta, int table, int idx);
const char *mono_metadata_locate_token (MonoImage *meta, uint32_t token);
const char *mono_metadata_string_heap (MonoImage *meta, uint32_t table_index);
const char *mono_metadata_blob_heap (MonoImage *meta, uint32_t table_index);
const char *mono_metadata_user_string (MonoImage *meta, uint32_t table_index);
const char *mono_metadata_guid_heap (MonoImage *meta, uint32_t table_index);
uint32_t mono_metadata_typedef_from_field (MonoImage *meta, uint32_t table_index);
uint32_t mono_metadata_typedef_from_method (MonoImage *meta, uint32_t table_index);
uint32_t mono_metadata_nested_in_typedef (MonoImage *meta, uint32_t table_index);
uint32_t mono_metadata_nesting_typedef (MonoImage *meta, uint32_t table_index, uint32_t start_index);
MonoClass** mono_metadata_interfaces_from_typedef (MonoImage *meta, uint32_t table_index, unsigned int *count);
uint32_t mono_metadata_events_from_typedef (MonoImage *meta, uint32_t table_index, unsigned int *end_idx);
uint32_t mono_metadata_methods_from_event (MonoImage *meta, uint32_t table_index, unsigned int *end);
uint32_t mono_metadata_properties_from_typedef (MonoImage *meta, uint32_t table_index, unsigned int *end);
uint32_t mono_metadata_methods_from_property (MonoImage *meta, uint32_t table_index, unsigned int *end);
uint32_t mono_metadata_packing_from_typedef (MonoImage *meta, uint32_t table_index, uint32_t *packing, uint32_t *size);
const char* mono_metadata_get_marshal_info (MonoImage *meta, uint32_t idx, mono_bool is_field);
uint32_t mono_metadata_custom_attrs_from_index (MonoImage *meta, uint32_t cattr_index);
MonoMarshalSpec *mono_metadata_parse_marshal_spec (MonoImage *image, const char *ptr);
void mono_metadata_free_marshal_spec (MonoMarshalSpec *spec);
uint32_t mono_metadata_implmap_from_method (MonoImage *meta, uint32_t method_idx);
void mono_metadata_field_info (MonoImage *meta, uint32_t table_index, uint32_t *offset, uint32_t *rva, MonoMarshalSpec **marshal_spec);
uint32_t mono_metadata_get_constant_index (MonoImage *meta, uint32_t token, uint32_t hint);
uint32_t mono_metadata_decode_value (const char *ptr, const char **rptr);
int32_t mono_metadata_decode_signed_value (const char *ptr, const char **rptr);
uint32_t mono_metadata_decode_blob_size (const char *ptr, const char **rptr);
void mono_metadata_encode_value (uint32_t value, char *bug, char **endbuf);
typedef struct {
	uint32_t flags;
	uint32_t try_offset;
	uint32_t try_len;
	uint32_t handler_offset;
	uint32_t handler_len;
	union {
	uint32_t filter_offset;
	MonoClass *catch_class;
} data;
} MonoExceptionClause;
typedef struct _MonoType MonoType;
typedef struct _MonoGenericInst MonoGenericInst;
typedef struct _MonoGenericClass MonoGenericClass;
typedef struct _MonoGenericContext MonoGenericContext;
typedef struct _MonoGenericContainer MonoGenericContainer;
typedef struct _MonoGenericParam MonoGenericParam;
typedef struct _MonoArrayType MonoArrayType;
typedef struct _MonoMethodSignature MonoMethodSignature;
typedef struct invalid_name MonoGenericMethod;
typedef struct {
	unsigned int required : 1;
	unsigned int token : 31;
} MonoCustomMod;
typedef struct _MonoCustomModContainer {
	uint8_t count;
	MonoImage *image;
	MonoCustomMod modifiers [1];
} MonoCustomModContainer;
struct _MonoArrayType {
	MonoClass *eklass;
	uint8_t rank;
	uint8_t numsizes;
	uint8_t numlobounds;
	int *sizes;
	int *lobounds;
};
typedef struct _MonoMethodHeader MonoMethodHeader;
enum { MONO_PARSE_TYPE, MONO_PARSE_MOD_TYPE, MONO_PARSE_LOCAL, MONO_PARSE_PARAM, MONO_PARSE_RET, MONO_PARSE_FIELD }; typedef int MonoParseTypeMode;
mono_bool mono_type_is_byref (MonoType *type);
int mono_type_get_type (MonoType *type);
MonoMethodSignature* mono_type_get_signature (MonoType *type);
MonoClass* mono_type_get_class (MonoType *type);
MonoArrayType* mono_type_get_array_type (MonoType *type);
MonoType* mono_type_get_ptr_type (MonoType *type);
MonoClass* mono_type_get_modifiers (MonoType *type, mono_bool *is_required, void **iter);
mono_bool mono_type_is_struct (MonoType *type);
mono_bool mono_type_is_void (MonoType *type);
mono_bool mono_type_is_pointer (MonoType *type);
mono_bool mono_type_is_reference (MonoType *type);
mono_bool mono_type_is_generic_parameter (MonoType *type);
MonoType* mono_signature_get_return_type (MonoMethodSignature *sig);
MonoType* mono_signature_get_params (MonoMethodSignature *sig, void **iter);
uint32_t mono_signature_get_param_count (MonoMethodSignature *sig);
uint32_t mono_signature_get_call_conv (MonoMethodSignature *sig);
int mono_signature_vararg_start (MonoMethodSignature *sig);
mono_bool mono_signature_is_instance (MonoMethodSignature *sig);
mono_bool mono_signature_explicit_this (MonoMethodSignature *sig);
mono_bool mono_signature_param_is_out (MonoMethodSignature *sig, int param_num);
uint32_t mono_metadata_parse_typedef_or_ref (MonoImage *m, const char *ptr, const char **rptr);
int mono_metadata_parse_custom_mod (MonoImage *m, MonoCustomMod *dest, const char *ptr, const char **rptr);
MonoArrayType *mono_metadata_parse_array (MonoImage *m, const char *ptr, const char **rptr);
void mono_metadata_free_array (MonoArrayType *array);
MonoType *mono_metadata_parse_type (MonoImage *m, MonoParseTypeMode mode, short opt_attrs, const char *ptr, const char **rptr);
MonoType *mono_metadata_parse_param (MonoImage *m, const char *ptr, const char **rptr);
MonoType *mono_metadata_parse_field_type (MonoImage *m, short field_flags, const char *ptr, const char **rptr);
MonoType *mono_type_create_from_typespec (MonoImage *image, uint32_t type_spec);
void mono_metadata_free_type (MonoType *type);
int mono_type_size (MonoType *type, int *alignment);
int mono_type_stack_size (MonoType *type, int *alignment);
mono_bool mono_type_generic_inst_is_valuetype (MonoType *type);
mono_bool mono_metadata_generic_class_is_valuetype (MonoGenericClass *gclass);
unsigned int mono_metadata_type_hash (MonoType *t1);
mono_bool mono_metadata_type_equal (MonoType *t1, MonoType *t2);
MonoMethodSignature *mono_metadata_signature_alloc (MonoImage *image, uint32_t nparams);
MonoMethodSignature *mono_metadata_signature_dup (MonoMethodSignature *sig);
MonoMethodSignature *mono_metadata_parse_signature (MonoImage *image, uint32_t token);
MonoMethodSignature *mono_metadata_parse_method_signature (MonoImage *m, int def, const char *ptr, const char **rptr);
void mono_metadata_free_method_signature (MonoMethodSignature *method);
mono_bool mono_metadata_signature_equal (MonoMethodSignature *sig1, MonoMethodSignature *sig2);
unsigned int mono_signature_hash (MonoMethodSignature *sig);
MonoMethodHeader *mono_metadata_parse_mh (MonoImage *m, const char *ptr);
void mono_metadata_free_mh (MonoMethodHeader *mh);
const unsigned char* mono_method_header_get_code (MonoMethodHeader *header, uint32_t* code_size, uint32_t* max_stack);
MonoType** mono_method_header_get_locals (MonoMethodHeader *header, uint32_t* num_locals, mono_bool *init_locals);
int mono_method_header_get_num_clauses (MonoMethodHeader *header);
int mono_method_header_get_clauses (MonoMethodHeader *header, MonoMethod *method, void **iter, MonoExceptionClause *clause);
uint32_t mono_type_to_unmanaged (MonoType *type, MonoMarshalSpec *mspec, mono_bool as_field, mono_bool unicode, MonoMarshalConv *conv);
uint32_t mono_metadata_token_from_dor (uint32_t dor_index);
char *mono_guid_to_string (const uint8_t *guid);
char *mono_guid_to_string_minimal (const uint8_t *guid);
uint32_t mono_metadata_declsec_from_index (MonoImage *meta, uint32_t idx);
uint32_t mono_metadata_translate_token_index (MonoImage *image, int table, uint32_t idx);
void mono_metadata_decode_table_row (MonoImage *image, int table, int idx, uint32_t *res, int res_size);
uint32_t mono_metadata_decode_table_row_col (MonoImage *image, int table, int idx, unsigned int col);
/* +++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/metadata.h */
/* +++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/image.h */
/* +++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/image.h */
/* +++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/loader.h */
/* ++++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-forward.h */
/* ++++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-forward.h */
/* ++++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/metadata.h */
/* ++++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/metadata.h */
/* ++++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/image.h */
/* ++++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/image.h */
/* ++++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-error.h */
/* ++++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-error.h */
typedef mono_bool (*MonoStackWalk) (MonoMethod *method, int32_t native_offset, int32_t il_offset, mono_bool managed, void* data);
MonoMethod * mono_get_method (MonoImage *image, uint32_t token, MonoClass *klass);
MonoMethod * mono_get_method_full (MonoImage *image, uint32_t token, MonoClass *klass, MonoGenericContext *context);
MonoMethod * mono_get_method_constrained (MonoImage *image, uint32_t token, MonoClass *constrained_class, MonoGenericContext *context, MonoMethod **cil_method);
void mono_free_method (MonoMethod *method);
MonoMethodSignature* mono_method_get_signature_full (MonoMethod *method, MonoImage *image, uint32_t token, MonoGenericContext *context);
MonoMethodSignature* mono_method_get_signature (MonoMethod *method, MonoImage *image, uint32_t token);
MonoMethodSignature* mono_method_signature (MonoMethod *method);
MonoMethodHeader* mono_method_get_header (MonoMethod *method);
const char* mono_method_get_name (MonoMethod *method);
MonoClass* mono_method_get_class (MonoMethod *method);
uint32_t mono_method_get_token (MonoMethod *method);
uint32_t mono_method_get_flags (MonoMethod *method, uint32_t *iflags);
uint32_t mono_method_get_index (MonoMethod *method);
void mono_add_internal_call (const char *name, const void* method);
void mono_dangerous_add_raw_internal_call (const char *name, const void* method);
void* mono_lookup_internal_call (MonoMethod *method);
const char* mono_lookup_icall_symbol (MonoMethod *m);
void mono_dllmap_insert (MonoImage *assembly, const char *dll, const char *func, const char *tdll, const char *tfunc);
void* mono_lookup_pinvoke_call (MonoMethod *method, const char **exc_class, const char **exc_arg);
void mono_method_get_param_names (MonoMethod *method, const char **names);
uint32_t mono_method_get_param_token (MonoMethod *method, int idx);
void mono_method_get_marshal_info (MonoMethod *method, MonoMarshalSpec **mspecs);
mono_bool mono_method_has_marshal_info (MonoMethod *method);
MonoMethod* mono_method_get_last_managed (void);
void mono_stack_walk (MonoStackWalk func, void* user_data);
void mono_stack_walk_no_il (MonoStackWalk func, void* user_data);
typedef mono_bool (*MonoStackWalkAsyncSafe) (MonoMethod *method, MonoDomain *domain, void *base_address, int offset, void* data);
void mono_stack_walk_async_safe (MonoStackWalkAsyncSafe func, void *initial_sig_context, void* user_data);
MonoMethodHeader* mono_method_get_header_checked (MonoMethod *method, MonoError *error);
/* +++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/loader.h */
/* +++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-error.h */
/* +++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-error.h */
typedef struct MonoVTable MonoVTable;
typedef struct _MonoClassField MonoClassField;
typedef struct _MonoProperty MonoProperty;
typedef struct _MonoEvent MonoEvent;
enum { MONO_TYPE_NAME_FORMAT_IL, MONO_TYPE_NAME_FORMAT_REFLECTION, MONO_TYPE_NAME_FORMAT_FULL_NAME, MONO_TYPE_NAME_FORMAT_ASSEMBLY_QUALIFIED }; typedef int MonoTypeNameFormat;
MonoClass * mono_class_get (MonoImage *image, uint32_t type_token);
MonoClass * mono_class_get_full (MonoImage *image, uint32_t type_token, MonoGenericContext *context);
mono_bool mono_class_init (MonoClass *klass);
MonoVTable * mono_class_vtable (MonoDomain *domain, MonoClass *klass);
MonoClass * mono_class_from_name (MonoImage *image, const char* name_space, const char *name);
MonoClass * mono_class_from_name_case (MonoImage *image, const char* name_space, const char *name);
MonoMethod * mono_class_get_method_from_name_flags (MonoClass *klass, const char *name, int param_count, int flags);
MonoClass * mono_class_from_typeref (MonoImage *image, uint32_t type_token);
MonoClass * mono_class_from_typeref_checked (MonoImage *image, uint32_t type_token, MonoError *error);
MonoClass * mono_class_from_generic_parameter (MonoGenericParam *param, MonoImage *image, mono_bool is_mvar);
MonoType* mono_class_inflate_generic_type (MonoType *type, MonoGenericContext *context);
MonoMethod* mono_class_inflate_generic_method (MonoMethod *method, MonoGenericContext *context);
MonoMethod * mono_get_inflated_method (MonoMethod *method);
MonoClassField* mono_field_from_token (MonoImage *image, uint32_t token, MonoClass **retklass, MonoGenericContext *context);
MonoClass * mono_bounded_array_class_get (MonoClass *element_class, uint32_t rank, mono_bool bounded);
MonoClass * mono_array_class_get (MonoClass *element_class, uint32_t rank);
MonoClass * mono_ptr_class_get (MonoType *type);
MonoClassField * mono_class_get_field (MonoClass *klass, uint32_t field_token);
MonoClassField * mono_class_get_field_from_name (MonoClass *klass, const char *name);
uint32_t mono_class_get_field_token (MonoClassField *field);
uint32_t mono_class_get_event_token (MonoEvent *event);
MonoProperty * mono_class_get_property_from_name (MonoClass *klass, const char *name);
uint32_t mono_class_get_property_token (MonoProperty *prop);
int32_t mono_array_element_size (MonoClass *ac);
int32_t mono_class_instance_size (MonoClass *klass);
int32_t mono_class_array_element_size (MonoClass *klass);
int32_t mono_class_data_size (MonoClass *klass);
int32_t mono_class_value_size (MonoClass *klass, uint32_t *align);
int32_t mono_class_min_align (MonoClass *klass);
MonoClass * mono_class_from_mono_type (MonoType *type);
mono_bool mono_class_is_subclass_of (MonoClass *klass, MonoClass *klassc, mono_bool check_interfaces);
mono_bool mono_class_is_assignable_from (MonoClass *klass, MonoClass *oklass);
void* mono_ldtoken (MonoImage *image, uint32_t token, MonoClass **retclass, MonoGenericContext *context);
char * mono_type_get_name_full (MonoType *type, MonoTypeNameFormat format);
char* mono_type_get_name (MonoType *type);
MonoType* mono_type_get_underlying_type (MonoType *type);
MonoImage* mono_class_get_image (MonoClass *klass);
MonoClass* mono_class_get_element_class (MonoClass *klass);
mono_bool mono_class_is_valuetype (MonoClass *klass);
mono_bool mono_class_is_enum (MonoClass *klass);
MonoType* mono_class_enum_basetype (MonoClass *klass);
MonoClass* mono_class_get_parent (MonoClass *klass);
MonoClass* mono_class_get_nesting_type (MonoClass *klass);
int mono_class_get_rank (MonoClass *klass);
uint32_t mono_class_get_flags (MonoClass *klass);
const char* mono_class_get_name (MonoClass *klass);
const char* mono_class_get_namespace (MonoClass *klass);
MonoType* mono_class_get_type (MonoClass *klass);
uint32_t mono_class_get_type_token (MonoClass *klass);
MonoType* mono_class_get_byref_type (MonoClass *klass);
int mono_class_num_fields (MonoClass *klass);
int mono_class_num_methods (MonoClass *klass);
int mono_class_num_properties (MonoClass *klass);
int mono_class_num_events (MonoClass *klass);
MonoClassField* mono_class_get_fields (MonoClass* klass, void **iter);
MonoMethod* mono_class_get_methods (MonoClass* klass, void **iter);
MonoProperty* mono_class_get_properties (MonoClass* klass, void **iter);
MonoEvent* mono_class_get_events (MonoClass* klass, void **iter);
MonoClass* mono_class_get_interfaces (MonoClass* klass, void **iter);
MonoClass* mono_class_get_nested_types (MonoClass* klass, void **iter);
mono_bool mono_class_is_delegate (MonoClass* klass);
mono_bool mono_class_implements_interface (MonoClass* klass, MonoClass* iface);
const char* mono_field_get_name (MonoClassField *field);
MonoType* mono_field_get_type (MonoClassField *field);
MonoClass* mono_field_get_parent (MonoClassField *field);
uint32_t mono_field_get_flags (MonoClassField *field);
uint32_t mono_field_get_offset (MonoClassField *field);
const char * mono_field_get_data (MonoClassField *field);
const char* mono_property_get_name (MonoProperty *prop);
MonoMethod* mono_property_get_set_method (MonoProperty *prop);
MonoMethod* mono_property_get_get_method (MonoProperty *prop);
MonoClass* mono_property_get_parent (MonoProperty *prop);
uint32_t mono_property_get_flags (MonoProperty *prop);
const char* mono_event_get_name (MonoEvent *event);
MonoMethod* mono_event_get_add_method (MonoEvent *event);
MonoMethod* mono_event_get_remove_method (MonoEvent *event);
MonoMethod* mono_event_get_remove_method (MonoEvent *event);
MonoMethod* mono_event_get_raise_method (MonoEvent *event);
MonoClass* mono_event_get_parent (MonoEvent *event);
uint32_t mono_event_get_flags (MonoEvent *event);
MonoMethod * mono_class_get_method_from_name (MonoClass *klass, const char *name, int param_count);
char * mono_class_name_from_token (MonoImage *image, uint32_t type_token);
mono_bool mono_method_can_access_field (MonoMethod *method, MonoClassField *field);
mono_bool mono_method_can_access_method (MonoMethod *method, MonoMethod *called);
mono_bool mono_class_is_nullable (MonoClass *klass);
MonoClass* mono_class_get_nullable_param (MonoClass *klass);
/* ++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/class.h */
/* ++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-error.h */
/* ++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-error.h */
typedef struct _MonoString MonoString;
typedef struct _MonoArray MonoArray;
typedef struct _MonoReflectionMethod MonoReflectionMethod;
typedef struct _MonoReflectionModule MonoReflectionModule;
typedef struct _MonoReflectionField MonoReflectionField;
typedef struct _MonoReflectionProperty MonoReflectionProperty;
typedef struct _MonoReflectionEvent MonoReflectionEvent;
typedef struct _MonoReflectionType MonoReflectionType;
typedef struct _MonoDelegate MonoDelegate;
typedef struct _MonoThreadsSync MonoThreadsSync;
typedef struct _MonoThread MonoThread;
typedef struct _MonoDynamicAssembly MonoDynamicAssembly;
typedef struct _MonoDynamicImage MonoDynamicImage;
typedef struct _MonoReflectionMethodBody MonoReflectionMethodBody;
typedef struct _MonoAppContext MonoAppContext;
struct _MonoObject {
	MonoVTable *vtable;
	MonoThreadsSync *synchronisation;
};
typedef MonoObject* (*MonoInvokeFunc) (MonoMethod *method, void *obj, void **params, MonoObject **exc, MonoError *error);
typedef void* (*MonoCompileFunc) (MonoMethod *method);
typedef void (*MonoMainThreadFunc) (void* user_data);
mono_unichar2 *mono_string_chars (MonoString *s);
int mono_string_length (MonoString *s);
MonoObject * mono_object_new (MonoDomain *domain, MonoClass *klass);
MonoObject * mono_object_new_specific (MonoVTable *vtable);
MonoObject * mono_object_new_fast (MonoVTable *vtable);
MonoObject * mono_object_new_alloc_specific (MonoVTable *vtable);
MonoObject * mono_object_new_from_token (MonoDomain *domain, MonoImage *image, uint32_t token);
MonoArray* mono_array_new (MonoDomain *domain, MonoClass *eclass, uintptr_t n);
MonoArray* mono_array_new_full (MonoDomain *domain, MonoClass *array_class, uintptr_t *lengths, intptr_t *lower_bounds);
MonoArray * mono_array_new_specific (MonoVTable *vtable, uintptr_t n);
MonoArray* mono_array_clone (MonoArray *array);
char* mono_array_addr_with_size (MonoArray *array, int size, uintptr_t idx);
uintptr_t mono_array_length (MonoArray *array);
MonoString* mono_string_empty (MonoDomain *domain);
MonoString* mono_string_empty_wrapper (void);
MonoString* mono_string_new_utf16 (MonoDomain *domain, const mono_unichar2 *text, int32_t len);
MonoString* mono_string_new_size (MonoDomain *domain, int32_t len);
MonoString* mono_ldstr (MonoDomain *domain, MonoImage *image, uint32_t str_index);
MonoString* mono_string_is_interned (MonoString *str);
MonoString* mono_string_intern (MonoString *str);
MonoString* mono_string_new (MonoDomain *domain, const char *text);
MonoString* mono_string_new_wrapper (const char *text);
MonoString* mono_string_new_len (MonoDomain *domain, const char *text, unsigned int length);
MonoString* mono_string_new_utf32 (MonoDomain *domain, const mono_unichar4 *text, int32_t len);
char * mono_string_to_utf8 (MonoString *string_obj);
char * mono_string_to_utf8_checked (MonoString *string_obj, MonoError *error);
mono_unichar2 * mono_string_to_utf16 (MonoString *string_obj);
mono_unichar4 * mono_string_to_utf32 (MonoString *string_obj);
MonoString * mono_string_from_utf16 ( mono_unichar2 *data);
MonoString * mono_string_from_utf32 ( mono_unichar4 *data);
mono_bool mono_string_equal (MonoString *s1, MonoString *s2);
unsigned int mono_string_hash (MonoString *s);
int mono_object_hash (MonoObject* obj);
MonoString * mono_object_to_string (MonoObject *obj, MonoObject **exc);
MonoObject * mono_value_box (MonoDomain *domain, MonoClass *klass, void* val);
void mono_value_copy (void* dest, void* src, MonoClass *klass);
void mono_value_copy_array (MonoArray *dest, int dest_idx, void* src, int count);
MonoVTable* mono_object_get_vtable (MonoObject *obj);
MonoDomain* mono_object_get_domain (MonoObject *obj);
MonoClass* mono_object_get_class (MonoObject *obj);
void* mono_object_unbox (MonoObject *obj);
MonoObject * mono_object_clone (MonoObject *obj);
MonoObject * mono_object_isinst (MonoObject *obj, MonoClass *klass);
MonoObject * mono_object_isinst_mbyref (MonoObject *obj, MonoClass *klass);
MonoObject * mono_object_castclass_mbyref (MonoObject *obj, MonoClass *klass);
mono_bool mono_monitor_try_enter (MonoObject *obj, uint32_t ms);
mono_bool mono_monitor_enter (MonoObject *obj);
void mono_monitor_enter_v4 (MonoObject *obj, char *lock_taken);
unsigned int mono_object_get_size (MonoObject *o);
void mono_monitor_exit (MonoObject *obj);
void mono_raise_exception (MonoException *ex);
mono_bool mono_runtime_set_pending_exception (MonoException *exc, mono_bool overwrite);
void mono_reraise_exception (MonoException *ex);
void mono_runtime_object_init (MonoObject *this_obj);
void mono_runtime_class_init (MonoVTable *vtable);
MonoDomain* mono_vtable_domain (MonoVTable *vtable);
MonoClass* mono_vtable_class (MonoVTable *vtable);
MonoMethod* mono_object_get_virtual_method (MonoObject *obj, MonoMethod *method);
MonoObject* mono_runtime_invoke (MonoMethod *method, void *obj, void **params, MonoObject **exc);
MonoMethod* mono_get_delegate_invoke (MonoClass *klass);
MonoMethod* mono_get_delegate_begin_invoke (MonoClass *klass);
MonoMethod* mono_get_delegate_end_invoke (MonoClass *klass);
MonoObject* mono_runtime_delegate_invoke (MonoObject *delegate, void **params, MonoObject **exc);
MonoObject* mono_runtime_invoke_array (MonoMethod *method, void *obj, MonoArray *params, MonoObject **exc);
void* mono_method_get_unmanaged_thunk (MonoMethod *method);
MonoArray* mono_runtime_get_main_args (void);
void mono_runtime_exec_managed_code (MonoDomain *domain, MonoMainThreadFunc main_func, void* main_args);
int mono_runtime_run_main (MonoMethod *method, int argc, char* argv[], MonoObject **exc);
int mono_runtime_exec_main (MonoMethod *method, MonoArray *args, MonoObject **exc);
int mono_runtime_set_main_args (int argc, char* argv[]);
void* mono_load_remote_field (MonoObject *this_obj, MonoClass *klass, MonoClassField *field, void **res);
MonoObject * mono_load_remote_field_new (MonoObject *this_obj, MonoClass *klass, MonoClassField *field);
void mono_store_remote_field (MonoObject *this_obj, MonoClass *klass, MonoClassField *field, void* val);
void mono_store_remote_field_new (MonoObject *this_obj, MonoClass *klass, MonoClassField *field, MonoObject *arg);
void mono_unhandled_exception (MonoObject *exc);
void mono_print_unhandled_exception (MonoObject *exc);
void* mono_compile_method (MonoMethod *method);
void mono_field_set_value (MonoObject *obj, MonoClassField *field, void *value);
void mono_field_static_set_value (MonoVTable *vt, MonoClassField *field, void *value);
void mono_field_get_value (MonoObject *obj, MonoClassField *field, void *value);
void mono_field_static_get_value (MonoVTable *vt, MonoClassField *field, void *value);
MonoObject * mono_field_get_value_object (MonoDomain *domain, MonoClassField *field, MonoObject *obj);
void mono_property_set_value (MonoProperty *prop, void *obj, void **params, MonoObject **exc);
MonoObject* mono_property_get_value (MonoProperty *prop, void *obj, void **params, MonoObject **exc);
uint32_t mono_gchandle_new (MonoObject *obj, mono_bool pinned);
uint32_t mono_gchandle_new_weakref (MonoObject *obj, mono_bool track_resurrection);
MonoObject* mono_gchandle_get_target (uint32_t gchandle);
void mono_gchandle_free (uint32_t gchandle);
typedef void (*mono_reference_queue_callback) (void *user_data);
typedef struct _MonoReferenceQueue MonoReferenceQueue;
MonoReferenceQueue* mono_gc_reference_queue_new (mono_reference_queue_callback callback);
void mono_gc_reference_queue_free (MonoReferenceQueue *queue);
mono_bool mono_gc_reference_queue_add (MonoReferenceQueue *queue, MonoObject *obj, void *user_data);
void mono_gc_wbarrier_set_field (MonoObject *obj, void* field_ptr, MonoObject* value);
void mono_gc_wbarrier_set_arrayref (MonoArray *arr, void* slot_ptr, MonoObject* value);
void mono_gc_wbarrier_arrayref_copy (void* dest_ptr, void* src_ptr, int count);
void mono_gc_wbarrier_generic_store (void* ptr, MonoObject* value);
void mono_gc_wbarrier_generic_store_atomic (void *ptr, MonoObject *value);
void mono_gc_wbarrier_generic_nostore (void* ptr);
void mono_gc_wbarrier_value_copy (void* dest, void* src, int count, MonoClass *klass);
void mono_gc_wbarrier_object_copy (MonoObject* obj, MonoObject *src);
/* +++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/object.h */
/* +++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/reflection.h */
/* ++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-publib.h */
/* ++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/utils/mono-publib.h */
/* ++++ BEGIN /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/object.h */
/* ++++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/object.h */
typedef struct MonoTypeNameParse MonoTypeNameParse;
typedef struct {
	MonoMethod *ctor;
	uint32_t data_size;
	const mono_byte* data;
} MonoCustomAttrEntry;
typedef struct {
	int num_attrs;
	int cached;
	MonoImage *image;
	MonoCustomAttrEntry attrs [0];
} MonoCustomAttrInfo;
/* #define MONO_SIZEOF_CUSTOM_ATTR_INFO (offsetof (MonoCustomAttrInfo, attrs)) ### string, not number "(offsetof (MonoCustomAttrInfo, attrs))" */
typedef struct {
	char **param_names;
	MonoMarshalSpec **param_marshall;
	MonoCustomAttrInfo **param_cattr;
	uint8_t** param_defaults;
	uint32_t *param_default_types;
	char *dllentry, *dll;
} MonoReflectionMethodAux;
enum { ResolveTokenError_OutOfRange, ResolveTokenError_BadTable, ResolveTokenError_Other }; typedef int MonoResolveTokenError;
int mono_reflection_parse_type (char *name, MonoTypeNameParse *info);
MonoType* mono_reflection_get_type (MonoImage* image, MonoTypeNameParse *info, mono_bool ignorecase, mono_bool *type_resolve);
void mono_reflection_free_type_info (MonoTypeNameParse *info);
MonoType* mono_reflection_type_from_name (char *name, MonoImage *image);
uint32_t mono_reflection_get_token (MonoObject *obj);
MonoReflectionAssembly* mono_assembly_get_object (MonoDomain *domain, MonoAssembly *assembly);
MonoReflectionModule* mono_module_get_object (MonoDomain *domain, MonoImage *image);
MonoReflectionModule* mono_module_file_get_object (MonoDomain *domain, MonoImage *image, int table_index);
MonoReflectionType* mono_type_get_object (MonoDomain *domain, MonoType *type);
MonoReflectionMethod* mono_method_get_object (MonoDomain *domain, MonoMethod *method, MonoClass *refclass);
MonoReflectionField* mono_field_get_object (MonoDomain *domain, MonoClass *klass, MonoClassField *field);
MonoReflectionProperty* mono_property_get_object (MonoDomain *domain, MonoClass *klass, MonoProperty *property);
MonoReflectionEvent* mono_event_get_object (MonoDomain *domain, MonoClass *klass, MonoEvent *event);
MonoArray* mono_param_get_objects (MonoDomain *domain, MonoMethod *method);
MonoReflectionMethodBody* mono_method_body_get_object (MonoDomain *domain, MonoMethod *method);
MonoObject *mono_get_dbnull_object (MonoDomain *domain);
MonoArray* mono_reflection_get_custom_attrs_by_type (MonoObject *obj, MonoClass *attr_klass, MonoError *error);
MonoArray* mono_reflection_get_custom_attrs (MonoObject *obj);
MonoArray* mono_reflection_get_custom_attrs_data (MonoObject *obj);
MonoArray* mono_reflection_get_custom_attrs_blob (MonoReflectionAssembly *assembly, MonoObject *ctor, MonoArray *ctorArgs, MonoArray *properties, MonoArray *porpValues, MonoArray *fields, MonoArray* fieldValues);
MonoCustomAttrInfo* mono_reflection_get_custom_attrs_info (MonoObject *obj);
MonoArray* mono_custom_attrs_construct (MonoCustomAttrInfo *cinfo);
MonoCustomAttrInfo* mono_custom_attrs_from_index (MonoImage *image, uint32_t idx);
MonoCustomAttrInfo* mono_custom_attrs_from_method (MonoMethod *method);
MonoCustomAttrInfo* mono_custom_attrs_from_class (MonoClass *klass);
MonoCustomAttrInfo* mono_custom_attrs_from_assembly (MonoAssembly *assembly);
MonoCustomAttrInfo* mono_custom_attrs_from_property (MonoClass *klass, MonoProperty *property);
MonoCustomAttrInfo* mono_custom_attrs_from_event (MonoClass *klass, MonoEvent *event);
MonoCustomAttrInfo* mono_custom_attrs_from_field (MonoClass *klass, MonoClassField *field);
MonoCustomAttrInfo* mono_custom_attrs_from_param (MonoMethod *method, uint32_t param);
mono_bool mono_custom_attrs_has_attr (MonoCustomAttrInfo *ainfo, MonoClass *attr_klass);
MonoObject* mono_custom_attrs_get_attr (MonoCustomAttrInfo *ainfo, MonoClass *attr_klass);
void mono_custom_attrs_free (MonoCustomAttrInfo *ainfo);
enum { MONO_DECLSEC_ACTION_MIN = 1 };
enum { MONO_DECLSEC_ACTION_MAX = 18 };
enum { MONO_DECLSEC_FLAG_REQUEST = 0x00000001, MONO_DECLSEC_FLAG_DEMAND = 0x00000002, MONO_DECLSEC_FLAG_ASSERT = 0x00000004, MONO_DECLSEC_FLAG_DENY = 0x00000008, MONO_DECLSEC_FLAG_PERMITONLY = 0x00000010, MONO_DECLSEC_FLAG_LINKDEMAND = 0x00000020, MONO_DECLSEC_FLAG_INHERITANCEDEMAND = 0x00000040, MONO_DECLSEC_FLAG_REQUEST_MINIMUM = 0x00000080, MONO_DECLSEC_FLAG_REQUEST_OPTIONAL = 0x00000100, MONO_DECLSEC_FLAG_REQUEST_REFUSE = 0x00000200, MONO_DECLSEC_FLAG_PREJIT_GRANT = 0x00000400, MONO_DECLSEC_FLAG_PREJIT_DENY = 0x00000800, MONO_DECLSEC_FLAG_NONCAS_DEMAND = 0x00001000, MONO_DECLSEC_FLAG_NONCAS_LINKDEMAND = 0x00002000, MONO_DECLSEC_FLAG_NONCAS_INHERITANCEDEMAND = 0x00004000, MONO_DECLSEC_FLAG_LINKDEMAND_CHOICE = 0x00008000, MONO_DECLSEC_FLAG_INHERITANCEDEMAND_CHOICE = 0x00010000, MONO_DECLSEC_FLAG_DEMAND_CHOICE = 0x00020000 };
uint32_t mono_declsec_flags_from_method (MonoMethod *method);
uint32_t mono_declsec_flags_from_class (MonoClass *klass);
uint32_t mono_declsec_flags_from_assembly (MonoAssembly *assembly);
typedef struct {
	char *blob;
	uint32_t size;
	uint32_t index;
} MonoDeclSecurityEntry;
typedef struct {
	MonoDeclSecurityEntry demand;
	MonoDeclSecurityEntry noncasdemand;
	MonoDeclSecurityEntry demandchoice;
} MonoDeclSecurityActions;
MonoBoolean mono_declsec_get_demands (MonoMethod *callee, MonoDeclSecurityActions* demands);
MonoBoolean mono_declsec_get_linkdemands (MonoMethod *callee, MonoDeclSecurityActions* klass, MonoDeclSecurityActions* cmethod);
MonoBoolean mono_declsec_get_inheritdemands_class (MonoClass *klass, MonoDeclSecurityActions* demands);
MonoBoolean mono_declsec_get_inheritdemands_method (MonoMethod *callee, MonoDeclSecurityActions* demands);
MonoBoolean mono_declsec_get_method_action (MonoMethod *method, uint32_t action, MonoDeclSecurityEntry *entry);
MonoBoolean mono_declsec_get_class_action (MonoClass *klass, uint32_t action, MonoDeclSecurityEntry *entry);
MonoBoolean mono_declsec_get_assembly_action (MonoAssembly *assembly, uint32_t action, MonoDeclSecurityEntry *entry);
MonoType* mono_reflection_type_get_type (MonoReflectionType *reftype);
MonoAssembly* mono_reflection_assembly_get_assembly (MonoReflectionAssembly *refassembly);
/* +++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/reflection.h */
typedef void (*MonoThreadStartCB) (intptr_t tid, void* stack_start, void* func);
typedef void (*MonoThreadAttachCB) (intptr_t tid, void* stack_start);
typedef struct _MonoAppDomain MonoAppDomain;
typedef void (*MonoDomainFunc) (MonoDomain *domain, void* user_data);
MonoDomain* mono_init (const char *filename);
MonoDomain * mono_init_from_assembly (const char *domain_name, const char *filename);
MonoDomain * mono_init_version (const char *domain_name, const char *version);
MonoDomain* mono_get_root_domain (void);
void mono_runtime_init (MonoDomain *domain, MonoThreadStartCB start_cb, MonoThreadAttachCB attach_cb);
void mono_runtime_cleanup (MonoDomain *domain);
void mono_install_runtime_cleanup (MonoDomainFunc func);
void mono_runtime_quit (void);
void mono_runtime_set_shutting_down (void);
mono_bool mono_runtime_is_shutting_down (void);
const char* mono_check_corlib_version (void);
MonoDomain * mono_domain_create (void);
MonoDomain * mono_domain_create_appdomain (char *friendly_name, char *configuration_file);
void mono_domain_set_config (MonoDomain *domain, const char *base_dir, const char *config_file_name);
MonoDomain * mono_domain_get (void);
MonoDomain * mono_domain_get_by_id (int32_t domainid);
int32_t mono_domain_get_id (MonoDomain *domain);
const char * mono_domain_get_friendly_name (MonoDomain *domain);
mono_bool mono_domain_set (MonoDomain *domain, mono_bool force);
void mono_domain_set_internal (MonoDomain *domain);
void mono_domain_unload (MonoDomain *domain);
void mono_domain_try_unload (MonoDomain *domain, MonoObject **exc);
mono_bool mono_domain_is_unloading (MonoDomain *domain);
MonoDomain * mono_domain_from_appdomain (MonoAppDomain *appdomain);
void mono_domain_foreach (MonoDomainFunc func, void* user_data);
MonoAssembly * mono_domain_assembly_open (MonoDomain *domain, const char *name);
mono_bool mono_domain_finalize (MonoDomain *domain, uint32_t timeout);
void mono_domain_free (MonoDomain *domain, mono_bool force);
mono_bool mono_domain_has_type_resolve (MonoDomain *domain);
MonoReflectionAssembly * mono_domain_try_type_resolve (MonoDomain *domain, char *name, MonoObject *tb);
mono_bool mono_domain_owns_vtable_slot (MonoDomain *domain, void* vtable_slot);
void mono_context_init (MonoDomain *domain);
void mono_context_set (MonoAppContext *new_context);
MonoAppContext * mono_context_get (void);
int32_t mono_context_get_id (MonoAppContext *context);
int32_t mono_context_get_domain_id (MonoAppContext *context);
MonoJitInfo * mono_jit_info_table_find (MonoDomain *domain, void* addr);
void* mono_jit_info_get_code_start (MonoJitInfo* ji);
int mono_jit_info_get_code_size (MonoJitInfo* ji);
MonoMethod* mono_jit_info_get_method (MonoJitInfo* ji);
MonoImage* mono_get_corlib (void);
MonoClass* mono_get_object_class (void);
MonoClass* mono_get_byte_class (void);
MonoClass* mono_get_void_class (void);
MonoClass* mono_get_boolean_class (void);
MonoClass* mono_get_sbyte_class (void);
MonoClass* mono_get_int16_class (void);
MonoClass* mono_get_uint16_class (void);
MonoClass* mono_get_int32_class (void);
MonoClass* mono_get_uint32_class (void);
MonoClass* mono_get_intptr_class (void);
MonoClass* mono_get_uintptr_class (void);
MonoClass* mono_get_int64_class (void);
MonoClass* mono_get_uint64_class (void);
MonoClass* mono_get_single_class (void);
MonoClass* mono_get_double_class (void);
MonoClass* mono_get_char_class (void);
MonoClass* mono_get_string_class (void);
MonoClass* mono_get_enum_class (void);
MonoClass* mono_get_array_class (void);
MonoClass* mono_get_thread_class (void);
MonoClass* mono_get_exception_class (void);
void mono_security_enable_core_clr (void);
typedef mono_bool (*MonoCoreClrPlatformCB) (const char *image_name);
void mono_security_set_core_clr_platform_callback (MonoCoreClrPlatformCB callback);
/* ++ END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/metadata/appdomain.h */
MonoDomain * mono_jit_init (const char *file);
MonoDomain * mono_jit_init_version (const char *root_domain_name, const char *runtime_version);
MonoDomain * mono_jit_init_version_for_test_only (const char *root_domain_name, const char *runtime_version);
int mono_jit_exec (MonoDomain *domain, MonoAssembly *assembly, int argc, char *argv[]);
void mono_jit_cleanup (MonoDomain *domain);
mono_bool mono_jit_set_trace_options (const char* options);
void mono_set_signal_chaining (mono_bool chain_signals);
void mono_set_crash_chaining (mono_bool chain_signals);
void mono_jit_set_aot_only (mono_bool aot_only);
enum { MONO_AOT_MODE_NONE, MONO_AOT_MODE_NORMAL, MONO_AOT_MODE_HYBRID, MONO_AOT_MODE_FULL, MONO_AOT_MODE_LLVMONLY, MONO_AOT_MODE_INTERP, MONO_AOT_MODE_INTERP_LLVMONLY, MONO_AOT_MODE_LLVMONLY_INTERP, MONO_AOT_MODE_LAST = 1000, }; typedef int MonoAotMode;
void mono_jit_set_aot_mode (MonoAotMode mode);
mono_bool mono_jit_aot_compiling (void);
enum { MONO_BREAK_POLICY_ALWAYS, MONO_BREAK_POLICY_NEVER, MONO_BREAK_POLICY_ON_DBG }; typedef int MonoBreakPolicy;
typedef MonoBreakPolicy (*MonoBreakPolicyFunc) (MonoMethod *method);
void mono_set_break_policy (MonoBreakPolicyFunc policy_callback);
void mono_jit_parse_options (int argc, char * argv[]);
char* mono_get_runtime_build_info (void);
void mono_set_use_llvm (mono_bool use_llvm);
void mono_aot_register_module (void **aot_info);
MonoDomain* mono_jit_thread_attach (MonoDomain *domain);
/* + END   /usr/lib/pkgconfig/../../include/mono-2.0/mono/jit/jit.h */
]]
ffi.load('/usr/lib/x86_64-linux-gnu/libstdc++.so.6', true)
return ffi.load '/usr/lib/libmono-2.0.so'
