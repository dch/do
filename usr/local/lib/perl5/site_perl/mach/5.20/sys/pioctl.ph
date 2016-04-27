require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_PIOCTL_H)) {
    eval 'sub _SYS_PIOCTL_H () {1;}' unless defined(&_SYS_PIOCTL_H);
    require 'sys/ioccom.ph';
    eval 'sub PIOCBIS () { &_IOWINT(ord(\'p\'), 1);}' unless defined(&PIOCBIS);
    eval 'sub PIOCBIC () { &_IOWINT(ord(\'p\'), 2);}' unless defined(&PIOCBIC);
    eval 'sub PIOCSFL () { &_IOWINT(ord(\'p\'), 3);}' unless defined(&PIOCSFL);
    eval 'sub PIOCWAIT () { &_IOR(ord(\'p\'), 4, \'struct procfs_status\');}' unless defined(&PIOCWAIT);
    eval 'sub PIOCCONT () { &_IOWINT(ord(\'p\'), 5);}' unless defined(&PIOCCONT);
    eval 'sub PIOCSTATUS () { &_IOR(ord(\'p\'), 6, \'struct procfs_status\');}' unless defined(&PIOCSTATUS);
    eval 'sub PIOCGFL () { &_IOR(ord(\'p\'), 7, \'unsigned int\');}' unless defined(&PIOCGFL);
    eval 'sub S_EXEC () {0x1;}' unless defined(&S_EXEC);
    eval 'sub S_SIG () {0x2;}' unless defined(&S_SIG);
    eval 'sub S_SCE () {0x4;}' unless defined(&S_SCE);
    eval 'sub S_SCX () {0x8;}' unless defined(&S_SCX);
    eval 'sub S_CORE () {0x10;}' unless defined(&S_CORE);
    eval 'sub S_EXIT () {0x20;}' unless defined(&S_EXIT);
    eval 'sub S_ALLSTOPS () {0x3f;}' unless defined(&S_ALLSTOPS);
    eval 'sub PF_LINGER () {0x1;}' unless defined(&PF_LINGER);
    eval 'sub PF_ISUGID () {0x2;}' unless defined(&PF_ISUGID);
    eval 'sub PF_FORK () {0x4;}' unless defined(&PF_FORK);
}
1;
