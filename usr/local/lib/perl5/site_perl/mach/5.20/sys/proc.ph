require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_PROC_H_)) {
    eval 'sub _SYS_PROC_H_ () {1;}' unless defined(&_SYS_PROC_H_);
    require 'sys/callout.ph';
    require 'sys/event.ph';
    require 'sys/condvar.ph';
    unless(defined(&_KERNEL)) {
	require 'sys/filedesc.ph';
    }
    require 'sys/queue.ph';
    require 'sys/_lock.ph';
    require 'sys/lock_profile.ph';
    require 'sys/_mutex.ph';
    require 'sys/osd.ph';
    require 'sys/priority.ph';
    require 'sys/rtprio.ph';
    require 'sys/runq.ph';
    require 'sys/resource.ph';
    require 'sys/sigio.ph';
    require 'sys/signal.ph';
    require 'sys/signalvar.ph';
    unless(defined(&_KERNEL)) {
	require 'sys/time.ph';
    } else {
	require 'sys/pcpu.ph';
    }
    require 'sys/ucontext.ph';
    require 'sys/ucred.ph';
    require 'machine/proc.ph';
    eval 'sub td_siglist () { ($td_sigqueue->{sq_signals});}' unless defined(&td_siglist);
    eval 'sub td_startzero () { &td_flags;}' unless defined(&td_startzero);
    eval 'sub td_endzero () { &td_sigmask;}' unless defined(&td_endzero);
    eval 'sub td_startcopy () { &td_endzero;}' unless defined(&td_startcopy);
    eval 'sub td_endcopy () { &td_pcb;}' unless defined(&td_endcopy);
    eval("sub TDS_INACTIVE () { 0x0; }") unless defined(&TDS_INACTIVE);
    eval("sub TDS_INHIBITED () { 1; }") unless defined(&TDS_INHIBITED);
    eval("sub TDS_CAN_RUN () { 2; }") unless defined(&TDS_CAN_RUN);
    eval("sub TDS_RUNQ () { 3; }") unless defined(&TDS_RUNQ);
    eval("sub TDS_RUNNING () { 4; }") unless defined(&TDS_RUNNING);
    eval 'sub THREAD_LOCK_ASSERT {
        my($td, $type) = @_;
	    eval q( &do { \'struct mtx\' * &__m = ($td)-> &td_lock;  &if ( &__m !=  &blocked_lock)  &mtx_assert( &__m, ($type)); }  &while (0));
    }' unless defined(&THREAD_LOCK_ASSERT);
    if(defined(&INVARIANTS)) {
	eval 'sub THREAD_LOCKPTR_ASSERT {
	    my($td, $lock) = @_;
    	    eval q( &do { \'struct mtx\' * &__m = ($td)-> &td_lock;  &KASSERT(( &__m ==  &blocked_lock ||  &__m == ($lock)), (\\"Thread %p lock %p does not match %p\\", $td,  &__m, ($lock))); }  &while (0));
	}' unless defined(&THREAD_LOCKPTR_ASSERT);
    } else {
	eval 'sub THREAD_LOCKPTR_ASSERT {
	    my($td, $lock) = @_;
    	    eval q();
	}' unless defined(&THREAD_LOCKPTR_ASSERT);
    }
    eval 'sub TDF_BORROWING () {0x1;}' unless defined(&TDF_BORROWING);
    eval 'sub TDF_INPANIC () {0x2;}' unless defined(&TDF_INPANIC);
    eval 'sub TDF_INMEM () {0x4;}' unless defined(&TDF_INMEM);
    eval 'sub TDF_SINTR () {0x8;}' unless defined(&TDF_SINTR);
    eval 'sub TDF_TIMEOUT () {0x10;}' unless defined(&TDF_TIMEOUT);
    eval 'sub TDF_IDLETD () {0x20;}' unless defined(&TDF_IDLETD);
    eval 'sub TDF_CANSWAP () {0x40;}' unless defined(&TDF_CANSWAP);
    eval 'sub TDF_SLEEPABORT () {0x80;}' unless defined(&TDF_SLEEPABORT);
    eval 'sub TDF_KTH_SUSP () {0x100;}' unless defined(&TDF_KTH_SUSP);
    eval 'sub TDF_UNUSED09 () {0x200;}' unless defined(&TDF_UNUSED09);
    eval 'sub TDF_BOUNDARY () {0x400;}' unless defined(&TDF_BOUNDARY);
    eval 'sub TDF_ASTPENDING () {0x800;}' unless defined(&TDF_ASTPENDING);
    eval 'sub TDF_TIMOFAIL () {0x1000;}' unless defined(&TDF_TIMOFAIL);
    eval 'sub TDF_SBDRY () {0x2000;}' unless defined(&TDF_SBDRY);
    eval 'sub TDF_UPIBLOCKED () {0x4000;}' unless defined(&TDF_UPIBLOCKED);
    eval 'sub TDF_NEEDSUSPCHK () {0x8000;}' unless defined(&TDF_NEEDSUSPCHK);
    eval 'sub TDF_NEEDRESCHED () {0x10000;}' unless defined(&TDF_NEEDRESCHED);
    eval 'sub TDF_NEEDSIGCHK () {0x20000;}' unless defined(&TDF_NEEDSIGCHK);
    eval 'sub TDF_NOLOAD () {0x40000;}' unless defined(&TDF_NOLOAD);
    eval 'sub TDF_UNUSED19 () {0x80000;}' unless defined(&TDF_UNUSED19);
    eval 'sub TDF_THRWAKEUP () {0x100000;}' unless defined(&TDF_THRWAKEUP);
    eval 'sub TDF_UNUSED21 () {0x200000;}' unless defined(&TDF_UNUSED21);
    eval 'sub TDF_SWAPINREQ () {0x400000;}' unless defined(&TDF_SWAPINREQ);
    eval 'sub TDF_UNUSED23 () {0x800000;}' unless defined(&TDF_UNUSED23);
    eval 'sub TDF_SCHED0 () {0x1000000;}' unless defined(&TDF_SCHED0);
    eval 'sub TDF_SCHED1 () {0x2000000;}' unless defined(&TDF_SCHED1);
    eval 'sub TDF_SCHED2 () {0x4000000;}' unless defined(&TDF_SCHED2);
    eval 'sub TDF_SCHED3 () {0x8000000;}' unless defined(&TDF_SCHED3);
    eval 'sub TDF_ALRMPEND () {0x10000000;}' unless defined(&TDF_ALRMPEND);
    eval 'sub TDF_PROFPEND () {0x20000000;}' unless defined(&TDF_PROFPEND);
    eval 'sub TDF_MACPEND () {0x40000000;}' unless defined(&TDF_MACPEND);
    eval 'sub TDB_SUSPEND () {0x1;}' unless defined(&TDB_SUSPEND);
    eval 'sub TDB_XSIG () {0x2;}' unless defined(&TDB_XSIG);
    eval 'sub TDB_USERWR () {0x4;}' unless defined(&TDB_USERWR);
    eval 'sub TDB_SCE () {0x8;}' unless defined(&TDB_SCE);
    eval 'sub TDB_SCX () {0x10;}' unless defined(&TDB_SCX);
    eval 'sub TDB_EXEC () {0x20;}' unless defined(&TDB_EXEC);
    eval 'sub TDB_FORK () {0x40;}' unless defined(&TDB_FORK);
    eval 'sub TDB_STOPATFORK () {0x80;}' unless defined(&TDB_STOPATFORK);
    eval 'sub TDB_CHILD () {0x100;}' unless defined(&TDB_CHILD);
    eval 'sub TDP_OLDMASK () {0x1;}' unless defined(&TDP_OLDMASK);
    eval 'sub TDP_INKTR () {0x2;}' unless defined(&TDP_INKTR);
    eval 'sub TDP_INKTRACE () {0x4;}' unless defined(&TDP_INKTRACE);
    eval 'sub TDP_BUFNEED () {0x8;}' unless defined(&TDP_BUFNEED);
    eval 'sub TDP_COWINPROGRESS () {0x10;}' unless defined(&TDP_COWINPROGRESS);
    eval 'sub TDP_ALTSTACK () {0x20;}' unless defined(&TDP_ALTSTACK);
    eval 'sub TDP_DEADLKTREAT () {0x40;}' unless defined(&TDP_DEADLKTREAT);
    eval 'sub TDP_NOFAULTING () {0x80;}' unless defined(&TDP_NOFAULTING);
    eval 'sub TDP_UNUSED9 () {0x100;}' unless defined(&TDP_UNUSED9);
    eval 'sub TDP_OWEUPC () {0x200;}' unless defined(&TDP_OWEUPC);
    eval 'sub TDP_ITHREAD () {0x400;}' unless defined(&TDP_ITHREAD);
    eval 'sub TDP_SYNCIO () {0x800;}' unless defined(&TDP_SYNCIO);
    eval 'sub TDP_SCHED1 () {0x1000;}' unless defined(&TDP_SCHED1);
    eval 'sub TDP_SCHED2 () {0x2000;}' unless defined(&TDP_SCHED2);
    eval 'sub TDP_SCHED3 () {0x4000;}' unless defined(&TDP_SCHED3);
    eval 'sub TDP_SCHED4 () {0x8000;}' unless defined(&TDP_SCHED4);
    eval 'sub TDP_GEOM () {0x10000;}' unless defined(&TDP_GEOM);
    eval 'sub TDP_SOFTDEP () {0x20000;}' unless defined(&TDP_SOFTDEP);
    eval 'sub TDP_NORUNNINGBUF () {0x40000;}' unless defined(&TDP_NORUNNINGBUF);
    eval 'sub TDP_WAKEUP () {0x80000;}' unless defined(&TDP_WAKEUP);
    eval 'sub TDP_INBDFLUSH () {0x100000;}' unless defined(&TDP_INBDFLUSH);
    eval 'sub TDP_KTHREAD () {0x200000;}' unless defined(&TDP_KTHREAD);
    eval 'sub TDP_CALLCHAIN () {0x400000;}' unless defined(&TDP_CALLCHAIN);
    eval 'sub TDP_IGNSUSP () {0x800000;}' unless defined(&TDP_IGNSUSP);
    eval 'sub TDP_AUDITREC () {0x1000000;}' unless defined(&TDP_AUDITREC);
    eval 'sub TDP_RFPPWAIT () {0x2000000;}' unless defined(&TDP_RFPPWAIT);
    eval 'sub TDP_RESETSPUR () {0x4000000;}' unless defined(&TDP_RESETSPUR);
    eval 'sub TDP_NERRNO () {0x8000000;}' unless defined(&TDP_NERRNO);
    eval 'sub TDP_UIOHELD () {0x10000000;}' unless defined(&TDP_UIOHELD);
    eval 'sub TDP_DEVMEMIO () {0x20000000;}' unless defined(&TDP_DEVMEMIO);
    eval 'sub TDP_EXECVMSPC () {0x40000000;}' unless defined(&TDP_EXECVMSPC);
    eval 'sub TDI_SUSPENDED () {0x1;}' unless defined(&TDI_SUSPENDED);
    eval 'sub TDI_SLEEPING () {0x2;}' unless defined(&TDI_SLEEPING);
    eval 'sub TDI_SWAPPED () {0x4;}' unless defined(&TDI_SWAPPED);
    eval 'sub TDI_LOCK () {0x8;}' unless defined(&TDI_LOCK);
    eval 'sub TDI_IWAIT () {0x10;}' unless defined(&TDI_IWAIT);
    eval 'sub TD_IS_SLEEPING {
        my($td) = @_;
	    eval q((($td)-> &td_inhibitors &  &TDI_SLEEPING));
    }' unless defined(&TD_IS_SLEEPING);
    eval 'sub TD_ON_SLEEPQ {
        my($td) = @_;
	    eval q((($td)-> &td_wchan !=  &NULL));
    }' unless defined(&TD_ON_SLEEPQ);
    eval 'sub TD_IS_SUSPENDED {
        my($td) = @_;
	    eval q((($td)-> &td_inhibitors &  &TDI_SUSPENDED));
    }' unless defined(&TD_IS_SUSPENDED);
    eval 'sub TD_IS_SWAPPED {
        my($td) = @_;
	    eval q((($td)-> &td_inhibitors &  &TDI_SWAPPED));
    }' unless defined(&TD_IS_SWAPPED);
    eval 'sub TD_ON_LOCK {
        my($td) = @_;
	    eval q((($td)-> &td_inhibitors &  &TDI_LOCK));
    }' unless defined(&TD_ON_LOCK);
    eval 'sub TD_AWAITING_INTR {
        my($td) = @_;
	    eval q((($td)-> &td_inhibitors &  &TDI_IWAIT));
    }' unless defined(&TD_AWAITING_INTR);
    eval 'sub TD_IS_RUNNING {
        my($td) = @_;
	    eval q((($td)-> &td_state ==  &TDS_RUNNING));
    }' unless defined(&TD_IS_RUNNING);
    eval 'sub TD_ON_RUNQ {
        my($td) = @_;
	    eval q((($td)-> &td_state ==  &TDS_RUNQ));
    }' unless defined(&TD_ON_RUNQ);
    eval 'sub TD_CAN_RUN {
        my($td) = @_;
	    eval q((($td)-> &td_state ==  &TDS_CAN_RUN));
    }' unless defined(&TD_CAN_RUN);
    eval 'sub TD_IS_INHIBITED {
        my($td) = @_;
	    eval q((($td)-> &td_state ==  &TDS_INHIBITED));
    }' unless defined(&TD_IS_INHIBITED);
    eval 'sub TD_ON_UPILOCK {
        my($td) = @_;
	    eval q((($td)-> &td_flags &  &TDF_UPIBLOCKED));
    }' unless defined(&TD_ON_UPILOCK);
    eval 'sub TD_IS_IDLETHREAD {
        my($td) = @_;
	    eval q((($td)-> &td_flags &  &TDF_IDLETD));
    }' unless defined(&TD_IS_IDLETHREAD);
    eval 'sub TD_SET_INHIB {
        my($td, $inhib) = @_;
	    eval q( &do { ($td)-> &td_state =  &TDS_INHIBITED; ($td)-> &td_inhibitors |= ($inhib); }  &while (0));
    }' unless defined(&TD_SET_INHIB);
    eval 'sub TD_CLR_INHIB {
        my($td, $inhib) = @_;
	    eval q( &do {  &if ((($td)-> &td_inhibitors & ($inhib))  && ((($td)-> &td_inhibitors &= ~($inhib)) == 0)) ($td)-> &td_state =  &TDS_CAN_RUN; }  &while (0));
    }' unless defined(&TD_CLR_INHIB);
    eval 'sub TD_SET_SLEEPING {
        my($td) = @_;
	    eval q( &TD_SET_INHIB(($td),  &TDI_SLEEPING));
    }' unless defined(&TD_SET_SLEEPING);
    eval 'sub TD_SET_SWAPPED {
        my($td) = @_;
	    eval q( &TD_SET_INHIB(($td),  &TDI_SWAPPED));
    }' unless defined(&TD_SET_SWAPPED);
    eval 'sub TD_SET_LOCK {
        my($td) = @_;
	    eval q( &TD_SET_INHIB(($td),  &TDI_LOCK));
    }' unless defined(&TD_SET_LOCK);
    eval 'sub TD_SET_SUSPENDED {
        my($td) = @_;
	    eval q( &TD_SET_INHIB(($td),  &TDI_SUSPENDED));
    }' unless defined(&TD_SET_SUSPENDED);
    eval 'sub TD_SET_IWAIT {
        my($td) = @_;
	    eval q( &TD_SET_INHIB(($td),  &TDI_IWAIT));
    }' unless defined(&TD_SET_IWAIT);
    eval 'sub TD_SET_EXITING {
        my($td) = @_;
	    eval q( &TD_SET_INHIB(($td),  &TDI_EXITING));
    }' unless defined(&TD_SET_EXITING);
    eval 'sub TD_CLR_SLEEPING {
        my($td) = @_;
	    eval q( &TD_CLR_INHIB(($td),  &TDI_SLEEPING));
    }' unless defined(&TD_CLR_SLEEPING);
    eval 'sub TD_CLR_SWAPPED {
        my($td) = @_;
	    eval q( &TD_CLR_INHIB(($td),  &TDI_SWAPPED));
    }' unless defined(&TD_CLR_SWAPPED);
    eval 'sub TD_CLR_LOCK {
        my($td) = @_;
	    eval q( &TD_CLR_INHIB(($td),  &TDI_LOCK));
    }' unless defined(&TD_CLR_LOCK);
    eval 'sub TD_CLR_SUSPENDED {
        my($td) = @_;
	    eval q( &TD_CLR_INHIB(($td),  &TDI_SUSPENDED));
    }' unless defined(&TD_CLR_SUSPENDED);
    eval 'sub TD_CLR_IWAIT {
        my($td) = @_;
	    eval q( &TD_CLR_INHIB(($td),  &TDI_IWAIT));
    }' unless defined(&TD_CLR_IWAIT);
    eval 'sub TD_SET_RUNNING {
        my($td) = @_;
	    eval q(($td)-> &td_state =  &TDS_RUNNING);
    }' unless defined(&TD_SET_RUNNING);
    eval 'sub TD_SET_RUNQ {
        my($td) = @_;
	    eval q(($td)-> &td_state =  &TDS_RUNQ);
    }' unless defined(&TD_SET_RUNQ);
    eval 'sub TD_SET_CAN_RUN {
        my($td) = @_;
	    eval q(($td)-> &td_state =  &TDS_CAN_RUN);
    }' unless defined(&TD_SET_CAN_RUN);
    eval("sub PRS_NEW () { 0; }") unless defined(&PRS_NEW);
    eval("sub PRS_NORMAL () { 1; }") unless defined(&PRS_NORMAL);
    eval("sub PRS_ZOMBIE () { 2; }") unless defined(&PRS_ZOMBIE);
    eval 'sub p_siglist () { ($p_sigqueue->{sq_signals});}' unless defined(&p_siglist);
    eval 'sub p_startzero () { &p_oppid;}' unless defined(&p_startzero);
    eval 'sub p_endzero () { &p_magic;}' unless defined(&p_endzero);
    eval 'sub p_startcopy () { &p_endzero;}' unless defined(&p_startcopy);
    eval 'sub p_endcopy () { &p_xstat;}' unless defined(&p_endcopy);
    eval 'sub p_session () { ($p_pgrp->{pg_session});}' unless defined(&p_session);
    eval 'sub p_pgid () { ($p_pgrp->{pg_id});}' unless defined(&p_pgid);
    eval 'sub NOCPU () {0xff;}' unless defined(&NOCPU);
    eval 'sub PROC_SLOCK {
        my($p) = @_;
	    eval q( &mtx_lock_spin(($p)-> &p_slock));
    }' unless defined(&PROC_SLOCK);
    eval 'sub PROC_SUNLOCK {
        my($p) = @_;
	    eval q( &mtx_unlock_spin(($p)-> &p_slock));
    }' unless defined(&PROC_SUNLOCK);
    eval 'sub PROC_SLOCK_ASSERT {
        my($p, $type) = @_;
	    eval q( &mtx_assert(($p)-> &p_slock, ($type)));
    }' unless defined(&PROC_SLOCK_ASSERT);
    eval 'sub P_ADVLOCK () {0x1;}' unless defined(&P_ADVLOCK);
    eval 'sub P_CONTROLT () {0x2;}' unless defined(&P_CONTROLT);
    eval 'sub P_KTHREAD () {0x4;}' unless defined(&P_KTHREAD);
    eval 'sub P_FOLLOWFORK () {0x8;}' unless defined(&P_FOLLOWFORK);
    eval 'sub P_PPWAIT () {0x10;}' unless defined(&P_PPWAIT);
    eval 'sub P_PROFIL () {0x20;}' unless defined(&P_PROFIL);
    eval 'sub P_STOPPROF () {0x40;}' unless defined(&P_STOPPROF);
    eval 'sub P_HADTHREADS () {0x80;}' unless defined(&P_HADTHREADS);
    eval 'sub P_SUGID () {0x100;}' unless defined(&P_SUGID);
    eval 'sub P_SYSTEM () {0x200;}' unless defined(&P_SYSTEM);
    eval 'sub P_SINGLE_EXIT () {0x400;}' unless defined(&P_SINGLE_EXIT);
    eval 'sub P_TRACED () {0x800;}' unless defined(&P_TRACED);
    eval 'sub P_WAITED () {0x1000;}' unless defined(&P_WAITED);
    eval 'sub P_WEXIT () {0x2000;}' unless defined(&P_WEXIT);
    eval 'sub P_EXEC () {0x4000;}' unless defined(&P_EXEC);
    eval 'sub P_WKILLED () {0x8000;}' unless defined(&P_WKILLED);
    eval 'sub P_CONTINUED () {0x10000;}' unless defined(&P_CONTINUED);
    eval 'sub P_STOPPED_SIG () {0x20000;}' unless defined(&P_STOPPED_SIG);
    eval 'sub P_STOPPED_TRACE () {0x40000;}' unless defined(&P_STOPPED_TRACE);
    eval 'sub P_STOPPED_SINGLE () {0x80000;}' unless defined(&P_STOPPED_SINGLE);
    eval 'sub P_PROTECTED () {0x100000;}' unless defined(&P_PROTECTED);
    eval 'sub P_SIGEVENT () {0x200000;}' unless defined(&P_SIGEVENT);
    eval 'sub P_SINGLE_BOUNDARY () {0x400000;}' unless defined(&P_SINGLE_BOUNDARY);
    eval 'sub P_HWPMC () {0x800000;}' unless defined(&P_HWPMC);
    eval 'sub P_JAILED () {0x1000000;}' unless defined(&P_JAILED);
    eval 'sub P_UNUSED1 () {0x2000000;}' unless defined(&P_UNUSED1);
    eval 'sub P_INEXEC () {0x4000000;}' unless defined(&P_INEXEC);
    eval 'sub P_STATCHILD () {0x8000000;}' unless defined(&P_STATCHILD);
    eval 'sub P_INMEM () {0x10000000;}' unless defined(&P_INMEM);
    eval 'sub P_SWAPPINGOUT () {0x20000000;}' unless defined(&P_SWAPPINGOUT);
    eval 'sub P_SWAPPINGIN () {0x40000000;}' unless defined(&P_SWAPPINGIN);
    eval 'sub P_PPTRACE () {0x80000000;}' unless defined(&P_PPTRACE);
    eval 'sub P_STOPPED () {( &P_STOPPED_SIG| &P_STOPPED_SINGLE| &P_STOPPED_TRACE);}' unless defined(&P_STOPPED);
    eval 'sub P_SHOULDSTOP {
        my($p) = @_;
	    eval q((($p)-> &p_flag &  &P_STOPPED));
    }' unless defined(&P_SHOULDSTOP);
    eval 'sub P_KILLED {
        my($p) = @_;
	    eval q((($p)-> &p_flag &  &P_WKILLED));
    }' unless defined(&P_KILLED);
    eval 'sub P2_INHERIT_PROTECTED () {0x1;}' unless defined(&P2_INHERIT_PROTECTED);
    eval 'sub P_TREE_ORPHANED () {0x1;}' unless defined(&P_TREE_ORPHANED);
    eval 'sub P_TREE_FIRST_ORPHAN () {0x2;}' unless defined(&P_TREE_FIRST_ORPHAN);
    eval 'sub SIDL () {1;}' unless defined(&SIDL);
    eval 'sub SRUN () {2;}' unless defined(&SRUN);
    eval 'sub SSLEEP () {3;}' unless defined(&SSLEEP);
    eval 'sub SSTOP () {4;}' unless defined(&SSTOP);
    eval 'sub SZOMB () {5;}' unless defined(&SZOMB);
    eval 'sub SWAIT () {6;}' unless defined(&SWAIT);
    eval 'sub SLOCK () {7;}' unless defined(&SLOCK);
    eval 'sub P_MAGIC () {0xbeefface;}' unless defined(&P_MAGIC);
    if(defined(&_KERNEL)) {
	eval 'sub SW_TYPE_MASK () {0xff;}' unless defined(&SW_TYPE_MASK);
	eval 'sub SWT_NONE () {0;}' unless defined(&SWT_NONE);
	eval 'sub SWT_PREEMPT () {1;}' unless defined(&SWT_PREEMPT);
	eval 'sub SWT_OWEPREEMPT () {2;}' unless defined(&SWT_OWEPREEMPT);
	eval 'sub SWT_TURNSTILE () {3;}' unless defined(&SWT_TURNSTILE);
	eval 'sub SWT_SLEEPQ () {4;}' unless defined(&SWT_SLEEPQ);
	eval 'sub SWT_SLEEPQTIMO () {5;}' unless defined(&SWT_SLEEPQTIMO);
	eval 'sub SWT_RELINQUISH () {6;}' unless defined(&SWT_RELINQUISH);
	eval 'sub SWT_NEEDRESCHED () {7;}' unless defined(&SWT_NEEDRESCHED);
	eval 'sub SWT_IDLE () {8;}' unless defined(&SWT_IDLE);
	eval 'sub SWT_IWAIT () {9;}' unless defined(&SWT_IWAIT);
	eval 'sub SWT_SUSPEND () {10;}' unless defined(&SWT_SUSPEND);
	eval 'sub SWT_REMOTEPREEMPT () {11;}' unless defined(&SWT_REMOTEPREEMPT);
	eval 'sub SWT_REMOTEWAKEIDLE () {12;}' unless defined(&SWT_REMOTEWAKEIDLE);
	eval 'sub SWT_COUNT () {13;}' unless defined(&SWT_COUNT);
	eval 'sub SW_VOL () {0x100;}' unless defined(&SW_VOL);
	eval 'sub SW_INVOL () {0x200;}' unless defined(&SW_INVOL);
	eval 'sub SW_PREEMPT () {0x400;}' unless defined(&SW_PREEMPT);
	eval 'sub SINGLE_NO_EXIT () {0;}' unless defined(&SINGLE_NO_EXIT);
	eval 'sub SINGLE_EXIT () {1;}' unless defined(&SINGLE_EXIT);
	eval 'sub SINGLE_BOUNDARY () {2;}' unless defined(&SINGLE_BOUNDARY);
	if(defined(&MALLOC_DECLARE)) {
	}
	eval 'sub FOREACH_PROC_IN_SYSTEM {
	    my($p) = @_;
    	    eval q( &LIST_FOREACH(($p),  &allproc,  &p_list));
	}' unless defined(&FOREACH_PROC_IN_SYSTEM);
	eval 'sub FOREACH_THREAD_IN_PROC {
	    my($p, $td) = @_;
    	    eval q( &TAILQ_FOREACH(($td), ($p)-> &p_threads,  &td_plist));
	}' unless defined(&FOREACH_THREAD_IN_PROC);
	eval 'sub FIRST_THREAD_IN_PROC {
	    my($p) = @_;
    	    eval q( &TAILQ_FIRST(($p)-> &p_threads));
	}' unless defined(&FIRST_THREAD_IN_PROC);
	eval 'sub PID_MAX () {99999;}' unless defined(&PID_MAX);
	eval 'sub NO_PID () {100000;}' unless defined(&NO_PID);
	eval 'sub SESS_LEADER {
	    my($p) = @_;
    	    eval q((($p)-> ($p_session->{s_leader}) == ($p)));
	}' unless defined(&SESS_LEADER);
	eval 'sub STOPEVENT {
	    my($p, $e, $v) = @_;
    	    eval q( &do {  &if (($p)-> &p_stops & ($e)) {  &PROC_LOCK($p);  &stopevent(($p), ($e), ($v));  &PROC_UNLOCK($p); } }  &while (0));
	}' unless defined(&STOPEVENT);
	eval 'sub _STOPEVENT {
	    my($p, $e, $v) = @_;
    	    eval q( &do {  &PROC_LOCK_ASSERT($p,  &MA_OWNED);  &WITNESS_WARN( &WARN_GIANTOK |  &WARN_SLEEPOK,  ($p->{p_mtx}->{lock_object}), \\"checking stopevent %d\\", ($e));  &if (($p)-> &p_stops & ($e))  &stopevent(($p), ($e), ($v)); }  &while (0));
	}' unless defined(&_STOPEVENT);
	eval 'sub PROC_LOCK {
	    my($p) = @_;
    	    eval q( &mtx_lock(($p)-> &p_mtx));
	}' unless defined(&PROC_LOCK);
	eval 'sub PROC_TRYLOCK {
	    my($p) = @_;
    	    eval q( &mtx_trylock(($p)-> &p_mtx));
	}' unless defined(&PROC_TRYLOCK);
	eval 'sub PROC_UNLOCK {
	    my($p) = @_;
    	    eval q( &mtx_unlock(($p)-> &p_mtx));
	}' unless defined(&PROC_UNLOCK);
	eval 'sub PROC_LOCKED {
	    my($p) = @_;
    	    eval q( &mtx_owned(($p)-> &p_mtx));
	}' unless defined(&PROC_LOCKED);
	eval 'sub PROC_LOCK_ASSERT {
	    my($p, $type) = @_;
    	    eval q( &mtx_assert(($p)-> &p_mtx, ($type)));
	}' unless defined(&PROC_LOCK_ASSERT);
	eval 'sub PGRP_LOCK {
	    my($pg) = @_;
    	    eval q( &mtx_lock(($pg)-> &pg_mtx));
	}' unless defined(&PGRP_LOCK);
	eval 'sub PGRP_UNLOCK {
	    my($pg) = @_;
    	    eval q( &mtx_unlock(($pg)-> &pg_mtx));
	}' unless defined(&PGRP_UNLOCK);
	eval 'sub PGRP_LOCKED {
	    my($pg) = @_;
    	    eval q( &mtx_owned(($pg)-> &pg_mtx));
	}' unless defined(&PGRP_LOCKED);
	eval 'sub PGRP_LOCK_ASSERT {
	    my($pg, $type) = @_;
    	    eval q( &mtx_assert(($pg)-> &pg_mtx, ($type)));
	}' unless defined(&PGRP_LOCK_ASSERT);
	eval 'sub PGRP_LOCK_PGSIGNAL {
	    my($pg) = @_;
    	    eval q( &do {  &if (($pg) !=  &NULL)  &PGRP_LOCK($pg); }  &while (0));
	}' unless defined(&PGRP_LOCK_PGSIGNAL);
	eval 'sub PGRP_UNLOCK_PGSIGNAL {
	    my($pg) = @_;
    	    eval q( &do {  &if (($pg) !=  &NULL)  &PGRP_UNLOCK($pg); }  &while (0));
	}' unless defined(&PGRP_UNLOCK_PGSIGNAL);
	eval 'sub SESS_LOCK {
	    my($s) = @_;
    	    eval q( &mtx_lock(($s)-> &s_mtx));
	}' unless defined(&SESS_LOCK);
	eval 'sub SESS_UNLOCK {
	    my($s) = @_;
    	    eval q( &mtx_unlock(($s)-> &s_mtx));
	}' unless defined(&SESS_UNLOCK);
	eval 'sub SESS_LOCKED {
	    my($s) = @_;
    	    eval q( &mtx_owned(($s)-> &s_mtx));
	}' unless defined(&SESS_LOCKED);
	eval 'sub SESS_LOCK_ASSERT {
	    my($s, $type) = @_;
    	    eval q( &mtx_assert(($s)-> &s_mtx, ($type)));
	}' unless defined(&SESS_LOCK_ASSERT);
	eval 'sub PHOLD {
	    my($p) = @_;
    	    eval q( &do {  &PROC_LOCK($p);  &_PHOLD($p);  &PROC_UNLOCK($p); }  &while (0));
	}' unless defined(&PHOLD);
	eval 'sub _PHOLD {
	    my($p) = @_;
    	    eval q( &do {  &PROC_LOCK_ASSERT(($p),  &MA_OWNED);  &KASSERT(!(($p)-> &p_flag &  &P_WEXIT) || ($p) ==  &curproc, (\\"PHOLD of exiting process\\")); ($p)-> &p_lock++;  &if ((($p)-> &p_flag &  &P_INMEM) == 0)  &faultin(($p)); }  &while (0));
	}' unless defined(&_PHOLD);
	eval 'sub PROC_ASSERT_HELD {
	    my($p) = @_;
    	    eval q( &do {  &KASSERT(($p)-> &p_lock > 0, (\\"process not held\\")); }  &while (0));
	}' unless defined(&PROC_ASSERT_HELD);
	eval 'sub PRELE {
	    my($p) = @_;
    	    eval q( &do {  &PROC_LOCK(($p));  &_PRELE(($p));  &PROC_UNLOCK(($p)); }  &while (0));
	}' unless defined(&PRELE);
	eval 'sub _PRELE {
	    my($p) = @_;
    	    eval q( &do {  &PROC_LOCK_ASSERT(($p),  &MA_OWNED);  &PROC_ASSERT_HELD($p); (--($p)-> &p_lock);  &if ((($p)-> &p_flag &  &P_WEXIT)  && ($p)-> &p_lock == 0)  &wakeup(($p)-> &p_lock); }  &while (0));
	}' unless defined(&_PRELE);
	eval 'sub PROC_ASSERT_NOT_HELD {
	    my($p) = @_;
    	    eval q( &do {  &KASSERT(($p)-> &p_lock == 0, (\\"process held\\")); }  &while (0));
	}' unless defined(&PROC_ASSERT_NOT_HELD);
	eval 'sub thread_safetoswapout {
	    my($td) = @_;
    	    eval q((($td)-> &td_flags &  &TDF_CANSWAP));
	}' unless defined(&thread_safetoswapout);
	eval 'sub THREAD_NO_SLEEPING () {
	    eval q((( &curthread)-> &td_no_sleeping++));
	}' unless defined(&THREAD_NO_SLEEPING);
	eval 'sub THREAD_SLEEPING_OK () {
	    eval q((( &curthread)-> &td_no_sleeping--));
	}' unless defined(&THREAD_SLEEPING_OK);
	eval 'sub THREAD_CAN_SLEEP () {
	    eval q((( &curthread)-> &td_no_sleeping == 0));
	}' unless defined(&THREAD_CAN_SLEEP);
	eval 'sub PIDHASH {
	    my($pid) = @_;
    	    eval q(( $pidhashtbl[($pid) &  &pidhash]));
	}' unless defined(&PIDHASH);
	eval 'sub TIDHASH {
	    my($tid) = @_;
    	    eval q(( $tidhashtbl[($tid) &  &tidhash]));
	}' unless defined(&TIDHASH);
	eval 'sub PGRPHASH {
	    my($pgid) = @_;
    	    eval q(( $pgrphashtbl[($pgid) &  &pgrphash]));
	}' unless defined(&PGRPHASH);
	eval 'sub PGET_HOLD () {0x1;}' unless defined(&PGET_HOLD);
	eval 'sub PGET_CANSEE () {0x2;}' unless defined(&PGET_CANSEE);
	eval 'sub PGET_CANDEBUG () {0x4;}' unless defined(&PGET_CANDEBUG);
	eval 'sub PGET_ISCURRENT () {0x8;}' unless defined(&PGET_ISCURRENT);
	eval 'sub PGET_NOTWEXIT () {0x10;}' unless defined(&PGET_NOTWEXIT);
	eval 'sub PGET_NOTINEXEC () {0x20;}' unless defined(&PGET_NOTINEXEC);
	eval 'sub PGET_NOTID () {0x40;}' unless defined(&PGET_NOTID);
	eval 'sub PGET_WANTREAD () {( &PGET_HOLD |  &PGET_CANDEBUG |  &PGET_NOTWEXIT);}' unless defined(&PGET_WANTREAD);
	eval 'sub curthread_pflags_set {
	    my($flags) = @_;
    	    eval q({ \'struct thread\' * &td; \'int\'  &save;  &td =  &curthread;  &save = ~$flags | ( ($td->{td_pflags}) & $flags);  ($td->{td_pflags}) |= $flags; ( &save); });
	}' unless defined(&curthread_pflags_set);
	eval 'sub curthread_pflags_restore {
	    my($save) = @_;
    	    eval q({  ($curthread->{td_pflags}) &= $save; });
	}' unless defined(&curthread_pflags_restore);
    }
}
1;
