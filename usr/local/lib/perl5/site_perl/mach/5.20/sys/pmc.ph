require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_PMC_H_)) {
    eval 'sub _SYS_PMC_H_ () {1;}' unless defined(&_SYS_PMC_H_);
    require 'dev/hwpmc/pmc_events.ph';
    require 'machine/pmc_mdep.ph';
    require 'machine/profile.ph';
    eval 'sub PMC_MODULE_NAME () {"hwpmc";}' unless defined(&PMC_MODULE_NAME);
    eval 'sub PMC_NAME_MAX () {64;}' unless defined(&PMC_NAME_MAX);
    eval 'sub PMC_CLASS_MAX () {8;}' unless defined(&PMC_CLASS_MAX);
    eval 'sub PMC_VERSION_MAJOR () {0x3;}' unless defined(&PMC_VERSION_MAJOR);
    eval 'sub PMC_VERSION_MINOR () {0x1;}' unless defined(&PMC_VERSION_MINOR);
    eval 'sub PMC_VERSION_PATCH () {0x;}' unless defined(&PMC_VERSION_PATCH);
    eval 'sub PMC_VERSION () {( &PMC_VERSION_MAJOR << 24|  &PMC_VERSION_MINOR << 16|  &PMC_VERSION_PATCH);}' unless defined(&PMC_VERSION);
    eval 'sub __PMC_CPUS () {
        eval q( &__PMC_CPU( &AMD_K7, 0x, \\"AMD K7\\")  &__PMC_CPU( &AMD_K8, 0x1, \\"AMD K8\\")  &__PMC_CPU( &INTEL_P5, 0x80, \\"Intel Pentium\\")  &__PMC_CPU( &INTEL_P6, 0x81, \\"Intel Pentium Pro\\")  &__PMC_CPU( &INTEL_CL, 0x82, \\"Intel Celeron\\")  &__PMC_CPU( &INTEL_PII, 0x83, \\"Intel Pentium II\\")  &__PMC_CPU( &INTEL_PIII, 0x84, \\"Intel Pentium III\\")  &__PMC_CPU( &INTEL_PM, 0x85, \\"Intel Pentium M\\")  &__PMC_CPU( &INTEL_PIV, 0x86, \\"Intel Pentium IV\\")  &__PMC_CPU( &INTEL_CORE, 0x87, \\"Intel Core Solo/Duo\\")  &__PMC_CPU( &INTEL_CORE2, 0x88, \\"Intel Core2\\")  &__PMC_CPU( &INTEL_CORE2EXTREME, 0x89, \\"Intel Core2 Extreme\\")  &__PMC_CPU( &INTEL_ATOM, 0x8a, \\"Intel Atom\\")  &__PMC_CPU( &INTEL_COREI7, 0x8b, \\"Intel Core i7\\")  &__PMC_CPU( &INTEL_WESTMERE, 0x8c, \\"Intel Westmere\\")  &__PMC_CPU( &INTEL_SANDYBRIDGE, 0x8d, \\"Intel Sandy Bridge\\")  &__PMC_CPU( &INTEL_IVYBRIDGE, 0x8e, \\"Intel Ivy Bridge\\")  &__PMC_CPU( &INTEL_SANDYBRIDGE_XEON, 0x8f, \\"Intel Sandy Bridge Xeon\\")  &__PMC_CPU( &INTEL_IVYBRIDGE_XEON, 0x90, \\"Intel Ivy Bridge Xeon\\")  &__PMC_CPU( &INTEL_HASWELL, 0x91, \\"Intel Haswell\\")  &__PMC_CPU( &INTEL_ATOM_SILVERMONT, 0x92, \\"Intel Atom Silvermont\\")  &__PMC_CPU( &INTEL_NEHALEM_EX, 0x93, \\"Intel Nehalem Xeon 7500\\")  &__PMC_CPU( &INTEL_WESTMERE_EX, 0x94, \\"Intel Westmere Xeon E7\\")  &__PMC_CPU( &INTEL_XSCALE, 0x100, \\"Intel XScale\\")  &__PMC_CPU( &MIPS_24K, 0x200, \\"MIPS 24K\\")  &__PMC_CPU( &MIPS_OCTEON, 0x201, \\"Cavium Octeon\\")  &__PMC_CPU( &PPC_7450, 0x300, \\"PowerPC MPC7450\\")  &__PMC_CPU( &PPC_970, 0x380, \\"IBM PowerPC 970\\")  &__PMC_CPU( &GENERIC, 0x400, \\"Generic\\"));
    }' unless defined(&__PMC_CPUS);
    eval("sub V () { 0; }") unless defined(&V);
    eval 'sub PMC_CPU_FIRST () { &PMC_CPU_AMD_K7;}' unless defined(&PMC_CPU_FIRST);
    eval 'sub PMC_CPU_LAST () { &PMC_CPU_GENERIC;}' unless defined(&PMC_CPU_LAST);
    eval 'sub __PMC_CLASSES () {
        eval q( &__PMC_CLASS( &TSC)  &__PMC_CLASS( &K7)  &__PMC_CLASS( &K8)  &__PMC_CLASS( &P5)  &__PMC_CLASS( &P6)  &__PMC_CLASS( &P4)  &__PMC_CLASS( &IAF)  &__PMC_CLASS( &IAP)  &__PMC_CLASS( &UCF)  &__PMC_CLASS( &UCP)  &__PMC_CLASS( &XSCALE)  &__PMC_CLASS( &MIPS24K)  &__PMC_CLASS( &OCTEON)  &__PMC_CLASS( &PPC7450)  &__PMC_CLASS( &PPC970)  &__PMC_CLASS( &SOFT));
    }' unless defined(&__PMC_CLASSES);
    eval 'sub PMC_CLASS_FIRST () { &PMC_CLASS_TSC;}' unless defined(&PMC_CLASS_FIRST);
    eval 'sub PMC_CLASS_LAST () { &PMC_CLASS_SOFT;}' unless defined(&PMC_CLASS_LAST);
    eval 'sub __PMC_HWSTATES () {
        eval q( &__PMC_STATE( &DISABLED)  &__PMC_STATE( &FREE));
    }' unless defined(&__PMC_HWSTATES);
    eval 'sub __PMC_SWSTATES () {
        eval q( &__PMC_STATE( &ALLOCATED)  &__PMC_STATE( &STOPPED)  &__PMC_STATE( &RUNNING)  &__PMC_STATE( &DELETED));
    }' unless defined(&__PMC_SWSTATES);
    eval 'sub __PMC_STATES () {
        eval q( &__PMC_HWSTATES()  &__PMC_SWSTATES());
    }' unless defined(&__PMC_STATES);
    eval 'sub PMC_STATE_FIRST () { &PMC_STATE_DISABLED;}' unless defined(&PMC_STATE_FIRST);
    eval 'sub PMC_STATE_LAST () { &PMC_STATE_DELETED;}' unless defined(&PMC_STATE_LAST);
    eval 'sub __PMC_MODES () {
        eval q( &__PMC_MODE( &SS, 0)  &__PMC_MODE( &SC, 1)  &__PMC_MODE( &TS, 2)  &__PMC_MODE( &TC, 3));
    }' unless defined(&__PMC_MODES);
    eval 'sub PMC_MODE_FIRST () { &PMC_MODE_SS;}' unless defined(&PMC_MODE_FIRST);
    eval 'sub PMC_MODE_LAST () { &PMC_MODE_TC;}' unless defined(&PMC_MODE_LAST);
    eval 'sub PMC_IS_COUNTING_MODE {
        my($mode) = @_;
	    eval q((($mode) ==  &PMC_MODE_SC || ($mode) ==  &PMC_MODE_TC));
    }' unless defined(&PMC_IS_COUNTING_MODE);
    eval 'sub PMC_IS_SYSTEM_MODE {
        my($mode) = @_;
	    eval q((($mode) ==  &PMC_MODE_SS || ($mode) ==  &PMC_MODE_SC));
    }' unless defined(&PMC_IS_SYSTEM_MODE);
    eval 'sub PMC_IS_SAMPLING_MODE {
        my($mode) = @_;
	    eval q((($mode) ==  &PMC_MODE_SS || ($mode) ==  &PMC_MODE_TS));
    }' unless defined(&PMC_IS_SAMPLING_MODE);
    eval 'sub PMC_IS_VIRTUAL_MODE {
        my($mode) = @_;
	    eval q((($mode) ==  &PMC_MODE_TS || ($mode) ==  &PMC_MODE_TC));
    }' unless defined(&PMC_IS_VIRTUAL_MODE);
    eval 'sub __PMC_DISPOSITIONS {
        my($N) = @_;
	    eval q( &__PMC_DISP( &STANDALONE)  &__PMC_DISP( &FREE)  &__PMC_DISP( &THREAD)  &__PMC_DISP( &UNKNOWN));
    }' unless defined(&__PMC_DISPOSITIONS);
    eval 'sub PMC_DISP_FIRST () { &PMC_DISP_STANDALONE;}' unless defined(&PMC_DISP_FIRST);
    eval 'sub PMC_DISP_LAST () { &PMC_DISP_THREAD;}' unless defined(&PMC_DISP_LAST);
    eval 'sub __PMC_CAPS () {
        eval q( &__PMC_CAP( &INTERRUPT, 0, \\"generate interrupts\\")  &__PMC_CAP( &USER, 1, \\"count user-mode events\\")  &__PMC_CAP( &SYSTEM, 2, \\"count system-mode events\\")  &__PMC_CAP( &EDGE, 3, \\"do edge detection of events\\")  &__PMC_CAP( &THRESHOLD, 4, \\"ignore events below a threshold\\")  &__PMC_CAP( &READ, 5, \\"read PMC counter\\")  &__PMC_CAP( &WRITE, 6, \\"reprogram PMC counter\\")  &__PMC_CAP( &INVERT, 7, \\"invert comparision sense\\")  &__PMC_CAP( &QUALIFIER, 8, \\"further qualify monitored events\\")  &__PMC_CAP( &PRECISE, 9, \\"perform precise sampling\\")  &__PMC_CAP( &TAGGING, 10, \\"tag upstream events\\")  &__PMC_CAP( &CASCADE, 11, \\"cascade counters\\"));
    }' unless defined(&__PMC_CAPS);
    eval("sub VALUE () { 0; }") unless defined(&VALUE);
    eval 'sub PMC_CAP_FIRST () { &PMC_CAP_INTERRUPT;}' unless defined(&PMC_CAP_FIRST);
    eval 'sub PMC_CAP_LAST () { &PMC_CAP_CASCADE;}' unless defined(&PMC_CAP_LAST);
    eval 'sub __PMC_OPS () {
        eval q( &__PMC_OP( &CONFIGURELOG, \\"Set log file\\")  &__PMC_OP( &FLUSHLOG, \\"Flush log file\\")  &__PMC_OP( &GETCPUINFO, \\"Get system CPU information\\")  &__PMC_OP( &GETDRIVERSTATS, \\"Get driver statistics\\")  &__PMC_OP( &GETMODULEVERSION, \\"Get module version\\")  &__PMC_OP( &GETPMCINFO, \\"Get per-cpu PMC information\\")  &__PMC_OP( &PMCADMIN, \\"Set PMC state\\")  &__PMC_OP( &PMCALLOCATE, \\"Allocate and configure a PMC\\")  &__PMC_OP( &PMCATTACH, \\"Attach a PMC to a process\\")  &__PMC_OP( &PMCDETACH, \\"Detach a PMC from a process\\")  &__PMC_OP( &PMCGETMSR, \\"Get a PMC\'s hardware address\\")  &__PMC_OP( &PMCRELEASE, \\"Release a PMC\\")  &__PMC_OP( &PMCRW, \\"Read/Set a PMC\\")  &__PMC_OP( &PMCSETCOUNT, \\"Set initial count/sampling rate\\")  &__PMC_OP( &PMCSTART, \\"Start a PMC\\")  &__PMC_OP( &PMCSTOP, \\"Stop a PMC\\")  &__PMC_OP( &WRITELOG, \\"Write a cookie to the log file\\")  &__PMC_OP( &CLOSELOG, \\"Close log file\\")  &__PMC_OP( &GETDYNEVENTINFO, \\"Get dynamic events list\\"));
    }' unless defined(&__PMC_OPS);
    eval 'sub PMC_F_FORCE () {0x1;}' unless defined(&PMC_F_FORCE);
    eval 'sub PMC_F_DESCENDANTS () {0x2;}' unless defined(&PMC_F_DESCENDANTS);
    eval 'sub PMC_F_LOG_PROCCSW () {0x4;}' unless defined(&PMC_F_LOG_PROCCSW);
    eval 'sub PMC_F_LOG_PROCEXIT () {0x8;}' unless defined(&PMC_F_LOG_PROCEXIT);
    eval 'sub PMC_F_NEWVALUE () {0x10;}' unless defined(&PMC_F_NEWVALUE);
    eval 'sub PMC_F_OLDVALUE () {0x20;}' unless defined(&PMC_F_OLDVALUE);
    eval 'sub PMC_F_KGMON () {0x40;}' unless defined(&PMC_F_KGMON);
    eval 'sub PMC_F_CALLCHAIN () {0x80;}' unless defined(&PMC_F_CALLCHAIN);
    eval 'sub PMC_F_ATTACHED_TO_OWNER () {0x10000;}' unless defined(&PMC_F_ATTACHED_TO_OWNER);
    eval 'sub PMC_F_NEEDS_LOGFILE () {0x20000;}' unless defined(&PMC_F_NEEDS_LOGFILE);
    eval 'sub PMC_F_ATTACH_DONE () {0x40000;}' unless defined(&PMC_F_ATTACH_DONE);
    eval 'sub PMC_CALLCHAIN_DEPTH_MAX () {32;}' unless defined(&PMC_CALLCHAIN_DEPTH_MAX);
    eval 'sub PMC_CC_F_USERSPACE () {0x1;}' unless defined(&PMC_CC_F_USERSPACE);
    eval 'sub PMC_ID_INVALID () {(~ ( &pmc_id_t) 0);}' unless defined(&PMC_ID_INVALID);
    eval 'sub PMC_ID_TO_ROWINDEX {
        my($ID) = @_;
	    eval q((($ID) & 0xff));
    }' unless defined(&PMC_ID_TO_ROWINDEX);
    eval 'sub PMC_ID_TO_CLASS {
        my($ID) = @_;
	    eval q(((($ID) & 0xff00) >> 8));
    }' unless defined(&PMC_ID_TO_CLASS);
    eval 'sub PMC_ID_TO_MODE {
        my($ID) = @_;
	    eval q(((($ID) & 0xff0000) >> 16));
    }' unless defined(&PMC_ID_TO_MODE);
    eval 'sub PMC_ID_TO_CPU {
        my($ID) = @_;
	    eval q(((($ID) & 0xff000000) >> 24));
    }' unless defined(&PMC_ID_TO_CPU);
    eval 'sub PMC_ID_MAKE_ID {
        my($CPU,$MODE,$CLASS,$ROWINDEX) = @_;
	    eval q((((($CPU) & 0xff) << 24) | ((($MODE) & 0xff) << 16) | ((($CLASS) & 0xff) << 8) | (($ROWINDEX) & 0xff)));
    }' unless defined(&PMC_ID_MAKE_ID);
    eval 'sub PMC_CPU_ANY () {~0;}' unless defined(&PMC_CPU_ANY);
    if(defined(&_KERNEL)) {
	require 'sys/malloc.ph';
	require 'sys/sysctl.ph';
	require 'machine/frame.ph';
	eval 'sub PMC_HASH_SIZE () {1024;}' unless defined(&PMC_HASH_SIZE);
	eval 'sub PMC_MTXPOOL_SIZE () {2048;}' unless defined(&PMC_MTXPOOL_SIZE);
	eval 'sub PMC_LOG_BUFFER_SIZE () {4;}' unless defined(&PMC_LOG_BUFFER_SIZE);
	eval 'sub PMC_NLOGBUFFERS () {1024;}' unless defined(&PMC_NLOGBUFFERS);
	eval 'sub PMC_NSAMPLES () {1024;}' unless defined(&PMC_NSAMPLES);
	eval 'sub PMC_CALLCHAIN_DEPTH () {16;}' unless defined(&PMC_CALLCHAIN_DEPTH);
	eval 'sub PMC_SYSCTL_NAME_PREFIX () {"kern."  &PMC_MODULE_NAME ".";}' unless defined(&PMC_SYSCTL_NAME_PREFIX);
	eval 'sub PMC_TO_MODE {
	    my($P) = @_;
    	    eval q( &PMC_ID_TO_MODE(($P)-> &pm_id));
	}' unless defined(&PMC_TO_MODE);
	eval 'sub PMC_TO_CLASS {
	    my($P) = @_;
    	    eval q( &PMC_ID_TO_CLASS(($P)-> &pm_id));
	}' unless defined(&PMC_TO_CLASS);
	eval 'sub PMC_TO_ROWINDEX {
	    my($P) = @_;
    	    eval q( &PMC_ID_TO_ROWINDEX(($P)-> &pm_id));
	}' unless defined(&PMC_TO_ROWINDEX);
	eval 'sub PMC_TO_CPU {
	    my($P) = @_;
    	    eval q( &PMC_ID_TO_CPU(($P)-> &pm_id));
	}' unless defined(&PMC_TO_CPU);
	eval 'sub PMC_PP_ENABLE_MSR_ACCESS () {0x1;}' unless defined(&PMC_PP_ENABLE_MSR_ACCESS);
	eval 'sub PMC_PO_OWNS_LOGFILE () {0x1;}' unless defined(&PMC_PO_OWNS_LOGFILE);
	eval 'sub PMC_PO_SHUTDOWN () {0x10;}' unless defined(&PMC_PO_SHUTDOWN);
	eval 'sub PMC_PO_INITIAL_MAPPINGS_DONE () {0x20;}' unless defined(&PMC_PO_INITIAL_MAPPINGS_DONE);
	eval 'sub PMC_PHW_RI_MASK () {0xff;}' unless defined(&PMC_PHW_RI_MASK);
	eval 'sub PMC_PHW_CPU_SHIFT () {8;}' unless defined(&PMC_PHW_CPU_SHIFT);
	eval 'sub PMC_PHW_CPU_MASK () {0xff00;}' unless defined(&PMC_PHW_CPU_MASK);
	eval 'sub PMC_PHW_FLAGS_SHIFT () {16;}' unless defined(&PMC_PHW_FLAGS_SHIFT);
	eval 'sub PMC_PHW_FLAGS_MASK () {0xffff0000;}' unless defined(&PMC_PHW_FLAGS_MASK);
	eval 'sub PMC_PHW_INDEX_TO_STATE {
	    my($ri) = @_;
    	    eval q((($ri) &  &PMC_PHW_RI_MASK));
	}' unless defined(&PMC_PHW_INDEX_TO_STATE);
	eval 'sub PMC_PHW_STATE_TO_INDEX {
	    my($state) = @_;
    	    eval q((($state) &  &PMC_PHW_RI_MASK));
	}' unless defined(&PMC_PHW_STATE_TO_INDEX);
	eval 'sub PMC_PHW_CPU_TO_STATE {
	    my($cpu) = @_;
    	    eval q(((($cpu) <<  &PMC_PHW_CPU_SHIFT) &  &PMC_PHW_CPU_MASK));
	}' unless defined(&PMC_PHW_CPU_TO_STATE);
	eval 'sub PMC_PHW_STATE_TO_CPU {
	    my($state) = @_;
    	    eval q(((($state) &  &PMC_PHW_CPU_MASK) >>  &PMC_PHW_CPU_SHIFT));
	}' unless defined(&PMC_PHW_STATE_TO_CPU);
	eval 'sub PMC_PHW_FLAGS_TO_STATE {
	    my($flags) = @_;
    	    eval q(((($flags) <<  &PMC_PHW_FLAGS_SHIFT) &  &PMC_PHW_FLAGS_MASK));
	}' unless defined(&PMC_PHW_FLAGS_TO_STATE);
	eval 'sub PMC_PHW_STATE_TO_FLAGS {
	    my($state) = @_;
    	    eval q(((($state) &  &PMC_PHW_FLAGS_MASK) >>  &PMC_PHW_FLAGS_SHIFT));
	}' unless defined(&PMC_PHW_STATE_TO_FLAGS);
	eval 'sub PMC_PHW_FLAG_IS_ENABLED () {( &PMC_PHW_FLAGS_TO_STATE(0x1));}' unless defined(&PMC_PHW_FLAG_IS_ENABLED);
	eval 'sub PMC_PHW_FLAG_IS_SHAREABLE () {( &PMC_PHW_FLAGS_TO_STATE(0x2));}' unless defined(&PMC_PHW_FLAG_IS_SHAREABLE);
	eval 'sub PMC_SAMPLE_FREE () {(( &uint16_t) 0);}' unless defined(&PMC_SAMPLE_FREE);
	eval 'sub PMC_SAMPLE_INUSE () {(( &uint16_t) 0xffff);}' unless defined(&PMC_SAMPLE_INUSE);
	eval 'sub PMC_PCPU_CPU_MASK () {0xff;}' unless defined(&PMC_PCPU_CPU_MASK);
	eval 'sub PMC_PCPU_FLAGS_MASK () {0xffffff00;}' unless defined(&PMC_PCPU_FLAGS_MASK);
	eval 'sub PMC_PCPU_FLAGS_SHIFT () {8;}' unless defined(&PMC_PCPU_FLAGS_SHIFT);
	eval 'sub PMC_PCPU_STATE_TO_CPU {
	    my($S) = @_;
    	    eval q((($S) &  &PMC_PCPU_CPU_MASK));
	}' unless defined(&PMC_PCPU_STATE_TO_CPU);
	eval 'sub PMC_PCPU_STATE_TO_FLAGS {
	    my($S) = @_;
    	    eval q(((($S) &  &PMC_PCPU_FLAGS_MASK) >>  &PMC_PCPU_FLAGS_SHIFT));
	}' unless defined(&PMC_PCPU_STATE_TO_FLAGS);
	eval 'sub PMC_PCPU_FLAGS_TO_STATE {
	    my($F) = @_;
    	    eval q(((($F) <<  &PMC_PCPU_FLAGS_SHIFT) &  &PMC_PCPU_FLAGS_MASK));
	}' unless defined(&PMC_PCPU_FLAGS_TO_STATE);
	eval 'sub PMC_PCPU_CPU_TO_STATE {
	    my($C) = @_;
    	    eval q((($C) &  &PMC_PCPU_CPU_MASK));
	}' unless defined(&PMC_PCPU_CPU_TO_STATE);
	eval 'sub PMC_PCPU_FLAG_HTT () {( &PMC_PCPU_FLAGS_TO_STATE(0x1));}' unless defined(&PMC_PCPU_FLAG_HTT);
	if(defined(&DEBUG)) {
	    eval 'sub PMC_DEBUG_STRSIZE () {128;}' unless defined(&PMC_DEBUG_STRSIZE);
	    eval 'sub PMC_DEBUG_DEFAULT_FLAGS () {{ 0, 0, 0, 0, 0, 0, 0, 0};}' unless defined(&PMC_DEBUG_DEFAULT_FLAGS);
	    eval 'sub PMCDBG () {( &M, &N, &L, &F,...)  &do {  &if ( ($pmc_debugflags->{pdb_})   &M & (1<<  &PMC_DEBUG_MIN_   &N))  &printf( &M ":"  &N ":"  &L ": "  &F "\\n",  &__VA_ARGS__); }  &while (0);}' unless defined(&PMCDBG);
	    eval 'sub PMC_DEBUG_MAJ_CPU () {0;}' unless defined(&PMC_DEBUG_MAJ_CPU);
	    eval 'sub PMC_DEBUG_MAJ_CSW () {1;}' unless defined(&PMC_DEBUG_MAJ_CSW);
	    eval 'sub PMC_DEBUG_MAJ_LOG () {2;}' unless defined(&PMC_DEBUG_MAJ_LOG);
	    eval 'sub PMC_DEBUG_MAJ_MDP () {3;}' unless defined(&PMC_DEBUG_MAJ_MDP);
	    eval 'sub PMC_DEBUG_MAJ_MOD () {4;}' unless defined(&PMC_DEBUG_MAJ_MOD);
	    eval 'sub PMC_DEBUG_MAJ_OWN () {5;}' unless defined(&PMC_DEBUG_MAJ_OWN);
	    eval 'sub PMC_DEBUG_MAJ_PMC () {6;}' unless defined(&PMC_DEBUG_MAJ_PMC);
	    eval 'sub PMC_DEBUG_MAJ_PRC () {7;}' unless defined(&PMC_DEBUG_MAJ_PRC);
	    eval 'sub PMC_DEBUG_MAJ_SAM () {8;}' unless defined(&PMC_DEBUG_MAJ_SAM);
	    eval 'sub PMC_DEBUG_MIN_ALL () {0;}' unless defined(&PMC_DEBUG_MIN_ALL);
	    eval 'sub PMC_DEBUG_MIN_REL () {1;}' unless defined(&PMC_DEBUG_MIN_REL);
	    eval 'sub PMC_DEBUG_MIN_OPS () {2;}' unless defined(&PMC_DEBUG_MIN_OPS);
	    eval 'sub PMC_DEBUG_MIN_INI () {3;}' unless defined(&PMC_DEBUG_MIN_INI);
	    eval 'sub PMC_DEBUG_MIN_FND () {4;}' unless defined(&PMC_DEBUG_MIN_FND);
	    eval 'sub PMC_DEBUG_MIN_PMH () {14;}' unless defined(&PMC_DEBUG_MIN_PMH);
	    eval 'sub PMC_DEBUG_MIN_PMS () {15;}' unless defined(&PMC_DEBUG_MIN_PMS);
	    eval 'sub PMC_DEBUG_MIN_ORM () {8;}' unless defined(&PMC_DEBUG_MIN_ORM);
	    eval 'sub PMC_DEBUG_MIN_OMR () {9;}' unless defined(&PMC_DEBUG_MIN_OMR);
	    eval 'sub PMC_DEBUG_MIN_TLK () {8;}' unless defined(&PMC_DEBUG_MIN_TLK);
	    eval 'sub PMC_DEBUG_MIN_TUL () {9;}' unless defined(&PMC_DEBUG_MIN_TUL);
	    eval 'sub PMC_DEBUG_MIN_EXT () {10;}' unless defined(&PMC_DEBUG_MIN_EXT);
	    eval 'sub PMC_DEBUG_MIN_EXC () {11;}' unless defined(&PMC_DEBUG_MIN_EXC);
	    eval 'sub PMC_DEBUG_MIN_FRK () {12;}' unless defined(&PMC_DEBUG_MIN_FRK);
	    eval 'sub PMC_DEBUG_MIN_ATT () {13;}' unless defined(&PMC_DEBUG_MIN_ATT);
	    eval 'sub PMC_DEBUG_MIN_SIG () {14;}' unless defined(&PMC_DEBUG_MIN_SIG);
	    eval 'sub PMC_DEBUG_MIN_SWI () {8;}' unless defined(&PMC_DEBUG_MIN_SWI);
	    eval 'sub PMC_DEBUG_MIN_SWO () {9;}' unless defined(&PMC_DEBUG_MIN_SWO);
	    eval 'sub PMC_DEBUG_MIN_REG () {8;}' unless defined(&PMC_DEBUG_MIN_REG);
	    eval 'sub PMC_DEBUG_MIN_ALR () {9;}' unless defined(&PMC_DEBUG_MIN_ALR);
	    eval 'sub PMC_DEBUG_MIN_REA () {8;}' unless defined(&PMC_DEBUG_MIN_REA);
	    eval 'sub PMC_DEBUG_MIN_WRI () {9;}' unless defined(&PMC_DEBUG_MIN_WRI);
	    eval 'sub PMC_DEBUG_MIN_CFG () {10;}' unless defined(&PMC_DEBUG_MIN_CFG);
	    eval 'sub PMC_DEBUG_MIN_STA () {11;}' unless defined(&PMC_DEBUG_MIN_STA);
	    eval 'sub PMC_DEBUG_MIN_STO () {12;}' unless defined(&PMC_DEBUG_MIN_STO);
	    eval 'sub PMC_DEBUG_MIN_INT () {13;}' unless defined(&PMC_DEBUG_MIN_INT);
	    eval 'sub PMC_DEBUG_MIN_BND () {8;}' unless defined(&PMC_DEBUG_MIN_BND);
	    eval 'sub PMC_DEBUG_MIN_SEL () {9;}' unless defined(&PMC_DEBUG_MIN_SEL);
	    eval 'sub PMC_DEBUG_MIN_GTB () {8;}' unless defined(&PMC_DEBUG_MIN_GTB);
	    eval 'sub PMC_DEBUG_MIN_SIO () {9;}' unless defined(&PMC_DEBUG_MIN_SIO);
	    eval 'sub PMC_DEBUG_MIN_FLS () {10;}' unless defined(&PMC_DEBUG_MIN_FLS);
	    eval 'sub PMC_DEBUG_MIN_SAM () {11;}' unless defined(&PMC_DEBUG_MIN_SAM);
	    eval 'sub PMC_DEBUG_MIN_CLO () {12;}' unless defined(&PMC_DEBUG_MIN_CLO);
	} else {
	    eval 'sub PMCDBG () {( &M, &N, &L, &F,...);}' unless defined(&PMCDBG);
	}
    }
}
1;
