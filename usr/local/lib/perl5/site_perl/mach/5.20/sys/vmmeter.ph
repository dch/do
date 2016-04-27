require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_VMMETER_H_)) {
    eval 'sub _SYS_VMMETER_H_ () {1;}' unless defined(&_SYS_VMMETER_H_);
    eval 'sub MAXSLP () {20;}' unless defined(&MAXSLP);
    if(defined(&_KERNEL)) {
    }
}
1;
