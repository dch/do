require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS__BITSET_H_)) {
    eval 'sub _SYS__BITSET_H_ () {1;}' unless defined(&_SYS__BITSET_H_);
    eval 'sub _BITSET_BITS () {($sizeof{\'long\'} *  &NBBY);}' unless defined(&_BITSET_BITS);
    eval 'sub __bitset_words {
        my($_s) = @_;
	    eval q(( &howmany($_s,  &_BITSET_BITS)));
    }' unless defined(&__bitset_words);
    eval 'sub __bitset_mask {
        my($_s, $n) = @_;
	    eval q((1 << (( &__bitset_words(($_s)) == 1) ? ( &__size_t)($n) : (($n) %  &_BITSET_BITS))));
    }' unless defined(&__bitset_mask);
    eval 'sub __bitset_word {
        my($_s, $n) = @_;
	    eval q((( &__bitset_words(($_s)) == 1) ? 0: (($n) /  &_BITSET_BITS)));
    }' unless defined(&__bitset_word);
    eval 'sub BITSET_DEFINE {
        my($t, $_s) = @_;
	    eval q(\'struct t\' { \'long __bits\'[ &__bitset_words(($_s))]; };);
    }' unless defined(&BITSET_DEFINE);
    eval 'sub BITSET_T_INITIALIZER {
        my($x) = @_;
	    eval q({ . &__bits = { $x } });
    }' unless defined(&BITSET_T_INITIALIZER);
    eval 'sub BITSET_FSET {
        my($n) = @_;
	    eval q([ 0... (($n) - 1) ] = (-1));
    }' unless defined(&BITSET_FSET);
}
1;
