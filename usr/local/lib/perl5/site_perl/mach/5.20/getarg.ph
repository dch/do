require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__GETARG_H__)) {
    eval 'sub __GETARG_H__ () {1;}' unless defined(&__GETARG_H__);
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
    eval("sub arg_integer () { 0; }") unless defined(&arg_integer);
    eval("sub arg_string () { 1; }") unless defined(&arg_string);
    eval("sub arg_flag () { 2; }") unless defined(&arg_flag);
    eval("sub arg_negative_flag () { 3; }") unless defined(&arg_negative_flag);
    eval("sub arg_strings () { 4; }") unless defined(&arg_strings);
    eval("sub arg_double () { 5; }") unless defined(&arg_double);
    eval("sub arg_collect () { 6; }") unless defined(&arg_collect);
    eval("sub arg_counter () { 7; }") unless defined(&arg_counter);
    eval("sub ARG_ERR_NO_MATCH () { 1; }") unless defined(&ARG_ERR_NO_MATCH);
    eval("sub ARG_ERR_BAD_ARG () { 2; }") unless defined(&ARG_ERR_BAD_ARG);
    eval("sub ARG_ERR_NO_ARG () { 3; }") unless defined(&ARG_ERR_NO_ARG);
}
1;
