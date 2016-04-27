require '_h2ph_pre.ph';

no warnings qw(redefine misc);

if(defined(&__GNUC__)) {
    warn("\"Use\ \-I\/usr\/include\/gnu\ and\ \<regex\.h\>\ instead\ of\ \<gnuregex\.h\>\"");
}
require 'gnu/regex.ph';
1;
