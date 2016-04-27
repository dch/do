require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__SYS_PCTRIE_H_)) {
    eval 'sub __SYS_PCTRIE_H_ () {1;}' unless defined(&__SYS_PCTRIE_H_);
    if(defined(&_KERNEL)) {
	eval 'sub pctrie_is_empty {
	    my($ptree) = @_;
    	    eval q({ ( ($ptree->{pt_root}) == 0); });
	}' unless defined(&pctrie_is_empty);
    }
}
1;
