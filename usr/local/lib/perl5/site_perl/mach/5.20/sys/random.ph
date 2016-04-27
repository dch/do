require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_RANDOM_H_)) {
    eval 'sub _SYS_RANDOM_H_ () {1;}' unless defined(&_SYS_RANDOM_H_);
    if(defined(&_KERNEL)) {
	eval("sub RANDOM_START () { 0; }") unless defined(&RANDOM_START);
	eval("sub RANDOM_CACHED () { 0; }") unless defined(&RANDOM_CACHED);
	eval("sub RANDOM_ATTACH () { 1; }") unless defined(&RANDOM_ATTACH);
	eval("sub RANDOM_KEYBOARD () { 2; }") unless defined(&RANDOM_KEYBOARD);
	eval("sub RANDOM_MOUSE () { 3; }") unless defined(&RANDOM_MOUSE);
	eval("sub RANDOM_NET_TUN () { 4; }") unless defined(&RANDOM_NET_TUN);
	eval("sub RANDOM_NET_ETHER () { 5; }") unless defined(&RANDOM_NET_ETHER);
	eval("sub RANDOM_NET_NG () { 6; }") unless defined(&RANDOM_NET_NG);
	eval("sub RANDOM_INTERRUPT () { 7; }") unless defined(&RANDOM_INTERRUPT);
	eval("sub RANDOM_SWI () { 8; }") unless defined(&RANDOM_SWI);
	eval("sub RANDOM_PURE_OCTEON () { 9; }") unless defined(&RANDOM_PURE_OCTEON);
	eval("sub RANDOM_PURE_SAFE () { 10; }") unless defined(&RANDOM_PURE_SAFE);
	eval("sub RANDOM_PURE_GLXSB () { 11; }") unless defined(&RANDOM_PURE_GLXSB);
	eval("sub RANDOM_PURE_UBSEC () { 12; }") unless defined(&RANDOM_PURE_UBSEC);
	eval("sub RANDOM_PURE_HIFN () { 13; }") unless defined(&RANDOM_PURE_HIFN);
	eval("sub RANDOM_PURE_RDRAND () { 14; }") unless defined(&RANDOM_PURE_RDRAND);
	eval("sub RANDOM_PURE_NEHEMIAH () { 15; }") unless defined(&RANDOM_PURE_NEHEMIAH);
	eval("sub RANDOM_PURE_RNDTEST () { 16; }") unless defined(&RANDOM_PURE_RNDTEST);
	eval("sub RANDOM_PURE_VIRTIO () { 17; }") unless defined(&RANDOM_PURE_VIRTIO);
	eval("sub ENTROPYSOURCE () { 18; }") unless defined(&ENTROPYSOURCE);
    }
}
1;
