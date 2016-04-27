require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_UNPCB_H_)) {
    eval 'sub _SYS_UNPCB_H_ () {1;}' unless defined(&_SYS_UNPCB_H_);
    require 'sys/queue.ph';
    require 'sys/ucred.ph';
    eval 'sub UNP_HAVEPC () {0x1;}' unless defined(&UNP_HAVEPC);
    eval 'sub UNP_HAVEPCCACHED () {0x2;}' unless defined(&UNP_HAVEPCCACHED);
    eval 'sub UNP_WANTCRED () {0x4;}' unless defined(&UNP_WANTCRED);
    eval 'sub UNP_CONNWAIT () {0x8;}' unless defined(&UNP_CONNWAIT);
    eval 'sub UNPGC_REF () {0x1;}' unless defined(&UNPGC_REF);
    eval 'sub UNPGC_DEAD () {0x2;}' unless defined(&UNPGC_DEAD);
    eval 'sub UNPGC_SCANNED () {0x4;}' unless defined(&UNPGC_SCANNED);
    eval 'sub UNP_CONNECTING () {0x10;}' unless defined(&UNP_CONNECTING);
    eval 'sub UNP_BINDING () {0x20;}' unless defined(&UNP_BINDING);
    eval 'sub sotounpcb {
        my($so) = @_;
	    eval q(((($so)-> &so_pcb)));
    }' unless defined(&sotounpcb);
    if(defined(&_SYS_SOCKETVAR_H_)) {
	eval 'sub xu_addr () { ($xu_au->{xuu_addr});}' unless defined(&xu_addr);
	eval 'sub xu_caddr () { ($xu_cau->{xuu_caddr});}' unless defined(&xu_caddr);
    }
}
1;
