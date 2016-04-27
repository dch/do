require '_h2ph_pre.ph';

no warnings qw(redefine misc);

if(defined(&__GNUC__)) {
    warn("\"this\ file\ includes\ \<gssapi\.h\>\ which\ is\ deprecated\,\ use\ \<gssapi\/gssapi\.h\>\ instead\"");
}
require 'gssapi/gssapi.ph';
1;
