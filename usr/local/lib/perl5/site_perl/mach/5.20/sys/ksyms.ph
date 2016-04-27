require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_KSYMS_H_)) {
    eval 'sub _SYS_KSYMS_H_ () {1;}' unless defined(&_SYS_KSYMS_H_);
    require 'sys/ioccom.ph';
    eval 'sub KIOCGSIZE () { &_IOR(ord(\'l\'), 1, \'size_t\');}' unless defined(&KIOCGSIZE);
    eval 'sub KIOCGADDR () { &_IOR(ord(\'l\'), 2,  &void *);}' unless defined(&KIOCGADDR);
}
1;
