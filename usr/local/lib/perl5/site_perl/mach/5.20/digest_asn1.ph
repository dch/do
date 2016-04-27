require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__digest_asn1_h__)) {
    eval 'sub __digest_asn1_h__ () {1;}' unless defined(&__digest_asn1_h__);
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
    eval("sub choice_DigestReqInner_init () { 1; }") unless defined(&choice_DigestReqInner_init);
    eval("sub choice_DigestReqInner_digestRequest () { 2; }") unless defined(&choice_DigestReqInner_digestRequest);
    eval("sub choice_DigestReqInner_ntlmInit () { 3; }") unless defined(&choice_DigestReqInner_ntlmInit);
    eval("sub choice_DigestReqInner_ntlmRequest () { 4; }") unless defined(&choice_DigestReqInner_ntlmRequest);
    eval("sub choice_DigestReqInner_supportedMechs () { 5; }") unless defined(&choice_DigestReqInner_supportedMechs);
    eval("sub choice_DigestRepInner_asn1_ellipsis () { 0; }") unless defined(&choice_DigestRepInner_asn1_ellipsis);
    eval("sub choice_DigestRepInner_error () { 1; }") unless defined(&choice_DigestRepInner_error);
    eval("sub choice_DigestRepInner_initReply () { 2; }") unless defined(&choice_DigestRepInner_initReply);
    eval("sub choice_DigestRepInner_response () { 3; }") unless defined(&choice_DigestRepInner_response);
    eval("sub choice_DigestRepInner_ntlmInitReply () { 4; }") unless defined(&choice_DigestRepInner_ntlmInitReply);
    eval("sub choice_DigestRepInner_ntlmResponse () { 5; }") unless defined(&choice_DigestRepInner_ntlmResponse);
    eval("sub choice_DigestRepInner_supportedMechs () { 6; }") unless defined(&choice_DigestRepInner_supportedMechs);
}
1;
