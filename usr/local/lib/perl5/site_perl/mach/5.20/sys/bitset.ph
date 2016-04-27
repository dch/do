require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_BITSET_H_)) {
    eval 'sub _SYS_BITSET_H_ () {1;}' unless defined(&_SYS_BITSET_H_);
    eval 'sub BIT_CLR {
        my($_s, $n, $p) = @_;
	    eval q((($p)-> $__bits[ &__bitset_word($_s, $n)] &= ~ &__bitset_mask(($_s), ($n))));
    }' unless defined(&BIT_CLR);
    eval 'sub BIT_COPY {
        my($_s, $f, $t) = @_;
	    eval q(( &void)(*($t) = *($f)));
    }' unless defined(&BIT_COPY);
    eval 'sub BIT_ISSET {
        my($_s, $n, $p) = @_;
	    eval q((((($p)-> $__bits[ &__bitset_word($_s, $n)] &  &__bitset_mask(($_s), ($n))) != 0)));
    }' unless defined(&BIT_ISSET);
    eval 'sub BIT_SET {
        my($_s, $n, $p) = @_;
	    eval q((($p)-> $__bits[ &__bitset_word($_s, $n)] |=  &__bitset_mask(($_s), ($n))));
    }' unless defined(&BIT_SET);
    eval 'sub BIT_ZERO {
        my($_s, $p) = @_;
	    eval q( &do {  &__size_t  &__i;  &for ( &__i = 0;  &__i <  &__bitset_words(($_s));  &__i++) ($p)-> $__bits[ &__i] = 0; }  &while (0));
    }' unless defined(&BIT_ZERO);
    eval 'sub BIT_FILL {
        my($_s, $p) = @_;
	    eval q( &do {  &__size_t  &__i;  &for ( &__i = 0;  &__i <  &__bitset_words(($_s));  &__i++) ($p)-> $__bits[ &__i] = -1; }  &while (0));
    }' unless defined(&BIT_FILL);
    eval 'sub BIT_SETOF {
        my($_s, $n, $p) = @_;
	    eval q( &do {  &BIT_ZERO($_s, $p); ($p)-> $__bits[ &__bitset_word($_s, $n)] =  &__bitset_mask(($_s), ($n)); }  &while (0));
    }' unless defined(&BIT_SETOF);
    eval 'sub BIT_EMPTY {
        my($_s, $p) = @_;
	    eval q( &__extension__ ({  &__size_t  &__i;  &for ( &__i = 0;  &__i <  &__bitset_words(($_s));  &__i++)  &if (($p)-> $__bits[ &__i])  &break;  &__i ==  &__bitset_words(($_s)); }));
    }' unless defined(&BIT_EMPTY);
    eval 'sub BIT_ISFULLSET {
        my($_s, $p) = @_;
	    eval q( &__extension__ ({  &__size_t  &__i;  &for ( &__i = 0;  &__i <  &__bitset_words(($_s));  &__i++)  &if (($p)-> $__bits[ &__i] != -1)  &break;  &__i ==  &__bitset_words(($_s)); }));
    }' unless defined(&BIT_ISFULLSET);
    eval 'sub BIT_SUBSET {
        my($_s, $p, $c) = @_;
	    eval q( &__extension__ ({  &__size_t  &__i;  &for ( &__i = 0;  &__i <  &__bitset_words(($_s));  &__i++)  &if ((($c)-> $__bits[ &__i] & ($p)-> $__bits[ &__i]) != ($c)-> $__bits[ &__i])  &break;  &__i ==  &__bitset_words(($_s)); }));
    }' unless defined(&BIT_SUBSET);
    eval 'sub BIT_OVERLAP {
        my($_s, $p, $c) = @_;
	    eval q( &__extension__ ({  &__size_t  &__i;  &for ( &__i = 0;  &__i <  &__bitset_words(($_s));  &__i++)  &if ((($c)-> $__bits[ &__i] & ($p)-> $__bits[ &__i]) != 0)  &break;  &__i !=  &__bitset_words(($_s)); }));
    }' unless defined(&BIT_OVERLAP);
    eval 'sub BIT_CMP {
        my($_s, $p, $c) = @_;
	    eval q( &__extension__ ({  &__size_t  &__i;  &for ( &__i = 0;  &__i <  &__bitset_words(($_s));  &__i++)  &if ((($c)-> $__bits[ &__i] != ($p)-> $__bits[ &__i]))  &break;  &__i !=  &__bitset_words(($_s)); }));
    }' unless defined(&BIT_CMP);
    eval 'sub BIT_OR {
        my($_s, $d, $s) = @_;
	    eval q( &do {  &__size_t  &__i;  &for ( &__i = 0;  &__i <  &__bitset_words(($_s));  &__i++) ($d)-> $__bits[ &__i] |= ($s)-> $__bits[ &__i]; }  &while (0));
    }' unless defined(&BIT_OR);
    eval 'sub BIT_AND {
        my($_s, $d, $s) = @_;
	    eval q( &do {  &__size_t  &__i;  &for ( &__i = 0;  &__i <  &__bitset_words(($_s));  &__i++) ($d)-> $__bits[ &__i] &= ($s)-> $__bits[ &__i]; }  &while (0));
    }' unless defined(&BIT_AND);
    eval 'sub BIT_NAND {
        my($_s, $d, $s) = @_;
	    eval q( &do {  &__size_t  &__i;  &for ( &__i = 0;  &__i <  &__bitset_words(($_s));  &__i++) ($d)-> $__bits[ &__i] &= ~($s)-> $__bits[ &__i]; }  &while (0));
    }' unless defined(&BIT_NAND);
    eval 'sub BIT_CLR_ATOMIC {
        my($_s, $n, $p) = @_;
	    eval q( &atomic_clear_long(($p)-> $__bits[ &__bitset_word($_s, $n)],  &__bitset_mask(($_s), $n)));
    }' unless defined(&BIT_CLR_ATOMIC);
    eval 'sub BIT_SET_ATOMIC {
        my($_s, $n, $p) = @_;
	    eval q( &atomic_set_long(($p)-> $__bits[ &__bitset_word($_s, $n)],  &__bitset_mask(($_s), $n)));
    }' unless defined(&BIT_SET_ATOMIC);
    eval 'sub BIT_AND_ATOMIC {
        my($_s, $d, $s) = @_;
	    eval q( &do {  &__size_t  &__i;  &for ( &__i = 0;  &__i <  &__bitset_words(($_s));  &__i++)  &atomic_clear_long(($d)-> $__bits[ &__i], ~($s)-> $__bits[ &__i]); }  &while (0));
    }' unless defined(&BIT_AND_ATOMIC);
    eval 'sub BIT_OR_ATOMIC {
        my($_s, $d, $s) = @_;
	    eval q( &do {  &__size_t  &__i;  &for ( &__i = 0;  &__i <  &__bitset_words(($_s));  &__i++)  &atomic_set_long(($d)-> $__bits[ &__i], ($s)-> $__bits[ &__i]); }  &while (0));
    }' unless defined(&BIT_OR_ATOMIC);
    eval 'sub BIT_COPY_STORE_REL {
        my($_s, $f, $t) = @_;
	    eval q( &do {  &__size_t  &__i;  &for ( &__i = 0;  &__i <  &__bitset_words(($_s));  &__i++)  &atomic_store_rel_long(($t)-> $__bits[ &__i], ($f)-> $__bits[ &__i]); }  &while (0));
    }' unless defined(&BIT_COPY_STORE_REL);
    eval 'sub BIT_FFS {
        my($_s, $p) = @_;
	    eval q( &__extension__ ({  &__size_t  &__i; \'int\'  &__bit;  &__bit = 0;  &for ( &__i = 0;  &__i <  &__bitset_words(($_s));  &__i++) {  &if (($p)-> $__bits[ &__i] != 0) {  &__bit =  &ffsl(($p)-> $__bits[ &__i]);  &__bit +=  &__i *  &_BITSET_BITS;  &break; } }  &__bit; }));
    }' unless defined(&BIT_FFS);
}
1;
