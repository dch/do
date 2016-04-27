require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_INFLATE_H_)) {
    eval 'sub _SYS_INFLATE_H_ () {1;}' unless defined(&_SYS_INFLATE_H_);
    if(defined(&_KERNEL) || defined(&KZIP)) {
	eval 'sub GZ_EOF () {-1;}' unless defined(&GZ_EOF);
	eval 'sub GZ_WSIZE () {0x8000;}' unless defined(&GZ_WSIZE);
    }
}
1;
