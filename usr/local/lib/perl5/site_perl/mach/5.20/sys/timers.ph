require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_TIMERS_H_)) {
    eval 'sub _SYS_TIMERS_H_ () {1;}' unless defined(&_SYS_TIMERS_H_);
    require 'sys/time.ph';
    if(defined(&_KERNEL)) {
	eval 'sub it_callout () { ($_data->{_rt}->{it_callout});}' unless defined(&it_callout);
	eval 'sub it_link () { ($_data->{_cpu}->{it_link});}' unless defined(&it_link);
	eval 'sub it_active () { ($_data->{_cpu}->{it_active});}' unless defined(&it_active);
	eval 'sub it_worklink () { ($_data->{_cpu}->{it_worklink});}' unless defined(&it_worklink);
	eval 'sub it_cflags () { ($_data->{_cpu}->{it_cflags});}' unless defined(&it_cflags);
	eval 'sub ITF_DELETING () {0x1;}' unless defined(&ITF_DELETING);
	eval 'sub ITF_WANTED () {0x2;}' unless defined(&ITF_WANTED);
	eval 'sub ITCF_ONWORKLIST () {0x1;}' unless defined(&ITCF_ONWORKLIST);
	eval 'sub TIMER_MAX () {32;}' unless defined(&TIMER_MAX);
	eval 'sub ITIMER_LOCK {
	    my($it) = @_;
    	    eval q( &mtx_lock(($it)-> &it_mtx));
	}' unless defined(&ITIMER_LOCK);
	eval 'sub ITIMER_UNLOCK {
	    my($it) = @_;
    	    eval q( &mtx_unlock(($it)-> &it_mtx));
	}' unless defined(&ITIMER_UNLOCK);
	eval 'sub ITIMER_EV_EXEC () {0;}' unless defined(&ITIMER_EV_EXEC);
	eval 'sub ITIMER_EV_EXIT () {1;}' unless defined(&ITIMER_EV_EXIT);
    }
}
1;
