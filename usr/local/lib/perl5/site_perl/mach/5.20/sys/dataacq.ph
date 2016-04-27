require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_SYS_DATAACQ_H_)) {
    eval 'sub _SYS_DATAACQ_H_ () {1;}' unless defined(&_SYS_DATAACQ_H_);
    require 'sys/ioccom.ph';
    eval 'sub AD_MICRO_PERIOD_SET () { &_IOW(ord(\'A\'), 1, \'long\');}' unless defined(&AD_MICRO_PERIOD_SET);
    eval 'sub AD_MICRO_PERIOD_GET () { &_IOR(ord(\'A\'), 2, \'long\');}' unless defined(&AD_MICRO_PERIOD_GET);
    eval 'sub AD_NGAINS_GET () { &_IOR(ord(\'A\'), 3, \'int\');}' unless defined(&AD_NGAINS_GET);
    eval 'sub AD_NCHANS_GET () { &_IOR(ord(\'A\'), 4, \'int\');}' unless defined(&AD_NCHANS_GET);
    eval 'sub AD_SUPPORTED_GAINS () { &_IO(ord(\'A\'), 5);}' unless defined(&AD_SUPPORTED_GAINS);
    eval 'sub AD_GAINS_SET () { &_IO(ord(\'A\'), 6);}' unless defined(&AD_GAINS_SET);
    eval 'sub AD_GAINS_GET () { &_IO(ord(\'A\'), 7);}' unless defined(&AD_GAINS_GET);
}
1;
