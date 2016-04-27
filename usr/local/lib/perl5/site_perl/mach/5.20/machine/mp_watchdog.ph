require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_MP_WATCHDOG_H_)) {
    eval 'sub _MACHINE_MP_WATCHDOG_H_ () {1;}' unless defined(&_MACHINE_MP_WATCHDOG_H_);
}
1;
