require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_TYPES_H_)) {
    eval 'sub _SYS_TYPES_H_ () {1;}' unless defined(&_SYS_TYPES_H_);
    require 'sys/cdefs.ph';
    require 'machine/endian.ph';
    require 'sys/_types.ph';
    require 'sys/_pthreadtypes.ph';
    if((defined(&__BSD_VISIBLE) ? &__BSD_VISIBLE : undef)) {
	unless(defined(&_KERNEL)) {
	}
    }
    require 'sys/_stdint.ph';
    unless(defined(&_BLKSIZE_T_DECLARED)) {
	eval 'sub _BLKSIZE_T_DECLARED () {1;}' unless defined(&_BLKSIZE_T_DECLARED);
    }
    unless(defined(&_BLKCNT_T_DECLARED)) {
	eval 'sub _BLKCNT_T_DECLARED () {1;}' unless defined(&_BLKCNT_T_DECLARED);
    }
    unless(defined(&_CLOCK_T_DECLARED)) {
	eval 'sub _CLOCK_T_DECLARED () {1;}' unless defined(&_CLOCK_T_DECLARED);
    }
    unless(defined(&_CLOCKID_T_DECLARED)) {
	eval 'sub _CLOCKID_T_DECLARED () {1;}' unless defined(&_CLOCKID_T_DECLARED);
    }
    unless(defined(&_DEV_T_DECLARED)) {
	eval 'sub _DEV_T_DECLARED () {1;}' unless defined(&_DEV_T_DECLARED);
    }
    unless(defined(&_FFLAGS_T_DECLARED)) {
	eval 'sub _FFLAGS_T_DECLARED () {1;}' unless defined(&_FFLAGS_T_DECLARED);
    }
    unless(defined(&_FSBLKCNT_T_DECLARED)) {
	eval 'sub _FSBLKCNT_T_DECLARED () {1;}' unless defined(&_FSBLKCNT_T_DECLARED);
    }
    unless(defined(&_GID_T_DECLARED)) {
	eval 'sub _GID_T_DECLARED () {1;}' unless defined(&_GID_T_DECLARED);
    }
    unless(defined(&_IN_ADDR_T_DECLARED)) {
	eval 'sub _IN_ADDR_T_DECLARED () {1;}' unless defined(&_IN_ADDR_T_DECLARED);
    }
    unless(defined(&_IN_PORT_T_DECLARED)) {
	eval 'sub _IN_PORT_T_DECLARED () {1;}' unless defined(&_IN_PORT_T_DECLARED);
    }
    unless(defined(&_ID_T_DECLARED)) {
	eval 'sub _ID_T_DECLARED () {1;}' unless defined(&_ID_T_DECLARED);
    }
    unless(defined(&_INO_T_DECLARED)) {
	eval 'sub _INO_T_DECLARED () {1;}' unless defined(&_INO_T_DECLARED);
    }
    unless(defined(&_KEY_T_DECLARED)) {
	eval 'sub _KEY_T_DECLARED () {1;}' unless defined(&_KEY_T_DECLARED);
    }
    unless(defined(&_LWPID_T_DECLARED)) {
	eval 'sub _LWPID_T_DECLARED () {1;}' unless defined(&_LWPID_T_DECLARED);
    }
    unless(defined(&_MODE_T_DECLARED)) {
	eval 'sub _MODE_T_DECLARED () {1;}' unless defined(&_MODE_T_DECLARED);
    }
    unless(defined(&_ACCMODE_T_DECLARED)) {
	eval 'sub _ACCMODE_T_DECLARED () {1;}' unless defined(&_ACCMODE_T_DECLARED);
    }
    unless(defined(&_NLINK_T_DECLARED)) {
	eval 'sub _NLINK_T_DECLARED () {1;}' unless defined(&_NLINK_T_DECLARED);
    }
    unless(defined(&_OFF_T_DECLARED)) {
	eval 'sub _OFF_T_DECLARED () {1;}' unless defined(&_OFF_T_DECLARED);
    }
    unless(defined(&_PID_T_DECLARED)) {
	eval 'sub _PID_T_DECLARED () {1;}' unless defined(&_PID_T_DECLARED);
    }
    unless(defined(&_RLIM_T_DECLARED)) {
	eval 'sub _RLIM_T_DECLARED () {1;}' unless defined(&_RLIM_T_DECLARED);
    }
    unless(defined(&_SIZE_T_DECLARED)) {
	eval 'sub _SIZE_T_DECLARED () {1;}' unless defined(&_SIZE_T_DECLARED);
    }
    unless(defined(&_SSIZE_T_DECLARED)) {
	eval 'sub _SSIZE_T_DECLARED () {1;}' unless defined(&_SSIZE_T_DECLARED);
    }
    unless(defined(&_SUSECONDS_T_DECLARED)) {
	eval 'sub _SUSECONDS_T_DECLARED () {1;}' unless defined(&_SUSECONDS_T_DECLARED);
    }
    unless(defined(&_TIME_T_DECLARED)) {
	eval 'sub _TIME_T_DECLARED () {1;}' unless defined(&_TIME_T_DECLARED);
    }
    unless(defined(&_TIMER_T_DECLARED)) {
	eval 'sub _TIMER_T_DECLARED () {1;}' unless defined(&_TIMER_T_DECLARED);
    }
    unless(defined(&_MQD_T_DECLARED)) {
	eval 'sub _MQD_T_DECLARED () {1;}' unless defined(&_MQD_T_DECLARED);
    }
    unless(defined(&_UID_T_DECLARED)) {
	eval 'sub _UID_T_DECLARED () {1;}' unless defined(&_UID_T_DECLARED);
    }
    unless(defined(&_USECONDS_T_DECLARED)) {
	eval 'sub _USECONDS_T_DECLARED () {1;}' unless defined(&_USECONDS_T_DECLARED);
    }
    unless(defined(&_CAP_RIGHTS_T_DECLARED)) {
	eval 'sub _CAP_RIGHTS_T_DECLARED () {1;}' unless defined(&_CAP_RIGHTS_T_DECLARED);
    }
    if(defined(&_KERNEL)) {
	if(!defined(&__bool_true_false_are_defined)  && !defined(&__cplusplus)) {
	    eval 'sub __bool_true_false_are_defined () {1;}' unless defined(&__bool_true_false_are_defined);
	    eval 'sub false () {0;}' unless defined(&false);
	    eval 'sub true () {1;}' unless defined(&true);
	    if((defined(&__STDC_VERSION__) ? &__STDC_VERSION__ : undef) < 199901  && (defined(&__GNUC__) ? &__GNUC__ : undef) < 3 && !defined(&__INTEL_COMPILER)) {
	    }
	}
	eval 'sub offsetof {
	    my($type, $field) = @_;
    	    eval q( &__offsetof($type, $field));
	}' unless defined(&offsetof);
    }
    if((defined(&__BSD_VISIBLE) ? &__BSD_VISIBLE : undef)) {
	require 'sys/select.ph';
	eval 'sub major {
	    my($x) = @_;
    	    eval q((((($x) >> 8)&0xff)));
	}' unless defined(&major);
	eval 'sub minor {
	    my($x) = @_;
    	    eval q(((($x)&0xffff00ff)));
	}' unless defined(&minor);
	eval 'sub makedev {
	    my($x,$y) = @_;
    	    eval q((( &dev_t)((($x) << 8) | ($y))));
	}' unless defined(&makedev);
	unless(defined(&_KERNEL)) {
	    unless(defined(&_FTRUNCATE_DECLARED)) {
		eval 'sub _FTRUNCATE_DECLARED () {1;}' unless defined(&_FTRUNCATE_DECLARED);
	    }
	    unless(defined(&_LSEEK_DECLARED)) {
		eval 'sub _LSEEK_DECLARED () {1;}' unless defined(&_LSEEK_DECLARED);
	    }
	    unless(defined(&_MMAP_DECLARED)) {
		eval 'sub _MMAP_DECLARED () {1;}' unless defined(&_MMAP_DECLARED);
	    }
	    unless(defined(&_TRUNCATE_DECLARED)) {
		eval 'sub _TRUNCATE_DECLARED () {1;}' unless defined(&_TRUNCATE_DECLARED);
	    }
	}
    }
}
1;
