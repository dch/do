require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_SUN_DISKLABEL_H_)) {
    eval 'sub _SYS_SUN_DISKLABEL_H_ () {1;}' unless defined(&_SYS_SUN_DISKLABEL_H_);
    eval 'sub SUN_DKMAGIC () {55998;}' unless defined(&SUN_DKMAGIC);
    eval 'sub SUN_NPART () {8;}' unless defined(&SUN_NPART);
    eval 'sub SUN_RAWPART () {2;}' unless defined(&SUN_RAWPART);
    eval 'sub SUN_SIZE () {512;}' unless defined(&SUN_SIZE);
    eval 'sub SUN_VTOC_VERSION () {1;}' unless defined(&SUN_VTOC_VERSION);
    eval 'sub SUN_VTOC_SANE () {0x600ddeee;}' unless defined(&SUN_VTOC_SANE);
    eval 'sub SUN_VOLNAME_LEN () {8;}' unless defined(&SUN_VOLNAME_LEN);
    eval 'sub SUN_BOOTSIZE () {8192;}' unless defined(&SUN_BOOTSIZE);
    eval 'sub VTOC_UNASSIGNED () {0x;}' unless defined(&VTOC_UNASSIGNED);
    eval 'sub VTOC_BOOT () {0x1;}' unless defined(&VTOC_BOOT);
    eval 'sub VTOC_ROOT () {0x2;}' unless defined(&VTOC_ROOT);
    eval 'sub VTOC_SWAP () {0x3;}' unless defined(&VTOC_SWAP);
    eval 'sub VTOC_USR () {0x4;}' unless defined(&VTOC_USR);
    eval 'sub VTOC_BACKUP () {0x5;}' unless defined(&VTOC_BACKUP);
    eval 'sub VTOC_STAND () {0x6;}' unless defined(&VTOC_STAND);
    eval 'sub VTOC_VAR () {0x7;}' unless defined(&VTOC_VAR);
    eval 'sub VTOC_HOME () {0x8;}' unless defined(&VTOC_HOME);
    eval 'sub VTOC_ALTSCTR () {0x9;}' unless defined(&VTOC_ALTSCTR);
    eval 'sub VTOC_CACHE () {0xa;}' unless defined(&VTOC_CACHE);
    eval 'sub VTOC_VXVM_PUB () {0xe;}' unless defined(&VTOC_VXVM_PUB);
    eval 'sub VTOC_VXVM_PRIV () {0xf;}' unless defined(&VTOC_VXVM_PRIV);
    eval 'sub VTOC_UNMNT () {0x1;}' unless defined(&VTOC_UNMNT);
    eval 'sub VTOC_RONLY () {0x10;}' unless defined(&VTOC_RONLY);
}
1;
