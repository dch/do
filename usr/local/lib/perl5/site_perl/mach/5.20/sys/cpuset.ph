require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_CPUSET_H_)) {
    eval 'sub _SYS_CPUSET_H_ () {1;}' unless defined(&_SYS_CPUSET_H_);
    require 'sys/_cpuset.ph';
    require 'sys/bitset.ph';
    eval 'sub CPUSETBUFSIZ () {((2+ $sizeof{\'long\'} * 2) *  &_NCPUWORDS);}' unless defined(&CPUSETBUFSIZ);
    eval 'sub CPU_CLR {
        my($n, $p) = @_;
	    eval q( &BIT_CLR( &CPU_SETSIZE, $n, $p));
    }' unless defined(&CPU_CLR);
    eval 'sub CPU_COPY {
        my($f, $t) = @_;
	    eval q( &BIT_COPY( &CPU_SETSIZE, $f, $t));
    }' unless defined(&CPU_COPY);
    eval 'sub CPU_ISSET {
        my($n, $p) = @_;
	    eval q( &BIT_ISSET( &CPU_SETSIZE, $n, $p));
    }' unless defined(&CPU_ISSET);
    eval 'sub CPU_SET {
        my($n, $p) = @_;
	    eval q( &BIT_SET( &CPU_SETSIZE, $n, $p));
    }' unless defined(&CPU_SET);
    eval 'sub CPU_ZERO {
        my($p) = @_;
	    eval q( &BIT_ZERO( &CPU_SETSIZE, $p));
    }' unless defined(&CPU_ZERO);
    eval 'sub CPU_FILL {
        my($p) = @_;
	    eval q( &BIT_FILL( &CPU_SETSIZE, $p));
    }' unless defined(&CPU_FILL);
    eval 'sub CPU_SETOF {
        my($n, $p) = @_;
	    eval q( &BIT_SETOF( &CPU_SETSIZE, $n, $p));
    }' unless defined(&CPU_SETOF);
    eval 'sub CPU_EMPTY {
        my($p) = @_;
	    eval q( &BIT_EMPTY( &CPU_SETSIZE, $p));
    }' unless defined(&CPU_EMPTY);
    eval 'sub CPU_ISFULLSET {
        my($p) = @_;
	    eval q( &BIT_ISFULLSET( &CPU_SETSIZE, $p));
    }' unless defined(&CPU_ISFULLSET);
    eval 'sub CPU_SUBSET {
        my($p, $c) = @_;
	    eval q( &BIT_SUBSET( &CPU_SETSIZE, $p, $c));
    }' unless defined(&CPU_SUBSET);
    eval 'sub CPU_OVERLAP {
        my($p, $c) = @_;
	    eval q( &BIT_OVERLAP( &CPU_SETSIZE, $p, $c));
    }' unless defined(&CPU_OVERLAP);
    eval 'sub CPU_CMP {
        my($p, $c) = @_;
	    eval q( &BIT_CMP( &CPU_SETSIZE, $p, $c));
    }' unless defined(&CPU_CMP);
    eval 'sub CPU_OR {
        my($d, $s) = @_;
	    eval q( &BIT_OR( &CPU_SETSIZE, $d, $s));
    }' unless defined(&CPU_OR);
    eval 'sub CPU_AND {
        my($d, $s) = @_;
	    eval q( &BIT_AND( &CPU_SETSIZE, $d, $s));
    }' unless defined(&CPU_AND);
    eval 'sub CPU_NAND {
        my($d, $s) = @_;
	    eval q( &BIT_NAND( &CPU_SETSIZE, $d, $s));
    }' unless defined(&CPU_NAND);
    eval 'sub CPU_CLR_ATOMIC {
        my($n, $p) = @_;
	    eval q( &BIT_CLR_ATOMIC( &CPU_SETSIZE, $n, $p));
    }' unless defined(&CPU_CLR_ATOMIC);
    eval 'sub CPU_SET_ATOMIC {
        my($n, $p) = @_;
	    eval q( &BIT_SET_ATOMIC( &CPU_SETSIZE, $n, $p));
    }' unless defined(&CPU_SET_ATOMIC);
    eval 'sub CPU_AND_ATOMIC {
        my($n, $p) = @_;
	    eval q( &BIT_AND_ATOMIC( &CPU_SETSIZE, $n, $p));
    }' unless defined(&CPU_AND_ATOMIC);
    eval 'sub CPU_OR_ATOMIC {
        my($d, $s) = @_;
	    eval q( &BIT_OR_ATOMIC( &CPU_SETSIZE, $d, $s));
    }' unless defined(&CPU_OR_ATOMIC);
    eval 'sub CPU_COPY_STORE_REL {
        my($f, $t) = @_;
	    eval q( &BIT_COPY_STORE_REL( &CPU_SETSIZE, $f, $t));
    }' unless defined(&CPU_COPY_STORE_REL);
    eval 'sub CPU_FFS {
        my($p) = @_;
	    eval q( &BIT_FFS( &CPU_SETSIZE, $p));
    }' unless defined(&CPU_FFS);
    eval 'sub CPU_LEVEL_ROOT () {1;}' unless defined(&CPU_LEVEL_ROOT);
    eval 'sub CPU_LEVEL_CPUSET () {2;}' unless defined(&CPU_LEVEL_CPUSET);
    eval 'sub CPU_LEVEL_WHICH () {3;}' unless defined(&CPU_LEVEL_WHICH);
    eval 'sub CPU_WHICH_TID () {1;}' unless defined(&CPU_WHICH_TID);
    eval 'sub CPU_WHICH_PID () {2;}' unless defined(&CPU_WHICH_PID);
    eval 'sub CPU_WHICH_CPUSET () {3;}' unless defined(&CPU_WHICH_CPUSET);
    eval 'sub CPU_WHICH_IRQ () {4;}' unless defined(&CPU_WHICH_IRQ);
    eval 'sub CPU_WHICH_JAIL () {5;}' unless defined(&CPU_WHICH_JAIL);
    eval 'sub CPUSET_INVALID () {-1;}' unless defined(&CPUSET_INVALID);
    eval 'sub CPUSET_DEFAULT () {0;}' unless defined(&CPUSET_DEFAULT);
    if(defined(&_KERNEL)) {
	eval 'sub CPU_SET_ROOT () {0x1;}' unless defined(&CPU_SET_ROOT);
	eval 'sub CPU_SET_RDONLY () {0x2;}' unless defined(&CPU_SET_RDONLY);
	if(defined(&DDB)) {
	}
    } else {
    }
}
1;
