require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_DISKPC98_H_)) {
    eval 'sub _SYS_DISKPC98_H_ () {1;}' unless defined(&_SYS_DISKPC98_H_);
    require 'sys/ioccom.ph';
    eval 'sub PC98_BBSECTOR () {1;}' unless defined(&PC98_BBSECTOR);
    eval 'sub PC98_PARTOFF () {0;}' unless defined(&PC98_PARTOFF);
    eval 'sub PC98_PARTSIZE () {32;}' unless defined(&PC98_PARTSIZE);
    eval 'sub PC98_NPARTS () {16;}' unless defined(&PC98_NPARTS);
    eval 'sub PC98_MAGICOFS () {510;}' unless defined(&PC98_MAGICOFS);
    eval 'sub PC98_MAGIC () {0xaa55;}' unless defined(&PC98_MAGIC);
    eval 'sub PC98_MID_BOOTABLE () {0x80;}' unless defined(&PC98_MID_BOOTABLE);
    eval 'sub PC98_MID_MASK () {0x7f;}' unless defined(&PC98_MID_MASK);
    eval 'sub PC98_MID_386BSD () {0x14;}' unless defined(&PC98_MID_386BSD);
    eval 'sub PC98_SID_ACTIVE () {0x80;}' unless defined(&PC98_SID_ACTIVE);
    eval 'sub PC98_SID_MASK () {0x7f;}' unless defined(&PC98_SID_MASK);
    eval 'sub PC98_SID_386BSD () {0x44;}' unless defined(&PC98_SID_386BSD);
    eval 'sub DOSMID_386BSD () {( &PC98_MID_386BSD |  &PC98_MID_BOOTABLE);}' unless defined(&DOSMID_386BSD);
    eval 'sub DOSSID_386BSD () {( &PC98_SID_386BSD |  &PC98_SID_ACTIVE);}' unless defined(&DOSSID_386BSD);
    eval 'sub PC98_PTYP_386BSD () {( &DOSSID_386BSD << 8|  &DOSMID_386BSD);}' unless defined(&PC98_PTYP_386BSD);
    if(defined(&CTASSERT)) {
    }
    eval 'sub DIOCSPC98 () { &_IOW(ord(\'M\'), 129, \'u_char\'[8192]);}' unless defined(&DIOCSPC98);
}
1;
