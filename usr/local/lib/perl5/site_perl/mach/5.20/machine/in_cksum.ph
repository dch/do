require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_IN_CKSUM_H_)) {
    eval 'sub _MACHINE_IN_CKSUM_H_ () {1;}' unless defined(&_MACHINE_IN_CKSUM_H_);
    unless(defined(&_SYS_CDEFS_H_)) {
	die("this\ file\ needs\ sys\/cdefs\.h\ as\ a\ prerequisite");
    }
    require 'sys/cdefs.ph';
    eval 'sub in_cksum {
        my($m, $len) = @_;
	    eval q( &in_cksum_skip($m, $len, 0));
    }' unless defined(&in_cksum);
    if(defined(&IPVERSION)  && ((defined(&IPVERSION) ? &IPVERSION : undef) == 4)) {
	if(defined(&__CC_SUPPORTS___INLINE)) {
	    eval 'sub in_cksum_update {
	        my($ip) = @_;
    		eval q({ \'int\'  &__tmpsum;  &__tmpsum =  &ntohs( ($ip->{ip_sum})) + 256;  ($ip->{ip_sum}) =  &htons( &__tmpsum + ( &__tmpsum >> 16)); });
	    }' unless defined(&in_cksum_update);
	} else {
	    eval 'sub in_cksum_update {
	        my($ip) = @_;
    		eval q( &do { \'int\'  &__tmpsum;  &__tmpsum =  &ntohs( ($ip->{ip_sum})) + 256;  ($ip->{ip_sum}) =  &htons( &__tmpsum + ( &__tmpsum >> 16)); }  &while(0));
	    }' unless defined(&in_cksum_update);
	}
    }
    if(defined(&_KERNEL)) {
	if(defined(&IPVERSION)  && ((defined(&IPVERSION) ? &IPVERSION : undef) == 4)) {
	}
    }
}
1;
