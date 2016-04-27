require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SCHED_H_)) {
    eval 'sub _SCHED_H_ () {1;}' unless defined(&_SCHED_H_);
    if(defined(&_KERNEL)) {
	if(defined(&RACCT)) {
	    if(defined(&SCHED_4BSD)) {
	    }
	}
	if(defined(&KTR)) {
	}
	eval 'sub sched_pin {
	    my($void) = @_;
    	    eval q({  ($curthread->{td_pinned})++;  &__compiler_membar(); });
	}' unless defined(&sched_pin);
	eval 'sub sched_unpin {
	    my($void) = @_;
    	    eval q({  &__compiler_membar();  ($curthread->{td_pinned})--; });
	}' unless defined(&sched_unpin);
	eval 'sub SRQ_BORING () {0x;}' unless defined(&SRQ_BORING);
	eval 'sub SRQ_YIELDING () {0x1;}' unless defined(&SRQ_YIELDING);
	eval 'sub SRQ_OURSELF () {0x2;}' unless defined(&SRQ_OURSELF);
	eval 'sub SRQ_INTR () {0x4;}' unless defined(&SRQ_INTR);
	eval 'sub SRQ_PREEMPTED () {0x8;}' unless defined(&SRQ_PREEMPTED);
	eval 'sub SRQ_BORROWING () {0x10;}' unless defined(&SRQ_BORROWING);
	if(defined(&SCHED_STATS)) {
	    eval 'sub SCHED_STAT_DEFINE_VAR {
	        my($name, $ptr, $descr) = @_;
    		eval q( &static  &void $name   &_add_proc( &void * &dummy  &__unused) {  &SYSCTL_ADD_PROC( &NULL,  &SYSCTL_STATIC_CHILDREN( &_kern_sched_stats),  &OID_AUTO, $name,  &CTLTYPE_LONG| &CTLFLAG_RD| &CTLFLAG_MPSAFE, $ptr, 0, \'sysctl_dpcpu_long\', \\"LU\\", $descr); }  &SYSINIT($name,  &SI_SUB_LAST,  &SI_ORDER_MIDDLE, $name   &_add_proc,  &NULL););
	    }' unless defined(&SCHED_STAT_DEFINE_VAR);
	    eval 'sub SCHED_STAT_DEFINE {
	        my($name, $descr) = @_;
    		eval q( &DPCPU_DEFINE(\'unsigned long\', $name);  &SCHED_STAT_DEFINE_VAR($name,  &DPCPU_NAME($name), $descr));
	    }' unless defined(&SCHED_STAT_DEFINE);
	    eval 'sub SCHED_STAT_INC {
	        my($var) = @_;
    		eval q( &DPCPU_GET($var)++;);
	    }' unless defined(&SCHED_STAT_INC);
	} else {
	    eval 'sub SCHED_STAT_DEFINE_VAR {
	        my($name, $descr, $ptr) = @_;
    		eval q();
	    }' unless defined(&SCHED_STAT_DEFINE_VAR);
	    eval 'sub SCHED_STAT_DEFINE {
	        my($name, $descr) = @_;
    		eval q();
	    }' unless defined(&SCHED_STAT_DEFINE);
	    eval 'sub SCHED_STAT_INC {
	        my($var) = @_;
    		eval q(( &void)0);
	    }' unless defined(&SCHED_STAT_INC);
	}
    }
    eval 'sub SCHED_FIFO () {1;}' unless defined(&SCHED_FIFO);
    eval 'sub SCHED_OTHER () {2;}' unless defined(&SCHED_OTHER);
    eval 'sub SCHED_RR () {3;}' unless defined(&SCHED_RR);
    unless(defined(&_KERNEL)) {
	require 'sys/cdefs.ph';
	require 'sys/_types.ph';
	unless(defined(&_PID_T_DECLARED)) {
	    eval 'sub _PID_T_DECLARED () {1;}' unless defined(&_PID_T_DECLARED);
	}
    }
}
1;
