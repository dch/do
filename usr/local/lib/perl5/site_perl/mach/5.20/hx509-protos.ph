require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__hx509_protos_h__)) {
    eval 'sub __hx509_protos_h__ () {1;}' unless defined(&__hx509_protos_h__);
    require 'stdarg.ph';
    if(defined(&__cplusplus)) {
    }
    unless(defined(&HX509_LIB)) {
	unless(defined(&HX509_LIB_FUNCTION)) {
	    if(defined(&_WIN32)) {
		eval 'sub HX509_LIB_FUNCTION () { &__declspec( &dllimport);}' unless defined(&HX509_LIB_FUNCTION);
		eval 'sub HX509_LIB_CALL () { &__stdcall;}' unless defined(&HX509_LIB_CALL);
		eval 'sub HX509_LIB_VARIABLE () { &__declspec( &dllimport);}' unless defined(&HX509_LIB_VARIABLE);
	    } else {
		eval 'sub HX509_LIB_FUNCTION () {1;}' unless defined(&HX509_LIB_FUNCTION);
		eval 'sub HX509_LIB_CALL () {1;}' unless defined(&HX509_LIB_CALL);
		eval 'sub HX509_LIB_VARIABLE () {1;}' unless defined(&HX509_LIB_VARIABLE);
	    }
	}
    }
    if(defined(&__BLOCKS__)) {
    }
    if(defined(&__cplusplus)) {
    }
}
1;
