require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_SBUF_H_)) {
    eval 'sub _SYS_SBUF_H_ () {1;}' unless defined(&_SYS_SBUF_H_);
    require 'sys/_types.ph';
    eval 'sub SBUF_FIXEDLEN () {0x;}' unless defined(&SBUF_FIXEDLEN);
    eval 'sub SBUF_AUTOEXTEND () {0x1;}' unless defined(&SBUF_AUTOEXTEND);
    eval 'sub SBUF_USRFLAGMSK () {0xffff;}' unless defined(&SBUF_USRFLAGMSK);
    eval 'sub SBUF_DYNAMIC () {0x10000;}' unless defined(&SBUF_DYNAMIC);
    eval 'sub SBUF_FINISHED () {0x20000;}' unless defined(&SBUF_FINISHED);
    eval 'sub SBUF_DYNSTRUCT () {0x80000;}' unless defined(&SBUF_DYNSTRUCT);
    eval 'sub SBUF_INSECTION () {0x100000;}' unless defined(&SBUF_INSECTION);
    eval 'sub sbuf_new_auto () {
        eval q( &sbuf_new( &NULL,  &NULL, 0,  &SBUF_AUTOEXTEND));
    }' unless defined(&sbuf_new_auto);
    if(defined(&_KERNEL)) {
    }
}
1;
