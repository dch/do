require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_DOMAIN_H_)) {
    eval 'sub _SYS_DOMAIN_H_ () {1;}' unless defined(&_SYS_DOMAIN_H_);
    if(defined(&_KERNEL)) {
	if(defined(&VIMAGE)) {
	}
	eval 'sub DOMAIN_SET {
	    my($name) = @_;
    	    eval q( &SYSINIT( &domain_add_  $name,  &SI_SUB_PROTO_DOMAIN,  &SI_ORDER_FIRST,  &domain_add, & $name   &domain);  &SYSINIT( &domain_init_  $name,  &SI_SUB_PROTO_DOMAIN,  &SI_ORDER_SECOND,  &domain_init, & $name   &domain););
	}' unless defined(&DOMAIN_SET);
	if(defined(&VIMAGE)) {
	    eval 'sub VNET_DOMAIN_SET {
	        my($name) = @_;
    		eval q( &SYSINIT( &domain_add_  $name,  &SI_SUB_PROTO_DOMAIN,  &SI_ORDER_FIRST,  &domain_add, & $name   &domain);  &VNET_SYSINIT( &vnet_domain_init_  $name,  &SI_SUB_PROTO_DOMAIN,  &SI_ORDER_SECOND,  &vnet_domain_init, & $name   &domain);  &VNET_SYSUNINIT( &vnet_domain_uninit_  $name,  &SI_SUB_PROTO_DOMAIN,  &SI_ORDER_SECOND,  &vnet_domain_uninit, & $name   &domain));
	    }' unless defined(&VNET_DOMAIN_SET);
	} else {
	    eval 'sub VNET_DOMAIN_SET {
	        my($name) = @_;
    		eval q( &DOMAIN_SET($name));
	    }' unless defined(&VNET_DOMAIN_SET);
	}
    }
}
1;
