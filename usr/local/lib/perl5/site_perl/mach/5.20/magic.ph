require '_h2ph_pre.ph';

no warnings qw(redefine misc);

unless(defined(&_MAGIC_H)) {
    eval 'sub _MAGIC_H () {1;}' unless defined(&_MAGIC_H);
    require 'sys/types.ph';
    eval 'sub MAGIC_NONE () {0x;}' unless defined(&MAGIC_NONE);
    eval 'sub MAGIC_DEBUG () {0x1;}' unless defined(&MAGIC_DEBUG);
    eval 'sub MAGIC_SYMLINK () {0x2;}' unless defined(&MAGIC_SYMLINK);
    eval 'sub MAGIC_COMPRESS () {0x4;}' unless defined(&MAGIC_COMPRESS);
    eval 'sub MAGIC_DEVICES () {0x8;}' unless defined(&MAGIC_DEVICES);
    eval 'sub MAGIC_MIME_TYPE () {0x10;}' unless defined(&MAGIC_MIME_TYPE);
    eval 'sub MAGIC_CONTINUE () {0x20;}' unless defined(&MAGIC_CONTINUE);
    eval 'sub MAGIC_CHECK () {0x40;}' unless defined(&MAGIC_CHECK);
    eval 'sub MAGIC_PRESERVE_ATIME () {0x80;}' unless defined(&MAGIC_PRESERVE_ATIME);
    eval 'sub MAGIC_RAW () {0x100;}' unless defined(&MAGIC_RAW);
    eval 'sub MAGIC_ERROR () {0x200;}' unless defined(&MAGIC_ERROR);
    eval 'sub MAGIC_MIME_ENCODING () {0x400;}' unless defined(&MAGIC_MIME_ENCODING);
    eval 'sub MAGIC_MIME () {( &MAGIC_MIME_TYPE| &MAGIC_MIME_ENCODING);}' unless defined(&MAGIC_MIME);
    eval 'sub MAGIC_APPLE () {0x800;}' unless defined(&MAGIC_APPLE);
    eval 'sub MAGIC_NO_CHECK_COMPRESS () {0x1000;}' unless defined(&MAGIC_NO_CHECK_COMPRESS);
    eval 'sub MAGIC_NO_CHECK_TAR () {0x2000;}' unless defined(&MAGIC_NO_CHECK_TAR);
    eval 'sub MAGIC_NO_CHECK_SOFT () {0x4000;}' unless defined(&MAGIC_NO_CHECK_SOFT);
    eval 'sub MAGIC_NO_CHECK_APPTYPE () {0x8000;}' unless defined(&MAGIC_NO_CHECK_APPTYPE);
    eval 'sub MAGIC_NO_CHECK_ELF () {0x10000;}' unless defined(&MAGIC_NO_CHECK_ELF);
    eval 'sub MAGIC_NO_CHECK_TEXT () {0x20000;}' unless defined(&MAGIC_NO_CHECK_TEXT);
    eval 'sub MAGIC_NO_CHECK_CDF () {0x40000;}' unless defined(&MAGIC_NO_CHECK_CDF);
    eval 'sub MAGIC_NO_CHECK_TOKENS () {0x100000;}' unless defined(&MAGIC_NO_CHECK_TOKENS);
    eval 'sub MAGIC_NO_CHECK_ENCODING () {0x200000;}' unless defined(&MAGIC_NO_CHECK_ENCODING);
    eval 'sub MAGIC_NO_CHECK_BUILTIN () {(  &MAGIC_NO_CHECK_COMPRESS |  &MAGIC_NO_CHECK_TAR |  &MAGIC_NO_CHECK_APPTYPE |  &MAGIC_NO_CHECK_ELF |  &MAGIC_NO_CHECK_TEXT |  &MAGIC_NO_CHECK_CDF |  &MAGIC_NO_CHECK_TOKENS |  &MAGIC_NO_CHECK_ENCODING | 0);}' unless defined(&MAGIC_NO_CHECK_BUILTIN);
    eval 'sub MAGIC_NO_CHECK_ASCII () { &MAGIC_NO_CHECK_TEXT;}' unless defined(&MAGIC_NO_CHECK_ASCII);
    eval 'sub MAGIC_NO_CHECK_FORTRAN () {0x;}' unless defined(&MAGIC_NO_CHECK_FORTRAN);
    eval 'sub MAGIC_NO_CHECK_TROFF () {0x;}' unless defined(&MAGIC_NO_CHECK_TROFF);
    eval 'sub MAGIC_VERSION () {521;}' unless defined(&MAGIC_VERSION);
    if(defined(&__cplusplus)) {
    }
    eval 'sub MAGIC_PARAM_INDIR_MAX () {0;}' unless defined(&MAGIC_PARAM_INDIR_MAX);
    eval 'sub MAGIC_PARAM_NAME_MAX () {1;}' unless defined(&MAGIC_PARAM_NAME_MAX);
    eval 'sub MAGIC_PARAM_ELF_PHNUM_MAX () {2;}' unless defined(&MAGIC_PARAM_ELF_PHNUM_MAX);
    eval 'sub MAGIC_PARAM_ELF_SHNUM_MAX () {3;}' unless defined(&MAGIC_PARAM_ELF_SHNUM_MAX);
    eval 'sub MAGIC_PARAM_ELF_NOTES_MAX () {4;}' unless defined(&MAGIC_PARAM_ELF_NOTES_MAX);
    if(defined(&__cplusplus)) {
    }
}
1;
