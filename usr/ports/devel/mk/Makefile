# Created by: William Josephson
# $FreeBSD: head/devel/mk/Makefile 348061 2014-03-13 13:17:00Z ehaupt $

PORTNAME=	mk
PORTVERSION=	1.5
CATEGORIES=	devel
MASTER_SITES=	http://www.cminusminus.org/download/ \
		LOCAL/bdrewery

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Andrew Hume's mk by way of Research Unix, Plan 9, & Inferno

PLIST_FILES=	bin/mk man/man1/mk.1.gz

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mk ${STAGEDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/mk.1 ${STAGEDIR}${MANPREFIX}/man/man1

.include <bsd.port.mk>
