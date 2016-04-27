require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_VDSO_H)) {
    eval 'sub _SYS_VDSO_H () {1;}' unless defined(&_SYS_VDSO_H);
    require 'sys/types.ph';
    require 'machine/vdso.ph';
    eval 'sub VDSO_TK_CURRENT_BUSY () {0xffffffff;}' unless defined(&VDSO_TK_CURRENT_BUSY);
    eval 'sub VDSO_TK_VER_1 () {0x1;}' unless defined(&VDSO_TK_VER_1);
    eval 'sub VDSO_TK_VER_CURR () { &VDSO_TK_VER_1;}' unless defined(&VDSO_TK_VER_CURR);
    eval 'sub VDSO_TH_ALGO_1 () {0x1;}' unless defined(&VDSO_TH_ALGO_1);
    unless(defined(&_KERNEL)) {
    }
    if(defined(&_KERNEL)) {
	eval 'sub VDSO_TH_NUM () {4;}' unless defined(&VDSO_TH_NUM);
	if(defined(&COMPAT_FREEBSD32)) {
	}
    }
}
1;
