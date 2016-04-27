require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_EXEC_H_)) {
    eval 'sub _SYS_EXEC_H_ () {1;}' unless defined(&_SYS_EXEC_H_);
    eval 'sub PS_STRINGS () {( &USRSTACK - $sizeof{\'struct ps_strings\'});}' unless defined(&PS_STRINGS);
    eval 'sub SPARE_USRSPACE () {4096;}' unless defined(&SPARE_USRSPACE);
    require 'machine/exec.ph';
    if(defined(&_KERNEL)) {
	require 'sys/cdefs.ph';
	require 'sys/module.ph';
	eval 'sub EXEC_SET {
	    my($name, $execsw_arg) = @_;
    	    eval q( &static \'int\'  &__CONCAT($name, &_modevent)( &module_t  &mod, \'int\'  &type,  &void * &data) { \'struct execsw\' * &exec =  &data; \'int\'  &error = 0;  &switch ( &type) {  &case  &MOD_LOAD:  &error =  &exec_register( &exec);  &if ( &error)  &printf( &__XSTRING($name) \\"register failed\\\\n\\");  &break;  &case  &MOD_UNLOAD:  &error =  &exec_unregister( &exec);  &if ( &error)  &printf( &__XSTRING($name) \\" unregister failed\\\\n\\");  &break;  &default:  &error =  &EOPNOTSUPP;  &break; }  &return  &error; }  &static  &moduledata_t  &__CONCAT($name, &_mod) = {  &__XSTRING($name),  &__CONCAT($name, &_modevent), ( &void *)& $execsw_arg };  &DECLARE_MODULE_TIED($name,  &__CONCAT($name, &_mod),  &SI_SUB_EXEC,  &SI_ORDER_ANY));
	}' unless defined(&EXEC_SET);
    }
}
1;
