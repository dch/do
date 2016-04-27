require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_METADATA_H_)) {
    eval 'sub _MACHINE_METADATA_H_ () {1;}' unless defined(&_MACHINE_METADATA_H_);
    eval 'sub MODINFOMD_SMAP () {0x1001;}' unless defined(&MODINFOMD_SMAP);
    eval 'sub MODINFOMD_SMAP_XATTR () {0x1002;}' unless defined(&MODINFOMD_SMAP_XATTR);
    eval 'sub MODINFOMD_DTBP () {0x1003;}' unless defined(&MODINFOMD_DTBP);
    eval 'sub MODINFOMD_EFI_MAP () {0x1004;}' unless defined(&MODINFOMD_EFI_MAP);
    eval 'sub MODINFOMD_EFI_FB () {0x1005;}' unless defined(&MODINFOMD_EFI_FB);
}
1;
