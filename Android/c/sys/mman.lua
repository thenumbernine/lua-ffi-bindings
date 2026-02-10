local ffi = require 'ffi'
ffi.cdef[[
/* + BEGIN <sys/mman.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/mman.h */
/* ++ BEGIN <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ END <sys/cdefs.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/cdefs.h */
/* ++ BEGIN <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
]] require 'ffi.req' 'c.sys.types' ffi.cdef[[
/* ++ END <sys/types.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/types.h */
/* ++ BEGIN <linux/memfd.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/memfd.h */
/* +++ BEGIN <asm-generic/hugetlb_encode.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/hugetlb_encode.h */
/* +++ END <asm-generic/hugetlb_encode.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/hugetlb_encode.h */
/* ++ END <linux/memfd.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/memfd.h */
/* ++ BEGIN <linux/mman.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/mman.h */
/* +++ BEGIN <asm/mman.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/mman.h */
/* ++++ BEGIN <asm-generic/mman.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/mman.h */
/* +++++ BEGIN <asm-generic/mman-common.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/mman-common.h */
/* +++++ END <asm-generic/mman-common.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/mman-common.h */
/* ++++ END <asm-generic/mman.h> /data/data/com.termux/files/usr/bin/../../usr/include/asm-generic/mman.h */
/* +++ END <asm/mman.h> /data/data/com.termux/files/usr/bin/../../usr/include/arm-linux-androideabi/asm/mman.h */
struct cachestat_range {
  __u64 off;
  __u64 len;
};
struct cachestat {
  __u64 nr_cache;
  __u64 nr_dirty;
  __u64 nr_writeback;
  __u64 nr_evicted;
  __u64 nr_recently_evicted;
};
/* ++ END <linux/mman.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/mman.h */
/* ++ BEGIN <linux/uio.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/uio.h */
/* ++ END <linux/uio.h> /data/data/com.termux/files/usr/bin/../../usr/include/linux/uio.h */
void*  mmap(void*  __addr, size_t __size, int __prot, int __flags, int __fd, off_t __offset);
void*  mmap64(void*  __addr, size_t __size, int __prot, int __flags, int __fd, off64_t __offset);
int munmap(void*  __addr, size_t __size);
int msync(void*  __addr, size_t __size, int __flags);
int mprotect(void*  __addr, size_t __size, int __prot);
void*  mremap(void*  __old_addr, size_t __old_size, size_t __new_size, int __flags, ...);
int mlockall(int __flags);
int munlockall(void);
int mlock(const void*  __addr, size_t __size);
int mlock2(const void*  __addr, size_t __size, int __flags) __attribute__((__availability__(android,strict,introduced=30 )));
int munlock(const void*  __addr, size_t __size);
int mincore(void*  __addr, size_t __size, unsigned char*  __vector);
int madvise(void*  __addr, size_t __size, int __advice);
int posix_madvise(void*  __addr, size_t __size, int __advice) __attribute__((__availability__(android,strict,introduced=23 )));
enum { _UAPI_LINUX_MEMFD_H = 1 };
enum { _ASM_GENERIC_HUGETLB_ENCODE_H_ = 1 };
enum { HUGETLB_FLAG_ENCODE_SHIFT = 26 };
enum { HUGETLB_FLAG_ENCODE_MASK = 0x3f };
/* #define HUGETLB_FLAG_ENCODE_16KB (14U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define HUGETLB_FLAG_ENCODE_64KB (16U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define HUGETLB_FLAG_ENCODE_512KB (19U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define HUGETLB_FLAG_ENCODE_1MB (20U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define HUGETLB_FLAG_ENCODE_2MB (21U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define HUGETLB_FLAG_ENCODE_8MB (23U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define HUGETLB_FLAG_ENCODE_16MB (24U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define HUGETLB_FLAG_ENCODE_32MB (25U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define HUGETLB_FLAG_ENCODE_256MB (28U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define HUGETLB_FLAG_ENCODE_512MB (29U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define HUGETLB_FLAG_ENCODE_1GB (30U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define HUGETLB_FLAG_ENCODE_2GB (31U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define HUGETLB_FLAG_ENCODE_16GB (34U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
enum { MFD_CLOEXEC = 0x0001 };
enum { MFD_ALLOW_SEALING = 0x0002 };
enum { MFD_HUGETLB = 0x0004 };
enum { MFD_NOEXEC_SEAL = 0x0008 };
enum { MFD_EXEC = 0x0010 };
enum { MFD_HUGE_SHIFT = 26 };
enum { MFD_HUGE_MASK = 0x3f };
/* #define MFD_HUGE_64KB (16U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MFD_HUGE_512KB (19U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MFD_HUGE_1MB (20U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MFD_HUGE_2MB (21U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MFD_HUGE_8MB (23U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MFD_HUGE_16MB (24U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MFD_HUGE_32MB (25U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MFD_HUGE_256MB (28U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MFD_HUGE_512MB (29U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MFD_HUGE_1GB (30U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MFD_HUGE_2GB (31U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MFD_HUGE_16GB (34U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
enum { _UAPI_LINUX_MMAN_H = 1 };
enum { __ASM_GENERIC_MMAN_H = 1 };
enum { __ASM_GENERIC_MMAN_COMMON_H = 1 };
enum { PROT_READ = 0x1 };
enum { PROT_WRITE = 0x2 };
enum { PROT_EXEC = 0x4 };
enum { PROT_SEM = 0x8 };
enum { PROT_NONE = 0x0 };
enum { PROT_GROWSDOWN = 0x01000000 };
enum { PROT_GROWSUP = 0x02000000 };
enum { MAP_TYPE = 0x0f };
enum { MAP_FIXED = 0x10 };
enum { MAP_ANONYMOUS = 0x20 };
enum { MAP_POPULATE = 0x008000 };
enum { MAP_NONBLOCK = 0x010000 };
enum { MAP_STACK = 0x020000 };
enum { MAP_HUGETLB = 0x040000 };
enum { MAP_SYNC = 0x080000 };
enum { MAP_FIXED_NOREPLACE = 0x100000 };
enum { MAP_UNINITIALIZED = 0x4000000 };
enum { MLOCK_ONFAULT = 0x01 };
enum { MS_ASYNC = 1 };
enum { MS_INVALIDATE = 2 };
enum { MS_SYNC = 4 };
enum { MADV_NORMAL = 0 };
enum { MADV_RANDOM = 1 };
enum { MADV_SEQUENTIAL = 2 };
enum { MADV_WILLNEED = 3 };
enum { MADV_DONTNEED = 4 };
enum { MADV_FREE = 8 };
enum { MADV_REMOVE = 9 };
enum { MADV_DONTFORK = 10 };
enum { MADV_DOFORK = 11 };
enum { MADV_HWPOISON = 100 };
enum { MADV_SOFT_OFFLINE = 101 };
enum { MADV_MERGEABLE = 12 };
enum { MADV_UNMERGEABLE = 13 };
enum { MADV_HUGEPAGE = 14 };
enum { MADV_NOHUGEPAGE = 15 };
enum { MADV_DONTDUMP = 16 };
enum { MADV_DODUMP = 17 };
enum { MADV_WIPEONFORK = 18 };
enum { MADV_KEEPONFORK = 19 };
enum { MADV_COLD = 20 };
enum { MADV_PAGEOUT = 21 };
enum { MADV_POPULATE_READ = 22 };
enum { MADV_POPULATE_WRITE = 23 };
enum { MADV_DONTNEED_LOCKED = 24 };
enum { MADV_COLLAPSE = 25 };
enum { MAP_FILE = 0 };
enum { PKEY_DISABLE_ACCESS = 0x1 };
enum { PKEY_DISABLE_WRITE = 0x2 };
/* #define PKEY_ACCESS_MASK (PKEY_DISABLE_ACCESS | PKEY_DISABLE_WRITE) ### define is not number */
enum { MAP_GROWSDOWN = 0x0100 };
enum { MAP_DENYWRITE = 0x0800 };
enum { MAP_EXECUTABLE = 0x1000 };
enum { MAP_LOCKED = 0x2000 };
enum { MAP_NORESERVE = 0x4000 };
enum { MCL_CURRENT = 1 };
enum { MCL_FUTURE = 2 };
enum { MCL_ONFAULT = 4 };
/* #define arch_mmap_check (addr,len,flags) (((flags) & MAP_FIXED && (addr) < FIRST_USER_ADDRESS) ? - EINVAL : 0) ### define is not number */
enum { MREMAP_DONTUNMAP = 4 };
enum { OVERCOMMIT_GUESS = 0 };
enum { OVERCOMMIT_ALWAYS = 1 };
enum { OVERCOMMIT_NEVER = 2 };
enum { MAP_SHARED = 0x01 };
enum { MAP_PRIVATE = 0x02 };
enum { MAP_SHARED_VALIDATE = 0x03 };
enum { MAP_DROPPABLE = 0x08 };
enum { MAP_HUGE_SHIFT = 26 };
enum { MAP_HUGE_MASK = 0x3f };
/* #define MAP_HUGE_16KB (14U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MAP_HUGE_64KB (16U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MAP_HUGE_512KB (19U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MAP_HUGE_1MB (20U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MAP_HUGE_2MB (21U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MAP_HUGE_8MB (23U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MAP_HUGE_16MB (24U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MAP_HUGE_32MB (25U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MAP_HUGE_256MB (28U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MAP_HUGE_512MB (29U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MAP_HUGE_1GB (30U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MAP_HUGE_2GB (31U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
/* #define MAP_HUGE_16GB (34U << HUGETLB_FLAG_ENCODE_SHIFT) ### define is not number */
enum { MAP_ANON = 0x20 };
/* #define MAP_FAILED __BIONIC_CAST(reinterpret_cast, void*, -1) ### define is not number */
enum { MREMAP_MAYMOVE = 1 };
enum { MREMAP_FIXED = 2 };
enum { POSIX_MADV_NORMAL = 0 };
enum { POSIX_MADV_RANDOM = 1 };
enum { POSIX_MADV_SEQUENTIAL = 2 };
enum { POSIX_MADV_WILLNEED = 3 };
enum { POSIX_MADV_DONTNEED = 4 };
/* + END <sys/mman.h> /data/data/com.termux/files/usr/bin/../../usr/include/sys/mman.h */
]]
