require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__rtbl_h__)) {
    eval 'sub __rtbl_h__ () {1;}' unless defined(&__rtbl_h__);
    unless(defined(&ROKEN_LIB_FUNCTION)) {
	if(defined(&_WIN32)) {
	    eval 'sub ROKEN_LIB_FUNCTION () {1;}' unless defined(&ROKEN_LIB_FUNCTION);
	    eval 'sub ROKEN_LIB_CALL () { &__cdecl;}' unless defined(&ROKEN_LIB_CALL);
	} else {
	    eval 'sub ROKEN_LIB_FUNCTION () {1;}' unless defined(&ROKEN_LIB_FUNCTION);
	    eval 'sub ROKEN_LIB_CALL () {1;}' unless defined(&ROKEN_LIB_CALL);
	}
    }
    if(!defined(&__GNUC__)  && !defined(&__attribute__)) {
	eval 'sub __attribute__ {
	    my($x) = @_;
    	    eval q();
	}' unless defined(&__attribute__);
    }
    if(defined(&__cplusplus)) {
    }
    eval 'sub RTBL_ALIGN_LEFT () {0;}' unless defined(&RTBL_ALIGN_LEFT);
    eval 'sub RTBL_ALIGN_RIGHT () {1;}' unless defined(&RTBL_ALIGN_RIGHT);
    eval 'sub RTBL_HEADER_STYLE_NONE () {1;}' unless defined(&RTBL_HEADER_STYLE_NONE);
    if(defined(&__cplusplus)) {
    }
}
1;
