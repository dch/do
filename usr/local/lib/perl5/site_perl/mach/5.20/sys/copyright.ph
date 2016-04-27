require '_h2ph_pre.ph';

no warnings qw(redefine misc);

eval 'sub COPYRIGHT_FreeBSD () {"Copyright (c) 1992-2014 The FreeBSD Project.\\n";}' unless defined(&COPYRIGHT_FreeBSD);
eval 'sub TRADEMARK_Foundation () {"FreeBSD is a registered trademark of The FreeBSD Foundation.\\n";}' unless defined(&TRADEMARK_Foundation);
eval 'sub COPYRIGHT_UCB () {"Copyright (c) 1979, 1980, 1983, 1986, 1988, 1989, 1991, 1992, 1993, 1994\\n\\tThe Regents of the University of California. All rights reserved.\\n";}' unless defined(&COPYRIGHT_UCB);
if(defined(&PC98)) {
    eval 'sub COPYRIGHT_PC98 () {"Copyright (c) 1994-2003 FreeBSD(98) porting team.\\nCopyright (c) 1992  A.Kojima F.Ukai M.Ishii (KMC).\\n";}' unless defined(&COPYRIGHT_PC98);
} else {
    eval 'sub COPYRIGHT_PC98 () {1;}' unless defined(&COPYRIGHT_PC98);
}
1;
