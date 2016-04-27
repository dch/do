require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__krb5_protos_h__)) {
    eval 'sub __krb5_protos_h__ () {1;}' unless defined(&__krb5_protos_h__);
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
    if(defined(&__cplusplus)) {
    }
    unless(defined(&KRB5_LIB)) {
	unless(defined(&KRB5_LIB_FUNCTION)) {
	    if(defined(&_WIN32)) {
		eval 'sub KRB5_LIB_FUNCTION () { &__declspec( &dllimport);}' unless defined(&KRB5_LIB_FUNCTION);
		eval 'sub KRB5_LIB_CALL () { &__stdcall;}' unless defined(&KRB5_LIB_CALL);
		eval 'sub KRB5_LIB_VARIABLE () { &__declspec( &dllimport);}' unless defined(&KRB5_LIB_VARIABLE);
	    } else {
		eval 'sub KRB5_LIB_FUNCTION () {1;}' unless defined(&KRB5_LIB_FUNCTION);
		eval 'sub KRB5_LIB_CALL () {1;}' unless defined(&KRB5_LIB_CALL);
		eval 'sub KRB5_LIB_VARIABLE () {1;}' unless defined(&KRB5_LIB_VARIABLE);
	    }
	}
    }
    if(defined(&__cplusplus)) {
    }
    undef(&KRB5_DEPRECATED_FUNCTION) if defined(&KRB5_DEPRECATED_FUNCTION);
}
1;
