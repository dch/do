require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS__KSTACK_CACHE_H)) {
    eval 'sub _SYS__KSTACK_CACHE_H () {1;}' unless defined(&_SYS__KSTACK_CACHE_H);
}
1;
