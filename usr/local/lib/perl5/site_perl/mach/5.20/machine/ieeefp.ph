require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_IEEEFP_H_)) {
    eval 'sub _MACHINE_IEEEFP_H_ () {1;}' unless defined(&_MACHINE_IEEEFP_H_);
    unless(defined(&_SYS_CDEFS_H_)) {
	die("this\ file\ needs\ sys\/cdefs\.h\ as\ a\ prerequisite");
    }
    eval("sub FP_RN () { 0; }") unless defined(&FP_RN);
    eval("sub FP_RM () { 1; }") unless defined(&FP_RM);
    eval("sub FP_RP () { 2; }") unless defined(&FP_RP);
    eval("sub FP_RZ () { 3; }") unless defined(&FP_RZ);
    eval("sub FP_PS () { 0; }") unless defined(&FP_PS);
    eval("sub FP_PRS () { 1; }") unless defined(&FP_PRS);
    eval("sub FP_PD () { 2; }") unless defined(&FP_PD);
    eval("sub FP_PE () { 3; }") unless defined(&FP_PE);
    eval 'sub fp_except_t () {\'int\';}' unless defined(&fp_except_t);
    eval 'sub FP_X_INV () {0x1;}' unless defined(&FP_X_INV);
    eval 'sub FP_X_DNML () {0x2;}' unless defined(&FP_X_DNML);
    eval 'sub FP_X_DZ () {0x4;}' unless defined(&FP_X_DZ);
    eval 'sub FP_X_OFL () {0x8;}' unless defined(&FP_X_OFL);
    eval 'sub FP_X_UFL () {0x10;}' unless defined(&FP_X_UFL);
    eval 'sub FP_X_IMP () {0x20;}' unless defined(&FP_X_IMP);
    eval 'sub FP_X_STK () {0x40;}' unless defined(&FP_X_STK);
    eval 'sub FP_MSKS_FLD () {0x3f;}' unless defined(&FP_MSKS_FLD);
    eval 'sub FP_PRC_FLD () {0x300;}' unless defined(&FP_PRC_FLD);
    eval 'sub FP_RND_FLD () {0xc00;}' unless defined(&FP_RND_FLD);
    eval 'sub FP_STKY_FLD () {0x3f;}' unless defined(&FP_STKY_FLD);
    eval 'sub SSE_STKY_FLD () {0x3f;}' unless defined(&SSE_STKY_FLD);
    eval 'sub SSE_DAZ_FLD () {0x40;}' unless defined(&SSE_DAZ_FLD);
    eval 'sub SSE_MSKS_FLD () {0x1f80;}' unless defined(&SSE_MSKS_FLD);
    eval 'sub SSE_RND_FLD () {0x6000;}' unless defined(&SSE_RND_FLD);
    eval 'sub SSE_FZ_FLD () {0x8000;}' unless defined(&SSE_FZ_FLD);
    eval 'sub FP_MSKS_OFF () {0;}' unless defined(&FP_MSKS_OFF);
    eval 'sub FP_PRC_OFF () {8;}' unless defined(&FP_PRC_OFF);
    eval 'sub FP_RND_OFF () {10;}' unless defined(&FP_RND_OFF);
    eval 'sub FP_STKY_OFF () {0;}' unless defined(&FP_STKY_OFF);
    eval 'sub SSE_STKY_OFF () {0;}' unless defined(&SSE_STKY_OFF);
    eval 'sub SSE_DAZ_OFF () {6;}' unless defined(&SSE_DAZ_OFF);
    eval 'sub SSE_MSKS_OFF () {7;}' unless defined(&SSE_MSKS_OFF);
    eval 'sub SSE_RND_OFF () {13;}' unless defined(&SSE_RND_OFF);
    eval 'sub SSE_FZ_OFF () {15;}' unless defined(&SSE_FZ_OFF);
    if(defined(&__GNUCLIKE_ASM)) {
	eval 'sub __fldcw {
	    my($addr) = @_;
    	    eval q( &__asm  &__volatile(\\"fldcw %0\\" : : \\"m\\" (*($addr))));
	}' unless defined(&__fldcw);
	eval 'sub __fldenv {
	    my($addr) = @_;
    	    eval q( &__asm  &__volatile(\\"fldenv %0\\" : : \\"m\\" (*($addr))));
	}' unless defined(&__fldenv);
	eval 'sub __fnstcw {
	    my($addr) = @_;
    	    eval q( &__asm  &__volatile(\\"fnstcw %0\\" : \\"=m\\" (*($addr))));
	}' unless defined(&__fnstcw);
	eval 'sub __fnstenv {
	    my($addr) = @_;
    	    eval q( &__asm  &__volatile(\\"fnstenv %0\\" : \\"=m\\" (*($addr))));
	}' unless defined(&__fnstenv);
	eval 'sub __fnstsw {
	    my($addr) = @_;
    	    eval q( &__asm  &__volatile(\\"fnstsw %0\\" : \\"=m\\" (*($addr))));
	}' unless defined(&__fnstsw);
	eval 'sub __ldmxcsr {
	    my($addr) = @_;
    	    eval q( &__asm  &__volatile(\\"ldmxcsr %0\\" : : \\"m\\" (*($addr))));
	}' unless defined(&__ldmxcsr);
	eval 'sub __stmxcsr {
	    my($addr) = @_;
    	    eval q( &__asm  &__volatile(\\"stmxcsr %0\\" : \\"=m\\" (*($addr))));
	}' unless defined(&__stmxcsr);
	eval 'sub __fpsetround {
	    my($_m) = @_;
    	    eval q({  &fp_rnd_t  &_p; my $_mxcsr; my $_cw,  &_newcw;  &__fnstcw(& $_cw);  &_p = ( &fp_rnd_t)(( $_cw &  &FP_RND_FLD) >>  &FP_RND_OFF);  &_newcw =  $_cw & ~ &FP_RND_FLD;  &_newcw |= ($_m <<  &FP_RND_OFF) &  &FP_RND_FLD;  &__fnldcw( $_cw,  &_newcw);  &__stmxcsr(& $_mxcsr);  $_mxcsr &= ~ &SSE_RND_FLD;  $_mxcsr |= ($_m <<  &SSE_RND_OFF) &  &SSE_RND_FLD;  &__ldmxcsr(& $_mxcsr); ( &_p); });
	}' unless defined(&__fpsetround);
	eval 'sub __fpsetprec {
	    my($_m) = @_;
    	    eval q({  &fp_prec_t  &_p; my $_cw,  &_newcw;  &__fnstcw(& $_cw);  &_p = ( &fp_prec_t)(( $_cw &  &FP_PRC_FLD) >>  &FP_PRC_OFF);  &_newcw =  $_cw & ~ &FP_PRC_FLD;  &_newcw |= ($_m <<  &FP_PRC_OFF) &  &FP_PRC_FLD;  &__fnldcw( $_cw,  &_newcw); ( &_p); });
	}' unless defined(&__fpsetprec);
	eval 'sub __fpsetmask {
	    my($_m) = @_;
    	    eval q({  &fp_except_t  &_p; my $_mxcsr; my $_cw,  &_newcw;  &__fnstcw(& $_cw);  &_p = (~ $_cw &  &FP_MSKS_FLD) >>  &FP_MSKS_OFF;  &_newcw =  $_cw & ~ &FP_MSKS_FLD;  &_newcw |= (~$_m <<  &FP_MSKS_OFF) &  &FP_MSKS_FLD;  &__fnldcw( $_cw,  &_newcw);  &__stmxcsr(& $_mxcsr);  $_mxcsr &= ~ &SSE_MSKS_FLD;  $_mxcsr |= (~$_m <<  &SSE_MSKS_OFF) &  &SSE_MSKS_FLD;  &__ldmxcsr(& $_mxcsr); ( &_p); });
	}' unless defined(&__fpsetmask);
	eval 'sub __fpgetsticky {
	    my($void) = @_;
    	    eval q({ my $_ex,  &_mxcsr; my $_sw;  &__fnstsw(& $_sw);  $_ex = ( $_sw &  &FP_STKY_FLD) >>  &FP_STKY_OFF;  &__stmxcsr(& &_mxcsr);  $_ex |= ( &_mxcsr &  &SSE_STKY_FLD) >>  &SSE_STKY_OFF; (( &fp_except_t) $_ex); });
	}' unless defined(&__fpgetsticky);
    }
    if(!defined(&__IEEEFP_NOINLINES__)  && defined(&__GNUCLIKE_ASM)) {
	eval 'sub fpgetmask () {
	    eval q( &__fpgetmask());
	}' unless defined(&fpgetmask);
	eval 'sub fpgetprec () {
	    eval q( &__fpgetprec());
	}' unless defined(&fpgetprec);
	eval 'sub fpgetround () {
	    eval q( &__fpgetround());
	}' unless defined(&fpgetround);
	eval 'sub fpgetsticky () {
	    eval q( &__fpgetsticky());
	}' unless defined(&fpgetsticky);
	eval 'sub fpsetmask {
	    my($m) = @_;
    	    eval q( &__fpsetmask($m));
	}' unless defined(&fpsetmask);
	eval 'sub fpsetprec {
	    my($m) = @_;
    	    eval q( &__fpsetprec($m));
	}' unless defined(&fpsetprec);
	eval 'sub fpsetround {
	    my($m) = @_;
    	    eval q( &__fpsetround($m));
	}' unless defined(&fpsetround);
    } else {
    }
}
1;
