require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__cms_asn1_h__)) {
    eval 'sub __cms_asn1_h__ () {1;}' unless defined(&__cms_asn1_h__);
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
    require 'rfc2459_asn1.ph';
    require 'heim_asn1.ph';
    eval 'sub ASN1_OID_ID_PKCS7 () {( &asn1_oid_id_pkcs7);}' unless defined(&ASN1_OID_ID_PKCS7);
    eval 'sub ASN1_OID_ID_PKCS7_DATA () {( &asn1_oid_id_pkcs7_data);}' unless defined(&ASN1_OID_ID_PKCS7_DATA);
    eval 'sub ASN1_OID_ID_PKCS7_SIGNEDDATA () {( &asn1_oid_id_pkcs7_signedData);}' unless defined(&ASN1_OID_ID_PKCS7_SIGNEDDATA);
    eval 'sub ASN1_OID_ID_PKCS7_ENVELOPEDDATA () {( &asn1_oid_id_pkcs7_envelopedData);}' unless defined(&ASN1_OID_ID_PKCS7_ENVELOPEDDATA);
    eval 'sub ASN1_OID_ID_PKCS7_SIGNEDANDENVELOPEDDATA () {( &asn1_oid_id_pkcs7_signedAndEnvelopedData);}' unless defined(&ASN1_OID_ID_PKCS7_SIGNEDANDENVELOPEDDATA);
    eval 'sub ASN1_OID_ID_PKCS7_DIGESTEDDATA () {( &asn1_oid_id_pkcs7_digestedData);}' unless defined(&ASN1_OID_ID_PKCS7_DIGESTEDDATA);
    eval 'sub ASN1_OID_ID_PKCS7_ENCRYPTEDDATA () {( &asn1_oid_id_pkcs7_encryptedData);}' unless defined(&ASN1_OID_ID_PKCS7_ENCRYPTEDDATA);
    eval("sub CMSVersion_v0 () { 0; }") unless defined(&CMSVersion_v0);
    eval("sub CMSVersion_v1 () { 1; }") unless defined(&CMSVersion_v1);
    eval("sub CMSVersion_v2 () { 2; }") unless defined(&CMSVersion_v2);
    eval("sub CMSVersion_v3 () { 3; }") unless defined(&CMSVersion_v3);
    eval("sub CMSVersion_v4 () { 4; }") unless defined(&CMSVersion_v4);
    eval("sub choice_CMSIdentifier_issuerAndSerialNumber () { 1; }") unless defined(&choice_CMSIdentifier_issuerAndSerialNumber);
    eval("sub choice_CMSIdentifier_subjectKeyIdentifier () { 2; }") unless defined(&choice_CMSIdentifier_subjectKeyIdentifier);
}
1;
