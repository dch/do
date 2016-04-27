require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__hx509_private_h__)) {
    eval 'sub __hx509_private_h__ () {1;}' unless defined(&__hx509_private_h__);
    require 'stdarg.ph';
    if(!defined(&__GNUC__)  && !defined(&__attribute__)) {
	eval 'sub __attribute__ {
	    my($x) = @_;
    	    eval q();
	}' unless defined(&__attribute__);
    }
}
1;
