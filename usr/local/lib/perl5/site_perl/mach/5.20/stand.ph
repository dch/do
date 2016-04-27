require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&STAND_H)) {
    eval 'sub STAND_H () {1;}' unless defined(&STAND_H);
    require 'sys/types.ph';
    require 'sys/cdefs.ph';
    require 'sys/stat.ph';
    require 'sys/dirent.ph';
    require 'string.ph';
    eval 'sub CHK () {( &fmt,  &args...)  &printf("%s(%d): "  &fmt "\\n",  &__func__,  &__LINE__ ,  &args);}' unless defined(&CHK);
    eval 'sub PCHK () {( &fmt,  &args...) { &printf("%s(%d): "  &fmt "\\n",  &__func__,  &__LINE__ ,  &args);  &getchar();};}' unless defined(&PCHK);
    eval 'sub _KERNEL () {1;}' unless defined(&_KERNEL);
    require 'sys/errno.ph';
    undef(&_KERNEL) if defined(&_KERNEL);
    eval 'sub EADAPT () {( &ELAST+1);}' unless defined(&EADAPT);
    eval 'sub ECTLR () {( &ELAST+2);}' unless defined(&ECTLR);
    eval 'sub EUNIT () {( &ELAST+3);}' unless defined(&EUNIT);
    eval 'sub ESLICE () {( &ELAST+4);}' unless defined(&ESLICE);
    eval 'sub EPART () {( &ELAST+5);}' unless defined(&EPART);
    eval 'sub ERDLAB () {( &ELAST+6);}' unless defined(&ERDLAB);
    eval 'sub EUNLAB () {( &ELAST+7);}' unless defined(&EUNLAB);
    eval 'sub EOFFSET () {( &ELAST+8);}' unless defined(&EOFFSET);
    eval 'sub ESALAST () {( &ELAST+8);}' unless defined(&ESALAST);
    eval 'sub SEEK_SET () {0;}' unless defined(&SEEK_SET);
    eval 'sub SEEK_CUR () {1;}' unless defined(&SEEK_CUR);
    eval 'sub SEEK_END () {2;}' unless defined(&SEEK_END);
    eval 'sub SOPEN_RASIZE () {512;}' unless defined(&SOPEN_RASIZE);
    eval 'sub SOPEN_MAX () {64;}' unless defined(&SOPEN_MAX);
    eval 'sub F_READ () {0x1;}' unless defined(&F_READ);
    eval 'sub F_WRITE () {0x2;}' unless defined(&F_WRITE);
    eval 'sub F_RAW () {0x4;}' unless defined(&F_RAW);
    eval 'sub F_NODEV () {0x8;}' unless defined(&F_NODEV);
    eval 'sub isascii {
        my($c) = @_;
	    eval q(((($c) & ~0x7f) == 0));
    }' unless defined(&isascii);
    eval 'sub isupper {
        my($c) = @_;
	    eval q({ $c >= ord(\'A\' && c <= \'Z\'); });
    }' unless defined(&isupper);
    eval 'sub islower {
        my($c) = @_;
	    eval q({ $c >= ord(\'a\' && c <= \'z\'); });
    }' unless defined(&islower);
    eval 'sub isspace {
        my($c) = @_;
	    eval q({ $c == ord(\' \') || ($c >= 0x9  && $c <= 0xd); });
    }' unless defined(&isspace);
    eval 'sub isdigit {
        my($c) = @_;
	    eval q({ $c >= ord(\'0\' && c <= \'9\'); });
    }' unless defined(&isdigit);
    eval 'sub isxdigit {
        my($c) = @_;
	    eval q({  &isdigit($c) || ($c >= ord(\'a\' && c <= \'f\') || (c >= \'A\' && c <= \'F\')); });
    }' unless defined(&isxdigit);
    eval 'sub isalpha {
        my($c) = @_;
	    eval q({  &isupper($c) ||  &islower($c); });
    }' unless defined(&isalpha);
    eval 'sub isalnum {
        my($c) = @_;
	    eval q({  &isalpha($c) ||  &isdigit($c); });
    }' unless defined(&isalnum);
    eval 'sub toupper {
        my($c) = @_;
	    eval q({  &islower($c) ? $c - ord(\'a\' + \'A\') : $c; });
    }' unless defined(&toupper);
    eval 'sub tolower {
        my($c) = @_;
	    eval q({  &isupper($c) ? $c - ord(\'A\' + \'a\') : $c; });
    }' unless defined(&tolower);
    eval 'sub gets {
        my($x) = @_;
	    eval q( &ngets(($x), 0));
    }' unless defined(&gets);
    eval 'sub O_RDONLY () {0x;}' unless defined(&O_RDONLY);
    eval 'sub O_WRONLY () {0x1;}' unless defined(&O_WRONLY);
    eval 'sub O_RDWR () {0x2;}' unless defined(&O_RDWR);
    eval 'sub setjmp () { &_setjmp;}' unless defined(&setjmp);
    eval 'sub longjmp () {\'_longjmp\';}' unless defined(&longjmp);
    eval 'sub EV_DYNAMIC () {(1<<0);}' unless defined(&EV_DYNAMIC);
    eval 'sub EV_VOLATILE () {(1<<1);}' unless defined(&EV_VOLATILE);
    eval 'sub EV_NOHOOK () {(1<<2);}' unless defined(&EV_NOHOOK);
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
}
unless(defined(&_BYTEORDER_PROTOTYPED)) {
    eval 'sub _BYTEORDER_PROTOTYPED () {1;}' unless defined(&_BYTEORDER_PROTOTYPED);
}
unless(defined(&_BYTEORDER_FUNC_DEFINED)) {
    eval 'sub _BYTEORDER_FUNC_DEFINED () {1;}' unless defined(&_BYTEORDER_FUNC_DEFINED);
    eval 'sub htonl {
        my($x) = @_;
	    eval q( &__htonl($x));
    }' unless defined(&htonl);
    eval 'sub htons {
        my($x) = @_;
	    eval q( &__htons($x));
    }' unless defined(&htons);
    eval 'sub ntohl {
        my($x) = @_;
	    eval q( &__ntohl($x));
    }' unless defined(&ntohl);
    eval 'sub ntohs {
        my($x) = @_;
	    eval q( &__ntohs($x));
    }' unless defined(&ntohs);
}
if(1) {
    eval 'sub malloc {
        my($x) = @_;
	    eval q( &Malloc($x,  &__FILE__,  &__LINE__));
    }' unless defined(&malloc);
    eval 'sub calloc {
        my($x, $y) = @_;
	    eval q( &Calloc($x, $y,  &__FILE__,  &__LINE__));
    }' unless defined(&calloc);
    eval 'sub free {
        my($x) = @_;
	    eval q( &Free($x,  &__FILE__,  &__LINE__));
    }' unless defined(&free);
    eval 'sub realloc {
        my($x, $y) = @_;
	    eval q( &Realloc($x, $y,  &__FILE__,  &__LINE__));
    }' unless defined(&realloc);
} else {
    eval 'sub malloc {
        my($x) = @_;
	    eval q( &Malloc($x,  &NULL, 0));
    }' unless defined(&malloc);
    eval 'sub calloc {
        my($x, $y) = @_;
	    eval q( &Calloc($x, $y,  &NULL, 0));
    }' unless defined(&calloc);
    eval 'sub free {
        my($x) = @_;
	    eval q( &Free($x,  &NULL, 0));
    }' unless defined(&free);
    eval 'sub realloc {
        my($x, $y) = @_;
	    eval q( &Realloc($x, $y,  &NULL, 0));
    }' unless defined(&realloc);
}
    }
1;
