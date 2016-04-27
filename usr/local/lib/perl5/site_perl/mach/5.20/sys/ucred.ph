require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_UCRED_H_)) {
    eval 'sub _SYS_UCRED_H_ () {1;}' unless defined(&_SYS_UCRED_H_);
    require 'bsm/audit.ph';
    if(defined(&_KERNEL) || defined(&_WANT_UCRED)) {
	eval 'sub cr_startcopy () { &cr_uid;}' unless defined(&cr_startcopy);
	eval 'sub cr_endcopy () { &cr_label;}' unless defined(&cr_endcopy);
	eval 'sub NOCRED () {(0);}' unless defined(&NOCRED);
	eval 'sub FSCRED () {(-1);}' unless defined(&FSCRED);
    }
    eval 'sub XU_NGROUPS () {16;}' unless defined(&XU_NGROUPS);
    eval 'sub CRED_FLAG_CAPMODE () {0x1;}' unless defined(&CRED_FLAG_CAPMODE);
    eval 'sub XUCRED_VERSION () {0;}' unless defined(&XUCRED_VERSION);
    eval 'sub cr_gid () { $cr_groups[0];}' unless defined(&cr_gid);
    if(defined(&_KERNEL)) {
    }
}
1;
