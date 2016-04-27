require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_SYSCTL_H_)) {
    eval 'sub _SYS_SYSCTL_H_ () {1;}' unless defined(&_SYS_SYSCTL_H_);
    require 'sys/queue.ph';
    eval 'sub CTL_MAXNAME () {24;}' unless defined(&CTL_MAXNAME);
    eval 'sub CTLTYPE () {0xf;}' unless defined(&CTLTYPE);
    eval 'sub CTLTYPE_NODE () {1;}' unless defined(&CTLTYPE_NODE);
    eval 'sub CTLTYPE_INT () {2;}' unless defined(&CTLTYPE_INT);
    eval 'sub CTLTYPE_STRING () {3;}' unless defined(&CTLTYPE_STRING);
    eval 'sub CTLTYPE_S64 () {4;}' unless defined(&CTLTYPE_S64);
    eval 'sub CTLTYPE_OPAQUE () {5;}' unless defined(&CTLTYPE_OPAQUE);
    eval 'sub CTLTYPE_STRUCT () { &CTLTYPE_OPAQUE;}' unless defined(&CTLTYPE_STRUCT);
    eval 'sub CTLTYPE_UINT () {6;}' unless defined(&CTLTYPE_UINT);
    eval 'sub CTLTYPE_LONG () {7;}' unless defined(&CTLTYPE_LONG);
    eval 'sub CTLTYPE_ULONG () {8;}' unless defined(&CTLTYPE_ULONG);
    eval 'sub CTLTYPE_U64 () {9;}' unless defined(&CTLTYPE_U64);
    eval 'sub CTLFLAG_RD () {0x80000000;}' unless defined(&CTLFLAG_RD);
    eval 'sub CTLFLAG_WR () {0x40000000;}' unless defined(&CTLFLAG_WR);
    eval 'sub CTLFLAG_RW () {( &CTLFLAG_RD| &CTLFLAG_WR);}' unless defined(&CTLFLAG_RW);
    eval 'sub CTLFLAG_ANYBODY () {0x10000000;}' unless defined(&CTLFLAG_ANYBODY);
    eval 'sub CTLFLAG_SECURE () {0x8000000;}' unless defined(&CTLFLAG_SECURE);
    eval 'sub CTLFLAG_PRISON () {0x4000000;}' unless defined(&CTLFLAG_PRISON);
    eval 'sub CTLFLAG_DYN () {0x2000000;}' unless defined(&CTLFLAG_DYN);
    eval 'sub CTLFLAG_SKIP () {0x1000000;}' unless defined(&CTLFLAG_SKIP);
    eval 'sub CTLMASK_SECURE () {0xf00000;}' unless defined(&CTLMASK_SECURE);
    eval 'sub CTLFLAG_TUN () {0x80000;}' unless defined(&CTLFLAG_TUN);
    eval 'sub CTLFLAG_RDTUN () {( &CTLFLAG_RD| &CTLFLAG_TUN);}' unless defined(&CTLFLAG_RDTUN);
    eval 'sub CTLFLAG_RWTUN () {( &CTLFLAG_RW| &CTLFLAG_TUN);}' unless defined(&CTLFLAG_RWTUN);
    eval 'sub CTLFLAG_MPSAFE () {0x40000;}' unless defined(&CTLFLAG_MPSAFE);
    eval 'sub CTLFLAG_VNET () {0x20000;}' unless defined(&CTLFLAG_VNET);
    eval 'sub CTLFLAG_DYING () {0x10000;}' unless defined(&CTLFLAG_DYING);
    eval 'sub CTLFLAG_CAPRD () {0x8000;}' unless defined(&CTLFLAG_CAPRD);
    eval 'sub CTLFLAG_CAPWR () {0x4000;}' unless defined(&CTLFLAG_CAPWR);
    eval 'sub CTLFLAG_STATS () {0x2000;}' unless defined(&CTLFLAG_STATS);
    eval 'sub CTLFLAG_NOFETCH () {0x1000;}' unless defined(&CTLFLAG_NOFETCH);
    eval 'sub CTLFLAG_CAPRW () {( &CTLFLAG_CAPRD| &CTLFLAG_CAPWR);}' unless defined(&CTLFLAG_CAPRW);
    eval 'sub CTLSHIFT_SECURE () {20;}' unless defined(&CTLSHIFT_SECURE);
    eval 'sub CTLFLAG_SECURE1 () {( &CTLFLAG_SECURE | (0<<  &CTLSHIFT_SECURE));}' unless defined(&CTLFLAG_SECURE1);
    eval 'sub CTLFLAG_SECURE2 () {( &CTLFLAG_SECURE | (1<<  &CTLSHIFT_SECURE));}' unless defined(&CTLFLAG_SECURE2);
    eval 'sub CTLFLAG_SECURE3 () {( &CTLFLAG_SECURE | (2<<  &CTLSHIFT_SECURE));}' unless defined(&CTLFLAG_SECURE3);
    eval 'sub OID_AUTO () {(-1);}' unless defined(&OID_AUTO);
    eval 'sub CTL_AUTO_START () {0x100;}' unless defined(&CTL_AUTO_START);
    if(defined(&_KERNEL)) {
	require 'sys/linker_set.ph';
	eval 'sub SYSCTL_HANDLER_ARGS () {\'struct sysctl_oid\' * &oidp,  &void * &arg1,  &intptr_t  &arg2, \'struct sysctl_req\' * &req;}' unless defined(&SYSCTL_HANDLER_ARGS);
	eval 'sub REQ_UNWIRED () {1;}' unless defined(&REQ_UNWIRED);
	eval 'sub REQ_WIRED () {2;}' unless defined(&REQ_WIRED);
	if(defined(&__amd64__) || defined(&__ia64__) || defined(&__powerpc64__) || (defined(&__mips__)  && defined(&__mips_n64))) {
	    eval 'sub SCTL_MASK32 () {1;}' unless defined(&SCTL_MASK32);
	}
	eval 'sub SYSCTL_IN {
	    my($r, $p, $l) = @_;
    	    eval q(( ($r->{newfunc}))($r, $p, $l));
	}' unless defined(&SYSCTL_IN);
	eval 'sub SYSCTL_OUT {
	    my($r, $p, $l) = @_;
    	    eval q(( ($r->{o$ldfunc}))($r, $p, $l));
	}' unless defined(&SYSCTL_OUT);
	eval 'sub SYSCTL_DECL {
	    my($name) = @_;
    	    eval q( &extern \'struct sysctl_oid_list\'  &sysctl_$name &_children);
	}' unless defined(&SYSCTL_DECL);
	eval 'sub SYSCTL_CHILDREN {
	    my($oid_ptr) = @_;
    	    eval q(($oid_ptr)-> &oid_arg1);
	}' unless defined(&SYSCTL_CHILDREN);
	eval 'sub SYSCTL_PARENT {
	    my($oid_ptr) = @_;
    	    eval q( &NULL);
	}' unless defined(&SYSCTL_PARENT);
	eval 'sub SYSCTL_CHILDREN_SET {
	    my($oid_ptr, $val) = @_;
    	    eval q(($oid_ptr)-> &oid_arg1 = ($val));
	}' unless defined(&SYSCTL_CHILDREN_SET);
	eval 'sub SYSCTL_STATIC_CHILDREN {
	    my($oid_name) = @_;
    	    eval q(( &sysctl_$oid_name &_children));
	}' unless defined(&SYSCTL_STATIC_CHILDREN);
	eval 'sub SYSCTL_NODE_CHILDREN {
	    my($parent, $name) = @_;
    	    eval q( &sysctl_$parent &_$name &_children);
	}' unless defined(&SYSCTL_NODE_CHILDREN);
	eval 'sub SYSCTL_ALLOWED_TYPES {
	    my($type, $decls) = @_;
    	    eval q(\'union sysctl_\'$type { \'long allow_0\'; $decls }  &__attribute__(( &__transparent_union__));  &static  &inline  &void *  &__sysctl_assert_$type(\'union sysctl_\'$type  &ptr) {  &return ( ($ptr->{a})); } \'struct __hack\');
	}' unless defined(&SYSCTL_ALLOWED_TYPES);
	if(defined(&notyet)) {
	    eval 'sub SYSCTL_ADD_ASSERT_TYPE {
	        my($type, $ptr) = @_;
    		eval q( &__sysctl_assert_  $type ($ptr));
	    }' unless defined(&SYSCTL_ADD_ASSERT_TYPE);
	    eval 'sub SYSCTL_ASSERT_TYPE {
	        my($type, $ptr, $parent, $name) = @_;
    		eval q( &_SYSCTL_ASSERT_TYPE($type, $ptr,  &__LINE__, $parent &_$name));
	    }' unless defined(&SYSCTL_ASSERT_TYPE);
	} else {
	    eval 'sub SYSCTL_ADD_ASSERT_TYPE {
	        my($type, $ptr) = @_;
    		eval q($ptr);
	    }' unless defined(&SYSCTL_ADD_ASSERT_TYPE);
	    eval 'sub SYSCTL_ASSERT_TYPE {
	        my($type, $ptr, $parent, $name) = @_;
    		eval q();
	    }' unless defined(&SYSCTL_ASSERT_TYPE);
	}
	eval 'sub _SYSCTL_ASSERT_TYPE {
	    my($t, $p, $l, $id) = @_;
    	    eval q( &__SYSCTL_ASSERT_TYPE($t, $p, $l, $id));
	}' unless defined(&_SYSCTL_ASSERT_TYPE);
	eval 'sub __SYSCTL_ASSERT_TYPE {
	    my($type, $ptr, $line, $id) = @_;
    	    eval q( &static  &inline  &void  &sysctl_assert_$line &_$id( &void) { ( &void) &__sysctl_assert_$type($ptr); } \'struct __hack\');
	}' unless defined(&__SYSCTL_ASSERT_TYPE);
	unless(defined(&NO_SYSCTL_DESCR)) {
	    eval 'sub __DESCR {
	        my($d) = @_;
    		eval q($d);
	    }' unless defined(&__DESCR);
	} else {
	    eval 'sub __DESCR {
	        my($d) = @_;
    		eval q(\\"\\");
	    }' unless defined(&__DESCR);
	}
	eval 'sub SYSCTL_OID {
	    my($parent, $nbr, $name, $kind, $a1, $a2, $handler, $fmt, $descr) = @_;
    	    eval q( &static \'struct sysctl_oid\'  &sysctl__$parent &_$name = {  &sysctl_$parent &_children, {  &NULL }, $nbr, $kind, $a1, $a2, $name, $handler, $fmt, 0, 0,  &__DESCR($descr) };  &DATA_SET( &sysctl_set,  &sysctl__$parent &_$name));
	}' unless defined(&SYSCTL_OID);
	eval 'sub SYSCTL_ADD_OID {
	    my($ctx, $parent, $nbr, $name, $kind, $a1, $a2, $handler, $fmt, $descr) = @_;
    	    eval q( &sysctl_add_oid($ctx, $parent, $nbr, $name, $kind, $a1, $a2, $handler, $fmt,  &__DESCR($descr)));
	}' unless defined(&SYSCTL_ADD_OID);
	eval 'sub SYSCTL_ROOT_NODE {
	    my($nbr, $name, $access, $handler, $descr) = @_;
    	    eval q( &SYSCTL_NODE(, $nbr, $name, $access, $handler, $descr));
	}' unless defined(&SYSCTL_ROOT_NODE);
	eval 'sub SYSCTL_NODE {
	    my($parent, $nbr, $name, $access, $handler, $descr) = @_;
    	    eval q(\'struct sysctl_oid_list\'  &SYSCTL_NODE_CHILDREN($parent, $name);  &SYSCTL_OID($parent, $nbr, $name,  &CTLTYPE_NODE|($access), ( &void*) &SYSCTL_NODE_CHILDREN($parent, $name), 0, $handler, \\"N\\", $descr));
	}' unless defined(&SYSCTL_NODE);
	eval 'sub SYSCTL_ADD_ROOT_NODE {
	    my($ctx, $nbr, $name, $access, $handler, $descr) = @_;
    	    eval q( &SYSCTL_ADD_NODE($ctx,  &SYSCTL_STATIC_CHILDREN(), $nbr, $name, $access, $handler, $descr));
	}' unless defined(&SYSCTL_ADD_ROOT_NODE);
	eval 'sub SYSCTL_ADD_NODE {
	    my($ctx, $parent, $nbr, $name, $access, $handler, $descr) = @_;
    	    eval q( &sysctl_add_oid($ctx, $parent, $nbr, $name,  &CTLTYPE_NODE|($access),  &NULL, 0, $handler, \\"N\\",  &__DESCR($descr)));
	}' unless defined(&SYSCTL_ADD_NODE);
	eval 'sub SYSCTL_STRING {
	    my($parent, $nbr, $name, $access, $arg, $len, $descr) = @_;
    	    eval q( &SYSCTL_OID($parent, $nbr, $name,  &CTLTYPE_STRING|($access), $arg, $len,  &sysctl_handle_string, \\"A\\", $descr));
	}' unless defined(&SYSCTL_STRING);
	eval 'sub SYSCTL_ADD_STRING {
	    my($ctx, $parent, $nbr, $name, $access, $arg, $len, $descr) = @_;
    	    eval q( &sysctl_add_oid($ctx, $parent, $nbr, $name,  &CTLTYPE_STRING|($access), $arg, $len,  &sysctl_handle_string, \\"A\\",  &__DESCR($descr)));
	}' unless defined(&SYSCTL_ADD_STRING);
	eval 'sub SYSCTL_INT {
	    my($parent, $nbr, $name, $access, $ptr, $val, $descr) = @_;
    	    eval q( &SYSCTL_ASSERT_TYPE( &INT, $ptr, $parent, $name);  &SYSCTL_OID($parent, $nbr, $name,  &CTLTYPE_INT |  &CTLFLAG_MPSAFE | ($access), $ptr, $val,  &sysctl_handle_int, \\"I\\", $descr));
	}' unless defined(&SYSCTL_INT);
	eval 'sub SYSCTL_ADD_INT {
	    my($ctx, $parent, $nbr, $name, $access, $ptr, $val, $descr) = @_;
    	    eval q( &sysctl_add_oid($ctx, $parent, $nbr, $name,  &CTLTYPE_INT |  &CTLFLAG_MPSAFE | ($access),  &SYSCTL_ADD_ASSERT_TYPE( &INT, $ptr), $val,  &sysctl_handle_int, \\"I\\",  &__DESCR($descr)));
	}' unless defined(&SYSCTL_ADD_INT);
	eval 'sub SYSCTL_UINT {
	    my($parent, $nbr, $name, $access, $ptr, $val, $descr) = @_;
    	    eval q( &SYSCTL_ASSERT_TYPE( &UINT, $ptr, $parent, $name);  &SYSCTL_OID($parent, $nbr, $name,  &CTLTYPE_UINT |  &CTLFLAG_MPSAFE | ($access), $ptr, $val,  &sysctl_handle_int, \\"IU\\", $descr));
	}' unless defined(&SYSCTL_UINT);
	eval 'sub SYSCTL_ADD_UINT {
	    my($ctx, $parent, $nbr, $name, $access, $ptr, $val, $descr) = @_;
    	    eval q( &sysctl_add_oid($ctx, $parent, $nbr, $name,  &CTLTYPE_UINT |  &CTLFLAG_MPSAFE | ($access),  &SYSCTL_ADD_ASSERT_TYPE( &UINT, $ptr), $val,  &sysctl_handle_int, \\"IU\\",  &__DESCR($descr)));
	}' unless defined(&SYSCTL_ADD_UINT);
	eval 'sub SYSCTL_LONG {
	    my($parent, $nbr, $name, $access, $ptr, $val, $descr) = @_;
    	    eval q( &SYSCTL_ASSERT_TYPE( &LONG, $ptr, $parent, $name);  &SYSCTL_OID($parent, $nbr, $name,  &CTLTYPE_LONG |  &CTLFLAG_MPSAFE | ($access), $ptr, $val, \'sysctl_handle_long\', \\"L\\", $descr));
	}' unless defined(&SYSCTL_LONG);
	eval 'sub SYSCTL_ADD_LONG {
	    my($ctx, $parent, $nbr, $name, $access, $ptr, $descr) = @_;
    	    eval q( &sysctl_add_oid($ctx, $parent, $nbr, $name,  &CTLTYPE_LONG |  &CTLFLAG_MPSAFE | ($access),  &SYSCTL_ADD_ASSERT_TYPE( &LONG, $ptr), 0, \'sysctl_handle_long\', \\"L\\",  &__DESCR($descr)));
	}' unless defined(&SYSCTL_ADD_LONG);
	eval 'sub SYSCTL_ULONG {
	    my($parent, $nbr, $name, $access, $ptr, $val, $descr) = @_;
    	    eval q( &SYSCTL_ASSERT_TYPE( &ULONG, $ptr, $parent, $name);  &SYSCTL_OID($parent, $nbr, $name,  &CTLTYPE_ULONG |  &CTLFLAG_MPSAFE | ($access), $ptr, $val, \'sysctl_handle_long\', \\"LU\\", $descr));
	}' unless defined(&SYSCTL_ULONG);
	eval 'sub SYSCTL_ADD_ULONG {
	    my($ctx, $parent, $nbr, $name, $access, $ptr, $descr) = @_;
    	    eval q( &sysctl_add_oid($ctx, $parent, $nbr, $name,  &CTLTYPE_ULONG |  &CTLFLAG_MPSAFE | ($access),  &SYSCTL_ADD_ASSERT_TYPE( &ULONG, $ptr), 0, \'sysctl_handle_long\', \\"LU\\",  &__DESCR($descr)));
	}' unless defined(&SYSCTL_ADD_ULONG);
	eval 'sub SYSCTL_QUAD {
	    my($parent, $nbr, $name, $access, $ptr, $val, $descr) = @_;
    	    eval q( &SYSCTL_ASSERT_TYPE( &INT64, $ptr, $parent, $name);  &SYSCTL_OID($parent, $nbr, $name,  &CTLTYPE_S64 |  &CTLFLAG_MPSAFE | ($access), $ptr, $val,  &sysctl_handle_64, \\"Q\\", $descr));
	}' unless defined(&SYSCTL_QUAD);
	eval 'sub SYSCTL_ADD_QUAD {
	    my($ctx, $parent, $nbr, $name, $access, $ptr, $descr) = @_;
    	    eval q( &sysctl_add_oid($ctx, $parent, $nbr, $name,  &CTLTYPE_S64 |  &CTLFLAG_MPSAFE | ($access),  &SYSCTL_ADD_ASSERT_TYPE( &INT64, $ptr), 0,  &sysctl_handle_64, \\"Q\\",  &__DESCR($descr)));
	}' unless defined(&SYSCTL_ADD_QUAD);
	eval 'sub SYSCTL_UQUAD {
	    my($parent, $nbr, $name, $access, $ptr, $val, $descr) = @_;
    	    eval q( &SYSCTL_ASSERT_TYPE( &UINT64, $ptr, $parent, $name);  &SYSCTL_OID($parent, $nbr, $name,  &CTLTYPE_U64 |  &CTLFLAG_MPSAFE | ($access), $ptr, $val,  &sysctl_handle_64, \\"QU\\", $descr));
	}' unless defined(&SYSCTL_UQUAD);
	eval 'sub SYSCTL_ADD_UQUAD {
	    my($ctx, $parent, $nbr, $name, $access, $ptr, $descr) = @_;
    	    eval q( &sysctl_add_oid($ctx, $parent, $nbr, $name,  &CTLTYPE_U64 |  &CTLFLAG_MPSAFE | ($access),  &SYSCTL_ADD_ASSERT_TYPE( &UINT64, $ptr), 0,  &sysctl_handle_64, \\"QU\\",  &__DESCR($descr)));
	}' unless defined(&SYSCTL_ADD_UQUAD);
	eval 'sub SYSCTL_COUNTER_U64 {
	    my($parent, $nbr, $name, $access, $ptr, $descr) = @_;
    	    eval q( &SYSCTL_ASSERT_TYPE( &UINT64, $ptr, $parent, $name);  &SYSCTL_OID($parent, $nbr, $name,  &CTLTYPE_U64 |  &CTLFLAG_MPSAFE | ($access), $ptr, 0,  &sysctl_handle_counter_u64, \\"QU\\", $descr));
	}' unless defined(&SYSCTL_COUNTER_U64);
	eval 'sub SYSCTL_ADD_COUNTER_U64 {
	    my($ctx, $parent, $nbr, $name, $access, $ptr, $descr) = @_;
    	    eval q( &sysctl_add_oid($ctx, $parent, $nbr, $name,  &CTLTYPE_U64 |  &CTLFLAG_MPSAFE | ($access),  &SYSCTL_ADD_ASSERT_TYPE( &UINT64, $ptr), 0,  &sysctl_handle_counter_u64, \\"QU\\",  &__DESCR($descr)));
	}' unless defined(&SYSCTL_ADD_COUNTER_U64);
	eval 'sub SYSCTL_OPAQUE {
	    my($parent, $nbr, $name, $access, $ptr, $len, $fmt, $descr) = @_;
    	    eval q( &SYSCTL_OID($parent, $nbr, $name,  &CTLTYPE_OPAQUE|($access), $ptr, $len,  &sysctl_handle_opaque, $fmt, $descr));
	}' unless defined(&SYSCTL_OPAQUE);
	eval 'sub SYSCTL_ADD_OPAQUE {
	    my($ctx, $parent, $nbr, $name, $access, $ptr, $len, $fmt, $descr) = @_;
    	    eval q( &sysctl_add_oid($ctx, $parent, $nbr, $name,  &CTLTYPE_OPAQUE|($access), $ptr, $len,  &sysctl_handle_opaque, $fmt,  &__DESCR($descr)));
	}' unless defined(&SYSCTL_ADD_OPAQUE);
	eval 'sub SYSCTL_STRUCT {
	    my($parent, $nbr, $name, $access, $ptr, $type, $descr) = @_;
    	    eval q( &SYSCTL_OID($parent, $nbr, $name,  &CTLTYPE_OPAQUE|($access), $ptr, $sizeof{\'struct type\'},  &sysctl_handle_opaque, \\"S,\\" $type, $descr));
	}' unless defined(&SYSCTL_STRUCT);
	eval 'sub SYSCTL_ADD_STRUCT {
	    my($ctx, $parent, $nbr, $name, $access, $ptr, $type, $descr) = @_;
    	    eval q( &sysctl_add_oid($ctx, $parent, $nbr, $name,  &CTLTYPE_OPAQUE|($access), $ptr, $sizeof{\'struct type\'},  &sysctl_handle_opaque, \\"S,\\" $type,  &__DESCR($descr)));
	}' unless defined(&SYSCTL_ADD_STRUCT);
	eval 'sub SYSCTL_PROC {
	    my($parent, $nbr, $name, $access, $ptr, $arg, $handler, $fmt, $descr) = @_;
    	    eval q( &CTASSERT((($access) &  &CTLTYPE) != 0);  &SYSCTL_OID($parent, $nbr, $name, ($access), $ptr, $arg, $handler, $fmt, $descr));
	}' unless defined(&SYSCTL_PROC);
	eval 'sub SYSCTL_ADD_PROC {
	    my($ctx, $parent, $nbr, $name, $access, $ptr, $arg, $handler, $fmt, $descr) = @_;
    	    eval q( &sysctl_add_oid($ctx, $parent, $nbr, $name, ($access), $ptr, $arg, $handler, $fmt,  &__DESCR($descr)));
	}' unless defined(&SYSCTL_ADD_PROC);
	eval 'sub SYSCTL_UMA_MAX {
	    my($parent, $nbr, $name, $access, $ptr, $descr) = @_;
    	    eval q( &SYSCTL_ASSERT_TYPE( &INT, $ptr, $parent, $name);  &SYSCTL_OID($parent, $nbr, $name,  &CTLTYPE_INT |  &CTLFLAG_MPSAFE | ($access), $ptr, 0,  &sysctl_handle_uma_zone_max, \\"I\\", $descr));
	}' unless defined(&SYSCTL_UMA_MAX);
	eval 'sub SYSCTL_ADD_UMA_MAX {
	    my($ctx, $parent, $nbr, $name, $access, $ptr, $descr) = @_;
    	    eval q( &sysctl_add_oid($ctx, $parent, $nbr, $name,  &CTLTYPE_INT |  &CTLFLAG_MPSAFE | ($access),  &SYSCTL_ADD_ASSERT_TYPE( &INT, $ptr), 0,  &sysctl_handle_uma_zone_max, \\"I\\",  &__DESCR($descr)));
	}' unless defined(&SYSCTL_ADD_UMA_MAX);
	eval 'sub SYSCTL_UMA_CUR {
	    my($parent, $nbr, $name, $access, $ptr, $descr) = @_;
    	    eval q( &SYSCTL_ASSERT_TYPE( &INT, $ptr, $parent, $name);  &SYSCTL_OID($parent, $nbr, $name,  &CTLTYPE_INT |  &CTLFLAG_MPSAFE |  &CTLFLAG_RD | ($access), $ptr, 0,  &sysctl_handle_uma_zone_cur, \\"I\\", $descr));
	}' unless defined(&SYSCTL_UMA_CUR);
	eval 'sub SYSCTL_ADD_UMA_CUR {
	    my($ctx, $parent, $nbr, $name, $access, $ptr, $descr) = @_;
    	    eval q( &sysctl_add_oid($ctx, $parent, $nbr, $name,  &CTLTYPE_INT |  &CTLFLAG_MPSAFE |  &CTLFLAG_RD | ($access),  &SYSCTL_ADD_ASSERT_TYPE( &INT, $ptr), 0,  &sysctl_handle_uma_zone_cur, \\"I\\",  &__DESCR($descr)));
	}' unless defined(&SYSCTL_ADD_UMA_CUR);
	eval 'sub FEATURE {
	    my($name, $desc) = @_;
    	    eval q( &SYSCTL_INT( &_kern_features,  &OID_AUTO, $name,  &CTLFLAG_RD |  &CTLFLAG_CAPRD,  &NULL, 1, $desc));
	}' unless defined(&FEATURE);
    }
    eval 'sub CTL_UNSPEC () {0;}' unless defined(&CTL_UNSPEC);
    eval 'sub CTL_KERN () {1;}' unless defined(&CTL_KERN);
    eval 'sub CTL_VM () {2;}' unless defined(&CTL_VM);
    eval 'sub CTL_VFS () {3;}' unless defined(&CTL_VFS);
    eval 'sub CTL_NET () {4;}' unless defined(&CTL_NET);
    eval 'sub CTL_DEBUG () {5;}' unless defined(&CTL_DEBUG);
    eval 'sub CTL_HW () {6;}' unless defined(&CTL_HW);
    eval 'sub CTL_MACHDEP () {7;}' unless defined(&CTL_MACHDEP);
    eval 'sub CTL_USER () {8;}' unless defined(&CTL_USER);
    eval 'sub CTL_P1003_1B () {9;}' unless defined(&CTL_P1003_1B);
    eval 'sub CTL_MAXID () {10;}' unless defined(&CTL_MAXID);
    eval 'sub KERN_OSTYPE () {1;}' unless defined(&KERN_OSTYPE);
    eval 'sub KERN_OSRELEASE () {2;}' unless defined(&KERN_OSRELEASE);
    eval 'sub KERN_OSREV () {3;}' unless defined(&KERN_OSREV);
    eval 'sub KERN_VERSION () {4;}' unless defined(&KERN_VERSION);
    eval 'sub KERN_MAXVNODES () {5;}' unless defined(&KERN_MAXVNODES);
    eval 'sub KERN_MAXPROC () {6;}' unless defined(&KERN_MAXPROC);
    eval 'sub KERN_MAXFILES () {7;}' unless defined(&KERN_MAXFILES);
    eval 'sub KERN_ARGMAX () {8;}' unless defined(&KERN_ARGMAX);
    eval 'sub KERN_SECURELVL () {9;}' unless defined(&KERN_SECURELVL);
    eval 'sub KERN_HOSTNAME () {10;}' unless defined(&KERN_HOSTNAME);
    eval 'sub KERN_HOSTID () {11;}' unless defined(&KERN_HOSTID);
    eval 'sub KERN_CLOCKRATE () {12;}' unless defined(&KERN_CLOCKRATE);
    eval 'sub KERN_VNODE () {13;}' unless defined(&KERN_VNODE);
    eval 'sub KERN_PROC () {14;}' unless defined(&KERN_PROC);
    eval 'sub KERN_FILE () {15;}' unless defined(&KERN_FILE);
    eval 'sub KERN_PROF () {16;}' unless defined(&KERN_PROF);
    eval 'sub KERN_POSIX1 () {17;}' unless defined(&KERN_POSIX1);
    eval 'sub KERN_NGROUPS () {18;}' unless defined(&KERN_NGROUPS);
    eval 'sub KERN_JOB_CONTROL () {19;}' unless defined(&KERN_JOB_CONTROL);
    eval 'sub KERN_SAVED_IDS () {20;}' unless defined(&KERN_SAVED_IDS);
    eval 'sub KERN_BOOTTIME () {21;}' unless defined(&KERN_BOOTTIME);
    eval 'sub KERN_NISDOMAINNAME () {22;}' unless defined(&KERN_NISDOMAINNAME);
    eval 'sub KERN_UPDATEINTERVAL () {23;}' unless defined(&KERN_UPDATEINTERVAL);
    eval 'sub KERN_OSRELDATE () {24;}' unless defined(&KERN_OSRELDATE);
    eval 'sub KERN_NTP_PLL () {25;}' unless defined(&KERN_NTP_PLL);
    eval 'sub KERN_BOOTFILE () {26;}' unless defined(&KERN_BOOTFILE);
    eval 'sub KERN_MAXFILESPERPROC () {27;}' unless defined(&KERN_MAXFILESPERPROC);
    eval 'sub KERN_MAXPROCPERUID () {28;}' unless defined(&KERN_MAXPROCPERUID);
    eval 'sub KERN_DUMPDEV () {29;}' unless defined(&KERN_DUMPDEV);
    eval 'sub KERN_IPC () {30;}' unless defined(&KERN_IPC);
    eval 'sub KERN_DUMMY () {31;}' unless defined(&KERN_DUMMY);
    eval 'sub KERN_PS_STRINGS () {32;}' unless defined(&KERN_PS_STRINGS);
    eval 'sub KERN_USRSTACK () {33;}' unless defined(&KERN_USRSTACK);
    eval 'sub KERN_LOGSIGEXIT () {34;}' unless defined(&KERN_LOGSIGEXIT);
    eval 'sub KERN_IOV_MAX () {35;}' unless defined(&KERN_IOV_MAX);
    eval 'sub KERN_HOSTUUID () {36;}' unless defined(&KERN_HOSTUUID);
    eval 'sub KERN_ARND () {37;}' unless defined(&KERN_ARND);
    eval 'sub KERN_MAXID () {38;}' unless defined(&KERN_MAXID);
    eval 'sub KERN_PROC_ALL () {0;}' unless defined(&KERN_PROC_ALL);
    eval 'sub KERN_PROC_PID () {1;}' unless defined(&KERN_PROC_PID);
    eval 'sub KERN_PROC_PGRP () {2;}' unless defined(&KERN_PROC_PGRP);
    eval 'sub KERN_PROC_SESSION () {3;}' unless defined(&KERN_PROC_SESSION);
    eval 'sub KERN_PROC_TTY () {4;}' unless defined(&KERN_PROC_TTY);
    eval 'sub KERN_PROC_UID () {5;}' unless defined(&KERN_PROC_UID);
    eval 'sub KERN_PROC_RUID () {6;}' unless defined(&KERN_PROC_RUID);
    eval 'sub KERN_PROC_ARGS () {7;}' unless defined(&KERN_PROC_ARGS);
    eval 'sub KERN_PROC_PROC () {8;}' unless defined(&KERN_PROC_PROC);
    eval 'sub KERN_PROC_SV_NAME () {9;}' unless defined(&KERN_PROC_SV_NAME);
    eval 'sub KERN_PROC_RGID () {10;}' unless defined(&KERN_PROC_RGID);
    eval 'sub KERN_PROC_GID () {11;}' unless defined(&KERN_PROC_GID);
    eval 'sub KERN_PROC_PATHNAME () {12;}' unless defined(&KERN_PROC_PATHNAME);
    eval 'sub KERN_PROC_OVMMAP () {13;}' unless defined(&KERN_PROC_OVMMAP);
    eval 'sub KERN_PROC_OFILEDESC () {14;}' unless defined(&KERN_PROC_OFILEDESC);
    eval 'sub KERN_PROC_KSTACK () {15;}' unless defined(&KERN_PROC_KSTACK);
    eval 'sub KERN_PROC_INC_THREAD () {0x10;}' unless defined(&KERN_PROC_INC_THREAD);
    eval 'sub KERN_PROC_VMMAP () {32;}' unless defined(&KERN_PROC_VMMAP);
    eval 'sub KERN_PROC_FILEDESC () {33;}' unless defined(&KERN_PROC_FILEDESC);
    eval 'sub KERN_PROC_GROUPS () {34;}' unless defined(&KERN_PROC_GROUPS);
    eval 'sub KERN_PROC_ENV () {35;}' unless defined(&KERN_PROC_ENV);
    eval 'sub KERN_PROC_AUXV () {36;}' unless defined(&KERN_PROC_AUXV);
    eval 'sub KERN_PROC_RLIMIT () {37;}' unless defined(&KERN_PROC_RLIMIT);
    eval 'sub KERN_PROC_PS_STRINGS () {38;}' unless defined(&KERN_PROC_PS_STRINGS);
    eval 'sub KERN_PROC_UMASK () {39;}' unless defined(&KERN_PROC_UMASK);
    eval 'sub KERN_PROC_OSREL () {40;}' unless defined(&KERN_PROC_OSREL);
    eval 'sub KERN_PROC_SIGTRAMP () {41;}' unless defined(&KERN_PROC_SIGTRAMP);
    eval 'sub KIPC_MAXSOCKBUF () {1;}' unless defined(&KIPC_MAXSOCKBUF);
    eval 'sub KIPC_SOCKBUF_WASTE () {2;}' unless defined(&KIPC_SOCKBUF_WASTE);
    eval 'sub KIPC_SOMAXCONN () {3;}' unless defined(&KIPC_SOMAXCONN);
    eval 'sub KIPC_MAX_LINKHDR () {4;}' unless defined(&KIPC_MAX_LINKHDR);
    eval 'sub KIPC_MAX_PROTOHDR () {5;}' unless defined(&KIPC_MAX_PROTOHDR);
    eval 'sub KIPC_MAX_HDR () {6;}' unless defined(&KIPC_MAX_HDR);
    eval 'sub KIPC_MAX_DATALEN () {7;}' unless defined(&KIPC_MAX_DATALEN);
    eval 'sub HW_MACHINE () {1;}' unless defined(&HW_MACHINE);
    eval 'sub HW_MODEL () {2;}' unless defined(&HW_MODEL);
    eval 'sub HW_NCPU () {3;}' unless defined(&HW_NCPU);
    eval 'sub HW_BYTEORDER () {4;}' unless defined(&HW_BYTEORDER);
    eval 'sub HW_PHYSMEM () {5;}' unless defined(&HW_PHYSMEM);
    eval 'sub HW_USERMEM () {6;}' unless defined(&HW_USERMEM);
    eval 'sub HW_PAGESIZE () {7;}' unless defined(&HW_PAGESIZE);
    eval 'sub HW_DISKNAMES () {8;}' unless defined(&HW_DISKNAMES);
    eval 'sub HW_DISKSTATS () {9;}' unless defined(&HW_DISKSTATS);
    eval 'sub HW_FLOATINGPT () {10;}' unless defined(&HW_FLOATINGPT);
    eval 'sub HW_MACHINE_ARCH () {11;}' unless defined(&HW_MACHINE_ARCH);
    eval 'sub HW_REALMEM () {12;}' unless defined(&HW_REALMEM);
    eval 'sub HW_MAXID () {13;}' unless defined(&HW_MAXID);
    eval 'sub USER_CS_PATH () {1;}' unless defined(&USER_CS_PATH);
    eval 'sub USER_BC_BASE_MAX () {2;}' unless defined(&USER_BC_BASE_MAX);
    eval 'sub USER_BC_DIM_MAX () {3;}' unless defined(&USER_BC_DIM_MAX);
    eval 'sub USER_BC_SCALE_MAX () {4;}' unless defined(&USER_BC_SCALE_MAX);
    eval 'sub USER_BC_STRING_MAX () {5;}' unless defined(&USER_BC_STRING_MAX);
    eval 'sub USER_COLL_WEIGHTS_MAX () {6;}' unless defined(&USER_COLL_WEIGHTS_MAX);
    eval 'sub USER_EXPR_NEST_MAX () {7;}' unless defined(&USER_EXPR_NEST_MAX);
    eval 'sub USER_LINE_MAX () {8;}' unless defined(&USER_LINE_MAX);
    eval 'sub USER_RE_DUP_MAX () {9;}' unless defined(&USER_RE_DUP_MAX);
    eval 'sub USER_POSIX2_VERSION () {10;}' unless defined(&USER_POSIX2_VERSION);
    eval 'sub USER_POSIX2_C_BIND () {11;}' unless defined(&USER_POSIX2_C_BIND);
    eval 'sub USER_POSIX2_C_DEV () {12;}' unless defined(&USER_POSIX2_C_DEV);
    eval 'sub USER_POSIX2_CHAR_TERM () {13;}' unless defined(&USER_POSIX2_CHAR_TERM);
    eval 'sub USER_POSIX2_FORT_DEV () {14;}' unless defined(&USER_POSIX2_FORT_DEV);
    eval 'sub USER_POSIX2_FORT_RUN () {15;}' unless defined(&USER_POSIX2_FORT_RUN);
    eval 'sub USER_POSIX2_LOCALEDEF () {16;}' unless defined(&USER_POSIX2_LOCALEDEF);
    eval 'sub USER_POSIX2_SW_DEV () {17;}' unless defined(&USER_POSIX2_SW_DEV);
    eval 'sub USER_POSIX2_UPE () {18;}' unless defined(&USER_POSIX2_UPE);
    eval 'sub USER_STREAM_MAX () {19;}' unless defined(&USER_STREAM_MAX);
    eval 'sub USER_TZNAME_MAX () {20;}' unless defined(&USER_TZNAME_MAX);
    eval 'sub USER_MAXID () {21;}' unless defined(&USER_MAXID);
    eval 'sub CTL_P1003_1B_ASYNCHRONOUS_IO () {1;}' unless defined(&CTL_P1003_1B_ASYNCHRONOUS_IO);
    eval 'sub CTL_P1003_1B_MAPPED_FILES () {2;}' unless defined(&CTL_P1003_1B_MAPPED_FILES);
    eval 'sub CTL_P1003_1B_MEMLOCK () {3;}' unless defined(&CTL_P1003_1B_MEMLOCK);
    eval 'sub CTL_P1003_1B_MEMLOCK_RANGE () {4;}' unless defined(&CTL_P1003_1B_MEMLOCK_RANGE);
    eval 'sub CTL_P1003_1B_MEMORY_PROTECTION () {5;}' unless defined(&CTL_P1003_1B_MEMORY_PROTECTION);
    eval 'sub CTL_P1003_1B_MESSAGE_PASSING () {6;}' unless defined(&CTL_P1003_1B_MESSAGE_PASSING);
    eval 'sub CTL_P1003_1B_PRIORITIZED_IO () {7;}' unless defined(&CTL_P1003_1B_PRIORITIZED_IO);
    eval 'sub CTL_P1003_1B_PRIORITY_SCHEDULING () {8;}' unless defined(&CTL_P1003_1B_PRIORITY_SCHEDULING);
    eval 'sub CTL_P1003_1B_REALTIME_SIGNALS () {9;}' unless defined(&CTL_P1003_1B_REALTIME_SIGNALS);
    eval 'sub CTL_P1003_1B_SEMAPHORES () {10;}' unless defined(&CTL_P1003_1B_SEMAPHORES);
    eval 'sub CTL_P1003_1B_FSYNC () {11;}' unless defined(&CTL_P1003_1B_FSYNC);
    eval 'sub CTL_P1003_1B_SHARED_MEMORY_OBJECTS () {12;}' unless defined(&CTL_P1003_1B_SHARED_MEMORY_OBJECTS);
    eval 'sub CTL_P1003_1B_SYNCHRONIZED_IO () {13;}' unless defined(&CTL_P1003_1B_SYNCHRONIZED_IO);
    eval 'sub CTL_P1003_1B_TIMERS () {14;}' unless defined(&CTL_P1003_1B_TIMERS);
    eval 'sub CTL_P1003_1B_AIO_LISTIO_MAX () {15;}' unless defined(&CTL_P1003_1B_AIO_LISTIO_MAX);
    eval 'sub CTL_P1003_1B_AIO_MAX () {16;}' unless defined(&CTL_P1003_1B_AIO_MAX);
    eval 'sub CTL_P1003_1B_AIO_PRIO_DELTA_MAX () {17;}' unless defined(&CTL_P1003_1B_AIO_PRIO_DELTA_MAX);
    eval 'sub CTL_P1003_1B_DELAYTIMER_MAX () {18;}' unless defined(&CTL_P1003_1B_DELAYTIMER_MAX);
    eval 'sub CTL_P1003_1B_MQ_OPEN_MAX () {19;}' unless defined(&CTL_P1003_1B_MQ_OPEN_MAX);
    eval 'sub CTL_P1003_1B_PAGESIZE () {20;}' unless defined(&CTL_P1003_1B_PAGESIZE);
    eval 'sub CTL_P1003_1B_RTSIG_MAX () {21;}' unless defined(&CTL_P1003_1B_RTSIG_MAX);
    eval 'sub CTL_P1003_1B_SEM_NSEMS_MAX () {22;}' unless defined(&CTL_P1003_1B_SEM_NSEMS_MAX);
    eval 'sub CTL_P1003_1B_SEM_VALUE_MAX () {23;}' unless defined(&CTL_P1003_1B_SEM_VALUE_MAX);
    eval 'sub CTL_P1003_1B_SIGQUEUE_MAX () {24;}' unless defined(&CTL_P1003_1B_SIGQUEUE_MAX);
    eval 'sub CTL_P1003_1B_TIMER_MAX () {25;}' unless defined(&CTL_P1003_1B_TIMER_MAX);
    eval 'sub CTL_P1003_1B_MAXID () {26;}' unless defined(&CTL_P1003_1B_MAXID);
    if(defined(&_KERNEL)) {
    } else {
	require 'sys/cdefs.ph';
    }
}
1;
