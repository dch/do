require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_SEGMENTS_H_)) {
    eval 'sub _MACHINE_SEGMENTS_H_ () {1;}' unless defined(&_MACHINE_SEGMENTS_H_);
    require 'x86/segments.ph';
    if(defined(&_KERNEL)) {
    }
}
1;
