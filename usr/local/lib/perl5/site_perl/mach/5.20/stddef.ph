require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_STDDEF_H_)) {
    eval 'sub _STDDEF_H_ () {1;}' unless defined(&_STDDEF_H_);
    require 'sys/cdefs.ph';
    require 'sys/_null.ph';
    require 'sys/_types.ph';
    if((defined(&__BSD_VISIBLE) ? &__BSD_VISIBLE : undef)) {
	unless(defined(&_RUNE_T_DECLARED)) {
	    eval 'sub _RUNE_T_DECLARED () {1;}' unless defined(&_RUNE_T_DECLARED);
	}
    }
    unless(defined(&_SIZE_T_DECLARED)) {
	eval 'sub _SIZE_T_DECLARED () {1;}' unless defined(&_SIZE_T_DECLARED);
    }
    unless(defined(&__cplusplus)) {
	unless(defined(&_WCHAR_T_DECLARED)) {
	    eval 'sub _WCHAR_T_DECLARED () {1;}' unless defined(&_WCHAR_T_DECLARED);
	}
    }
    eval 'sub offsetof {
        my($type, $member) = @_;
	    eval q( &__offsetof($type, $member));
    }' unless defined(&offsetof);
}
1;
