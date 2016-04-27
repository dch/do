require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_LIBGEN_H_)) {
    eval 'sub _LIBGEN_H_ () {1;}' unless defined(&_LIBGEN_H_);
    require 'sys/cdefs.ph';
    if(0) {
    }
}
1;
