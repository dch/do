require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&OMP_H)) {
    eval 'sub OMP_H () {1;}' unless defined(&OMP_H);
    unless(defined(&_LIBGOMP_OMP_LOCK_DEFINED)) {
	eval 'sub _LIBGOMP_OMP_LOCK_DEFINED () {1;}' unless defined(&_LIBGOMP_OMP_LOCK_DEFINED);
    }
    if(defined(&__cplusplus)) {
    }
    if(defined(&__cplusplus)) {
    }
}
1;
