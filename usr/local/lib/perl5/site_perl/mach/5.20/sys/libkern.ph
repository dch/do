require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_LIBKERN_H_)) {
    eval 'sub _SYS_LIBKERN_H_ () {1;}' unless defined(&_SYS_LIBKERN_H_);
    require 'sys/cdefs.ph';
    require 'sys/types.ph';
    if(defined(&_KERNEL)) {
	require 'sys/systm.ph';
    }
    unless(defined(&LIBKERN_INLINE)) {
	eval 'sub LIBKERN_INLINE () { &static  &__inline;}' unless defined(&LIBKERN_INLINE);
	eval 'sub LIBKERN_BODY () {1;}' unless defined(&LIBKERN_BODY);
    }
    eval 'sub bcd2bin {
        my($bcd) = @_;
	    eval q(( $bcd2bin_data[$bcd]));
    }' unless defined(&bcd2bin);
    eval 'sub bin2bcd {
        my($bin) = @_;
	    eval q(( $bin2bcd_data[$bin]));
    }' unless defined(&bin2bcd);
    eval 'sub hex2ascii {
        my($hex) = @_;
	    eval q(( $hex2ascii_data[$hex]));
    }' unless defined(&hex2ascii);
    unless(defined(&HAVE_INLINE_FFS)) {
    }
    unless(defined(&HAVE_INLINE_FFSL)) {
    }
    unless(defined(&HAVE_INLINE_FLS)) {
    }
    unless(defined(&HAVE_INLINE_FLSL)) {
    }
    unless(defined(&HAVE_INLINE_FLSLL)) {
    }
    eval 'sub crc32_raw {
        my($buf,$size,$crc) = @_;
	    eval q({  &const  &uint8_t * &p = ( &const  &uint8_t *)$buf;  &while ($size--) $crc =  $crc32_tab[($crc ^ * &p++) & 0xff] ^ ($crc >> 8); ($crc); });
    }' unless defined(&crc32_raw);
    eval 'sub crc32 {
        my($buf,$size) = @_;
	    eval q({  &uint32_t  &crc;  &crc =  &crc32_raw($buf, $size, ~0); ( &crc ^ ~0); });
    }' unless defined(&crc32);
    if(defined(&LIBKERN_BODY)) {
    }
    eval 'sub index {
        my($p,$ch) = @_;
	    eval q({ ( &strchr($p, $ch)); });
    }' unless defined(&index);
    eval 'sub rindex {
        my($p,$ch) = @_;
	    eval q({ ( &strrchr($p, $ch)); });
    }' unless defined(&rindex);
    eval 'sub FNM_NOMATCH () {1;}' unless defined(&FNM_NOMATCH);
    eval 'sub FNM_NOESCAPE () {0x1;}' unless defined(&FNM_NOESCAPE);
    eval 'sub FNM_PATHNAME () {0x2;}' unless defined(&FNM_PATHNAME);
    eval 'sub FNM_PERIOD () {0x4;}' unless defined(&FNM_PERIOD);
    eval 'sub FNM_LEADING_DIR () {0x8;}' unless defined(&FNM_LEADING_DIR);
    eval 'sub FNM_CASEFOLD () {0x10;}' unless defined(&FNM_CASEFOLD);
    eval 'sub FNM_IGNORECASE () { &FNM_CASEFOLD;}' unless defined(&FNM_IGNORECASE);
    eval 'sub FNM_FILE_NAME () { &FNM_PATHNAME;}' unless defined(&FNM_FILE_NAME);
}
1;
