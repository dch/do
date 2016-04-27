require '_h2ph_pre.ph';

no warnings qw(redefine misc);

if((defined(&__STDC__) ? &__STDC__ : undef)) {
    die("<malloc.h> has been replaced by <stdlib.h>");
} else {
    require 'stdlib.ph';
}
1;
