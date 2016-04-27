require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS__TYPES_H_)) {
    eval 'sub _SYS__TYPES_H_ () {1;}' unless defined(&_SYS__TYPES_H_);
    require 'sys/cdefs.ph';
    require 'machine/_types.ph';
    if(!defined(&__clang__) || !defined(&__cplusplus)) {
    }
    if(defined(&__cplusplus)  && (defined(&__cplusplus) ? &__cplusplus : undef) >= 201103) {
	eval 'sub _CHAR16_T_DECLARED () {1;}' unless defined(&_CHAR16_T_DECLARED);
	eval 'sub _CHAR32_T_DECLARED () {1;}' unless defined(&_CHAR32_T_DECLARED);
    }
}
1;
