require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_SOCKTATE_H_)) {
    eval 'sub _SYS_SOCKTATE_H_ () {1;}' unless defined(&_SYS_SOCKTATE_H_);
    eval 'sub SS_NOFDREF () {0x1;}' unless defined(&SS_NOFDREF);
    eval 'sub SS_ISCONNECTED () {0x2;}' unless defined(&SS_ISCONNECTED);
    eval 'sub SS_ISCONNECTING () {0x4;}' unless defined(&SS_ISCONNECTING);
    eval 'sub SS_ISDISCONNECTING () {0x8;}' unless defined(&SS_ISDISCONNECTING);
    eval 'sub SS_NBIO () {0x100;}' unless defined(&SS_NBIO);
    eval 'sub SS_ASYNC () {0x200;}' unless defined(&SS_ASYNC);
    eval 'sub SS_ISCONFIRMING () {0x400;}' unless defined(&SS_ISCONFIRMING);
    eval 'sub SS_ISDISCONNECTED () {0x2000;}' unless defined(&SS_ISDISCONNECTED);
    eval 'sub SS_PROTOREF () {0x4000;}' unless defined(&SS_PROTOREF);
    eval 'sub SBS_CANTSENDMORE () {0x10;}' unless defined(&SBS_CANTSENDMORE);
    eval 'sub SBS_CANTRCVMORE () {0x20;}' unless defined(&SBS_CANTRCVMORE);
    eval 'sub SBS_RCVATMARK () {0x40;}' unless defined(&SBS_RCVATMARK);
}
1;
