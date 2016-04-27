require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_MBUF_H_)) {
    eval 'sub _SYS_MBUF_H_ () {1;}' unless defined(&_SYS_MBUF_H_);
    require 'sys/queue.ph';
    if(defined(&_KERNEL)) {
	require 'sys/systm.ph';
	require 'vm/uma.ph';
	if(defined(&WITNESS)) {
	    require 'sys/lock.ph';
	}
    }
    eval 'sub MLEN () {(( &MSIZE - $sizeof{\'struct m_hdr\'}));}' unless defined(&MLEN);
    eval 'sub MHLEN () {(( &MLEN - $sizeof{\'struct pkthdr\'}));}' unless defined(&MHLEN);
    eval 'sub MINCLSIZE () {( &MHLEN + 1);}' unless defined(&MINCLSIZE);
    if(defined(&_KERNEL)) {
	eval 'sub mtod {
	    my($m, $t) = @_;
    	    eval q((($t)(($m)-> &m_data)));
	}' unless defined(&mtod);
	eval 'sub mtodo {
	    my($m, $o) = @_;
    	    eval q((( &void *)((($m)-> &m_data) + ($o))));
	}' unless defined(&mtodo);
    }
    if(!defined(&__LP64__)) {
    }
    eval 'sub ether_vtag () { ($PH_per->{sixteen[0]});}' unless defined(&ether_vtag);
    eval 'sub PH_vt () { &PH_per;}' unless defined(&PH_vt);
    eval 'sub vt_nrecs () { $sixteen[0];}' unless defined(&vt_nrecs);
    eval 'sub tso_segsz () { ($PH_per->{sixteen[1]});}' unless defined(&tso_segsz);
    eval 'sub csum_phsum () { ($PH_per->{sixteen[2]});}' unless defined(&csum_phsum);
    eval 'sub csum_data () { ($PH_per->{thirtytwo[1]});}' unless defined(&csum_data);
    eval 'sub m_next () { ($m_hdr->{mh_next});}' unless defined(&m_next);
    eval 'sub m_len () { ($m_hdr->{mh_len});}' unless defined(&m_len);
    eval 'sub m_data () { ($m_hdr->{mh_data});}' unless defined(&m_data);
    eval 'sub m_type () { ($m_hdr->{mh_type});}' unless defined(&m_type);
    eval 'sub m_flags () { ($m_hdr->{mh_flags});}' unless defined(&m_flags);
    eval 'sub m_nextpkt () { ($m_hdr->{mh_nextpkt});}' unless defined(&m_nextpkt);
    eval 'sub m_pkthdr () { ($M_dat->{MH}->{MH_pkthdr});}' unless defined(&m_pkthdr);
    eval 'sub m_ext () { ($M_dat->{MH}->{MH_dat}->{MH_ext});}' unless defined(&m_ext);
    eval 'sub m_pktdat () { ($M_dat->{MH}->{MH_dat}->{MH_databuf});}' unless defined(&m_pktdat);
    eval 'sub m_dat () { ($M_dat->{M_databuf});}' unless defined(&m_dat);
    eval 'sub M_EXT () {0x1;}' unless defined(&M_EXT);
    eval 'sub M_PKTHDR () {0x2;}' unless defined(&M_PKTHDR);
    eval 'sub M_EOR () {0x4;}' unless defined(&M_EOR);
    eval 'sub M_RDONLY () {0x8;}' unless defined(&M_RDONLY);
    eval 'sub M_BCAST () {0x10;}' unless defined(&M_BCAST);
    eval 'sub M_MCAST () {0x20;}' unless defined(&M_MCAST);
    eval 'sub M_PROMISC () {0x40;}' unless defined(&M_PROMISC);
    eval 'sub M_VLANTAG () {0x80;}' unless defined(&M_VLANTAG);
    eval 'sub M_FLOWID () {0x100;}' unless defined(&M_FLOWID);
    eval 'sub M_NOFREE () {0x200;}' unless defined(&M_NOFREE);
    eval 'sub M_PROTO1 () {0x1000;}' unless defined(&M_PROTO1);
    eval 'sub M_PROTO2 () {0x2000;}' unless defined(&M_PROTO2);
    eval 'sub M_PROTO3 () {0x4000;}' unless defined(&M_PROTO3);
    eval 'sub M_PROTO4 () {0x8000;}' unless defined(&M_PROTO4);
    eval 'sub M_PROTO5 () {0x10000;}' unless defined(&M_PROTO5);
    eval 'sub M_PROTO6 () {0x20000;}' unless defined(&M_PROTO6);
    eval 'sub M_PROTO7 () {0x40000;}' unless defined(&M_PROTO7);
    eval 'sub M_PROTO8 () {0x80000;}' unless defined(&M_PROTO8);
    eval 'sub M_PROTO9 () {0x100000;}' unless defined(&M_PROTO9);
    eval 'sub M_PROTO10 () {0x200000;}' unless defined(&M_PROTO10);
    eval 'sub M_PROTO11 () {0x400000;}' unless defined(&M_PROTO11);
    eval 'sub M_PROTO12 () {0x800000;}' unless defined(&M_PROTO12);
    eval 'sub M_PROTOFLAGS () {( &M_PROTO1| &M_PROTO2| &M_PROTO3| &M_PROTO4| &M_PROTO5| &M_PROTO6| &M_PROTO7| &M_PROTO8|  &M_PROTO9| &M_PROTO10| &M_PROTO11| &M_PROTO12);}' unless defined(&M_PROTOFLAGS);
    eval 'sub M_COPYFLAGS () {( &M_PKTHDR| &M_EOR| &M_RDONLY| &M_BCAST| &M_MCAST| &M_VLANTAG| &M_PROMISC|  &M_PROTOFLAGS);}' unless defined(&M_COPYFLAGS);
    eval 'sub M_FLAG_BITS () {"\\20\\1M_EXT\\2M_PKTHDR\\3M_EOR\\4M_RDONLY\\5M_BCAST\\6M_MCAST" "\\7M_PROMISC\\10M_VLANTAG\\11M_FLOWID";}' unless defined(&M_FLAG_BITS);
    eval 'sub M_FLAG_PROTOBITS () {"\\15M_PROTO1\\16M_PROTO2\\17M_PROTO3\\20M_PROTO4\\21M_PROTO5" "\\22M_PROTO6\\23M_PROTO7\\24M_PROTO8\\25M_PROTO9\\26M_PROTO10" "\\27M_PROTO11\\30M_PROTO12";}' unless defined(&M_FLAG_PROTOBITS);
    eval 'sub M_FLAG_PRINTF () {( &M_FLAG_BITS  &M_FLAG_PROTOBITS);}' unless defined(&M_FLAG_PRINTF);
    eval 'sub M_HASHTYPE_NONE () {0;}' unless defined(&M_HASHTYPE_NONE);
    eval 'sub M_HASHTYPE_RSS_IPV4 () {1;}' unless defined(&M_HASHTYPE_RSS_IPV4);
    eval 'sub M_HASHTYPE_RSS_TCP_IPV4 () {2;}' unless defined(&M_HASHTYPE_RSS_TCP_IPV4);
    eval 'sub M_HASHTYPE_RSS_IPV6 () {3;}' unless defined(&M_HASHTYPE_RSS_IPV6);
    eval 'sub M_HASHTYPE_RSS_TCP_IPV6 () {4;}' unless defined(&M_HASHTYPE_RSS_TCP_IPV6);
    eval 'sub M_HASHTYPE_RSS_IPV6_EX () {5;}' unless defined(&M_HASHTYPE_RSS_IPV6_EX);
    eval 'sub M_HASHTYPE_RSS_TCP_IPV6_EX () {6;}' unless defined(&M_HASHTYPE_RSS_TCP_IPV6_EX);
    eval 'sub M_HASHTYPE_OPAQUE () {255;}' unless defined(&M_HASHTYPE_OPAQUE);
    eval 'sub M_HASHTYPE_CLEAR {
        my($m) = @_;
	    eval q((($m)-> ($m_pkthdr->{rsstype}) = 0));
    }' unless defined(&M_HASHTYPE_CLEAR);
    eval 'sub M_HASHTYPE_GET {
        my($m) = @_;
	    eval q((($m)-> ($m_pkthdr->{rsstype})));
    }' unless defined(&M_HASHTYPE_GET);
    eval 'sub M_HASHTYPE_SET {
        my($m, $v) = @_;
	    eval q((($m)-> ($m_pkthdr->{rsstype}) = ($v)));
    }' unless defined(&M_HASHTYPE_SET);
    eval 'sub M_HASHTYPE_TEST {
        my($m, $v) = @_;
	    eval q(( &M_HASHTYPE_GET($m) == ($v)));
    }' unless defined(&M_HASHTYPE_TEST);
    eval 'sub QOS_DSCP_CS0 () {0x;}' unless defined(&QOS_DSCP_CS0);
    eval 'sub QOS_DSCP_DEF () { &QOS_DSCP_CS0;}' unless defined(&QOS_DSCP_DEF);
    eval 'sub QOS_DSCP_CS1 () {0x20;}' unless defined(&QOS_DSCP_CS1);
    eval 'sub QOS_DSCP_AF11 () {0x28;}' unless defined(&QOS_DSCP_AF11);
    eval 'sub QOS_DSCP_AF12 () {0x30;}' unless defined(&QOS_DSCP_AF12);
    eval 'sub QOS_DSCP_AF13 () {0x38;}' unless defined(&QOS_DSCP_AF13);
    eval 'sub QOS_DSCP_CS2 () {0x40;}' unless defined(&QOS_DSCP_CS2);
    eval 'sub QOS_DSCP_AF21 () {0x48;}' unless defined(&QOS_DSCP_AF21);
    eval 'sub QOS_DSCP_AF22 () {0x50;}' unless defined(&QOS_DSCP_AF22);
    eval 'sub QOS_DSCP_AF23 () {0x58;}' unless defined(&QOS_DSCP_AF23);
    eval 'sub QOS_DSCP_CS3 () {0x60;}' unless defined(&QOS_DSCP_CS3);
    eval 'sub QOS_DSCP_AF31 () {0x68;}' unless defined(&QOS_DSCP_AF31);
    eval 'sub QOS_DSCP_AF32 () {0x70;}' unless defined(&QOS_DSCP_AF32);
    eval 'sub QOS_DSCP_AF33 () {0x78;}' unless defined(&QOS_DSCP_AF33);
    eval 'sub QOS_DSCP_CS4 () {0x80;}' unless defined(&QOS_DSCP_CS4);
    eval 'sub QOS_DSCP_AF41 () {0x88;}' unless defined(&QOS_DSCP_AF41);
    eval 'sub QOS_DSCP_AF42 () {0x90;}' unless defined(&QOS_DSCP_AF42);
    eval 'sub QOS_DSCP_AF43 () {0x98;}' unless defined(&QOS_DSCP_AF43);
    eval 'sub QOS_DSCP_CS5 () {0xa0;}' unless defined(&QOS_DSCP_CS5);
    eval 'sub QOS_DSCP_EF () {0xb8;}' unless defined(&QOS_DSCP_EF);
    eval 'sub QOS_DSCP_CS6 () {0xc0;}' unless defined(&QOS_DSCP_CS6);
    eval 'sub QOS_DSCP_CS7 () {0xe0;}' unless defined(&QOS_DSCP_CS7);
    eval 'sub EXT_CLUSTER () {1;}' unless defined(&EXT_CLUSTER);
    eval 'sub EXT_SFBUF () {2;}' unless defined(&EXT_SFBUF);
    eval 'sub EXT_JUMBOP () {3;}' unless defined(&EXT_JUMBOP);
    eval 'sub EXT_JUMBO9 () {4;}' unless defined(&EXT_JUMBO9);
    eval 'sub EXT_JUMBO16 () {5;}' unless defined(&EXT_JUMBO16);
    eval 'sub EXT_PACKET () {6;}' unless defined(&EXT_PACKET);
    eval 'sub EXT_MBUF () {7;}' unless defined(&EXT_MBUF);
    eval 'sub EXT_VENDOR1 () {224;}' unless defined(&EXT_VENDOR1);
    eval 'sub EXT_VENDOR2 () {225;}' unless defined(&EXT_VENDOR2);
    eval 'sub EXT_VENDOR3 () {226;}' unless defined(&EXT_VENDOR3);
    eval 'sub EXT_VENDOR4 () {227;}' unless defined(&EXT_VENDOR4);
    eval 'sub EXT_EXP1 () {244;}' unless defined(&EXT_EXP1);
    eval 'sub EXT_EXP2 () {245;}' unless defined(&EXT_EXP2);
    eval 'sub EXT_EXP3 () {246;}' unless defined(&EXT_EXP3);
    eval 'sub EXT_EXP4 () {247;}' unless defined(&EXT_EXP4);
    eval 'sub EXT_NET_DRV () {252;}' unless defined(&EXT_NET_DRV);
    eval 'sub EXT_MOD_TYPE () {253;}' unless defined(&EXT_MOD_TYPE);
    eval 'sub EXT_DISPOSABLE () {254;}' unless defined(&EXT_DISPOSABLE);
    eval 'sub EXT_EXTREF () {255;}' unless defined(&EXT_EXTREF);
    eval 'sub EXT_FLAG_EMBREF () {0x1;}' unless defined(&EXT_FLAG_EMBREF);
    eval 'sub EXT_FLAG_EXTREF () {0x2;}' unless defined(&EXT_FLAG_EXTREF);
    eval 'sub EXT_FLAG_NOFREE () {0x10;}' unless defined(&EXT_FLAG_NOFREE);
    eval 'sub EXT_FLAG_VENDOR1 () {0x10000;}' unless defined(&EXT_FLAG_VENDOR1);
    eval 'sub EXT_FLAG_VENDOR2 () {0x20000;}' unless defined(&EXT_FLAG_VENDOR2);
    eval 'sub EXT_FLAG_VENDOR3 () {0x40000;}' unless defined(&EXT_FLAG_VENDOR3);
    eval 'sub EXT_FLAG_VENDOR4 () {0x80000;}' unless defined(&EXT_FLAG_VENDOR4);
    eval 'sub EXT_FLAG_EXP1 () {0x100000;}' unless defined(&EXT_FLAG_EXP1);
    eval 'sub EXT_FLAG_EXP2 () {0x200000;}' unless defined(&EXT_FLAG_EXP2);
    eval 'sub EXT_FLAG_EXP3 () {0x400000;}' unless defined(&EXT_FLAG_EXP3);
    eval 'sub EXT_FLAG_EXP4 () {0x800000;}' unless defined(&EXT_FLAG_EXP4);
    eval 'sub EXT_FLAG_BITS () {"\\20\\1EXT_FLAG_EMBREF\\2EXT_FLAG_EXTREF\\5EXT_FLAG_NOFREE" "\\21EXT_FLAG_VENDOR1\\22EXT_FLAG_VENDOR2\\23EXT_FLAG_VENDOR3" "\\24EXT_FLAG_VENDOR4\\25EXT_FLAG_EXP1\\26EXT_FLAG_EXP2\\27EXT_FLAG_EXP3" "\\30EXT_FLAG_EXP4";}' unless defined(&EXT_FLAG_BITS);
    eval 'sub EXT_FREE_OK () {0;}' unless defined(&EXT_FREE_OK);
    eval 'sub CSUM_IP () {0x1;}' unless defined(&CSUM_IP);
    eval 'sub CSUM_IP_UDP () {0x2;}' unless defined(&CSUM_IP_UDP);
    eval 'sub CSUM_IP_TCP () {0x4;}' unless defined(&CSUM_IP_TCP);
    eval 'sub CSUM_IP_SCTP () {0x8;}' unless defined(&CSUM_IP_SCTP);
    eval 'sub CSUM_IP_TSO () {0x10;}' unless defined(&CSUM_IP_TSO);
    eval 'sub CSUM_IP_ISCSI () {0x20;}' unless defined(&CSUM_IP_ISCSI);
    eval 'sub CSUM_IP6_UDP () {0x200;}' unless defined(&CSUM_IP6_UDP);
    eval 'sub CSUM_IP6_TCP () {0x400;}' unless defined(&CSUM_IP6_TCP);
    eval 'sub CSUM_IP6_SCTP () {0x800;}' unless defined(&CSUM_IP6_SCTP);
    eval 'sub CSUM_IP6_TSO () {0x1000;}' unless defined(&CSUM_IP6_TSO);
    eval 'sub CSUM_IP6_ISCSI () {0x2000;}' unless defined(&CSUM_IP6_ISCSI);
    eval 'sub CSUM_L3_CALC () {0x1000000;}' unless defined(&CSUM_L3_CALC);
    eval 'sub CSUM_L3_VALID () {0x2000000;}' unless defined(&CSUM_L3_VALID);
    eval 'sub CSUM_L4_CALC () {0x4000000;}' unless defined(&CSUM_L4_CALC);
    eval 'sub CSUM_L4_VALID () {0x8000000;}' unless defined(&CSUM_L4_VALID);
    eval 'sub CSUM_L5_CALC () {0x10000000;}' unless defined(&CSUM_L5_CALC);
    eval 'sub CSUM_L5_VALID () {0x20000000;}' unless defined(&CSUM_L5_VALID);
    eval 'sub CSUM_COALESED () {0x40000000;}' unless defined(&CSUM_COALESED);
    eval 'sub CSUM_BITS () {"\\20\\1CSUM_IP\\2CSUM_IP_UDP\\3CSUM_IP_TCP\\4CSUM_IP_SCTP\\5CSUM_IP_TSO" "\\6CSUM_IP_ISCSI" "\\12CSUM_IP6_UDP\\13CSUM_IP6_TCP\\14CSUM_IP6_SCTP\\15CSUM_IP6_TSO" "\\16CSUM_IP6_ISCSI" "\\31CSUM_L3_CALC\\32CSUM_L3_VALID\\33CSUM_L4_CALC\\34CSUM_L4_VALID" "\\35CSUM_L5_CALC\\36CSUM_L5_VALID\\37CSUM_COALESED";}' unless defined(&CSUM_BITS);
    eval 'sub CSUM_IP_CHECKED () { &CSUM_L3_CALC;}' unless defined(&CSUM_IP_CHECKED);
    eval 'sub CSUM_IP_VALID () { &CSUM_L3_VALID;}' unless defined(&CSUM_IP_VALID);
    eval 'sub CSUM_DATA_VALID () { &CSUM_L4_VALID;}' unless defined(&CSUM_DATA_VALID);
    eval 'sub CSUM_PSEUDO_HDR () { &CSUM_L4_CALC;}' unless defined(&CSUM_PSEUDO_HDR);
    eval 'sub CSUM_SCTP_VALID () { &CSUM_L4_VALID;}' unless defined(&CSUM_SCTP_VALID);
    eval 'sub CSUM_DELAY_DATA () {( &CSUM_TCP| &CSUM_UDP);}' unless defined(&CSUM_DELAY_DATA);
    eval 'sub CSUM_DELAY_IP () { &CSUM_IP;}' unless defined(&CSUM_DELAY_IP);
    eval 'sub CSUM_DELAY_DATA_IPV6 () {( &CSUM_TCP_IPV6| &CSUM_UDP_IPV6);}' unless defined(&CSUM_DELAY_DATA_IPV6);
    eval 'sub CSUM_DATA_VALID_IPV6 () { &CSUM_DATA_VALID;}' unless defined(&CSUM_DATA_VALID_IPV6);
    eval 'sub CSUM_TCP () { &CSUM_IP_TCP;}' unless defined(&CSUM_TCP);
    eval 'sub CSUM_UDP () { &CSUM_IP_UDP;}' unless defined(&CSUM_UDP);
    eval 'sub CSUM_SCTP () { &CSUM_IP_SCTP;}' unless defined(&CSUM_SCTP);
    eval 'sub CSUM_TSO () {( &CSUM_IP_TSO| &CSUM_IP6_TSO);}' unless defined(&CSUM_TSO);
    eval 'sub CSUM_UDP_IPV6 () { &CSUM_IP6_UDP;}' unless defined(&CSUM_UDP_IPV6);
    eval 'sub CSUM_TCP_IPV6 () { &CSUM_IP6_TCP;}' unless defined(&CSUM_TCP_IPV6);
    eval 'sub CSUM_SCTP_IPV6 () { &CSUM_IP6_SCTP;}' unless defined(&CSUM_SCTP_IPV6);
    eval 'sub CSUM_FRAGMENT () {0x;}' unless defined(&CSUM_FRAGMENT);
    eval 'sub MT_NOTMBUF () {0;}' unless defined(&MT_NOTMBUF);
    eval 'sub MT_DATA () {1;}' unless defined(&MT_DATA);
    eval 'sub MT_HEADER () { &MT_DATA;}' unless defined(&MT_HEADER);
    eval 'sub MT_VENDOR1 () {4;}' unless defined(&MT_VENDOR1);
    eval 'sub MT_VENDOR2 () {5;}' unless defined(&MT_VENDOR2);
    eval 'sub MT_VENDOR3 () {6;}' unless defined(&MT_VENDOR3);
    eval 'sub MT_VENDOR4 () {7;}' unless defined(&MT_VENDOR4);
    eval 'sub MT_SONAME () {8;}' unless defined(&MT_SONAME);
    eval 'sub MT_EXP1 () {9;}' unless defined(&MT_EXP1);
    eval 'sub MT_EXP2 () {10;}' unless defined(&MT_EXP2);
    eval 'sub MT_EXP3 () {11;}' unless defined(&MT_EXP3);
    eval 'sub MT_EXP4 () {12;}' unless defined(&MT_EXP4);
    eval 'sub MT_CONTROL () {14;}' unless defined(&MT_CONTROL);
    eval 'sub MT_OOBDATA () {15;}' unless defined(&MT_OOBDATA);
    eval 'sub MT_NTYPES () {16;}' unless defined(&MT_NTYPES);
    eval 'sub MT_NOINIT () {255;}' unless defined(&MT_NOINIT);
    eval 'sub MBTOM {
        my($how) = @_;
	    eval q(($how));
    }' unless defined(&MBTOM);
    eval 'sub M_DONTWAIT () { &M_NOWAIT;}' unless defined(&M_DONTWAIT);
    eval 'sub M_TRYWAIT () { &M_WAITOK;}' unless defined(&M_TRYWAIT);
    eval 'sub M_WAIT () { &M_WAITOK;}' unless defined(&M_WAIT);
    eval 'sub MBUF_MEM_NAME () {"mbuf";}' unless defined(&MBUF_MEM_NAME);
    eval 'sub MBUF_CLUSTER_MEM_NAME () {"mbuf_cluster";}' unless defined(&MBUF_CLUSTER_MEM_NAME);
    eval 'sub MBUF_PACKET_MEM_NAME () {"mbuf_packet";}' unless defined(&MBUF_PACKET_MEM_NAME);
    eval 'sub MBUF_JUMBOP_MEM_NAME () {"mbuf_jumbo_page";}' unless defined(&MBUF_JUMBOP_MEM_NAME);
    eval 'sub MBUF_JUMBO9_MEM_NAME () {"mbuf_jumbo_9k";}' unless defined(&MBUF_JUMBO9_MEM_NAME);
    eval 'sub MBUF_JUMBO16_MEM_NAME () {"mbuf_jumbo_16k";}' unless defined(&MBUF_JUMBO16_MEM_NAME);
    eval 'sub MBUF_TAG_MEM_NAME () {"mbuf_tag";}' unless defined(&MBUF_TAG_MEM_NAME);
    eval 'sub MBUF_EXTREFCNT_MEM_NAME () {"mbuf_ext_refcnt";}' unless defined(&MBUF_EXTREFCNT_MEM_NAME);
    if(defined(&_KERNEL)) {
	if(defined(&WITNESS)) {
	    eval 'sub MBUF_CHECKSLEEP {
	        my($how) = @_;
    		eval q( &do {  &if ($how ==  &M_WAITOK)  &WITNESS_WARN( &WARN_GIANTOK |  &WARN_SLEEPOK,  &NULL, \\"Sleeping in \\\\\\"%s\\\\\\"\\",  &__func__); }  &while (0));
	    }' unless defined(&MBUF_CHECKSLEEP);
	} else {
	    eval 'sub MBUF_CHECKSLEEP {
	        my($how) = @_;
    		eval q();
	    }' unless defined(&MBUF_CHECKSLEEP);
	}
