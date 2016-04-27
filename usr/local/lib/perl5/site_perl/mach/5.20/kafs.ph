require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__KAFS_H)) {
    eval 'sub __KAFS_H () {1;}' unless defined(&__KAFS_H);
    eval 'sub AFSCALL_PIOCTL () {20;}' unless defined(&AFSCALL_PIOCTL);
    eval 'sub AFSCALL_SETPAG () {21;}' unless defined(&AFSCALL_SETPAG);
    unless(defined(&_VICEIOCTL)) {
	eval 'sub _VICEIOCTL {
	    my($id) = @_;
    	    eval q((  &_IOW(ord(\'V\'), $id, \'struct ViceIoctl\')));
	}' unless defined(&_VICEIOCTL);
	eval 'sub _AFSCIOCTL {
	    my($id) = @_;
    	    eval q((  &_IOW(ord(\'C\'), $id, \'struct ViceIoctl\')));
	}' unless defined(&_AFSCIOCTL);
    }
    eval 'sub VIOCSETAL () { &_VICEIOCTL(1);}' unless defined(&VIOCSETAL);
    eval 'sub VIOCGETAL () { &_VICEIOCTL(2);}' unless defined(&VIOCGETAL);
    eval 'sub VIOCSETTOK () { &_VICEIOCTL(3);}' unless defined(&VIOCSETTOK);
    eval 'sub VIOCGETVOLSTAT () { &_VICEIOCTL(4);}' unless defined(&VIOCGETVOLSTAT);
    eval 'sub VIOCSETVOLSTAT () { &_VICEIOCTL(5);}' unless defined(&VIOCSETVOLSTAT);
    eval 'sub VIOCFLUSH () { &_VICEIOCTL(6);}' unless defined(&VIOCFLUSH);
    eval 'sub VIOCGETTOK () { &_VICEIOCTL(8);}' unless defined(&VIOCGETTOK);
    eval 'sub VIOCUNLOG () { &_VICEIOCTL(9);}' unless defined(&VIOCUNLOG);
    eval 'sub VIOCCKSERV () { &_VICEIOCTL(10);}' unless defined(&VIOCCKSERV);
    eval 'sub VIOCCKBACK () { &_VICEIOCTL(11);}' unless defined(&VIOCCKBACK);
    eval 'sub VIOCCKCONN () { &_VICEIOCTL(12);}' unless defined(&VIOCCKCONN);
    eval 'sub VIOCWHEREIS () { &_VICEIOCTL(14);}' unless defined(&VIOCWHEREIS);
    eval 'sub VIOCACCESS () { &_VICEIOCTL(20);}' unless defined(&VIOCACCESS);
    eval 'sub VIOCUNPAG () { &_VICEIOCTL(21);}' unless defined(&VIOCUNPAG);
    eval 'sub VIOCGETFID () { &_VICEIOCTL(22);}' unless defined(&VIOCGETFID);
    eval 'sub VIOCSETCACHESIZE () { &_VICEIOCTL(24);}' unless defined(&VIOCSETCACHESIZE);
    eval 'sub VIOCFLUSHCB () { &_VICEIOCTL(25);}' unless defined(&VIOCFLUSHCB);
    eval 'sub VIOCNEWCELL () { &_VICEIOCTL(26);}' unless defined(&VIOCNEWCELL);
    eval 'sub VIOCGETCELL () { &_VICEIOCTL(27);}' unless defined(&VIOCGETCELL);
    eval 'sub VIOC_AFS_DELETE_MT_PT () { &_VICEIOCTL(28);}' unless defined(&VIOC_AFS_DELETE_MT_PT);
    eval 'sub VIOC_AFS_STAT_MT_PT () { &_VICEIOCTL(29);}' unless defined(&VIOC_AFS_STAT_MT_PT);
    eval 'sub VIOC_FILE_CELL_NAME () { &_VICEIOCTL(30);}' unless defined(&VIOC_FILE_CELL_NAME);
    eval 'sub VIOC_GET_WS_CELL () { &_VICEIOCTL(31);}' unless defined(&VIOC_GET_WS_CELL);
    eval 'sub VIOC_AFS_MARINER_HOST () { &_VICEIOCTL(32);}' unless defined(&VIOC_AFS_MARINER_HOST);
    eval 'sub VIOC_GET_PRIMARY_CELL () { &_VICEIOCTL(33);}' unless defined(&VIOC_GET_PRIMARY_CELL);
    eval 'sub VIOC_VENUSLOG () { &_VICEIOCTL(34);}' unless defined(&VIOC_VENUSLOG);
    eval 'sub VIOC_GETCELLSTATUS () { &_VICEIOCTL(35);}' unless defined(&VIOC_GETCELLSTATUS);
    eval 'sub VIOC_SETCELLSTATUS () { &_VICEIOCTL(36);}' unless defined(&VIOC_SETCELLSTATUS);
    eval 'sub VIOC_FLUSHVOLUME () { &_VICEIOCTL(37);}' unless defined(&VIOC_FLUSHVOLUME);
    eval 'sub VIOC_AFS_SYSNAME () { &_VICEIOCTL(38);}' unless defined(&VIOC_AFS_SYSNAME);
    eval 'sub VIOC_EXPORTAFS () { &_VICEIOCTL(39);}' unless defined(&VIOC_EXPORTAFS);
    eval 'sub VIOCGETCACHEPARAMS () { &_VICEIOCTL(40);}' unless defined(&VIOCGETCACHEPARAMS);
    eval 'sub VIOC_GCPAGS () { &_VICEIOCTL(48);}' unless defined(&VIOC_GCPAGS);
    eval 'sub VIOCGETTOK2 () { &_AFSCIOCTL(7);}' unless defined(&VIOCGETTOK2);
    eval 'sub VIOCSETTOK2 () { &_AFSCIOCTL(8);}' unless defined(&VIOCSETTOK2);
    eval 'sub k_afsklog () { &krb_afslog;}' unless defined(&k_afsklog);
    eval 'sub k_afsklog_uid () { &krb_afslog_uid;}' unless defined(&k_afsklog_uid);
    if(defined(&KFAILURE)) {
	eval 'sub KRB_H_INCLUDED () {1;}' unless defined(&KRB_H_INCLUDED);
    }
    if(defined(&KRB5_RECVAUTH_IGNORE_VERSION)) {
	eval 'sub KRB5_H_INCLUDED () {1;}' unless defined(&KRB5_H_INCLUDED);
    }
    if(defined(&KRB_H_INCLUDED)) {
    }
    if(defined(&KRB5_H_INCLUDED)) {
    }
    if(defined(&KRB5_H_INCLUDED)) {
    }
    eval 'sub _PATH_VICE () {"/usr/vice/etc/";}' unless defined(&_PATH_VICE);
    eval 'sub _PATH_THISCELL () { &_PATH_VICE "ThisCell";}' unless defined(&_PATH_THISCELL);
    eval 'sub _PATH_CELLSERVDB () { &_PATH_VICE "CellServDB";}' unless defined(&_PATH_CELLSERVDB);
    eval 'sub _PATH_THESECELLS () { &_PATH_VICE "TheseCells";}' unless defined(&_PATH_THESECELLS);
    eval 'sub _PATH_ARLA_VICE () {"/usr/arla/etc/";}' unless defined(&_PATH_ARLA_VICE);
    eval 'sub _PATH_ARLA_THISCELL () { &_PATH_ARLA_VICE "ThisCell";}' unless defined(&_PATH_ARLA_THISCELL);
    eval 'sub _PATH_ARLA_CELLSERVDB () { &_PATH_ARLA_VICE "CellServDB";}' unless defined(&_PATH_ARLA_CELLSERVDB);
    eval 'sub _PATH_ARLA_THESECELLS () { &_PATH_ARLA_VICE "TheseCells";}' unless defined(&_PATH_ARLA_THESECELLS);
    eval 'sub _PATH_OPENAFS_DEBIAN_VICE () {"/etc/openafs/";}' unless defined(&_PATH_OPENAFS_DEBIAN_VICE);
    eval 'sub _PATH_OPENAFS_DEBIAN_THISCELL () { &_PATH_OPENAFS_DEBIAN_VICE "ThisCell";}' unless defined(&_PATH_OPENAFS_DEBIAN_THISCELL);
    eval 'sub _PATH_OPENAFS_DEBIAN_CELLSERVDB () { &_PATH_OPENAFS_DEBIAN_VICE "CellServDB";}' unless defined(&_PATH_OPENAFS_DEBIAN_CELLSERVDB);
    eval 'sub _PATH_OPENAFS_DEBIAN_THESECELLS () { &_PATH_OPENAFS_DEBIAN_VICE "TheseCells";}' unless defined(&_PATH_OPENAFS_DEBIAN_THESECELLS);
    eval 'sub _PATH_OPENAFS_MACOSX_VICE () {"/var/db/openafs/etc/";}' unless defined(&_PATH_OPENAFS_MACOSX_VICE);
    eval 'sub _PATH_OPENAFS_MACOSX_THISCELL () { &_PATH_OPENAFS_MACOSX_VICE "ThisCell";}' unless defined(&_PATH_OPENAFS_MACOSX_THISCELL);
    eval 'sub _PATH_OPENAFS_MACOSX_CELLSERVDB () { &_PATH_OPENAFS_MACOSX_VICE "CellServDB";}' unless defined(&_PATH_OPENAFS_MACOSX_CELLSERVDB);
    eval 'sub _PATH_OPENAFS_MACOSX_THESECELLS () { &_PATH_OPENAFS_MACOSX_VICE "TheseCells";}' unless defined(&_PATH_OPENAFS_MACOSX_THESECELLS);
    eval 'sub _PATH_ARLA_DEBIAN_VICE () {"/etc/arla/";}' unless defined(&_PATH_ARLA_DEBIAN_VICE);
    eval 'sub _PATH_ARLA_DEBIAN_THISCELL () { &_PATH_ARLA_DEBIAN_VICE "ThisCell";}' unless defined(&_PATH_ARLA_DEBIAN_THISCELL);
    eval 'sub _PATH_ARLA_DEBIAN_CELLSERVDB () { &_PATH_ARLA_DEBIAN_VICE "CellServDB";}' unless defined(&_PATH_ARLA_DEBIAN_CELLSERVDB);
    eval 'sub _PATH_ARLA_DEBIAN_THESECELLS () { &_PATH_ARLA_DEBIAN_VICE "TheseCells";}' unless defined(&_PATH_ARLA_DEBIAN_THESECELLS);
    eval 'sub _PATH_ARLA_OPENBSD_VICE () {"/etc/afs/";}' unless defined(&_PATH_ARLA_OPENBSD_VICE);
    eval 'sub _PATH_ARLA_OPENBSD_THISCELL () { &_PATH_ARLA_OPENBSD_VICE "ThisCell";}' unless defined(&_PATH_ARLA_OPENBSD_THISCELL);
    eval 'sub _PATH_ARLA_OPENBSD_CELLSERVDB () { &_PATH_ARLA_OPENBSD_VICE "CellServDB";}' unless defined(&_PATH_ARLA_OPENBSD_CELLSERVDB);
    eval 'sub _PATH_ARLA_OPENBSD_THESECELLS () { &_PATH_ARLA_OPENBSD_VICE "TheseCells";}' unless defined(&_PATH_ARLA_OPENBSD_THESECELLS);
}
1;
