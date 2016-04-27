require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_IMGACT_H_)) {
    eval 'sub _SYS_IMGACT_H_ () {1;}' unless defined(&_SYS_IMGACT_H_);
    require 'sys/uio.ph';
    require 'vm/vm.ph';
    eval 'sub MAXSHELLCMDLEN () { &PAGE_SIZE;}' unless defined(&MAXSHELLCMDLEN);
    eval 'sub IMGACT_SHELL () {0x1;}' unless defined(&IMGACT_SHELL);
    eval 'sub IMGACT_BINMISC () {0x2;}' unless defined(&IMGACT_BINMISC);
    if(defined(&_KERNEL)) {
	eval 'sub IMGACT_CORE_COMPRESS () {0x1;}' unless defined(&IMGACT_CORE_COMPRESS);
    }
}
1;
