require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_GDB_MACHDEP_H_)) {
    eval 'sub _MACHINE_GDB_MACHDEP_H_ () {1;}' unless defined(&_MACHINE_GDB_MACHDEP_H_);
    eval 'sub GDB_BUFSZ () {( &GDB_NREGS * 16);}' unless defined(&GDB_BUFSZ);
    eval 'sub GDB_NREGS () {56;}' unless defined(&GDB_NREGS);
    eval 'sub GDB_REG_PC () {16;}' unless defined(&GDB_REG_PC);
    eval 'sub gdb_cpu_regsz {
        my($regnum) = @_;
	    eval q({ (($regnum > 16 && $regnum < 24) ? 4: 8); });
    }' unless defined(&gdb_cpu_regsz);
    eval 'sub gdb_cpu_query {
        my($void) = @_;
	    eval q({ (0); });
    }' unless defined(&gdb_cpu_query);
}
1;
