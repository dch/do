require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_PROFILE_H_)) {
    eval 'sub _MACHINE_PROFILE_H_ () {1;}' unless defined(&_MACHINE_PROFILE_H_);
    unless(defined(&_SYS_CDEFS_H_)) {
	die("this\ file\ needs\ sys\/cdefs\.h\ as\ a\ prerequisite");
    }
    if(defined(&_KERNEL)) {
	eval 'sub FUNCTION_ALIGNMENT () {16;}' unless defined(&FUNCTION_ALIGNMENT);
	eval 'sub _MCOUNT_DECL () { &void  &mcount;}' unless defined(&_MCOUNT_DECL);
	eval 'sub MCOUNT () {1;}' unless defined(&MCOUNT);
	if(defined(&GUPROF)) {
	    eval 'sub MCOUNT_DECL {
	        my($s) = @_;
    		eval q();
	    }' unless defined(&MCOUNT_DECL);
	    eval 'sub MCOUNT_ENTER {
	        my($s) = @_;
    		eval q();
	    }' unless defined(&MCOUNT_ENTER);
	    eval 'sub MCOUNT_EXIT {
	        my($s) = @_;
    		eval q();
	    }' unless defined(&MCOUNT_EXIT);
	    if(defined(&__GNUCLIKE_ASM)) {
		eval 'sub MCOUNT_OVERHEAD {
		    my($label) = @_;
    		    eval q( &__asm  &__volatile(\\"pushq %0; call __mcount; popq %%rcx\\" : : \\"i\\" ($label) : \\"ax\\", \\"dx\\", \\"cx\\", \\"di\\", \\"si\\", \\"r8\\", \\"r9\\", \\"memory\\"));
		}' unless defined(&MCOUNT_OVERHEAD);
		eval 'sub MEXITCOUNT_OVERHEAD () {
		    eval q( &__asm  &__volatile(\\"call .mexitcount; 1:\\" : : : \\"ax\\", \\"dx\\", \\"cx\\", \\"di\\", \\"si\\", \\"r8\\", \\"r9\\", \\"memory\\"));
		}' unless defined(&MEXITCOUNT_OVERHEAD);
		eval 'sub MEXITCOUNT_OVERHEAD_GETLABEL {
		    my($labelp) = @_;
    		    eval q( &__asm  &__volatile(\\"movq $1b,%0\\" : \\"=rm\\" ($labelp)));
		}' unless defined(&MEXITCOUNT_OVERHEAD_GETLABEL);
	    }
 elsif(defined(&lint)) {
		eval 'sub MCOUNT_OVERHEAD {
		    my($label) = @_;
    		    eval q();
		}' unless defined(&MCOUNT_OVERHEAD);
		eval 'sub MEXITCOUNT_OVERHEAD () {
		    eval q();
		}' unless defined(&MEXITCOUNT_OVERHEAD);
		eval 'sub MEXITCOUNT_OVERHEAD_GETLABEL () {
		    eval q();
		}' unless defined(&MEXITCOUNT_OVERHEAD_GETLABEL);
	    } else {
		die("this\ file\ needs\ to\ be\ ported\ to\ your\ compiler");
	    }
	} else {
	    eval 'sub MCOUNT_DECL {
	        my($s) = @_;
    		eval q( &register_t $s;);
	    }' unless defined(&MCOUNT_DECL);
	    if(defined(&SMP)) {
		eval 'sub MCOUNT_ENTER {
		    my($s) = @_;
    		    eval q({ $s =  &intr_disable();  &while (! &atomic_cmpset_acq_int( &mcount_lock, 0, 1)) ; });
		}' unless defined(&MCOUNT_ENTER);
		eval 'sub MCOUNT_EXIT {
		    my($s) = @_;
    		    eval q({  &atomic_store_rel_int( &mcount_lock, 0);  &intr_restore($s); });
		}' unless defined(&MCOUNT_EXIT);
	    } else {
		eval 'sub MCOUNT_ENTER {
		    my($s) = @_;
    		    eval q({ $s =  &intr_disable(); });
		}' unless defined(&MCOUNT_ENTER);
		eval 'sub MCOUNT_EXIT {
		    my($s) = @_;
    		    eval q(( &intr_restore($s)));
		}' unless defined(&MCOUNT_EXIT);
	    }
	}
	eval 'sub MCOUNT_FROMPC_USER {
	    my($pc) = @_;
    	    eval q((($pc < ( &uintfptr_t) &VM_MAXUSER_ADDRESS) ? ( &uintfptr_t) &user : $pc));
	}' unless defined(&MCOUNT_FROMPC_USER);
	eval 'sub MCOUNT_FROMPC_INTR {
	    my($pc) = @_;
    	    eval q((($pc >= ( &uintfptr_t) &btrap  && $pc < ( &uintfptr_t) &eintr) ? (($pc >= ( &uintfptr_t) &bintr) ? ( &uintfptr_t) &bintr : ( &uintfptr_t) &btrap) : ~0));
	}' unless defined(&MCOUNT_FROMPC_INTR);
    } else {
	eval 'sub FUNCTION_ALIGNMENT () {4;}' unless defined(&FUNCTION_ALIGNMENT);
	eval 'sub _MCOUNT_DECL () { &static  &void  &_mcount( &uintfptr_t  &frompc,  &uintfptr_t  &selfpc)  &__used;  &static  &void  &_mcount;}' unless defined(&_MCOUNT_DECL);
	if(defined(&__GNUCLIKE_ASM)) {
	    eval 'sub MCOUNT () { &__asm("			\\n	.text				\\n	.p2align 4,0x90			\\n	.globl	.mcount			\\n	.type	.mcount,@function	\\n.mcount:				\\n	pushq	%rdi			\\n	pushq	%rsi			\\n	pushq	%rdx			\\n	pushq	%rcx			\\n	pushq	%r8			\\n	pushq	%r9			\\n	pushq	%rax			\\n	movq	8(%rbp),%rdi		\\n	movq	7*8(%rsp),%rsi		\\n	call	_mcount			\\n	popq	%rax			\\n	popq	%r9			\\n	popq	%r8			\\n	popq	%rcx			\\n	popq	%rdx			\\n	popq	%rsi			\\n	popq	%rdi			\\n	ret				\\n	.size	.mcount, . - .mcount");;}' unless defined(&MCOUNT);
	    if(0) {
		eval 'sub MCOUNT () { &void  &mcount() {  &uintfptr_t  &selfpc,  &frompc;  &__asm("movq 8(%%rbp),%0" : "=r" ( &selfpc));  &__asm("movq (%%rbp),%0" : "=r" ( &frompc));  &frompc = (( &uintfptr_t *) &frompc)[1];  &_mcount( &frompc,  &selfpc); };}' unless defined(&MCOUNT);
	    }
	} else {
	    eval 'sub MCOUNT () {1;}' unless defined(&MCOUNT);
	}
    }
    if(defined(&_KERNEL)) {
    } else {
	require 'sys/cdefs.ph';
	if(defined(&__GNUCLIKE_ASM)) {
	}
    }
}
1;
