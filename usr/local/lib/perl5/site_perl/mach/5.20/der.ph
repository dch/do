require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__DER_H__)) {
    eval 'sub __DER_H__ () {1;}' unless defined(&__DER_H__);
    eval("sub ASN1_C_UNIV () { 0; }") unless defined(&ASN1_C_UNIV);
    eval("sub ASN1_C_APPL () { 1; }") unless defined(&ASN1_C_APPL);
    eval("sub ASN1_C_CONTEXT () { 2; }") unless defined(&ASN1_C_CONTEXT);
    eval("sub ASN1_C_PRIVATE () { 3; }") unless defined(&ASN1_C_PRIVATE);
    eval("sub PRIM () { 0; }") unless defined(&PRIM);
    eval("sub CONS () { 1; }") unless defined(&CONS);
    eval 'sub MAKE_TAG {
        my($CLASS, $TYPE, $TAG) = @_;
	    eval q(((($CLASS) << 6) | (($TYPE) << 5) | ($TAG)));
    }' unless defined(&MAKE_TAG);
    eval("sub UT_EndOfContent () { 0; }") unless defined(&UT_EndOfContent);
    eval("sub UT_Boolean () { 1; }") unless defined(&UT_Boolean);
    eval("sub UT_Integer () { 2; }") unless defined(&UT_Integer);
    eval("sub UT_BitString () { 3; }") unless defined(&UT_BitString);
    eval("sub UT_OctetString () { 4; }") unless defined(&UT_OctetString);
    eval("sub UT_Null () { 5; }") unless defined(&UT_Null);
    eval("sub UT_OID () { 6; }") unless defined(&UT_OID);
    eval("sub UT_Enumerated () { 10; }") unless defined(&UT_Enumerated);
    eval("sub UT_UTF8String () { 12; }") unless defined(&UT_UTF8String);
    eval("sub UT_Sequence () { 16; }") unless defined(&UT_Sequence);
    eval("sub UT_Set () { 17; }") unless defined(&UT_Set);
    eval("sub UT_PrintableString () { 19; }") unless defined(&UT_PrintableString);
    eval("sub UT_IA5String () { 22; }") unless defined(&UT_IA5String);
    eval("sub UT_UTCTime () { 23; }") unless defined(&UT_UTCTime);
    eval("sub UT_GeneralizedTime () { 24; }") unless defined(&UT_GeneralizedTime);
    eval("sub UT_UniversalString () { 25; }") unless defined(&UT_UniversalString);
    eval("sub UT_VisibleString () { 26; }") unless defined(&UT_VisibleString);
    eval("sub UT_GeneralString () { 27; }") unless defined(&UT_GeneralString);
    eval("sub UT_BMPString () { 30; }") unless defined(&UT_BMPString);
    eval("sub UT_ObjectDescriptor () { 7; }") unless defined(&UT_ObjectDescriptor);
    eval("sub UT_External () { 8; }") unless defined(&UT_External);
    eval("sub UT_Real () { 9; }") unless defined(&UT_Real);
    eval("sub UT_EmbeddedPDV () { 11; }") unless defined(&UT_EmbeddedPDV);
    eval("sub UT_RelativeOID () { 13; }") unless defined(&UT_RelativeOID);
    eval("sub UT_NumericString () { 18; }") unless defined(&UT_NumericString);
    eval("sub UT_TeletexString () { 20; }") unless defined(&UT_TeletexString);
    eval("sub UT_VideotexString () { 21; }") unless defined(&UT_VideotexString);
    eval("sub UT_GraphicString () { 25; }") unless defined(&UT_GraphicString);
    eval 'sub ASN1_INDEFINITE () {0xdce0deed;}' unless defined(&ASN1_INDEFINITE);
    require 'der-protos.ph';
}
1;
