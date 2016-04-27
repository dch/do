require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_PROCCTL_H_)) {
    eval 'sub _SYS_PROCCTL_H_ () {1;}' unless defined(&_SYS_PROCCTL_H_);
    eval 'sub PROC_SPROTECT () {1;}' unless defined(&PROC_SPROTECT);
    eval 'sub PPROT_OP {
        my($x) = @_;
	    eval q((($x) & 0xf));
    }' unless defined(&PPROT_OP);
    eval 'sub PPROT_SET () {1;}' unless defined(&PPROT_SET);
    eval 'sub PPROT_CLEAR () {2;}' unless defined(&PPROT_CLEAR);
    eval 'sub PPROT_FLAGS {
        my($x) = @_;
	    eval q((($x) & ~0xf));
    }' unless defined(&PPROT_FLAGS);
    eval 'sub PPROT_DESCEND () {0x10;}' unless defined(&PPROT_DESCEND);
    eval 'sub PPROT_INHERIT () {0x20;}' unless defined(&PPROT_INHERIT);
    unless(defined(&_KERNEL)) {
	require 'sys/types.ph';
	require 'sys/wait.ph';
    }
}
1;
