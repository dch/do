require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_AIO_H_)) {
    eval 'sub _SYS_AIO_H_ () {1;}' unless defined(&_SYS_AIO_H_);
    require 'sys/types.ph';
    require 'sys/signal.ph';
    eval 'sub AIO_CANCELED () {0x1;}' unless defined(&AIO_CANCELED);
    eval 'sub AIO_NOTCANCELED () {0x2;}' unless defined(&AIO_NOTCANCELED);
    eval 'sub AIO_ALLDONE () {0x3;}' unless defined(&AIO_ALLDONE);
    eval 'sub LIO_NOP () {0x;}' unless defined(&LIO_NOP);
    eval 'sub LIO_WRITE () {0x1;}' unless defined(&LIO_WRITE);
    eval 'sub LIO_READ () {0x2;}' unless defined(&LIO_READ);
    if(defined(&_KERNEL)) {
	eval 'sub LIO_SYNC () {0x3;}' unless defined(&LIO_SYNC);
	eval 'sub LIO_MLOCK () {0x4;}' unless defined(&LIO_MLOCK);
    }
    eval 'sub LIO_NOWAIT () {0x;}' unless defined(&LIO_NOWAIT);
    eval 'sub LIO_WAIT () {0x1;}' unless defined(&LIO_WAIT);
    eval 'sub AIO_LISTIO_MAX () {16;}' unless defined(&AIO_LISTIO_MAX);
    unless(defined(&_KERNEL)) {
	if(defined(&__BSD_VISIBLE)) {
	}
    } else {
    }
}
1;
