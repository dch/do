require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_DISK_H_)) {
    eval 'sub _SYS_DISK_H_ () {1;}' unless defined(&_SYS_DISK_H_);
    require 'sys/ioccom.ph';
    if(defined(&_KERNEL)) {
	unless(defined(&_SYS_CONF_H_)) {
	    require 'sys/conf.ph';
	}
    }
    eval 'sub DIOCGSECTORSIZE () { &_IOR(ord(\'d\'), 128, \'u_int\');}' unless defined(&DIOCGSECTORSIZE);
    eval 'sub DIOCGMEDIASIZE () { &_IOR(ord(\'d\'), 129,  &off_t);}' unless defined(&DIOCGMEDIASIZE);
    eval 'sub DIOCGFWSECTORS () { &_IOR(ord(\'d\'), 130, \'u_int\');}' unless defined(&DIOCGFWSECTORS);
    eval 'sub DIOCGFWHEADS () { &_IOR(ord(\'d\'), 131, \'u_int\');}' unless defined(&DIOCGFWHEADS);
    eval 'sub DIOCSKERNELDUMP () { &_IOW(ord(\'d\'), 133, \'u_int\');}' unless defined(&DIOCSKERNELDUMP);
    eval 'sub DIOCGFRONTSTUFF () { &_IOR(ord(\'d\'), 134,  &off_t);}' unless defined(&DIOCGFRONTSTUFF);
    eval 'sub DIOCGFLUSH () { &_IO(ord(\'d\'), 135);}' unless defined(&DIOCGFLUSH);
    eval 'sub DIOCGDELETE () { &_IOW(ord(\'d\'), 136,  $off_t[2]);}' unless defined(&DIOCGDELETE);
    eval 'sub DISK_IDENT_SIZE () {256;}' unless defined(&DISK_IDENT_SIZE);
    eval 'sub DIOCGIDENT () { &_IOR(ord(\'d\'), 137, \'char\'[ &DISK_IDENT_SIZE]);}' unless defined(&DIOCGIDENT);
    eval 'sub DIOCGPROVIDERNAME () { &_IOR(ord(\'d\'), 138, \'char\'[ &MAXPATHLEN]);}' unless defined(&DIOCGPROVIDERNAME);
    eval 'sub DIOCGSTRIPESIZE () { &_IOR(ord(\'d\'), 139,  &off_t);}' unless defined(&DIOCGSTRIPESIZE);
    eval 'sub DIOCGSTRIPEOFFSET () { &_IOR(ord(\'d\'), 140,  &off_t);}' unless defined(&DIOCGSTRIPEOFFSET);
    eval 'sub DIOCGPHYSPATH () { &_IOR(ord(\'d\'), 141, \'char\'[ &MAXPATHLEN]);}' unless defined(&DIOCGPHYSPATH);
}
1;
