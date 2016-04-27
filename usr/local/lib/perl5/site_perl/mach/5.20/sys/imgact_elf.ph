require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_IMGACT_ELF_H_)) {
    eval 'sub _SYS_IMGACT_ELF_H_ () {1;}' unless defined(&_SYS_IMGACT_ELF_H_);
    require 'machine/elf.ph';
    if(defined(&_KERNEL)) {
	eval 'sub AUXARGS_ENTRY {
	    my($pos, $id, $val) = @_;
    	    eval q({ &suword($pos++, $id);  &suword($pos++, $val);});
	}' unless defined(&AUXARGS_ENTRY);
	eval 'sub BN_CAN_FETCH_OSREL () {0x1;}' unless defined(&BN_CAN_FETCH_OSREL);
	eval 'sub BN_TRANSLATE_OSREL () {0x2;}' unless defined(&BN_TRANSLATE_OSREL);
	eval 'sub BI_CAN_EXEC_DYN () {0x1;}' unless defined(&BI_CAN_EXEC_DYN);
	eval 'sub BI_BRAND_NOTE () {0x2;}' unless defined(&BI_BRAND_NOTE);
	eval 'sub BI_BRAND_NOTE_MANDATORY () {0x4;}' unless defined(&BI_BRAND_NOTE_MANDATORY);
	eval 'sub MAX_BRANDS () {8;}' unless defined(&MAX_BRANDS);
    }
}
1;
