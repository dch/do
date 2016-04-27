require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__k524_err_h__)) {
    eval 'sub __k524_err_h__ () {1;}' unless defined(&__k524_err_h__);
    eval 'sub init_k524_err_tbl () { &initialize_k524_error_table;}' unless defined(&init_k524_err_tbl);
    eval("sub KRB524_BADKEY () { -1750206208; }") unless defined(&KRB524_BADKEY);
    eval("sub KRB524_BADADDR () { -1750206207; }") unless defined(&KRB524_BADADDR);
    eval("sub KRB524_BADPRINC () { -1750206206; }") unless defined(&KRB524_BADPRINC);
    eval("sub KRB524_BADREALM () { -1750206205; }") unless defined(&KRB524_BADREALM);
    eval("sub KRB524_V4ERR () { -1750206204; }") unless defined(&KRB524_V4ERR);
    eval("sub KRB524_ENCFULL () { -1750206203; }") unless defined(&KRB524_ENCFULL);
    eval("sub KRB524_DECEMPTY () { -1750206202; }") unless defined(&KRB524_DECEMPTY);
    eval("sub KRB524_NOTRESP () { -1750206201; }") unless defined(&KRB524_NOTRESP);
    eval 'sub ERROR_TABLE_BASE_k524 () {-1750206208;}' unless defined(&ERROR_TABLE_BASE_k524);
    eval 'sub COM_ERR_BINDDOMAIN_k524 () {"heim_com_err-1750206208";}' unless defined(&COM_ERR_BINDDOMAIN_k524);
}
1;
