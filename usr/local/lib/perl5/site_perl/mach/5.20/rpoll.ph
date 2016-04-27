require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&rpoll_h_)) {
    eval 'sub rpoll_h_ () {1;}' unless defined(&rpoll_h_);
    if(defined(&__cplusplus)) {
    }
    if(defined(&POLL_IN)) {
	undef(&POLL_IN) if defined(&POLL_IN);
    }
    if(defined(&POLL_OUT)) {
	undef(&POLL_OUT) if defined(&POLL_OUT);
    }
    eval 'sub POLL_IN () {1;}' unless defined(&POLL_IN);
    eval 'sub POLL_OUT () {2;}' unless defined(&POLL_OUT);
    eval 'sub POLL_EXCEPT () {4;}' unless defined(&POLL_EXCEPT);
    if(defined(&__cplusplus)) {
    }
}
1;
