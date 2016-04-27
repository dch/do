require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_OPIE_H)) {
    eval 'sub _OPIE_H () {1;}' unless defined(&_OPIE_H);
    eval 'sub __OPIE_FLAGS_RW () {1;}' unless defined(&__OPIE_FLAGS_RW);
    eval 'sub __OPIE_FLAGS_READ () {2;}' unless defined(&__OPIE_FLAGS_READ);
    unless(defined(&OPIE_SECRET_MIN)) {
	eval 'sub OPIE_SECRET_MIN () {10;}' unless defined(&OPIE_SECRET_MIN);
    }
    eval 'sub OPIE_SECRET_MAX () {127;}' unless defined(&OPIE_SECRET_MAX);
    eval 'sub OPIE_SEED_MIN () {5;}' unless defined(&OPIE_SEED_MIN);
    eval 'sub OPIE_SEED_MAX () {16;}' unless defined(&OPIE_SEED_MAX);
    eval 'sub OPIE_HASHNAME_MAX () {3;}' unless defined(&OPIE_HASHNAME_MAX);
    eval 'sub OPIE_CHALLENGE_MAX () {(4+ &OPIE_HASHNAME_MAX+1+4+1+ &OPIE_SEED_MAX);}' unless defined(&OPIE_CHALLENGE_MAX);
    eval 'sub OPIE_RESPONSE_MAX () {(9+1+19+1+9+ &OPIE_SEED_MAX+1+19+1+19+1+19);}' unless defined(&OPIE_RESPONSE_MAX);
    eval 'sub OPIE_PRINCIPAL_MAX () {32;}' unless defined(&OPIE_PRINCIPAL_MAX);
    unless(defined(&OPIE_SEQUENCE_MAX)) {
	eval 'sub OPIE_SEQUENCE_MAX () {9999;}' unless defined(&OPIE_SEQUENCE_MAX);
    }
    unless(defined(&OPIE_SEQUENCE_RESTRICT)) {
	eval 'sub OPIE_SEQUENCE_RESTRICT () {9;}' unless defined(&OPIE_SEQUENCE_RESTRICT);
    }
    eval 'sub UINT4 () { &u_int32_t;}' unless defined(&UINT4);
    unless(defined(&SEEK_SET)) {
	eval 'sub SEEK_SET () {0;}' unless defined(&SEEK_SET);
    }
    unless(defined(&SEEK_END)) {
	eval 'sub SEEK_END () {2;}' unless defined(&SEEK_END);
    }
    if((defined(&_OPIE) ? &_OPIE : undef)) {
	eval 'sub VOIDPTR () { &void *;}' unless defined(&VOIDPTR);
	eval 'sub VOIDRET () { &void;}' unless defined(&VOIDRET);
	eval 'sub NOARGS () { &void;}' unless defined(&NOARGS);
	eval 'sub FUNCTION {
	    my($arglist, $args) = @_;
    	    eval q(($args));
	}' unless defined(&FUNCTION);
	eval 'sub AND () {,;}' unless defined(&AND);
	eval 'sub FUNCTION_NOARGS () {();}' unless defined(&FUNCTION_NOARGS);
	if(defined(&EOF)) {
	}
	eval 'sub opiestrncpy {
	    my($dst, $src, $n) = @_;
    	    eval q( &do {  &strncpy($dst, $src, $n-1); $dst->[$n-1] = 0; }  &while(0));
	}' unless defined(&opiestrncpy);
    }
    eval 'sub OPIEPASSWD_CONSOLE () {1;}' unless defined(&OPIEPASSWD_CONSOLE);
    eval 'sub OPIEPASSWD_FORCE () {2;}' unless defined(&OPIEPASSWD_FORCE);
}
1;
