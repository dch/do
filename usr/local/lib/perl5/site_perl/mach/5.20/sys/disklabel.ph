require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_DISKLABEL_H_)) {
    eval 'sub _SYS_DISKLABEL_H_ () {1;}' unless defined(&_SYS_DISKLABEL_H_);
    unless(defined(&_KERNEL)) {
	require 'sys/types.ph';
    }
    require 'sys/ioccom.ph';
    eval 'sub _PATH_DISKTAB () {"/etc/disktab";}' unless defined(&_PATH_DISKTAB);
    if(defined(&__i386__) || defined(&__amd64__) || defined(&__arm__) || defined(&__ia64__) || defined(&__powerpc__) || defined(&__mips__)) {
	eval 'sub LABELSECTOR () {1;}' unless defined(&LABELSECTOR);
	eval 'sub LABELOFFSET () {0;}' unless defined(&LABELOFFSET);
    }
    eval 'sub DISKMAGIC () {(( &u_int32_t)0x82564557);}' unless defined(&DISKMAGIC);
    unless(defined(&MAXPARTITIONS)) {
	eval 'sub MAXPARTITIONS () {8;}' unless defined(&MAXPARTITIONS);
    }
    eval 'sub BBSIZE () {8192;}' unless defined(&BBSIZE);
    eval 'sub LABEL_PART () {2;}' unless defined(&LABEL_PART);
    eval 'sub RAW_PART () {2;}' unless defined(&RAW_PART);
    eval 'sub SWAP_PART () {1;}' unless defined(&SWAP_PART);
    eval 'sub NDDATA () {5;}' unless defined(&NDDATA);
    eval 'sub NSPARE () {5;}' unless defined(&NSPARE);
    if(defined(&CTASSERT)) {
    }
    eval 'sub dkcksum {
        my($lp) = @_;
	    eval q({  &u_int16_t * &start, * &end;  &u_int16_t  &sum = 0;  &start = ( &u_int16_t *)$lp;  &end = ( &u_int16_t *) ($lp->{d_partitions[$lp}->{d_npartitions]});  &while ( &start <  &end)  &sum ^= * &start++; ( &sum); });
    }' unless defined(&dkcksum);
    eval 'sub DTYPE_SMD () {1;}' unless defined(&DTYPE_SMD);
    eval 'sub DTYPE_MSCP () {2;}' unless defined(&DTYPE_MSCP);
    eval 'sub DTYPE_DEC () {3;}' unless defined(&DTYPE_DEC);
    eval 'sub DTYPE_SCSI () {4;}' unless defined(&DTYPE_SCSI);
    eval 'sub DTYPE_ESDI () {5;}' unless defined(&DTYPE_ESDI);
    eval 'sub DTYPE_ST506 () {6;}' unless defined(&DTYPE_ST506);
    eval 'sub DTYPE_HPIB () {7;}' unless defined(&DTYPE_HPIB);
    eval 'sub DTYPE_HPFL () {8;}' unless defined(&DTYPE_HPFL);
    eval 'sub DTYPE_FLOPPY () {10;}' unless defined(&DTYPE_FLOPPY);
    eval 'sub DTYPE_CCD () {11;}' unless defined(&DTYPE_CCD);
    eval 'sub DTYPE_VINUM () {12;}' unless defined(&DTYPE_VINUM);
    eval 'sub DTYPE_DOC2K () {13;}' unless defined(&DTYPE_DOC2K);
    eval 'sub DTYPE_RAID () {14;}' unless defined(&DTYPE_RAID);
    eval 'sub DTYPE_JFS2 () {16;}' unless defined(&DTYPE_JFS2);
    if(defined(&DKTYPENAMES)) {
	eval 'sub DKMAXTYPES () {($sizeof{ &dktypenames} / $sizeof{ $dktypenames[0]} - 1);}' unless defined(&DKMAXTYPES);
    }
    eval 'sub FS_UNUSED () {0;}' unless defined(&FS_UNUSED);
    eval 'sub FS_SWAP () {1;}' unless defined(&FS_SWAP);
    eval 'sub FS_V6 () {2;}' unless defined(&FS_V6);
    eval 'sub FS_V7 () {3;}' unless defined(&FS_V7);
    eval 'sub FS_SYSV () {4;}' unless defined(&FS_SYSV);
    eval 'sub FS_V71K () {5;}' unless defined(&FS_V71K);
    eval 'sub FS_V8 () {6;}' unless defined(&FS_V8);
    eval 'sub FS_BSDFFS () {7;}' unless defined(&FS_BSDFFS);
    eval 'sub FS_MSDOS () {8;}' unless defined(&FS_MSDOS);
    eval 'sub FS_BSDLFS () {9;}' unless defined(&FS_BSDLFS);
    eval 'sub FS_OTHER () {10;}' unless defined(&FS_OTHER);
    eval 'sub FS_HPFS () {11;}' unless defined(&FS_HPFS);
    eval 'sub FS_ISO9660 () {12;}' unless defined(&FS_ISO9660);
    eval 'sub FS_BOOT () {13;}' unless defined(&FS_BOOT);
    eval 'sub FS_VINUM () {14;}' unless defined(&FS_VINUM);
    eval 'sub FS_RAID () {15;}' unless defined(&FS_RAID);
    eval 'sub FS_FILECORE () {16;}' unless defined(&FS_FILECORE);
    eval 'sub FS_EXT2FS () {17;}' unless defined(&FS_EXT2FS);
    eval 'sub FS_NTFS () {18;}' unless defined(&FS_NTFS);
    eval 'sub FS_CCD () {20;}' unless defined(&FS_CCD);
    eval 'sub FS_JFS2 () {21;}' unless defined(&FS_JFS2);
    eval 'sub FS_HAMMER () {22;}' unless defined(&FS_HAMMER);
    eval 'sub FS_HAMMER2 () {23;}' unless defined(&FS_HAMMER2);
    eval 'sub FS_UDF () {24;}' unless defined(&FS_UDF);
    eval 'sub FS_EFS () {26;}' unless defined(&FS_EFS);
    eval 'sub FS_ZFS () {27;}' unless defined(&FS_ZFS);
    eval 'sub FS_NANDFS () {30;}' unless defined(&FS_NANDFS);
    if(defined(&FSTYPENAMES)) {
	eval 'sub FSMAXTYPES () {($sizeof{ &fstypenames} / $sizeof{ $fstypenames[0]} - 1);}' unless defined(&FSMAXTYPES);
    }
    eval 'sub D_REMOVABLE () {0x1;}' unless defined(&D_REMOVABLE);
    eval 'sub D_ECC () {0x2;}' unless defined(&D_ECC);
    eval 'sub D_BADSECT () {0x4;}' unless defined(&D_BADSECT);
    eval 'sub D_RAMDISK () {0x8;}' unless defined(&D_RAMDISK);
    eval 'sub D_CHAIN () {0x10;}' unless defined(&D_CHAIN);
    eval 'sub DIOCGDINFO () { &_IOR(ord(\'d\'), 101, \'struct disklabel\');}' unless defined(&DIOCGDINFO);
    eval 'sub DIOCSDINFO () { &_IOW(ord(\'d\'), 102, \'struct disklabel\');}' unless defined(&DIOCSDINFO);
    eval 'sub DIOCWDINFO () { &_IOW(ord(\'d\'), 103, \'struct disklabel\');}' unless defined(&DIOCWDINFO);
    eval 'sub DIOCBSDBB () { &_IOW(ord(\'d\'), 110,  &void *);}' unless defined(&DIOCBSDBB);
    unless(defined(&_KERNEL)) {
    }
}
1;
