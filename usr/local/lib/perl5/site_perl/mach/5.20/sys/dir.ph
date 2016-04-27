require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_DIR_H_)) {
    eval 'sub _SYS_DIR_H_ () {1;}' unless defined(&_SYS_DIR_H_);
    require 'sys/cdefs.ph';
    if(defined(&__CC_SUPPORTS_WARNING)) {
	warn("\"The\ information\ in\ this\ file\ should\ be\ obtained\ from\ \<dirent\.h\>\"");
	warn("\"and\ is\ provided\ solely\ \(and\ temporarily\)\ for\ backward\ compatibility\.\"");
    }
    require 'dirent.ph';
    eval 'sub direct () { &dirent;}' unless defined(&direct);
    eval 'sub DIRSIZ {
        my($dp) = @_;
	    eval q( &_GENERIC_DIRSIZ($dp));
    }' unless defined(&DIRSIZ);
}
1;
