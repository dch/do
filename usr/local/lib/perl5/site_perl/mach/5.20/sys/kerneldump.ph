require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_KERNELDUMP_H)) {
    eval 'sub _SYS_KERNELDUMP_H () {1;}' unless defined(&_SYS_KERNELDUMP_H);
    require 'machine/endian.ph';
    if((defined(&BYTE_ORDER) ? &BYTE_ORDER : undef) == (defined(&LITTLE_ENDIAN) ? &LITTLE_ENDIAN : undef)) {
	eval 'sub dtoh32 {
	    my($x) = @_;
    	    eval q( &__bswap32($x));
	}' unless defined(&dtoh32);
	eval 'sub dtoh64 {
	    my($x) = @_;
    	    eval q( &__bswap64($x));
	}' unless defined(&dtoh64);
	eval 'sub htod32 {
	    my($x) = @_;
    	    eval q( &__bswap32($x));
	}' unless defined(&htod32);
	eval 'sub htod64 {
	    my($x) = @_;
    	    eval q( &__bswap64($x));
	}' unless defined(&htod64);
    }
 elsif((defined(&BYTE_ORDER) ? &BYTE_ORDER : undef) == (defined(&BIG_ENDIAN) ? &BIG_ENDIAN : undef)) {
	eval 'sub dtoh32 {
	    my($x) = @_;
    	    eval q(($x));
	}' unless defined(&dtoh32);
	eval 'sub dtoh64 {
	    my($x) = @_;
    	    eval q(($x));
	}' unless defined(&dtoh64);
	eval 'sub htod32 {
	    my($x) = @_;
    	    eval q(($x));
	}' unless defined(&htod32);
	eval 'sub htod64 {
	    my($x) = @_;
    	    eval q(($x));
	}' unless defined(&htod64);
    }
    eval 'sub KERNELDUMPMAGIC () {"FreeBSD Kernel Dump";}' unless defined(&KERNELDUMPMAGIC);
    eval 'sub TEXTDUMPMAGIC () {"FreeBSD Text Dump";}' unless defined(&TEXTDUMPMAGIC);
    eval 'sub KERNELDUMPMAGIC_CLEARED () {"Cleared Kernel Dump";}' unless defined(&KERNELDUMPMAGIC_CLEARED);
    eval 'sub KERNELDUMPVERSION () {1;}' unless defined(&KERNELDUMPVERSION);
    eval 'sub KERNELDUMP_ALPHA_VERSION () {1;}' unless defined(&KERNELDUMP_ALPHA_VERSION);
    eval 'sub KERNELDUMP_AMD64_VERSION () {2;}' unless defined(&KERNELDUMP_AMD64_VERSION);
    eval 'sub KERNELDUMP_ARM_VERSION () {1;}' unless defined(&KERNELDUMP_ARM_VERSION);
    eval 'sub KERNELDUMP_I386_VERSION () {2;}' unless defined(&KERNELDUMP_I386_VERSION);
    eval 'sub KERNELDUMP_IA64_VERSION () {1;}' unless defined(&KERNELDUMP_IA64_VERSION);
    eval 'sub KERNELDUMP_MIPS_VERSION () {1;}' unless defined(&KERNELDUMP_MIPS_VERSION);
    eval 'sub KERNELDUMP_POWERPC_VERSION () {1;}' unless defined(&KERNELDUMP_POWERPC_VERSION);
    eval 'sub KERNELDUMP_SPARC64_VERSION () {1;}' unless defined(&KERNELDUMP_SPARC64_VERSION);
    eval 'sub KERNELDUMP_TEXT_VERSION () {1;}' unless defined(&KERNELDUMP_TEXT_VERSION);
    if(defined(&_KERNEL)) {
    }
}
1;
