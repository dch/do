require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_APICVAR_H_)) {
    eval 'sub _MACHINE_APICVAR_H_ () {1;}' unless defined(&_MACHINE_APICVAR_H_);
    require 'machine/segments.ph';
    eval 'sub MAX_APIC_ID () {0xfe;}' unless defined(&MAX_APIC_ID);
    eval 'sub APIC_ID_ALL () {0xff;}' unless defined(&APIC_ID_ALL);
    eval 'sub APIC_IO_INTS () {( &IDT_IO_INTS + 16);}' unless defined(&APIC_IO_INTS);
    eval 'sub APIC_NUM_IOINTS () {191;}' unless defined(&APIC_NUM_IOINTS);
    eval 'sub APIC_TIMER_INT () {( &APIC_IO_INTS +  &APIC_NUM_IOINTS);}' unless defined(&APIC_TIMER_INT);
    eval 'sub APIC_LOCAL_INTS () {240;}' unless defined(&APIC_LOCAL_INTS);
    eval 'sub APIC_ERROR_INT () { &APIC_LOCAL_INTS;}' unless defined(&APIC_ERROR_INT);
    eval 'sub APIC_THERMAL_INT () {( &APIC_LOCAL_INTS + 1);}' unless defined(&APIC_THERMAL_INT);
    eval 'sub APIC_CMC_INT () {( &APIC_LOCAL_INTS + 2);}' unless defined(&APIC_CMC_INT);
    eval 'sub APIC_IPI_INTS () {( &APIC_LOCAL_INTS + 3);}' unless defined(&APIC_IPI_INTS);
    eval 'sub IPI_RENDEZVOUS () {( &APIC_IPI_INTS);}' unless defined(&IPI_RENDEZVOUS);
    eval 'sub IPI_INVLTLB () {( &APIC_IPI_INTS + 1);}' unless defined(&IPI_INVLTLB);
    eval 'sub IPI_INVLPG () {( &APIC_IPI_INTS + 2);}' unless defined(&IPI_INVLPG);
    eval 'sub IPI_INVLRNG () {( &APIC_IPI_INTS + 3);}' unless defined(&IPI_INVLRNG);
    eval 'sub IPI_INVLCACHE () {( &APIC_IPI_INTS + 4);}' unless defined(&IPI_INVLCACHE);
    eval 'sub IPI_BITMAP_VECTOR () {( &APIC_IPI_INTS + 6);}' unless defined(&IPI_BITMAP_VECTOR);
    eval 'sub IPI_AST () {0;}' unless defined(&IPI_AST);
    eval 'sub IPI_PREEMPT () {1;}' unless defined(&IPI_PREEMPT);
    eval 'sub IPI_HARDCLOCK () {2;}' unless defined(&IPI_HARDCLOCK);
    eval 'sub IPI_BITMAP_LAST () { &IPI_HARDCLOCK;}' unless defined(&IPI_BITMAP_LAST);
    eval 'sub IPI_IS_BITMAPED {
        my($x) = @_;
	    eval q((($x) <=  &IPI_BITMAP_LAST));
    }' unless defined(&IPI_IS_BITMAPED);
    eval 'sub IPI_STOP () {( &APIC_IPI_INTS + 7);}' unless defined(&IPI_STOP);
    eval 'sub IPI_SUSPEND () {( &APIC_IPI_INTS + 8);}' unless defined(&IPI_SUSPEND);
    eval 'sub IPI_STOP_HARD () {( &APIC_IPI_INTS + 9);}' unless defined(&IPI_STOP_HARD);
    eval 'sub APIC_SPURIOUS_INT () {255;}' unless defined(&APIC_SPURIOUS_INT);
    unless(defined(&LOCORE)) {
	eval 'sub APIC_IPI_DEST_SELF () {-1;}' unless defined(&APIC_IPI_DEST_SELF);
	eval 'sub APIC_IPI_DEST_ALL () {-2;}' unless defined(&APIC_IPI_DEST_ALL);
	eval 'sub APIC_IPI_DEST_OTHERS () {-3;}' unless defined(&APIC_IPI_DEST_OTHERS);
	eval 'sub APIC_BUS_UNKNOWN () {-1;}' unless defined(&APIC_BUS_UNKNOWN);
	eval 'sub APIC_BUS_ISA () {0;}' unless defined(&APIC_BUS_ISA);
	eval 'sub APIC_BUS_EISA () {1;}' unless defined(&APIC_BUS_EISA);
	eval 'sub APIC_BUS_PCI () {2;}' unless defined(&APIC_BUS_PCI);
	eval 'sub APIC_BUS_MAX () { &APIC_BUS_PCI;}' unless defined(&APIC_BUS_MAX);
    }
}
1;
