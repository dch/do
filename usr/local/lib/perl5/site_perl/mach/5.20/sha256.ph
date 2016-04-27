require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SHA256_H_)) {
    eval 'sub _SHA256_H_ () {1;}' unless defined(&_SHA256_H_);
    require 'sys/types.ph';
}
1;
