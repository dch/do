require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_VARARGS_H_)) {
    eval 'sub _VARARGS_H_ () {1;}' unless defined(&_VARARGS_H_);
    if(defined(&__GNUC__)  && ((defined(&__GNUC__) ? &__GNUC__ : undef) == 3 && (defined(&__GNUC_MINOR__) ? &__GNUC_MINOR__ : undef) > 2|| (defined(&__GNUC__) ? &__GNUC__ : undef) >= 4)) {
	die("<varargs.h> is obsolete with this version of GCC.");
	die("Change your code to use <stdarg.h> instead.");
    } else {
	require 'machine/varargs.ph';
    }
}
1;
