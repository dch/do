require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__pkcs9_asn1_h__)) {
    eval 'sub __pkcs9_asn1_h__ () {1;}' unless defined(&__pkcs9_asn1_h__);
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
    eval 'sub ASN1_OID_ID_PKCS_9 () {( &asn1_oid_id_pkcs_9);}' unless defined(&ASN1_OID_ID_PKCS_9);
    eval 'sub ASN1_OID_ID_PKCS9_EMAILADDRESS () {( &asn1_oid_id_pkcs9_emailAddress);}' unless defined(&ASN1_OID_ID_PKCS9_EMAILADDRESS);
    eval 'sub ASN1_OID_ID_PKCS9_CONTENTTYPE () {( &asn1_oid_id_pkcs9_contentType);}' unless defined(&ASN1_OID_ID_PKCS9_CONTENTTYPE);
    eval 'sub ASN1_OID_ID_PKCS9_MESSAGEDIGEST () {( &asn1_oid_id_pkcs9_messageDigest);}' unless defined(&ASN1_OID_ID_PKCS9_MESSAGEDIGEST);
    eval 'sub ASN1_OID_ID_PKCS9_SIGNINGTIME () {( &asn1_oid_id_pkcs9_signingTime);}' unless defined(&ASN1_OID_ID_PKCS9_SIGNINGTIME);
    eval 'sub ASN1_OID_ID_PKCS9_COUNTERSIGNATURE () {( &asn1_oid_id_pkcs9_countersignature);}' unless defined(&ASN1_OID_ID_PKCS9_COUNTERSIGNATURE);
    eval 'sub ASN1_OID_ID_PKCS_9_AT_FRIENDLYNAME () {( &asn1_oid_id_pkcs_9_at_friendlyName);}' unless defined(&ASN1_OID_ID_PKCS_9_AT_FRIENDLYNAME);
    eval 'sub ASN1_OID_ID_PKCS_9_AT_LOCALKEYID () {( &asn1_oid_id_pkcs_9_at_localKeyId);}' unless defined(&ASN1_OID_ID_PKCS_9_AT_LOCALKEYID);
    eval 'sub ASN1_OID_ID_PKCS_9_AT_CERTTYPES () {( &asn1_oid_id_pkcs_9_at_certTypes);}' unless defined(&ASN1_OID_ID_PKCS_9_AT_CERTTYPES);
    eval 'sub ASN1_OID_ID_PKCS_9_AT_CERTTYPES_X509 () {( &asn1_oid_id_pkcs_9_at_certTypes_x509);}' unless defined(&ASN1_OID_ID_PKCS_9_AT_CERTTYPES_X509);
}
1;
