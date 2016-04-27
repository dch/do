require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_SEQ_H_)) {
    eval 'sub _SYS_SEQ_H_ () {1;}' unless defined(&_SYS_SEQ_H_);
    if(defined(&_KERNEL)) {
	require 'sys/systm.ph';
    }
    require 'sys/types.ph';
    if(defined(&_KERNEL)) {
	require 'sys/lock.ph';
	require 'machine/cpu.ph';
	eval 'sub seq_in_modify {
	    my($seqp) = @_;
    	    eval q({ ($seqp & 1); });
	}' unless defined(&seq_in_modify);
	eval 'sub seq_write_begin {
	    my($seqp) = @_;
    	    eval q({  &MPASS(! &seq_in_modify(*$seqp));  &atomic_add_acq_int($seqp, 1); });
	}' unless defined(&seq_write_begin);
	eval 'sub seq_write_end {
	    my($seqp) = @_;
    	    eval q({  &atomic_add_rel_int($seqp, 1);  &MPASS(! &seq_in_modify(*$seqp)); });
	}' unless defined(&seq_write_end);
	eval 'sub seq_read {
	    my($seqp) = @_;
    	    eval q({  &seq_t  &ret;  &for (;;) {  &ret =  &atomic_load_acq_rmb_int($seqp);  &if ( &seq_in_modify( &ret)) {  &cpu_spinwait();  &continue; }  &break; } ( &ret); });
	}' unless defined(&seq_read);
	eval 'sub seq_consistent {
	    my($seqp,$oldseq) = @_;
    	    eval q({ ( &atomic_load_acq_rmb_int($seqp) == $oldseq); });
	}' unless defined(&seq_consistent);
	eval 'sub seq_consistent_nomb {
	    my($seqp,$oldseq) = @_;
    	    eval q({ (*$seqp == $oldseq); });
	}' unless defined(&seq_consistent_nomb);
    }
}
1;
