require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__hdb_asn1_h__)) {
    eval 'sub __hdb_asn1_h__ () {1;}' unless defined(&__hdb_asn1_h__);
    require 'stddef.ph';
    require 'time.ph';
    unless(defined(&__asn1_common_definitions__)) {
	eval 'sub __asn1_common_definitions__ () {1;}' unless defined(&__asn1_common_definitions__);
	eval 'sub ASN1_MALLOC_ENCODE {
	    my($T, $B, $BL, $S, $L, $R) = @_;
    	    eval q( &do { ($BL) =  &length_$T(($S)); ($B) =  &malloc(($BL));  &if(($B) ==  &NULL) { ($R) =  &ENOMEM; }  &else { ($R) =  &encode_$T((($B)) + ($BL) - 1, ($BL), ($S), ($L));  &if(($R) != 0) {  &free(($B)); ($B) =  &NULL; } } }  &while (0));
	}' unless defined(&ASN1_MALLOC_ENCODE);
	if(defined(&_WIN32)) {
	    unless(defined(&ASN1_LIB)) {
		eval 'sub ASN1EXP () { &__declspec( &dllimport);}' unless defined(&ASN1EXP);
	    } else {
		eval 'sub ASN1EXP () {1;}' unless defined(&ASN1EXP);
	    }
	    eval 'sub ASN1CALL () { &__stdcall;}' unless defined(&ASN1CALL);
	} else {
	    eval 'sub ASN1EXP () {1;}' unless defined(&ASN1EXP);
	    eval 'sub ASN1CALL () {1;}' unless defined(&ASN1CALL);
	}
    }
    require 'krb5_asn1.ph';
    eval("sub HDB_DB_FORMAT () { 2; }") unless defined(&HDB_DB_FORMAT);
    eval("sub hdb_pw_salt () { 3; }") unless defined(&hdb_pw_salt);
    eval("sub hdb_afs3_salt () { 10; }") unless defined(&hdb_afs3_salt);
    eval("sub choice_HDB_extension_data_asn1_ellipsis () { 0; }") unless defined(&choice_HDB_extension_data_asn1_ellipsis);
    eval("sub choice_HDB_extension_data_pkinit_acl () { 1; }") unless defined(&choice_HDB_extension_data_pkinit_acl);
    eval("sub choice_HDB_extension_data_pkinit_cert_hash () { 2; }") unless defined(&choice_HDB_extension_data_pkinit_cert_hash);
    eval("sub choice_HDB_extension_data_allowed_to_delegate_to () { 3; }") unless defined(&choice_HDB_extension_data_allowed_to_delegate_to);
    eval("sub choice_HDB_extension_data_lm_owf () { 4; }") unless defined(&choice_HDB_extension_data_lm_owf);
    eval("sub choice_HDB_extension_data_password () { 5; }") unless defined(&choice_HDB_extension_data_password);
    eval("sub choice_HDB_extension_data_aliases () { 6; }") unless defined(&choice_HDB_extension_data_aliases);
    eval("sub choice_HDB_extension_data_last_pw_change () { 7; }") unless defined(&choice_HDB_extension_data_last_pw_change);
    eval("sub choice_HDB_extension_data_pkinit_cert () { 8; }") unless defined(&choice_HDB_extension_data_pkinit_cert);
}
1;
