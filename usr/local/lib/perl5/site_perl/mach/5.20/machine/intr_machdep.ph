require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__MACHINE_INTR_MACHDEP_H__)) {
    eval 'sub __MACHINE_INTR_MACHDEP_H__ () {1;}' unless defined(&__MACHINE_INTR_MACHDEP_H__);
    if(defined(&_KERNEL)) {
	eval 'sub NUM_MSI_INTS () {512;}' unless defined(&NUM_MSI_INTS);
	eval 'sub FIRST_MSI_INT () {256;}' unless defined(&FIRST_MSI_INT);
	if(defined(&XENHVM)) {
	    require 'xen/xen-os.ph';
	    eval 'sub NUM_EVTCHN_INTS () { &NR_EVENT_CHANNELS;}' unless defined(&NUM_EVTCHN_INTS);
	    eval 'sub FIRST_EVTCHN_INT () {( &FIRST_MSI_INT +  &NUM_MSI_INTS);}' unless defined(&FIRST_EVTCHN_INT);
	    eval 'sub LAST_EVTCHN_INT () {( &FIRST_EVTCHN_INT +  &NUM_EVTCHN_INTS - 1);}' unless defined(&LAST_EVTCHN_INT);
	} else {
	    eval 'sub NUM_EVTCHN_INTS () {0;}' unless defined(&NUM_EVTCHN_INTS);
	}
	eval 'sub NUM_IO_INTS () {( &FIRST_MSI_INT +  &NUM_MSI_INTS +  &NUM_EVTCHN_INTS);}' unless defined(&NUM_IO_INTS);
	eval 'sub MSI_INTEL_ADDR_BASE () {0xfee00000;}' unless defined(&MSI_INTEL_ADDR_BASE);
	if(defined(&SMP)) {
	    eval 'sub INTRCNT_COUNT () {(1+  &NUM_IO_INTS * 2+ (1+ 8) *  &MAXCPU);}' unless defined(&INTRCNT_COUNT);
	} else {
	    eval 'sub INTRCNT_COUNT () {(1+  &NUM_IO_INTS * 2+ 1);}' unless defined(&INTRCNT_COUNT);
	}
	unless(defined(&LOCORE)) {
	    eval 'sub IDTVEC {
	        my($name) = @_;
    		eval q( &__CONCAT( &X,$name));
	    }' unless defined(&IDTVEC);
	    eval("sub PIC_EOI () { 0; }") unless defined(&PIC_EOI);
	    eval("sub PIC_NO_EOI () { 1; }") unless defined(&PIC_NO_EOI);
	    unless(defined(&DEV_ATPIC)) {
	    }
	    if(defined(&SMP)) {
	    }
	    if(defined(&SMP)) {
	    }
	}
    }
}
1;
