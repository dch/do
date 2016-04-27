require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_VMMAPI_H_)) {
    eval 'sub _VMMAPI_H_ () {1;}' unless defined(&_VMMAPI_H_);
    require 'sys/param.ph';
    require 'sys/cpuset.ph';
    eval("sub VM_MMAP_NONE () { 0; }") unless defined(&VM_MMAP_NONE);
    eval("sub VM_MMAP_ALL () { 1; }") unless defined(&VM_MMAP_ALL);
    eval("sub VM_MMAP_SPARSE () { 2; }") unless defined(&VM_MMAP_SPARSE);
    eval 'sub VM_MEM_F_INCORE () {0x1;}' unless defined(&VM_MEM_F_INCORE);
}
1;
