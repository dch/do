require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_STACK_H_)) {
    eval 'sub _MACHINE_STACK_H_ () {1;}' unless defined(&_MACHINE_STACK_H_);
    eval 'sub INKERNEL {
        my($va) = @_;
	    eval q(((($va) >=  &DMAP_MIN_ADDRESS  && ($va) <  &DMAP_MAX_ADDRESS) || (($va) >=  &VM_MIN_KERNEL_ADDRESS  && ($va) <  &VM_MAX_KERNEL_ADDRESS)));
    }' unless defined(&INKERNEL);
}
1;
