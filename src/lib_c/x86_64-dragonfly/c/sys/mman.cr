require "./types"

lib LibC
  PROT_EXEC             =   0x04
  PROT_NONE             =   0x00
  PROT_READ             =   0x01
  PROT_WRITE            =   0x02
  MAP_FIXED             = 0x0010
  MAP_PRIVATE           = 0x0002
  MAP_SHARED            = 0x0001
  MAP_ANON              = 0x1000
  MAP_ANONYMOUS         = LibC::MAP_ANON
  MAP_FAILED            = Pointer(Void).new(-1.to_u64!)
  POSIX_MADV_NORMAL     = LibC::MADV_NORMAL
  POSIX_MADV_RANDOM     = LibC::MADV_RANDOM
  POSIX_MADV_SEQUENTIAL = LibC::MADV_SEQUENTIAL
  POSIX_MADV_WILLNEED   = LibC::MADV_WILLNEED
  POSIX_MADV_DONTNEED   = LibC::MADV_DONTNEED
  MADV_NORMAL           = 0
  MADV_RANDOM           = 1
  MADV_SEQUENTIAL       = 2
  MADV_WILLNEED         = 3
  MADV_DONTNEED         = 4

  fun mmap(x0 : Void*, x1 : SizeT, x2 : Int, x3 : Int, x4 : Int, x5 : OffT) : Void*
  fun mprotect(x0 : Void*, x1 : SizeT, x2 : Int) : Int
  fun munmap(x0 : Void*, x1 : SizeT) : Int
  fun madvise(x0 : Void*, x1 : SizeT, x2 : Int) : Int
end
