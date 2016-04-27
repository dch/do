require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&NCURSES_TERMCAP_H_incl)) {
    eval 'sub NCURSES_TERMCAP_H_incl () {1;}' unless defined(&NCURSES_TERMCAP_H_incl);
    undef(&NCURSES_VERSION) if defined(&NCURSES_VERSION);
    eval 'sub NCURSES_VERSION () {"5.7";}' unless defined(&NCURSES_VERSION);
    require 'ncurses_dll.ph';
    if(defined(&__cplusplus)) {
    }
    require 'sys/types.ph';
    undef(&NCURSES_CONST) if defined(&NCURSES_CONST);
    eval 'sub NCURSES_CONST () { &const;}' unless defined(&NCURSES_CONST);
    undef(&NCURSES_OSPEED) if defined(&NCURSES_OSPEED);
    eval 'sub NCURSES_OSPEED () {\'short\';}' unless defined(&NCURSES_OSPEED);
    if(!defined(&NCURSES_TERM_H_incl)) {
    }
    if(defined(&__cplusplus)) {
    }
}
1;
