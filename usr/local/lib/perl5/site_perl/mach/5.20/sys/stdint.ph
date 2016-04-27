require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_STDINT_H_)) {
    eval 'sub _SYS_STDINT_H_ () {1;}' unless defined(&_SYS_STDINT_H_);
    require 'sys/cdefs.ph';
    require 'sys/_types.ph';
    require 'machine/_stdint.ph';
    require 'sys/_stdint.ph';
    unless(defined(&_INTMAX_T_DECLARED)) {
	eval 'sub _INTMAX_T_DECLARED () {1;}' unless defined(&_INTMAX_T_DECLARED);
    }
    unless(defined(&_UINTMAX_T_DECLARED)) {
	eval 'sub _UINTMAX_T_DECLARED () {1;}' unless defined(&_UINTMAX_T_DECLARED);
    }
    if(defined(&UINTPTR_MAX)  && defined(&UINT64_MAX)  && ((defined(&UINTPTR_MAX) ? &UINTPTR_MAX : undef) == (defined(&UINT64_MAX) ? &UINT64_MAX : undef))) {
	eval 'sub __WORDSIZE () {64;}' unless defined(&__WORDSIZE);
    } else {
	eval 'sub __WORDSIZE () {32;}' unless defined(&__WORDSIZE);
    }
    eval 'sub WCHAR_MIN () { &__WCHAR_MIN;}' unless defined(&WCHAR_MIN);
    eval 'sub WCHAR_MAX () { &__WCHAR_MAX;}' unless defined(&WCHAR_MAX);
}
1;
