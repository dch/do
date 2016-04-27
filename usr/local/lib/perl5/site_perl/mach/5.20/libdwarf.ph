require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_LIBDWARF_H_)) {
    eval 'sub _LIBDWARF_H_ () {1;}' unless defined(&_LIBDWARF_H_);
    require 'libelf.ph';
    eval("sub DWARF_E_NONE () { 0; }") unless defined(&DWARF_E_NONE);
    eval("sub DWARF_E_ERROR () { 1; }") unless defined(&DWARF_E_ERROR);
    eval("sub DWARF_E_NO_ENTRY () { 2; }") unless defined(&DWARF_E_NO_ENTRY);
    eval("sub DWARF_E_ARGUMENT () { 3; }") unless defined(&DWARF_E_ARGUMENT);
    eval("sub DWARF_E_DEBUG_INFO () { 4; }") unless defined(&DWARF_E_DEBUG_INFO);
    eval("sub DWARF_E_MEMORY () { 5; }") unless defined(&DWARF_E_MEMORY);
    eval("sub DWARF_E_ELF () { 6; }") unless defined(&DWARF_E_ELF);
    eval("sub DWARF_E_INVALID_CU () { 7; }") unless defined(&DWARF_E_INVALID_CU);
    eval("sub DWARF_E_CU_VERSION () { 8; }") unless defined(&DWARF_E_CU_VERSION);
    eval("sub DWARF_E_MISSING_ABBREV () { 9; }") unless defined(&DWARF_E_MISSING_ABBREV);
    eval("sub DWARF_E_NOT_IMPLEMENTED () { 10; }") unless defined(&DWARF_E_NOT_IMPLEMENTED);
    eval("sub DWARF_E_CU_CURRENT () { 11; }") unless defined(&DWARF_E_CU_CURRENT);
    eval("sub DWARF_E_BAD_FORM () { 12; }") unless defined(&DWARF_E_BAD_FORM);
    eval("sub DWARF_E_INVALID_EXPR () { 13; }") unless defined(&DWARF_E_INVALID_EXPR);
    eval("sub DWARF_E_NUM () { 14; }") unless defined(&DWARF_E_NUM);
    eval 'sub DW_DLV_NO_ENTRY () { &DWARF_E_NO_ENTRY;}' unless defined(&DW_DLV_NO_ENTRY);
    eval 'sub DW_DLV_OK () { &DWARF_E_NONE;}' unless defined(&DW_DLV_OK);
    eval 'sub DW_DLE_DEBUG_INFO_NULL () { &DWARF_E_DEBUG_INFO;}' unless defined(&DW_DLE_DEBUG_INFO_NULL);
    eval 'sub DW_DLC_READ () {0;}' unless defined(&DW_DLC_READ);
}
1;
