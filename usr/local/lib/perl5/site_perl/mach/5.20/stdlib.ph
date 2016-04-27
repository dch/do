require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_STDLIB_H_)) {
    eval 'sub _STDLIB_H_ () {1;}' unless defined(&_STDLIB_H_);
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
    eval 'sub EXIT_FAILURE () {1;}' unless defined(&EXIT_FAILURE);
    eval 'sub EXIT_SUCCESS () {0;}' unless defined(&EXIT_SUCCESS);
    eval 'sub RAND_MAX () {0x7ffffffd;}' unless defined(&RAND_MAX);
    if(defined(&_XLOCALE_H_)) {
	require 'xlocale/_stdlib.ph';
    }
    eval 'sub MB_CUR_MAX () {( &___mb_cur_max());}' unless defined(&MB_CUR_MAX);
    if((defined(&__ISO_C_VISIBLE) ? &__ISO_C_VISIBLE : undef) >= 1999) {
	if(defined(&__LONG_LONG_SUPPORTED)) {
	}
    }
    if((defined(&__ISO_C_VISIBLE) ? &__ISO_C_VISIBLE : undef) >= 2011|| (defined(&__cplusplus) ? &__cplusplus : undef) >= 201103) {
    }
    if((defined(&__POSIX_VISIBLE) ? &__POSIX_VISIBLE : undef) >= 199506|| (defined(&__XSI_VISIBLE) ? &__XSI_VISIBLE : undef)) {
    }
    if((defined(&__POSIX_VISIBLE) ? &__POSIX_VISIBLE : undef) >= 199506) {
    }
    if((defined(&__POSIX_VISIBLE) ? &__POSIX_VISIBLE : undef) >= 200112) {
    }
    if((defined(&__POSIX_VISIBLE) ? &__POSIX_VISIBLE : undef) >= 200809|| (defined(&__XSI_VISIBLE) ? &__XSI_VISIBLE : undef)) {
	unless(defined(&_MKDTEMP_DECLARED)) {
	    eval 'sub _MKDTEMP_DECLARED () {1;}' unless defined(&_MKDTEMP_DECLARED);
	}
	unless(defined(&_MKSTEMP_DECLARED)) {
	    eval 'sub _MKSTEMP_DECLARED () {1;}' unless defined(&_MKSTEMP_DECLARED);
	}
    }
    if((defined(&__XSI_VISIBLE) ? &__XSI_VISIBLE : undef)) {
	if(!defined(&_MKTEMP_DECLARED)  && ((defined(&__BSD_VISIBLE) ? &__BSD_VISIBLE : undef) || (defined(&__XSI_VISIBLE) ? &__XSI_VISIBLE : undef) <= 600)) {
	    eval 'sub _MKTEMP_DECLARED () {1;}' unless defined(&_MKTEMP_DECLARED);
	}
	unless(defined(&_SETKEY_DECLARED)) {
	    eval 'sub _SETKEY_DECLARED () {1;}' unless defined(&_SETKEY_DECLARED);
	}
    }
    if((defined(&__BSD_VISIBLE) ? &__BSD_VISIBLE : undef)) {
	if((defined(&__GNUC__) ? &__GNUC__ : undef) >= 2|| defined(&__INTEL_COMPILER)) {
	    undef(&alloca) if defined(&alloca);
	    eval 'sub alloca {
	        my($sz) = @_;
    		eval q( &__builtin_alloca($sz));
	    }' unless defined(&alloca);
	}
 elsif(defined(&lint)) {
	}
    }
}
1;
