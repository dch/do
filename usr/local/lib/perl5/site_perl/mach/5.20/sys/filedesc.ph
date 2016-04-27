require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_FILEDESC_H_)) {
    eval 'sub _SYS_FILEDESC_H_ () {1;}' unless defined(&_SYS_FILEDESC_H_);
    require 'sys/caprights.ph';
    require 'sys/queue.ph';
    require 'sys/event.ph';
    require 'sys/lock.ph';
    require 'sys/priority.ph';
    require 'sys/seq.ph';
    require 'sys/sx.ph';
    require 'machine/_limits.ph';
    eval 'sub fde_rights () { ($fde_caps->{fc_rights});}' unless defined(&fde_rights);
    eval 'sub fde_fcntls () { ($fde_caps->{fc_fcntls});}' unless defined(&fde_fcntls);
    eval 'sub fde_ioctls () { ($fde_caps->{fc_ioctls});}' unless defined(&fde_ioctls);
    eval 'sub fde_nioctls () { ($fde_caps->{fc_nioctls});}' unless defined(&fde_nioctls);
    eval 'sub fde_change_size () {( &offsetof(\'struct filedescent\',  &fde_seq));}' unless defined(&fde_change_size);
    eval 'sub NDSLOTTYPE () {\'u_long\';}' unless defined(&NDSLOTTYPE);
    eval 'sub fd_seq {
        my($fdp, $fd) = @_;
	    eval q((($fdp)-> ($fd_ofiles[&(fd)]->{fde_seq})));
    }' unless defined(&fd_seq);
    eval 'sub UF_EXCLOSE () {0x1;}' unless defined(&UF_EXCLOSE);
    if(defined(&_KERNEL)) {
	eval 'sub DUP_FIXED () {0x1;}' unless defined(&DUP_FIXED);
	eval 'sub DUP_FCNTL () {0x2;}' unless defined(&DUP_FCNTL);
	eval 'sub DUP_CLOEXEC () {0x4;}' unless defined(&DUP_CLOEXEC);
	eval 'sub FILEDESC_LOCK_INIT {
	    my($fdp) = @_;
    	    eval q( &sx_init(($fdp)-> &fd_sx, \\"filedesc structure\\"));
	}' unless defined(&FILEDESC_LOCK_INIT);
	eval 'sub FILEDESC_LOCK_DESTROY {
	    my($fdp) = @_;
    	    eval q( &sx_destroy(($fdp)-> &fd_sx));
	}' unless defined(&FILEDESC_LOCK_DESTROY);
	eval 'sub FILEDESC_LOCK {
	    my($fdp) = @_;
    	    eval q((($fdp)-> &fd_sx));
	}' unless defined(&FILEDESC_LOCK);
	eval 'sub FILEDESC_XLOCK {
	    my($fdp) = @_;
    	    eval q( &sx_xlock(($fdp)-> &fd_sx));
	}' unless defined(&FILEDESC_XLOCK);
	eval 'sub FILEDESC_XUNLOCK {
	    my($fdp) = @_;
    	    eval q( &sx_xunlock(($fdp)-> &fd_sx));
	}' unless defined(&FILEDESC_XUNLOCK);
	eval 'sub FILEDESC_SLOCK {
	    my($fdp) = @_;
    	    eval q( &sx_slock(($fdp)-> &fd_sx));
	}' unless defined(&FILEDESC_SLOCK);
	eval 'sub FILEDESC_SUNLOCK {
	    my($fdp) = @_;
    	    eval q( &sx_sunlock(($fdp)-> &fd_sx));
	}' unless defined(&FILEDESC_SUNLOCK);
	eval 'sub FILEDESC_LOCK_ASSERT {
	    my($fdp) = @_;
    	    eval q( &sx_assert(($fdp)-> &fd_sx,  &SX_LOCKED |  &SX_NOTRECURSED));
	}' unless defined(&FILEDESC_LOCK_ASSERT);
	eval 'sub FILEDESC_XLOCK_ASSERT {
	    my($fdp) = @_;
    	    eval q( &sx_assert(($fdp)-> &fd_sx,  &SX_XLOCKED |  &SX_NOTRECURSED));
	}' unless defined(&FILEDESC_XLOCK_ASSERT);
	eval 'sub FILEDESC_UNLOCK_ASSERT {
	    my($fdp) = @_;
    	    eval q( &sx_assert(($fdp)-> &fd_sx,  &SX_UNLOCKED));
	}' unless defined(&FILEDESC_UNLOCK_ASSERT);
    }
}
1;
