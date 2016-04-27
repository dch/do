require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_UCONTEXT_H_)) {
    eval 'sub _SYS_UCONTEXT_H_ () {1;}' unless defined(&_SYS_UCONTEXT_H_);
    require 'sys/signal.ph';
    require 'machine/ucontext.ph';
    eval 'sub UCF_SWAPPED () {0x1;}' unless defined(&UCF_SWAPPED);
    if(defined(&_KERNEL)  && defined(&COMPAT_FREEBSD4)) {
	if(defined(&__i386__)) {
	} else {
	    eval 'sub ucontext4 () { &ucontext;}' unless defined(&ucontext4);
	}
    }
    unless(defined(&_KERNEL)) {
	if((defined(&__BSD_VISIBLE) ? &__BSD_VISIBLE : undef)) {
	}
    } else {
	eval 'sub GET_MC_CLEAR_RET () {1;}' unless defined(&GET_MC_CLEAR_RET);
    }
}
1;
