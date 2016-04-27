require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_SOCKBUF_H_)) {
    eval 'sub _SYS_SOCKBUF_H_ () {1;}' unless defined(&_SYS_SOCKBUF_H_);
    require 'sys/selinfo.ph';
    require 'sys/_lock.ph';
    require 'sys/_mutex.ph';
    require 'sys/_sx.ph';
    eval 'sub SB_MAX () {(2*1024*1024);}' unless defined(&SB_MAX);
    eval 'sub SB_WAIT () {0x4;}' unless defined(&SB_WAIT);
    eval 'sub SB_SEL () {0x8;}' unless defined(&SB_SEL);
    eval 'sub SB_ASYNC () {0x10;}' unless defined(&SB_ASYNC);
    eval 'sub SB_UPCALL () {0x20;}' unless defined(&SB_UPCALL);
    eval 'sub SB_NOINTR () {0x40;}' unless defined(&SB_NOINTR);
    eval 'sub SB_AIO () {0x80;}' unless defined(&SB_AIO);
    eval 'sub SB_KNOTE () {0x100;}' unless defined(&SB_KNOTE);
    eval 'sub SB_NOCOALESCE () {0x200;}' unless defined(&SB_NOCOALESCE);
    eval 'sub SB_IN_TOE () {0x400;}' unless defined(&SB_IN_TOE);
    eval 'sub SB_AUTOSIZE () {0x800;}' unless defined(&SB_AUTOSIZE);
    eval 'sub SB_STOP () {0x1000;}' unless defined(&SB_STOP);
    eval 'sub SBS_CANTSENDMORE () {0x10;}' unless defined(&SBS_CANTSENDMORE);
    eval 'sub SBS_CANTRCVMORE () {0x20;}' unless defined(&SBS_CANTRCVMORE);
    eval 'sub SBS_RCVATMARK () {0x40;}' unless defined(&SBS_RCVATMARK);
    eval 'sub sb_startzero () { &sb_mb;}' unless defined(&sb_startzero);
    if(defined(&_KERNEL)) {
	eval 'sub SOCKBUF_MTX {
	    my($_sb) = @_;
    	    eval q((($_sb)-> &sb_mtx));
	}' unless defined(&SOCKBUF_MTX);
	eval 'sub SOCKBUF_LOCK_INIT {
	    my($_sb, $_name) = @_;
    	    eval q( &mtx_init( &SOCKBUF_MTX($_sb), $_name,  &NULL,  &MTX_DEF));
	}' unless defined(&SOCKBUF_LOCK_INIT);
	eval 'sub SOCKBUF_LOCK_DESTROY {
	    my($_sb) = @_;
    	    eval q( &mtx_destroy( &SOCKBUF_MTX($_sb)));
	}' unless defined(&SOCKBUF_LOCK_DESTROY);
	eval 'sub SOCKBUF_LOCK {
	    my($_sb) = @_;
    	    eval q( &mtx_lock( &SOCKBUF_MTX($_sb)));
	}' unless defined(&SOCKBUF_LOCK);
	eval 'sub SOCKBUF_OWNED {
	    my($_sb) = @_;
    	    eval q( &mtx_owned( &SOCKBUF_MTX($_sb)));
	}' unless defined(&SOCKBUF_OWNED);
	eval 'sub SOCKBUF_UNLOCK {
	    my($_sb) = @_;
    	    eval q( &mtx_unlock( &SOCKBUF_MTX($_sb)));
	}' unless defined(&SOCKBUF_UNLOCK);
	eval 'sub SOCKBUF_LOCK_ASSERT {
	    my($_sb) = @_;
    	    eval q( &mtx_assert( &SOCKBUF_MTX($_sb),  &MA_OWNED));
	}' unless defined(&SOCKBUF_LOCK_ASSERT);
	eval 'sub SOCKBUF_UNLOCK_ASSERT {
	    my($_sb) = @_;
    	    eval q( &mtx_assert( &SOCKBUF_MTX($_sb),  &MA_NOTOWNED));
	}' unless defined(&SOCKBUF_UNLOCK_ASSERT);
	eval 'sub sballoc {
	    my($sb, $m) = @_;
    	    eval q({ ($sb)-> &sb_cc += ($m)-> &m_len;  &if (($m)-> &m_type !=  &MT_DATA  && ($m)-> &m_type !=  &MT_OOBDATA) ($sb)-> &sb_ctl += ($m)-> &m_len; ($sb)-> &sb_mbcnt +=  &MSIZE; ($sb)-> &sb_mcnt += 1;  &if (($m)-> &m_flags &  &M_EXT) { ($sb)-> &sb_mbcnt += ($m)-> ($m_ext->{ext_size}); ($sb)-> &sb_ccnt += 1; } });
	}' unless defined(&sballoc);
	eval 'sub sbfree {
	    my($sb, $m) = @_;
    	    eval q({ ($sb)-> &sb_cc -= ($m)-> &m_len;  &if (($m)-> &m_type !=  &MT_DATA  && ($m)-> &m_type !=  &MT_OOBDATA) ($sb)-> &sb_ctl -= ($m)-> &m_len; ($sb)-> &sb_mbcnt -=  &MSIZE; ($sb)-> &sb_mcnt -= 1;  &if (($m)-> &m_flags &  &M_EXT) { ($sb)-> &sb_mbcnt -= ($m)-> ($m_ext->{ext_size}); ($sb)-> &sb_ccnt -= 1; }  &if (($sb)-> &sb_sndptr == ($m)) { ($sb)-> &sb_sndptr =  &NULL; ($sb)-> &sb_sndptroff = 0; }  &if (($sb)-> &sb_sndptroff != 0) ($sb)-> &sb_sndptroff -= ($m)-> &m_len; });
	}' unless defined(&sbfree);
	eval 'sub SB_EMPTY_FIXUP {
	    my($sb) = @_;
    	    eval q( &do {  &if (($sb)-> &sb_mb ==  &NULL) { ($sb)-> &sb_mbtail =  &NULL; ($sb)-> &sb_lastrecord =  &NULL; } }  &while ( 0));
	}' unless defined(&SB_EMPTY_FIXUP);
	if(defined(&SOCKBUF_DEBUG)) {
	    eval 'sub SBLASTRECORDCHK {
	        my($sb) = @_;
    		eval q( &sblastrecordchk(($sb),  &__FILE__,  &__LINE__));
	    }' unless defined(&SBLASTRECORDCHK);
	    eval 'sub SBLASTMBUFCHK {
	        my($sb) = @_;
    		eval q( &sblastmbufchk(($sb),  &__FILE__,  &__LINE__));
	    }' unless defined(&SBLASTMBUFCHK);
	} else {
	    eval 'sub SBLASTRECORDCHK {
	        my($sb) = @_;
    		eval q();
	    }' unless defined(&SBLASTRECORDCHK);
	    eval 'sub SBLASTMBUFCHK {
	        my($sb) = @_;
    		eval q();
	    }' unless defined(&SBLASTMBUFCHK);
	}
    }
}
1;
