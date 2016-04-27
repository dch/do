require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_PCTRIE_H_)) {
    eval 'sub _SYS_PCTRIE_H_ () {1;}' unless defined(&_SYS_PCTRIE_H_);
    require 'sys/_pctrie.ph';
    if(defined(&_KERNEL)) {
	eval 'sub PCTRIE_DEFINE {
	    my($name, $type, $field, $allocfn, $freefn) = @_;
    	    eval q( &CTASSERT($sizeof{(0)->$field} == $sizeof{ &uint64_t});  &CTASSERT(( &__offsetof(\'struct type\', $field) & ($sizeof{ &uint32_t} - 1)) == 0);  &static  &__inline \'struct type\' * $name &_PCTRIE_VAL2PTR( &uint64_t * &val) {  &if ( &val ==  &NULL)  &return ( &NULL);  &return  (( &uintptr_t) &val -  &__offsetof(\'struct type\', $field)); }  &static  &__inline  &uint64_t * $name &_PCTRIE_PTR2VAL(\'struct type\' * &ptr) {  &return  ($ptr->{field}); }  &static  &__inline \'int\' $name &_PCTRIE_INSERT(\'struct pctrie\' * &ptree, \'struct type\' * &ptr) {  &return  &pctrie_insert( &ptree, $name &_PCTRIE_PTR2VAL( &ptr), $allocfn); }  &static  &__inline \'struct type\' * $name &_PCTRIE_LOOKUP(\'struct pctrie\' * &ptree,  &uint64_t  &key) {  &return $name &_PCTRIE_VAL2PTR( &pctrie_lookup( &ptree,  &key)); }  &static  &__inline \'struct type\' * $name &_PCTRIE_LOOKUP_LE(\'struct pctrie\' * &ptree,  &uint64_t  &key) {  &return $name &_PCTRIE_VAL2PTR( &pctrie_lookup_le( &ptree,  &key)); }  &static  &__inline  &__unused \'struct type\' * $name &_PCTRIE_LOOKUP_GE(\'struct pctrie\' * &ptree,  &uint64_t  &key) {  &return $name &_PCTRIE_VAL2PTR( &pctrie_lookup_ge( &ptree,  &key)); }  &static  &__inline  &__unused  &void $name &_PCTRIE_RECLAIM(\'struct pctrie\' * &ptree) {  &pctrie_reclaim_allnodes( &ptree, $freefn); }  &static  &__inline  &void $name &_PCTRIE_REMOVE(\'struct pctrie\' * &ptree,  &uint64_t  &key) {  &pctrie_remove( &ptree,  &key, $freefn); });
	}' unless defined(&PCTRIE_DEFINE);
    }
}
1;
