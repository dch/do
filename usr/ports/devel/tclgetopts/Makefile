# Created by: mi
# $FreeBSD: head/devel/tclgetopts/Makefile 345069 2014-02-19 11:29:31Z ehaupt $

PORTNAME=	tclGetOpts
PORTVERSION=	1.0
CATEGORIES=	devel tcl
MASTER_SITES=	http://www.waxandwane.com/toolbox/tclGetOpts/
DISTNAME=	${PORTNAME}
EXTRACT_SUFX=	${PORTVERSION}.tar.gz

MAINTAINER=	mi@aldan.algebra.com
COMMENT=	Pure TCL code for command line options parsing

USES=		shebangfix
NO_BUILD=	yes

SHEBANG_FILES=	foxTypedOpts.tcl foxGetOpt.tcl

do-install:
	${MKDIR} ${STAGEDIR}${PREFIX}/lib/foxGetOpt
	${INSTALL_SCRIPT} \
		${FILESDIR}/pkgIndex.tcl \
		${WRKSRC}/foxTypedOpts.tcl \
		${WRKSRC}/foxGetOpt.tcl ${STAGEDIR}${PREFIX}/lib/foxGetOpt/
	${INSTALL_MAN} ${WRKSRC}/getopt.n ${WRKSRC}/typedopts.n \
		${STAGEDIR}${PREFIX}/man/mann/

.include <bsd.port.mk>
