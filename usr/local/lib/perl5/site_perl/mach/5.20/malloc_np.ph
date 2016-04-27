require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MALLOC_NP_H_)) {
    eval 'sub _MALLOC_NP_H_ () {1;}' unless defined(&_MALLOC_NP_H_);
    require 'sys/cdefs.ph';
    require 'sys/types.ph';
    require 'strings.ph';
    eval 'sub ALLOCM_LG_ALIGN {
        my($la) = @_;
	    eval q(($la));
    }' unless defined(&ALLOCM_LG_ALIGN);
    eval 'sub ALLOCM_ALIGN {
        my($a) = @_;
	    eval q(( &ffsl($a)-1));
    }' unless defined(&ALLOCM_ALIGN);
    eval 'sub ALLOCM_ZERO () {(0x40);}' unless defined(&ALLOCM_ZERO);
    eval 'sub ALLOCM_NO_MOVE () {(0x80);}' unless defined(&ALLOCM_NO_MOVE);
    eval 'sub ALLOCM_SUCCESS () {0;}' unless defined(&ALLOCM_SUCCESS);
    eval 'sub ALLOCM_ERR_OOM () {1;}' unless defined(&ALLOCM_ERR_OOM);
    eval 'sub ALLOCM_ERR_NOT_MOVED () {2;}' unless defined(&ALLOCM_ERR_NOT_MOVED);
}
1;
