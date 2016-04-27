require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_RANGELOCK_H)) {
    eval 'sub _SYS_RANGELOCK_H () {1;}' unless defined(&_SYS_RANGELOCK_H);
    require 'sys/queue.ph';
    eval 'sub RL_LOCK_READ () {0x1;}' unless defined(&RL_LOCK_READ);
    eval 'sub RL_LOCK_WRITE () {0x2;}' unless defined(&RL_LOCK_WRITE);
    eval 'sub RL_LOCK_TYPE_MASK () {0x3;}' unless defined(&RL_LOCK_TYPE_MASK);
    eval 'sub RL_LOCK_GRANTED () {0x4;}' unless defined(&RL_LOCK_GRANTED);
    if(defined(&_KERNEL)) {
    }
}
1;
