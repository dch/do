require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__ROKEN_H__)) {
    eval 'sub __ROKEN_H__ () {1;}' unless defined(&__ROKEN_H__);
    require 'stdio.ph';
    require 'stdlib.ph';
    require 'stdarg.ph';
    require 'stdint.ph';
    require 'string.ph';
    require 'signal.ph';
    eval 'sub ROKEN_LIB_FUNCTION () {1;}' unless defined(&ROKEN_LIB_FUNCTION);
    eval 'sub ROKEN_LIB_CALL () {1;}' unless defined(&ROKEN_LIB_CALL);
    eval 'sub ROKEN_LIB_VARIABLE () {1;}' unless defined(&ROKEN_LIB_VARIABLE);
    eval 'sub rk_closesocket {
        my($x) = @_;
	    eval q( &close($x));
    }' unless defined(&rk_closesocket);
    eval 'sub rk_SOCK_IOCTL {
        my($s,$c,$a) = @_;
	    eval q( &ioctl(($s),($c),($a)));
    }' unless defined(&rk_SOCK_IOCTL);
    eval 'sub rk_IS_BAD_SOCKET {
        my($s) = @_;
	    eval q((($s) < 0));
    }' unless defined(&rk_IS_BAD_SOCKET);
    eval 'sub rk_IS_SOCKET_ERROR {
        my($rv) = @_;
	    eval q((($rv) < 0));
    }' unless defined(&rk_IS_SOCKET_ERROR);
    eval 'sub rk_SOCK_ERRNO () { &errno;}' unless defined(&rk_SOCK_ERRNO);
    eval 'sub rk_INVALID_SOCKET () {(-1);}' unless defined(&rk_INVALID_SOCKET);
    eval 'sub rk_SOCK_INIT () {
        eval q(0);
    }' unless defined(&rk_SOCK_INIT);
    eval 'sub rk_SOCK_EXIT () {
        eval q( &do { }  &while(0));
    }' unless defined(&rk_SOCK_EXIT);
    eval 'sub IN_LOOPBACKNET () {127;}' unless defined(&IN_LOOPBACKNET);
    eval 'sub UNREACHABLE {
        my($x) = @_;
	    eval q();
    }' unless defined(&UNREACHABLE);
    eval 'sub UNUSED_ARGUMENT {
        my($x) = @_;
	    eval q();
    }' unless defined(&UNUSED_ARGUMENT);
    require 'sys/param.ph';
    require 'inttypes.ph';
    require 'sys/types.ph';
    require 'unistd.ph';
    require 'sys/socket.ph';
    require 'sys/uio.ph';
    require 'grp.ph';
    require 'sys/stat.ph';
    require 'netinet/in.ph';
    require 'arpa/inet.ph';
    require 'netdb.ph';
    require 'arpa/nameser.ph';
    require 'resolv.ph';
    require 'syslog.ph';
    require 'fcntl.ph';
    require 'errno.ph';
    require 'err.ph';
    require 'termios.ph';
    require 'sys/ioctl.ph';
    require 'sys/time.ph';
    require 'time.ph';
    require 'paths.ph';
    require 'dirent.ph';
    require 'roken-common.ph';
    eval 'sub rk_UNCONST {
        my($x) = @_;
	    eval q((( &void *)( &uintptr_t)( &const  &void *)($x)));
    }' unless defined(&rk_UNCONST);
    eval 'sub asnprintf () { &rk_asnprintf;}' unless defined(&asnprintf);
    eval 'sub vasnprintf () { &rk_vasnprintf;}' unless defined(&vasnprintf);
    eval 'sub strlwr () { &rk_strlwr;}' unless defined(&strlwr);
    eval 'sub strsep_copy () { &rk_strsep_copy;}' unless defined(&strsep_copy);
    eval 'sub strupr () { &rk_strupr;}' unless defined(&strupr);
    eval 'sub rk_strerror_r () { &strerror_r;}' unless defined(&rk_strerror_r);
    require 'pwd.ph';
    eval 'sub rk_rename {
        my($__rk_rn_from,$__rk_rn_to) = @_;
	    eval q( &rename($__rk_rn_from,$__rk_rn_to));
    }' unless defined(&rk_rename);
    eval 'sub pidfile () { &rk_pidfile;}' unless defined(&pidfile);
    eval 'sub bswap32 () { &rk_bswap32;}' unless defined(&bswap32);
    eval 'sub bswap16 () { &rk_bswap16;}' unless defined(&bswap16);
    eval 'sub copyhostent () { &rk_copyhostent;}' unless defined(&copyhostent);
    eval 'sub emalloc () { &rk_emalloc;}' unless defined(&emalloc);
    eval 'sub ecalloc () { &rk_ecalloc;}' unless defined(&ecalloc);
    eval 'sub erealloc () { &rk_erealloc;}' unless defined(&erealloc);
    eval 'sub estrdup () { &rk_estrdup;}' unless defined(&estrdup);
    eval 'sub roken_getservbyname {
        my($x,$y) = @_;
	    eval q( &getservbyname($x,$y));
    }' unless defined(&roken_getservbyname);
    eval 'sub roken_openlog {
        my($a,$b,$c) = @_;
	    eval q( &openlog($a,$b,$c));
    }' unless defined(&roken_openlog);
    eval 'sub roken_getsockname {
        my($a,$b,$c) = @_;
	    eval q( &getsockname($a,$b,$c));
    }' unless defined(&roken_getsockname);
    eval 'sub strsvis () { &rk_strsvis;}' unless defined(&strsvis);
    eval 'sub strsvisx () { &rk_strsvisx;}' unless defined(&strsvisx);
    eval 'sub svis () { &rk_svis;}' unless defined(&svis);
    eval 'sub rk_random () {
        eval q( &arc4random());
    }' unless defined(&rk_random);
}
1;
