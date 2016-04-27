require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_VNODE_H_)) {
    eval 'sub _SYS_VNODE_H_ () {1;}' unless defined(&_SYS_VNODE_H_);
    require 'sys/bufobj.ph';
    require 'sys/queue.ph';
    require 'sys/lock.ph';
    require 'sys/lockmgr.ph';
    require 'sys/mutex.ph';
    require 'sys/rangelock.ph';
    require 'sys/selinfo.ph';
    require 'sys/uio.ph';
    require 'sys/acl.ph';
    require 'sys/ktr.ph';
    eval("sub VNON () { 0; }") unless defined(&VNON);
    eval("sub VREG () { 1; }") unless defined(&VREG);
    eval("sub VDIR () { 2; }") unless defined(&VDIR);
    eval("sub VBLK () { 3; }") unless defined(&VBLK);
    eval("sub VCHR () { 4; }") unless defined(&VCHR);
    eval("sub VLNK () { 5; }") unless defined(&VLNK);
    eval("sub VSOCK () { 6; }") unless defined(&VSOCK);
    eval("sub VFIFO () { 7; }") unless defined(&VFIFO);
    eval("sub VBAD () { 8; }") unless defined(&VBAD);
    eval("sub VMARKER () { 9; }") unless defined(&VMARKER);
    if(defined(&_KERNEL) || defined(&_KVM_VNODE)) {
    }
    eval 'sub v_mountedhere () { ($v_un->{vu_mount});}' unless defined(&v_mountedhere);
    eval 'sub v_socket () { ($v_un->{vu_socket});}' unless defined(&v_socket);
    eval 'sub v_rdev () { ($v_un->{vu_cdev});}' unless defined(&v_rdev);
    eval 'sub v_fifoinfo () { ($v_un->{vu_fifoinfo});}' unless defined(&v_fifoinfo);
    eval 'sub v_object () { ($v_bufobj->{bo_object});}' unless defined(&v_object);
    eval 'sub xv_socket () { ($xv_un->{xvu_socket});}' unless defined(&xv_socket);
    eval 'sub xv_fifo () { ($xv_un->{xvu_fifo});}' unless defined(&xv_fifo);
    eval 'sub xv_rdev () { ($xv_un->{xvu_rdev});}' unless defined(&xv_rdev);
    eval 'sub xv_dev () { ($xv_un->{xv_uns}->{xvu_dev});}' unless defined(&xv_dev);
    eval 'sub xv_ino () { ($xv_un->{xv_uns}->{xvu_ino});}' unless defined(&xv_ino);
    eval 'sub VN_KNLIST_EMPTY {
        my($vp) = @_;
	    eval q((($vp)-> &v_pollinfo ==  &NULL ||  &KNLIST_EMPTY(($vp)-> ($v_pollinfo->{vpi_selinfo}->{si_note}))));
    }' unless defined(&VN_KNLIST_EMPTY);
    eval 'sub VN_KNOTE {
        my($vp, $b, $a) = @_;
	    eval q( &do {  &if (! &VN_KNLIST_EMPTY($vp))  &KNOTE( ($vp->{v_pollinfo}->{vpi_selinfo}->{si_note}), ($b), ($a) |  &KNF_NOKQLOCK); }  &while (0));
    }' unless defined(&VN_KNOTE);
    eval 'sub VN_KNOTE_LOCKED {
        my($vp, $b) = @_;
	    eval q( &VN_KNOTE($vp, $b,  &KNF_LISTLOCKED));
    }' unless defined(&VN_KNOTE_LOCKED);
    eval 'sub VN_KNOTE_UNLOCKED {
        my($vp, $b) = @_;
	    eval q( &VN_KNOTE($vp, $b, 0));
    }' unless defined(&VN_KNOTE_UNLOCKED);
    eval 'sub VI_MOUNT () {0x20;}' unless defined(&VI_MOUNT);
    eval 'sub VI_AGE () {0x40;}' unless defined(&VI_AGE);
    eval 'sub VI_DOOMED () {0x80;}' unless defined(&VI_DOOMED);
    eval 'sub VI_FREE () {0x100;}' unless defined(&VI_FREE);
    eval 'sub VI_ACTIVE () {0x200;}' unless defined(&VI_ACTIVE);
    eval 'sub VI_DOINGINACT () {0x800;}' unless defined(&VI_DOINGINACT);
    eval 'sub VI_OWEINACT () {0x1000;}' unless defined(&VI_OWEINACT);
    eval 'sub VV_ROOT () {0x1;}' unless defined(&VV_ROOT);
    eval 'sub VV_ISTTY () {0x2;}' unless defined(&VV_ISTTY);
    eval 'sub VV_NOSYNC () {0x4;}' unless defined(&VV_NOSYNC);
    eval 'sub VV_ETERNALDEV () {0x8;}' unless defined(&VV_ETERNALDEV);
    eval 'sub VV_CACHEDLABEL () {0x10;}' unless defined(&VV_CACHEDLABEL);
    eval 'sub VV_TEXT () {0x20;}' unless defined(&VV_TEXT);
    eval 'sub VV_COPYONWRITE () {0x40;}' unless defined(&VV_COPYONWRITE);
    eval 'sub VV_SYSTEM () {0x80;}' unless defined(&VV_SYSTEM);
    eval 'sub VV_PROCDEP () {0x100;}' unless defined(&VV_PROCDEP);
    eval 'sub VV_NOKNOTE () {0x200;}' unless defined(&VV_NOKNOTE);
    eval 'sub VV_DELETED () {0x400;}' unless defined(&VV_DELETED);
    eval 'sub VV_MD () {0x800;}' unless defined(&VV_MD);
    eval 'sub VV_FORCEINSMQ () {0x1000;}' unless defined(&VV_FORCEINSMQ);
    eval 'sub VA_UTIMES_NULL () {0x1;}' unless defined(&VA_UTIMES_NULL);
    eval 'sub VA_EXCLUSIVE () {0x2;}' unless defined(&VA_EXCLUSIVE);
    eval 'sub IO_UNIT () {0x1;}' unless defined(&IO_UNIT);
    eval 'sub IO_APPEND () {0x2;}' unless defined(&IO_APPEND);
    eval 'sub IO_NDELAY () {0x4;}' unless defined(&IO_NDELAY);
    eval 'sub IO_NODELOCKED () {0x8;}' unless defined(&IO_NODELOCKED);
    eval 'sub IO_ASYNC () {0x10;}' unless defined(&IO_ASYNC);
    eval 'sub IO_VMIO () {0x20;}' unless defined(&IO_VMIO);
    eval 'sub IO_INVAL () {0x40;}' unless defined(&IO_INVAL);
    eval 'sub IO_SYNC () {0x80;}' unless defined(&IO_SYNC);
    eval 'sub IO_DIRECT () {0x100;}' unless defined(&IO_DIRECT);
    eval 'sub IO_EXT () {0x400;}' unless defined(&IO_EXT);
    eval 'sub IO_NORMAL () {0x800;}' unless defined(&IO_NORMAL);
    eval 'sub IO_NOMACCHECK () {0x1000;}' unless defined(&IO_NOMACCHECK);
    eval 'sub IO_BUFLOCKED () {0x2000;}' unless defined(&IO_BUFLOCKED);
    eval 'sub IO_SEQMAX () {0x7f;}' unless defined(&IO_SEQMAX);
    eval 'sub IO_SEQSHIFT () {16;}' unless defined(&IO_SEQSHIFT);
    eval 'sub VEXEC () {000000000100;}' unless defined(&VEXEC);
    eval 'sub VWRITE () {000000000200;}' unless defined(&VWRITE);
    eval 'sub VREAD () {000000000400;}' unless defined(&VREAD);
    eval 'sub VADMIN () {000000010000;}' unless defined(&VADMIN);
    eval 'sub VAPPEND () {000000040000;}' unless defined(&VAPPEND);
    eval 'sub VEXPLICIT_DENY () {000000100000;}' unless defined(&VEXPLICIT_DENY);
    eval 'sub VREAD_NAMED_ATTRS () {000000200000;}' unless defined(&VREAD_NAMED_ATTRS);
    eval 'sub VWRITE_NAMED_ATTRS () {000000400000;}' unless defined(&VWRITE_NAMED_ATTRS);
    eval 'sub VDELETE_CHILD () {000001000000;}' unless defined(&VDELETE_CHILD);
    eval 'sub VREAD_ATTRIBUTES () {000002000000;}' unless defined(&VREAD_ATTRIBUTES);
    eval 'sub VWRITE_ATTRIBUTES () {000004000000;}' unless defined(&VWRITE_ATTRIBUTES);
    eval 'sub VDELETE () {000010000000;}' unless defined(&VDELETE);
    eval 'sub VREAD_ACL () {000020000000;}' unless defined(&VREAD_ACL);
    eval 'sub VWRITE_ACL () {000040000000;}' unless defined(&VWRITE_ACL);
    eval 'sub VWRITE_OWNER () {000100000000;}' unless defined(&VWRITE_OWNER);
    eval 'sub VSYNCHRONIZE () {000200000000;}' unless defined(&VSYNCHRONIZE);
    eval 'sub VADMIN_PERMS () {( &VADMIN |  &VWRITE_ATTRIBUTES |  &VWRITE_ACL |  &VWRITE_OWNER);}' unless defined(&VADMIN_PERMS);
    eval 'sub VSTAT_PERMS () {( &VREAD_ATTRIBUTES |  &VREAD_ACL);}' unless defined(&VSTAT_PERMS);
    eval 'sub VMODIFY_PERMS () {( &VWRITE |  &VAPPEND |  &VADMIN_PERMS |  &VDELETE_CHILD |  &VDELETE);}' unless defined(&VMODIFY_PERMS);
    eval 'sub VNOVAL () {(-1);}' unless defined(&VNOVAL);
    eval 'sub VLKTIMEOUT () {( &hz / 20+ 1);}' unless defined(&VLKTIMEOUT);
    if(defined(&_KERNEL)) {
	if(defined(&MALLOC_DECLARE)) {
	}
	eval 'sub IFTOVT {
	    my($mode) = @_;
    	    eval q(( $iftovt_tab[(($mode) &  &S_IFMT) >> 12]));
	}' unless defined(&IFTOVT);
	eval 'sub VTTOIF {
	    my($indx) = @_;
    	    eval q(( $vttoif_tab[($indx)]));
	}' unless defined(&VTTOIF);
	eval 'sub MAKEIMODE {
	    my($indx, $mode) = @_;
    	    eval q(( &VTTOIF($indx) | ($mode)));
	}' unless defined(&MAKEIMODE);
	eval 'sub SKIPSYSTEM () {0x1;}' unless defined(&SKIPSYSTEM);
	eval 'sub FORCECLOSE () {0x2;}' unless defined(&FORCECLOSE);
	eval 'sub WRITECLOSE () {0x4;}' unless defined(&WRITECLOSE);
	eval 'sub EARLYFLUSH () {0x8;}' unless defined(&EARLYFLUSH);
	eval 'sub V_SAVE () {0x1;}' unless defined(&V_SAVE);
	eval 'sub V_ALT () {0x2;}' unless defined(&V_ALT);
	eval 'sub V_NORMAL () {0x4;}' unless defined(&V_NORMAL);
	eval 'sub V_CLEANONLY () {0x8;}' unless defined(&V_CLEANONLY);
	eval 'sub REVOKEALL () {0x1;}' unless defined(&REVOKEALL);
	eval 'sub V_WAIT () {0x1;}' unless defined(&V_WAIT);
	eval 'sub V_NOWAIT () {0x2;}' unless defined(&V_NOWAIT);
	eval 'sub V_XSLEEP () {0x4;}' unless defined(&V_XSLEEP);
	eval 'sub VR_START_WRITE () {0x1;}' unless defined(&VR_START_WRITE);
	eval 'sub VR_NO_SUSPCLR () {0x2;}' unless defined(&VR_NO_SUSPCLR);
	eval 'sub VS_SKIP_UNMOUNT () {0x1;}' unless defined(&VS_SKIP_UNMOUNT);
	eval 'sub VREF {
	    my($vp) = @_;
    	    eval q( &vref($vp));
	}' unless defined(&VREF);
	if(defined(&DIAGNOSTIC)) {
	    eval 'sub VATTR_NULL {
	        my($vap) = @_;
    		eval q( &vattr_null($vap));
	    }' unless defined(&VATTR_NULL);
	} else {
	    eval 'sub VATTR_NULL {
	        my($vap) = @_;
    		eval q((*($vap) =  &va_null));
	    }' unless defined(&VATTR_NULL);
	}
	eval 'sub NULLVP () {( &NULL);}' unless defined(&NULLVP);
	eval 'sub VI_LOCK {
	    my($vp) = @_;
    	    eval q( &mtx_lock(($vp)-> &v_interlock));
	}' unless defined(&VI_LOCK);
	eval 'sub VI_LOCK_FLAGS {
	    my($vp, $flags) = @_;
    	    eval q( &mtx_lock_flags(($vp)-> &v_interlock, ($flags)));
	}' unless defined(&VI_LOCK_FLAGS);
	eval 'sub VI_TRYLOCK {
	    my($vp) = @_;
    	    eval q( &mtx_trylock(($vp)-> &v_interlock));
	}' unless defined(&VI_TRYLOCK);
	eval 'sub VI_UNLOCK {
	    my($vp) = @_;
    	    eval q( &mtx_unlock(($vp)-> &v_interlock));
	}' unless defined(&VI_UNLOCK);
	eval 'sub VI_MTX {
	    my($vp) = @_;
    	    eval q((($vp)-> &v_interlock));
	}' unless defined(&VI_MTX);
	eval 'sub VN_LOCK_AREC {
	    my($vp) = @_;
    	    eval q( &lockallowrecurse(($vp)-> &v_vnlock));
	}' unless defined(&VN_LOCK_AREC);
	eval 'sub VN_LOCK_ASHARE {
	    my($vp) = @_;
    	    eval q( &lockallowshare(($vp)-> &v_vnlock));
	}' unless defined(&VN_LOCK_ASHARE);
	eval 'sub VN_LOCK_DSHARE {
	    my($vp) = @_;
    	    eval q( &lockdisableshare(($vp)-> &v_vnlock));
	}' unless defined(&VN_LOCK_DSHARE);
    }
    eval 'sub VDESC_MAX_VPS () {16;}' unless defined(&VDESC_MAX_VPS);
    eval 'sub VDESC_VP0_WILLRELE () {0x1;}' unless defined(&VDESC_VP0_WILLRELE);
    eval 'sub VDESC_VP1_WILLRELE () {0x2;}' unless defined(&VDESC_VP1_WILLRELE);
    eval 'sub VDESC_VP2_WILLRELE () {0x4;}' unless defined(&VDESC_VP2_WILLRELE);
    eval 'sub VDESC_VP3_WILLRELE () {0x8;}' unless defined(&VDESC_VP3_WILLRELE);
    eval 'sub VDESC_NOMAP_VPP () {0x100;}' unless defined(&VDESC_NOMAP_VPP);
    eval 'sub VDESC_VPP_WILLRELE () {0x200;}' unless defined(&VDESC_VPP_WILLRELE);
    eval 'sub VDESC_NO_OFFSET () {-1;}' unless defined(&VDESC_NO_OFFSET);
    if(defined(&_KERNEL)) {
	eval 'sub VOPARG_OFFSETOF {
	    my($s_type, $field) = @_;
    	    eval q( &__offsetof($s_type, $field));
	}' unless defined(&VOPARG_OFFSETOF);
	eval 'sub VOPARG_OFFSETTO {
	    my($s_type, $s_offset, $struct_p) = @_;
    	    eval q((($s_type)((($struct_p)) + ($s_offset))));
	}' unless defined(&VOPARG_OFFSETTO);
	if(defined(&DEBUG_VFS_LOCKS)) {
	    if(0) {
	    }
	    if(0) {
	    }
	    eval 'sub ASSERT_VI_LOCKED {
	        my($vp, $str) = @_;
    		eval q( &assert_vi_locked(($vp), ($str)));
	    }' unless defined(&ASSERT_VI_LOCKED);
	    eval 'sub ASSERT_VI_UNLOCKED {
	        my($vp, $str) = @_;
    		eval q( &assert_vi_unlocked(($vp), ($str)));
	    }' unless defined(&ASSERT_VI_UNLOCKED);
	    eval 'sub ASSERT_VOP_ELOCKED {
	        my($vp, $str) = @_;
    		eval q( &assert_vop_elocked(($vp), ($str)));
	    }' unless defined(&ASSERT_VOP_ELOCKED);
	    if(0) {
		eval 'sub ASSERT_VOP_ELOCKED_OTHER {
		    my($vp, $str) = @_;
    		    eval q( &assert_vop_locked_other(($vp), ($str)));
		}' unless defined(&ASSERT_VOP_ELOCKED_OTHER);
	    }
	    eval 'sub ASSERT_VOP_LOCKED {
	        my($vp, $str) = @_;
    		eval q( &assert_vop_locked(($vp), ($str)));
	    }' unless defined(&ASSERT_VOP_LOCKED);
	    if(0) {
		eval 'sub ASSERT_VOP_SLOCKED {
		    my($vp, $str) = @_;
    		    eval q( &assert_vop_slocked(($vp), ($str)));
		}' unless defined(&ASSERT_VOP_SLOCKED);
	    }
	    eval 'sub ASSERT_VOP_UNLOCKED {
	        my($vp, $str) = @_;
    		eval q( &assert_vop_unlocked(($vp), ($str)));
	    }' unless defined(&ASSERT_VOP_UNLOCKED);
	} else {
	    eval 'sub ASSERT_VI_LOCKED {
	        my($vp, $str) = @_;
    		eval q((( &void)0));
	    }' unless defined(&ASSERT_VI_LOCKED);
	    eval 'sub ASSERT_VI_UNLOCKED {
	        my($vp, $str) = @_;
    		eval q((( &void)0));
	    }' unless defined(&ASSERT_VI_UNLOCKED);
	    eval 'sub ASSERT_VOP_ELOCKED {
	        my($vp, $str) = @_;
    		eval q((( &void)0));
	    }' unless defined(&ASSERT_VOP_ELOCKED);
	    if(0) {
		eval 'sub ASSERT_VOP_ELOCKED_OTHER {
		    my($vp, $str) = @_;
    		    eval q();
		}' unless defined(&ASSERT_VOP_ELOCKED_OTHER);
	    }
	    eval 'sub ASSERT_VOP_LOCKED {
	        my($vp, $str) = @_;
    		eval q((( &void)0));
	    }' unless defined(&ASSERT_VOP_LOCKED);
	    if(0) {
		eval 'sub ASSERT_VOP_SLOCKED {
		    my($vp, $str) = @_;
    		    eval q();
		}' unless defined(&ASSERT_VOP_SLOCKED);
	    }
	    eval 'sub ASSERT_VOP_UNLOCKED {
	        my($vp, $str) = @_;
    		eval q((( &void)0));
	    }' unless defined(&ASSERT_VOP_UNLOCKED);
	}
	eval 'sub VCALL {
	    my($c) = @_;
    	    eval q((($c)-> ($a_desc->{vdesc_call})($c)));
	}' unless defined(&VCALL);
	eval 'sub DOINGASYNC {
	    my($vp) = @_;
    	    eval q(((($vp)-> ($v_mount->{mnt_kern_flag}) &  &MNTK_ASYNC) != 0 && (( ($curthread->{td_pflags}) &  &TDP_SYNCIO) == 0)));
	}' unless defined(&DOINGASYNC);
	eval 'sub vn_canvmio {
	    my($vp) = @_;
    	    eval q({  &if ($vp  && ( ($vp->{v_type}) ==  &VREG || ( &vmiodirenable  &&  ($vp->{v_type}) ==  &VDIR))) ( &TRUE); ( &FALSE); });
	}' unless defined(&vn_canvmio);
	require 'sys/vnode_if.ph';
	eval 'sub VN_OPEN_NOAUDIT () {0x1;}' unless defined(&VN_OPEN_NOAUDIT);
	eval 'sub VN_OPEN_NOCAPCHECK () {0x2;}' unless defined(&VN_OPEN_NOCAPCHECK);
	eval 'sub cache_enter {
	    my($dvp, $vp, $cnp) = @_;
    	    eval q( &cache_enter_time($dvp, $vp, $cnp,  &NULL,  &NULL));
	}' unless defined(&cache_enter);
	eval 'sub textvp_fullpath {
	    my($p, $rb, $rfb) = @_;
    	    eval q( &vn_fullpath( &FIRST_THREAD_IN_PROC($p), ($p)-> &p_textvp, $rb, $rfb));
	}' unless defined(&textvp_fullpath);
	eval 'sub vprint {
	    my($label, $vp) = @_;
    	    eval q( &vn_printf(($vp), \\"%s\\\\n\\", ($label)));
	}' unless defined(&vprint);
	eval 'sub vn_lock {
	    my($vp, $flags) = @_;
    	    eval q( &_vn_lock($vp, $flags,  &__FILE__,  &__LINE__));
	}' unless defined(&vn_lock);
	eval 'sub vn_rangelock_unlock {
	    my($vp, $cookie) = @_;
    	    eval q( &rangelock_unlock(($vp)-> &v_rl, ($cookie),  &VI_MTX($vp)));
	}' unless defined(&vn_rangelock_unlock);
	eval 'sub vn_rangelock_unlock_range {
	    my($vp, $cookie, $start, $end) = @_;
    	    eval q( &rangelock_unlock_range(($vp)-> &v_rl, ($cookie), ($start), ($end),  &VI_MTX($vp)));
	}' unless defined(&vn_rangelock_unlock_range);
	eval 'sub vn_rangelock_rlock {
	    my($vp, $start, $end) = @_;
    	    eval q( &rangelock_rlock(($vp)-> &v_rl, ($start), ($end),  &VI_MTX($vp)));
	}' unless defined(&vn_rangelock_rlock);
	eval 'sub vn_rangelock_wlock {
	    my($vp, $start, $end) = @_;
    	    eval q( &rangelock_wlock(($vp)-> &v_rl, ($start), ($end),  &VI_MTX($vp)));
	}' unless defined(&vn_rangelock_wlock);
	eval 'sub VOP_WRITE_PRE {
	    my($ap) = @_;
    	    eval q(\'struct vattr\'  &va; \'int\'  &error;  &off_t  &osize,  &ooffset,  &noffset;  &osize =  &ooffset =  &noffset = 0;  &if (! &VN_KNLIST_EMPTY(($ap)-> &a_vp)) {  &error =  &VOP_GETATTR(($ap)-> &a_vp,  &va, ($ap)-> &a_cred);  &if ( &error)  &return ( &error);  &ooffset = ($ap)-> ($a_uio->{uio_offset});  &osize = ( &off_t) ($va->{va_size}); });
	}' unless defined(&VOP_WRITE_PRE);
	eval 'sub VOP_WRITE_POST {
	    my($ap, $ret) = @_;
    	    eval q( &noffset = ($ap)-> ($a_uio->{uio_offset});  &if ( &noffset >  &ooffset  && ! &VN_KNLIST_EMPTY(($ap)-> &a_vp)) {  &VFS_KNOTE_LOCKED(($ap)-> &a_vp,  &NOTE_WRITE | ( &noffset >  &osize ?  &NOTE_EXTEND : 0)); });
	}' unless defined(&VOP_WRITE_POST);
	eval 'sub VOP_LOCK {
	    my($vp, $flags) = @_;
    	    eval q( &VOP_LOCK1($vp, $flags,  &__FILE__,  &__LINE__));
	}' unless defined(&VOP_LOCK);
	eval 'sub VOP_PANIC () {(( &void*)( &uintptr_t) &vop_panic);}' unless defined(&VOP_PANIC);
	eval 'sub VOP_NULL () {(( &void*)( &uintptr_t) &vop_null);}' unless defined(&VOP_NULL);
	eval 'sub VOP_EBADF () {(( &void*)( &uintptr_t) &vop_ebadf);}' unless defined(&VOP_EBADF);
	eval 'sub VOP_ENOTTY () {(( &void*)( &uintptr_t) &vop_enotty);}' unless defined(&VOP_ENOTTY);
	eval 'sub VOP_EINVAL () {(( &void*)( &uintptr_t) &vop_einval);}' unless defined(&VOP_EINVAL);
	eval 'sub VOP_ENOENT () {(( &void*)( &uintptr_t) &vop_enoent);}' unless defined(&VOP_ENOENT);
	eval 'sub VOP_EOPNOTSUPP () {(( &void*)( &uintptr_t) &vop_eopnotsupp);}' unless defined(&VOP_EOPNOTSUPP);
    }
}
1;
