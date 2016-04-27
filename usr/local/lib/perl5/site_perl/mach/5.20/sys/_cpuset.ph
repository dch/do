require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS__CPUSET_H_)) {
    eval 'sub _SYS__CPUSET_H_ () {1;}' unless defined(&_SYS__CPUSET_H_);
    require 'sys/_bitset.ph';
    if(defined(&_KERNEL)) {
	eval 'sub CPU_SETSIZE () { &MAXCPU;}' unless defined(&CPU_SETSIZE);
    }
    eval 'sub CPU_MAXSIZE () {256;}' unless defined(&CPU_MAXSIZE);
    unless(defined(&CPU_SETSIZE)) {
	eval 'sub CPU_SETSIZE () { &CPU_MAXSIZE;}' unless defined(&CPU_SETSIZE);
    }
    eval 'sub _NCPUBITS () { &_BITSET_BITS;}' unless defined(&_NCPUBITS);
    eval 'sub _NCPUWORDS () { &__bitset_words( &CPU_SETSIZE);}' unless defined(&_NCPUWORDS);
    eval 'sub CPUSET_FSET () { &BITSET_FSET( &_NCPUWORDS);}' unless defined(&CPUSET_FSET);
    eval 'sub CPUSET_T_INITIALIZER () { &BITSET_T_INITIALIZER;}' unless defined(&CPUSET_T_INITIALIZER);
}
1;
