require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_IOCTL_FD_H_)) {
    eval 'sub _MACHINE_IOCTL_FD_H_ () {1;}' unless defined(&_MACHINE_IOCTL_FD_H_);
    unless(defined(&_KERNEL)) {
	require 'sys/types.ph';
    }
    require 'sys/ioccom.ph';
    eval 'sub FD_FORMAT_VERSION () {110;}' unless defined(&FD_FORMAT_VERSION);
    eval 'sub FD_MAX_NSEC () {36;}' unless defined(&FD_MAX_NSEC);
    eval 'sub fd_formb_secshift () { ($format_info->{secshift});}' unless defined(&fd_formb_secshift);
    eval 'sub fd_formb_nsecs () { ($format_info->{nsecs});}' unless defined(&fd_formb_nsecs);
    eval 'sub fd_formb_gaplen () { ($format_info->{gaplen});}' unless defined(&fd_formb_gaplen);
    eval 'sub fd_formb_fillbyte () { ($format_info->{fillbyte});}' unless defined(&fd_formb_fillbyte);
    eval 'sub fd_formb_cylno {
        my($i) = @_;
	    eval q( ($format_info->{idfields[$i]}->{cylno}));
    }' unless defined(&fd_formb_cylno);
    eval 'sub fd_formb_headno {
        my($i) = @_;
	    eval q( ($format_info->{idfields[$i]}->{headno}));
    }' unless defined(&fd_formb_headno);
    eval 'sub fd_formb_secno {
        my($i) = @_;
	    eval q( ($format_info->{idfields[$i]}->{secno}));
    }' unless defined(&fd_formb_secno);
    eval 'sub fd_formb_secsize {
        my($i) = @_;
	    eval q( ($format_info->{idfields[$i]}->{secsize}));
    }' unless defined(&fd_formb_secsize);
    eval 'sub FL_MFM () {0x1;}' unless defined(&FL_MFM);
    eval 'sub FL_2STEP () {0x2;}' unless defined(&FL_2STEP);
    eval 'sub FL_PERPND () {0x4;}' unless defined(&FL_PERPND);
    eval 'sub FL_AUTO () {0x8;}' unless defined(&FL_AUTO);
    eval("sub FDT_NONE () { 0; }") unless defined(&FDT_NONE);
    eval("sub FDT_360K () { 1; }") unless defined(&FDT_360K);
    eval("sub FDT_12M () { 2; }") unless defined(&FDT_12M);
    eval("sub FDT_720K () { 3; }") unless defined(&FDT_720K);
    eval("sub FDT_144M () { 4; }") unless defined(&FDT_144M);
    eval("sub FDT_288M_1 () { 5; }") unless defined(&FDT_288M_1);
    eval("sub FDT_288M () { 6; }") unless defined(&FDT_288M);
    eval 'sub FD_FORM () { &_IOW(ord(\'F\'), 61, \'struct fd_formb\');}' unless defined(&FD_FORM);
    eval 'sub FD_GTYPE () { &_IOR(ord(\'F\'), 62, \'struct fd_type\');}' unless defined(&FD_GTYPE);
    eval 'sub FD_STYPE () { &_IOW(ord(\'F\'), 63, \'struct fd_type\');}' unless defined(&FD_STYPE);
    eval 'sub FD_GOPTS () { &_IOR(ord(\'F\'), 64, \'int\');}' unless defined(&FD_GOPTS);
    eval 'sub FD_SOPTS () { &_IOW(ord(\'F\'), 65, \'int\');}' unless defined(&FD_SOPTS);
    if(defined(&PC98)) {
	eval 'sub FD_DEBUG () { &_IOW(ord(\'F\'), 66, \'int\');}' unless defined(&FD_DEBUG);
    }
    eval 'sub FD_CLRERR () { &_IO(ord(\'F\'), 67);}' unless defined(&FD_CLRERR);
    eval 'sub FD_READID () { &_IOWR(ord(\'F\'), 68, \'struct fdc_readid\');}' unless defined(&FD_READID);
    eval 'sub FD_GSTAT () { &_IOR(ord(\'F\'), 69, \'struct fdc_status\');}' unless defined(&FD_GSTAT);
    eval 'sub FD_GDTYPE () { &_IOR(ord(\'F\'), 70,  &enum  &fd_drivetype);}' unless defined(&FD_GDTYPE);
    eval 'sub FDOPT_NORETRY () {0x1;}' unless defined(&FDOPT_NORETRY);
    eval 'sub FDOPT_NOERRLOG () {0x2;}' unless defined(&FDOPT_NOERRLOG);
    eval 'sub FDOPT_NOERROR () {0x4;}' unless defined(&FDOPT_NOERROR);
    if(defined(&PC98)) {
	eval 'sub FDOPT_AUTOSEL () {0x8000;}' unless defined(&FDOPT_AUTOSEL);
    }
    eval 'sub FDC_500KBPS () {0x;}' unless defined(&FDC_500KBPS);
    eval 'sub FDC_300KBPS () {0x1;}' unless defined(&FDC_300KBPS);
    eval 'sub FDC_250KBPS () {0x2;}' unless defined(&FDC_250KBPS);
    eval 'sub FDC_1MBPS () {0x3;}' unless defined(&FDC_1MBPS);
    if(defined(&PC98)) {
	eval 'sub FDF_3_1722 () {21,2,0xff,0x4,82,0,2,2,0xc,2,0, &FL_MFM;}' unless defined(&FDF_3_1722);
	eval 'sub FDF_3_1476 () {18,2,0xff,0x1b,82,0,2,2,0x54,1,0, &FL_MFM;}' unless defined(&FDF_3_1476);
	eval 'sub FDF_3_1440 () {18,2,0xff,0x1b,80,0,2,2,0x54,1,0, &FL_MFM;}' unless defined(&FDF_3_1440);
	eval 'sub FDF_3_1200 () {15,2,0xff,0x1b,80,0,0,2,0x54,1,0, &FL_MFM;}' unless defined(&FDF_3_1200);
	eval 'sub FDF_3_820 () {10,2,0xff,0x10,82,0,1,2,0x30,1,0, &FL_MFM;}' unless defined(&FDF_3_820);
	eval 'sub FDF_3_800 () {10,2,0xff,0x10,80,0,1,2,0x30,1,0, &FL_MFM;}' unless defined(&FDF_3_800);
	eval 'sub FDF_3_720 () {9,2,0xff,0x20,80,0,1,2,0x50,1,0, &FL_MFM;}' unless defined(&FDF_3_720);
	eval 'sub FDF_3_360 () {9,2,0xff,0x20,40,0,1,2,0x50,1,0, &FL_MFM| &FL_2STEP;}' unless defined(&FDF_3_360);
	eval 'sub FDF_3_640 () {8,2,0xff,0x2a,80,0,1,2,0x50,1,0, &FL_MFM;}' unless defined(&FDF_3_640);
	eval 'sub FDF_3_1230 () {8,3,0xff,0x35,77,0,0,2,0x74,1,0, &FL_MFM;}' unless defined(&FDF_3_1230);
	eval 'sub FDF_3_1280 () {8,3,0xff,0x35,80,0,0,2,0x74,1,0, &FL_MFM;}' unless defined(&FDF_3_1280);
	eval 'sub FDF_3_1480 () {9,3,0xff,0x35,82,0,0,2,0x47,1,0, &FL_MFM;}' unless defined(&FDF_3_1480);
	eval 'sub FDF_3_1640 () {10,3,0xff,0x1b,82,0,2,2,0x54,1,0, &FL_MFM;}' unless defined(&FDF_3_1640);
	eval 'sub FDF_5_1200 () {15,2,0xff,0x1b,80,0,0,2,0x54,1,0, &FL_MFM;}' unless defined(&FDF_5_1200);
	eval 'sub FDF_5_820 () {10,2,0xff,0x10,82,0,1,2,0x30,1,0, &FL_MFM;}' unless defined(&FDF_5_820);
	eval 'sub FDF_5_800 () {10,2,0xff,0x10,80,0,1,2,0x30,1,0, &FL_MFM;}' unless defined(&FDF_5_800);
	eval 'sub FDF_5_720 () {9,2,0xff,0x20,80,0,1,2,0x50,1,0, &FL_MFM;}' unless defined(&FDF_5_720);
	eval 'sub FDF_5_360 () {9,2,0xff,0x20,40,0,1,2,0x50,1,0, &FL_MFM| &FL_2STEP;}' unless defined(&FDF_5_360);
	eval 'sub FDF_5_640 () {8,2,0xff,0x2a,80,0,1,2,0x50,1,0, &FL_MFM;}' unless defined(&FDF_5_640);
	eval 'sub FDF_5_1230 () {8,3,0xff,0x35,77,0,0,2,0x74,1,0, &FL_MFM;}' unless defined(&FDF_5_1230);
	eval 'sub FDF_5_1280 () {8,3,0xff,0x35,80,0,0,2,0x74,1,0, &FL_MFM;}' unless defined(&FDF_5_1280);
    } else {
	eval 'sub FDF_3_2880 () {36,2,0xff,0x1b,80,0, &FDC_1MBPS,002,0x4c,1,1, &FL_MFM| &FL_PERPND;}' unless defined(&FDF_3_2880);
	eval 'sub FDF_3_1722 () {21,2,0xff,0x4,82,0, &FDC_500KBPS,2,0xc,2,0, &FL_MFM;}' unless defined(&FDF_3_1722);
	eval 'sub FDF_3_1476 () {18,2,0xff,0x1b,82,0, &FDC_500KBPS,2,0x6c,1,0, &FL_MFM;}' unless defined(&FDF_3_1476);
	eval 'sub FDF_3_1440 () {18,2,0xff,0x1b,80,0, &FDC_500KBPS,2,0x6c,1,0, &FL_MFM;}' unless defined(&FDF_3_1440);
	eval 'sub FDF_3_1200 () {15,2,0xff,0x1b,80,0, &FDC_500KBPS,2,0x54,1,0, &FL_MFM;}' unless defined(&FDF_3_1200);
	eval 'sub FDF_3_820 () {10,2,0xff,0x10,82,0, &FDC_250KBPS,2,0x2e,1,0, &FL_MFM;}' unless defined(&FDF_3_820);
	eval 'sub FDF_3_800 () {10,2,0xff,0x10,80,0, &FDC_250KBPS,2,0x2e,1,0, &FL_MFM;}' unless defined(&FDF_3_800);
	eval 'sub FDF_3_720 () {9,2,0xff,0x20,80,0, &FDC_250KBPS,2,0x50,1,0, &FL_MFM;}' unless defined(&FDF_3_720);
	eval 'sub FDF_5_1480 () {18,2,0xff,0x2,82,0, &FDC_500KBPS,2,0x2,2,0, &FL_MFM;}' unless defined(&FDF_5_1480);
	eval 'sub FDF_5_1440 () {18,2,0xff,0x2,80,0, &FDC_500KBPS,2,0x2,2,0, &FL_MFM;}' unless defined(&FDF_5_1440);
	eval 'sub FDF_5_1230 () {8,3,0xff,0x35,77,0, &FDC_500KBPS,2,0x74,1,0, &FL_MFM;}' unless defined(&FDF_5_1230);
	eval 'sub FDF_5_1200 () {15,2,0xff,0x1b,80,0, &FDC_500KBPS,2,0x54,1,0, &FL_MFM;}' unless defined(&FDF_5_1200);
	eval 'sub FDF_5_820 () {10,2,0xff,0x10,82,0, &FDC_300KBPS,2,0x2e,1,0, &FL_MFM;}' unless defined(&FDF_5_820);
	eval 'sub FDF_5_800 () {10,2,0xff,0x10,80,0, &FDC_300KBPS,2,0x2e,1,0, &FL_MFM;}' unless defined(&FDF_5_800);
	eval 'sub FDF_5_720 () {9,2,0xff,0x20,80,0, &FDC_300KBPS,2,0x50,1,0, &FL_MFM;}' unless defined(&FDF_5_720);
	eval 'sub FDF_5_640 () {8,2,0xff,0x2a,80,0, &FDC_300KBPS,2,0x50,1,0, &FL_MFM;}' unless defined(&FDF_5_640);
	eval 'sub FDF_5_360 () {9,2,0xff,0x23,40,0, &FDC_300KBPS,2,0x50,1,0, &FL_MFM;}' unless defined(&FDF_5_360);
    }
}
1;
