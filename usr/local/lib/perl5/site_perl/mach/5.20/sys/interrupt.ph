require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_INTERRUPT_H_)) {
    eval 'sub _SYS_INTERRUPT_H_ () {1;}' unless defined(&_SYS_INTERRUPT_H_);
    require 'sys/_lock.ph';
    require 'sys/_mutex.ph';
    eval 'sub IH_EXCLUSIVE () {0x2;}' unless defined(&IH_EXCLUSIVE);
    eval 'sub IH_ENTROPY () {0x4;}' unless defined(&IH_ENTROPY);
    eval 'sub IH_DEAD () {0x8;}' unless defined(&IH_DEAD);
    eval 'sub IH_MPSAFE () {0x80000000;}' unless defined(&IH_MPSAFE);
    eval 'sub IE_SOFT () {0x1;}' unless defined(&IE_SOFT);
    eval 'sub IE_ENTROPY () {0x2;}' unless defined(&IE_ENTROPY);
    eval 'sub IE_ADDING_THREAD () {0x4;}' unless defined(&IE_ADDING_THREAD);
    eval 'sub SWI_DELAY () {0x2;}' unless defined(&SWI_DELAY);
    eval 'sub SWI_TTY () {0;}' unless defined(&SWI_TTY);
    eval 'sub SWI_NET () {1;}' unless defined(&SWI_NET);
    eval 'sub SWI_CAMBIO () {2;}' unless defined(&SWI_CAMBIO);
    eval 'sub SWI_VM () {3;}' unless defined(&SWI_VM);
    eval 'sub SWI_CLOCK () {4;}' unless defined(&SWI_CLOCK);
    eval 'sub SWI_TQ_FAST () {5;}' unless defined(&SWI_TQ_FAST);
    eval 'sub SWI_TQ () {6;}' unless defined(&SWI_TQ);
    eval 'sub SWI_TQ_GIANT () {6;}' unless defined(&SWI_TQ_GIANT);
    if(defined(&DDB)) {
    }
}
1;
