require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__pkinit_asn1_h__)) {
    eval 'sub __pkinit_asn1_h__ () {1;}' unless defined(&__pkinit_asn1_h__);
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
    require 'cms_asn1.ph';
    require 'rfc2459_asn1.ph';
    require 'heim_asn1.ph';
    eval 'sub ASN1_OID_ID_PKINIT () {( &asn1_oid_id_pkinit);}' unless defined(&ASN1_OID_ID_PKINIT);
    eval 'sub ASN1_OID_ID_PKAUTHDATA () {( &asn1_oid_id_pkauthdata);}' unless defined(&ASN1_OID_ID_PKAUTHDATA);
    eval 'sub ASN1_OID_ID_PKDHKEYDATA () {( &asn1_oid_id_pkdhkeydata);}' unless defined(&ASN1_OID_ID_PKDHKEYDATA);
    eval 'sub ASN1_OID_ID_PKRKEYDATA () {( &asn1_oid_id_pkrkeydata);}' unless defined(&ASN1_OID_ID_PKRKEYDATA);
    eval 'sub ASN1_OID_ID_PKEKUOID () {( &asn1_oid_id_pkekuoid);}' unless defined(&ASN1_OID_ID_PKEKUOID);
    eval 'sub ASN1_OID_ID_PKKDCEKUOID () {( &asn1_oid_id_pkkdcekuoid);}' unless defined(&ASN1_OID_ID_PKKDCEKUOID);
    eval 'sub ASN1_OID_ID_PKINIT_KDF () {( &asn1_oid_id_pkinit_kdf);}' unless defined(&ASN1_OID_ID_PKINIT_KDF);
    eval 'sub ASN1_OID_ID_PKINIT_KDF_AH_SHA1 () {( &asn1_oid_id_pkinit_kdf_ah_sha1);}' unless defined(&ASN1_OID_ID_PKINIT_KDF_AH_SHA1);
    eval 'sub ASN1_OID_ID_PKINIT_KDF_AH_SHA256 () {( &asn1_oid_id_pkinit_kdf_ah_sha256);}' unless defined(&ASN1_OID_ID_PKINIT_KDF_AH_SHA256);
    eval 'sub ASN1_OID_ID_PKINIT_KDF_AH_SHA512 () {( &asn1_oid_id_pkinit_kdf_ah_sha512);}' unless defined(&ASN1_OID_ID_PKINIT_KDF_AH_SHA512);
    eval 'sub ASN1_OID_ID_PKINIT_SAN () {( &asn1_oid_id_pkinit_san);}' unless defined(&ASN1_OID_ID_PKINIT_SAN);
    eval 'sub ASN1_OID_ID_PKINIT_MS_EKU () {( &asn1_oid_id_pkinit_ms_eku);}' unless defined(&ASN1_OID_ID_PKINIT_MS_EKU);
    eval 'sub ASN1_OID_ID_PKINIT_MS_SAN () {( &asn1_oid_id_pkinit_ms_san);}' unless defined(&ASN1_OID_ID_PKINIT_MS_SAN);
    eval("sub pa_pk_as_req () { 16; }") unless defined(&pa_pk_as_req);
    eval("sub pa_pk_as_rep () { 17; }") unless defined(&pa_pk_as_rep);
    eval("sub td_trusted_certifiers () { 104; }") unless defined(&td_trusted_certifiers);
    eval("sub td_invalid_certificates () { 105; }") unless defined(&td_invalid_certificates);
    eval("sub td_dh_parameters () { 109; }") unless defined(&td_dh_parameters);
    eval("sub choice_PA_PK_AS_REP_asn1_ellipsis () { 0; }") unless defined(&choice_PA_PK_AS_REP_asn1_ellipsis);
    eval("sub choice_PA_PK_AS_REP_dhInfo () { 1; }") unless defined(&choice_PA_PK_AS_REP_dhInfo);
    eval("sub choice_PA_PK_AS_REP_encKeyPack () { 2; }") unless defined(&choice_PA_PK_AS_REP_encKeyPack);
    eval("sub choice_TrustedCA_Win2k_caName () { 1; }") unless defined(&choice_TrustedCA_Win2k_caName);
    eval("sub choice_TrustedCA_Win2k_issuerAndSerial () { 2; }") unless defined(&choice_TrustedCA_Win2k_issuerAndSerial);
    eval("sub choice_PA_PK_AS_REP_Win2k_dhSignedData () { 1; }") unless defined(&choice_PA_PK_AS_REP_Win2k_dhSignedData);
    eval("sub choice_PA_PK_AS_REP_Win2k_encKeyPack () { 2; }") unless defined(&choice_PA_PK_AS_REP_Win2k_encKeyPack);
}
1;
