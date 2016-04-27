require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_MMAN_H_)) {
    eval 'sub _SYS_MMAN_H_ () {1;}' unless defined(&_SYS_MMAN_H_);
    require 'sys/cdefs.ph';
    require 'sys/_types.ph';
    if((defined(&__BSD_VISIBLE) ? &__BSD_VISIBLE : undef)) {
	eval 'sub INHERIT_SHARE () {0;}' unless defined(&INHERIT_SHARE);
	eval 'sub INHERIT_COPY () {1;}' unless defined(&INHERIT_COPY);
	eval 'sub INHERIT_NONE () {2;}' unless defined(&INHERIT_NONE);
    }
    eval 'sub PROT_NONE () {0x;}' unless defined(&PROT_NONE);
    eval 'sub PROT_READ () {0x1;}' unless defined(&PROT_READ);
    eval 'sub PROT_WRITE () {0x2;}' unless defined(&PROT_WRITE);
    eval 'sub PROT_EXEC () {0x4;}' unless defined(&PROT_EXEC);
    eval 'sub MAP_SHARED () {0x1;}' unless defined(&MAP_SHARED);
    eval 'sub MAP_PRIVATE () {0x2;}' unless defined(&MAP_PRIVATE);
    if((defined(&__BSD_VISIBLE) ? &__BSD_VISIBLE : undef)) {
	eval 'sub MAP_COPY () { &MAP_PRIVATE;}' unless defined(&MAP_COPY);
    }
    eval 'sub MAP_FIXED () {0x10;}' unless defined(&MAP_FIXED);
    if((defined(&__BSD_VISIBLE) ? &__BSD_VISIBLE : undef)) {
	eval 'sub MAP_RENAME () {0x20;}' unless defined(&MAP_RENAME);
	eval 'sub MAP_NORESERVE () {0x40;}' unless defined(&MAP_NORESERVE);
	eval 'sub MAP_RESERVED0080 () {0x80;}' unless defined(&MAP_RESERVED0080);
	eval 'sub MAP_RESERVED0100 () {0x100;}' unless defined(&MAP_RESERVED0100);
	eval 'sub MAP_HASSEMAPHORE () {0x200;}' unless defined(&MAP_HASSEMAPHORE);
	eval 'sub MAP_STACK () {0x400;}' unless defined(&MAP_STACK);
	eval 'sub MAP_NOSYNC () {0x800;}' unless defined(&MAP_NOSYNC);
	eval 'sub MAP_FILE () {0x;}' unless defined(&MAP_FILE);
	eval 'sub MAP_ANON () {0x1000;}' unless defined(&MAP_ANON);
	unless(defined(&_KERNEL)) {
	    eval 'sub MAP_ANONYMOUS () { &MAP_ANON;}' unless defined(&MAP_ANONYMOUS);
	}
	eval 'sub MAP_EXCL () {0x4000;}' unless defined(&MAP_EXCL);
	eval 'sub MAP_NOCORE () {0x20000;}' unless defined(&MAP_NOCORE);
	eval 'sub MAP_PREFAULT_READ () {0x40000;}' unless defined(&MAP_PREFAULT_READ);
	if(defined(&__LP64__)) {
	    eval 'sub MAP_32BIT () {0x80000;}' unless defined(&MAP_32BIT);
	}
	eval 'sub MAP_ALIGNED {
	    my($n) = @_;
    	    eval q((($n) <<  &MAP_ALIGNMENT_SHIFT));
	}' unless defined(&MAP_ALIGNED);
	eval 'sub MAP_ALIGNMENT_SHIFT () {24;}' unless defined(&MAP_ALIGNMENT_SHIFT);
	eval 'sub MAP_ALIGNMENT_MASK () { &MAP_ALIGNED(0xff);}' unless defined(&MAP_ALIGNMENT_MASK);
	eval 'sub MAP_ALIGNED_SUPER () { &MAP_ALIGNED(1);}' unless defined(&MAP_ALIGNED_SUPER);
    }
    if((defined(&__POSIX_VISIBLE) ? &__POSIX_VISIBLE : undef) >= 199309) {
	eval 'sub MCL_CURRENT () {0x1;}' unless defined(&MCL_CURRENT);
	eval 'sub MCL_FUTURE () {0x2;}' unless defined(&MCL_FUTURE);
    }
    eval 'sub MAP_FAILED () {(( &void *)-1);}' unless defined(&MAP_FAILED);
    eval 'sub MS_SYNC () {0x;}' unless defined(&MS_SYNC);
    eval 'sub MS_ASYNC () {0x1;}' unless defined(&MS_ASYNC);
    eval 'sub MS_INVALIDATE () {0x2;}' unless defined(&MS_INVALIDATE);
    eval 'sub _MADV_NORMAL () {0;}' unless defined(&_MADV_NORMAL);
    eval 'sub _MADV_RANDOM () {1;}' unless defined(&_MADV_RANDOM);
    eval 'sub _MADV_SEQUENTIAL () {2;}' unless defined(&_MADV_SEQUENTIAL);
    eval 'sub _MADV_WILLNEED () {3;}' unless defined(&_MADV_WILLNEED);
    eval 'sub _MADV_DONTNEED () {4;}' unless defined(&_MADV_DONTNEED);
    if((defined(&__BSD_VISIBLE) ? &__BSD_VISIBLE : undef)) {
	eval 'sub MADV_NORMAL () { &_MADV_NORMAL;}' unless defined(&MADV_NORMAL);
	eval 'sub MADV_RANDOM () { &_MADV_RANDOM;}' unless defined(&MADV_RANDOM);
	eval 'sub MADV_SEQUENTIAL () { &_MADV_SEQUENTIAL;}' unless defined(&MADV_SEQUENTIAL);
	eval 'sub MADV_WILLNEED () { &_MADV_WILLNEED;}' unless defined(&MADV_WILLNEED);
	eval 'sub MADV_DONTNEED () { &_MADV_DONTNEED;}' unless defined(&MADV_DONTNEED);
	eval 'sub MADV_FREE () {5;}' unless defined(&MADV_FREE);
	eval 'sub MADV_NOSYNC () {6;}' unless defined(&MADV_NOSYNC);
	eval 'sub MADV_AUTOSYNC () {7;}' unless defined(&MADV_AUTOSYNC);
	eval 'sub MADV_NOCORE () {8;}' unless defined(&MADV_NOCORE);
	eval 'sub MADV_CORE () {9;}' unless defined(&MADV_CORE);
	eval 'sub MADV_PROTECT () {10;}' unless defined(&MADV_PROTECT);
	eval 'sub MINCORE_INCORE () {0x1;}' unless defined(&MINCORE_INCORE);
	eval 'sub MINCORE_REFERENCED () {0x2;}' unless defined(&MINCORE_REFERENCED);
	eval 'sub MINCORE_MODIFIED () {0x4;}' unless defined(&MINCORE_MODIFIED);
	eval 'sub MINCORE_REFERENCED_OTHER () {0x8;}' unless defined(&MINCORE_REFERENCED_OTHER);
	eval 'sub MINCORE_MODIFIED_OTHER () {0x10;}' unless defined(&MINCORE_MODIFIED_OTHER);
	eval 'sub MINCORE_SUPER () {0x20;}' unless defined(&MINCORE_SUPER);
	eval 'sub SHM_ANON () {(1);}' unless defined(&SHM_ANON);
    }
    if((defined(&__POSIX_VISIBLE) ? &__POSIX_VISIBLE : undef) >= 200112) {
	eval 'sub POSIX_MADV_NORMAL () { &_MADV_NORMAL;}' unless defined(&POSIX_MADV_NORMAL);
	eval 'sub POSIX_MADV_RANDOM () { &_MADV_RANDOM;}' unless defined(&POSIX_MADV_RANDOM);
	eval 'sub POSIX_MADV_SEQUENTIAL () { &_MADV_SEQUENTIAL;}' unless defined(&POSIX_MADV_SEQUENTIAL);
	eval 'sub POSIX_MADV_WILLNEED () { &_MADV_WILLNEED;}' unless defined(&POSIX_MADV_WILLNEED);
	eval 'sub POSIX_MADV_DONTNEED () { &_MADV_DONTNEED;}' unless defined(&POSIX_MADV_DONTNEED);
    }
    unless(defined(&_MODE_T_DECLARED)) {
	eval 'sub _MODE_T_DECLARED () {1;}' unless defined(&_MODE_T_DECLARED);
    }
    unless(defined(&_OFF_T_DECLARED)) {
	eval 'sub _OFF_T_DECLARED () {1;}' unless defined(&_OFF_T_DECLARED);
    }
    unless(defined(&_SIZE_T_DECLARED)) {
	eval 'sub _SIZE_T_DECLARED () {1;}' unless defined(&_SIZE_T_DECLARED);
    }
    if(defined(&_KERNEL) || defined(&_WANT_FILE)) {
	require 'sys/lock.ph';
	require 'sys/mutex.ph';
	require 'sys/queue.ph';
	require 'sys/rangelock.ph';
	require 'vm/vm.ph';
    }
    if(defined(&_KERNEL)) {
    } else {
	if((defined(&__BSD_VISIBLE) ? &__BSD_VISIBLE : undef)) {
	}
	unless(defined(&_MMAP_DECLARED)) {
	    eval 'sub _MMAP_DECLARED () {1;}' unless defined(&_MMAP_DECLARED);
	}
	if((defined(&__POSIX_VISIBLE) ? &__POSIX_VISIBLE : undef) >= 200112) {
	}
	if((defined(&__POSIX_VISIBLE) ? &__POSIX_VISIBLE : undef) >= 199309) {
	}
    }
}
1;
