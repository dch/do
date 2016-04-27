require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__PARSE_UNITS_H__)) {
    eval 'sub __PARSE_UNITS_H__ () {1;}' unless defined(&__PARSE_UNITS_H__);
    require 'stdio.ph';
    require 'stddef.ph';
    unless(defined(&ROKEN_LIB_FUNCTION)) {
	if(defined(&_WIN32)) {
	    eval 'sub ROKEN_LIB_FUNCTION () {1;}' unless defined(&ROKEN_LIB_FUNCTION);
	    eval 'sub ROKEN_LIB_CALL () { &__cdecl;}' unless defined(&ROKEN_LIB_CALL);
	} else {
	    eval 'sub ROKEN_LIB_FUNCTION () {1;}' unless defined(&ROKEN_LIB_FUNCTION);
	    eval 'sub ROKEN_LIB_CALL () {1;}' unless defined(&ROKEN_LIB_CALL);
	}
    }
}
1;
