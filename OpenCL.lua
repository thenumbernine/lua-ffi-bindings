local ffi  = require 'ffi'

local libs = ffi_OpenCL_libs or {
	OSX = {x86 = 'OpenCL.framework/OpenCL', x64 = 'OpenCL.framework/OpenCL'},
	Windows = {x86 = 'opencl.dll', x64 = 'opencl.dll'},
	Linux = {
	x86 = 'libOpenCL.so',
	x64 = 'libOpenCL.so',
	arm = 'bin/Linux/arm/libOpenCL.so'},
	BSD = {x86 = 'libOpenCL.so', x64 = 'libOpenCL.so'},
	POSIX = {x86 = 'libOpenCL.so', x64 = 'libOpenCL.so'},
	Other = {x86 = 'libOpenCL.so', x64 = 'libOpenCL.so'},
}

local lib = ffi_OpenCL_lib or libs[ffi.os][ffi.arch]

local cl = ffi.load(lib)

ffi.cdef[[

enum {
/* Error Codes */
	CL_SUCCESS                                  = 0,
	CL_DEVICE_NOT_FOUND                         = -1,
	CL_DEVICE_NOT_AVAILABLE                     = -2,
	CL_COMPILER_NOT_AVAILABLE                   = -3,
	CL_MEM_OBJECT_ALLOCATION_FAILURE            = -4,
	CL_OUT_OF_RESOURCES                         = -5,
	CL_OUT_OF_HOST_MEMORY                       = -6,
	CL_PROFILING_INFO_NOT_AVAILABLE             = -7,
	CL_MEM_COPY_OVERLAP                         = -8,
	CL_IMAGE_FORMAT_MISMATCH                    = -9,
	CL_IMAGE_FORMAT_NOT_SUPPORTED               = -10,
	CL_BUILD_PROGRAM_FAILURE                    = -11,
	CL_MAP_FAILURE                              = -12,
	CL_MISALIGNED_SUB_BUFFER_OFFSET             = -13,
	CL_EXEC_STATUS_ERROR_FOR_EVENTS_IN_WAIT_LIST = -14,
	CL_COMPILE_PROGRAM_FAILURE                  = -15,
	CL_LINKER_NOT_AVAILABLE                     = -16,
	CL_LINK_PROGRAM_FAILURE                     = -17,
	CL_DEVICE_PARTITION_FAILED                  = -18,
	CL_KERNEL_ARG_INFO_NOT_AVAILABLE            = -19,

	CL_INVALID_VALUE                            = -30,
	CL_INVALID_DEVICE_TYPE                      = -31,
	CL_INVALID_PLATFORM                         = -32,
	CL_INVALID_DEVICE                           = -33,
	CL_INVALID_CONTEXT                          = -34,
	CL_INVALID_QUEUE_PROPERTIES                 = -35,
	CL_INVALID_COMMAND_QUEUE                    = -36,
	CL_INVALID_HOST_PTR                         = -37,
	CL_INVALID_MEM_OBJECT                       = -38,
	CL_INVALID_IMAGE_FORMAT_DESCRIPTOR          = -39,
	CL_INVALID_IMAGE_SIZE                       = -40,
	CL_INVALID_SAMPLER                          = -41,
	CL_INVALID_BINARY                           = -42,
	CL_INVALID_BUILD_OPTIONS                    = -43,
	CL_INVALID_PROGRAM                          = -44,
	CL_INVALID_PROGRAM_EXECUTABLE               = -45,
	CL_INVALID_KERNEL_NAME                      = -46,
	CL_INVALID_KERNEL_DEFINITION                = -47,
	CL_INVALID_KERNEL                           = -48,
	CL_INVALID_ARG_INDEX                        = -49,
	CL_INVALID_ARG_VALUE                        = -50,
	CL_INVALID_ARG_SIZE                         = -51,
	CL_INVALID_KERNEL_ARGS                      = -52,
	CL_INVALID_WORK_DIMENSION                   = -53,
	CL_INVALID_WORK_GROUP_SIZE                  = -54,
	CL_INVALID_WORK_ITEM_SIZE                   = -55,
	CL_INVALID_GLOBAL_OFFSET                    = -56,
	CL_INVALID_EVENT_WAIT_LIST                  = -57,
	CL_INVALID_EVENT                            = -58,
	CL_INVALID_OPERATION                        = -59,
	CL_INVALID_GL_OBJECT                        = -60,
	CL_INVALID_BUFFER_SIZE                      = -61,
	CL_INVALID_MIP_LEVEL                        = -62,
	CL_INVALID_GLOBAL_WORK_SIZE                 = -63,
	CL_INVALID_PROPERTY                         = -64,
	CL_INVALID_IMAGE_DESCRIPTOR                 = -65,
	CL_INVALID_COMPILER_OPTIONS                 = -66,
	CL_INVALID_LINKER_OPTIONS                   = -67,
	CL_INVALID_DEVICE_PARTITION_COUNT           = -68,
	CL_INVALID_PIPE_SIZE                        = -69,
	CL_INVALID_DEVICE_QUEUE                     = -70,

/* OpenCL Version */
	CL_VERSION_1_0                              = 1,
	CL_VERSION_1_1                              = 1,
	CL_VERSION_1_2                              = 1,
	CL_VERSION_2_0                              = 1,
	CL_VERSION_2_1                              = 1,

/* cl_bool */
	CL_FALSE                                    = 0,
	CL_TRUE                                     = 1,
	CL_BLOCKING                                 = 1,	//CL_TRUE,
	CL_NON_BLOCKING                             = 0,	//CL_FALSE,

/* cl_platform_info */
	CL_PLATFORM_PROFILE                         = 0x0900,
	CL_PLATFORM_VERSION                         = 0x0901,
	CL_PLATFORM_NAME                            = 0x0902,
	CL_PLATFORM_VENDOR                          = 0x0903,
	CL_PLATFORM_EXTENSIONS                      = 0x0904,
	CL_PLATFORM_HOST_TIMER_RESOLUTION           = 0x0905,

/* cl_device_type - bitfield */
	CL_DEVICE_TYPE_DEFAULT                      = (1 << 0),
	CL_DEVICE_TYPE_CPU                          = (1 << 1),
	CL_DEVICE_TYPE_GPU                          = (1 << 2),
	CL_DEVICE_TYPE_ACCELERATOR                  = (1 << 3),
	CL_DEVICE_TYPE_CUSTOM                       = (1 << 4),
	CL_DEVICE_TYPE_ALL                          = 0xFFFFFFFF,

/* cl_device_info */
	CL_DEVICE_TYPE                                   = 0x1000,
	CL_DEVICE_VENDOR_ID                              = 0x1001,
	CL_DEVICE_MAX_COMPUTE_UNITS                      = 0x1002,
	CL_DEVICE_MAX_WORK_ITEM_DIMENSIONS               = 0x1003,
	CL_DEVICE_MAX_WORK_GROUP_SIZE                    = 0x1004,
	CL_DEVICE_MAX_WORK_ITEM_SIZES                    = 0x1005,
	CL_DEVICE_PREFERRED_VECTOR_WIDTH_CHAR            = 0x1006,
	CL_DEVICE_PREFERRED_VECTOR_WIDTH_SHORT           = 0x1007,
	CL_DEVICE_PREFERRED_VECTOR_WIDTH_INT             = 0x1008,
	CL_DEVICE_PREFERRED_VECTOR_WIDTH_LONG            = 0x1009,
	CL_DEVICE_PREFERRED_VECTOR_WIDTH_FLOAT           = 0x100A,
	CL_DEVICE_PREFERRED_VECTOR_WIDTH_DOUBLE          = 0x100B,
	CL_DEVICE_MAX_CLOCK_FREQUENCY                    = 0x100C,
	CL_DEVICE_ADDRESS_BITS                           = 0x100D,
	CL_DEVICE_MAX_READ_IMAGE_ARGS                    = 0x100E,
	CL_DEVICE_MAX_WRITE_IMAGE_ARGS                   = 0x100F,
	CL_DEVICE_MAX_MEM_ALLOC_SIZE                     = 0x1010,
	CL_DEVICE_IMAGE2D_MAX_WIDTH                      = 0x1011,
	CL_DEVICE_IMAGE2D_MAX_HEIGHT                     = 0x1012,
	CL_DEVICE_IMAGE3D_MAX_WIDTH                      = 0x1013,
	CL_DEVICE_IMAGE3D_MAX_HEIGHT                     = 0x1014,
	CL_DEVICE_IMAGE3D_MAX_DEPTH                      = 0x1015,
	CL_DEVICE_IMAGE_SUPPORT                          = 0x1016,
	CL_DEVICE_MAX_PARAMETER_SIZE                     = 0x1017,
	CL_DEVICE_MAX_SAMPLERS                           = 0x1018,
	CL_DEVICE_MEM_BASE_ADDR_ALIGN                    = 0x1019,
	CL_DEVICE_MIN_DATA_TYPE_ALIGN_SIZE               = 0x101A,
	CL_DEVICE_SINGLE_FP_CONFIG                       = 0x101B,
	CL_DEVICE_GLOBAL_MEM_CACHE_TYPE                  = 0x101C,
	CL_DEVICE_GLOBAL_MEM_CACHELINE_SIZE              = 0x101D,
	CL_DEVICE_GLOBAL_MEM_CACHE_SIZE                  = 0x101E,
	CL_DEVICE_GLOBAL_MEM_SIZE                        = 0x101F,
	CL_DEVICE_MAX_CONSTANT_BUFFER_SIZE               = 0x1020,
	CL_DEVICE_MAX_CONSTANT_ARGS                      = 0x1021,
	CL_DEVICE_LOCAL_MEM_TYPE                         = 0x1022,
	CL_DEVICE_LOCAL_MEM_SIZE                         = 0x1023,
	CL_DEVICE_ERROR_CORRECTION_SUPPORT               = 0x1024,
	CL_DEVICE_PROFILING_TIMER_RESOLUTION             = 0x1025,
	CL_DEVICE_ENDIAN_LITTLE                          = 0x1026,
	CL_DEVICE_AVAILABLE                              = 0x1027,
	CL_DEVICE_COMPILER_AVAILABLE                     = 0x1028,
	CL_DEVICE_EXECUTION_CAPABILITIES                 = 0x1029,
	CL_DEVICE_QUEUE_PROPERTIES                       = 0x102A,    /* deprecated */
	CL_DEVICE_QUEUE_ON_HOST_PROPERTIES               = 0x102A,
	CL_DEVICE_NAME                                   = 0x102B,
	CL_DEVICE_VENDOR                                 = 0x102C,
	CL_DRIVER_VERSION                                = 0x102D,
	CL_DEVICE_PROFILE                                = 0x102E,
	CL_DEVICE_VERSION                                = 0x102F,
	CL_DEVICE_EXTENSIONS                             = 0x1030,
	CL_DEVICE_PLATFORM                               = 0x1031,
	CL_DEVICE_DOUBLE_FP_CONFIG                       = 0x1032,
/* 0x1033 reserved for CL_DEVICE_HALF_FP_CONFIG */
	CL_DEVICE_PREFERRED_VECTOR_WIDTH_HALF            = 0x1034,
	CL_DEVICE_HOST_UNIFIED_MEMORY                    = 0x1035,   /* deprecated */
	CL_DEVICE_NATIVE_VECTOR_WIDTH_CHAR               = 0x1036,
	CL_DEVICE_NATIVE_VECTOR_WIDTH_SHORT              = 0x1037,
	CL_DEVICE_NATIVE_VECTOR_WIDTH_INT                = 0x1038,
	CL_DEVICE_NATIVE_VECTOR_WIDTH_LONG               = 0x1039,
	CL_DEVICE_NATIVE_VECTOR_WIDTH_FLOAT              = 0x103A,
	CL_DEVICE_NATIVE_VECTOR_WIDTH_DOUBLE             = 0x103B,
	CL_DEVICE_NATIVE_VECTOR_WIDTH_HALF               = 0x103C,
	CL_DEVICE_OPENCL_C_VERSION                       = 0x103D,
	CL_DEVICE_LINKER_AVAILABLE                       = 0x103E,
	CL_DEVICE_BUILT_IN_KERNELS                       = 0x103F,
	CL_DEVICE_IMAGE_MAX_BUFFER_SIZE                  = 0x1040,
	CL_DEVICE_IMAGE_MAX_ARRAY_SIZE                   = 0x1041,
	CL_DEVICE_PARENT_DEVICE                          = 0x1042,
	CL_DEVICE_PARTITION_MAX_SUB_DEVICES              = 0x1043,
	CL_DEVICE_PARTITION_PROPERTIES                   = 0x1044,
	CL_DEVICE_PARTITION_AFFINITY_DOMAIN              = 0x1045,
	CL_DEVICE_PARTITION_TYPE                         = 0x1046,
	CL_DEVICE_REFERENCE_COUNT                        = 0x1047,
	CL_DEVICE_PREFERRED_INTEROP_USER_SYNC            = 0x1048,
	CL_DEVICE_PRINTF_BUFFER_SIZE                     = 0x1049,
	CL_DEVICE_IMAGE_PITCH_ALIGNMENT                  = 0x104A,
	CL_DEVICE_IMAGE_BASE_ADDRESS_ALIGNMENT           = 0x104B,
	CL_DEVICE_MAX_READ_WRITE_IMAGE_ARGS              = 0x104C,
	CL_DEVICE_MAX_GLOBAL_VARIABLE_SIZE               = 0x104D,
	CL_DEVICE_QUEUE_ON_DEVICE_PROPERTIES             = 0x104E,
	CL_DEVICE_QUEUE_ON_DEVICE_PREFERRED_SIZE         = 0x104F,
	CL_DEVICE_QUEUE_ON_DEVICE_MAX_SIZE               = 0x1050,
	CL_DEVICE_MAX_ON_DEVICE_QUEUES                   = 0x1051,
	CL_DEVICE_MAX_ON_DEVICE_EVENTS                   = 0x1052,
	CL_DEVICE_SVM_CAPABILITIES                       = 0x1053,
	CL_DEVICE_GLOBAL_VARIABLE_PREFERRED_TOTAL_SIZE   = 0x1054,
	CL_DEVICE_MAX_PIPE_ARGS                          = 0x1055,
	CL_DEVICE_PIPE_MAX_ACTIVE_RESERVATIONS           = 0x1056,
	CL_DEVICE_PIPE_MAX_PACKET_SIZE                   = 0x1057,
	CL_DEVICE_PREFERRED_PLATFORM_ATOMIC_ALIGNMENT    = 0x1058,
	CL_DEVICE_PREFERRED_GLOBAL_ATOMIC_ALIGNMENT      = 0x1059,
	CL_DEVICE_PREFERRED_LOCAL_ATOMIC_ALIGNMENT       = 0x105A,
	CL_DEVICE_IL_VERSION                             = 0x105B,
	CL_DEVICE_MAX_NUM_SUB_GROUPS                     = 0x105C,
	CL_DEVICE_SUB_GROUP_INDEPENDENT_FORWARD_PROGRESS = 0x105D,

/* cl_device_fp_config - bitfield */
	CL_FP_DENORM                                = (1 << 0),
	CL_FP_INF_NAN                               = (1 << 1),
	CL_FP_ROUND_TO_NEAREST                      = (1 << 2),
	CL_FP_ROUND_TO_ZERO                         = (1 << 3),
	CL_FP_ROUND_TO_INF                          = (1 << 4),
	CL_FP_FMA                                   = (1 << 5),
	CL_FP_SOFT_FLOAT                            = (1 << 6),
	CL_FP_CORRECTLY_ROUNDED_DIVIDE_SQRT         = (1 << 7),

/* cl_device_mem_cache_type */
	CL_NONE                                     = 0x0,
	CL_READ_ONLY_CACHE                          = 0x1,
	CL_READ_WRITE_CACHE                         = 0x2,

/* cl_device_local_mem_type */
	CL_LOCAL                                    = 0x1,
	CL_GLOBAL                                   = 0x2,

/* cl_device_exec_capabilities - bitfield */
	CL_EXEC_KERNEL                              = (1 << 0),
	CL_EXEC_NATIVE_KERNEL                       = (1 << 1),

/* cl_command_queue_properties - bitfield */
	CL_QUEUE_OUT_OF_ORDER_EXEC_MODE_ENABLE      = (1 << 0),
	CL_QUEUE_PROFILING_ENABLE                   = (1 << 1),
	CL_QUEUE_ON_DEVICE                          = (1 << 2),
	CL_QUEUE_ON_DEVICE_DEFAULT                  = (1 << 3),

/* cl_context_info  */
	CL_CONTEXT_REFERENCE_COUNT                  = 0x1080,
	CL_CONTEXT_DEVICES                          = 0x1081,
	CL_CONTEXT_PROPERTIES                       = 0x1082,
	CL_CONTEXT_NUM_DEVICES                      = 0x1083,

/* cl_context_properties */
	CL_CONTEXT_PLATFORM                         = 0x1084,
	CL_CONTEXT_INTEROP_USER_SYNC                = 0x1085,
    
/* cl_device_partition_property */
	CL_DEVICE_PARTITION_EQUALLY                 = 0x1086,
	CL_DEVICE_PARTITION_BY_COUNTS               = 0x1087,
	CL_DEVICE_PARTITION_BY_COUNTS_LIST_END      = 0x0,
	CL_DEVICE_PARTITION_BY_AFFINITY_DOMAIN      = 0x1088,
    
/* cl_device_affinity_domain */
	CL_DEVICE_AFFINITY_DOMAIN_NUMA               = (1 << 0),
	CL_DEVICE_AFFINITY_DOMAIN_L4_CACHE           = (1 << 1),
	CL_DEVICE_AFFINITY_DOMAIN_L3_CACHE           = (1 << 2),
	CL_DEVICE_AFFINITY_DOMAIN_L2_CACHE           = (1 << 3),
	CL_DEVICE_AFFINITY_DOMAIN_L1_CACHE           = (1 << 4),
	CL_DEVICE_AFFINITY_DOMAIN_NEXT_PARTITIONABLE = (1 << 5),
    
/* cl_device_svm_capabilities */
	CL_DEVICE_SVM_COARSE_GRAIN_BUFFER           = (1 << 0),
	CL_DEVICE_SVM_FINE_GRAIN_BUFFER             = (1 << 1),
	CL_DEVICE_SVM_FINE_GRAIN_SYSTEM             = (1 << 2),
	CL_DEVICE_SVM_ATOMICS                       = (1 << 3),

/* cl_command_queue_info */
	CL_QUEUE_CONTEXT                            = 0x1090,
	CL_QUEUE_DEVICE                             = 0x1091,
	CL_QUEUE_REFERENCE_COUNT                    = 0x1092,
	CL_QUEUE_PROPERTIES                         = 0x1093,
	CL_QUEUE_SIZE                               = 0x1094,
	CL_QUEUE_DEVICE_DEFAULT                     = 0x1095,

/* cl_mem_flags and cl_svm_mem_flags - bitfield */
	CL_MEM_READ_WRITE                           = (1 << 0),
	CL_MEM_WRITE_ONLY                           = (1 << 1),
	CL_MEM_READ_ONLY                            = (1 << 2),
	CL_MEM_USE_HOST_PTR                         = (1 << 3),
	CL_MEM_ALLOC_HOST_PTR                       = (1 << 4),
	CL_MEM_COPY_HOST_PTR                        = (1 << 5),
/* reserved                                         (1 << 6)    */
	CL_MEM_HOST_WRITE_ONLY                      = (1 << 7),
	CL_MEM_HOST_READ_ONLY                       = (1 << 8),
	CL_MEM_HOST_NO_ACCESS                       = (1 << 9),
	CL_MEM_SVM_FINE_GRAIN_BUFFER                = (1 << 10),   /* used by cl_svm_mem_flags only */
	CL_MEM_SVM_ATOMICS                          = (1 << 11),   /* used by cl_svm_mem_flags only */
	CL_MEM_KERNEL_READ_AND_WRITE                = (1 << 12),

/* cl_mem_migration_flags - bitfield */
	CL_MIGRATE_MEM_OBJECT_HOST                  = (1 << 0),
	CL_MIGRATE_MEM_OBJECT_CONTENT_UNDEFINED     = (1 << 1),

/* cl_channel_order */
	CL_R                                        = 0x10B0,
	CL_A                                        = 0x10B1,
	CL_RG                                       = 0x10B2,
	CL_RA                                       = 0x10B3,
	CL_RGB                                      = 0x10B4,
	CL_RGBA                                     = 0x10B5,
	CL_BGRA                                     = 0x10B6,
	CL_ARGB                                     = 0x10B7,
	CL_INTENSITY                                = 0x10B8,
	CL_LUMINANCE                                = 0x10B9,
	CL_Rx                                       = 0x10BA,
	CL_RGx                                      = 0x10BB,
	CL_RGBx                                     = 0x10BC,
	CL_DEPTH                                    = 0x10BD,
	CL_DEPTH_STENCIL                            = 0x10BE,
	CL_sRGB                                     = 0x10BF,
	CL_sRGBx                                    = 0x10C0,
	CL_sRGBA                                    = 0x10C1,
	CL_sBGRA                                    = 0x10C2,
	CL_ABGR                                     = 0x10C3,

/* cl_channel_type */
	CL_SNORM_INT8                               = 0x10D0,
	CL_SNORM_INT16                              = 0x10D1,
	CL_UNORM_INT8                               = 0x10D2,
	CL_UNORM_INT16                              = 0x10D3,
	CL_UNORM_SHORT_565                          = 0x10D4,
	CL_UNORM_SHORT_555                          = 0x10D5,
	CL_UNORM_INT_101010                         = 0x10D6,
	CL_SIGNED_INT8                              = 0x10D7,
	CL_SIGNED_INT16                             = 0x10D8,
	CL_SIGNED_INT32                             = 0x10D9,
	CL_UNSIGNED_INT8                            = 0x10DA,
	CL_UNSIGNED_INT16                           = 0x10DB,
	CL_UNSIGNED_INT32                           = 0x10DC,
	CL_HALF_FLOAT                               = 0x10DD,
	CL_FLOAT                                    = 0x10DE,
	CL_UNORM_INT24                              = 0x10DF,
	CL_UNORM_INT_101010_2                       = 0x10E0,

/* cl_mem_object_type */
	CL_MEM_OBJECT_BUFFER                        = 0x10F0,
	CL_MEM_OBJECT_IMAGE2D                       = 0x10F1,
	CL_MEM_OBJECT_IMAGE3D                       = 0x10F2,
	CL_MEM_OBJECT_IMAGE2D_ARRAY                 = 0x10F3,
	CL_MEM_OBJECT_IMAGE1D                       = 0x10F4,
	CL_MEM_OBJECT_IMAGE1D_ARRAY                 = 0x10F5,
	CL_MEM_OBJECT_IMAGE1D_BUFFER                = 0x10F6,
	CL_MEM_OBJECT_PIPE                          = 0x10F7,

/* cl_mem_info */
	CL_MEM_TYPE                                 = 0x1100,
	CL_MEM_FLAGS                                = 0x1101,
	CL_MEM_SIZE                                 = 0x1102,
	CL_MEM_HOST_PTR                             = 0x1103,
	CL_MEM_MAP_COUNT                            = 0x1104,
	CL_MEM_REFERENCE_COUNT                      = 0x1105,
	CL_MEM_CONTEXT                              = 0x1106,
	CL_MEM_ASSOCIATED_MEMOBJECT                 = 0x1107,
	CL_MEM_OFFSET                               = 0x1108,
	CL_MEM_USES_SVM_POINTER                     = 0x1109,

/* cl_image_info */
	CL_IMAGE_FORMAT                             = 0x1110,
	CL_IMAGE_ELEMENT_SIZE                       = 0x1111,
	CL_IMAGE_ROW_PITCH                          = 0x1112,
	CL_IMAGE_SLICE_PITCH                        = 0x1113,
	CL_IMAGE_WIDTH                              = 0x1114,
	CL_IMAGE_HEIGHT                             = 0x1115,
	CL_IMAGE_DEPTH                              = 0x1116,
	CL_IMAGE_ARRAY_SIZE                         = 0x1117,
	CL_IMAGE_BUFFER                             = 0x1118,
	CL_IMAGE_NUM_MIP_LEVELS                     = 0x1119,
	CL_IMAGE_NUM_SAMPLES                        = 0x111A,
    
/* cl_pipe_info */
	CL_PIPE_PACKET_SIZE                         = 0x1120,
	CL_PIPE_MAX_PACKETS                         = 0x1121,

/* cl_addressing_mode */
	CL_ADDRESS_NONE                             = 0x1130,
	CL_ADDRESS_CLAMP_TO_EDGE                    = 0x1131,
	CL_ADDRESS_CLAMP                            = 0x1132,
	CL_ADDRESS_REPEAT                           = 0x1133,
	CL_ADDRESS_MIRRORED_REPEAT                  = 0x1134,

/* cl_filter_mode */
	CL_FILTER_NEAREST                           = 0x1140,
	CL_FILTER_LINEAR                            = 0x1141,

/* cl_sampler_info */
	CL_SAMPLER_REFERENCE_COUNT                  = 0x1150,
	CL_SAMPLER_CONTEXT                          = 0x1151,
	CL_SAMPLER_NORMALIZED_COORDS                = 0x1152,
	CL_SAMPLER_ADDRESSING_MODE                  = 0x1153,
	CL_SAMPLER_FILTER_MODE                      = 0x1154,
	CL_SAMPLER_MIP_FILTER_MODE                  = 0x1155,
	CL_SAMPLER_LOD_MIN                          = 0x1156,
	CL_SAMPLER_LOD_MAX                          = 0x1157,

/* cl_map_flags - bitfield */
	CL_MAP_READ                                 = (1 << 0),
	CL_MAP_WRITE                                = (1 << 1),
	CL_MAP_WRITE_INVALIDATE_REGION              = (1 << 2),

/* cl_program_info */
	CL_PROGRAM_REFERENCE_COUNT                  = 0x1160,
	CL_PROGRAM_CONTEXT                          = 0x1161,
	CL_PROGRAM_NUM_DEVICES                      = 0x1162,
	CL_PROGRAM_DEVICES                          = 0x1163,
	CL_PROGRAM_SOURCE                           = 0x1164,
	CL_PROGRAM_BINARY_SIZES                     = 0x1165,
	CL_PROGRAM_BINARIES                         = 0x1166,
	CL_PROGRAM_NUM_KERNELS                      = 0x1167,
	CL_PROGRAM_KERNEL_NAMES                     = 0x1168,
	CL_PROGRAM_IL                               = 0x1169,

/* cl_program_build_info */
	CL_PROGRAM_BUILD_STATUS                     = 0x1181,
	CL_PROGRAM_BUILD_OPTIONS                    = 0x1182,
	CL_PROGRAM_BUILD_LOG                        = 0x1183,
	CL_PROGRAM_BINARY_TYPE                      = 0x1184,
	CL_PROGRAM_BUILD_GLOBAL_VARIABLE_TOTAL_SIZE = 0x1185,
    
/* cl_program_binary_type */
	CL_PROGRAM_BINARY_TYPE_NONE                 = 0x0,
	CL_PROGRAM_BINARY_TYPE_COMPILED_OBJECT      = 0x1,
	CL_PROGRAM_BINARY_TYPE_LIBRARY              = 0x2,
	CL_PROGRAM_BINARY_TYPE_EXECUTABLE           = 0x4,

/* cl_build_status */
	CL_BUILD_SUCCESS                            = 0,
	CL_BUILD_NONE                               = -1,
	CL_BUILD_ERROR                              = -2,
	CL_BUILD_IN_PROGRESS                        = -3,

/* cl_kernel_info */
	CL_KERNEL_FUNCTION_NAME                     = 0x1190,
	CL_KERNEL_NUM_ARGS                          = 0x1191,
	CL_KERNEL_REFERENCE_COUNT                   = 0x1192,
	CL_KERNEL_CONTEXT                           = 0x1193,
	CL_KERNEL_PROGRAM                           = 0x1194,
	CL_KERNEL_ATTRIBUTES                        = 0x1195,
	CL_KERNEL_MAX_NUM_SUB_GROUPS                = 0x11B9,
	CL_KERNEL_COMPILE_NUM_SUB_GROUPS            = 0x11BA,

/* cl_kernel_arg_info */
	CL_KERNEL_ARG_ADDRESS_QUALIFIER             = 0x1196,
	CL_KERNEL_ARG_ACCESS_QUALIFIER              = 0x1197,
	CL_KERNEL_ARG_TYPE_NAME                     = 0x1198,
	CL_KERNEL_ARG_TYPE_QUALIFIER                = 0x1199,
	CL_KERNEL_ARG_NAME                          = 0x119A,

/* cl_kernel_arg_address_qualifier */
	CL_KERNEL_ARG_ADDRESS_GLOBAL                = 0x119B,
	CL_KERNEL_ARG_ADDRESS_LOCAL                 = 0x119C,
	CL_KERNEL_ARG_ADDRESS_CONSTANT              = 0x119D,
	CL_KERNEL_ARG_ADDRESS_PRIVATE               = 0x119E,

/* cl_kernel_arg_access_qualifier */
	CL_KERNEL_ARG_ACCESS_READ_ONLY              = 0x11A0,
	CL_KERNEL_ARG_ACCESS_WRITE_ONLY             = 0x11A1,
	CL_KERNEL_ARG_ACCESS_READ_WRITE             = 0x11A2,
	CL_KERNEL_ARG_ACCESS_NONE                   = 0x11A3,
    
/* cl_kernel_arg_type_qualifer */
	CL_KERNEL_ARG_TYPE_NONE                     = 0,
	CL_KERNEL_ARG_TYPE_CONST                    = (1 << 0),
	CL_KERNEL_ARG_TYPE_RESTRICT                 = (1 << 1),
	CL_KERNEL_ARG_TYPE_VOLATILE                 = (1 << 2),
	CL_KERNEL_ARG_TYPE_PIPE                     = (1 << 3),

/* cl_kernel_work_group_info */
	CL_KERNEL_WORK_GROUP_SIZE                   = 0x11B0,
	CL_KERNEL_COMPILE_WORK_GROUP_SIZE           = 0x11B1,
	CL_KERNEL_LOCAL_MEM_SIZE                    = 0x11B2,
	CL_KERNEL_PREFERRED_WORK_GROUP_SIZE_MULTIPLE = 0x11B3,
	CL_KERNEL_PRIVATE_MEM_SIZE                  = 0x11B4,
	CL_KERNEL_GLOBAL_WORK_SIZE                  = 0x11B5,

/* cl_kernel_sub_group_info */
	CL_KERNEL_MAX_SUB_GROUP_SIZE_FOR_NDRANGE    = 0x2033,
	CL_KERNEL_SUB_GROUP_COUNT_FOR_NDRANGE       = 0x2034,
	CL_KERNEL_LOCAL_SIZE_FOR_SUB_GROUP_COUNT    = 0x11B8,
    
/* cl_kernel_exec_info */
	CL_KERNEL_EXEC_INFO_SVM_PTRS                = 0x11B6,
	CL_KERNEL_EXEC_INFO_SVM_FINE_GRAIN_SYSTEM   = 0x11B7,

/* cl_event_info  */
	CL_EVENT_COMMAND_QUEUE                      = 0x11D0,
	CL_EVENT_COMMAND_TYPE                       = 0x11D1,
	CL_EVENT_REFERENCE_COUNT                    = 0x11D2,
	CL_EVENT_COMMAND_EXECUTION_STATUS           = 0x11D3,
	CL_EVENT_CONTEXT                            = 0x11D4,

/* cl_command_type */
	CL_COMMAND_NDRANGE_KERNEL                   = 0x11F0,
	CL_COMMAND_TASK                             = 0x11F1,
	CL_COMMAND_NATIVE_KERNEL                    = 0x11F2,
	CL_COMMAND_READ_BUFFER                      = 0x11F3,
	CL_COMMAND_WRITE_BUFFER                     = 0x11F4,
	CL_COMMAND_COPY_BUFFER                      = 0x11F5,
	CL_COMMAND_READ_IMAGE                       = 0x11F6,
	CL_COMMAND_WRITE_IMAGE                      = 0x11F7,
	CL_COMMAND_COPY_IMAGE                       = 0x11F8,
	CL_COMMAND_COPY_IMAGE_TO_BUFFER             = 0x11F9,
	CL_COMMAND_COPY_BUFFER_TO_IMAGE             = 0x11FA,
	CL_COMMAND_MAP_BUFFER                       = 0x11FB,
	CL_COMMAND_MAP_IMAGE                        = 0x11FC,
	CL_COMMAND_UNMAP_MEM_OBJECT                 = 0x11FD,
	CL_COMMAND_MARKER                           = 0x11FE,
	CL_COMMAND_ACQUIRE_GL_OBJECTS               = 0x11FF,
	CL_COMMAND_RELEASE_GL_OBJECTS               = 0x1200,
	CL_COMMAND_READ_BUFFER_RECT                 = 0x1201,
	CL_COMMAND_WRITE_BUFFER_RECT                = 0x1202,
	CL_COMMAND_COPY_BUFFER_RECT                 = 0x1203,
	CL_COMMAND_USER                             = 0x1204,
	CL_COMMAND_BARRIER                          = 0x1205,
	CL_COMMAND_MIGRATE_MEM_OBJECTS              = 0x1206,
	CL_COMMAND_FILL_BUFFER                      = 0x1207,
	CL_COMMAND_FILL_IMAGE                       = 0x1208,
	CL_COMMAND_SVM_FREE                         = 0x1209,
	CL_COMMAND_SVM_MEMCPY                       = 0x120A,
	CL_COMMAND_SVM_MEMFILL                      = 0x120B,
	CL_COMMAND_SVM_MAP                          = 0x120C,
	CL_COMMAND_SVM_UNMAP                        = 0x120D,
	CL_COMMAND_MIGRATE_SVM_MEM_OBJECTS          = 0x120E,

/* command execution status */
	CL_COMPLETE                                 = 0x0,
	CL_RUNNING                                  = 0x1,
	CL_SUBMITTED                                = 0x2,
	CL_QUEUED                                   = 0x3,

/* cl_buffer_create_type  */
	CL_BUFFER_CREATE_TYPE_REGION                = 0x1220,

/* cl_profiling_info  */
	CL_PROFILING_COMMAND_QUEUED                 = 0x1280,
	CL_PROFILING_COMMAND_SUBMIT                 = 0x1281,
	CL_PROFILING_COMMAND_START                  = 0x1282,
	CL_PROFILING_COMMAND_END                    = 0x1283,
	CL_PROFILING_COMMAND_COMPLETE               = 0x1284,
};

typedef signed char               int8_t;
typedef short                     int16_t;
typedef int                       int32_t;
typedef long long                 int64_t;
typedef unsigned char             uint8_t;
typedef unsigned short            uint16_t;
typedef unsigned int              uint32_t;
typedef unsigned long long        uint64_t;
typedef int8_t                    int_least8_t;
typedef int16_t                   int_least16_t;
typedef int32_t                   int_least32_t;
typedef int64_t                   int_least64_t;
typedef uint8_t                   uint_least8_t;
typedef uint16_t                  uint_least16_t;
typedef uint32_t                  uint_least32_t;
typedef uint64_t                  uint_least64_t;
typedef int8_t                    int_fast8_t;
typedef int16_t                   int_fast16_t;
typedef int32_t                   int_fast32_t;
typedef int64_t                   int_fast64_t;
typedef uint8_t                   uint_fast8_t;
typedef uint16_t                  uint_fast16_t;
typedef uint32_t                  uint_fast32_t;
typedef uint64_t                  uint_fast64_t;
typedef long                      intptr_t;
typedef unsigned long             uintptr_t;
typedef long int                  intmax_t;
typedef long unsigned int         uintmax_t;
typedef int8_t                    cl_char;
typedef uint8_t                   cl_uchar;
typedef long int                  ptrdiff_t;
typedef long unsigned int         size_t;
typedef int                       wchar_t;
typedef int16_t                   cl_short        __attribute__((aligned(2)));
typedef uint16_t                  cl_ushort       __attribute__((aligned(2)));
typedef int32_t                   cl_int          __attribute__((aligned(4)));
typedef uint32_t                  cl_uint         __attribute__((aligned(4)));
typedef int64_t                   cl_long         __attribute__((aligned(8)));
typedef uint64_t                  cl_ulong        __attribute__((aligned(8)));
typedef uint16_t                  cl_half         __attribute__((aligned(2)));
typedef float                     cl_float        __attribute__((aligned(4)));
typedef double                    cl_double       __attribute__((aligned(8)));
typedef int8_t                    cl_char2[2]     __attribute__((aligned(2)));
typedef int8_t                    cl_char4[4]     __attribute__((aligned(4)));
typedef int8_t                    cl_char8[8]     __attribute__((aligned(8)));
typedef int8_t                    cl_char16[16]   __attribute__((aligned(16)));
typedef uint8_t                   cl_uchar2[2]    __attribute__((aligned(2)));
typedef uint8_t                   cl_uchar4[4]    __attribute__((aligned(4)));
typedef uint8_t                   cl_uchar8[8]    __attribute__((aligned(8)));
typedef uint8_t                   cl_uchar16[16]  __attribute__((aligned(16)));
typedef int16_t                   cl_short2[2]    __attribute__((aligned(4)));
typedef int16_t                   cl_short4[4]    __attribute__((aligned(8)));
typedef int16_t                   cl_short8[8]    __attribute__((aligned(16)));
typedef int16_t                   cl_short16[16]  __attribute__((aligned(32)));
typedef uint16_t                  cl_ushort2[2]   __attribute__((aligned(4)));
typedef uint16_t                  cl_ushort4[4]   __attribute__((aligned(8)));
typedef uint16_t                  cl_ushort8[8]   __attribute__((aligned(16)));
typedef uint16_t                  cl_ushort16[16] __attribute__((aligned(32)));
typedef int32_t                   cl_int2[2]      __attribute__((aligned(8)));
typedef int32_t                   cl_int4[4]      __attribute__((aligned(16)));
typedef int32_t                   cl_int8[8]      __attribute__((aligned(32)));
typedef int32_t                   cl_int16[16]    __attribute__((aligned(64)));
typedef uint32_t                  cl_uint2[2]     __attribute__((aligned(8)));
typedef uint32_t                  cl_uint4[4]     __attribute__((aligned(16)));
typedef uint32_t                  cl_uint8[8]     __attribute__((aligned(32)));
typedef uint32_t                  cl_uint16[16]   __attribute__((aligned(64)));
typedef int64_t                   cl_long2[2]     __attribute__((aligned(16)));
typedef int64_t                   cl_long4[4]     __attribute__((aligned(32)));
typedef int64_t                   cl_long8[8]     __attribute__((aligned(64)));
typedef int64_t                   cl_long16[16]   __attribute__((aligned(128)));
typedef uint64_t                  cl_ulong2[2]    __attribute__((aligned(16)));
typedef uint64_t                  cl_ulong4[4]    __attribute__((aligned(32)));
typedef uint64_t                  cl_ulong8[8]    __attribute__((aligned(64)));
typedef uint64_t                  cl_ulong16[16]  __attribute__((aligned(128)));
typedef float                     cl_float2[2]    __attribute__((aligned(8)));
typedef float                     cl_float4[4]    __attribute__((aligned(16)));
typedef float                     cl_float8[8]    __attribute__((aligned(32)));
typedef float                     cl_float16[16]  __attribute__((aligned(64)));
typedef double                    cl_double2[2]   __attribute__((aligned(16)));
typedef double                    cl_double4[4]   __attribute__((aligned(32)));
typedef double                    cl_double8[8]   __attribute__((aligned(64)));
typedef double                    cl_double16[16] __attribute__((aligned(128)));
typedef struct _cl_platform_id*   cl_platform_id;
typedef struct _cl_device_id*     cl_device_id;
typedef struct _cl_context*       cl_context;
typedef struct _cl_command_queue* cl_command_queue;
typedef struct _cl_mem*           cl_mem;
typedef struct _cl_program*       cl_program;
typedef struct _cl_kernel*        cl_kernel;
typedef struct _cl_event*         cl_event;
typedef struct _cl_sampler*       cl_sampler;

typedef cl_uint                   cl_bool;
typedef cl_ulong                  cl_bitfield;
typedef cl_bitfield               cl_device_type;
typedef cl_uint                   cl_platform_info;
typedef cl_uint                   cl_device_info;
typedef cl_bitfield               cl_device_fp_config;
typedef cl_uint                   cl_device_mem_cache_type;
typedef cl_uint                   cl_device_local_mem_type;
typedef cl_bitfield               cl_device_exec_capabilities;
typedef cl_bitfield         	  cl_device_svm_capabilities;
typedef cl_bitfield               cl_command_queue_properties;
typedef intptr_t            	  cl_device_partition_property;
typedef cl_bitfield         	  cl_device_affinity_domain;

typedef intptr_t            cl_context_properties;
typedef cl_uint             cl_context_info;
typedef cl_bitfield         cl_queue_properties;
typedef cl_uint             cl_command_queue_info;
typedef cl_uint             cl_channel_order;
typedef cl_uint             cl_channel_type;
typedef cl_bitfield         cl_mem_flags;
typedef cl_bitfield         cl_svm_mem_flags;
typedef cl_uint             cl_mem_object_type;
typedef cl_uint             cl_mem_info;
typedef cl_bitfield         cl_mem_migration_flags;
typedef cl_uint             cl_image_info;
typedef cl_uint             cl_buffer_create_type;
typedef cl_uint             cl_addressing_mode;
typedef cl_uint             cl_filter_mode;
typedef cl_uint             cl_sampler_info;
typedef cl_bitfield         cl_map_flags;
typedef intptr_t            cl_pipe_properties;
typedef cl_uint             cl_pipe_info;
typedef cl_uint             cl_program_info;
typedef cl_uint             cl_program_build_info;
typedef cl_uint             cl_program_binary_type;
typedef cl_int              cl_build_status;
typedef cl_uint             cl_kernel_info;
typedef cl_uint             cl_kernel_arg_info;
typedef cl_uint             cl_kernel_arg_address_qualifier;
typedef cl_uint             cl_kernel_arg_access_qualifier;
typedef cl_bitfield         cl_kernel_arg_type_qualifier;
typedef cl_uint             cl_kernel_work_group_info;
typedef cl_uint             cl_kernel_sub_group_info;
typedef cl_uint             cl_event_info;
typedef cl_uint             cl_command_type;
typedef cl_uint             cl_profiling_info;
typedef cl_bitfield         cl_sampler_properties;
typedef cl_uint             cl_kernel_exec_info;

typedef struct _cl_image_format {
  cl_channel_order image_channel_order;
  cl_channel_type  image_channel_data_type;
} cl_image_format;

typedef struct _cl_image_desc {
    cl_mem_object_type      image_type;
    size_t                  image_width;
    size_t                  image_height;
    size_t                  image_depth;
    size_t                  image_array_size;
    size_t                  image_row_pitch;
    size_t                  image_slice_pitch;
    cl_uint                 num_mip_levels;
    cl_uint                 num_samples;
    union {
      cl_mem                  buffer;
      cl_mem                  mem_object;
    };
} cl_image_desc;

typedef struct _cl_buffer_region {
    size_t                  origin;
    size_t                  size;
} cl_buffer_region;

/* Platform API */
extern  cl_int 
clGetPlatformIDs(cl_uint          /* num_entries */,
                 cl_platform_id * /* platforms */,
                 cl_uint *        /* num_platforms */) ;

extern  cl_int  
clGetPlatformInfo(cl_platform_id   /* platform */, 
                  cl_platform_info /* param_name */,
                  size_t           /* param_value_size */, 
                  void *           /* param_value */,
                  size_t *         /* param_value_size_ret */) ;

/* Device APIs */
extern  cl_int 
clGetDeviceIDs(cl_platform_id   /* platform */,
               cl_device_type   /* device_type */, 
               cl_uint          /* num_entries */, 
               cl_device_id *   /* devices */, 
               cl_uint *        /* num_devices */) ;

extern  cl_int 
clGetDeviceInfo(cl_device_id    /* device */,
                cl_device_info  /* param_name */, 
                size_t          /* param_value_size */, 
                void *          /* param_value */,
                size_t *        /* param_value_size_ret */) ;
    
extern  cl_int 
clCreateSubDevices(cl_device_id                         /* in_device */,
                   const cl_device_partition_property * /* properties */,
                   cl_uint                              /* num_devices */,
                   cl_device_id *                       /* out_devices */,
                   cl_uint *                            /* num_devices_ret */) ;

extern  cl_int 
clRetainDevice(cl_device_id /* device */) ;
    
extern  cl_int 
clReleaseDevice(cl_device_id /* device */) ;

extern  cl_int 
clSetDefaultDeviceCommandQueue(cl_context           /* context */,
                               cl_device_id         /* device */,
                               cl_command_queue     /* command_queue */) ;

extern  cl_int 
clGetDeviceAndHostTimer(cl_device_id    /* device */,
                        cl_ulong*       /* device_timestamp */,
                        cl_ulong*       /* host_timestamp */) ;

extern  cl_int 
clGetHostTimer(cl_device_id /* device */,
               cl_ulong *   /* host_timestamp */)  ;

    
/* Context APIs  */
extern  cl_context 
clCreateContext(const cl_context_properties * /* properties */,
                cl_uint                 /* num_devices */,
                const cl_device_id *    /* devices */,
                void ( * /* pfn_notify */)(const char *, const void *, size_t, void *),
                void *                  /* user_data */,
                cl_int *                /* errcode_ret */) ;

extern  cl_context 
clCreateContextFromType(const cl_context_properties * /* properties */,
                        cl_device_type          /* device_type */,
                        void ( *     /* pfn_notify*/ )(const char *, const void *, size_t, void *),
                        void *                  /* user_data */,
                        cl_int *                /* errcode_ret */) ;

extern  cl_int 
clRetainContext(cl_context /* context */) ;

extern  cl_int 
clReleaseContext(cl_context /* context */) ;

extern  cl_int 
clGetContextInfo(cl_context         /* context */, 
                 cl_context_info    /* param_name */, 
                 size_t             /* param_value_size */, 
                 void *             /* param_value */, 
                 size_t *           /* param_value_size_ret */) ;

/* Command Queue APIs */
extern  cl_command_queue 
clCreateCommandQueueWithProperties(cl_context               /* context */,
                                   cl_device_id             /* device */,
                                   const cl_queue_properties *    /* properties */,
                                   cl_int *                 /* errcode_ret */) ;

extern  cl_int 
clRetainCommandQueue(cl_command_queue /* command_queue */) ;

extern  cl_int 
clReleaseCommandQueue(cl_command_queue /* command_queue */) ;

extern  cl_int 
clGetCommandQueueInfo(cl_command_queue      /* command_queue */,
                      cl_command_queue_info /* param_name */,
                      size_t                /* param_value_size */,
                      void *                /* param_value */,
                      size_t *              /* param_value_size_ret */) ;

/* Memory Object APIs */
extern  cl_mem 
clCreateBuffer(cl_context   /* context */,
               cl_mem_flags /* flags */,
               size_t       /* size */,
               void *       /* host_ptr */,
               cl_int *     /* errcode_ret */) ;

extern  cl_mem 
clCreateSubBuffer(cl_mem                   /* buffer */,
                  cl_mem_flags             /* flags */,
                  cl_buffer_create_type    /* buffer_create_type */,
                  const void *             /* buffer_create_info */,
                  cl_int *                 /* errcode_ret */) ;

extern  cl_mem 
clCreateImage(cl_context              /* context */,
              cl_mem_flags            /* flags */,
              const cl_image_format * /* image_format */,
              const cl_image_desc *   /* image_desc */, 
              void *                  /* host_ptr */,
              cl_int *                /* errcode_ret */) ;
                        
extern  cl_mem 
clCreatePipe(cl_context                 /* context */,
             cl_mem_flags               /* flags */,
             cl_uint                    /* pipe_packet_size */,
             cl_uint                    /* pipe_max_packets */,
             const cl_pipe_properties * /* properties */,
             cl_int *                   /* errcode_ret */) ;
    
extern  cl_int 
clRetainMemObject(cl_mem /* memobj */) ;

extern  cl_int 
clReleaseMemObject(cl_mem /* memobj */) ;

extern  cl_int 
clGetSupportedImageFormats(cl_context           /* context */,
                           cl_mem_flags         /* flags */,
                           cl_mem_object_type   /* image_type */,
                           cl_uint              /* num_entries */,
                           cl_image_format *    /* image_formats */,
                           cl_uint *            /* num_image_formats */) ;
                                    
extern  cl_int 
clGetMemObjectInfo(cl_mem           /* memobj */,
                   cl_mem_info      /* param_name */, 
                   size_t           /* param_value_size */,
                   void *           /* param_value */,
                   size_t *         /* param_value_size_ret */) ;

extern  cl_int 
clGetImageInfo(cl_mem           /* image */,
               cl_image_info    /* param_name */, 
               size_t           /* param_value_size */,
               void *           /* param_value */,
               size_t *         /* param_value_size_ret */) ;
    
extern  cl_int 
clGetPipeInfo(cl_mem           /* pipe */,
              cl_pipe_info     /* param_name */,
              size_t           /* param_value_size */,
              void *           /* param_value */,
              size_t *         /* param_value_size_ret */) ;
    

extern  cl_int 
clSetMemObjectDestructorCallback(cl_mem /* memobj */,
                                 void ( * /*pfn_notify*/)( cl_mem /* memobj */, void* /*user_data*/),
                                 void * /*user_data */ )             ;

/* SVM Allocation APIs */
extern  void * 
clSVMAlloc(cl_context       /* context */,
           cl_svm_mem_flags /* flags */,
           size_t           /* size */,
           cl_uint          /* alignment */) ;

extern  void 
clSVMFree(cl_context        /* context */,
          void *            /* svm_pointer */) ;
    
/* Sampler APIs */
extern  cl_sampler 
clCreateSamplerWithProperties(cl_context                     /* context */,
                              const cl_sampler_properties *  /* normalized_coords */,
                              cl_int *                       /* errcode_ret */) ;

extern  cl_int 
clRetainSampler(cl_sampler /* sampler */) ;

extern  cl_int 
clReleaseSampler(cl_sampler /* sampler */) ;

extern  cl_int 
clGetSamplerInfo(cl_sampler         /* sampler */,
                 cl_sampler_info    /* param_name */,
                 size_t             /* param_value_size */,
                 void *             /* param_value */,
                 size_t *           /* param_value_size_ret */) ;
                            
/* Program Object APIs  */
extern  cl_program 
clCreateProgramWithSource(cl_context        /* context */,
                          cl_uint           /* count */,
                          const char **     /* strings */,
                          const size_t *    /* lengths */,
                          cl_int *          /* errcode_ret */) ;

extern  cl_program 
clCreateProgramWithBinary(cl_context                     /* context */,
                          cl_uint                        /* num_devices */,
                          const cl_device_id *           /* device_list */,
                          const size_t *                 /* lengths */,
                          const unsigned char **         /* binaries */,
                          cl_int *                       /* binary_status */,
                          cl_int *                       /* errcode_ret */) ;

extern  cl_program 
clCreateProgramWithBuiltInKernels(cl_context            /* context */,
                                  cl_uint               /* num_devices */,
                                  const cl_device_id *  /* device_list */,
                                  const char *          /* kernel_names */,
                                  cl_int *              /* errcode_ret */) ;

extern  cl_program 
clCreateProgramWithIL(cl_context    /* context */,
                     const void*    /* il */,
                     size_t         /* length */,
                     cl_int*        /* errcode_ret */) ;


extern  cl_int 
clRetainProgram(cl_program /* program */) ;

extern  cl_int 
clReleaseProgram(cl_program /* program */) ;

extern  cl_int 
clBuildProgram(cl_program           /* program */,
               cl_uint              /* num_devices */,
               const cl_device_id * /* device_list */,
               const char *         /* options */, 
               void ( *  /* pfn_notify */)(cl_program /* program */, void * /* user_data */),
               void *               /* user_data */) ;

extern  cl_int 
clCompileProgram(cl_program           /* program */,
                 cl_uint              /* num_devices */,
                 const cl_device_id * /* device_list */,
                 const char *         /* options */, 
                 cl_uint              /* num_input_headers */,
                 const cl_program *   /* input_headers */,
                 const char **        /* header_include_names */,
                 void ( *  /* pfn_notify */)(cl_program /* program */, void * /* user_data */),
                 void *               /* user_data */) ;

extern  cl_program 
clLinkProgram(cl_context           /* context */,
              cl_uint              /* num_devices */,
              const cl_device_id * /* device_list */,
              const char *         /* options */, 
              cl_uint              /* num_input_programs */,
              const cl_program *   /* input_programs */,
              void ( *  /* pfn_notify */)(cl_program /* program */, void * /* user_data */),
              void *               /* user_data */,
              cl_int *             /* errcode_ret */ ) ;


extern  cl_int 
clUnloadPlatformCompiler(cl_platform_id /* platform */) ;

extern  cl_int 
clGetProgramInfo(cl_program         /* program */,
                 cl_program_info    /* param_name */,
                 size_t             /* param_value_size */,
                 void *             /* param_value */,
                 size_t *           /* param_value_size_ret */) ;

extern  cl_int 
clGetProgramBuildInfo(cl_program            /* program */,
                      cl_device_id          /* device */,
                      cl_program_build_info /* param_name */,
                      size_t                /* param_value_size */,
                      void *                /* param_value */,
                      size_t *              /* param_value_size_ret */) ;
                            
/* Kernel Object APIs */
extern  cl_kernel 
clCreateKernel(cl_program      /* program */,
               const char *    /* kernel_name */,
               cl_int *        /* errcode_ret */) ;

extern  cl_int 
clCreateKernelsInProgram(cl_program     /* program */,
                         cl_uint        /* num_kernels */,
                         cl_kernel *    /* kernels */,
                         cl_uint *      /* num_kernels_ret */) ;

extern  cl_kernel 
clCloneKernel(cl_kernel     /* source_kernel */,
              cl_int*       /* errcode_ret */) ;

extern  cl_int 
clRetainKernel(cl_kernel    /* kernel */) ;

extern  cl_int 
clReleaseKernel(cl_kernel   /* kernel */) ;

extern  cl_int 
clSetKernelArg(cl_kernel    /* kernel */,
               cl_uint      /* arg_index */,
               size_t       /* arg_size */,
               const void * /* arg_value */) ;

extern  cl_int 
clSetKernelArgSVMPointer(cl_kernel    /* kernel */,
                         cl_uint      /* arg_index */,
                         const void * /* arg_value */) ;

extern  cl_int 
clSetKernelExecInfo(cl_kernel            /* kernel */,
                    cl_kernel_exec_info  /* param_name */,
                    size_t               /* param_value_size */,
                    const void *         /* param_value */) ;
    
extern  cl_int 
clGetKernelInfo(cl_kernel       /* kernel */,
                cl_kernel_info  /* param_name */,
                size_t          /* param_value_size */,
                void *          /* param_value */,
                size_t *        /* param_value_size_ret */) ;

extern  cl_int 
clGetKernelArgInfo(cl_kernel       /* kernel */,
                   cl_uint         /* arg_indx */,
                   cl_kernel_arg_info  /* param_name */,
                   size_t          /* param_value_size */,
                   void *          /* param_value */,
                   size_t *        /* param_value_size_ret */) ;

extern  cl_int 
clGetKernelWorkGroupInfo(cl_kernel                  /* kernel */,
                         cl_device_id               /* device */,
                         cl_kernel_work_group_info  /* param_name */,
                         size_t                     /* param_value_size */,
                         void *                     /* param_value */,
                         size_t *                   /* param_value_size_ret */) ;

extern  cl_int 
clGetKernelSubGroupInfo(cl_kernel                   /* kernel */,
                        cl_device_id                /* device */,
                        cl_kernel_sub_group_info    /* param_name */,
                        size_t                      /* input_value_size */,
                        const void*                 /*input_value */,
                        size_t                      /* param_value_size */,
                        void*                       /* param_value */,
                        size_t*                     /* param_value_size_ret */ ) ;


/* Event Object APIs */
extern  cl_int 
clWaitForEvents(cl_uint             /* num_events */,
                const cl_event *    /* event_list */) ;

extern  cl_int 
clGetEventInfo(cl_event         /* event */,
               cl_event_info    /* param_name */,
               size_t           /* param_value_size */,
               void *           /* param_value */,
               size_t *         /* param_value_size_ret */) ;
                            
extern  cl_event 
clCreateUserEvent(cl_context    /* context */,
                  cl_int *      /* errcode_ret */) ;               
                            
extern  cl_int 
clRetainEvent(cl_event /* event */) ;

extern  cl_int 
clReleaseEvent(cl_event /* event */) ;

extern  cl_int 
clSetUserEventStatus(cl_event   /* event */,
                     cl_int     /* execution_status */) ;
                     
extern  cl_int 
clSetEventCallback( cl_event    /* event */,
                    cl_int      /* command_exec_callback_type */,
                    void ( * /* pfn_notify */)(cl_event, cl_int, void *),
                    void *      /* user_data */) ;

/* Profiling APIs */
extern  cl_int 
clGetEventProfilingInfo(cl_event            /* event */,
                        cl_profiling_info   /* param_name */,
                        size_t              /* param_value_size */,
                        void *              /* param_value */,
                        size_t *            /* param_value_size_ret */) ;
                                
/* Flush and Finish APIs */
extern  cl_int 
clFlush(cl_command_queue /* command_queue */) ;

extern  cl_int 
clFinish(cl_command_queue /* command_queue */) ;

/* Enqueued Commands APIs */
extern  cl_int 
clEnqueueReadBuffer(cl_command_queue    /* command_queue */,
                    cl_mem              /* buffer */,
                    cl_bool             /* blocking_read */,
                    size_t              /* offset */,
                    size_t              /* size */, 
                    void *              /* ptr */,
                    cl_uint             /* num_events_in_wait_list */,
                    const cl_event *    /* event_wait_list */,
                    cl_event *          /* event */) ;
                            
extern  cl_int 
clEnqueueReadBufferRect(cl_command_queue    /* command_queue */,
                        cl_mem              /* buffer */,
                        cl_bool             /* blocking_read */,
                        const size_t *      /* buffer_offset */,
                        const size_t *      /* host_offset */, 
                        const size_t *      /* region */,
                        size_t              /* buffer_row_pitch */,
                        size_t              /* buffer_slice_pitch */,
                        size_t              /* host_row_pitch */,
                        size_t              /* host_slice_pitch */,                        
                        void *              /* ptr */,
                        cl_uint             /* num_events_in_wait_list */,
                        const cl_event *    /* event_wait_list */,
                        cl_event *          /* event */) ;
                            
extern  cl_int 
clEnqueueWriteBuffer(cl_command_queue   /* command_queue */, 
                     cl_mem             /* buffer */, 
                     cl_bool            /* blocking_write */, 
                     size_t             /* offset */, 
                     size_t             /* size */, 
                     const void *       /* ptr */, 
                     cl_uint            /* num_events_in_wait_list */, 
                     const cl_event *   /* event_wait_list */, 
                     cl_event *         /* event */) ;
                            
extern  cl_int 
clEnqueueWriteBufferRect(cl_command_queue    /* command_queue */,
                         cl_mem              /* buffer */,
                         cl_bool             /* blocking_write */,
                         const size_t *      /* buffer_offset */,
                         const size_t *      /* host_offset */, 
                         const size_t *      /* region */,
                         size_t              /* buffer_row_pitch */,
                         size_t              /* buffer_slice_pitch */,
                         size_t              /* host_row_pitch */,
                         size_t              /* host_slice_pitch */,                        
                         const void *        /* ptr */,
                         cl_uint             /* num_events_in_wait_list */,
                         const cl_event *    /* event_wait_list */,
                         cl_event *          /* event */) ;
                            
extern  cl_int 
clEnqueueFillBuffer(cl_command_queue   /* command_queue */,
                    cl_mem             /* buffer */, 
                    const void *       /* pattern */, 
                    size_t             /* pattern_size */, 
                    size_t             /* offset */, 
                    size_t             /* size */, 
                    cl_uint            /* num_events_in_wait_list */, 
                    const cl_event *   /* event_wait_list */, 
                    cl_event *         /* event */) ;
                            
extern  cl_int 
clEnqueueCopyBuffer(cl_command_queue    /* command_queue */, 
                    cl_mem              /* src_buffer */,
                    cl_mem              /* dst_buffer */, 
                    size_t              /* src_offset */,
                    size_t              /* dst_offset */,
                    size_t              /* size */, 
                    cl_uint             /* num_events_in_wait_list */,
                    const cl_event *    /* event_wait_list */,
                    cl_event *          /* event */) ;
                            
extern  cl_int 
clEnqueueCopyBufferRect(cl_command_queue    /* command_queue */, 
                        cl_mem              /* src_buffer */,
                        cl_mem              /* dst_buffer */, 
                        const size_t *      /* src_origin */,
                        const size_t *      /* dst_origin */,
                        const size_t *      /* region */, 
                        size_t              /* src_row_pitch */,
                        size_t              /* src_slice_pitch */,
                        size_t              /* dst_row_pitch */,
                        size_t              /* dst_slice_pitch */,
                        cl_uint             /* num_events_in_wait_list */,
                        const cl_event *    /* event_wait_list */,
                        cl_event *          /* event */) ;
                            
extern  cl_int 
clEnqueueReadImage(cl_command_queue     /* command_queue */,
                   cl_mem               /* image */,
                   cl_bool              /* blocking_read */, 
                   const size_t *       /* origin[3] */,
                   const size_t *       /* region[3] */,
                   size_t               /* row_pitch */,
                   size_t               /* slice_pitch */, 
                   void *               /* ptr */,
                   cl_uint              /* num_events_in_wait_list */,
                   const cl_event *     /* event_wait_list */,
                   cl_event *           /* event */) ;

extern  cl_int 
clEnqueueWriteImage(cl_command_queue    /* command_queue */,
                    cl_mem              /* image */,
                    cl_bool             /* blocking_write */, 
                    const size_t *      /* origin[3] */,
                    const size_t *      /* region[3] */,
                    size_t              /* input_row_pitch */,
                    size_t              /* input_slice_pitch */, 
                    const void *        /* ptr */,
                    cl_uint             /* num_events_in_wait_list */,
                    const cl_event *    /* event_wait_list */,
                    cl_event *          /* event */) ;

extern  cl_int 
clEnqueueFillImage(cl_command_queue   /* command_queue */,
                   cl_mem             /* image */, 
                   const void *       /* fill_color */, 
                   const size_t *     /* origin[3] */, 
                   const size_t *     /* region[3] */, 
                   cl_uint            /* num_events_in_wait_list */, 
                   const cl_event *   /* event_wait_list */, 
                   cl_event *         /* event */) ;
                            
extern  cl_int 
clEnqueueCopyImage(cl_command_queue     /* command_queue */,
                   cl_mem               /* src_image */,
                   cl_mem               /* dst_image */, 
                   const size_t *       /* src_origin[3] */,
                   const size_t *       /* dst_origin[3] */,
                   const size_t *       /* region[3] */, 
                   cl_uint              /* num_events_in_wait_list */,
                   const cl_event *     /* event_wait_list */,
                   cl_event *           /* event */) ;

extern  cl_int 
clEnqueueCopyImageToBuffer(cl_command_queue /* command_queue */,
                           cl_mem           /* src_image */,
                           cl_mem           /* dst_buffer */, 
                           const size_t *   /* src_origin[3] */,
                           const size_t *   /* region[3] */, 
                           size_t           /* dst_offset */,
                           cl_uint          /* num_events_in_wait_list */,
                           const cl_event * /* event_wait_list */,
                           cl_event *       /* event */) ;

extern  cl_int 
clEnqueueCopyBufferToImage(cl_command_queue /* command_queue */,
                           cl_mem           /* src_buffer */,
                           cl_mem           /* dst_image */, 
                           size_t           /* src_offset */,
                           const size_t *   /* dst_origin[3] */,
                           const size_t *   /* region[3] */, 
                           cl_uint          /* num_events_in_wait_list */,
                           const cl_event * /* event_wait_list */,
                           cl_event *       /* event */) ;

extern  void * 
clEnqueueMapBuffer(cl_command_queue /* command_queue */,
                   cl_mem           /* buffer */,
                   cl_bool          /* blocking_map */, 
                   cl_map_flags     /* map_flags */,
                   size_t           /* offset */,
                   size_t           /* size */,
                   cl_uint          /* num_events_in_wait_list */,
                   const cl_event * /* event_wait_list */,
                   cl_event *       /* event */,
                   cl_int *         /* errcode_ret */) ;

extern  void * 
clEnqueueMapImage(cl_command_queue  /* command_queue */,
                  cl_mem            /* image */, 
                  cl_bool           /* blocking_map */, 
                  cl_map_flags      /* map_flags */, 
                  const size_t *    /* origin[3] */,
                  const size_t *    /* region[3] */,
                  size_t *          /* image_row_pitch */,
                  size_t *          /* image_slice_pitch */,
                  cl_uint           /* num_events_in_wait_list */,
                  const cl_event *  /* event_wait_list */,
                  cl_event *        /* event */,
                  cl_int *          /* errcode_ret */) ;

extern  cl_int 
clEnqueueUnmapMemObject(cl_command_queue /* command_queue */,
                        cl_mem           /* memobj */,
                        void *           /* mapped_ptr */,
                        cl_uint          /* num_events_in_wait_list */,
                        const cl_event *  /* event_wait_list */,
                        cl_event *        /* event */) ;

extern  cl_int 
clEnqueueMigrateMemObjects(cl_command_queue       /* command_queue */,
                           cl_uint                /* num_mem_objects */,
                           const cl_mem *         /* mem_objects */,
                           cl_mem_migration_flags /* flags */,
                           cl_uint                /* num_events_in_wait_list */,
                           const cl_event *       /* event_wait_list */,
                           cl_event *             /* event */) ;

extern  cl_int 
clEnqueueNDRangeKernel(cl_command_queue /* command_queue */,
                       cl_kernel        /* kernel */,
                       cl_uint          /* work_dim */,
                       const size_t *   /* global_work_offset */,
                       const size_t *   /* global_work_size */,
                       const size_t *   /* local_work_size */,
                       cl_uint          /* num_events_in_wait_list */,
                       const cl_event * /* event_wait_list */,
                       cl_event *       /* event */) ;

extern  cl_int 
clEnqueueNativeKernel(cl_command_queue  /* command_queue */,
					  void ( * /*user_func*/)(void *), 
                      void *            /* args */,
                      size_t            /* cb_args */, 
                      cl_uint           /* num_mem_objects */,
                      const cl_mem *    /* mem_list */,
                      const void **     /* args_mem_loc */,
                      cl_uint           /* num_events_in_wait_list */,
                      const cl_event *  /* event_wait_list */,
                      cl_event *        /* event */) ;

extern  cl_int 
clEnqueueMarkerWithWaitList(cl_command_queue  /* command_queue */,
                            cl_uint           /* num_events_in_wait_list */,
                            const cl_event *  /* event_wait_list */,
                            cl_event *        /* event */) ;

extern  cl_int 
clEnqueueBarrierWithWaitList(cl_command_queue  /* command_queue */,
                             cl_uint           /* num_events_in_wait_list */,
                             const cl_event *  /* event_wait_list */,
                             cl_event *        /* event */) ;

extern  cl_int 
clEnqueueSVMFree(cl_command_queue  /* command_queue */,
                 cl_uint           /* num_svm_pointers */,
                 void *[]          /* svm_pointers[] */,
                 void ( * /*pfn_free_func*/)(cl_command_queue /* queue */,
                                                        cl_uint          /* num_svm_pointers */,
                                                        void *[]         /* svm_pointers[] */,
                                                        void *           /* user_data */),
                 void *            /* user_data */,
                 cl_uint           /* num_events_in_wait_list */,
                 const cl_event *  /* event_wait_list */,
                 cl_event *        /* event */) ;

extern  cl_int 
clEnqueueSVMMemcpy(cl_command_queue  /* command_queue */,
                   cl_bool           /* blocking_copy */,
                   void *            /* dst_ptr */,
                   const void *      /* src_ptr */,
                   size_t            /* size */,
                   cl_uint           /* num_events_in_wait_list */,
                   const cl_event *  /* event_wait_list */,
                   cl_event *        /* event */) ;

extern  cl_int 
clEnqueueSVMMemFill(cl_command_queue  /* command_queue */,
                    void *            /* svm_ptr */,
                    const void *      /* pattern */,
                    size_t            /* pattern_size */,
                    size_t            /* size */,
                    cl_uint           /* num_events_in_wait_list */,
                    const cl_event *  /* event_wait_list */,
                    cl_event *        /* event */) ;
    
extern  cl_int 
clEnqueueSVMMap(cl_command_queue  /* command_queue */,
                cl_bool           /* blocking_map */,
                cl_map_flags      /* flags */,
                void *            /* svm_ptr */,
                size_t            /* size */,
                cl_uint           /* num_events_in_wait_list */,
                const cl_event *  /* event_wait_list */,
                cl_event *        /* event */) ;
    
extern  cl_int 
clEnqueueSVMUnmap(cl_command_queue  /* command_queue */,
                  void *            /* svm_ptr */,
                  cl_uint           /* num_events_in_wait_list */,
                  const cl_event *  /* event_wait_list */,
                  cl_event *        /* event */) ;

extern  cl_int 
clEnqueueSVMMigrateMem(cl_command_queue         /* command_queue */,
                       cl_uint                  /* num_svm_pointers */,
                       const void **            /* svm_pointers */,
                       const size_t *           /* sizes */,
                       cl_mem_migration_flags   /* flags */,
                       cl_uint                  /* num_events_in_wait_list */,
                       const cl_event *         /* event_wait_list */,
                       cl_event *               /* event */) ;


/* Extension function access
 *
 * Returns the extension function address for the given function name,
 * or NULL if a valid function can not be found.  The client must
 * check to make sure the address is not NULL, before using or 
 * calling the returned function address.
 */
extern  void *  
clGetExtensionFunctionAddressForPlatform(cl_platform_id /* platform */,
                                         const char *   /* func_name */) ;
    

/* Deprecated OpenCL 1.1 APIs */
extern   cl_mem 
clCreateImage2D(cl_context              /* context */,
                cl_mem_flags            /* flags */,
                const cl_image_format * /* image_format */,
                size_t                  /* image_width */,
                size_t                  /* image_height */,
                size_t                  /* image_row_pitch */, 
                void *                  /* host_ptr */,
                cl_int *                /* errcode_ret */) ;
    
extern   cl_mem 
clCreateImage3D(cl_context              /* context */,
                cl_mem_flags            /* flags */,
                const cl_image_format * /* image_format */,
                size_t                  /* image_width */, 
                size_t                  /* image_height */,
                size_t                  /* image_depth */, 
                size_t                  /* image_row_pitch */, 
                size_t                  /* image_slice_pitch */, 
                void *                  /* host_ptr */,
                cl_int *                /* errcode_ret */) ;
    
extern   cl_int 
clEnqueueMarker(cl_command_queue    /* command_queue */,
                cl_event *          /* event */) ;
    
extern   cl_int 
clEnqueueWaitForEvents(cl_command_queue /* command_queue */,
                        cl_uint          /* num_events */,
                        const cl_event * /* event_list */) ;
    
extern   cl_int 
clEnqueueBarrier(cl_command_queue /* command_queue */) ;

extern   cl_int 
clUnloadCompiler(void) ;
    
extern   void * 
clGetExtensionFunctionAddress(const char * /* func_name */) ;
    
/* Deprecated OpenCL 2.0 APIs */
extern   cl_command_queue 
clCreateCommandQueue(cl_context                     /* context */,
                     cl_device_id                   /* device */,
                     cl_command_queue_properties    /* properties */,
                     cl_int *                       /* errcode_ret */) ;
    
    
extern   cl_sampler 
clCreateSampler(cl_context          /* context */,
                cl_bool             /* normalized_coords */,
                cl_addressing_mode  /* addressing_mode */,
                cl_filter_mode      /* filter_mode */,
                cl_int *            /* errcode_ret */) ;
    
extern   cl_int 
clEnqueueTask(cl_command_queue  /* command_queue */,
              cl_kernel         /* kernel */,
              cl_uint           /* num_events_in_wait_list */,
              const cl_event *  /* event_wait_list */,
              cl_event *        /* event */) ;
    

]]

