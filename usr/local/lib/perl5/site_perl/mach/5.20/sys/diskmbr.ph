require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_DISKMBR_H_)) {
    eval 'sub _SYS_DISKMBR_H_ () {1;}' unless defined(&_SYS_DISKMBR_H_);
    require 'sys/ioccom.ph';
    eval 'sub DOSBBSECTOR () {0;}' unless defined(&DOSBBSECTOR);
    eval 'sub DOSDSNOFF () {440;}' unless defined(&DOSDSNOFF);
    eval 'sub DOSPARTOFF () {446;}' unless defined(&DOSPARTOFF);
    eval 'sub DOSPARTSIZE () {16;}' unless defined(&DOSPARTSIZE);
    eval 'sub NDOSPART () {4;}' unless defined(&NDOSPART);
    eval 'sub NEXTDOSPART () {32;}' unless defined(&NEXTDOSPART);
    eval 'sub DOSMAGICOFFSET () {510;}' unless defined(&DOSMAGICOFFSET);
    eval 'sub DOSMAGIC () {0xaa55;}' unless defined(&DOSMAGIC);
    eval 'sub DOSPTYP_EXT () {0x5;}' unless defined(&DOSPTYP_EXT);
    eval 'sub DOSPTYP_FAT16 () {0x6;}' unless defined(&DOSPTYP_FAT16);
    eval 'sub DOSPTYP_NTFS () {0x7;}' unless defined(&DOSPTYP_NTFS);
    eval 'sub DOSPTYP_FAT32 () {0xb;}' unless defined(&DOSPTYP_FAT32);
    eval 'sub DOSPTYP_EXTLBA () {0xf;}' unless defined(&DOSPTYP_EXTLBA);
    eval 'sub DOSPTYP_PPCBOOT () {0x41;}' unless defined(&DOSPTYP_PPCBOOT);
    eval 'sub DOSPTYP_LDM () {0x42;}' unless defined(&DOSPTYP_LDM);
    eval 'sub DOSPTYP_386BSD () {0xa5;}' unless defined(&DOSPTYP_386BSD);
    eval 'sub DOSPTYP_HFS () {0xaf;}' unless defined(&DOSPTYP_HFS);
    eval 'sub DOSPTYP_LINSWP () {0x82;}' unless defined(&DOSPTYP_LINSWP);
    eval 'sub DOSPTYP_LINUX () {0x83;}' unless defined(&DOSPTYP_LINUX);
    eval 'sub DOSPTYP_LINLVM () {0x8e;}' unless defined(&DOSPTYP_LINLVM);
    eval 'sub DOSPTYP_PMBR () {0xee;}' unless defined(&DOSPTYP_PMBR);
    eval 'sub DOSPTYP_VMFS () {0xfb;}' unless defined(&DOSPTYP_VMFS);
    eval 'sub DOSPTYP_VMKDIAG () {0xfc;}' unless defined(&DOSPTYP_VMKDIAG);
    eval 'sub DOSPTYP_LINRAID () {0xfd;}' unless defined(&DOSPTYP_LINRAID);
    if(defined(&CTASSERT)) {
    }
    eval 'sub DPSECT {
        my($s) = @_;
	    eval q((($s) & 0x3f));
    }' unless defined(&DPSECT);
    eval 'sub DPCYL {
        my($c, $s) = @_;
	    eval q((($c) + ((($s) & 0xc0)<<2)));
    }' unless defined(&DPCYL);
    eval 'sub DIOCSMBR () { &_IOW(ord(\'M\'), 129, \'u_char\'[512]);}' unless defined(&DIOCSMBR);
}
1;
