require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_VMPARAM_H_)) {
    eval 'sub _MACHINE_VMPARAM_H_ () {1;}' unless defined(&_MACHINE_VMPARAM_H_);
    eval 'sub MAXTSIZ () {(128*1024*1024);}' unless defined(&MAXTSIZ);
    unless(defined(&DFLDSIZ)) {
	eval 'sub DFLDSIZ () {(32768*1024*1024);}' unless defined(&DFLDSIZ);
    }
    unless(defined(&MAXDSIZ)) {
	eval 'sub MAXDSIZ () {(32768*1024*1024);}' unless defined(&MAXDSIZ);
    }
    unless(defined(&DFLSSIZ)) {
	eval 'sub DFLSSIZ () {(8*1024*1024);}' unless defined(&DFLSSIZ);
    }
    unless(defined(&MAXSSIZ)) {
	eval 'sub MAXSSIZ () {(512*1024*1024);}' unless defined(&MAXSSIZ);
    }
    unless(defined(&SGROWSIZ)) {
	eval 'sub SGROWSIZ () {(128*1024);}' unless defined(&SGROWSIZ);
    }
    eval 'sub UMA_MD_SMALL_ALLOC () {1;}' unless defined(&UMA_MD_SMALL_ALLOC);
    eval 'sub VM_PHYSSEG_DENSE () {1;}' unless defined(&VM_PHYSSEG_DENSE);
    eval 'sub VM_PHYSSEG_MAX () {63;}' unless defined(&VM_PHYSSEG_MAX);
    eval 'sub VM_NFREEPOOL () {3;}' unless defined(&VM_NFREEPOOL);
    eval 'sub VM_FREEPOOL_CACHE () {2;}' unless defined(&VM_FREEPOOL_CACHE);
    eval 'sub VM_FREEPOOL_DEFAULT () {0;}' unless defined(&VM_FREEPOOL_DEFAULT);
    eval 'sub VM_FREEPOOL_DIRECT () {1;}' unless defined(&VM_FREEPOOL_DIRECT);
    eval 'sub VM_NFREELIST () {2;}' unless defined(&VM_NFREELIST);
    eval 'sub VM_FREELIST_DEFAULT () {0;}' unless defined(&VM_FREELIST_DEFAULT);
    eval 'sub VM_FREELIST_ISADMA () {1;}' unless defined(&VM_FREELIST_ISADMA);
    eval 'sub VM_NFREEORDER () {13;}' unless defined(&VM_NFREEORDER);
    unless(defined(&VM_NRESERVLEVEL)) {
	eval 'sub VM_NRESERVLEVEL () {1;}' unless defined(&VM_NRESERVLEVEL);
    }
    unless(defined(&VM_LEVEL_0_ORDER)) {
	eval 'sub VM_LEVEL_0_ORDER () {9;}' unless defined(&VM_LEVEL_0_ORDER);
    }
    if(defined(&SMP)) {
	eval 'sub PA_LOCK_COUNT () {256;}' unless defined(&PA_LOCK_COUNT);
    }
    eval 'sub VM_MIN_KERNEL_ADDRESS () { &KVADDR( &KPML4BASE, 0, 0, 0);}' unless defined(&VM_MIN_KERNEL_ADDRESS);
    eval 'sub VM_MAX_KERNEL_ADDRESS () { &KVADDR( &KPML4BASE +  &NKPML4E - 1,  &NPDPEPG-1,  &NPDEPG-1,  &NPTEPG-1);}' unless defined(&VM_MAX_KERNEL_ADDRESS);
    eval 'sub DMAP_MIN_ADDRESS () { &KVADDR( &DMPML4I, 0, 0, 0);}' unless defined(&DMAP_MIN_ADDRESS);
    eval 'sub DMAP_MAX_ADDRESS () { &KVADDR( &DMPML4I +  &NDMPML4E, 0, 0, 0);}' unless defined(&DMAP_MAX_ADDRESS);
    eval 'sub KERNBASE () { &KVADDR( &KPML4I,  &KPDPI, 0, 0);}' unless defined(&KERNBASE);
    eval 'sub UPT_MAX_ADDRESS () { &KVADDR( &PML4PML4I,  &PML4PML4I,  &PML4PML4I,  &PML4PML4I);}' unless defined(&UPT_MAX_ADDRESS);
    eval 'sub UPT_MIN_ADDRESS () { &KVADDR( &PML4PML4I, 0, 0, 0);}' unless defined(&UPT_MIN_ADDRESS);
    eval 'sub VM_MAXUSER_ADDRESS () { &UVADDR( &NUPML4E, 0, 0, 0);}' unless defined(&VM_MAXUSER_ADDRESS);
    eval 'sub SHAREDPAGE () {( &VM_MAXUSER_ADDRESS -  &PAGE_SIZE);}' unless defined(&SHAREDPAGE);
    eval 'sub USRSTACK () { &SHAREDPAGE;}' unless defined(&USRSTACK);
    eval 'sub VM_MAX_ADDRESS () { &UPT_MAX_ADDRESS;}' unless defined(&VM_MAX_ADDRESS);
    eval 'sub VM_MIN_ADDRESS () {(0);}' unless defined(&VM_MIN_ADDRESS);
    eval 'sub PHYS_TO_DMAP {
        my($x) = @_;
	    eval q((($x) |  &DMAP_MIN_ADDRESS));
    }' unless defined(&PHYS_TO_DMAP);
    eval 'sub DMAP_TO_PHYS {
        my($x) = @_;
	    eval q((($x) & ~ &DMAP_MIN_ADDRESS));
    }' unless defined(&DMAP_TO_PHYS);
    unless(defined(&VM_KMEM_SIZE_SCALE)) {
	eval 'sub VM_KMEM_SIZE_SCALE () {(1);}' unless defined(&VM_KMEM_SIZE_SCALE);
    }
    unless(defined(&VM_KMEM_SIZE_MAX)) {
	eval 'sub VM_KMEM_SIZE_MAX () {(( &VM_MAX_KERNEL_ADDRESS -  &VM_MIN_KERNEL_ADDRESS + 1) * 3/ 5);}' unless defined(&VM_KMEM_SIZE_MAX);
    }
    unless(defined(&VM_INITIAL_PAGEIN)) {
	eval 'sub VM_INITIAL_PAGEIN () {16;}' unless defined(&VM_INITIAL_PAGEIN);
    }
    eval 'sub ZERO_REGION_SIZE () {(2* 1024* 1024);}' unless defined(&ZERO_REGION_SIZE);
}
1;
