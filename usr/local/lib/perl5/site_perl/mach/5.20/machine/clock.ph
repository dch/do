require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_CLOCK_H_)) {
    eval 'sub _MACHINE_CLOCK_H_ () {1;}' unless defined(&_MACHINE_CLOCK_H_);
    if(defined(&_KERNEL)) {
	if(defined(&SMP)) {
	}
	eval 'sub HAS_TIMER_SPKR () {1;}' unless defined(&HAS_TIMER_SPKR);
    }
}
1;
