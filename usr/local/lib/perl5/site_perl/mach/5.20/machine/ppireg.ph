require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_PPIREG_H_)) {
    eval 'sub _MACHINE_PPIREG_H_ () {1;}' unless defined(&_MACHINE_PPIREG_H_);
    if(defined(&_KERNEL)) {
	eval 'sub IO_PPI () {0x61;}' unless defined(&IO_PPI);
	eval 'sub PIT_ENABLETMR2 () {0x1;}' unless defined(&PIT_ENABLETMR2);
	eval 'sub PIT_SPKRDATA () {0x2;}' unless defined(&PIT_SPKRDATA);
	eval 'sub PIT_SPKR () {( &PIT_ENABLETMR2 |  &PIT_SPKRDATA);}' unless defined(&PIT_SPKR);
	eval 'sub ppi_spkr_on () {
	    eval q( &outb( &IO_PPI,  &inb( &IO_PPI) |  &PIT_SPKR));
	}' unless defined(&ppi_spkr_on);
	eval 'sub ppi_spkr_off () {
	    eval q( &outb( &IO_PPI,  &inb( &IO_PPI) & ~ &PIT_SPKR));
	}' unless defined(&ppi_spkr_off);
    }
}
1;
