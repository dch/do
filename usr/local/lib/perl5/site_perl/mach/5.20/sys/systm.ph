require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_SYSTM_H_)) {
    eval 'sub _SYS_SYSTM_H_ () {1;}' unless defined(&_SYS_SYSTM_H_);
    require 'machine/atomic.ph';
    require 'machine/cpufunc.ph';
    require 'sys/callout.ph';
    require 'sys/cdefs.ph';
    require 'sys/queue.ph';
    require 'sys/stdint.ph';
    eval("sub VM_GUEST_NO () { 0; }") unless defined(&VM_GUEST_NO);
    eval("sub VM_GUEST_VM () { 1; }") unless defined(&VM_GUEST_VM);
    eval("sub VM_GUEST_XEN () { 2; }") unless defined(&VM_GUEST_XEN);
    eval("sub VM_GUEST_HV () { 3; }") unless defined(&VM_GUEST_HV);
    eval("sub VM_LAST () { 4; }") unless defined(&VM_LAST);
    if(defined(&WITNESS) || defined(&INVARIANTS)) {
    }
    if(defined(&INVARIANTS)) {
	eval 'sub KASSERT {
	    my($exp,$msg) = @_;
    	    eval q( &do {  &if ( &__predict_false(!($exp)))  &kassert_panic $msg; }  &while (0));
	}' unless defined(&KASSERT);
	eval 'sub VNASSERT {
	    my($exp, $vp, $msg) = @_;
    	    eval q( &do {  &if ( &__predict_false(!($exp))) {  &vn_printf($vp, \\"VNASSERT failed\\\\n\\");  &kassert_panic $msg; } }  &while (0));
	}' unless defined(&VNASSERT);
    } else {
	eval 'sub KASSERT {
	    my($exp,$msg) = @_;
    	    eval q( &do { }  &while (0));
	}' unless defined(&KASSERT);
	eval 'sub VNASSERT {
	    my($exp, $vp, $msg) = @_;
    	    eval q( &do { }  &while (0));
	}' unless defined(&VNASSERT);
    }
    unless(defined(&CTASSERT)) {
	eval 'sub CTASSERT {
	    my($x) = @_;
    	    eval q( &_Static_assert($x, \\"compile-time assertion failed\\"));
	}' unless defined(&CTASSERT);
    }
    eval 'sub ASSERT_ATOMIC_LOAD_PTR {
        my($var, $msg) = @_;
	    eval q( &KASSERT($sizeof{$var} == $sizeof{ &void }  && (( &uintptr_t)($var) & ($sizeof{ &void } - 1)) == 0, $msg));
    }' unless defined(&ASSERT_ATOMIC_LOAD_PTR);
    eval 'sub CRITICAL_ASSERT {
        my($td) = @_;
	    eval q( &KASSERT(($td)-> &td_critnest >= 1, (\\"Not in critical section\\")););
    }' unless defined(&CRITICAL_ASSERT);
    eval 'sub SCHEDULER_STOPPED () {
        eval q( &__predict_false( ($curthread->{td_stopsched})));
    }' unless defined(&SCHEDULER_STOPPED);
    eval 'sub IOSIZE_MAX () {( &iosize_max_clamp ?  &INT_MAX :  &SSIZE_MAX);}' unless defined(&IOSIZE_MAX);
    eval 'sub DEVFS_IOSIZE_MAX () {( &devfs_iosize_max_clamp ?  &INT_MAX :  &SSIZE_MAX);}' unless defined(&DEVFS_IOSIZE_MAX);
    eval 'sub HASH_NOWAIT () {0x1;}' unless defined(&HASH_NOWAIT);
    eval 'sub HASH_WAITOK () {0x2;}' unless defined(&HASH_WAITOK);
    if(defined(&EARLY_PRINTF)) {
    }
    eval 'sub HD_COLUMN_MASK () {0xff;}' unless defined(&HD_COLUMN_MASK);
    eval 'sub HD_DELIM_MASK () {0xff00;}' unless defined(&HD_DELIM_MASK);
    eval 'sub HD_OMIT_COUNT () {(1<< 16);}' unless defined(&HD_OMIT_COUNT);
    eval 'sub HD_OMIT_HEX () {(1<< 17);}' unless defined(&HD_OMIT_HEX);
    eval 'sub HD_OMIT_CHARS () {(1<< 18);}' unless defined(&HD_OMIT_CHARS);
    eval 'sub ovbcopy {
        my($f, $t, $l) = @_;
	    eval q( &bcopy(($f), ($t), ($l)));
    }' unless defined(&ovbcopy);
    if(defined(&APM_FIXUP_CALLTODO)) {
    }
    require 'sys/libkern.ph';
    eval 'sub CALLOUT_HANDLE_INITIALIZER {
        my($handle) = @_;
	    eval q({  &NULL });
    }' unless defined(&CALLOUT_HANDLE_INITIALIZER);
    eval 'sub msleep {
        my($chan, $mtx, $pri, $wmesg, $timo) = @_;
	    eval q( &_sleep(($chan), ($mtx)-> &lock_object, ($pri), ($wmesg),  &tick_sbt * ($timo), 0,  &C_HARDCLOCK));
    }' unless defined(&msleep);
    eval 'sub msleep_sbt {
        my($chan, $mtx, $pri, $wmesg, $bt, $pr, $flags) = @_;
	    eval q( &_sleep(($chan), ($mtx)-> &lock_object, ($pri), ($wmesg), ($bt), ($pr), ($flags)));
    }' unless defined(&msleep_sbt);
    eval 'sub msleep_spin {
        my($chan, $mtx, $wmesg, $timo) = @_;
	    eval q( &msleep_spin_sbt(($chan), ($mtx), ($wmesg),  &tick_sbt * ($timo), 0,  &C_HARDCLOCK));
    }' unless defined(&msleep_spin);
    eval 'sub pause {
        my($wmesg, $timo) = @_;
	    eval q( &pause_sbt(($wmesg),  &tick_sbt * ($timo), 0,  &C_HARDCLOCK));
    }' unless defined(&pause);
    eval 'sub tsleep {
        my($chan, $pri, $wmesg, $timo) = @_;
	    eval q( &_sleep(($chan),  &NULL, ($pri), ($wmesg),  &tick_sbt * ($timo), 0,  &C_HARDCLOCK));
    }' unless defined(&tsleep);
    eval 'sub tsleep_sbt {
        my($chan, $pri, $wmesg, $bt, $pr, $flags) = @_;
	    eval q( &_sleep(($chan),  &NULL, ($pri), ($wmesg), ($bt), ($pr), ($flags)));
    }' unless defined(&tsleep_sbt);
    eval 'sub bitcount16 {
        my($x) = @_;
	    eval q({ $x = ($x & 0x5555) + (($x & 0xaaaa) >> 1); $x = ($x & 0x3333) + (($x & 0xcccc) >> 2); $x = ($x + ($x >> 4)) & 0xf0f; $x = ($x + ($x >> 8)) & 0xff; ($x); });
    }' unless defined(&bitcount16);
}
1;
