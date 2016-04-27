require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__XDBM_H__)) {
    eval 'sub __XDBM_H__ () {1;}' unless defined(&__XDBM_H__);
    if((defined(&HAVE_DB_NDBM) ? &HAVE_DB_NDBM : undef)) {
	eval 'sub DB_DBM_HSEARCH () {1;}' unless defined(&DB_DBM_HSEARCH);
	require 'db.ph';
    }
 elsif((defined(&HAVE_NDBM) ? &HAVE_NDBM : undef)) {
	if(defined(&HAVE_GDBM_NDBM_H)) {
	    require 'gdbm/ndbm.ph';
	}
 elsif(defined(&HAVE_NDBM_H)) {
	    require 'ndbm.ph';
	}
    }
}
1;
