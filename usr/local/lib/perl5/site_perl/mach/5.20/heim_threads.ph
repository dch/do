require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&HEIM_THREADS_H)) {
    eval 'sub HEIM_THREADS_H () {1;}' unless defined(&HEIM_THREADS_H);
    if(defined(&__NetBSD__)  && (defined(&__NetBSD_Version__) ? &__NetBSD_Version__ : undef) >= 106120000 && (defined(&__NetBSD_Version__) ? &__NetBSD_Version__ : undef)< 299001200 && defined(&ENABLE_PTHREAD_SUPPORT)) {
	require 'threadlib.ph';
	eval 'sub HEIMDAL_MUTEX () { &mutex_t;}' unless defined(&HEIMDAL_MUTEX);
	eval 'sub HEIMDAL_MUTEX_INITIALIZER () { &MUTEX_INITIALIZER;}' unless defined(&HEIMDAL_MUTEX_INITIALIZER);
	eval 'sub HEIMDAL_MUTEX_init {
	    my($m) = @_;
    	    eval q( &mutex_init($m,  &NULL));
	}' unless defined(&HEIMDAL_MUTEX_init);
	eval 'sub HEIMDAL_MUTEX_lock {
	    my($m) = @_;
    	    eval q( &mutex_lock($m));
	}' unless defined(&HEIMDAL_MUTEX_lock);
	eval 'sub HEIMDAL_MUTEX_unlock {
	    my($m) = @_;
    	    eval q( &mutex_unlock($m));
	}' unless defined(&HEIMDAL_MUTEX_unlock);
	eval 'sub HEIMDAL_MUTEX_destroy {
	    my($m) = @_;
    	    eval q( &mutex_destroy($m));
	}' unless defined(&HEIMDAL_MUTEX_destroy);
	eval 'sub HEIMDAL_RWLOCK () { &rwlock_t;}' unless defined(&HEIMDAL_RWLOCK);
	eval 'sub HEIMDAL_RWLOCK_INITIALIZER () { &RWLOCK_INITIALIZER;}' unless defined(&HEIMDAL_RWLOCK_INITIALIZER);
	eval 'sub HEIMDAL_RWLOCK_init {
	    my($l) = @_;
    	    eval q( &rwlock_init($l,  &NULL));
	}' unless defined(&HEIMDAL_RWLOCK_init);
	eval 'sub HEIMDAL_RWLOCK_rdlock {
	    my($l) = @_;
    	    eval q( &rwlock_rdlock($l));
	}' unless defined(&HEIMDAL_RWLOCK_rdlock);
	eval 'sub HEIMDAL_RWLOCK_wrlock {
	    my($l) = @_;
    	    eval q( &rwlock_wrlock($l));
	}' unless defined(&HEIMDAL_RWLOCK_wrlock);
	eval 'sub HEIMDAL_RWLOCK_tryrdlock {
	    my($l) = @_;
    	    eval q( &rwlock_tryrdlock($l));
	}' unless defined(&HEIMDAL_RWLOCK_tryrdlock);
	eval 'sub HEIMDAL_RWLOCK_trywrlock {
	    my($l) = @_;
    	    eval q( &rwlock_trywrlock($l));
	}' unless defined(&HEIMDAL_RWLOCK_trywrlock);
	eval 'sub HEIMDAL_RWLOCK_unlock {
	    my($l) = @_;
    	    eval q( &rwlock_unlock($l));
	}' unless defined(&HEIMDAL_RWLOCK_unlock);
	eval 'sub HEIMDAL_RWLOCK_destroy {
	    my($l) = @_;
    	    eval q( &rwlock_destroy($l));
	}' unless defined(&HEIMDAL_RWLOCK_destroy);
	eval 'sub HEIMDAL_thread_key () { &thread_key_t;}' unless defined(&HEIMDAL_thread_key);
	eval 'sub HEIMDAL_key_create {
	    my($k,$d,$r) = @_;
    	    eval q( &do { $r =  &thr_keycreate($k,$d); }  &while(0));
	}' unless defined(&HEIMDAL_key_create);
	eval 'sub HEIMDAL_setspecific {
	    my($k,$s,$r) = @_;
    	    eval q( &do { $r =  &thr_setspecific($k,$s); }  &while(0));
	}' unless defined(&HEIMDAL_setspecific);
	eval 'sub HEIMDAL_getspecific {
	    my($k) = @_;
    	    eval q( &thr_getspecific($k));
	}' unless defined(&HEIMDAL_getspecific);
	eval 'sub HEIMDAL_key_delete {
	    my($k) = @_;
    	    eval q( &thr_keydelete($k));
	}' unless defined(&HEIMDAL_key_delete);
    }
 elsif(defined(&ENABLE_PTHREAD_SUPPORT)  && (!defined(&__NetBSD__) || (defined(&__NetBSD_Version__) ? &__NetBSD_Version__ : undef) >= 299001200)) {
	require 'pthread.ph';
	eval 'sub HEIMDAL_MUTEX () { &pthread_mutex_t;}' unless defined(&HEIMDAL_MUTEX);
	eval 'sub HEIMDAL_MUTEX_INITIALIZER () { &PTHREAD_MUTEX_INITIALIZER;}' unless defined(&HEIMDAL_MUTEX_INITIALIZER);
	eval 'sub HEIMDAL_MUTEX_init {
	    my($m) = @_;
    	    eval q( &pthread_mutex_init($m,  &NULL));
	}' unless defined(&HEIMDAL_MUTEX_init);
	eval 'sub HEIMDAL_MUTEX_lock {
	    my($m) = @_;
    	    eval q( &pthread_mutex_lock($m));
	}' unless defined(&HEIMDAL_MUTEX_lock);
	eval 'sub HEIMDAL_MUTEX_unlock {
	    my($m) = @_;
    	    eval q( &pthread_mutex_unlock($m));
	}' unless defined(&HEIMDAL_MUTEX_unlock);
	eval 'sub HEIMDAL_MUTEX_destroy {
	    my($m) = @_;
    	    eval q( &pthread_mutex_destroy($m));
	}' unless defined(&HEIMDAL_MUTEX_destroy);
	eval 'sub HEIMDAL_RWLOCK () { &rwlock_t;}' unless defined(&HEIMDAL_RWLOCK);
	eval 'sub HEIMDAL_RWLOCK_INITIALIZER () { &RWLOCK_INITIALIZER;}' unless defined(&HEIMDAL_RWLOCK_INITIALIZER);
	eval 'sub HEIMDAL_RWLOCK_init {
	    my($l) = @_;
    	    eval q( &pthread_rwlock_init($l,  &NULL));
	}' unless defined(&HEIMDAL_RWLOCK_init);
	eval 'sub HEIMDAL_RWLOCK_rdlock {
	    my($l) = @_;
    	    eval q( &pthread_rwlock_rdlock($l));
	}' unless defined(&HEIMDAL_RWLOCK_rdlock);
	eval 'sub HEIMDAL_RWLOCK_wrlock {
	    my($l) = @_;
    	    eval q( &pthread_rwlock_wrlock($l));
	}' unless defined(&HEIMDAL_RWLOCK_wrlock);
	eval 'sub HEIMDAL_RWLOCK_tryrdlock {
	    my($l) = @_;
    	    eval q( &pthread_rwlock_tryrdlock($l));
	}' unless defined(&HEIMDAL_RWLOCK_tryrdlock);
	eval 'sub HEIMDAL_RWLOCK_trywrlock {
	    my($l) = @_;
    	    eval q( &pthread_rwlock_trywrlock($l));
	}' unless defined(&HEIMDAL_RWLOCK_trywrlock);
	eval 'sub HEIMDAL_RWLOCK_unlock {
	    my($l) = @_;
    	    eval q( &pthread_rwlock_unlock($l));
	}' unless defined(&HEIMDAL_RWLOCK_unlock);
	eval 'sub HEIMDAL_RWLOCK_destroy {
	    my($l) = @_;
    	    eval q( &pthread_rwlock_destroy($l));
	}' unless defined(&HEIMDAL_RWLOCK_destroy);
	eval 'sub HEIMDAL_thread_key () { &pthread_key_t;}' unless defined(&HEIMDAL_thread_key);
	eval 'sub HEIMDAL_key_create {
	    my($k,$d,$r) = @_;
    	    eval q( &do { $r =  &pthread_key_create($k,$d); }  &while(0));
	}' unless defined(&HEIMDAL_key_create);
	eval 'sub HEIMDAL_setspecific {
	    my($k,$s,$r) = @_;
    	    eval q( &do { $r =  &pthread_setspecific($k,$s); }  &while(0));
	}' unless defined(&HEIMDAL_setspecific);
	eval 'sub HEIMDAL_getspecific {
	    my($k) = @_;
    	    eval q( &pthread_getspecific($k));
	}' unless defined(&HEIMDAL_getspecific);
	eval 'sub HEIMDAL_key_delete {
	    my($k) = @_;
    	    eval q( &pthread_key_delete($k));
	}' unless defined(&HEIMDAL_key_delete);
    }
 elsif(defined(&HEIMDAL_DEBUG_THREADS)) {
	require 'stdlib.ph';
	eval 'sub HEIMDAL_MUTEX () {\'int\';}' unless defined(&HEIMDAL_MUTEX);
	eval 'sub HEIMDAL_MUTEX_INITIALIZER () {0;}' unless defined(&HEIMDAL_MUTEX_INITIALIZER);
	eval 'sub HEIMDAL_MUTEX_init {
	    my($m) = @_;
    	    eval q( &do { (*($m)) = 0; }  &while(0));
	}' unless defined(&HEIMDAL_MUTEX_init);
	eval 'sub HEIMDAL_MUTEX_lock {
	    my($m) = @_;
    	    eval q( &do {  &if ((*($m))++ != 0)  &abort(); }  &while(0));
	}' unless defined(&HEIMDAL_MUTEX_lock);
	eval 'sub HEIMDAL_MUTEX_unlock {
	    my($m) = @_;
    	    eval q( &do {  &if ((*($m))-- != 1)  &abort(); }  &while(0));
	}' unless defined(&HEIMDAL_MUTEX_unlock);
	eval 'sub HEIMDAL_MUTEX_destroy {
	    my($m) = @_;
    	    eval q( &do { &if ((*($m)) != 0)  &abort(); }  &while(0));
	}' unless defined(&HEIMDAL_MUTEX_destroy);
	eval 'sub HEIMDAL_RWLOCK () { &rwlock_t \'int\';}' unless defined(&HEIMDAL_RWLOCK);
	eval 'sub HEIMDAL_RWLOCK_INITIALIZER () {0;}' unless defined(&HEIMDAL_RWLOCK_INITIALIZER);
	eval 'sub HEIMDAL_RWLOCK_init {
	    my($l) = @_;
    	    eval q( &do { }  &while(0));
	}' unless defined(&HEIMDAL_RWLOCK_init);
	eval 'sub HEIMDAL_RWLOCK_rdlock {
	    my($l) = @_;
    	    eval q( &do { }  &while(0));
	}' unless defined(&HEIMDAL_RWLOCK_rdlock);
	eval 'sub HEIMDAL_RWLOCK_wrlock {
	    my($l) = @_;
    	    eval q( &do { }  &while(0));
	}' unless defined(&HEIMDAL_RWLOCK_wrlock);
	eval 'sub HEIMDAL_RWLOCK_tryrdlock {
	    my($l) = @_;
    	    eval q( &do { }  &while(0));
	}' unless defined(&HEIMDAL_RWLOCK_tryrdlock);
	eval 'sub HEIMDAL_RWLOCK_trywrlock {
	    my($l) = @_;
    	    eval q( &do { }  &while(0));
	}' unless defined(&HEIMDAL_RWLOCK_trywrlock);
	eval 'sub HEIMDAL_RWLOCK_unlock {
	    my($l) = @_;
    	    eval q( &do { }  &while(0));
	}' unless defined(&HEIMDAL_RWLOCK_unlock);
	eval 'sub HEIMDAL_RWLOCK_destroy {
	    my($l) = @_;
    	    eval q( &do { }  &while(0));
	}' unless defined(&HEIMDAL_RWLOCK_destroy);
	eval 'sub HEIMDAL_internal_thread_key () {1;}' unless defined(&HEIMDAL_internal_thread_key);
    } else {
	eval 'sub HEIMDAL_MUTEX () {\'int\';}' unless defined(&HEIMDAL_MUTEX);
	eval 'sub HEIMDAL_MUTEX_INITIALIZER () {0;}' unless defined(&HEIMDAL_MUTEX_INITIALIZER);
	eval 'sub HEIMDAL_MUTEX_init {
	    my($m) = @_;
    	    eval q( &do { ( &void)($m); }  &while(0));
	}' unless defined(&HEIMDAL_MUTEX_init);
	eval 'sub HEIMDAL_MUTEX_lock {
	    my($m) = @_;
    	    eval q( &do { ( &void)($m); }  &while(0));
	}' unless defined(&HEIMDAL_MUTEX_lock);
	eval 'sub HEIMDAL_MUTEX_unlock {
	    my($m) = @_;
    	    eval q( &do { ( &void)($m); }  &while(0));
	}' unless defined(&HEIMDAL_MUTEX_unlock);
	eval 'sub HEIMDAL_MUTEX_destroy {
	    my($m) = @_;
    	    eval q( &do { ( &void)($m); }  &while(0));
	}' unless defined(&HEIMDAL_MUTEX_destroy);
	eval 'sub HEIMDAL_RWLOCK () { &rwlock_t \'int\';}' unless defined(&HEIMDAL_RWLOCK);
	eval 'sub HEIMDAL_RWLOCK_INITIALIZER () {0;}' unless defined(&HEIMDAL_RWLOCK_INITIALIZER);
	eval 'sub HEIMDAL_RWLOCK_init {
	    my($l) = @_;
    	    eval q( &do { }  &while(0));
	}' unless defined(&HEIMDAL_RWLOCK_init);
	eval 'sub HEIMDAL_RWLOCK_rdlock {
	    my($l) = @_;
    	    eval q( &do { }  &while(0));
	}' unless defined(&HEIMDAL_RWLOCK_rdlock);
	eval 'sub HEIMDAL_RWLOCK_wrlock {
	    my($l) = @_;
    	    eval q( &do { }  &while(0));
	}' unless defined(&HEIMDAL_RWLOCK_wrlock);
	eval 'sub HEIMDAL_RWLOCK_tryrdlock {
	    my($l) = @_;
    	    eval q( &do { }  &while(0));
	}' unless defined(&HEIMDAL_RWLOCK_tryrdlock);
	eval 'sub HEIMDAL_RWLOCK_trywrlock {
	    my($l) = @_;
    	    eval q( &do { }  &while(0));
	}' unless defined(&HEIMDAL_RWLOCK_trywrlock);
	eval 'sub HEIMDAL_RWLOCK_unlock {
	    my($l) = @_;
    	    eval q( &do { }  &while(0));
	}' unless defined(&HEIMDAL_RWLOCK_unlock);
	eval 'sub HEIMDAL_RWLOCK_destroy {
	    my($l) = @_;
    	    eval q( &do { }  &while(0));
	}' unless defined(&HEIMDAL_RWLOCK_destroy);
	eval 'sub HEIMDAL_internal_thread_key () {1;}' unless defined(&HEIMDAL_internal_thread_key);
    }
    if(defined(&HEIMDAL_internal_thread_key)) {
	eval 'sub HEIMDAL_thread_key () { &heim_thread_key;}' unless defined(&HEIMDAL_thread_key);
	eval 'sub HEIMDAL_key_create {
	    my($k,$d,$r) = @_;
    	    eval q( &do { ($k)-> &value =  &NULL; ($k)-> &destructor = ($d); $r = 0; }  &while(0));
	}' unless defined(&HEIMDAL_key_create);
	eval 'sub HEIMDAL_setspecific {
	    my($k,$s,$r) = @_;
    	    eval q( &do { ($k). &value = $s ; $r = 0; }  &while(0));
	}' unless defined(&HEIMDAL_setspecific);
	eval 'sub HEIMDAL_getspecific {
	    my($k) = @_;
    	    eval q((($k). &value));
	}' unless defined(&HEIMDAL_getspecific);
	eval 'sub HEIMDAL_key_delete {
	    my($k) = @_;
    	    eval q( &do { (*($k). &destructor)(($k). &value); }  &while(0));
	}' unless defined(&HEIMDAL_key_delete);
	undef(&HEIMDAL_internal_thread_key) if defined(&HEIMDAL_internal_thread_key);
    }
}
1;
