require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_VARARGS_H_)) {
    eval 'sub _MACHINE_VARARGS_H_ () {1;}' unless defined(&_MACHINE_VARARGS_H_);
    unless(defined(&_SYS_CDEFS_H_)) {
	die("this\ file\ needs\ sys\/cdefs\.h\ as\ a\ prerequisite");
    }
    if(defined(&__GNUCLIKE_BUILTIN_VARARGS)) {
	require 'sys/_types.ph';
	unless(defined(&_VA_LIST_DECLARED)) {
	    eval 'sub _VA_LIST_DECLARED () {1;}' unless defined(&_VA_LIST_DECLARED);
	}
	eval 'sub va_alist () { &__builtin_va_alist;}' unless defined(&va_alist);
	eval 'sub va_dcl () { &__builtin_va_alist_t  &__builtin_va_alist; ...;}' unless defined(&va_dcl);
	eval 'sub va_start {
	    my($ap) = @_;
    	    eval q( &__builtin_varargs_start($ap));
	}' unless defined(&va_start);
	eval 'sub va_arg {
	    my($ap, $type) = @_;
    	    eval q( &__builtin_va_arg(($ap), $type));
	}' unless defined(&va_arg);
	eval 'sub va_end {
	    my($ap) = @_;
    	    eval q( &__builtin_va_end($ap));
	}' unless defined(&va_end);
    } else {
	eval 'sub __va_size {
	    my($type) = @_;
    	    eval q(((($sizeof{$type} + $sizeof{\'int\'} - 1) / $sizeof{\'int\'}) * $sizeof{\'int\'}));
	}' unless defined(&__va_size);
	if(defined(&__GNUCLIKE_BUILTIN_VAALIST)) {
	    eval 'sub va_alist () { &__builtin_va_alist;}' unless defined(&va_alist);
	}
	eval 'sub va_dcl () {\'int\'  &va_alist; ...;}' unless defined(&va_dcl);
	eval 'sub va_start {
	    my($ap) = @_;
    	    eval q((($ap) = ( &va_list) &va_alist));
	}' unless defined(&va_start);
	eval 'sub va_arg {
	    my($ap, $type) = @_;
    	    eval q((*($type *)(($ap) +=  &__va_size($type), ($ap) -  &__va_size($type))));
	}' unless defined(&va_arg);
	eval 'sub va_end {
	    my($ap) = @_;
    	    eval q();
	}' unless defined(&va_end);
    }
}
1;
