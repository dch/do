require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&HEIM_BASE_H)) {
    eval 'sub HEIM_BASE_H () {1;}' unless defined(&HEIM_BASE_H);
    require 'sys/types.ph';
    require 'krb5-types.ph';
    require 'stdarg.ph';
    require 'stdbool.ph';
    eval 'sub HEIM_BASE_ONCE_INIT () {0;}' unless defined(&HEIM_BASE_ONCE_INIT);
    if(!defined(&__has_extension)) {
	eval 'sub __has_extension {
	    my($x) = @_;
    	    eval q(0);
	}' unless defined(&__has_extension);
    }
    eval 'sub HEIM_REQUIRE_GNUC {
        my($m,$n,$p) = @_;
	    eval q(((( &__GNUC__ * 10000) + ( &__GNUC_MINOR__ * 100) +  &__GNUC_PATCHLEVEL__) >= ((($m) * 10000) + (($n) * 100) + ($p))));
    }' unless defined(&HEIM_REQUIRE_GNUC);
    if( &__has_extension((defined(&__builtin_expect) ? &__builtin_expect : undef)) ||  &HEIM_REQUIRE_GNUC(3,0,0)) {
	eval 'sub heim_builtin_expect {
	    my($_op,$_res) = @_;
    	    eval q( &__builtin_expect($_op,$_res));
	}' unless defined(&heim_builtin_expect);
    } else {
	eval 'sub heim_builtin_expect {
	    my($_op,$_res) = @_;
    	    eval q(($_op));
	}' unless defined(&heim_builtin_expect);
    }
    eval 'sub heim_assert {
        my($e,$t) = @_;
	    eval q(( &heim_builtin_expect(!($e), 0) ?  &heim_abort($t \\":\\" $e) : ( &void)0));
    }' unless defined(&heim_assert);
    if(defined(&__BLOCKS__)) {
    }
    if(defined(&__BLOCKS__)) {
    }
    if(defined(&__BLOCKS__)) {
    }
}
1;
