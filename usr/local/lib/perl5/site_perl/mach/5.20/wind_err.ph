require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&__wind_err_h__)) {
    eval 'sub __wind_err_h__ () {1;}' unless defined(&__wind_err_h__);
    eval 'sub init_wind_err_tbl () { &initialize_wind_error_table;}' unless defined(&init_wind_err_tbl);
    eval("sub WIND_ERR_NONE () { -969269760; }") unless defined(&WIND_ERR_NONE);
    eval("sub WIND_ERR_NO_PROFILE () { -969269759; }") unless defined(&WIND_ERR_NO_PROFILE);
    eval("sub WIND_ERR_OVERRUN () { -969269758; }") unless defined(&WIND_ERR_OVERRUN);
    eval("sub WIND_ERR_UNDERUN () { -969269757; }") unless defined(&WIND_ERR_UNDERUN);
    eval("sub WIND_ERR_LENGTH_NOT_MOD2 () { -969269756; }") unless defined(&WIND_ERR_LENGTH_NOT_MOD2);
    eval("sub WIND_ERR_LENGTH_NOT_MOD4 () { -969269755; }") unless defined(&WIND_ERR_LENGTH_NOT_MOD4);
    eval("sub WIND_ERR_INVALID_UTF8 () { -969269754; }") unless defined(&WIND_ERR_INVALID_UTF8);
    eval("sub WIND_ERR_INVALID_UTF16 () { -969269753; }") unless defined(&WIND_ERR_INVALID_UTF16);
    eval("sub WIND_ERR_INVALID_UTF32 () { -969269752; }") unless defined(&WIND_ERR_INVALID_UTF32);
    eval("sub WIND_ERR_NO_BOM () { -969269751; }") unless defined(&WIND_ERR_NO_BOM);
    eval("sub WIND_ERR_NOT_UTF16 () { -969269750; }") unless defined(&WIND_ERR_NOT_UTF16);
    eval 'sub ERROR_TABLE_BASE_wind () {-969269760;}' unless defined(&ERROR_TABLE_BASE_wind);
    eval 'sub COM_ERR_BINDDOMAIN_wind () {"heim_com_err-969269760";}' unless defined(&COM_ERR_BINDDOMAIN_wind);
}
1;
