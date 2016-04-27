require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__pkcs12_asn1_h__)) {
    eval 'sub __pkcs12_asn1_h__ () {1;}' unless defined(&__pkcs12_asn1_h__);
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
    require 'cms_asn1.ph';
    require 'rfc2459_asn1.ph';
    require 'heim_asn1.ph';
    eval 'sub ASN1_OID_ID_PKCS_12 () {( &asn1_oid_id_pkcs_12);}' unless defined(&ASN1_OID_ID_PKCS_12);
    eval 'sub ASN1_OID_ID_PKCS_12PBEIDS () {( &asn1_oid_id_pkcs_12PbeIds);}' unless defined(&ASN1_OID_ID_PKCS_12PBEIDS);
    eval 'sub ASN1_OID_ID_PBEWITHSHAAND128BITRC4 () {( &asn1_oid_id_pbeWithSHAAnd128BitRC4);}' unless defined(&ASN1_OID_ID_PBEWITHSHAAND128BITRC4);
    eval 'sub ASN1_OID_ID_PBEWITHSHAAND40BITRC4 () {( &asn1_oid_id_pbeWithSHAAnd40BitRC4);}' unless defined(&ASN1_OID_ID_PBEWITHSHAAND40BITRC4);
    eval 'sub ASN1_OID_ID_PBEWITHSHAAND3_KEYTRIPLEDES_CBC () {( &asn1_oid_id_pbeWithSHAAnd3_KeyTripleDES_CBC);}' unless defined(&ASN1_OID_ID_PBEWITHSHAAND3_KEYTRIPLEDES_CBC);
    eval 'sub ASN1_OID_ID_PBEWITHSHAAND2_KEYTRIPLEDES_CBC () {( &asn1_oid_id_pbeWithSHAAnd2_KeyTripleDES_CBC);}' unless defined(&ASN1_OID_ID_PBEWITHSHAAND2_KEYTRIPLEDES_CBC);
    eval 'sub ASN1_OID_ID_PBEWITHSHAAND128BITRC2_CBC () {( &asn1_oid_id_pbeWithSHAAnd128BitRC2_CBC);}' unless defined(&ASN1_OID_ID_PBEWITHSHAAND128BITRC2_CBC);
    eval 'sub ASN1_OID_ID_PBEWITHSHAAND40BITRC2_CBC () {( &asn1_oid_id_pbewithSHAAnd40BitRC2_CBC);}' unless defined(&ASN1_OID_ID_PBEWITHSHAAND40BITRC2_CBC);
    eval 'sub ASN1_OID_ID_PKCS12_BAGTYPES () {( &asn1_oid_id_pkcs12_bagtypes);}' unless defined(&ASN1_OID_ID_PKCS12_BAGTYPES);
    eval 'sub ASN1_OID_ID_PKCS12_KEYBAG () {( &asn1_oid_id_pkcs12_keyBag);}' unless defined(&ASN1_OID_ID_PKCS12_KEYBAG);
    eval 'sub ASN1_OID_ID_PKCS12_PKCS8SHROUDEDKEYBAG () {( &asn1_oid_id_pkcs12_pkcs8ShroudedKeyBag);}' unless defined(&ASN1_OID_ID_PKCS12_PKCS8SHROUDEDKEYBAG);
    eval 'sub ASN1_OID_ID_PKCS12_CERTBAG () {( &asn1_oid_id_pkcs12_certBag);}' unless defined(&ASN1_OID_ID_PKCS12_CERTBAG);
    eval 'sub ASN1_OID_ID_PKCS12_CRLBAG () {( &asn1_oid_id_pkcs12_crlBag);}' unless defined(&ASN1_OID_ID_PKCS12_CRLBAG);
    eval 'sub ASN1_OID_ID_PKCS12_SECRETBAG () {( &asn1_oid_id_pkcs12_secretBag);}' unless defined(&ASN1_OID_ID_PKCS12_SECRETBAG);
    eval 'sub ASN1_OID_ID_PKCS12_SAFECONTENTSBAG () {( &asn1_oid_id_pkcs12_safeContentsBag);}' unless defined(&ASN1_OID_ID_PKCS12_SAFECONTENTSBAG);
}
1;
