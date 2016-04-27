require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_ASMACROS_H_)) {
    eval 'sub _MACHINE_ASMACROS_H_ () {1;}' unless defined(&_MACHINE_ASMACROS_H_);
    require 'sys/cdefs.ph';
    eval 'sub CNAME {
        my($csym) = @_;
	    eval q($csym);
    }' unless defined(&CNAME);
    eval 'sub ALIGN_DATA () {. &p2align 3;}' unless defined(&ALIGN_DATA);
    if(defined(&GPROF)) {
	eval 'sub ALIGN_TEXT () {. &p2align 4,0x90;}' unless defined(&ALIGN_TEXT);
    } else {
	eval 'sub ALIGN_TEXT () {. &p2align 4,0x90;}' unless defined(&ALIGN_TEXT);
    }
    eval 'sub SUPERALIGN_TEXT () {. &p2align 4,0x90;}' unless defined(&SUPERALIGN_TEXT);
    eval 'sub GEN_ENTRY {
        my($name) = @_;
	    eval q( &ALIGN_TEXT; . &globl  &CNAME($name); . &type  &CNAME($name),@ &function;  &CNAME($name):);
    }' unless defined(&GEN_ENTRY);
    eval 'sub NON_GPROF_ENTRY {
        my($name) = @_;
	    eval q( &GEN_ENTRY($name));
    }' unless defined(&NON_GPROF_ENTRY);
    eval 'sub NON_GPROF_RET () {. &byte 0xc3;}' unless defined(&NON_GPROF_RET);
    eval 'sub END {
        my($name) = @_;
	    eval q(. &size $name, . - $name);
    }' unless defined(&END);
    if(defined(&GPROF)) {
	eval 'sub ALTENTRY {
	    my($name) = @_;
    	    eval q( &GEN_ENTRY($name) ;  &MCOUNT ;  &MEXITCOUNT ;  &jmp 9 &f);
	}' unless defined(&ALTENTRY);
	eval 'sub CROSSJUMP {
	    my($jtrue, $label, $jfalse) = @_;
    	    eval q($jfalse 8 &f;  &MEXITCOUNT;  &jmp  &__CONCAT( &to,$label); 8:);
	}' unless defined(&CROSSJUMP);
	eval 'sub CROSSJUMPTARGET {
	    my($label) = @_;
    	    eval q( &ALIGN_TEXT;  &__CONCAT( &to,$label): ;  &MCOUNT;  &jmp $label);
	}' unless defined(&CROSSJUMPTARGET);
	eval 'sub ENTRY {
	    my($name) = @_;
    	    eval q( &GEN_ENTRY($name) ; 9: ;  &MCOUNT);
	}' unless defined(&ENTRY);
	eval 'sub FAKE_MCOUNT {
	    my($caller) = @_;
    	    eval q( &pushq $caller ;  &call  &__mcount ;  &popq % &rcx);
	}' unless defined(&FAKE_MCOUNT);
	eval 'sub MCOUNT () { &call  &__mcount;}' unless defined(&MCOUNT);
	eval 'sub MCOUNT_LABEL {
	    my($name) = @_;
    	    eval q( &GEN_ENTRY($name) ;  &nop ;  &ALIGN_TEXT);
	}' unless defined(&MCOUNT_LABEL);
	if(defined(&GUPROF)) {
	    eval 'sub MEXITCOUNT () { &call . &mexitcount;}' unless defined(&MEXITCOUNT);
	    eval 'sub ret () { &MEXITCOUNT ;  &NON_GPROF_RET;}' unless defined(&ret);
	} else {
	    eval 'sub MEXITCOUNT () {1;}' unless defined(&MEXITCOUNT);
	}
    } else {
	eval 'sub ALTENTRY {
	    my($name) = @_;
    	    eval q( &GEN_ENTRY($name));
	}' unless defined(&ALTENTRY);
	eval 'sub CROSSJUMP {
	    my($jtrue, $label, $jfalse) = @_;
    	    eval q($jtrue $label);
	}' unless defined(&CROSSJUMP);
	eval 'sub CROSSJUMPTARGET {
	    my($label) = @_;
    	    eval q();
	}' unless defined(&CROSSJUMPTARGET);
	eval 'sub ENTRY {
	    my($name) = @_;
    	    eval q( &GEN_ENTRY($name));
	}' unless defined(&ENTRY);
	eval 'sub FAKE_MCOUNT {
	    my($caller) = @_;
    	    eval q();
	}' unless defined(&FAKE_MCOUNT);
	eval 'sub MCOUNT () {1;}' unless defined(&MCOUNT);
	eval 'sub MCOUNT_LABEL {
	    my($name) = @_;
    	    eval q();
	}' unless defined(&MCOUNT_LABEL);
	eval 'sub MEXITCOUNT () {1;}' unless defined(&MEXITCOUNT);
    }
    if(defined(&LOCORE)) {
	eval 'sub IDTVEC {
	    my($name) = @_;
    	    eval q( &ALIGN_TEXT; . &globl  &__CONCAT( &X,$name); . &type  &__CONCAT( &X,$name),@ &function;  &__CONCAT( &X,$name):);
	}' unless defined(&IDTVEC);
	eval 'sub PUSH_FRAME () { &subq $ &TF_RIP,% &rsp ;  &testb $ &SEL_RPL_MASK, &TF_CS(% &rsp) ;  &jz 1 &f ;  &swapgs ; 1:  &movq % &rdi, &TF_RDI(% &rsp) ;  &movq % &rsi, &TF_RSI(% &rsp) ;  &movq % &rdx, &TF_RDX(% &rsp) ;  &movq % &rcx, &TF_RCX(% &rsp) ;  &movq % &r8, &TF_R8(% &rsp) ;  &movq % &r9, &TF_R9(% &rsp) ;  &movq % &rax, &TF_RAX(% &rsp) ;  &movq % &rbx, &TF_RBX(% &rsp) ;  &movq % &rbp, &TF_RBP(% &rsp) ;  &movq % &r10, &TF_R10(% &rsp) ;  &movq % &r11, &TF_R11(% &rsp) ;  &movq % &r12, &TF_R12(% &rsp) ;  &movq % &r13, &TF_R13(% &rsp) ;  &movq % &r14, &TF_R14(% &rsp) ;  &movq % &r15, &TF_R15(% &rsp) ;  &movw % &fs, &TF_FS(% &rsp) ;  &movw % &gs, &TF_GS(% &rsp) ;  &movw % &es, &TF_ES(% &rsp) ;  &movw % &ds, &TF_DS(% &rsp) ;  &movl $ &TF_HASSEGS, &TF_FLAGS(% &rsp) ;  &cld;}' unless defined(&PUSH_FRAME);
	eval 'sub POP_FRAME () { &movq  &TF_RDI(% &rsp),% &rdi ;  &movq  &TF_RSI(% &rsp),% &rsi ;  &movq  &TF_RDX(% &rsp),% &rdx ;  &movq  &TF_RCX(% &rsp),% &rcx ;  &movq  &TF_R8(% &rsp),% &r8 ;  &movq  &TF_R9(% &rsp),% &r9 ;  &movq  &TF_RAX(% &rsp),% &rax ;  &movq  &TF_RBX(% &rsp),% &rbx ;  &movq  &TF_RBP(% &rsp),% &rbp ;  &movq  &TF_R10(% &rsp),% &r10 ;  &movq  &TF_R11(% &rsp),% &r11 ;  &movq  &TF_R12(% &rsp),% &r12 ;  &movq  &TF_R13(% &rsp),% &r13 ;  &movq  &TF_R14(% &rsp),% &r14 ;  &movq  &TF_R15(% &rsp),% &r15 ;  &testb $ &SEL_RPL_MASK, &TF_CS(% &rsp) ;  &jz 1 &f ;  &cli ;  &swapgs ; 1:  &addq $ &TF_RIP,% &rsp;}' unless defined(&POP_FRAME);
	eval 'sub PCPU {
	    my($member) = @_;
    	    eval q(% &gs: &PC_  $member);
	}' unless defined(&PCPU);
	eval 'sub PCPU_ADDR {
	    my($member, $reg) = @_;
    	    eval q( &movq % &gs: &PC_PRVSPACE, $reg ;  &addq $ &PC_  $member, $reg);
	}' unless defined(&PCPU_ADDR);
    }
}
1;
