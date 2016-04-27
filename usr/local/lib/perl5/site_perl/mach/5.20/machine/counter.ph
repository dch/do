require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__MACHINE_COUNTER_H__)) {
    eval 'sub __MACHINE_COUNTER_H__ () {1;}' unless defined(&__MACHINE_COUNTER_H__);
    require 'sys/pcpu.ph';
    eval 'sub counter_enter () {
        eval q( &do {}  &while (0));
    }' unless defined(&counter_enter);
    eval 'sub counter_exit () {
        eval q( &do {}  &while (0));
    }' unless defined(&counter_exit);
    if(defined(&IN_SUBR_COUNTER_C)) {
	eval 'sub counter_u64_read_one {
	    my($p,$cpu) = @_;
    	    eval q({ (*( &uint64_t *)($p + $sizeof{\'struct pcpu\'} * $cpu)); });
	}' unless defined(&counter_u64_read_one);
	eval 'sub counter_u64_fetch_inline {
	    my($p) = @_;
    	    eval q({  &uint64_t  &r; \'int\'  &i;  &r = 0;  &for ( &i = 0;  &i <  &mp_ncpus;  &i++)  &r +=  &counter_u64_read_one(( &uint64_t *)$p,  &i); ( &r); });
	}' unless defined(&counter_u64_fetch_inline);
	eval 'sub counter_u64_zero_inline {
	    my($c) = @_;
    	    eval q({  &smp_rendezvous( &smp_no_rendevous_barrier,  &counter_u64_zero_one_cpu,  &smp_no_rendevous_barrier, $c); });
	}' unless defined(&counter_u64_zero_inline);
    }
    eval 'sub counter_u64_add_protected {
        my($c, $i) = @_;
	    eval q( &counter_u64_add($c, $i));
    }' unless defined(&counter_u64_add_protected);
    eval 'sub counter_u64_add {
        my($c,$inc) = @_;
	    eval q({  &__asm  &__volatile(\\"addq\\\\t%1,%%gs:(%0)\\" : : \\"r\\" ($c - & $__pcpu[0]), \\"ri\\" ($inc) : \\"memory\\", \\"cc\\"); });
    }' unless defined(&counter_u64_add);
}
1;
