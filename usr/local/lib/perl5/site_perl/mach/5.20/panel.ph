require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&NCURSES_PANEL_H_incl)) {
    eval 'sub NCURSES_PANEL_H_incl () {1;}' unless defined(&NCURSES_PANEL_H_incl);
    require 'curses.ph';
    if(defined(&__cplusplus)) {
    }
    if(defined(&__cplusplus)) {
    }
}
1;
