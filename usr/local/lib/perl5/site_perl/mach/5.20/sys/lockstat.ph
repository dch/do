require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_LOCKSTAT_H)) {
    eval 'sub _SYS_LOCKSTAT_H () {1;}' unless defined(&_SYS_LOCKSTAT_H);
    if(defined(&_KERNEL)) {
	eval 'sub LS_MTX_SPIN_LOCK_ACQUIRE () {0;}' unless defined(&LS_MTX_SPIN_LOCK_ACQUIRE);
	eval 'sub LS_MTX_SPIN_UNLOCK_RELEASE () {1;}' unless defined(&LS_MTX_SPIN_UNLOCK_RELEASE);
	eval 'sub LS_MTX_SPIN_LOCK_SPIN () {2;}' unless defined(&LS_MTX_SPIN_LOCK_SPIN);
	eval 'sub LS_MTX_LOCK_ACQUIRE () {3;}' unless defined(&LS_MTX_LOCK_ACQUIRE);
	eval 'sub LS_MTX_UNLOCK_RELEASE () {4;}' unless defined(&LS_MTX_UNLOCK_RELEASE);
	eval 'sub LS_MTX_LOCK_SPIN () {5;}' unless defined(&LS_MTX_LOCK_SPIN);
	eval 'sub LS_MTX_LOCK_BLOCK () {6;}' unless defined(&LS_MTX_LOCK_BLOCK);
	eval 'sub LS_MTX_TRYLOCK_ACQUIRE () {7;}' unless defined(&LS_MTX_TRYLOCK_ACQUIRE);
	eval 'sub LS_RW_RLOCK_ACQUIRE () {8;}' unless defined(&LS_RW_RLOCK_ACQUIRE);
	eval 'sub LS_RW_RUNLOCK_RELEASE () {9;}' unless defined(&LS_RW_RUNLOCK_RELEASE);
	eval 'sub LS_RW_WLOCK_ACQUIRE () {10;}' unless defined(&LS_RW_WLOCK_ACQUIRE);
	eval 'sub LS_RW_WUNLOCK_RELEASE () {11;}' unless defined(&LS_RW_WUNLOCK_RELEASE);
	eval 'sub LS_RW_RLOCK_SPIN () {12;}' unless defined(&LS_RW_RLOCK_SPIN);
	eval 'sub LS_RW_RLOCK_BLOCK () {13;}' unless defined(&LS_RW_RLOCK_BLOCK);
	eval 'sub LS_RW_WLOCK_SPIN () {14;}' unless defined(&LS_RW_WLOCK_SPIN);
	eval 'sub LS_RW_WLOCK_BLOCK () {15;}' unless defined(&LS_RW_WLOCK_BLOCK);
	eval 'sub LS_RW_TRYUPGRADE_UPGRADE () {16;}' unless defined(&LS_RW_TRYUPGRADE_UPGRADE);
	eval 'sub LS_RW_DOWNGRADE_DOWNGRADE () {17;}' unless defined(&LS_RW_DOWNGRADE_DOWNGRADE);
	eval 'sub LS_SX_SLOCK_ACQUIRE () {18;}' unless defined(&LS_SX_SLOCK_ACQUIRE);
	eval 'sub LS_SX_SUNLOCK_RELEASE () {19;}' unless defined(&LS_SX_SUNLOCK_RELEASE);
	eval 'sub LS_SX_XLOCK_ACQUIRE () {20;}' unless defined(&LS_SX_XLOCK_ACQUIRE);
	eval 'sub LS_SX_XUNLOCK_RELEASE () {21;}' unless defined(&LS_SX_XUNLOCK_RELEASE);
	eval 'sub LS_SX_SLOCK_SPIN () {22;}' unless defined(&LS_SX_SLOCK_SPIN);
	eval 'sub LS_SX_SLOCK_BLOCK () {23;}' unless defined(&LS_SX_SLOCK_BLOCK);
	eval 'sub LS_SX_XLOCK_SPIN () {24;}' unless defined(&LS_SX_XLOCK_SPIN);
	eval 'sub LS_SX_XLOCK_BLOCK () {25;}' unless defined(&LS_SX_XLOCK_BLOCK);
	eval 'sub LS_SX_TRYUPGRADE_UPGRADE () {26;}' unless defined(&LS_SX_TRYUPGRADE_UPGRADE);
	eval 'sub LS_SX_DOWNGRADE_DOWNGRADE () {27;}' unless defined(&LS_SX_DOWNGRADE_DOWNGRADE);
	eval 'sub LS_THREAD_LOCK_SPIN () {28;}' unless defined(&LS_THREAD_LOCK_SPIN);
	eval 'sub LS_NPROBES () {29;}' unless defined(&LS_NPROBES);
	eval 'sub LS_MTX_LOCK () {"mtx_lock";}' unless defined(&LS_MTX_LOCK);
	eval 'sub LS_MTX_UNLOCK () {"mtx_unlock";}' unless defined(&LS_MTX_UNLOCK);
	eval 'sub LS_MTX_SPIN_LOCK () {"mtx_lock_spin";}' unless defined(&LS_MTX_SPIN_LOCK);
	eval 'sub LS_MTX_SPIN_UNLOCK () {"mtx_unlock_spin";}' unless defined(&LS_MTX_SPIN_UNLOCK);
	eval 'sub LS_MTX_TRYLOCK () {"mtx_trylock";}' unless defined(&LS_MTX_TRYLOCK);
	eval 'sub LS_RW_RLOCK () {"rw_rlock";}' unless defined(&LS_RW_RLOCK);
	eval 'sub LS_RW_WLOCK () {"rw_wlock";}' unless defined(&LS_RW_WLOCK);
	eval 'sub LS_RW_RUNLOCK () {"rw_runlock";}' unless defined(&LS_RW_RUNLOCK);
	eval 'sub LS_RW_WUNLOCK () {"rw_wunlock";}' unless defined(&LS_RW_WUNLOCK);
	eval 'sub LS_RW_TRYUPGRADE () {"rw_try_upgrade";}' unless defined(&LS_RW_TRYUPGRADE);
	eval 'sub LS_RW_DOWNGRADE () {"rw_downgrade";}' unless defined(&LS_RW_DOWNGRADE);
	eval 'sub LS_SX_SLOCK () {"sx_slock";}' unless defined(&LS_SX_SLOCK);
	eval 'sub LS_SX_XLOCK () {"sx_xlock";}' unless defined(&LS_SX_XLOCK);
	eval 'sub LS_SX_SUNLOCK () {"sx_sunlock";}' unless defined(&LS_SX_SUNLOCK);
	eval 'sub LS_SX_XUNLOCK () {"sx_xunlock";}' unless defined(&LS_SX_XUNLOCK);
	eval 'sub LS_SX_TRYUPGRADE () {"sx_try_upgrade";}' unless defined(&LS_SX_TRYUPGRADE);
	eval 'sub LS_SX_DOWNGRADE () {"sx_downgrade";}' unless defined(&LS_SX_DOWNGRADE);
	eval 'sub LS_THREAD_LOCK () {"thread_lock";}' unless defined(&LS_THREAD_LOCK);
	eval 'sub LS_ACQUIRE () {"acquire";}' unless defined(&LS_ACQUIRE);
	eval 'sub LS_RELEASE () {"release";}' unless defined(&LS_RELEASE);
	eval 'sub LS_SPIN () {"spin";}' unless defined(&LS_SPIN);
	eval 'sub LS_BLOCK () {"block";}' unless defined(&LS_BLOCK);
	eval 'sub LS_UPGRADE () {"upgrade";}' unless defined(&LS_UPGRADE);
	eval 'sub LS_DOWNGRADE () {"downgrade";}' unless defined(&LS_DOWNGRADE);
	eval 'sub LS_TYPE_ADAPTIVE () {"adaptive";}' unless defined(&LS_TYPE_ADAPTIVE);
	eval 'sub LS_TYPE_SPIN () {"spin";}' unless defined(&LS_TYPE_SPIN);
	eval 'sub LS_TYPE_THREAD () {"thread";}' unless defined(&LS_TYPE_THREAD);
	eval 'sub LS_TYPE_RW () {"rw";}' unless defined(&LS_TYPE_RW);
	eval 'sub LS_TYPE_SX () {"sx";}' unless defined(&LS_TYPE_SX);
	eval 'sub LSA_ACQUIRE () {( &LS_TYPE_ADAPTIVE "-"  &LS_ACQUIRE);}' unless defined(&LSA_ACQUIRE);
	eval 'sub LSA_RELEASE () {( &LS_TYPE_ADAPTIVE "-"  &LS_RELEASE);}' unless defined(&LSA_RELEASE);
	eval 'sub LSA_SPIN () {( &LS_TYPE_ADAPTIVE "-"  &LS_SPIN);}' unless defined(&LSA_SPIN);
	eval 'sub LSA_BLOCK () {( &LS_TYPE_ADAPTIVE "-"  &LS_BLOCK);}' unless defined(&LSA_BLOCK);
	eval 'sub LSS_ACQUIRE () {( &LS_TYPE_SPIN "-"  &LS_ACQUIRE);}' unless defined(&LSS_ACQUIRE);
	eval 'sub LSS_RELEASE () {( &LS_TYPE_SPIN "-"  &LS_RELEASE);}' unless defined(&LSS_RELEASE);
	eval 'sub LSS_SPIN () {( &LS_TYPE_SPIN "-"  &LS_SPIN);}' unless defined(&LSS_SPIN);
	eval 'sub LSR_ACQUIRE () {( &LS_TYPE_RW "-"  &LS_ACQUIRE);}' unless defined(&LSR_ACQUIRE);
	eval 'sub LSR_RELEASE () {( &LS_TYPE_RW "-"  &LS_RELEASE);}' unless defined(&LSR_RELEASE);
	eval 'sub LSR_BLOCK () {( &LS_TYPE_RW "-"  &LS_BLOCK);}' unless defined(&LSR_BLOCK);
	eval 'sub LSR_SPIN () {( &LS_TYPE_RW "-"  &LS_SPIN);}' unless defined(&LSR_SPIN);
	eval 'sub LSR_UPGRADE () {( &LS_TYPE_RW "-"  &LS_UPGRADE);}' unless defined(&LSR_UPGRADE);
	eval 'sub LSR_DOWNGRADE () {( &LS_TYPE_RW "-"  &LS_DOWNGRADE);}' unless defined(&LSR_DOWNGRADE);
	eval 'sub LSX_ACQUIRE () {( &LS_TYPE_SX "-"  &LS_ACQUIRE);}' unless defined(&LSX_ACQUIRE);
	eval 'sub LSX_RELEASE () {( &LS_TYPE_SX "-"  &LS_RELEASE);}' unless defined(&LSX_RELEASE);
	eval 'sub LSX_BLOCK () {( &LS_TYPE_SX "-"  &LS_BLOCK);}' unless defined(&LSX_BLOCK);
	eval 'sub LSX_SPIN () {( &LS_TYPE_SX "-"  &LS_SPIN);}' unless defined(&LSX_SPIN);
	eval 'sub LSX_UPGRADE () {( &LS_TYPE_SX "-"  &LS_UPGRADE);}' unless defined(&LSX_UPGRADE);
	eval 'sub LSX_DOWNGRADE () {( &LS_TYPE_SX "-"  &LS_DOWNGRADE);}' unless defined(&LSX_DOWNGRADE);
	eval 'sub LST_SPIN () {( &LS_TYPE_THREAD "-"  &LS_SPIN);}' unless defined(&LST_SPIN);
	if(defined(&KDTRACE_HOOKS)) {
	    eval 'sub LOCKSTAT_RECORD4 {
	        my($probe, $lp, $arg1, $arg2, $arg3, $arg4) = @_;
    		eval q( &do {  &uint32_t  &id;  &if (( &id =  $lockstat_probemap[($probe)])) (* &lockstat_probe_func)( &id, ( &uintptr_t)($lp), ($arg1), ($arg2), ($arg3), ($arg4)); }  &while (0));
	    }' unless defined(&LOCKSTAT_RECORD4);
	    eval 'sub LOCKSTAT_RECORD {
	        my($probe, $lp, $arg1) = @_;
    		eval q( &LOCKSTAT_RECORD4($probe, $lp, $arg1, 0, 0, 0));
	    }' unless defined(&LOCKSTAT_RECORD);
	    eval 'sub LOCKSTAT_RECORD0 {
	        my($probe, $lp) = @_;
    		eval q( &LOCKSTAT_RECORD4($probe, $lp, 0, 0, 0, 0));
	    }' unless defined(&LOCKSTAT_RECORD0);
	    eval 'sub LOCKSTAT_RECORD1 {
	        my($probe, $lp, $arg1) = @_;
    		eval q( &LOCKSTAT_RECORD4($probe, $lp, $arg1, 0, 0, 0));
	    }' unless defined(&LOCKSTAT_RECORD1);
	    eval 'sub LOCKSTAT_RECORD2 {
	        my($probe, $lp, $arg1, $arg2) = @_;
    		eval q( &LOCKSTAT_RECORD4($probe, $lp, $arg1, $arg2, 0, 0));
	    }' unless defined(&LOCKSTAT_RECORD2);
	    eval 'sub LOCKSTAT_RECORD3 {
	        my($probe, $lp, $arg1, $arg2, $arg3) = @_;
    		eval q( &LOCKSTAT_RECORD4($probe, $lp, $arg1, $arg2, $arg3, 0));
	    }' unless defined(&LOCKSTAT_RECORD3);
	    eval 'sub LOCKSTAT_PROFILE_OBTAIN_LOCK_SUCCESS {
	        my($probe, $lp, $c, $wt, $f, $l) = @_;
    		eval q( &do {  &uint32_t  &id;  &lock_profile_obtain_lock_success(($lp)-> &lock_object, $c, $wt, $f, $l);  &if (( &id =  $lockstat_probemap[($probe)])) (* &lockstat_probe_func)( &id, ( &uintptr_t)($lp), 0, 0, 0, 0); }  &while (0));
	    }' unless defined(&LOCKSTAT_PROFILE_OBTAIN_LOCK_SUCCESS);
	    eval 'sub LOCKSTAT_PROFILE_RELEASE_LOCK {
	        my($probe, $lp) = @_;
    		eval q( &do {  &uint32_t  &id;  &lock_profile_release_lock(($lp)-> &lock_object);  &if (( &id =  $lockstat_probemap[($probe)])) (* &lockstat_probe_func)( &id, ( &uintptr_t)($lp), 0, 0, 0, 0); }  &while (0));
	    }' unless defined(&LOCKSTAT_PROFILE_RELEASE_LOCK);
	} else {
	    eval 'sub LOCKSTAT_RECORD {
	        my($probe, $lp, $arg1) = @_;
    		eval q();
	    }' unless defined(&LOCKSTAT_RECORD);
	    eval 'sub LOCKSTAT_RECORD0 {
	        my($probe, $lp) = @_;
    		eval q();
	    }' unless defined(&LOCKSTAT_RECORD0);
	    eval 'sub LOCKSTAT_RECORD1 {
	        my($probe, $lp, $arg1) = @_;
    		eval q();
	    }' unless defined(&LOCKSTAT_RECORD1);
	    eval 'sub LOCKSTAT_RECORD2 {
	        my($probe, $lp, $arg1, $arg2) = @_;
    		eval q();
	    }' unless defined(&LOCKSTAT_RECORD2);
	    eval 'sub LOCKSTAT_RECORD3 {
	        my($probe, $lp, $arg1, $arg2, $arg3) = @_;
    		eval q();
	    }' unless defined(&LOCKSTAT_RECORD3);
	    eval 'sub LOCKSTAT_RECORD4 {
	        my($probe, $lp, $arg1, $arg2, $arg3, $arg4) = @_;
    		eval q();
	    }' unless defined(&LOCKSTAT_RECORD4);
	    eval 'sub LOCKSTAT_PROFILE_OBTAIN_LOCK_SUCCESS {
	        my($probe, $lp, $c, $wt, $f, $l) = @_;
    		eval q( &lock_profile_obtain_lock_success(($lp)-> &lock_object, $c, $wt, $f, $l));
	    }' unless defined(&LOCKSTAT_PROFILE_OBTAIN_LOCK_SUCCESS);
	    eval 'sub LOCKSTAT_PROFILE_RELEASE_LOCK {
	        my($probe, $lp) = @_;
    		eval q( &lock_profile_release_lock(($lp)-> &lock_object));
	    }' unless defined(&LOCKSTAT_PROFILE_RELEASE_LOCK);
	}
    }
}
1;