# some #ifdef were dropped here -- fill in the blanks
	eval 'sub m_gettype {
	    my($size) = @_;
    	    eval q({ \'int\'  &type;  &switch ($size) {  &case  &MSIZE:  &type =  &EXT_MBUF;  &break;  &case  &MCLBYTES:  &type =  &EXT_CLUSTER;  &break;  &case  &MJUM9BYTES:  &type =  &EXT_JUMBO9;  &break;  &case  &MJUM16BYTES:  &type =  &EXT_JUMBO16;  &break;  &default:  &panic(\\"%s: invalid cluster size %d\\",  &__func__, $size); } ( &type); });
	}' unless defined(&m_gettype);
# some #ifdef were dropped here -- fill in the blanks
	eval 'sub m_getzone {
	    my($size) = @_;
    	    eval q({  &uma_zone_t  &zone;  &switch ($size) {  &case  &MCLBYTES:  &zone =  &zone_clust;  &break;  &case  &MJUM9BYTES:  &zone =  &zone_jumbo9;  &break;  &case  &MJUM16BYTES:  &zone =  &zone_jumbo16;  &break;  &default:  &panic(\\"%s: invalid cluster size %d\\",  &__func__, $size); } ( &zone); });
	}' unless defined(&m_getzone);
	eval 'sub m_get {
	    my($how,$type) = @_;
    	    eval q({ \'struct mb_args\'  &args;  ($args->{flags}) = 0;  ($args->{type}) = $type; ( &uma_zalloc_arg( &zone_mbuf,  &args, $how)); });
	}' unless defined(&m_get);
	eval 'sub m_gethdr {
	    my($how,$type) = @_;
    	    eval q({ \'struct mb_args\'  &args;  ($args->{flags}) =  &M_PKTHDR;  ($args->{type}) = $type; ( &uma_zalloc_arg( &zone_mbuf,  &args, $how)); });
	}' unless defined(&m_gethdr);
	eval 'sub m_getcl {
	    my($how,$type,$flags) = @_;
    	    eval q({ \'struct mb_args\'  &args;  ($args->{flags}) = $flags;  ($args->{type}) = $type; ( &uma_zalloc_arg( &zone_pack,  &args, $how)); });
	}' unless defined(&m_getcl);
	eval 'sub m_clget {
	    my($m,$how) = @_;
    	    eval q({  &if ( ($m->{m_flags}) &  &M_EXT)  &printf(\\"%s: %p mbuf already has cluster\\\\n\\",  &__func__, $m);  ($m->{m_ext}->{ext_buf}) =  &NULL;  &uma_zalloc_arg( &zone_clust, $m, $how);  &if (($how &  &M_NOWAIT)  && ( ($m->{m_ext}->{ext_buf}) ==  &NULL)) {  &zone_drain( &zone_pack);  &uma_zalloc_arg( &zone_clust, $m, $how); } });
	}' unless defined(&m_clget);
# some #ifdef were dropped here -- fill in the blanks
	eval 'sub m_cljset {
	    my($m,$cl,$type) = @_;
    	    eval q({  &uma_zone_t  &zone; \'int\'  &size;  &switch ($type) {  &case  &EXT_CLUSTER:  &size =  &MCLBYTES;  &zone =  &zone_clust;  &break;  &case  &EXT_JUMBO9:  &size =  &MJUM9BYTES;  &zone =  &zone_jumbo9;  &break;  &case  &EXT_JUMBO16:  &size =  &MJUM16BYTES;  &zone =  &zone_jumbo16;  &break;  &default:  &panic(\\"%s: unknown cluster type %d\\",  &__func__, $type);  &break; }  ($m->{m_data}) =  ($m->{m_ext}->{ext_buf}) = $cl;  ($m->{m_ext}->{ext_free}) =  ($m->{m_ext}->{ext_arg1}) =  ($m->{m_ext}->{ext_arg2}) =  &NULL;  ($m->{m_ext}->{ext_size}) =  &size;  ($m->{m_ext}->{ext_type}) = $type;  ($m->{m_ext}->{ext_flags}) = 0;  ($m->{m_ext}->{ref_cnt}) =  &uma_find_refcnt( &zone, $cl);  ($m->{m_flags}) |=  &M_EXT; });
	}' unless defined(&m_cljset);
	eval 'sub m_chtype {
	    my($m,$new_type) = @_;
    	    eval q({  ($m->{m_type}) = $new_type; });
	}' unless defined(&m_chtype);
	eval 'sub m_clrprotoflags {
	    my($m) = @_;
    	    eval q({  ($m->{m_flags}) &= ~ &M_PROTOFLAGS; });
	}' unless defined(&m_clrprotoflags);
	eval 'sub m_last {
	    my($m) = @_;
    	    eval q({  &while ( ($m->{m_next})) $m =  ($m->{m_next}); ($m); });
	}' unless defined(&m_last);
	eval 'sub M_MOVE_PKTHDR {
	    my($to, $from) = @_;
    	    eval q( &m_move_pkthdr(($to), ($from)));
	}' unless defined(&M_MOVE_PKTHDR);
	eval 'sub MGET {
	    my($m, $how, $type) = @_;
    	    eval q((($m) =  &m_get(($how), ($type))));
	}' unless defined(&MGET);
	eval 'sub MGETHDR {
	    my($m, $how, $type) = @_;
    	    eval q((($m) =  &m_gethdr(($how), ($type))));
	}' unless defined(&MGETHDR);
	eval 'sub MCLGET {
	    my($m, $how) = @_;
    	    eval q( &m_clget(($m), ($how)));
	}' unless defined(&MCLGET);
	eval 'sub MEXTADD {
	    my($m, $buf, $size, $free, $arg1, $arg2, $flags, $type) = @_;
    	    eval q(( &void ) &m_extadd(, ($buf), ($size), ($free), ($arg1), ($arg2), ($flags), ($type),  &M_NOWAIT));
	}' unless defined(&MEXTADD);
	eval 'sub m_getm {
	    my($m, $len, $how, $type) = @_;
    	    eval q( &m_getm2(($m), ($len), ($how), ($type),  &M_PKTHDR));
	}' unless defined(&m_getm);
	eval 'sub M_WRITABLE {
	    my($m) = @_;
    	    eval q((!(($m)-> &m_flags &  &M_RDONLY)  && (!((($m)-> &m_flags &  &M_EXT)) || (*(($m)-> ($m_ext->{ref_cnt})) == 1)) ));
	}' unless defined(&M_WRITABLE);
	eval 'sub M_ASSERTPKTHDR {
	    my($m) = @_;
    	    eval q( &KASSERT(($m) !=  &NULL  && ($m)-> &m_flags &  &M_PKTHDR, (\\"%s: no mbuf packet header!\\",  &__func__)));
	}' unless defined(&M_ASSERTPKTHDR);
	eval 'sub M_ASSERTVALID {
	    my($m) = @_;
    	    eval q( &KASSERT((($m)-> &m_flags & 0) == 0, (\\"%s: attempted use of a free mbuf!\\",  &__func__)));
	}' unless defined(&M_ASSERTVALID);
	eval 'sub M_ALIGN {
	    my($m, $len) = @_;
    	    eval q( &do {  &KASSERT(!(($m)-> &m_flags & ( &M_PKTHDR| &M_EXT)), (\\"%s: M_ALIGN not normal mbuf\\",  &__func__));  &KASSERT(($m)-> &m_data == ($m)-> &m_dat, (\\"%s: M_ALIGN not a virgin mbuf\\",  &__func__)); ($m)-> &m_data += ( &MLEN - ($len)) & ~($sizeof{\'long\'} - 1); }  &while (0));
	}' unless defined(&M_ALIGN);
	eval 'sub MH_ALIGN {
	    my($m, $len) = @_;
    	    eval q( &do {  &KASSERT(($m)-> &m_flags &  &M_PKTHDR  && !(($m)-> &m_flags &  &M_EXT), (\\"%s: MH_ALIGN not PKTHDR mbuf\\",  &__func__));  &KASSERT(($m)-> &m_data == ($m)-> &m_pktdat, (\\"%s: MH_ALIGN not a virgin mbuf\\",  &__func__)); ($m)-> &m_data += ( &MHLEN - ($len)) & ~($sizeof{\'long\'} - 1); }  &while (0));
	}' unless defined(&MH_ALIGN);
	eval 'sub MEXT_ALIGN {
	    my($m, $len) = @_;
    	    eval q( &do {  &KASSERT(($m)-> &m_flags &  &M_EXT, (\\"%s: MEXT_ALIGN not an M_EXT mbuf\\",  &__func__));  &KASSERT(($m)-> &m_data == ($m)-> ($m_ext->{ext_buf}), (\\"%s: MEXT_ALIGN not a virgin mbuf\\",  &__func__)); ($m)-> &m_data += (($m)-> ($m_ext->{ext_size}) - ($len)) & ~($sizeof{\'long\'} - 1); }  &while (0));
	}' unless defined(&MEXT_ALIGN);
	eval 'sub M_LEADINGSPACE {
	    my($m) = @_;
    	    eval q((($m)-> &m_flags &  &M_EXT ? ( &M_WRITABLE($m) ? ($m)-> &m_data - ($m)-> ($m_ext->{ext_buf}) : 0): ($m)-> &m_flags &  &M_PKTHDR ? ($m)-> &m_data - ($m)-> &m_pktdat : ($m)-> &m_data - ($m)-> &m_dat));
	}' unless defined(&M_LEADINGSPACE);
	eval 'sub M_TRAILINGSPACE {
	    my($m) = @_;
    	    eval q((($m)-> &m_flags &  &M_EXT ? ( &M_WRITABLE($m) ? ($m)-> ($m_ext->{ext_buf}) + ($m)-> ($m_ext->{ext_size})	 - (($m)-> &m_data + ($m)-> &m_len) : 0) : ($m)-> $m_dat[ &MLEN] - (($m)-> &m_data + ($m)-> &m_len)));
	}' unless defined(&M_TRAILINGSPACE);
	eval 'sub M_PREPEND {
	    my($m, $plen, $how) = @_;
    	    eval q( &do { \'struct mbuf\' ** &_mmp = ($m); \'struct mbuf\' * &_mm = * &_mmp; \'int\'  &_mplen = ($plen); \'int\'  &__mhow = ($how);  &MBUF_CHECKSLEEP($how);  &if ( &M_LEADINGSPACE( &_mm) >=  &_mplen) {  ($_$mm->{m_data}) -=  &_mplen;  ($_$mm->{m_len}) +=  &_mplen; }  &else  &_mm =  &m_prepend( &_mm,  &_mplen,  &__mhow);  &if ( &_mm !=  &NULL  &&  ($_$mm->{m_flags}) &  &M_PKTHDR)  ($_$mm->{m_pkthdr}->{len}) +=  &_mplen; * &_mmp =  &_mm; }  &while (0));
	}' unless defined(&M_PREPEND);
	eval 'sub MCHTYPE {
	    my($m, $t) = @_;
    	    eval q( &m_chtype(($m), ($t)));
	}' unless defined(&MCHTYPE);
	eval 'sub M_COPYALL () {1000000000;}' unless defined(&M_COPYALL);
	eval 'sub m_copy {
	    my($m, $o, $l) = @_;
    	    eval q( &m_copym(($m), ($o), ($l),  &M_NOWAIT));
	}' unless defined(&m_copy);
	eval 'sub MTAG_PERSISTENT () {0x800;}' unless defined(&MTAG_PERSISTENT);
	eval 'sub PACKET_TAG_NONE () {0;}' unless defined(&PACKET_TAG_NONE);
	eval 'sub PACKET_TAG_IPSEC_IN_DONE () {1;}' unless defined(&PACKET_TAG_IPSEC_IN_DONE);
	eval 'sub PACKET_TAG_IPSEC_OUT_DONE () {2;}' unless defined(&PACKET_TAG_IPSEC_OUT_DONE);
	eval 'sub PACKET_TAG_IPSEC_IN_CRYPTO_DONE () {3;}' unless defined(&PACKET_TAG_IPSEC_IN_CRYPTO_DONE);
	eval 'sub PACKET_TAG_IPSEC_OUT_CRYPTO_NEEDED () {4;}' unless defined(&PACKET_TAG_IPSEC_OUT_CRYPTO_NEEDED);
	eval 'sub PACKET_TAG_IPSEC_IN_COULD_DO_CRYPTO () {5;}' unless defined(&PACKET_TAG_IPSEC_IN_COULD_DO_CRYPTO);
	eval 'sub PACKET_TAG_IPSEC_PENDING_TDB () {6;}' unless defined(&PACKET_TAG_IPSEC_PENDING_TDB);
	eval 'sub PACKET_TAG_BRIDGE () {7;}' unless defined(&PACKET_TAG_BRIDGE);
	eval 'sub PACKET_TAG_GIF () {8;}' unless defined(&PACKET_TAG_GIF);
	eval 'sub PACKET_TAG_GRE () {9;}' unless defined(&PACKET_TAG_GRE);
	eval 'sub PACKET_TAG_IN_PACKET_CHECKSUM () {10;}' unless defined(&PACKET_TAG_IN_PACKET_CHECKSUM);
	eval 'sub PACKET_TAG_ENCAP () {11;}' unless defined(&PACKET_TAG_ENCAP);
	eval 'sub PACKET_TAG_IPSEC_SOCKET () {12;}' unless defined(&PACKET_TAG_IPSEC_SOCKET);
	eval 'sub PACKET_TAG_IPSEC_HISTORY () {13;}' unless defined(&PACKET_TAG_IPSEC_HISTORY);
	eval 'sub PACKET_TAG_IPV6_INPUT () {14;}' unless defined(&PACKET_TAG_IPV6_INPUT);
	eval 'sub PACKET_TAG_DUMMYNET () {15;}' unless defined(&PACKET_TAG_DUMMYNET);
	eval 'sub PACKET_TAG_DIVERT () {17;}' unless defined(&PACKET_TAG_DIVERT);
	eval 'sub PACKET_TAG_IPFORWARD () {18;}' unless defined(&PACKET_TAG_IPFORWARD);
	eval 'sub PACKET_TAG_MACLABEL () {(19|  &MTAG_PERSISTENT);}' unless defined(&PACKET_TAG_MACLABEL);
	eval 'sub PACKET_TAG_PF () {(21|  &MTAG_PERSISTENT);}' unless defined(&PACKET_TAG_PF);
	eval 'sub PACKET_TAG_RTSOCKFAM () {25;}' unless defined(&PACKET_TAG_RTSOCKFAM);
	eval 'sub PACKET_TAG_IPOPTIONS () {27;}' unless defined(&PACKET_TAG_IPOPTIONS);
	eval 'sub PACKET_TAG_CARP () {28;}' unless defined(&PACKET_TAG_CARP);
	eval 'sub PACKET_TAG_IPSEC_NAT_T_PORTS () {29;}' unless defined(&PACKET_TAG_IPSEC_NAT_T_PORTS);
	eval 'sub PACKET_TAG_ND_OUTGOING () {30;}' unless defined(&PACKET_TAG_ND_OUTGOING);
	eval 'sub MTAG_ABI_COMPAT () {0;}' unless defined(&MTAG_ABI_COMPAT);
	eval 'sub m_tag_get {
	    my($type,$length,$wait) = @_;
    	    eval q({ ( &m_tag_alloc( &MTAG_ABI_COMPAT, $type, $length, $wait)); });
	}' unless defined(&m_tag_get);
	eval 'sub m_tag_find {
	    my($m,$type,$start) = @_;
    	    eval q({ ( &SLIST_EMPTY( ($m->{m_pkthdr}->{tags})) ?  &NULL :  &m_tag_locate($m,  &MTAG_ABI_COMPAT, $type, $start)); });
	}' unless defined(&m_tag_find);
	eval 'sub m_free {
	    my($m) = @_;
    	    eval q({ \'struct mbuf\' * &n =  ($m->{m_next});  &if (( ($m->{m_flags}) & ( &M_PKTHDR| &M_NOFREE)) == ( &M_PKTHDR| &M_NOFREE))  &m_tag_delete_chain($m,  &NULL);  &if ( ($m->{m_flags}) &  &M_EXT)  &mb_free_ext($m);  &else  &if (( ($m->{m_flags}) &  &M_NOFREE) == 0)  &uma_zfree( &zone_mbuf, $m); ( &n); });
	}' unless defined(&m_free);
	eval 'sub M_GETFIB {
	    my($_m) = @_;
    	    eval q( &rt_m_getfib($_m));
	}' unless defined(&M_GETFIB);
	eval 'sub M_SETFIB {
	    my($_m, $_fib) = @_;
    	    eval q( &do {  &KASSERT(($_m)-> &m_flags &  &M_PKTHDR, (\\"Attempt to set FIB on non header mbuf.\\")); (($_m)-> ($m_pkthdr->{fibnum})) = ($_fib); }  &while (0));
	}' unless defined(&M_SETFIB);
    }
    if(defined(&MBUF_PROFILING)) {
	eval 'sub M_PROFILE {
	    my($m) = @_;
    	    eval q( &m_profile($m));
	}' unless defined(&M_PROFILE);
    } else {
	eval 'sub M_PROFILE {
	    my($m) = @_;
    	    eval q();
	}' unless defined(&M_PROFILE);
    }
}
1;
