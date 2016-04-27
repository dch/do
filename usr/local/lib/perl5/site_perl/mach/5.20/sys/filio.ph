require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_FILIO_H_)) {
    eval 'sub _SYS_FILIO_H_ () {1;}' unless defined(&_SYS_FILIO_H_);
    require 'sys/ioccom.ph';
    eval 'sub FIOCLEX () { &_IO(ord(\'f\'), 1);}' unless defined(&FIOCLEX);
    eval 'sub FIONCLEX () { &_IO(ord(\'f\'), 2);}' unless defined(&FIONCLEX);
    eval 'sub FIONREAD () { &_IOR(ord(\'f\'), 127, \'int\');}' unless defined(&FIONREAD);
    eval 'sub FIONBIO () { &_IOW(ord(\'f\'), 126, \'int\');}' unless defined(&FIONBIO);
    eval 'sub FIOASYNC () { &_IOW(ord(\'f\'), 125, \'int\');}' unless defined(&FIOASYNC);
    eval 'sub FIOSETOWN () { &_IOW(ord(\'f\'), 124, \'int\');}' unless defined(&FIOSETOWN);
    eval 'sub FIOGETOWN () { &_IOR(ord(\'f\'), 123, \'int\');}' unless defined(&FIOGETOWN);
    eval 'sub FIODTYPE () { &_IOR(ord(\'f\'), 122, \'int\');}' unless defined(&FIODTYPE);
    eval 'sub FIOGETLBA () { &_IOR(ord(\'f\'), 121, \'int\');}' unless defined(&FIOGETLBA);
    eval 'sub FIODGNAME () { &_IOW(ord(\'f\'), 120, \'struct fiodgname_arg\');}' unless defined(&FIODGNAME);
    eval 'sub FIONWRITE () { &_IOR(ord(\'f\'), 119, \'int\');}' unless defined(&FIONWRITE);
    eval 'sub FIONSPACE () { &_IOR(ord(\'f\'), 118, \'int\');}' unless defined(&FIONSPACE);
    eval 'sub FIOSEEKDATA () { &_IOWR(ord(\'f\'), 97,  &off_t);}' unless defined(&FIOSEEKDATA);
    eval 'sub FIOSEEKHOLE () { &_IOWR(ord(\'f\'), 98,  &off_t);}' unless defined(&FIOSEEKHOLE);
}
1;
