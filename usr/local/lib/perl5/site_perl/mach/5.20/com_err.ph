require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__COM_ERR_H__)) {
    eval 'sub __COM_ERR_H__ () {1;}' unless defined(&__COM_ERR_H__);
    require 'com_right.ph';
    require 'stdarg.ph';
    if(!defined(&__GNUC__)  && !defined(&__attribute__)) {
	eval 'sub __attribute__ {
	    my($X) = @_;
    	    eval q();
	}' unless defined(&__attribute__);
    }
}
1;
