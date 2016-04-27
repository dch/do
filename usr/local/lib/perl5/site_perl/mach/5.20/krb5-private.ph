require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__krb5_private_h__)) {
    eval 'sub __krb5_private_h__ () {1;}' unless defined(&__krb5_private_h__);
    require 'stdarg.ph';
    if(!defined(&__GNUC__)  && !defined(&__attribute__)) {
	eval 'sub __attribute__ {
	    my($x) = @_;
    	    eval q();
	}' unless defined(&__attribute__);
    }
    unless(defined(&KRB5_DEPRECATED_FUNCTION)) {
	if(defined(&__GNUC__)  && (((defined(&__GNUC__) ? &__GNUC__ : undef) > 3) || (((defined(&__GNUC__) ? &__GNUC__ : undef) == 3)  && ((defined(&__GNUC_MINOR__) ? &__GNUC_MINOR__ : undef) >= 1)))) {
	    eval 'sub KRB5_DEPRECATED_FUNCTION {
	        my($X) = @_;
    		eval q( &__attribute__(( &__deprecated__)));
	    }' unless defined(&KRB5_DEPRECATED_FUNCTION);
	} else {
	    eval 'sub KRB5_DEPRECATED_FUNCTION {
	        my($X) = @_;
    		eval q();
	    }' unless defined(&KRB5_DEPRECATED_FUNCTION);
	}
    }
    undef(&KRB5_DEPRECATED_FUNCTION) if defined(&KRB5_DEPRECATED_FUNCTION);
    eval 'sub KRB5_DEPRECATED_FUNCTION {
        my($X) = @_;
	    eval q();
    }' unless defined(&KRB5_DEPRECATED_FUNCTION);
}
1;
