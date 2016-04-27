require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_SOCKETVAR_H_)) {
    eval 'sub _SYS_SOCKETVAR_H_ () {1;}' unless defined(&_SYS_SOCKETVAR_H_);
    require 'sys/queue.ph';
    require 'sys/selinfo.ph';
    require 'sys/_lock.ph';
    require 'sys/_mutex.ph';
    require 'sys/_sx.ph';
    require 'sys/sockbuf.ph';
    require 'sys/sockstate.ph';
    if(defined(&_KERNEL)) {
	require 'sys/sockopt.ph';
    }
    eval 'sub ACCEPT_LOCK_ASSERT () {
        eval q( &mtx_assert( &accept_mtx,  &MA_OWNED));
    }' unless defined(&ACCEPT_LOCK_ASSERT);
    eval 'sub ACCEPT_UNLOCK_ASSERT () {
        eval q( &mtx_assert( &accept_mtx,  &MA_NOTOWNED));
    }' unless defined(&ACCEPT_UNLOCK_ASSERT);
    eval 'sub ACCEPT_LOCK () {
        eval q( &mtx_lock( &accept_mtx));
    }' unless defined(&ACCEPT_LOCK);
    eval 'sub ACCEPT_UNLOCK () {
        eval q( &mtx_unlock( &accept_mtx));
    }' unless defined(&ACCEPT_UNLOCK);
    eval 'sub SOCK_MTX {
        my($_so) = @_;
	    eval q( &SOCKBUF_MTX(($_so)-> &so_rcv));
    }' unless defined(&SOCK_MTX);
    eval 'sub SOCK_LOCK {
        my($_so) = @_;
	    eval q( &SOCKBUF_LOCK(($_so)-> &so_rcv));
    }' unless defined(&SOCK_LOCK);
    eval 'sub SOCK_OWNED {
        my($_so) = @_;
	    eval q( &SOCKBUF_OWNED(($_so)-> &so_rcv));
    }' unless defined(&SOCK_OWNED);
    eval 'sub SOCK_UNLOCK {
        my($_so) = @_;
	    eval q( &SOCKBUF_UNLOCK(($_so)-> &so_rcv));
    }' unless defined(&SOCK_UNLOCK);
    eval 'sub SOCK_LOCK_ASSERT {
        my($_so) = @_;
	    eval q( &SOCKBUF_LOCK_ASSERT(($_so)-> &so_rcv));
    }' unless defined(&SOCK_LOCK_ASSERT);
    eval 'sub SQ_INCOMP () {0x800;}' unless defined(&SQ_INCOMP);
    eval 'sub SQ_COMP () {0x1000;}' unless defined(&SQ_COMP);
    if(defined(&_KERNEL)) {
	eval 'sub SBL_WAIT () {0x1;}' unless defined(&SBL_WAIT);
	eval 'sub SBL_NOINTR () {0x2;}' unless defined(&SBL_NOINTR);
	eval 'sub SBL_VALID () {( &SBL_WAIT |  &SBL_NOINTR);}' unless defined(&SBL_VALID);
	eval 'sub sb_notify {
	    my($sb) = @_;
    	    eval q(((($sb)-> &sb_flags & ( &SB_WAIT |  &SB_SEL |  &SB_ASYNC |  &SB_UPCALL |  &SB_AIO |  &SB_KNOTE)) != 0));
	}' unless defined(&sb_notify);
	eval 'sub sosendallatonce {
	    my($so) = @_;
    	    eval q((($so)-> ($so_proto->{pr_flags}) &  &PR_ATOMIC));
	}' unless defined(&sosendallatonce);
	eval 'sub soreadabledata {
	    my($so) = @_;
    	    eval q((($so)-> ($so_rcv->{sb_cc}) >= ($so)-> ($so_rcv->{sb_lowat}) || ! &TAILQ_EMPTY(($so)-> &so_comp) || ($so)-> &so_error));
	}' unless defined(&soreadabledata);
	eval 'sub soreadable {
	    my($so) = @_;
    	    eval q(( &soreadabledata($so) || (($so)-> ($so_rcv->{sb_state}) &  &SBS_CANTRCVMORE)));
	}' unless defined(&soreadable);
	eval 'sub sowriteable {
	    my($so) = @_;
    	    eval q((( &sbspace(($so)-> &so_snd) >= ($so)-> ($so_snd->{sb_lowat})  && ((($so)-> &so_state &SS_ISCONNECTED) || (($so)-> ($so_proto->{pr_flags})& &PR_CONNREQUIRED)==0)) || (($so)-> ($so_snd->{sb_state}) &  &SBS_CANTSENDMORE) || ($so)-> &so_error));
	}' unless defined(&sowriteable);
	eval 'sub soref {
	    my($so) = @_;
    	    eval q( &do {  &SOCK_LOCK_ASSERT($so); ++($so)-> &so_count; }  &while (0));
	}' unless defined(&soref);
	eval 'sub sorele {
	    my($so) = @_;
    	    eval q( &do {  &ACCEPT_LOCK_ASSERT();  &SOCK_LOCK_ASSERT($so);  &if (($so)-> &so_count <= 0)  &panic(\\"sorele\\");  &if (--($so)-> &so_count == 0)  &sofree($so);  &else {  &SOCK_UNLOCK($so);  &ACCEPT_UNLOCK(); } }  &while (0));
	}' unless defined(&sorele);
	eval 'sub sorwakeup_locked {
	    my($so) = @_;
    	    eval q( &do {  &SOCKBUF_LOCK_ASSERT(($so)-> &so_rcv);  &if ( &sb_notify(($so)-> &so_rcv))  &sowakeup(($so), ($so)-> &so_rcv);  &else  &SOCKBUF_UNLOCK(($so)-> &so_rcv); }  &while (0));
	}' unless defined(&sorwakeup_locked);
	eval 'sub sorwakeup {
	    my($so) = @_;
    	    eval q( &do {  &SOCKBUF_LOCK(($so)-> &so_rcv);  &sorwakeup_locked($so); }  &while (0));
	}' unless defined(&sorwakeup);
	eval 'sub sowwakeup_locked {
	    my($so) = @_;
    	    eval q( &do {  &SOCKBUF_LOCK_ASSERT(($so)-> &so_snd);  &if ( &sb_notify(($so)-> &so_snd))  &sowakeup(($so), ($so)-> &so_snd);  &else  &SOCKBUF_UNLOCK(($so)-> &so_snd); }  &while (0));
	}' unless defined(&sowwakeup_locked);
	eval 'sub sowwakeup {
	    my($so) = @_;
    	    eval q( &do {  &SOCKBUF_LOCK(($so)-> &so_snd);  &sowwakeup_locked($so); }  &while (0));
	}' unless defined(&sowwakeup);
	if(defined(&MALLOC_DECLARE)) {
	}
	eval 'sub SO_RCV () {1;}' unless defined(&SO_RCV);
	eval 'sub SO_SND () {2;}' unless defined(&SO_SND);
	eval 'sub SU_OK () {0;}' unless defined(&SU_OK);
	eval 'sub SU_ISCONNECTED () {1;}' unless defined(&SU_ISCONNECTED);
	if(defined(&ACCEPT_FILTER_MOD)) {
	    if(defined(&SYSCTL_DECL)) {
	    }
	}
    }
}
1;
