require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_VTOC_H_)) {
    eval 'sub _SYS_VTOC_H_ () {1;}' unless defined(&_SYS_VTOC_H_);
    eval 'sub VTOC_TAG_UNASSIGNED () {0x;}' unless defined(&VTOC_TAG_UNASSIGNED);
    eval 'sub VTOC_TAG_BOOT () {0x1;}' unless defined(&VTOC_TAG_BOOT);
    eval 'sub VTOC_TAG_ROOT () {0x2;}' unless defined(&VTOC_TAG_ROOT);
    eval 'sub VTOC_TAG_SWAP () {0x3;}' unless defined(&VTOC_TAG_SWAP);
    eval 'sub VTOC_TAG_USR () {0x4;}' unless defined(&VTOC_TAG_USR);
    eval 'sub VTOC_TAG_BACKUP () {0x5;}' unless defined(&VTOC_TAG_BACKUP);
    eval 'sub VTOC_TAG_STAND () {0x6;}' unless defined(&VTOC_TAG_STAND);
    eval 'sub VTOC_TAG_VAR () {0x7;}' unless defined(&VTOC_TAG_VAR);
    eval 'sub VTOC_TAG_HOME () {0x8;}' unless defined(&VTOC_TAG_HOME);
    eval 'sub VTOC_TAG_ALTSCTR () {0x9;}' unless defined(&VTOC_TAG_ALTSCTR);
    eval 'sub VTOC_TAG_CACHE () {0xa;}' unless defined(&VTOC_TAG_CACHE);
    eval 'sub VTOC_TAG_VXVM_PUB () {0xe;}' unless defined(&VTOC_TAG_VXVM_PUB);
    eval 'sub VTOC_TAG_VXVM_PRIV () {0xf;}' unless defined(&VTOC_TAG_VXVM_PRIV);
    eval 'sub VTOC_TAG_NETBSD_FFS () {0xff;}' unless defined(&VTOC_TAG_NETBSD_FFS);
    eval 'sub VTOC_TAG_FREEBSD_SWAP () {0x901;}' unless defined(&VTOC_TAG_FREEBSD_SWAP);
    eval 'sub VTOC_TAG_FREEBSD_UFS () {0x902;}' unless defined(&VTOC_TAG_FREEBSD_UFS);
    eval 'sub VTOC_TAG_FREEBSD_VINUM () {0x903;}' unless defined(&VTOC_TAG_FREEBSD_VINUM);
    eval 'sub VTOC_TAG_FREEBSD_ZFS () {0x904;}' unless defined(&VTOC_TAG_FREEBSD_ZFS);
    eval 'sub VTOC_TAG_FREEBSD_NANDFS () {0x905;}' unless defined(&VTOC_TAG_FREEBSD_NANDFS);
    eval 'sub VTOC_FLAG_UNMNT () {0x1;}' unless defined(&VTOC_FLAG_UNMNT);
    eval 'sub VTOC_FLAG_RDONLY () {0x10;}' unless defined(&VTOC_FLAG_RDONLY);
    eval 'sub VTOC_ASCII_LEN () {128;}' unless defined(&VTOC_ASCII_LEN);
    eval 'sub VTOC_BOOTSIZE () {8192;}' unless defined(&VTOC_BOOTSIZE);
    eval 'sub VTOC_MAGIC () {0xdabe;}' unless defined(&VTOC_MAGIC);
    eval 'sub VTOC_RAW_PART () {2;}' unless defined(&VTOC_RAW_PART);
    eval 'sub VTOC_SANITY () {0x600ddeee;}' unless defined(&VTOC_SANITY);
    eval 'sub VTOC_VERSION () {1;}' unless defined(&VTOC_VERSION);
    eval 'sub VTOC_VOLUME_LEN () {8;}' unless defined(&VTOC_VOLUME_LEN);
    eval 'sub VTOC8_NPARTS () {8;}' unless defined(&VTOC8_NPARTS);
    if(defined(&CTASSERT)) {
    }
}
1;
