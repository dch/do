# Created by: David O'Brien <obrien@cs.ucdavis.edu>
# $FreeBSD: head/comms/zmtx-zmrx/Makefile 383311 2015-04-05 18:12:55Z bapt $

PORTNAME=	zmtx-zmrx
PORTVERSION=	1.02
CATEGORIES=	comms
MASTER_SITES=	ftp://ftp.netsw.org/net/modem/protocols/zmodem/zmtx-zmrx/

MAINTAINER=	delphij@FreeBSD.org
COMMENT=	Send and receive files via ZMODEM protocol (unrestrictive)

BROKEN=		Unfetchable
USE_CSTD=	gnu89

MAKEFILE=	makefile
WRKSRC=		${WRKDIR}/${PORTNAME}

PLIST_FILES=	bin/zmrx bin/zmtx man/man1/zmrx.1.gz man/man1/zmtx.1.gz

do-install:
.for f in zmrx zmtx
	${INSTALL_PROGRAM} ${WRKSRC}/${f} ${STAGEDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/${f}.1 ${STAGEDIR}${MANPREFIX}/man/man1
.endfor

.include <bsd.port.mk>
