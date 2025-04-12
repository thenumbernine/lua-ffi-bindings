local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN /usr/local/include/tensorflow/c/c_api.h */
enum { TENSORFLOW_C_C_API_H_ = 1 };
/* ++ BEGIN /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* ++ END   /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stddef.h */
/* ++ BEGIN /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* ++ END   /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdint.h */
/* ++ BEGIN /usr/local/include/tensorflow/c/c_api_macros.h */
enum { TENSORFLOW_C_C_API_MACROS_H_ = 1 };
/* #define TF_CAPI_EXPORT __attribute__((visibility("default"))) ### string, not number "__attribute__((visibility(\"default\")))" */
/* #define TF_Bool unsigned char ### string, not number "unsigned char" */
/* ++ END   /usr/local/include/tensorflow/c/c_api_macros.h */
/* ++ BEGIN /usr/local/include/tensorflow/c/tf_attrtype.h */
enum { TENSORFLOW_C_TF_ATTRTYPE_H_ = 1 };
typedef enum TF_AttrType { TF_ATTR_STRING = 0, TF_ATTR_INT = 1, TF_ATTR_FLOAT = 2, TF_ATTR_BOOL = 3, TF_ATTR_TYPE = 4, TF_ATTR_SHAPE = 5, TF_ATTR_TENSOR = 6, TF_ATTR_PLACEHOLDER = 7, TF_ATTR_FUNC = 8, } TF_AttrType;
/* ++ END   /usr/local/include/tensorflow/c/tf_attrtype.h */
/* ++ BEGIN /usr/local/include/tensorflow/c/tf_buffer.h */
enum { TENSORFLOW_C_TF_BUFFER_H_ = 1 };
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* +++ END   /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stddef.h */
/* +++ BEGIN /usr/local/include/tensorflow/c/c_api_macros.h */
/* +++ END   /usr/local/include/tensorflow/c/c_api_macros.h */
typedef struct TF_Buffer {
	const void* data;
	size_t length;
	void (*data_deallocator)(void* data, size_t length);
} TF_Buffer;
__attribute__((visibility("default"))) extern TF_Buffer* TF_NewBufferFromString(const void* proto, size_t proto_len);
__attribute__((visibility("default"))) extern TF_Buffer* TF_NewBuffer(void);
__attribute__((visibility("default"))) extern void TF_DeleteBuffer(TF_Buffer*);
__attribute__((visibility("default"))) extern TF_Buffer TF_GetBuffer(TF_Buffer* buffer);
/* ++ END   /usr/local/include/tensorflow/c/tf_buffer.h */
/* ++ BEGIN /usr/local/include/tensorflow/c/tf_datatype.h */
enum { TENSORFLOW_C_TF_DATATYPE_H_ = 1 };
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stddef.h */
]] require 'ffi.req' 'c.stddef' ffi.cdef[[
/* +++ END   /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stddef.h */
/* +++ BEGIN /usr/local/include/tensorflow/c/c_api_macros.h */
/* +++ END   /usr/local/include/tensorflow/c/c_api_macros.h */
typedef enum TF_DataType { TF_FLOAT = 1, TF_DOUBLE = 2, TF_INT32 = 3, TF_UINT8 = 4, TF_INT16 = 5, TF_INT8 = 6, TF_STRING = 7, TF_COMPLEX64 = 8, TF_COMPLEX = 8, TF_INT64 = 9, TF_BOOL = 10, TF_QINT8 = 11, TF_QUINT8 = 12, TF_QINT32 = 13, TF_BFLOAT16 = 14, TF_QINT16 = 15, TF_QUINT16 = 16, TF_UINT16 = 17, TF_COMPLEX128 = 18, TF_HALF = 19, TF_RESOURCE = 20, TF_VARIANT = 21, TF_UINT32 = 22, TF_UINT64 = 23, TF_FLOAT8_E5M2 = 24, TF_FLOAT8_E4M3FN = 25, TF_INT4 = 29, TF_UINT4 = 30, } TF_DataType;
__attribute__((visibility("default"))) extern size_t TF_DataTypeSize(TF_DataType dt);
/* ++ END   /usr/local/include/tensorflow/c/tf_datatype.h */
/* ++ BEGIN /usr/local/include/tensorflow/c/tf_status.h */
enum { TENSORFLOW_C_TF_STATUS_H_ = 1 };
/* +++ BEGIN /usr/local/include/tensorflow/c/c_api_macros.h */
/* +++ END   /usr/local/include/tensorflow/c/c_api_macros.h */
/* +++ BEGIN /usr/local/include/xla/tsl/c/tsl_status.h */
enum { XLA_TSL_C_TSL_STATUS_H_ = 1 };
typedef struct TSL_Status TSL_Status;
typedef enum TSL_Code { TSL_OK = 0, TSL_CANCELLED = 1, TSL_UNKNOWN = 2, TSL_INVALID_ARGUMENT = 3, TSL_DEADLINE_EXCEEDED = 4, TSL_NOT_FOUND = 5, TSL_ALREADY_EXISTS = 6, TSL_PERMISSION_DENIED = 7, TSL_UNAUTHENTICATED = 16, TSL_RESOURCE_EXHAUSTED = 8, TSL_FAILED_PRECONDITION = 9, TSL_ABORTED = 10, TSL_OUT_OF_RANGE = 11, TSL_UNIMPLEMENTED = 12, TSL_INTERNAL = 13, TSL_UNAVAILABLE = 14, TSL_DATA_LOSS = 15, } TSL_Code;
extern TSL_Status* TSL_NewStatus(void);
extern void TSL_DeleteStatus(TSL_Status*);
extern void TSL_SetStatus(TSL_Status* s, TSL_Code code, const char* msg);
extern void TSL_SetPayload(TSL_Status* s, const char* key, const char* value);
typedef void (*TSL_PayloadVisitor)(const char* key, const char* value, void* capture);
extern void TSL_ForEachPayload(const TSL_Status* s, TSL_PayloadVisitor visitor, void* capture);
extern void TSL_SetStatusFromIOError(TSL_Status* s, int error_code, const char* context);
extern TSL_Code TSL_GetCode(const TSL_Status* s);
extern const char* TSL_Message(const TSL_Status* s);
/* +++ END   /usr/local/include/xla/tsl/c/tsl_status.h */
typedef struct TSL_Status TF_Status;
typedef TSL_Code TF_Code;
enum { TF_OK = 0 };
enum { TF_CANCELLED = 0 };
enum { TF_UNKNOWN = 0 };
enum { TF_INVALID_ARGUMENT = 0 };
enum { TF_DEADLINE_EXCEEDED = 0 };
enum { TF_NOT_FOUND = 0 };
enum { TF_ALREADY_EXISTS = 0 };
enum { TF_PERMISSION_DENIED = 0 };
enum { TF_UNAUTHENTICATED = 0 };
enum { TF_RESOURCE_EXHAUSTED = 0 };
enum { TF_FAILED_PRECONDITION = 0 };
enum { TF_ABORTED = 0 };
enum { TF_OUT_OF_RANGE = 0 };
enum { TF_UNIMPLEMENTED = 0 };
enum { TF_INTERNAL = 0 };
enum { TF_UNAVAILABLE = 0 };
enum { TF_DATA_LOSS = 0 };
__attribute__((visibility("default"))) extern TF_Status* TF_NewStatus(void);
__attribute__((visibility("default"))) extern void TF_DeleteStatus(TF_Status*);
__attribute__((visibility("default"))) extern void TF_SetStatus(TF_Status* s, TF_Code code, const char* msg);
__attribute__((visibility("default"))) void TF_SetPayload(TF_Status* s, const char* key, const char* value);
enum { TF_PayloadVisitor = 0 };
__attribute__((visibility("default"))) extern void TF_ForEachPayload(const TF_Status* s, TSL_PayloadVisitor visitor, void* capture);
__attribute__((visibility("default"))) extern void TF_SetStatusFromIOError(TF_Status* s, int error_code, const char* context);
__attribute__((visibility("default"))) extern TF_Code TF_GetCode(const TF_Status* s);
__attribute__((visibility("default"))) extern const char* TF_Message(const TF_Status* s);
/* ++ END   /usr/local/include/tensorflow/c/tf_status.h */
/* ++ BEGIN /usr/local/include/tensorflow/c/tf_tensor.h */
enum { TENSORFLOW_C_TF_TENSOR_H_ = 1 };
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdbool.h */
]] require 'ffi.req' 'c.stdbool' ffi.cdef[[
/* +++ END   /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdbool.h */
/* +++ BEGIN /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* +++ END   /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdint.h */
/* +++ BEGIN /usr/local/include/tensorflow/c/c_api_macros.h */
/* +++ END   /usr/local/include/tensorflow/c/c_api_macros.h */
/* +++ BEGIN /usr/local/include/tensorflow/c/tf_datatype.h */
/* +++ END   /usr/local/include/tensorflow/c/tf_datatype.h */
/* +++ BEGIN /usr/local/include/tensorflow/c/tf_status.h */
/* +++ END   /usr/local/include/tensorflow/c/tf_status.h */
typedef struct TF_AllocatorAttributes {
	size_t struct_size;
	unsigned char on_host;
} TF_AllocatorAttributes;
/* #define TF_ALLOCATOR_ATTRIBUTES_STRUCT_SIZE    TF_OFFSET_OF_END(TF_AllocatorAttributes, on_host) ### string, not number "TF_OFFSET_OF_END(TF_AllocatorAttributes, on_host)" */
typedef struct TF_Tensor TF_Tensor;
__attribute__((visibility("default"))) extern TF_Tensor* TF_NewTensor( TF_DataType, const int64_t* dims, int num_dims, void* data, size_t len, void (*deallocator)(void* data, size_t len, void* arg), void* deallocator_arg);
__attribute__((visibility("default"))) extern size_t TF_TensorDefaultAlignment();
__attribute__((visibility("default"))) extern TF_Tensor* TF_AllocateTensor(TF_DataType, const int64_t* dims, int num_dims, size_t len);
__attribute__((visibility("default"))) extern TF_Tensor* TF_TensorMaybeMove(TF_Tensor* tensor);
__attribute__((visibility("default"))) extern void TF_DeleteTensor(TF_Tensor*);
__attribute__((visibility("default"))) extern TF_DataType TF_TensorType(const TF_Tensor*);
__attribute__((visibility("default"))) extern void TF_SetShape(TF_Tensor* tensor, const int64_t* dims, int num_dims);
__attribute__((visibility("default"))) extern int TF_NumDims(const TF_Tensor*);
__attribute__((visibility("default"))) extern int64_t TF_Dim(const TF_Tensor* tensor, int dim_index);
__attribute__((visibility("default"))) extern size_t TF_TensorByteSize(const TF_Tensor*);
__attribute__((visibility("default"))) extern void* TF_TensorData(const TF_Tensor*);
__attribute__((visibility("default"))) extern int64_t TF_TensorElementCount(const TF_Tensor* tensor);
__attribute__((visibility("default"))) extern void TF_TensorBitcastFrom(const TF_Tensor* from, TF_DataType type, TF_Tensor* to, const int64_t* new_dims, int num_new_dims, TF_Status* status);
__attribute__((visibility("default"))) extern _Bool TF_TensorIsAligned(const TF_Tensor*);
/* ++ END   /usr/local/include/tensorflow/c/tf_tensor.h */
/* ++ BEGIN /usr/local/include/tensorflow/c/tf_tstring.h */
enum { TENSORFLOW_C_TF_TSTRING_H_ = 1 };
/* +++ BEGIN /usr/local/include/tensorflow/c/c_api_macros.h */
/* +++ END   /usr/local/include/tensorflow/c/c_api_macros.h */
/* +++ BEGIN /usr/local/include/tensorflow/c/tf_tensor.h */
/* +++ END   /usr/local/include/tensorflow/c/tf_tensor.h */
/* +++ BEGIN /usr/local/include/tensorflow/core/platform/ctstring.h */
enum { TENSORFLOW_CORE_PLATFORM_CTSTRING_H_ = 1 };
/* ++++ BEGIN /usr/local/include/tsl/platform/ctstring.h */
enum { TENSORFLOW_TSL_PLATFORM_CTSTRING_H_ = 1 };
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdint.h */
/* +++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h */
]] require 'ffi.req' 'c.stdlib' ffi.cdef[[
/* +++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h */
/* +++++ BEGIN /usr/local/include/tsl/platform/ctstring_internal.h */
enum { TENSORFLOW_TSL_PLATFORM_CTSTRING_INTERNAL_H_ = 1 };
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/limits.h */
]] require 'ffi.req' 'c.limits' ffi.cdef[[
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/limits.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdint.h */
]] require 'ffi.req' 'c.stdint' ffi.cdef[[
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang/16/include/stdint.h */
/* ++++++ BEGIN /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h */
]] require 'ffi.req' 'c.stdlib' ffi.cdef[[
/* ++++++ END   /Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX.sdk/usr/include/stdlib.h */
enum { TF_TSTRING_LITTLE_ENDIAN = 1 };
typedef enum TF_TString_Type { TF_TSTR_SMALL = 0x00, TF_TSTR_LARGE = 0x01, TF_TSTR_OFFSET = 0x02, TF_TSTR_VIEW = 0x03, TF_TSTR_TYPE_MASK = 0x03 } TF_TString_Type;
typedef struct TF_TString_Large {
	size_t size;
	size_t cap;
	char *ptr;
} TF_TString_Large;
typedef struct TF_TString_Offset {
	uint32_t size;
	uint32_t offset;
	uint32_t count;
} TF_TString_Offset;
typedef struct TF_TString_View {
	size_t size;
	const char *ptr;
} TF_TString_View;
typedef struct TF_TString_Raw {
	uint8_t raw[24];
} TF_TString_Raw;
typedef union TF_TString_Union {
	TF_TString_Large large;
	TF_TString_Offset offset;
	TF_TString_View view;
	TF_TString_Raw raw;
} TF_TString_Union;
enum { TF_TString_SmallCapacity = (sizeof(TF_TString_Union) - sizeof( char) - sizeof( uint8_t)), };
typedef struct TF_TString_Small {
	uint8_t size;
	char str[TF_TString_SmallCapacity + sizeof( char)];
} TF_TString_Small;
typedef struct TF_TString {
	union { TF_TString_Small smll;
	TF_TString_Large large;
	TF_TString_Offset offset;
	TF_TString_View view;
	TF_TString_Raw raw;
} u;
} TF_TString;
/* +++++ END   /usr/local/include/tsl/platform/ctstring_internal.h */
/* ++++ END   /usr/local/include/tsl/platform/ctstring.h */
/* +++ END   /usr/local/include/tensorflow/core/platform/ctstring.h */
__attribute__((visibility("default"))) extern void TF_StringInit(TF_TString *t);
__attribute__((visibility("default"))) extern void TF_StringCopy(TF_TString *dst, const char *src, size_t size);
__attribute__((visibility("default"))) extern void TF_StringAssignView(TF_TString *dst, const char *src, size_t size);
__attribute__((visibility("default"))) extern const char *TF_StringGetDataPointer( const TF_TString *tstr);
__attribute__((visibility("default"))) extern TF_TString_Type TF_StringGetType(const TF_TString *str);
__attribute__((visibility("default"))) extern size_t TF_StringGetSize(const TF_TString *tstr);
__attribute__((visibility("default"))) extern size_t TF_StringGetCapacity(const TF_TString *str);
__attribute__((visibility("default"))) extern void TF_StringDealloc(TF_TString *tstr);
/* ++ END   /usr/local/include/tensorflow/c/tf_tstring.h */
__attribute__((visibility("default"))) extern const char* TF_Version(void);
__attribute__((visibility("default"))) extern void TF_TensorFromProto(const TF_Buffer* from, TF_Tensor* to, TF_Status* status);
typedef struct TF_StringView {
	const char* data;
	size_t len;
} TF_StringView;
typedef struct TF_SessionOptions TF_SessionOptions;
__attribute__((visibility("default"))) extern TF_SessionOptions* TF_NewSessionOptions(void);
__attribute__((visibility("default"))) extern void TF_SetTarget(TF_SessionOptions* options, const char* target);
__attribute__((visibility("default"))) extern void TF_SetConfig(TF_SessionOptions* options, const void* proto, size_t proto_len, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_DeleteSessionOptions(TF_SessionOptions*);
typedef struct TF_Graph TF_Graph;
__attribute__((visibility("default"))) extern TF_Graph* TF_NewGraph(void);
__attribute__((visibility("default"))) extern void TF_DeleteGraph(TF_Graph*);
typedef struct TF_OperationDescription TF_OperationDescription;
typedef struct TF_Operation TF_Operation;
typedef struct TF_Input {
	TF_Operation* oper;
	int index;
} TF_Input;
typedef struct TF_Output {
	TF_Operation* oper;
	int index;
} TF_Output;
typedef struct TF_Function TF_Function;
typedef struct TF_FunctionOptions TF_FunctionOptions;
__attribute__((visibility("default"))) extern void TF_GraphSetTensorShape(TF_Graph* graph, TF_Output output, const int64_t* dims, const int num_dims, TF_Status* status);
__attribute__((visibility("default"))) extern int TF_GraphGetTensorNumDims(TF_Graph* graph, TF_Output output, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_GraphGetTensorShape(TF_Graph* graph, TF_Output output, int64_t* dims, int num_dims, TF_Status* status);
__attribute__((visibility("default"))) extern TF_OperationDescription* TF_NewOperationLocked( TF_Graph* graph, const char* op_type, const char* oper_name);
__attribute__((visibility("default"))) extern TF_OperationDescription* TF_NewOperation( TF_Graph* graph, const char* op_type, const char* oper_name);
__attribute__((visibility("default"))) extern void TF_SetDevice(TF_OperationDescription* desc, const char* device);
__attribute__((visibility("default"))) extern void TF_AddInput(TF_OperationDescription* desc, TF_Output input);
__attribute__((visibility("default"))) extern void TF_AddInputList(TF_OperationDescription* desc, const TF_Output* inputs, int num_inputs);
__attribute__((visibility("default"))) extern void TF_AddControlInput(TF_OperationDescription* desc, TF_Operation* input);
__attribute__((visibility("default"))) extern void TF_ColocateWith(TF_OperationDescription* desc, TF_Operation* op);
__attribute__((visibility("default"))) extern void TF_SetAttrString(TF_OperationDescription* desc, const char* attr_name, const void* value, size_t length);
__attribute__((visibility("default"))) extern void TF_SetAttrStringList(TF_OperationDescription* desc, const char* attr_name, const void* const* values, const size_t* lengths, int num_values);
__attribute__((visibility("default"))) extern void TF_SetAttrInt(TF_OperationDescription* desc, const char* attr_name, int64_t value);
__attribute__((visibility("default"))) extern void TF_SetAttrIntList(TF_OperationDescription* desc, const char* attr_name, const int64_t* values, int num_values);
__attribute__((visibility("default"))) extern void TF_SetAttrFloat(TF_OperationDescription* desc, const char* attr_name, float value);
__attribute__((visibility("default"))) extern void TF_SetAttrFloatList(TF_OperationDescription* desc, const char* attr_name, const float* values, int num_values);
__attribute__((visibility("default"))) extern void TF_SetAttrBool(TF_OperationDescription* desc, const char* attr_name, unsigned char value);
__attribute__((visibility("default"))) extern void TF_SetAttrBoolList(TF_OperationDescription* desc, const char* attr_name, const unsigned char* values, int num_values);
__attribute__((visibility("default"))) extern void TF_SetAttrType(TF_OperationDescription* desc, const char* attr_name, TF_DataType value);
__attribute__((visibility("default"))) extern void TF_SetAttrTypeList(TF_OperationDescription* desc, const char* attr_name, const TF_DataType* values, int num_values);
__attribute__((visibility("default"))) extern void TF_SetAttrPlaceholder(TF_OperationDescription* desc, const char* attr_name, const char* placeholder);
__attribute__((visibility("default"))) extern void TF_SetAttrFuncName(TF_OperationDescription* desc, const char* attr_name, const char* value, size_t length);
__attribute__((visibility("default"))) extern void TF_SetAttrShape(TF_OperationDescription* desc, const char* attr_name, const int64_t* dims, int num_dims);
__attribute__((visibility("default"))) extern void TF_SetAttrShapeList(TF_OperationDescription* desc, const char* attr_name, const int64_t* const* dims, const int* num_dims, int num_shapes);
__attribute__((visibility("default"))) extern void TF_SetAttrTensorShapeProto( TF_OperationDescription* desc, const char* attr_name, const void* proto, size_t proto_len, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_SetAttrTensorShapeProtoList( TF_OperationDescription* desc, const char* attr_name, const void* const* protos, const size_t* proto_lens, int num_shapes, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_SetAttrTensor(TF_OperationDescription* desc, const char* attr_name, TF_Tensor* value, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_SetAttrTensorList(TF_OperationDescription* desc, const char* attr_name, TF_Tensor* const* values, int num_values, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_SetAttrValueProto(TF_OperationDescription* desc, const char* attr_name, const void* proto, size_t proto_len, TF_Status* status);
__attribute__((visibility("default"))) extern TF_Operation* TF_FinishOperationLocked( TF_OperationDescription* desc, TF_Status* status);
__attribute__((visibility("default"))) extern TF_Operation* TF_FinishOperation( TF_OperationDescription* desc, TF_Status* status);
__attribute__((visibility("default"))) extern const char* TF_OperationName(TF_Operation* oper);
__attribute__((visibility("default"))) extern const char* TF_OperationOpType(TF_Operation* oper);
__attribute__((visibility("default"))) extern const char* TF_OperationDevice(TF_Operation* oper);
__attribute__((visibility("default"))) extern int TF_OperationNumOutputs(TF_Operation* oper);
__attribute__((visibility("default"))) extern TF_DataType TF_OperationOutputType(TF_Output oper_out);
__attribute__((visibility("default"))) extern int TF_OperationOutputListLength(TF_Operation* oper, const char* arg_name, TF_Status* status);
__attribute__((visibility("default"))) extern int TF_OperationNumInputs(TF_Operation* oper);
__attribute__((visibility("default"))) extern TF_DataType TF_OperationInputType(TF_Input oper_in);
__attribute__((visibility("default"))) extern int TF_OperationInputListLength(TF_Operation* oper, const char* arg_name, TF_Status* status);
__attribute__((visibility("default"))) extern TF_Output TF_OperationInput(TF_Input oper_in);
__attribute__((visibility("default"))) extern void TF_OperationAllInputs(TF_Operation* oper, TF_Output* inputs, int max_inputs);
__attribute__((visibility("default"))) extern int TF_OperationOutputNumConsumers(TF_Output oper_out);
__attribute__((visibility("default"))) extern int TF_OperationOutputConsumers(TF_Output oper_out, TF_Input* consumers, int max_consumers);
__attribute__((visibility("default"))) extern int TF_OperationNumControlInputs(TF_Operation* oper);
__attribute__((visibility("default"))) extern int TF_OperationGetControlInputs( TF_Operation* oper, TF_Operation** control_inputs, int max_control_inputs);
__attribute__((visibility("default"))) extern int TF_OperationNumControlOutputs(TF_Operation* oper);
__attribute__((visibility("default"))) extern int TF_OperationGetControlOutputs( TF_Operation* oper, TF_Operation** control_outputs, int max_control_outputs);
typedef struct TF_AttrMetadata {
	unsigned char is_list;
	int64_t list_size;
	TF_AttrType type;
	int64_t total_size;
} TF_AttrMetadata;
__attribute__((visibility("default"))) extern TF_AttrMetadata TF_OperationGetAttrMetadata( TF_Operation* oper, const char* attr_name, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_OperationGetAttrString(TF_Operation* oper, const char* attr_name, void* value, size_t max_length, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_OperationGetAttrStringList( TF_Operation* oper, const char* attr_name, void** values, size_t* lengths, int max_values, void* storage, size_t storage_size, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_OperationGetAttrInt(TF_Operation* oper, const char* attr_name, int64_t* value, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_OperationGetAttrIntList(TF_Operation* oper, const char* attr_name, int64_t* values, int max_values, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_OperationGetAttrFloat(TF_Operation* oper, const char* attr_name, float* value, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_OperationGetAttrFloatList(TF_Operation* oper, const char* attr_name, float* values, int max_values, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_OperationGetAttrBool(TF_Operation* oper, const char* attr_name, unsigned char* value, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_OperationGetAttrBoolList(TF_Operation* oper, const char* attr_name, unsigned char* values, int max_values, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_OperationGetAttrType(TF_Operation* oper, const char* attr_name, TF_DataType* value, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_OperationGetAttrTypeList(TF_Operation* oper, const char* attr_name, TF_DataType* values, int max_values, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_OperationGetAttrShape(TF_Operation* oper, const char* attr_name, int64_t* value, int num_dims, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_OperationGetAttrShapeList( TF_Operation* oper, const char* attr_name, int64_t** dims, int* num_dims, int num_shapes, int64_t* storage, int storage_size, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_OperationGetAttrTensorShapeProto( TF_Operation* oper, const char* attr_name, TF_Buffer* value, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_OperationGetAttrTensorShapeProtoList( TF_Operation* oper, const char* attr_name, TF_Buffer** values, int max_values, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_OperationGetAttrTensor(TF_Operation* oper, const char* attr_name, TF_Tensor** value, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_OperationGetAttrTensorList(TF_Operation* oper, const char* attr_name, TF_Tensor** values, int max_values, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_OperationGetAttrValueProto( TF_Operation* oper, const char* attr_name, TF_Buffer* output_attr_value, TF_Status* status);
__attribute__((visibility("default"))) extern int TF_OperationGetNumAttrs(TF_Operation* oper);
__attribute__((visibility("default"))) extern int TF_OperationGetAttrNameLength(TF_Operation* oper, int i);
__attribute__((visibility("default"))) extern void TF_OperationGetAttrName(TF_Operation* oper, int i, char* output, TF_Status* status);
__attribute__((visibility("default"))) extern TF_Operation* TF_GraphOperationByName( TF_Graph* graph, const char* oper_name);
__attribute__((visibility("default"))) extern TF_Operation* TF_GraphNextOperation(TF_Graph* graph, size_t* pos);
__attribute__((visibility("default"))) extern void TF_GraphToGraphDef(TF_Graph* graph, TF_Buffer* output_graph_def, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_GraphGetOpDef(TF_Graph* graph, const char* op_name, TF_Buffer* output_op_def, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_GraphVersions(TF_Graph* graph, TF_Buffer* output_version_def, TF_Status* status);
typedef struct TF_ImportGraphDefOptions TF_ImportGraphDefOptions;
__attribute__((visibility("default"))) extern TF_ImportGraphDefOptions* TF_NewImportGraphDefOptions( void);
__attribute__((visibility("default"))) extern void TF_DeleteImportGraphDefOptions( TF_ImportGraphDefOptions* opts);
__attribute__((visibility("default"))) extern void TF_ImportGraphDefOptionsSetPrefix( TF_ImportGraphDefOptions* opts, const char* prefix);
__attribute__((visibility("default"))) extern void TF_ImportGraphDefOptionsSetDefaultDevice( TF_ImportGraphDefOptions* opts, const char* device);
__attribute__((visibility("default"))) extern void TF_ImportGraphDefOptionsSetUniquifyNames( TF_ImportGraphDefOptions* opts, unsigned char uniquify_names);
__attribute__((visibility("default"))) extern void TF_ImportGraphDefOptionsSetUniquifyPrefix( TF_ImportGraphDefOptions* opts, unsigned char uniquify_prefix);
__attribute__((visibility("default"))) extern void TF_ImportGraphDefOptionsAddInputMapping( TF_ImportGraphDefOptions* opts, const char* src_name, int src_index, TF_Output dst);
__attribute__((visibility("default"))) extern void TF_ImportGraphDefOptionsRemapControlDependency( TF_ImportGraphDefOptions* opts, const char* src_name, TF_Operation* dst);
__attribute__((visibility("default"))) extern void TF_ImportGraphDefOptionsAddControlDependency( TF_ImportGraphDefOptions* opts, TF_Operation* oper);
__attribute__((visibility("default"))) extern void TF_ImportGraphDefOptionsAddReturnOutput( TF_ImportGraphDefOptions* opts, const char* oper_name, int index);
__attribute__((visibility("default"))) extern int TF_ImportGraphDefOptionsNumReturnOutputs( const TF_ImportGraphDefOptions* opts);
__attribute__((visibility("default"))) extern void TF_ImportGraphDefOptionsAddReturnOperation( TF_ImportGraphDefOptions* opts, const char* oper_name);
__attribute__((visibility("default"))) extern int TF_ImportGraphDefOptionsNumReturnOperations( const TF_ImportGraphDefOptions* opts);
typedef struct TF_ImportGraphDefResults TF_ImportGraphDefResults;
__attribute__((visibility("default"))) extern void TF_ImportGraphDefResultsReturnOutputs( TF_ImportGraphDefResults* results, int* num_outputs, TF_Output** outputs);
__attribute__((visibility("default"))) extern void TF_ImportGraphDefResultsReturnOperations( TF_ImportGraphDefResults* results, int* num_opers, TF_Operation*** opers);
__attribute__((visibility("default"))) extern void TF_ImportGraphDefResultsMissingUnusedInputMappings( TF_ImportGraphDefResults* results, int* num_missing_unused_input_mappings, const char*** src_names, int** src_indexes);
__attribute__((visibility("default"))) extern void TF_DeleteImportGraphDefResults( TF_ImportGraphDefResults* results);
__attribute__((visibility("default"))) extern TF_ImportGraphDefResults* TF_GraphImportGraphDefWithResults(TF_Graph* graph, const TF_Buffer* graph_def, const TF_ImportGraphDefOptions* options, TF_Status* status);
__attribute__((visibility("default"))) extern TF_ImportGraphDefResults* TF_GraphImportGraphDefWithResultsNoSerialization( TF_Graph* graph, const TF_Buffer* graph_def, const TF_ImportGraphDefOptions* options, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_GraphImportGraphDefWithReturnOutputs( TF_Graph* graph, const TF_Buffer* graph_def, const TF_ImportGraphDefOptions* options, TF_Output* return_outputs, int num_return_outputs, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_GraphImportGraphDef( TF_Graph* graph, const TF_Buffer* graph_def, const TF_ImportGraphDefOptions* options, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_GraphCopyFunction(TF_Graph* g, const TF_Function* func, const TF_Function* grad, TF_Status* status);
__attribute__((visibility("default"))) extern int TF_GraphNumFunctions(TF_Graph* g);
__attribute__((visibility("default"))) extern int TF_GraphGetFunctions(TF_Graph* g, TF_Function** funcs, int max_func, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_OperationToNodeDef(TF_Operation* oper, TF_Buffer* output_node_def, TF_Status* status);
typedef struct TF_WhileParams {
	const int ninputs;
	TF_Graph* const cond_graph;
	const TF_Output* const cond_inputs;
	TF_Output cond_output;
	TF_Graph* const body_graph;
	const TF_Output* const body_inputs;
	TF_Output* const body_outputs;
	const char* name;
} TF_WhileParams;
__attribute__((visibility("default"))) extern TF_WhileParams TF_NewWhile(TF_Graph* g, TF_Output* inputs, int ninputs, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_FinishWhile(const TF_WhileParams* params, TF_Status* status, TF_Output* outputs);
__attribute__((visibility("default"))) extern void TF_AbortWhile(const TF_WhileParams* params);
__attribute__((visibility("default"))) void TF_AddGradients(TF_Graph* g, TF_Output* y, int ny, TF_Output* x, int nx, TF_Output* dx, TF_Status* status, TF_Output* dy);
__attribute__((visibility("default"))) void TF_AddGradientsWithPrefix(TF_Graph* g, const char* prefix, TF_Output* y, int ny, TF_Output* x, int nx, TF_Output* dx, TF_Status* status, TF_Output* dy);
__attribute__((visibility("default"))) extern TF_Function* TF_GraphToFunction( const TF_Graph* fn_body, const char* fn_name, unsigned char append_hash_to_fn_name, int num_opers, const TF_Operation* const* opers, int ninputs, const TF_Output* inputs, int noutputs, const TF_Output* outputs, const char* const* output_names, const TF_FunctionOptions* opts, const char* description, TF_Status* status);
__attribute__((visibility("default"))) extern TF_Function* TF_GraphToFunctionWithControlOutputs( const TF_Graph* fn_body, const char* fn_name, unsigned char append_hash_to_fn_name, int num_opers, const TF_Operation* const* opers, int ninputs, const TF_Output* inputs, int noutputs, const TF_Output* outputs, const char* const* output_names, int ncontrol_outputs, const TF_Operation* const* control_outputs, const char* const* control_output_names, const TF_FunctionOptions* opts, const char* description, TF_Status* status);
__attribute__((visibility("default"))) extern const char* TF_FunctionName(TF_Function* func);
__attribute__((visibility("default"))) extern void TF_FunctionToFunctionDef(TF_Function* func, TF_Buffer* output_func_def, TF_Status* status);
__attribute__((visibility("default"))) extern TF_Function* TF_FunctionImportFunctionDef( const void* proto, size_t proto_len, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_FunctionSetAttrValueProto(TF_Function* func, const char* attr_name, const void* proto, size_t proto_len, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_FunctionGetAttrValueProto( TF_Function* func, const char* attr_name, TF_Buffer* output_attr_value, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_DeleteFunction(TF_Function* func);
__attribute__((visibility("default"))) extern unsigned char TF_TryEvaluateConstant(TF_Graph* graph, TF_Output output, TF_Tensor** result, TF_Status* status);
typedef struct TF_Session TF_Session;
__attribute__((visibility("default"))) extern TF_Session* TF_NewSession(TF_Graph* graph, const TF_SessionOptions* opts, TF_Status* status);
__attribute__((visibility("default"))) extern TF_Session* TF_LoadSessionFromSavedModel( const TF_SessionOptions* session_options, const TF_Buffer* run_options, const char* export_dir, const char* const* tags, int tags_len, TF_Graph* graph, TF_Buffer* meta_graph_def, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_CloseSession(TF_Session*, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_DeleteSession(TF_Session*, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_SessionRun( TF_Session* session, const TF_Buffer* run_options, const TF_Output* inputs, TF_Tensor* const* input_values, int ninputs, const TF_Output* outputs, TF_Tensor** output_values, int noutputs, const TF_Operation* const* target_opers, int ntargets, TF_Buffer* run_metadata, TF_Status*);
__attribute__((visibility("default"))) extern void TF_SessionPRunSetup( TF_Session*, const TF_Output* inputs, int ninputs, const TF_Output* outputs, int noutputs, const TF_Operation* const* target_opers, int ntargets, const char** handle, TF_Status*);
__attribute__((visibility("default"))) extern void TF_SessionPRun( TF_Session*, const char* handle, const TF_Output* inputs, TF_Tensor* const* input_values, int ninputs, const TF_Output* outputs, TF_Tensor** output_values, int noutputs, const TF_Operation* const* target_opers, int ntargets, TF_Status*);
__attribute__((visibility("default"))) extern void TF_DeletePRunHandle(const char* handle);
typedef struct TF_DeprecatedSession TF_DeprecatedSession;
__attribute__((visibility("default"))) extern TF_DeprecatedSession* TF_NewDeprecatedSession( const TF_SessionOptions*, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_CloseDeprecatedSession(TF_DeprecatedSession*, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_DeleteDeprecatedSession(TF_DeprecatedSession*, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_Reset(const TF_SessionOptions* opt, const char** containers, int ncontainers, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_ExtendGraph(TF_DeprecatedSession*, const void* proto, size_t proto_len, TF_Status*);
__attribute__((visibility("default"))) extern void TF_Run(TF_DeprecatedSession*, const TF_Buffer* run_options, const char** input_names, TF_Tensor** inputs, int ninputs, const char** output_names, TF_Tensor** outputs, int noutputs, const char** target_oper_names, int ntargets, TF_Buffer* run_metadata, TF_Status*);
__attribute__((visibility("default"))) extern void TF_PRunSetup(TF_DeprecatedSession*, const char** input_names, int ninputs, const char** output_names, int noutputs, const char** target_oper_names, int ntargets, const char** handle, TF_Status*);
__attribute__((visibility("default"))) extern void TF_PRun(TF_DeprecatedSession*, const char* handle, const char** input_names, TF_Tensor** inputs, int ninputs, const char** output_names, TF_Tensor** outputs, int noutputs, const char** target_oper_names, int ntargets, TF_Status*);
typedef struct TF_DeviceList TF_DeviceList;
__attribute__((visibility("default"))) extern TF_DeviceList* TF_SessionListDevices(TF_Session* session, TF_Status* status);
__attribute__((visibility("default"))) extern TF_DeviceList* TF_DeprecatedSessionListDevices( TF_DeprecatedSession* session, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_DeleteDeviceList(TF_DeviceList* list);
__attribute__((visibility("default"))) extern int TF_DeviceListCount(const TF_DeviceList* list);
__attribute__((visibility("default"))) extern const char* TF_DeviceListName(const TF_DeviceList* list, int index, TF_Status* status);
__attribute__((visibility("default"))) extern const char* TF_DeviceListType(const TF_DeviceList* list, int index, TF_Status* status);
__attribute__((visibility("default"))) extern int64_t TF_DeviceListMemoryBytes( const TF_DeviceList* list, int index, TF_Status* status);
__attribute__((visibility("default"))) extern uint64_t TF_DeviceListIncarnation( const TF_DeviceList* list, int index, TF_Status* status);
typedef struct TF_Library TF_Library;
__attribute__((visibility("default"))) extern TF_Library* TF_LoadLibrary(const char* library_filename, TF_Status* status);
__attribute__((visibility("default"))) extern TF_Buffer TF_GetOpList(TF_Library* lib_handle);
__attribute__((visibility("default"))) extern void TF_DeleteLibraryHandle(TF_Library* lib_handle);
__attribute__((visibility("default"))) extern TF_Buffer* TF_GetAllOpList(void);
typedef struct TF_ApiDefMap TF_ApiDefMap;
__attribute__((visibility("default"))) extern TF_ApiDefMap* TF_NewApiDefMap(TF_Buffer* op_list_buffer, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_DeleteApiDefMap(TF_ApiDefMap* apimap);
__attribute__((visibility("default"))) extern void TF_ApiDefMapPut(TF_ApiDefMap* api_def_map, const char* text, size_t text_len, TF_Status* status);
__attribute__((visibility("default"))) extern TF_Buffer* TF_ApiDefMapGet(TF_ApiDefMap* api_def_map, const char* name, size_t name_len, TF_Status* status);
__attribute__((visibility("default"))) extern TF_Buffer* TF_GetAllRegisteredKernels(TF_Status* status);
__attribute__((visibility("default"))) extern TF_Buffer* TF_GetRegisteredKernelsForOp( const char* name, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_UpdateEdge(TF_Graph* graph, TF_Output new_src, TF_Input dst, TF_Status* status);
typedef struct TF_Server TF_Server;
__attribute__((visibility("default"))) extern TF_Server* TF_NewServer(const void* proto, size_t proto_len, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_ServerStart(TF_Server* server, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_ServerStop(TF_Server* server, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_ServerJoin(TF_Server* server, TF_Status* status);
__attribute__((visibility("default"))) extern const char* TF_ServerTarget(TF_Server* server);
__attribute__((visibility("default"))) extern void TF_DeleteServer(TF_Server* server);
__attribute__((visibility("default"))) extern void TF_RegisterLogListener( void (*listener)(const char*));
__attribute__((visibility("default"))) extern void TF_RegisterFilesystemPlugin( const char* plugin_filename, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_AddOperationControlInput(TF_Graph* graph, TF_Operation* op, TF_Operation* input);
__attribute__((visibility("default"))) extern void TF_SetAttr(TF_Graph* graph, TF_Operation* op, const char* attr_name, TF_Buffer* attr_value_proto, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_ClearAttr(TF_Graph* graph, TF_Operation* op, const char* attr_name, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_SetFullType(TF_Graph* graph, TF_Operation* op, const TF_Buffer* full_type_proto);
__attribute__((visibility("default"))) extern void TF_SetRequestedDevice(TF_Graph* graph, TF_Operation* op, const char* device);
__attribute__((visibility("default"))) extern void TF_RemoveAllControlInputs(TF_Graph* graph, TF_Operation* op);
__attribute__((visibility("default"))) extern void TF_SetRequireShapeInferenceFns(TF_Graph* graph, _Bool require);
__attribute__((visibility("default"))) extern void TF_ExtendSession(TF_Session* session, TF_Status* status);
__attribute__((visibility("default"))) extern TF_Buffer* TF_GetHandleShapeAndType(TF_Graph* graph, TF_Output output);
__attribute__((visibility("default"))) extern void TF_SetHandleShapeAndType(TF_Graph* graph, TF_Output output, const void* proto, size_t proto_len, TF_Status* status);
__attribute__((visibility("default"))) extern void TF_AddWhileInputHack(TF_Graph* graph, TF_Output new_src, TF_Operation* dst, TF_Status* status);
/* + END   /usr/local/include/tensorflow/c/c_api.h */
]]
return require 'ffi.load' 'tensorflow'
