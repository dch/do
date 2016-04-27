require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_rk_HEX_H_)) {
    eval 'sub _rk_HEX_H_ () {1;}' unless defined(&_rk_HEX_H_);
    unless(defined(&ROKEN_LIB_FUNCTION)) {
	if(defined(&_WIN32)) {
	    eval 'sub ROKEN_LIB_FUNCTION () {1;}' unless defined(&ROKEN_LIB_FUNCTION);
	    eval 'sub ROKEN_LIB_CALL () { &__cdecl;}' unless defined(&ROKEN_LIB_CALL);
	} else {
	    eval 'sub ROKEN_LIB_FUNCTION () {1;}' unless defined(&ROKEN_LIB_FUNCTION);
	    eval 'sub ROKEN_LIB_CALL () {1;}' unless defined(&ROKEN_LIB_CALL);
	}
    }
    eval 'sub hex_encode () { &rk_hex_encode;}' unless defined(&hex_encode);
    eval 'sub hex_decode () { &rk_hex_decode;}' unless defined(&hex_decode);
}
1;
