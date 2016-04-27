require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__HDB_H__)) {
    eval 'sub __HDB_H__ () {1;}' unless defined(&__HDB_H__);
    require 'krb5.ph';
    require 'hdb_err.ph';
    require 'heim_asn1.ph';
    require 'hdb_asn1.ph';
    eval("sub HDB_RLOCK () { 0; }") unless defined(&HDB_RLOCK);
    eval("sub HDB_WLOCK () { 1; }") unless defined(&HDB_WLOCK);
    eval 'sub HDB_F_DECRYPT () {1;}' unless defined(&HDB_F_DECRYPT);
    eval 'sub HDB_F_REPLACE () {2;}' unless defined(&HDB_F_REPLACE);
    eval 'sub HDB_F_GET_CLIENT () {4;}' unless defined(&HDB_F_GET_CLIENT);
    eval 'sub HDB_F_GET_SERVER () {8;}' unless defined(&HDB_F_GET_SERVER);
    eval 'sub HDB_F_GET_KRBTGT () {16;}' unless defined(&HDB_F_GET_KRBTGT);
    eval 'sub HDB_F_GET_ANY () {28;}' unless defined(&HDB_F_GET_ANY);
    eval 'sub HDB_F_CANON () {32;}' unless defined(&HDB_F_CANON);
    eval 'sub HDB_F_ADMIN_DATA () {64;}' unless defined(&HDB_F_ADMIN_DATA);
    eval 'sub HDB_F_KVNO_SPECIFIED () {128;}' unless defined(&HDB_F_KVNO_SPECIFIED);
    eval 'sub HDB_F_CURRENT_KVNO () {256;}' unless defined(&HDB_F_CURRENT_KVNO);
    eval 'sub HDB_F_ALL_KVNOS () {2048;}' unless defined(&HDB_F_ALL_KVNOS);
    eval 'sub HDB_F_FOR_AS_REQ () {4096;}' unless defined(&HDB_F_FOR_AS_REQ);
    eval 'sub HDB_F_FOR_TGS_REQ () {8192;}' unless defined(&HDB_F_FOR_TGS_REQ);
    eval 'sub HDB_CAP_F_HANDLE_ENTERPRISE_PRINCIPAL () {1;}' unless defined(&HDB_CAP_F_HANDLE_ENTERPRISE_PRINCIPAL);
    eval 'sub HDB_CAP_F_HANDLE_PASSWORDS () {2;}' unless defined(&HDB_CAP_F_HANDLE_PASSWORDS);
    eval 'sub HDB_CAP_F_PASSWORD_UPDATE_KEYS () {4;}' unless defined(&HDB_CAP_F_PASSWORD_UPDATE_KEYS);
    eval 'sub HDB_AUTH_SUCCESS () {0;}' unless defined(&HDB_AUTH_SUCCESS);
    eval 'sub HDB_AUTH_WRONG_PASSWORD () {1;}' unless defined(&HDB_AUTH_WRONG_PASSWORD);
    eval 'sub HDB_AUTH_INVALID_SIGNATURE () {2;}' unless defined(&HDB_AUTH_INVALID_SIGNATURE);
    eval 'sub HDB_KU_MKEY () {0x484442;}' unless defined(&HDB_KU_MKEY);
    eval 'sub HDB_INTERFACE_VERSION () {7;}' unless defined(&HDB_INTERFACE_VERSION);
    require 'hdb-protos.ph';
}
1;
