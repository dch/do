require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_TIMERREG_H_)) {
    eval 'sub _MACHINE_TIMERREG_H_ () {1;}' unless defined(&_MACHINE_TIMERREG_H_);
    if(defined(&_KERNEL)) {
	require 'dev/ic/i8253reg.ph';
	eval 'sub IO_TIMER1 () {0x40;}' unless defined(&IO_TIMER1);
	eval 'sub TIMER_CNTR0 () {( &IO_TIMER1 +  &TIMER_REG_CNTR0);}' unless defined(&TIMER_CNTR0);
	eval 'sub TIMER_CNTR1 () {( &IO_TIMER1 +  &TIMER_REG_CNTR1);}' unless defined(&TIMER_CNTR1);
	eval 'sub TIMER_CNTR2 () {( &IO_TIMER1 +  &TIMER_REG_CNTR2);}' unless defined(&TIMER_CNTR2);
	eval 'sub TIMER_MODE () {( &IO_TIMER1 +  &TIMER_REG_MODE);}' unless defined(&TIMER_MODE);
    }
}
1;
