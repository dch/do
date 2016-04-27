require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__heim_err_h__)) {
    eval 'sub __heim_err_h__ () {1;}' unless defined(&__heim_err_h__);
    eval 'sub init_heim_err_tbl () { &initialize_heim_error_table;}' unless defined(&init_heim_err_tbl);
    eval("sub HEIM_ERR_LOG_PARSE () { -1980176640; }") unless defined(&HEIM_ERR_LOG_PARSE);
    eval("sub HEIM_ERR_V4_PRINC_NO_CONV () { -1980176639; }") unless defined(&HEIM_ERR_V4_PRINC_NO_CONV);
    eval("sub HEIM_ERR_SALTTYPE_NOSUPP () { -1980176638; }") unless defined(&HEIM_ERR_SALTTYPE_NOSUPP);
    eval("sub HEIM_ERR_NOHOST () { -1980176637; }") unless defined(&HEIM_ERR_NOHOST);
    eval("sub HEIM_ERR_OPNOTSUPP () { -1980176636; }") unless defined(&HEIM_ERR_OPNOTSUPP);
    eval("sub HEIM_ERR_EOF () { -1980176635; }") unless defined(&HEIM_ERR_EOF);
    eval("sub HEIM_ERR_BAD_MKEY () { -1980176634; }") unless defined(&HEIM_ERR_BAD_MKEY);
    eval("sub HEIM_ERR_SERVICE_NOMATCH () { -1980176633; }") unless defined(&HEIM_ERR_SERVICE_NOMATCH);
    eval("sub HEIM_ERR_NOT_SEEKABLE () { -1980176632; }") unless defined(&HEIM_ERR_NOT_SEEKABLE);
    eval("sub HEIM_ERR_TOO_BIG () { -1980176631; }") unless defined(&HEIM_ERR_TOO_BIG);
    eval("sub HEIM_ERR_BAD_HDBENT_ENCODING () { -1980176630; }") unless defined(&HEIM_ERR_BAD_HDBENT_ENCODING);
    eval("sub HEIM_PKINIT_NO_CERTIFICATE () { -1980176576; }") unless defined(&HEIM_PKINIT_NO_CERTIFICATE);
    eval("sub HEIM_PKINIT_NO_PRIVATE_KEY () { -1980176575; }") unless defined(&HEIM_PKINIT_NO_PRIVATE_KEY);
    eval("sub HEIM_PKINIT_NO_VALID_CA () { -1980176574; }") unless defined(&HEIM_PKINIT_NO_VALID_CA);
    eval("sub HEIM_PKINIT_CERTIFICATE_INVALID () { -1980176573; }") unless defined(&HEIM_PKINIT_CERTIFICATE_INVALID);
    eval("sub HEIM_PKINIT_PRIVATE_KEY_INVALID () { -1980176572; }") unless defined(&HEIM_PKINIT_PRIVATE_KEY_INVALID);
    eval("sub HEIM_EAI_UNKNOWN () { -1980176512; }") unless defined(&HEIM_EAI_UNKNOWN);
    eval("sub HEIM_EAI_ADDRFAMILY () { -1980176511; }") unless defined(&HEIM_EAI_ADDRFAMILY);
    eval("sub HEIM_EAI_AGAIN () { -1980176510; }") unless defined(&HEIM_EAI_AGAIN);
    eval("sub HEIM_EAI_BADFLAGS () { -1980176509; }") unless defined(&HEIM_EAI_BADFLAGS);
    eval("sub HEIM_EAI_FAIL () { -1980176508; }") unless defined(&HEIM_EAI_FAIL);
    eval("sub HEIM_EAI_FAMILY () { -1980176507; }") unless defined(&HEIM_EAI_FAMILY);
    eval("sub HEIM_EAI_MEMORY () { -1980176506; }") unless defined(&HEIM_EAI_MEMORY);
    eval("sub HEIM_EAI_NODATA () { -1980176505; }") unless defined(&HEIM_EAI_NODATA);
    eval("sub HEIM_EAI_NONAME () { -1980176504; }") unless defined(&HEIM_EAI_NONAME);
    eval("sub HEIM_EAI_SERVICE () { -1980176503; }") unless defined(&HEIM_EAI_SERVICE);
    eval("sub HEIM_EAI_SOCKTYPE () { -1980176502; }") unless defined(&HEIM_EAI_SOCKTYPE);
    eval("sub HEIM_EAI_SYSTEM () { -1980176501; }") unless defined(&HEIM_EAI_SYSTEM);
    eval 'sub ERROR_TABLE_BASE_heim () {-1980176640;}' unless defined(&ERROR_TABLE_BASE_heim);
    eval 'sub COM_ERR_BINDDOMAIN_heim () {"heim_com_err-1980176640";}' unless defined(&COM_ERR_BINDDOMAIN_heim);
}
1;
