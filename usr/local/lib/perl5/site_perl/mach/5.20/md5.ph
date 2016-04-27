require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MD5_H_)) {
    eval 'sub _MD5_H_ () {1;}' unless defined(&_MD5_H_);
    require 'sys/md5.ph';
}
1;
