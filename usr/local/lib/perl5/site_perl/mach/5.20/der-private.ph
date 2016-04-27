require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__der_private_h__)) {
    eval 'sub __der_private_h__ () {1;}' unless defined(&__der_private_h__);
    require 'stdarg.ph';
}
1;
