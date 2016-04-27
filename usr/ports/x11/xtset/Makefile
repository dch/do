# Created by: grog
# $FreeBSD: head/x11/xtset/Makefile 379975 2015-02-26 01:26:34Z amdmi3 $

PORTNAME=	xtset
PORTVERSION=	1.1
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.lemis.com/pub/

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Utility to set title on an xterm

NO_WRKSUBDIR=	yes

PLIST_FILES=	bin/xtset man/man1/xtset.1.gz
MAKE_ARGS+=	PREFIX=${STAGEDIR}${PREFIX}

post-install:
	${STRIP_CMD} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}

.include <bsd.port.mk>
