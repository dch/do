require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&NCURSES_DLL_H_incl)) {
    eval 'sub NCURSES_DLL_H_incl () {1;}' unless defined(&NCURSES_DLL_H_incl);
    undef(&NCURSES_DLL) if defined(&NCURSES_DLL);
    eval 'sub NCURSES_STATIC () {1;}' unless defined(&NCURSES_STATIC);
    if(defined(&__CYGWIN__)) {
	if(defined(&NCURSES_DLL)) {
	    if(defined(&NCURSES_STATIC)) {
		undef(&NCURSES_STATIC) if defined(&NCURSES_STATIC);
	    }
	}
	undef(&NCURSES_IMPEXP) if defined(&NCURSES_IMPEXP);
	undef(&NCURSES_API) if defined(&NCURSES_API);
	undef(&NCURSES_EXPORT) if defined(&NCURSES_EXPORT);
	undef(&NCURSES_EXPORT_VAR) if defined(&NCURSES_EXPORT_VAR);
	if(defined(&NCURSES_DLL)) {
	    eval 'sub NCURSES_IMPEXP () { &__declspec( &dllexport);}' unless defined(&NCURSES_IMPEXP);
	}
 elsif(defined(&NCURSES_STATIC)) {
	    eval 'sub NCURSES_IMPEXP () {1;}' unless defined(&NCURSES_IMPEXP);
	} else {
	    eval 'sub NCURSES_IMPEXP () { &__declspec( &dllimport);}' unless defined(&NCURSES_IMPEXP);
	}
	eval 'sub NCURSES_API () { &__cdecl;}' unless defined(&NCURSES_API);
	eval 'sub NCURSES_EXPORT {
	    my($type) = @_;
    	    eval q( &NCURSES_IMPEXP $type  &NCURSES_API);
	}' unless defined(&NCURSES_EXPORT);
	eval 'sub NCURSES_EXPORT_VAR {
	    my($type) = @_;
    	    eval q( &NCURSES_IMPEXP $type);
	}' unless defined(&NCURSES_EXPORT_VAR);
    }
    if(!defined(&NCURSES_IMPEXP)) {
	eval 'sub NCURSES_IMPEXP () {1;}' unless defined(&NCURSES_IMPEXP);
    }
    if(!defined(&NCURSES_API)) {
	eval 'sub NCURSES_API () {1;}' unless defined(&NCURSES_API);
    }
    if(!defined(&NCURSES_EXPORT)) {
	eval 'sub NCURSES_EXPORT {
	    my($type) = @_;
    	    eval q( &NCURSES_IMPEXP $type  &NCURSES_API);
	}' unless defined(&NCURSES_EXPORT);
    }
    if(!defined(&NCURSES_EXPORT_VAR)) {
	eval 'sub NCURSES_EXPORT_VAR {
	    my($type) = @_;
    	    eval q( &NCURSES_IMPEXP $type);
	}' unless defined(&NCURSES_EXPORT_VAR);
    }
    eval 'sub NCURSES_PUBLIC_VAR {
        my($name) = @_;
	    eval q( &_nc_$name);
    }' unless defined(&NCURSES_PUBLIC_VAR);
    eval 'sub NCURSES_WRAPPED_VAR {
        my($type,$name) = @_;
	    eval q( &extern $type  &NCURSES_PUBLIC_VAR($name)( &void));
    }' unless defined(&NCURSES_WRAPPED_VAR);
}
1;
