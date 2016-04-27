require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_BUS_DMA_H_)) {
    eval 'sub _BUS_DMA_H_ () {1;}' unless defined(&_BUS_DMA_H_);
    require 'sys/_bus_dma.ph';
    eval 'sub BUS_DMA_WAITOK () {0x;}' unless defined(&BUS_DMA_WAITOK);
    eval 'sub BUS_DMA_NOWAIT () {0x1;}' unless defined(&BUS_DMA_NOWAIT);
    eval 'sub BUS_DMA_ALLOCNOW () {0x2;}' unless defined(&BUS_DMA_ALLOCNOW);
    eval 'sub BUS_DMA_COHERENT () {0x4;}' unless defined(&BUS_DMA_COHERENT);
    eval 'sub BUS_DMA_ZERO () {0x8;}' unless defined(&BUS_DMA_ZERO);
    eval 'sub BUS_DMA_BUS1 () {0x10;}' unless defined(&BUS_DMA_BUS1);
    eval 'sub BUS_DMA_BUS2 () {0x20;}' unless defined(&BUS_DMA_BUS2);
    eval 'sub BUS_DMA_BUS3 () {0x40;}' unless defined(&BUS_DMA_BUS3);
    eval 'sub BUS_DMA_BUS4 () {0x80;}' unless defined(&BUS_DMA_BUS4);
    eval 'sub BUS_DMA_NOWRITE () {0x100;}' unless defined(&BUS_DMA_NOWRITE);
    eval 'sub BUS_DMA_NOCACHE () {0x200;}' unless defined(&BUS_DMA_NOCACHE);
    eval 'sub BUS_DMA_KEEP_PG_OFFSET () {0x400;}' unless defined(&BUS_DMA_KEEP_PG_OFFSET);
    eval 'sub BUS_DMA_LOAD_MBUF () {0x800;}' unless defined(&BUS_DMA_LOAD_MBUF);
    eval 'sub BUS_DMASYNC_PREREAD () {1;}' unless defined(&BUS_DMASYNC_PREREAD);
    eval 'sub BUS_DMASYNC_POSTREAD () {2;}' unless defined(&BUS_DMASYNC_POSTREAD);
    eval 'sub BUS_DMASYNC_PREWRITE () {4;}' unless defined(&BUS_DMASYNC_PREWRITE);
    eval 'sub BUS_DMASYNC_POSTWRITE () {8;}' unless defined(&BUS_DMASYNC_POSTWRITE);
    if(!defined(&__sparc64__)) {
	eval 'sub bus_dmamap_sync {
	    my($dmat, $dmamap, $op) = @_;
    	    eval q( &do {  &if (($dmamap) !=  &NULL)  &_bus_dmamap_sync($dmat, $dmamap, $op); }  &while (0));
	}' unless defined(&bus_dmamap_sync);
	eval 'sub bus_dmamap_unload {
	    my($dmat, $dmamap) = @_;
    	    eval q( &do {  &if (($dmamap) !=  &NULL)  &_bus_dmamap_unload($dmat, $dmamap); }  &while (0));
	}' unless defined(&bus_dmamap_unload);
	eval 'sub _bus_dmamap_waitok {
	    my($dmat, $map, $mem, $callback, $callback_arg) = @_;
    	    eval q( &do {  &if (($map) !=  &NULL)  &__bus_dmamap_waitok($dmat, $map, $mem, $callback, $callback_arg); }  &while (0););
	}' unless defined(&_bus_dmamap_waitok);
    }
}
1;
