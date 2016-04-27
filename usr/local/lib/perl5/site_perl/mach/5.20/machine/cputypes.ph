require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_CPUTYPES_H_)) {
    eval 'sub _MACHINE_CPUTYPES_H_ () {1;}' unless defined(&_MACHINE_CPUTYPES_H_);
    eval 'sub CPUCLASS_X86 () {0;}' unless defined(&CPUCLASS_X86);
    eval 'sub CPUCLASS_K8 () {1;}' unless defined(&CPUCLASS_K8);
    eval 'sub CPU_X86 () {0;}' unless defined(&CPU_X86);
    eval 'sub CPU_CLAWHAMMER () {1;}' unless defined(&CPU_CLAWHAMMER);
    eval 'sub CPU_SLEDGEHAMMER () {2;}' unless defined(&CPU_SLEDGEHAMMER);
    eval 'sub CPU_VENDOR_AMD () {0x1022;}' unless defined(&CPU_VENDOR_AMD);
    eval 'sub CPU_VENDOR_IDT () {0x111d;}' unless defined(&CPU_VENDOR_IDT);
    eval 'sub CPU_VENDOR_INTEL () {0x8086;}' unless defined(&CPU_VENDOR_INTEL);
    eval 'sub CPU_VENDOR_CENTAUR () { &CPU_VENDOR_IDT;}' unless defined(&CPU_VENDOR_CENTAUR);
    unless(defined(&LOCORE)) {
    }
}
1;
