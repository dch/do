require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_LINKER_SET_H_)) {
    eval 'sub _SYS_LINKER_SET_H_ () {1;}' unless defined(&_SYS_LINKER_SET_H_);
    unless(defined(&_SYS_CDEFS_H_)) {
	die("this\ file\ needs\ sys\/cdefs\.h\ as\ a\ prerequisite");
    }
    if(defined(&__GNUCLIKE___SECTION)) {
	eval 'sub __MAKE_SET {
	    my($set, $sym) = @_;
    	    eval q( &__GLOBL( &__CONCAT( &__start_set_,$set));  &__GLOBL( &__CONCAT( &__stop_set_,$set));  &static  &void  &const *  &const  &__set_$set &_sym_$sym  &__section(\\"set_\\" $set)  &__used = $sym);
	}' unless defined(&__MAKE_SET);
    } else {
	unless(defined(&lint)) {
	    die("this\ file\ needs\ to\ be\ ported\ to\ your\ compiler");
	}
	eval 'sub __MAKE_SET {
	    my($set, $sym) = @_;
    	    eval q( &extern  &void  &const *  &const ( &__set_$set &_sym_$sym));
	}' unless defined(&__MAKE_SET);
    }
    eval 'sub TEXT_SET {
        my($set, $sym) = @_;
	    eval q( &__MAKE_SET($set, $sym));
    }' unless defined(&TEXT_SET);
    eval 'sub DATA_SET {
        my($set, $sym) = @_;
	    eval q( &__MAKE_SET($set, $sym));
    }' unless defined(&DATA_SET);
    eval 'sub BSS_SET {
        my($set, $sym) = @_;
	    eval q( &__MAKE_SET($set, $sym));
    }' unless defined(&BSS_SET);
    eval 'sub ABS_SET {
        my($set, $sym) = @_;
	    eval q( &__MAKE_SET($set, $sym));
    }' unless defined(&ABS_SET);
    eval 'sub SET_ENTRY {
        my($set, $sym) = @_;
	    eval q( &__MAKE_SET($set, $sym));
    }' unless defined(&SET_ENTRY);
    eval 'sub SET_DECLARE {
        my($set, $ptype) = @_;
	    eval q( &extern $ptype * &__CONCAT( &__start_set_,$set);  &extern $ptype * &__CONCAT( &__stop_set_,$set));
    }' unless defined(&SET_DECLARE);
    eval 'sub SET_BEGIN {
        my($set) = @_;
	    eval q((& &__CONCAT( &__start_set_,$set)));
    }' unless defined(&SET_BEGIN);
    eval 'sub SET_LIMIT {
        my($set) = @_;
	    eval q((& &__CONCAT( &__stop_set_,$set)));
    }' unless defined(&SET_LIMIT);
    eval 'sub SET_FOREACH {
        my($pvar, $set) = @_;
	    eval q( &for ($pvar =  &SET_BEGIN($set); $pvar <  &SET_LIMIT($set); $pvar++));
    }' unless defined(&SET_FOREACH);
    eval 'sub SET_ITEM {
        my($set, $i) = @_;
	    eval q((( &SET_BEGIN($set))[$i]));
    }' unless defined(&SET_ITEM);
    eval 'sub SET_COUNT {
        my($set) = @_;
	    eval q(( &SET_LIMIT($set) -  &SET_BEGIN($set)));
    }' unless defined(&SET_COUNT);
}
1;
