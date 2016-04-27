require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_WIND_H_)) {
    eval 'sub _WIND_H_ () {1;}' unless defined(&_WIND_H_);
    require 'stddef.ph';
    require 'krb5-types.ph';
    require 'wind_err.ph';
    eval 'sub WIND_PROFILE_NAME () {0x1;}' unless defined(&WIND_PROFILE_NAME);
    eval 'sub WIND_PROFILE_SASL () {0x2;}' unless defined(&WIND_PROFILE_SASL);
    eval 'sub WIND_PROFILE_LDAP () {0x4;}' unless defined(&WIND_PROFILE_LDAP);
    eval 'sub WIND_PROFILE_LDAP_CASE () {0x8;}' unless defined(&WIND_PROFILE_LDAP_CASE);
    eval 'sub WIND_PROFILE_LDAP_CASE_EXACT_ATTRIBUTE () {0x10000;}' unless defined(&WIND_PROFILE_LDAP_CASE_EXACT_ATTRIBUTE);
    eval 'sub WIND_PROFILE_LDAP_CASE_EXACT_ASSERTION () {0x20000;}' unless defined(&WIND_PROFILE_LDAP_CASE_EXACT_ASSERTION);
    eval 'sub WIND_PROFILE_LDAP_NUMERIC () {0x40000;}' unless defined(&WIND_PROFILE_LDAP_NUMERIC);
    eval 'sub WIND_PROFILE_LDAP_TELEPHONE () {0x80000;}' unless defined(&WIND_PROFILE_LDAP_TELEPHONE);
    eval 'sub WIND_RW_LE () {1;}' unless defined(&WIND_RW_LE);
    eval 'sub WIND_RW_BE () {2;}' unless defined(&WIND_RW_BE);
    eval 'sub WIND_RW_BOM () {4;}' unless defined(&WIND_RW_BOM);
}
1;
