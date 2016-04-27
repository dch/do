require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&KRB5_CCAPI_H)) {
    eval 'sub KRB5_CCAPI_H () {1;}' unless defined(&KRB5_CCAPI_H);
    require 'krb5-types.ph';
    if(defined(&__APPLE__)) {
    }
    eval("sub cc_credentials_v5 () { 2; }") unless defined(&cc_credentials_v5);
    eval("sub ccapi_version_3 () { 3; }") unless defined(&ccapi_version_3);
    eval("sub ccapi_version_4 () { 4; }") unless defined(&ccapi_version_4);
    eval("sub ccNoError () { 0; }") unless defined(&ccNoError);
    eval("sub ccIteratorEnd () { 201; }") unless defined(&ccIteratorEnd);
    eval("sub ccErrBadParam () { 202; }") unless defined(&ccErrBadParam);
    eval("sub ccErrNoMem () { 203; }") unless defined(&ccErrNoMem);
    eval("sub ccErrInvalidContext () { 204; }") unless defined(&ccErrInvalidContext);
    eval("sub ccErrInvalidCCache () { 205; }") unless defined(&ccErrInvalidCCache);
    eval("sub ccErrInvalidString () { 206; }") unless defined(&ccErrInvalidString);
    eval("sub ccErrInvalidCredentials () { 207; }") unless defined(&ccErrInvalidCredentials);
    eval("sub ccErrInvalidCCacheIterator () { 208; }") unless defined(&ccErrInvalidCCacheIterator);
    eval("sub ccErrInvalidCredentialsIterator () { 209; }") unless defined(&ccErrInvalidCredentialsIterator);
    eval("sub ccErrInvalidLock () { 210; }") unless defined(&ccErrInvalidLock);
    eval("sub ccErrBadName () { 211; }") unless defined(&ccErrBadName);
    eval("sub ccErrBadCredentialsVersion () { 212; }") unless defined(&ccErrBadCredentialsVersion);
    eval("sub ccErrBadAPIVersion () { 213; }") unless defined(&ccErrBadAPIVersion);
    eval("sub ccErrContextLocked () { 214; }") unless defined(&ccErrContextLocked);
    eval("sub ccErrContextUnlocked () { 215; }") unless defined(&ccErrContextUnlocked);
    eval("sub ccErrCCacheLocked () { 216; }") unless defined(&ccErrCCacheLocked);
    eval("sub ccErrCCacheUnlocked () { 217; }") unless defined(&ccErrCCacheUnlocked);
    eval("sub ccErrBadLockType () { 218; }") unless defined(&ccErrBadLockType);
    eval("sub ccErrNeverDefault () { 219; }") unless defined(&ccErrNeverDefault);
    eval("sub ccErrCredentialsNotFound () { 220; }") unless defined(&ccErrCredentialsNotFound);
    eval("sub ccErrCCacheNotFound () { 221; }") unless defined(&ccErrCCacheNotFound);
    eval("sub ccErrContextNotFound () { 222; }") unless defined(&ccErrContextNotFound);
    eval("sub ccErrServerUnavailable () { 223; }") unless defined(&ccErrServerUnavailable);
    eval("sub ccErrServerInsecure () { 224; }") unless defined(&ccErrServerInsecure);
    eval("sub ccErrServerCantBecomeUID () { 225; }") unless defined(&ccErrServerCantBecomeUID);
    eval("sub ccErrTimeOffsetNotSet () { 226; }") unless defined(&ccErrTimeOffsetNotSet);
    eval 'sub KRB5_CCAPI_TKT_FLG_FORWARDABLE () {0x40000000;}' unless defined(&KRB5_CCAPI_TKT_FLG_FORWARDABLE);
    eval 'sub KRB5_CCAPI_TKT_FLG_FORWARDED () {0x20000000;}' unless defined(&KRB5_CCAPI_TKT_FLG_FORWARDED);
    eval 'sub KRB5_CCAPI_TKT_FLG_PROXIABLE () {0x10000000;}' unless defined(&KRB5_CCAPI_TKT_FLG_PROXIABLE);
    eval 'sub KRB5_CCAPI_TKT_FLG_PROXY () {0x8000000;}' unless defined(&KRB5_CCAPI_TKT_FLG_PROXY);
    eval 'sub KRB5_CCAPI_TKT_FLG_MAY_POSTDATE () {0x4000000;}' unless defined(&KRB5_CCAPI_TKT_FLG_MAY_POSTDATE);
    eval 'sub KRB5_CCAPI_TKT_FLG_POSTDATED () {0x2000000;}' unless defined(&KRB5_CCAPI_TKT_FLG_POSTDATED);
    eval 'sub KRB5_CCAPI_TKT_FLG_INVALID () {0x1000000;}' unless defined(&KRB5_CCAPI_TKT_FLG_INVALID);
    eval 'sub KRB5_CCAPI_TKT_FLG_RENEWABLE () {0x800000;}' unless defined(&KRB5_CCAPI_TKT_FLG_RENEWABLE);
    eval 'sub KRB5_CCAPI_TKT_FLG_INITIAL () {0x400000;}' unless defined(&KRB5_CCAPI_TKT_FLG_INITIAL);
    eval 'sub KRB5_CCAPI_TKT_FLG_PRE_AUTH () {0x200000;}' unless defined(&KRB5_CCAPI_TKT_FLG_PRE_AUTH);
    eval 'sub KRB5_CCAPI_TKT_FLG_HW_AUTH () {0x100000;}' unless defined(&KRB5_CCAPI_TKT_FLG_HW_AUTH);
    eval 'sub KRB5_CCAPI_TKT_FLG_TRANSIT_POLICY_CHECKED () {0x80000;}' unless defined(&KRB5_CCAPI_TKT_FLG_TRANSIT_POLICY_CHECKED);
    eval 'sub KRB5_CCAPI_TKT_FLG_OK_AS_DELEGATE () {0x40000;}' unless defined(&KRB5_CCAPI_TKT_FLG_OK_AS_DELEGATE);
    eval 'sub KRB5_CCAPI_TKT_FLG_ANONYMOUS () {0x20000;}' unless defined(&KRB5_CCAPI_TKT_FLG_ANONYMOUS);
    if(defined(&__APPLE__)) {
    }
}
1;
