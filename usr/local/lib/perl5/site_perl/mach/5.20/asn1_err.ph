require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__asn1_err_h__)) {
    eval 'sub __asn1_err_h__ () {1;}' unless defined(&__asn1_err_h__);
    eval 'sub init_asn1_err_tbl () { &initialize_asn1_error_table;}' unless defined(&init_asn1_err_tbl);
    eval("sub ASN1_BAD_TIMEFORMAT () { 1859794432; }") unless defined(&ASN1_BAD_TIMEFORMAT);
    eval("sub ASN1_MISSING_FIELD () { 1859794433; }") unless defined(&ASN1_MISSING_FIELD);
    eval("sub ASN1_MISPLACED_FIELD () { 1859794434; }") unless defined(&ASN1_MISPLACED_FIELD);
    eval("sub ASN1_TYPE_MISMATCH () { 1859794435; }") unless defined(&ASN1_TYPE_MISMATCH);
    eval("sub ASN1_OVERFLOW () { 1859794436; }") unless defined(&ASN1_OVERFLOW);
    eval("sub ASN1_OVERRUN () { 1859794437; }") unless defined(&ASN1_OVERRUN);
    eval("sub ASN1_BAD_ID () { 1859794438; }") unless defined(&ASN1_BAD_ID);
    eval("sub ASN1_BAD_LENGTH () { 1859794439; }") unless defined(&ASN1_BAD_LENGTH);
    eval("sub ASN1_BAD_FORMAT () { 1859794440; }") unless defined(&ASN1_BAD_FORMAT);
    eval("sub ASN1_PARSE_ERROR () { 1859794441; }") unless defined(&ASN1_PARSE_ERROR);
    eval("sub ASN1_EXTRA_DATA () { 1859794442; }") unless defined(&ASN1_EXTRA_DATA);
    eval("sub ASN1_BAD_CHARACTER () { 1859794443; }") unless defined(&ASN1_BAD_CHARACTER);
    eval("sub ASN1_MIN_CONSTRAINT () { 1859794444; }") unless defined(&ASN1_MIN_CONSTRAINT);
    eval("sub ASN1_MAX_CONSTRAINT () { 1859794445; }") unless defined(&ASN1_MAX_CONSTRAINT);
    eval("sub ASN1_EXACT_CONSTRAINT () { 1859794446; }") unless defined(&ASN1_EXACT_CONSTRAINT);
    eval("sub ASN1_INDEF_OVERRUN () { 1859794447; }") unless defined(&ASN1_INDEF_OVERRUN);
    eval("sub ASN1_INDEF_UNDERRUN () { 1859794448; }") unless defined(&ASN1_INDEF_UNDERRUN);
    eval("sub ASN1_GOT_BER () { 1859794449; }") unless defined(&ASN1_GOT_BER);
    eval("sub ASN1_INDEF_EXTRA_DATA () { 1859794450; }") unless defined(&ASN1_INDEF_EXTRA_DATA);
    eval 'sub ERROR_TABLE_BASE_asn1 () {1859794432;}' unless defined(&ERROR_TABLE_BASE_asn1);
    eval 'sub COM_ERR_BINDDOMAIN_asn1 () {"heim_com_err1859794432";}' unless defined(&COM_ERR_BINDDOMAIN_asn1);
}
1;