ffi.cdef[[
enum {
  cl_APPLE_SetMemObjectDestructor             = 1,
  cl_APPLE_ContextLoggingFunctions            = 1,
  cl_khr_icd                                  = 1,
  cl_amd_device_memory_flags                  = 1,
  cl_amd_atomic_counters                      = 1,
  cl_ext_device_fission                       = 1,
};
enum {
  CL_PLATFORM_ICD_SUFFIX_KHR                  = 0x0920,
  CL_PLATFORM_NOT_FOUND_KHR                   = -1001,
  CL_DEVICE_COMPUTE_CAPABILITY_MAJOR_NV       = 0x4000,
  CL_DEVICE_COMPUTE_CAPABILITY_MINOR_NV       = 0x4001,
  CL_DEVICE_REGISTERS_PER_BLOCK_NV            = 0x4002,
  CL_DEVICE_WARP_SIZE_NV                      = 0x4003,
  CL_DEVICE_GPU_OVERLAP_NV                    = 0x4004,
  CL_DEVICE_KERNEL_EXEC_TIMEOUT_NV            = 0x4005,
  CL_DEVICE_INTEGRATED_MEMORY_NV              = 0x4006,
  CL_MEM_USE_PERSISTENT_MEM_AMD               = 1 << 6,
  CL_DEVICE_PROFILING_TIMER_OFFSET_AMD        = 0x4036,
  CL_CONTEXT_OFFLINE_DEVICES_AMD              = 0x403F,
  CL_INVALID_COUNTER_AMD                      = -10000,
  CL_DEVICE_MAX_ATOMIC_COUNTERS_AMD           = 0x10000,
  CL_COUNTER_INC_ONLY_AMD                     = 1 << 0,
  CL_COUNTER_DEC_ONLY_AMD                     = 1 << 1,
  CL_COUNTER_FLAGS_AMD                        = 0x10001,
  CL_COUNTER_REFERENCE_COUNT_AMD              = 0x10002,
  CL_COUNTER_CONTEXT_AMD                      = 0x10003,
  CL_COMMAND_READ_COUNTER_AMD                 = 0x10004,
  CL_COMMAND_WRITE_COUNTER_AMD                = 0x10005,
  CL_DEVICE_PARTITION_EQUALLY_EXT             = 0x4050,
  CL_DEVICE_PARTITION_BY_COUNTS_EXT           = 0x4051,
  CL_DEVICE_PARTITION_BY_NAMES_EXT            = 0x4052,
  CL_DEVICE_PARTITION_BY_AFFINITY_DOMAIN_EXT  = 0x4053,
  CL_DEVICE_PARENT_DEVICE_EXT                 = 0x4054,
  CL_DEVICE_PARTITION_TYPES_EXT               = 0x4055,
  CL_DEVICE_AFFINITY_DOMAINS_EXT              = 0x4056,
  CL_DEVICE_REFERENCE_COUNT_EXT               = 0x4057,
  CL_DEVICE_PARTITION_STYLE_EXT               = 0x4058,
  CL_DEVICE_PARTITION_FAILED_EXT              = -1057,
  CL_INVALID_PARTITION_COUNT_EXT              = -1058,
  CL_INVALID_PARTITION_NAME_EXT               = -1059,
  CL_AFFINITY_DOMAIN_L1_CACHE_EXT             = 0x1,
  CL_AFFINITY_DOMAIN_L2_CACHE_EXT             = 0x2,
  CL_AFFINITY_DOMAIN_L3_CACHE_EXT             = 0x3,
  CL_AFFINITY_DOMAIN_L4_CACHE_EXT             = 0x4,
  CL_AFFINITY_DOMAIN_NUMA_EXT                 = 0x10,
  CL_AFFINITY_DOMAIN_NEXT_FISSIONABLE_EXT     = 0x100,
  CL_PROPERTIES_LIST_END_EXT                  = 0,
  CL_PARTITION_BY_COUNTS_LIST_END_EXT         = 0,
  CL_PARTITION_BY_NAMES_LIST_END_EXT          = -1,
};

typedef struct _cl_counter_amd* cl_counter_amd;
typedef cl_bitfield             cl_counter_flags_amd;
typedef cl_uint                 cl_counter_info_amd;
typedef cl_ulong                cl_device_partition_property_ext;

typedef cl_int         (* clIcdGetPlatformIDsKHR_fn)(   cl_uint, cl_platform_id *, cl_uint *);
typedef cl_counter_amd (* clCreateCounterAMD_fn)(       cl_context,     cl_counter_flags_amd, cl_uint, cl_int * );
typedef cl_int         (* clGetCounterInfoAMD_fn)(      cl_counter_amd, cl_counter_info_amd, size_t, void *, size_t * );
typedef cl_int         (* clRetainCounterAMD_fn)(       cl_counter_amd  );
typedef cl_int         (* clReleaseCounterAMD_fn)(      cl_counter_amd  );
typedef cl_int         (* clEnqueueReadCounterAMD_fn)(  cl_command_queue, cl_counter_amd, cl_bool, cl_uint *, cl_uint, const cl_event *, cl_event * );
typedef cl_int         (* clEnqueueWriteCounterAMD_fn)( cl_command_queue, cl_counter_amd, cl_bool, cl_uint, cl_uint, const cl_event *, cl_event * );
typedef cl_int         (* clReleaseDeviceEXT_fn)(       cl_device_id );
typedef cl_int         (* clRetainDeviceEXT_fn)(        cl_device_id );
typedef cl_int         (* clCreateSubDevicesEXT_fn)(    cl_device_id, const cl_device_partition_property_ext*, cl_uint, cl_device_id*, cl_uint *);

cl_int clSetMemObjectDestructorAPPLE( cl_mem, void (* )( cl_mem, void* ), void* );
void   clLogMessagesToSystemLogAPPLE( const char *, const void *, size_t, void* );
void   clLogMessagesToStdoutAPPLE(    const char *, const void *, size_t, void* );
void   clLogMessagesToStderrAPPLE(    const char *, const void *, size_t, void* );
cl_int clIcdGetPlatformIDsKHR(        cl_uint, cl_platform_id *, cl_uint * );
cl_int clReleaseDeviceEXT(            cl_device_id );
cl_int clRetainDeviceEXT(             cl_device_id );
cl_int clCreateSubDevicesEXT(         cl_device_id, const cl_device_partition_property_ext*, cl_uint, cl_device_id *, cl_uint *);
]]

