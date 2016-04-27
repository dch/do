require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_UMTX_H_)) {
    eval 'sub _SYS_UMTX_H_ () {1;}' unless defined(&_SYS_UMTX_H_);
    require 'sys/_umtx.ph';
    require 'sys/limits.ph';
    eval 'sub UMTX_UNOWNED () {0x;}' unless defined(&UMTX_UNOWNED);
    eval 'sub UMTX_CONTESTED () { &LONG_MIN;}' unless defined(&UMTX_CONTESTED);
    eval 'sub USYNC_PROCESS_SHARED () {0x1;}' unless defined(&USYNC_PROCESS_SHARED);
    eval 'sub UMUTEX_UNOWNED () {0x;}' unless defined(&UMUTEX_UNOWNED);
    eval 'sub UMUTEX_CONTESTED () {0x80000000;}' unless defined(&UMUTEX_CONTESTED);
    eval 'sub UMUTEX_ERROR_CHECK () {0x2;}' unless defined(&UMUTEX_ERROR_CHECK);
    eval 'sub UMUTEX_PRIO_INHERIT () {0x4;}' unless defined(&UMUTEX_PRIO_INHERIT);
    eval 'sub UMUTEX_PRIO_PROTECT () {0x8;}' unless defined(&UMUTEX_PRIO_PROTECT);
    eval 'sub URWLOCK_PREFER_READER () {0x2;}' unless defined(&URWLOCK_PREFER_READER);
    eval 'sub URWLOCK_WRITE_OWNER () {0x80000000;}' unless defined(&URWLOCK_WRITE_OWNER);
    eval 'sub URWLOCK_WRITE_WAITERS () {0x40000000;}' unless defined(&URWLOCK_WRITE_WAITERS);
    eval 'sub URWLOCK_READ_WAITERS () {0x20000000;}' unless defined(&URWLOCK_READ_WAITERS);
    eval 'sub URWLOCK_MAX_READERS () {0x1fffffff;}' unless defined(&URWLOCK_MAX_READERS);
    eval 'sub URWLOCK_READER_COUNT {
        my($c) = @_;
	    eval q((($c) &  &URWLOCK_MAX_READERS));
    }' unless defined(&URWLOCK_READER_COUNT);
    eval 'sub SEM_NAMED () {0x2;}' unless defined(&SEM_NAMED);
    eval 'sub UMTX_OP_LOCK () {0;}' unless defined(&UMTX_OP_LOCK);
    eval 'sub UMTX_OP_UNLOCK () {1;}' unless defined(&UMTX_OP_UNLOCK);
    eval 'sub UMTX_OP_WAIT () {2;}' unless defined(&UMTX_OP_WAIT);
    eval 'sub UMTX_OP_WAKE () {3;}' unless defined(&UMTX_OP_WAKE);
    eval 'sub UMTX_OP_MUTEX_TRYLOCK () {4;}' unless defined(&UMTX_OP_MUTEX_TRYLOCK);
    eval 'sub UMTX_OP_MUTEX_LOCK () {5;}' unless defined(&UMTX_OP_MUTEX_LOCK);
    eval 'sub UMTX_OP_MUTEX_UNLOCK () {6;}' unless defined(&UMTX_OP_MUTEX_UNLOCK);
    eval 'sub UMTX_OP_SET_CEILING () {7;}' unless defined(&UMTX_OP_SET_CEILING);
    eval 'sub UMTX_OP_CV_WAIT () {8;}' unless defined(&UMTX_OP_CV_WAIT);
    eval 'sub UMTX_OP_CV_SIGNAL () {9;}' unless defined(&UMTX_OP_CV_SIGNAL);
    eval 'sub UMTX_OP_CV_BROADCAST () {10;}' unless defined(&UMTX_OP_CV_BROADCAST);
    eval 'sub UMTX_OP_WAIT_UINT () {11;}' unless defined(&UMTX_OP_WAIT_UINT);
    eval 'sub UMTX_OP_RW_RDLOCK () {12;}' unless defined(&UMTX_OP_RW_RDLOCK);
    eval 'sub UMTX_OP_RW_WRLOCK () {13;}' unless defined(&UMTX_OP_RW_WRLOCK);
    eval 'sub UMTX_OP_RW_UNLOCK () {14;}' unless defined(&UMTX_OP_RW_UNLOCK);
    eval 'sub UMTX_OP_WAIT_UINT_PRIVATE () {15;}' unless defined(&UMTX_OP_WAIT_UINT_PRIVATE);
    eval 'sub UMTX_OP_WAKE_PRIVATE () {16;}' unless defined(&UMTX_OP_WAKE_PRIVATE);
    eval 'sub UMTX_OP_MUTEX_WAIT () {17;}' unless defined(&UMTX_OP_MUTEX_WAIT);
    eval 'sub UMTX_OP_MUTEX_WAKE () {18;}' unless defined(&UMTX_OP_MUTEX_WAKE);
    eval 'sub UMTX_OP_SEM_WAIT () {19;}' unless defined(&UMTX_OP_SEM_WAIT);
    eval 'sub UMTX_OP_SEM_WAKE () {20;}' unless defined(&UMTX_OP_SEM_WAKE);
    eval 'sub UMTX_OP_NWAKE_PRIVATE () {21;}' unless defined(&UMTX_OP_NWAKE_PRIVATE);
    eval 'sub UMTX_OP_MUTEX_WAKE2 () {22;}' unless defined(&UMTX_OP_MUTEX_WAKE2);
    eval 'sub UMTX_OP_MAX () {23;}' unless defined(&UMTX_OP_MAX);
    eval 'sub CVWAIT_CHECK_UNPARKING () {0x1;}' unless defined(&CVWAIT_CHECK_UNPARKING);
    eval 'sub CVWAIT_ABSTIME () {0x2;}' unless defined(&CVWAIT_ABSTIME);
    eval 'sub CVWAIT_CLOCKID () {0x4;}' unless defined(&CVWAIT_CLOCKID);
    eval 'sub UMTX_ABSTIME () {0x1;}' unless defined(&UMTX_ABSTIME);
    eval 'sub UMTX_CHECK_UNPARKING () { &CVWAIT_CHECK_UNPARKING;}' unless defined(&UMTX_CHECK_UNPARKING);
    unless(defined(&_KERNEL)) {
	eval 'sub umtx_owner {
	    my($umtx) = @_;
    	    eval q({ ( ($umtx->{u_owner}) & ~ &LONG_MIN); });
	}' unless defined(&umtx_owner);
	eval 'sub umtx_lock {
	    my($umtx,$id) = @_;
    	    eval q({  &if ( &atomic_cmpset_acq_long( ($umtx->{u_owner}),  &UMTX_UNOWNED, $id) == 0)  &if ( &_umtx_lock($umtx) == -1) ( &errno); (0); });
	}' unless defined(&umtx_lock);
	eval 'sub umtx_trylock {
	    my($umtx,$id) = @_;
    	    eval q({  &if ( &atomic_cmpset_acq_long( ($umtx->{u_owner}),  &UMTX_UNOWNED, $id) == 0) ( &EBUSY); (0); });
	}' unless defined(&umtx_trylock);
	eval 'sub umtx_timedlock {
	    my($umtx,$id,$timeout) = @_;
    	    eval q({  &if ( &atomic_cmpset_acq_long( ($umtx->{u_owner}),  &UMTX_UNOWNED, $id) == 0)  &if ( &_umtx_op($umtx,  &UMTX_OP_LOCK, $id, 0,  &__DECONST( &void *, $timeout)) == -1) ( &errno); (0); });
	}' unless defined(&umtx_timedlock);
	eval 'sub umtx_unlock {
	    my($umtx,$id) = @_;
    	    eval q({  &if ( &atomic_cmpset_rel_long( ($umtx->{u_owner}), $id,  &UMTX_UNOWNED) == 0)  &if ( &_umtx_unlock($umtx) == -1) ( &errno); (0); });
	}' unless defined(&umtx_unlock);
	eval 'sub umtx_wait {
	    my($p,$val,$timeout) = @_;
    	    eval q({  &if ( &_umtx_op($p,  &UMTX_OP_WAIT, $val, 0,  &__DECONST( &void *, $timeout)) == -1) ( &errno); (0); });
	}' unless defined(&umtx_wait);
    } else {
	eval("sub TYPE_SIMPLE_WAIT () { 0; }") unless defined(&TYPE_SIMPLE_WAIT);
	eval("sub TYPE_CV () { 1; }") unless defined(&TYPE_CV);
	eval("sub TYPE_SEM () { 2; }") unless defined(&TYPE_SEM);
	eval("sub TYPE_SIMPLE_LOCK () { 3; }") unless defined(&TYPE_SIMPLE_LOCK);
	eval("sub TYPE_NORMAL_UMUTEX () { 4; }") unless defined(&TYPE_NORMAL_UMUTEX);
	eval("sub TYPE_PI_UMUTEX () { 5; }") unless defined(&TYPE_PI_UMUTEX);
	eval("sub TYPE_PP_UMUTEX () { 6; }") unless defined(&TYPE_PP_UMUTEX);
	eval("sub TYPE_RWLOCK () { 7; }") unless defined(&TYPE_RWLOCK);
	eval("sub TYPE_FUTEX () { 8; }") unless defined(&TYPE_FUTEX);
	eval 'sub THREAD_SHARE () {0;}' unless defined(&THREAD_SHARE);
	eval 'sub PROCESS_SHARE () {1;}' unless defined(&PROCESS_SHARE);
	eval 'sub AUTO_SHARE () {2;}' unless defined(&AUTO_SHARE);
	eval 'sub umtx_key_match {
	    my($k1,$k2) = @_;
    	    eval q({ ( ($k1->{type}) ==  ($k2->{type})  &&  ($k1->{info}->{both}->{a}) ==  ($k2->{info}->{both}->{a})  &&  ($k1->{info}->{both}->{b}) ==  ($k2->{info}->{both}->{b})); });
	}' unless defined(&umtx_key_match);
    }
}
1;
