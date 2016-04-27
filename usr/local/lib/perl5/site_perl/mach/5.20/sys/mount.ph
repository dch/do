require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_MOUNT_H_)) {
    eval 'sub _SYS_MOUNT_H_ () {1;}' unless defined(&_SYS_MOUNT_H_);
    require 'sys/ucred.ph';
    require 'sys/queue.ph';
    if(defined(&_KERNEL)) {
	require 'sys/lock.ph';
	require 'sys/lockmgr.ph';
	require 'sys/_mutex.ph';
	require 'sys/_sx.ph';
    }
    eval 'sub MAXFIDSZ () {16;}' unless defined(&MAXFIDSZ);
    eval 'sub MFSNAMELEN () {16;}' unless defined(&MFSNAMELEN);
    eval 'sub MNAMELEN () {88;}' unless defined(&MNAMELEN);
    eval 'sub STATFS_VERSION () {0x20030518;}' unless defined(&STATFS_VERSION);
    if(defined(&_KERNEL)) {
	eval 'sub OMFSNAMELEN () {16;}' unless defined(&OMFSNAMELEN);
	eval 'sub OMNAMELEN () {(88- 2* $sizeof{\'long\'});}' unless defined(&OMNAMELEN);
	eval 'sub mnt_startzero () { &mnt_list;}' unless defined(&mnt_startzero);
	eval 'sub mnt_endzero () { &mnt_gjprovider;}' unless defined(&mnt_endzero);
	eval 'sub MNT_VNODE_FOREACH_ALL {
	    my($vp, $mp, $mvp) = @_;
    	    eval q( &for ($vp =  &__mnt_vnode_first_all(($mvp), ($mp)); ($vp) !=  &NULL; $vp =  &__mnt_vnode_next_all(($mvp), ($mp))));
	}' unless defined(&MNT_VNODE_FOREACH_ALL);
	eval 'sub MNT_VNODE_FOREACH_ALL_ABORT {
	    my($mp, $mvp) = @_;
    	    eval q( &do {  &MNT_ILOCK($mp);  &__mnt_vnode_markerfree_all(($mvp), ($mp));  &mtx_assert( &MNT_MTX($mp),  &MA_NOTOWNED); }  &while (0));
	}' unless defined(&MNT_VNODE_FOREACH_ALL_ABORT);
	eval 'sub MNT_VNODE_FOREACH_ACTIVE {
	    my($vp, $mp, $mvp) = @_;
    	    eval q( &for ($vp =  &__mnt_vnode_first_active(($mvp), ($mp)); ($vp) !=  &NULL; $vp =  &__mnt_vnode_next_active(($mvp), ($mp))));
	}' unless defined(&MNT_VNODE_FOREACH_ACTIVE);
	eval 'sub MNT_VNODE_FOREACH_ACTIVE_ABORT {
	    my($mp, $mvp) = @_;
    	    eval q( &__mnt_vnode_markerfree_active(($mvp), ($mp)));
	}' unless defined(&MNT_VNODE_FOREACH_ACTIVE_ABORT);
	eval 'sub MNT_ILOCK {
	    my($mp) = @_;
    	    eval q( &mtx_lock(($mp)-> &mnt_mtx));
	}' unless defined(&MNT_ILOCK);
	eval 'sub MNT_ITRYLOCK {
	    my($mp) = @_;
    	    eval q( &mtx_trylock(($mp)-> &mnt_mtx));
	}' unless defined(&MNT_ITRYLOCK);
	eval 'sub MNT_IUNLOCK {
	    my($mp) = @_;
    	    eval q( &mtx_unlock(($mp)-> &mnt_mtx));
	}' unless defined(&MNT_IUNLOCK);
	eval 'sub MNT_MTX {
	    my($mp) = @_;
    	    eval q((($mp)-> &mnt_mtx));
	}' unless defined(&MNT_MTX);
	eval 'sub MNT_REF {
	    my($mp) = @_;
    	    eval q(($mp)-> &mnt_ref++);
	}' unless defined(&MNT_REF);
	eval 'sub MNT_REL {
	    my($mp) = @_;
    	    eval q( &do {  &KASSERT(($mp)-> &mnt_ref > 0, (\\"negative mnt_ref\\")); ($mp)-> &mnt_ref--;  &if (($mp)-> &mnt_ref == 0)  &wakeup(($mp)); }  &while (0));
	}' unless defined(&MNT_REL);
    }
    eval 'sub MNT_RDONLY () {0x1;}' unless defined(&MNT_RDONLY);
    eval 'sub MNT_SYNCHRONOUS () {0x2;}' unless defined(&MNT_SYNCHRONOUS);
    eval 'sub MNT_NOEXEC () {0x4;}' unless defined(&MNT_NOEXEC);
    eval 'sub MNT_NOSUID () {0x8;}' unless defined(&MNT_NOSUID);
    eval 'sub MNT_NFS4ACLS () {0x10;}' unless defined(&MNT_NFS4ACLS);
    eval 'sub MNT_UNION () {0x20;}' unless defined(&MNT_UNION);
    eval 'sub MNT_ASYNC () {0x40;}' unless defined(&MNT_ASYNC);
    eval 'sub MNT_SUIDDIR () {0x100000;}' unless defined(&MNT_SUIDDIR);
    eval 'sub MNT_SOFTDEP () {0x200000;}' unless defined(&MNT_SOFTDEP);
    eval 'sub MNT_NOSYMFOLLOW () {0x400000;}' unless defined(&MNT_NOSYMFOLLOW);
    eval 'sub MNT_GJOURNAL () {0x2000000;}' unless defined(&MNT_GJOURNAL);
    eval 'sub MNT_MULTILABEL () {0x4000000;}' unless defined(&MNT_MULTILABEL);
    eval 'sub MNT_ACLS () {0x8000000;}' unless defined(&MNT_ACLS);
    eval 'sub MNT_NOATIME () {0x10000000;}' unless defined(&MNT_NOATIME);
    eval 'sub MNT_NOCLUSTERR () {0x40000000;}' unless defined(&MNT_NOCLUSTERR);
    eval 'sub MNT_NOCLUSTERW () {0x80000000;}' unless defined(&MNT_NOCLUSTERW);
    eval 'sub MNT_SUJ () {0x100000000;}' unless defined(&MNT_SUJ);
    eval 'sub MNT_AUTOMOUNTED () {0x200000000;}' unless defined(&MNT_AUTOMOUNTED);
    eval 'sub MNT_EXRDONLY () {0x80;}' unless defined(&MNT_EXRDONLY);
    eval 'sub MNT_EXPORTED () {0x100;}' unless defined(&MNT_EXPORTED);
    eval 'sub MNT_DEFEXPORTED () {0x200;}' unless defined(&MNT_DEFEXPORTED);
    eval 'sub MNT_EXPORTANON () {0x400;}' unless defined(&MNT_EXPORTANON);
    eval 'sub MNT_EXKERB () {0x800;}' unless defined(&MNT_EXKERB);
    eval 'sub MNT_EXPUBLIC () {0x20000000;}' unless defined(&MNT_EXPUBLIC);
    eval 'sub MNT_LOCAL () {0x1000;}' unless defined(&MNT_LOCAL);
    eval 'sub MNT_QUOTA () {0x2000;}' unless defined(&MNT_QUOTA);
    eval 'sub MNT_ROOTFS () {0x4000;}' unless defined(&MNT_ROOTFS);
    eval 'sub MNT_USER () {0x8000;}' unless defined(&MNT_USER);
    eval 'sub MNT_IGNORE () {0x800000;}' unless defined(&MNT_IGNORE);
    eval 'sub MNT_VISFLAGMASK () {( &MNT_RDONLY |  &MNT_SYNCHRONOUS |  &MNT_NOEXEC |  &MNT_NOSUID |  &MNT_UNION |  &MNT_SUJ |  &MNT_ASYNC |  &MNT_EXRDONLY |  &MNT_EXPORTED |  &MNT_DEFEXPORTED |  &MNT_EXPORTANON|  &MNT_EXKERB |  &MNT_LOCAL |  &MNT_USER |  &MNT_QUOTA |  &MNT_ROOTFS |  &MNT_NOATIME |  &MNT_NOCLUSTERR|  &MNT_NOCLUSTERW |  &MNT_SUIDDIR |  &MNT_SOFTDEP |  &MNT_IGNORE |  &MNT_EXPUBLIC |  &MNT_NOSYMFOLLOW |  &MNT_GJOURNAL |  &MNT_MULTILABEL |  &MNT_ACLS |  &MNT_NFS4ACLS |  &MNT_AUTOMOUNTED);}' unless defined(&MNT_VISFLAGMASK);
    eval 'sub MNT_UPDATEMASK () {( &MNT_NOSUID |  &MNT_NOEXEC |  &MNT_SYNCHRONOUS |  &MNT_UNION |  &MNT_ASYNC |  &MNT_NOATIME |  &MNT_NOSYMFOLLOW |  &MNT_IGNORE |  &MNT_NOCLUSTERR |  &MNT_NOCLUSTERW |  &MNT_SUIDDIR |  &MNT_ACLS |  &MNT_USER |  &MNT_NFS4ACLS |  &MNT_AUTOMOUNTED);}' unless defined(&MNT_UPDATEMASK);
    eval 'sub MNT_UPDATE () {0x10000;}' unless defined(&MNT_UPDATE);
    eval 'sub MNT_DELEXPORT () {0x20000;}' unless defined(&MNT_DELEXPORT);
    eval 'sub MNT_RELOAD () {0x40000;}' unless defined(&MNT_RELOAD);
    eval 'sub MNT_FORCE () {0x80000;}' unless defined(&MNT_FORCE);
    eval 'sub MNT_SNAPSHOT () {0x1000000;}' unless defined(&MNT_SNAPSHOT);
    eval 'sub MNT_BYFSID () {0x8000000;}' unless defined(&MNT_BYFSID);
    eval 'sub MNT_CMDFLAGS () {( &MNT_UPDATE |  &MNT_DELEXPORT |  &MNT_RELOAD |  &MNT_FORCE |  &MNT_SNAPSHOT |  &MNT_BYFSID);}' unless defined(&MNT_CMDFLAGS);
    eval 'sub MNTK_UNMOUNTF () {0x1;}' unless defined(&MNTK_UNMOUNTF);
    eval 'sub MNTK_ASYNC () {0x2;}' unless defined(&MNTK_ASYNC);
    eval 'sub MNTK_SOFTDEP () {0x4;}' unless defined(&MNTK_SOFTDEP);
    eval 'sub MNTK_NOINSMNTQ () {0x8;}' unless defined(&MNTK_NOINSMNTQ);
    eval 'sub MNTK_DRAINING () {0x10;}' unless defined(&MNTK_DRAINING);
    eval 'sub MNTK_REFEXPIRE () {0x20;}' unless defined(&MNTK_REFEXPIRE);
    eval 'sub MNTK_EXTENDED_SHARED () {0x40;}' unless defined(&MNTK_EXTENDED_SHARED);
    eval 'sub MNTK_SHARED_WRITES () {0x80;}' unless defined(&MNTK_SHARED_WRITES);
    eval 'sub MNTK_NO_IOPF () {0x100;}' unless defined(&MNTK_NO_IOPF);
    eval 'sub MNTK_VGONE_UPPER () {0x200;}' unless defined(&MNTK_VGONE_UPPER);
    eval 'sub MNTK_VGONE_WAITER () {0x400;}' unless defined(&MNTK_VGONE_WAITER);
    eval 'sub MNTK_LOOKUP_EXCL_DOTDOT () {0x800;}' unless defined(&MNTK_LOOKUP_EXCL_DOTDOT);
    eval 'sub MNTK_MARKER () {0x1000;}' unless defined(&MNTK_MARKER);
    eval 'sub MNTK_UNMAPPED_BUFS () {0x2000;}' unless defined(&MNTK_UNMAPPED_BUFS);
    eval 'sub MNTK_NOASYNC () {0x800000;}' unless defined(&MNTK_NOASYNC);
    eval 'sub MNTK_UNMOUNT () {0x1000000;}' unless defined(&MNTK_UNMOUNT);
    eval 'sub MNTK_MWAIT () {0x2000000;}' unless defined(&MNTK_MWAIT);
    eval 'sub MNTK_SUSPEND () {0x8000000;}' unless defined(&MNTK_SUSPEND);
    eval 'sub MNTK_SUSPEND2 () {0x4000000;}' unless defined(&MNTK_SUSPEND2);
    eval 'sub MNTK_SUSPENDED () {0x10000000;}' unless defined(&MNTK_SUSPENDED);
    eval 'sub MNTK_UNUSED25 () {0x20000000;}' unless defined(&MNTK_UNUSED25);
    eval 'sub MNTK_LOOKUP_SHARED () {0x40000000;}' unless defined(&MNTK_LOOKUP_SHARED);
    eval 'sub MNTK_NOKNOTE () {0x80000000;}' unless defined(&MNTK_NOKNOTE);
    if(defined(&_KERNEL)) {
	eval 'sub MNT_SHARED_WRITES {
	    my($mp) = @_;
    	    eval q({ ($mp !=  &NULL  && ( ($mp->{mnt_kern_flag}) &  &MNTK_SHARED_WRITES) != 0); });
	}' unless defined(&MNT_SHARED_WRITES);
	eval 'sub MNT_EXTENDED_SHARED {
	    my($mp) = @_;
    	    eval q({ ($mp !=  &NULL  && ( ($mp->{mnt_kern_flag}) &  &MNTK_EXTENDED_SHARED) != 0); });
	}' unless defined(&MNT_EXTENDED_SHARED);
    }
    eval 'sub VFS_VFSCONF () {0;}' unless defined(&VFS_VFSCONF);
    eval 'sub VFS_GENERIC () {0;}' unless defined(&VFS_GENERIC);
    eval 'sub VFS_MAXTYPENUM () {1;}' unless defined(&VFS_MAXTYPENUM);
    eval 'sub VFS_CONF () {2;}' unless defined(&VFS_CONF);
    eval 'sub MNT_WAIT () {1;}' unless defined(&MNT_WAIT);
    eval 'sub MNT_NOWAIT () {2;}' unless defined(&MNT_NOWAIT);
    eval 'sub MNT_LAZY () {3;}' unless defined(&MNT_LAZY);
    eval 'sub MNT_SUSPEND () {4;}' unless defined(&MNT_SUSPEND);
    eval 'sub MAXSECFLAVORS () {5;}' unless defined(&MAXSECFLAVORS);
    unless(defined(&BURN_BRIDGES)) {
    }
    eval 'sub VFCF_STATIC () {0x10000;}' unless defined(&VFCF_STATIC);
    eval 'sub VFCF_NETWORK () {0x20000;}' unless defined(&VFCF_NETWORK);
    eval 'sub VFCF_READONLY () {0x40000;}' unless defined(&VFCF_READONLY);
    eval 'sub VFCF_SYNTHETIC () {0x80000;}' unless defined(&VFCF_SYNTHETIC);
    eval 'sub VFCF_LOOPBACK () {0x100000;}' unless defined(&VFCF_LOOPBACK);
    eval 'sub VFCF_UNICODE () {0x200000;}' unless defined(&VFCF_UNICODE);
    eval 'sub VFCF_JAIL () {0x400000;}' unless defined(&VFCF_JAIL);
    eval 'sub VFCF_DELEGADMIN () {0x800000;}' unless defined(&VFCF_DELEGADMIN);
    eval 'sub VFCF_SBDRY () {0x1000000;}' unless defined(&VFCF_SBDRY);
    eval 'sub VFS_CTL_VERS1 () {0x1;}' unless defined(&VFS_CTL_VERS1);
    eval 'sub VFS_CTL_QUERY () {0x10001;}' unless defined(&VFS_CTL_QUERY);
    eval 'sub VFS_CTL_TIMEO () {0x10002;}' unless defined(&VFS_CTL_TIMEO);
    eval 'sub VFS_CTL_NOLOCKS () {0x10003;}' unless defined(&VFS_CTL_NOLOCKS);
    eval 'sub VQ_NOTRESP () {0x1;}' unless defined(&VQ_NOTRESP);
    eval 'sub VQ_NEEDAUTH () {0x2;}' unless defined(&VQ_NEEDAUTH);
    eval 'sub VQ_LOWDISK () {0x4;}' unless defined(&VQ_LOWDISK);
    eval 'sub VQ_MOUNT () {0x8;}' unless defined(&VQ_MOUNT);
    eval 'sub VQ_UNMOUNT () {0x10;}' unless defined(&VQ_UNMOUNT);
    eval 'sub VQ_DEAD () {0x20;}' unless defined(&VQ_DEAD);
    eval 'sub VQ_ASSIST () {0x40;}' unless defined(&VQ_ASSIST);
    eval 'sub VQ_NOTRESPLOCK () {0x80;}' unless defined(&VQ_NOTRESPLOCK);
    eval 'sub VQ_FLAG0100 () {0x100;}' unless defined(&VQ_FLAG0100);
    eval 'sub VQ_FLAG0200 () {0x200;}' unless defined(&VQ_FLAG0200);
    eval 'sub VQ_FLAG0400 () {0x400;}' unless defined(&VQ_FLAG0400);
    eval 'sub VQ_FLAG0800 () {0x800;}' unless defined(&VQ_FLAG0800);
    eval 'sub VQ_FLAG1000 () {0x1000;}' unless defined(&VQ_FLAG1000);
    eval 'sub VQ_FLAG2000 () {0x2000;}' unless defined(&VQ_FLAG2000);
    eval 'sub VQ_FLAG4000 () {0x4000;}' unless defined(&VQ_FLAG4000);
    eval 'sub VQ_FLAG8000 () {0x8000;}' unless defined(&VQ_FLAG8000);
    if(defined(&_KERNEL)) {
	eval 'sub VCTLTOREQ {
	    my($vc, $req) = @_;
    	    eval q( &do { ($req)-> &newptr = ($vc)-> &vc_ptr; ($req)-> &newlen = ($vc)-> &vc_len; ($req)-> &newidx = 0; }  &while (0));
	}' unless defined(&VCTLTOREQ);
    }
    if(defined(&_KERNEL)) {
	eval 'sub MBF_NOWAIT () {0x1;}' unless defined(&MBF_NOWAIT);
	eval 'sub MBF_MNTLSTLOCK () {0x2;}' unless defined(&MBF_MNTLSTLOCK);
	eval 'sub MBF_MASK () {( &MBF_NOWAIT |  &MBF_MNTLSTLOCK);}' unless defined(&MBF_MASK);
	if(defined(&MALLOC_DECLARE)) {
	}
	eval 'sub VFS_PROLOGUE {
	    my($MP) = @_;
    	    eval q( &do { \'struct mount\' * &mp__; \'int\'  &_enable_stops;  &mp__ = ($MP);  &_enable_stops = ( &mp__ !=  &NULL  && ( ($mp__->{mnt_vfc}->{vfc_flags}) &  &VFCF_SBDRY)  &&  &sigdeferstop()));
	}' unless defined(&VFS_PROLOGUE);
	eval 'sub VFS_EPILOGUE {
	    my($MP) = @_;
    	    eval q( &if ( &_enable_stops)  &sigallowstop(); }  &while (0));
	}' unless defined(&VFS_EPILOGUE);
	eval 'sub VFS_MOUNT {
	    my($MP) = @_;
    	    eval q(({ \'int\'  &_rc;  &VFS_PROLOGUE($MP);  &_rc = (*($MP)-> ($mnt_op->{vfs_mount}))($MP);  &VFS_EPILOGUE($MP);  &_rc; }));
	}' unless defined(&VFS_MOUNT);
	eval 'sub VFS_UNMOUNT {
	    my($MP, $FORCE) = @_;
    	    eval q(({ \'int\'  &_rc;  &VFS_PROLOGUE($MP);  &_rc = (*($MP)-> ($mnt_op->{vfs_unmount}))($MP, $FORCE);  &VFS_EPILOGUE($MP);  &_rc; }));
	}' unless defined(&VFS_UNMOUNT);
	eval 'sub VFS_ROOT {
	    my($MP, $FLAGS, $VPP) = @_;
    	    eval q(({ \'int\'  &_rc;  &VFS_PROLOGUE($MP);  &_rc = (*($MP)-> ($mnt_op->{vfs_root}))($MP, $FLAGS, $VPP);  &VFS_EPILOGUE($MP);  &_rc; }));
	}' unless defined(&VFS_ROOT);
	eval 'sub VFS_QUOTACTL {
	    my($MP, $C, $U, $A) = @_;
    	    eval q(({ \'int\'  &_rc;  &VFS_PROLOGUE($MP);  &_rc = (*($MP)-> ($mnt_op->{vfs_quotactl}))($MP, $C, $U, $A);  &VFS_EPILOGUE($MP);  &_rc; }));
	}' unless defined(&VFS_QUOTACTL);
	eval 'sub VFS_STATFS {
	    my($MP, $SBP) = @_;
    	    eval q(({ \'int\'  &_rc;  &VFS_PROLOGUE($MP);  &_rc =  &__vfs_statfs(($MP), ($SBP));  &VFS_EPILOGUE($MP);  &_rc; }));
	}' unless defined(&VFS_STATFS);
	eval 'sub VFS_SYNC {
	    my($MP, $WAIT) = @_;
    	    eval q(({ \'int\'  &_rc;  &VFS_PROLOGUE($MP);  &_rc = (*($MP)-> ($mnt_op->{vfs_sync}))($MP, $WAIT);  &VFS_EPILOGUE($MP);  &_rc; }));
	}' unless defined(&VFS_SYNC);
	eval 'sub VFS_VGET {
	    my($MP, $INO, $FLAGS, $VPP) = @_;
    	    eval q(({ \'int\'  &_rc;  &VFS_PROLOGUE($MP);  &_rc = (*($MP)-> ($mnt_op->{vfs_vget}))($MP, $INO, $FLAGS, $VPP);  &VFS_EPILOGUE($MP);  &_rc; }));
	}' unless defined(&VFS_VGET);
	eval 'sub VFS_FHTOVP {
	    my($MP, $FIDP, $FLAGS, $VPP) = @_;
    	    eval q(({ \'int\'  &_rc;  &VFS_PROLOGUE($MP);  &_rc = (*($MP)-> ($mnt_op->{vfs_fhtovp}))($MP, $FIDP, $FLAGS, $VPP);  &VFS_EPILOGUE($MP);  &_rc; }));
	}' unless defined(&VFS_FHTOVP);
	eval 'sub VFS_CHECKEXP {
	    my($MP, $NAM, $EXFLG, $CRED, $NUMSEC, $SEC) = @_;
    	    eval q(({ \'int\'  &_rc;  &VFS_PROLOGUE($MP);  &_rc = (*($MP)-> ($mnt_op->{vfs_checkexp}))($MP, $NAM, $EXFLG, $CRED, $NUMSEC, $SEC);  &VFS_EPILOGUE($MP);  &_rc; }));
	}' unless defined(&VFS_CHECKEXP);
	eval 'sub VFS_EXTATTRCTL {
	    my($MP, $C, $FN, $NS, $N) = @_;
    	    eval q(({ \'int\'  &_rc;  &VFS_PROLOGUE($MP);  &_rc = (*($MP)-> ($mnt_op->{vfs_extattrctl}))($MP, $C, $FN, $NS, $N);  &VFS_EPILOGUE($MP);  &_rc; }));
	}' unless defined(&VFS_EXTATTRCTL);
	eval 'sub VFS_SYSCTL {
	    my($MP, $OP, $REQ) = @_;
    	    eval q(({ \'int\'  &_rc;  &VFS_PROLOGUE($MP);  &_rc = (*($MP)-> ($mnt_op->{vfs_sysctl}))($MP, $OP, $REQ);  &VFS_EPILOGUE($MP);  &_rc; }));
	}' unless defined(&VFS_SYSCTL);
	eval 'sub VFS_SUSP_CLEAN {
	    my($MP) = @_;
    	    eval q( &do {  &if (*($MP)-> ($mnt_op->{vfs_susp_clean}) !=  &NULL) {  &VFS_PROLOGUE($MP); (*($MP)-> ($mnt_op->{vfs_susp_clean}))($MP);  &VFS_EPILOGUE($MP); } }  &while (0));
	}' unless defined(&VFS_SUSP_CLEAN);
	eval 'sub VFS_RECLAIM_LOWERVP {
	    my($MP, $VP) = @_;
    	    eval q( &do {  &if (*($MP)-> ($mnt_op->{vfs_reclaim_lowervp}) !=  &NULL) {  &VFS_PROLOGUE($MP); (*($MP)-> ($mnt_op->{vfs_reclaim_lowervp}))(($MP), ($VP));  &VFS_EPILOGUE($MP); } }  &while (0));
	}' unless defined(&VFS_RECLAIM_LOWERVP);
	eval 'sub VFS_UNLINK_LOWERVP {
	    my($MP, $VP) = @_;
    	    eval q( &do {  &if (*($MP)-> ($mnt_op->{vfs_unlink_lowervp}) !=  &NULL) {  &VFS_PROLOGUE($MP); (*($MP)-> ($mnt_op->{vfs_unlink_lowervp}))(($MP), ($VP));  &VFS_EPILOGUE($MP); } }  &while (0));
	}' unless defined(&VFS_UNLINK_LOWERVP);
	eval 'sub VFS_PURGE {
	    my($MP) = @_;
    	    eval q( &do {  &if (*($MP)-> ($mnt_op->{vfs_purge}) !=  &NULL) {  &VFS_PROLOGUE($MP); (*($MP)-> ($mnt_op->{vfs_purge}))($MP);  &VFS_EPILOGUE($MP); } }  &while (0));
	}' unless defined(&VFS_PURGE);
	eval 'sub VFS_KNOTE_LOCKED {
	    my($vp, $hint) = @_;
    	    eval q( &do {  &if ((($vp)-> &v_vflag &  &VV_NOKNOTE) == 0)  &VN_KNOTE(($vp), ($hint),  &KNF_LISTLOCKED); }  &while (0));
	}' unless defined(&VFS_KNOTE_LOCKED);
	eval 'sub VFS_KNOTE_UNLOCKED {
	    my($vp, $hint) = @_;
    	    eval q( &do {  &if ((($vp)-> &v_vflag &  &VV_NOKNOTE) == 0)  &VN_KNOTE(($vp), ($hint), 0); }  &while (0));
	}' unless defined(&VFS_KNOTE_UNLOCKED);
	eval 'sub VFS_NOTIFY_UPPER_RECLAIM () {1;}' unless defined(&VFS_NOTIFY_UPPER_RECLAIM);
	eval 'sub VFS_NOTIFY_UPPER_UNLINK () {2;}' unless defined(&VFS_NOTIFY_UPPER_UNLINK);
	require 'sys/module.ph';
	eval 'sub VFS_VERSION_00 () {0x19660120;}' unless defined(&VFS_VERSION_00);
	eval 'sub VFS_VERSION_01 () {0x20121030;}' unless defined(&VFS_VERSION_01);
	eval 'sub VFS_VERSION () { &VFS_VERSION_01;}' unless defined(&VFS_VERSION);
	eval 'sub VFS_SET {
	    my($vfsops, $fsname, $flags) = @_;
    	    eval q( &static \'struct vfsconf\' $fsname   &_vfsconf = { . &vfc_version =  &VFS_VERSION, . &vfc_name = $fsname, . &vfc_vfsops = $vfsops, . &vfc_typenum = -1, . &vfc_flags = $flags, };  &static  &moduledata_t $fsname   &_mod = { $fsname,  &vfs_modevent, & $fsname   &_vfsconf };  &DECLARE_MODULE($fsname, $fsname   &_mod,  &SI_SUB_VFS,  &SI_ORDER_MIDDLE));
	}' unless defined(&VFS_SET);
	eval 'sub vfsconf_lock () {
	    eval q( &sx_xlock( &vfsconf_sx));
	}' unless defined(&vfsconf_lock);
	eval 'sub vfsconf_unlock () {
	    eval q( &sx_xunlock( &vfsconf_sx));
	}' unless defined(&vfsconf_unlock);
	eval 'sub vfsconf_slock () {
	    eval q( &sx_slock( &vfsconf_sx));
	}' unless defined(&vfsconf_slock);
	eval 'sub vfsconf_sunlock () {
	    eval q( &sx_sunlock( &vfsconf_sx));
	}' unless defined(&vfsconf_sunlock);
    } else {
	require 'sys/cdefs.ph';
    }
}
1;
