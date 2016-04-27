require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_UUID_H_)) {
    eval 'sub _SYS_UUID_H_ () {1;}' unless defined(&_SYS_UUID_H_);
    require 'sys/cdefs.ph';
    eval 'sub _UUID_NODE_LEN () {6;}' unless defined(&_UUID_NODE_LEN);
    if(defined(&_KERNEL)) {
	eval 'sub UUID_NODE_LEN () { &_UUID_NODE_LEN;}' unless defined(&UUID_NODE_LEN);
    } else {
    }
}
1;
