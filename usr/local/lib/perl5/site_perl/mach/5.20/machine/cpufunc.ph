require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_CPUFUNC_H_)) {
    eval 'sub _MACHINE_CPUFUNC_H_ () {1;}' unless defined(&_MACHINE_CPUFUNC_H_);
    unless(defined(&_SYS_CDEFS_H_)) {
	die("this\ file\ needs\ sys\/cdefs\.h\ as\ a\ prerequisite");
    }
    eval 'sub readb {
        my($va) = @_;
	    eval q((*( &volatile  &uint8_t *) ($va)));
    }' unless defined(&readb);
    eval 'sub readw {
        my($va) = @_;
	    eval q((*( &volatile  &uint16_t *) ($va)));
    }' unless defined(&readw);
    eval 'sub readl {
        my($va) = @_;
	    eval q((*( &volatile  &uint32_t *) ($va)));
    }' unless defined(&readl);
    eval 'sub readq {
        my($va) = @_;
	    eval q((*( &volatile  &uint64_t *) ($va)));
    }' unless defined(&readq);
    eval 'sub writeb {
        my($va, $d) = @_;
	    eval q((*( &volatile  &uint8_t *) ($va) = ($d)));
    }' unless defined(&writeb);
    eval 'sub writew {
        my($va, $d) = @_;
	    eval q((*( &volatile  &uint16_t *) ($va) = ($d)));
    }' unless defined(&writew);
    eval 'sub writel {
        my($va, $d) = @_;
	    eval q((*( &volatile  &uint32_t *) ($va) = ($d)));
    }' unless defined(&writel);
    eval 'sub writeq {
        my($va, $d) = @_;
	    eval q((*( &volatile  &uint64_t *) ($va) = ($d)));
    }' unless defined(&writeq);
    if(defined(&__GNUCLIKE_ASM)  && defined(&__CC_SUPPORTS___INLINE)) {
	eval 'sub breakpoint {
	    my($void) = @_;
    	    eval q({  &__asm  &__volatile(\\"int $3\\"); });
	}' unless defined(&breakpoint);
	eval 'sub bsfl {
	    my($mask) = @_;
    	    eval q({ \'u_int\'  &result;  &__asm  &__volatile(\\"bsfl %1,%0\\" : \\"=r\\" ( &result) : \\"rm\\" ($mask)); ( &result); });
	}' unless defined(&bsfl);
	eval 'sub bsfq {
	    my($mask) = @_;
    	    eval q({ my $result;  &__asm  &__volatile(\\"bsfq %1,%0\\" : \\"=r\\" ( $result) : \\"rm\\" ($mask)); ( $result); });
	}' unless defined(&bsfq);
	eval 'sub bsrl {
	    my($mask) = @_;
    	    eval q({ \'u_int\'  &result;  &__asm  &__volatile(\\"bsrl %1,%0\\" : \\"=r\\" ( &result) : \\"rm\\" ($mask)); ( &result); });
	}' unless defined(&bsrl);
	eval 'sub bsrq {
	    my($mask) = @_;
    	    eval q({ my $result;  &__asm  &__volatile(\\"bsrq %1,%0\\" : \\"=r\\" ( $result) : \\"rm\\" ($mask)); ( $result); });
	}' unless defined(&bsrq);
	eval 'sub clflush {
	    my($addr) = @_;
    	    eval q({  &__asm  &__volatile(\\"clflush %0\\" : : \\"m\\" (*$addr)); });
	}' unless defined(&clflush);
	eval 'sub clts {
	    my($void) = @_;
    	    eval q({  &__asm  &__volatile(\\"clts\\"); });
	}' unless defined(&clts);
	eval 'sub disable_intr {
	    my($void) = @_;
    	    eval q({  &__asm  &__volatile(\\"cli\\" : : : \\"memory\\"); });
	}' unless defined(&disable_intr);
	eval 'sub do_cpuid {
	    my($ax,$p) = @_;
    	    eval q({  &__asm  &__volatile(\\"cpuid\\" : \\"=a\\" ($p->[0]), \\"=b\\" ($p->[1]), \\"=c\\" ($p->[2]), \\"=d\\" ($p->[3]) : \\"0\\" ($ax)); });
	}' unless defined(&do_cpuid);
	eval 'sub cpuid_count {
	    my($ax,$cx,$p) = @_;
    	    eval q({  &__asm  &__volatile(\\"cpuid\\" : \\"=a\\" ($p->[0]), \\"=b\\" ($p->[1]), \\"=c\\" ($p->[2]), \\"=d\\" ($p->[3]) : \\"0\\" ($ax), \\"c\\" ($cx)); });
	}' unless defined(&cpuid_count);
	eval 'sub enable_intr {
	    my($void) = @_;
    	    eval q({  &__asm  &__volatile(\\"sti\\"); });
	}' unless defined(&enable_intr);
	if(defined(&_KERNEL)) {
	    eval 'sub HAVE_INLINE_FFS () {1;}' unless defined(&HAVE_INLINE_FFS);
	    eval 'sub ffs {
	        my($x) = @_;
    		eval q( &__builtin_ffs($x));
	    }' unless defined(&ffs);
	    eval 'sub HAVE_INLINE_FFSL () {1;}' unless defined(&HAVE_INLINE_FFSL);
	    eval 'sub ffsl {
	        my($mask) = @_;
    		eval q({ ($mask == 0? $mask :  &bsfq($mask) + 1); });
	    }' unless defined(&ffsl);
	    eval 'sub HAVE_INLINE_FLS () {1;}' unless defined(&HAVE_INLINE_FLS);
	    eval 'sub fls {
	        my($mask) = @_;
    		eval q({ ($mask == 0? $mask :  &bsrl($mask) + 1); });
	    }' unless defined(&fls);
	    eval 'sub HAVE_INLINE_FLSL () {1;}' unless defined(&HAVE_INLINE_FLSL);
	    eval 'sub flsl {
	        my($mask) = @_;
    		eval q({ ($mask == 0? $mask :  &bsrq($mask) + 1); });
	    }' unless defined(&flsl);
	}
	eval 'sub halt {
	    my($void) = @_;
    	    eval q({  &__asm  &__volatile(\\"hlt\\"); });
	}' unless defined(&halt);
	eval 'sub inb {
	    my($port) = @_;
    	    eval q({ \'u_char\'  &data;  &__asm  &__volatile(\\"inb %w1, %0\\" : \\"=a\\" ( &data) : \\"Nd\\" ($port)); ( &data); });
	}' unless defined(&inb);
	eval 'sub inl {
	    my($port) = @_;
    	    eval q({ \'u_int\'  &data;  &__asm  &__volatile(\\"inl %w1, %0\\" : \\"=a\\" ( &data) : \\"Nd\\" ($port)); ( &data); });
	}' unless defined(&inl);
	eval 'sub insb {
	    my($port,$addr,$count) = @_;
    	    eval q({  &__asm  &__volatile(\\"cld; rep; insb\\" : \\"+D\\" ($addr), \\"+c\\" ($count) : \\"d\\" ($port) : \\"memory\\"); });
	}' unless defined(&insb);
	eval 'sub insw {
	    my($port,$addr,$count) = @_;
    	    eval q({  &__asm  &__volatile(\\"cld; rep; insw\\" : \\"+D\\" ($addr), \\"+c\\" ($count) : \\"d\\" ($port) : \\"memory\\"); });
	}' unless defined(&insw);
	eval 'sub insl {
	    my($port,$addr,$count) = @_;
    	    eval q({  &__asm  &__volatile(\\"cld; rep; insl\\" : \\"+D\\" ($addr), \\"+c\\" ($count) : \\"d\\" ($port) : \\"memory\\"); });
	}' unless defined(&insl);
	eval 'sub invd {
	    my($void) = @_;
    	    eval q({  &__asm  &__volatile(\\"invd\\"); });
	}' unless defined(&invd);
	eval 'sub inw {
	    my($port) = @_;
    	    eval q({ my $data;  &__asm  &__volatile(\\"inw %w1, %0\\" : \\"=a\\" ( $data) : \\"Nd\\" ($port)); ( $data); });
	}' unless defined(&inw);
	eval 'sub outb {
	    my($port,$data) = @_;
    	    eval q({  &__asm  &__volatile(\\"outb %0, %w1\\" : : \\"a\\" ($data), \\"Nd\\" ($port)); });
	}' unless defined(&outb);
	eval 'sub outl {
	    my($port,$data) = @_;
    	    eval q({  &__asm  &__volatile(\\"outl %0, %w1\\" : : \\"a\\" ($data), \\"Nd\\" ($port)); });
	}' unless defined(&outl);
	eval 'sub outsb {
	    my($port,$addr,$count) = @_;
    	    eval q({  &__asm  &__volatile(\\"cld; rep; outsb\\" : \\"+S\\" ($addr), \\"+c\\" ($count) : \\"d\\" ($port)); });
	}' unless defined(&outsb);
	eval 'sub outsw {
	    my($port,$addr,$count) = @_;
    	    eval q({  &__asm  &__volatile(\\"cld; rep; outsw\\" : \\"+S\\" ($addr), \\"+c\\" ($count) : \\"d\\" ($port)); });
	}' unless defined(&outsw);
	eval 'sub outsl {
	    my($port,$addr,$count) = @_;
    	    eval q({  &__asm  &__volatile(\\"cld; rep; outsl\\" : \\"+S\\" ($addr), \\"+c\\" ($count) : \\"d\\" ($port)); });
	}' unless defined(&outsl);
	eval 'sub outw {
	    my($port,$data) = @_;
    	    eval q({  &__asm  &__volatile(\\"outw %0, %w1\\" : : \\"a\\" ($data), \\"Nd\\" ($port)); });
	}' unless defined(&outw);
	eval 'sub popcntq {
	    my($mask) = @_;
    	    eval q({ my $result;  &__asm  &__volatile(\\"popcntq %1,%0\\" : \\"=r\\" ( $result) : \\"rm\\" ($mask)); ( $result); });
	}' unless defined(&popcntq);
	eval 'sub lfence {
	    my($void) = @_;
    	    eval q({  &__asm  &__volatile(\\"lfence\\" : : : \\"memory\\"); });
	}' unless defined(&lfence);
	eval 'sub mfence {
	    my($void) = @_;
    	    eval q({  &__asm  &__volatile(\\"mfence\\" : : : \\"memory\\"); });
	}' unless defined(&mfence);
	eval 'sub ia32_pause {
	    my($void) = @_;
    	    eval q({  &__asm  &__volatile(\\"pause\\"); });
	}' unless defined(&ia32_pause);
	eval 'sub read_rflags {
	    my($void) = @_;
    	    eval q({ my $rf;  &__asm  &__volatile(\\"pushfq; popq %0\\" : \\"=r\\" ( $rf)); ( $rf); });
	}' unless defined(&read_rflags);
	eval 'sub rdmsr {
	    my($msr) = @_;
    	    eval q({  &uint32_t  &low,  &high;  &__asm  &__volatile(\\"rdmsr\\" : \\"=a\\" ( &low), \\"=d\\" ( &high) : \\"c\\" ($msr)); ( &low | (( &uint64_t) &high << 32)); });
	}' unless defined(&rdmsr);
	eval 'sub rdpmc {
	    my($pmc) = @_;
    	    eval q({  &uint32_t  &low,  &high;  &__asm  &__volatile(\\"rdpmc\\" : \\"=a\\" ( &low), \\"=d\\" ( &high) : \\"c\\" ($pmc)); ( &low | (( &uint64_t) &high << 32)); });
	}' unless defined(&rdpmc);
	eval 'sub rdtsc {
	    my($void) = @_;
    	    eval q({  &uint32_t  &low,  &high;  &__asm  &__volatile(\\"rdtsc\\" : \\"=a\\" ( &low), \\"=d\\" ( &high)); ( &low | (( &uint64_t) &high << 32)); });
	}' unless defined(&rdtsc);
	eval 'sub rdtsc32 {
	    my($void) = @_;
    	    eval q({  &uint32_t  &rv;  &__asm  &__volatile(\\"rdtsc\\" : \\"=a\\" ( &rv) : : \\"edx\\"); ( &rv); });
	}' unless defined(&rdtsc32);
	eval 'sub wbinvd {
	    my($void) = @_;
    	    eval q({  &__asm  &__volatile(\\"wbinvd\\"); });
	}' unless defined(&wbinvd);
	eval 'sub write_rflags {
	    my($rf) = @_;
    	    eval q({  &__asm  &__volatile(\\"pushq %0;  popfq\\" : : \\"r\\" ($rf)); });
	}' unless defined(&write_rflags);
	eval 'sub wrmsr {
	    my($msr,$newval) = @_;
    	    eval q({  &uint32_t  &low,  &high;  &low = $newval;  &high = $newval >> 32;  &__asm  &__volatile(\\"wrmsr\\" : : \\"a\\" ( &low), \\"d\\" ( &high), \\"c\\" ($msr)); });
	}' unless defined(&wrmsr);
	eval 'sub load_cr0 {
	    my($data) = @_;
    	    eval q({  &__asm  &__volatile(\\"movq %0,%%cr0\\" : : \\"r\\" ($data)); });
	}' unless defined(&load_cr0);
	eval 'sub rcr0 {
	    my($void) = @_;
    	    eval q({ my $data;  &__asm  &__volatile(\\"movq %%cr0,%0\\" : \\"=r\\" ( $data)); ( $data); });
	}' unless defined(&rcr0);
	eval 'sub rcr2 {
	    my($void) = @_;
    	    eval q({ my $data;  &__asm  &__volatile(\\"movq %%cr2,%0\\" : \\"=r\\" ( $data)); ( $data); });
	}' unless defined(&rcr2);
	eval 'sub load_cr3 {
	    my($data) = @_;
    	    eval q({  &__asm  &__volatile(\\"movq %0,%%cr3\\" : : \\"r\\" ($data) : \\"memory\\"); });
	}' unless defined(&load_cr3);
	eval 'sub rcr3 {
	    my($void) = @_;
    	    eval q({ my $data;  &__asm  &__volatile(\\"movq %%cr3,%0\\" : \\"=r\\" ( $data)); ( $data); });
	}' unless defined(&rcr3);
	eval 'sub load_cr4 {
	    my($data) = @_;
    	    eval q({  &__asm  &__volatile(\\"movq %0,%%cr4\\" : : \\"r\\" ($data)); });
	}' unless defined(&load_cr4);
	eval 'sub rcr4 {
	    my($void) = @_;
    	    eval q({ my $data;  &__asm  &__volatile(\\"movq %%cr4,%0\\" : \\"=r\\" ( $data)); ( $data); });
	}' unless defined(&rcr4);
	eval 'sub rxcr {
	    my($reg) = @_;
    	    eval q({ \'u_int\'  &low,  &high;  &__asm  &__volatile(\\"xgetbv\\" : \\"=a\\" ( &low), \\"=d\\" ( &high) : \\"c\\" ($reg)); ( &low | (( &uint64_t) &high << 32)); });
	}' unless defined(&rxcr);
	eval 'sub load_xcr {
	    my($reg,$val) = @_;
    	    eval q({ \'u_int\'  &low,  &high;  &low = $val;  &high = $val >> 32;  &__asm  &__volatile(\\"xsetbv\\" : : \\"c\\" ($reg), \\"a\\" ( &low), \\"d\\" ( &high)); });
	}' unless defined(&load_xcr);
	unless(defined(&CR4_PGE)) {
	    eval 'sub CR4_PGE () {0x80;}' unless defined(&CR4_PGE);
	}
	eval 'sub INVPCID_ADDR () {0;}' unless defined(&INVPCID_ADDR);
	eval 'sub INVPCID_CTX () {1;}' unless defined(&INVPCID_CTX);
	eval 'sub INVPCID_CTXGLOB () {2;}' unless defined(&INVPCID_CTXGLOB);
	eval 'sub INVPCID_ALLCTX () {3;}' unless defined(&INVPCID_ALLCTX);
	eval 'sub invpcid {
	    my($d,$type) = @_;
    	    eval q({  &__asm  &__volatile(\\".byte 0x66,0x0f,0x38,0x82,0x02\\" : : \\"d\\" , \\"a\\" ($type) : \\"memory\\"); });
	}' unless defined(&invpcid);
	eval 'sub rfs {
	    my($void) = @_;
    	    eval q({ my $sel;  &__asm  &__volatile(\\"movw %%fs,%0\\" : \\"=rm\\" ( $sel)); ( $sel); });
	}' unless defined(&rfs);
	eval 'sub rgs {
	    my($void) = @_;
    	    eval q({ my $sel;  &__asm  &__volatile(\\"movw %%gs,%0\\" : \\"=rm\\" ( $sel)); ( $sel); });
	}' unless defined(&rgs);
	eval 'sub rss {
	    my($void) = @_;
    	    eval q({ my $sel;  &__asm  &__volatile(\\"movw %%ss,%0\\" : \\"=rm\\" ( $sel)); ( $sel); });
	}' unless defined(&rss);
	eval 'sub load_ds {
	    my($sel) = @_;
    	    eval q({  &__asm  &__volatile(\\"movw %0,%%ds\\" : : \\"rm\\" ($sel)); });
	}' unless defined(&load_ds);
	eval 'sub load_es {
	    my($sel) = @_;
    	    eval q({  &__asm  &__volatile(\\"movw %0,%%es\\" : : \\"rm\\" ($sel)); });
	}' unless defined(&load_es);
	eval 'sub cpu_monitor {
	    my($addr,$extensions,$hints) = @_;
    	    eval q({  &__asm  &__volatile(\\"monitor\\" : : \\"a\\" ($addr), \\"c\\" ($extensions), \\"d\\" ($hints)); });
	}' unless defined(&cpu_monitor);
	eval 'sub cpu_mwait {
	    my($extensions,$hints) = @_;
    	    eval q({  &__asm  &__volatile(\\"mwait\\" : : \\"a\\" ($hints), \\"c\\" ($extensions)); });
	}' unless defined(&cpu_mwait);
	if(defined(&_KERNEL)) {
	    unless(defined(&MSR_FSBASE)) {
		eval 'sub MSR_FSBASE () {0xc0000100;}' unless defined(&MSR_FSBASE);
	    }
	    eval 'sub load_fs {
	        my($sel) = @_;
    		eval q({  &__asm  &__volatile(\\"rdmsr; movw %0,%%fs; wrmsr\\" : : \\"rm\\" ($sel), \\"c\\" ( &MSR_FSBASE) : \\"eax\\", \\"edx\\"); });
	    }' unless defined(&load_fs);
	    unless(defined(&MSR_GSBASE)) {
		eval 'sub MSR_GSBASE () {0xc0000101;}' unless defined(&MSR_GSBASE);
	    }
	    eval 'sub load_gs {
	        my($sel) = @_;
    		eval q({  &__asm  &__volatile(\\"pushfq; cli; rdmsr; movw %0,%%gs; wrmsr; popfq\\" : : \\"rm\\" ($sel), \\"c\\" ( &MSR_GSBASE) : \\"eax\\", \\"edx\\"); });
	    }' unless defined(&load_gs);
	} else {
	    eval 'sub load_gs {
	        my($sel) = @_;
    		eval q({  &__asm  &__volatile(\\"movw %0,%%gs\\" : : \\"rm\\" ($sel)); });
	    }' unless defined(&load_gs);
	}
	eval 'sub lidt {
	    my($addr) = @_;
    	    eval q({  &__asm  &__volatile(\\"lidt (%0)\\" : : \\"r\\" ($addr)); });
	}' unless defined(&lidt);
	eval 'sub lldt {
	    my($sel) = @_;
    	    eval q({  &__asm  &__volatile(\\"lldt %0\\" : : \\"r\\" ($sel)); });
	}' unless defined(&lldt);
	eval 'sub ltr {
	    my($sel) = @_;
    	    eval q({  &__asm  &__volatile(\\"ltr %0\\" : : \\"r\\" ($sel)); });
	}' unless defined(&ltr);
	eval 'sub rdr0 {
	    my($void) = @_;
    	    eval q({  &uint64_t  &data;  &__asm  &__volatile(\\"movq %%dr0,%0\\" : \\"=r\\" ( &data)); ( &data); });
	}' unless defined(&rdr0);
	eval 'sub load_dr0 {
	    my($dr0) = @_;
    	    eval q({  &__asm  &__volatile(\\"movq %0,%%dr0\\" : : \\"r\\" ($dr0)); });
	}' unless defined(&load_dr0);
	eval 'sub rdr1 {
	    my($void) = @_;
    	    eval q({  &uint64_t  &data;  &__asm  &__volatile(\\"movq %%dr1,%0\\" : \\"=r\\" ( &data)); ( &data); });
	}' unless defined(&rdr1);
	eval 'sub load_dr1 {
	    my($dr1) = @_;
    	    eval q({  &__asm  &__volatile(\\"movq %0,%%dr1\\" : : \\"r\\" ($dr1)); });
	}' unless defined(&load_dr1);
	eval 'sub rdr2 {
	    my($void) = @_;
    	    eval q({  &uint64_t  &data;  &__asm  &__volatile(\\"movq %%dr2,%0\\" : \\"=r\\" ( &data)); ( &data); });
	}' unless defined(&rdr2);
	eval 'sub load_dr2 {
	    my($dr2) = @_;
    	    eval q({  &__asm  &__volatile(\\"movq %0,%%dr2\\" : : \\"r\\" ($dr2)); });
	}' unless defined(&load_dr2);
	eval 'sub rdr3 {
	    my($void) = @_;
    	    eval q({  &uint64_t  &data;  &__asm  &__volatile(\\"movq %%dr3,%0\\" : \\"=r\\" ( &data)); ( &data); });
	}' unless defined(&rdr3);
	eval 'sub load_dr3 {
	    my($dr3) = @_;
    	    eval q({  &__asm  &__volatile(\\"movq %0,%%dr3\\" : : \\"r\\" ($dr3)); });
	}' unless defined(&load_dr3);
	eval 'sub rdr4 {
	    my($void) = @_;
    	    eval q({  &uint64_t  &data;  &__asm  &__volatile(\\"movq %%dr4,%0\\" : \\"=r\\" ( &data)); ( &data); });
	}' unless defined(&rdr4);
	eval 'sub load_dr4 {
	    my($dr4) = @_;
    	    eval q({  &__asm  &__volatile(\\"movq %0,%%dr4\\" : : \\"r\\" ($dr4)); });
	}' unless defined(&load_dr4);
	eval 'sub rdr5 {
	    my($void) = @_;
    	    eval q({  &uint64_t  &data;  &__asm  &__volatile(\\"movq %%dr5,%0\\" : \\"=r\\" ( &data)); ( &data); });
	}' unless defined(&rdr5);
	eval 'sub load_dr5 {
	    my($dr5) = @_;
    	    eval q({  &__asm  &__volatile(\\"movq %0,%%dr5\\" : : \\"r\\" ($dr5)); });
	}' unless defined(&load_dr5);
	eval 'sub rdr6 {
	    my($void) = @_;
    	    eval q({  &uint64_t  &data;  &__asm  &__volatile(\\"movq %%dr6,%0\\" : \\"=r\\" ( &data)); ( &data); });
	}' unless defined(&rdr6);
	eval 'sub load_dr6 {
	    my($dr6) = @_;
    	    eval q({  &__asm  &__volatile(\\"movq %0,%%dr6\\" : : \\"r\\" ($dr6)); });
	}' unless defined(&load_dr6);
	eval 'sub rdr7 {
	    my($void) = @_;
    	    eval q({  &uint64_t  &data;  &__asm  &__volatile(\\"movq %%dr7,%0\\" : \\"=r\\" ( &data)); ( &data); });
	}' unless defined(&rdr7);
	eval 'sub load_dr7 {
	    my($dr7) = @_;
    	    eval q({  &__asm  &__volatile(\\"movq %0,%%dr7\\" : : \\"r\\" ($dr7)); });
	}' unless defined(&load_dr7);
	eval 'sub intr_disable {
	    my($void) = @_;
    	    eval q({  &register_t  &rflags;  &rflags =  &read_rflags();  &disable_intr(); ( &rflags); });
	}' unless defined(&intr_disable);
	eval 'sub intr_restore {
	    my($rflags) = @_;
    	    eval q({  &write_rflags($rflags); });
	}' unless defined(&intr_restore);
    } else {
    }
    if(defined(&_KERNEL)) {
    }
}
1;
