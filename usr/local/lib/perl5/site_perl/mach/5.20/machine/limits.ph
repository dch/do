require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_LIMITS_H_)) {
    eval 'sub _MACHINE_LIMITS_H_ () {1;}' unless defined(&_MACHINE_LIMITS_H_);
    require 'sys/cdefs.ph';
    if(defined(&__CC_SUPPORTS_WARNING)) {
	warn("\"machine\/limits\.h\ is\ deprecated\.\ \ Include\ sys\/limits\.h\ instead\.\"");
    }
    require 'sys/limits.ph';
}
1;
