require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__RESOLVE_H__)) {
    eval 'sub __RESOLVE_H__ () {1;}' unless defined(&__RESOLVE_H__);
    unless(defined(&ROKEN_LIB_FUNCTION)) {
	if(defined(&_WIN32)) {
	    eval 'sub ROKEN_LIB_FUNCTION () {1;}' unless defined(&ROKEN_LIB_FUNCTION);
	    eval 'sub ROKEN_LIB_CALL () { &__cdecl;}' unless defined(&ROKEN_LIB_CALL);
	} else {
	    eval 'sub ROKEN_LIB_FUNCTION () {1;}' unless defined(&ROKEN_LIB_FUNCTION);
	    eval 'sub ROKEN_LIB_CALL () {1;}' unless defined(&ROKEN_LIB_CALL);
	}
    }
    eval("sub rk_ns_c_in () { 1; }") unless defined(&rk_ns_c_in);
    eval("sub rk_ns_t_invalid () { 0; }") unless defined(&rk_ns_t_invalid);
    eval("sub rk_ns_t_a () { 1; }") unless defined(&rk_ns_t_a);
    eval("sub rk_ns_t_ns () { 2; }") unless defined(&rk_ns_t_ns);
    eval("sub rk_ns_t_md () { 3; }") unless defined(&rk_ns_t_md);
    eval("sub rk_ns_t_mf () { 4; }") unless defined(&rk_ns_t_mf);
    eval("sub rk_ns_t_cname () { 5; }") unless defined(&rk_ns_t_cname);
    eval("sub rk_ns_t_soa () { 6; }") unless defined(&rk_ns_t_soa);
    eval("sub rk_ns_t_mb () { 7; }") unless defined(&rk_ns_t_mb);
    eval("sub rk_ns_t_mg () { 8; }") unless defined(&rk_ns_t_mg);
    eval("sub rk_ns_t_mr () { 9; }") unless defined(&rk_ns_t_mr);
    eval("sub rk_ns_t_null () { 10; }") unless defined(&rk_ns_t_null);
    eval("sub rk_ns_t_wks () { 11; }") unless defined(&rk_ns_t_wks);
    eval("sub rk_ns_t_ptr () { 12; }") unless defined(&rk_ns_t_ptr);
    eval("sub rk_ns_t_hinfo () { 13; }") unless defined(&rk_ns_t_hinfo);
    eval("sub rk_ns_t_minfo () { 14; }") unless defined(&rk_ns_t_minfo);
    eval("sub rk_ns_t_mx () { 15; }") unless defined(&rk_ns_t_mx);
    eval("sub rk_ns_t_txt () { 16; }") unless defined(&rk_ns_t_txt);
    eval("sub rk_ns_t_rp () { 17; }") unless defined(&rk_ns_t_rp);
    eval("sub rk_ns_t_afsdb () { 18; }") unless defined(&rk_ns_t_afsdb);
    eval("sub rk_ns_t_x25 () { 19; }") unless defined(&rk_ns_t_x25);
    eval("sub rk_ns_t_isdn () { 20; }") unless defined(&rk_ns_t_isdn);
    eval("sub rk_ns_t_rt () { 21; }") unless defined(&rk_ns_t_rt);
    eval("sub rk_ns_t_nsap () { 22; }") unless defined(&rk_ns_t_nsap);
    eval("sub rk_ns_t_nsap_ptr () { 23; }") unless defined(&rk_ns_t_nsap_ptr);
    eval("sub rk_ns_t_sig () { 24; }") unless defined(&rk_ns_t_sig);
    eval("sub rk_ns_t_key () { 25; }") unless defined(&rk_ns_t_key);
    eval("sub rk_ns_t_px () { 26; }") unless defined(&rk_ns_t_px);
    eval("sub rk_ns_t_gpos () { 27; }") unless defined(&rk_ns_t_gpos);
    eval("sub rk_ns_t_aaaa () { 28; }") unless defined(&rk_ns_t_aaaa);
    eval("sub rk_ns_t_loc () { 29; }") unless defined(&rk_ns_t_loc);
    eval("sub rk_ns_t_nxt () { 30; }") unless defined(&rk_ns_t_nxt);
    eval("sub rk_ns_t_eid () { 31; }") unless defined(&rk_ns_t_eid);
    eval("sub rk_ns_t_nimloc () { 32; }") unless defined(&rk_ns_t_nimloc);
    eval("sub rk_ns_t_srv () { 33; }") unless defined(&rk_ns_t_srv);
    eval("sub rk_ns_t_atma () { 34; }") unless defined(&rk_ns_t_atma);
    eval("sub rk_ns_t_naptr () { 35; }") unless defined(&rk_ns_t_naptr);
    eval("sub rk_ns_t_kx () { 36; }") unless defined(&rk_ns_t_kx);
    eval("sub rk_ns_t_cert () { 37; }") unless defined(&rk_ns_t_cert);
    eval("sub rk_ns_t_a6 () { 38; }") unless defined(&rk_ns_t_a6);
    eval("sub rk_ns_t_dname () { 39; }") unless defined(&rk_ns_t_dname);
    eval("sub rk_ns_t_sink () { 40; }") unless defined(&rk_ns_t_sink);
    eval("sub rk_ns_t_opt () { 41; }") unless defined(&rk_ns_t_opt);
    eval("sub rk_ns_t_apl () { 42; }") unless defined(&rk_ns_t_apl);
    eval("sub rk_ns_t_ds () { 43; }") unless defined(&rk_ns_t_ds);
    eval("sub rk_ns_t_sshfp () { 44; }") unless defined(&rk_ns_t_sshfp);
    eval("sub rk_ns_t_tkey () { 249; }") unless defined(&rk_ns_t_tkey);
    eval("sub rk_ns_t_tsig () { 250; }") unless defined(&rk_ns_t_tsig);
    eval("sub rk_ns_t_ixfr () { 251; }") unless defined(&rk_ns_t_ixfr);
    eval("sub rk_ns_t_axfr () { 252; }") unless defined(&rk_ns_t_axfr);
    eval("sub rk_ns_t_mailb () { 253; }") unless defined(&rk_ns_t_mailb);
    eval("sub rk_ns_t_maila () { 254; }") unless defined(&rk_ns_t_maila);
    eval("sub rk_ns_t_any () { 255; }") unless defined(&rk_ns_t_any);
    eval("sub rk_ns_t_zxfr () { 256; }") unless defined(&rk_ns_t_zxfr);
    eval("sub rk_ns_t_max () { 65536; }") unless defined(&rk_ns_t_max);
    unless(defined(&MAXDNAME)) {
	eval 'sub MAXDNAME () {1025;}' unless defined(&MAXDNAME);
    }
    eval 'sub mx_record () { &rk_mx_record;}' unless defined(&mx_record);
    eval 'sub srv_record () { &rk_srv_record;}' unless defined(&srv_record);
    eval 'sub key_record () { &rk_key_record;}' unless defined(&key_record);
    eval 'sub sig_record () { &rk_sig_record;}' unless defined(&sig_record);
    eval 'sub cert_record () { &rk_cert_record;}' unless defined(&cert_record);
    eval 'sub sshfp_record () { &rk_sshfp_record;}' unless defined(&sshfp_record);
    eval 'sub rk_DNS_MAX_PACKET_SIZE () {0xffff;}' unless defined(&rk_DNS_MAX_PACKET_SIZE);
    eval 'sub rk_DNS_HEADER_RESPONSE_FLAG () {1;}' unless defined(&rk_DNS_HEADER_RESPONSE_FLAG);
    eval 'sub rk_DNS_HEADER_AUTHORITIVE_ANSWER () {2;}' unless defined(&rk_DNS_HEADER_AUTHORITIVE_ANSWER);
    eval 'sub rk_DNS_HEADER_TRUNCATED_MESSAGE () {4;}' unless defined(&rk_DNS_HEADER_TRUNCATED_MESSAGE);
    eval 'sub rk_DNS_HEADER_RECURSION_DESIRED () {8;}' unless defined(&rk_DNS_HEADER_RECURSION_DESIRED);
    eval 'sub rk_DNS_HEADER_RECURSION_AVAILABLE () {16;}' unless defined(&rk_DNS_HEADER_RECURSION_AVAILABLE);
    eval 'sub rk_DNS_HEADER_AUTHENTIC_DATA () {32;}' unless defined(&rk_DNS_HEADER_AUTHENTIC_DATA);
    eval 'sub rk_DNS_HEADER_CHECKING_DISABLED () {64;}' unless defined(&rk_DNS_HEADER_CHECKING_DISABLED);
    if(defined(&__cplusplus)) {
    }
    if(defined(&__cplusplus)) {
    }
}
1;
