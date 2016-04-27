require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__SYS_COUNTER_H__)) {
    eval 'sub __SYS_COUNTER_H__ () {1;}' unless defined(&__SYS_COUNTER_H__);
    if(defined(&_KERNEL)) {
	require 'machine/counter.ph';
	eval 'sub COUNTER_ARRAY_ALLOC {
	    my($a, $n, $wait) = @_;
    	    eval q( &do {  &for (\'int\'  &i = 0;  &i < ($n);  &i++) ($a)[ &i] =  &counter_u64_alloc($wait); }  &while (0));
	}' unless defined(&COUNTER_ARRAY_ALLOC);
	eval 'sub COUNTER_ARRAY_FREE {
	    my($a, $n) = @_;
    	    eval q( &do {  &for (\'int\'  &i = 0;  &i < ($n);  &i++)  &counter_u64_free(($a)[ &i]); }  &while (0));
	}' unless defined(&COUNTER_ARRAY_FREE);
	eval 'sub COUNTER_ARRAY_COPY {
	    my($a, $dstp, $n) = @_;
    	    eval q( &do {  &for (\'int\'  &i = 0;  &i < ($n);  &i++) (( &uint64_t *)($dstp))[ &i] =  &counter_u64_fetch(($a)[ &i]);}  &while (0));
	}' unless defined(&COUNTER_ARRAY_COPY);
	eval 'sub COUNTER_ARRAY_ZERO {
	    my($a, $n) = @_;
    	    eval q( &do {  &for (\'int\'  &i = 0;  &i < ($n);  &i++)  &counter_u64_zero(($a)[ &i]); }  &while (0));
	}' unless defined(&COUNTER_ARRAY_ZERO);
    }
}
1;
