require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_PROTOSW_H_)) {
    eval 'sub _SYS_PROTOSW_H_ () {1;}' unless defined(&_SYS_PROTOSW_H_);
    eval 'sub PR_SLOWHZ () {2;}' unless defined(&PR_SLOWHZ);
    eval 'sub PR_FASTHZ () {5;}' unless defined(&PR_FASTHZ);
    eval 'sub PROTO_SPACER () {32767;}' unless defined(&PROTO_SPACER);
    eval 'sub PR_ATOMIC () {0x1;}' unless defined(&PR_ATOMIC);
    eval 'sub PR_ADDR () {0x2;}' unless defined(&PR_ADDR);
    eval 'sub PR_CONNREQUIRED () {0x4;}' unless defined(&PR_CONNREQUIRED);
    eval 'sub PR_WANTRCVD () {0x8;}' unless defined(&PR_WANTRCVD);
    eval 'sub PR_RIGHTS () {0x10;}' unless defined(&PR_RIGHTS);
    eval 'sub PR_IMPLOPCL () {0x20;}' unless defined(&PR_IMPLOPCL);
    eval 'sub PR_LASTHDR () {0x40;}' unless defined(&PR_LASTHDR);
    eval 'sub PRU_ATTACH () {0;}' unless defined(&PRU_ATTACH);
    eval 'sub PRU_DETACH () {1;}' unless defined(&PRU_DETACH);
    eval 'sub PRU_BIND () {2;}' unless defined(&PRU_BIND);
    eval 'sub PRU_LISTEN () {3;}' unless defined(&PRU_LISTEN);
    eval 'sub PRU_CONNECT () {4;}' unless defined(&PRU_CONNECT);
    eval 'sub PRU_ACCEPT () {5;}' unless defined(&PRU_ACCEPT);
    eval 'sub PRU_DISCONNECT () {6;}' unless defined(&PRU_DISCONNECT);
    eval 'sub PRU_SHUTDOWN () {7;}' unless defined(&PRU_SHUTDOWN);
    eval 'sub PRU_RCVD () {8;}' unless defined(&PRU_RCVD);
    eval 'sub PRU_SEND () {9;}' unless defined(&PRU_SEND);
    eval 'sub PRU_ABORT () {10;}' unless defined(&PRU_ABORT);
    eval 'sub PRU_CONTROL () {11;}' unless defined(&PRU_CONTROL);
    eval 'sub PRU_SENSE () {12;}' unless defined(&PRU_SENSE);
    eval 'sub PRU_RCVOOB () {13;}' unless defined(&PRU_RCVOOB);
    eval 'sub PRU_SENDOOB () {14;}' unless defined(&PRU_SENDOOB);
    eval 'sub PRU_SOCKADDR () {15;}' unless defined(&PRU_SOCKADDR);
    eval 'sub PRU_PEERADDR () {16;}' unless defined(&PRU_PEERADDR);
    eval 'sub PRU_CONNECT2 () {17;}' unless defined(&PRU_CONNECT2);
    eval 'sub PRU_FASTTIMO () {18;}' unless defined(&PRU_FASTTIMO);
    eval 'sub PRU_SLOWTIMO () {19;}' unless defined(&PRU_SLOWTIMO);
    eval 'sub PRU_PROTORCV () {20;}' unless defined(&PRU_PROTORCV);
    eval 'sub PRU_PROTOSEND () {21;}' unless defined(&PRU_PROTOSEND);
    eval 'sub PRU_SEND_EOF () {22;}' unless defined(&PRU_SEND_EOF);
    eval 'sub PRU_SOSETLABEL () {23;}' unless defined(&PRU_SOSETLABEL);
    eval 'sub PRU_CLOSE () {24;}' unless defined(&PRU_CLOSE);
    eval 'sub PRU_FLUSH () {25;}' unless defined(&PRU_FLUSH);
    eval 'sub PRU_NREQ () {25;}' unless defined(&PRU_NREQ);
    if(defined(&PRUREQUESTS)) {
    }
    if(defined(&_KERNEL)) {
	eval 'sub PRUS_OOB () {0x1;}' unless defined(&PRUS_OOB);
	eval 'sub PRUS_EOF () {0x2;}' unless defined(&PRUS_EOF);
	eval 'sub PRUS_MORETOCOME () {0x4;}' unless defined(&PRUS_MORETOCOME);
    }
    eval 'sub PRC_IFDOWN () {0;}' unless defined(&PRC_IFDOWN);
    eval 'sub PRC_ROUTEDEAD () {1;}' unless defined(&PRC_ROUTEDEAD);
    eval 'sub PRC_IFUP () {2;}' unless defined(&PRC_IFUP);
    eval 'sub PRC_QUENCH2 () {3;}' unless defined(&PRC_QUENCH2);
    eval 'sub PRC_QUENCH () {4;}' unless defined(&PRC_QUENCH);
    eval 'sub PRC_MSGSIZE () {5;}' unless defined(&PRC_MSGSIZE);
    eval 'sub PRC_HOSTDEAD () {6;}' unless defined(&PRC_HOSTDEAD);
    eval 'sub PRC_HOSTUNREACH () {7;}' unless defined(&PRC_HOSTUNREACH);
    eval 'sub PRC_UNREACH_NET () {8;}' unless defined(&PRC_UNREACH_NET);
    eval 'sub PRC_UNREACH_HOST () {9;}' unless defined(&PRC_UNREACH_HOST);
    eval 'sub PRC_UNREACH_PROTOCOL () {10;}' unless defined(&PRC_UNREACH_PROTOCOL);
    eval 'sub PRC_UNREACH_PORT () {11;}' unless defined(&PRC_UNREACH_PORT);
    eval 'sub PRC_UNREACH_SRCFAIL () {13;}' unless defined(&PRC_UNREACH_SRCFAIL);
    eval 'sub PRC_REDIRECT_NET () {14;}' unless defined(&PRC_REDIRECT_NET);
    eval 'sub PRC_REDIRECT_HOST () {15;}' unless defined(&PRC_REDIRECT_HOST);
    eval 'sub PRC_REDIRECT_TOSNET () {16;}' unless defined(&PRC_REDIRECT_TOSNET);
    eval 'sub PRC_REDIRECT_TOSHOST () {17;}' unless defined(&PRC_REDIRECT_TOSHOST);
    eval 'sub PRC_TIMXCEED_INTRANS () {18;}' unless defined(&PRC_TIMXCEED_INTRANS);
    eval 'sub PRC_TIMXCEED_REASS () {19;}' unless defined(&PRC_TIMXCEED_REASS);
    eval 'sub PRC_PARAMPROB () {20;}' unless defined(&PRC_PARAMPROB);
    eval 'sub PRC_UNREACH_ADMIN_PROHIB () {21;}' unless defined(&PRC_UNREACH_ADMIN_PROHIB);
    eval 'sub PRC_NCMDS () {22;}' unless defined(&PRC_NCMDS);
    eval 'sub PRC_IS_REDIRECT {
        my($cmd) = @_;
	    eval q((($cmd) >=  &PRC_REDIRECT_NET  && ($cmd) <=  &PRC_REDIRECT_TOSHOST));
    }' unless defined(&PRC_IS_REDIRECT);
    if(defined(&PRCREQUESTS)) {
    }
    eval 'sub PRCO_GETOPT () {0;}' unless defined(&PRCO_GETOPT);
    eval 'sub PRCO_SETOPT () {1;}' unless defined(&PRCO_SETOPT);
    eval 'sub PRCO_NCMDS () {2;}' unless defined(&PRCO_NCMDS);
    if(defined(&PRCOREQUESTS)) {
    }
    if(defined(&_KERNEL)) {
    }
}
1;
