require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_NAMEI_H_)) {
    eval 'sub _SYS_NAMEI_H_ () {1;}' unless defined(&_SYS_NAMEI_H_);
    require 'sys/caprights.ph';
    require 'sys/filedesc.ph';
    require 'sys/queue.ph';
    require 'sys/uio.ph';
    if(defined(&_KERNEL)) {
	eval 'sub LOOKUP () {0;}' unless defined(&LOOKUP);
	eval 'sub CREATE () {1;}' unless defined(&CREATE);
	eval 'sub DELETE () {2;}' unless defined(&DELETE);
	eval 'sub RENAME () {3;}' unless defined(&RENAME);
	eval 'sub OPMASK () {3;}' unless defined(&OPMASK);
	eval 'sub LOCKLEAF () {0x4;}' unless defined(&LOCKLEAF);
	eval 'sub LOCKPARENT () {0x8;}' unless defined(&LOCKPARENT);
	eval 'sub WANTPARENT () {0x10;}' unless defined(&WANTPARENT);
	eval 'sub NOCACHE () {0x20;}' unless defined(&NOCACHE);
	eval 'sub FOLLOW () {0x40;}' unless defined(&FOLLOW);
	eval 'sub LOCKSHARED () {0x100;}' unless defined(&LOCKSHARED);
	eval 'sub NOFOLLOW () {0x;}' unless defined(&NOFOLLOW);
	eval 'sub MODMASK () {0x1fc;}' unless defined(&MODMASK);
	eval 'sub RDONLY () {0x200;}' unless defined(&RDONLY);
	eval 'sub HASBUF () {0x400;}' unless defined(&HASBUF);
	eval 'sub SAVENAME () {0x800;}' unless defined(&SAVENAME);
	eval 'sub SAVESTART () {0x1000;}' unless defined(&SAVESTART);
	eval 'sub ISDOTDOT () {0x2000;}' unless defined(&ISDOTDOT);
	eval 'sub MAKEENTRY () {0x4000;}' unless defined(&MAKEENTRY);
	eval 'sub ISLASTCN () {0x8000;}' unless defined(&ISLASTCN);
	eval 'sub ISSYMLINK () {0x10000;}' unless defined(&ISSYMLINK);
	eval 'sub ISWHITEOUT () {0x20000;}' unless defined(&ISWHITEOUT);
	eval 'sub DOWHITEOUT () {0x40000;}' unless defined(&DOWHITEOUT);
	eval 'sub WILLBEDIR () {0x80000;}' unless defined(&WILLBEDIR);
	eval 'sub ISUNICODE () {0x100000;}' unless defined(&ISUNICODE);
	eval 'sub ISOPEN () {0x200000;}' unless defined(&ISOPEN);
	eval 'sub NOCROSSMOUNT () {0x400000;}' unless defined(&NOCROSSMOUNT);
	eval 'sub NOMACCHECK () {0x800000;}' unless defined(&NOMACCHECK);
	eval 'sub AUDITVNODE1 () {0x4000000;}' unless defined(&AUDITVNODE1);
	eval 'sub AUDITVNODE2 () {0x8000000;}' unless defined(&AUDITVNODE2);
	eval 'sub TRAILINGSLASH () {0x10000000;}' unless defined(&TRAILINGSLASH);
	eval 'sub NOCAPCHECK () {0x20000000;}' unless defined(&NOCAPCHECK);
	eval 'sub PARAMASK () {0x3ffffe00;}' unless defined(&PARAMASK);
	eval 'sub NDINIT {
	    my($ndp, $op, $flags, $segflg, $namep, $td) = @_;
    	    eval q( &NDINIT_ALL($ndp, $op, $flags, $segflg, $namep,  &AT_FDCWD,  &NULL, 0, $td));
	}' unless defined(&NDINIT);
	eval 'sub NDINIT_AT {
	    my($ndp, $op, $flags, $segflg, $namep, $dirfd, $td) = @_;
    	    eval q( &NDINIT_ALL($ndp, $op, $flags, $segflg, $namep, $dirfd,  &NULL, 0, $td));
	}' unless defined(&NDINIT_AT);
	eval 'sub NDINIT_ATRIGHTS {
	    my($ndp, $op, $flags, $segflg, $namep, $dirfd, $rightsp, $td) = @_;
    	    eval q( &NDINIT_ALL($ndp, $op, $flags, $segflg, $namep, $dirfd,  &NULL, $rightsp, $td));
	}' unless defined(&NDINIT_ATRIGHTS);
	eval 'sub NDINIT_ATVP {
	    my($ndp, $op, $flags, $segflg, $namep, $vp, $td) = @_;
    	    eval q( &NDINIT_ALL($ndp, $op, $flags, $segflg, $namep,  &AT_FDCWD, $vp, 0, $td));
	}' unless defined(&NDINIT_ATVP);
	eval 'sub NDF_NO_DVP_RELE () {0x1;}' unless defined(&NDF_NO_DVP_RELE);
	eval 'sub NDF_NO_DVP_UNLOCK () {0x2;}' unless defined(&NDF_NO_DVP_UNLOCK);
	eval 'sub NDF_NO_DVP_PUT () {0x3;}' unless defined(&NDF_NO_DVP_PUT);
	eval 'sub NDF_NO_VP_RELE () {0x4;}' unless defined(&NDF_NO_VP_RELE);
	eval 'sub NDF_NO_VP_UNLOCK () {0x8;}' unless defined(&NDF_NO_VP_UNLOCK);
	eval 'sub NDF_NO_VP_PUT () {0xc;}' unless defined(&NDF_NO_VP_PUT);
	eval 'sub NDF_NO_STARTDIR_RELE () {0x10;}' unless defined(&NDF_NO_STARTDIR_RELE);
	eval 'sub NDF_NO_FREE_PNBUF () {0x20;}' unless defined(&NDF_NO_FREE_PNBUF);
	eval 'sub NDF_ONLY_PNBUF () {(~ &NDF_NO_FREE_PNBUF);}' unless defined(&NDF_ONLY_PNBUF);
    }
}
1;
