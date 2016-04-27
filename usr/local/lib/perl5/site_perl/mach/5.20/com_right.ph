require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__COM_RIGHT_H__)) {
    eval 'sub __COM_RIGHT_H__ () {1;}' unless defined(&__COM_RIGHT_H__);
    unless(defined(&KRB5_LIB_FUNCTION)) {
	if(defined(&_WIN32)) {
	    eval 'sub KRB5_LIB_FUNCTION () { &__declspec( &dllimport);}' unless defined(&KRB5_LIB_FUNCTION);
	} else {
	    eval 'sub KRB5_LIB_FUNCTION () {1;}' unless defined(&KRB5_LIB_FUNCTION);
	}
    }
    unless(defined(&KRB5_LIB_CALL)) {
	if(defined(&_WIN32)) {
	    eval 'sub KRB5_LIB_CALL () { &__stdcall;}' unless defined(&KRB5_LIB_CALL);
	} else {
	    eval 'sub KRB5_LIB_CALL () {1;}' unless defined(&KRB5_LIB_CALL);
	}
    }
    unless(defined(&KRB5_LIB_VARIABLE)) {
	if(defined(&_WIN32)) {
	    eval 'sub KRB5_LIB_VARIABLE () { &__declspec( &dllimport);}' unless defined(&KRB5_LIB_VARIABLE);
	} else {
	    eval 'sub KRB5_LIB_VARIABLE () {1;}' unless defined(&KRB5_LIB_VARIABLE);
	}
    }
    if(defined(&_WIN32)) {
	eval 'sub KRB5_CALLCONV () { &__stdcall;}' unless defined(&KRB5_CALLCONV);
    } else {
	eval 'sub KRB5_CALLCONV () {1;}' unless defined(&KRB5_CALLCONV);
    }
    require 'sys/cdefs.ph';
    if(defined(&__STDC__)) {
	require 'stdarg.ph';
    }
}
1;
