# Created by: Peter Jeremy <peterjeremy@acm.org>
# $FreeBSD: head/devel/mspdebug/Makefile 374448 2014-12-10 11:52:40Z romain $

PORTNAME=	mspdebug
PORTVERSION=	0.22
CATEGORIES=	devel
MASTER_SITES=	SF/${PORTNAME}

MAINTAINER=	peterjeremy@acm.org
COMMENT=	Debugger for use with MSP 430 MCUs

LICENSE=	GPLv2

USES=		gmake readline

PLIST_FILES=	bin/mspdebug man/man1/mspdebug.1.gz

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mspdebug ${STAGEDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/mspdebug.man \
		${STAGEDIR}${MANPREFIX}/man/man1/mspdebug.1

.include <bsd.port.mk>
