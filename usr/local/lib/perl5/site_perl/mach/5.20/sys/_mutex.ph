require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS__MUTEX_H_)) {
    eval 'sub _SYS__MUTEX_H_ () {1;}' unless defined(&_SYS__MUTEX_H_);
    require 'machine/param.ph';
}
1;