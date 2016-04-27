require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_SMP_H_)) {
    eval 'sub _MACHINE_SMP_H_ () {1;}' unless defined(&_MACHINE_SMP_H_);
    if(defined(&_KERNEL)) {
	if(defined(&SMP)) {
	    unless(defined(&LOCORE)) {
		require 'sys/bus.ph';
		require 'machine/frame.ph';
		require 'machine/intr_machdep.ph';
		require 'machine/apicvar.ph';
		require 'machine/pcb.ph';
		if(defined(&COUNT_IPIS)) {
		}
	    }
	}
    }
}
1;
