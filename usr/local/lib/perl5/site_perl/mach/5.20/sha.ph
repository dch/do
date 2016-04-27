require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SHA_H_)) {
    eval 'sub _SHA_H_ () {1;}' unless defined(&_SHA_H_);
    require 'sys/cdefs.ph';
    require 'sys/types.ph';
    eval 'sub SHA_CBLOCK () {64;}' unless defined(&SHA_CBLOCK);
    eval 'sub SHA_LBLOCK () {16;}' unless defined(&SHA_LBLOCK);
    eval 'sub SHA_BLOCK () {16;}' unless defined(&SHA_BLOCK);
    eval 'sub SHA_LAST_BLOCK () {56;}' unless defined(&SHA_LAST_BLOCK);
    eval 'sub SHA_LENGTH_BLOCK () {8;}' unless defined(&SHA_LENGTH_BLOCK);
    eval 'sub SHA_DIGEST_LENGTH () {20;}' unless defined(&SHA_DIGEST_LENGTH);
    eval 'sub SHA1_CTX () { &SHA_CTX;}' unless defined(&SHA1_CTX);
}
1;
