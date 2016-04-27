require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&Expat_External_INCLUDED)) {
    eval 'sub Expat_External_INCLUDED () {1;}' unless defined(&Expat_External_INCLUDED);
    if(defined(&_MSC_EXTENSIONS)  && !defined(&__BEOS__)  && !defined(&__CYGWIN__)) {
	eval 'sub XML_USE_MSC_EXTENSIONS () {1;}' unless defined(&XML_USE_MSC_EXTENSIONS);
    }
    unless(defined(&XMLCALL)) {
	if(defined(&_MSC_VER)) {
	    eval 'sub XMLCALL () { &__cdecl;}' unless defined(&XMLCALL);
	}
 elsif(defined(&__GNUC__)  && defined(&__i386)  && !defined(&__INTEL_COMPILER)) {
	    eval 'sub XMLCALL () { &__attribute__(( &cdecl));}' unless defined(&XMLCALL);
	} else {
	    eval 'sub XMLCALL () {1;}' unless defined(&XMLCALL);
	}
    }
    if(!defined(&XML_STATIC)  && !defined(&XMLIMPORT)) {
	unless(defined(&XML_BUILDING_EXPAT)) {
	    if(defined(&XML_USE_MSC_EXTENSIONS)) {
		eval 'sub XMLIMPORT () { &__declspec( &dllimport);}' unless defined(&XMLIMPORT);
	    }
	}
    }
    unless(defined(&XMLIMPORT)) {
	eval 'sub XMLIMPORT () {1;}' unless defined(&XMLIMPORT);
    }
    eval 'sub XMLPARSEAPI {
        my($type) = @_;
	    eval q( &XMLIMPORT $type  &XMLCALL);
    }' unless defined(&XMLPARSEAPI);
    if(defined(&__cplusplus)) {
    }
    if(defined(&XML_UNICODE_WCHAR_T)) {
	eval 'sub XML_UNICODE () {1;}' unless defined(&XML_UNICODE);
    }
    if(defined(&XML_UNICODE)) {
	if(defined(&XML_UNICODE_WCHAR_T)) {
	} else {
	}
    } else {
    }
    if(defined(&XML_LARGE_SIZE)) {
	if(defined(&XML_USE_MSC_EXTENSIONS)  && (defined(&_MSC_VER) ? &_MSC_VER : undef) < 1400) {
	} else {
	}
    } else {
    }
    if(defined(&__cplusplus)) {
    }
}
1;
