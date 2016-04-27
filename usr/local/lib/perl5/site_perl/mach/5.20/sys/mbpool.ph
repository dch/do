require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_MBPOOL_H_)) {
    eval 'sub _SYS_MBPOOL_H_ () {1;}' unless defined(&_SYS_MBPOOL_H_);
    if(defined(&_KERNEL)) {
	require 'sys/queue.ph';
	eval 'sub MBPOOL_TRAILER_SIZE () {4;}' unless defined(&MBPOOL_TRAILER_SIZE);
	eval 'sub MBPOOL_MAX_MAXPAGES () {((1<< 14) - 1);}' unless defined(&MBPOOL_MAX_MAXPAGES);
	eval 'sub MBPOOL_MAX_CHUNKS () {(1<< 9);}' unless defined(&MBPOOL_MAX_CHUNKS);
    }
}
1;
