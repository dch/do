# Created by: David O'Brien (obrien@NUXI.com)
# $FreeBSD: head/net/tcpshow/Makefile 389302 2015-06-12 21:17:43Z erwin $

PORTNAME=	tcpshow
PORTVERSION=	1.74
PORTREVISION=	1
CATEGORIES=	net security
MASTER_SITES=	LOCAL/obrien
DISTFILES=	tcpshow.c tcpshow.1

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Decode tcpdump(1) output

NO_WRKSUBDIR=	yes

do-extract:
	@${MKDIR} ${WRKDIR}
	@${CP} ${DISTDIR}/tcpshow.c ${WRKDIR}
	@${CP} ${DISTDIR}/tcpshow.1 ${WRKDIR}

do-build:
	(cd ${WRKSRC} && ${CC} ${CFLAGS} -o tcpshow tcpshow.c)

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcpshow ${STAGEDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tcpshow.1 ${STAGEDIR}${MANPREFIX}/man/man1

.include <bsd.port.mk>
