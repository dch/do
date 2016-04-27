require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_MALLOC_H_)) {
    eval 'sub _SYS_MALLOC_H_ () {1;}' unless defined(&_SYS_MALLOC_H_);
    require 'sys/param.ph';
    require 'sys/queue.ph';
    require 'sys/_lock.ph';
    require 'sys/_mutex.ph';
    eval 'sub MINALLOCSIZE () { &UMA_SMALLEST_UNIT;}' unless defined(&MINALLOCSIZE);
    eval 'sub M_NOWAIT () {0x1;}' unless defined(&M_NOWAIT);
    eval 'sub M_WAITOK () {0x2;}' unless defined(&M_WAITOK);
    eval 'sub M_ZERO () {0x100;}' unless defined(&M_ZERO);
    eval 'sub M_NOVM () {0x200;}' unless defined(&M_NOVM);
    eval 'sub M_USE_RESERVE () {0x400;}' unless defined(&M_USE_RESERVE);
    eval 'sub M_NODUMP () {0x800;}' unless defined(&M_NODUMP);
    eval 'sub M_FIRSTFIT () {0x1000;}' unless defined(&M_FIRSTFIT);
    eval 'sub M_BESTFIT () {0x2000;}' unless defined(&M_BESTFIT);
    eval 'sub M_MAGIC () {877983977;}' unless defined(&M_MAGIC);
    eval 'sub DTMALLOC_PROBE_MALLOC () {0;}' unless defined(&DTMALLOC_PROBE_MALLOC);
    eval 'sub DTMALLOC_PROBE_FREE () {1;}' unless defined(&DTMALLOC_PROBE_FREE);
    eval 'sub DTMALLOC_PROBE_MAX () {2;}' unless defined(&DTMALLOC_PROBE_MAX);
    eval 'sub MALLOC_TYPE_STREAM_VERSION () {0x1;}' unless defined(&MALLOC_TYPE_STREAM_VERSION);
    eval 'sub MALLOC_MAX_NAME () {32;}' unless defined(&MALLOC_MAX_NAME);
    if(defined(&_KERNEL)) {
	eval 'sub MALLOC_DEFINE {
	    my($type, $shortdesc, $longdesc) = @_;
    	    eval q(\'struct malloc_type\' $type->[1] = { {  &NULL,  &M_MAGIC, $shortdesc,  &NULL } };  &SYSINIT($type &_init,  &SI_SUB_KMEM,  &SI_ORDER_SECOND,  &malloc_init, $type);  &SYSUNINIT($type &_uninit,  &SI_SUB_KMEM,  &SI_ORDER_ANY,  &malloc_uninit, $type));
	}' unless defined(&MALLOC_DEFINE);
	eval 'sub MALLOC_DECLARE {
	    my($type) = @_;
    	    eval q( &extern \'struct malloc_type\' $type->[1]);
	}' unless defined(&MALLOC_DECLARE);
	eval 'sub MALLOC {
	    my($space, $cast, $size, $type, $flags) = @_;
    	    eval q((($space) = ($cast) &malloc(($size), ($type), ($flags))));
	}' unless defined(&MALLOC);
	eval 'sub FREE {
	    my($addr, $type) = @_;
    	    eval q( &free(($addr), ($type)));
	}' unless defined(&FREE);
    }
}
1;
