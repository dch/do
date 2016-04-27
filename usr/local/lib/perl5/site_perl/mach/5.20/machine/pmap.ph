require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MACHINE_PMAP_H_)) {
    eval 'sub _MACHINE_PMAP_H_ () {1;}' unless defined(&_MACHINE_PMAP_H_);
    eval 'sub X86_PG_V () {0x1;}' unless defined(&X86_PG_V);
    eval 'sub X86_PG_RW () {0x2;}' unless defined(&X86_PG_RW);
    eval 'sub X86_PG_U () {0x4;}' unless defined(&X86_PG_U);
    eval 'sub X86_PG_NC_PWT () {0x8;}' unless defined(&X86_PG_NC_PWT);
    eval 'sub X86_PG_NC_PCD () {0x10;}' unless defined(&X86_PG_NC_PCD);
    eval 'sub X86_PG_A () {0x20;}' unless defined(&X86_PG_A);
    eval 'sub X86_PG_M () {0x40;}' unless defined(&X86_PG_M);
    eval 'sub X86_PG_PS () {0x80;}' unless defined(&X86_PG_PS);
    eval 'sub X86_PG_PTE_PAT () {0x80;}' unless defined(&X86_PG_PTE_PAT);
    eval 'sub X86_PG_G () {0x100;}' unless defined(&X86_PG_G);
    eval 'sub X86_PG_AVAIL1 () {0x200;}' unless defined(&X86_PG_AVAIL1);
    eval 'sub X86_PG_AVAIL2 () {0x400;}' unless defined(&X86_PG_AVAIL2);
    eval 'sub X86_PG_AVAIL3 () {0x800;}' unless defined(&X86_PG_AVAIL3);
    eval 'sub X86_PG_PDE_PAT () {0x1000;}' unless defined(&X86_PG_PDE_PAT);
    eval 'sub X86_PG_NX () {(1<<63);}' unless defined(&X86_PG_NX);
    eval 'sub X86_PG_AVAIL {
        my($x) = @_;
	    eval q((1 << ($x)));
    }' unless defined(&X86_PG_AVAIL);
    eval 'sub X86_PG_PDE_CACHE () {( &X86_PG_PDE_PAT |  &X86_PG_NC_PWT |  &X86_PG_NC_PCD);}' unless defined(&X86_PG_PDE_CACHE);
    eval 'sub X86_PG_PTE_CACHE () {( &X86_PG_PTE_PAT |  &X86_PG_NC_PWT |  &X86_PG_NC_PCD);}' unless defined(&X86_PG_PTE_CACHE);
    eval 'sub EPT_PG_READ () {0x1;}' unless defined(&EPT_PG_READ);
    eval 'sub EPT_PG_WRITE () {0x2;}' unless defined(&EPT_PG_WRITE);
    eval 'sub EPT_PG_EXECUTE () {0x4;}' unless defined(&EPT_PG_EXECUTE);
    eval 'sub EPT_PG_IGNORE_PAT () {0x40;}' unless defined(&EPT_PG_IGNORE_PAT);
    eval 'sub EPT_PG_PS () {0x80;}' unless defined(&EPT_PG_PS);
    eval 'sub EPT_PG_A () {0x100;}' unless defined(&EPT_PG_A);
    eval 'sub EPT_PG_M () {0x200;}' unless defined(&EPT_PG_M);
    eval 'sub EPT_PG_MEMORY_TYPE {
        my($x) = @_;
	    eval q((($x) << 3));
    }' unless defined(&EPT_PG_MEMORY_TYPE);
    eval 'sub PG_V () { &X86_PG_V;}' unless defined(&PG_V);
    eval 'sub PG_RW () { &X86_PG_RW;}' unless defined(&PG_RW);
    eval 'sub PG_U () { &X86_PG_U;}' unless defined(&PG_U);
    eval 'sub PG_NC_PWT () { &X86_PG_NC_PWT;}' unless defined(&PG_NC_PWT);
    eval 'sub PG_NC_PCD () { &X86_PG_NC_PCD;}' unless defined(&PG_NC_PCD);
    eval 'sub PG_A () { &X86_PG_A;}' unless defined(&PG_A);
    eval 'sub PG_M () { &X86_PG_M;}' unless defined(&PG_M);
    eval 'sub PG_PS () { &X86_PG_PS;}' unless defined(&PG_PS);
    eval 'sub PG_PTE_PAT () { &X86_PG_PTE_PAT;}' unless defined(&PG_PTE_PAT);
    eval 'sub PG_G () { &X86_PG_G;}' unless defined(&PG_G);
    eval 'sub PG_AVAIL1 () { &X86_PG_AVAIL1;}' unless defined(&PG_AVAIL1);
    eval 'sub PG_AVAIL2 () { &X86_PG_AVAIL2;}' unless defined(&PG_AVAIL2);
    eval 'sub PG_AVAIL3 () { &X86_PG_AVAIL3;}' unless defined(&PG_AVAIL3);
    eval 'sub PG_PDE_PAT () { &X86_PG_PDE_PAT;}' unless defined(&PG_PDE_PAT);
    eval 'sub PG_NX () { &X86_PG_NX;}' unless defined(&PG_NX);
    eval 'sub PG_PDE_CACHE () { &X86_PG_PDE_CACHE;}' unless defined(&PG_PDE_CACHE);
    eval 'sub PG_PTE_CACHE () { &X86_PG_PTE_CACHE;}' unless defined(&PG_PTE_CACHE);
    eval 'sub PG_W () { &X86_PG_AVAIL3;}' unless defined(&PG_W);
    eval 'sub PG_MANAGED () { &X86_PG_AVAIL2;}' unless defined(&PG_MANAGED);
    eval 'sub EPT_PG_EMUL_V () { &X86_PG_AVAIL(52);}' unless defined(&EPT_PG_EMUL_V);
    eval 'sub EPT_PG_EMUL_RW () { &X86_PG_AVAIL(53);}' unless defined(&EPT_PG_EMUL_RW);
    eval 'sub PG_FRAME () {(0xffffffffff000);}' unless defined(&PG_FRAME);
    eval 'sub PG_PS_FRAME () {(0xfffffffe00000);}' unless defined(&PG_PS_FRAME);
    eval 'sub PG_PTE_PROMOTE () {( &PG_NX |  &PG_MANAGED |  &PG_W |  &PG_G |  &PG_PTE_CACHE |  &PG_M |  &PG_A |  &PG_U |  &PG_RW |  &PG_V);}' unless defined(&PG_PTE_PROMOTE);
    eval 'sub PGEX_P () {0x1;}' unless defined(&PGEX_P);
    eval 'sub PGEX_W () {0x2;}' unless defined(&PGEX_W);
    eval 'sub PGEX_U () {0x4;}' unless defined(&PGEX_U);
    eval 'sub PGEX_RSV () {0x8;}' unless defined(&PGEX_RSV);
    eval 'sub PGEX_I () {0x10;}' unless defined(&PGEX_I);
    if(defined(&AMD64_NPT_AWARE)) {
	undef(&PG_AVAIL1) if defined(&PG_AVAIL1);
	undef(&PG_G) if defined(&PG_G);
	undef(&PG_A) if defined(&PG_A);
	undef(&PG_M) if defined(&PG_M);
	undef(&PG_PDE_PAT) if defined(&PG_PDE_PAT);
	undef(&PG_PDE_CACHE) if defined(&PG_PDE_CACHE);
	undef(&PG_PTE_PAT) if defined(&PG_PTE_PAT);
	undef(&PG_PTE_CACHE) if defined(&PG_PTE_CACHE);
	undef(&PG_RW) if defined(&PG_RW);
	undef(&PG_V) if defined(&PG_V);
    }
    eval 'sub KVADDR {
        my($l4, $l3, $l2, $l1) = @_;
	    eval q(( (-1<< 47) | ( <<  &PML4SHIFT) | ( <<  &PDPSHIFT) | ( <<  &PDRSHIFT) | (($l1) <<  &PAGE_SHIFT)));
    }' unless defined(&KVADDR);
    eval 'sub UVADDR {
        my($l4, $l3, $l2, $l1) = @_;
	    eval q(( ( <<  &PML4SHIFT) | ( <<  &PDPSHIFT) | ( <<  &PDRSHIFT) | (($l1) <<  &PAGE_SHIFT)));
    }' unless defined(&UVADDR);
    eval 'sub NKPML4E () {4;}' unless defined(&NKPML4E);
    eval 'sub NUPML4E () {( &NPML4EPG/2);}' unless defined(&NUPML4E);
    eval 'sub NUPDPE () {( &NUPML4E* &NPDPEPG);}' unless defined(&NUPDPE);
    eval 'sub NUPDE () {( &NUPDPE* &NPDEPG);}' unless defined(&NUPDE);
    eval 'sub NDMPML4E () {8;}' unless defined(&NDMPML4E);
    eval 'sub PML4PML4I () {( &NPML4EPG/2);}' unless defined(&PML4PML4I);
    eval 'sub KPML4BASE () {( &NPML4EPG- &NKPML4E);}' unless defined(&KPML4BASE);
    eval 'sub DMPML4I () { &rounddown( &KPML4BASE- &NDMPML4E,  &NDMPML4E);}' unless defined(&DMPML4I);
    eval 'sub KPML4I () {( &NPML4EPG-1);}' unless defined(&KPML4I);
    eval 'sub KPDPI () {( &NPDPEPG-2);}' unless defined(&KPDPI);
    eval 'sub ISA_HOLE_START () {0xa0000;}' unless defined(&ISA_HOLE_START);
    eval 'sub ISA_HOLE_LENGTH () {(0x100000- &ISA_HOLE_START);}' unless defined(&ISA_HOLE_LENGTH);
    unless(defined(&LOCORE)) {
	require 'sys/queue.ph';
	require 'sys/_cpuset.ph';
	require 'sys/_lock.ph';
	require 'sys/_mutex.ph';
	require 'vm/_vm_radix.ph';
	if(defined(&_KERNEL)) {
	    eval 'sub addr_PTmap () {( &KVADDR( &PML4PML4I, 0, 0, 0));}' unless defined(&addr_PTmap);
	    eval 'sub addr_PDmap () {( &KVADDR( &PML4PML4I,  &PML4PML4I, 0, 0));}' unless defined(&addr_PDmap);
	    eval 'sub addr_PDPmap () {( &KVADDR( &PML4PML4I,  &PML4PML4I,  &PML4PML4I, 0));}' unless defined(&addr_PDPmap);
	    eval 'sub addr_PML4map () {( &KVADDR( &PML4PML4I,  &PML4PML4I,  &PML4PML4I,  &PML4PML4I));}' unless defined(&addr_PML4map);
	    eval 'sub addr_PML4pml4e () {( &addr_PML4map + ( &PML4PML4I * $sizeof{ &pml4_entry_t}));}' unless defined(&addr_PML4pml4e);
	    eval 'sub PTmap () {(( &pt_entry_t *)( &addr_PTmap));}' unless defined(&PTmap);
	    eval 'sub PDmap () {(( &pd_entry_t *)( &addr_PDmap));}' unless defined(&PDmap);
	    eval 'sub PDPmap () {(( &pd_entry_t *)( &addr_PDPmap));}' unless defined(&PDPmap);
	    eval 'sub PML4map () {(( &pd_entry_t *)( &addr_PML4map));}' unless defined(&PML4map);
	    eval 'sub PML4pml4e () {(( &pd_entry_t *)( &addr_PML4pml4e));}' unless defined(&PML4pml4e);
	    eval 'sub vtophys {
	        my($va) = @_;
    		eval q( &pmap_kextract((( &vm_offset_t) ($va))));
	    }' unless defined(&vtophys);
	    eval 'sub pte_load_store {
	        my($ptep, $pte) = @_;
    		eval q( &atomic_swap_long($ptep, $pte));
	    }' unless defined(&pte_load_store);
	    eval 'sub pte_load_clear {
	        my($ptep) = @_;
    		eval q( &atomic_swap_long($ptep, 0));
	    }' unless defined(&pte_load_clear);
	    eval 'sub pte_store {
	        my($ptep, $pte) = @_;
    		eval q( &do { * = ($pte); }  &while (0));
	    }' unless defined(&pte_store);
	    eval 'sub pte_clear {
	        my($ptep) = @_;
    		eval q( &pte_store($ptep, 0));
	    }' unless defined(&pte_clear);
	    eval 'sub pde_store {
	        my($pdep, $pde) = @_;
    		eval q( &pte_store($pdep, $pde));
	    }' unless defined(&pde_store);
	}
	eval("sub PT_X86 () { 0; }") unless defined(&PT_X86);
	eval("sub PT_EPT () { 1; }") unless defined(&PT_EPT);
	eval("sub PT_RVI () { 2; }") unless defined(&PT_RVI);
	eval 'sub PMAP_NESTED_IPIMASK () {0xff;}' unless defined(&PMAP_NESTED_IPIMASK);
	eval 'sub PMAP_PDE_SUPERPAGE () {(1<< 8);}' unless defined(&PMAP_PDE_SUPERPAGE);
	eval 'sub PMAP_EMULATE_AD_BITS () {(1<< 9);}' unless defined(&PMAP_EMULATE_AD_BITS);
	eval 'sub PMAP_SUPPORTS_EXEC_ONLY () {(1<< 10);}' unless defined(&PMAP_SUPPORTS_EXEC_ONLY);
	if(defined(&_KERNEL)) {
	    eval 'sub kernel_pmap () {( &kernel_pmap_store);}' unless defined(&kernel_pmap);
	    eval 'sub PMAP_LOCK {
	        my($pmap) = @_;
    		eval q( &mtx_lock(($pmap)-> &pm_mtx));
	    }' unless defined(&PMAP_LOCK);
	    eval 'sub PMAP_LOCK_ASSERT {
	        my($pmap, $type) = @_;
    		eval q( &mtx_assert(($pmap)-> &pm_mtx, ($type)));
	    }' unless defined(&PMAP_LOCK_ASSERT);
	    eval 'sub PMAP_LOCK_DESTROY {
	        my($pmap) = @_;
    		eval q( &mtx_destroy(($pmap)-> &pm_mtx));
	    }' unless defined(&PMAP_LOCK_DESTROY);
	    eval 'sub PMAP_LOCK_INIT {
	        my($pmap) = @_;
    		eval q( &mtx_init(($pmap)-> &pm_mtx, \\"pmap\\",  &NULL,  &MTX_DEF |  &MTX_DUPOK));
	    }' unless defined(&PMAP_LOCK_INIT);
	    eval 'sub PMAP_LOCKED {
	        my($pmap) = @_;
    		eval q( &mtx_owned(($pmap)-> &pm_mtx));
	    }' unless defined(&PMAP_LOCKED);
	    eval 'sub PMAP_MTX {
	        my($pmap) = @_;
    		eval q((($pmap)-> &pm_mtx));
	    }' unless defined(&PMAP_MTX);
	    eval 'sub PMAP_TRYLOCK {
	        my($pmap) = @_;
    		eval q( &mtx_trylock(($pmap)-> &pm_mtx));
	    }' unless defined(&PMAP_TRYLOCK);
	    eval 'sub PMAP_UNLOCK {
	        my($pmap) = @_;
    		eval q( &mtx_unlock(($pmap)-> &pm_mtx));
	    }' unless defined(&PMAP_UNLOCK);
	}
	eval 'sub _NPCM () {3;}' unless defined(&_NPCM);
	eval 'sub _NPCPV () {168;}' unless defined(&_NPCPV);
	if(defined(&_KERNEL)) {
	    eval 'sub pmap_page_get_memattr {
	        my($m) = @_;
    		eval q((( &vm_memattr_t)($m)-> ($md->{pat_mode})));
	    }' unless defined(&pmap_page_get_memattr);
	    eval 'sub pmap_page_is_write_mapped {
	        my($m) = @_;
    		eval q(((($m)-> &aflags &  &PGA_WRITEABLE) != 0));
	    }' unless defined(&pmap_page_is_write_mapped);
	    eval 'sub pmap_unmapbios {
	        my($va, $sz) = @_;
    		eval q( &pmap_unmapdev(($va), ($sz)));
	    }' unless defined(&pmap_unmapbios);
	}
    }
}
1;
