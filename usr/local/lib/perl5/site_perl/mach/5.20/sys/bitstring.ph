require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_BITSTRING_H_)) {
    eval 'sub _SYS_BITSTRING_H_ () {1;}' unless defined(&_SYS_BITSTRING_H_);
    eval 'sub _bit_byte {
        my($bit) = @_;
	    eval q((($bit) >> 3));
    }' unless defined(&_bit_byte);
    eval 'sub _bit_mask {
        my($bit) = @_;
	    eval q((1<< (($bit)&0x7)));
    }' unless defined(&_bit_mask);
    eval 'sub bitstr_size {
        my($nbits) = @_;
	    eval q(((($nbits) + 7) >> 3));
    }' unless defined(&bitstr_size);
    eval 'sub bit_alloc {
        my($nbits) = @_;
	    eval q(( &bitstr_t *) &calloc( &bitstr_size($nbits), $sizeof{ &bitstr_t}));
    }' unless defined(&bit_alloc);
    eval 'sub bit_decl {
        my($name, $nbits) = @_;
	    eval q((($name)[ &bitstr_size($nbits)]));
    }' unless defined(&bit_decl);
    eval 'sub bit_test {
        my($name, $bit) = @_;
	    eval q((($name)[ &_bit_byte($bit)] &  &_bit_mask($bit)));
    }' unless defined(&bit_test);
    eval 'sub bit_set {
        my($name, $bit) = @_;
	    eval q((($name)[ &_bit_byte($bit)] |=  &_bit_mask($bit)));
    }' unless defined(&bit_set);
    eval 'sub bit_clear {
        my($name, $bit) = @_;
	    eval q((($name)[ &_bit_byte($bit)] &= ~ &_bit_mask($bit)));
    }' unless defined(&bit_clear);
    eval 'sub bit_nclear {
        my($name, $start, $stop) = @_;
	    eval q( &do {  &register  &bitstr_t * &_name = ($name);  &register \'int\'  &_start = ($start),  &_stop = ($stop);  &register \'int\'  &_startbyte =  &_bit_byte( &_start);  &register \'int\'  &_stopbyte =  &_bit_byte( &_stop);  &if ( &_startbyte ==  &_stopbyte) {  $_name[ &_startbyte] &= ((0xff >> (8- ( &_start&0x7))) | (0xff << (( &_stop&0x7) + 1))); }  &else {  $_name[ &_startbyte] &= 0xff >> (8- ( &_start&0x7));  &while (++ &_startbyte <  &_stopbyte)  $_name[ &_startbyte] = 0;  $_name[ &_stopbyte] &= 0xff << (( &_stop&0x7) + 1); } }  &while (0));
    }' unless defined(&bit_nclear);
    eval 'sub bit_nset {
        my($name, $start, $stop) = @_;
	    eval q( &do {  &register  &bitstr_t * &_name = ($name);  &register \'int\'  &_start = ($start),  &_stop = ($stop);  &register \'int\'  &_startbyte =  &_bit_byte( &_start);  &register \'int\'  &_stopbyte =  &_bit_byte( &_stop);  &if ( &_startbyte ==  &_stopbyte) {  $_name[ &_startbyte] |= ((0xff << ( &_start&0x7)) & (0xff >> (7- ( &_stop&0x7)))); }  &else {  $_name[ &_startbyte] |= 0xff << (( &_start)&0x7);  &while (++ &_startbyte <  &_stopbyte)  $_name[ &_startbyte] = 0xff;  $_name[ &_stopbyte] |= 0xff >> (7- ( &_stop&0x7)); } }  &while (0));
    }' unless defined(&bit_nset);
    eval 'sub bit_ffc {
        my($name, $nbits, $value) = @_;
	    eval q( &do {  &register  &bitstr_t * &_name = ($name);  &register \'int\'  &_byte,  &_nbits = ($nbits);  &register \'int\'  &_stopbyte =  &_bit_byte( &_nbits - 1),  &_value = -1;  &if ( &_nbits > 0)  &for ( &_byte = 0;  &_byte <=  &_stopbyte; ++ &_byte)  &if ( $_name[ &_byte] != 0xff) {  &bitstr_t  &_lb;  &_value =  &_byte << 3;  &for ( &_lb =  $_name[ &_byte]; ( &_lb&0x1); ++ &_value,  &_lb >>= 1);  &break; }  &if ( &_value >= $nbits)  &_value = -1; *($value) =  &_value; }  &while (0));
    }' unless defined(&bit_ffc);
    eval 'sub bit_ffs {
        my($name, $nbits, $value) = @_;
	    eval q( &do {  &register  &bitstr_t * &_name = ($name);  &register \'int\'  &_byte,  &_nbits = ($nbits);  &register \'int\'  &_stopbyte =  &_bit_byte( &_nbits - 1),  &_value = -1;  &if ( &_nbits > 0)  &for ( &_byte = 0;  &_byte <=  &_stopbyte; ++ &_byte)  &if ( $_name[ &_byte]) {  &bitstr_t  &_lb;  &_value =  &_byte << 3;  &for ( &_lb =  $_name[ &_byte]; !( &_lb&0x1); ++ &_value,  &_lb >>= 1);  &break; }  &if ( &_value >= $nbits)  &_value = -1; *($value) =  &_value; }  &while (0));
    }' unless defined(&bit_ffs);
}
1;