--CL/cl_platform.h
ffi.cdef[[
typedef unsigned int cl_GLuint;
typedef int          cl_GLint;
typedef unsigned int cl_GLenum;
]]

--CL/cl_gl.h
ffi.cdef[[
typedef cl_uint          cl_gl_object_type;
typedef cl_uint          cl_gl_texture_info;
typedef cl_uint          cl_gl_platform_info;
typedef cl_uint          cl_gl_context_info;
typedef struct __GLsync* cl_GLsync;
typedef cl_int        (* clGetGLContextInfoKHR_fn)( const cl_context_properties *, cl_gl_context_info, size_t, void *, size_t * );
    
enum {
  cl_khr_gl_sharing                      = 1,
  CL_GL_OBJECT_BUFFER                    = 0x2000,
  CL_GL_OBJECT_TEXTURE2D                 = 0x2001,
  CL_GL_OBJECT_TEXTURE3D                 = 0x2002,
  CL_GL_OBJECT_RENDERBUFFER              = 0x2003,
  CL_GL_OBJECT_TEXTURE2D_ARRAY           = 0x200E,
  CL_GL_OBJECT_TEXTURE1D                 = 0x200F,
  CL_GL_OBJECT_TEXTURE1D_ARRAY           = 0x2010,
  CL_GL_OBJECT_TEXTURE_BUFFER            = 0x2011,
  
  CL_GL_TEXTURE_TARGET                   = 0x2004,
  CL_GL_MIPMAP_LEVEL                     = 0x2005,  
  CL_GL_NUM_SAMPLES                      = 0x2012,
  
  CL_INVALID_GL_SHAREGROUP_REFERENCE_KHR = -1000,
  CL_CURRENT_DEVICE_FOR_GL_CONTEXT_KHR   = 0x2006,
  CL_DEVICES_FOR_GL_CONTEXT_KHR          = 0x2007,
  CL_GL_CONTEXT_KHR                      = 0x2008,
  CL_EGL_DISPLAY_KHR                     = 0x2009,
  CL_GLX_DISPLAY_KHR                     = 0x200A,
  CL_WGL_HDC_KHR                         = 0x200B,
  CL_CGL_SHAREGROUP_KHR                  = 0x200C,
};


extern  cl_mem 
clCreateFromGLBuffer(cl_context     /* context */,
                     cl_mem_flags   /* flags */,
                     cl_GLuint      /* bufobj */,
                     int *          /* errcode_ret */) ;

extern  cl_mem 
clCreateFromGLTexture(cl_context      /* context */,
                      cl_mem_flags    /* flags */,
                      cl_GLenum       /* target */,
                      cl_GLint        /* miplevel */,
                      cl_GLuint       /* texture */,
                      cl_int *        /* errcode_ret */) ;
    
extern  cl_mem 
clCreateFromGLRenderbuffer(cl_context   /* context */,
                           cl_mem_flags /* flags */,
                           cl_GLuint    /* renderbuffer */,
                           cl_int *     /* errcode_ret */) ;

extern  cl_int 
clGetGLObjectInfo(cl_mem                /* memobj */,
                  cl_gl_object_type *   /* gl_object_type */,
                  cl_GLuint *           /* gl_object_name */) ;
                  
extern  cl_int 
clGetGLTextureInfo(cl_mem               /* memobj */,
                   cl_gl_texture_info   /* param_name */,
                   size_t               /* param_value_size */,
                   void *               /* param_value */,
                   size_t *             /* param_value_size_ret */) ;

extern  cl_int 
clEnqueueAcquireGLObjects(cl_command_queue      /* command_queue */,
                          cl_uint               /* num_objects */,
                          const cl_mem *        /* mem_objects */,
                          cl_uint               /* num_events_in_wait_list */,
                          const cl_event *      /* event_wait_list */,
                          cl_event *            /* event */) ;

extern  cl_int 
clEnqueueReleaseGLObjects(cl_command_queue      /* command_queue */,
                          cl_uint               /* num_objects */,
                          const cl_mem *        /* mem_objects */,
                          cl_uint               /* num_events_in_wait_list */,
                          const cl_event *      /* event_wait_list */,
                          cl_event *            /* event */) ;


/* Deprecated OpenCL 1.1 APIs */
extern   cl_mem 
clCreateFromGLTexture2D(cl_context      /* context */,
                        cl_mem_flags    /* flags */,
                        cl_GLenum       /* target */,
                        cl_GLint        /* miplevel */,
                        cl_GLuint       /* texture */,
                        cl_int *        /* errcode_ret */) ;
    
extern   cl_mem 
clCreateFromGLTexture3D(cl_context      /* context */,
                        cl_mem_flags    /* flags */,
                        cl_GLenum       /* target */,
                        cl_GLint        /* miplevel */,
                        cl_GLuint       /* texture */,
                        cl_int *        /* errcode_ret */) ;

extern  cl_int 
clGetGLContextInfoKHR(const cl_context_properties * /* properties */,
                      cl_gl_context_info            /* param_name */,
                      size_t                        /* param_value_size */,
                      void *                        /* param_value */,
                      size_t *                      /* param_value_size_ret */) ;
    
typedef  cl_int ( *clGetGLContextInfoKHR_fn)(
    const cl_context_properties * properties,
    cl_gl_context_info            param_name,
    size_t                        param_value_size,
    void *                        param_value,
    size_t *                      param_value_size_ret);


]]

--CL/cl_gl_ext.h
ffi.cdef[[
enum {
  CL_COMMAND_GL_FENCE_SYNC_OBJECT_KHR    = 0x200D,
};

cl_event clCreateEventFromGLsyncKHR( cl_context, cl_GLsync, cl_int * );
]]

return cl
