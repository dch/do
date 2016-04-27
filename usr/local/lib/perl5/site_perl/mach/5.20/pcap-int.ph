require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&pcap_int_h)) {
    eval 'sub pcap_int_h () {1;}' unless defined(&pcap_int_h);
    require 'pcap/pcap.ph';
    if(defined(&__cplusplus)) {
    }
    if(defined(&HAVE_LIBDLPI)) {
	require 'libdlpi.ph';
    }
    if(defined(&WIN32)) {
	require 'Packet32.ph';
    }
    if(defined(&MSDOS)) {
	require 'fcntl.ph';
	require 'io.ph';
    }
    if(defined(&HAVE_SNF_API)) {
	require 'snf.ph';
    }
    if((defined(&_MSC_VER)  && ((defined(&_MSC_VER) ? &_MSC_VER : undef) <= 1200)) ) {
	eval 'sub SWAPLL {
	    my($ull) = @_;
    	    eval q((($ull & 0xff00000000000000) >> 56) | (($ull & 0xff000000000000) >> 40) | (($ull & 0xff0000000000) >> 24) | (($ull & 0xff00000000) >> 8) | (($ull & 0xff000000) << 8) | (($ull & 0xff0000) << 24) | (($ull & 0xff00) << 40) | (($ull & 0xff) << 56));
	}' unless defined(&SWAPLL);
    } else {
	eval 'sub SWAPLL {
	    my($ull) = @_;
    	    eval q((($ull & 0xff00000000000000) >> 56) | (($ull & 0xff000000000000) >> 40) | (($ull & 0xff0000000000) >> 24) | (($ull & 0xff00000000) >> 8) | (($ull & 0xff000000) << 8) | (($ull & 0xff0000) << 24) | (($ull & 0xff00) << 40) | (($ull & 0xff) << 56));
	}' unless defined(&SWAPLL);
    }
    eval("sub NOT_SWAPPED () { 0; }") unless defined(&NOT_SWAPPED);
    eval("sub SWAPPED () { 1; }") unless defined(&SWAPPED);
    eval("sub MAYBE_SWAPPED () { 2; }") unless defined(&MAYBE_SWAPPED);
    if(defined(&linux)) {
    }
    if(defined(&HAVE_DAG_API)) {
	if(defined(&HAVE_DAG_STREAMS_API)) {
	} else {
	}
    }
    if(defined(&HAVE_SNF_API)) {
    }
    if(defined(&HAVE_ZEROCOPY_BPF)) {
    }
    eval 'sub MUST_CLEAR_PROMISC () {0x1;}' unless defined(&MUST_CLEAR_PROMISC);
    eval 'sub MUST_CLEAR_RFMON () {0x2;}' unless defined(&MUST_CLEAR_RFMON);
    eval 'sub MUST_DELETE_MONIF () {0x4;}' unless defined(&MUST_DELETE_MONIF);
    if(defined(&__NetBSD__)) {
	require 'sys/param.ph';
    }
    if(defined(&ultrix) || defined(&__osf__) || (defined(&__NetBSD__)  && (defined(&__NetBSD_Version__) ? &__NetBSD_Version__ : undef) > 106000000)) {
	eval 'sub PCAP_FDDIPAD () {3;}' unless defined(&PCAP_FDDIPAD);
    }
    if(defined(&WIN32)) {
    }
    if(defined(&WIN32)) {
    } else {
    }
    if(defined(&HAVE_LIBDLPI)) {
    }
    if(defined(&PCAP_FDDIPAD)) {
    }
    if(defined(&MSDOS)) {
    }
    if(defined(&WIN32)) {
    }
    unless(defined(&min)) {
	eval 'sub min {
	    my($a, $b) = @_;
    	    eval q((($a) > ($b) ? ($b) : ($a)));
	}' unless defined(&min);
    }
    unless(defined(&HAVE_STRLCPY)) {
	eval 'sub strlcpy {
	    my($x, $y, $z) = @_;
    	    eval q(( &strncpy(($x), ($y), ($z)), (($z) <= 0? 0: (($x)[($z) - 1] = ord(\'\\\\0\'))),  &strlen(($y))));
	}' unless defined(&strlcpy);
    }
    require 'stdarg.ph';
    if(!defined(&HAVE_SNPRINTF)) {
	eval 'sub snprintf () { &pcap_snprintf;}' unless defined(&snprintf);
    }
    if(!defined(&HAVE_VSNPRINTF)) {
	eval 'sub vsnprintf () { &pcap_vsnprintf;}' unless defined(&vsnprintf);
    }
    if(!defined(&WIN32)  && !defined(&MSDOS)) {
    }
    if(defined(&WIN32)) {
    }
    if(defined(&__cplusplus)) {
    }
}
1;
