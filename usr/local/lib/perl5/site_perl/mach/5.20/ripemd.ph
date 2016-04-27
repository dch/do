require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&HEADER_RIPEMD_H)) {
    eval 'sub HEADER_RIPEMD_H () {1;}' unless defined(&HEADER_RIPEMD_H);
    require 'sys/cdefs.ph';
    require 'sys/types.ph';
    eval 'sub RIPEMD160_CBLOCK () {64;}' unless defined(&RIPEMD160_CBLOCK);
    eval 'sub RIPEMD160_LBLOCK () {16;}' unless defined(&RIPEMD160_LBLOCK);
    eval 'sub RIPEMD160_BLOCK () {16;}' unless defined(&RIPEMD160_BLOCK);
    eval 'sub RIPEMD160_LAST_BLOCK () {56;}' unless defined(&RIPEMD160_LAST_BLOCK);
    eval 'sub RIPEMD160_LENGTH_BLOCK () {8;}' unless defined(&RIPEMD160_LENGTH_BLOCK);
    eval 'sub RIPEMD160_DIGEST_LENGTH () {20;}' unless defined(&RIPEMD160_DIGEST_LENGTH);
}
1;
