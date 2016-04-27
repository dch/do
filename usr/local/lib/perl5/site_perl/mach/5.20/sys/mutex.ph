require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_MUTEX_H_)) {
    eval 'sub _SYS_MUTEX_H_ () {1;}' unless defined(&_SYS_MUTEX_H_);
    require 'sys/queue.ph';
    require 'sys/_lock.ph';
    require 'sys/_mutex.ph';
    if(defined(&_KERNEL)) {
	require 'sys/pcpu.ph';
	require 'sys/lock_profile.ph';
	require 'sys/lockstat.ph';
	require 'machine/atomic.ph';
	require 'machine/cpufunc.ph';
	eval 'sub MTX_DEF () {0x;}' unless defined(&MTX_DEF);
	eval 'sub MTX_SPIN () {0x1;}' unless defined(&MTX_SPIN);
	eval 'sub MTX_RECURSE () {0x4;}' unless defined(&MTX_RECURSE);
	eval 'sub MTX_NOWITNESS () {0x8;}' unless defined(&MTX_NOWITNESS);
	eval 'sub MTX_NOPROFILE () {0x20;}' unless defined(&MTX_NOPROFILE);
	eval 'sub MTX_QUIET () { &LOP_QUIET;}' unless defined(&MTX_QUIET);
	eval 'sub MTX_DUPOK () { &LOP_DUPOK;}' unless defined(&MTX_DUPOK);
	eval 'sub MTX_RECURSED () {0x1;}' unless defined(&MTX_RECURSED);
	eval 'sub MTX_CONTESTED () {0x2;}' unless defined(&MTX_CONTESTED);
	eval 'sub MTX_UNOWNED () {0x4;}' unless defined(&MTX_UNOWNED);
	eval 'sub MTX_FLAGMASK () {( &MTX_RECURSED |  &MTX_CONTESTED |  &MTX_UNOWNED);}' unless defined(&MTX_FLAGMASK);
	eval 'sub MTX_DESTROYED () {( &MTX_CONTESTED |  &MTX_UNOWNED);}' unless defined(&MTX_DESTROYED);
	if(defined(&SMP)) {
	}
	if(defined(&INVARIANTS) || defined(&INVARIANT_SUPPORT)) {
	}
	eval 'sub thread_lock {
	    my($tdp) = @_;
    	    eval q( &thread_lock_flags_(($tdp), 0,  &__FILE__,  &__LINE__));
	}' unless defined(&thread_lock);
	eval 'sub thread_lock_flags {
	    my($tdp, $opt) = @_;
    	    eval q( &thread_lock_flags_(($tdp), ($opt),  &__FILE__,  &__LINE__));
	}' unless defined(&thread_lock_flags);
	eval 'sub thread_unlock {
	    my($tdp) = @_;
    	    eval q( &mtx_unlock_spin(($tdp)-> &td_lock));
	}' unless defined(&thread_unlock);
	eval 'sub mtx_init {
	    my($m, $n, $t, $o) = @_;
    	    eval q( &_mtx_init(($m)-> &mtx_lock, $n, $t, $o));
	}' unless defined(&mtx_init);
	eval 'sub mtx_destroy {
	    my($m) = @_;
    	    eval q( &_mtx_destroy(($m)-> &mtx_lock));
	}' unless defined(&mtx_destroy);
	eval 'sub mtx_trylock_flags_ {
	    my($m, $o, $f, $l) = @_;
    	    eval q( &_mtx_trylock_flags_(($m)-> &mtx_lock, $o, $f, $l));
	}' unless defined(&mtx_trylock_flags_);
	eval 'sub _mtx_lock_sleep {
	    my($m, $t, $o, $f, $l) = @_;
    	    eval q( &__mtx_lock_sleep(($m)-> &mtx_lock, $t, $o, $f, $l));
	}' unless defined(&_mtx_lock_sleep);
	eval 'sub _mtx_unlock_sleep {
	    my($m, $o, $f, $l) = @_;
    	    eval q( &__mtx_unlock_sleep(($m)-> &mtx_lock, $o, $f, $l));
	}' unless defined(&_mtx_unlock_sleep);
	if(defined(&SMP)) {
	    eval 'sub _mtx_lock_spin {
	        my($m, $t, $o, $f, $l) = @_;
    		eval q( &_mtx_lock_spin_cookie(($m)-> &mtx_lock, $t, $o, $f, $l));
	    }' unless defined(&_mtx_lock_spin);
	}
	eval 'sub _mtx_lock_flags {
	    my($m, $o, $f, $l) = @_;
    	    eval q( &__mtx_lock_flags(($m)-> &mtx_lock, $o, $f, $l));
	}' unless defined(&_mtx_lock_flags);
	eval 'sub _mtx_unlock_flags {
	    my($m, $o, $f, $l) = @_;
    	    eval q( &__mtx_unlock_flags(($m)-> &mtx_lock, $o, $f, $l));
	}' unless defined(&_mtx_unlock_flags);
	eval 'sub _mtx_lock_spin_flags {
	    my($m, $o, $f, $l) = @_;
    	    eval q( &__mtx_lock_spin_flags(($m)-> &mtx_lock, $o, $f, $l));
	}' unless defined(&_mtx_lock_spin_flags);
	eval 'sub _mtx_unlock_spin_flags {
	    my($m, $o, $f, $l) = @_;
    	    eval q( &__mtx_unlock_spin_flags(($m)-> &mtx_lock, $o, $f, $l));
	}' unless defined(&_mtx_unlock_spin_flags);
	if(defined(&INVARIANTS) || defined(&INVARIANT_SUPPORT)) {
	    eval 'sub _mtx_assert {
	        my($m, $w, $f, $l) = @_;
    		eval q( &__mtx_assert(($m)-> &mtx_lock, $w, $f, $l));
	    }' unless defined(&_mtx_assert);
	}
	eval 'sub mtx_recurse () { ($lock_object->{lo_data});}' unless defined(&mtx_recurse);
	eval 'sub _mtx_obtain_lock {
	    my($mp, $tid) = @_;
    	    eval q( &atomic_cmpset_acq_ptr(($mp)-> &mtx_lock,  &MTX_UNOWNED, ($tid)));
	}' unless defined(&_mtx_obtain_lock);
	eval 'sub _mtx_release_lock {
	    my($mp, $tid) = @_;
    	    eval q( &atomic_cmpset_rel_ptr(($mp)-> &mtx_lock, ($tid),  &MTX_UNOWNED));
	}' unless defined(&_mtx_release_lock);
	eval 'sub _mtx_release_lock_quick {
	    my($mp) = @_;
    	    eval q( &atomic_store_rel_ptr(($mp)-> &mtx_lock,  &MTX_UNOWNED));
	}' unless defined(&_mtx_release_lock_quick);
	eval 'sub __mtx_lock {
	    my($mp, $tid, $opts, $file, $line) = @_;
    	    eval q( &do {  &uintptr_t  &_tid = ( &uintptr_t)($tid);  &if (! &_mtx_obtain_lock(($mp),  &_tid))  &_mtx_lock_sleep(($mp),  &_tid, ($opts), ($file), ($line));  &else  &LOCKSTAT_PROFILE_OBTAIN_LOCK_SUCCESS( &LS_MTX_LOCK_ACQUIRE, $mp, 0, 0, ($file), ($line)); }  &while (0));
	}' unless defined(&__mtx_lock);
	if(defined(&SMP)) {
	    eval 'sub __mtx_lock_spin {
	        my($mp, $tid, $opts, $file, $line) = @_;
    		eval q( &do {  &uintptr_t  &_tid = ( &uintptr_t)($tid);  &spinlock_enter();  &if (! &_mtx_obtain_lock(($mp),  &_tid)) {  &if (($mp)-> &mtx_lock ==  &_tid) ($mp)-> &mtx_recurse++;  &else  &_mtx_lock_spin(($mp),  &_tid, ($opts), ($file), ($line)); }  &else  &LOCKSTAT_PROFILE_OBTAIN_LOCK_SUCCESS( &LS_MTX_SPIN_LOCK_ACQUIRE, $mp, 0, 0, ($file), ($line)); }  &while (0));
	    }' unless defined(&__mtx_lock_spin);
	} else {
	    eval 'sub __mtx_lock_spin {
	        my($mp, $tid, $opts, $file, $line) = @_;
    		eval q( &do {  &uintptr_t  &_tid = ( &uintptr_t)($tid);  &spinlock_enter();  &if (($mp)-> &mtx_lock ==  &_tid) ($mp)-> &mtx_recurse++;  &else {  &KASSERT(($mp)-> &mtx_lock ==  &MTX_UNOWNED, (\\"corrupt spinlock\\")); ($mp)-> &mtx_lock =  &_tid; } }  &while (0));
	    }' unless defined(&__mtx_lock_spin);
	}
	eval 'sub __mtx_unlock {
	    my($mp, $tid, $opts, $file, $line) = @_;
    	    eval q( &do {  &uintptr_t  &_tid = ( &uintptr_t)($tid);  &if (! &_mtx_release_lock(($mp),  &_tid))  &_mtx_unlock_sleep(($mp), ($opts), ($file), ($line)); }  &while (0));
	}' unless defined(&__mtx_unlock);
	if(defined(&SMP)) {
	    eval 'sub __mtx_unlock_spin {
	        my($mp) = @_;
    		eval q( &do {  &if ( &mtx_recursed(($mp))) ($mp)-> &mtx_recurse--;  &else {  &LOCKSTAT_PROFILE_RELEASE_LOCK( &LS_MTX_SPIN_UNLOCK_RELEASE, $mp);  &_mtx_release_lock_quick(($mp)); }  &spinlock_exit(); }  &while (0));
	    }' unless defined(&__mtx_unlock_spin);
	} else {
	    eval 'sub __mtx_unlock_spin {
	        my($mp) = @_;
    		eval q( &do {  &if ( &mtx_recursed(($mp))) ($mp)-> &mtx_recurse--;  &else {  &LOCKSTAT_PROFILE_RELEASE_LOCK( &LS_MTX_SPIN_UNLOCK_RELEASE, $mp); ($mp)-> &mtx_lock =  &MTX_UNOWNED; }  &spinlock_exit(); }  &while (0));
	    }' unless defined(&__mtx_unlock_spin);
	}
	eval 'sub mtx_lock {
	    my($m) = @_;
    	    eval q( &mtx_lock_flags(($m), 0));
	}' unless defined(&mtx_lock);
	eval 'sub mtx_lock_spin {
	    my($m) = @_;
    	    eval q( &mtx_lock_spin_flags(($m), 0));
	}' unless defined(&mtx_lock_spin);
	eval 'sub mtx_trylock {
	    my($m) = @_;
    	    eval q( &mtx_trylock_flags(($m), 0));
	}' unless defined(&mtx_trylock);
	eval 'sub mtx_unlock {
	    my($m) = @_;
    	    eval q( &mtx_unlock_flags(($m), 0));
	}' unless defined(&mtx_unlock);
	eval 'sub mtx_unlock_spin {
	    my($m) = @_;
    	    eval q( &mtx_unlock_spin_flags(($m), 0));
	}' unless defined(&mtx_unlock_spin);
	eval 'sub mtx_pool_lock {
	    my($pool, $ptr) = @_;
    	    eval q( &mtx_lock( &mtx_pool_find(($pool), ($ptr))));
	}' unless defined(&mtx_pool_lock);
	eval 'sub mtx_pool_lock_spin {
	    my($pool, $ptr) = @_;
    	    eval q( &mtx_lock_spin( &mtx_pool_find(($pool), ($ptr))));
	}' unless defined(&mtx_pool_lock_spin);
	eval 'sub mtx_pool_unlock {
	    my($pool, $ptr) = @_;
    	    eval q( &mtx_unlock( &mtx_pool_find(($pool), ($ptr))));
	}' unless defined(&mtx_pool_unlock);
	eval 'sub mtx_pool_unlock_spin {
	    my($pool, $ptr) = @_;
    	    eval q( &mtx_unlock_spin( &mtx_pool_find(($pool), ($ptr))));
	}' unless defined(&mtx_pool_unlock_spin);
	unless(defined(&LOCK_DEBUG)) {
	    die("LOCK_DEBUG\ not\ defined\,\ include\ \<sys\/lock\.h\>\ before\ \<sys\/mutex\.h\>");
	}
	if((defined(&LOCK_DEBUG) ? &LOCK_DEBUG : undef) > 0|| defined(&MUTEX_NOINLINE)) {
	    eval 'sub mtx_lock_flags_ {
	        my($m, $opts, $file, $line) = @_;
    		eval q( &_mtx_lock_flags(($m), ($opts), ($file), ($line)));
	    }' unless defined(&mtx_lock_flags_);
	    eval 'sub mtx_unlock_flags_ {
	        my($m, $opts, $file, $line) = @_;
    		eval q( &_mtx_unlock_flags(($m), ($opts), ($file), ($line)));
	    }' unless defined(&mtx_unlock_flags_);
	    eval 'sub mtx_lock_spin_flags_ {
	        my($m, $opts, $file, $line) = @_;
    		eval q( &_mtx_lock_spin_flags(($m), ($opts), ($file), ($line)));
	    }' unless defined(&mtx_lock_spin_flags_);
	    eval 'sub mtx_unlock_spin_flags_ {
	        my($m, $opts, $file, $line) = @_;
    		eval q( &_mtx_unlock_spin_flags(($m), ($opts), ($file), ($line)));
	    }' unless defined(&mtx_unlock_spin_flags_);
	} else {
	    eval 'sub mtx_lock_flags_ {
	        my($m, $opts, $file, $line) = @_;
    		eval q( &__mtx_lock(($m),  &curthread, ($opts), ($file), ($line)));
	    }' unless defined(&mtx_lock_flags_);
	    eval 'sub mtx_unlock_flags_ {
	        my($m, $opts, $file, $line) = @_;
    		eval q( &__mtx_unlock(($m),  &curthread, ($opts), ($file), ($line)));
	    }' unless defined(&mtx_unlock_flags_);
	    eval 'sub mtx_lock_spin_flags_ {
	        my($m, $opts, $file, $line) = @_;
    		eval q( &__mtx_lock_spin(($m),  &curthread, ($opts), ($file), ($line)));
	    }' unless defined(&mtx_lock_spin_flags_);
	    eval 'sub mtx_unlock_spin_flags_ {
	        my($m, $opts, $file, $line) = @_;
    		eval q( &__mtx_unlock_spin(($m)));
	    }' unless defined(&mtx_unlock_spin_flags_);
	}
	if(defined(&INVARIANTS)) {
	    eval 'sub mtx_assert_ {
	        my($m, $what, $file, $line) = @_;
    		eval q( &_mtx_assert(($m), ($what), ($file), ($line)));
	    }' unless defined(&mtx_assert_);
	    eval 'sub GIANT_REQUIRED () { &mtx_assert_( &Giant,  &MA_OWNED,  &__FILE__,  &__LINE__);}' unless defined(&GIANT_REQUIRED);
	} else {
	    eval 'sub mtx_assert_ {
	        my($m, $what, $file, $line) = @_;
    		eval q(( &void)0);
	    }' unless defined(&mtx_assert_);
	    eval 'sub GIANT_REQUIRED () {1;}' unless defined(&GIANT_REQUIRED);
	}
	eval 'sub mtx_lock_flags {
	    my($m, $opts) = @_;
    	    eval q( &mtx_lock_flags_(($m), ($opts),  &LOCK_FILE,  &LOCK_LINE));
	}' unless defined(&mtx_lock_flags);
	eval 'sub mtx_unlock_flags {
	    my($m, $opts) = @_;
    	    eval q( &mtx_unlock_flags_(($m), ($opts),  &LOCK_FILE,  &LOCK_LINE));
	}' unless defined(&mtx_unlock_flags);
	eval 'sub mtx_lock_spin_flags {
	    my($m, $opts) = @_;
    	    eval q( &mtx_lock_spin_flags_(($m), ($opts),  &LOCK_FILE,  &LOCK_LINE));
	}' unless defined(&mtx_lock_spin_flags);
	eval 'sub mtx_unlock_spin_flags {
	    my($m, $opts) = @_;
    	    eval q( &mtx_unlock_spin_flags_(($m), ($opts),  &LOCK_FILE,  &LOCK_LINE));
	}' unless defined(&mtx_unlock_spin_flags);
	eval 'sub mtx_trylock_flags {
	    my($m, $opts) = @_;
    	    eval q( &mtx_trylock_flags_(($m), ($opts),  &LOCK_FILE,  &LOCK_LINE));
	}' unless defined(&mtx_trylock_flags);
	eval 'sub mtx_assert {
	    my($m, $what) = @_;
    	    eval q( &mtx_assert_(($m), ($what),  &__FILE__,  &__LINE__));
	}' unless defined(&mtx_assert);
	eval 'sub mtx_sleep {
	    my($chan, $mtx, $pri, $wmesg, $timo) = @_;
    	    eval q( &_sleep(($chan), ($mtx)-> &lock_object, ($pri), ($wmesg),  &tick_sbt * ($timo), 0,  &C_HARDCLOCK));
	}' unless defined(&mtx_sleep);
	eval 'sub mtx_initialized {
	    my($m) = @_;
    	    eval q( &lock_initalized(($m)-> &lock_object));
	}' unless defined(&mtx_initialized);
	eval 'sub mtx_owned {
	    my($m) = @_;
    	    eval q(((($m)-> &mtx_lock & ~ &MTX_FLAGMASK) == ( &uintptr_t) &curthread));
	}' unless defined(&mtx_owned);
	eval 'sub mtx_recursed {
	    my($m) = @_;
    	    eval q((($m)-> &mtx_recurse != 0));
	}' unless defined(&mtx_recursed);
	eval 'sub mtx_name {
	    my($m) = @_;
    	    eval q((($m)-> ($lock_object->{lo_name})));
	}' unless defined(&mtx_name);
	unless(defined(&DROP_GIANT)) {
	    eval 'sub DROP_GIANT () {
	        eval q( &do { \'int\'  &_giantcnt = 0;  &WITNESS_SAVE_DECL( &Giant);  &if ( &mtx_owned( &Giant)) {  &WITNESS_SAVE( ($Giant->{lock_object}),  &Giant);  &for ( &_giantcnt = 0;  &mtx_owned( &Giant)  && ! &SCHEDULER_STOPPED();  &_giantcnt++)  &mtx_unlock( &Giant); });
	    }' unless defined(&DROP_GIANT);
	    eval 'sub PICKUP_GIANT () {
	        eval q( &PARTIAL_PICKUP_GIANT(); }  &while (0));
	    }' unless defined(&PICKUP_GIANT);
	    eval 'sub PARTIAL_PICKUP_GIANT () {
	        eval q( &mtx_assert( &Giant,  &MA_NOTOWNED);  &if ( &_giantcnt > 0) {  &while ( &_giantcnt--)  &mtx_lock( &Giant);  &WITNESS_RESTORE( ($Giant->{lock_object}),  &Giant); });
	    }' unless defined(&PARTIAL_PICKUP_GIANT);
	}
	eval 'sub MTX_SYSINIT {
	    my($name, $mtx, $desc, $opts) = @_;
    	    eval q( &static \'struct mtx_args\' $name &_args = { ($mtx), ($desc), ($opts) };  &SYSINIT($name &_mtx_sysinit,  &SI_SUB_LOCK,  &SI_ORDER_MIDDLE,  &mtx_sysinit, $name &_args);  &SYSUNINIT($name &_mtx_sysuninit,  &SI_SUB_LOCK,  &SI_ORDER_MIDDLE,  &_mtx_destroy,  &__DEVOLATILE( &void *, ($mtx)-> &mtx_lock)));
	}' unless defined(&MTX_SYSINIT);
	if(defined(&INVARIANTS) || defined(&INVARIANT_SUPPORT)) {
	    eval 'sub MA_OWNED () { &LA_XLOCKED;}' unless defined(&MA_OWNED);
	    eval 'sub MA_NOTOWNED () { &LA_UNLOCKED;}' unless defined(&MA_NOTOWNED);
	    eval 'sub MA_RECURSED () { &LA_RECURSED;}' unless defined(&MA_RECURSED);
	    eval 'sub MA_NOTRECURSED () { &LA_NOTRECURSED;}' unless defined(&MA_NOTRECURSED);
	}
	eval 'sub MTX_NETWORK_LOCK () {"network driver";}' unless defined(&MTX_NETWORK_LOCK);
    }
}
1;
