require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_SF_BUF_H_)) {
    eval 'sub _MACHINE_SF_BUF_H_ () {1;}' unless defined(&_MACHINE_SF_BUF_H_);
    require 'vm/vm.ph';
    require 'vm/vm_param.ph';
    require 'vm/vm_page.ph';
    eval 'sub sf_buf_alloc {
        my($m,$pri) = @_;
	    eval q({ ($m); });
    }' unless defined(&sf_buf_alloc);
    eval 'sub sf_buf_free {
        my($sf) = @_;
	    eval q({ });
    }' unless defined(&sf_buf_free);
    eval 'sub sf_buf_kva {
        my($sf) = @_;
	    eval q({ ( &PHYS_TO_DMAP( &VM_PAGE_TO_PHYS(( &vm_page_t)$sf))); });
    }' unless defined(&sf_buf_kva);
    eval 'sub sf_buf_page {
        my($sf) = @_;
	    eval q({ (( &vm_page_t)$sf); });
    }' unless defined(&sf_buf_page);
}
1;
