require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__ntlm_err_h__)) {
    eval 'sub __ntlm_err_h__ () {1;}' unless defined(&__ntlm_err_h__);
    eval 'sub init_ntlm_err_tbl () { &initialize_ntlm_error_table;}' unless defined(&init_ntlm_err_tbl);
    eval("sub HNTLM_ERR_DECODE () { -1561745664; }") unless defined(&HNTLM_ERR_DECODE);
    eval("sub HNTLM_ERR_INVALID_LENGTH () { -1561745663; }") unless defined(&HNTLM_ERR_INVALID_LENGTH);
    eval("sub HNTLM_ERR_CRYPTO () { -1561745662; }") unless defined(&HNTLM_ERR_CRYPTO);
    eval("sub HNTLM_ERR_RAND () { -1561745661; }") unless defined(&HNTLM_ERR_RAND);
    eval("sub HNTLM_ERR_AUTH () { -1561745660; }") unless defined(&HNTLM_ERR_AUTH);
    eval("sub HNTLM_ERR_TIME_SKEW () { -1561745659; }") unless defined(&HNTLM_ERR_TIME_SKEW);
    eval("sub HNTLM_ERR_OEM () { -1561745658; }") unless defined(&HNTLM_ERR_OEM);
    eval("sub HNTLM_ERR_MISSING_NAME_SEPARATOR () { -1561745657; }") unless defined(&HNTLM_ERR_MISSING_NAME_SEPARATOR);
    eval("sub HNTLM_ERR_MISSING_BUFFER () { -1561745656; }") unless defined(&HNTLM_ERR_MISSING_BUFFER);
    eval("sub HNTLM_ERR_INVALID_APOP () { -1561745655; }") unless defined(&HNTLM_ERR_INVALID_APOP);
    eval("sub HNTLM_ERR_INVALID_CRAM_MD5 () { -1561745654; }") unless defined(&HNTLM_ERR_INVALID_CRAM_MD5);
    eval("sub HNTLM_ERR_INVALID_DIGEST_MD5 () { -1561745653; }") unless defined(&HNTLM_ERR_INVALID_DIGEST_MD5);
    eval("sub HNTLM_ERR_INVALID_DIGEST_MD5_RSPAUTH () { -1561745652; }") unless defined(&HNTLM_ERR_INVALID_DIGEST_MD5_RSPAUTH);
    eval 'sub ERROR_TABLE_BASE_ntlm () {-1561745664;}' unless defined(&ERROR_TABLE_BASE_ntlm);
    eval 'sub COM_ERR_BINDDOMAIN_ntlm () {"heim_com_err-1561745664";}' unless defined(&COM_ERR_BINDDOMAIN_ntlm);
}
1;
