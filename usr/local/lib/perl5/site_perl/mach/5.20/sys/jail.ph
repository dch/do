require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_JAIL_H_)) {
    eval 'sub _SYS_JAIL_H_ () {1;}' unless defined(&_SYS_JAIL_H_);
    if(defined(&_KERNEL)) {
    }
    eval 'sub JAIL_API_VERSION () {2;}' unless defined(&JAIL_API_VERSION);
    unless(defined(&_KERNEL)) {
    }
    if(0) {
    }
    eval 'sub XPRISON_VERSION () {3;}' unless defined(&XPRISON_VERSION);
    eval 'sub PRISON_STATE_INVALID () {0;}' unless defined(&PRISON_STATE_INVALID);
    eval 'sub PRISON_STATE_ALIVE () {1;}' unless defined(&PRISON_STATE_ALIVE);
    eval 'sub PRISON_STATE_DYING () {2;}' unless defined(&PRISON_STATE_DYING);
    eval 'sub JAIL_CREATE () {0x1;}' unless defined(&JAIL_CREATE);
    eval 'sub JAIL_UPDATE () {0x2;}' unless defined(&JAIL_UPDATE);
    eval 'sub JAIL_ATTACH () {0x4;}' unless defined(&JAIL_ATTACH);
    eval 'sub JAIL_DYING () {0x8;}' unless defined(&JAIL_DYING);
    eval 'sub JAIL_SET_MASK () {0xf;}' unless defined(&JAIL_SET_MASK);
    eval 'sub JAIL_GET_MASK () {0x8;}' unless defined(&JAIL_GET_MASK);
    eval 'sub JAIL_SYS_DISABLE () {0;}' unless defined(&JAIL_SYS_DISABLE);
    eval 'sub JAIL_SYS_NEW () {1;}' unless defined(&JAIL_SYS_NEW);
    eval 'sub JAIL_SYS_INHERIT () {2;}' unless defined(&JAIL_SYS_INHERIT);
    unless(defined(&_KERNEL)) {
    } else {
	require 'sys/queue.ph';
	require 'sys/sysctl.ph';
	require 'sys/lock.ph';
	require 'sys/mutex.ph';
	require 'sys/_task.ph';
	eval 'sub JAIL_MAX () {999999;}' unless defined(&JAIL_MAX);
	if(defined(&MALLOC_DECLARE)) {
	}
    }
    if(defined(&_KERNEL) || defined(&_WANT_PRISON)) {
	require 'sys/osd.ph';
	eval 'sub HOSTUUIDLEN () {64;}' unless defined(&HOSTUUIDLEN);
    }
    if(defined(&_KERNEL)) {
	eval 'sub PR_PERSIST () {0x1;}' unless defined(&PR_PERSIST);
	eval 'sub PR_HOST () {0x2;}' unless defined(&PR_HOST);
	eval 'sub PR_IP4_USER () {0x4;}' unless defined(&PR_IP4_USER);
	eval 'sub PR_IP6_USER () {0x8;}' unless defined(&PR_IP6_USER);
	eval 'sub PR_VNET () {0x10;}' unless defined(&PR_VNET);
	eval 'sub PR_IP4_DISABLE () {0x20;}' unless defined(&PR_IP4_DISABLE);
	eval 'sub PR_IP6_DISABLE () {0x40;}' unless defined(&PR_IP6_DISABLE);
	eval 'sub PR_IP4_SADDRSEL () {0x80;}' unless defined(&PR_IP4_SADDRSEL);
	eval 'sub PR_IP6_SADDRSEL () {0x100;}' unless defined(&PR_IP6_SADDRSEL);
	eval 'sub PR_REMOVE () {0x1000000;}' unless defined(&PR_REMOVE);
	eval 'sub PR_IP4 () {0x2000000;}' unless defined(&PR_IP4);
	eval 'sub PR_IP6 () {0x4000000;}' unless defined(&PR_IP6);
	eval 'sub PR_ALLOW_SET_HOSTNAME () {0x1;}' unless defined(&PR_ALLOW_SET_HOSTNAME);
	eval 'sub PR_ALLOW_SYSVIPC () {0x2;}' unless defined(&PR_ALLOW_SYSVIPC);
	eval 'sub PR_ALLOW_RAW_SOCKETS () {0x4;}' unless defined(&PR_ALLOW_RAW_SOCKETS);
	eval 'sub PR_ALLOW_CHFLAGS () {0x8;}' unless defined(&PR_ALLOW_CHFLAGS);
	eval 'sub PR_ALLOW_MOUNT () {0x10;}' unless defined(&PR_ALLOW_MOUNT);
	eval 'sub PR_ALLOW_QUOTAS () {0x20;}' unless defined(&PR_ALLOW_QUOTAS);
	eval 'sub PR_ALLOW_SOCKET_AF () {0x40;}' unless defined(&PR_ALLOW_SOCKET_AF);
	eval 'sub PR_ALLOW_MOUNT_DEVFS () {0x80;}' unless defined(&PR_ALLOW_MOUNT_DEVFS);
	eval 'sub PR_ALLOW_MOUNT_NULLFS () {0x100;}' unless defined(&PR_ALLOW_MOUNT_NULLFS);
	eval 'sub PR_ALLOW_MOUNT_ZFS () {0x200;}' unless defined(&PR_ALLOW_MOUNT_ZFS);
	eval 'sub PR_ALLOW_MOUNT_PROCFS () {0x400;}' unless defined(&PR_ALLOW_MOUNT_PROCFS);
	eval 'sub PR_ALLOW_MOUNT_TMPFS () {0x800;}' unless defined(&PR_ALLOW_MOUNT_TMPFS);
	eval 'sub PR_ALLOW_ALL () {0xfff;}' unless defined(&PR_ALLOW_ALL);
	eval 'sub PR_METHOD_CREATE () {0;}' unless defined(&PR_METHOD_CREATE);
	eval 'sub PR_METHOD_GET () {1;}' unless defined(&PR_METHOD_GET);
	eval 'sub PR_METHOD_SET () {2;}' unless defined(&PR_METHOD_SET);
	eval 'sub PR_METHOD_CHECK () {3;}' unless defined(&PR_METHOD_CHECK);
	eval 'sub PR_METHOD_ATTACH () {4;}' unless defined(&PR_METHOD_ATTACH);
	eval 'sub PR_MAXMETHOD () {5;}' unless defined(&PR_MAXMETHOD);
	eval 'sub prison_unlock {
	    my($pr) = @_;
    	    eval q({  &mtx_unlock( ($pr->{pr_mtx})); });
	}' unless defined(&prison_unlock);
	eval 'sub FOREACH_PRISON_CHILD {
	    my($ppr, $cpr) = @_;
    	    eval q( &LIST_FOREACH($cpr, ($ppr)-> &pr_children,  &pr_sibling));
	}' unless defined(&FOREACH_PRISON_CHILD);
	eval 'sub FOREACH_PRISON_DESCENDANT {
	    my($ppr, $cpr, $descend) = @_;
    	    eval q( &for (($cpr) = ($ppr), ($descend) = 1; (($cpr) = ((($descend)  && ! &LIST_EMPTY(($cpr)-> &pr_children)) ?  &LIST_FIRST(($cpr)-> &pr_children) : (($cpr) == ($ppr) ?  &NULL : ((($descend) =  &LIST_NEXT($cpr,  &pr_sibling) !=  &NULL) ?  &LIST_NEXT($cpr,  &pr_sibling) : ($cpr)-> &pr_parent))));)  &if (!($descend)) ;  &else);
	}' unless defined(&FOREACH_PRISON_DESCENDANT);
	eval 'sub FOREACH_PRISON_DESCENDANT_LOCKED {
	    my($ppr, $cpr, $descend) = @_;
    	    eval q( &for (($cpr) = ($ppr), ($descend) = 1; (($cpr) = ((($descend)  && ! &LIST_EMPTY(($cpr)-> &pr_children)) ?  &LIST_FIRST(($cpr)-> &pr_children) : (($cpr) == ($ppr) ?  &NULL : (( &prison_unlock($cpr), ($descend) =  &LIST_NEXT($cpr,  &pr_sibling) !=  &NULL) ?  &LIST_NEXT($cpr,  &pr_sibling) : ($cpr)-> &pr_parent))));)  &if (($descend) ? ( &prison_lock($cpr), 0) : 1) ;  &else);
	}' unless defined(&FOREACH_PRISON_DESCENDANT_LOCKED);
	eval 'sub FOREACH_PRISON_DESCENDANT_LOCKED_LEVEL {
	    my($ppr, $cpr, $descend, $level) = @_;
    	    eval q( &for (($cpr) = ($ppr), ($descend) = 1, ($level) = 0; (($cpr) = ((($descend)  && ! &LIST_EMPTY(($cpr)-> &pr_children)) ? ($level++,  &LIST_FIRST(($cpr)-> &pr_children)) : (($cpr) == ($ppr) ?  &NULL : (( &prison_unlock($cpr), ($descend) =  &LIST_NEXT($cpr,  &pr_sibling) !=  &NULL) ?  &LIST_NEXT($cpr,  &pr_sibling) : ($level--, ($cpr)-> &pr_parent)))));)  &if (($descend) ? ( &prison_lock($cpr), 0) : 1) ;  &else);
	}' unless defined(&FOREACH_PRISON_DESCENDANT_LOCKED_LEVEL);
	eval 'sub SYSCTL_JAIL_PARAM {
	    my($module, $param, $type, $fmt, $descr) = @_;
    	    eval q( &SYSCTL_PROC( &_security_jail_param  $module,  &OID_AUTO, $param, ($type) |  &CTLFLAG_MPSAFE,  &NULL, 0,  &sysctl_jail_param, $fmt, $descr));
	}' unless defined(&SYSCTL_JAIL_PARAM);
	eval 'sub SYSCTL_JAIL_PARAM_STRING {
	    my($module, $param, $access, $len, $descr) = @_;
    	    eval q( &SYSCTL_PROC( &_security_jail_param  $module,  &OID_AUTO, $param,  &CTLTYPE_STRING |  &CTLFLAG_MPSAFE | ($access),  &NULL, $len,  &sysctl_jail_param, \\"A\\", $descr));
	}' unless defined(&SYSCTL_JAIL_PARAM_STRING);
	eval 'sub SYSCTL_JAIL_PARAM_STRUCT {
	    my($module, $param, $access, $len, $fmt, $descr) = @_;
    	    eval q( &SYSCTL_PROC( &_security_jail_param  $module,  &OID_AUTO, $param,  &CTLTYPE_STRUCT |  &CTLFLAG_MPSAFE | ($access),  &NULL, $len,  &sysctl_jail_param, $fmt, $descr));
	}' unless defined(&SYSCTL_JAIL_PARAM_STRUCT);
	eval 'sub SYSCTL_JAIL_PARAM_NODE {
	    my($module, $descr) = @_;
    	    eval q( &SYSCTL_NODE( &_security_jail_param,  &OID_AUTO, $module, 0, 0, $descr));
	}' unless defined(&SYSCTL_JAIL_PARAM_NODE);
	eval 'sub SYSCTL_JAIL_PARAM_SUBNODE {
	    my($parent, $module, $descr) = @_;
    	    eval q( &SYSCTL_NODE( &_security_jail_param_$parent,  &OID_AUTO, $module, 0, 0, $descr));
	}' unless defined(&SYSCTL_JAIL_PARAM_SUBNODE);
	eval 'sub SYSCTL_JAIL_PARAM_SYS_NODE {
	    my($module, $access, $descr) = @_;
    	    eval q( &SYSCTL_JAIL_PARAM_NODE($module, $descr);  &SYSCTL_JAIL_PARAM( &_$module, ,  &CTLTYPE_INT | ($access), \\"E,jailsys\\", $descr));
	}' unless defined(&SYSCTL_JAIL_PARAM_SYS_NODE);
	if(defined(&INET6)) {
	}
    }
}
1;
