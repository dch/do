require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__krb5_types_h__)) {
    eval 'sub __krb5_types_h__ () {1;}' unless defined(&__krb5_types_h__);
    require 'inttypes.ph';
    require 'sys/types.ph';
    require 'sys/socket.ph';
    require 'unistd.ph';
    if(!defined(&__has_extension)) {
	eval 'sub __has_extension {
	    my($x) = @_;
    	    eval q(0);
	}' unless defined(&__has_extension);
    }
    eval 'sub KRB5TYPES_REQUIRE_GNUC {
        my($m,$n,$p) = @_;
	    eval q(((( &__GNUC__ * 10000) + ( &__GNUC_MINOR__ * 100) +  &__GNUC_PATCHLEVEL__) >= ((($m) * 10000) + (($n) * 100) + ($p))));
    }' unless defined(&KRB5TYPES_REQUIRE_GNUC);
    unless(defined(&HEIMDAL_DEPRECATED)) {
	if( &__has_extension((defined(&deprecated) ? &deprecated : undef)) ||  &KRB5TYPES_REQUIRE_GNUC(3,1,0)) {
	    eval 'sub HEIMDAL_DEPRECATED () { &__attribute__(( &deprecated));}' unless defined(&HEIMDAL_DEPRECATED);
	}
 elsif(defined(&_MSC_VER)  && ((defined(&_MSC_VER) ? &_MSC_VER : undef)>1200)) {
	    eval 'sub HEIMDAL_DEPRECATED () { &__declspec( &deprecated);}' unless defined(&HEIMDAL_DEPRECATED);
	} else {
	    eval 'sub HEIMDAL_DEPRECATED () {1;}' unless defined(&HEIMDAL_DEPRECATED);
	}
    }
    unless(defined(&HEIMDAL_PRINTF_ATTRIBUTE)) {
	if( &__has_extension((defined(&format) ? &format : undef)) ||  &KRB5TYPES_REQUIRE_GNUC(3,1,0)) {
	    eval 'sub HEIMDAL_PRINTF_ATTRIBUTE {
	        my($x) = @_;
    		eval q( &__attribute__(( &format $x)));
	    }' unless defined(&HEIMDAL_PRINTF_ATTRIBUTE);
	} else {
	    eval 'sub HEIMDAL_PRINTF_ATTRIBUTE {
	        my($x) = @_;
    		eval q();
	    }' unless defined(&HEIMDAL_PRINTF_ATTRIBUTE);
	}
    }
    unless(defined(&HEIMDAL_NORETURN_ATTRIBUTE)) {
	if( &__has_extension((defined(&noreturn) ? &noreturn : undef)) ||  &KRB5TYPES_REQUIRE_GNUC(3,1,0)) {
	    eval 'sub HEIMDAL_NORETURN_ATTRIBUTE () { &__attribute__(( &noreturn));}' unless defined(&HEIMDAL_NORETURN_ATTRIBUTE);
	} else {
	    eval 'sub HEIMDAL_NORETURN_ATTRIBUTE () {1;}' unless defined(&HEIMDAL_NORETURN_ATTRIBUTE);
	}
    }
    unless(defined(&HEIMDAL_UNUSED_ATTRIBUTE)) {
	if( &__has_extension((defined(&unused) ? &unused : undef)) ||  &KRB5TYPES_REQUIRE_GNUC(3,1,0)) {
	    eval 'sub HEIMDAL_UNUSED_ATTRIBUTE () { &__attribute__(( &unused));}' unless defined(&HEIMDAL_UNUSED_ATTRIBUTE);
	} else {
	    eval 'sub HEIMDAL_UNUSED_ATTRIBUTE () {1;}' unless defined(&HEIMDAL_UNUSED_ATTRIBUTE);
	}
    }
}
1;
