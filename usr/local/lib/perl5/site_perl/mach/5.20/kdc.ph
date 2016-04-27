require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__KDC_H__)) {
    eval 'sub __KDC_H__ () {1;}' unless defined(&__KDC_H__);
    require 'hdb.ph';
    require 'krb5.ph';
    eval("sub TRPOLICY_ALWAYS_CHECK () { 0; }") unless defined(&TRPOLICY_ALWAYS_CHECK);
    eval("sub TRPOLICY_ALLOW_PER_PRINCIPAL () { 1; }") unless defined(&TRPOLICY_ALLOW_PER_PRINCIPAL);
    eval("sub TRPOLICY_ALWAYS_HONOUR_REQUEST () { 2; }") unless defined(&TRPOLICY_ALWAYS_HONOUR_REQUEST);
    eval 'sub KS_KRB5 () {1;}' unless defined(&KS_KRB5);
    eval 'sub KS_NO_LENGTH () {2;}' unless defined(&KS_NO_LENGTH);
    require 'kdc-protos.ph';
}
1;
