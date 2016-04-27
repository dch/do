require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__hdb_err_h__)) {
    eval 'sub __hdb_err_h__ () {1;}' unless defined(&__hdb_err_h__);
    eval 'sub init_hdb_err_tbl () { &initialize_hdb_error_table;}' unless defined(&init_hdb_err_tbl);
    eval("sub HDB_ERR_UK_SERROR () { 36150273; }") unless defined(&HDB_ERR_UK_SERROR);
    eval("sub HDB_ERR_UK_RERROR () { 36150274; }") unless defined(&HDB_ERR_UK_RERROR);
    eval("sub HDB_ERR_NOENTRY () { 36150275; }") unless defined(&HDB_ERR_NOENTRY);
    eval("sub HDB_ERR_DB_INUSE () { 36150276; }") unless defined(&HDB_ERR_DB_INUSE);
    eval("sub HDB_ERR_DB_CHANGED () { 36150277; }") unless defined(&HDB_ERR_DB_CHANGED);
    eval("sub HDB_ERR_RECURSIVELOCK () { 36150278; }") unless defined(&HDB_ERR_RECURSIVELOCK);
    eval("sub HDB_ERR_NOTLOCKED () { 36150279; }") unless defined(&HDB_ERR_NOTLOCKED);
    eval("sub HDB_ERR_BADLOCKMODE () { 36150280; }") unless defined(&HDB_ERR_BADLOCKMODE);
    eval("sub HDB_ERR_CANT_LOCK_DB () { 36150281; }") unless defined(&HDB_ERR_CANT_LOCK_DB);
    eval("sub HDB_ERR_EXISTS () { 36150282; }") unless defined(&HDB_ERR_EXISTS);
    eval("sub HDB_ERR_BADVERSION () { 36150283; }") unless defined(&HDB_ERR_BADVERSION);
    eval("sub HDB_ERR_NO_MKEY () { 36150284; }") unless defined(&HDB_ERR_NO_MKEY);
    eval("sub HDB_ERR_MANDATORY_OPTION () { 36150285; }") unless defined(&HDB_ERR_MANDATORY_OPTION);
    eval("sub HDB_ERR_NO_WRITE_SUPPORT () { 36150286; }") unless defined(&HDB_ERR_NO_WRITE_SUPPORT);
    eval("sub HDB_ERR_NOT_FOUND_HERE () { 36150287; }") unless defined(&HDB_ERR_NOT_FOUND_HERE);
    eval 'sub ERROR_TABLE_BASE_hdb () {36150272;}' unless defined(&ERROR_TABLE_BASE_hdb);
    eval 'sub COM_ERR_BINDDOMAIN_hdb () {"heim_com_err36150272";}' unless defined(&COM_ERR_BINDDOMAIN_hdb);
}
1;
