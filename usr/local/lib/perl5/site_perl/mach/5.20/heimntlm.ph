require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&HEIM_NTLM_H)) {
    eval 'sub HEIM_NTLM_H () {1;}' unless defined(&HEIM_NTLM_H);
    eval 'sub NTLM_NEG_UNICODE () {0x1;}' unless defined(&NTLM_NEG_UNICODE);
    eval 'sub NTLM_NEG_OEM () {0x2;}' unless defined(&NTLM_NEG_OEM);
    eval 'sub NTLM_NEG_TARGET () {0x4;}' unless defined(&NTLM_NEG_TARGET);
    eval 'sub NTLM_MBZ9 () {0x8;}' unless defined(&NTLM_MBZ9);
    eval 'sub NTLM_NEG_SIGN () {0x10;}' unless defined(&NTLM_NEG_SIGN);
    eval 'sub NTLM_NEG_SEAL () {0x20;}' unless defined(&NTLM_NEG_SEAL);
    eval 'sub NTLM_NEG_DATAGRAM () {0x40;}' unless defined(&NTLM_NEG_DATAGRAM);
    eval 'sub NTLM_NEG_LM_KEY () {0x80;}' unless defined(&NTLM_NEG_LM_KEY);
    eval 'sub NTLM_NEG_NTLM () {0x200;}' unless defined(&NTLM_NEG_NTLM);
    eval 'sub NTLM_NEG_ANONYMOUS () {0x800;}' unless defined(&NTLM_NEG_ANONYMOUS);
    eval 'sub NTLM_MBZ8 () {0x100;}' unless defined(&NTLM_MBZ8);
    eval 'sub NTLM_NEG_NTLM () {0x200;}' unless defined(&NTLM_NEG_NTLM);
    eval 'sub NTLM_NEG_NT_ONLY () {0x400;}' unless defined(&NTLM_NEG_NT_ONLY);
    eval 'sub NTLM_MBZ7 () {0x800;}' unless defined(&NTLM_MBZ7);
    eval 'sub NTLM_OEM_SUPPLIED_DOMAIN () {0x1000;}' unless defined(&NTLM_OEM_SUPPLIED_DOMAIN);
    eval 'sub NTLM_OEM_SUPPLIED_WORKSTATION () {0x2000;}' unless defined(&NTLM_OEM_SUPPLIED_WORKSTATION);
    eval 'sub NTLM_MBZ6 () {0x4000;}' unless defined(&NTLM_MBZ6);
    eval 'sub NTLM_NEG_ALWAYS_SIGN () {0x8000;}' unless defined(&NTLM_NEG_ALWAYS_SIGN);
    eval 'sub NTLM_TARGET_DOMAIN () {0x10000;}' unless defined(&NTLM_TARGET_DOMAIN);
    eval 'sub NTLM_TARGET_SERVER () {0x20000;}' unless defined(&NTLM_TARGET_SERVER);
    eval 'sub NTLM_TARGET_SHARE () {0x40000;}' unless defined(&NTLM_TARGET_SHARE);
    eval 'sub NTLM_NEG_NTLM2_SESSION () {0x80000;}' unless defined(&NTLM_NEG_NTLM2_SESSION);
    eval 'sub NTLM_NEG_NTLM2 () {0x80000;}' unless defined(&NTLM_NEG_NTLM2);
    eval 'sub NTLM_NEG_IDENTIFY () {0x100000;}' unless defined(&NTLM_NEG_IDENTIFY);
    eval 'sub NTLM_MBZ5 () {0x200000;}' unless defined(&NTLM_MBZ5);
    eval 'sub NTLM_NON_NT_SESSION_KEY () {0x400000;}' unless defined(&NTLM_NON_NT_SESSION_KEY);
    eval 'sub NTLM_NEG_TARGET_INFO () {0x800000;}' unless defined(&NTLM_NEG_TARGET_INFO);
    eval 'sub NTLM_MBZ4 () {0x1000000;}' unless defined(&NTLM_MBZ4);
    eval 'sub NTLM_NEG_VERSION () {0x2000000;}' unless defined(&NTLM_NEG_VERSION);
    eval 'sub NTLM_MBZ3 () {0x4000000;}' unless defined(&NTLM_MBZ3);
    eval 'sub NTLM_MBZ2 () {0x8000000;}' unless defined(&NTLM_MBZ2);
    eval 'sub NTLM_MBZ1 () {0x10000000;}' unless defined(&NTLM_MBZ1);
    eval 'sub NTLM_ENC_128 () {0x20000000;}' unless defined(&NTLM_ENC_128);
    eval 'sub NTLM_NEG_KEYEX () {0x40000000;}' unless defined(&NTLM_NEG_KEYEX);
    eval 'sub NTLM_ENC_56 () {0x80000000;}' unless defined(&NTLM_ENC_56);
    eval 'sub NTLM_TI_AV_FLAG_GUEST () {0x1;}' unless defined(&NTLM_TI_AV_FLAG_GUEST);
    require 'ntlm_err.ph';
    require 'heimntlm-protos.ph';
}
1;
