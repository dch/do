require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__SYS_REFCOUNT_H__)) {
    eval 'sub __SYS_REFCOUNT_H__ () {1;}' unless defined(&__SYS_REFCOUNT_H__);
    require 'sys/limits.ph';
    require 'machine/atomic.ph';
    if(defined(&_KERNEL)) {
	require 'sys/systm.ph';
    } else {
	eval 'sub KASSERT {
	    my($exp, $msg) = @_;
    	    eval q();
	}' unless defined(&KASSERT);
    }
    eval 'sub refcount_init {
        my($count,$value) = @_;
	    eval q({ *$count = $value; });
    }' unless defined(&refcount_init);
    eval 'sub refcount_acquire {
        my($count) = @_;
	    eval q({  &KASSERT(*$count <  &UINT_MAX, (\\"refcount %p overflowed\\", $count));  &atomic_add_acq_int($count, 1); });
    }' unless defined(&refcount_acquire);
    eval 'sub refcount_release {
        my($count) = @_;
	    eval q({ \'u_int\'  &old;  &old =  &atomic_fetchadd_int($count, -1);  &KASSERT( &old > 0, (\\"negative refcount %p\\", $count)); ( &old == 1); });
    }' unless defined(&refcount_release);
}
1;
