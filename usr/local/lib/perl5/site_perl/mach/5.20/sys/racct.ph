require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_RACCT_H_)) {
    eval 'sub _RACCT_H_ () {1;}' unless defined(&_RACCT_H_);
    require 'sys/cdefs.ph';
    require 'sys/queue.ph';
    require 'sys/types.ph';
    eval 'sub RACCT_UNDEFINED () {-1;}' unless defined(&RACCT_UNDEFINED);
    eval 'sub RACCT_CPU () {0;}' unless defined(&RACCT_CPU);
    eval 'sub RACCT_DATA () {1;}' unless defined(&RACCT_DATA);
    eval 'sub RACCT_STACK () {2;}' unless defined(&RACCT_STACK);
    eval 'sub RACCT_CORE () {3;}' unless defined(&RACCT_CORE);
    eval 'sub RACCT_RSS () {4;}' unless defined(&RACCT_RSS);
    eval 'sub RACCT_MEMLOCK () {5;}' unless defined(&RACCT_MEMLOCK);
    eval 'sub RACCT_NPROC () {6;}' unless defined(&RACCT_NPROC);
    eval 'sub RACCT_NOFILE () {7;}' unless defined(&RACCT_NOFILE);
    eval 'sub RACCT_VMEM () {8;}' unless defined(&RACCT_VMEM);
    eval 'sub RACCT_NPTS () {9;}' unless defined(&RACCT_NPTS);
    eval 'sub RACCT_SWAP () {10;}' unless defined(&RACCT_SWAP);
    eval 'sub RACCT_NTHR () {11;}' unless defined(&RACCT_NTHR);
    eval 'sub RACCT_MSGQQUEUED () {12;}' unless defined(&RACCT_MSGQQUEUED);
    eval 'sub RACCT_MSGQSIZE () {13;}' unless defined(&RACCT_MSGQSIZE);
    eval 'sub RACCT_NMSGQ () {14;}' unless defined(&RACCT_NMSGQ);
    eval 'sub RACCT_NSEM () {15;}' unless defined(&RACCT_NSEM);
    eval 'sub RACCT_NSEMOP () {16;}' unless defined(&RACCT_NSEMOP);
    eval 'sub RACCT_NSHM () {17;}' unless defined(&RACCT_NSHM);
    eval 'sub RACCT_SHMSIZE () {18;}' unless defined(&RACCT_SHMSIZE);
    eval 'sub RACCT_WALLCLOCK () {19;}' unless defined(&RACCT_WALLCLOCK);
    eval 'sub RACCT_PCTCPU () {20;}' unless defined(&RACCT_PCTCPU);
    eval 'sub RACCT_MAX () { &RACCT_PCTCPU;}' unless defined(&RACCT_MAX);
    eval 'sub RACCT_IN_MILLIONS () {0x1;}' unless defined(&RACCT_IN_MILLIONS);
    eval 'sub RACCT_RECLAIMABLE () {0x2;}' unless defined(&RACCT_RECLAIMABLE);
    eval 'sub RACCT_INHERITABLE () {0x4;}' unless defined(&RACCT_INHERITABLE);
    eval 'sub RACCT_DENIABLE () {0x8;}' unless defined(&RACCT_DENIABLE);
    eval 'sub RACCT_SLOPPY () {0x10;}' unless defined(&RACCT_SLOPPY);
    eval 'sub RACCT_DECAYING () {0x20;}' unless defined(&RACCT_DECAYING);
    eval 'sub RACCT_IS_IN_MILLIONS {
        my($X) = @_;
	    eval q(( $racct_types[$X] &  &RACCT_IN_MILLIONS));
    }' unless defined(&RACCT_IS_IN_MILLIONS);
    eval 'sub RACCT_IS_RECLAIMABLE {
        my($X) = @_;
	    eval q(( $racct_types[$X] &  &RACCT_RECLAIMABLE));
    }' unless defined(&RACCT_IS_RECLAIMABLE);
    eval 'sub RACCT_IS_INHERITABLE {
        my($X) = @_;
	    eval q(( $racct_types[$X] &  &RACCT_INHERITABLE));
    }' unless defined(&RACCT_IS_INHERITABLE);
    eval 'sub RACCT_IS_DENIABLE {
        my($X) = @_;
	    eval q(( $racct_types[$X] &  &RACCT_DENIABLE));
    }' unless defined(&RACCT_IS_DENIABLE);
    eval 'sub RACCT_IS_SLOPPY {
        my($X) = @_;
	    eval q(( $racct_types[$X] &  &RACCT_SLOPPY));
    }' unless defined(&RACCT_IS_SLOPPY);
    eval 'sub RACCT_IS_DECAYING {
        my($X) = @_;
	    eval q(( $racct_types[$X] &  &RACCT_DECAYING));
    }' unless defined(&RACCT_IS_DECAYING);
    eval 'sub RACCT_CAN_DROP {
        my($X) = @_;
	    eval q(( &RACCT_IS_RECLAIMABLE($X) |  &RACCT_IS_DECAYING($X)));
    }' unless defined(&RACCT_CAN_DROP);
}
1;
