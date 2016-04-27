require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_APM_H_)) {
    eval 'sub _SYS_APM_H_ () {1;}' unless defined(&_SYS_APM_H_);
    eval 'sub APM_DDR_SIG () {0x4552;}' unless defined(&APM_DDR_SIG);
    eval 'sub APM_ENT_NAMELEN () {32;}' unless defined(&APM_ENT_NAMELEN);
    eval 'sub APM_ENT_TYPELEN () {32;}' unless defined(&APM_ENT_TYPELEN);
    eval 'sub APM_ENT_SIG () {0x504d;}' unless defined(&APM_ENT_SIG);
    eval 'sub APM_ENT_TYPE_SELF () {"Apple_partition_map";}' unless defined(&APM_ENT_TYPE_SELF);
    eval 'sub APM_ENT_TYPE_UNUSED () {"Apple_Free";}' unless defined(&APM_ENT_TYPE_UNUSED);
    eval 'sub APM_ENT_TYPE_FREEBSD () {"FreeBSD";}' unless defined(&APM_ENT_TYPE_FREEBSD);
    eval 'sub APM_ENT_TYPE_FREEBSD_NANDFS () {"FreeBSD-nandfs";}' unless defined(&APM_ENT_TYPE_FREEBSD_NANDFS);
    eval 'sub APM_ENT_TYPE_FREEBSD_SWAP () {"FreeBSD-swap";}' unless defined(&APM_ENT_TYPE_FREEBSD_SWAP);
    eval 'sub APM_ENT_TYPE_FREEBSD_UFS () {"FreeBSD-UFS";}' unless defined(&APM_ENT_TYPE_FREEBSD_UFS);
    eval 'sub APM_ENT_TYPE_FREEBSD_VINUM () {"FreeBSD-Vinum";}' unless defined(&APM_ENT_TYPE_FREEBSD_VINUM);
    eval 'sub APM_ENT_TYPE_FREEBSD_ZFS () {"FreeBSD-ZFS";}' unless defined(&APM_ENT_TYPE_FREEBSD_ZFS);
    eval 'sub APM_ENT_TYPE_APPLE_BOOT () {"Apple_Bootstrap";}' unless defined(&APM_ENT_TYPE_APPLE_BOOT);
    eval 'sub APM_ENT_TYPE_APPLE_HFS () {"Apple_HFS";}' unless defined(&APM_ENT_TYPE_APPLE_HFS);
    eval 'sub APM_ENT_TYPE_APPLE_UFS () {"Apple_UNIX_SVR2";}' unless defined(&APM_ENT_TYPE_APPLE_UFS);
}
1;
