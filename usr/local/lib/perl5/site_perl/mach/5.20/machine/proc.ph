require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_PROC_H_)) {
    eval 'sub _MACHINE_PROC_H_ () {1;}' unless defined(&_MACHINE_PROC_H_);
    require 'machine/segments.ph';
    eval 'sub KINFO_PROC_SIZE () {1088;}' unless defined(&KINFO_PROC_SIZE);
    eval 'sub KINFO_PROC32_SIZE () {768;}' unless defined(&KINFO_PROC32_SIZE);
    if(defined(&_KERNEL)) {
	eval 'sub GET_STACK_USAGE {
	    my($total, $used) = @_;
    	    eval q( &do { \'struct thread\' * &td =  &curthread; =  ($td->{td_kstack_pages}) *  &PAGE_SIZE; =  ($td->{td_kstack}) +  ($td->{td_kstack_pages}) *  &PAGE_SIZE -  &td; }  &while (0));
	}' unless defined(&GET_STACK_USAGE);
    }
}
1;
