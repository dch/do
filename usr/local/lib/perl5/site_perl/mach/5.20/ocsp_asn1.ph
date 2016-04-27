require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__ocsp_asn1_h__)) {
    eval 'sub __ocsp_asn1_h__ () {1;}' unless defined(&__ocsp_asn1_h__);
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
    eval("sub ocsp_v1 () { 0; }") unless defined(&ocsp_v1);
    eval("sub choice_OCSPCertStatus_good () { 1; }") unless defined(&choice_OCSPCertStatus_good);
    eval("sub choice_OCSPCertStatus_revoked () { 2; }") unless defined(&choice_OCSPCertStatus_revoked);
    eval("sub choice_OCSPCertStatus_unknown () { 3; }") unless defined(&choice_OCSPCertStatus_unknown);
    eval("sub successful () { 0; }") unless defined(&successful);
    eval("sub malformedRequest () { 1; }") unless defined(&malformedRequest);
    eval("sub internalError () { 2; }") unless defined(&internalError);
    eval("sub tryLater () { 3; }") unless defined(&tryLater);
    eval("sub sigRequired () { 5; }") unless defined(&sigRequired);
    eval("sub unauthorized () { 6; }") unless defined(&unauthorized);
    eval("sub choice_OCSPResponderID_byName () { 1; }") unless defined(&choice_OCSPResponderID_byName);
    eval("sub choice_OCSPResponderID_byKey () { 2; }") unless defined(&choice_OCSPResponderID_byKey);
    eval 'sub ASN1_OID_ID_PKIX_OCSP () {( &asn1_oid_id_pkix_ocsp);}' unless defined(&ASN1_OID_ID_PKIX_OCSP);
    eval 'sub ASN1_OID_ID_PKIX_OCSP_BASIC () {( &asn1_oid_id_pkix_ocsp_basic);}' unless defined(&ASN1_OID_ID_PKIX_OCSP_BASIC);
    eval 'sub ASN1_OID_ID_PKIX_OCSP_NONCE () {( &asn1_oid_id_pkix_ocsp_nonce);}' unless defined(&ASN1_OID_ID_PKIX_OCSP_NONCE);
}
1;
