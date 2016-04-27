require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__HEIM_ANY_H__)) {
    eval 'sub __HEIM_ANY_H__ () {1;}' unless defined(&__HEIM_ANY_H__);
}
1;
