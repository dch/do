require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__ROKEN_COMMON_H__)) {
    eval 'sub __ROKEN_COMMON_H__ () {1;}' unless defined(&__ROKEN_COMMON_H__);
    unless(defined(&ROKEN_LIB_FUNCTION)) {
	if(defined(&_WIN32)) {
	    eval 'sub ROKEN_LIB_FUNCTION () {1;}' unless defined(&ROKEN_LIB_FUNCTION);
	    eval 'sub ROKEN_LIB_CALL () { &__cdecl;}' unless defined(&ROKEN_LIB_CALL);
	} else {
	    eval 'sub ROKEN_LIB_FUNCTION () {1;}' unless defined(&ROKEN_LIB_FUNCTION);
	    eval 'sub ROKEN_LIB_CALL () {1;}' unless defined(&ROKEN_LIB_CALL);
	}
    }
    if(defined(&__cplusplus)) {
	eval 'sub ROKEN_CPP_START () { &extern "C" {;}' unless defined(&ROKEN_CPP_START);
	eval 'sub ROKEN_CPP_END () {};}' unless defined(&ROKEN_CPP_END);
    } else {
	eval 'sub ROKEN_CPP_START () {1;}' unless defined(&ROKEN_CPP_START);
	eval 'sub ROKEN_CPP_END () {1;}' unless defined(&ROKEN_CPP_END);
    }
    unless(defined(&INADDR_NONE)) {
	eval 'sub INADDR_NONE () {0xffffffff;}' unless defined(&INADDR_NONE);
    }
    unless(defined(&INADDR_LOOPBACK)) {
	eval 'sub INADDR_LOOPBACK () {0x7f000001;}' unless defined(&INADDR_LOOPBACK);
    }
    unless(defined(&SOMAXCONN)) {
	eval 'sub SOMAXCONN () {5;}' unless defined(&SOMAXCONN);
    }
    unless(defined(&STDIN_FILENO)) {
	eval 'sub STDIN_FILENO () {0;}' unless defined(&STDIN_FILENO);
    }
    unless(defined(&STDOUT_FILENO)) {
	eval 'sub STDOUT_FILENO () {1;}' unless defined(&STDOUT_FILENO);
    }
    unless(defined(&STDERR_FILENO)) {
	eval 'sub STDERR_FILENO () {2;}' unless defined(&STDERR_FILENO);
    }
    unless(defined(&max)) {
	eval 'sub max {
	    my($a,$b) = @_;
    	    eval q(((($a)>($b))?($a):($b)));
	}' unless defined(&max);
    }
    unless(defined(&min)) {
	eval 'sub min {
	    my($a,$b) = @_;
    	    eval q(((($a)<($b))?($a):($b)));
	}' unless defined(&min);
    }
    unless(defined(&TRUE)) {
	eval 'sub TRUE () {1;}' unless defined(&TRUE);
    }
    unless(defined(&FALSE)) {
	eval 'sub FALSE () {0;}' unless defined(&FALSE);
    }
    unless(defined(&LOG_DAEMON)) {
	eval 'sub openlog {
	    my($id,$option,$facility) = @_;
    	    eval q( &openlog(($id),($option)));
	}' unless defined(&openlog);
	eval 'sub LOG_DAEMON () {0;}' unless defined(&LOG_DAEMON);
    }
    unless(defined(&LOG_ODELAY)) {
	eval 'sub LOG_ODELAY () {0;}' unless defined(&LOG_ODELAY);
    }
    unless(defined(&LOG_NDELAY)) {
	eval 'sub LOG_NDELAY () {0x8;}' unless defined(&LOG_NDELAY);
    }
    unless(defined(&LOG_CONS)) {
	eval 'sub LOG_CONS () {0;}' unless defined(&LOG_CONS);
    }
    unless(defined(&LOG_AUTH)) {
	eval 'sub LOG_AUTH () {0;}' unless defined(&LOG_AUTH);
    }
    unless(defined(&LOG_AUTHPRIV)) {
	eval 'sub LOG_AUTHPRIV () { &LOG_AUTH;}' unless defined(&LOG_AUTHPRIV);
    }
    unless(defined(&F_OK)) {
	eval 'sub F_OK () {0;}' unless defined(&F_OK);
    }
    unless(defined(&O_ACCMODE)) {
	eval 'sub O_ACCMODE () {003;}' unless defined(&O_ACCMODE);
    }
    unless(defined(&_WIN32)) {
	unless(defined(&_PATH_DEV)) {
	    eval 'sub _PATH_DEV () {"/dev/";}' unless defined(&_PATH_DEV);
	}
	unless(defined(&_PATH_DEVNULL)) {
	    eval 'sub _PATH_DEVNULL () {"/dev/null";}' unless defined(&_PATH_DEVNULL);
	}
	unless(defined(&_PATH_HEQUIV)) {
	    eval 'sub _PATH_HEQUIV () {"/etc/hosts.equiv";}' unless defined(&_PATH_HEQUIV);
	}
	unless(defined(&_PATH_VARRUN)) {
	    eval 'sub _PATH_VARRUN () {"/var/run/";}' unless defined(&_PATH_VARRUN);
	}
	unless(defined(&_PATH_BSHELL)) {
	    eval 'sub _PATH_BSHELL () {"/bin/sh";}' unless defined(&_PATH_BSHELL);
	}
	unless(defined(&MAXPATHLEN)) {
	    eval 'sub MAXPATHLEN () {(1024+4);}' unless defined(&MAXPATHLEN);
	}
    }
    unless(defined(&PATH_MAX)) {
	eval 'sub PATH_MAX () { &MAX_PATH;}' unless defined(&PATH_MAX);
    }
    unless(defined(&RETSIGTYPE)) {
	eval 'sub RETSIGTYPE () { &void;}' unless defined(&RETSIGTYPE);
    }
    unless(defined(&SIG_ERR)) {
	eval 'sub SIG_ERR () {(-1);}' unless defined(&SIG_ERR);
    }
    unless(defined(&HOST_NOT_FOUND)) {
	eval 'sub HOST_NOT_FOUND () {1;}' unless defined(&HOST_NOT_FOUND);
    }
    unless(defined(&TRY_AGAIN)) {
	eval 'sub TRY_AGAIN () {2;}' unless defined(&TRY_AGAIN);
    }
    unless(defined(&NO_RECOVERY)) {
	eval 'sub NO_RECOVERY () {3;}' unless defined(&NO_RECOVERY);
    }
    unless(defined(&NO_DATA)) {
	eval 'sub NO_DATA () {4;}' unless defined(&NO_DATA);
    }
    unless(defined(&NO_ADDRESS)) {
	eval 'sub NO_ADDRESS () { &NO_DATA;}' unless defined(&NO_ADDRESS);
    }
    unless(defined(&EAI_NOERROR)) {
	eval 'sub EAI_NOERROR () {0;}' unless defined(&EAI_NOERROR);
    }
    unless(defined(&EAI_NONAME)) {
	eval 'sub EAI_ADDRFAMILY () {1;}' unless defined(&EAI_ADDRFAMILY);
	eval 'sub EAI_AGAIN () {2;}' unless defined(&EAI_AGAIN);
	eval 'sub EAI_BADFLAGS () {3;}' unless defined(&EAI_BADFLAGS);
	eval 'sub EAI_FAIL () {4;}' unless defined(&EAI_FAIL);
	eval 'sub EAI_FAMILY () {5;}' unless defined(&EAI_FAMILY);
	eval 'sub EAI_MEMORY () {6;}' unless defined(&EAI_MEMORY);
	eval 'sub EAI_NODATA () {7;}' unless defined(&EAI_NODATA);
	eval 'sub EAI_NONAME () {8;}' unless defined(&EAI_NONAME);
	eval 'sub EAI_SERVICE () {9;}' unless defined(&EAI_SERVICE);
	eval 'sub EAI_SOCKTYPE () {10;}' unless defined(&EAI_SOCKTYPE);
	eval 'sub EAI_SYSTEM () {11;}' unless defined(&EAI_SYSTEM);
    }
    unless(defined(&AI_PASSIVE)) {
	eval 'sub AI_PASSIVE () {0x1;}' unless defined(&AI_PASSIVE);
	eval 'sub AI_CANONNAME () {0x2;}' unless defined(&AI_CANONNAME);
    }
    unless(defined(&AI_NUMERICHOST)) {
	eval 'sub AI_NUMERICHOST () {0x4;}' unless defined(&AI_NUMERICHOST);
    }
    unless(defined(&AI_NUMERICSERV)) {
	eval 'sub AI_NUMERICSERV () {0x8;}' unless defined(&AI_NUMERICSERV);
    }
    unless(defined(&NI_DGRAM)) {
	eval 'sub NI_DGRAM () {0x1;}' unless defined(&NI_DGRAM);
	eval 'sub NI_NAMEREQD () {0x2;}' unless defined(&NI_NAMEREQD);
	eval 'sub NI_NOFQDN () {0x4;}' unless defined(&NI_NOFQDN);
	eval 'sub NI_NUMERICHOST () {0x8;}' unless defined(&NI_NUMERICHOST);
	eval 'sub NI_NUMERICSERV () {0x10;}' unless defined(&NI_NUMERICSERV);
    }
    unless(defined(&NI_MAXHOST)) {
	eval 'sub NI_MAXHOST () {1025;}' unless defined(&NI_MAXHOST);
	eval 'sub NI_MAXSERV () {32;}' unless defined(&NI_MAXSERV);
    }
    unless(defined(&INET_ADDRSTRLEN)) {
	eval 'sub INET_ADDRSTRLEN () {16;}' unless defined(&INET_ADDRSTRLEN);
    }
    unless(defined(&INET6_ADDRSTRLEN)) {
	eval 'sub INET6_ADDRSTRLEN () {46;}' unless defined(&INET6_ADDRSTRLEN);
    }
    unless(defined(&SHUT_RD)) {
	eval 'sub SHUT_RD () {0;}' unless defined(&SHUT_RD);
    }
    unless(defined(&SHUT_WR)) {
	eval 'sub SHUT_WR () {1;}' unless defined(&SHUT_WR);
    }
    unless(defined(&SHUT_RDWR)) {
	eval 'sub SHUT_RDWR () {2;}' unless defined(&SHUT_RDWR);
    }
    unless(defined(&HAVE___ATTRIBUTE__)) {
	eval 'sub __attribute__ {
	    my($x) = @_;
    	    eval q();
	}' unless defined(&__attribute__);
    }
    unless(defined(&IRIX4)) {
	unless(defined(&_WIN32)) {
	    if(defined(&RETSIGTYPE)) {
	    }
	}
    }
    eval 'sub SE_E_UNSPECIFIED () {(-1);}' unless defined(&SE_E_UNSPECIFIED);
    eval 'sub SE_E_FORKFAILED () {(-2);}' unless defined(&SE_E_FORKFAILED);
    eval 'sub SE_E_WAITPIDFAILED () {(-3);}' unless defined(&SE_E_WAITPIDFAILED);
    eval 'sub SE_E_EXECTIMEOUT () {(-4);}' unless defined(&SE_E_EXECTIMEOUT);
    eval 'sub SE_E_NOEXEC () {126;}' unless defined(&SE_E_NOEXEC);
    eval 'sub SE_E_NOTFOUND () {127;}' unless defined(&SE_E_NOTFOUND);
    eval 'sub SE_PROCSTATUS {
        my($st) = @_;
	    eval q(((($st) >= 0 && ($st) < 126)? $st: -1));
    }' unless defined(&SE_PROCSTATUS);
    eval 'sub SE_PROCSIGNAL {
        my($st) = @_;
	    eval q(((($st) >= 128)? ($st) - 128: -1));
    }' unless defined(&SE_PROCSIGNAL);
    eval 'sub SE_IS_ERROR {
        my($st) = @_;
	    eval q((($st) < 0|| ($st) >= 126));
    }' unless defined(&SE_IS_ERROR);
    eval 'sub simple_execve () { &rk_simple_execve;}' unless defined(&simple_execve);
    eval 'sub simple_execve_timed () { &rk_simple_execve_timed;}' unless defined(&simple_execve_timed);
    eval 'sub simple_execvp () { &rk_simple_execvp;}' unless defined(&simple_execvp);
    eval 'sub simple_execvp_timed () { &rk_simple_execvp_timed;}' unless defined(&simple_execvp_timed);
    eval 'sub simple_execlp () { &rk_simple_execlp;}' unless defined(&simple_execlp);
    eval 'sub simple_execle () { &rk_simple_execle;}' unless defined(&simple_execle);
    eval 'sub wait_for_process () { &rk_wait_for_process;}' unless defined(&wait_for_process);
    eval 'sub wait_for_process_timed () { &rk_wait_for_process_timed;}' unless defined(&wait_for_process_timed);
    eval 'sub pipe_execv () { &rk_pipe_execv;}' unless defined(&pipe_execv);
    eval 'sub print_version () { &rk_print_version;}' unless defined(&print_version);
    eval 'sub eread () { &rk_eread;}' unless defined(&eread);
    eval 'sub ewrite () { &rk_ewrite;}' unless defined(&ewrite);
    eval 'sub hostent_find_fqdn () { &rk_hostent_find_fqdn;}' unless defined(&hostent_find_fqdn);
    eval 'sub esetenv () { &rk_esetenv;}' unless defined(&esetenv);
    eval 'sub socket_set_address_and_port () { &rk_socket_set_address_and_port;}' unless defined(&socket_set_address_and_port);
    eval 'sub socket_addr_size () { &rk_socket_addr_size;}' unless defined(&socket_addr_size);
    eval 'sub socket_set_any () { &rk_socket_set_any;}' unless defined(&socket_set_any);
    eval 'sub socket_sockaddr_size () { &rk_socket_sockaddr_size;}' unless defined(&socket_sockaddr_size);
    eval 'sub socket_get_address () { &rk_socket_get_address;}' unless defined(&socket_get_address);
    eval 'sub socket_get_port () { &rk_socket_get_port;}' unless defined(&socket_get_port);
    eval 'sub socket_set_port () { &rk_socket_set_port;}' unless defined(&socket_set_port);
    eval 'sub socket_set_portrange () { &rk_socket_set_portrange;}' unless defined(&socket_set_portrange);
    eval 'sub socket_set_debug () { &rk_socket_set_debug;}' unless defined(&socket_set_debug);
    eval 'sub socket_set_tos () { &rk_socket_set_tos;}' unless defined(&socket_set_tos);
    eval 'sub socket_set_reuseaddr () { &rk_socket_set_reuseaddr;}' unless defined(&socket_set_reuseaddr);
    eval 'sub socket_set_ipv6only () { &rk_socket_set_ipv6only;}' unless defined(&socket_set_ipv6only);
    eval 'sub socket_to_fd () { &rk_socket_to_fd;}' unless defined(&socket_to_fd);
    eval 'sub vstrcollect () { &rk_vstrcollect;}' unless defined(&vstrcollect);
    eval 'sub strcollect () { &rk_strcollect;}' unless defined(&strcollect);
    eval 'sub timevalfix () { &rk_timevalfix;}' unless defined(&timevalfix);
    eval 'sub timevaladd () { &rk_timevaladd;}' unless defined(&timevaladd);
    eval 'sub timevalsub () { &rk_timevalsub;}' unless defined(&timevalsub);
    eval 'sub pid_file_write () { &rk_pid_file_write;}' unless defined(&pid_file_write);
    eval 'sub pid_file_delete () { &rk_pid_file_delete;}' unless defined(&pid_file_delete);
    eval 'sub read_environment () { &rk_read_environment;}' unless defined(&read_environment);
    eval 'sub free_environment () { &rk_free_environment;}' unless defined(&free_environment);
    eval 'sub warnerr () { &rk_warnerr;}' unless defined(&warnerr);
}
1;
