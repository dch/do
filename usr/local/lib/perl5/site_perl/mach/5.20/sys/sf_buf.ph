require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_SF_BUF_H_)) {
    eval 'sub _SYS_SF_BUF_H_ () {1;}' unless defined(&_SYS_SF_BUF_H_);
    eval 'sub SFB_CATCH () {1;}' unless defined(&SFB_CATCH);
    eval 'sub SFB_CPUPRIVATE () {2;}' unless defined(&SFB_CPUPRIVATE);
    eval 'sub SFB_DEFAULT () {0;}' unless defined(&SFB_DEFAULT);
    eval 'sub SFB_NOWAIT () {4;}' unless defined(&SFB_NOWAIT);
    if(defined(&_KERNEL)) {
	require 'machine/sf_buf.ph';
	require 'sys/systm.ph';
	require 'sys/counter.ph';
	eval 'sub SFSTAT_ADD {
	    my($name, $val) = @_;
    	    eval q( &counter_u64_add( $sfstat[ &offsetof(\'struct sfstat\', $name) / $sizeof{ &uint64_t}], ($val)));
	}' unless defined(&SFSTAT_ADD);
	eval 'sub SFSTAT_INC {
	    my($name) = @_;
    	    eval q( &SFSTAT_ADD($name, 1));
	}' unless defined(&SFSTAT_INC);
    }
}
1;
