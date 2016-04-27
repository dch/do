require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_MTIO_H_)) {
    eval 'sub _SYS_MTIO_H_ () {1;}' unless defined(&_SYS_MTIO_H_);
    unless(defined(&_KERNEL)) {
	require 'sys/types.ph';
    }
    require 'sys/ioccom.ph';
    eval 'sub MTWEOF () {0;}' unless defined(&MTWEOF);
    eval 'sub MTFSF () {1;}' unless defined(&MTFSF);
    eval 'sub MTBSF () {2;}' unless defined(&MTBSF);
    eval 'sub MTFSR () {3;}' unless defined(&MTFSR);
    eval 'sub MTBSR () {4;}' unless defined(&MTBSR);
    eval 'sub MTREW () {5;}' unless defined(&MTREW);
    eval 'sub MTOFFL () {6;}' unless defined(&MTOFFL);
    eval 'sub MTNOP () {7;}' unless defined(&MTNOP);
    eval 'sub MTCACHE () {8;}' unless defined(&MTCACHE);
    eval 'sub MTNOCACHE () {9;}' unless defined(&MTNOCACHE);
    if(defined(&__FreeBSD__)) {
	eval 'sub MTSETBSIZ () {10;}' unless defined(&MTSETBSIZ);
	eval 'sub MTSETDNSTY () {11;}' unless defined(&MTSETDNSTY);
	eval 'sub MTERASE () {12;}' unless defined(&MTERASE);
	eval 'sub MTEOD () {13;}' unless defined(&MTEOD);
	eval 'sub MTCOMP () {14;}' unless defined(&MTCOMP);
	eval 'sub MTRETENS () {15;}' unless defined(&MTRETENS);
	eval 'sub MTWSS () {16;}' unless defined(&MTWSS);
	eval 'sub MTFSS () {17;}' unless defined(&MTFSS);
	eval 'sub MTBSS () {18;}' unless defined(&MTBSS);
	eval 'sub MT_COMP_ENABLE () {0xffffffff;}' unless defined(&MT_COMP_ENABLE);
	eval 'sub MT_COMP_DISABLED () {0xfffffffe;}' unless defined(&MT_COMP_DISABLED);
	eval 'sub MT_COMP_UNSUPP () {0xfffffffd;}' unless defined(&MT_COMP_UNSUPP);
	eval 'sub MTIO_DSREG_NIL () {0;}' unless defined(&MTIO_DSREG_NIL);
	eval 'sub MTIO_DSREG_REST () {1;}' unless defined(&MTIO_DSREG_REST);
	eval 'sub MTIO_DSREG_RBSY () {2;}' unless defined(&MTIO_DSREG_RBSY);
	eval 'sub MTIO_DSREG_WR () {20;}' unless defined(&MTIO_DSREG_WR);
	eval 'sub MTIO_DSREG_FMK () {21;}' unless defined(&MTIO_DSREG_FMK);
	eval 'sub MTIO_DSREG_ZER () {22;}' unless defined(&MTIO_DSREG_ZER);
	eval 'sub MTIO_DSREG_RD () {30;}' unless defined(&MTIO_DSREG_RD);
	eval 'sub MTIO_DSREG_FWD () {40;}' unless defined(&MTIO_DSREG_FWD);
	eval 'sub MTIO_DSREG_REV () {41;}' unless defined(&MTIO_DSREG_REV);
	eval 'sub MTIO_DSREG_POS () {42;}' unless defined(&MTIO_DSREG_POS);
	eval 'sub MTIO_DSREG_REW () {43;}' unless defined(&MTIO_DSREG_REW);
	eval 'sub MTIO_DSREG_TEN () {44;}' unless defined(&MTIO_DSREG_TEN);
	eval 'sub MTIO_DSREG_UNL () {45;}' unless defined(&MTIO_DSREG_UNL);
	eval 'sub MTIO_DSREG_LD () {46;}' unless defined(&MTIO_DSREG_LD);
    }
    if(defined (&__FreeBSD__)) {
    }
    eval 'sub MT_ISTS () {0x1;}' unless defined(&MT_ISTS);
    eval 'sub MT_ISHT () {0x2;}' unless defined(&MT_ISHT);
    eval 'sub MT_ISTM () {0x3;}' unless defined(&MT_ISTM);
    eval 'sub MT_ISMT () {0x4;}' unless defined(&MT_ISMT);
    eval 'sub MT_ISUT () {0x5;}' unless defined(&MT_ISUT);
    eval 'sub MT_ISCPC () {0x6;}' unless defined(&MT_ISCPC);
    eval 'sub MT_ISAR () {0x7;}' unless defined(&MT_ISAR);
    eval 'sub MT_ISTMSCP () {0x8;}' unless defined(&MT_ISTMSCP);
    eval 'sub MT_ISCY () {0x9;}' unless defined(&MT_ISCY);
    eval 'sub MT_ISCT () {0xa;}' unless defined(&MT_ISCT);
    eval 'sub MT_ISFHP () {0xb;}' unless defined(&MT_ISFHP);
    eval 'sub MT_ISEXABYTE () {0xc;}' unless defined(&MT_ISEXABYTE);
    eval 'sub MT_ISEXA8200 () {0xc;}' unless defined(&MT_ISEXA8200);
    eval 'sub MT_ISEXA8500 () {0xd;}' unless defined(&MT_ISEXA8500);
    eval 'sub MT_ISVIPER1 () {0xe;}' unless defined(&MT_ISVIPER1);
    eval 'sub MT_ISPYTHON () {0xf;}' unless defined(&MT_ISPYTHON);
    eval 'sub MT_ISHPDAT () {0x10;}' unless defined(&MT_ISHPDAT);
    eval 'sub MT_ISMFOUR () {0x11;}' unless defined(&MT_ISMFOUR);
    eval 'sub MT_ISTK50 () {0x12;}' unless defined(&MT_ISTK50);
    eval 'sub MT_ISMT02 () {0x13;}' unless defined(&MT_ISMT02);
    eval 'sub MTIOCTOP () { &_IOW(ord(\'m\'), 1, \'struct mtop\');}' unless defined(&MTIOCTOP);
    eval 'sub MTIOCGET () { &_IOR(ord(\'m\'), 2, \'struct mtget\');}' unless defined(&MTIOCGET);
    eval 'sub MTIOCIEOT () { &_IO(ord(\'m\'), 3);}' unless defined(&MTIOCIEOT);
    eval 'sub MTIOCEEOT () { &_IO(ord(\'m\'), 4);}' unless defined(&MTIOCEEOT);
    eval 'sub MTIOCRDSPOS () { &_IOR(ord(\'m\'), 5,  &u_int32_t);}' unless defined(&MTIOCRDSPOS);
    eval 'sub MTIOCRDHPOS () { &_IOR(ord(\'m\'), 6,  &u_int32_t);}' unless defined(&MTIOCRDHPOS);
    eval 'sub MTIOCSLOCATE () { &_IOW(ord(\'m\'), 5,  &u_int32_t);}' unless defined(&MTIOCSLOCATE);
    eval 'sub MTIOCHLOCATE () { &_IOW(ord(\'m\'), 6,  &u_int32_t);}' unless defined(&MTIOCHLOCATE);
    eval 'sub MTIOCERRSTAT () { &_IOR(ord(\'m\'), 7, \'union mterrstat\');}' unless defined(&MTIOCERRSTAT);
    eval 'sub MTIOCSETEOTMODEL () { &_IOW(ord(\'m\'), 8,  &u_int32_t);}' unless defined(&MTIOCSETEOTMODEL);
    eval 'sub MTIOCGETEOTMODEL () { &_IOR(ord(\'m\'), 8,  &u_int32_t);}' unless defined(&MTIOCGETEOTMODEL);
    unless(defined(&_KERNEL)) {
	eval 'sub DEFTAPE () {"/dev/nsa0";}' unless defined(&DEFTAPE);
    }
}
1;
