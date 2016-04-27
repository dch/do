require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_FILE_H_)) {
    eval 'sub _SYS_FILE_H_ () {1;}' unless defined(&_SYS_FILE_H_);
    unless(defined(&_KERNEL)) {
	require 'sys/types.ph';
	require 'sys/fcntl.ph';
	require 'sys/unistd.ph';
    } else {
	require 'sys/queue.ph';
	require 'sys/refcount.ph';
	require 'sys/_lock.ph';
	require 'sys/_mutex.ph';
    }
    eval 'sub DTYPE_VNODE () {1;}' unless defined(&DTYPE_VNODE);
    eval 'sub DTYPE_SOCKET () {2;}' unless defined(&DTYPE_SOCKET);
    eval 'sub DTYPE_PIPE () {3;}' unless defined(&DTYPE_PIPE);
    eval 'sub DTYPE_FIFO () {4;}' unless defined(&DTYPE_FIFO);
    eval 'sub DTYPE_KQUEUE () {5;}' unless defined(&DTYPE_KQUEUE);
    eval 'sub DTYPE_CRYPTO () {6;}' unless defined(&DTYPE_CRYPTO);
    eval 'sub DTYPE_MQUEUE () {7;}' unless defined(&DTYPE_MQUEUE);
    eval 'sub DTYPE_SHM () {8;}' unless defined(&DTYPE_SHM);
    eval 'sub DTYPE_SEM () {9;}' unless defined(&DTYPE_SEM);
    eval 'sub DTYPE_PTS () {10;}' unless defined(&DTYPE_PTS);
    eval 'sub DTYPE_DEV () {11;}' unless defined(&DTYPE_DEV);
    eval 'sub DTYPE_PROCDESC () {12;}' unless defined(&DTYPE_PROCDESC);
    if(defined(&_KERNEL)) {
	eval 'sub FOF_OFFSET () {0x1;}' unless defined(&FOF_OFFSET);
	eval 'sub FOF_NOLOCK () {0x2;}' unless defined(&FOF_NOLOCK);
	eval 'sub FOF_NEXTOFF () {0x4;}' unless defined(&FOF_NEXTOFF);
	eval 'sub FOF_NOUPDATE () {0x10;}' unless defined(&FOF_NOUPDATE);
	eval 'sub foffset_get {
	    my($fp) = @_;
    	    eval q({ ( &foffset_lock($fp,  &FOF_NOLOCK)); });
	}' unless defined(&foffset_get);
	eval 'sub DFLAG_PASSABLE () {0x1;}' unless defined(&DFLAG_PASSABLE);
	eval 'sub DFLAG_SEEKABLE () {0x2;}' unless defined(&DFLAG_SEEKABLE);
    }
    if(defined(&_KERNEL) || defined(&_WANT_FILE)) {
	eval 'sub f_cdevpriv () { ($f_vnun->{fvn_cdevpriv});}' unless defined(&f_cdevpriv);
	eval 'sub f_advice () { ($f_vnun->{fvn_advice});}' unless defined(&f_advice);
	eval 'sub FOFFSET_LOCKED () {0x1;}' unless defined(&FOFFSET_LOCKED);
	eval 'sub FOFFSET_LOCK_WAITING () {0x2;}' unless defined(&FOFFSET_LOCK_WAITING);
	eval 'sub FDEVFS_VNODE () {0x4;}' unless defined(&FDEVFS_VNODE);
    }
    if(defined(&_KERNEL)) {
	eval 'sub _fnoop {
	    my($void) = @_;
    	    eval q({ (0); });
	}' unless defined(&_fnoop);
	eval 'sub fhold {
	    my($fp) = @_;
    	    eval q(( &refcount_acquire(($fp)-> &f_count)));
	}' unless defined(&fhold);
	eval 'sub fdrop {
	    my($fp, $td) = @_;
    	    eval q(( &refcount_release(($fp)-> &f_count) ?  &_fdrop(($fp), ($td)) :  &_fnoop()));
	}' unless defined(&fdrop);
	eval 'sub fo_read {
	    my($fp,$uio,$active_cred,$flags,$td) = @_;
    	    eval q({ ((* ($fp->{f_ops}->{fo_read}))($fp, $uio, $active_cred, $flags, $td)); });
	}' unless defined(&fo_read);
	eval 'sub fo_write {
	    my($fp,$uio,$active_cred,$flags,$td) = @_;
    	    eval q({ ((* ($fp->{f_ops}->{fo_write}))($fp, $uio, $active_cred, $flags, $td)); });
	}' unless defined(&fo_write);
	eval 'sub fo_truncate {
	    my($fp,$length,$active_cred,$td) = @_;
    	    eval q({ ((* ($fp->{f_ops}->{fo_truncate}))($fp, $length, $active_cred, $td)); });
	}' unless defined(&fo_truncate);
	eval 'sub fo_ioctl {
	    my($fp,$com,$data,$active_cred,$td) = @_;
    	    eval q({ ((* ($fp->{f_ops}->{fo_ioctl}))($fp, $com, $data, $active_cred, $td)); });
	}' unless defined(&fo_ioctl);
	eval 'sub fo_poll {
	    my($fp,$events,$active_cred,$td) = @_;
    	    eval q({ ((* ($fp->{f_ops}->{fo_poll}))($fp, $events, $active_cred, $td)); });
	}' unless defined(&fo_poll);
	eval 'sub fo_stat {
	    my($fp,$sb,$active_cred,$td) = @_;
    	    eval q({ ((* ($fp->{f_ops}->{fo_stat}))($fp, $sb, $active_cred, $td)); });
	}' unless defined(&fo_stat);
	eval 'sub fo_close {
	    my($fp,$td) = @_;
    	    eval q({ ((* ($fp->{f_ops}->{fo_close}))($fp, $td)); });
	}' unless defined(&fo_close);
	eval 'sub fo_kqfilter {
	    my($fp,$kn) = @_;
    	    eval q({ ((* ($fp->{f_ops}->{fo_kqfilter}))($fp, $kn)); });
	}' unless defined(&fo_kqfilter);
	eval 'sub fo_chmod {
	    my($fp,$mode,$active_cred,$td) = @_;
    	    eval q({ ((* ($fp->{f_ops}->{fo_chmod}))($fp, $mode, $active_cred, $td)); });
	}' unless defined(&fo_chmod);
	eval 'sub fo_chown {
	    my($fp,$uid,$gid,$active_cred,$td) = @_;
    	    eval q({ ((* ($fp->{f_ops}->{fo_chown}))($fp, $uid, $gid, $active_cred, $td)); });
	}' unless defined(&fo_chown);
	eval 'sub fo_sendfile {
	    my($fp,$sockfd,$hdr_uio,$trl_uio,$offset,$nbytes,$sent,$flags,$kflags,$td) = @_;
    	    eval q({ ((* ($fp->{f_ops}->{fo_sendfile}))($fp, $sockfd, $hdr_uio, $trl_uio, $offset, $nbytes, $sent, $flags, $kflags, $td)); });
	}' unless defined(&fo_sendfile);
	eval 'sub fo_seek {
	    my($fp,$offset,$whence,$td) = @_;
    	    eval q({ ((* ($fp->{f_ops}->{fo_seek}))($fp, $offset, $whence, $td)); });
	}' unless defined(&fo_seek);
    }
}
1;
