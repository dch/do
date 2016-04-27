require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_FLASH_SLICER_H_)) {
    eval 'sub _FLASH_SLICER_H_ () {1;}' unless defined(&_FLASH_SLICER_H_);
    require 'sys/types.ph';
    eval 'sub FLASH_SLICES_MAX_NUM () {8;}' unless defined(&FLASH_SLICES_MAX_NUM);
    eval 'sub FLASH_SLICES_MAX_NAME_LEN () {(32+ 1);}' unless defined(&FLASH_SLICES_MAX_NAME_LEN);
    eval 'sub FLASH_SLICES_FLAG_NONE () {0;}' unless defined(&FLASH_SLICES_FLAG_NONE);
    eval 'sub FLASH_SLICES_FLAG_RO () {1;}' unless defined(&FLASH_SLICES_FLAG_RO);
    if(defined(&_KERNEL)) {
    }
}
1;
