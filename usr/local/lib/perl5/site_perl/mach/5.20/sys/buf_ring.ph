require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_BUF_RING_H_)) {
    eval 'sub _SYS_BUF_RING_H_ () {1;}' unless defined(&_SYS_BUF_RING_H_);
    require 'machine/cpu.ph';
    if(defined(&INVARIANTS)  && !defined(&DEBUG_BUFRING)) {
	eval 'sub DEBUG_BUFRING () {1;}' unless defined(&DEBUG_BUFRING);
    }
    if(defined(&DEBUG_BUFRING)) {
	require 'sys/lock.ph';
	require 'sys/mutex.ph';
    }
    if(defined(&DEBUG_BUFRING)) {
    }
    if(defined(&DEBUG_BUFRING)) {
    }
    if(defined(&DEBUG_BUFRING)) {
    }
    if(defined(&DEBUG_BUFRING)) {
    }
    if(defined(&PREFETCH_DEFINED)) {
    }
    if(defined(&DEBUG_BUFRING)) {
    }
    if(defined(&DEBUG_BUFRING)) {
    }
    if(defined(&DEBUG_BUFRING)) {
    }
    eval 'sub buf_ring_full {
        my($br) = @_;
	    eval q({ ((( ($br->{br_prod_head}) + 1) &  ($br->{br_prod_mask})) ==  ($br->{br_cons_tail})); });
    }' unless defined(&buf_ring_full);
    eval 'sub buf_ring_empty {
        my($br) = @_;
	    eval q({ ( ($br->{br_cons_head}) ==  ($br->{br_prod_tail})); });
    }' unless defined(&buf_ring_empty);
    eval 'sub buf_ring_count {
        my($br) = @_;
	    eval q({ (( ($br->{br_prod_size}) +  ($br->{br_prod_tail}) -  ($br->{br_cons_tail})) &  ($br->{br_prod_mask})); });
    }' unless defined(&buf_ring_count);
}
1;
