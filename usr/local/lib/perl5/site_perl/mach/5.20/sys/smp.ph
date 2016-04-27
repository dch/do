require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_SMP_H_)) {
    eval 'sub _SYS_SMP_H_ () {1;}' unless defined(&_SYS_SMP_H_);
    if(defined(&_KERNEL)) {
	unless(defined(&LOCORE)) {
	    require 'sys/cpuset.ph';
	    eval 'sub CG_SHARE_NONE () {0;}' unless defined(&CG_SHARE_NONE);
	    eval 'sub CG_SHARE_L1 () {1;}' unless defined(&CG_SHARE_L1);
	    eval 'sub CG_SHARE_L2 () {2;}' unless defined(&CG_SHARE_L2);
	    eval 'sub CG_SHARE_L3 () {3;}' unless defined(&CG_SHARE_L3);
	    eval 'sub CG_FLAG_HTT () {0x1;}' unless defined(&CG_FLAG_HTT);
	    eval 'sub CG_FLAG_SMT () {0x2;}' unless defined(&CG_FLAG_SMT);
	    eval 'sub CG_FLAG_THREAD () {( &CG_FLAG_HTT |  &CG_FLAG_SMT);}' unless defined(&CG_FLAG_THREAD);
	    if(defined(&SMP)) {
	    }
	    eval 'sub CPU_ABSENT {
	        my($x_cpu) = @_;
    		eval q((! &CPU_ISSET($x_cpu,  &all_cpus)));
	    }' unless defined(&CPU_ABSENT);
	    eval 'sub CPU_FOREACH {
	        my($i) = @_;
    		eval q( &for (($i) = 0; ($i) <=  &mp_maxid; ($i)++)  &if (! &CPU_ABSENT(($i))));
	    }' unless defined(&CPU_FOREACH);
	    eval 'sub cpu_first {
	        my($void) = @_;
    		eval q({ \'int\'  &i;  &for ( &i = 0;;  &i++)  &if (! &CPU_ABSENT( &i)) ( &i); });
	    }' unless defined(&cpu_first);
	    eval 'sub cpu_next {
	        my($i) = @_;
    		eval q({  &for (;;) { $i++;  &if ($i >  &mp_maxid) $i = 0;  &if (! &CPU_ABSENT($i)) ($i); } });
	    }' unless defined(&cpu_next);
	    eval 'sub CPU_FIRST () {
	        eval q( &cpu_first());
	    }' unless defined(&CPU_FIRST);
	    eval 'sub CPU_NEXT {
	        my($i) = @_;
    		eval q( &cpu_next(($i)));
	    }' unless defined(&CPU_NEXT);
	    if(defined(&SMP)) {
		if(defined(&__amd64__) || defined(&__i386__)) {
		}
	    }
	}
    }
}
1;
