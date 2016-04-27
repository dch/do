require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_PCPU_H_)) {
    eval 'sub _MACHINE_PCPU_H_ () {1;}' unless defined(&_MACHINE_PCPU_H_);
    unless(defined(&_SYS_CDEFS_H_)) {
	die("sys/cdefs.h is a prerequisite for this file");
    }
    eval 'sub PCPU_MD_FIELDS () {\'char\'  $pc_monitorbuf[128]  &__aligned(128); \'struct pcpu\' * &pc_prvspace; \'struct pmap\' * &pc_curpmap; \'struct amd64tss\' * &pc_tssp; \'struct amd64tss\' * &pc_commontssp;  &register_t  &pc_rsp0;  &register_t  &pc_scratch_rsp; \'u_int\'  &pc_apic_id; \'u_int\'  &pc_acpi_id; \'struct user_segment_descriptor\' * &pc_fs32p; \'struct user_segment_descriptor\' * &pc_gs32p; \'struct system_segment_descriptor\' * &pc_ldt; \'struct system_segment_descriptor\' * &pc_tss;  &uint64_t  &pc_pm_save_cnt; \'u_int\'  &pc_cmci_mask;  &uint64_t  $pc_dbreg[16]; \'int\'  &pc_dbreg_cmd; \'u_int\'  &pc_vcpu_id; \'char\'  $__pad[157];}' unless defined(&PCPU_MD_FIELDS);
    eval 'sub PC_DBREG_CMD_NONE () {0;}' unless defined(&PC_DBREG_CMD_NONE);
    eval 'sub PC_DBREG_CMD_LOAD () {1;}' unless defined(&PC_DBREG_CMD_LOAD);
    if(defined(&_KERNEL)) {
	if(defined(&lint)) {
	    eval 'sub PCPU_GET {
	        my($member) = @_;
    		eval q(( ($pcpup->{pc_})  $member));
	    }' unless defined(&PCPU_GET);
	    eval 'sub PCPU_ADD {
	        my($member, $val) = @_;
    		eval q(( ($pcpup->{pc_})  $member += ($val)));
	    }' unless defined(&PCPU_ADD);
	    eval 'sub PCPU_INC {
	        my($member) = @_;
    		eval q( &PCPU_ADD($member, 1));
	    }' unless defined(&PCPU_INC);
	    eval 'sub PCPU_PTR {
	        my($member) = @_;
    		eval q(( ($pcpup->{pc_})  $member));
	    }' unless defined(&PCPU_PTR);
	    eval 'sub PCPU_SET {
	        my($member, $val) = @_;
    		eval q(( ($pcpup->{pc_})  $member = ($val)));
	    }' unless defined(&PCPU_SET);
	}
 elsif(defined(&__GNUCLIKE_ASM)  && defined(&__GNUCLIKE___TYPEOF)) {
	    eval 'sub __pcpu_offset {
	        my($name) = @_;
    		eval q( &__offsetof(\'struct pcpu\', $name));
	    }' unless defined(&__pcpu_offset);
	    eval 'sub __pcpu_type {
	        my($name) = @_;
    		eval q( &__typeof((0)->$name));
	    }' unless defined(&__pcpu_type);
	    eval 'sub __PCPU_PTR {
	        my($name) = @_;
    		eval q( &__extension__ ({  &__pcpu_type($name) * &__p;  &__asm  &__volatile(\\"movq %%gs:%1,%0; addq %2,%0\\" : \\"=r\\" ( &__p) : \\"m\\" (*( &__pcpu_offset( &pc_prvspace))), \\"i\\" ( &__pcpu_offset($name)));  &__p; }));
	    }' unless defined(&__PCPU_PTR);
	    eval 'sub __PCPU_GET {
	        my($name) = @_;
    		eval q( &__extension__ ({  &__pcpu_type($name)  &__res; \'struct __s\' { \'u_char\'  $__b[ &MIN($sizeof{ &__pcpu_type($name)}, 8)]; }  &__s;  &if ($sizeof{ &__res} == 1|| $sizeof{ &__res} == 2|| $sizeof{ &__res} == 4|| $sizeof{ &__res} == 8) {  &__asm  &__volatile(\\"mov %%gs:%1,%0\\" : \\"=r\\" ( &__s) : \\"m\\" (*( &__pcpu_offset($name)))); *( &void *)& &__res =  &__s; }  &else {  &__res = * &__PCPU_PTR($name); }  &__res; }));
	    }' unless defined(&__PCPU_GET);
	    eval 'sub __PCPU_ADD {
	        my($name, $val) = @_;
    		eval q( &do {  &__pcpu_type($name)  &__val; \'struct __s\' { \'u_char\'  $__b[ &MIN($sizeof{ &__pcpu_type($name)}, 8)]; }  &__s;  &__val = ($val);  &if ($sizeof{ &__val} == 1|| $sizeof{ &__val} == 2|| $sizeof{ &__val} == 4|| $sizeof{ &__val} == 8) {  &__s = *( &void *)& &__val;  &__asm  &__volatile(\\"add %1,%%gs:%0\\" : \\"=m\\" (*( &__pcpu_offset($name))) : \\"r\\" ( &__s)); }  &else * &__PCPU_PTR($name) +=  &__val; }  &while (0));
	    }' unless defined(&__PCPU_ADD);
	    eval 'sub __PCPU_INC {
	        my($name) = @_;
    		eval q( &do {  &CTASSERT($sizeof{ &__pcpu_type($name)} == 1|| $sizeof{ &__pcpu_type($name)} == 2|| $sizeof{ &__pcpu_type($name)} == 4|| $sizeof{ &__pcpu_type($name)} == 8);  &if ($sizeof{ &__pcpu_type($name)} == 1) {  &__asm  &__volatile(\\"incb %%gs:%0\\" : \\"=m\\" (*( &__pcpu_type($name) *)( &__pcpu_offset($name))) : \\"m\\" (*( &__pcpu_type($name) *)( &__pcpu_offset($name)))); }  &else  &if ($sizeof{ &__pcpu_type($name)} == 2) {  &__asm  &__volatile(\\"incw %%gs:%0\\" : \\"=m\\" (*( &__pcpu_type($name) *)( &__pcpu_offset($name))) : \\"m\\" (*( &__pcpu_type($name) *)( &__pcpu_offset($name)))); }  &else  &if ($sizeof{ &__pcpu_type($name)} == 4) {  &__asm  &__volatile(\\"incl %%gs:%0\\" : \\"=m\\" (*( &__pcpu_type($name) *)( &__pcpu_offset($name))) : \\"m\\" (*( &__pcpu_type($name) *)( &__pcpu_offset($name)))); }  &else  &if ($sizeof{ &__pcpu_type($name)} == 8) {  &__asm  &__volatile(\\"incq %%gs:%0\\" : \\"=m\\" (*( &__pcpu_type($name) *)( &__pcpu_offset($name))) : \\"m\\" (*( &__pcpu_type($name) *)( &__pcpu_offset($name)))); } }  &while (0));
	    }' unless defined(&__PCPU_INC);
	    eval 'sub __PCPU_SET {
	        my($name, $val) = @_;
    		eval q({  &__pcpu_type($name)  &__val; \'struct __s\' { \'u_char\'  $__b[ &MIN($sizeof{ &__pcpu_type($name)}, 8)]; }  &__s;  &__val = ($val);  &if ($sizeof{ &__val} == 1|| $sizeof{ &__val} == 2|| $sizeof{ &__val} == 4|| $sizeof{ &__val} == 8) {  &__s = *( &void *)& &__val;  &__asm  &__volatile(\\"mov %1,%%gs:%0\\" : \\"=m\\" (*( &__pcpu_offset($name))) : \\"r\\" ( &__s)); }  &else { * &__PCPU_PTR($name) =  &__val; } });
	    }' unless defined(&__PCPU_SET);
	    eval 'sub PCPU_GET {
	        my($member) = @_;
    		eval q( &__PCPU_GET( &pc_  $member));
	    }' unless defined(&PCPU_GET);
	    eval 'sub PCPU_ADD {
	        my($member, $val) = @_;
    		eval q( &__PCPU_ADD( &pc_  $member, $val));
	    }' unless defined(&PCPU_ADD);
	    eval 'sub PCPU_INC {
	        my($member) = @_;
    		eval q( &__PCPU_INC( &pc_  $member));
	    }' unless defined(&PCPU_INC);
	    eval 'sub PCPU_PTR {
	        my($member) = @_;
    		eval q( &__PCPU_PTR( &pc_  $member));
	    }' unless defined(&PCPU_PTR);
	    eval 'sub PCPU_SET {
	        my($member, $val) = @_;
    		eval q( &__PCPU_SET( &pc_  $member, $val));
	    }' unless defined(&PCPU_SET);
	    eval 'sub OFFSETOF_CURTHREAD () {0;}' unless defined(&OFFSETOF_CURTHREAD);
	    if(defined(&__clang__)) {
	    }
	    eval 'sub __curthread {
	        my($void) = @_;
    		eval q({ \'struct thread\' * &td;  &__asm(\\"movq %%gs:%1,%0\\" : \\"=r\\" : \\"m\\" (* &OFFSETOF_CURTHREAD)); ( &td); });
	    }' unless defined(&__curthread);
	    if(defined(&__clang__)) {
	    }
	    eval 'sub curthread () {( &__curthread());}' unless defined(&curthread);
	    eval 'sub OFFSETOF_CURPCB () {32;}' unless defined(&OFFSETOF_CURPCB);
	    eval 'sub __curpcb {
	        my($void) = @_;
    		eval q({ \'struct pcb\' * &pcb;  &__asm(\\"movq %%gs:%1,%0\\" : \\"=r\\" : \\"m\\" (* &OFFSETOF_CURPCB)); ( &pcb); });
	    }' unless defined(&__curpcb);
	    eval 'sub curpcb () {( &__curpcb());}' unless defined(&curpcb);
	    eval 'sub IS_BSP () {
	        eval q(( &PCPU_GET( &cpuid) == 0));
	    }' unless defined(&IS_BSP);
	} else {
	    die("this file needs to be ported to your compiler");
	}
    }
}
1;
