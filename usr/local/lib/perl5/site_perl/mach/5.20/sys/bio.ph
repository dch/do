require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_BIO_H_)) {
    eval 'sub _SYS_BIO_H_ () {1;}' unless defined(&_SYS_BIO_H_);
    require 'sys/queue.ph';
    eval 'sub BIO_READ () {0x1;}' unless defined(&BIO_READ);
    eval 'sub BIO_WRITE () {0x2;}' unless defined(&BIO_WRITE);
    eval 'sub BIO_DELETE () {0x4;}' unless defined(&BIO_DELETE);
    eval 'sub BIO_GETATTR () {0x8;}' unless defined(&BIO_GETATTR);
    eval 'sub BIO_FLUSH () {0x10;}' unless defined(&BIO_FLUSH);
    eval 'sub BIO_CMD0 () {0x20;}' unless defined(&BIO_CMD0);
    eval 'sub BIO_CMD1 () {0x40;}' unless defined(&BIO_CMD1);
    eval 'sub BIO_CMD2 () {0x80;}' unless defined(&BIO_CMD2);
    eval 'sub BIO_ERROR () {0x1;}' unless defined(&BIO_ERROR);
    eval 'sub BIO_DONE () {0x2;}' unless defined(&BIO_DONE);
    eval 'sub BIO_ONQUEUE () {0x4;}' unless defined(&BIO_ONQUEUE);
    eval 'sub BIO_ORDERED () {0x8;}' unless defined(&BIO_ORDERED);
    eval 'sub BIO_UNMAPPED () {0x10;}' unless defined(&BIO_UNMAPPED);
    eval 'sub BIO_TRANSIENT_MAPPING () {0x20;}' unless defined(&BIO_TRANSIENT_MAPPING);
    if(defined(&_KERNEL)) {
	eval 'sub BIO_NOTCLASSIFIED () {( &void *)(~0);}' unless defined(&BIO_NOTCLASSIFIED);
	if(defined(&DIAGNOSTIC)) {
	}
	eval 'sub physread () { &physio;}' unless defined(&physread);
	eval 'sub physwrite () { &physio;}' unless defined(&physwrite);
    }
}
1;
