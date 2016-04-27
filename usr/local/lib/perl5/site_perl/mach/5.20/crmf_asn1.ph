require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__crmf_asn1_h__)) {
    eval 'sub __crmf_asn1_h__ () {1;}' unless defined(&__crmf_asn1_h__);
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
    eval("sub choice_POPOSigningKeyInput_authInfo_sender () { 1; }") unless defined(&choice_POPOSigningKeyInput_authInfo_sender);
    eval("sub choice_POPOSigningKeyInput_authInfo_publicKeyMAC () { 2; }") unless defined(&choice_POPOSigningKeyInput_authInfo_publicKeyMAC);
    eval("sub encrCert () { 0; }") unless defined(&encrCert);
    eval("sub challengeResp () { 1; }") unless defined(&challengeResp);
    eval("sub choice_POPOPrivKey_thisMessage () { 1; }") unless defined(&choice_POPOPrivKey_thisMessage);
    eval("sub choice_POPOPrivKey_subsequentMessage () { 2; }") unless defined(&choice_POPOPrivKey_subsequentMessage);
    eval("sub choice_POPOPrivKey_dhMAC () { 3; }") unless defined(&choice_POPOPrivKey_dhMAC);
    eval("sub choice_POPOPrivKey_agreeMAC () { 4; }") unless defined(&choice_POPOPrivKey_agreeMAC);
    eval("sub choice_POPOPrivKey_encryptedKey () { 5; }") unless defined(&choice_POPOPrivKey_encryptedKey);
    eval("sub choice_ProofOfPossession_raVerified () { 1; }") unless defined(&choice_ProofOfPossession_raVerified);
    eval("sub choice_ProofOfPossession_signature () { 2; }") unless defined(&choice_ProofOfPossession_signature);
    eval("sub choice_ProofOfPossession_keyEncipherment () { 3; }") unless defined(&choice_ProofOfPossession_keyEncipherment);
    eval("sub choice_ProofOfPossession_keyAgreement () { 4; }") unless defined(&choice_ProofOfPossession_keyAgreement);
    eval("sub choice_CertTemplate_issuer_rdnSequence () { 1; }") unless defined(&choice_CertTemplate_issuer_rdnSequence);
    eval("sub choice_CertTemplate_subject_rdnSequence () { 1; }") unless defined(&choice_CertTemplate_subject_rdnSequence);
}
1;
