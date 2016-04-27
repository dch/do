require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_EFI_H_)) {
    eval 'sub _SYS_EFI_H_ () {1;}' unless defined(&_SYS_EFI_H_);
    require 'sys/uuid.ph';
    eval 'sub EFI_PAGE_SHIFT () {12;}' unless defined(&EFI_PAGE_SHIFT);
    eval 'sub EFI_PAGE_SIZE () {(1<<  &EFI_PAGE_SHIFT);}' unless defined(&EFI_PAGE_SIZE);
    eval 'sub EFI_PAGE_MASK () {( &EFI_PAGE_SIZE - 1);}' unless defined(&EFI_PAGE_MASK);
    eval 'sub EFI_TABLE_ACPI20 () {{0x8868e871,0xe4f1,0x11d3,0xbc,0x22,{0x,0x80,0xc7,0x3c,0x88,0x81}};}' unless defined(&EFI_TABLE_ACPI20);
    eval 'sub EFI_TABLE_SAL () {{0xeb9d2d32,0x2d88,0x11d3,0x9a,0x16,{0x,0x90,0x27,0x3f,0xc1,0x4d}};}' unless defined(&EFI_TABLE_SAL);
    eval("sub EFI_RESET_COLD () { 0; }") unless defined(&EFI_RESET_COLD);
    eval("sub EFI_RESET_WARM () { 1; }") unless defined(&EFI_RESET_WARM);
    eval 'sub EFI_MD_TYPE_NULL () {0;}' unless defined(&EFI_MD_TYPE_NULL);
    eval 'sub EFI_MD_TYPE_CODE () {1;}' unless defined(&EFI_MD_TYPE_CODE);
    eval 'sub EFI_MD_TYPE_DATA () {2;}' unless defined(&EFI_MD_TYPE_DATA);
    eval 'sub EFI_MD_TYPE_BS_CODE () {3;}' unless defined(&EFI_MD_TYPE_BS_CODE);
    eval 'sub EFI_MD_TYPE_BS_DATA () {4;}' unless defined(&EFI_MD_TYPE_BS_DATA);
    eval 'sub EFI_MD_TYPE_RT_CODE () {5;}' unless defined(&EFI_MD_TYPE_RT_CODE);
    eval 'sub EFI_MD_TYPE_RT_DATA () {6;}' unless defined(&EFI_MD_TYPE_RT_DATA);
    eval 'sub EFI_MD_TYPE_FREE () {7;}' unless defined(&EFI_MD_TYPE_FREE);
    eval 'sub EFI_MD_TYPE_BAD () {8;}' unless defined(&EFI_MD_TYPE_BAD);
    eval 'sub EFI_MD_TYPE_RECLAIM () {9;}' unless defined(&EFI_MD_TYPE_RECLAIM);
    eval 'sub EFI_MD_TYPE_FIRMWARE () {10;}' unless defined(&EFI_MD_TYPE_FIRMWARE);
    eval 'sub EFI_MD_TYPE_IOMEM () {11;}' unless defined(&EFI_MD_TYPE_IOMEM);
    eval 'sub EFI_MD_TYPE_IOPORT () {12;}' unless defined(&EFI_MD_TYPE_IOPORT);
    eval 'sub EFI_MD_TYPE_PALCODE () {13;}' unless defined(&EFI_MD_TYPE_PALCODE);
    eval 'sub EFI_MD_ATTR_UC () {0x1;}' unless defined(&EFI_MD_ATTR_UC);
    eval 'sub EFI_MD_ATTR_WC () {0x2;}' unless defined(&EFI_MD_ATTR_WC);
    eval 'sub EFI_MD_ATTR_WT () {0x4;}' unless defined(&EFI_MD_ATTR_WT);
    eval 'sub EFI_MD_ATTR_WB () {0x8;}' unless defined(&EFI_MD_ATTR_WB);
    eval 'sub EFI_MD_ATTR_UCE () {0x10;}' unless defined(&EFI_MD_ATTR_UCE);
    eval 'sub EFI_MD_ATTR_WP () {0x1000;}' unless defined(&EFI_MD_ATTR_WP);
    eval 'sub EFI_MD_ATTR_RP () {0x2000;}' unless defined(&EFI_MD_ATTR_RP);
    eval 'sub EFI_MD_ATTR_XP () {0x4000;}' unless defined(&EFI_MD_ATTR_XP);
    eval 'sub EFI_MD_ATTR_RT () {0x8000000000000000;}' unless defined(&EFI_MD_ATTR_RT);
    eval 'sub EFI_SYSTBL_SIG () {0x5453595320494249;}' unless defined(&EFI_SYSTBL_SIG);
    if(defined(&_KERNEL)  && defined(&__ia64__)) {
    }
}
1;
