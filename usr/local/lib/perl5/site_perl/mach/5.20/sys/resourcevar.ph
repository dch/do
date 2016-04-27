require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_RESOURCEVAR_H_)) {
    eval 'sub _SYS_RESOURCEVAR_H_ () {1;}' unless defined(&_SYS_RESOURCEVAR_H_);
    require 'sys/resource.ph';
    require 'sys/queue.ph';
    if(defined(&_KERNEL)) {
	require 'sys/_lock.ph';
	require 'sys/_mutex.ph';
    }
    eval 'sub pstat_startzero () { &p_cru;}' unless defined(&pstat_startzero);
    eval 'sub pstat_endzero () { &pstat_startcopy;}' unless defined(&pstat_endzero);
    eval 'sub pstat_startcopy () { &p_prof;}' unless defined(&pstat_startcopy);
    eval 'sub pstat_endcopy () { &p_start;}' unless defined(&pstat_endcopy);
    if(defined(&_KERNEL)) {
	eval 'sub UIDINFO_VMSIZE_LOCK {
	    my($ui) = @_;
    	    eval q( &mtx_lock((($ui)-> &ui_vmsize_mtx)));
	}' unless defined(&UIDINFO_VMSIZE_LOCK);
	eval 'sub UIDINFO_VMSIZE_UNLOCK {
	    my($ui) = @_;
    	    eval q( &mtx_unlock((($ui)-> &ui_vmsize_mtx)));
	}' unless defined(&UIDINFO_VMSIZE_UNLOCK);
    }
}
1;
