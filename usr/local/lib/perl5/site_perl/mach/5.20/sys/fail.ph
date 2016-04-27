require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_FAIL_H_)) {
    eval 'sub _SYS_FAIL_H_ () {1;}' unless defined(&_SYS_FAIL_H_);
    require 'sys/param.ph';
    require 'sys/cdefs.ph';
    require 'sys/linker_set.ph';
    require 'sys/queue.ph';
    require 'sys/sysctl.ph';
    eval("sub FAIL_POINT_RC_CONTINUE () { 0; }") unless defined(&FAIL_POINT_RC_CONTINUE);
    eval("sub FAIL_POINT_RC_RETURN () { 1; }") unless defined(&FAIL_POINT_RC_RETURN);
    eval("sub FAIL_POINT_RC_QUEUED () { 2; }") unless defined(&FAIL_POINT_RC_QUEUED);
    eval 'sub FAIL_POINT_DYNAMIC_NAME () {0x1;}' unless defined(&FAIL_POINT_DYNAMIC_NAME);
    eval 'sub _FAIL_POINT_NAME {
        my($name) = @_;
	    eval q( &_fail_point_$name);
    }' unless defined(&_FAIL_POINT_NAME);
    eval 'sub _FAIL_POINT_LOCATION () {
        eval q(\\"(\\"  &__FILE__ \\":\\"  &__XSTRING( &__LINE__) \\")\\");
    }' unless defined(&_FAIL_POINT_LOCATION);
    eval 'sub KFAIL_POINT_RETURN {
        my($parent, $name) = @_;
	    eval q( &KFAIL_POINT_CODE($parent, $name,  &return  &RETURN_VALUE));
    }' unless defined(&KFAIL_POINT_RETURN);
    eval 'sub KFAIL_POINT_RETURN_VOID {
        my($parent, $name) = @_;
	    eval q( &KFAIL_POINT_CODE($parent, $name,  &return));
    }' unless defined(&KFAIL_POINT_RETURN_VOID);
    eval 'sub KFAIL_POINT_ERROR {
        my($parent, $name, $error_var) = @_;
	    eval q( &KFAIL_POINT_CODE($parent, $name, ($error_var) =  &RETURN_VALUE));
    }' unless defined(&KFAIL_POINT_ERROR);
    eval 'sub KFAIL_POINT_GOTO {
        my($parent, $name, $error_var, $label) = @_;
	    eval q( &KFAIL_POINT_CODE($parent, $name, ($error_var) =  &RETURN_VALUE;  &goto $label));
    }' unless defined(&KFAIL_POINT_GOTO);
    eval 'sub KFAIL_POINT_CODE {
        my($parent, $name, $code) = @_;
	    eval q( &do { \'int\'  &RETURN_VALUE;  &static \'struct fail_point\'  &_FAIL_POINT_NAME($name) = { $name,  &_FAIL_POINT_LOCATION(),  &TAILQ_HEAD_INITIALIZER( &_FAIL_POINT_NAME($name). &fp_entries), 0,  &NULL,  &NULL, };  &SYSCTL_OID($parent,  &OID_AUTO, $name,  &CTLTYPE_STRING |  &CTLFLAG_RW |  &CTLFLAG_MPSAFE, & &_FAIL_POINT_NAME($name), 0,  &fail_point_sysctl, \\"A\\", \\"\\");  &if ( &__predict_false(  &fail_point_eval(& &_FAIL_POINT_NAME($name),  &RETURN_VALUE))) { $code; } }  &while (0));
    }' unless defined(&KFAIL_POINT_CODE);
    if(defined(&_KERNEL)) {
	eval 'sub DEBUG_FP () { &_debug_fail_point;}' unless defined(&DEBUG_FP);
    }
}
1;
